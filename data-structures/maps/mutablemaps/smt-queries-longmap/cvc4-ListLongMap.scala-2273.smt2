; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37112 () Bool)

(assert start!37112)

(declare-fun b_free!8231 () Bool)

(declare-fun b_next!8231 () Bool)

(assert (=> start!37112 (= b_free!8231 (not b_next!8231))))

(declare-fun tp!29408 () Bool)

(declare-fun b_and!15491 () Bool)

(assert (=> start!37112 (= tp!29408 b_and!15491)))

(declare-fun b!373437 () Bool)

(declare-fun e!227661 () Bool)

(declare-fun e!227662 () Bool)

(assert (=> b!373437 (= e!227661 (not e!227662))))

(declare-fun res!210454 () Bool)

(assert (=> b!373437 (=> res!210454 e!227662)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373437 (= res!210454 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!12943 0))(
  ( (V!12944 (val!4484 Int)) )
))
(declare-datatypes ((ValueCell!4096 0))(
  ( (ValueCellFull!4096 (v!6677 V!12943)) (EmptyCell!4096) )
))
(declare-datatypes ((array!21665 0))(
  ( (array!21666 (arr!10298 (Array (_ BitVec 32) ValueCell!4096)) (size!10650 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21665)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12943)

(declare-datatypes ((array!21667 0))(
  ( (array!21668 (arr!10299 (Array (_ BitVec 32) (_ BitVec 64))) (size!10651 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21667)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12943)

(declare-datatypes ((tuple2!5932 0))(
  ( (tuple2!5933 (_1!2976 (_ BitVec 64)) (_2!2976 V!12943)) )
))
(declare-datatypes ((List!5806 0))(
  ( (Nil!5803) (Cons!5802 (h!6658 tuple2!5932) (t!10964 List!5806)) )
))
(declare-datatypes ((ListLongMap!4859 0))(
  ( (ListLongMap!4860 (toList!2445 List!5806)) )
))
(declare-fun lt!171663 () ListLongMap!4859)

(declare-fun getCurrentListMap!1893 (array!21667 array!21665 (_ BitVec 32) (_ BitVec 32) V!12943 V!12943 (_ BitVec 32) Int) ListLongMap!4859)

(assert (=> b!373437 (= lt!171663 (getCurrentListMap!1893 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171671 () ListLongMap!4859)

(declare-fun lt!171659 () array!21667)

(declare-fun lt!171658 () array!21665)

(assert (=> b!373437 (= lt!171671 (getCurrentListMap!1893 lt!171659 lt!171658 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171661 () ListLongMap!4859)

(declare-fun lt!171665 () ListLongMap!4859)

(assert (=> b!373437 (and (= lt!171661 lt!171665) (= lt!171665 lt!171661))))

(declare-fun lt!171668 () ListLongMap!4859)

(declare-fun lt!171660 () tuple2!5932)

(declare-fun +!786 (ListLongMap!4859 tuple2!5932) ListLongMap!4859)

(assert (=> b!373437 (= lt!171665 (+!786 lt!171668 lt!171660))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!12943)

(assert (=> b!373437 (= lt!171660 (tuple2!5933 k!778 v!373))))

(declare-datatypes ((Unit!11475 0))(
  ( (Unit!11476) )
))
(declare-fun lt!171672 () Unit!11475)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!44 (array!21667 array!21665 (_ BitVec 32) (_ BitVec 32) V!12943 V!12943 (_ BitVec 32) (_ BitVec 64) V!12943 (_ BitVec 32) Int) Unit!11475)

(assert (=> b!373437 (= lt!171672 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!44 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!711 (array!21667 array!21665 (_ BitVec 32) (_ BitVec 32) V!12943 V!12943 (_ BitVec 32) Int) ListLongMap!4859)

(assert (=> b!373437 (= lt!171661 (getCurrentListMapNoExtraKeys!711 lt!171659 lt!171658 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373437 (= lt!171658 (array!21666 (store (arr!10298 _values!506) i!548 (ValueCellFull!4096 v!373)) (size!10650 _values!506)))))

(assert (=> b!373437 (= lt!171668 (getCurrentListMapNoExtraKeys!711 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373438 () Bool)

(declare-fun res!210460 () Bool)

(assert (=> b!373438 (=> (not res!210460) (not e!227661))))

(declare-datatypes ((List!5807 0))(
  ( (Nil!5804) (Cons!5803 (h!6659 (_ BitVec 64)) (t!10965 List!5807)) )
))
(declare-fun arrayNoDuplicates!0 (array!21667 (_ BitVec 32) List!5807) Bool)

(assert (=> b!373438 (= res!210460 (arrayNoDuplicates!0 lt!171659 #b00000000000000000000000000000000 Nil!5804))))

(declare-fun b!373439 () Bool)

(declare-fun res!210458 () Bool)

(declare-fun e!227664 () Bool)

(assert (=> b!373439 (=> (not res!210458) (not e!227664))))

(assert (=> b!373439 (= res!210458 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5804))))

(declare-fun b!373440 () Bool)

(declare-fun e!227660 () Bool)

(declare-fun tp_is_empty!8879 () Bool)

(assert (=> b!373440 (= e!227660 tp_is_empty!8879)))

(declare-fun b!373441 () Bool)

(declare-fun res!210461 () Bool)

(assert (=> b!373441 (=> (not res!210461) (not e!227664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21667 (_ BitVec 32)) Bool)

(assert (=> b!373441 (= res!210461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373442 () Bool)

(declare-fun res!210456 () Bool)

(assert (=> b!373442 (=> (not res!210456) (not e!227664))))

(assert (=> b!373442 (= res!210456 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10651 _keys!658))))))

(declare-fun mapIsEmpty!14883 () Bool)

(declare-fun mapRes!14883 () Bool)

(assert (=> mapIsEmpty!14883 mapRes!14883))

(declare-fun mapNonEmpty!14883 () Bool)

(declare-fun tp!29409 () Bool)

(assert (=> mapNonEmpty!14883 (= mapRes!14883 (and tp!29409 e!227660))))

(declare-fun mapValue!14883 () ValueCell!4096)

(declare-fun mapKey!14883 () (_ BitVec 32))

(declare-fun mapRest!14883 () (Array (_ BitVec 32) ValueCell!4096))

(assert (=> mapNonEmpty!14883 (= (arr!10298 _values!506) (store mapRest!14883 mapKey!14883 mapValue!14883))))

(declare-fun b!373443 () Bool)

(declare-fun e!227663 () Bool)

(assert (=> b!373443 (= e!227663 true)))

(declare-fun lt!171670 () ListLongMap!4859)

(declare-fun lt!171669 () tuple2!5932)

(declare-fun lt!171657 () ListLongMap!4859)

(assert (=> b!373443 (= (+!786 lt!171670 lt!171669) (+!786 lt!171657 lt!171660))))

(declare-fun lt!171667 () Unit!11475)

(declare-fun lt!171666 () ListLongMap!4859)

(declare-fun addCommutativeForDiffKeys!215 (ListLongMap!4859 (_ BitVec 64) V!12943 (_ BitVec 64) V!12943) Unit!11475)

(assert (=> b!373443 (= lt!171667 (addCommutativeForDiffKeys!215 lt!171666 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373444 () Bool)

(assert (=> b!373444 (= e!227664 e!227661)))

(declare-fun res!210459 () Bool)

(assert (=> b!373444 (=> (not res!210459) (not e!227661))))

(assert (=> b!373444 (= res!210459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171659 mask!970))))

(assert (=> b!373444 (= lt!171659 (array!21668 (store (arr!10299 _keys!658) i!548 k!778) (size!10651 _keys!658)))))

(declare-fun b!373445 () Bool)

(declare-fun res!210455 () Bool)

(assert (=> b!373445 (=> (not res!210455) (not e!227664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373445 (= res!210455 (validKeyInArray!0 k!778))))

(declare-fun b!373446 () Bool)

(declare-fun res!210463 () Bool)

(assert (=> b!373446 (=> (not res!210463) (not e!227664))))

(assert (=> b!373446 (= res!210463 (and (= (size!10650 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10651 _keys!658) (size!10650 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373447 () Bool)

(declare-fun res!210464 () Bool)

(assert (=> b!373447 (=> (not res!210464) (not e!227664))))

(declare-fun arrayContainsKey!0 (array!21667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373447 (= res!210464 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373448 () Bool)

(declare-fun e!227665 () Bool)

(assert (=> b!373448 (= e!227665 tp_is_empty!8879)))

(declare-fun b!373449 () Bool)

(assert (=> b!373449 (= e!227662 e!227663)))

(declare-fun res!210453 () Bool)

(assert (=> b!373449 (=> res!210453 e!227663)))

(assert (=> b!373449 (= res!210453 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171664 () ListLongMap!4859)

(assert (=> b!373449 (= lt!171664 lt!171670)))

(assert (=> b!373449 (= lt!171670 (+!786 lt!171666 lt!171660))))

(declare-fun lt!171673 () Unit!11475)

(assert (=> b!373449 (= lt!171673 (addCommutativeForDiffKeys!215 lt!171668 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!373449 (= lt!171671 (+!786 lt!171664 lt!171669))))

(declare-fun lt!171662 () tuple2!5932)

(assert (=> b!373449 (= lt!171664 (+!786 lt!171665 lt!171662))))

(assert (=> b!373449 (= lt!171663 lt!171657)))

(assert (=> b!373449 (= lt!171657 (+!786 lt!171666 lt!171669))))

(assert (=> b!373449 (= lt!171666 (+!786 lt!171668 lt!171662))))

(assert (=> b!373449 (= lt!171671 (+!786 (+!786 lt!171661 lt!171662) lt!171669))))

(assert (=> b!373449 (= lt!171669 (tuple2!5933 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373449 (= lt!171662 (tuple2!5933 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373451 () Bool)

(declare-fun res!210462 () Bool)

(assert (=> b!373451 (=> (not res!210462) (not e!227664))))

(assert (=> b!373451 (= res!210462 (or (= (select (arr!10299 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10299 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373450 () Bool)

(declare-fun e!227667 () Bool)

(assert (=> b!373450 (= e!227667 (and e!227665 mapRes!14883))))

(declare-fun condMapEmpty!14883 () Bool)

(declare-fun mapDefault!14883 () ValueCell!4096)

