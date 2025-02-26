#include "llrec.h"

//*********************************************
// Provide your implementation of llpivot below
//*********************************************

void llpivot(Node *&head, Node *&smaller, Node *&larger, int pivot){
    if(head == nullptr){
        smaller = nullptr;
        larger = nullptr;
        return;
    }
    Node *curr = head;
    llpivot(curr->next, smaller, larger, pivot);
    if(curr->val > pivot){
        curr->next = larger;
        larger = curr;
    }else{
        curr->next = smaller;
        smaller = curr;
    }
    head = nullptr;
}
