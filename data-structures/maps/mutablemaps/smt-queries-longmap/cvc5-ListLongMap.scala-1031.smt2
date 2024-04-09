; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21880 () Bool)

(assert start!21880)

(declare-fun b!220821 () Bool)

(declare-fun b_free!5935 () Bool)

(declare-fun b_next!5935 () Bool)

(assert (=> b!220821 (= b_free!5935 (not b_next!5935))))

(declare-fun tp!20947 () Bool)

(declare-fun b_and!12851 () Bool)

(assert (=> b!220821 (= tp!20947 b_and!12851)))

(declare-fun b!220808 () Bool)

(declare-fun c!36722 () Bool)

(declare-datatypes ((SeekEntryResult!827 0))(
  ( (MissingZero!827 (index!5478 (_ BitVec 32))) (Found!827 (index!5479 (_ BitVec 32))) (Intermediate!827 (undefined!1639 Bool) (index!5480 (_ BitVec 32)) (x!22991 (_ BitVec 32))) (Undefined!827) (MissingVacant!827 (index!5481 (_ BitVec 32))) )
))
(declare-fun lt!112296 () SeekEntryResult!827)

(assert (=> b!220808 (= c!36722 (is-MissingVacant!827 lt!112296))))

(declare-fun e!143551 () Bool)

(declare-fun e!143560 () Bool)

(assert (=> b!220808 (= e!143551 e!143560)))

(declare-fun b!220809 () Bool)

(declare-fun e!143555 () Bool)

(declare-fun tp_is_empty!5797 () Bool)

(assert (=> b!220809 (= e!143555 tp_is_empty!5797)))

(declare-fun b!220810 () Bool)

(declare-fun res!108310 () Bool)

(declare-fun e!143556 () Bool)

(assert (=> b!220810 (=> (not res!108310) (not e!143556))))

