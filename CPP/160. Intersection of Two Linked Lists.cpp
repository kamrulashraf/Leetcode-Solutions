/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        map<ListNode*, bool> visited;
        
        while(headA){
            visited[headA] = true;
            headA = headA->next;
        }
        
        while(headB && !visited[headB]){
            headB = headB->next;
        }
        
        return headB;
    }
};