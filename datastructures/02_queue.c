#include <stdio.h>
#include <stdlib.h>

#define MAX 100

struct Queue {
    int arr[MAX];
    int front;
    int rear;
};

void enqueue(struct Queue *q, int data) {
    if (q->rear == MAX - 1) {
        printf("Queue Overflow\n");
        return;
    }
    if (q->front == -1) q->front = 0;
    q->arr[++q->rear] = data;
    printf("Enqueued: %d\n", data);
}

int dequeue(struct Queue *q) {
    if (q->front == -1 || q->front > q->rear) {
        printf("Queue Underflow\n");
        return -1;
    }
    return q->arr[q->front++];
}

int queueFront(struct Queue *q) {
    if (q->front == -1 || q->front > q->rear) {
        printf("Queue is empty\n");
        return -1;
    }
    return q->arr[q->front];
}

void displayQueue(struct Queue *q) {
    if (q->front == -1 || q->front > q->rear) {
        printf("Queue is empty\n");
        return;
    }
    printf("Queue contents: ");
    for (int i = q->front; i <= q->rear; i++) {
        printf("%d ", q->arr[i]);
    }
    printf("\n");
}

int main() {
    struct Queue q;
    q.front = -1;
    q.rear = -1;
    
    enqueue(&q, 5);
    enqueue(&q, 10);
    enqueue(&q, 15);
    displayQueue(&q);
    printf("Dequeued: %d\n", dequeue(&q));
    printf("Front element: %d\n", queueFront(&q));
    displayQueue(&q);
    
    return 0;
}
