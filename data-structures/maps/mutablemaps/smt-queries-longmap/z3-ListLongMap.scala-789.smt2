; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18812 () Bool)

(assert start!18812)

(declare-fun b!185733 () Bool)

(declare-fun b_free!4575 () Bool)

(declare-fun b_next!4575 () Bool)

(assert (=> b!185733 (= b_free!4575 (not b_next!4575))))

(declare-fun tp!16524 () Bool)

(declare-fun b_and!11195 () Bool)

(assert (=> b!185733 (= tp!16524 b_and!11195)))

(declare-fun b!185727 () Bool)

(declare-fun res!87883 () Bool)

(declare-fun e!122213 () Bool)

(assert (=> b!185727 (=> (not res!87883) (not e!122213))))

(declare-datatypes ((V!5443 0))(
  ( (V!5444 (val!2218 Int)) )
))
(declare-datatypes ((ValueCell!1830 0))(
  ( (ValueCellFull!1830 (v!4125 V!5443)) (EmptyCell!1830) )
))
(declare-datatypes ((array!7902 0))(
  ( (array!7903 (arr!3730 (Array (_ BitVec 32) (_ BitVec 64))) (size!4046 (_ BitVec 32))) )
))
(declare-datatypes ((array!7904 0))(
  ( (array!7905 (arr!3731 (Array (_ BitVec 32) ValueCell!1830)) (size!4047 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2568 0))(
  ( (LongMapFixedSize!2569 (defaultEntry!3786 Int) (mask!8899 (_ BitVec 32)) (extraKeys!3523 (_ BitVec 32)) (zeroValue!3627 V!5443) (minValue!3627 V!5443) (_size!1333 (_ BitVec 32)) (_keys!5727 array!7902) (_values!3769 array!7904) (_vacant!1333 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2568)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7902 (_ BitVec 32)) Bool)

(assert (=> b!185727 (= res!87883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5727 thiss!1248) (mask!8899 thiss!1248)))))

(declare-fun b!185728 () Bool)

(declare-fun res!87882 () Bool)

(assert (=> b!185728 (=> (not res!87882) (not e!122213))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3450 0))(
  ( (tuple2!3451 (_1!1735 (_ BitVec 64)) (_2!1735 V!5443)) )
))
(declare-datatypes ((List!2385 0))(
  ( (Nil!2382) (Cons!2381 (h!3014 tuple2!3450) (t!7277 List!2385)) )
))
(declare-datatypes ((ListLongMap!2381 0))(
  ( (ListLongMap!2382 (toList!1206 List!2385)) )
))
(declare-fun contains!1296 (ListLongMap!2381 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!849 (array!7902 array!7904 (_ BitVec 32) (_ BitVec 32) V!5443 V!5443 (_ BitVec 32) Int) ListLongMap!2381)

(assert (=> b!185728 (= res!87882 (not (contains!1296 (getCurrentListMap!849 (_keys!5727 thiss!1248) (_values!3769 thiss!1248) (mask!8899 thiss!1248) (extraKeys!3523 thiss!1248) (zeroValue!3627 thiss!1248) (minValue!3627 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3786 thiss!1248)) key!828)))))

(declare-fun b!185729 () Bool)

(declare-fun res!87885 () Bool)

(assert (=> b!185729 (=> (not res!87885) (not e!122213))))

(assert (=> b!185729 (= res!87885 (and (= (size!4047 (_values!3769 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8899 thiss!1248))) (= (size!4046 (_keys!5727 thiss!1248)) (size!4047 (_values!3769 thiss!1248))) (bvsge (mask!8899 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3523 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3523 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!185730 () Bool)

(declare-fun res!87886 () Bool)

(declare-fun e!122215 () Bool)

(assert (=> b!185730 (=> (not res!87886) (not e!122215))))

(assert (=> b!185730 (= res!87886 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7482 () Bool)

(declare-fun mapRes!7482 () Bool)

(assert (=> mapIsEmpty!7482 mapRes!7482))

(declare-fun b!185731 () Bool)

(assert (=> b!185731 (= e!122213 false)))

(declare-fun lt!91885 () Bool)

(declare-datatypes ((List!2386 0))(
  ( (Nil!2383) (Cons!2382 (h!3015 (_ BitVec 64)) (t!7278 List!2386)) )
))
(declare-fun arrayNoDuplicates!0 (array!7902 (_ BitVec 32) List!2386) Bool)

(assert (=> b!185731 (= lt!91885 (arrayNoDuplicates!0 (_keys!5727 thiss!1248) #b00000000000000000000000000000000 Nil!2383))))

(declare-fun res!87887 () Bool)

(assert (=> start!18812 (=> (not res!87887) (not e!122215))))

(declare-fun valid!1052 (LongMapFixedSize!2568) Bool)

(assert (=> start!18812 (= res!87887 (valid!1052 thiss!1248))))

(assert (=> start!18812 e!122215))

(declare-fun e!122212 () Bool)

(assert (=> start!18812 e!122212))

(assert (=> start!18812 true))

(declare-fun b!185732 () Bool)

(declare-fun e!122216 () Bool)

(declare-fun e!122217 () Bool)

(assert (=> b!185732 (= e!122216 (and e!122217 mapRes!7482))))

(declare-fun condMapEmpty!7482 () Bool)

(declare-fun mapDefault!7482 () ValueCell!1830)

(assert (=> b!185732 (= condMapEmpty!7482 (= (arr!3731 (_values!3769 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1830)) mapDefault!7482)))))

(declare-fun tp_is_empty!4347 () Bool)

(declare-fun array_inv!2405 (array!7902) Bool)

(declare-fun array_inv!2406 (array!7904) Bool)

(assert (=> b!185733 (= e!122212 (and tp!16524 tp_is_empty!4347 (array_inv!2405 (_keys!5727 thiss!1248)) (array_inv!2406 (_values!3769 thiss!1248)) e!122216))))

(declare-fun mapNonEmpty!7482 () Bool)

(declare-fun tp!16523 () Bool)

(declare-fun e!122214 () Bool)

(assert (=> mapNonEmpty!7482 (= mapRes!7482 (and tp!16523 e!122214))))

(declare-fun mapValue!7482 () ValueCell!1830)

(declare-fun mapKey!7482 () (_ BitVec 32))

(declare-fun mapRest!7482 () (Array (_ BitVec 32) ValueCell!1830))

(assert (=> mapNonEmpty!7482 (= (arr!3731 (_values!3769 thiss!1248)) (store mapRest!7482 mapKey!7482 mapValue!7482))))

(declare-fun b!185734 () Bool)

(assert (=> b!185734 (= e!122217 tp_is_empty!4347)))

(declare-fun b!185735 () Bool)

(assert (=> b!185735 (= e!122214 tp_is_empty!4347)))

(declare-fun b!185736 () Bool)

(assert (=> b!185736 (= e!122215 e!122213)))

(declare-fun res!87884 () Bool)

(assert (=> b!185736 (=> (not res!87884) (not e!122213))))

(declare-datatypes ((SeekEntryResult!646 0))(
  ( (MissingZero!646 (index!4754 (_ BitVec 32))) (Found!646 (index!4755 (_ BitVec 32))) (Intermediate!646 (undefined!1458 Bool) (index!4756 (_ BitVec 32)) (x!20176 (_ BitVec 32))) (Undefined!646) (MissingVacant!646 (index!4757 (_ BitVec 32))) )
))
(declare-fun lt!91884 () SeekEntryResult!646)

(get-info :version)

(assert (=> b!185736 (= res!87884 (and (not ((_ is Undefined!646) lt!91884)) (not ((_ is MissingVacant!646) lt!91884)) (not ((_ is MissingZero!646) lt!91884)) ((_ is Found!646) lt!91884)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7902 (_ BitVec 32)) SeekEntryResult!646)

(assert (=> b!185736 (= lt!91884 (seekEntryOrOpen!0 key!828 (_keys!5727 thiss!1248) (mask!8899 thiss!1248)))))

(declare-fun b!185737 () Bool)

(declare-fun res!87881 () Bool)

(assert (=> b!185737 (=> (not res!87881) (not e!122213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185737 (= res!87881 (validMask!0 (mask!8899 thiss!1248)))))

(assert (= (and start!18812 res!87887) b!185730))

(assert (= (and b!185730 res!87886) b!185736))

(assert (= (and b!185736 res!87884) b!185728))

(assert (= (and b!185728 res!87882) b!185737))

(assert (= (and b!185737 res!87881) b!185729))

(assert (= (and b!185729 res!87885) b!185727))

(assert (= (and b!185727 res!87883) b!185731))

(assert (= (and b!185732 condMapEmpty!7482) mapIsEmpty!7482))

(assert (= (and b!185732 (not condMapEmpty!7482)) mapNonEmpty!7482))

(assert (= (and mapNonEmpty!7482 ((_ is ValueCellFull!1830) mapValue!7482)) b!185735))

(assert (= (and b!185732 ((_ is ValueCellFull!1830) mapDefault!7482)) b!185734))

(assert (= b!185733 b!185732))

(assert (= start!18812 b!185733))

(declare-fun m!212863 () Bool)

(assert (=> b!185736 m!212863))

(declare-fun m!212865 () Bool)

(assert (=> b!185737 m!212865))

(declare-fun m!212867 () Bool)

(assert (=> b!185728 m!212867))

(assert (=> b!185728 m!212867))

(declare-fun m!212869 () Bool)

(assert (=> b!185728 m!212869))

(declare-fun m!212871 () Bool)

(assert (=> b!185733 m!212871))

(declare-fun m!212873 () Bool)

(assert (=> b!185733 m!212873))

(declare-fun m!212875 () Bool)

(assert (=> b!185727 m!212875))

(declare-fun m!212877 () Bool)

(assert (=> mapNonEmpty!7482 m!212877))

(declare-fun m!212879 () Bool)

(assert (=> b!185731 m!212879))

(declare-fun m!212881 () Bool)

(assert (=> start!18812 m!212881))

(check-sat (not b!185733) tp_is_empty!4347 (not b_next!4575) (not start!18812) (not b!185731) (not b!185727) (not b!185737) (not b!185736) (not b!185728) b_and!11195 (not mapNonEmpty!7482))
(check-sat b_and!11195 (not b_next!4575))
