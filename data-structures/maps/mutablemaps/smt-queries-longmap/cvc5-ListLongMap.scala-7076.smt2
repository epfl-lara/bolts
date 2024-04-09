; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89546 () Bool)

(assert start!89546)

(declare-fun b!1026535 () Bool)

(declare-fun b_free!20509 () Bool)

(declare-fun b_next!20509 () Bool)

(assert (=> b!1026535 (= b_free!20509 (not b_next!20509))))

(declare-fun tp!72573 () Bool)

(declare-fun b_and!32773 () Bool)

(assert (=> b!1026535 (= tp!72573 b_and!32773)))

(declare-fun b!1026527 () Bool)

(declare-fun res!687244 () Bool)

(declare-fun e!579176 () Bool)

(assert (=> b!1026527 (=> res!687244 e!579176)))

(declare-datatypes ((V!37179 0))(
  ( (V!37180 (val!12165 Int)) )
))
(declare-datatypes ((ValueCell!11411 0))(
  ( (ValueCellFull!11411 (v!14735 V!37179)) (EmptyCell!11411) )
))
(declare-datatypes ((array!64492 0))(
  ( (array!64493 (arr!31051 (Array (_ BitVec 32) (_ BitVec 64))) (size!31565 (_ BitVec 32))) )
))
(declare-datatypes ((array!64494 0))(
  ( (array!64495 (arr!31052 (Array (_ BitVec 32) ValueCell!11411)) (size!31566 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5416 0))(
  ( (LongMapFixedSize!5417 (defaultEntry!6060 Int) (mask!29753 (_ BitVec 32)) (extraKeys!5792 (_ BitVec 32)) (zeroValue!5896 V!37179) (minValue!5896 V!37179) (_size!2763 (_ BitVec 32)) (_keys!11204 array!64492) (_values!6083 array!64494) (_vacant!2763 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5416)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64492 (_ BitVec 32)) Bool)

(assert (=> b!1026527 (= res!687244 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11204 thiss!1427) (mask!29753 thiss!1427))))))

(declare-fun b!1026528 () Bool)

(assert (=> b!1026528 (= e!579176 true)))

(declare-fun lt!451636 () Bool)

(declare-datatypes ((List!21889 0))(
  ( (Nil!21886) (Cons!21885 (h!23083 (_ BitVec 64)) (t!30958 List!21889)) )
))
(declare-fun arrayNoDuplicates!0 (array!64492 (_ BitVec 32) List!21889) Bool)

(assert (=> b!1026528 (= lt!451636 (arrayNoDuplicates!0 (_keys!11204 thiss!1427) #b00000000000000000000000000000000 Nil!21886))))

(declare-fun b!1026529 () Bool)

(declare-fun e!579171 () Bool)

(declare-fun e!579173 () Bool)

(assert (=> b!1026529 (= e!579171 e!579173)))

(declare-fun res!687245 () Bool)

(assert (=> b!1026529 (=> (not res!687245) (not e!579173))))

(declare-datatypes ((SeekEntryResult!9638 0))(
  ( (MissingZero!9638 (index!40922 (_ BitVec 32))) (Found!9638 (index!40923 (_ BitVec 32))) (Intermediate!9638 (undefined!10450 Bool) (index!40924 (_ BitVec 32)) (x!91311 (_ BitVec 32))) (Undefined!9638) (MissingVacant!9638 (index!40925 (_ BitVec 32))) )
))
(declare-fun lt!451638 () SeekEntryResult!9638)

(assert (=> b!1026529 (= res!687245 (is-Found!9638 lt!451638))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64492 (_ BitVec 32)) SeekEntryResult!9638)

(assert (=> b!1026529 (= lt!451638 (seekEntry!0 key!909 (_keys!11204 thiss!1427) (mask!29753 thiss!1427)))))

(declare-fun b!1026530 () Bool)

(assert (=> b!1026530 (= e!579173 (not e!579176))))

(declare-fun res!687249 () Bool)

(assert (=> b!1026530 (=> res!687249 e!579176)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026530 (= res!687249 (not (validMask!0 (mask!29753 thiss!1427))))))

(declare-fun lt!451634 () array!64492)

(declare-fun arrayContainsKey!0 (array!64492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026530 (not (arrayContainsKey!0 lt!451634 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33408 0))(
  ( (Unit!33409) )
))
(declare-fun lt!451639 () Unit!33408)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64492 (_ BitVec 32) (_ BitVec 64)) Unit!33408)

(assert (=> b!1026530 (= lt!451639 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11204 thiss!1427) (index!40923 lt!451638) key!909))))

(assert (=> b!1026530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451634 (mask!29753 thiss!1427))))

(declare-fun lt!451637 () Unit!33408)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64492 (_ BitVec 32) (_ BitVec 32)) Unit!33408)

