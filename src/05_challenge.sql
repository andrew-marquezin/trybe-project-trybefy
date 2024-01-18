SELECT full_name as 'Nome completo', birthday as 'Data de nascimento'
FROM users
WHERE active = true AND YEAR(birthday) >= 1990;