; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37792 () Bool)

(assert start!37792)

(declare-fun b_free!8887 () Bool)

(declare-fun b_next!8887 () Bool)

(assert (=> start!37792 (= b_free!8887 (not b_next!8887))))

(declare-fun tp!31413 () Bool)

(declare-fun b_and!16147 () Bool)

(assert (=> start!37792 (= tp!31413 b_and!16147)))

(declare-fun mapIsEmpty!15903 () Bool)

(declare-fun mapRes!15903 () Bool)

(assert (=> mapIsEmpty!15903 mapRes!15903))

(declare-fun mapNonEmpty!15903 () Bool)

(declare-fun tp!31412 () Bool)

(declare-fun e!235042 () Bool)

(assert (=> mapNonEmpty!15903 (= mapRes!15903 (and tp!31412 e!235042))))

(declare-fun mapKey!15903 () (_ BitVec 32))

(declare-datatypes ((V!13851 0))(
  ( (V!13852 (val!4824 Int)) )
))
(declare-datatypes ((ValueCell!4436 0))(
  ( (ValueCellFull!4436 (v!7017 V!13851)) (EmptyCell!4436) )
))
(declare-fun mapRest!15903 () (Array (_ BitVec 32) ValueCell!4436))

(declare-datatypes ((array!22987 0))(
  ( (array!22988 (arr!10959 (Array (_ BitVec 32) ValueCell!4436)) (size!11311 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22987)

(declare-fun mapValue!15903 () ValueCell!4436)

(assert (=> mapNonEmpty!15903 (= (arr!10959 _values!506) (store mapRest!15903 mapKey!15903 mapValue!15903))))

(declare-fun b!387806 () Bool)

(declare-fun res!221765 () Bool)

(declare-fun e!235047 () Bool)

(assert (=> b!387806 (=> (not res!221765) (not e!235047))))

(declare-datatypes ((array!22989 0))(
  ( (array!22990 (arr!10960 (Array (_ BitVec 32) (_ BitVec 64))) (size!11312 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22989)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387806 (= res!221765 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!387807 () Bool)

(declare-fun e!235045 () Bool)

(declare-fun e!235046 () Bool)

(assert (=> b!387807 (= e!235045 (and e!235046 mapRes!15903))))

(declare-fun condMapEmpty!15903 () Bool)

(declare-fun mapDefault!15903 () ValueCell!4436)

