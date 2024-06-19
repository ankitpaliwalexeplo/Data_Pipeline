select
    {{
        dbt_utils.generate_surrogate_key([
            'L_ORDERKEY',
            'L_LINENUMBER'
        ])

    }} as order_item_key,
    L_ORDERKEY as order_key,
    L_PARTKEY as part_key,
    L_LINENUMBER as line_number,
    L_QUANTITY as qunatity,
    L_EXTENDEDPRICE as extended_price,
    L_DISCOUNT as discount_percentage,
    L_TAX as tax_rate
from
    {{ source('tpch', 'lineitem') }}