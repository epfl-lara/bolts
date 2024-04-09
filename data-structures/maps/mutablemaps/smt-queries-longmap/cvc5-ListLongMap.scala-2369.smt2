; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37684 () Bool)

(assert start!37684)

(declare-fun b_free!8779 () Bool)

(declare-fun b_next!8779 () Bool)

(assert (=> start!37684 (= b_free!8779 (not b_next!8779))))

(declare-fun tp!31088 () Bool)

(declare-fun b_and!16039 () Bool)

(assert (=> start!37684 (= tp!31088 b_and!16039)))

(declare-fun mapNonEmpty!15741 () Bool)

(declare-fun mapRes!15741 () Bool)

(declare-fun tp!31089 () Bool)

(declare-fun e!234070 () Bool)

(assert (=> mapNonEmpty!15741 (= mapRes!15741 (and tp!31089 e!234070))))

(declare-datatypes ((V!13707 0))(
  ( (V!13708 (val!4770 Int)) )
))
(declare-datatypes ((ValueCell!4382 0))(
  ( (ValueCellFull!4382 (v!6963 V!13707)) (EmptyCell!4382) )
))
(declare-fun mapRest!15741 () (Array (_ BitVec 32) ValueCell!4382))

(declare-datatypes ((array!22779 0))(
  ( (array!22780 (arr!10855 (Array (_ BitVec 32) ValueCell!4382)) (size!11207 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22779)

(declare-fun mapValue!15741 () ValueCell!4382)

(declare-fun mapKey!15741 () (_ BitVec 32))

(assert (=> mapNonEmpty!15741 (= (arr!10855 _values!506) (store mapRest!15741 mapKey!15741 mapValue!15741))))

(declare-fun b!385700 () Bool)

(declare-fun e!234075 () Bool)

(declare-fun e!234074 () Bool)

(assert (=> b!385700 (= e!234075 (and e!234074 mapRes!15741))))

(declare-fun condMapEmpty!15741 () Bool)

(declare-fun mapDefault!15741 () ValueCell!4382)

