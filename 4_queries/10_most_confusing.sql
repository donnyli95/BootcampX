SELECT assignments.id as id, assignments.day as day, assignments.chapter as chapter, assignments.name as name, count(*) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id=assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;