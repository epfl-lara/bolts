; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23300 () Bool)

(assert start!23300)

(declare-fun b!244622 () Bool)

(declare-fun b_free!6541 () Bool)

(declare-fun b_next!6541 () Bool)

(assert (=> b!244622 (= b_free!6541 (not b_next!6541))))

(declare-fun tp!22852 () Bool)

(declare-fun b_and!13545 () Bool)

(assert (=> b!244622 (= tp!22852 b_and!13545)))

(declare-fun bm!22821 () Bool)

(declare-fun call!22824 () Bool)

(declare-datatypes ((V!8185 0))(
  ( (V!8186 (val!3246 Int)) )
))
(declare-datatypes ((ValueCell!2858 0))(
  ( (ValueCellFull!2858 (v!5293 V!8185)) (EmptyCell!2858) )
))
(declare-datatypes ((array!12100 0))(
  ( (array!12101 (arr!5743 (Array (_ BitVec 32) ValueCell!2858)) (size!6085 (_ BitVec 32))) )
))
(declare-datatypes ((array!12102 0))(
  ( (array!12103 (arr!5744 (Array (_ BitVec 32) (_ BitVec 64))) (size!6086 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3616 0))(
  ( (LongMapFixedSize!3617 (defaultEntry!4529 Int) (mask!10632 (_ BitVec 32)) (extraKeys!4266 (_ BitVec 32)) (zeroValue!4370 V!8185) (minValue!4370 V!8185) (_size!1857 (_ BitVec 32)) (_keys!6642 array!12102) (_values!4512 array!12100) (_vacant!1857 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3616)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22821 (= call!22824 (arrayContainsKey!0 (_keys!6642 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!120003 () Bool)

(declare-fun e!158724 () Bool)

(assert (=> start!23300 (=> (not res!120003) (not e!158724))))

(declare-fun valid!1409 (LongMapFixedSize!3616) Bool)

(assert (=> start!23300 (= res!120003 (valid!1409 thiss!1504))))

(assert (=> start!23300 e!158724))

(declare-fun e!158726 () Bool)

(assert (=> start!23300 e!158726))

(assert (=> start!23300 true))

(declare-fun b!244608 () Bool)

(declare-fun res!120002 () Bool)

(declare-fun e!158722 () Bool)

(assert (=> b!244608 (=> (not res!120002) (not e!158722))))

(declare-datatypes ((List!3680 0))(
  ( (Nil!3677) (Cons!3676 (h!4333 (_ BitVec 64)) (t!8699 List!3680)) )
))
(declare-fun noDuplicate!102 (List!3680) Bool)

(assert (=> b!244608 (= res!120002 (noDuplicate!102 Nil!3677))))

(declare-fun b!244609 () Bool)

(declare-fun res!120006 () Bool)

(declare-fun e!158720 () Bool)

(assert (=> b!244609 (=> (not res!120006) (not e!158720))))

(declare-datatypes ((SeekEntryResult!1091 0))(
  ( (MissingZero!1091 (index!6534 (_ BitVec 32))) (Found!1091 (index!6535 (_ BitVec 32))) (Intermediate!1091 (undefined!1903 Bool) (index!6536 (_ BitVec 32)) (x!24395 (_ BitVec 32))) (Undefined!1091) (MissingVacant!1091 (index!6537 (_ BitVec 32))) )
))
(declare-fun lt!122625 () SeekEntryResult!1091)

(assert (=> b!244609 (= res!120006 (= (select (arr!5744 (_keys!6642 thiss!1504)) (index!6534 lt!122625)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!244610 () Bool)

(declare-fun e!158731 () Bool)

(declare-fun contains!1765 (List!3680 (_ BitVec 64)) Bool)

(assert (=> b!244610 (= e!158731 (not (contains!1765 Nil!3677 key!932)))))

(declare-fun b!244611 () Bool)

(declare-fun e!158723 () Bool)

(assert (=> b!244611 (= e!158723 (contains!1765 Nil!3677 key!932))))

(declare-fun b!244612 () Bool)

(declare-fun e!158727 () Bool)

(declare-fun e!158728 () Bool)

(assert (=> b!244612 (= e!158727 e!158728)))

(declare-fun res!119992 () Bool)

(assert (=> b!244612 (=> (not res!119992) (not e!158728))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!244612 (= res!119992 (inRange!0 index!297 (mask!10632 thiss!1504)))))

(declare-datatypes ((Unit!7548 0))(
  ( (Unit!7549) )
))
(declare-fun lt!122623 () Unit!7548)

(declare-fun e!158730 () Unit!7548)

(assert (=> b!244612 (= lt!122623 e!158730)))

(declare-fun c!40818 () Bool)

(declare-datatypes ((tuple2!4774 0))(
  ( (tuple2!4775 (_1!2397 (_ BitVec 64)) (_2!2397 V!8185)) )
))
(declare-datatypes ((List!3681 0))(
  ( (Nil!3678) (Cons!3677 (h!4334 tuple2!4774) (t!8700 List!3681)) )
))
(declare-datatypes ((ListLongMap!3701 0))(
  ( (ListLongMap!3702 (toList!1866 List!3681)) )
))
(declare-fun contains!1766 (ListLongMap!3701 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1389 (array!12102 array!12100 (_ BitVec 32) (_ BitVec 32) V!8185 V!8185 (_ BitVec 32) Int) ListLongMap!3701)

(assert (=> b!244612 (= c!40818 (contains!1766 (getCurrentListMap!1389 (_keys!6642 thiss!1504) (_values!4512 thiss!1504) (mask!10632 thiss!1504) (extraKeys!4266 thiss!1504) (zeroValue!4370 thiss!1504) (minValue!4370 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4529 thiss!1504)) key!932))))

(declare-fun b!244613 () Bool)

(declare-fun e!158733 () Unit!7548)

(declare-fun Unit!7550 () Unit!7548)

(assert (=> b!244613 (= e!158733 Unit!7550)))

(declare-fun b!244614 () Bool)

(declare-fun res!120001 () Bool)

(assert (=> b!244614 (=> (not res!120001) (not e!158722))))

(declare-fun arrayNoDuplicates!0 (array!12102 (_ BitVec 32) List!3680) Bool)

(assert (=> b!244614 (= res!120001 (arrayNoDuplicates!0 (_keys!6642 thiss!1504) #b00000000000000000000000000000000 Nil!3677))))

(declare-fun b!244615 () Bool)

(declare-fun lt!122624 () Bool)

(assert (=> b!244615 (= e!158722 lt!122624)))

(declare-fun b!244616 () Bool)

(declare-fun e!158721 () Bool)

(declare-fun tp_is_empty!6403 () Bool)

(assert (=> b!244616 (= e!158721 tp_is_empty!6403)))

(declare-fun mapNonEmpty!10861 () Bool)

(declare-fun mapRes!10861 () Bool)

(declare-fun tp!22851 () Bool)

(declare-fun e!158729 () Bool)

(assert (=> mapNonEmpty!10861 (= mapRes!10861 (and tp!22851 e!158729))))

(declare-fun mapRest!10861 () (Array (_ BitVec 32) ValueCell!2858))

(declare-fun mapValue!10861 () ValueCell!2858)

(declare-fun mapKey!10861 () (_ BitVec 32))

(assert (=> mapNonEmpty!10861 (= (arr!5743 (_values!4512 thiss!1504)) (store mapRest!10861 mapKey!10861 mapValue!10861))))

(declare-fun b!244617 () Bool)

(assert (=> b!244617 (= e!158728 e!158722)))

(declare-fun res!120009 () Bool)

(assert (=> b!244617 (=> (not res!120009) (not e!158722))))

(assert (=> b!244617 (= res!120009 (and (bvslt (size!6086 (_keys!6642 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6086 (_keys!6642 thiss!1504)))))))

(declare-fun lt!122627 () Unit!7548)

(assert (=> b!244617 (= lt!122627 e!158733)))

(declare-fun c!40819 () Bool)

(assert (=> b!244617 (= c!40819 lt!122624)))

(assert (=> b!244617 (= lt!122624 (arrayContainsKey!0 (_keys!6642 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244618 () Bool)

(declare-fun res!119999 () Bool)

(assert (=> b!244618 (=> (not res!119999) (not e!158722))))

(assert (=> b!244618 (= res!119999 (not (contains!1765 Nil!3677 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244619 () Bool)

(declare-fun res!119995 () Bool)

(assert (=> b!244619 (=> (not res!119995) (not e!158722))))

(assert (=> b!244619 (= res!119995 (not (contains!1765 Nil!3677 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244620 () Bool)

(declare-fun res!119996 () Bool)

(assert (=> b!244620 (=> (not res!119996) (not e!158724))))

(assert (=> b!244620 (= res!119996 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!244621 () Bool)

(assert (=> b!244621 (= e!158729 tp_is_empty!6403)))

(declare-fun c!40817 () Bool)

(declare-fun call!22825 () Bool)

(declare-fun bm!22822 () Bool)

(assert (=> bm!22822 (= call!22825 (inRange!0 (ite c!40817 (index!6534 lt!122625) (index!6537 lt!122625)) (mask!10632 thiss!1504)))))

(declare-fun e!158736 () Bool)

(declare-fun array_inv!3787 (array!12102) Bool)

(declare-fun array_inv!3788 (array!12100) Bool)

(assert (=> b!244622 (= e!158726 (and tp!22852 tp_is_empty!6403 (array_inv!3787 (_keys!6642 thiss!1504)) (array_inv!3788 (_values!4512 thiss!1504)) e!158736))))

(declare-fun b!244623 () Bool)

(declare-fun res!119993 () Bool)

(assert (=> b!244623 (=> (not res!119993) (not e!158720))))

(assert (=> b!244623 (= res!119993 call!22825)))

(declare-fun e!158732 () Bool)

(assert (=> b!244623 (= e!158732 e!158720)))

(declare-fun b!244624 () Bool)

(declare-fun res!120004 () Bool)

(assert (=> b!244624 (=> (not res!120004) (not e!158722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!244624 (= res!120004 (validKeyInArray!0 key!932))))

(declare-fun b!244625 () Bool)

(declare-fun e!158735 () Bool)

(assert (=> b!244625 (= e!158735 (is-Undefined!1091 lt!122625))))

(declare-fun b!244626 () Bool)

(assert (=> b!244626 (= e!158720 (not call!22824))))

(declare-fun b!244627 () Bool)

(declare-fun e!158734 () Bool)

(assert (=> b!244627 (= e!158734 (not call!22824))))

(declare-fun b!244628 () Bool)

(declare-fun Unit!7551 () Unit!7548)

(assert (=> b!244628 (= e!158730 Unit!7551)))

(declare-fun lt!122626 () Unit!7548)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!368 (array!12102 array!12100 (_ BitVec 32) (_ BitVec 32) V!8185 V!8185 (_ BitVec 64) Int) Unit!7548)

(assert (=> b!244628 (= lt!122626 (lemmaInListMapThenSeekEntryOrOpenFindsIt!368 (_keys!6642 thiss!1504) (_values!4512 thiss!1504) (mask!10632 thiss!1504) (extraKeys!4266 thiss!1504) (zeroValue!4370 thiss!1504) (minValue!4370 thiss!1504) key!932 (defaultEntry!4529 thiss!1504)))))

(assert (=> b!244628 false))

(declare-fun b!244629 () Bool)

(declare-fun c!40820 () Bool)

(assert (=> b!244629 (= c!40820 (is-MissingVacant!1091 lt!122625))))

(assert (=> b!244629 (= e!158732 e!158735)))

(declare-fun b!244630 () Bool)

(declare-fun Unit!7552 () Unit!7548)

(assert (=> b!244630 (= e!158733 Unit!7552)))

(declare-fun lt!122622 () Unit!7548)

(declare-fun lemmaArrayContainsKeyThenInListMap!171 (array!12102 array!12100 (_ BitVec 32) (_ BitVec 32) V!8185 V!8185 (_ BitVec 64) (_ BitVec 32) Int) Unit!7548)

(assert (=> b!244630 (= lt!122622 (lemmaArrayContainsKeyThenInListMap!171 (_keys!6642 thiss!1504) (_values!4512 thiss!1504) (mask!10632 thiss!1504) (extraKeys!4266 thiss!1504) (zeroValue!4370 thiss!1504) (minValue!4370 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4529 thiss!1504)))))

(assert (=> b!244630 false))

(declare-fun b!244631 () Bool)

(assert (=> b!244631 (= e!158735 e!158734)))

(declare-fun res!119991 () Bool)

(assert (=> b!244631 (= res!119991 call!22825)))

(assert (=> b!244631 (=> (not res!119991) (not e!158734))))

(declare-fun b!244632 () Bool)

(assert (=> b!244632 (= e!158736 (and e!158721 mapRes!10861))))

(declare-fun condMapEmpty!10861 () Bool)

(declare-fun mapDefault!10861 () ValueCell!2858)

