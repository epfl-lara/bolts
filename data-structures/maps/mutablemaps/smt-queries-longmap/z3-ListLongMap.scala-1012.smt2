; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21686 () Bool)

(assert start!21686)

(declare-fun b!217547 () Bool)

(declare-fun b_free!5823 () Bool)

(declare-fun b_next!5823 () Bool)

(assert (=> b!217547 (= b_free!5823 (not b_next!5823))))

(declare-fun tp!20603 () Bool)

(declare-fun b_and!12731 () Bool)

(assert (=> b!217547 (= tp!20603 b_and!12731)))

(declare-fun e!141533 () Bool)

(declare-fun e!141537 () Bool)

(declare-fun tp_is_empty!5685 () Bool)

(declare-datatypes ((V!7227 0))(
  ( (V!7228 (val!2887 Int)) )
))
(declare-datatypes ((ValueCell!2499 0))(
  ( (ValueCellFull!2499 (v!4901 V!7227)) (EmptyCell!2499) )
))
(declare-datatypes ((array!10608 0))(
  ( (array!10609 (arr!5025 (Array (_ BitVec 32) ValueCell!2499)) (size!5357 (_ BitVec 32))) )
))
(declare-datatypes ((array!10610 0))(
  ( (array!10611 (arr!5026 (Array (_ BitVec 32) (_ BitVec 64))) (size!5358 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2898 0))(
  ( (LongMapFixedSize!2899 (defaultEntry!4099 Int) (mask!9858 (_ BitVec 32)) (extraKeys!3836 (_ BitVec 32)) (zeroValue!3940 V!7227) (minValue!3940 V!7227) (_size!1498 (_ BitVec 32)) (_keys!6148 array!10610) (_values!4082 array!10608) (_vacant!1498 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2898)

(declare-fun array_inv!3319 (array!10610) Bool)

(declare-fun array_inv!3320 (array!10608) Bool)

(assert (=> b!217547 (= e!141537 (and tp!20603 tp_is_empty!5685 (array_inv!3319 (_keys!6148 thiss!1504)) (array_inv!3320 (_values!4082 thiss!1504)) e!141533))))

(declare-fun b!217548 () Bool)

(declare-fun e!141535 () Bool)

(assert (=> b!217548 (= e!141535 tp_is_empty!5685)))

(declare-fun res!106560 () Bool)

(declare-fun e!141534 () Bool)

(assert (=> start!21686 (=> (not res!106560) (not e!141534))))

(declare-fun valid!1167 (LongMapFixedSize!2898) Bool)

(assert (=> start!21686 (= res!106560 (valid!1167 thiss!1504))))

(assert (=> start!21686 e!141534))

(assert (=> start!21686 e!141537))

(assert (=> start!21686 true))

(declare-fun b!217549 () Bool)

(declare-fun e!141536 () Bool)

(assert (=> b!217549 (= e!141534 e!141536)))

(declare-fun res!106565 () Bool)

(assert (=> b!217549 (=> (not res!106565) (not e!141536))))

(declare-datatypes ((SeekEntryResult!779 0))(
  ( (MissingZero!779 (index!5286 (_ BitVec 32))) (Found!779 (index!5287 (_ BitVec 32))) (Intermediate!779 (undefined!1591 Bool) (index!5288 (_ BitVec 32)) (x!22763 (_ BitVec 32))) (Undefined!779) (MissingVacant!779 (index!5289 (_ BitVec 32))) )
))
(declare-fun lt!111397 () SeekEntryResult!779)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217549 (= res!106565 (or (= lt!111397 (MissingZero!779 index!297)) (= lt!111397 (MissingVacant!779 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10610 (_ BitVec 32)) SeekEntryResult!779)

(assert (=> b!217549 (= lt!111397 (seekEntryOrOpen!0 key!932 (_keys!6148 thiss!1504) (mask!9858 thiss!1504)))))

(declare-fun b!217550 () Bool)

(declare-fun res!106564 () Bool)

(assert (=> b!217550 (=> (not res!106564) (not e!141536))))

(assert (=> b!217550 (= res!106564 (and (= (size!5357 (_values!4082 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9858 thiss!1504))) (= (size!5358 (_keys!6148 thiss!1504)) (size!5357 (_values!4082 thiss!1504))) (bvsge (mask!9858 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3836 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3836 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217551 () Bool)

(declare-fun res!106563 () Bool)

(assert (=> b!217551 (=> (not res!106563) (not e!141536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10610 (_ BitVec 32)) Bool)

(assert (=> b!217551 (= res!106563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6148 thiss!1504) (mask!9858 thiss!1504)))))

(declare-fun mapNonEmpty!9690 () Bool)

(declare-fun mapRes!9690 () Bool)

(declare-fun tp!20604 () Bool)

(assert (=> mapNonEmpty!9690 (= mapRes!9690 (and tp!20604 e!141535))))

(declare-fun mapValue!9690 () ValueCell!2499)

(declare-fun mapRest!9690 () (Array (_ BitVec 32) ValueCell!2499))

(declare-fun mapKey!9690 () (_ BitVec 32))

(assert (=> mapNonEmpty!9690 (= (arr!5025 (_values!4082 thiss!1504)) (store mapRest!9690 mapKey!9690 mapValue!9690))))

(declare-fun mapIsEmpty!9690 () Bool)

(assert (=> mapIsEmpty!9690 mapRes!9690))

(declare-fun b!217552 () Bool)

(assert (=> b!217552 (= e!141536 false)))

(declare-fun lt!111396 () Bool)

(declare-datatypes ((List!3215 0))(
  ( (Nil!3212) (Cons!3211 (h!3858 (_ BitVec 64)) (t!8178 List!3215)) )
))
(declare-fun arrayNoDuplicates!0 (array!10610 (_ BitVec 32) List!3215) Bool)

(assert (=> b!217552 (= lt!111396 (arrayNoDuplicates!0 (_keys!6148 thiss!1504) #b00000000000000000000000000000000 Nil!3212))))

(declare-fun b!217553 () Bool)

(declare-fun res!106566 () Bool)

(assert (=> b!217553 (=> (not res!106566) (not e!141536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217553 (= res!106566 (validMask!0 (mask!9858 thiss!1504)))))

(declare-fun b!217554 () Bool)

(declare-fun e!141531 () Bool)

(assert (=> b!217554 (= e!141531 tp_is_empty!5685)))

(declare-fun b!217555 () Bool)

(declare-fun res!106561 () Bool)

(assert (=> b!217555 (=> (not res!106561) (not e!141534))))

(assert (=> b!217555 (= res!106561 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217556 () Bool)

(declare-fun res!106562 () Bool)

(assert (=> b!217556 (=> (not res!106562) (not e!141536))))

(declare-datatypes ((tuple2!4286 0))(
  ( (tuple2!4287 (_1!2153 (_ BitVec 64)) (_2!2153 V!7227)) )
))
(declare-datatypes ((List!3216 0))(
  ( (Nil!3213) (Cons!3212 (h!3859 tuple2!4286) (t!8179 List!3216)) )
))
(declare-datatypes ((ListLongMap!3213 0))(
  ( (ListLongMap!3214 (toList!1622 List!3216)) )
))
(declare-fun contains!1457 (ListLongMap!3213 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1145 (array!10610 array!10608 (_ BitVec 32) (_ BitVec 32) V!7227 V!7227 (_ BitVec 32) Int) ListLongMap!3213)

(assert (=> b!217556 (= res!106562 (not (contains!1457 (getCurrentListMap!1145 (_keys!6148 thiss!1504) (_values!4082 thiss!1504) (mask!9858 thiss!1504) (extraKeys!3836 thiss!1504) (zeroValue!3940 thiss!1504) (minValue!3940 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4099 thiss!1504)) key!932)))))

(declare-fun b!217557 () Bool)

(assert (=> b!217557 (= e!141533 (and e!141531 mapRes!9690))))

(declare-fun condMapEmpty!9690 () Bool)

(declare-fun mapDefault!9690 () ValueCell!2499)

(assert (=> b!217557 (= condMapEmpty!9690 (= (arr!5025 (_values!4082 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2499)) mapDefault!9690)))))

(assert (= (and start!21686 res!106560) b!217555))

(assert (= (and b!217555 res!106561) b!217549))

(assert (= (and b!217549 res!106565) b!217556))

(assert (= (and b!217556 res!106562) b!217553))

(assert (= (and b!217553 res!106566) b!217550))

(assert (= (and b!217550 res!106564) b!217551))

(assert (= (and b!217551 res!106563) b!217552))

(assert (= (and b!217557 condMapEmpty!9690) mapIsEmpty!9690))

(assert (= (and b!217557 (not condMapEmpty!9690)) mapNonEmpty!9690))

(get-info :version)

(assert (= (and mapNonEmpty!9690 ((_ is ValueCellFull!2499) mapValue!9690)) b!217548))

(assert (= (and b!217557 ((_ is ValueCellFull!2499) mapDefault!9690)) b!217554))

(assert (= b!217547 b!217557))

(assert (= start!21686 b!217547))

(declare-fun m!243827 () Bool)

(assert (=> mapNonEmpty!9690 m!243827))

(declare-fun m!243829 () Bool)

(assert (=> b!217551 m!243829))

(declare-fun m!243831 () Bool)

(assert (=> b!217547 m!243831))

(declare-fun m!243833 () Bool)

(assert (=> b!217547 m!243833))

(declare-fun m!243835 () Bool)

(assert (=> b!217549 m!243835))

(declare-fun m!243837 () Bool)

(assert (=> b!217552 m!243837))

(declare-fun m!243839 () Bool)

(assert (=> b!217556 m!243839))

(assert (=> b!217556 m!243839))

(declare-fun m!243841 () Bool)

(assert (=> b!217556 m!243841))

(declare-fun m!243843 () Bool)

(assert (=> b!217553 m!243843))

(declare-fun m!243845 () Bool)

(assert (=> start!21686 m!243845))

(check-sat (not start!21686) b_and!12731 (not b!217551) tp_is_empty!5685 (not b!217556) (not b!217549) (not b!217547) (not mapNonEmpty!9690) (not b_next!5823) (not b!217553) (not b!217552))
(check-sat b_and!12731 (not b_next!5823))
