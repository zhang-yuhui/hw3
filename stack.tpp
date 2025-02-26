#include "stack.h"

template <typename T>
Stack<T>::Stack(): std::vector<T>() {}

template <typename T>
Stack<T>::~Stack(){}

template <typename T>
bool Stack<T>::empty() const{
    return std::vector<T>::empty();
}

template <typename T>
size_t Stack<T>::size() const{
    return std::vector<T>::size();
}

template <typename T>
void Stack<T>::push(const T& item){
    std::vector<T>::push_back(item);
}

template <typename T>
void Stack<T>::pop(){
    if(std::vector<T>::empty()){
        throw std::underflow_error("stack is empty");
    }
    std::vector<T>::pop_back();
}

template <typename T>
const T& Stack<T>::top() const{
    if(std::vector<T>::empty()){
        throw std::underflow_error("stack is empty");
    }
    return std::vector<T>::back();
}