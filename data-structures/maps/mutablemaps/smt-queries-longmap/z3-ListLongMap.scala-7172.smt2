; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91686 () Bool)

(assert start!91686)

(declare-fun b!1043285 () Bool)

(declare-fun b_free!21087 () Bool)

(declare-fun b_next!21087 () Bool)

(assert (=> b!1043285 (= b_free!21087 (not b_next!21087))))

(declare-fun tp!74499 () Bool)

(declare-fun b_and!33637 () Bool)

(assert (=> b!1043285 (= tp!74499 b_and!33637)))

(declare-fun b!1043279 () Bool)

(declare-fun e!591122 () Bool)

(declare-fun e!591127 () Bool)

(assert (=> b!1043279 (= e!591122 (not e!591127))))

(declare-fun res!695157 () Bool)

(assert (=> b!1043279 (=> res!695157 e!591127)))

(declare-datatypes ((V!37949 0))(
  ( (V!37950 (val!12454 Int)) )
))
(declare-datatypes ((ValueCell!11700 0))(
  ( (ValueCellFull!11700 (v!15046 V!37949)) (EmptyCell!11700) )
))
(declare-datatypes ((array!65760 0))(
  ( (array!65761 (arr!31629 (Array (_ BitVec 32) (_ BitVec 64))) (size!32165 (_ BitVec 32))) )
))
(declare-datatypes ((array!65762 0))(
  ( (array!65763 (arr!31630 (Array (_ BitVec 32) ValueCell!11700)) (size!32166 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5994 0))(
  ( (LongMapFixedSize!5995 (defaultEntry!6379 Int) (mask!30461 (_ BitVec 32)) (extraKeys!6107 (_ BitVec 32)) (zeroValue!6213 V!37949) (minValue!6213 V!37949) (_size!3052 (_ BitVec 32)) (_keys!11634 array!65760) (_values!6402 array!65762) (_vacant!3052 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5994)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1043279 (= res!695157 (not (validMask!0 (mask!30461 thiss!1427))))))

(declare-fun lt!459847 () array!65760)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043279 (not (arrayContainsKey!0 lt!459847 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9827 0))(
  ( (MissingZero!9827 (index!41678 (_ BitVec 32))) (Found!9827 (index!41679 (_ BitVec 32))) (Intermediate!9827 (undefined!10639 Bool) (index!41680 (_ BitVec 32)) (x!93138 (_ BitVec 32))) (Undefined!9827) (MissingVacant!9827 (index!41681 (_ BitVec 32))) )
))
(declare-fun lt!459846 () SeekEntryResult!9827)

(declare-datatypes ((Unit!34064 0))(
  ( (Unit!34065) )
))
(declare-fun lt!459845 () Unit!34064)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65760 (_ BitVec 32) (_ BitVec 64)) Unit!34064)

(assert (=> b!1043279 (= lt!459845 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11634 thiss!1427) (index!41679 lt!459846) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65760 (_ BitVec 32)) Bool)

(assert (=> b!1043279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459847 (mask!30461 thiss!1427))))

(declare-fun lt!459842 () Unit!34064)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65760 (_ BitVec 32) (_ BitVec 32)) Unit!34064)

(assert (=> b!1043279 (= lt!459842 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11634 thiss!1427) (index!41679 lt!459846) (mask!30461 thiss!1427)))))

(declare-datatypes ((List!22112 0))(
  ( (Nil!22109) (Cons!22108 (h!23316 (_ BitVec 64)) (t!31333 List!22112)) )
))
(declare-fun arrayNoDuplicates!0 (array!65760 (_ BitVec 32) List!22112) Bool)

