; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16832 () Bool)

(assert start!16832)

(declare-fun b!169551 () Bool)

(declare-fun b_free!4151 () Bool)

(declare-fun b_next!4151 () Bool)

(assert (=> b!169551 (= b_free!4151 (not b_next!4151))))

(declare-fun tp!15057 () Bool)

(declare-fun b_and!10583 () Bool)

(assert (=> b!169551 (= tp!15057 b_and!10583)))

(declare-fun b!169546 () Bool)

(declare-fun b_free!4153 () Bool)

(declare-fun b_next!4153 () Bool)

(assert (=> b!169546 (= b_free!4153 (not b_next!4153))))

(declare-fun tp!15059 () Bool)

(declare-fun b_and!10585 () Bool)

(assert (=> b!169546 (= tp!15059 b_and!10585)))

(declare-fun mapNonEmpty!6650 () Bool)

(declare-fun mapRes!6651 () Bool)

(declare-fun tp!15060 () Bool)

(declare-fun e!111794 () Bool)

(assert (=> mapNonEmpty!6650 (= mapRes!6651 (and tp!15060 e!111794))))

(declare-fun mapKey!6650 () (_ BitVec 32))

(declare-datatypes ((V!4883 0))(
  ( (V!4884 (val!2008 Int)) )
))
(declare-datatypes ((ValueCell!1620 0))(
  ( (ValueCellFull!1620 (v!3869 V!4883)) (EmptyCell!1620) )
))
(declare-fun mapValue!6650 () ValueCell!1620)

(declare-fun mapRest!6650 () (Array (_ BitVec 32) ValueCell!1620))

