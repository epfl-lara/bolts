; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90972 () Bool)

(assert start!90972)

(declare-fun b!1038959 () Bool)

(declare-fun b_free!20963 () Bool)

(declare-fun b_next!20963 () Bool)

(assert (=> b!1038959 (= b_free!20963 (not b_next!20963))))

(declare-fun tp!74061 () Bool)

(declare-fun b_and!33513 () Bool)

(assert (=> b!1038959 (= tp!74061 b_and!33513)))

(declare-fun b!1038957 () Bool)

(declare-fun e!588016 () Bool)

(declare-fun e!588015 () Bool)

(assert (=> b!1038957 (= e!588016 e!588015)))

(declare-fun res!693041 () Bool)

(assert (=> b!1038957 (=> (not res!693041) (not e!588015))))

(declare-datatypes ((SeekEntryResult!9777 0))(
  ( (MissingZero!9777 (index!41478 (_ BitVec 32))) (Found!9777 (index!41479 (_ BitVec 32))) (Intermediate!9777 (undefined!10589 Bool) (index!41480 (_ BitVec 32)) (x!92716 (_ BitVec 32))) (Undefined!9777) (MissingVacant!9777 (index!41481 (_ BitVec 32))) )
))
(declare-fun lt!457930 () SeekEntryResult!9777)

(assert (=> b!1038957 (= res!693041 (is-Found!9777 lt!457930))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37783 0))(
  ( (V!37784 (val!12392 Int)) )
))
(declare-datatypes ((ValueCell!11638 0))(
  ( (ValueCellFull!11638 (v!14980 V!37783)) (EmptyCell!11638) )
))
(declare-datatypes ((array!65470 0))(
  ( (array!65471 (arr!31505 (Array (_ BitVec 32) (_ BitVec 64))) (size!32037 (_ BitVec 32))) )
))
(declare-datatypes ((array!65472 0))(
  ( (array!65473 (arr!31506 (Array (_ BitVec 32) ValueCell!11638)) (size!32038 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5870 0))(
  ( (LongMapFixedSize!5871 (defaultEntry!6317 Int) (mask!30266 (_ BitVec 32)) (extraKeys!6045 (_ BitVec 32)) (zeroValue!6151 V!37783) (minValue!6151 V!37783) (_size!2990 (_ BitVec 32)) (_keys!11521 array!65470) (_values!6340 array!65472) (_vacant!2990 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5870)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65470 (_ BitVec 32)) SeekEntryResult!9777)

(assert (=> b!1038957 (= lt!457930 (seekEntry!0 key!909 (_keys!11521 thiss!1427) (mask!30266 thiss!1427)))))

(declare-fun b!1038958 () Bool)

(declare-fun e!588011 () Bool)

(declare-fun tp_is_empty!24683 () Bool)

(assert (=> b!1038958 (= e!588011 tp_is_empty!24683)))

(declare-fun e!588013 () Bool)

(declare-fun e!588010 () Bool)

(declare-fun array_inv!24197 (array!65470) Bool)

(declare-fun array_inv!24198 (array!65472) Bool)

(assert (=> b!1038959 (= e!588013 (and tp!74061 tp_is_empty!24683 (array_inv!24197 (_keys!11521 thiss!1427)) (array_inv!24198 (_values!6340 thiss!1427)) e!588010))))

(declare-fun b!1038960 () Bool)

(declare-fun res!693038 () Bool)

(assert (=> b!1038960 (=> (not res!693038) (not e!588016))))

(assert (=> b!1038960 (= res!693038 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038961 () Bool)

(declare-fun e!588017 () Bool)

(assert (=> b!1038961 (= e!588015 (not e!588017))))

(declare-fun res!693040 () Bool)

(assert (=> b!1038961 (=> res!693040 e!588017)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038961 (= res!693040 (not (validMask!0 (mask!30266 thiss!1427))))))

(declare-fun lt!457931 () array!65470)

(declare-datatypes ((List!22065 0))(
  ( (Nil!22062) (Cons!22061 (h!23265 (_ BitVec 64)) (t!31286 List!22065)) )
))
(declare-fun arrayNoDuplicates!0 (array!65470 (_ BitVec 32) List!22065) Bool)

(assert (=> b!1038961 (arrayNoDuplicates!0 lt!457931 #b00000000000000000000000000000000 Nil!22062)))

(declare-datatypes ((Unit!33980 0))(
  ( (Unit!33981) )
))
(declare-fun lt!457929 () Unit!33980)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65470 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22065) Unit!33980)

(assert (=> b!1038961 (= lt!457929 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11521 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41479 lt!457930) #b00000000000000000000000000000000 Nil!22062))))

(declare-fun arrayCountValidKeys!0 (array!65470 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038961 (= (arrayCountValidKeys!0 lt!457931 #b00000000000000000000000000000000 (size!32037 (_keys!11521 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11521 thiss!1427) #b00000000000000000000000000000000 (size!32037 (_keys!11521 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038961 (= lt!457931 (array!65471 (store (arr!31505 (_keys!11521 thiss!1427)) (index!41479 lt!457930) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32037 (_keys!11521 thiss!1427))))))

(declare-fun lt!457928 () Unit!33980)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65470 (_ BitVec 32) (_ BitVec 64)) Unit!33980)

(assert (=> b!1038961 (= lt!457928 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11521 thiss!1427) (index!41479 lt!457930) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038962 () Bool)

(declare-fun e!588012 () Bool)

(declare-fun mapRes!38578 () Bool)

(assert (=> b!1038962 (= e!588010 (and e!588012 mapRes!38578))))

(declare-fun condMapEmpty!38578 () Bool)

(declare-fun mapDefault!38578 () ValueCell!11638)

