; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90006 () Bool)

(assert start!90006)

(declare-fun b!1030259 () Bool)

(declare-fun b_free!20609 () Bool)

(declare-fun b_next!20609 () Bool)

(assert (=> b!1030259 (= b_free!20609 (not b_next!20609))))

(declare-fun tp!72896 () Bool)

(declare-fun b_and!32997 () Bool)

(assert (=> b!1030259 (= tp!72896 b_and!32997)))

(declare-fun mapIsEmpty!37944 () Bool)

(declare-fun mapRes!37944 () Bool)

(assert (=> mapIsEmpty!37944 mapRes!37944))

(declare-fun b!1030258 () Bool)

(declare-fun res!689059 () Bool)

(declare-fun e!581799 () Bool)

(assert (=> b!1030258 (=> (not res!689059) (not e!581799))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1030258 (= res!689059 (not (= key!909 (bvneg key!909))))))

(declare-datatypes ((V!37311 0))(
  ( (V!37312 (val!12215 Int)) )
))
(declare-datatypes ((ValueCell!11461 0))(
  ( (ValueCellFull!11461 (v!14793 V!37311)) (EmptyCell!11461) )
))
(declare-datatypes ((array!64704 0))(
  ( (array!64705 (arr!31151 (Array (_ BitVec 32) (_ BitVec 64))) (size!31669 (_ BitVec 32))) )
))
(declare-datatypes ((array!64706 0))(
  ( (array!64707 (arr!31152 (Array (_ BitVec 32) ValueCell!11461)) (size!31670 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5516 0))(
  ( (LongMapFixedSize!5517 (defaultEntry!6130 Int) (mask!29899 (_ BitVec 32)) (extraKeys!5862 (_ BitVec 32)) (zeroValue!5966 V!37311) (minValue!5966 V!37311) (_size!2813 (_ BitVec 32)) (_keys!11298 array!64704) (_values!6153 array!64706) (_vacant!2813 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5516)

(declare-fun e!581798 () Bool)

(declare-fun e!581805 () Bool)

(declare-fun tp_is_empty!24329 () Bool)

(declare-fun array_inv!23961 (array!64704) Bool)

(declare-fun array_inv!23962 (array!64706) Bool)

(assert (=> b!1030259 (= e!581805 (and tp!72896 tp_is_empty!24329 (array_inv!23961 (_keys!11298 thiss!1427)) (array_inv!23962 (_values!6153 thiss!1427)) e!581798))))

(declare-fun b!1030260 () Bool)

(declare-fun e!581803 () Bool)

(assert (=> b!1030260 (= e!581803 tp_is_empty!24329)))

(declare-fun b!1030261 () Bool)

(declare-fun e!581800 () Bool)

(declare-fun e!581802 () Bool)

(assert (=> b!1030261 (= e!581800 (not e!581802))))

(declare-fun res!689058 () Bool)

(assert (=> b!1030261 (=> res!689058 e!581802)))

(declare-datatypes ((Unit!33618 0))(
  ( (Unit!33619) )
))
(declare-datatypes ((tuple2!15672 0))(
  ( (tuple2!15673 (_1!7846 Unit!33618) (_2!7846 LongMapFixedSize!5516)) )
))
(declare-fun lt!454430 () tuple2!15672)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030261 (= res!689058 (not (validMask!0 (mask!29899 (_2!7846 lt!454430)))))))

(declare-fun lt!454427 () array!64704)

(declare-fun lt!454428 () array!64706)

(declare-fun Unit!33620 () Unit!33618)

(declare-fun Unit!33621 () Unit!33618)

(assert (=> b!1030261 (= lt!454430 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2813 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15673 Unit!33620 (LongMapFixedSize!5517 (defaultEntry!6130 thiss!1427) (mask!29899 thiss!1427) (extraKeys!5862 thiss!1427) (zeroValue!5966 thiss!1427) (minValue!5966 thiss!1427) (bvsub (_size!2813 thiss!1427) #b00000000000000000000000000000001) lt!454427 lt!454428 (bvadd #b00000000000000000000000000000001 (_vacant!2813 thiss!1427)))) (tuple2!15673 Unit!33621 (LongMapFixedSize!5517 (defaultEntry!6130 thiss!1427) (mask!29899 thiss!1427) (extraKeys!5862 thiss!1427) (zeroValue!5966 thiss!1427) (minValue!5966 thiss!1427) (bvsub (_size!2813 thiss!1427) #b00000000000000000000000000000001) lt!454427 lt!454428 (_vacant!2813 thiss!1427)))))))

(declare-datatypes ((tuple2!15674 0))(
  ( (tuple2!15675 (_1!7847 (_ BitVec 64)) (_2!7847 V!37311)) )
))
(declare-datatypes ((List!21939 0))(
  ( (Nil!21936) (Cons!21935 (h!23137 tuple2!15674) (t!31050 List!21939)) )
))
(declare-datatypes ((ListLongMap!13797 0))(
  ( (ListLongMap!13798 (toList!6914 List!21939)) )
))
(declare-fun -!490 (ListLongMap!13797 (_ BitVec 64)) ListLongMap!13797)

(declare-fun getCurrentListMap!3921 (array!64704 array!64706 (_ BitVec 32) (_ BitVec 32) V!37311 V!37311 (_ BitVec 32) Int) ListLongMap!13797)

(assert (=> b!1030261 (= (-!490 (getCurrentListMap!3921 (_keys!11298 thiss!1427) (_values!6153 thiss!1427) (mask!29899 thiss!1427) (extraKeys!5862 thiss!1427) (zeroValue!5966 thiss!1427) (minValue!5966 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6130 thiss!1427)) key!909) (getCurrentListMap!3921 lt!454427 lt!454428 (mask!29899 thiss!1427) (extraKeys!5862 thiss!1427) (zeroValue!5966 thiss!1427) (minValue!5966 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6130 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9676 0))(
  ( (MissingZero!9676 (index!41074 (_ BitVec 32))) (Found!9676 (index!41075 (_ BitVec 32))) (Intermediate!9676 (undefined!10488 Bool) (index!41076 (_ BitVec 32)) (x!91667 (_ BitVec 32))) (Undefined!9676) (MissingVacant!9676 (index!41077 (_ BitVec 32))) )
))
(declare-fun lt!454431 () SeekEntryResult!9676)

(declare-fun dynLambda!1965 (Int (_ BitVec 64)) V!37311)

(assert (=> b!1030261 (= lt!454428 (array!64707 (store (arr!31152 (_values!6153 thiss!1427)) (index!41075 lt!454431) (ValueCellFull!11461 (dynLambda!1965 (defaultEntry!6130 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31670 (_values!6153 thiss!1427))))))

(declare-fun lt!454432 () Unit!33618)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!14 (array!64704 array!64706 (_ BitVec 32) (_ BitVec 32) V!37311 V!37311 (_ BitVec 32) (_ BitVec 64) Int) Unit!33618)

(assert (=> b!1030261 (= lt!454432 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!14 (_keys!11298 thiss!1427) (_values!6153 thiss!1427) (mask!29899 thiss!1427) (extraKeys!5862 thiss!1427) (zeroValue!5966 thiss!1427) (minValue!5966 thiss!1427) (index!41075 lt!454431) key!909 (defaultEntry!6130 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030261 (not (arrayContainsKey!0 lt!454427 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454425 () Unit!33618)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64704 (_ BitVec 32) (_ BitVec 64)) Unit!33618)

(assert (=> b!1030261 (= lt!454425 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11298 thiss!1427) (index!41075 lt!454431) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64704 (_ BitVec 32)) Bool)

(assert (=> b!1030261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454427 (mask!29899 thiss!1427))))

(declare-fun lt!454424 () Unit!33618)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64704 (_ BitVec 32) (_ BitVec 32)) Unit!33618)

(assert (=> b!1030261 (= lt!454424 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11298 thiss!1427) (index!41075 lt!454431) (mask!29899 thiss!1427)))))

(declare-datatypes ((List!21940 0))(
  ( (Nil!21937) (Cons!21936 (h!23138 (_ BitVec 64)) (t!31051 List!21940)) )
))
(declare-fun arrayNoDuplicates!0 (array!64704 (_ BitVec 32) List!21940) Bool)

(assert (=> b!1030261 (arrayNoDuplicates!0 lt!454427 #b00000000000000000000000000000000 Nil!21937)))

(declare-fun lt!454429 () Unit!33618)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64704 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21940) Unit!33618)

(assert (=> b!1030261 (= lt!454429 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11298 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41075 lt!454431) #b00000000000000000000000000000000 Nil!21937))))

(declare-fun arrayCountValidKeys!0 (array!64704 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030261 (= (arrayCountValidKeys!0 lt!454427 #b00000000000000000000000000000000 (size!31669 (_keys!11298 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11298 thiss!1427) #b00000000000000000000000000000000 (size!31669 (_keys!11298 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030261 (= lt!454427 (array!64705 (store (arr!31151 (_keys!11298 thiss!1427)) (index!41075 lt!454431) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31669 (_keys!11298 thiss!1427))))))

(declare-fun lt!454426 () Unit!33618)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64704 (_ BitVec 32) (_ BitVec 64)) Unit!33618)

(assert (=> b!1030261 (= lt!454426 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11298 thiss!1427) (index!41075 lt!454431) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!689057 () Bool)

(assert (=> start!90006 (=> (not res!689057) (not e!581799))))

(declare-fun valid!2042 (LongMapFixedSize!5516) Bool)

(assert (=> start!90006 (= res!689057 (valid!2042 thiss!1427))))

(assert (=> start!90006 e!581799))

(assert (=> start!90006 e!581805))

(assert (=> start!90006 true))

(declare-fun b!1030262 () Bool)

(declare-fun res!689055 () Bool)

(assert (=> b!1030262 (=> res!689055 e!581802)))

(assert (=> b!1030262 (= res!689055 (or (not (= (size!31670 (_values!6153 (_2!7846 lt!454430))) (bvadd #b00000000000000000000000000000001 (mask!29899 (_2!7846 lt!454430))))) (not (= (size!31669 (_keys!11298 (_2!7846 lt!454430))) (size!31670 (_values!6153 (_2!7846 lt!454430))))) (bvslt (mask!29899 (_2!7846 lt!454430)) #b00000000000000000000000000000000) (bvslt (extraKeys!5862 (_2!7846 lt!454430)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5862 (_2!7846 lt!454430)) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!37944 () Bool)

(declare-fun tp!72895 () Bool)

(assert (=> mapNonEmpty!37944 (= mapRes!37944 (and tp!72895 e!581803))))

(declare-fun mapRest!37944 () (Array (_ BitVec 32) ValueCell!11461))

(declare-fun mapKey!37944 () (_ BitVec 32))

(declare-fun mapValue!37944 () ValueCell!11461)

(assert (=> mapNonEmpty!37944 (= (arr!31152 (_values!6153 thiss!1427)) (store mapRest!37944 mapKey!37944 mapValue!37944))))

(declare-fun b!1030263 () Bool)

(declare-fun e!581801 () Bool)

(assert (=> b!1030263 (= e!581798 (and e!581801 mapRes!37944))))

(declare-fun condMapEmpty!37944 () Bool)

(declare-fun mapDefault!37944 () ValueCell!11461)