(assert (=> b!1043279 (arrayNoDuplicates!0 lt!459847 #b00000000000000000000000000000000 Nil!22109)))

(declare-fun lt!459843 () Unit!34064)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65760 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22112) Unit!34064)

(assert (=> b!1043279 (= lt!459843 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11634 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41679 lt!459846) #b00000000000000000000000000000000 Nil!22109))))

(declare-fun arrayCountValidKeys!0 (array!65760 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043279 (= (arrayCountValidKeys!0 lt!459847 #b00000000000000000000000000000000 (size!32165 (_keys!11634 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11634 thiss!1427) #b00000000000000000000000000000000 (size!32165 (_keys!11634 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043279 (= lt!459847 (array!65761 (store (arr!31629 (_keys!11634 thiss!1427)) (index!41679 lt!459846) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32165 (_keys!11634 thiss!1427))))))

(declare-fun lt!459844 () Unit!34064)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65760 (_ BitVec 32) (_ BitVec 64)) Unit!34064)

(assert (=> b!1043279 (= lt!459844 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11634 thiss!1427) (index!41679 lt!459846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043280 () Bool)

(declare-fun e!591125 () Bool)

(declare-fun e!591120 () Bool)

(declare-fun mapRes!38831 () Bool)

(assert (=> b!1043280 (= e!591125 (and e!591120 mapRes!38831))))

(declare-fun condMapEmpty!38831 () Bool)

(declare-fun mapDefault!38831 () ValueCell!11700)

(assert (=> b!1043280 (= condMapEmpty!38831 (= (arr!31630 (_values!6402 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11700)) mapDefault!38831)))))

(declare-fun b!1043281 () Bool)

(declare-fun res!695156 () Bool)

(declare-fun e!591121 () Bool)

(assert (=> b!1043281 (=> (not res!695156) (not e!591121))))

(assert (=> b!1043281 (= res!695156 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38831 () Bool)

(declare-fun tp!74500 () Bool)

(declare-fun e!591126 () Bool)

(assert (=> mapNonEmpty!38831 (= mapRes!38831 (and tp!74500 e!591126))))

(declare-fun mapKey!38831 () (_ BitVec 32))

(declare-fun mapRest!38831 () (Array (_ BitVec 32) ValueCell!11700))

(declare-fun mapValue!38831 () ValueCell!11700)

(assert (=> mapNonEmpty!38831 (= (arr!31630 (_values!6402 thiss!1427)) (store mapRest!38831 mapKey!38831 mapValue!38831))))

(declare-fun res!695161 () Bool)

(assert (=> start!91686 (=> (not res!695161) (not e!591121))))

(declare-fun valid!2202 (LongMapFixedSize!5994) Bool)

(assert (=> start!91686 (= res!695161 (valid!2202 thiss!1427))))

(assert (=> start!91686 e!591121))

(declare-fun e!591124 () Bool)

(assert (=> start!91686 e!591124))

(assert (=> start!91686 true))

(declare-fun b!1043282 () Bool)

(declare-fun tp_is_empty!24807 () Bool)

(assert (=> b!1043282 (= e!591126 tp_is_empty!24807)))

(declare-fun mapIsEmpty!38831 () Bool)

(assert (=> mapIsEmpty!38831 mapRes!38831))

(declare-fun b!1043283 () Bool)

(declare-fun res!695160 () Bool)

(assert (=> b!1043283 (=> res!695160 e!591127)))

(assert (=> b!1043283 (= res!695160 (or (not (= (size!32166 (_values!6402 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30461 thiss!1427)))) (not (= (size!32165 (_keys!11634 thiss!1427)) (size!32166 (_values!6402 thiss!1427)))) (bvslt (mask!30461 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6107 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6107 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1043284 () Bool)

(assert (=> b!1043284 (= e!591120 tp_is_empty!24807)))

(declare-fun array_inv!24283 (array!65760) Bool)

(declare-fun array_inv!24284 (array!65762) Bool)

(assert (=> b!1043285 (= e!591124 (and tp!74499 tp_is_empty!24807 (array_inv!24283 (_keys!11634 thiss!1427)) (array_inv!24284 (_values!6402 thiss!1427)) e!591125))))

(declare-fun b!1043286 () Bool)

(assert (=> b!1043286 (= e!591127 true)))

(declare-fun lt!459848 () Bool)

(assert (=> b!1043286 (= lt!459848 (arrayNoDuplicates!0 (_keys!11634 thiss!1427) #b00000000000000000000000000000000 Nil!22109))))

(declare-fun b!1043287 () Bool)

(declare-fun res!695159 () Bool)

(assert (=> b!1043287 (=> res!695159 e!591127)))

(assert (=> b!1043287 (= res!695159 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11634 thiss!1427) (mask!30461 thiss!1427))))))

(declare-fun b!1043288 () Bool)

(assert (=> b!1043288 (= e!591121 e!591122)))

(declare-fun res!695158 () Bool)

(assert (=> b!1043288 (=> (not res!695158) (not e!591122))))

(get-info :version)

(assert (=> b!1043288 (= res!695158 ((_ is Found!9827) lt!459846))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65760 (_ BitVec 32)) SeekEntryResult!9827)

(assert (=> b!1043288 (= lt!459846 (seekEntry!0 key!909 (_keys!11634 thiss!1427) (mask!30461 thiss!1427)))))

(assert (= (and start!91686 res!695161) b!1043281))

(assert (= (and b!1043281 res!695156) b!1043288))

(assert (= (and b!1043288 res!695158) b!1043279))

(assert (= (and b!1043279 (not res!695157)) b!1043283))

(assert (= (and b!1043283 (not res!695160)) b!1043287))

(assert (= (and b!1043287 (not res!695159)) b!1043286))

(assert (= (and b!1043280 condMapEmpty!38831) mapIsEmpty!38831))

(assert (= (and b!1043280 (not condMapEmpty!38831)) mapNonEmpty!38831))

(assert (= (and mapNonEmpty!38831 ((_ is ValueCellFull!11700) mapValue!38831)) b!1043282))

(assert (= (and b!1043280 ((_ is ValueCellFull!11700) mapDefault!38831)) b!1043284))

(assert (= b!1043285 b!1043280))

(assert (= start!91686 b!1043285))

(declare-fun m!962603 () Bool)

(assert (=> b!1043279 m!962603))

(declare-fun m!962605 () Bool)

(assert (=> b!1043279 m!962605))

(declare-fun m!962607 () Bool)

(assert (=> b!1043279 m!962607))

(declare-fun m!962609 () Bool)

(assert (=> b!1043279 m!962609))

(declare-fun m!962611 () Bool)

(assert (=> b!1043279 m!962611))

(declare-fun m!962613 () Bool)

(assert (=> b!1043279 m!962613))

(declare-fun m!962615 () Bool)

(assert (=> b!1043279 m!962615))

(declare-fun m!962617 () Bool)

(assert (=> b!1043279 m!962617))

(declare-fun m!962619 () Bool)

(assert (=> b!1043279 m!962619))

(declare-fun m!962621 () Bool)

(assert (=> b!1043279 m!962621))

(declare-fun m!962623 () Bool)

(assert (=> b!1043279 m!962623))

(declare-fun m!962625 () Bool)

(assert (=> b!1043286 m!962625))

(declare-fun m!962627 () Bool)

(assert (=> mapNonEmpty!38831 m!962627))

(declare-fun m!962629 () Bool)

(assert (=> b!1043288 m!962629))

(declare-fun m!962631 () Bool)

(assert (=> start!91686 m!962631))

(declare-fun m!962633 () Bool)

(assert (=> b!1043285 m!962633))

(declare-fun m!962635 () Bool)

(assert (=> b!1043285 m!962635))

(declare-fun m!962637 () Bool)

(assert (=> b!1043287 m!962637))

(check-sat (not start!91686) (not b!1043286) (not b!1043279) (not b!1043285) (not mapNonEmpty!38831) tp_is_empty!24807 (not b!1043287) b_and!33637 (not b!1043288) (not b_next!21087))
(check-sat b_and!33637 (not b_next!21087))
