; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16298 () Bool)

(assert start!16298)

(declare-fun b!162445 () Bool)

(declare-fun b_free!3747 () Bool)

(declare-fun b_next!3747 () Bool)

(assert (=> b!162445 (= b_free!3747 (not b_next!3747))))

(declare-fun tp!13810 () Bool)

(declare-fun b_and!10179 () Bool)

(assert (=> b!162445 (= tp!13810 b_and!10179)))

(declare-fun b!162441 () Bool)

(declare-fun res!76940 () Bool)

(declare-fun e!106480 () Bool)

(assert (=> b!162441 (=> (not res!76940) (not e!106480))))

(declare-datatypes ((V!4379 0))(
  ( (V!4380 (val!1819 Int)) )
))
(declare-datatypes ((ValueCell!1431 0))(
  ( (ValueCellFull!1431 (v!3680 V!4379)) (EmptyCell!1431) )
))
(declare-datatypes ((array!6176 0))(
  ( (array!6177 (arr!2932 (Array (_ BitVec 32) (_ BitVec 64))) (size!3216 (_ BitVec 32))) )
))
(declare-datatypes ((array!6178 0))(
  ( (array!6179 (arr!2933 (Array (_ BitVec 32) ValueCell!1431)) (size!3217 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1770 0))(
  ( (LongMapFixedSize!1771 (defaultEntry!3327 Int) (mask!7951 (_ BitVec 32)) (extraKeys!3068 (_ BitVec 32)) (zeroValue!3170 V!4379) (minValue!3170 V!4379) (_size!934 (_ BitVec 32)) (_keys!5128 array!6176) (_values!3310 array!6178) (_vacant!934 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2990 0))(
  ( (tuple2!2991 (_1!1505 Bool) (_2!1505 LongMapFixedSize!1770)) )
))
(declare-fun lt!82484 () tuple2!2990)

(assert (=> b!162441 (= res!76940 (_1!1505 lt!82484))))

(declare-fun b!162442 () Bool)

(declare-fun res!76941 () Bool)

(declare-fun e!106479 () Bool)

(assert (=> b!162442 (=> (not res!76941) (not e!106479))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162442 (= res!76941 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162443 () Bool)

(declare-fun e!106481 () Bool)

(assert (=> b!162443 (= e!106481 e!106480)))

(declare-fun res!76943 () Bool)

(assert (=> b!162443 (=> (not res!76943) (not e!106480))))

(declare-fun valid!792 (LongMapFixedSize!1770) Bool)

(assert (=> b!162443 (= res!76943 (valid!792 (_2!1505 lt!82484)))))

(declare-datatypes ((SeekEntryResult!393 0))(
  ( (MissingZero!393 (index!3740 (_ BitVec 32))) (Found!393 (index!3741 (_ BitVec 32))) (Intermediate!393 (undefined!1205 Bool) (index!3742 (_ BitVec 32)) (x!17985 (_ BitVec 32))) (Undefined!393) (MissingVacant!393 (index!3743 (_ BitVec 32))) )
))
(declare-fun lt!82482 () SeekEntryResult!393)

(declare-fun v!309 () V!4379)

(declare-fun thiss!1248 () LongMapFixedSize!1770)

(declare-fun updateHelperNewKey!83 (LongMapFixedSize!1770 (_ BitVec 64) V!4379 (_ BitVec 32)) tuple2!2990)

(assert (=> b!162443 (= lt!82484 (updateHelperNewKey!83 thiss!1248 key!828 v!309 (index!3740 lt!82482)))))

(declare-fun b!162444 () Bool)

(declare-fun e!106484 () Bool)

(declare-fun tp_is_empty!3549 () Bool)

(assert (=> b!162444 (= e!106484 tp_is_empty!3549)))

(declare-fun e!106482 () Bool)

(declare-fun e!106478 () Bool)

(declare-fun array_inv!1867 (array!6176) Bool)

(declare-fun array_inv!1868 (array!6178) Bool)

(assert (=> b!162445 (= e!106478 (and tp!13810 tp_is_empty!3549 (array_inv!1867 (_keys!5128 thiss!1248)) (array_inv!1868 (_values!3310 thiss!1248)) e!106482))))

(declare-fun res!76942 () Bool)

(assert (=> start!16298 (=> (not res!76942) (not e!106479))))

(assert (=> start!16298 (= res!76942 (valid!792 thiss!1248))))

(assert (=> start!16298 e!106479))

(assert (=> start!16298 e!106478))

(assert (=> start!16298 true))

(assert (=> start!16298 tp_is_empty!3549))

(declare-fun b!162446 () Bool)

(assert (=> b!162446 (= e!106480 false)))

(declare-fun lt!82483 () Bool)

(declare-datatypes ((tuple2!2992 0))(
  ( (tuple2!2993 (_1!1506 (_ BitVec 64)) (_2!1506 V!4379)) )
))
(declare-datatypes ((List!2004 0))(
  ( (Nil!2001) (Cons!2000 (h!2613 tuple2!2992) (t!6814 List!2004)) )
))
(declare-datatypes ((ListLongMap!1973 0))(
  ( (ListLongMap!1974 (toList!1002 List!2004)) )
))
(declare-fun contains!1032 (ListLongMap!1973 (_ BitVec 64)) Bool)

(declare-fun map!1686 (LongMapFixedSize!1770) ListLongMap!1973)

(assert (=> b!162446 (= lt!82483 (contains!1032 (map!1686 (_2!1505 lt!82484)) key!828))))

(declare-fun b!162447 () Bool)

(declare-fun e!106477 () Bool)

(assert (=> b!162447 (= e!106477 tp_is_empty!3549)))

(declare-fun b!162448 () Bool)

(declare-fun mapRes!6011 () Bool)

(assert (=> b!162448 (= e!106482 (and e!106477 mapRes!6011))))

(declare-fun condMapEmpty!6011 () Bool)

(declare-fun mapDefault!6011 () ValueCell!1431)

(assert (=> b!162448 (= condMapEmpty!6011 (= (arr!2933 (_values!3310 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1431)) mapDefault!6011)))))

(declare-fun b!162449 () Bool)

(assert (=> b!162449 (= e!106479 e!106481)))

(declare-fun res!76939 () Bool)

(assert (=> b!162449 (=> (not res!76939) (not e!106481))))

(get-info :version)

(assert (=> b!162449 (= res!76939 (and (not ((_ is Undefined!393) lt!82482)) (not ((_ is MissingVacant!393) lt!82482)) ((_ is MissingZero!393) lt!82482)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6176 (_ BitVec 32)) SeekEntryResult!393)

(assert (=> b!162449 (= lt!82482 (seekEntryOrOpen!0 key!828 (_keys!5128 thiss!1248) (mask!7951 thiss!1248)))))

(declare-fun mapIsEmpty!6011 () Bool)

(assert (=> mapIsEmpty!6011 mapRes!6011))

(declare-fun mapNonEmpty!6011 () Bool)

(declare-fun tp!13811 () Bool)

(assert (=> mapNonEmpty!6011 (= mapRes!6011 (and tp!13811 e!106484))))

(declare-fun mapKey!6011 () (_ BitVec 32))

(declare-fun mapValue!6011 () ValueCell!1431)

(declare-fun mapRest!6011 () (Array (_ BitVec 32) ValueCell!1431))

(assert (=> mapNonEmpty!6011 (= (arr!2933 (_values!3310 thiss!1248)) (store mapRest!6011 mapKey!6011 mapValue!6011))))

(assert (= (and start!16298 res!76942) b!162442))

(assert (= (and b!162442 res!76941) b!162449))

(assert (= (and b!162449 res!76939) b!162443))

(assert (= (and b!162443 res!76943) b!162441))

(assert (= (and b!162441 res!76940) b!162446))

(assert (= (and b!162448 condMapEmpty!6011) mapIsEmpty!6011))

(assert (= (and b!162448 (not condMapEmpty!6011)) mapNonEmpty!6011))

(assert (= (and mapNonEmpty!6011 ((_ is ValueCellFull!1431) mapValue!6011)) b!162444))

(assert (= (and b!162448 ((_ is ValueCellFull!1431) mapDefault!6011)) b!162447))

(assert (= b!162445 b!162448))

(assert (= start!16298 b!162445))

(declare-fun m!193559 () Bool)

(assert (=> b!162445 m!193559))

(declare-fun m!193561 () Bool)

(assert (=> b!162445 m!193561))

(declare-fun m!193563 () Bool)

(assert (=> b!162446 m!193563))

(assert (=> b!162446 m!193563))

(declare-fun m!193565 () Bool)

(assert (=> b!162446 m!193565))

(declare-fun m!193567 () Bool)

(assert (=> start!16298 m!193567))

(declare-fun m!193569 () Bool)

(assert (=> b!162443 m!193569))

(declare-fun m!193571 () Bool)

(assert (=> b!162443 m!193571))

(declare-fun m!193573 () Bool)

(assert (=> b!162449 m!193573))

(declare-fun m!193575 () Bool)

(assert (=> mapNonEmpty!6011 m!193575))

(check-sat (not b!162449) (not mapNonEmpty!6011) (not b!162445) (not b!162443) (not b_next!3747) (not b!162446) tp_is_empty!3549 b_and!10179 (not start!16298))
(check-sat b_and!10179 (not b_next!3747))
