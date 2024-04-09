; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37768 () Bool)

(assert start!37768)

(declare-fun b_free!8863 () Bool)

(declare-fun b_next!8863 () Bool)

(assert (=> start!37768 (= b_free!8863 (not b_next!8863))))

(declare-fun tp!31340 () Bool)

(declare-fun b_and!16123 () Bool)

(assert (=> start!37768 (= tp!31340 b_and!16123)))

(declare-fun b!387338 () Bool)

(declare-fun res!221409 () Bool)

(declare-fun e!234830 () Bool)

(assert (=> b!387338 (=> (not res!221409) (not e!234830))))

(declare-datatypes ((array!22939 0))(
  ( (array!22940 (arr!10935 (Array (_ BitVec 32) (_ BitVec 64))) (size!11287 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22939)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387338 (= res!221409 (or (= (select (arr!10935 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10935 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387339 () Bool)

(declare-fun e!234829 () Bool)

(declare-fun tp_is_empty!9535 () Bool)

(assert (=> b!387339 (= e!234829 tp_is_empty!9535)))

(declare-fun b!387340 () Bool)

(declare-fun e!234828 () Bool)

(assert (=> b!387340 (= e!234828 tp_is_empty!9535)))

(declare-fun mapNonEmpty!15867 () Bool)

(declare-fun mapRes!15867 () Bool)

(declare-fun tp!31341 () Bool)

(assert (=> mapNonEmpty!15867 (= mapRes!15867 (and tp!31341 e!234829))))

(declare-datatypes ((V!13819 0))(
  ( (V!13820 (val!4812 Int)) )
))
(declare-datatypes ((ValueCell!4424 0))(
  ( (ValueCellFull!4424 (v!7005 V!13819)) (EmptyCell!4424) )
))
(declare-datatypes ((array!22941 0))(
  ( (array!22942 (arr!10936 (Array (_ BitVec 32) ValueCell!4424)) (size!11288 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22941)

(declare-fun mapKey!15867 () (_ BitVec 32))

(declare-fun mapValue!15867 () ValueCell!4424)

(declare-fun mapRest!15867 () (Array (_ BitVec 32) ValueCell!4424))

(assert (=> mapNonEmpty!15867 (= (arr!10936 _values!506) (store mapRest!15867 mapKey!15867 mapValue!15867))))

(declare-fun mapIsEmpty!15867 () Bool)

(assert (=> mapIsEmpty!15867 mapRes!15867))

(declare-fun b!387341 () Bool)

(declare-fun res!221406 () Bool)

(assert (=> b!387341 (=> (not res!221406) (not e!234830))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387341 (= res!221406 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!387342 () Bool)

(declare-fun res!221407 () Bool)

(assert (=> b!387342 (=> (not res!221407) (not e!234830))))

(assert (=> b!387342 (= res!221407 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11287 _keys!658))))))

(declare-fun b!387343 () Bool)

(declare-fun e!234827 () Bool)

(assert (=> b!387343 (= e!234827 (and e!234828 mapRes!15867))))

(declare-fun condMapEmpty!15867 () Bool)

(declare-fun mapDefault!15867 () ValueCell!4424)

