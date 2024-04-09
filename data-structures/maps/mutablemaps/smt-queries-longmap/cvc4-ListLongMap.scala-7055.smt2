; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89424 () Bool)

(assert start!89424)

(declare-fun b!1024711 () Bool)

(declare-fun b_free!20387 () Bool)

(declare-fun b_next!20387 () Bool)

(assert (=> b!1024711 (= b_free!20387 (not b_next!20387))))

(declare-fun tp!72208 () Bool)

(declare-fun b_and!32651 () Bool)

(assert (=> b!1024711 (= tp!72208 b_and!32651)))

(declare-fun b!1024705 () Bool)

(declare-fun e!577711 () Bool)

(declare-fun e!577705 () Bool)

(assert (=> b!1024705 (= e!577711 (not e!577705))))

(declare-fun res!686157 () Bool)

(assert (=> b!1024705 (=> res!686157 e!577705)))

(declare-datatypes ((V!37015 0))(
  ( (V!37016 (val!12104 Int)) )
))
(declare-datatypes ((ValueCell!11350 0))(
  ( (ValueCellFull!11350 (v!14674 V!37015)) (EmptyCell!11350) )
))
(declare-datatypes ((array!64248 0))(
  ( (array!64249 (arr!30929 (Array (_ BitVec 32) (_ BitVec 64))) (size!31443 (_ BitVec 32))) )
))
(declare-datatypes ((array!64250 0))(
  ( (array!64251 (arr!30930 (Array (_ BitVec 32) ValueCell!11350)) (size!31444 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5294 0))(
  ( (LongMapFixedSize!5295 (defaultEntry!5999 Int) (mask!29650 (_ BitVec 32)) (extraKeys!5731 (_ BitVec 32)) (zeroValue!5835 V!37015) (minValue!5835 V!37015) (_size!2702 (_ BitVec 32)) (_keys!11143 array!64248) (_values!6022 array!64250) (_vacant!2702 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5294)

(assert (=> b!1024705 (= res!686157 (or (bvsge (size!31443 (_keys!11143 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31443 (_keys!11143 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9591 0))(
  ( (MissingZero!9591 (index!40734 (_ BitVec 32))) (Found!9591 (index!40735 (_ BitVec 32))) (Intermediate!9591 (undefined!10403 Bool) (index!40736 (_ BitVec 32)) (x!91096 (_ BitVec 32))) (Undefined!9591) (MissingVacant!9591 (index!40737 (_ BitVec 32))) )
))
(declare-fun lt!450681 () SeekEntryResult!9591)

(declare-fun arrayCountValidKeys!0 (array!64248 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024705 (= (arrayCountValidKeys!0 (array!64249 (store (arr!30929 (_keys!11143 thiss!1427)) (index!40735 lt!450681) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31443 (_keys!11143 thiss!1427))) #b00000000000000000000000000000000 (size!31443 (_keys!11143 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11143 thiss!1427) #b00000000000000000000000000000000 (size!31443 (_keys!11143 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33328 0))(
  ( (Unit!33329) )
))
(declare-fun lt!450682 () Unit!33328)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64248 (_ BitVec 32) (_ BitVec 64)) Unit!33328)

(assert (=> b!1024705 (= lt!450682 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11143 thiss!1427) (index!40735 lt!450681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024706 () Bool)

(declare-fun res!686154 () Bool)

(declare-fun e!577712 () Bool)

(assert (=> b!1024706 (=> (not res!686154) (not e!577712))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024706 (= res!686154 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024707 () Bool)

(declare-fun res!686156 () Bool)

(assert (=> b!1024707 (=> res!686156 e!577705)))

(declare-datatypes ((List!21841 0))(
  ( (Nil!21838) (Cons!21837 (h!23035 (_ BitVec 64)) (t!30910 List!21841)) )
))
(declare-fun contains!5969 (List!21841 (_ BitVec 64)) Bool)

(assert (=> b!1024707 (= res!686156 (contains!5969 Nil!21838 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024708 () Bool)

(declare-fun res!686159 () Bool)

(assert (=> b!1024708 (=> res!686159 e!577705)))

(declare-fun noDuplicate!1479 (List!21841) Bool)

(assert (=> b!1024708 (= res!686159 (not (noDuplicate!1479 Nil!21838)))))

(declare-fun b!1024709 () Bool)

(declare-fun e!577709 () Bool)

(declare-fun tp_is_empty!24107 () Bool)

(assert (=> b!1024709 (= e!577709 tp_is_empty!24107)))

(declare-fun b!1024710 () Bool)

(declare-fun e!577708 () Bool)

(declare-fun e!577710 () Bool)

(declare-fun mapRes!37589 () Bool)

(assert (=> b!1024710 (= e!577708 (and e!577710 mapRes!37589))))

(declare-fun condMapEmpty!37589 () Bool)

(declare-fun mapDefault!37589 () ValueCell!11350)

