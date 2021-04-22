str = '@a##a cc$! b!!!b'

str.split.map { |word| word.gsub(/[\W\d\_]/, '') }.sort.first
