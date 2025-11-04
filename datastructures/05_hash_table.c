#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TABLE_SIZE 10

struct HashNode {
    char key[50];
    int value;
    int used;
};

int hashFunction(const char *key) {
    int hash = 0;
    for (int i = 0; i < strlen(key); i++) {
        hash = (hash * 31 + key[i]) % TABLE_SIZE;
    }
    return hash;
}

void insert(struct HashNode *table, const char *key, int value) {
    int index = hashFunction(key);
    while (table[index].used) {
        index = (index + 1) % TABLE_SIZE;
    }
    strcpy(table[index].key, key);
    table[index].value = value;
    table[index].used = 1;
    printf("Inserted: %s -> %d\n", key, value);
}

int search(struct HashNode *table, const char *key) {
    int index = hashFunction(key);
    while (table[index].used) {
        if (strcmp(table[index].key, key) == 0) {
            return table[index].value;
        }
        index = (index + 1) % TABLE_SIZE;
    }
    return -1;
}

void display(struct HashNode *table) {
    printf("Hash Table Contents:\n");
    for (int i = 0; i < TABLE_SIZE; i++) {
        if (table[i].used) {
            printf("[%d] %s -> %d\n", i, table[i].key, table[i].value);
        }
    }
}

int main() {
    struct HashNode table[TABLE_SIZE];
    for (int i = 0; i < TABLE_SIZE; i++) {
        table[i].used = 0;
    }
    
    insert(table, "apple", 10);
    insert(table, "banana", 20);
    insert(table, "cherry", 30);
    
    printf("Search apple: %d\n", search(table, "apple"));
    display(table);
    
    return 0;
}
