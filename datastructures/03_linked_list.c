#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node *next;
};

struct Node *createNode(int data) {
    struct Node *newNode = (struct Node *)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

void insert(struct Node **head, int data) {
    struct Node *newNode = createNode(data);
    if (*head == NULL) {
        *head = newNode;
    } else {
        struct Node *temp = *head;
        while (temp->next != NULL) {
            temp = temp->next;
        }
        temp->next = newNode;
    }
    printf("Inserted: %d\n", data);
}

void display(struct Node *head) {
    if (head == NULL) {
        printf("List is empty\n");
        return;
    }
    printf("List: ");
    while (head != NULL) {
        printf("%d -> ", head->data);
        head = head->next;
    }
    printf("NULL\n");
}

void deleteNode(struct Node **head, int data) {
    if (*head == NULL) return;
    
    if ((*head)->data == data) {
        struct Node *temp = *head;
        *head = (*head)->next;
        free(temp);
        printf("Deleted: %d\n", data);
        return;
    }
    
    struct Node *current = *head;
    while (current->next != NULL) {
        if (current->next->data == data) {
            struct Node *temp = current->next;
            current->next = temp->next;
            free(temp);
            printf("Deleted: %d\n", data);
            return;
        }
        current = current->next;
    }
}

int main() {
    struct Node *head = NULL;
    
    insert(&head, 10);
    insert(&head, 20);
    insert(&head, 30);
    display(head);
    deleteNode(&head, 20);
    display(head);
    
    return 0;
}
