; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37520 () Bool)

(assert start!37520)

(declare-fun b_free!8639 () Bool)

(declare-fun b_next!8639 () Bool)

(assert (=> start!37520 (= b_free!8639 (not b_next!8639))))

(declare-fun tp!30632 () Bool)

(declare-fun b_and!15899 () Bool)

(assert (=> start!37520 (= tp!30632 b_and!15899)))

(declare-fun b!382501 () Bool)

(declare-fun res!217685 () Bool)

(declare-fun e!232422 () Bool)

(assert (=> b!382501 (=> (not res!217685) (not e!232422))))

(declare-datatypes ((array!22465 0))(
  ( (array!22466 (arr!10698 (Array (_ BitVec 32) (_ BitVec 64))) (size!11050 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22465)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382501 (= res!217685 (or (= (select (arr!10698 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10698 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382502 () Bool)

(declare-fun e!232425 () Bool)

(declare-fun e!232427 () Bool)

(assert (=> b!382502 (= e!232425 (not e!232427))))

(declare-fun res!217681 () Bool)

(assert (=> b!382502 (=> res!217681 e!232427)))

(declare-fun lt!179554 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382502 (= res!217681 (or (and (not lt!179554) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179554) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179554)))))

(assert (=> b!382502 (= lt!179554 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13487 0))(
  ( (V!13488 (val!4688 Int)) )
))
(declare-datatypes ((ValueCell!4300 0))(
  ( (ValueCellFull!4300 (v!6881 V!13487)) (EmptyCell!4300) )
))
(declare-datatypes ((array!22467 0))(
  ( (array!22468 (arr!10699 (Array (_ BitVec 32) ValueCell!4300)) (size!11051 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22467)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6254 0))(
  ( (tuple2!6255 (_1!3137 (_ BitVec 64)) (_2!3137 V!13487)) )
))
(declare-datatypes ((List!6122 0))(
  ( (Nil!6119) (Cons!6118 (h!6974 tuple2!6254) (t!11280 List!6122)) )
))
(declare-datatypes ((ListLongMap!5181 0))(
  ( (ListLongMap!5182 (toList!2606 List!6122)) )
))
(declare-fun lt!179551 () ListLongMap!5181)

(declare-fun zeroValue!472 () V!13487)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13487)

(declare-fun getCurrentListMap!2024 (array!22465 array!22467 (_ BitVec 32) (_ BitVec 32) V!13487 V!13487 (_ BitVec 32) Int) ListLongMap!5181)

(assert (=> b!382502 (= lt!179551 (getCurrentListMap!2024 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179549 () array!22467)

(declare-fun lt!179555 () ListLongMap!5181)

(declare-fun lt!179557 () array!22465)

(assert (=> b!382502 (= lt!179555 (getCurrentListMap!2024 lt!179557 lt!179549 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179550 () ListLongMap!5181)

(declare-fun lt!179553 () ListLongMap!5181)

(assert (=> b!382502 (and (= lt!179550 lt!179553) (= lt!179553 lt!179550))))

(declare-fun v!373 () V!13487)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!179552 () ListLongMap!5181)

(declare-fun +!942 (ListLongMap!5181 tuple2!6254) ListLongMap!5181)

(assert (=> b!382502 (= lt!179553 (+!942 lt!179552 (tuple2!6255 k!778 v!373)))))

(declare-datatypes ((Unit!11777 0))(
  ( (Unit!11778) )
))
(declare-fun lt!179556 () Unit!11777)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!175 (array!22465 array!22467 (_ BitVec 32) (_ BitVec 32) V!13487 V!13487 (_ BitVec 32) (_ BitVec 64) V!13487 (_ BitVec 32) Int) Unit!11777)

(assert (=> b!382502 (= lt!179556 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!175 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!842 (array!22465 array!22467 (_ BitVec 32) (_ BitVec 32) V!13487 V!13487 (_ BitVec 32) Int) ListLongMap!5181)

(assert (=> b!382502 (= lt!179550 (getCurrentListMapNoExtraKeys!842 lt!179557 lt!179549 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382502 (= lt!179549 (array!22468 (store (arr!10699 _values!506) i!548 (ValueCellFull!4300 v!373)) (size!11051 _values!506)))))

(assert (=> b!382502 (= lt!179552 (getCurrentListMapNoExtraKeys!842 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382503 () Bool)

(declare-fun e!232423 () Bool)

(declare-fun tp_is_empty!9287 () Bool)

(assert (=> b!382503 (= e!232423 tp_is_empty!9287)))

(declare-fun mapIsEmpty!15495 () Bool)

(declare-fun mapRes!15495 () Bool)

(assert (=> mapIsEmpty!15495 mapRes!15495))

(declare-fun b!382504 () Bool)

(declare-fun res!217691 () Bool)

(assert (=> b!382504 (=> (not res!217691) (not e!232422))))

(assert (=> b!382504 (= res!217691 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11050 _keys!658))))))

(declare-fun b!382505 () Bool)

(declare-fun res!217682 () Bool)

(assert (=> b!382505 (=> (not res!217682) (not e!232422))))

(declare-fun arrayContainsKey!0 (array!22465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382505 (= res!217682 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!382506 () Bool)

(declare-fun res!217687 () Bool)

(assert (=> b!382506 (=> (not res!217687) (not e!232422))))

(declare-datatypes ((List!6123 0))(
  ( (Nil!6120) (Cons!6119 (h!6975 (_ BitVec 64)) (t!11281 List!6123)) )
))
(declare-fun arrayNoDuplicates!0 (array!22465 (_ BitVec 32) List!6123) Bool)

(assert (=> b!382506 (= res!217687 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6120))))

(declare-fun b!382507 () Bool)

(declare-fun res!217689 () Bool)

(assert (=> b!382507 (=> (not res!217689) (not e!232425))))

(assert (=> b!382507 (= res!217689 (arrayNoDuplicates!0 lt!179557 #b00000000000000000000000000000000 Nil!6120))))

(declare-fun res!217684 () Bool)

(assert (=> start!37520 (=> (not res!217684) (not e!232422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37520 (= res!217684 (validMask!0 mask!970))))

(assert (=> start!37520 e!232422))

(declare-fun e!232428 () Bool)

(declare-fun array_inv!7856 (array!22467) Bool)

(assert (=> start!37520 (and (array_inv!7856 _values!506) e!232428)))

(assert (=> start!37520 tp!30632))

(assert (=> start!37520 true))

(assert (=> start!37520 tp_is_empty!9287))

(declare-fun array_inv!7857 (array!22465) Bool)

(assert (=> start!37520 (array_inv!7857 _keys!658)))

(declare-fun b!382508 () Bool)

(declare-fun e!232424 () Bool)

(assert (=> b!382508 (= e!232428 (and e!232424 mapRes!15495))))

(declare-fun condMapEmpty!15495 () Bool)

(declare-fun mapDefault!15495 () ValueCell!4300)

