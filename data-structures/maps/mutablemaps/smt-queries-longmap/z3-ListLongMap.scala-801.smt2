; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19268 () Bool)

(assert start!19268)

(declare-fun b!189416 () Bool)

(declare-fun b_free!4647 () Bool)

(declare-fun b_next!4647 () Bool)

(assert (=> b!189416 (= b_free!4647 (not b_next!4647))))

(declare-fun tp!16774 () Bool)

(declare-fun b_and!11303 () Bool)

(assert (=> b!189416 (= tp!16774 b_and!11303)))

(declare-fun mapNonEmpty!7624 () Bool)

(declare-fun mapRes!7624 () Bool)

(declare-fun tp!16773 () Bool)

(declare-fun e!124649 () Bool)

(assert (=> mapNonEmpty!7624 (= mapRes!7624 (and tp!16773 e!124649))))

(declare-datatypes ((V!5539 0))(
  ( (V!5540 (val!2254 Int)) )
))
(declare-datatypes ((ValueCell!1866 0))(
  ( (ValueCellFull!1866 (v!4171 V!5539)) (EmptyCell!1866) )
))
(declare-fun mapRest!7624 () (Array (_ BitVec 32) ValueCell!1866))

(declare-fun mapKey!7624 () (_ BitVec 32))

(declare-fun mapValue!7624 () ValueCell!1866)

