; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37534 () Bool)

(assert start!37534)

(declare-fun b_free!8653 () Bool)

(declare-fun b_next!8653 () Bool)

(assert (=> start!37534 (= b_free!8653 (not b_next!8653))))

(declare-fun tp!30675 () Bool)

(declare-fun b_and!15913 () Bool)

(assert (=> start!37534 (= tp!30675 b_and!15913)))

(declare-fun b!382795 () Bool)

(declare-fun e!232573 () Bool)

(declare-fun tp_is_empty!9301 () Bool)

(assert (=> b!382795 (= e!232573 tp_is_empty!9301)))

(declare-fun b!382796 () Bool)

(declare-fun e!232569 () Bool)

(assert (=> b!382796 (= e!232569 tp_is_empty!9301)))

(declare-fun b!382797 () Bool)

(declare-fun e!232570 () Bool)

(declare-datatypes ((array!22493 0))(
  ( (array!22494 (arr!10712 (Array (_ BitVec 32) (_ BitVec 64))) (size!11064 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22493)

(assert (=> b!382797 (= e!232570 (bvsle #b00000000000000000000000000000000 (size!11064 _keys!658)))))

(declare-datatypes ((V!13507 0))(
  ( (V!13508 (val!4695 Int)) )
))
(declare-datatypes ((tuple2!6266 0))(
  ( (tuple2!6267 (_1!3143 (_ BitVec 64)) (_2!3143 V!13507)) )
))
(declare-datatypes ((List!6134 0))(
  ( (Nil!6131) (Cons!6130 (h!6986 tuple2!6266) (t!11292 List!6134)) )
))
(declare-datatypes ((ListLongMap!5193 0))(
  ( (ListLongMap!5194 (toList!2612 List!6134)) )
))
(declare-fun lt!179741 () ListLongMap!5193)

(declare-fun lt!179743 () ListLongMap!5193)

(assert (=> b!382797 (= lt!179741 lt!179743)))

(declare-fun b!382798 () Bool)

(declare-fun res!217918 () Bool)

(declare-fun e!232574 () Bool)

(assert (=> b!382798 (=> (not res!217918) (not e!232574))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22493 (_ BitVec 32)) Bool)

(assert (=> b!382798 (= res!217918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15516 () Bool)

(declare-fun mapRes!15516 () Bool)

(assert (=> mapIsEmpty!15516 mapRes!15516))

(declare-fun b!382799 () Bool)

(declare-fun res!217917 () Bool)

(declare-fun e!232571 () Bool)

(assert (=> b!382799 (=> (not res!217917) (not e!232571))))

(declare-fun lt!179746 () array!22493)

(declare-datatypes ((List!6135 0))(
  ( (Nil!6132) (Cons!6131 (h!6987 (_ BitVec 64)) (t!11293 List!6135)) )
))
(declare-fun arrayNoDuplicates!0 (array!22493 (_ BitVec 32) List!6135) Bool)

(assert (=> b!382799 (= res!217917 (arrayNoDuplicates!0 lt!179746 #b00000000000000000000000000000000 Nil!6132))))

(declare-fun b!382801 () Bool)

(declare-fun res!217914 () Bool)

(assert (=> b!382801 (=> (not res!217914) (not e!232574))))

(assert (=> b!382801 (= res!217914 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6132))))

(declare-fun b!382802 () Bool)

(declare-fun res!217913 () Bool)

(assert (=> b!382802 (=> (not res!217913) (not e!232574))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382802 (= res!217913 (or (= (select (arr!10712 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10712 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382803 () Bool)

(assert (=> b!382803 (= e!232571 (not e!232570))))

(declare-fun res!217919 () Bool)

(assert (=> b!382803 (=> res!217919 e!232570)))

(declare-fun lt!179742 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382803 (= res!217919 (or (and (not lt!179742) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179742) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179742)))))

(assert (=> b!382803 (= lt!179742 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((ValueCell!4307 0))(
  ( (ValueCellFull!4307 (v!6888 V!13507)) (EmptyCell!4307) )
))
(declare-datatypes ((array!22495 0))(
  ( (array!22496 (arr!10713 (Array (_ BitVec 32) ValueCell!4307)) (size!11065 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22495)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13507)

(declare-fun lt!179744 () ListLongMap!5193)

(declare-fun minValue!472 () V!13507)

(declare-fun getCurrentListMap!2030 (array!22493 array!22495 (_ BitVec 32) (_ BitVec 32) V!13507 V!13507 (_ BitVec 32) Int) ListLongMap!5193)

(assert (=> b!382803 (= lt!179744 (getCurrentListMap!2030 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179738 () array!22495)

(assert (=> b!382803 (= lt!179741 (getCurrentListMap!2030 lt!179746 lt!179738 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179740 () ListLongMap!5193)

(assert (=> b!382803 (and (= lt!179743 lt!179740) (= lt!179740 lt!179743))))

(declare-fun v!373 () V!13507)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!179745 () ListLongMap!5193)

(declare-fun +!948 (ListLongMap!5193 tuple2!6266) ListLongMap!5193)

(assert (=> b!382803 (= lt!179740 (+!948 lt!179745 (tuple2!6267 k!778 v!373)))))

(declare-datatypes ((Unit!11789 0))(
  ( (Unit!11790) )
))
(declare-fun lt!179739 () Unit!11789)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!181 (array!22493 array!22495 (_ BitVec 32) (_ BitVec 32) V!13507 V!13507 (_ BitVec 32) (_ BitVec 64) V!13507 (_ BitVec 32) Int) Unit!11789)

(assert (=> b!382803 (= lt!179739 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!181 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!848 (array!22493 array!22495 (_ BitVec 32) (_ BitVec 32) V!13507 V!13507 (_ BitVec 32) Int) ListLongMap!5193)

(assert (=> b!382803 (= lt!179743 (getCurrentListMapNoExtraKeys!848 lt!179746 lt!179738 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382803 (= lt!179738 (array!22496 (store (arr!10713 _values!506) i!548 (ValueCellFull!4307 v!373)) (size!11065 _values!506)))))

(assert (=> b!382803 (= lt!179745 (getCurrentListMapNoExtraKeys!848 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382804 () Bool)

(declare-fun res!217920 () Bool)

(assert (=> b!382804 (=> (not res!217920) (not e!232574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382804 (= res!217920 (validKeyInArray!0 k!778))))

(declare-fun b!382805 () Bool)

(declare-fun res!217915 () Bool)

(assert (=> b!382805 (=> (not res!217915) (not e!232574))))

(assert (=> b!382805 (= res!217915 (and (= (size!11065 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11064 _keys!658) (size!11065 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15516 () Bool)

(declare-fun tp!30674 () Bool)

(assert (=> mapNonEmpty!15516 (= mapRes!15516 (and tp!30674 e!232573))))

(declare-fun mapRest!15516 () (Array (_ BitVec 32) ValueCell!4307))

(declare-fun mapValue!15516 () ValueCell!4307)

(declare-fun mapKey!15516 () (_ BitVec 32))

(assert (=> mapNonEmpty!15516 (= (arr!10713 _values!506) (store mapRest!15516 mapKey!15516 mapValue!15516))))

(declare-fun b!382806 () Bool)

(declare-fun e!232575 () Bool)

(assert (=> b!382806 (= e!232575 (and e!232569 mapRes!15516))))

(declare-fun condMapEmpty!15516 () Bool)

(declare-fun mapDefault!15516 () ValueCell!4307)

