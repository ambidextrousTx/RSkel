
def valid_datatype(datatype)
  return ['int', 'double', 'float', 'string', 'String', 'bool', 'boolean', 'char'].include? datatype.chomp
end

def valid_name?(name)
  return !(name.include? '*')
end

