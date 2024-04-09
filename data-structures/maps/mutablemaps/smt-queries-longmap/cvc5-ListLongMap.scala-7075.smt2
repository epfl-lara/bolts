; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89540 () Bool)

(assert start!89540)

(declare-fun b!1026444 () Bool)

(declare-fun b_free!20503 () Bool)

(declare-fun b_next!20503 () Bool)

(assert (=> b!1026444 (= b_free!20503 (not b_next!20503))))

(declare-fun tp!72556 () Bool)

(declare-fun b_and!32767 () Bool)

(assert (=> b!1026444 (= tp!72556 b_and!32767)))

(declare-fun mapIsEmpty!37763 () Bool)

(declare-fun mapRes!37763 () Bool)

(assert (=> mapIsEmpty!37763 mapRes!37763))

(declare-fun b!1026437 () Bool)

(declare-fun e!579097 () Bool)

(declare-fun tp_is_empty!24223 () Bool)

(assert (=> b!1026437 (= e!579097 tp_is_empty!24223)))

(declare-fun mapNonEmpty!37763 () Bool)

(declare-fun tp!72555 () Bool)

(declare-fun e!579103 () Bool)

(assert (=> mapNonEmpty!37763 (= mapRes!37763 (and tp!72555 e!579103))))

(declare-fun mapKey!37763 () (_ BitVec 32))

(declare-datatypes ((V!37171 0))(
  ( (V!37172 (val!12162 Int)) )
))
(declare-datatypes ((ValueCell!11408 0))(
  ( (ValueCellFull!11408 (v!14732 V!37171)) (EmptyCell!11408) )
))
(declare-fun mapValue!37763 () ValueCell!11408)

(declare-datatypes ((array!64480 0))(
  ( (array!64481 (arr!31045 (Array (_ BitVec 32) (_ BitVec 64))) (size!31559 (_ BitVec 32))) )
))
(declare-datatypes ((array!64482 0))(
  ( (array!64483 (arr!31046 (Array (_ BitVec 32) ValueCell!11408)) (size!31560 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5410 0))(
  ( (LongMapFixedSize!5411 (defaultEntry!6057 Int) (mask!29748 (_ BitVec 32)) (extraKeys!5789 (_ BitVec 32)) (zeroValue!5893 V!37171) (minValue!5893 V!37171) (_size!2760 (_ BitVec 32)) (_keys!11201 array!64480) (_values!6080 array!64482) (_vacant!2760 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5410)

(declare-fun mapRest!37763 () (Array (_ BitVec 32) ValueCell!11408))

(assert (=> mapNonEmpty!37763 (= (arr!31046 (_values!6080 thiss!1427)) (store mapRest!37763 mapKey!37763 mapValue!37763))))

(declare-fun b!1026438 () Bool)

(declare-fun e!579100 () Bool)

(declare-fun e!579098 () Bool)

(assert (=> b!1026438 (= e!579100 (not e!579098))))

(declare-fun res!687194 () Bool)

(assert (=> b!1026438 (=> res!687194 e!579098)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026438 (= res!687194 (not (validMask!0 (mask!29748 thiss!1427))))))

(declare-fun lt!451573 () array!64480)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026438 (not (arrayContainsKey!0 lt!451573 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9635 0))(
  ( (MissingZero!9635 (index!40910 (_ BitVec 32))) (Found!9635 (index!40911 (_ BitVec 32))) (Intermediate!9635 (undefined!10447 Bool) (index!40912 (_ BitVec 32)) (x!91300 (_ BitVec 32))) (Undefined!9635) (MissingVacant!9635 (index!40913 (_ BitVec 32))) )
))
(declare-fun lt!451570 () SeekEntryResult!9635)

(declare-datatypes ((Unit!33402 0))(
  ( (Unit!33403) )
))
(declare-fun lt!451574 () Unit!33402)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64480 (_ BitVec 32) (_ BitVec 64)) Unit!33402)

(assert (=> b!1026438 (= lt!451574 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11201 thiss!1427) (index!40911 lt!451570) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64480 (_ BitVec 32)) Bool)

(assert (=> b!1026438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451573 (mask!29748 thiss!1427))))

(declare-fun lt!451575 () Unit!33402)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64480 (_ BitVec 32) (_ BitVec 32)) Unit!33402)

(assert (=> b!1026438 (= lt!451575 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11201 thiss!1427) (index!40911 lt!451570) (mask!29748 thiss!1427)))))

