
SELECT o.id, concat(c.first_name, ' ' ,c.last_name) AS client_full_name, o.order_date, 
md.dish_name, md.price, d.dessert_name, 
d.price, concat(dlpers.first_name, ' ' ,dlpers.last_name) AS delivery_person_full_name,
dlpers.location 
FROM order_menu_items omi
JOIN orders AS o ON o.id = omi.order_id
JOIN clients c ON c.id = o.client_id
JOIN menu_items mi ON mi.id = omi.menu_items_id
JOIN main_dishes md ON md.id = mi.main_dishes_id
JOIN desserts d ON d.id = mi.desserts_id
JOIN delivery_persons dlpers ON dlpers.id = o.delivery_person_id

ORDER BY o.id ASC ;


