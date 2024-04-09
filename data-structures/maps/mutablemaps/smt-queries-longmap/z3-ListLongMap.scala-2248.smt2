; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36960 () Bool)

(assert start!36960)

(declare-fun b_free!8079 () Bool)

(declare-fun b_next!8079 () Bool)

(assert (=> start!36960 (= b_free!8079 (not b_next!8079))))

(declare-fun tp!28953 () Bool)

(declare-fun b_and!15339 () Bool)

(assert (=> start!36960 (= tp!28953 b_and!15339)))

(declare-fun b!370385 () Bool)

(declare-fun e!226213 () Bool)

(declare-fun tp_is_empty!8727 () Bool)

(assert (=> b!370385 (= e!226213 tp_is_empty!8727)))

(declare-fun res!208092 () Bool)

(declare-fun e!226216 () Bool)

(assert (=> start!36960 (=> (not res!208092) (not e!226216))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36960 (= res!208092 (validMask!0 mask!970))))

(assert (=> start!36960 e!226216))

(declare-datatypes ((V!12741 0))(
  ( (V!12742 (val!4408 Int)) )
))
(declare-datatypes ((ValueCell!4020 0))(
  ( (ValueCellFull!4020 (v!6601 V!12741)) (EmptyCell!4020) )
))
(declare-datatypes ((array!21371 0))(
  ( (array!21372 (arr!10151 (Array (_ BitVec 32) ValueCell!4020)) (size!10503 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21371)

(declare-fun e!226217 () Bool)

(declare-fun array_inv!7496 (array!21371) Bool)

(assert (=> start!36960 (and (array_inv!7496 _values!506) e!226217)))

(assert (=> start!36960 tp!28953))

(assert (=> start!36960 true))

(assert (=> start!36960 tp_is_empty!8727))

(declare-datatypes ((array!21373 0))(
  ( (array!21374 (arr!10152 (Array (_ BitVec 32) (_ BitVec 64))) (size!10504 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21373)

(declare-fun array_inv!7497 (array!21373) Bool)

(assert (=> start!36960 (array_inv!7497 _keys!658)))

(declare-fun b!370386 () Bool)

(declare-fun e!226218 () Bool)

(declare-fun mapRes!14655 () Bool)

(assert (=> b!370386 (= e!226217 (and e!226218 mapRes!14655))))

(declare-fun condMapEmpty!14655 () Bool)

(declare-fun mapDefault!14655 () ValueCell!4020)

(assert (=> b!370386 (= condMapEmpty!14655 (= (arr!10151 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4020)) mapDefault!14655)))))

(declare-fun b!370387 () Bool)

(declare-fun res!208093 () Bool)

(declare-fun e!226214 () Bool)

(assert (=> b!370387 (=> (not res!208093) (not e!226214))))

(declare-fun lt!169961 () array!21373)

(declare-datatypes ((List!5699 0))(
  ( (Nil!5696) (Cons!5695 (h!6551 (_ BitVec 64)) (t!10857 List!5699)) )
))
(declare-fun arrayNoDuplicates!0 (array!21373 (_ BitVec 32) List!5699) Bool)

(assert (=> b!370387 (= res!208093 (arrayNoDuplicates!0 lt!169961 #b00000000000000000000000000000000 Nil!5696))))

(declare-fun b!370388 () Bool)

(declare-fun res!208087 () Bool)

(assert (=> b!370388 (=> (not res!208087) (not e!226216))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370388 (= res!208087 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14655 () Bool)

(assert (=> mapIsEmpty!14655 mapRes!14655))

(declare-fun b!370389 () Bool)

(declare-fun res!208088 () Bool)

(assert (=> b!370389 (=> (not res!208088) (not e!226216))))

(declare-fun arrayContainsKey!0 (array!21373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370389 (= res!208088 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!370390 () Bool)

(declare-fun res!208086 () Bool)

(assert (=> b!370390 (=> (not res!208086) (not e!226216))))

(assert (=> b!370390 (= res!208086 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5696))))

(declare-fun b!370391 () Bool)

(assert (=> b!370391 (= e!226214 false)))

(declare-datatypes ((tuple2!5834 0))(
  ( (tuple2!5835 (_1!2927 (_ BitVec 64)) (_2!2927 V!12741)) )
))
(declare-datatypes ((List!5700 0))(
  ( (Nil!5697) (Cons!5696 (h!6552 tuple2!5834) (t!10858 List!5700)) )
))
(declare-datatypes ((ListLongMap!4761 0))(
  ( (ListLongMap!4762 (toList!2396 List!5700)) )
))
(declare-fun lt!169962 () ListLongMap!4761)

(declare-fun zeroValue!472 () V!12741)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12741)

(declare-fun defaultEntry!514 () Int)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12741)

(declare-fun getCurrentListMapNoExtraKeys!664 (array!21373 array!21371 (_ BitVec 32) (_ BitVec 32) V!12741 V!12741 (_ BitVec 32) Int) ListLongMap!4761)

(assert (=> b!370391 (= lt!169962 (getCurrentListMapNoExtraKeys!664 lt!169961 (array!21372 (store (arr!10151 _values!506) i!548 (ValueCellFull!4020 v!373)) (size!10503 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169963 () ListLongMap!4761)

(assert (=> b!370391 (= lt!169963 (getCurrentListMapNoExtraKeys!664 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370392 () Bool)

(declare-fun res!208089 () Bool)

(assert (=> b!370392 (=> (not res!208089) (not e!226216))))

(assert (=> b!370392 (= res!208089 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10504 _keys!658))))))

(declare-fun b!370393 () Bool)

(declare-fun res!208094 () Bool)

(assert (=> b!370393 (=> (not res!208094) (not e!226216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21373 (_ BitVec 32)) Bool)

(assert (=> b!370393 (= res!208094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370394 () Bool)

(assert (=> b!370394 (= e!226218 tp_is_empty!8727)))

(declare-fun b!370395 () Bool)

(declare-fun res!208085 () Bool)

(assert (=> b!370395 (=> (not res!208085) (not e!226216))))

(assert (=> b!370395 (= res!208085 (or (= (select (arr!10152 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10152 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370396 () Bool)

(assert (=> b!370396 (= e!226216 e!226214)))

(declare-fun res!208090 () Bool)

(assert (=> b!370396 (=> (not res!208090) (not e!226214))))

(assert (=> b!370396 (= res!208090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169961 mask!970))))

(assert (=> b!370396 (= lt!169961 (array!21374 (store (arr!10152 _keys!658) i!548 k0!778) (size!10504 _keys!658)))))

(declare-fun b!370397 () Bool)

(declare-fun res!208091 () Bool)

(assert (=> b!370397 (=> (not res!208091) (not e!226216))))

(assert (=> b!370397 (= res!208091 (and (= (size!10503 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10504 _keys!658) (size!10503 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14655 () Bool)

(declare-fun tp!28952 () Bool)

(assert (=> mapNonEmpty!14655 (= mapRes!14655 (and tp!28952 e!226213))))

(declare-fun mapKey!14655 () (_ BitVec 32))

(declare-fun mapRest!14655 () (Array (_ BitVec 32) ValueCell!4020))

(declare-fun mapValue!14655 () ValueCell!4020)

(assert (=> mapNonEmpty!14655 (= (arr!10151 _values!506) (store mapRest!14655 mapKey!14655 mapValue!14655))))

(assert (= (and start!36960 res!208092) b!370397))

(assert (= (and b!370397 res!208091) b!370393))

(assert (= (and b!370393 res!208094) b!370390))

(assert (= (and b!370390 res!208086) b!370392))

(assert (= (and b!370392 res!208089) b!370388))

(assert (= (and b!370388 res!208087) b!370395))

(assert (= (and b!370395 res!208085) b!370389))

(assert (= (and b!370389 res!208088) b!370396))

(assert (= (and b!370396 res!208090) b!370387))

(assert (= (and b!370387 res!208093) b!370391))

(assert (= (and b!370386 condMapEmpty!14655) mapIsEmpty!14655))

(assert (= (and b!370386 (not condMapEmpty!14655)) mapNonEmpty!14655))

(get-info :version)

(assert (= (and mapNonEmpty!14655 ((_ is ValueCellFull!4020) mapValue!14655)) b!370385))

(assert (= (and b!370386 ((_ is ValueCellFull!4020) mapDefault!14655)) b!370394))

(assert (= start!36960 b!370386))

(declare-fun m!366539 () Bool)

(assert (=> b!370396 m!366539))

(declare-fun m!366541 () Bool)

(assert (=> b!370396 m!366541))

(declare-fun m!366543 () Bool)

(assert (=> b!370387 m!366543))

(declare-fun m!366545 () Bool)

(assert (=> b!370388 m!366545))

(declare-fun m!366547 () Bool)

(assert (=> b!370393 m!366547))

(declare-fun m!366549 () Bool)

(assert (=> b!370389 m!366549))

(declare-fun m!366551 () Bool)

(assert (=> mapNonEmpty!14655 m!366551))

(declare-fun m!366553 () Bool)

(assert (=> b!370391 m!366553))

(declare-fun m!366555 () Bool)

(assert (=> b!370391 m!366555))

(declare-fun m!366557 () Bool)

(assert (=> b!370391 m!366557))

(declare-fun m!366559 () Bool)

(assert (=> b!370390 m!366559))

(declare-fun m!366561 () Bool)

(assert (=> start!36960 m!366561))

(declare-fun m!366563 () Bool)

(assert (=> start!36960 m!366563))

(declare-fun m!366565 () Bool)

(assert (=> start!36960 m!366565))

(declare-fun m!366567 () Bool)

(assert (=> b!370395 m!366567))

(check-sat tp_is_empty!8727 b_and!15339 (not b!370388) (not start!36960) (not b!370396) (not mapNonEmpty!14655) (not b!370389) (not b!370387) (not b!370391) (not b!370390) (not b!370393) (not b_next!8079))
(check-sat b_and!15339 (not b_next!8079))
