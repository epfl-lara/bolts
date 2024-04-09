; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90758 () Bool)

(assert start!90758)

(declare-fun b!1037324 () Bool)

(declare-fun b_free!20899 () Bool)

(declare-fun b_next!20899 () Bool)

(assert (=> b!1037324 (= b_free!20899 (not b_next!20899))))

(declare-fun tp!73844 () Bool)

(declare-fun b_and!33449 () Bool)

(assert (=> b!1037324 (= tp!73844 b_and!33449)))

(declare-fun b!1037321 () Bool)

(declare-fun e!586816 () Bool)

(declare-fun e!586818 () Bool)

(assert (=> b!1037321 (= e!586816 e!586818)))

(declare-fun res!692214 () Bool)

(assert (=> b!1037321 (=> (not res!692214) (not e!586818))))

(declare-datatypes ((SeekEntryResult!9751 0))(
  ( (MissingZero!9751 (index!41374 (_ BitVec 32))) (Found!9751 (index!41375 (_ BitVec 32))) (Intermediate!9751 (undefined!10563 Bool) (index!41376 (_ BitVec 32)) (x!92537 (_ BitVec 32))) (Undefined!9751) (MissingVacant!9751 (index!41377 (_ BitVec 32))) )
))
(declare-fun lt!457451 () SeekEntryResult!9751)

(assert (=> b!1037321 (= res!692214 (is-Found!9751 lt!457451))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37699 0))(
  ( (V!37700 (val!12360 Int)) )
))
(declare-datatypes ((ValueCell!11606 0))(
  ( (ValueCellFull!11606 (v!14944 V!37699)) (EmptyCell!11606) )
))
(declare-datatypes ((array!65326 0))(
  ( (array!65327 (arr!31441 (Array (_ BitVec 32) (_ BitVec 64))) (size!31972 (_ BitVec 32))) )
))
(declare-datatypes ((array!65328 0))(
  ( (array!65329 (arr!31442 (Array (_ BitVec 32) ValueCell!11606)) (size!31973 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5806 0))(
  ( (LongMapFixedSize!5807 (defaultEntry!6285 Int) (mask!30199 (_ BitVec 32)) (extraKeys!6013 (_ BitVec 32)) (zeroValue!6119 V!37699) (minValue!6119 V!37699) (_size!2958 (_ BitVec 32)) (_keys!11478 array!65326) (_values!6308 array!65328) (_vacant!2958 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5806)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65326 (_ BitVec 32)) SeekEntryResult!9751)

(assert (=> b!1037321 (= lt!457451 (seekEntry!0 key!909 (_keys!11478 thiss!1427) (mask!30199 thiss!1427)))))

(declare-fun b!1037322 () Bool)

(assert (=> b!1037322 (= e!586818 (not (or (bvsge (size!31972 (_keys!11478 thiss!1427)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!31972 (_keys!11478 thiss!1427))))))))

(declare-fun arrayCountValidKeys!0 (array!65326 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037322 (= (arrayCountValidKeys!0 (array!65327 (store (arr!31441 (_keys!11478 thiss!1427)) (index!41375 lt!457451) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31972 (_keys!11478 thiss!1427))) #b00000000000000000000000000000000 (size!31972 (_keys!11478 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11478 thiss!1427) #b00000000000000000000000000000000 (size!31972 (_keys!11478 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33934 0))(
  ( (Unit!33935) )
))
(declare-fun lt!457452 () Unit!33934)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65326 (_ BitVec 32) (_ BitVec 64)) Unit!33934)

(assert (=> b!1037322 (= lt!457452 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11478 thiss!1427) (index!41375 lt!457451) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037323 () Bool)

(declare-fun e!586817 () Bool)

(declare-fun e!586820 () Bool)

(declare-fun mapRes!38457 () Bool)

(assert (=> b!1037323 (= e!586817 (and e!586820 mapRes!38457))))

(declare-fun condMapEmpty!38457 () Bool)

(declare-fun mapDefault!38457 () ValueCell!11606)

