// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.mycp.domain;

import in.mycp.domain.User;
import in.mycp.domain.Workflow;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Workflow_Roo_Finder {
    
    public static TypedQuery<Workflow> Workflow.findWorkflowsByAssetIdEquals(Integer assetId) {
        if (assetId == null) throw new IllegalArgumentException("The assetId argument is required");
        EntityManager em = Workflow.entityManager();
        TypedQuery<Workflow> q = em.createQuery("SELECT o FROM Workflow AS o WHERE o.assetId = :assetId", Workflow.class);
        q.setParameter("assetId", assetId);
        return q;
    }
    
    public static TypedQuery<Workflow> Workflow.findWorkflowsByAssetTypeEquals(String assetType) {
        if (assetType == null || assetType.length() == 0) throw new IllegalArgumentException("The assetType argument is required");
        EntityManager em = Workflow.entityManager();
        TypedQuery<Workflow> q = em.createQuery("SELECT o FROM Workflow AS o WHERE o.assetType = :assetType", Workflow.class);
        q.setParameter("assetType", assetType);
        return q;
    }
    
    public static TypedQuery<Workflow> Workflow.findWorkflowsByProcessIdEquals(String processId) {
        if (processId == null || processId.length() == 0) throw new IllegalArgumentException("The processId argument is required");
        EntityManager em = Workflow.entityManager();
        TypedQuery<Workflow> q = em.createQuery("SELECT o FROM Workflow AS o WHERE o.processId = :processId", Workflow.class);
        q.setParameter("processId", processId);
        return q;
    }
    
    public static TypedQuery<Workflow> Workflow.findWorkflowsByUser(User user) {
        if (user == null) throw new IllegalArgumentException("The user argument is required");
        EntityManager em = Workflow.entityManager();
        TypedQuery<Workflow> q = em.createQuery("SELECT o FROM Workflow AS o WHERE o.user = :user", Workflow.class);
        q.setParameter("user", user);
        return q;
    }
    
}