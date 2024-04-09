; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90752 () Bool)

(assert start!90752)

(declare-fun b!1037261 () Bool)

(declare-fun b_free!20893 () Bool)

(declare-fun b_next!20893 () Bool)

(assert (=> b!1037261 (= b_free!20893 (not b_next!20893))))

(declare-fun tp!73826 () Bool)

(declare-fun b_and!33443 () Bool)

(assert (=> b!1037261 (= tp!73826 b_and!33443)))

(declare-fun b!1037258 () Bool)

(declare-fun e!586752 () Bool)

(assert (=> b!1037258 (= e!586752 (not true))))

(declare-datatypes ((V!37691 0))(
  ( (V!37692 (val!12357 Int)) )
))
(declare-datatypes ((ValueCell!11603 0))(
  ( (ValueCellFull!11603 (v!14941 V!37691)) (EmptyCell!11603) )
))
(declare-datatypes ((array!65314 0))(
  ( (array!65315 (arr!31435 (Array (_ BitVec 32) (_ BitVec 64))) (size!31966 (_ BitVec 32))) )
))
(declare-datatypes ((array!65316 0))(
  ( (array!65317 (arr!31436 (Array (_ BitVec 32) ValueCell!11603)) (size!31967 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5800 0))(
  ( (LongMapFixedSize!5801 (defaultEntry!6282 Int) (mask!30194 (_ BitVec 32)) (extraKeys!6010 (_ BitVec 32)) (zeroValue!6116 V!37691) (minValue!6116 V!37691) (_size!2955 (_ BitVec 32)) (_keys!11475 array!65314) (_values!6305 array!65316) (_vacant!2955 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5800)

(declare-datatypes ((SeekEntryResult!9748 0))(
  ( (MissingZero!9748 (index!41362 (_ BitVec 32))) (Found!9748 (index!41363 (_ BitVec 32))) (Intermediate!9748 (undefined!10560 Bool) (index!41364 (_ BitVec 32)) (x!92526 (_ BitVec 32))) (Undefined!9748) (MissingVacant!9748 (index!41365 (_ BitVec 32))) )
))
(declare-fun lt!457434 () SeekEntryResult!9748)

(declare-fun arrayCountValidKeys!0 (array!65314 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037258 (= (arrayCountValidKeys!0 (array!65315 (store (arr!31435 (_keys!11475 thiss!1427)) (index!41363 lt!457434) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31966 (_keys!11475 thiss!1427))) #b00000000000000000000000000000000 (size!31966 (_keys!11475 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11475 thiss!1427) #b00000000000000000000000000000000 (size!31966 (_keys!11475 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33928 0))(
  ( (Unit!33929) )
))
(declare-fun lt!457433 () Unit!33928)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65314 (_ BitVec 32) (_ BitVec 64)) Unit!33928)

(assert (=> b!1037258 (= lt!457433 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11475 thiss!1427) (index!41363 lt!457434) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037259 () Bool)

(declare-fun e!586751 () Bool)

(declare-fun tp_is_empty!24613 () Bool)

(assert (=> b!1037259 (= e!586751 tp_is_empty!24613)))

(declare-fun b!1037260 () Bool)

(declare-fun e!586755 () Bool)

(assert (=> b!1037260 (= e!586755 e!586752)))

(declare-fun res!692187 () Bool)

(assert (=> b!1037260 (=> (not res!692187) (not e!586752))))

(assert (=> b!1037260 (= res!692187 (is-Found!9748 lt!457434))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65314 (_ BitVec 32)) SeekEntryResult!9748)

(assert (=> b!1037260 (= lt!457434 (seekEntry!0 key!909 (_keys!11475 thiss!1427) (mask!30194 thiss!1427)))))

(declare-fun res!692186 () Bool)

(assert (=> start!90752 (=> (not res!692186) (not e!586755))))

(declare-fun valid!2139 (LongMapFixedSize!5800) Bool)

(assert (=> start!90752 (= res!692186 (valid!2139 thiss!1427))))

(assert (=> start!90752 e!586755))

(declare-fun e!586757 () Bool)

(assert (=> start!90752 e!586757))

(assert (=> start!90752 true))

(declare-fun e!586754 () Bool)

(declare-fun array_inv!24147 (array!65314) Bool)

(declare-fun array_inv!24148 (array!65316) Bool)

(assert (=> b!1037261 (= e!586757 (and tp!73826 tp_is_empty!24613 (array_inv!24147 (_keys!11475 thiss!1427)) (array_inv!24148 (_values!6305 thiss!1427)) e!586754))))

(declare-fun mapIsEmpty!38448 () Bool)

(declare-fun mapRes!38448 () Bool)

(assert (=> mapIsEmpty!38448 mapRes!38448))

(declare-fun mapNonEmpty!38448 () Bool)

(declare-fun tp!73825 () Bool)

(assert (=> mapNonEmpty!38448 (= mapRes!38448 (and tp!73825 e!586751))))

(declare-fun mapValue!38448 () ValueCell!11603)

(declare-fun mapRest!38448 () (Array (_ BitVec 32) ValueCell!11603))

(declare-fun mapKey!38448 () (_ BitVec 32))

(assert (=> mapNonEmpty!38448 (= (arr!31436 (_values!6305 thiss!1427)) (store mapRest!38448 mapKey!38448 mapValue!38448))))

(declare-fun b!1037262 () Bool)

(declare-fun e!586753 () Bool)

(assert (=> b!1037262 (= e!586753 tp_is_empty!24613)))

(declare-fun b!1037263 () Bool)

(declare-fun res!692188 () Bool)

(assert (=> b!1037263 (=> (not res!692188) (not e!586755))))

(assert (=> b!1037263 (= res!692188 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1037264 () Bool)

(assert (=> b!1037264 (= e!586754 (and e!586753 mapRes!38448))))

(declare-fun condMapEmpty!38448 () Bool)

(declare-fun mapDefault!38448 () ValueCell!11603)

