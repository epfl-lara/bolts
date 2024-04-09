; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37294 () Bool)

(assert start!37294)

(declare-fun b_free!8413 () Bool)

(declare-fun b_next!8413 () Bool)

(assert (=> start!37294 (= b_free!8413 (not b_next!8413))))

(declare-fun tp!29954 () Bool)

(declare-fun b_and!15673 () Bool)

(assert (=> start!37294 (= tp!29954 b_and!15673)))

(declare-fun b!377541 () Bool)

(declare-fun res!213741 () Bool)

(declare-fun e!229848 () Bool)

(assert (=> b!377541 (=> (not res!213741) (not e!229848))))

(declare-datatypes ((array!22021 0))(
  ( (array!22022 (arr!10476 (Array (_ BitVec 32) (_ BitVec 64))) (size!10828 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22021)

(declare-datatypes ((List!5946 0))(
  ( (Nil!5943) (Cons!5942 (h!6798 (_ BitVec 64)) (t!11104 List!5946)) )
))
(declare-fun arrayNoDuplicates!0 (array!22021 (_ BitVec 32) List!5946) Bool)

(assert (=> b!377541 (= res!213741 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5943))))

(declare-fun b!377542 () Bool)

(declare-fun res!213748 () Bool)

(assert (=> b!377542 (=> (not res!213748) (not e!229848))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22021 (_ BitVec 32)) Bool)

(assert (=> b!377542 (= res!213748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377543 () Bool)

(declare-fun e!229849 () Bool)

(declare-fun e!229846 () Bool)

(assert (=> b!377543 (= e!229849 (not e!229846))))

(declare-fun res!213745 () Bool)

(assert (=> b!377543 (=> res!213745 e!229846)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377543 (= res!213745 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13187 0))(
  ( (V!13188 (val!4575 Int)) )
))
(declare-datatypes ((ValueCell!4187 0))(
  ( (ValueCellFull!4187 (v!6768 V!13187)) (EmptyCell!4187) )
))
(declare-datatypes ((array!22023 0))(
  ( (array!22024 (arr!10477 (Array (_ BitVec 32) ValueCell!4187)) (size!10829 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22023)

(declare-datatypes ((tuple2!6076 0))(
  ( (tuple2!6077 (_1!3048 (_ BitVec 64)) (_2!3048 V!13187)) )
))
(declare-datatypes ((List!5947 0))(
  ( (Nil!5944) (Cons!5943 (h!6799 tuple2!6076) (t!11105 List!5947)) )
))
(declare-datatypes ((ListLongMap!5003 0))(
  ( (ListLongMap!5004 (toList!2517 List!5947)) )
))
(declare-fun lt!175726 () ListLongMap!5003)

(declare-fun zeroValue!472 () V!13187)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13187)

(declare-fun getCurrentListMap!1952 (array!22021 array!22023 (_ BitVec 32) (_ BitVec 32) V!13187 V!13187 (_ BitVec 32) Int) ListLongMap!5003)

(assert (=> b!377543 (= lt!175726 (getCurrentListMap!1952 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175715 () array!22023)

(declare-fun lt!175723 () array!22021)

(declare-fun lt!175725 () ListLongMap!5003)

(assert (=> b!377543 (= lt!175725 (getCurrentListMap!1952 lt!175723 lt!175715 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175716 () ListLongMap!5003)

(declare-fun lt!175722 () ListLongMap!5003)

(assert (=> b!377543 (and (= lt!175716 lt!175722) (= lt!175722 lt!175716))))

(declare-fun lt!175718 () ListLongMap!5003)

(declare-fun lt!175717 () tuple2!6076)

(declare-fun +!858 (ListLongMap!5003 tuple2!6076) ListLongMap!5003)

(assert (=> b!377543 (= lt!175722 (+!858 lt!175718 lt!175717))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13187)

(assert (=> b!377543 (= lt!175717 (tuple2!6077 k!778 v!373))))

(declare-datatypes ((Unit!11615 0))(
  ( (Unit!11616) )
))
(declare-fun lt!175721 () Unit!11615)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!103 (array!22021 array!22023 (_ BitVec 32) (_ BitVec 32) V!13187 V!13187 (_ BitVec 32) (_ BitVec 64) V!13187 (_ BitVec 32) Int) Unit!11615)

(assert (=> b!377543 (= lt!175721 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!103 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!770 (array!22021 array!22023 (_ BitVec 32) (_ BitVec 32) V!13187 V!13187 (_ BitVec 32) Int) ListLongMap!5003)

(assert (=> b!377543 (= lt!175716 (getCurrentListMapNoExtraKeys!770 lt!175723 lt!175715 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377543 (= lt!175715 (array!22024 (store (arr!10477 _values!506) i!548 (ValueCellFull!4187 v!373)) (size!10829 _values!506)))))

(assert (=> b!377543 (= lt!175718 (getCurrentListMapNoExtraKeys!770 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377544 () Bool)

(declare-fun res!213747 () Bool)

(assert (=> b!377544 (=> (not res!213747) (not e!229848))))

(assert (=> b!377544 (= res!213747 (and (= (size!10829 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10828 _keys!658) (size!10829 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377545 () Bool)

(declare-fun e!229851 () Bool)

(assert (=> b!377545 (= e!229851 true)))

(declare-fun lt!175724 () ListLongMap!5003)

(declare-fun lt!175714 () ListLongMap!5003)

(assert (=> b!377545 (= lt!175724 (+!858 lt!175714 lt!175717))))

(declare-fun lt!175719 () Unit!11615)

(declare-fun addCommutativeForDiffKeys!278 (ListLongMap!5003 (_ BitVec 64) V!13187 (_ BitVec 64) V!13187) Unit!11615)

(assert (=> b!377545 (= lt!175719 (addCommutativeForDiffKeys!278 lt!175718 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377546 () Bool)

(declare-fun res!213743 () Bool)

(assert (=> b!377546 (=> (not res!213743) (not e!229849))))

(assert (=> b!377546 (= res!213743 (arrayNoDuplicates!0 lt!175723 #b00000000000000000000000000000000 Nil!5943))))

(declare-fun b!377547 () Bool)

(declare-fun e!229844 () Bool)

(declare-fun e!229847 () Bool)

(declare-fun mapRes!15156 () Bool)

(assert (=> b!377547 (= e!229844 (and e!229847 mapRes!15156))))

(declare-fun condMapEmpty!15156 () Bool)

(declare-fun mapDefault!15156 () ValueCell!4187)