(declare-datatypes ((List!21886 0))(
  ( (Nil!21883) (Cons!21882 (h!23080 (_ BitVec 64)) (t!30955 List!21886)) )
))
(declare-fun arrayNoDuplicates!0 (array!64480 (_ BitVec 32) List!21886) Bool)

(assert (=> b!1026438 (arrayNoDuplicates!0 lt!451573 #b00000000000000000000000000000000 Nil!21883)))

(declare-fun lt!451571 () Unit!33402)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64480 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21886) Unit!33402)

(assert (=> b!1026438 (= lt!451571 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11201 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40911 lt!451570) #b00000000000000000000000000000000 Nil!21883))))

(declare-fun arrayCountValidKeys!0 (array!64480 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026438 (= (arrayCountValidKeys!0 lt!451573 #b00000000000000000000000000000000 (size!31559 (_keys!11201 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11201 thiss!1427) #b00000000000000000000000000000000 (size!31559 (_keys!11201 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026438 (= lt!451573 (array!64481 (store (arr!31045 (_keys!11201 thiss!1427)) (index!40911 lt!451570) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31559 (_keys!11201 thiss!1427))))))

(declare-fun lt!451572 () Unit!33402)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64480 (_ BitVec 32) (_ BitVec 64)) Unit!33402)

(assert (=> b!1026438 (= lt!451572 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11201 thiss!1427) (index!40911 lt!451570) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026439 () Bool)

(declare-fun e!579102 () Bool)

(assert (=> b!1026439 (= e!579102 e!579100)))

(declare-fun res!687193 () Bool)

(assert (=> b!1026439 (=> (not res!687193) (not e!579100))))

(assert (=> b!1026439 (= res!687193 (is-Found!9635 lt!451570))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64480 (_ BitVec 32)) SeekEntryResult!9635)

(assert (=> b!1026439 (= lt!451570 (seekEntry!0 key!909 (_keys!11201 thiss!1427) (mask!29748 thiss!1427)))))

(declare-fun b!1026440 () Bool)

(declare-fun res!687192 () Bool)

(assert (=> b!1026440 (=> res!687192 e!579098)))

(assert (=> b!1026440 (= res!687192 (or (not (= (size!31560 (_values!6080 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29748 thiss!1427)))) (not (= (size!31559 (_keys!11201 thiss!1427)) (size!31560 (_values!6080 thiss!1427)))) (bvslt (mask!29748 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5789 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5789 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun res!687190 () Bool)

(assert (=> start!89540 (=> (not res!687190) (not e!579102))))

(declare-fun valid!2005 (LongMapFixedSize!5410) Bool)

(assert (=> start!89540 (= res!687190 (valid!2005 thiss!1427))))

(assert (=> start!89540 e!579102))

(declare-fun e!579104 () Bool)

(assert (=> start!89540 e!579104))

(assert (=> start!89540 true))

(declare-fun b!1026441 () Bool)

(declare-fun res!687195 () Bool)

(assert (=> b!1026441 (=> (not res!687195) (not e!579102))))

(assert (=> b!1026441 (= res!687195 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026442 () Bool)

(declare-fun res!687191 () Bool)

(assert (=> b!1026442 (=> res!687191 e!579098)))

(assert (=> b!1026442 (= res!687191 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11201 thiss!1427) (mask!29748 thiss!1427))))))

(declare-fun b!1026443 () Bool)

(assert (=> b!1026443 (= e!579098 true)))

(declare-fun lt!451576 () Bool)

(assert (=> b!1026443 (= lt!451576 (arrayNoDuplicates!0 (_keys!11201 thiss!1427) #b00000000000000000000000000000000 Nil!21883))))

(declare-fun e!579101 () Bool)

(declare-fun array_inv!23891 (array!64480) Bool)

(declare-fun array_inv!23892 (array!64482) Bool)

(assert (=> b!1026444 (= e!579104 (and tp!72556 tp_is_empty!24223 (array_inv!23891 (_keys!11201 thiss!1427)) (array_inv!23892 (_values!6080 thiss!1427)) e!579101))))

(declare-fun b!1026445 () Bool)

(assert (=> b!1026445 (= e!579101 (and e!579097 mapRes!37763))))

(declare-fun condMapEmpty!37763 () Bool)

(declare-fun mapDefault!37763 () ValueCell!11408)

