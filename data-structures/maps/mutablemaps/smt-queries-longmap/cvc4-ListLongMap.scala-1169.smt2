; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25034 () Bool)

(assert start!25034)

(declare-fun b!260888 () Bool)

(declare-fun b_free!6767 () Bool)

(declare-fun b_next!6767 () Bool)

(assert (=> b!260888 (= b_free!6767 (not b_next!6767))))

(declare-fun tp!23627 () Bool)

(declare-fun b_and!13905 () Bool)

(assert (=> b!260888 (= tp!23627 b_and!13905)))

(declare-fun b!260883 () Bool)

(declare-fun e!169089 () Bool)

(declare-fun e!169084 () Bool)

(assert (=> b!260883 (= e!169089 e!169084)))

(declare-fun res!127506 () Bool)

(assert (=> b!260883 (=> (not res!127506) (not e!169084))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8485 0))(
  ( (V!8486 (val!3359 Int)) )
))
(declare-datatypes ((ValueCell!2971 0))(
  ( (ValueCellFull!2971 (v!5474 V!8485)) (EmptyCell!2971) )
))
(declare-datatypes ((array!12612 0))(
  ( (array!12613 (arr!5969 (Array (_ BitVec 32) ValueCell!2971)) (size!6319 (_ BitVec 32))) )
))
(declare-datatypes ((array!12614 0))(
  ( (array!12615 (arr!5970 (Array (_ BitVec 32) (_ BitVec 64))) (size!6320 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3842 0))(
  ( (LongMapFixedSize!3843 (defaultEntry!4809 Int) (mask!11146 (_ BitVec 32)) (extraKeys!4546 (_ BitVec 32)) (zeroValue!4650 V!8485) (minValue!4650 V!8485) (_size!1970 (_ BitVec 32)) (_keys!6993 array!12614) (_values!4792 array!12612) (_vacant!1970 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3842)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!260883 (= res!127506 (inRange!0 index!297 (mask!11146 thiss!1504)))))

(declare-datatypes ((Unit!8110 0))(
  ( (Unit!8111) )
))
(declare-fun lt!131698 () Unit!8110)

(declare-fun e!169077 () Unit!8110)

(assert (=> b!260883 (= lt!131698 e!169077)))

(declare-fun c!44360 () Bool)

(declare-datatypes ((tuple2!4950 0))(
  ( (tuple2!4951 (_1!2485 (_ BitVec 64)) (_2!2485 V!8485)) )
))
(declare-datatypes ((List!3852 0))(
  ( (Nil!3849) (Cons!3848 (h!4513 tuple2!4950) (t!8931 List!3852)) )
))
(declare-datatypes ((ListLongMap!3877 0))(
  ( (ListLongMap!3878 (toList!1954 List!3852)) )
))
(declare-fun lt!131694 () ListLongMap!3877)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1894 (ListLongMap!3877 (_ BitVec 64)) Bool)

(assert (=> b!260883 (= c!44360 (contains!1894 lt!131694 key!932))))

(declare-fun getCurrentListMap!1477 (array!12614 array!12612 (_ BitVec 32) (_ BitVec 32) V!8485 V!8485 (_ BitVec 32) Int) ListLongMap!3877)

(assert (=> b!260883 (= lt!131694 (getCurrentListMap!1477 (_keys!6993 thiss!1504) (_values!4792 thiss!1504) (mask!11146 thiss!1504) (extraKeys!4546 thiss!1504) (zeroValue!4650 thiss!1504) (minValue!4650 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4809 thiss!1504)))))

(declare-fun b!260884 () Bool)

(declare-fun res!127502 () Bool)

(declare-fun e!169083 () Bool)

(assert (=> b!260884 (=> (not res!127502) (not e!169083))))

(declare-datatypes ((SeekEntryResult!1196 0))(
  ( (MissingZero!1196 (index!6954 (_ BitVec 32))) (Found!1196 (index!6955 (_ BitVec 32))) (Intermediate!1196 (undefined!2008 Bool) (index!6956 (_ BitVec 32)) (x!25160 (_ BitVec 32))) (Undefined!1196) (MissingVacant!1196 (index!6957 (_ BitVec 32))) )
))
(declare-fun lt!131690 () SeekEntryResult!1196)

(assert (=> b!260884 (= res!127502 (= (select (arr!5970 (_keys!6993 thiss!1504)) (index!6954 lt!131690)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260885 () Bool)

(declare-fun Unit!8112 () Unit!8110)

(assert (=> b!260885 (= e!169077 Unit!8112)))

(declare-fun lt!131693 () Unit!8110)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!445 (array!12614 array!12612 (_ BitVec 32) (_ BitVec 32) V!8485 V!8485 (_ BitVec 64) Int) Unit!8110)

(assert (=> b!260885 (= lt!131693 (lemmaInListMapThenSeekEntryOrOpenFindsIt!445 (_keys!6993 thiss!1504) (_values!4792 thiss!1504) (mask!11146 thiss!1504) (extraKeys!4546 thiss!1504) (zeroValue!4650 thiss!1504) (minValue!4650 thiss!1504) key!932 (defaultEntry!4809 thiss!1504)))))

(assert (=> b!260885 false))

(declare-fun b!260886 () Bool)

(declare-fun e!169087 () Bool)

(declare-fun tp_is_empty!6629 () Bool)

(assert (=> b!260886 (= e!169087 tp_is_empty!6629)))

(declare-fun b!260887 () Bool)

(declare-fun call!24889 () Bool)

(assert (=> b!260887 (= e!169083 (not call!24889))))

(declare-fun e!169078 () Bool)

(declare-fun e!169086 () Bool)

(declare-fun array_inv!3933 (array!12614) Bool)

(declare-fun array_inv!3934 (array!12612) Bool)

(assert (=> b!260888 (= e!169078 (and tp!23627 tp_is_empty!6629 (array_inv!3933 (_keys!6993 thiss!1504)) (array_inv!3934 (_values!4792 thiss!1504)) e!169086))))

(declare-fun mapNonEmpty!11298 () Bool)

(declare-fun mapRes!11298 () Bool)

(declare-fun tp!23628 () Bool)

(assert (=> mapNonEmpty!11298 (= mapRes!11298 (and tp!23628 e!169087))))

(declare-fun mapKey!11298 () (_ BitVec 32))

(declare-fun mapValue!11298 () ValueCell!2971)

(declare-fun mapRest!11298 () (Array (_ BitVec 32) ValueCell!2971))

(assert (=> mapNonEmpty!11298 (= (arr!5969 (_values!4792 thiss!1504)) (store mapRest!11298 mapKey!11298 mapValue!11298))))

(declare-fun b!260889 () Bool)

(declare-fun e!169080 () Bool)

(assert (=> b!260889 (= e!169086 (and e!169080 mapRes!11298))))

(declare-fun condMapEmpty!11298 () Bool)

(declare-fun mapDefault!11298 () ValueCell!2971)