(declare-datatypes ((array!8066 0))(
  ( (array!8067 (arr!3802 (Array (_ BitVec 32) (_ BitVec 64))) (size!4122 (_ BitVec 32))) )
))
(declare-datatypes ((array!8068 0))(
  ( (array!8069 (arr!3803 (Array (_ BitVec 32) ValueCell!1866)) (size!4123 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2640 0))(
  ( (LongMapFixedSize!2641 (defaultEntry!3864 Int) (mask!9051 (_ BitVec 32)) (extraKeys!3601 (_ BitVec 32)) (zeroValue!3705 V!5539) (minValue!3705 V!5539) (_size!1369 (_ BitVec 32)) (_keys!5831 array!8066) (_values!3847 array!8068) (_vacant!1369 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2640)

(assert (=> mapNonEmpty!7624 (= (arr!3803 (_values!3847 thiss!1248)) (store mapRest!7624 mapKey!7624 mapValue!7624))))

(declare-fun res!89584 () Bool)

(declare-fun e!124645 () Bool)

(assert (=> start!19268 (=> (not res!89584) (not e!124645))))

(declare-fun valid!1076 (LongMapFixedSize!2640) Bool)

(assert (=> start!19268 (= res!89584 (valid!1076 thiss!1248))))

(assert (=> start!19268 e!124645))

(declare-fun e!124652 () Bool)

(assert (=> start!19268 e!124652))

(assert (=> start!19268 true))

(declare-fun b!189405 () Bool)

(declare-fun tp_is_empty!4419 () Bool)

(assert (=> b!189405 (= e!124649 tp_is_empty!4419)))

(declare-fun b!189406 () Bool)

(declare-fun res!89577 () Bool)

(declare-fun e!124651 () Bool)

(assert (=> b!189406 (=> (not res!89577) (not e!124651))))

(declare-datatypes ((List!2427 0))(
  ( (Nil!2424) (Cons!2423 (h!3060 (_ BitVec 64)) (t!7339 List!2427)) )
))
(declare-fun arrayNoDuplicates!0 (array!8066 (_ BitVec 32) List!2427) Bool)

(assert (=> b!189406 (= res!89577 (arrayNoDuplicates!0 (_keys!5831 thiss!1248) #b00000000000000000000000000000000 Nil!2424))))

(declare-fun b!189407 () Bool)

(declare-datatypes ((Unit!5711 0))(
  ( (Unit!5712) )
))
(declare-fun e!124644 () Unit!5711)

(declare-fun Unit!5713 () Unit!5711)

(assert (=> b!189407 (= e!124644 Unit!5713)))

(declare-fun lt!93783 () Unit!5711)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!165 (array!8066 array!8068 (_ BitVec 32) (_ BitVec 32) V!5539 V!5539 (_ BitVec 64) Int) Unit!5711)

(assert (=> b!189407 (= lt!93783 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!165 (_keys!5831 thiss!1248) (_values!3847 thiss!1248) (mask!9051 thiss!1248) (extraKeys!3601 thiss!1248) (zeroValue!3705 thiss!1248) (minValue!3705 thiss!1248) key!828 (defaultEntry!3864 thiss!1248)))))

(assert (=> b!189407 false))

(declare-datatypes ((SeekEntryResult!673 0))(
  ( (MissingZero!673 (index!4862 (_ BitVec 32))) (Found!673 (index!4863 (_ BitVec 32))) (Intermediate!673 (undefined!1485 Bool) (index!4864 (_ BitVec 32)) (x!20431 (_ BitVec 32))) (Undefined!673) (MissingVacant!673 (index!4865 (_ BitVec 32))) )
))
(declare-fun lt!93782 () SeekEntryResult!673)

(declare-fun b!189408 () Bool)

(assert (=> b!189408 (= e!124651 (not (= (select (arr!3802 (_keys!5831 thiss!1248)) (index!4863 lt!93782)) key!828)))))

(declare-fun b!189409 () Bool)

(declare-fun e!124647 () Bool)

(declare-fun e!124646 () Bool)

(assert (=> b!189409 (= e!124647 (and e!124646 mapRes!7624))))

(declare-fun condMapEmpty!7624 () Bool)

(declare-fun mapDefault!7624 () ValueCell!1866)

(assert (=> b!189409 (= condMapEmpty!7624 (= (arr!3803 (_values!3847 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1866)) mapDefault!7624)))))

(declare-fun b!189410 () Bool)

(assert (=> b!189410 (= e!124646 tp_is_empty!4419)))

(declare-fun b!189411 () Bool)

(declare-fun res!89582 () Bool)

(assert (=> b!189411 (=> (not res!89582) (not e!124645))))

(assert (=> b!189411 (= res!89582 (not (= key!828 (bvneg key!828))))))

(declare-fun b!189412 () Bool)

(declare-fun lt!93781 () Unit!5711)

(assert (=> b!189412 (= e!124644 lt!93781)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!164 (array!8066 array!8068 (_ BitVec 32) (_ BitVec 32) V!5539 V!5539 (_ BitVec 64) Int) Unit!5711)

(assert (=> b!189412 (= lt!93781 (lemmaInListMapThenSeekEntryOrOpenFindsIt!164 (_keys!5831 thiss!1248) (_values!3847 thiss!1248) (mask!9051 thiss!1248) (extraKeys!3601 thiss!1248) (zeroValue!3705 thiss!1248) (minValue!3705 thiss!1248) key!828 (defaultEntry!3864 thiss!1248)))))

(declare-fun res!89575 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189412 (= res!89575 (inRange!0 (index!4863 lt!93782) (mask!9051 thiss!1248)))))

(declare-fun e!124648 () Bool)

(assert (=> b!189412 (=> (not res!89575) (not e!124648))))

(assert (=> b!189412 e!124648))

(declare-fun b!189413 () Bool)

(declare-fun e!124650 () Bool)

(assert (=> b!189413 (= e!124645 e!124650)))

(declare-fun res!89583 () Bool)

(assert (=> b!189413 (=> (not res!89583) (not e!124650))))

(get-info :version)

(assert (=> b!189413 (= res!89583 (and (not ((_ is Undefined!673) lt!93782)) (not ((_ is MissingVacant!673) lt!93782)) (not ((_ is MissingZero!673) lt!93782)) ((_ is Found!673) lt!93782)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8066 (_ BitVec 32)) SeekEntryResult!673)

(assert (=> b!189413 (= lt!93782 (seekEntryOrOpen!0 key!828 (_keys!5831 thiss!1248) (mask!9051 thiss!1248)))))

(declare-fun mapIsEmpty!7624 () Bool)

(assert (=> mapIsEmpty!7624 mapRes!7624))

(declare-fun b!189414 () Bool)

(declare-fun res!89578 () Bool)

(assert (=> b!189414 (=> (not res!89578) (not e!124651))))

(assert (=> b!189414 (= res!89578 (and (= (size!4123 (_values!3847 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9051 thiss!1248))) (= (size!4122 (_keys!5831 thiss!1248)) (size!4123 (_values!3847 thiss!1248))) (bvsge (mask!9051 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3601 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3601 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!189415 () Bool)

(declare-fun res!89580 () Bool)

(assert (=> b!189415 (=> (not res!89580) (not e!124651))))

(assert (=> b!189415 (= res!89580 (and (bvsge (index!4863 lt!93782) #b00000000000000000000000000000000) (bvslt (index!4863 lt!93782) (size!4122 (_keys!5831 thiss!1248)))))))

(declare-fun array_inv!2455 (array!8066) Bool)

(declare-fun array_inv!2456 (array!8068) Bool)

(assert (=> b!189416 (= e!124652 (and tp!16774 tp_is_empty!4419 (array_inv!2455 (_keys!5831 thiss!1248)) (array_inv!2456 (_values!3847 thiss!1248)) e!124647))))

(declare-fun b!189417 () Bool)

(declare-fun res!89581 () Bool)

(assert (=> b!189417 (=> (not res!89581) (not e!124651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!189417 (= res!89581 (validKeyInArray!0 key!828))))

(declare-fun b!189418 () Bool)

(assert (=> b!189418 (= e!124648 (= (select (arr!3802 (_keys!5831 thiss!1248)) (index!4863 lt!93782)) key!828))))

(declare-fun b!189419 () Bool)

(declare-fun res!89579 () Bool)

(assert (=> b!189419 (=> (not res!89579) (not e!124651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8066 (_ BitVec 32)) Bool)

(assert (=> b!189419 (= res!89579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5831 thiss!1248) (mask!9051 thiss!1248)))))

(declare-fun b!189420 () Bool)

(assert (=> b!189420 (= e!124650 e!124651)))

(declare-fun res!89576 () Bool)

(assert (=> b!189420 (=> (not res!89576) (not e!124651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!189420 (= res!89576 (validMask!0 (mask!9051 thiss!1248)))))

(declare-fun lt!93780 () Unit!5711)

(assert (=> b!189420 (= lt!93780 e!124644)))

(declare-fun c!34024 () Bool)

(declare-datatypes ((tuple2!3504 0))(
  ( (tuple2!3505 (_1!1762 (_ BitVec 64)) (_2!1762 V!5539)) )
))
(declare-datatypes ((List!2428 0))(
  ( (Nil!2425) (Cons!2424 (h!3061 tuple2!3504) (t!7340 List!2428)) )
))
(declare-datatypes ((ListLongMap!2435 0))(
  ( (ListLongMap!2436 (toList!1233 List!2428)) )
))
(declare-fun contains!1334 (ListLongMap!2435 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!876 (array!8066 array!8068 (_ BitVec 32) (_ BitVec 32) V!5539 V!5539 (_ BitVec 32) Int) ListLongMap!2435)

(assert (=> b!189420 (= c!34024 (contains!1334 (getCurrentListMap!876 (_keys!5831 thiss!1248) (_values!3847 thiss!1248) (mask!9051 thiss!1248) (extraKeys!3601 thiss!1248) (zeroValue!3705 thiss!1248) (minValue!3705 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3864 thiss!1248)) key!828))))

(assert (= (and start!19268 res!89584) b!189411))

(assert (= (and b!189411 res!89582) b!189413))

(assert (= (and b!189413 res!89583) b!189420))

(assert (= (and b!189420 c!34024) b!189412))

(assert (= (and b!189420 (not c!34024)) b!189407))

(assert (= (and b!189412 res!89575) b!189418))

(assert (= (and b!189420 res!89576) b!189414))

(assert (= (and b!189414 res!89578) b!189419))

(assert (= (and b!189419 res!89579) b!189406))

(assert (= (and b!189406 res!89577) b!189415))

(assert (= (and b!189415 res!89580) b!189417))

(assert (= (and b!189417 res!89581) b!189408))

(assert (= (and b!189409 condMapEmpty!7624) mapIsEmpty!7624))

(assert (= (and b!189409 (not condMapEmpty!7624)) mapNonEmpty!7624))

(assert (= (and mapNonEmpty!7624 ((_ is ValueCellFull!1866) mapValue!7624)) b!189405))

(assert (= (and b!189409 ((_ is ValueCellFull!1866) mapDefault!7624)) b!189410))

(assert (= b!189416 b!189409))

(assert (= start!19268 b!189416))

(declare-fun m!215759 () Bool)

(assert (=> b!189420 m!215759))

(declare-fun m!215761 () Bool)

(assert (=> b!189420 m!215761))

(assert (=> b!189420 m!215761))

(declare-fun m!215763 () Bool)

(assert (=> b!189420 m!215763))

(declare-fun m!215765 () Bool)

(assert (=> b!189412 m!215765))

(declare-fun m!215767 () Bool)

(assert (=> b!189412 m!215767))

(declare-fun m!215769 () Bool)

(assert (=> b!189417 m!215769))

(declare-fun m!215771 () Bool)

(assert (=> b!189407 m!215771))

(declare-fun m!215773 () Bool)

(assert (=> b!189416 m!215773))

(declare-fun m!215775 () Bool)

(assert (=> b!189416 m!215775))

(declare-fun m!215777 () Bool)

(assert (=> b!189419 m!215777))

(declare-fun m!215779 () Bool)

(assert (=> start!19268 m!215779))

(declare-fun m!215781 () Bool)

(assert (=> b!189413 m!215781))

(declare-fun m!215783 () Bool)

(assert (=> b!189418 m!215783))

(declare-fun m!215785 () Bool)

(assert (=> mapNonEmpty!7624 m!215785))

(declare-fun m!215787 () Bool)

(assert (=> b!189406 m!215787))

(assert (=> b!189408 m!215783))

(check-sat (not b!189407) (not b_next!4647) (not b!189420) (not b!189417) (not b!189406) (not b!189412) b_and!11303 (not b!189419) (not start!19268) (not mapNonEmpty!7624) (not b!189413) tp_is_empty!4419 (not b!189416))
(check-sat b_and!11303 (not b_next!4647))
