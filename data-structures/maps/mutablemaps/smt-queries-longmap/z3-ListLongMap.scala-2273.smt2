; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37110 () Bool)

(assert start!37110)

(declare-fun b_free!8229 () Bool)

(declare-fun b_next!8229 () Bool)

(assert (=> start!37110 (= b_free!8229 (not b_next!8229))))

(declare-fun tp!29402 () Bool)

(declare-fun b_and!15489 () Bool)

(assert (=> start!37110 (= tp!29402 b_and!15489)))

(declare-fun mapNonEmpty!14880 () Bool)

(declare-fun mapRes!14880 () Bool)

(declare-fun tp!29403 () Bool)

(declare-fun e!227643 () Bool)

(assert (=> mapNonEmpty!14880 (= mapRes!14880 (and tp!29403 e!227643))))

(declare-datatypes ((V!12941 0))(
  ( (V!12942 (val!4483 Int)) )
))
(declare-datatypes ((ValueCell!4095 0))(
  ( (ValueCellFull!4095 (v!6676 V!12941)) (EmptyCell!4095) )
))
(declare-datatypes ((array!21661 0))(
  ( (array!21662 (arr!10296 (Array (_ BitVec 32) ValueCell!4095)) (size!10648 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21661)

(declare-fun mapKey!14880 () (_ BitVec 32))

(declare-fun mapValue!14880 () ValueCell!4095)

(declare-fun mapRest!14880 () (Array (_ BitVec 32) ValueCell!4095))

(assert (=> mapNonEmpty!14880 (= (arr!10296 _values!506) (store mapRest!14880 mapKey!14880 mapValue!14880))))

(declare-fun b!373392 () Bool)

(declare-fun res!210418 () Bool)

(declare-fun e!227641 () Bool)

(assert (=> b!373392 (=> (not res!210418) (not e!227641))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21663 0))(
  ( (array!21664 (arr!10297 (Array (_ BitVec 32) (_ BitVec 64))) (size!10649 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21663)

(assert (=> b!373392 (= res!210418 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10649 _keys!658))))))

(declare-fun b!373394 () Bool)

(declare-fun e!227640 () Bool)

(assert (=> b!373394 (= e!227641 e!227640)))

(declare-fun res!210426 () Bool)

(assert (=> b!373394 (=> (not res!210426) (not e!227640))))

(declare-fun lt!171616 () array!21663)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21663 (_ BitVec 32)) Bool)

(assert (=> b!373394 (= res!210426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171616 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!373394 (= lt!171616 (array!21664 (store (arr!10297 _keys!658) i!548 k0!778) (size!10649 _keys!658)))))

(declare-fun b!373395 () Bool)

(declare-fun e!227638 () Bool)

(declare-fun e!227636 () Bool)

(assert (=> b!373395 (= e!227638 (and e!227636 mapRes!14880))))

(declare-fun condMapEmpty!14880 () Bool)

(declare-fun mapDefault!14880 () ValueCell!4095)

(assert (=> b!373395 (= condMapEmpty!14880 (= (arr!10296 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4095)) mapDefault!14880)))))

(declare-fun b!373396 () Bool)

(declare-fun res!210421 () Bool)

(assert (=> b!373396 (=> (not res!210421) (not e!227641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373396 (= res!210421 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14880 () Bool)

(assert (=> mapIsEmpty!14880 mapRes!14880))

(declare-fun b!373397 () Bool)

(declare-fun res!210420 () Bool)

(assert (=> b!373397 (=> (not res!210420) (not e!227640))))

(declare-datatypes ((List!5804 0))(
  ( (Nil!5801) (Cons!5800 (h!6656 (_ BitVec 64)) (t!10962 List!5804)) )
))
(declare-fun arrayNoDuplicates!0 (array!21663 (_ BitVec 32) List!5804) Bool)

(assert (=> b!373397 (= res!210420 (arrayNoDuplicates!0 lt!171616 #b00000000000000000000000000000000 Nil!5801))))

(declare-fun b!373398 () Bool)

(declare-fun e!227637 () Bool)

(assert (=> b!373398 (= e!227637 true)))

(declare-datatypes ((tuple2!5930 0))(
  ( (tuple2!5931 (_1!2975 (_ BitVec 64)) (_2!2975 V!12941)) )
))
(declare-fun lt!171617 () tuple2!5930)

(declare-datatypes ((List!5805 0))(
  ( (Nil!5802) (Cons!5801 (h!6657 tuple2!5930) (t!10963 List!5805)) )
))
(declare-datatypes ((ListLongMap!4857 0))(
  ( (ListLongMap!4858 (toList!2444 List!5805)) )
))
(declare-fun lt!171614 () ListLongMap!4857)

(declare-fun lt!171606 () tuple2!5930)

(declare-fun lt!171609 () ListLongMap!4857)

(declare-fun +!785 (ListLongMap!4857 tuple2!5930) ListLongMap!4857)

(assert (=> b!373398 (= (+!785 lt!171614 lt!171606) (+!785 lt!171609 lt!171617))))

(declare-fun v!373 () V!12941)

(declare-datatypes ((Unit!11473 0))(
  ( (Unit!11474) )
))
(declare-fun lt!171607 () Unit!11473)

(declare-fun minValue!472 () V!12941)

(declare-fun lt!171622 () ListLongMap!4857)

(declare-fun addCommutativeForDiffKeys!214 (ListLongMap!4857 (_ BitVec 64) V!12941 (_ BitVec 64) V!12941) Unit!11473)

(assert (=> b!373398 (= lt!171607 (addCommutativeForDiffKeys!214 lt!171622 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373399 () Bool)

(declare-fun res!210425 () Bool)

(assert (=> b!373399 (=> (not res!210425) (not e!227641))))

(declare-fun arrayContainsKey!0 (array!21663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373399 (= res!210425 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!373400 () Bool)

(declare-fun res!210417 () Bool)

(assert (=> b!373400 (=> (not res!210417) (not e!227641))))

(assert (=> b!373400 (= res!210417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373393 () Bool)

(declare-fun e!227642 () Bool)

(assert (=> b!373393 (= e!227640 (not e!227642))))

(declare-fun res!210422 () Bool)

(assert (=> b!373393 (=> res!210422 e!227642)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373393 (= res!210422 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12941)

(declare-fun lt!171615 () ListLongMap!4857)

(declare-fun getCurrentListMap!1892 (array!21663 array!21661 (_ BitVec 32) (_ BitVec 32) V!12941 V!12941 (_ BitVec 32) Int) ListLongMap!4857)

(assert (=> b!373393 (= lt!171615 (getCurrentListMap!1892 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171620 () ListLongMap!4857)

(declare-fun lt!171619 () array!21661)

(assert (=> b!373393 (= lt!171620 (getCurrentListMap!1892 lt!171616 lt!171619 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171612 () ListLongMap!4857)

(declare-fun lt!171613 () ListLongMap!4857)

(assert (=> b!373393 (and (= lt!171612 lt!171613) (= lt!171613 lt!171612))))

(declare-fun lt!171608 () ListLongMap!4857)

(assert (=> b!373393 (= lt!171613 (+!785 lt!171608 lt!171617))))

(assert (=> b!373393 (= lt!171617 (tuple2!5931 k0!778 v!373))))

(declare-fun lt!171618 () Unit!11473)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!43 (array!21663 array!21661 (_ BitVec 32) (_ BitVec 32) V!12941 V!12941 (_ BitVec 32) (_ BitVec 64) V!12941 (_ BitVec 32) Int) Unit!11473)

(assert (=> b!373393 (= lt!171618 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!43 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!710 (array!21663 array!21661 (_ BitVec 32) (_ BitVec 32) V!12941 V!12941 (_ BitVec 32) Int) ListLongMap!4857)

(assert (=> b!373393 (= lt!171612 (getCurrentListMapNoExtraKeys!710 lt!171616 lt!171619 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373393 (= lt!171619 (array!21662 (store (arr!10296 _values!506) i!548 (ValueCellFull!4095 v!373)) (size!10648 _values!506)))))

(assert (=> b!373393 (= lt!171608 (getCurrentListMapNoExtraKeys!710 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!210428 () Bool)

(assert (=> start!37110 (=> (not res!210428) (not e!227641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37110 (= res!210428 (validMask!0 mask!970))))

(assert (=> start!37110 e!227641))

(declare-fun array_inv!7598 (array!21661) Bool)

(assert (=> start!37110 (and (array_inv!7598 _values!506) e!227638)))

(assert (=> start!37110 tp!29402))

(assert (=> start!37110 true))

(declare-fun tp_is_empty!8877 () Bool)

(assert (=> start!37110 tp_is_empty!8877))

(declare-fun array_inv!7599 (array!21663) Bool)

(assert (=> start!37110 (array_inv!7599 _keys!658)))

(declare-fun b!373401 () Bool)

(assert (=> b!373401 (= e!227643 tp_is_empty!8877)))

(declare-fun b!373402 () Bool)

(declare-fun res!210427 () Bool)

(assert (=> b!373402 (=> (not res!210427) (not e!227641))))

(assert (=> b!373402 (= res!210427 (and (= (size!10648 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10649 _keys!658) (size!10648 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373403 () Bool)

(declare-fun res!210423 () Bool)

(assert (=> b!373403 (=> (not res!210423) (not e!227641))))

(assert (=> b!373403 (= res!210423 (or (= (select (arr!10297 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10297 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373404 () Bool)

(declare-fun res!210419 () Bool)

(assert (=> b!373404 (=> (not res!210419) (not e!227641))))

(assert (=> b!373404 (= res!210419 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5801))))

(declare-fun b!373405 () Bool)

(assert (=> b!373405 (= e!227642 e!227637)))

(declare-fun res!210424 () Bool)

(assert (=> b!373405 (=> res!210424 e!227637)))

(assert (=> b!373405 (= res!210424 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171611 () ListLongMap!4857)

(assert (=> b!373405 (= lt!171611 lt!171614)))

(assert (=> b!373405 (= lt!171614 (+!785 lt!171622 lt!171617))))

(declare-fun lt!171621 () Unit!11473)

(assert (=> b!373405 (= lt!171621 (addCommutativeForDiffKeys!214 lt!171608 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!373405 (= lt!171620 (+!785 lt!171611 lt!171606))))

(declare-fun lt!171610 () tuple2!5930)

(assert (=> b!373405 (= lt!171611 (+!785 lt!171613 lt!171610))))

(assert (=> b!373405 (= lt!171615 lt!171609)))

(assert (=> b!373405 (= lt!171609 (+!785 lt!171622 lt!171606))))

(assert (=> b!373405 (= lt!171622 (+!785 lt!171608 lt!171610))))

(assert (=> b!373405 (= lt!171620 (+!785 (+!785 lt!171612 lt!171610) lt!171606))))

(assert (=> b!373405 (= lt!171606 (tuple2!5931 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373405 (= lt!171610 (tuple2!5931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373406 () Bool)

(assert (=> b!373406 (= e!227636 tp_is_empty!8877)))

(assert (= (and start!37110 res!210428) b!373402))

(assert (= (and b!373402 res!210427) b!373400))

(assert (= (and b!373400 res!210417) b!373404))

(assert (= (and b!373404 res!210419) b!373392))

(assert (= (and b!373392 res!210418) b!373396))

(assert (= (and b!373396 res!210421) b!373403))

(assert (= (and b!373403 res!210423) b!373399))

(assert (= (and b!373399 res!210425) b!373394))

(assert (= (and b!373394 res!210426) b!373397))

(assert (= (and b!373397 res!210420) b!373393))

(assert (= (and b!373393 (not res!210422)) b!373405))

(assert (= (and b!373405 (not res!210424)) b!373398))

(assert (= (and b!373395 condMapEmpty!14880) mapIsEmpty!14880))

(assert (= (and b!373395 (not condMapEmpty!14880)) mapNonEmpty!14880))

(get-info :version)

(assert (= (and mapNonEmpty!14880 ((_ is ValueCellFull!4095) mapValue!14880)) b!373401))

(assert (= (and b!373395 ((_ is ValueCellFull!4095) mapDefault!14880)) b!373406))

(assert (= start!37110 b!373395))

(declare-fun m!369401 () Bool)

(assert (=> b!373396 m!369401))

(declare-fun m!369403 () Bool)

(assert (=> b!373394 m!369403))

(declare-fun m!369405 () Bool)

(assert (=> b!373394 m!369405))

(declare-fun m!369407 () Bool)

(assert (=> b!373404 m!369407))

(declare-fun m!369409 () Bool)

(assert (=> mapNonEmpty!14880 m!369409))

(declare-fun m!369411 () Bool)

(assert (=> b!373397 m!369411))

(declare-fun m!369413 () Bool)

(assert (=> b!373405 m!369413))

(declare-fun m!369415 () Bool)

(assert (=> b!373405 m!369415))

(declare-fun m!369417 () Bool)

(assert (=> b!373405 m!369417))

(declare-fun m!369419 () Bool)

(assert (=> b!373405 m!369419))

(assert (=> b!373405 m!369417))

(declare-fun m!369421 () Bool)

(assert (=> b!373405 m!369421))

(declare-fun m!369423 () Bool)

(assert (=> b!373405 m!369423))

(declare-fun m!369425 () Bool)

(assert (=> b!373405 m!369425))

(declare-fun m!369427 () Bool)

(assert (=> b!373405 m!369427))

(declare-fun m!369429 () Bool)

(assert (=> b!373403 m!369429))

(declare-fun m!369431 () Bool)

(assert (=> start!37110 m!369431))

(declare-fun m!369433 () Bool)

(assert (=> start!37110 m!369433))

(declare-fun m!369435 () Bool)

(assert (=> start!37110 m!369435))

(declare-fun m!369437 () Bool)

(assert (=> b!373398 m!369437))

(declare-fun m!369439 () Bool)

(assert (=> b!373398 m!369439))

(declare-fun m!369441 () Bool)

(assert (=> b!373398 m!369441))

(declare-fun m!369443 () Bool)

(assert (=> b!373399 m!369443))

(declare-fun m!369445 () Bool)

(assert (=> b!373400 m!369445))

(declare-fun m!369447 () Bool)

(assert (=> b!373393 m!369447))

(declare-fun m!369449 () Bool)

(assert (=> b!373393 m!369449))

(declare-fun m!369451 () Bool)

(assert (=> b!373393 m!369451))

(declare-fun m!369453 () Bool)

(assert (=> b!373393 m!369453))

(declare-fun m!369455 () Bool)

(assert (=> b!373393 m!369455))

(declare-fun m!369457 () Bool)

(assert (=> b!373393 m!369457))

(declare-fun m!369459 () Bool)

(assert (=> b!373393 m!369459))

(check-sat (not mapNonEmpty!14880) (not b_next!8229) b_and!15489 (not b!373405) (not b!373398) (not b!373394) (not b!373404) tp_is_empty!8877 (not start!37110) (not b!373399) (not b!373397) (not b!373393) (not b!373400) (not b!373396))
(check-sat b_and!15489 (not b_next!8229))