(declare-datatypes ((V!7377 0))(
  ( (V!7378 (val!2943 Int)) )
))
(declare-datatypes ((ValueCell!2555 0))(
  ( (ValueCellFull!2555 (v!4959 V!7377)) (EmptyCell!2555) )
))
(declare-datatypes ((array!10836 0))(
  ( (array!10837 (arr!5137 (Array (_ BitVec 32) ValueCell!2555)) (size!5470 (_ BitVec 32))) )
))
(declare-datatypes ((array!10838 0))(
  ( (array!10839 (arr!5138 (Array (_ BitVec 32) (_ BitVec 64))) (size!5471 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3010 0))(
  ( (LongMapFixedSize!3011 (defaultEntry!4164 Int) (mask!9970 (_ BitVec 32)) (extraKeys!3901 (_ BitVec 32)) (zeroValue!4005 V!7377) (minValue!4005 V!7377) (_size!1554 (_ BitVec 32)) (_keys!6218 array!10838) (_values!4147 array!10836) (_vacant!1554 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3010)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!10838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!220810 (= res!108310 (arrayContainsKey!0 (_keys!6218 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220811 () Bool)

(declare-fun res!108309 () Bool)

(assert (=> b!220811 (=> (not res!108309) (not e!143556))))

(assert (=> b!220811 (= res!108309 (and (= (size!5470 (_values!4147 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9970 thiss!1504))) (= (size!5471 (_keys!6218 thiss!1504)) (size!5470 (_values!4147 thiss!1504))) (bvsge (mask!9970 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3901 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3901 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!220812 () Bool)

(assert (=> b!220812 (= e!143556 false)))

(declare-fun lt!112298 () Bool)

(declare-datatypes ((List!3289 0))(
  ( (Nil!3286) (Cons!3285 (h!3933 (_ BitVec 64)) (t!8256 List!3289)) )
))
(declare-fun arrayNoDuplicates!0 (array!10838 (_ BitVec 32) List!3289) Bool)

(assert (=> b!220812 (= lt!112298 (arrayNoDuplicates!0 (_keys!6218 thiss!1504) #b00000000000000000000000000000000 Nil!3286))))

(declare-fun mapIsEmpty!9865 () Bool)

(declare-fun mapRes!9865 () Bool)

(assert (=> mapIsEmpty!9865 mapRes!9865))

(declare-fun b!220813 () Bool)

(declare-fun res!108314 () Bool)

(assert (=> b!220813 (=> (not res!108314) (not e!143556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10838 (_ BitVec 32)) Bool)

(assert (=> b!220813 (= res!108314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6218 thiss!1504) (mask!9970 thiss!1504)))))

(declare-fun b!220814 () Bool)

(declare-datatypes ((Unit!6588 0))(
  ( (Unit!6589) )
))
(declare-fun e!143563 () Unit!6588)

(declare-fun Unit!6590 () Unit!6588)

(assert (=> b!220814 (= e!143563 Unit!6590)))

(declare-fun lt!112295 () Unit!6588)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!209 (array!10838 array!10836 (_ BitVec 32) (_ BitVec 32) V!7377 V!7377 (_ BitVec 64) Int) Unit!6588)

(assert (=> b!220814 (= lt!112295 (lemmaInListMapThenSeekEntryOrOpenFindsIt!209 (_keys!6218 thiss!1504) (_values!4147 thiss!1504) (mask!9970 thiss!1504) (extraKeys!3901 thiss!1504) (zeroValue!4005 thiss!1504) (minValue!4005 thiss!1504) key!932 (defaultEntry!4164 thiss!1504)))))

(assert (=> b!220814 false))

(declare-fun b!220815 () Bool)

(declare-fun e!143561 () Bool)

(assert (=> b!220815 (= e!143561 e!143556)))

(declare-fun res!108311 () Bool)

(assert (=> b!220815 (=> (not res!108311) (not e!143556))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!220815 (= res!108311 (inRange!0 index!297 (mask!9970 thiss!1504)))))

(declare-fun lt!112299 () Unit!6588)

(assert (=> b!220815 (= lt!112299 e!143563)))

(declare-fun c!36720 () Bool)

(declare-datatypes ((tuple2!4362 0))(
  ( (tuple2!4363 (_1!2191 (_ BitVec 64)) (_2!2191 V!7377)) )
))
(declare-datatypes ((List!3290 0))(
  ( (Nil!3287) (Cons!3286 (h!3934 tuple2!4362) (t!8257 List!3290)) )
))
(declare-datatypes ((ListLongMap!3289 0))(
  ( (ListLongMap!3290 (toList!1660 List!3290)) )
))
(declare-fun contains!1497 (ListLongMap!3289 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1183 (array!10838 array!10836 (_ BitVec 32) (_ BitVec 32) V!7377 V!7377 (_ BitVec 32) Int) ListLongMap!3289)

(assert (=> b!220815 (= c!36720 (contains!1497 (getCurrentListMap!1183 (_keys!6218 thiss!1504) (_values!4147 thiss!1504) (mask!9970 thiss!1504) (extraKeys!3901 thiss!1504) (zeroValue!4005 thiss!1504) (minValue!4005 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4164 thiss!1504)) key!932))))

(declare-fun b!220816 () Bool)

(declare-fun res!108318 () Bool)

(declare-fun e!143553 () Bool)

(assert (=> b!220816 (=> (not res!108318) (not e!143553))))

(assert (=> b!220816 (= res!108318 (= (select (arr!5138 (_keys!6218 thiss!1504)) (index!5478 lt!112296)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!220817 () Bool)

(declare-fun e!143557 () Bool)

(assert (=> b!220817 (= e!143557 tp_is_empty!5797)))

(declare-fun b!220818 () Bool)

(declare-fun e!143554 () Bool)

(declare-fun call!20637 () Bool)

(assert (=> b!220818 (= e!143554 (not call!20637))))

(declare-fun bm!20634 () Bool)

(declare-fun call!20638 () Bool)

(declare-fun c!36721 () Bool)

(assert (=> bm!20634 (= call!20638 (inRange!0 (ite c!36721 (index!5478 lt!112296) (index!5481 lt!112296)) (mask!9970 thiss!1504)))))

(declare-fun b!220819 () Bool)

(declare-fun res!108316 () Bool)

(declare-fun e!143552 () Bool)

(assert (=> b!220819 (=> (not res!108316) (not e!143552))))

(assert (=> b!220819 (= res!108316 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220820 () Bool)

(declare-fun res!108317 () Bool)

(assert (=> b!220820 (= res!108317 (= (select (arr!5138 (_keys!6218 thiss!1504)) (index!5481 lt!112296)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!220820 (=> (not res!108317) (not e!143554))))

(declare-fun bm!20635 () Bool)

(assert (=> bm!20635 (= call!20637 (arrayContainsKey!0 (_keys!6218 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun e!143558 () Bool)

(declare-fun e!143562 () Bool)

(declare-fun array_inv!3389 (array!10838) Bool)

(declare-fun array_inv!3390 (array!10836) Bool)

(assert (=> b!220821 (= e!143558 (and tp!20947 tp_is_empty!5797 (array_inv!3389 (_keys!6218 thiss!1504)) (array_inv!3390 (_values!4147 thiss!1504)) e!143562))))

(declare-fun b!220822 () Bool)

(declare-fun res!108312 () Bool)

(assert (=> b!220822 (=> (not res!108312) (not e!143556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220822 (= res!108312 (validMask!0 (mask!9970 thiss!1504)))))

(declare-fun res!108319 () Bool)

(assert (=> start!21880 (=> (not res!108319) (not e!143552))))

(declare-fun valid!1206 (LongMapFixedSize!3010) Bool)

(assert (=> start!21880 (= res!108319 (valid!1206 thiss!1504))))

(assert (=> start!21880 e!143552))

(assert (=> start!21880 e!143558))

(assert (=> start!21880 true))

(declare-fun mapNonEmpty!9865 () Bool)

(declare-fun tp!20946 () Bool)

(assert (=> mapNonEmpty!9865 (= mapRes!9865 (and tp!20946 e!143557))))

(declare-fun mapValue!9865 () ValueCell!2555)

(declare-fun mapRest!9865 () (Array (_ BitVec 32) ValueCell!2555))

(declare-fun mapKey!9865 () (_ BitVec 32))

(assert (=> mapNonEmpty!9865 (= (arr!5137 (_values!4147 thiss!1504)) (store mapRest!9865 mapKey!9865 mapValue!9865))))

(declare-fun b!220823 () Bool)

(assert (=> b!220823 (= e!143552 e!143561)))

(declare-fun res!108315 () Bool)

(assert (=> b!220823 (=> (not res!108315) (not e!143561))))

(assert (=> b!220823 (= res!108315 (or (= lt!112296 (MissingZero!827 index!297)) (= lt!112296 (MissingVacant!827 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10838 (_ BitVec 32)) SeekEntryResult!827)

(assert (=> b!220823 (= lt!112296 (seekEntryOrOpen!0 key!932 (_keys!6218 thiss!1504) (mask!9970 thiss!1504)))))

(declare-fun b!220824 () Bool)

(assert (=> b!220824 (= e!143553 (not call!20637))))

(declare-fun b!220825 () Bool)

(declare-fun res!108313 () Bool)

(assert (=> b!220825 (=> (not res!108313) (not e!143553))))

(assert (=> b!220825 (= res!108313 call!20638)))

(assert (=> b!220825 (= e!143551 e!143553)))

(declare-fun b!220826 () Bool)

(assert (=> b!220826 (= e!143560 (is-Undefined!827 lt!112296))))

(declare-fun b!220827 () Bool)

(assert (=> b!220827 (= e!143562 (and e!143555 mapRes!9865))))

(declare-fun condMapEmpty!9865 () Bool)

(declare-fun mapDefault!9865 () ValueCell!2555)

