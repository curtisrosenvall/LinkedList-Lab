#pragma once

#include <string>

#include "LinkedListInterface.h"

template<typename T>
class LinkedList: public LinkedListInterface<T> {
private:
    struct Node {
        T data;
        Node* next;

        Node(T data, Node* next = nullptr) {
            this->data = data;
            this->next = next;
        }
    };

    Node* head;
    Node* tail;
    size_t count;
public:
    LinkedList() : head(nullptr), tail(nullptr), count(0) {}

    virtual ~LinkedList() {
        clear();
    }

    virtual void push_front(T item) {
        head = new Node(item, head);
        if (tail == nullptr) {
            tail = head;
        }
        count++;
    }

    virtual void push_back(T item) {
        Node* newNode = new Node(item);
        if (tail != nullptr) {
            tail->next = newNode;
        } else {
            head = newNode;
        }
        tail = newNode;
        count++;
    }

    virtual void insert(T item, size_t position) {
        if (position > count) {
            throw std::out_of_range("Position out of range");
        }
        if (position == 0) {
            push_front(item);
            return;
        }
        if (position == count) {
            push_back(item);
            return;
        }
        Node* currentNode = head;
        for (size_t i = 0; i < position - 1; i++) {
            currentNode = currentNode->next;
        }
        Node* newNode = new Node(item, currentNode->next);
        currentNode->next = newNode;
        count++;
    }

    virtual void pop_front() {
        if (head == nullptr) {
            throw std::length_error("List is empty");
        }
        Node* oldHead = head;
        head = head->next;
        if (head == nullptr) {
            tail = nullptr;
        }
        delete oldHead;
        count--;
    }

    virtual void pop_back() {
        if (tail == nullptr) {
            throw std::length_error("List is empty");
        }
        if (head == tail) {
            pop_front();
            return;
        }
        Node* currentNode = head;
        while (currentNode->next != tail) {
            currentNode = currentNode->next;
        }
        delete tail;
        tail = currentNode;
        tail->next = nullptr;
        count--;
    }

    virtual void remove(size_t position) {
        if (position >= count) {
            throw std::out_of_range("Position out of range");
        }
        if (position == 0) {
            pop_front();
            return;
        }
        if (position == count - 1) {
            pop_back();
            return;
        }
        Node* currentNode = head;
        for (size_t i = 0; i < position - 1; i++) {
            currentNode = currentNode->next;
        }
        Node* toDelete = currentNode->next;
        currentNode->next = toDelete->next;
        delete toDelete;
        count--;
    }

    virtual T front() const {
        if (head == nullptr) {
            throw std::length_error("Cannot call front() on an empty list");
        }
        return head->data;
    }

    virtual T back() const {
        if (tail == nullptr) {
            throw std::length_error("Cannot call back() on an empty list");
        }
        return tail->data;
    }

    virtual T at(size_t index) const {
        if (index >= count) {
            throw std::out_of_range("Index out of range for list of size " + std::to_string(size()));
        }
        Node* currentNode = head;
        for (size_t i = 0; i < index; i++) {
            currentNode = currentNode->next;
        }
        return currentNode->data;
    }

    virtual bool contains(const T& item) const {
        Node* currentNode = head;
        while (currentNode != nullptr) {
            if (currentNode->data == item) {
                return true;
            }
            currentNode = currentNode->next;
        }
        return false;
    }

    virtual size_t size() const {
        return count;
    }

    virtual void clear() {
        while (head != nullptr) {
            pop_front();
        }
    }

    virtual std::string toString() const {
        std::string result;
        Node* currentNode = head;
        while (currentNode != nullptr) {
            result += std::to_string(currentNode->data) + " ";
            currentNode = currentNode->next;
        }
        return result;
    }
};
