[Japanese](README_ja.md)/ English

# Sample code of the Union-Find tree

## Summary

This is a sample code how to use a union-find tree.
An application to site-percolation is implemented.

## Usage

    $ ruby uf.rb

## Result

    00                06 06
    00 00       12       06
          12 12 12 12 12    
       12 12    12       31
    32    12 12    37       
       41          37 37 37
    48    50 50 50          
    48    50       61       


Consider a square lattice of 8x8 size. Put stones with probability 0.5. The nerighboring stones are defined to be *connected*. We want to identify whether two stones belong to the same cluster or not. This is called *Percolation Problem*. Percolation is one of the simplest model which involves a phase transition. We can simulate percolation problem using a union-find tree.

If you run the script, the labels of stones are shown. You can see that the nerighboring stones have the identical label.
