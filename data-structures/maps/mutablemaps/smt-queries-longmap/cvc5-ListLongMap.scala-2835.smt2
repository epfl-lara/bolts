; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40982 () Bool)

(assert start!40982)

(declare-fun b_free!10909 () Bool)

(declare-fun b_next!10909 () Bool)

(assert (=> start!40982 (= b_free!10909 (not b_next!10909))))

(declare-fun tp!38554 () Bool)

(declare-fun b_and!19069 () Bool)

(assert (=> start!40982 (= tp!38554 b_and!19069)))

(declare-fun b!455882 () Bool)

(declare-fun e!266431 () Bool)

(declare-fun e!266432 () Bool)

(declare-fun mapRes!20011 () Bool)

(assert (=> b!455882 (= e!266431 (and e!266432 mapRes!20011))))

(declare-fun condMapEmpty!20011 () Bool)

(declare-datatypes ((V!17435 0))(
  ( (V!17436 (val!6168 Int)) )
))
(declare-datatypes ((ValueCell!5780 0))(
  ( (ValueCellFull!5780 (v!8430 V!17435)) (EmptyCell!5780) )
))
(declare-datatypes ((array!28263 0))(
  ( (array!28264 (arr!13572 (Array (_ BitVec 32) ValueCell!5780)) (size!13924 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28263)

(declare-fun mapDefault!20011 () ValueCell!5780)

