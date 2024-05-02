class ItemRepository
    def initialize(csv_file_path)
        @items = []
        @csv_file_path = csv_file_path
        csv_load if File.exist?(@csv_file_path)
    end 

    def csv_load
        CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
            @items << Item.new(row)
        end
    end

end 