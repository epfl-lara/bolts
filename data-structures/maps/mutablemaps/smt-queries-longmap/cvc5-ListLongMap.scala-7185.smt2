; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92026 () Bool)

(assert start!92026)

(declare-fun b!1046106 () Bool)

(declare-fun b_free!21163 () Bool)

(declare-fun b_next!21163 () Bool)

(assert (=> b!1046106 (= b_free!21163 (not b_next!21163))))

(declare-fun tp!74751 () Bool)

(declare-fun b_and!33839 () Bool)

(assert (=> b!1046106 (= tp!74751 b_and!33839)))

(declare-fun b!1046102 () Bool)

(declare-fun e!593122 () Bool)

(declare-fun tp_is_empty!24883 () Bool)

(assert (=> b!1046102 (= e!593122 tp_is_empty!24883)))

(declare-fun mapIsEmpty!38969 () Bool)

(declare-fun mapRes!38969 () Bool)

(assert (=> mapIsEmpty!38969 mapRes!38969))

(declare-fun b!1046103 () Bool)

(declare-fun e!593117 () Bool)

(declare-datatypes ((V!38051 0))(
  ( (V!38052 (val!12492 Int)) )
))
(declare-datatypes ((ValueCell!11738 0))(
  ( (ValueCellFull!11738 (v!15090 V!38051)) (EmptyCell!11738) )
))
(declare-datatypes ((Unit!34180 0))(
  ( (Unit!34181) )
))
(declare-datatypes ((array!65928 0))(
  ( (array!65929 (arr!31705 (Array (_ BitVec 32) (_ BitVec 64))) (size!32241 (_ BitVec 32))) )
))
(declare-datatypes ((array!65930 0))(
  ( (array!65931 (arr!31706 (Array (_ BitVec 32) ValueCell!11738)) (size!32242 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6070 0))(
  ( (LongMapFixedSize!6071 (defaultEntry!6433 Int) (mask!30571 (_ BitVec 32)) (extraKeys!6161 (_ BitVec 32)) (zeroValue!6267 V!38051) (minValue!6267 V!38051) (_size!3090 (_ BitVec 32)) (_keys!11704 array!65928) (_values!6456 array!65930) (_vacant!3090 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15922 0))(
  ( (tuple2!15923 (_1!7971 Unit!34180) (_2!7971 LongMapFixedSize!6070)) )
))
(declare-fun lt!462071 () tuple2!15922)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1046103 (= e!593117 (arrayContainsKey!0 (_keys!11704 (_2!7971 lt!462071)) key!909 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!38969 () Bool)

(declare-fun tp!74752 () Bool)

(assert (=> mapNonEmpty!38969 (= mapRes!38969 (and tp!74752 e!593122))))

(declare-fun thiss!1427 () LongMapFixedSize!6070)

(declare-fun mapRest!38969 () (Array (_ BitVec 32) ValueCell!11738))

(declare-fun mapValue!38969 () ValueCell!11738)

(declare-fun mapKey!38969 () (_ BitVec 32))

(assert (=> mapNonEmpty!38969 (= (arr!31706 (_values!6456 thiss!1427)) (store mapRest!38969 mapKey!38969 mapValue!38969))))

(declare-fun b!1046104 () Bool)

(declare-fun res!696531 () Bool)

(declare-fun e!593115 () Bool)

(assert (=> b!1046104 (=> (not res!696531) (not e!593115))))

(assert (=> b!1046104 (= res!696531 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1046105 () Bool)

(declare-fun e!593116 () Bool)

(declare-fun e!593114 () Bool)

(assert (=> b!1046105 (= e!593116 (not e!593114))))

(declare-fun res!696529 () Bool)

(assert (=> b!1046105 (=> res!696529 e!593114)))

(declare-datatypes ((tuple2!15924 0))(
  ( (tuple2!15925 (_1!7972 (_ BitVec 64)) (_2!7972 V!38051)) )
))
(declare-datatypes ((List!22156 0))(
  ( (Nil!22153) (Cons!22152 (h!23360 tuple2!15924) (t!31457 List!22156)) )
))
(declare-datatypes ((ListLongMap!13915 0))(
  ( (ListLongMap!13916 (toList!6973 List!22156)) )
))
(declare-fun contains!6108 (ListLongMap!13915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3979 (array!65928 array!65930 (_ BitVec 32) (_ BitVec 32) V!38051 V!38051 (_ BitVec 32) Int) ListLongMap!13915)

(assert (=> b!1046105 (= res!696529 (not (contains!6108 (getCurrentListMap!3979 (_keys!11704 (_2!7971 lt!462071)) (_values!6456 (_2!7971 lt!462071)) (mask!30571 (_2!7971 lt!462071)) (extraKeys!6161 (_2!7971 lt!462071)) (zeroValue!6267 (_2!7971 lt!462071)) (minValue!6267 (_2!7971 lt!462071)) #b00000000000000000000000000000000 (defaultEntry!6433 (_2!7971 lt!462071))) key!909)))))

(declare-fun lt!462077 () array!65930)

(declare-fun lt!462070 () array!65928)

(declare-fun Unit!34182 () Unit!34180)

(declare-fun Unit!34183 () Unit!34180)

(assert (=> b!1046105 (= lt!462071 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3090 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15923 Unit!34182 (LongMapFixedSize!6071 (defaultEntry!6433 thiss!1427) (mask!30571 thiss!1427) (extraKeys!6161 thiss!1427) (zeroValue!6267 thiss!1427) (minValue!6267 thiss!1427) (bvsub (_size!3090 thiss!1427) #b00000000000000000000000000000001) lt!462070 lt!462077 (bvadd #b00000000000000000000000000000001 (_vacant!3090 thiss!1427)))) (tuple2!15923 Unit!34183 (LongMapFixedSize!6071 (defaultEntry!6433 thiss!1427) (mask!30571 thiss!1427) (extraKeys!6161 thiss!1427) (zeroValue!6267 thiss!1427) (minValue!6267 thiss!1427) (bvsub (_size!3090 thiss!1427) #b00000000000000000000000000000001) lt!462070 lt!462077 (_vacant!3090 thiss!1427)))))))

(declare-fun -!549 (ListLongMap!13915 (_ BitVec 64)) ListLongMap!13915)

(assert (=> b!1046105 (= (-!549 (getCurrentListMap!3979 (_keys!11704 thiss!1427) (_values!6456 thiss!1427) (mask!30571 thiss!1427) (extraKeys!6161 thiss!1427) (zeroValue!6267 thiss!1427) (minValue!6267 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6433 thiss!1427)) key!909) (getCurrentListMap!3979 lt!462070 lt!462077 (mask!30571 thiss!1427) (extraKeys!6161 thiss!1427) (zeroValue!6267 thiss!1427) (minValue!6267 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6433 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9855 0))(
  ( (MissingZero!9855 (index!41790 (_ BitVec 32))) (Found!9855 (index!41791 (_ BitVec 32))) (Intermediate!9855 (undefined!10667 Bool) (index!41792 (_ BitVec 32)) (x!93466 (_ BitVec 32))) (Undefined!9855) (MissingVacant!9855 (index!41793 (_ BitVec 32))) )
))
(declare-fun lt!462072 () SeekEntryResult!9855)

(declare-fun dynLambda!2023 (Int (_ BitVec 64)) V!38051)

(assert (=> b!1046105 (= lt!462077 (array!65931 (store (arr!31706 (_values!6456 thiss!1427)) (index!41791 lt!462072) (ValueCellFull!11738 (dynLambda!2023 (defaultEntry!6433 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32242 (_values!6456 thiss!1427))))))

(declare-fun lt!462078 () Unit!34180)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!69 (array!65928 array!65930 (_ BitVec 32) (_ BitVec 32) V!38051 V!38051 (_ BitVec 32) (_ BitVec 64) Int) Unit!34180)

(assert (=> b!1046105 (= lt!462078 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!69 (_keys!11704 thiss!1427) (_values!6456 thiss!1427) (mask!30571 thiss!1427) (extraKeys!6161 thiss!1427) (zeroValue!6267 thiss!1427) (minValue!6267 thiss!1427) (index!41791 lt!462072) key!909 (defaultEntry!6433 thiss!1427)))))

(assert (=> b!1046105 (not (arrayContainsKey!0 lt!462070 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!462075 () Unit!34180)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65928 (_ BitVec 32) (_ BitVec 64)) Unit!34180)

(assert (=> b!1046105 (= lt!462075 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11704 thiss!1427) (index!41791 lt!462072) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65928 (_ BitVec 32)) Bool)

(assert (=> b!1046105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!462070 (mask!30571 thiss!1427))))

(declare-fun lt!462073 () Unit!34180)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65928 (_ BitVec 32) (_ BitVec 32)) Unit!34180)

(assert (=> b!1046105 (= lt!462073 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11704 thiss!1427) (index!41791 lt!462072) (mask!30571 thiss!1427)))))

(declare-datatypes ((List!22157 0))(
  ( (Nil!22154) (Cons!22153 (h!23361 (_ BitVec 64)) (t!31458 List!22157)) )
))
(declare-fun arrayNoDuplicates!0 (array!65928 (_ BitVec 32) List!22157) Bool)

(assert (=> b!1046105 (arrayNoDuplicates!0 lt!462070 #b00000000000000000000000000000000 Nil!22154)))

(declare-fun lt!462076 () Unit!34180)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65928 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22157) Unit!34180)

(assert (=> b!1046105 (= lt!462076 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11704 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41791 lt!462072) #b00000000000000000000000000000000 Nil!22154))))

(declare-fun arrayCountValidKeys!0 (array!65928 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1046105 (= (arrayCountValidKeys!0 lt!462070 #b00000000000000000000000000000000 (size!32241 (_keys!11704 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11704 thiss!1427) #b00000000000000000000000000000000 (size!32241 (_keys!11704 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1046105 (= lt!462070 (array!65929 (store (arr!31705 (_keys!11704 thiss!1427)) (index!41791 lt!462072) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32241 (_keys!11704 thiss!1427))))))

(declare-fun lt!462074 () Unit!34180)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65928 (_ BitVec 32) (_ BitVec 64)) Unit!34180)

(assert (=> b!1046105 (= lt!462074 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11704 thiss!1427) (index!41791 lt!462072) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!696532 () Bool)

(assert (=> start!92026 (=> (not res!696532) (not e!593115))))

(declare-fun valid!2231 (LongMapFixedSize!6070) Bool)

(assert (=> start!92026 (= res!696532 (valid!2231 thiss!1427))))

(assert (=> start!92026 e!593115))

(declare-fun e!593120 () Bool)

(assert (=> start!92026 e!593120))

(assert (=> start!92026 true))

(declare-fun e!593119 () Bool)

(declare-fun array_inv!24329 (array!65928) Bool)

(declare-fun array_inv!24330 (array!65930) Bool)

(assert (=> b!1046106 (= e!593120 (and tp!74751 tp_is_empty!24883 (array_inv!24329 (_keys!11704 thiss!1427)) (array_inv!24330 (_values!6456 thiss!1427)) e!593119))))

(declare-fun b!1046107 () Bool)

(assert (=> b!1046107 (= e!593117 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!6161 (_2!7971 lt!462071)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6161 (_2!7971 lt!462071)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1046108 () Bool)

(declare-fun e!593121 () Bool)

(assert (=> b!1046108 (= e!593119 (and e!593121 mapRes!38969))))

(declare-fun condMapEmpty!38969 () Bool)

(declare-fun mapDefault!38969 () ValueCell!11738)

