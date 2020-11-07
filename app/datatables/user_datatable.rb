class UserDatatable < AjaxDatatablesRails::ActiveRecord

#   def view_columns
#     # Declare strings in this format: ModelName.column_name
#     # or in aliased_join_table.column_name format
#     @view_columns ||= {
#       id:         { source: "Article.id", cond: :like, searchable: true, orderable: true },
#       date:         { source: "Article.date", cond: :like, searchable: true, orderable: true },
#       connection: { source: "Article.connection", cond: :like, searchable: true, orderable: true },
#       country:  { source: "Article.country",   cond: :like, searchable: true, orderable: true },
#       platform:      { source: "Article.platform", cond: :like, searchable: true, orderable: true },
#       app:        { source: "Article.app", cond: :like, searchable: true, orderable: true },
#       impressions:      { source: "Article.impressions", cond: :like, searchable: true, orderable: true },
#       ad_revenue:        { source: "Article.ad_revenue", cond: :like, searchable: true, orderable: true },
#     }
#   end

#   def data
#     records.map do |record|
#       {
#         id:         record.id,
#         date:       record.date,
#         connection: record.connection,
#         country:    record.country,
#         platform:   record.platform,
#         app:        record.app, 
#         impressions: record.impressions,
#         ad_revenue: record.ad_revenue,
#         DT_RowId:   record.id,
#       }
#     end
#   end

#   def get_raw_records
#     # insert query here
#     Article.all
#   end

# end
