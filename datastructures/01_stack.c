#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

struct Stack {
    int arr[MAX];
    int top;
};

void push(struct Stack *s, int data) {
    if (s->top == MAX - 1) {
        printf("Stack Overflow\n");
        return;
    }
    s->arr[++s->top] = data;
    printf("Pushed: %d\n", data);
}

int pop(struct Stack *s) {
    if (s->top == -1) {
        printf("Stack Underflow\n");
        return -1;
    }
    return s->arr[s->top--];
}

int peek(struct Stack *s) {
    if (s->top == -1) {
        printf("Stack is empty\n");
        return -1;
    }
    return s->arr[s->top];
}

void display(struct Stack *s) {
    if (s->top == -1) {
        printf("Stack is empty\n");
        return;
    }
    printf("Stack contents: ");
    for (int i = 0; i <= s->top; i++) {
        printf("%d ", s->arr[i]);
    }
    printf("\n");
}

int main() {
    struct Stack s;
    s.top = -1;
    
    push(&s, 10);
    push(&s, 20);
    push(&s, 30);
    display(&s);
    printf("Popped: %d\n", pop(&s));
    printf("Top element: %d\n", peek(&s));
    display(&s);
    
    return 0;
}
