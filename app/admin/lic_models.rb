ActiveAdmin.register License do
  permit_params :lictype, :licaccount, :licdate, :comment

  show do
    attributes_table(:lictype, :licaccount, :licdate, :comment, :created_at)

    panel I18n.t('active_admin.license') do
      table_for resource do
        column(:lictype)
        column(:licaccount)
        column(:licdate)
        column(:comment)
        column(:created_at)
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :lictype, label: "Тип лицензии", as: :select, collection: Lictype.all.collect { |p|  p.typename  }
      f.input :licaccount, label: "Торговый счет"
      f.input :licdate, label: "Дата окончания лицензии"
      f.input :comment, label: "Примечание"
      f.actions
    end
  end

end