(assert (=> b!1026530 (= lt!451637 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11204 thiss!1427) (index!40923 lt!451638) (mask!29753 thiss!1427)))))

(assert (=> b!1026530 (arrayNoDuplicates!0 lt!451634 #b00000000000000000000000000000000 Nil!21886)))

(declare-fun lt!451633 () Unit!33408)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64492 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21889) Unit!33408)

(assert (=> b!1026530 (= lt!451633 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11204 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40923 lt!451638) #b00000000000000000000000000000000 Nil!21886))))

(declare-fun arrayCountValidKeys!0 (array!64492 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026530 (= (arrayCountValidKeys!0 lt!451634 #b00000000000000000000000000000000 (size!31565 (_keys!11204 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11204 thiss!1427) #b00000000000000000000000000000000 (size!31565 (_keys!11204 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026530 (= lt!451634 (array!64493 (store (arr!31051 (_keys!11204 thiss!1427)) (index!40923 lt!451638) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31565 (_keys!11204 thiss!1427))))))

(declare-fun lt!451635 () Unit!33408)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64492 (_ BitVec 32) (_ BitVec 64)) Unit!33408)

(assert (=> b!1026530 (= lt!451635 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11204 thiss!1427) (index!40923 lt!451638) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!687248 () Bool)

(assert (=> start!89546 (=> (not res!687248) (not e!579171))))

(declare-fun valid!2008 (LongMapFixedSize!5416) Bool)

(assert (=> start!89546 (= res!687248 (valid!2008 thiss!1427))))

(assert (=> start!89546 e!579171))

(declare-fun e!579170 () Bool)

(assert (=> start!89546 e!579170))

(assert (=> start!89546 true))

(declare-fun b!1026531 () Bool)

(declare-fun e!579169 () Bool)

(declare-fun tp_is_empty!24229 () Bool)

(assert (=> b!1026531 (= e!579169 tp_is_empty!24229)))

(declare-fun b!1026532 () Bool)

(declare-fun e!579174 () Bool)

(assert (=> b!1026532 (= e!579174 tp_is_empty!24229)))

(declare-fun b!1026533 () Bool)

(declare-fun res!687247 () Bool)

(assert (=> b!1026533 (=> (not res!687247) (not e!579171))))

(assert (=> b!1026533 (= res!687247 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026534 () Bool)

(declare-fun res!687246 () Bool)

(assert (=> b!1026534 (=> res!687246 e!579176)))

(assert (=> b!1026534 (= res!687246 (or (not (= (size!31566 (_values!6083 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29753 thiss!1427)))) (not (= (size!31565 (_keys!11204 thiss!1427)) (size!31566 (_values!6083 thiss!1427)))) (bvslt (mask!29753 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5792 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5792 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun e!579175 () Bool)

(declare-fun array_inv!23897 (array!64492) Bool)

(declare-fun array_inv!23898 (array!64494) Bool)

(assert (=> b!1026535 (= e!579170 (and tp!72573 tp_is_empty!24229 (array_inv!23897 (_keys!11204 thiss!1427)) (array_inv!23898 (_values!6083 thiss!1427)) e!579175))))

(declare-fun mapIsEmpty!37772 () Bool)

(declare-fun mapRes!37772 () Bool)

(assert (=> mapIsEmpty!37772 mapRes!37772))

(declare-fun b!1026536 () Bool)

(assert (=> b!1026536 (= e!579175 (and e!579174 mapRes!37772))))

(declare-fun condMapEmpty!37772 () Bool)

(declare-fun mapDefault!37772 () ValueCell!11411)

