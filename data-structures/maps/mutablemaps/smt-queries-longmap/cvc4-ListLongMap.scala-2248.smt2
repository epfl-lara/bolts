; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36962 () Bool)

(assert start!36962)

(declare-fun b_free!8081 () Bool)

(declare-fun b_next!8081 () Bool)

(assert (=> start!36962 (= b_free!8081 (not b_next!8081))))

(declare-fun tp!28958 () Bool)

(declare-fun b_and!15341 () Bool)

(assert (=> start!36962 (= tp!28958 b_and!15341)))

(declare-fun b!370424 () Bool)

(declare-fun e!226236 () Bool)

(assert (=> b!370424 (= e!226236 false)))

(declare-datatypes ((V!12743 0))(
  ( (V!12744 (val!4409 Int)) )
))
(declare-datatypes ((ValueCell!4021 0))(
  ( (ValueCellFull!4021 (v!6602 V!12743)) (EmptyCell!4021) )
))
(declare-datatypes ((array!21375 0))(
  ( (array!21376 (arr!10153 (Array (_ BitVec 32) ValueCell!4021)) (size!10505 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21375)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5836 0))(
  ( (tuple2!5837 (_1!2928 (_ BitVec 64)) (_2!2928 V!12743)) )
))
(declare-datatypes ((List!5701 0))(
  ( (Nil!5698) (Cons!5697 (h!6553 tuple2!5836) (t!10859 List!5701)) )
))
(declare-datatypes ((ListLongMap!4763 0))(
  ( (ListLongMap!4764 (toList!2397 List!5701)) )
))
(declare-fun lt!169972 () ListLongMap!4763)

(declare-fun zeroValue!472 () V!12743)

(declare-datatypes ((array!21377 0))(
  ( (array!21378 (arr!10154 (Array (_ BitVec 32) (_ BitVec 64))) (size!10506 (_ BitVec 32))) )
))
(declare-fun lt!169970 () array!21377)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12743)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12743)

(declare-fun getCurrentListMapNoExtraKeys!665 (array!21377 array!21375 (_ BitVec 32) (_ BitVec 32) V!12743 V!12743 (_ BitVec 32) Int) ListLongMap!4763)

(assert (=> b!370424 (= lt!169972 (getCurrentListMapNoExtraKeys!665 lt!169970 (array!21376 (store (arr!10153 _values!506) i!548 (ValueCellFull!4021 v!373)) (size!10505 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169971 () ListLongMap!4763)

(declare-fun _keys!658 () array!21377)

(assert (=> b!370424 (= lt!169971 (getCurrentListMapNoExtraKeys!665 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370425 () Bool)

(declare-fun res!208118 () Bool)

(declare-fun e!226235 () Bool)

(assert (=> b!370425 (=> (not res!208118) (not e!226235))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370425 (= res!208118 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!370426 () Bool)

(declare-fun res!208117 () Bool)

(assert (=> b!370426 (=> (not res!208117) (not e!226235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370426 (= res!208117 (validKeyInArray!0 k!778))))

(declare-fun b!370427 () Bool)

(declare-fun res!208121 () Bool)

(assert (=> b!370427 (=> (not res!208121) (not e!226235))))

(declare-datatypes ((List!5702 0))(
  ( (Nil!5699) (Cons!5698 (h!6554 (_ BitVec 64)) (t!10860 List!5702)) )
))
(declare-fun arrayNoDuplicates!0 (array!21377 (_ BitVec 32) List!5702) Bool)

(assert (=> b!370427 (= res!208121 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5699))))

(declare-fun b!370428 () Bool)

(declare-fun e!226232 () Bool)

(declare-fun tp_is_empty!8729 () Bool)

(assert (=> b!370428 (= e!226232 tp_is_empty!8729)))

(declare-fun b!370429 () Bool)

(declare-fun res!208119 () Bool)

(assert (=> b!370429 (=> (not res!208119) (not e!226235))))

(assert (=> b!370429 (= res!208119 (or (= (select (arr!10154 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10154 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370430 () Bool)

(assert (=> b!370430 (= e!226235 e!226236)))

(declare-fun res!208124 () Bool)

(assert (=> b!370430 (=> (not res!208124) (not e!226236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21377 (_ BitVec 32)) Bool)

(assert (=> b!370430 (= res!208124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169970 mask!970))))

(assert (=> b!370430 (= lt!169970 (array!21378 (store (arr!10154 _keys!658) i!548 k!778) (size!10506 _keys!658)))))

(declare-fun b!370432 () Bool)

(declare-fun e!226234 () Bool)

(declare-fun e!226233 () Bool)

(declare-fun mapRes!14658 () Bool)

(assert (=> b!370432 (= e!226234 (and e!226233 mapRes!14658))))

(declare-fun condMapEmpty!14658 () Bool)

(declare-fun mapDefault!14658 () ValueCell!4021)

