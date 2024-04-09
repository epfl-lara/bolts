; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24776 () Bool)

(assert start!24776)

(declare-fun b!258848 () Bool)

(declare-fun b_free!6749 () Bool)

(declare-fun b_next!6749 () Bool)

(assert (=> b!258848 (= b_free!6749 (not b_next!6749))))

(declare-fun tp!23563 () Bool)

(declare-fun b_and!13855 () Bool)

(assert (=> b!258848 (= tp!23563 b_and!13855)))

(declare-fun b!258836 () Bool)

(declare-fun e!167782 () Bool)

(declare-fun e!167784 () Bool)

(assert (=> b!258836 (= e!167782 e!167784)))

(declare-fun res!126575 () Bool)

(declare-fun call!24626 () Bool)

(assert (=> b!258836 (= res!126575 call!24626)))

(assert (=> b!258836 (=> (not res!126575) (not e!167784))))

(declare-fun b!258837 () Bool)

(declare-fun e!167788 () Bool)

(declare-fun tp_is_empty!6611 () Bool)

(assert (=> b!258837 (= e!167788 tp_is_empty!6611)))

(declare-fun b!258838 () Bool)

(declare-datatypes ((Unit!8047 0))(
  ( (Unit!8048) )
))
(declare-fun e!167781 () Unit!8047)

(declare-fun Unit!8049 () Unit!8047)

(assert (=> b!258838 (= e!167781 Unit!8049)))

(declare-fun lt!130396 () Unit!8047)

