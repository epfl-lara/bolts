; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89484 () Bool)

(assert start!89484)

(declare-fun b!1025696 () Bool)

(declare-fun b_free!20447 () Bool)

(declare-fun b_next!20447 () Bool)

(assert (=> b!1025696 (= b_free!20447 (not b_next!20447))))

(declare-fun tp!72387 () Bool)

(declare-fun b_and!32711 () Bool)

(assert (=> b!1025696 (= tp!72387 b_and!32711)))

(declare-fun b!1025695 () Bool)

(declare-fun e!578428 () Bool)

(declare-fun e!578431 () Bool)

(assert (=> b!1025695 (= e!578428 (not e!578431))))

(declare-fun res!686787 () Bool)

(assert (=> b!1025695 (=> res!686787 e!578431)))

(declare-datatypes ((V!37095 0))(
  ( (V!37096 (val!12134 Int)) )
))
(declare-datatypes ((ValueCell!11380 0))(
  ( (ValueCellFull!11380 (v!14704 V!37095)) (EmptyCell!11380) )
))
(declare-datatypes ((array!64368 0))(
  ( (array!64369 (arr!30989 (Array (_ BitVec 32) (_ BitVec 64))) (size!31503 (_ BitVec 32))) )
))
(declare-datatypes ((array!64370 0))(
  ( (array!64371 (arr!30990 (Array (_ BitVec 32) ValueCell!11380)) (size!31504 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5354 0))(
  ( (LongMapFixedSize!5355 (defaultEntry!6029 Int) (mask!29700 (_ BitVec 32)) (extraKeys!5761 (_ BitVec 32)) (zeroValue!5865 V!37095) (minValue!5865 V!37095) (_size!2732 (_ BitVec 32)) (_keys!11173 array!64368) (_values!6052 array!64370) (_vacant!2732 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5354)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025695 (= res!686787 (not (validMask!0 (mask!29700 thiss!1427))))))

(declare-fun lt!451059 () array!64368)

(declare-datatypes ((List!21866 0))(
  ( (Nil!21863) (Cons!21862 (h!23060 (_ BitVec 64)) (t!30935 List!21866)) )
))
(declare-fun arrayNoDuplicates!0 (array!64368 (_ BitVec 32) List!21866) Bool)

(assert (=> b!1025695 (arrayNoDuplicates!0 lt!451059 #b00000000000000000000000000000000 Nil!21863)))

(declare-datatypes ((Unit!33366 0))(
  ( (Unit!33367) )
))
(declare-fun lt!451058 () Unit!33366)

(declare-datatypes ((SeekEntryResult!9614 0))(
  ( (MissingZero!9614 (index!40826 (_ BitVec 32))) (Found!9614 (index!40827 (_ BitVec 32))) (Intermediate!9614 (undefined!10426 Bool) (index!40828 (_ BitVec 32)) (x!91199 (_ BitVec 32))) (Undefined!9614) (MissingVacant!9614 (index!40829 (_ BitVec 32))) )
))
(declare-fun lt!451056 () SeekEntryResult!9614)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64368 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21866) Unit!33366)

(assert (=> b!1025695 (= lt!451058 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11173 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40827 lt!451056) #b00000000000000000000000000000000 Nil!21863))))

(declare-fun arrayCountValidKeys!0 (array!64368 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025695 (= (arrayCountValidKeys!0 lt!451059 #b00000000000000000000000000000000 (size!31503 (_keys!11173 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11173 thiss!1427) #b00000000000000000000000000000000 (size!31503 (_keys!11173 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025695 (= lt!451059 (array!64369 (store (arr!30989 (_keys!11173 thiss!1427)) (index!40827 lt!451056) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31503 (_keys!11173 thiss!1427))))))

(declare-fun lt!451057 () Unit!33366)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64368 (_ BitVec 32) (_ BitVec 64)) Unit!33366)

(assert (=> b!1025695 (= lt!451057 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11173 thiss!1427) (index!40827 lt!451056) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!578427 () Bool)

(declare-fun tp_is_empty!24167 () Bool)

(declare-fun e!578426 () Bool)

(declare-fun array_inv!23853 (array!64368) Bool)

(declare-fun array_inv!23854 (array!64370) Bool)

(assert (=> b!1025696 (= e!578426 (and tp!72387 tp_is_empty!24167 (array_inv!23853 (_keys!11173 thiss!1427)) (array_inv!23854 (_values!6052 thiss!1427)) e!578427))))

(declare-fun b!1025697 () Bool)

(declare-fun e!578432 () Bool)

(assert (=> b!1025697 (= e!578432 tp_is_empty!24167)))

(declare-fun mapNonEmpty!37679 () Bool)

(declare-fun mapRes!37679 () Bool)

(declare-fun tp!72388 () Bool)

(assert (=> mapNonEmpty!37679 (= mapRes!37679 (and tp!72388 e!578432))))

(declare-fun mapKey!37679 () (_ BitVec 32))

(declare-fun mapValue!37679 () ValueCell!11380)

(declare-fun mapRest!37679 () (Array (_ BitVec 32) ValueCell!11380))

(assert (=> mapNonEmpty!37679 (= (arr!30990 (_values!6052 thiss!1427)) (store mapRest!37679 mapKey!37679 mapValue!37679))))

(declare-fun mapIsEmpty!37679 () Bool)

(assert (=> mapIsEmpty!37679 mapRes!37679))

(declare-fun b!1025698 () Bool)

(declare-fun res!686786 () Bool)

(assert (=> b!1025698 (=> res!686786 e!578431)))

(assert (=> b!1025698 (= res!686786 (or (not (= (size!31503 (_keys!11173 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29700 thiss!1427)))) (bvslt (index!40827 lt!451056) #b00000000000000000000000000000000) (bvsge (index!40827 lt!451056) (size!31503 (_keys!11173 thiss!1427)))))))

(declare-fun b!1025700 () Bool)

(declare-fun e!578425 () Bool)

(assert (=> b!1025700 (= e!578425 e!578428)))

(declare-fun res!686788 () Bool)

(assert (=> b!1025700 (=> (not res!686788) (not e!578428))))

(assert (=> b!1025700 (= res!686788 (is-Found!9614 lt!451056))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64368 (_ BitVec 32)) SeekEntryResult!9614)

(assert (=> b!1025700 (= lt!451056 (seekEntry!0 key!909 (_keys!11173 thiss!1427) (mask!29700 thiss!1427)))))

(declare-fun b!1025701 () Bool)

(declare-fun res!686790 () Bool)

(assert (=> b!1025701 (=> (not res!686790) (not e!578425))))

(assert (=> b!1025701 (= res!686790 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025702 () Bool)

(declare-fun res!686785 () Bool)

(assert (=> b!1025702 (=> res!686785 e!578431)))

(assert (=> b!1025702 (= res!686785 (not (arrayNoDuplicates!0 (_keys!11173 thiss!1427) #b00000000000000000000000000000000 Nil!21863)))))

(declare-fun b!1025703 () Bool)

(declare-fun e!578430 () Bool)

(assert (=> b!1025703 (= e!578430 tp_is_empty!24167)))

(declare-fun b!1025704 () Bool)

(declare-fun res!686789 () Bool)

(assert (=> b!1025704 (=> res!686789 e!578431)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025704 (= res!686789 (not (validKeyInArray!0 (select (arr!30989 (_keys!11173 thiss!1427)) (index!40827 lt!451056)))))))

(declare-fun b!1025705 () Bool)

(assert (=> b!1025705 (= e!578427 (and e!578430 mapRes!37679))))

(declare-fun condMapEmpty!37679 () Bool)

(declare-fun mapDefault!37679 () ValueCell!11380)

