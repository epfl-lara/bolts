; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89432 () Bool)

(assert start!89432)

(declare-fun b!1024845 () Bool)

(declare-fun b_free!20395 () Bool)

(declare-fun b_next!20395 () Bool)

(assert (=> b!1024845 (= b_free!20395 (not b_next!20395))))

(declare-fun tp!72231 () Bool)

(declare-fun b_and!32659 () Bool)

(assert (=> b!1024845 (= tp!72231 b_and!32659)))

(declare-fun mapNonEmpty!37601 () Bool)

(declare-fun mapRes!37601 () Bool)

(declare-fun tp!72232 () Bool)

(declare-fun e!577808 () Bool)

(assert (=> mapNonEmpty!37601 (= mapRes!37601 (and tp!72232 e!577808))))

(declare-datatypes ((V!37027 0))(
  ( (V!37028 (val!12108 Int)) )
))
(declare-datatypes ((ValueCell!11354 0))(
  ( (ValueCellFull!11354 (v!14678 V!37027)) (EmptyCell!11354) )
))
(declare-fun mapRest!37601 () (Array (_ BitVec 32) ValueCell!11354))

(declare-fun mapKey!37601 () (_ BitVec 32))

(declare-fun mapValue!37601 () ValueCell!11354)

(declare-datatypes ((array!64264 0))(
  ( (array!64265 (arr!30937 (Array (_ BitVec 32) (_ BitVec 64))) (size!31451 (_ BitVec 32))) )
))
(declare-datatypes ((array!64266 0))(
  ( (array!64267 (arr!30938 (Array (_ BitVec 32) ValueCell!11354)) (size!31452 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5302 0))(
  ( (LongMapFixedSize!5303 (defaultEntry!6003 Int) (mask!29658 (_ BitVec 32)) (extraKeys!5735 (_ BitVec 32)) (zeroValue!5839 V!37027) (minValue!5839 V!37027) (_size!2706 (_ BitVec 32)) (_keys!11147 array!64264) (_values!6026 array!64266) (_vacant!2706 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5302)

(assert (=> mapNonEmpty!37601 (= (arr!30938 (_values!6026 thiss!1427)) (store mapRest!37601 mapKey!37601 mapValue!37601))))

(declare-fun mapIsEmpty!37601 () Bool)

(assert (=> mapIsEmpty!37601 mapRes!37601))

(declare-fun b!1024837 () Bool)

(declare-fun res!686239 () Bool)

(declare-fun e!577806 () Bool)

(assert (=> b!1024837 (=> res!686239 e!577806)))

(declare-datatypes ((List!21845 0))(
  ( (Nil!21842) (Cons!21841 (h!23039 (_ BitVec 64)) (t!30914 List!21845)) )
))
(declare-fun contains!5973 (List!21845 (_ BitVec 64)) Bool)

(assert (=> b!1024837 (= res!686239 (contains!5973 Nil!21842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024838 () Bool)

(declare-fun e!577805 () Bool)

(declare-fun e!577804 () Bool)

(assert (=> b!1024838 (= e!577805 e!577804)))

(declare-fun res!686244 () Bool)

(assert (=> b!1024838 (=> (not res!686244) (not e!577804))))

(declare-datatypes ((SeekEntryResult!9595 0))(
  ( (MissingZero!9595 (index!40750 (_ BitVec 32))) (Found!9595 (index!40751 (_ BitVec 32))) (Intermediate!9595 (undefined!10407 Bool) (index!40752 (_ BitVec 32)) (x!91116 (_ BitVec 32))) (Undefined!9595) (MissingVacant!9595 (index!40753 (_ BitVec 32))) )
))
(declare-fun lt!450717 () SeekEntryResult!9595)

(assert (=> b!1024838 (= res!686244 (is-Found!9595 lt!450717))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64264 (_ BitVec 32)) SeekEntryResult!9595)

(assert (=> b!1024838 (= lt!450717 (seekEntry!0 key!909 (_keys!11147 thiss!1427) (mask!29658 thiss!1427)))))

(declare-fun res!686242 () Bool)

(assert (=> start!89432 (=> (not res!686242) (not e!577805))))

(declare-fun valid!1970 (LongMapFixedSize!5302) Bool)

(assert (=> start!89432 (= res!686242 (valid!1970 thiss!1427))))

(assert (=> start!89432 e!577805))

(declare-fun e!577802 () Bool)

(assert (=> start!89432 e!577802))

(assert (=> start!89432 true))

(declare-fun b!1024839 () Bool)

(assert (=> b!1024839 (= e!577804 (not e!577806))))

(declare-fun res!686238 () Bool)

(assert (=> b!1024839 (=> res!686238 e!577806)))

(assert (=> b!1024839 (= res!686238 (or (bvsge (size!31451 (_keys!11147 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31451 (_keys!11147 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!64264 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024839 (= (arrayCountValidKeys!0 (array!64265 (store (arr!30937 (_keys!11147 thiss!1427)) (index!40751 lt!450717) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31451 (_keys!11147 thiss!1427))) #b00000000000000000000000000000000 (size!31451 (_keys!11147 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11147 thiss!1427) #b00000000000000000000000000000000 (size!31451 (_keys!11147 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33334 0))(
  ( (Unit!33335) )
))
(declare-fun lt!450718 () Unit!33334)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64264 (_ BitVec 32) (_ BitVec 64)) Unit!33334)

(assert (=> b!1024839 (= lt!450718 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11147 thiss!1427) (index!40751 lt!450717) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024840 () Bool)

(assert (=> b!1024840 (= e!577806 true)))

(declare-fun lt!450716 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64264 (_ BitVec 32) List!21845) Bool)

(assert (=> b!1024840 (= lt!450716 (arrayNoDuplicates!0 (_keys!11147 thiss!1427) #b00000000000000000000000000000000 Nil!21842))))

(declare-fun b!1024841 () Bool)

(declare-fun e!577801 () Bool)

(declare-fun tp_is_empty!24115 () Bool)

(assert (=> b!1024841 (= e!577801 tp_is_empty!24115)))

(declare-fun b!1024842 () Bool)

(declare-fun e!577803 () Bool)

(assert (=> b!1024842 (= e!577803 (and e!577801 mapRes!37601))))

(declare-fun condMapEmpty!37601 () Bool)

(declare-fun mapDefault!37601 () ValueCell!11354)