(declare-datatypes ((V!8461 0))(
  ( (V!8462 (val!3350 Int)) )
))
(declare-datatypes ((ValueCell!2962 0))(
  ( (ValueCellFull!2962 (v!5450 V!8461)) (EmptyCell!2962) )
))
(declare-datatypes ((array!12570 0))(
  ( (array!12571 (arr!5951 (Array (_ BitVec 32) ValueCell!2962)) (size!6299 (_ BitVec 32))) )
))
(declare-datatypes ((array!12572 0))(
  ( (array!12573 (arr!5952 (Array (_ BitVec 32) (_ BitVec 64))) (size!6300 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3824 0))(
  ( (LongMapFixedSize!3825 (defaultEntry!4775 Int) (mask!11083 (_ BitVec 32)) (extraKeys!4512 (_ BitVec 32)) (zeroValue!4616 V!8461) (minValue!4616 V!8461) (_size!1961 (_ BitVec 32)) (_keys!6949 array!12572) (_values!4758 array!12570) (_vacant!1961 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3824)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!440 (array!12572 array!12570 (_ BitVec 32) (_ BitVec 32) V!8461 V!8461 (_ BitVec 64) Int) Unit!8047)

(assert (=> b!258838 (= lt!130396 (lemmaInListMapThenSeekEntryOrOpenFindsIt!440 (_keys!6949 thiss!1504) (_values!4758 thiss!1504) (mask!11083 thiss!1504) (extraKeys!4512 thiss!1504) (zeroValue!4616 thiss!1504) (minValue!4616 thiss!1504) key!932 (defaultEntry!4775 thiss!1504)))))

(assert (=> b!258838 false))

(declare-fun b!258839 () Bool)

(declare-fun e!167789 () Bool)

(declare-fun e!167792 () Bool)

(assert (=> b!258839 (= e!167789 e!167792)))

(declare-fun res!126567 () Bool)

(assert (=> b!258839 (=> (not res!126567) (not e!167792))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!258839 (= res!126567 (inRange!0 index!297 (mask!11083 thiss!1504)))))

(declare-fun lt!130386 () Unit!8047)

(assert (=> b!258839 (= lt!130386 e!167781)))

(declare-fun c!43876 () Bool)

(declare-datatypes ((tuple2!4936 0))(
  ( (tuple2!4937 (_1!2478 (_ BitVec 64)) (_2!2478 V!8461)) )
))
(declare-datatypes ((List!3839 0))(
  ( (Nil!3836) (Cons!3835 (h!4498 tuple2!4936) (t!8912 List!3839)) )
))
(declare-datatypes ((ListLongMap!3863 0))(
  ( (ListLongMap!3864 (toList!1947 List!3839)) )
))
(declare-fun lt!130394 () ListLongMap!3863)

(declare-fun contains!1882 (ListLongMap!3863 (_ BitVec 64)) Bool)

(assert (=> b!258839 (= c!43876 (contains!1882 lt!130394 key!932))))

(declare-fun getCurrentListMap!1470 (array!12572 array!12570 (_ BitVec 32) (_ BitVec 32) V!8461 V!8461 (_ BitVec 32) Int) ListLongMap!3863)

(assert (=> b!258839 (= lt!130394 (getCurrentListMap!1470 (_keys!6949 thiss!1504) (_values!4758 thiss!1504) (mask!11083 thiss!1504) (extraKeys!4512 thiss!1504) (zeroValue!4616 thiss!1504) (minValue!4616 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4775 thiss!1504)))))

(declare-fun b!258840 () Bool)

(declare-fun lt!130388 () Unit!8047)

(assert (=> b!258840 (= e!167781 lt!130388)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!439 (array!12572 array!12570 (_ BitVec 32) (_ BitVec 32) V!8461 V!8461 (_ BitVec 64) Int) Unit!8047)

(assert (=> b!258840 (= lt!130388 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!439 (_keys!6949 thiss!1504) (_values!4758 thiss!1504) (mask!11083 thiss!1504) (extraKeys!4512 thiss!1504) (zeroValue!4616 thiss!1504) (minValue!4616 thiss!1504) key!932 (defaultEntry!4775 thiss!1504)))))

(declare-fun c!43875 () Bool)

(declare-datatypes ((SeekEntryResult!1188 0))(
  ( (MissingZero!1188 (index!6922 (_ BitVec 32))) (Found!1188 (index!6923 (_ BitVec 32))) (Intermediate!1188 (undefined!2000 Bool) (index!6924 (_ BitVec 32)) (x!25082 (_ BitVec 32))) (Undefined!1188) (MissingVacant!1188 (index!6925 (_ BitVec 32))) )
))
(declare-fun lt!130395 () SeekEntryResult!1188)

(assert (=> b!258840 (= c!43875 (is-MissingZero!1188 lt!130395))))

(declare-fun e!167787 () Bool)

(assert (=> b!258840 e!167787))

(declare-fun b!258841 () Bool)

(declare-fun e!167794 () Bool)

(assert (=> b!258841 (= e!167794 e!167789)))

(declare-fun res!126568 () Bool)

(assert (=> b!258841 (=> (not res!126568) (not e!167789))))

(assert (=> b!258841 (= res!126568 (or (= lt!130395 (MissingZero!1188 index!297)) (= lt!130395 (MissingVacant!1188 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12572 (_ BitVec 32)) SeekEntryResult!1188)

(assert (=> b!258841 (= lt!130395 (seekEntryOrOpen!0 key!932 (_keys!6949 thiss!1504) (mask!11083 thiss!1504)))))

(declare-fun res!126570 () Bool)

(assert (=> start!24776 (=> (not res!126570) (not e!167794))))

(declare-fun valid!1485 (LongMapFixedSize!3824) Bool)

(assert (=> start!24776 (= res!126570 (valid!1485 thiss!1504))))

(assert (=> start!24776 e!167794))

(declare-fun e!167785 () Bool)

(assert (=> start!24776 e!167785))

(assert (=> start!24776 true))

(assert (=> start!24776 tp_is_empty!6611))

(declare-fun b!258842 () Bool)

(declare-fun c!43878 () Bool)

(assert (=> b!258842 (= c!43878 (is-MissingVacant!1188 lt!130395))))

(assert (=> b!258842 (= e!167787 e!167782)))

(declare-fun b!258843 () Bool)

(assert (=> b!258843 (= e!167782 (is-Undefined!1188 lt!130395))))

(declare-fun b!258844 () Bool)

(declare-fun e!167783 () Unit!8047)

(declare-fun Unit!8050 () Unit!8047)

(assert (=> b!258844 (= e!167783 Unit!8050)))

(declare-fun b!258845 () Bool)

(declare-fun Unit!8051 () Unit!8047)

(assert (=> b!258845 (= e!167783 Unit!8051)))

(declare-fun lt!130389 () Unit!8047)

(declare-fun lemmaArrayContainsKeyThenInListMap!247 (array!12572 array!12570 (_ BitVec 32) (_ BitVec 32) V!8461 V!8461 (_ BitVec 64) (_ BitVec 32) Int) Unit!8047)

(assert (=> b!258845 (= lt!130389 (lemmaArrayContainsKeyThenInListMap!247 (_keys!6949 thiss!1504) (_values!4758 thiss!1504) (mask!11083 thiss!1504) (extraKeys!4512 thiss!1504) (zeroValue!4616 thiss!1504) (minValue!4616 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4775 thiss!1504)))))

(assert (=> b!258845 false))

(declare-fun b!258846 () Bool)

(declare-fun call!24627 () Bool)

(assert (=> b!258846 (= e!167784 (not call!24627))))

(declare-fun bm!24623 () Bool)

(declare-fun arrayContainsKey!0 (array!12572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24623 (= call!24627 (arrayContainsKey!0 (_keys!6949 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!258847 () Bool)

(declare-fun e!167790 () Bool)

(declare-fun e!167791 () Bool)

(declare-fun mapRes!11260 () Bool)

(assert (=> b!258847 (= e!167790 (and e!167791 mapRes!11260))))

(declare-fun condMapEmpty!11260 () Bool)

(declare-fun mapDefault!11260 () ValueCell!2962)

