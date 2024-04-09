; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90842 () Bool)

(assert start!90842)

(declare-fun b!1037954 () Bool)

(declare-fun b_free!20923 () Bool)

(declare-fun b_next!20923 () Bool)

(assert (=> b!1037954 (= b_free!20923 (not b_next!20923))))

(declare-fun tp!73927 () Bool)

(declare-fun b_and!33473 () Bool)

(assert (=> b!1037954 (= tp!73927 b_and!33473)))

(declare-fun e!587281 () Bool)

(declare-datatypes ((V!37731 0))(
  ( (V!37732 (val!12372 Int)) )
))
(declare-datatypes ((ValueCell!11618 0))(
  ( (ValueCellFull!11618 (v!14958 V!37731)) (EmptyCell!11618) )
))
(declare-datatypes ((array!65382 0))(
  ( (array!65383 (arr!31465 (Array (_ BitVec 32) (_ BitVec 64))) (size!31996 (_ BitVec 32))) )
))
(declare-datatypes ((array!65384 0))(
  ( (array!65385 (arr!31466 (Array (_ BitVec 32) ValueCell!11618)) (size!31997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5830 0))(
  ( (LongMapFixedSize!5831 (defaultEntry!6297 Int) (mask!30223 (_ BitVec 32)) (extraKeys!6025 (_ BitVec 32)) (zeroValue!6131 V!37731) (minValue!6131 V!37731) (_size!2970 (_ BitVec 32)) (_keys!11494 array!65382) (_values!6320 array!65384) (_vacant!2970 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5830)

(declare-fun e!587284 () Bool)

(declare-fun tp_is_empty!24643 () Bool)

(declare-fun array_inv!24167 (array!65382) Bool)

(declare-fun array_inv!24168 (array!65384) Bool)

(assert (=> b!1037954 (= e!587281 (and tp!73927 tp_is_empty!24643 (array_inv!24167 (_keys!11494 thiss!1427)) (array_inv!24168 (_values!6320 thiss!1427)) e!587284))))

(declare-fun b!1037955 () Bool)

(declare-fun e!587279 () Bool)

(assert (=> b!1037955 (= e!587279 tp_is_empty!24643)))

(declare-fun res!692532 () Bool)

(declare-fun e!587280 () Bool)

(assert (=> start!90842 (=> (not res!692532) (not e!587280))))

(declare-fun valid!2149 (LongMapFixedSize!5830) Bool)

(assert (=> start!90842 (= res!692532 (valid!2149 thiss!1427))))

(assert (=> start!90842 e!587280))

(assert (=> start!90842 e!587281))

(assert (=> start!90842 true))

(declare-fun b!1037956 () Bool)

(declare-fun e!587282 () Bool)

(assert (=> b!1037956 (= e!587282 true)))

(declare-fun lt!457610 () Bool)

(declare-datatypes ((List!22048 0))(
  ( (Nil!22045) (Cons!22044 (h!23247 (_ BitVec 64)) (t!31269 List!22048)) )
))
(declare-fun arrayNoDuplicates!0 (array!65382 (_ BitVec 32) List!22048) Bool)

(assert (=> b!1037956 (= lt!457610 (arrayNoDuplicates!0 (_keys!11494 thiss!1427) #b00000000000000000000000000000000 Nil!22045))))

(declare-fun b!1037957 () Bool)

(declare-fun res!692531 () Bool)

(assert (=> b!1037957 (=> (not res!692531) (not e!587280))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1037957 (= res!692531 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1037958 () Bool)

(declare-fun e!587278 () Bool)

(assert (=> b!1037958 (= e!587280 e!587278)))

(declare-fun res!692528 () Bool)

(assert (=> b!1037958 (=> (not res!692528) (not e!587278))))

(declare-datatypes ((SeekEntryResult!9758 0))(
  ( (MissingZero!9758 (index!41402 (_ BitVec 32))) (Found!9758 (index!41403 (_ BitVec 32))) (Intermediate!9758 (undefined!10570 Bool) (index!41404 (_ BitVec 32)) (x!92608 (_ BitVec 32))) (Undefined!9758) (MissingVacant!9758 (index!41405 (_ BitVec 32))) )
))
(declare-fun lt!457611 () SeekEntryResult!9758)

(assert (=> b!1037958 (= res!692528 (is-Found!9758 lt!457611))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65382 (_ BitVec 32)) SeekEntryResult!9758)

(assert (=> b!1037958 (= lt!457611 (seekEntry!0 key!909 (_keys!11494 thiss!1427) (mask!30223 thiss!1427)))))

(declare-fun b!1037959 () Bool)

(declare-fun res!692534 () Bool)

(assert (=> b!1037959 (=> res!692534 e!587282)))

(declare-fun contains!6053 (List!22048 (_ BitVec 64)) Bool)

(assert (=> b!1037959 (= res!692534 (contains!6053 Nil!22045 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037960 () Bool)

(declare-fun res!692529 () Bool)

(assert (=> b!1037960 (=> res!692529 e!587282)))

(assert (=> b!1037960 (= res!692529 (contains!6053 Nil!22045 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037961 () Bool)

(assert (=> b!1037961 (= e!587278 (not e!587282))))

(declare-fun res!692533 () Bool)

(assert (=> b!1037961 (=> res!692533 e!587282)))

(assert (=> b!1037961 (= res!692533 (or (bvsge (size!31996 (_keys!11494 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31996 (_keys!11494 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!65382 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037961 (= (arrayCountValidKeys!0 (array!65383 (store (arr!31465 (_keys!11494 thiss!1427)) (index!41403 lt!457611) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31996 (_keys!11494 thiss!1427))) #b00000000000000000000000000000000 (size!31996 (_keys!11494 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11494 thiss!1427) #b00000000000000000000000000000000 (size!31996 (_keys!11494 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33948 0))(
  ( (Unit!33949) )
))
(declare-fun lt!457609 () Unit!33948)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65382 (_ BitVec 32) (_ BitVec 64)) Unit!33948)

(assert (=> b!1037961 (= lt!457609 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11494 thiss!1427) (index!41403 lt!457611) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38505 () Bool)

(declare-fun mapRes!38505 () Bool)

(declare-fun tp!73928 () Bool)

(declare-fun e!587285 () Bool)

(assert (=> mapNonEmpty!38505 (= mapRes!38505 (and tp!73928 e!587285))))

(declare-fun mapRest!38505 () (Array (_ BitVec 32) ValueCell!11618))

(declare-fun mapKey!38505 () (_ BitVec 32))

(declare-fun mapValue!38505 () ValueCell!11618)

(assert (=> mapNonEmpty!38505 (= (arr!31466 (_values!6320 thiss!1427)) (store mapRest!38505 mapKey!38505 mapValue!38505))))

(declare-fun b!1037962 () Bool)

(declare-fun res!692530 () Bool)

(assert (=> b!1037962 (=> res!692530 e!587282)))

(declare-fun noDuplicate!1496 (List!22048) Bool)

(assert (=> b!1037962 (= res!692530 (not (noDuplicate!1496 Nil!22045)))))

(declare-fun mapIsEmpty!38505 () Bool)

(assert (=> mapIsEmpty!38505 mapRes!38505))

(declare-fun b!1037963 () Bool)

(assert (=> b!1037963 (= e!587284 (and e!587279 mapRes!38505))))

(declare-fun condMapEmpty!38505 () Bool)

(declare-fun mapDefault!38505 () ValueCell!11618)