(declare-datatypes ((array!6950 0))(
  ( (array!6951 (arr!3310 (Array (_ BitVec 32) (_ BitVec 64))) (size!3598 (_ BitVec 32))) )
))
(declare-datatypes ((array!6952 0))(
  ( (array!6953 (arr!3311 (Array (_ BitVec 32) ValueCell!1620)) (size!3599 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2148 0))(
  ( (LongMapFixedSize!2149 (defaultEntry!3516 Int) (mask!8303 (_ BitVec 32)) (extraKeys!3257 (_ BitVec 32)) (zeroValue!3359 V!4883) (minValue!3359 V!4883) (_size!1123 (_ BitVec 32)) (_keys!5341 array!6950) (_values!3499 array!6952) (_vacant!1123 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2148)

(assert (=> mapNonEmpty!6650 (= (arr!3311 (_values!3499 thiss!1248)) (store mapRest!6650 mapKey!6650 mapValue!6650))))

(declare-fun b!169542 () Bool)

(declare-fun e!111799 () Bool)

(declare-fun e!111804 () Bool)

(declare-fun mapRes!6650 () Bool)

(assert (=> b!169542 (= e!111799 (and e!111804 mapRes!6650))))

(declare-fun condMapEmpty!6650 () Bool)

(declare-datatypes ((tuple2!3224 0))(
  ( (tuple2!3225 (_1!1622 Bool) (_2!1622 LongMapFixedSize!2148)) )
))
(declare-fun err!91 () tuple2!3224)

(declare-fun mapDefault!6651 () ValueCell!1620)

(assert (=> b!169542 (= condMapEmpty!6650 (= (arr!3311 (_values!3499 (_2!1622 err!91))) ((as const (Array (_ BitVec 32) ValueCell!1620)) mapDefault!6651)))))

(declare-fun mapNonEmpty!6651 () Bool)

(declare-fun tp!15058 () Bool)

(declare-fun e!111796 () Bool)

(assert (=> mapNonEmpty!6651 (= mapRes!6650 (and tp!15058 e!111796))))

(declare-fun mapKey!6651 () (_ BitVec 32))

(declare-fun mapValue!6651 () ValueCell!1620)

(declare-fun mapRest!6651 () (Array (_ BitVec 32) ValueCell!1620))

(assert (=> mapNonEmpty!6651 (= (arr!3311 (_values!3499 (_2!1622 err!91))) (store mapRest!6651 mapKey!6651 mapValue!6651))))

(declare-fun b!169543 () Bool)

(declare-fun e!111803 () Bool)

(declare-fun e!111795 () Bool)

(assert (=> b!169543 (= e!111803 e!111795)))

(declare-fun res!80633 () Bool)

(assert (=> b!169543 (=> (not res!80633) (not e!111795))))

(declare-datatypes ((SeekEntryResult!536 0))(
  ( (MissingZero!536 (index!4312 (_ BitVec 32))) (Found!536 (index!4313 (_ BitVec 32))) (Intermediate!536 (undefined!1348 Bool) (index!4314 (_ BitVec 32)) (x!18740 (_ BitVec 32))) (Undefined!536) (MissingVacant!536 (index!4315 (_ BitVec 32))) )
))
(declare-fun lt!84965 () SeekEntryResult!536)

(get-info :version)

(assert (=> b!169543 (= res!80633 (and (not ((_ is Undefined!536) lt!84965)) (not ((_ is MissingVacant!536) lt!84965)) (not ((_ is MissingZero!536) lt!84965)) (not ((_ is Found!536) lt!84965))))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6950 (_ BitVec 32)) SeekEntryResult!536)

(assert (=> b!169543 (= lt!84965 (seekEntryOrOpen!0 key!828 (_keys!5341 thiss!1248) (mask!8303 thiss!1248)))))

(declare-fun b!169544 () Bool)

(declare-fun res!80634 () Bool)

(assert (=> b!169544 (=> (not res!80634) (not e!111803))))

(assert (=> b!169544 (= res!80634 (not (= key!828 (bvneg key!828))))))

(declare-fun b!169545 () Bool)

(declare-fun tp_is_empty!3927 () Bool)

(assert (=> b!169545 (= e!111804 tp_is_empty!3927)))

(declare-fun e!111801 () Bool)

(declare-fun e!111797 () Bool)

(declare-fun array_inv!2113 (array!6950) Bool)

(declare-fun array_inv!2114 (array!6952) Bool)

(assert (=> b!169546 (= e!111797 (and tp!15059 tp_is_empty!3927 (array_inv!2113 (_keys!5341 thiss!1248)) (array_inv!2114 (_values!3499 thiss!1248)) e!111801))))

(declare-fun mapIsEmpty!6650 () Bool)

(assert (=> mapIsEmpty!6650 mapRes!6650))

(declare-fun b!169547 () Bool)

(assert (=> b!169547 (= e!111794 tp_is_empty!3927)))

(declare-fun res!80632 () Bool)

(assert (=> start!16832 (=> (not res!80632) (not e!111803))))

(declare-fun valid!916 (LongMapFixedSize!2148) Bool)

(assert (=> start!16832 (= res!80632 (valid!916 thiss!1248))))

(assert (=> start!16832 e!111803))

(assert (=> start!16832 e!111797))

(assert (=> start!16832 true))

(declare-fun b!169548 () Bool)

(declare-fun e!111800 () Bool)

(assert (=> b!169548 (= e!111801 (and e!111800 mapRes!6651))))

(declare-fun condMapEmpty!6651 () Bool)

(declare-fun mapDefault!6650 () ValueCell!1620)

(assert (=> b!169548 (= condMapEmpty!6651 (= (arr!3311 (_values!3499 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1620)) mapDefault!6650)))))

(declare-fun b!169549 () Bool)

(assert (=> b!169549 (= e!111795 false)))

(declare-fun lt!84964 () Bool)

(assert (=> b!169549 (= lt!84964 (valid!916 (_2!1622 err!91)))))

(assert (=> b!169549 true))

(declare-fun e!111802 () Bool)

(assert (=> b!169549 e!111802))

(declare-fun mapIsEmpty!6651 () Bool)

(assert (=> mapIsEmpty!6651 mapRes!6651))

(declare-fun b!169550 () Bool)

(assert (=> b!169550 (= e!111800 tp_is_empty!3927)))

(assert (=> b!169551 (= e!111802 (and tp!15057 tp_is_empty!3927 (array_inv!2113 (_keys!5341 (_2!1622 err!91))) (array_inv!2114 (_values!3499 (_2!1622 err!91))) e!111799))))

(declare-fun b!169552 () Bool)

(assert (=> b!169552 (= e!111796 tp_is_empty!3927)))

(assert (= (and start!16832 res!80632) b!169544))

(assert (= (and b!169544 res!80634) b!169543))

(assert (= (and b!169543 res!80633) b!169549))

(assert (= (and b!169542 condMapEmpty!6650) mapIsEmpty!6650))

(assert (= (and b!169542 (not condMapEmpty!6650)) mapNonEmpty!6651))

(assert (= (and mapNonEmpty!6651 ((_ is ValueCellFull!1620) mapValue!6651)) b!169552))

(assert (= (and b!169542 ((_ is ValueCellFull!1620) mapDefault!6651)) b!169545))

(assert (= b!169551 b!169542))

(assert (= b!169549 b!169551))

(assert (= (and b!169548 condMapEmpty!6651) mapIsEmpty!6651))

(assert (= (and b!169548 (not condMapEmpty!6651)) mapNonEmpty!6650))

(assert (= (and mapNonEmpty!6650 ((_ is ValueCellFull!1620) mapValue!6650)) b!169547))

(assert (= (and b!169548 ((_ is ValueCellFull!1620) mapDefault!6650)) b!169550))

(assert (= b!169546 b!169548))

(assert (= start!16832 b!169546))

(declare-fun m!198515 () Bool)

(assert (=> b!169546 m!198515))

(declare-fun m!198517 () Bool)

(assert (=> b!169546 m!198517))

(declare-fun m!198519 () Bool)

(assert (=> b!169551 m!198519))

(declare-fun m!198521 () Bool)

(assert (=> b!169551 m!198521))

(declare-fun m!198523 () Bool)

(assert (=> b!169549 m!198523))

(declare-fun m!198525 () Bool)

(assert (=> start!16832 m!198525))

(declare-fun m!198527 () Bool)

(assert (=> b!169543 m!198527))

(declare-fun m!198529 () Bool)

(assert (=> mapNonEmpty!6651 m!198529))

(declare-fun m!198531 () Bool)

(assert (=> mapNonEmpty!6650 m!198531))

(check-sat (not start!16832) (not b!169546) (not b_next!4153) (not b!169543) (not mapNonEmpty!6650) b_and!10585 tp_is_empty!3927 b_and!10583 (not b!169549) (not mapNonEmpty!6651) (not b_next!4151) (not b!169551))
(check-sat b_and!10583 b_and!10585 (not b_next!4153) (not b_next!4151))
