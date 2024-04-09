; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90902 () Bool)

(assert start!90902)

(declare-fun b!1038506 () Bool)

(declare-fun b_free!20947 () Bool)

(declare-fun b_next!20947 () Bool)

(assert (=> b!1038506 (= b_free!20947 (not b_next!20947))))

(declare-fun tp!74006 () Bool)

(declare-fun b_and!33497 () Bool)

(assert (=> b!1038506 (= tp!74006 b_and!33497)))

(declare-fun b!1038499 () Bool)

(declare-fun e!587667 () Bool)

(declare-fun tp_is_empty!24667 () Bool)

(assert (=> b!1038499 (= e!587667 tp_is_empty!24667)))

(declare-fun b!1038500 () Bool)

(declare-fun e!587662 () Bool)

(declare-fun e!587666 () Bool)

(assert (=> b!1038500 (= e!587662 (not e!587666))))

(declare-fun res!692835 () Bool)

(assert (=> b!1038500 (=> res!692835 e!587666)))

(declare-datatypes ((V!37763 0))(
  ( (V!37764 (val!12384 Int)) )
))
(declare-datatypes ((ValueCell!11630 0))(
  ( (ValueCellFull!11630 (v!14971 V!37763)) (EmptyCell!11630) )
))
(declare-datatypes ((array!65434 0))(
  ( (array!65435 (arr!31489 (Array (_ BitVec 32) (_ BitVec 64))) (size!32020 (_ BitVec 32))) )
))
(declare-datatypes ((array!65436 0))(
  ( (array!65437 (arr!31490 (Array (_ BitVec 32) ValueCell!11630)) (size!32021 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5854 0))(
  ( (LongMapFixedSize!5855 (defaultEntry!6309 Int) (mask!30246 (_ BitVec 32)) (extraKeys!6037 (_ BitVec 32)) (zeroValue!6143 V!37763) (minValue!6143 V!37763) (_size!2982 (_ BitVec 32)) (_keys!11508 array!65434) (_values!6332 array!65436) (_vacant!2982 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5854)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038500 (= res!692835 (not (validMask!0 (mask!30246 thiss!1427))))))

(declare-fun lt!457755 () array!65434)

(declare-datatypes ((List!22060 0))(
  ( (Nil!22057) (Cons!22056 (h!23259 (_ BitVec 64)) (t!31281 List!22060)) )
))
(declare-fun arrayNoDuplicates!0 (array!65434 (_ BitVec 32) List!22060) Bool)

(assert (=> b!1038500 (arrayNoDuplicates!0 lt!457755 #b00000000000000000000000000000000 Nil!22057)))

(declare-datatypes ((Unit!33970 0))(
  ( (Unit!33971) )
))
(declare-fun lt!457757 () Unit!33970)

(declare-datatypes ((SeekEntryResult!9770 0))(
  ( (MissingZero!9770 (index!41450 (_ BitVec 32))) (Found!9770 (index!41451 (_ BitVec 32))) (Intermediate!9770 (undefined!10582 Bool) (index!41452 (_ BitVec 32)) (x!92668 (_ BitVec 32))) (Undefined!9770) (MissingVacant!9770 (index!41453 (_ BitVec 32))) )
))
(declare-fun lt!457756 () SeekEntryResult!9770)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65434 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22060) Unit!33970)

(assert (=> b!1038500 (= lt!457757 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11508 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41451 lt!457756) #b00000000000000000000000000000000 Nil!22057))))

(declare-fun arrayCountValidKeys!0 (array!65434 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038500 (= (arrayCountValidKeys!0 lt!457755 #b00000000000000000000000000000000 (size!32020 (_keys!11508 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11508 thiss!1427) #b00000000000000000000000000000000 (size!32020 (_keys!11508 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038500 (= lt!457755 (array!65435 (store (arr!31489 (_keys!11508 thiss!1427)) (index!41451 lt!457756) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32020 (_keys!11508 thiss!1427))))))

(declare-fun lt!457758 () Unit!33970)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65434 (_ BitVec 32) (_ BitVec 64)) Unit!33970)

(assert (=> b!1038500 (= lt!457758 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11508 thiss!1427) (index!41451 lt!457756) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38547 () Bool)

(declare-fun mapRes!38547 () Bool)

(assert (=> mapIsEmpty!38547 mapRes!38547))

(declare-fun b!1038501 () Bool)

(declare-fun res!692836 () Bool)

(declare-fun e!587663 () Bool)

(assert (=> b!1038501 (=> (not res!692836) (not e!587663))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1038501 (= res!692836 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038502 () Bool)

(assert (=> b!1038502 (= e!587666 (= (size!32020 (_keys!11508 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30246 thiss!1427))))))

(declare-fun res!692834 () Bool)

(assert (=> start!90902 (=> (not res!692834) (not e!587663))))

(declare-fun valid!2156 (LongMapFixedSize!5854) Bool)

(assert (=> start!90902 (= res!692834 (valid!2156 thiss!1427))))

(assert (=> start!90902 e!587663))

(declare-fun e!587664 () Bool)

(assert (=> start!90902 e!587664))

(assert (=> start!90902 true))

(declare-fun b!1038503 () Bool)

(declare-fun e!587668 () Bool)

(assert (=> b!1038503 (= e!587668 (and e!587667 mapRes!38547))))

(declare-fun condMapEmpty!38547 () Bool)

(declare-fun mapDefault!38547 () ValueCell!11630)

