{%- macro utc_to_etc(column_name) -%}

convert_timezone('UTC', 'America/New_York', {{ column_name }})


{%- endmacro -%}