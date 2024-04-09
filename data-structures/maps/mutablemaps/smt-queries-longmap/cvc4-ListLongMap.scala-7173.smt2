; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91694 () Bool)

(assert start!91694)

(declare-fun b!1043405 () Bool)

(declare-fun b_free!21095 () Bool)

(declare-fun b_next!21095 () Bool)

(assert (=> b!1043405 (= b_free!21095 (not b_next!21095))))

(declare-fun tp!74524 () Bool)

(declare-fun b_and!33645 () Bool)

(assert (=> b!1043405 (= tp!74524 b_and!33645)))

(declare-fun mapIsEmpty!38843 () Bool)

(declare-fun mapRes!38843 () Bool)

(assert (=> mapIsEmpty!38843 mapRes!38843))

(declare-fun res!695230 () Bool)

(declare-fun e!591217 () Bool)

(assert (=> start!91694 (=> (not res!695230) (not e!591217))))

(declare-datatypes ((V!37959 0))(
  ( (V!37960 (val!12458 Int)) )
))
(declare-datatypes ((ValueCell!11704 0))(
  ( (ValueCellFull!11704 (v!15050 V!37959)) (EmptyCell!11704) )
))
(declare-datatypes ((array!65776 0))(
  ( (array!65777 (arr!31637 (Array (_ BitVec 32) (_ BitVec 64))) (size!32173 (_ BitVec 32))) )
))
(declare-datatypes ((array!65778 0))(
  ( (array!65779 (arr!31638 (Array (_ BitVec 32) ValueCell!11704)) (size!32174 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6002 0))(
  ( (LongMapFixedSize!6003 (defaultEntry!6383 Int) (mask!30467 (_ BitVec 32)) (extraKeys!6111 (_ BitVec 32)) (zeroValue!6217 V!37959) (minValue!6217 V!37959) (_size!3056 (_ BitVec 32)) (_keys!11638 array!65776) (_values!6406 array!65778) (_vacant!3056 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6002)

(declare-fun valid!2205 (LongMapFixedSize!6002) Bool)

(assert (=> start!91694 (= res!695230 (valid!2205 thiss!1427))))

(assert (=> start!91694 e!591217))

(declare-fun e!591220 () Bool)

(assert (=> start!91694 e!591220))

(assert (=> start!91694 true))

(declare-fun b!1043399 () Bool)

(declare-fun res!695228 () Bool)

(assert (=> b!1043399 (=> (not res!695228) (not e!591217))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1043399 (= res!695228 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1043400 () Bool)

(declare-fun res!695233 () Bool)

(declare-fun e!591216 () Bool)

(assert (=> b!1043400 (=> res!695233 e!591216)))

(assert (=> b!1043400 (= res!695233 (or (not (= (size!32174 (_values!6406 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30467 thiss!1427)))) (not (= (size!32173 (_keys!11638 thiss!1427)) (size!32174 (_values!6406 thiss!1427)))) (bvslt (mask!30467 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6111 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6111 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1043401 () Bool)

(declare-fun e!591221 () Bool)

(assert (=> b!1043401 (= e!591221 (not e!591216))))

(declare-fun res!695229 () Bool)

(assert (=> b!1043401 (=> res!695229 e!591216)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1043401 (= res!695229 (not (validMask!0 (mask!30467 thiss!1427))))))

(declare-fun lt!459926 () array!65776)

(declare-fun arrayContainsKey!0 (array!65776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043401 (not (arrayContainsKey!0 lt!459926 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9829 0))(
  ( (MissingZero!9829 (index!41686 (_ BitVec 32))) (Found!9829 (index!41687 (_ BitVec 32))) (Intermediate!9829 (undefined!10641 Bool) (index!41688 (_ BitVec 32)) (x!93148 (_ BitVec 32))) (Undefined!9829) (MissingVacant!9829 (index!41689 (_ BitVec 32))) )
))
(declare-fun lt!459928 () SeekEntryResult!9829)

(declare-datatypes ((Unit!34068 0))(
  ( (Unit!34069) )
))
(declare-fun lt!459930 () Unit!34068)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65776 (_ BitVec 32) (_ BitVec 64)) Unit!34068)

(assert (=> b!1043401 (= lt!459930 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11638 thiss!1427) (index!41687 lt!459928) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65776 (_ BitVec 32)) Bool)

(assert (=> b!1043401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459926 (mask!30467 thiss!1427))))

(declare-fun lt!459931 () Unit!34068)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65776 (_ BitVec 32) (_ BitVec 32)) Unit!34068)

(assert (=> b!1043401 (= lt!459931 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11638 thiss!1427) (index!41687 lt!459928) (mask!30467 thiss!1427)))))

(declare-datatypes ((List!22115 0))(
  ( (Nil!22112) (Cons!22111 (h!23319 (_ BitVec 64)) (t!31336 List!22115)) )
))
(declare-fun arrayNoDuplicates!0 (array!65776 (_ BitVec 32) List!22115) Bool)

(assert (=> b!1043401 (arrayNoDuplicates!0 lt!459926 #b00000000000000000000000000000000 Nil!22112)))

(declare-fun lt!459932 () Unit!34068)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65776 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22115) Unit!34068)

(assert (=> b!1043401 (= lt!459932 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11638 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41687 lt!459928) #b00000000000000000000000000000000 Nil!22112))))

(declare-fun arrayCountValidKeys!0 (array!65776 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043401 (= (arrayCountValidKeys!0 lt!459926 #b00000000000000000000000000000000 (size!32173 (_keys!11638 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11638 thiss!1427) #b00000000000000000000000000000000 (size!32173 (_keys!11638 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043401 (= lt!459926 (array!65777 (store (arr!31637 (_keys!11638 thiss!1427)) (index!41687 lt!459928) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32173 (_keys!11638 thiss!1427))))))

(declare-fun lt!459929 () Unit!34068)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65776 (_ BitVec 32) (_ BitVec 64)) Unit!34068)

(assert (=> b!1043401 (= lt!459929 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11638 thiss!1427) (index!41687 lt!459928) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043402 () Bool)

(declare-fun e!591223 () Bool)

(declare-fun e!591222 () Bool)

(assert (=> b!1043402 (= e!591223 (and e!591222 mapRes!38843))))

(declare-fun condMapEmpty!38843 () Bool)

(declare-fun mapDefault!38843 () ValueCell!11704)

