; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90872 () Bool)

(assert start!90872)

(declare-fun b!1038257 () Bool)

(declare-fun b_free!20935 () Bool)

(declare-fun b_next!20935 () Bool)

(assert (=> b!1038257 (= b_free!20935 (not b_next!20935))))

(declare-fun tp!73967 () Bool)

(declare-fun b_and!33485 () Bool)

(assert (=> b!1038257 (= tp!73967 b_and!33485)))

(declare-fun b!1038255 () Bool)

(declare-fun e!587482 () Bool)

(declare-fun e!587483 () Bool)

(assert (=> b!1038255 (= e!587482 e!587483)))

(declare-fun res!692713 () Bool)

(assert (=> b!1038255 (=> (not res!692713) (not e!587483))))

(declare-datatypes ((SeekEntryResult!9764 0))(
  ( (MissingZero!9764 (index!41426 (_ BitVec 32))) (Found!9764 (index!41427 (_ BitVec 32))) (Intermediate!9764 (undefined!10576 Bool) (index!41428 (_ BitVec 32)) (x!92638 (_ BitVec 32))) (Undefined!9764) (MissingVacant!9764 (index!41429 (_ BitVec 32))) )
))
(declare-fun lt!457676 () SeekEntryResult!9764)

(assert (=> b!1038255 (= res!692713 (is-Found!9764 lt!457676))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37747 0))(
  ( (V!37748 (val!12378 Int)) )
))
(declare-datatypes ((ValueCell!11624 0))(
  ( (ValueCellFull!11624 (v!14965 V!37747)) (EmptyCell!11624) )
))
(declare-datatypes ((array!65408 0))(
  ( (array!65409 (arr!31477 (Array (_ BitVec 32) (_ BitVec 64))) (size!32008 (_ BitVec 32))) )
))
(declare-datatypes ((array!65410 0))(
  ( (array!65411 (arr!31478 (Array (_ BitVec 32) ValueCell!11624)) (size!32009 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5842 0))(
  ( (LongMapFixedSize!5843 (defaultEntry!6303 Int) (mask!30234 (_ BitVec 32)) (extraKeys!6031 (_ BitVec 32)) (zeroValue!6137 V!37747) (minValue!6137 V!37747) (_size!2976 (_ BitVec 32)) (_keys!11501 array!65408) (_values!6326 array!65410) (_vacant!2976 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5842)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65408 (_ BitVec 32)) SeekEntryResult!9764)

(assert (=> b!1038255 (= lt!457676 (seekEntry!0 key!909 (_keys!11501 thiss!1427) (mask!30234 thiss!1427)))))

(declare-fun b!1038256 () Bool)

(declare-fun res!692712 () Bool)

(assert (=> b!1038256 (=> (not res!692712) (not e!587482))))

(assert (=> b!1038256 (= res!692712 (not (= key!909 (bvneg key!909))))))

(declare-fun e!587484 () Bool)

(declare-fun e!587487 () Bool)

(declare-fun tp_is_empty!24655 () Bool)

(declare-fun array_inv!24177 (array!65408) Bool)

(declare-fun array_inv!24178 (array!65410) Bool)

(assert (=> b!1038257 (= e!587487 (and tp!73967 tp_is_empty!24655 (array_inv!24177 (_keys!11501 thiss!1427)) (array_inv!24178 (_values!6326 thiss!1427)) e!587484))))

(declare-fun res!692711 () Bool)

(assert (=> start!90872 (=> (not res!692711) (not e!587482))))

(declare-fun valid!2152 (LongMapFixedSize!5842) Bool)

(assert (=> start!90872 (= res!692711 (valid!2152 thiss!1427))))

(assert (=> start!90872 e!587482))

(assert (=> start!90872 e!587487))

(assert (=> start!90872 true))

(declare-fun b!1038258 () Bool)

(declare-fun res!692715 () Bool)

(declare-fun e!587485 () Bool)

(assert (=> b!1038258 (=> res!692715 e!587485)))

(declare-datatypes ((List!22054 0))(
  ( (Nil!22051) (Cons!22050 (h!23253 (_ BitVec 64)) (t!31275 List!22054)) )
))
(declare-fun contains!6058 (List!22054 (_ BitVec 64)) Bool)

(assert (=> b!1038258 (= res!692715 (contains!6058 Nil!22051 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38526 () Bool)

(declare-fun mapRes!38526 () Bool)

(assert (=> mapIsEmpty!38526 mapRes!38526))

(declare-fun b!1038259 () Bool)

(assert (=> b!1038259 (= e!587483 (not e!587485))))

(declare-fun res!692714 () Bool)

(assert (=> b!1038259 (=> res!692714 e!587485)))

(assert (=> b!1038259 (= res!692714 (or (bvsge (size!32008 (_keys!11501 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!32008 (_keys!11501 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!65408 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038259 (= (arrayCountValidKeys!0 (array!65409 (store (arr!31477 (_keys!11501 thiss!1427)) (index!41427 lt!457676) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32008 (_keys!11501 thiss!1427))) #b00000000000000000000000000000000 (size!32008 (_keys!11501 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11501 thiss!1427) #b00000000000000000000000000000000 (size!32008 (_keys!11501 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33958 0))(
  ( (Unit!33959) )
))
(declare-fun lt!457675 () Unit!33958)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65408 (_ BitVec 32) (_ BitVec 64)) Unit!33958)

(assert (=> b!1038259 (= lt!457675 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11501 thiss!1427) (index!41427 lt!457676) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038260 () Bool)

(declare-fun e!587480 () Bool)

(assert (=> b!1038260 (= e!587480 tp_is_empty!24655)))

(declare-fun b!1038261 () Bool)

(declare-fun res!692710 () Bool)

(assert (=> b!1038261 (=> res!692710 e!587485)))

(declare-fun arrayNoDuplicates!0 (array!65408 (_ BitVec 32) List!22054) Bool)

(assert (=> b!1038261 (= res!692710 (not (arrayNoDuplicates!0 (_keys!11501 thiss!1427) #b00000000000000000000000000000000 Nil!22051)))))

(declare-fun b!1038262 () Bool)

(declare-fun res!692709 () Bool)

(assert (=> b!1038262 (=> res!692709 e!587485)))

(assert (=> b!1038262 (= res!692709 (contains!6058 Nil!22051 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038263 () Bool)

(assert (=> b!1038263 (= e!587484 (and e!587480 mapRes!38526))))

(declare-fun condMapEmpty!38526 () Bool)

(declare-fun mapDefault!38526 () ValueCell!11624)

