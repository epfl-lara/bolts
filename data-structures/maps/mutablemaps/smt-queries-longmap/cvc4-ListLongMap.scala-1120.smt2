; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22982 () Bool)

(assert start!22982)

(declare-fun b!240632 () Bool)

(declare-fun b_free!6473 () Bool)

(declare-fun b_next!6473 () Bool)

(assert (=> b!240632 (= b_free!6473 (not b_next!6473))))

(declare-fun tp!22623 () Bool)

(declare-fun b_and!13457 () Bool)

(assert (=> b!240632 (= tp!22623 b_and!13457)))

(declare-fun b!240622 () Bool)

(declare-fun e!156172 () Bool)

(declare-fun e!156179 () Bool)

(assert (=> b!240622 (= e!156172 e!156179)))

(declare-fun res!118016 () Bool)

(assert (=> b!240622 (=> (not res!118016) (not e!156179))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8093 0))(
  ( (V!8094 (val!3212 Int)) )
))
(declare-datatypes ((ValueCell!2824 0))(
  ( (ValueCellFull!2824 (v!5246 V!8093)) (EmptyCell!2824) )
))
(declare-datatypes ((array!11948 0))(
  ( (array!11949 (arr!5675 (Array (_ BitVec 32) ValueCell!2824)) (size!6016 (_ BitVec 32))) )
))
(declare-datatypes ((array!11950 0))(
  ( (array!11951 (arr!5676 (Array (_ BitVec 32) (_ BitVec 64))) (size!6017 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3548 0))(
  ( (LongMapFixedSize!3549 (defaultEntry!4459 Int) (mask!10517 (_ BitVec 32)) (extraKeys!4196 (_ BitVec 32)) (zeroValue!4300 V!8093) (minValue!4300 V!8093) (_size!1823 (_ BitVec 32)) (_keys!6561 array!11950) (_values!4442 array!11948) (_vacant!1823 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3548)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!240622 (= res!118016 (inRange!0 index!297 (mask!10517 thiss!1504)))))

(declare-datatypes ((Unit!7402 0))(
  ( (Unit!7403) )
))
(declare-fun lt!121048 () Unit!7402)

(declare-fun e!156170 () Unit!7402)

(assert (=> b!240622 (= lt!121048 e!156170)))

(declare-fun c!40061 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4728 0))(
  ( (tuple2!4729 (_1!2374 (_ BitVec 64)) (_2!2374 V!8093)) )
))
(declare-datatypes ((List!3636 0))(
  ( (Nil!3633) (Cons!3632 (h!4288 tuple2!4728) (t!8639 List!3636)) )
))
(declare-datatypes ((ListLongMap!3655 0))(
  ( (ListLongMap!3656 (toList!1843 List!3636)) )
))
(declare-fun contains!1725 (ListLongMap!3655 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1366 (array!11950 array!11948 (_ BitVec 32) (_ BitVec 32) V!8093 V!8093 (_ BitVec 32) Int) ListLongMap!3655)

(assert (=> b!240622 (= c!40061 (contains!1725 (getCurrentListMap!1366 (_keys!6561 thiss!1504) (_values!4442 thiss!1504) (mask!10517 thiss!1504) (extraKeys!4196 thiss!1504) (zeroValue!4300 thiss!1504) (minValue!4300 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4459 thiss!1504)) key!932))))

(declare-fun b!240623 () Bool)

(declare-fun res!118014 () Bool)

(declare-datatypes ((SeekEntryResult!1059 0))(
  ( (MissingZero!1059 (index!6406 (_ BitVec 32))) (Found!1059 (index!6407 (_ BitVec 32))) (Intermediate!1059 (undefined!1871 Bool) (index!6408 (_ BitVec 32)) (x!24179 (_ BitVec 32))) (Undefined!1059) (MissingVacant!1059 (index!6409 (_ BitVec 32))) )
))
(declare-fun lt!121047 () SeekEntryResult!1059)

(assert (=> b!240623 (= res!118014 (= (select (arr!5676 (_keys!6561 thiss!1504)) (index!6409 lt!121047)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156174 () Bool)

(assert (=> b!240623 (=> (not res!118014) (not e!156174))))

(declare-fun b!240624 () Bool)

(declare-fun e!156175 () Bool)

(assert (=> b!240624 (= e!156175 (is-Undefined!1059 lt!121047))))

(declare-fun bm!22374 () Bool)

(declare-fun call!22378 () Bool)

(declare-fun arrayContainsKey!0 (array!11950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22374 (= call!22378 (arrayContainsKey!0 (_keys!6561 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240625 () Bool)

(declare-fun res!118013 () Bool)

(declare-fun e!156180 () Bool)

(assert (=> b!240625 (=> (not res!118013) (not e!156180))))

(assert (=> b!240625 (= res!118013 (= (select (arr!5676 (_keys!6561 thiss!1504)) (index!6406 lt!121047)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240626 () Bool)

(declare-fun res!118019 () Bool)

(declare-fun e!156181 () Bool)

(assert (=> b!240626 (=> (not res!118019) (not e!156181))))

(assert (=> b!240626 (= res!118019 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!240628 () Bool)

(assert (=> b!240628 (= e!156175 e!156174)))

(declare-fun res!118012 () Bool)

(declare-fun call!22377 () Bool)

(assert (=> b!240628 (= res!118012 call!22377)))

(assert (=> b!240628 (=> (not res!118012) (not e!156174))))

(declare-fun b!240629 () Bool)

(assert (=> b!240629 (= e!156179 false)))

(declare-fun lt!121046 () Bool)

(declare-datatypes ((List!3637 0))(
  ( (Nil!3634) (Cons!3633 (h!4289 (_ BitVec 64)) (t!8640 List!3637)) )
))
(declare-fun arrayNoDuplicates!0 (array!11950 (_ BitVec 32) List!3637) Bool)

(assert (=> b!240629 (= lt!121046 (arrayNoDuplicates!0 (_keys!6561 thiss!1504) #b00000000000000000000000000000000 Nil!3634))))

(declare-fun b!240630 () Bool)

(declare-fun c!40063 () Bool)

(assert (=> b!240630 (= c!40063 (is-MissingVacant!1059 lt!121047))))

(declare-fun e!156173 () Bool)

(assert (=> b!240630 (= e!156173 e!156175)))

(declare-fun b!240631 () Bool)

(declare-fun res!118008 () Bool)

(assert (=> b!240631 (=> (not res!118008) (not e!156179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11950 (_ BitVec 32)) Bool)

(assert (=> b!240631 (= res!118008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6561 thiss!1504) (mask!10517 thiss!1504)))))

(declare-fun e!156177 () Bool)

(declare-fun tp_is_empty!6335 () Bool)

(declare-fun e!156178 () Bool)

(declare-fun array_inv!3745 (array!11950) Bool)

(declare-fun array_inv!3746 (array!11948) Bool)

(assert (=> b!240632 (= e!156177 (and tp!22623 tp_is_empty!6335 (array_inv!3745 (_keys!6561 thiss!1504)) (array_inv!3746 (_values!4442 thiss!1504)) e!156178))))

(declare-fun c!40062 () Bool)

(declare-fun bm!22375 () Bool)

(assert (=> bm!22375 (= call!22377 (inRange!0 (ite c!40062 (index!6406 lt!121047) (index!6409 lt!121047)) (mask!10517 thiss!1504)))))

(declare-fun b!240633 () Bool)

(declare-fun e!156182 () Bool)

(assert (=> b!240633 (= e!156182 tp_is_empty!6335)))

(declare-fun b!240634 () Bool)

(assert (=> b!240634 (= e!156180 (not call!22378))))

(declare-fun mapNonEmpty!10734 () Bool)

(declare-fun mapRes!10734 () Bool)

(declare-fun tp!22622 () Bool)

(declare-fun e!156171 () Bool)

(assert (=> mapNonEmpty!10734 (= mapRes!10734 (and tp!22622 e!156171))))

(declare-fun mapValue!10734 () ValueCell!2824)

(declare-fun mapKey!10734 () (_ BitVec 32))

(declare-fun mapRest!10734 () (Array (_ BitVec 32) ValueCell!2824))

(assert (=> mapNonEmpty!10734 (= (arr!5675 (_values!4442 thiss!1504)) (store mapRest!10734 mapKey!10734 mapValue!10734))))

(declare-fun b!240635 () Bool)

(assert (=> b!240635 (= e!156171 tp_is_empty!6335)))

(declare-fun b!240636 () Bool)

(assert (=> b!240636 (= e!156178 (and e!156182 mapRes!10734))))

(declare-fun condMapEmpty!10734 () Bool)

(declare-fun mapDefault!10734 () ValueCell!2824)

