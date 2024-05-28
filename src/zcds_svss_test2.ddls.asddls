@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TEST'

@UI.headerInfo: {
    typeName: 'Header Travel',
    typeNamePlural: 'header Travels',
    title: {
        type: #STANDARD,
        label: 'TravelId'
    },
    description: {
        type: #STANDARD,
        label: 'AgencyId'
    }
}

define root view entity ZCDS_SVSS_TEST2
  as select from ztb_test1

{

      @UI.facet: [{ id:         'Travel_ui_id',
                    type:       #COLLECTION,
                    label:      'Trave Label',
                    position:   10  },

                     { id: 'Travel_det', parentId: 'Travel_ui_id',
                       label: 'Detalles', type: #FIELDGROUP_REFERENCE,
                       targetQualifier: 'Travel_ui_id',
                       position: 10} ]

      @UI.hidden: true
  key mykey           as Mykey,

      
      @UI.lineItem: [{ position: 10, importance: #HIGH}]
      travel_id       as TravelId,
      @UI.lineItem: [{ position: 20, importance: #HIGH}]
      agency_id       as AgencyId,
      @UI.lineItem: [{ position: 30, importance: #MEDIUM}]     
      customer_id     as CustomerId,

      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 10 }]
      begin_date      as BeginDate,
       @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 20 }]
      end_date        as EndDate,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 30 }]
      booking_fee     as BookingFee,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 40 }]
      total_price     as TotalPrice,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 50 }]
      currency_code   as CurrencyCode,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 60 }]
      description     as Description,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 70 }]
      overall_status  as OverallStatus,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 80 }]
      created_by      as CreatedBy,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 90 }]
      created_at      as CreatedAt,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 100 }]
      last_changed_by as LastChangedBy,
      @UI.fieldGroup: [{ qualifier: 'Travel_ui_id', position: 101  }]
      last_changed_at as LastChangedAt
}
