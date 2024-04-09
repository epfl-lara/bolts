; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90756 () Bool)

(assert start!90756)

(declare-fun b!1037300 () Bool)

(declare-fun b_free!20897 () Bool)

(declare-fun b_next!20897 () Bool)

(assert (=> b!1037300 (= b_free!20897 (not b_next!20897))))

(declare-fun tp!73837 () Bool)

(declare-fun b_and!33447 () Bool)

(assert (=> b!1037300 (= tp!73837 b_and!33447)))

(declare-fun res!692204 () Bool)

(declare-fun e!586794 () Bool)

(assert (=> start!90756 (=> (not res!692204) (not e!586794))))

(declare-datatypes ((V!37695 0))(
  ( (V!37696 (val!12359 Int)) )
))
(declare-datatypes ((ValueCell!11605 0))(
  ( (ValueCellFull!11605 (v!14943 V!37695)) (EmptyCell!11605) )
))
(declare-datatypes ((array!65322 0))(
  ( (array!65323 (arr!31439 (Array (_ BitVec 32) (_ BitVec 64))) (size!31970 (_ BitVec 32))) )
))
(declare-datatypes ((array!65324 0))(
  ( (array!65325 (arr!31440 (Array (_ BitVec 32) ValueCell!11605)) (size!31971 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5804 0))(
  ( (LongMapFixedSize!5805 (defaultEntry!6284 Int) (mask!30196 (_ BitVec 32)) (extraKeys!6012 (_ BitVec 32)) (zeroValue!6118 V!37695) (minValue!6118 V!37695) (_size!2957 (_ BitVec 32)) (_keys!11477 array!65322) (_values!6307 array!65324) (_vacant!2957 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5804)

(declare-fun valid!2141 (LongMapFixedSize!5804) Bool)

(assert (=> start!90756 (= res!692204 (valid!2141 thiss!1427))))

(assert (=> start!90756 e!586794))

(declare-fun e!586798 () Bool)

(assert (=> start!90756 e!586798))

(assert (=> start!90756 true))

(declare-fun mapIsEmpty!38454 () Bool)

(declare-fun mapRes!38454 () Bool)

(assert (=> mapIsEmpty!38454 mapRes!38454))

(declare-fun e!586797 () Bool)

(declare-fun tp_is_empty!24617 () Bool)

(declare-fun array_inv!24151 (array!65322) Bool)

(declare-fun array_inv!24152 (array!65324) Bool)

(assert (=> b!1037300 (= e!586798 (and tp!73837 tp_is_empty!24617 (array_inv!24151 (_keys!11477 thiss!1427)) (array_inv!24152 (_values!6307 thiss!1427)) e!586797))))

(declare-fun b!1037301 () Bool)

(declare-fun e!586793 () Bool)

(assert (=> b!1037301 (= e!586793 tp_is_empty!24617)))

(declare-fun mapNonEmpty!38454 () Bool)

(declare-fun tp!73838 () Bool)

(declare-fun e!586799 () Bool)

(assert (=> mapNonEmpty!38454 (= mapRes!38454 (and tp!73838 e!586799))))

(declare-fun mapKey!38454 () (_ BitVec 32))

(declare-fun mapValue!38454 () ValueCell!11605)

(declare-fun mapRest!38454 () (Array (_ BitVec 32) ValueCell!11605))

(assert (=> mapNonEmpty!38454 (= (arr!31440 (_values!6307 thiss!1427)) (store mapRest!38454 mapKey!38454 mapValue!38454))))

(declare-fun b!1037302 () Bool)

(assert (=> b!1037302 (= e!586799 tp_is_empty!24617)))

(declare-fun b!1037303 () Bool)

(declare-fun e!586796 () Bool)

(assert (=> b!1037303 (= e!586794 e!586796)))

(declare-fun res!692206 () Bool)

(assert (=> b!1037303 (=> (not res!692206) (not e!586796))))

(declare-datatypes ((SeekEntryResult!9750 0))(
  ( (MissingZero!9750 (index!41370 (_ BitVec 32))) (Found!9750 (index!41371 (_ BitVec 32))) (Intermediate!9750 (undefined!10562 Bool) (index!41372 (_ BitVec 32)) (x!92528 (_ BitVec 32))) (Undefined!9750) (MissingVacant!9750 (index!41373 (_ BitVec 32))) )
))
(declare-fun lt!457446 () SeekEntryResult!9750)

(assert (=> b!1037303 (= res!692206 (is-Found!9750 lt!457446))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65322 (_ BitVec 32)) SeekEntryResult!9750)

(assert (=> b!1037303 (= lt!457446 (seekEntry!0 key!909 (_keys!11477 thiss!1427) (mask!30196 thiss!1427)))))

(declare-fun b!1037304 () Bool)

(assert (=> b!1037304 (= e!586796 (not true))))

(declare-fun arrayCountValidKeys!0 (array!65322 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037304 (= (arrayCountValidKeys!0 (array!65323 (store (arr!31439 (_keys!11477 thiss!1427)) (index!41371 lt!457446) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31970 (_keys!11477 thiss!1427))) #b00000000000000000000000000000000 (size!31970 (_keys!11477 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11477 thiss!1427) #b00000000000000000000000000000000 (size!31970 (_keys!11477 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33932 0))(
  ( (Unit!33933) )
))
(declare-fun lt!457445 () Unit!33932)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65322 (_ BitVec 32) (_ BitVec 64)) Unit!33932)

(assert (=> b!1037304 (= lt!457445 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11477 thiss!1427) (index!41371 lt!457446) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037305 () Bool)

(assert (=> b!1037305 (= e!586797 (and e!586793 mapRes!38454))))

(declare-fun condMapEmpty!38454 () Bool)

(declare-fun mapDefault!38454 () ValueCell!11605)

