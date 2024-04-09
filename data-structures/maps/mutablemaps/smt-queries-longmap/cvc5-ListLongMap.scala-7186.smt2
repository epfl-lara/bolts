; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92032 () Bool)

(assert start!92032)

(declare-fun b!1046210 () Bool)

(declare-fun b_free!21169 () Bool)

(declare-fun b_next!21169 () Bool)

(assert (=> b!1046210 (= b_free!21169 (not b_next!21169))))

(declare-fun tp!74769 () Bool)

(declare-fun b_and!33851 () Bool)

(assert (=> b!1046210 (= tp!74769 b_and!33851)))

(declare-fun b!1046204 () Bool)

(declare-fun e!593208 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!38059 0))(
  ( (V!38060 (val!12495 Int)) )
))
(declare-datatypes ((ValueCell!11741 0))(
  ( (ValueCellFull!11741 (v!15093 V!38059)) (EmptyCell!11741) )
))
(declare-datatypes ((Unit!34192 0))(
  ( (Unit!34193) )
))
(declare-datatypes ((array!65940 0))(
  ( (array!65941 (arr!31711 (Array (_ BitVec 32) (_ BitVec 64))) (size!32247 (_ BitVec 32))) )
))
(declare-datatypes ((array!65942 0))(
  ( (array!65943 (arr!31712 (Array (_ BitVec 32) ValueCell!11741)) (size!32248 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6076 0))(
  ( (LongMapFixedSize!6077 (defaultEntry!6436 Int) (mask!30576 (_ BitVec 32)) (extraKeys!6164 (_ BitVec 32)) (zeroValue!6270 V!38059) (minValue!6270 V!38059) (_size!3093 (_ BitVec 32)) (_keys!11707 array!65940) (_values!6459 array!65942) (_vacant!3093 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15934 0))(
  ( (tuple2!15935 (_1!7977 Unit!34192) (_2!7977 LongMapFixedSize!6076)) )
))
(declare-fun lt!462169 () tuple2!15934)

(assert (=> b!1046204 (= e!593208 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!6164 (_2!7977 lt!462169)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6164 (_2!7977 lt!462169)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1046205 () Bool)

(declare-fun arrayContainsKey!0 (array!65940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1046205 (= e!593208 (arrayContainsKey!0 (_keys!11707 (_2!7977 lt!462169)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1046206 () Bool)

(declare-fun e!593201 () Bool)

(declare-fun tp_is_empty!24889 () Bool)

(assert (=> b!1046206 (= e!593201 tp_is_empty!24889)))

(declare-fun thiss!1427 () LongMapFixedSize!6076)

(declare-fun e!593209 () Bool)

(declare-fun b!1046207 () Bool)

(declare-datatypes ((tuple2!15936 0))(
  ( (tuple2!15937 (_1!7978 (_ BitVec 64)) (_2!7978 V!38059)) )
))
(declare-datatypes ((List!22162 0))(
  ( (Nil!22159) (Cons!22158 (h!23366 tuple2!15936) (t!31469 List!22162)) )
))
(declare-datatypes ((ListLongMap!13921 0))(
  ( (ListLongMap!13922 (toList!6976 List!22162)) )
))
(declare-fun map!14833 (LongMapFixedSize!6076) ListLongMap!13921)

(declare-fun -!552 (ListLongMap!13921 (_ BitVec 64)) ListLongMap!13921)

(assert (=> b!1046207 (= e!593209 (= (map!14833 (_2!7977 lt!462169)) (-!552 (map!14833 thiss!1427) key!909)))))

(declare-fun b!1046208 () Bool)

(declare-fun e!593207 () Bool)

(assert (=> b!1046208 (= e!593207 (not e!593209))))

(declare-fun res!696567 () Bool)

(assert (=> b!1046208 (=> (not res!696567) (not e!593209))))

(declare-fun valid!2234 (LongMapFixedSize!6076) Bool)

(assert (=> b!1046208 (= res!696567 (valid!2234 (_2!7977 lt!462169)))))

(declare-fun lt!462166 () Unit!34192)

(declare-fun e!593204 () Unit!34192)

(assert (=> b!1046208 (= lt!462166 e!593204)))

(declare-fun c!106324 () Bool)

(declare-fun contains!6111 (ListLongMap!13921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3982 (array!65940 array!65942 (_ BitVec 32) (_ BitVec 32) V!38059 V!38059 (_ BitVec 32) Int) ListLongMap!13921)

(assert (=> b!1046208 (= c!106324 (contains!6111 (getCurrentListMap!3982 (_keys!11707 (_2!7977 lt!462169)) (_values!6459 (_2!7977 lt!462169)) (mask!30576 (_2!7977 lt!462169)) (extraKeys!6164 (_2!7977 lt!462169)) (zeroValue!6270 (_2!7977 lt!462169)) (minValue!6270 (_2!7977 lt!462169)) #b00000000000000000000000000000000 (defaultEntry!6436 (_2!7977 lt!462169))) key!909))))

(declare-fun lt!462168 () array!65942)

(declare-fun lt!462167 () array!65940)

(declare-fun Unit!34194 () Unit!34192)

(declare-fun Unit!34195 () Unit!34192)

(assert (=> b!1046208 (= lt!462169 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3093 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15935 Unit!34194 (LongMapFixedSize!6077 (defaultEntry!6436 thiss!1427) (mask!30576 thiss!1427) (extraKeys!6164 thiss!1427) (zeroValue!6270 thiss!1427) (minValue!6270 thiss!1427) (bvsub (_size!3093 thiss!1427) #b00000000000000000000000000000001) lt!462167 lt!462168 (bvadd #b00000000000000000000000000000001 (_vacant!3093 thiss!1427)))) (tuple2!15935 Unit!34195 (LongMapFixedSize!6077 (defaultEntry!6436 thiss!1427) (mask!30576 thiss!1427) (extraKeys!6164 thiss!1427) (zeroValue!6270 thiss!1427) (minValue!6270 thiss!1427) (bvsub (_size!3093 thiss!1427) #b00000000000000000000000000000001) lt!462167 lt!462168 (_vacant!3093 thiss!1427)))))))

(assert (=> b!1046208 (= (-!552 (getCurrentListMap!3982 (_keys!11707 thiss!1427) (_values!6459 thiss!1427) (mask!30576 thiss!1427) (extraKeys!6164 thiss!1427) (zeroValue!6270 thiss!1427) (minValue!6270 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6436 thiss!1427)) key!909) (getCurrentListMap!3982 lt!462167 lt!462168 (mask!30576 thiss!1427) (extraKeys!6164 thiss!1427) (zeroValue!6270 thiss!1427) (minValue!6270 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6436 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9858 0))(
  ( (MissingZero!9858 (index!41802 (_ BitVec 32))) (Found!9858 (index!41803 (_ BitVec 32))) (Intermediate!9858 (undefined!10670 Bool) (index!41804 (_ BitVec 32)) (x!93483 (_ BitVec 32))) (Undefined!9858) (MissingVacant!9858 (index!41805 (_ BitVec 32))) )
))
(declare-fun lt!462165 () SeekEntryResult!9858)

(declare-fun dynLambda!2026 (Int (_ BitVec 64)) V!38059)

(assert (=> b!1046208 (= lt!462168 (array!65943 (store (arr!31712 (_values!6459 thiss!1427)) (index!41803 lt!462165) (ValueCellFull!11741 (dynLambda!2026 (defaultEntry!6436 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32248 (_values!6459 thiss!1427))))))

(declare-fun lt!462164 () Unit!34192)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!72 (array!65940 array!65942 (_ BitVec 32) (_ BitVec 32) V!38059 V!38059 (_ BitVec 32) (_ BitVec 64) Int) Unit!34192)

(assert (=> b!1046208 (= lt!462164 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!72 (_keys!11707 thiss!1427) (_values!6459 thiss!1427) (mask!30576 thiss!1427) (extraKeys!6164 thiss!1427) (zeroValue!6270 thiss!1427) (minValue!6270 thiss!1427) (index!41803 lt!462165) key!909 (defaultEntry!6436 thiss!1427)))))

(assert (=> b!1046208 (not (arrayContainsKey!0 lt!462167 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!462170 () Unit!34192)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65940 (_ BitVec 32) (_ BitVec 64)) Unit!34192)

(assert (=> b!1046208 (= lt!462170 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11707 thiss!1427) (index!41803 lt!462165) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65940 (_ BitVec 32)) Bool)

(assert (=> b!1046208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!462167 (mask!30576 thiss!1427))))

(declare-fun lt!462162 () Unit!34192)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65940 (_ BitVec 32) (_ BitVec 32)) Unit!34192)

(assert (=> b!1046208 (= lt!462162 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11707 thiss!1427) (index!41803 lt!462165) (mask!30576 thiss!1427)))))

(declare-datatypes ((List!22163 0))(
  ( (Nil!22160) (Cons!22159 (h!23367 (_ BitVec 64)) (t!31470 List!22163)) )
))
(declare-fun arrayNoDuplicates!0 (array!65940 (_ BitVec 32) List!22163) Bool)

(assert (=> b!1046208 (arrayNoDuplicates!0 lt!462167 #b00000000000000000000000000000000 Nil!22160)))

(declare-fun lt!462171 () Unit!34192)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65940 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22163) Unit!34192)

(assert (=> b!1046208 (= lt!462171 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11707 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41803 lt!462165) #b00000000000000000000000000000000 Nil!22160))))

(declare-fun arrayCountValidKeys!0 (array!65940 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1046208 (= (arrayCountValidKeys!0 lt!462167 #b00000000000000000000000000000000 (size!32247 (_keys!11707 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11707 thiss!1427) #b00000000000000000000000000000000 (size!32247 (_keys!11707 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1046208 (= lt!462167 (array!65941 (store (arr!31711 (_keys!11707 thiss!1427)) (index!41803 lt!462165) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32247 (_keys!11707 thiss!1427))))))

(declare-fun lt!462163 () Unit!34192)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65940 (_ BitVec 32) (_ BitVec 64)) Unit!34192)

(assert (=> b!1046208 (= lt!462163 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11707 thiss!1427) (index!41803 lt!462165) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1046209 () Bool)

(declare-fun e!593200 () Bool)

(assert (=> b!1046209 (= e!593200 tp_is_empty!24889)))

(declare-fun e!593203 () Bool)

(declare-fun e!593199 () Bool)

(declare-fun array_inv!24335 (array!65940) Bool)

(declare-fun array_inv!24336 (array!65942) Bool)

(assert (=> b!1046210 (= e!593203 (and tp!74769 tp_is_empty!24889 (array_inv!24335 (_keys!11707 thiss!1427)) (array_inv!24336 (_values!6459 thiss!1427)) e!593199))))

(declare-fun b!1046211 () Bool)

(declare-fun res!696570 () Bool)

(declare-fun e!593202 () Bool)

(assert (=> b!1046211 (=> (not res!696570) (not e!593202))))

(assert (=> b!1046211 (= res!696570 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38978 () Bool)

(declare-fun mapRes!38978 () Bool)

(declare-fun tp!74770 () Bool)

(assert (=> mapNonEmpty!38978 (= mapRes!38978 (and tp!74770 e!593201))))

(declare-fun mapValue!38978 () ValueCell!11741)

(declare-fun mapRest!38978 () (Array (_ BitVec 32) ValueCell!11741))

(declare-fun mapKey!38978 () (_ BitVec 32))

(assert (=> mapNonEmpty!38978 (= (arr!31712 (_values!6459 thiss!1427)) (store mapRest!38978 mapKey!38978 mapValue!38978))))

(declare-fun res!696569 () Bool)

(assert (=> start!92032 (=> (not res!696569) (not e!593202))))

(assert (=> start!92032 (= res!696569 (valid!2234 thiss!1427))))

(assert (=> start!92032 e!593202))

(assert (=> start!92032 e!593203))

(assert (=> start!92032 true))

(declare-fun mapIsEmpty!38978 () Bool)

(assert (=> mapIsEmpty!38978 mapRes!38978))

(declare-fun b!1046212 () Bool)

(declare-fun e!593206 () Bool)

(assert (=> b!1046212 (= e!593206 false)))

(declare-fun b!1046213 () Bool)

(assert (=> b!1046213 (= e!593199 (and e!593200 mapRes!38978))))

(declare-fun condMapEmpty!38978 () Bool)

(declare-fun mapDefault!38978 () ValueCell!11741)

