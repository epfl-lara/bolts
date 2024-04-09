; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90878 () Bool)

(assert start!90878)

(declare-fun b!1038358 () Bool)

(declare-fun b_free!20941 () Bool)

(declare-fun b_next!20941 () Bool)

(assert (=> b!1038358 (= b_free!20941 (not b_next!20941))))

(declare-fun tp!73984 () Bool)

(declare-fun b_and!33491 () Bool)

(assert (=> b!1038358 (= tp!73984 b_and!33491)))

(declare-fun b!1038353 () Bool)

(declare-fun e!587551 () Bool)

(declare-datatypes ((V!37755 0))(
  ( (V!37756 (val!12381 Int)) )
))
(declare-datatypes ((ValueCell!11627 0))(
  ( (ValueCellFull!11627 (v!14968 V!37755)) (EmptyCell!11627) )
))
(declare-datatypes ((array!65420 0))(
  ( (array!65421 (arr!31483 (Array (_ BitVec 32) (_ BitVec 64))) (size!32014 (_ BitVec 32))) )
))
(declare-datatypes ((array!65422 0))(
  ( (array!65423 (arr!31484 (Array (_ BitVec 32) ValueCell!11627)) (size!32015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5848 0))(
  ( (LongMapFixedSize!5849 (defaultEntry!6306 Int) (mask!30239 (_ BitVec 32)) (extraKeys!6034 (_ BitVec 32)) (zeroValue!6140 V!37755) (minValue!6140 V!37755) (_size!2979 (_ BitVec 32)) (_keys!11504 array!65420) (_values!6329 array!65422) (_vacant!2979 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5848)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038353 (= e!587551 (not (validMask!0 (mask!30239 thiss!1427))))))

(declare-fun lt!457700 () array!65420)

(declare-datatypes ((List!22057 0))(
  ( (Nil!22054) (Cons!22053 (h!23256 (_ BitVec 64)) (t!31278 List!22057)) )
))
(declare-fun arrayNoDuplicates!0 (array!65420 (_ BitVec 32) List!22057) Bool)

(assert (=> b!1038353 (arrayNoDuplicates!0 lt!457700 #b00000000000000000000000000000000 Nil!22054)))

(declare-datatypes ((Unit!33964 0))(
  ( (Unit!33965) )
))
(declare-fun lt!457699 () Unit!33964)

(declare-datatypes ((SeekEntryResult!9767 0))(
  ( (MissingZero!9767 (index!41438 (_ BitVec 32))) (Found!9767 (index!41439 (_ BitVec 32))) (Intermediate!9767 (undefined!10579 Bool) (index!41440 (_ BitVec 32)) (x!92649 (_ BitVec 32))) (Undefined!9767) (MissingVacant!9767 (index!41441 (_ BitVec 32))) )
))
(declare-fun lt!457698 () SeekEntryResult!9767)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65420 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22057) Unit!33964)

(assert (=> b!1038353 (= lt!457699 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11504 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41439 lt!457698) #b00000000000000000000000000000000 Nil!22054))))

(declare-fun arrayCountValidKeys!0 (array!65420 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038353 (= (arrayCountValidKeys!0 lt!457700 #b00000000000000000000000000000000 (size!32014 (_keys!11504 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11504 thiss!1427) #b00000000000000000000000000000000 (size!32014 (_keys!11504 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038353 (= lt!457700 (array!65421 (store (arr!31483 (_keys!11504 thiss!1427)) (index!41439 lt!457698) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32014 (_keys!11504 thiss!1427))))))

(declare-fun lt!457697 () Unit!33964)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65420 (_ BitVec 32) (_ BitVec 64)) Unit!33964)

(assert (=> b!1038353 (= lt!457697 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11504 thiss!1427) (index!41439 lt!457698) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038354 () Bool)

(declare-fun e!587553 () Bool)

(assert (=> b!1038354 (= e!587553 e!587551)))

(declare-fun res!692772 () Bool)

(assert (=> b!1038354 (=> (not res!692772) (not e!587551))))

(assert (=> b!1038354 (= res!692772 (is-Found!9767 lt!457698))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65420 (_ BitVec 32)) SeekEntryResult!9767)

(assert (=> b!1038354 (= lt!457698 (seekEntry!0 key!909 (_keys!11504 thiss!1427) (mask!30239 thiss!1427)))))

(declare-fun mapIsEmpty!38535 () Bool)

(declare-fun mapRes!38535 () Bool)

(assert (=> mapIsEmpty!38535 mapRes!38535))

(declare-fun b!1038355 () Bool)

(declare-fun e!587554 () Bool)

(declare-fun tp_is_empty!24661 () Bool)

(assert (=> b!1038355 (= e!587554 tp_is_empty!24661)))

(declare-fun b!1038356 () Bool)

(declare-fun res!692773 () Bool)

(assert (=> b!1038356 (=> (not res!692773) (not e!587553))))

(assert (=> b!1038356 (= res!692773 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038357 () Bool)

(declare-fun e!587556 () Bool)

(assert (=> b!1038357 (= e!587556 (and e!587554 mapRes!38535))))

(declare-fun condMapEmpty!38535 () Bool)

(declare-fun mapDefault!38535 () ValueCell!11627)

