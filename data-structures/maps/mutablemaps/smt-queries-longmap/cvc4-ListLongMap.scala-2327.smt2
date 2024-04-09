; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37436 () Bool)

(assert start!37436)

(declare-fun b_free!8555 () Bool)

(declare-fun b_next!8555 () Bool)

(assert (=> start!37436 (= b_free!8555 (not b_next!8555))))

(declare-fun tp!30380 () Bool)

(declare-fun b_and!15815 () Bool)

(assert (=> start!37436 (= tp!30380 b_and!15815)))

(declare-fun b!380737 () Bool)

(declare-fun e!231545 () Bool)

(declare-fun e!231543 () Bool)

(declare-fun mapRes!15369 () Bool)

(assert (=> b!380737 (= e!231545 (and e!231543 mapRes!15369))))

(declare-fun condMapEmpty!15369 () Bool)

(declare-datatypes ((V!13375 0))(
  ( (V!13376 (val!4646 Int)) )
))
(declare-datatypes ((ValueCell!4258 0))(
  ( (ValueCellFull!4258 (v!6839 V!13375)) (EmptyCell!4258) )
))
(declare-datatypes ((array!22301 0))(
  ( (array!22302 (arr!10616 (Array (_ BitVec 32) ValueCell!4258)) (size!10968 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22301)

(declare-fun mapDefault!15369 () ValueCell!4258)

