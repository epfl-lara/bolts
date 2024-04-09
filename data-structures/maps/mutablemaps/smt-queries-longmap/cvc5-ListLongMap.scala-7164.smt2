; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91376 () Bool)

(assert start!91376)

(declare-fun b!1041402 () Bool)

(declare-fun b_free!21037 () Bool)

(declare-fun b_next!21037 () Bool)

(assert (=> b!1041402 (= b_free!21037 (not b_next!21037))))

(declare-fun tp!74323 () Bool)

(declare-fun b_and!33587 () Bool)

(assert (=> b!1041402 (= tp!74323 b_and!33587)))

(declare-fun b!1041398 () Bool)

(declare-fun e!589791 () Bool)

(declare-fun e!589795 () Bool)

(assert (=> b!1041398 (= e!589791 (not e!589795))))

(declare-fun res!694183 () Bool)

(assert (=> b!1041398 (=> res!694183 e!589795)))

(declare-datatypes ((V!37883 0))(
  ( (V!37884 (val!12429 Int)) )
))
(declare-datatypes ((ValueCell!11675 0))(
  ( (ValueCellFull!11675 (v!15019 V!37883)) (EmptyCell!11675) )
))
(declare-datatypes ((array!65644 0))(
  ( (array!65645 (arr!31579 (Array (_ BitVec 32) (_ BitVec 64))) (size!32113 (_ BitVec 32))) )
))
(declare-datatypes ((array!65646 0))(
  ( (array!65647 (arr!31580 (Array (_ BitVec 32) ValueCell!11675)) (size!32114 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5944 0))(
  ( (LongMapFixedSize!5945 (defaultEntry!6354 Int) (mask!30378 (_ BitVec 32)) (extraKeys!6082 (_ BitVec 32)) (zeroValue!6188 V!37883) (minValue!6188 V!37883) (_size!3027 (_ BitVec 32)) (_keys!11587 array!65644) (_values!6377 array!65646) (_vacant!3027 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5944)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041398 (= res!694183 (not (validMask!0 (mask!30378 thiss!1427))))))

(declare-fun lt!458989 () array!65644)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041398 (not (arrayContainsKey!0 lt!458989 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9806 0))(
  ( (MissingZero!9806 (index!41594 (_ BitVec 32))) (Found!9806 (index!41595 (_ BitVec 32))) (Intermediate!9806 (undefined!10618 Bool) (index!41596 (_ BitVec 32)) (x!92971 (_ BitVec 32))) (Undefined!9806) (MissingVacant!9806 (index!41597 (_ BitVec 32))) )
))
(declare-fun lt!458991 () SeekEntryResult!9806)

(declare-datatypes ((Unit!34028 0))(
  ( (Unit!34029) )
))
(declare-fun lt!458986 () Unit!34028)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65644 (_ BitVec 32) (_ BitVec 64)) Unit!34028)

(assert (=> b!1041398 (= lt!458986 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11587 thiss!1427) (index!41595 lt!458991) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65644 (_ BitVec 32)) Bool)

(assert (=> b!1041398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458989 (mask!30378 thiss!1427))))

(declare-fun lt!458990 () Unit!34028)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65644 (_ BitVec 32) (_ BitVec 32)) Unit!34028)

(assert (=> b!1041398 (= lt!458990 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11587 thiss!1427) (index!41595 lt!458991) (mask!30378 thiss!1427)))))

(declare-datatypes ((List!22090 0))(
  ( (Nil!22087) (Cons!22086 (h!23292 (_ BitVec 64)) (t!31311 List!22090)) )
))
(declare-fun arrayNoDuplicates!0 (array!65644 (_ BitVec 32) List!22090) Bool)

(assert (=> b!1041398 (arrayNoDuplicates!0 lt!458989 #b00000000000000000000000000000000 Nil!22087)))

(declare-fun lt!458988 () Unit!34028)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65644 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22090) Unit!34028)

(assert (=> b!1041398 (= lt!458988 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11587 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41595 lt!458991) #b00000000000000000000000000000000 Nil!22087))))

(declare-fun arrayCountValidKeys!0 (array!65644 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041398 (= (arrayCountValidKeys!0 lt!458989 #b00000000000000000000000000000000 (size!32113 (_keys!11587 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11587 thiss!1427) #b00000000000000000000000000000000 (size!32113 (_keys!11587 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041398 (= lt!458989 (array!65645 (store (arr!31579 (_keys!11587 thiss!1427)) (index!41595 lt!458991) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32113 (_keys!11587 thiss!1427))))))

(declare-fun lt!458987 () Unit!34028)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65644 (_ BitVec 32) (_ BitVec 64)) Unit!34028)

(assert (=> b!1041398 (= lt!458987 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11587 thiss!1427) (index!41595 lt!458991) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!694185 () Bool)

(declare-fun e!589793 () Bool)

(assert (=> start!91376 (=> (not res!694185) (not e!589793))))

(declare-fun valid!2185 (LongMapFixedSize!5944) Bool)

(assert (=> start!91376 (= res!694185 (valid!2185 thiss!1427))))

(assert (=> start!91376 e!589793))

(declare-fun e!589794 () Bool)

(assert (=> start!91376 e!589794))

(assert (=> start!91376 true))

(declare-fun b!1041399 () Bool)

(declare-fun e!589798 () Bool)

(declare-fun e!589792 () Bool)

(declare-fun mapRes!38730 () Bool)

(assert (=> b!1041399 (= e!589798 (and e!589792 mapRes!38730))))

(declare-fun condMapEmpty!38730 () Bool)

(declare-fun mapDefault!38730 () ValueCell!11675)

