CREATE VIEW ManagerView AS
    SELECT Agent.AgentName, Agent.Rating as agentRating,
    Agent.Salary as agentSalary, 
    Nurse.NurseName, Nurse.Rating as NurseRating,
    Nurse.Salary as NurseSalary 
FROM Agent, Nurse; 
