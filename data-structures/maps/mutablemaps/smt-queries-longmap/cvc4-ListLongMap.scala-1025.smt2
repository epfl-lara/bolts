; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21848 () Bool)

(assert start!21848)

(declare-fun b!219760 () Bool)

(declare-fun b_free!5903 () Bool)

(declare-fun b_next!5903 () Bool)

(assert (=> b!219760 (= b_free!5903 (not b_next!5903))))

(declare-fun tp!20850 () Bool)

(declare-fun b_and!12819 () Bool)

(assert (=> b!219760 (= tp!20850 b_and!12819)))

(declare-fun b!219752 () Bool)

(declare-fun e!142931 () Bool)

(declare-fun call!20541 () Bool)

(assert (=> b!219752 (= e!142931 (not call!20541))))

(declare-fun b!219753 () Bool)

(declare-fun res!107738 () Bool)

(declare-fun e!142929 () Bool)

(assert (=> b!219753 (=> (not res!107738) (not e!142929))))

(declare-datatypes ((V!7333 0))(
  ( (V!7334 (val!2927 Int)) )
))
(declare-datatypes ((ValueCell!2539 0))(
  ( (ValueCellFull!2539 (v!4943 V!7333)) (EmptyCell!2539) )
))
(declare-datatypes ((array!10772 0))(
  ( (array!10773 (arr!5105 (Array (_ BitVec 32) ValueCell!2539)) (size!5438 (_ BitVec 32))) )
))
(declare-datatypes ((array!10774 0))(
  ( (array!10775 (arr!5106 (Array (_ BitVec 32) (_ BitVec 64))) (size!5439 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2978 0))(
  ( (LongMapFixedSize!2979 (defaultEntry!4148 Int) (mask!9942 (_ BitVec 32)) (extraKeys!3885 (_ BitVec 32)) (zeroValue!3989 V!7333) (minValue!3989 V!7333) (_size!1538 (_ BitVec 32)) (_keys!6202 array!10774) (_values!4131 array!10772) (_vacant!1538 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2978)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10774 (_ BitVec 32)) Bool)

(assert (=> b!219753 (= res!107738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6202 thiss!1504) (mask!9942 thiss!1504)))))

(declare-fun b!219754 () Bool)

(declare-fun res!107740 () Bool)

(declare-fun e!142932 () Bool)

(assert (=> b!219754 (=> (not res!107740) (not e!142932))))

(declare-datatypes ((SeekEntryResult!812 0))(
  ( (MissingZero!812 (index!5418 (_ BitVec 32))) (Found!812 (index!5419 (_ BitVec 32))) (Intermediate!812 (undefined!1624 Bool) (index!5420 (_ BitVec 32)) (x!22928 (_ BitVec 32))) (Undefined!812) (MissingVacant!812 (index!5421 (_ BitVec 32))) )
))
(declare-fun lt!112058 () SeekEntryResult!812)

(assert (=> b!219754 (= res!107740 (= (select (arr!5106 (_keys!6202 thiss!1504)) (index!5418 lt!112058)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219755 () Bool)

(declare-fun res!107737 () Bool)

(assert (=> b!219755 (=> (not res!107737) (not e!142929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!219755 (= res!107737 (validMask!0 (mask!9942 thiss!1504)))))

(declare-fun b!219756 () Bool)

(declare-fun res!107733 () Bool)

(assert (=> b!219756 (= res!107733 (= (select (arr!5106 (_keys!6202 thiss!1504)) (index!5421 lt!112058)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219756 (=> (not res!107733) (not e!142931))))

(declare-fun b!219757 () Bool)

(declare-fun res!107743 () Bool)

(assert (=> b!219757 (=> (not res!107743) (not e!142932))))

(declare-fun call!20542 () Bool)

(assert (=> b!219757 (= res!107743 call!20542)))

(declare-fun e!142936 () Bool)

(assert (=> b!219757 (= e!142936 e!142932)))

(declare-fun mapNonEmpty!9817 () Bool)

(declare-fun mapRes!9817 () Bool)

(declare-fun tp!20851 () Bool)

(declare-fun e!142937 () Bool)

(assert (=> mapNonEmpty!9817 (= mapRes!9817 (and tp!20851 e!142937))))

(declare-fun mapValue!9817 () ValueCell!2539)

(declare-fun mapRest!9817 () (Array (_ BitVec 32) ValueCell!2539))

(declare-fun mapKey!9817 () (_ BitVec 32))

(assert (=> mapNonEmpty!9817 (= (arr!5105 (_values!4131 thiss!1504)) (store mapRest!9817 mapKey!9817 mapValue!9817))))

(declare-fun b!219758 () Bool)

(declare-datatypes ((Unit!6552 0))(
  ( (Unit!6553) )
))
(declare-fun e!142930 () Unit!6552)

(declare-fun Unit!6554 () Unit!6552)

(assert (=> b!219758 (= e!142930 Unit!6554)))

(declare-fun lt!112059 () Unit!6552)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!199 (array!10774 array!10772 (_ BitVec 32) (_ BitVec 32) V!7333 V!7333 (_ BitVec 64) Int) Unit!6552)

(assert (=> b!219758 (= lt!112059 (lemmaInListMapThenSeekEntryOrOpenFindsIt!199 (_keys!6202 thiss!1504) (_values!4131 thiss!1504) (mask!9942 thiss!1504) (extraKeys!3885 thiss!1504) (zeroValue!3989 thiss!1504) (minValue!3989 thiss!1504) key!932 (defaultEntry!4148 thiss!1504)))))

(assert (=> b!219758 false))

(declare-fun bm!20538 () Bool)

(declare-fun arrayContainsKey!0 (array!10774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20538 (= call!20541 (arrayContainsKey!0 (_keys!6202 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219759 () Bool)

(declare-fun res!107734 () Bool)

(assert (=> b!219759 (=> (not res!107734) (not e!142929))))

(assert (=> b!219759 (= res!107734 (arrayContainsKey!0 (_keys!6202 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun tp_is_empty!5765 () Bool)

(declare-fun e!142939 () Bool)

(declare-fun e!142938 () Bool)

(declare-fun array_inv!3371 (array!10774) Bool)

(declare-fun array_inv!3372 (array!10772) Bool)

(assert (=> b!219760 (= e!142939 (and tp!20850 tp_is_empty!5765 (array_inv!3371 (_keys!6202 thiss!1504)) (array_inv!3372 (_values!4131 thiss!1504)) e!142938))))

(declare-fun b!219761 () Bool)

(declare-fun res!107735 () Bool)

(declare-fun e!142935 () Bool)

(assert (=> b!219761 (=> (not res!107735) (not e!142935))))

(assert (=> b!219761 (= res!107735 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!107741 () Bool)

(assert (=> start!21848 (=> (not res!107741) (not e!142935))))

(declare-fun valid!1197 (LongMapFixedSize!2978) Bool)

(assert (=> start!21848 (= res!107741 (valid!1197 thiss!1504))))

(assert (=> start!21848 e!142935))

(assert (=> start!21848 e!142939))

(assert (=> start!21848 true))

(declare-fun b!219762 () Bool)

(assert (=> b!219762 (= e!142932 (not call!20541))))

(declare-fun c!36578 () Bool)

(declare-fun bm!20539 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20539 (= call!20542 (inRange!0 (ite c!36578 (index!5418 lt!112058) (index!5421 lt!112058)) (mask!9942 thiss!1504)))))

(declare-fun b!219763 () Bool)

(declare-fun e!142927 () Bool)

(assert (=> b!219763 (= e!142935 e!142927)))

(declare-fun res!107739 () Bool)

(assert (=> b!219763 (=> (not res!107739) (not e!142927))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!219763 (= res!107739 (or (= lt!112058 (MissingZero!812 index!297)) (= lt!112058 (MissingVacant!812 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10774 (_ BitVec 32)) SeekEntryResult!812)

(assert (=> b!219763 (= lt!112058 (seekEntryOrOpen!0 key!932 (_keys!6202 thiss!1504) (mask!9942 thiss!1504)))))

(declare-fun b!219764 () Bool)

(assert (=> b!219764 (= e!142937 tp_is_empty!5765)))

(declare-fun b!219765 () Bool)

(declare-fun e!142933 () Bool)

(assert (=> b!219765 (= e!142933 (is-Undefined!812 lt!112058))))

(declare-fun b!219766 () Bool)

(assert (=> b!219766 (= e!142933 e!142931)))

(declare-fun res!107732 () Bool)

(assert (=> b!219766 (= res!107732 call!20542)))

(assert (=> b!219766 (=> (not res!107732) (not e!142931))))

(declare-fun b!219767 () Bool)

(declare-fun lt!112057 () Unit!6552)

(assert (=> b!219767 (= e!142930 lt!112057)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!208 (array!10774 array!10772 (_ BitVec 32) (_ BitVec 32) V!7333 V!7333 (_ BitVec 64) Int) Unit!6552)

(assert (=> b!219767 (= lt!112057 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!208 (_keys!6202 thiss!1504) (_values!4131 thiss!1504) (mask!9942 thiss!1504) (extraKeys!3885 thiss!1504) (zeroValue!3989 thiss!1504) (minValue!3989 thiss!1504) key!932 (defaultEntry!4148 thiss!1504)))))

(assert (=> b!219767 (= c!36578 (is-MissingZero!812 lt!112058))))

(assert (=> b!219767 e!142936))

(declare-fun b!219768 () Bool)

(assert (=> b!219768 (= e!142929 false)))

(declare-fun lt!112055 () Bool)

(declare-datatypes ((List!3268 0))(
  ( (Nil!3265) (Cons!3264 (h!3912 (_ BitVec 64)) (t!8235 List!3268)) )
))
(declare-fun arrayNoDuplicates!0 (array!10774 (_ BitVec 32) List!3268) Bool)

(assert (=> b!219768 (= lt!112055 (arrayNoDuplicates!0 (_keys!6202 thiss!1504) #b00000000000000000000000000000000 Nil!3265))))

(declare-fun b!219769 () Bool)

(assert (=> b!219769 (= e!142927 e!142929)))

(declare-fun res!107736 () Bool)

(assert (=> b!219769 (=> (not res!107736) (not e!142929))))

(assert (=> b!219769 (= res!107736 (inRange!0 index!297 (mask!9942 thiss!1504)))))

(declare-fun lt!112056 () Unit!6552)

(assert (=> b!219769 (= lt!112056 e!142930)))

(declare-fun c!36576 () Bool)

(declare-datatypes ((tuple2!4342 0))(
  ( (tuple2!4343 (_1!2181 (_ BitVec 64)) (_2!2181 V!7333)) )
))
(declare-datatypes ((List!3269 0))(
  ( (Nil!3266) (Cons!3265 (h!3913 tuple2!4342) (t!8236 List!3269)) )
))
(declare-datatypes ((ListLongMap!3269 0))(
  ( (ListLongMap!3270 (toList!1650 List!3269)) )
))
(declare-fun contains!1487 (ListLongMap!3269 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1173 (array!10774 array!10772 (_ BitVec 32) (_ BitVec 32) V!7333 V!7333 (_ BitVec 32) Int) ListLongMap!3269)

(assert (=> b!219769 (= c!36576 (contains!1487 (getCurrentListMap!1173 (_keys!6202 thiss!1504) (_values!4131 thiss!1504) (mask!9942 thiss!1504) (extraKeys!3885 thiss!1504) (zeroValue!3989 thiss!1504) (minValue!3989 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4148 thiss!1504)) key!932))))

(declare-fun b!219770 () Bool)

(declare-fun e!142928 () Bool)

(assert (=> b!219770 (= e!142938 (and e!142928 mapRes!9817))))

(declare-fun condMapEmpty!9817 () Bool)

(declare-fun mapDefault!9817 () ValueCell!2539)

