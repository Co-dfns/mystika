# Mystika

The Mystika project seeks to deliver an industrial quality, high-performance cryptographic library with forward-looking features and very high-level code. The idea is to deliver a cryptographic foundation for critical software that consists of a small, efficient, and easy to audit code base built on very high-level coding practices. Here are some key goals:

* Demonstrably Reliable
* Safe and future-worthy cryptography only
* Protocol level compatibility with existing standards when possible
* Easy to use

## Dictionary

Here are the verbs, nouns, adverbs, and conjunctions provided by this project.

### Data Structures

### Numerical Algorithms

    BA←B cry BA

Given a bignum array BA, and the bits per place B, `cry` carries all places with truncating overflow.

### Hashing

### Cyphers

### Protocols

### Application Utilities

    H←{B} hex S

Converts an integer array S into a hexadecimal string representing the data in row major order. Each element is assumed to represent B bits of data. If B is not provided, then the largest value in the array is used to calculate the number of bits to use per element. 

## Developer's Guide

Working with the Mystika code base involves writing tests in the `tests/` directory and writing code in the `[a-z].cd` files in the root directory. Code is loaded into the `mystika` workspace using the `LOAD` function. The `UT` and `util` namespaces provide testing harness and utility function support for developers.

### Useful Developer Functions

    util.test <name> ⍝ Run the <name>_tests.dyalog test in tests/
    util.TEST        ⍝ Run all tests in tests/
    util.pp          ⍝ Equivalent to ⊢ but with a display as a side-effect
    LOAD             ⍝ Load the latest mystika source into the workspace
