; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90968 () Bool)

(assert start!90968)

(declare-fun b!1038915 () Bool)

(declare-fun b_free!20959 () Bool)

(declare-fun b_next!20959 () Bool)

(assert (=> b!1038915 (= b_free!20959 (not b_next!20959))))

(declare-fun tp!74048 () Bool)

(declare-fun b_and!33509 () Bool)

(assert (=> b!1038915 (= tp!74048 b_and!33509)))

(declare-fun b!1038909 () Bool)

(declare-fun e!587964 () Bool)

(declare-fun e!587967 () Bool)

(assert (=> b!1038909 (= e!587964 (not e!587967))))

(declare-fun res!693014 () Bool)

(assert (=> b!1038909 (=> res!693014 e!587967)))

(declare-datatypes ((V!37779 0))(
  ( (V!37780 (val!12390 Int)) )
))
(declare-datatypes ((ValueCell!11636 0))(
  ( (ValueCellFull!11636 (v!14978 V!37779)) (EmptyCell!11636) )
))
(declare-datatypes ((array!65462 0))(
  ( (array!65463 (arr!31501 (Array (_ BitVec 32) (_ BitVec 64))) (size!32033 (_ BitVec 32))) )
))
(declare-datatypes ((array!65464 0))(
  ( (array!65465 (arr!31502 (Array (_ BitVec 32) ValueCell!11636)) (size!32034 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5866 0))(
  ( (LongMapFixedSize!5867 (defaultEntry!6315 Int) (mask!30264 (_ BitVec 32)) (extraKeys!6043 (_ BitVec 32)) (zeroValue!6149 V!37779) (minValue!6149 V!37779) (_size!2988 (_ BitVec 32)) (_keys!11519 array!65462) (_values!6338 array!65464) (_vacant!2988 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5866)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038909 (= res!693014 (not (validMask!0 (mask!30264 thiss!1427))))))

(declare-fun lt!457904 () array!65462)

(declare-datatypes ((List!22063 0))(
  ( (Nil!22060) (Cons!22059 (h!23263 (_ BitVec 64)) (t!31284 List!22063)) )
))
(declare-fun arrayNoDuplicates!0 (array!65462 (_ BitVec 32) List!22063) Bool)

(assert (=> b!1038909 (arrayNoDuplicates!0 lt!457904 #b00000000000000000000000000000000 Nil!22060)))

(declare-datatypes ((Unit!33976 0))(
  ( (Unit!33977) )
))
(declare-fun lt!457906 () Unit!33976)

(declare-datatypes ((SeekEntryResult!9775 0))(
  ( (MissingZero!9775 (index!41470 (_ BitVec 32))) (Found!9775 (index!41471 (_ BitVec 32))) (Intermediate!9775 (undefined!10587 Bool) (index!41472 (_ BitVec 32)) (x!92714 (_ BitVec 32))) (Undefined!9775) (MissingVacant!9775 (index!41473 (_ BitVec 32))) )
))
(declare-fun lt!457907 () SeekEntryResult!9775)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65462 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22063) Unit!33976)

(assert (=> b!1038909 (= lt!457906 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11519 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41471 lt!457907) #b00000000000000000000000000000000 Nil!22060))))

(declare-fun arrayCountValidKeys!0 (array!65462 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038909 (= (arrayCountValidKeys!0 lt!457904 #b00000000000000000000000000000000 (size!32033 (_keys!11519 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11519 thiss!1427) #b00000000000000000000000000000000 (size!32033 (_keys!11519 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038909 (= lt!457904 (array!65463 (store (arr!31501 (_keys!11519 thiss!1427)) (index!41471 lt!457907) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32033 (_keys!11519 thiss!1427))))))

(declare-fun lt!457905 () Unit!33976)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65462 (_ BitVec 32) (_ BitVec 64)) Unit!33976)

(assert (=> b!1038909 (= lt!457905 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11519 thiss!1427) (index!41471 lt!457907) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038910 () Bool)

(declare-fun e!587968 () Bool)

(declare-fun e!587962 () Bool)

(declare-fun mapRes!38572 () Bool)

(assert (=> b!1038910 (= e!587968 (and e!587962 mapRes!38572))))

(declare-fun condMapEmpty!38572 () Bool)

(declare-fun mapDefault!38572 () ValueCell!11636)

