#ifndef HEAP_H
#define HEAP_H
#include <functional>
#include <stdexcept>
#include <vector>
template <typename T, typename PComparator = std::less<T> >
class Heap
{
public:
    /**
     * @brief Construct a new Heap object
     * 
     * @param m ary-ness of heap tree (default to 2)
     * @param c binary predicate function/functor that takes two items
     *          as an argument and returns a bool if the first argument has
     *          priority over the second.
     */
    Heap(int m=2, PComparator c = PComparator());

    /**
     * @brief Destroy the Heap object
     * 
     */
    ~Heap();

    /**
     * @brief Push an item to the heap
     * 
     * @param item item to heap
     */
    void push(const T& item);

    /**
     * @brief Returns the top (priority) item
     * 
     * @return T const& top priority item
     * @throw std::underflow_error if the heap is empty
     */
    T const & top() const;

    /**
     * @brief Remove the top priority item
     * 
     * @throw std::underflow_error if the heap is empty
     */
    void pop();

    /// returns true if the heap is empty

    /**
     * @brief Returns true if the heap is empty
     * 
     */
    bool empty() const;

        /**
     * @brief Returns size of the heap
     * 
     */
    size_t size() const;

private:
    /// Add whatever helper functions and data members you need below
    PComparator m_comp;
    std::vector<T> m_heap;
    int m_arity;
    void heapify_up(size_t index);
    void heapify_down(size_t index);
};

// Add implementation of member functions here


// We will start top() for you to handle the case of 
// calling top on an empty heap
template <typename T, typename PComparator>
T const & Heap<T,PComparator>::top() const
{
    // Here we use exceptions to handle the case of trying
    // to access the top element of an empty heap
    if(empty()){
        // ================================
        // throw the appropriate exception
        // ================================
        throw std::underflow_error("Heap is empty");
    }
    // If we get here we know the heap has at least 1 item
    // Add code to return the top element
    return m_heap[0];
}

template <typename T, typename PComparator>
Heap<T,PComparator>::Heap(int m, PComparator c) : m_heap(), m_arity(m), m_comp(c) {}

template <typename T, typename PComparator>
Heap<T,PComparator>::~Heap() {}


// We will start pop() for you to handle the case of 
// calling top on an empty heap
template <typename T, typename PComparator>
void Heap<T,PComparator>::pop()
{
    if(empty()){
        // ================================
        // throw the appropriate exception
        // ================================
        throw std::underflow_error("Heap is empty");
    }
    std::swap(m_heap[0], m_heap[size() - 1]);
    m_heap.pop_back();
    heapify_down(0);
}

template <typename T, typename PComparator>
void Heap<T,PComparator>::push(const T& item){
    m_heap.push_back(item);
    heapify_up(size() - 1);
}

template <typename T, typename PComparator>
bool Heap<T,PComparator>::empty() const
{
    return size() == 0;
}

template <typename T, typename PComparator>
size_t Heap<T,PComparator>::size() const
{
    return m_heap.size();
}

template <typename T, typename PComparator>
void Heap<T, PComparator>::heapify_up(size_t index) {
    if (index == 0) 
        return;
    size_t parent = (index - 1) / m_arity;
    if (m_comp(m_heap[index], m_heap[parent])) {
        std::swap(m_heap[index], m_heap[parent]);
        heapify_up(parent);
    }
}

template <typename T, typename PComparator>
void Heap<T, PComparator>::heapify_down(size_t index) {
    size_t selected = index;

    // Iterate through all children of the current node
    for(int i = 0; i < m_arity; i++) {
        size_t child = m_arity * index + 1 + i;
        if (child < size() && m_comp(m_heap[child], m_heap[selected])) {
            selected = child;
        }
    }

    // If a child has higher priority, swap and continue heapifying
    if (selected != index) {
        std::swap(m_heap[index], m_heap[selected]);
        heapify_down(selected);
    }
}


#endif

