-- Populates the tool_type_property_type table.

INSERT INTO tool_type_property_type (tool_type_id, property_type_id)
    SELECT tt.id, pt.hid
    FROM tool_types tt, property_type pt
    WHERE tt."name" = 'executable'
    ORDER BY pt.hid;

INSERT INTO tool_type_property_type (tool_type_id, property_type_id)
    SELECT tt.id, pt.hid
    FROM tool_types tt, property_type pt
    WHERE tt."name" = 'fAPI'
    AND pt."name" != 'EnvironmentVariable'
    ORDER BY pt.hid;
