; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91524 () Bool)

(assert start!91524)

(declare-fun b!1042245 () Bool)

(declare-fun b_free!21059 () Bool)

(declare-fun b_next!21059 () Bool)

(assert (=> b!1042245 (= b_free!21059 (not b_next!21059))))

(declare-fun tp!74401 () Bool)

(declare-fun b_and!33609 () Bool)

(assert (=> b!1042245 (= tp!74401 b_and!33609)))

(declare-fun b!1042241 () Bool)

(declare-fun e!590420 () Bool)

(declare-fun e!590418 () Bool)

(assert (=> b!1042241 (= e!590420 (not e!590418))))

(declare-fun res!694578 () Bool)

(assert (=> b!1042241 (=> res!694578 e!590418)))

(declare-datatypes ((V!37911 0))(
  ( (V!37912 (val!12440 Int)) )
))
(declare-datatypes ((ValueCell!11686 0))(
  ( (ValueCellFull!11686 (v!15032 V!37911)) (EmptyCell!11686) )
))
(declare-datatypes ((array!65694 0))(
  ( (array!65695 (arr!31601 (Array (_ BitVec 32) (_ BitVec 64))) (size!32137 (_ BitVec 32))) )
))
(declare-datatypes ((array!65696 0))(
  ( (array!65697 (arr!31602 (Array (_ BitVec 32) ValueCell!11686)) (size!32138 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5966 0))(
  ( (LongMapFixedSize!5967 (defaultEntry!6365 Int) (mask!30417 (_ BitVec 32)) (extraKeys!6093 (_ BitVec 32)) (zeroValue!6199 V!37911) (minValue!6199 V!37911) (_size!3038 (_ BitVec 32)) (_keys!11610 array!65694) (_values!6388 array!65696) (_vacant!3038 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5966)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1042241 (= res!694578 (not (validMask!0 (mask!30417 thiss!1427))))))

(declare-fun lt!459390 () array!65694)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1042241 (not (arrayContainsKey!0 lt!459390 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34048 0))(
  ( (Unit!34049) )
))
(declare-fun lt!459387 () Unit!34048)

(declare-datatypes ((SeekEntryResult!9816 0))(
  ( (MissingZero!9816 (index!41634 (_ BitVec 32))) (Found!9816 (index!41635 (_ BitVec 32))) (Intermediate!9816 (undefined!10628 Bool) (index!41636 (_ BitVec 32)) (x!93047 (_ BitVec 32))) (Undefined!9816) (MissingVacant!9816 (index!41637 (_ BitVec 32))) )
))
(declare-fun lt!459385 () SeekEntryResult!9816)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65694 (_ BitVec 32) (_ BitVec 64)) Unit!34048)

(assert (=> b!1042241 (= lt!459387 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11610 thiss!1427) (index!41635 lt!459385) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65694 (_ BitVec 32)) Bool)

(assert (=> b!1042241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459390 (mask!30417 thiss!1427))))

(declare-fun lt!459389 () Unit!34048)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65694 (_ BitVec 32) (_ BitVec 32)) Unit!34048)

(assert (=> b!1042241 (= lt!459389 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11610 thiss!1427) (index!41635 lt!459385) (mask!30417 thiss!1427)))))

(declare-datatypes ((List!22100 0))(
  ( (Nil!22097) (Cons!22096 (h!23304 (_ BitVec 64)) (t!31321 List!22100)) )
))
(declare-fun arrayNoDuplicates!0 (array!65694 (_ BitVec 32) List!22100) Bool)

(assert (=> b!1042241 (arrayNoDuplicates!0 lt!459390 #b00000000000000000000000000000000 Nil!22097)))

(declare-fun lt!459386 () Unit!34048)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65694 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22100) Unit!34048)

(assert (=> b!1042241 (= lt!459386 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11610 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41635 lt!459385) #b00000000000000000000000000000000 Nil!22097))))

(declare-fun arrayCountValidKeys!0 (array!65694 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042241 (= (arrayCountValidKeys!0 lt!459390 #b00000000000000000000000000000000 (size!32137 (_keys!11610 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11610 thiss!1427) #b00000000000000000000000000000000 (size!32137 (_keys!11610 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1042241 (= lt!459390 (array!65695 (store (arr!31601 (_keys!11610 thiss!1427)) (index!41635 lt!459385) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32137 (_keys!11610 thiss!1427))))))

(declare-fun lt!459388 () Unit!34048)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65694 (_ BitVec 32) (_ BitVec 64)) Unit!34048)

(assert (=> b!1042241 (= lt!459388 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11610 thiss!1427) (index!41635 lt!459385) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042242 () Bool)

(declare-fun res!694577 () Bool)

(assert (=> b!1042242 (=> res!694577 e!590418)))

(assert (=> b!1042242 (= res!694577 (or (not (= (size!32138 (_values!6388 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30417 thiss!1427)))) (not (= (size!32137 (_keys!11610 thiss!1427)) (size!32138 (_values!6388 thiss!1427)))) (bvslt (mask!30417 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6093 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6093 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1042244 () Bool)

(declare-fun e!590413 () Bool)

(declare-fun tp_is_empty!24779 () Bool)

(assert (=> b!1042244 (= e!590413 tp_is_empty!24779)))

(declare-fun mapNonEmpty!38774 () Bool)

(declare-fun mapRes!38774 () Bool)

(declare-fun tp!74400 () Bool)

(declare-fun e!590416 () Bool)

(assert (=> mapNonEmpty!38774 (= mapRes!38774 (and tp!74400 e!590416))))

(declare-fun mapKey!38774 () (_ BitVec 32))

(declare-fun mapValue!38774 () ValueCell!11686)

(declare-fun mapRest!38774 () (Array (_ BitVec 32) ValueCell!11686))

(assert (=> mapNonEmpty!38774 (= (arr!31602 (_values!6388 thiss!1427)) (store mapRest!38774 mapKey!38774 mapValue!38774))))

(declare-fun e!590414 () Bool)

(declare-fun e!590419 () Bool)

(declare-fun array_inv!24261 (array!65694) Bool)

(declare-fun array_inv!24262 (array!65696) Bool)

(assert (=> b!1042245 (= e!590414 (and tp!74401 tp_is_empty!24779 (array_inv!24261 (_keys!11610 thiss!1427)) (array_inv!24262 (_values!6388 thiss!1427)) e!590419))))

(declare-fun mapIsEmpty!38774 () Bool)

(assert (=> mapIsEmpty!38774 mapRes!38774))

(declare-fun b!1042246 () Bool)

(assert (=> b!1042246 (= e!590416 tp_is_empty!24779)))

(declare-fun b!1042247 () Bool)

(assert (=> b!1042247 (= e!590418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11610 thiss!1427) (mask!30417 thiss!1427)))))

(declare-fun b!1042248 () Bool)

(declare-fun res!694576 () Bool)

(declare-fun e!590417 () Bool)

(assert (=> b!1042248 (=> (not res!694576) (not e!590417))))

(assert (=> b!1042248 (= res!694576 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1042249 () Bool)

(assert (=> b!1042249 (= e!590419 (and e!590413 mapRes!38774))))

(declare-fun condMapEmpty!38774 () Bool)

(declare-fun mapDefault!38774 () ValueCell!11686)

