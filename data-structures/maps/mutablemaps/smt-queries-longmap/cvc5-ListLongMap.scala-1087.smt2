; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22216 () Bool)

(assert start!22216)

(declare-fun b!232778 () Bool)

(declare-fun b_free!6271 () Bool)

(declare-fun b_next!6271 () Bool)

(assert (=> b!232778 (= b_free!6271 (not b_next!6271))))

(declare-fun tp!21954 () Bool)

(declare-fun b_and!13187 () Bool)

(assert (=> b!232778 (= tp!21954 b_and!13187)))

(declare-fun b!232767 () Bool)

(declare-fun res!114289 () Bool)

(declare-fun e!151191 () Bool)

(assert (=> b!232767 (=> (not res!114289) (not e!151191))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!232767 (= res!114289 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!232768 () Bool)

(declare-fun e!151201 () Bool)

(declare-fun call!21646 () Bool)

(assert (=> b!232768 (= e!151201 (not call!21646))))

(declare-fun bm!21642 () Bool)

(declare-datatypes ((V!7825 0))(
  ( (V!7826 (val!3111 Int)) )
))
(declare-datatypes ((ValueCell!2723 0))(
  ( (ValueCellFull!2723 (v!5127 V!7825)) (EmptyCell!2723) )
))
(declare-datatypes ((array!11508 0))(
  ( (array!11509 (arr!5473 (Array (_ BitVec 32) ValueCell!2723)) (size!5806 (_ BitVec 32))) )
))
(declare-datatypes ((array!11510 0))(
  ( (array!11511 (arr!5474 (Array (_ BitVec 32) (_ BitVec 64))) (size!5807 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3346 0))(
  ( (LongMapFixedSize!3347 (defaultEntry!4332 Int) (mask!10250 (_ BitVec 32)) (extraKeys!4069 (_ BitVec 32)) (zeroValue!4173 V!7825) (minValue!4173 V!7825) (_size!1722 (_ BitVec 32)) (_keys!6386 array!11510) (_values!4315 array!11508) (_vacant!1722 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3346)

(declare-fun arrayContainsKey!0 (array!11510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21642 (= call!21646 (arrayContainsKey!0 (_keys!6386 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232769 () Bool)

(declare-fun e!151199 () Bool)

(declare-fun tp_is_empty!6133 () Bool)

(assert (=> b!232769 (= e!151199 tp_is_empty!6133)))

(declare-fun b!232770 () Bool)

(declare-datatypes ((Unit!7193 0))(
  ( (Unit!7194) )
))
(declare-fun e!151188 () Unit!7193)

(declare-fun Unit!7195 () Unit!7193)

(assert (=> b!232770 (= e!151188 Unit!7195)))

(declare-fun b!232771 () Bool)

(declare-fun c!38703 () Bool)

(declare-datatypes ((SeekEntryResult!980 0))(
  ( (MissingZero!980 (index!6090 (_ BitVec 32))) (Found!980 (index!6091 (_ BitVec 32))) (Intermediate!980 (undefined!1792 Bool) (index!6092 (_ BitVec 32)) (x!23592 (_ BitVec 32))) (Undefined!980) (MissingVacant!980 (index!6093 (_ BitVec 32))) )
))
(declare-fun lt!117768 () SeekEntryResult!980)

(assert (=> b!232771 (= c!38703 (is-MissingVacant!980 lt!117768))))

(declare-fun e!151200 () Bool)

(declare-fun e!151197 () Bool)

(assert (=> b!232771 (= e!151200 e!151197)))

(declare-fun b!232772 () Bool)

(declare-fun e!151189 () Bool)

(declare-fun e!151192 () Bool)

(assert (=> b!232772 (= e!151189 e!151192)))

(declare-fun res!114287 () Bool)

(assert (=> b!232772 (=> (not res!114287) (not e!151192))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!232772 (= res!114287 (inRange!0 index!297 (mask!10250 thiss!1504)))))

(declare-fun lt!117753 () Unit!7193)

(declare-fun e!151198 () Unit!7193)

(assert (=> b!232772 (= lt!117753 e!151198)))

(declare-fun c!38704 () Bool)

(declare-datatypes ((tuple2!4588 0))(
  ( (tuple2!4589 (_1!2304 (_ BitVec 64)) (_2!2304 V!7825)) )
))
(declare-datatypes ((List!3528 0))(
  ( (Nil!3525) (Cons!3524 (h!4172 tuple2!4588) (t!8495 List!3528)) )
))
(declare-datatypes ((ListLongMap!3515 0))(
  ( (ListLongMap!3516 (toList!1773 List!3528)) )
))
(declare-fun lt!117769 () ListLongMap!3515)

(declare-fun contains!1635 (ListLongMap!3515 (_ BitVec 64)) Bool)

(assert (=> b!232772 (= c!38704 (contains!1635 lt!117769 key!932))))

(declare-fun getCurrentListMap!1296 (array!11510 array!11508 (_ BitVec 32) (_ BitVec 32) V!7825 V!7825 (_ BitVec 32) Int) ListLongMap!3515)

(assert (=> b!232772 (= lt!117769 (getCurrentListMap!1296 (_keys!6386 thiss!1504) (_values!4315 thiss!1504) (mask!10250 thiss!1504) (extraKeys!4069 thiss!1504) (zeroValue!4173 thiss!1504) (minValue!4173 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4332 thiss!1504)))))

(declare-fun b!232773 () Bool)

(declare-fun e!151187 () Bool)

(assert (=> b!232773 (= e!151187 tp_is_empty!6133)))

(declare-fun mapIsEmpty!10369 () Bool)

(declare-fun mapRes!10369 () Bool)

(assert (=> mapIsEmpty!10369 mapRes!10369))

(declare-fun b!232774 () Bool)

(declare-fun res!114292 () Bool)

(assert (=> b!232774 (=> (not res!114292) (not e!151201))))

(declare-fun call!21645 () Bool)

(assert (=> b!232774 (= res!114292 call!21645)))

(assert (=> b!232774 (= e!151200 e!151201)))

(declare-fun res!114295 () Bool)

(assert (=> start!22216 (=> (not res!114295) (not e!151191))))

(declare-fun valid!1315 (LongMapFixedSize!3346) Bool)

(assert (=> start!22216 (= res!114295 (valid!1315 thiss!1504))))

(assert (=> start!22216 e!151191))

(declare-fun e!151190 () Bool)

(assert (=> start!22216 e!151190))

(assert (=> start!22216 true))

(assert (=> start!22216 tp_is_empty!6133))

(declare-fun b!232775 () Bool)

(declare-fun e!151193 () Bool)

(assert (=> b!232775 (= e!151193 true)))

(declare-fun lt!117766 () Bool)

(declare-fun lt!117756 () LongMapFixedSize!3346)

(declare-fun map!2580 (LongMapFixedSize!3346) ListLongMap!3515)

(assert (=> b!232775 (= lt!117766 (contains!1635 (map!2580 lt!117756) key!932))))

(declare-fun b!232776 () Bool)

(declare-fun res!114294 () Bool)

(assert (=> b!232776 (=> (not res!114294) (not e!151201))))

(assert (=> b!232776 (= res!114294 (= (select (arr!5474 (_keys!6386 thiss!1504)) (index!6090 lt!117768)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!232777 () Bool)

(declare-fun e!151194 () Bool)

(assert (=> b!232777 (= e!151197 e!151194)))

(declare-fun res!114290 () Bool)

(assert (=> b!232777 (= res!114290 call!21645)))

(assert (=> b!232777 (=> (not res!114290) (not e!151194))))

(declare-fun e!151196 () Bool)

(declare-fun array_inv!3599 (array!11510) Bool)

(declare-fun array_inv!3600 (array!11508) Bool)

(assert (=> b!232778 (= e!151190 (and tp!21954 tp_is_empty!6133 (array_inv!3599 (_keys!6386 thiss!1504)) (array_inv!3600 (_values!4315 thiss!1504)) e!151196))))

(declare-fun mapNonEmpty!10369 () Bool)

(declare-fun tp!21955 () Bool)

(assert (=> mapNonEmpty!10369 (= mapRes!10369 (and tp!21955 e!151187))))

(declare-fun mapKey!10369 () (_ BitVec 32))

(declare-fun mapValue!10369 () ValueCell!2723)

(declare-fun mapRest!10369 () (Array (_ BitVec 32) ValueCell!2723))

(assert (=> mapNonEmpty!10369 (= (arr!5473 (_values!4315 thiss!1504)) (store mapRest!10369 mapKey!10369 mapValue!10369))))

(declare-fun bm!21643 () Bool)

(declare-fun c!38705 () Bool)

(assert (=> bm!21643 (= call!21645 (inRange!0 (ite c!38705 (index!6090 lt!117768) (index!6093 lt!117768)) (mask!10250 thiss!1504)))))

(declare-fun b!232779 () Bool)

(assert (=> b!232779 (= e!151197 (is-Undefined!980 lt!117768))))

(declare-fun b!232780 () Bool)

(declare-fun lt!117760 () Unit!7193)

(assert (=> b!232780 (= e!151198 lt!117760)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!327 (array!11510 array!11508 (_ BitVec 32) (_ BitVec 32) V!7825 V!7825 (_ BitVec 64) Int) Unit!7193)

(assert (=> b!232780 (= lt!117760 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!327 (_keys!6386 thiss!1504) (_values!4315 thiss!1504) (mask!10250 thiss!1504) (extraKeys!4069 thiss!1504) (zeroValue!4173 thiss!1504) (minValue!4173 thiss!1504) key!932 (defaultEntry!4332 thiss!1504)))))

(assert (=> b!232780 (= c!38705 (is-MissingZero!980 lt!117768))))

(assert (=> b!232780 e!151200))

(declare-fun b!232781 () Bool)

(declare-fun Unit!7196 () Unit!7193)

(assert (=> b!232781 (= e!151188 Unit!7196)))

(declare-fun lt!117761 () Unit!7193)

(declare-fun lemmaArrayContainsKeyThenInListMap!147 (array!11510 array!11508 (_ BitVec 32) (_ BitVec 32) V!7825 V!7825 (_ BitVec 64) (_ BitVec 32) Int) Unit!7193)

(assert (=> b!232781 (= lt!117761 (lemmaArrayContainsKeyThenInListMap!147 (_keys!6386 thiss!1504) (_values!4315 thiss!1504) (mask!10250 thiss!1504) (extraKeys!4069 thiss!1504) (zeroValue!4173 thiss!1504) (minValue!4173 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4332 thiss!1504)))))

(assert (=> b!232781 false))

(declare-fun b!232782 () Bool)

(assert (=> b!232782 (= e!151191 e!151189)))

(declare-fun res!114291 () Bool)

(assert (=> b!232782 (=> (not res!114291) (not e!151189))))

(assert (=> b!232782 (= res!114291 (or (= lt!117768 (MissingZero!980 index!297)) (= lt!117768 (MissingVacant!980 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11510 (_ BitVec 32)) SeekEntryResult!980)

(assert (=> b!232782 (= lt!117768 (seekEntryOrOpen!0 key!932 (_keys!6386 thiss!1504) (mask!10250 thiss!1504)))))

(declare-fun b!232783 () Bool)

(assert (=> b!232783 (= e!151196 (and e!151199 mapRes!10369))))

(declare-fun condMapEmpty!10369 () Bool)

(declare-fun mapDefault!10369 () ValueCell!2723)

