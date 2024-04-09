; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91266 () Bool)

(assert start!91266)

(declare-fun b!1040818 () Bool)

(declare-fun b_free!21027 () Bool)

(declare-fun b_next!21027 () Bool)

(assert (=> b!1040818 (= b_free!21027 (not b_next!21027))))

(declare-fun tp!74286 () Bool)

(declare-fun b_and!33577 () Bool)

(assert (=> b!1040818 (= tp!74286 b_and!33577)))

(declare-fun b!1040812 () Bool)

(declare-fun e!589384 () Bool)

(declare-fun e!589385 () Bool)

(assert (=> b!1040812 (= e!589384 e!589385)))

(declare-fun res!693925 () Bool)

(assert (=> b!1040812 (=> (not res!693925) (not e!589385))))

(declare-datatypes ((SeekEntryResult!9802 0))(
  ( (MissingZero!9802 (index!41578 (_ BitVec 32))) (Found!9802 (index!41579 (_ BitVec 32))) (Intermediate!9802 (undefined!10614 Bool) (index!41580 (_ BitVec 32)) (x!92917 (_ BitVec 32))) (Undefined!9802) (MissingVacant!9802 (index!41581 (_ BitVec 32))) )
))
(declare-fun lt!458733 () SeekEntryResult!9802)

(get-info :version)

(assert (=> b!1040812 (= res!693925 ((_ is Found!9802) lt!458733))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37869 0))(
  ( (V!37870 (val!12424 Int)) )
))
(declare-datatypes ((ValueCell!11670 0))(
  ( (ValueCellFull!11670 (v!15012 V!37869)) (EmptyCell!11670) )
))
(declare-datatypes ((array!65620 0))(
  ( (array!65621 (arr!31569 (Array (_ BitVec 32) (_ BitVec 64))) (size!32101 (_ BitVec 32))) )
))
(declare-datatypes ((array!65622 0))(
  ( (array!65623 (arr!31570 (Array (_ BitVec 32) ValueCell!11670)) (size!32102 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5934 0))(
  ( (LongMapFixedSize!5935 (defaultEntry!6349 Int) (mask!30351 (_ BitVec 32)) (extraKeys!6077 (_ BitVec 32)) (zeroValue!6183 V!37869) (minValue!6183 V!37869) (_size!3022 (_ BitVec 32)) (_keys!11572 array!65620) (_values!6372 array!65622) (_vacant!3022 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5934)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65620 (_ BitVec 32)) SeekEntryResult!9802)

(assert (=> b!1040812 (= lt!458733 (seekEntry!0 key!909 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)))))

(declare-fun b!1040813 () Bool)

(declare-fun res!693926 () Bool)

(assert (=> b!1040813 (=> (not res!693926) (not e!589384))))

(assert (=> b!1040813 (= res!693926 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38707 () Bool)

(declare-fun mapRes!38707 () Bool)

(declare-fun tp!74285 () Bool)

(declare-fun e!589386 () Bool)

(assert (=> mapNonEmpty!38707 (= mapRes!38707 (and tp!74285 e!589386))))

(declare-fun mapValue!38707 () ValueCell!11670)

(declare-fun mapKey!38707 () (_ BitVec 32))

(declare-fun mapRest!38707 () (Array (_ BitVec 32) ValueCell!11670))

(assert (=> mapNonEmpty!38707 (= (arr!31570 (_values!6372 thiss!1427)) (store mapRest!38707 mapKey!38707 mapValue!38707))))

(declare-fun b!1040814 () Bool)

(declare-fun tp_is_empty!24747 () Bool)

(assert (=> b!1040814 (= e!589386 tp_is_empty!24747)))

(declare-fun mapIsEmpty!38707 () Bool)

(assert (=> mapIsEmpty!38707 mapRes!38707))

(declare-fun b!1040815 () Bool)

(declare-fun e!589382 () Bool)

(declare-fun e!589387 () Bool)

(assert (=> b!1040815 (= e!589382 (and e!589387 mapRes!38707))))

(declare-fun condMapEmpty!38707 () Bool)

(declare-fun mapDefault!38707 () ValueCell!11670)

(assert (=> b!1040815 (= condMapEmpty!38707 (= (arr!31570 (_values!6372 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11670)) mapDefault!38707)))))

(declare-fun b!1040816 () Bool)

(declare-fun e!589383 () Bool)

(assert (=> b!1040816 (= e!589385 (not e!589383))))

(declare-fun res!693923 () Bool)

(assert (=> b!1040816 (=> res!693923 e!589383)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1040816 (= res!693923 (not (validMask!0 (mask!30351 thiss!1427))))))

(declare-fun lt!458734 () array!65620)

(declare-fun arrayContainsKey!0 (array!65620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1040816 (not (arrayContainsKey!0 lt!458734 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34022 0))(
  ( (Unit!34023) )
))
(declare-fun lt!458737 () Unit!34022)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65620 (_ BitVec 32) (_ BitVec 64)) Unit!34022)

(assert (=> b!1040816 (= lt!458737 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11572 thiss!1427) (index!41579 lt!458733) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65620 (_ BitVec 32)) Bool)

(assert (=> b!1040816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458734 (mask!30351 thiss!1427))))

(declare-fun lt!458736 () Unit!34022)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65620 (_ BitVec 32) (_ BitVec 32)) Unit!34022)

(assert (=> b!1040816 (= lt!458736 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11572 thiss!1427) (index!41579 lt!458733) (mask!30351 thiss!1427)))))

(declare-datatypes ((List!22087 0))(
  ( (Nil!22084) (Cons!22083 (h!23287 (_ BitVec 64)) (t!31308 List!22087)) )
))
(declare-fun arrayNoDuplicates!0 (array!65620 (_ BitVec 32) List!22087) Bool)

(assert (=> b!1040816 (arrayNoDuplicates!0 lt!458734 #b00000000000000000000000000000000 Nil!22084)))

(declare-fun lt!458732 () Unit!34022)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65620 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22087) Unit!34022)

(assert (=> b!1040816 (= lt!458732 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11572 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41579 lt!458733) #b00000000000000000000000000000000 Nil!22084))))

(declare-fun arrayCountValidKeys!0 (array!65620 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040816 (= (arrayCountValidKeys!0 lt!458734 #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11572 thiss!1427) #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040816 (= lt!458734 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun lt!458735 () Unit!34022)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65620 (_ BitVec 32) (_ BitVec 64)) Unit!34022)

(assert (=> b!1040816 (= lt!458735 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11572 thiss!1427) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!693924 () Bool)

(assert (=> start!91266 (=> (not res!693924) (not e!589384))))

(declare-fun valid!2183 (LongMapFixedSize!5934) Bool)

(assert (=> start!91266 (= res!693924 (valid!2183 thiss!1427))))

(assert (=> start!91266 e!589384))

(declare-fun e!589388 () Bool)

(assert (=> start!91266 e!589388))

(assert (=> start!91266 true))

(declare-fun b!1040817 () Bool)

(assert (=> b!1040817 (= e!589387 tp_is_empty!24747)))

(declare-fun array_inv!24235 (array!65620) Bool)

(declare-fun array_inv!24236 (array!65622) Bool)

(assert (=> b!1040818 (= e!589388 (and tp!74286 tp_is_empty!24747 (array_inv!24235 (_keys!11572 thiss!1427)) (array_inv!24236 (_values!6372 thiss!1427)) e!589382))))

(declare-fun b!1040819 () Bool)

(assert (=> b!1040819 (= e!589383 (= (size!32102 (_values!6372 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30351 thiss!1427))))))

(assert (= (and start!91266 res!693924) b!1040813))

(assert (= (and b!1040813 res!693926) b!1040812))

(assert (= (and b!1040812 res!693925) b!1040816))

(assert (= (and b!1040816 (not res!693923)) b!1040819))

(assert (= (and b!1040815 condMapEmpty!38707) mapIsEmpty!38707))

(assert (= (and b!1040815 (not condMapEmpty!38707)) mapNonEmpty!38707))

(assert (= (and mapNonEmpty!38707 ((_ is ValueCellFull!11670) mapValue!38707)) b!1040814))

(assert (= (and b!1040815 ((_ is ValueCellFull!11670) mapDefault!38707)) b!1040817))

(assert (= b!1040818 b!1040815))

(assert (= start!91266 b!1040818))

(declare-fun m!960463 () Bool)

(assert (=> start!91266 m!960463))

(declare-fun m!960465 () Bool)

(assert (=> mapNonEmpty!38707 m!960465))

(declare-fun m!960467 () Bool)

(assert (=> b!1040816 m!960467))

(declare-fun m!960469 () Bool)

(assert (=> b!1040816 m!960469))

(declare-fun m!960471 () Bool)

(assert (=> b!1040816 m!960471))

(declare-fun m!960473 () Bool)

(assert (=> b!1040816 m!960473))

(declare-fun m!960475 () Bool)

(assert (=> b!1040816 m!960475))

(declare-fun m!960477 () Bool)

(assert (=> b!1040816 m!960477))

(declare-fun m!960479 () Bool)

(assert (=> b!1040816 m!960479))

(declare-fun m!960481 () Bool)

(assert (=> b!1040816 m!960481))

(declare-fun m!960483 () Bool)

(assert (=> b!1040816 m!960483))

(declare-fun m!960485 () Bool)

(assert (=> b!1040816 m!960485))

(declare-fun m!960487 () Bool)

(assert (=> b!1040816 m!960487))

(declare-fun m!960489 () Bool)

(assert (=> b!1040812 m!960489))

(declare-fun m!960491 () Bool)

(assert (=> b!1040818 m!960491))

(declare-fun m!960493 () Bool)

(assert (=> b!1040818 m!960493))

(check-sat (not b!1040816) tp_is_empty!24747 (not b!1040818) b_and!33577 (not b_next!21027) (not mapNonEmpty!38707) (not b!1040812) (not start!91266))
(check-sat b_and!33577 (not b_next!21027))
(get-model)

(declare-fun b!1040856 () Bool)

(declare-fun e!589419 () SeekEntryResult!9802)

(declare-fun lt!458764 () SeekEntryResult!9802)

(assert (=> b!1040856 (= e!589419 (Found!9802 (index!41580 lt!458764)))))

(declare-fun d!125673 () Bool)

(declare-fun lt!458765 () SeekEntryResult!9802)

(assert (=> d!125673 (and (or ((_ is MissingVacant!9802) lt!458765) (not ((_ is Found!9802) lt!458765)) (and (bvsge (index!41579 lt!458765) #b00000000000000000000000000000000) (bvslt (index!41579 lt!458765) (size!32101 (_keys!11572 thiss!1427))))) (not ((_ is MissingVacant!9802) lt!458765)) (or (not ((_ is Found!9802) lt!458765)) (= (select (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458765)) key!909)))))

(declare-fun e!589421 () SeekEntryResult!9802)

(assert (=> d!125673 (= lt!458765 e!589421)))

(declare-fun c!105492 () Bool)

(assert (=> d!125673 (= c!105492 (and ((_ is Intermediate!9802) lt!458764) (undefined!10614 lt!458764)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65620 (_ BitVec 32)) SeekEntryResult!9802)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125673 (= lt!458764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30351 thiss!1427)) key!909 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)))))

(assert (=> d!125673 (validMask!0 (mask!30351 thiss!1427))))

(assert (=> d!125673 (= (seekEntry!0 key!909 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)) lt!458765)))

(declare-fun b!1040857 () Bool)

(declare-fun c!105493 () Bool)

(declare-fun lt!458766 () (_ BitVec 64))

(assert (=> b!1040857 (= c!105493 (= lt!458766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589420 () SeekEntryResult!9802)

(assert (=> b!1040857 (= e!589419 e!589420)))

(declare-fun b!1040858 () Bool)

(declare-fun lt!458767 () SeekEntryResult!9802)

(assert (=> b!1040858 (= e!589420 (ite ((_ is MissingVacant!9802) lt!458767) (MissingZero!9802 (index!41581 lt!458767)) lt!458767))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65620 (_ BitVec 32)) SeekEntryResult!9802)

(assert (=> b!1040858 (= lt!458767 (seekKeyOrZeroReturnVacant!0 (x!92917 lt!458764) (index!41580 lt!458764) (index!41580 lt!458764) key!909 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)))))

(declare-fun b!1040859 () Bool)

(assert (=> b!1040859 (= e!589421 e!589419)))

(assert (=> b!1040859 (= lt!458766 (select (arr!31569 (_keys!11572 thiss!1427)) (index!41580 lt!458764)))))

(declare-fun c!105494 () Bool)

(assert (=> b!1040859 (= c!105494 (= lt!458766 key!909))))

(declare-fun b!1040860 () Bool)

(assert (=> b!1040860 (= e!589420 (MissingZero!9802 (index!41580 lt!458764)))))

(declare-fun b!1040861 () Bool)

(assert (=> b!1040861 (= e!589421 Undefined!9802)))

(assert (= (and d!125673 c!105492) b!1040861))

(assert (= (and d!125673 (not c!105492)) b!1040859))

(assert (= (and b!1040859 c!105494) b!1040856))

(assert (= (and b!1040859 (not c!105494)) b!1040857))

(assert (= (and b!1040857 c!105493) b!1040860))

(assert (= (and b!1040857 (not c!105493)) b!1040858))

(declare-fun m!960527 () Bool)

(assert (=> d!125673 m!960527))

(declare-fun m!960529 () Bool)

(assert (=> d!125673 m!960529))

(assert (=> d!125673 m!960529))

(declare-fun m!960531 () Bool)

(assert (=> d!125673 m!960531))

(assert (=> d!125673 m!960467))

(declare-fun m!960533 () Bool)

(assert (=> b!1040858 m!960533))

(declare-fun m!960535 () Bool)

(assert (=> b!1040859 m!960535))

(assert (=> b!1040812 d!125673))

(declare-fun d!125675 () Bool)

(declare-fun res!693945 () Bool)

(declare-fun e!589424 () Bool)

(assert (=> d!125675 (=> (not res!693945) (not e!589424))))

(declare-fun simpleValid!435 (LongMapFixedSize!5934) Bool)

(assert (=> d!125675 (= res!693945 (simpleValid!435 thiss!1427))))

(assert (=> d!125675 (= (valid!2183 thiss!1427) e!589424)))

(declare-fun b!1040868 () Bool)

(declare-fun res!693946 () Bool)

(assert (=> b!1040868 (=> (not res!693946) (not e!589424))))

(assert (=> b!1040868 (= res!693946 (= (arrayCountValidKeys!0 (_keys!11572 thiss!1427) #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) (_size!3022 thiss!1427)))))

(declare-fun b!1040869 () Bool)

(declare-fun res!693947 () Bool)

(assert (=> b!1040869 (=> (not res!693947) (not e!589424))))

(assert (=> b!1040869 (= res!693947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)))))

(declare-fun b!1040870 () Bool)

(assert (=> b!1040870 (= e!589424 (arrayNoDuplicates!0 (_keys!11572 thiss!1427) #b00000000000000000000000000000000 Nil!22084))))

(assert (= (and d!125675 res!693945) b!1040868))

(assert (= (and b!1040868 res!693946) b!1040869))

(assert (= (and b!1040869 res!693947) b!1040870))

(declare-fun m!960537 () Bool)

(assert (=> d!125675 m!960537))

(assert (=> b!1040868 m!960487))

(declare-fun m!960539 () Bool)

(assert (=> b!1040869 m!960539))

(declare-fun m!960541 () Bool)

(assert (=> b!1040870 m!960541))

(assert (=> start!91266 d!125675))

(declare-fun b!1040881 () Bool)

(declare-fun e!589436 () Bool)

(declare-fun call!44081 () Bool)

(assert (=> b!1040881 (= e!589436 call!44081)))

(declare-fun b!1040882 () Bool)

(declare-fun e!589435 () Bool)

(declare-fun e!589433 () Bool)

(assert (=> b!1040882 (= e!589435 e!589433)))

(declare-fun res!693954 () Bool)

(assert (=> b!1040882 (=> (not res!693954) (not e!589433))))

(declare-fun e!589434 () Bool)

(assert (=> b!1040882 (= res!693954 (not e!589434))))

(declare-fun res!693955 () Bool)

(assert (=> b!1040882 (=> (not res!693955) (not e!589434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1040882 (= res!693955 (validKeyInArray!0 (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(declare-fun d!125677 () Bool)

(declare-fun res!693956 () Bool)

(assert (=> d!125677 (=> res!693956 e!589435)))

(assert (=> d!125677 (= res!693956 (bvsge #b00000000000000000000000000000000 (size!32101 lt!458734)))))

(assert (=> d!125677 (= (arrayNoDuplicates!0 lt!458734 #b00000000000000000000000000000000 Nil!22084) e!589435)))

(declare-fun b!1040883 () Bool)

(declare-fun contains!6075 (List!22087 (_ BitVec 64)) Bool)

(assert (=> b!1040883 (= e!589434 (contains!6075 Nil!22084 (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(declare-fun b!1040884 () Bool)

(assert (=> b!1040884 (= e!589436 call!44081)))

(declare-fun bm!44078 () Bool)

(declare-fun c!105497 () Bool)

(assert (=> bm!44078 (= call!44081 (arrayNoDuplicates!0 lt!458734 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105497 (Cons!22083 (select (arr!31569 lt!458734) #b00000000000000000000000000000000) Nil!22084) Nil!22084)))))

(declare-fun b!1040885 () Bool)

(assert (=> b!1040885 (= e!589433 e!589436)))

(assert (=> b!1040885 (= c!105497 (validKeyInArray!0 (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(assert (= (and d!125677 (not res!693956)) b!1040882))

(assert (= (and b!1040882 res!693955) b!1040883))

(assert (= (and b!1040882 res!693954) b!1040885))

(assert (= (and b!1040885 c!105497) b!1040881))

(assert (= (and b!1040885 (not c!105497)) b!1040884))

(assert (= (or b!1040881 b!1040884) bm!44078))

(declare-fun m!960543 () Bool)

(assert (=> b!1040882 m!960543))

(assert (=> b!1040882 m!960543))

(declare-fun m!960545 () Bool)

(assert (=> b!1040882 m!960545))

(assert (=> b!1040883 m!960543))

(assert (=> b!1040883 m!960543))

(declare-fun m!960547 () Bool)

(assert (=> b!1040883 m!960547))

(assert (=> bm!44078 m!960543))

(declare-fun m!960549 () Bool)

(assert (=> bm!44078 m!960549))

(assert (=> b!1040885 m!960543))

(assert (=> b!1040885 m!960543))

(assert (=> b!1040885 m!960545))

(assert (=> b!1040816 d!125677))

(declare-fun d!125679 () Bool)

(declare-fun res!693961 () Bool)

(declare-fun e!589441 () Bool)

(assert (=> d!125679 (=> res!693961 e!589441)))

(assert (=> d!125679 (= res!693961 (= (select (arr!31569 lt!458734) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125679 (= (arrayContainsKey!0 lt!458734 key!909 #b00000000000000000000000000000000) e!589441)))

(declare-fun b!1040890 () Bool)

(declare-fun e!589442 () Bool)

(assert (=> b!1040890 (= e!589441 e!589442)))

(declare-fun res!693962 () Bool)

(assert (=> b!1040890 (=> (not res!693962) (not e!589442))))

(assert (=> b!1040890 (= res!693962 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 lt!458734)))))

(declare-fun b!1040891 () Bool)

(assert (=> b!1040891 (= e!589442 (arrayContainsKey!0 lt!458734 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125679 (not res!693961)) b!1040890))

(assert (= (and b!1040890 res!693962) b!1040891))

(assert (=> d!125679 m!960543))

(declare-fun m!960551 () Bool)

(assert (=> b!1040891 m!960551))

(assert (=> b!1040816 d!125679))

(declare-fun d!125681 () Bool)

(declare-fun e!589445 () Bool)

(assert (=> d!125681 e!589445))

(declare-fun res!693965 () Bool)

(assert (=> d!125681 (=> (not res!693965) (not e!589445))))

(assert (=> d!125681 (= res!693965 (and (bvsge (index!41579 lt!458733) #b00000000000000000000000000000000) (bvslt (index!41579 lt!458733) (size!32101 (_keys!11572 thiss!1427)))))))

(declare-fun lt!458770 () Unit!34022)

(declare-fun choose!53 (array!65620 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22087) Unit!34022)

(assert (=> d!125681 (= lt!458770 (choose!53 (_keys!11572 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41579 lt!458733) #b00000000000000000000000000000000 Nil!22084))))

(assert (=> d!125681 (bvslt (size!32101 (_keys!11572 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125681 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11572 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41579 lt!458733) #b00000000000000000000000000000000 Nil!22084) lt!458770)))

(declare-fun b!1040894 () Bool)

(assert (=> b!1040894 (= e!589445 (arrayNoDuplicates!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000000 Nil!22084))))

(assert (= (and d!125681 res!693965) b!1040894))

(declare-fun m!960553 () Bool)

(assert (=> d!125681 m!960553))

(assert (=> b!1040894 m!960481))

(declare-fun m!960555 () Bool)

(assert (=> b!1040894 m!960555))

(assert (=> b!1040816 d!125681))

(declare-fun d!125683 () Bool)

(declare-fun res!693971 () Bool)

(declare-fun e!589453 () Bool)

(assert (=> d!125683 (=> res!693971 e!589453)))

(assert (=> d!125683 (= res!693971 (bvsge #b00000000000000000000000000000000 (size!32101 lt!458734)))))

(assert (=> d!125683 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458734 (mask!30351 thiss!1427)) e!589453)))

(declare-fun b!1040903 () Bool)

(declare-fun e!589452 () Bool)

(declare-fun call!44084 () Bool)

(assert (=> b!1040903 (= e!589452 call!44084)))

(declare-fun b!1040904 () Bool)

(declare-fun e!589454 () Bool)

(assert (=> b!1040904 (= e!589453 e!589454)))

(declare-fun c!105500 () Bool)

(assert (=> b!1040904 (= c!105500 (validKeyInArray!0 (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(declare-fun b!1040905 () Bool)

(assert (=> b!1040905 (= e!589454 call!44084)))

(declare-fun bm!44081 () Bool)

(assert (=> bm!44081 (= call!44084 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458734 (mask!30351 thiss!1427)))))

(declare-fun b!1040906 () Bool)

(assert (=> b!1040906 (= e!589454 e!589452)))

(declare-fun lt!458778 () (_ BitVec 64))

(assert (=> b!1040906 (= lt!458778 (select (arr!31569 lt!458734) #b00000000000000000000000000000000))))

(declare-fun lt!458779 () Unit!34022)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65620 (_ BitVec 64) (_ BitVec 32)) Unit!34022)

(assert (=> b!1040906 (= lt!458779 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458734 lt!458778 #b00000000000000000000000000000000))))

(assert (=> b!1040906 (arrayContainsKey!0 lt!458734 lt!458778 #b00000000000000000000000000000000)))

(declare-fun lt!458777 () Unit!34022)

(assert (=> b!1040906 (= lt!458777 lt!458779)))

(declare-fun res!693970 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65620 (_ BitVec 32)) SeekEntryResult!9802)

(assert (=> b!1040906 (= res!693970 (= (seekEntryOrOpen!0 (select (arr!31569 lt!458734) #b00000000000000000000000000000000) lt!458734 (mask!30351 thiss!1427)) (Found!9802 #b00000000000000000000000000000000)))))

(assert (=> b!1040906 (=> (not res!693970) (not e!589452))))

(assert (= (and d!125683 (not res!693971)) b!1040904))

(assert (= (and b!1040904 c!105500) b!1040906))

(assert (= (and b!1040904 (not c!105500)) b!1040905))

(assert (= (and b!1040906 res!693970) b!1040903))

(assert (= (or b!1040903 b!1040905) bm!44081))

(assert (=> b!1040904 m!960543))

(assert (=> b!1040904 m!960543))

(assert (=> b!1040904 m!960545))

(declare-fun m!960557 () Bool)

(assert (=> bm!44081 m!960557))

(assert (=> b!1040906 m!960543))

(declare-fun m!960559 () Bool)

(assert (=> b!1040906 m!960559))

(declare-fun m!960561 () Bool)

(assert (=> b!1040906 m!960561))

(assert (=> b!1040906 m!960543))

(declare-fun m!960563 () Bool)

(assert (=> b!1040906 m!960563))

(assert (=> b!1040816 d!125683))

(declare-fun b!1040915 () Bool)

(declare-fun e!589459 () (_ BitVec 32))

(assert (=> b!1040915 (= e!589459 #b00000000000000000000000000000000)))

(declare-fun b!1040916 () Bool)

(declare-fun e!589460 () (_ BitVec 32))

(assert (=> b!1040916 (= e!589459 e!589460)))

(declare-fun c!105505 () Bool)

(assert (=> b!1040916 (= c!105505 (validKeyInArray!0 (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(declare-fun bm!44084 () Bool)

(declare-fun call!44087 () (_ BitVec 32))

(assert (=> bm!44084 (= call!44087 (arrayCountValidKeys!0 lt!458734 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun d!125685 () Bool)

(declare-fun lt!458782 () (_ BitVec 32))

(assert (=> d!125685 (and (bvsge lt!458782 #b00000000000000000000000000000000) (bvsle lt!458782 (bvsub (size!32101 lt!458734) #b00000000000000000000000000000000)))))

(assert (=> d!125685 (= lt!458782 e!589459)))

(declare-fun c!105506 () Bool)

(assert (=> d!125685 (= c!105506 (bvsge #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125685 (and (bvsle #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32101 (_keys!11572 thiss!1427)) (size!32101 lt!458734)))))

(assert (=> d!125685 (= (arrayCountValidKeys!0 lt!458734 #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) lt!458782)))

(declare-fun b!1040917 () Bool)

(assert (=> b!1040917 (= e!589460 call!44087)))

(declare-fun b!1040918 () Bool)

(assert (=> b!1040918 (= e!589460 (bvadd #b00000000000000000000000000000001 call!44087))))

(assert (= (and d!125685 c!105506) b!1040915))

(assert (= (and d!125685 (not c!105506)) b!1040916))

(assert (= (and b!1040916 c!105505) b!1040918))

(assert (= (and b!1040916 (not c!105505)) b!1040917))

(assert (= (or b!1040918 b!1040917) bm!44084))

(assert (=> b!1040916 m!960543))

(assert (=> b!1040916 m!960543))

(assert (=> b!1040916 m!960545))

(declare-fun m!960565 () Bool)

(assert (=> bm!44084 m!960565))

(assert (=> b!1040816 d!125685))

(declare-fun d!125687 () Bool)

(declare-fun e!589463 () Bool)

(assert (=> d!125687 e!589463))

(declare-fun res!693974 () Bool)

(assert (=> d!125687 (=> (not res!693974) (not e!589463))))

(assert (=> d!125687 (= res!693974 (bvslt (index!41579 lt!458733) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun lt!458785 () Unit!34022)

(declare-fun choose!121 (array!65620 (_ BitVec 32) (_ BitVec 64)) Unit!34022)

(assert (=> d!125687 (= lt!458785 (choose!121 (_keys!11572 thiss!1427) (index!41579 lt!458733) key!909))))

(assert (=> d!125687 (bvsge (index!41579 lt!458733) #b00000000000000000000000000000000)))

(assert (=> d!125687 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11572 thiss!1427) (index!41579 lt!458733) key!909) lt!458785)))

(declare-fun b!1040921 () Bool)

(assert (=> b!1040921 (= e!589463 (not (arrayContainsKey!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!125687 res!693974) b!1040921))

(declare-fun m!960567 () Bool)

(assert (=> d!125687 m!960567))

(assert (=> b!1040921 m!960481))

(declare-fun m!960569 () Bool)

(assert (=> b!1040921 m!960569))

(assert (=> b!1040816 d!125687))

(declare-fun b!1040931 () Bool)

(declare-fun res!693985 () Bool)

(declare-fun e!589468 () Bool)

(assert (=> b!1040931 (=> (not res!693985) (not e!589468))))

(assert (=> b!1040931 (= res!693985 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1040930 () Bool)

(declare-fun res!693984 () Bool)

(assert (=> b!1040930 (=> (not res!693984) (not e!589468))))

(assert (=> b!1040930 (= res!693984 (validKeyInArray!0 (select (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733))))))

(declare-fun d!125689 () Bool)

(declare-fun e!589469 () Bool)

(assert (=> d!125689 e!589469))

(declare-fun res!693986 () Bool)

(assert (=> d!125689 (=> (not res!693986) (not e!589469))))

(assert (=> d!125689 (= res!693986 (and (bvsge (index!41579 lt!458733) #b00000000000000000000000000000000) (bvslt (index!41579 lt!458733) (size!32101 (_keys!11572 thiss!1427)))))))

(declare-fun lt!458788 () Unit!34022)

(declare-fun choose!82 (array!65620 (_ BitVec 32) (_ BitVec 64)) Unit!34022)

(assert (=> d!125689 (= lt!458788 (choose!82 (_keys!11572 thiss!1427) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125689 e!589468))

(declare-fun res!693983 () Bool)

(assert (=> d!125689 (=> (not res!693983) (not e!589468))))

(assert (=> d!125689 (= res!693983 (and (bvsge (index!41579 lt!458733) #b00000000000000000000000000000000) (bvslt (index!41579 lt!458733) (size!32101 (_keys!11572 thiss!1427)))))))

(assert (=> d!125689 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11572 thiss!1427) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458788)))

(declare-fun b!1040932 () Bool)

(assert (=> b!1040932 (= e!589468 (bvslt (size!32101 (_keys!11572 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1040933 () Bool)

(assert (=> b!1040933 (= e!589469 (= (arrayCountValidKeys!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11572 thiss!1427) #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000001)))))

(assert (= (and d!125689 res!693983) b!1040930))

(assert (= (and b!1040930 res!693984) b!1040931))

(assert (= (and b!1040931 res!693985) b!1040932))

(assert (= (and d!125689 res!693986) b!1040933))

(declare-fun m!960571 () Bool)

(assert (=> b!1040931 m!960571))

(declare-fun m!960573 () Bool)

(assert (=> b!1040930 m!960573))

(assert (=> b!1040930 m!960573))

(declare-fun m!960575 () Bool)

(assert (=> b!1040930 m!960575))

(declare-fun m!960577 () Bool)

(assert (=> d!125689 m!960577))

(assert (=> b!1040933 m!960481))

(declare-fun m!960579 () Bool)

(assert (=> b!1040933 m!960579))

(assert (=> b!1040933 m!960487))

(assert (=> b!1040816 d!125689))

(declare-fun b!1040934 () Bool)

(declare-fun e!589470 () (_ BitVec 32))

(assert (=> b!1040934 (= e!589470 #b00000000000000000000000000000000)))

(declare-fun b!1040935 () Bool)

(declare-fun e!589471 () (_ BitVec 32))

(assert (=> b!1040935 (= e!589470 e!589471)))

(declare-fun c!105507 () Bool)

(assert (=> b!1040935 (= c!105507 (validKeyInArray!0 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44085 () Bool)

(declare-fun call!44088 () (_ BitVec 32))

(assert (=> bm!44085 (= call!44088 (arrayCountValidKeys!0 (_keys!11572 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun d!125691 () Bool)

(declare-fun lt!458789 () (_ BitVec 32))

(assert (=> d!125691 (and (bvsge lt!458789 #b00000000000000000000000000000000) (bvsle lt!458789 (bvsub (size!32101 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125691 (= lt!458789 e!589470)))

(declare-fun c!105508 () Bool)

(assert (=> d!125691 (= c!105508 (bvsge #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125691 (and (bvsle #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32101 (_keys!11572 thiss!1427)) (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125691 (= (arrayCountValidKeys!0 (_keys!11572 thiss!1427) #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) lt!458789)))

(declare-fun b!1040936 () Bool)

(assert (=> b!1040936 (= e!589471 call!44088)))

(declare-fun b!1040937 () Bool)

(assert (=> b!1040937 (= e!589471 (bvadd #b00000000000000000000000000000001 call!44088))))

(assert (= (and d!125691 c!105508) b!1040934))

(assert (= (and d!125691 (not c!105508)) b!1040935))

(assert (= (and b!1040935 c!105507) b!1040937))

(assert (= (and b!1040935 (not c!105507)) b!1040936))

(assert (= (or b!1040937 b!1040936) bm!44085))

(declare-fun m!960581 () Bool)

(assert (=> b!1040935 m!960581))

(assert (=> b!1040935 m!960581))

(declare-fun m!960583 () Bool)

(assert (=> b!1040935 m!960583))

(declare-fun m!960585 () Bool)

(assert (=> bm!44085 m!960585))

(assert (=> b!1040816 d!125691))

(declare-fun d!125693 () Bool)

(assert (=> d!125693 (= (validMask!0 (mask!30351 thiss!1427)) (and (or (= (mask!30351 thiss!1427) #b00000000000000000000000000000111) (= (mask!30351 thiss!1427) #b00000000000000000000000000001111) (= (mask!30351 thiss!1427) #b00000000000000000000000000011111) (= (mask!30351 thiss!1427) #b00000000000000000000000000111111) (= (mask!30351 thiss!1427) #b00000000000000000000000001111111) (= (mask!30351 thiss!1427) #b00000000000000000000000011111111) (= (mask!30351 thiss!1427) #b00000000000000000000000111111111) (= (mask!30351 thiss!1427) #b00000000000000000000001111111111) (= (mask!30351 thiss!1427) #b00000000000000000000011111111111) (= (mask!30351 thiss!1427) #b00000000000000000000111111111111) (= (mask!30351 thiss!1427) #b00000000000000000001111111111111) (= (mask!30351 thiss!1427) #b00000000000000000011111111111111) (= (mask!30351 thiss!1427) #b00000000000000000111111111111111) (= (mask!30351 thiss!1427) #b00000000000000001111111111111111) (= (mask!30351 thiss!1427) #b00000000000000011111111111111111) (= (mask!30351 thiss!1427) #b00000000000000111111111111111111) (= (mask!30351 thiss!1427) #b00000000000001111111111111111111) (= (mask!30351 thiss!1427) #b00000000000011111111111111111111) (= (mask!30351 thiss!1427) #b00000000000111111111111111111111) (= (mask!30351 thiss!1427) #b00000000001111111111111111111111) (= (mask!30351 thiss!1427) #b00000000011111111111111111111111) (= (mask!30351 thiss!1427) #b00000000111111111111111111111111) (= (mask!30351 thiss!1427) #b00000001111111111111111111111111) (= (mask!30351 thiss!1427) #b00000011111111111111111111111111) (= (mask!30351 thiss!1427) #b00000111111111111111111111111111) (= (mask!30351 thiss!1427) #b00001111111111111111111111111111) (= (mask!30351 thiss!1427) #b00011111111111111111111111111111) (= (mask!30351 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30351 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1040816 d!125693))

(declare-fun d!125695 () Bool)

(declare-fun e!589474 () Bool)

(assert (=> d!125695 e!589474))

(declare-fun res!693989 () Bool)

(assert (=> d!125695 (=> (not res!693989) (not e!589474))))

(assert (=> d!125695 (= res!693989 (and (bvsge (index!41579 lt!458733) #b00000000000000000000000000000000) (bvslt (index!41579 lt!458733) (size!32101 (_keys!11572 thiss!1427)))))))

(declare-fun lt!458792 () Unit!34022)

(declare-fun choose!25 (array!65620 (_ BitVec 32) (_ BitVec 32)) Unit!34022)

(assert (=> d!125695 (= lt!458792 (choose!25 (_keys!11572 thiss!1427) (index!41579 lt!458733) (mask!30351 thiss!1427)))))

(assert (=> d!125695 (validMask!0 (mask!30351 thiss!1427))))

(assert (=> d!125695 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11572 thiss!1427) (index!41579 lt!458733) (mask!30351 thiss!1427)) lt!458792)))

(declare-fun b!1040940 () Bool)

(assert (=> b!1040940 (= e!589474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) (mask!30351 thiss!1427)))))

(assert (= (and d!125695 res!693989) b!1040940))

(declare-fun m!960587 () Bool)

(assert (=> d!125695 m!960587))

(assert (=> d!125695 m!960467))

(assert (=> b!1040940 m!960481))

(declare-fun m!960589 () Bool)

(assert (=> b!1040940 m!960589))

(assert (=> b!1040816 d!125695))

(declare-fun d!125697 () Bool)

(assert (=> d!125697 (= (array_inv!24235 (_keys!11572 thiss!1427)) (bvsge (size!32101 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040818 d!125697))

(declare-fun d!125699 () Bool)

(assert (=> d!125699 (= (array_inv!24236 (_values!6372 thiss!1427)) (bvsge (size!32102 (_values!6372 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040818 d!125699))

(declare-fun mapNonEmpty!38713 () Bool)

(declare-fun mapRes!38713 () Bool)

(declare-fun tp!74295 () Bool)

(declare-fun e!589479 () Bool)

(assert (=> mapNonEmpty!38713 (= mapRes!38713 (and tp!74295 e!589479))))

(declare-fun mapRest!38713 () (Array (_ BitVec 32) ValueCell!11670))

(declare-fun mapValue!38713 () ValueCell!11670)

(declare-fun mapKey!38713 () (_ BitVec 32))

(assert (=> mapNonEmpty!38713 (= mapRest!38707 (store mapRest!38713 mapKey!38713 mapValue!38713))))

(declare-fun condMapEmpty!38713 () Bool)

(declare-fun mapDefault!38713 () ValueCell!11670)

(assert (=> mapNonEmpty!38707 (= condMapEmpty!38713 (= mapRest!38707 ((as const (Array (_ BitVec 32) ValueCell!11670)) mapDefault!38713)))))

(declare-fun e!589480 () Bool)

(assert (=> mapNonEmpty!38707 (= tp!74285 (and e!589480 mapRes!38713))))

(declare-fun mapIsEmpty!38713 () Bool)

(assert (=> mapIsEmpty!38713 mapRes!38713))

(declare-fun b!1040948 () Bool)

(assert (=> b!1040948 (= e!589480 tp_is_empty!24747)))

(declare-fun b!1040947 () Bool)

(assert (=> b!1040947 (= e!589479 tp_is_empty!24747)))

(assert (= (and mapNonEmpty!38707 condMapEmpty!38713) mapIsEmpty!38713))

(assert (= (and mapNonEmpty!38707 (not condMapEmpty!38713)) mapNonEmpty!38713))

(assert (= (and mapNonEmpty!38713 ((_ is ValueCellFull!11670) mapValue!38713)) b!1040947))

(assert (= (and mapNonEmpty!38707 ((_ is ValueCellFull!11670) mapDefault!38713)) b!1040948))

(declare-fun m!960591 () Bool)

(assert (=> mapNonEmpty!38713 m!960591))

(check-sat (not b!1040935) (not b!1040891) (not b!1040940) (not bm!44081) (not d!125673) (not b!1040858) (not d!125681) (not d!125675) (not b!1040882) (not b!1040921) (not b!1040869) (not bm!44085) (not b!1040916) tp_is_empty!24747 (not b!1040906) (not d!125687) b_and!33577 (not b!1040894) (not b!1040885) (not bm!44078) (not b!1040868) (not b!1040870) (not b_next!21027) (not b!1040930) (not bm!44084) (not b!1040933) (not mapNonEmpty!38713) (not b!1040904) (not b!1040883) (not b!1040931) (not d!125695) (not d!125689))
(check-sat b_and!33577 (not b_next!21027))
(get-model)

(declare-fun b!1040949 () Bool)

(declare-fun e!589484 () Bool)

(declare-fun call!44089 () Bool)

(assert (=> b!1040949 (= e!589484 call!44089)))

(declare-fun b!1040950 () Bool)

(declare-fun e!589483 () Bool)

(declare-fun e!589481 () Bool)

(assert (=> b!1040950 (= e!589483 e!589481)))

(declare-fun res!693990 () Bool)

(assert (=> b!1040950 (=> (not res!693990) (not e!589481))))

(declare-fun e!589482 () Bool)

(assert (=> b!1040950 (= res!693990 (not e!589482))))

(declare-fun res!693991 () Bool)

(assert (=> b!1040950 (=> (not res!693991) (not e!589482))))

(assert (=> b!1040950 (= res!693991 (validKeyInArray!0 (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!125701 () Bool)

(declare-fun res!693992 () Bool)

(assert (=> d!125701 (=> res!693992 e!589483)))

(assert (=> d!125701 (= res!693992 (bvsge #b00000000000000000000000000000000 (size!32101 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))))))))

(assert (=> d!125701 (= (arrayNoDuplicates!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000000 Nil!22084) e!589483)))

(declare-fun b!1040951 () Bool)

(assert (=> b!1040951 (= e!589482 (contains!6075 Nil!22084 (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1040952 () Bool)

(assert (=> b!1040952 (= e!589484 call!44089)))

(declare-fun c!105509 () Bool)

(declare-fun bm!44086 () Bool)

(assert (=> bm!44086 (= call!44089 (arrayNoDuplicates!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105509 (Cons!22083 (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000) Nil!22084) Nil!22084)))))

(declare-fun b!1040953 () Bool)

(assert (=> b!1040953 (= e!589481 e!589484)))

(assert (=> b!1040953 (= c!105509 (validKeyInArray!0 (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!125701 (not res!693992)) b!1040950))

(assert (= (and b!1040950 res!693991) b!1040951))

(assert (= (and b!1040950 res!693990) b!1040953))

(assert (= (and b!1040953 c!105509) b!1040949))

(assert (= (and b!1040953 (not c!105509)) b!1040952))

(assert (= (or b!1040949 b!1040952) bm!44086))

(declare-fun m!960593 () Bool)

(assert (=> b!1040950 m!960593))

(assert (=> b!1040950 m!960593))

(declare-fun m!960595 () Bool)

(assert (=> b!1040950 m!960595))

(assert (=> b!1040951 m!960593))

(assert (=> b!1040951 m!960593))

(declare-fun m!960597 () Bool)

(assert (=> b!1040951 m!960597))

(assert (=> bm!44086 m!960593))

(declare-fun m!960599 () Bool)

(assert (=> bm!44086 m!960599))

(assert (=> b!1040953 m!960593))

(assert (=> b!1040953 m!960593))

(assert (=> b!1040953 m!960595))

(assert (=> b!1040894 d!125701))

(declare-fun b!1040954 () Bool)

(declare-fun e!589485 () (_ BitVec 32))

(assert (=> b!1040954 (= e!589485 #b00000000000000000000000000000000)))

(declare-fun b!1040955 () Bool)

(declare-fun e!589486 () (_ BitVec 32))

(assert (=> b!1040955 (= e!589485 e!589486)))

(declare-fun c!105510 () Bool)

(assert (=> b!1040955 (= c!105510 (validKeyInArray!0 (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun bm!44087 () Bool)

(declare-fun call!44090 () (_ BitVec 32))

(assert (=> bm!44087 (= call!44090 (arrayCountValidKeys!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun d!125703 () Bool)

(declare-fun lt!458793 () (_ BitVec 32))

(assert (=> d!125703 (and (bvsge lt!458793 #b00000000000000000000000000000000) (bvsle lt!458793 (bvsub (size!32101 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!125703 (= lt!458793 e!589485)))

(declare-fun c!105511 () Bool)

(assert (=> d!125703 (= c!105511 (bvsge #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125703 (and (bvsle #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32101 (_keys!11572 thiss!1427)) (size!32101 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))))))))

(assert (=> d!125703 (= (arrayCountValidKeys!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) lt!458793)))

(declare-fun b!1040956 () Bool)

(assert (=> b!1040956 (= e!589486 call!44090)))

(declare-fun b!1040957 () Bool)

(assert (=> b!1040957 (= e!589486 (bvadd #b00000000000000000000000000000001 call!44090))))

(assert (= (and d!125703 c!105511) b!1040954))

(assert (= (and d!125703 (not c!105511)) b!1040955))

(assert (= (and b!1040955 c!105510) b!1040957))

(assert (= (and b!1040955 (not c!105510)) b!1040956))

(assert (= (or b!1040957 b!1040956) bm!44087))

(assert (=> b!1040955 m!960593))

(assert (=> b!1040955 m!960593))

(assert (=> b!1040955 m!960595))

(declare-fun m!960601 () Bool)

(assert (=> bm!44087 m!960601))

(assert (=> b!1040933 d!125703))

(assert (=> b!1040933 d!125691))

(declare-fun b!1040958 () Bool)

(declare-fun e!589487 () (_ BitVec 32))

(assert (=> b!1040958 (= e!589487 #b00000000000000000000000000000000)))

(declare-fun b!1040959 () Bool)

(declare-fun e!589488 () (_ BitVec 32))

(assert (=> b!1040959 (= e!589487 e!589488)))

(declare-fun c!105512 () Bool)

(assert (=> b!1040959 (= c!105512 (validKeyInArray!0 (select (arr!31569 (_keys!11572 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!44088 () Bool)

(declare-fun call!44091 () (_ BitVec 32))

(assert (=> bm!44088 (= call!44091 (arrayCountValidKeys!0 (_keys!11572 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun d!125705 () Bool)

(declare-fun lt!458794 () (_ BitVec 32))

(assert (=> d!125705 (and (bvsge lt!458794 #b00000000000000000000000000000000) (bvsle lt!458794 (bvsub (size!32101 (_keys!11572 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!125705 (= lt!458794 e!589487)))

(declare-fun c!105513 () Bool)

(assert (=> d!125705 (= c!105513 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125705 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32101 (_keys!11572 thiss!1427)) (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125705 (= (arrayCountValidKeys!0 (_keys!11572 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))) lt!458794)))

(declare-fun b!1040960 () Bool)

(assert (=> b!1040960 (= e!589488 call!44091)))

(declare-fun b!1040961 () Bool)

(assert (=> b!1040961 (= e!589488 (bvadd #b00000000000000000000000000000001 call!44091))))

(assert (= (and d!125705 c!105513) b!1040958))

(assert (= (and d!125705 (not c!105513)) b!1040959))

(assert (= (and b!1040959 c!105512) b!1040961))

(assert (= (and b!1040959 (not c!105512)) b!1040960))

(assert (= (or b!1040961 b!1040960) bm!44088))

(declare-fun m!960603 () Bool)

(assert (=> b!1040959 m!960603))

(assert (=> b!1040959 m!960603))

(declare-fun m!960605 () Bool)

(assert (=> b!1040959 m!960605))

(declare-fun m!960607 () Bool)

(assert (=> bm!44088 m!960607))

(assert (=> bm!44085 d!125705))

(declare-fun d!125707 () Bool)

(assert (=> d!125707 (arrayNoDuplicates!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000000 Nil!22084)))

(assert (=> d!125707 true))

(declare-fun _$66!47 () Unit!34022)

(assert (=> d!125707 (= (choose!53 (_keys!11572 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41579 lt!458733) #b00000000000000000000000000000000 Nil!22084) _$66!47)))

(declare-fun bs!30443 () Bool)

(assert (= bs!30443 d!125707))

(assert (=> bs!30443 m!960481))

(assert (=> bs!30443 m!960555))

(assert (=> d!125681 d!125707))

(declare-fun d!125709 () Bool)

(assert (=> d!125709 (= (validKeyInArray!0 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1040935 d!125709))

(declare-fun d!125711 () Bool)

(declare-fun res!693993 () Bool)

(declare-fun e!589489 () Bool)

(assert (=> d!125711 (=> res!693993 e!589489)))

(assert (=> d!125711 (= res!693993 (= (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125711 (= (arrayContainsKey!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) key!909 #b00000000000000000000000000000000) e!589489)))

(declare-fun b!1040962 () Bool)

(declare-fun e!589490 () Bool)

(assert (=> b!1040962 (= e!589489 e!589490)))

(declare-fun res!693994 () Bool)

(assert (=> b!1040962 (=> (not res!693994) (not e!589490))))

(assert (=> b!1040962 (= res!693994 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))))))))

(declare-fun b!1040963 () Bool)

(assert (=> b!1040963 (= e!589490 (arrayContainsKey!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125711 (not res!693993)) b!1040962))

(assert (= (and b!1040962 res!693994) b!1040963))

(assert (=> d!125711 m!960593))

(declare-fun m!960609 () Bool)

(assert (=> b!1040963 m!960609))

(assert (=> b!1040921 d!125711))

(declare-fun d!125713 () Bool)

(assert (=> d!125713 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1040931 d!125713))

(declare-fun d!125715 () Bool)

(assert (=> d!125715 (= (validKeyInArray!0 (select (arr!31569 lt!458734) #b00000000000000000000000000000000)) (and (not (= (select (arr!31569 lt!458734) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31569 lt!458734) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1040882 d!125715))

(declare-fun d!125717 () Bool)

(assert (=> d!125717 (= (validKeyInArray!0 (select (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733))) (and (not (= (select (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1040930 d!125717))

(declare-fun b!1040964 () Bool)

(declare-fun e!589491 () (_ BitVec 32))

(assert (=> b!1040964 (= e!589491 #b00000000000000000000000000000000)))

(declare-fun b!1040965 () Bool)

(declare-fun e!589492 () (_ BitVec 32))

(assert (=> b!1040965 (= e!589491 e!589492)))

(declare-fun c!105514 () Bool)

(assert (=> b!1040965 (= c!105514 (validKeyInArray!0 (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!44089 () Bool)

(declare-fun call!44092 () (_ BitVec 32))

(assert (=> bm!44089 (= call!44092 (arrayCountValidKeys!0 lt!458734 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun d!125719 () Bool)

(declare-fun lt!458795 () (_ BitVec 32))

(assert (=> d!125719 (and (bvsge lt!458795 #b00000000000000000000000000000000) (bvsle lt!458795 (bvsub (size!32101 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!125719 (= lt!458795 e!589491)))

(declare-fun c!105515 () Bool)

(assert (=> d!125719 (= c!105515 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125719 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32101 (_keys!11572 thiss!1427)) (size!32101 lt!458734)))))

(assert (=> d!125719 (= (arrayCountValidKeys!0 lt!458734 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 (_keys!11572 thiss!1427))) lt!458795)))

(declare-fun b!1040966 () Bool)

(assert (=> b!1040966 (= e!589492 call!44092)))

(declare-fun b!1040967 () Bool)

(assert (=> b!1040967 (= e!589492 (bvadd #b00000000000000000000000000000001 call!44092))))

(assert (= (and d!125719 c!105515) b!1040964))

(assert (= (and d!125719 (not c!105515)) b!1040965))

(assert (= (and b!1040965 c!105514) b!1040967))

(assert (= (and b!1040965 (not c!105514)) b!1040966))

(assert (= (or b!1040967 b!1040966) bm!44089))

(declare-fun m!960611 () Bool)

(assert (=> b!1040965 m!960611))

(assert (=> b!1040965 m!960611))

(declare-fun m!960613 () Bool)

(assert (=> b!1040965 m!960613))

(declare-fun m!960615 () Bool)

(assert (=> bm!44089 m!960615))

(assert (=> bm!44084 d!125719))

(declare-fun d!125721 () Bool)

(declare-fun lt!458798 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!524 (List!22087) (InoxSet (_ BitVec 64)))

(assert (=> d!125721 (= lt!458798 (select (content!524 Nil!22084) (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(declare-fun e!589498 () Bool)

(assert (=> d!125721 (= lt!458798 e!589498)))

(declare-fun res!694000 () Bool)

(assert (=> d!125721 (=> (not res!694000) (not e!589498))))

(assert (=> d!125721 (= res!694000 ((_ is Cons!22083) Nil!22084))))

(assert (=> d!125721 (= (contains!6075 Nil!22084 (select (arr!31569 lt!458734) #b00000000000000000000000000000000)) lt!458798)))

(declare-fun b!1040972 () Bool)

(declare-fun e!589497 () Bool)

(assert (=> b!1040972 (= e!589498 e!589497)))

(declare-fun res!693999 () Bool)

(assert (=> b!1040972 (=> res!693999 e!589497)))

(assert (=> b!1040972 (= res!693999 (= (h!23287 Nil!22084) (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(declare-fun b!1040973 () Bool)

(assert (=> b!1040973 (= e!589497 (contains!6075 (t!31308 Nil!22084) (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(assert (= (and d!125721 res!694000) b!1040972))

(assert (= (and b!1040972 (not res!693999)) b!1040973))

(declare-fun m!960617 () Bool)

(assert (=> d!125721 m!960617))

(assert (=> d!125721 m!960543))

(declare-fun m!960619 () Bool)

(assert (=> d!125721 m!960619))

(assert (=> b!1040973 m!960543))

(declare-fun m!960621 () Bool)

(assert (=> b!1040973 m!960621))

(assert (=> b!1040883 d!125721))

(declare-fun b!1040986 () Bool)

(declare-fun e!589507 () SeekEntryResult!9802)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040986 (= e!589507 (seekKeyOrZeroReturnVacant!0 (bvadd (x!92917 lt!458764) #b00000000000000000000000000000001) (nextIndex!0 (index!41580 lt!458764) (x!92917 lt!458764) (mask!30351 thiss!1427)) (index!41580 lt!458764) key!909 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)))))

(declare-fun b!1040987 () Bool)

(declare-fun c!105523 () Bool)

(declare-fun lt!458803 () (_ BitVec 64))

(assert (=> b!1040987 (= c!105523 (= lt!458803 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589506 () SeekEntryResult!9802)

(assert (=> b!1040987 (= e!589506 e!589507)))

(declare-fun b!1040988 () Bool)

(declare-fun e!589505 () SeekEntryResult!9802)

(assert (=> b!1040988 (= e!589505 e!589506)))

(declare-fun c!105524 () Bool)

(assert (=> b!1040988 (= c!105524 (= lt!458803 key!909))))

(declare-fun d!125723 () Bool)

(declare-fun lt!458804 () SeekEntryResult!9802)

(assert (=> d!125723 (and (or ((_ is Undefined!9802) lt!458804) (not ((_ is Found!9802) lt!458804)) (and (bvsge (index!41579 lt!458804) #b00000000000000000000000000000000) (bvslt (index!41579 lt!458804) (size!32101 (_keys!11572 thiss!1427))))) (or ((_ is Undefined!9802) lt!458804) ((_ is Found!9802) lt!458804) (not ((_ is MissingVacant!9802) lt!458804)) (not (= (index!41581 lt!458804) (index!41580 lt!458764))) (and (bvsge (index!41581 lt!458804) #b00000000000000000000000000000000) (bvslt (index!41581 lt!458804) (size!32101 (_keys!11572 thiss!1427))))) (or ((_ is Undefined!9802) lt!458804) (ite ((_ is Found!9802) lt!458804) (= (select (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458804)) key!909) (and ((_ is MissingVacant!9802) lt!458804) (= (index!41581 lt!458804) (index!41580 lt!458764)) (= (select (arr!31569 (_keys!11572 thiss!1427)) (index!41581 lt!458804)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!125723 (= lt!458804 e!589505)))

(declare-fun c!105522 () Bool)

(assert (=> d!125723 (= c!105522 (bvsge (x!92917 lt!458764) #b01111111111111111111111111111110))))

(assert (=> d!125723 (= lt!458803 (select (arr!31569 (_keys!11572 thiss!1427)) (index!41580 lt!458764)))))

(assert (=> d!125723 (validMask!0 (mask!30351 thiss!1427))))

(assert (=> d!125723 (= (seekKeyOrZeroReturnVacant!0 (x!92917 lt!458764) (index!41580 lt!458764) (index!41580 lt!458764) key!909 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)) lt!458804)))

(declare-fun b!1040989 () Bool)

(assert (=> b!1040989 (= e!589505 Undefined!9802)))

(declare-fun b!1040990 () Bool)

(assert (=> b!1040990 (= e!589507 (MissingVacant!9802 (index!41580 lt!458764)))))

(declare-fun b!1040991 () Bool)

(assert (=> b!1040991 (= e!589506 (Found!9802 (index!41580 lt!458764)))))

(assert (= (and d!125723 c!105522) b!1040989))

(assert (= (and d!125723 (not c!105522)) b!1040988))

(assert (= (and b!1040988 c!105524) b!1040991))

(assert (= (and b!1040988 (not c!105524)) b!1040987))

(assert (= (and b!1040987 c!105523) b!1040990))

(assert (= (and b!1040987 (not c!105523)) b!1040986))

(declare-fun m!960623 () Bool)

(assert (=> b!1040986 m!960623))

(assert (=> b!1040986 m!960623))

(declare-fun m!960625 () Bool)

(assert (=> b!1040986 m!960625))

(declare-fun m!960627 () Bool)

(assert (=> d!125723 m!960627))

(declare-fun m!960629 () Bool)

(assert (=> d!125723 m!960629))

(assert (=> d!125723 m!960535))

(assert (=> d!125723 m!960467))

(assert (=> b!1040858 d!125723))

(declare-fun d!125725 () Bool)

(assert (=> d!125725 (= (arrayCountValidKeys!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11572 thiss!1427) #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!125725 true))

(declare-fun _$79!23 () Unit!34022)

(assert (=> d!125725 (= (choose!82 (_keys!11572 thiss!1427) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!23)))

(declare-fun bs!30444 () Bool)

(assert (= bs!30444 d!125725))

(assert (=> bs!30444 m!960481))

(assert (=> bs!30444 m!960579))

(assert (=> bs!30444 m!960487))

(assert (=> d!125689 d!125725))

(declare-fun d!125727 () Bool)

(declare-fun res!694001 () Bool)

(declare-fun e!589508 () Bool)

(assert (=> d!125727 (=> res!694001 e!589508)))

(assert (=> d!125727 (= res!694001 (= (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!909))))

(assert (=> d!125727 (= (arrayContainsKey!0 lt!458734 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!589508)))

(declare-fun b!1040992 () Bool)

(declare-fun e!589509 () Bool)

(assert (=> b!1040992 (= e!589508 e!589509)))

(declare-fun res!694002 () Bool)

(assert (=> b!1040992 (=> (not res!694002) (not e!589509))))

(assert (=> b!1040992 (= res!694002 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32101 lt!458734)))))

(declare-fun b!1040993 () Bool)

(assert (=> b!1040993 (= e!589509 (arrayContainsKey!0 lt!458734 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!125727 (not res!694001)) b!1040992))

(assert (= (and b!1040992 res!694002) b!1040993))

(assert (=> d!125727 m!960611))

(declare-fun m!960631 () Bool)

(assert (=> b!1040993 m!960631))

(assert (=> b!1040891 d!125727))

(declare-fun d!125729 () Bool)

(assert (=> d!125729 (not (arrayContainsKey!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) key!909 #b00000000000000000000000000000000))))

(assert (=> d!125729 true))

(declare-fun _$59!23 () Unit!34022)

(assert (=> d!125729 (= (choose!121 (_keys!11572 thiss!1427) (index!41579 lt!458733) key!909) _$59!23)))

(declare-fun bs!30445 () Bool)

(assert (= bs!30445 d!125729))

(assert (=> bs!30445 m!960481))

(assert (=> bs!30445 m!960569))

(assert (=> d!125687 d!125729))

(assert (=> b!1040904 d!125715))

(declare-fun b!1041005 () Bool)

(declare-fun e!589512 () Bool)

(assert (=> b!1041005 (= e!589512 (and (bvsge (extraKeys!6077 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6077 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!3022 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1041002 () Bool)

(declare-fun res!694014 () Bool)

(assert (=> b!1041002 (=> (not res!694014) (not e!589512))))

(assert (=> b!1041002 (= res!694014 (and (= (size!32102 (_values!6372 thiss!1427)) (bvadd (mask!30351 thiss!1427) #b00000000000000000000000000000001)) (= (size!32101 (_keys!11572 thiss!1427)) (size!32102 (_values!6372 thiss!1427))) (bvsge (_size!3022 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!3022 thiss!1427) (bvadd (mask!30351 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun d!125731 () Bool)

(declare-fun res!694011 () Bool)

(assert (=> d!125731 (=> (not res!694011) (not e!589512))))

(assert (=> d!125731 (= res!694011 (validMask!0 (mask!30351 thiss!1427)))))

(assert (=> d!125731 (= (simpleValid!435 thiss!1427) e!589512)))

(declare-fun b!1041003 () Bool)

(declare-fun res!694013 () Bool)

(assert (=> b!1041003 (=> (not res!694013) (not e!589512))))

(declare-fun size!32105 (LongMapFixedSize!5934) (_ BitVec 32))

(assert (=> b!1041003 (= res!694013 (bvsge (size!32105 thiss!1427) (_size!3022 thiss!1427)))))

(declare-fun b!1041004 () Bool)

(declare-fun res!694012 () Bool)

(assert (=> b!1041004 (=> (not res!694012) (not e!589512))))

(assert (=> b!1041004 (= res!694012 (= (size!32105 thiss!1427) (bvadd (_size!3022 thiss!1427) (bvsdiv (bvadd (extraKeys!6077 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!125731 res!694011) b!1041002))

(assert (= (and b!1041002 res!694014) b!1041003))

(assert (= (and b!1041003 res!694013) b!1041004))

(assert (= (and b!1041004 res!694012) b!1041005))

(assert (=> d!125731 m!960467))

(declare-fun m!960633 () Bool)

(assert (=> b!1041003 m!960633))

(assert (=> b!1041004 m!960633))

(assert (=> d!125675 d!125731))

(assert (=> b!1040868 d!125691))

(declare-fun d!125733 () Bool)

(declare-fun res!694016 () Bool)

(declare-fun e!589514 () Bool)

(assert (=> d!125733 (=> res!694016 e!589514)))

(assert (=> d!125733 (= res!694016 (bvsge #b00000000000000000000000000000000 (size!32101 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))))))))

(assert (=> d!125733 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) (mask!30351 thiss!1427)) e!589514)))

(declare-fun b!1041006 () Bool)

(declare-fun e!589513 () Bool)

(declare-fun call!44093 () Bool)

(assert (=> b!1041006 (= e!589513 call!44093)))

(declare-fun b!1041007 () Bool)

(declare-fun e!589515 () Bool)

(assert (=> b!1041007 (= e!589514 e!589515)))

(declare-fun c!105525 () Bool)

(assert (=> b!1041007 (= c!105525 (validKeyInArray!0 (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1041008 () Bool)

(assert (=> b!1041008 (= e!589515 call!44093)))

(declare-fun bm!44090 () Bool)

(assert (=> bm!44090 (= call!44093 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) (mask!30351 thiss!1427)))))

(declare-fun b!1041009 () Bool)

(assert (=> b!1041009 (= e!589515 e!589513)))

(declare-fun lt!458806 () (_ BitVec 64))

(assert (=> b!1041009 (= lt!458806 (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!458807 () Unit!34022)

(assert (=> b!1041009 (= lt!458807 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) lt!458806 #b00000000000000000000000000000000))))

(assert (=> b!1041009 (arrayContainsKey!0 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) lt!458806 #b00000000000000000000000000000000)))

(declare-fun lt!458805 () Unit!34022)

(assert (=> b!1041009 (= lt!458805 lt!458807)))

(declare-fun res!694015 () Bool)

(assert (=> b!1041009 (= res!694015 (= (seekEntryOrOpen!0 (select (arr!31569 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427)))) #b00000000000000000000000000000000) (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) (mask!30351 thiss!1427)) (Found!9802 #b00000000000000000000000000000000)))))

(assert (=> b!1041009 (=> (not res!694015) (not e!589513))))

(assert (= (and d!125733 (not res!694016)) b!1041007))

(assert (= (and b!1041007 c!105525) b!1041009))

(assert (= (and b!1041007 (not c!105525)) b!1041008))

(assert (= (and b!1041009 res!694015) b!1041006))

(assert (= (or b!1041006 b!1041008) bm!44090))

(assert (=> b!1041007 m!960593))

(assert (=> b!1041007 m!960593))

(assert (=> b!1041007 m!960595))

(declare-fun m!960635 () Bool)

(assert (=> bm!44090 m!960635))

(assert (=> b!1041009 m!960593))

(declare-fun m!960637 () Bool)

(assert (=> b!1041009 m!960637))

(declare-fun m!960639 () Bool)

(assert (=> b!1041009 m!960639))

(assert (=> b!1041009 m!960593))

(declare-fun m!960641 () Bool)

(assert (=> b!1041009 m!960641))

(assert (=> b!1040940 d!125733))

(declare-fun d!125735 () Bool)

(declare-fun res!694018 () Bool)

(declare-fun e!589517 () Bool)

(assert (=> d!125735 (=> res!694018 e!589517)))

(assert (=> d!125735 (= res!694018 (bvsge #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125735 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)) e!589517)))

(declare-fun b!1041010 () Bool)

(declare-fun e!589516 () Bool)

(declare-fun call!44094 () Bool)

(assert (=> b!1041010 (= e!589516 call!44094)))

(declare-fun b!1041011 () Bool)

(declare-fun e!589518 () Bool)

(assert (=> b!1041011 (= e!589517 e!589518)))

(declare-fun c!105526 () Bool)

(assert (=> b!1041011 (= c!105526 (validKeyInArray!0 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1041012 () Bool)

(assert (=> b!1041012 (= e!589518 call!44094)))

(declare-fun bm!44091 () Bool)

(assert (=> bm!44091 (= call!44094 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11572 thiss!1427) (mask!30351 thiss!1427)))))

(declare-fun b!1041013 () Bool)

(assert (=> b!1041013 (= e!589518 e!589516)))

(declare-fun lt!458809 () (_ BitVec 64))

(assert (=> b!1041013 (= lt!458809 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!458810 () Unit!34022)

(assert (=> b!1041013 (= lt!458810 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11572 thiss!1427) lt!458809 #b00000000000000000000000000000000))))

(assert (=> b!1041013 (arrayContainsKey!0 (_keys!11572 thiss!1427) lt!458809 #b00000000000000000000000000000000)))

(declare-fun lt!458808 () Unit!34022)

(assert (=> b!1041013 (= lt!458808 lt!458810)))

(declare-fun res!694017 () Bool)

(assert (=> b!1041013 (= res!694017 (= (seekEntryOrOpen!0 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000) (_keys!11572 thiss!1427) (mask!30351 thiss!1427)) (Found!9802 #b00000000000000000000000000000000)))))

(assert (=> b!1041013 (=> (not res!694017) (not e!589516))))

(assert (= (and d!125735 (not res!694018)) b!1041011))

(assert (= (and b!1041011 c!105526) b!1041013))

(assert (= (and b!1041011 (not c!105526)) b!1041012))

(assert (= (and b!1041013 res!694017) b!1041010))

(assert (= (or b!1041010 b!1041012) bm!44091))

(assert (=> b!1041011 m!960581))

(assert (=> b!1041011 m!960581))

(assert (=> b!1041011 m!960583))

(declare-fun m!960643 () Bool)

(assert (=> bm!44091 m!960643))

(assert (=> b!1041013 m!960581))

(declare-fun m!960645 () Bool)

(assert (=> b!1041013 m!960645))

(declare-fun m!960647 () Bool)

(assert (=> b!1041013 m!960647))

(assert (=> b!1041013 m!960581))

(declare-fun m!960649 () Bool)

(assert (=> b!1041013 m!960649))

(assert (=> b!1040869 d!125735))

(declare-fun b!1041014 () Bool)

(declare-fun e!589522 () Bool)

(declare-fun call!44095 () Bool)

(assert (=> b!1041014 (= e!589522 call!44095)))

(declare-fun b!1041015 () Bool)

(declare-fun e!589521 () Bool)

(declare-fun e!589519 () Bool)

(assert (=> b!1041015 (= e!589521 e!589519)))

(declare-fun res!694019 () Bool)

(assert (=> b!1041015 (=> (not res!694019) (not e!589519))))

(declare-fun e!589520 () Bool)

(assert (=> b!1041015 (= res!694019 (not e!589520))))

(declare-fun res!694020 () Bool)

(assert (=> b!1041015 (=> (not res!694020) (not e!589520))))

(assert (=> b!1041015 (= res!694020 (validKeyInArray!0 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125737 () Bool)

(declare-fun res!694021 () Bool)

(assert (=> d!125737 (=> res!694021 e!589521)))

(assert (=> d!125737 (= res!694021 (bvsge #b00000000000000000000000000000000 (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> d!125737 (= (arrayNoDuplicates!0 (_keys!11572 thiss!1427) #b00000000000000000000000000000000 Nil!22084) e!589521)))

(declare-fun b!1041016 () Bool)

(assert (=> b!1041016 (= e!589520 (contains!6075 Nil!22084 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1041017 () Bool)

(assert (=> b!1041017 (= e!589522 call!44095)))

(declare-fun bm!44092 () Bool)

(declare-fun c!105527 () Bool)

(assert (=> bm!44092 (= call!44095 (arrayNoDuplicates!0 (_keys!11572 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105527 (Cons!22083 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000) Nil!22084) Nil!22084)))))

(declare-fun b!1041018 () Bool)

(assert (=> b!1041018 (= e!589519 e!589522)))

(assert (=> b!1041018 (= c!105527 (validKeyInArray!0 (select (arr!31569 (_keys!11572 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125737 (not res!694021)) b!1041015))

(assert (= (and b!1041015 res!694020) b!1041016))

(assert (= (and b!1041015 res!694019) b!1041018))

(assert (= (and b!1041018 c!105527) b!1041014))

(assert (= (and b!1041018 (not c!105527)) b!1041017))

(assert (= (or b!1041014 b!1041017) bm!44092))

(assert (=> b!1041015 m!960581))

(assert (=> b!1041015 m!960581))

(assert (=> b!1041015 m!960583))

(assert (=> b!1041016 m!960581))

(assert (=> b!1041016 m!960581))

(declare-fun m!960651 () Bool)

(assert (=> b!1041016 m!960651))

(assert (=> bm!44092 m!960581))

(declare-fun m!960653 () Bool)

(assert (=> bm!44092 m!960653))

(assert (=> b!1041018 m!960581))

(assert (=> b!1041018 m!960581))

(assert (=> b!1041018 m!960583))

(assert (=> b!1040870 d!125737))

(assert (=> b!1040916 d!125715))

(declare-fun b!1041019 () Bool)

(declare-fun e!589526 () Bool)

(declare-fun call!44096 () Bool)

(assert (=> b!1041019 (= e!589526 call!44096)))

(declare-fun b!1041020 () Bool)

(declare-fun e!589525 () Bool)

(declare-fun e!589523 () Bool)

(assert (=> b!1041020 (= e!589525 e!589523)))

(declare-fun res!694022 () Bool)

(assert (=> b!1041020 (=> (not res!694022) (not e!589523))))

(declare-fun e!589524 () Bool)

(assert (=> b!1041020 (= res!694022 (not e!589524))))

(declare-fun res!694023 () Bool)

(assert (=> b!1041020 (=> (not res!694023) (not e!589524))))

(assert (=> b!1041020 (= res!694023 (validKeyInArray!0 (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!125739 () Bool)

(declare-fun res!694024 () Bool)

(assert (=> d!125739 (=> res!694024 e!589525)))

(assert (=> d!125739 (= res!694024 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 lt!458734)))))

(assert (=> d!125739 (= (arrayNoDuplicates!0 lt!458734 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105497 (Cons!22083 (select (arr!31569 lt!458734) #b00000000000000000000000000000000) Nil!22084) Nil!22084)) e!589525)))

(declare-fun b!1041021 () Bool)

(assert (=> b!1041021 (= e!589524 (contains!6075 (ite c!105497 (Cons!22083 (select (arr!31569 lt!458734) #b00000000000000000000000000000000) Nil!22084) Nil!22084) (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1041022 () Bool)

(assert (=> b!1041022 (= e!589526 call!44096)))

(declare-fun c!105528 () Bool)

(declare-fun bm!44093 () Bool)

(assert (=> bm!44093 (= call!44096 (arrayNoDuplicates!0 lt!458734 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!105528 (Cons!22083 (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!105497 (Cons!22083 (select (arr!31569 lt!458734) #b00000000000000000000000000000000) Nil!22084) Nil!22084)) (ite c!105497 (Cons!22083 (select (arr!31569 lt!458734) #b00000000000000000000000000000000) Nil!22084) Nil!22084))))))

(declare-fun b!1041023 () Bool)

(assert (=> b!1041023 (= e!589523 e!589526)))

(assert (=> b!1041023 (= c!105528 (validKeyInArray!0 (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!125739 (not res!694024)) b!1041020))

(assert (= (and b!1041020 res!694023) b!1041021))

(assert (= (and b!1041020 res!694022) b!1041023))

(assert (= (and b!1041023 c!105528) b!1041019))

(assert (= (and b!1041023 (not c!105528)) b!1041022))

(assert (= (or b!1041019 b!1041022) bm!44093))

(assert (=> b!1041020 m!960611))

(assert (=> b!1041020 m!960611))

(assert (=> b!1041020 m!960613))

(assert (=> b!1041021 m!960611))

(assert (=> b!1041021 m!960611))

(declare-fun m!960655 () Bool)

(assert (=> b!1041021 m!960655))

(assert (=> bm!44093 m!960611))

(declare-fun m!960657 () Bool)

(assert (=> bm!44093 m!960657))

(assert (=> b!1041023 m!960611))

(assert (=> b!1041023 m!960611))

(assert (=> b!1041023 m!960613))

(assert (=> bm!44078 d!125739))

(declare-fun d!125741 () Bool)

(assert (=> d!125741 (arrayContainsKey!0 lt!458734 lt!458778 #b00000000000000000000000000000000)))

(declare-fun lt!458813 () Unit!34022)

(declare-fun choose!13 (array!65620 (_ BitVec 64) (_ BitVec 32)) Unit!34022)

(assert (=> d!125741 (= lt!458813 (choose!13 lt!458734 lt!458778 #b00000000000000000000000000000000))))

(assert (=> d!125741 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!125741 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458734 lt!458778 #b00000000000000000000000000000000) lt!458813)))

(declare-fun bs!30446 () Bool)

(assert (= bs!30446 d!125741))

(assert (=> bs!30446 m!960561))

(declare-fun m!960659 () Bool)

(assert (=> bs!30446 m!960659))

(assert (=> b!1040906 d!125741))

(declare-fun d!125743 () Bool)

(declare-fun res!694025 () Bool)

(declare-fun e!589527 () Bool)

(assert (=> d!125743 (=> res!694025 e!589527)))

(assert (=> d!125743 (= res!694025 (= (select (arr!31569 lt!458734) #b00000000000000000000000000000000) lt!458778))))

(assert (=> d!125743 (= (arrayContainsKey!0 lt!458734 lt!458778 #b00000000000000000000000000000000) e!589527)))

(declare-fun b!1041024 () Bool)

(declare-fun e!589528 () Bool)

(assert (=> b!1041024 (= e!589527 e!589528)))

(declare-fun res!694026 () Bool)

(assert (=> b!1041024 (=> (not res!694026) (not e!589528))))

(assert (=> b!1041024 (= res!694026 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 lt!458734)))))

(declare-fun b!1041025 () Bool)

(assert (=> b!1041025 (= e!589528 (arrayContainsKey!0 lt!458734 lt!458778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125743 (not res!694025)) b!1041024))

(assert (= (and b!1041024 res!694026) b!1041025))

(assert (=> d!125743 m!960543))

(declare-fun m!960661 () Bool)

(assert (=> b!1041025 m!960661))

(assert (=> b!1040906 d!125743))

(declare-fun d!125745 () Bool)

(declare-fun lt!458821 () SeekEntryResult!9802)

(assert (=> d!125745 (and (or ((_ is Undefined!9802) lt!458821) (not ((_ is Found!9802) lt!458821)) (and (bvsge (index!41579 lt!458821) #b00000000000000000000000000000000) (bvslt (index!41579 lt!458821) (size!32101 lt!458734)))) (or ((_ is Undefined!9802) lt!458821) ((_ is Found!9802) lt!458821) (not ((_ is MissingZero!9802) lt!458821)) (and (bvsge (index!41578 lt!458821) #b00000000000000000000000000000000) (bvslt (index!41578 lt!458821) (size!32101 lt!458734)))) (or ((_ is Undefined!9802) lt!458821) ((_ is Found!9802) lt!458821) ((_ is MissingZero!9802) lt!458821) (not ((_ is MissingVacant!9802) lt!458821)) (and (bvsge (index!41581 lt!458821) #b00000000000000000000000000000000) (bvslt (index!41581 lt!458821) (size!32101 lt!458734)))) (or ((_ is Undefined!9802) lt!458821) (ite ((_ is Found!9802) lt!458821) (= (select (arr!31569 lt!458734) (index!41579 lt!458821)) (select (arr!31569 lt!458734) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9802) lt!458821) (= (select (arr!31569 lt!458734) (index!41578 lt!458821)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9802) lt!458821) (= (select (arr!31569 lt!458734) (index!41581 lt!458821)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!589535 () SeekEntryResult!9802)

(assert (=> d!125745 (= lt!458821 e!589535)))

(declare-fun c!105537 () Bool)

(declare-fun lt!458822 () SeekEntryResult!9802)

(assert (=> d!125745 (= c!105537 (and ((_ is Intermediate!9802) lt!458822) (undefined!10614 lt!458822)))))

(assert (=> d!125745 (= lt!458822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31569 lt!458734) #b00000000000000000000000000000000) (mask!30351 thiss!1427)) (select (arr!31569 lt!458734) #b00000000000000000000000000000000) lt!458734 (mask!30351 thiss!1427)))))

(assert (=> d!125745 (validMask!0 (mask!30351 thiss!1427))))

(assert (=> d!125745 (= (seekEntryOrOpen!0 (select (arr!31569 lt!458734) #b00000000000000000000000000000000) lt!458734 (mask!30351 thiss!1427)) lt!458821)))

(declare-fun e!589536 () SeekEntryResult!9802)

(declare-fun b!1041038 () Bool)

(assert (=> b!1041038 (= e!589536 (seekKeyOrZeroReturnVacant!0 (x!92917 lt!458822) (index!41580 lt!458822) (index!41580 lt!458822) (select (arr!31569 lt!458734) #b00000000000000000000000000000000) lt!458734 (mask!30351 thiss!1427)))))

(declare-fun b!1041039 () Bool)

(declare-fun e!589537 () SeekEntryResult!9802)

(assert (=> b!1041039 (= e!589535 e!589537)))

(declare-fun lt!458820 () (_ BitVec 64))

(assert (=> b!1041039 (= lt!458820 (select (arr!31569 lt!458734) (index!41580 lt!458822)))))

(declare-fun c!105535 () Bool)

(assert (=> b!1041039 (= c!105535 (= lt!458820 (select (arr!31569 lt!458734) #b00000000000000000000000000000000)))))

(declare-fun b!1041040 () Bool)

(assert (=> b!1041040 (= e!589535 Undefined!9802)))

(declare-fun b!1041041 () Bool)

(assert (=> b!1041041 (= e!589536 (MissingZero!9802 (index!41580 lt!458822)))))

(declare-fun b!1041042 () Bool)

(declare-fun c!105536 () Bool)

(assert (=> b!1041042 (= c!105536 (= lt!458820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1041042 (= e!589537 e!589536)))

(declare-fun b!1041043 () Bool)

(assert (=> b!1041043 (= e!589537 (Found!9802 (index!41580 lt!458822)))))

(assert (= (and d!125745 c!105537) b!1041040))

(assert (= (and d!125745 (not c!105537)) b!1041039))

(assert (= (and b!1041039 c!105535) b!1041043))

(assert (= (and b!1041039 (not c!105535)) b!1041042))

(assert (= (and b!1041042 c!105536) b!1041041))

(assert (= (and b!1041042 (not c!105536)) b!1041038))

(declare-fun m!960663 () Bool)

(assert (=> d!125745 m!960663))

(assert (=> d!125745 m!960543))

(declare-fun m!960665 () Bool)

(assert (=> d!125745 m!960665))

(assert (=> d!125745 m!960467))

(declare-fun m!960667 () Bool)

(assert (=> d!125745 m!960667))

(declare-fun m!960669 () Bool)

(assert (=> d!125745 m!960669))

(assert (=> d!125745 m!960543))

(assert (=> d!125745 m!960663))

(declare-fun m!960671 () Bool)

(assert (=> d!125745 m!960671))

(assert (=> b!1041038 m!960543))

(declare-fun m!960673 () Bool)

(assert (=> b!1041038 m!960673))

(declare-fun m!960675 () Bool)

(assert (=> b!1041039 m!960675))

(assert (=> b!1040906 d!125745))

(assert (=> b!1040885 d!125715))

(declare-fun d!125747 () Bool)

(assert (=> d!125747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65621 (store (arr!31569 (_keys!11572 thiss!1427)) (index!41579 lt!458733) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32101 (_keys!11572 thiss!1427))) (mask!30351 thiss!1427))))

(assert (=> d!125747 true))

(declare-fun _$44!21 () Unit!34022)

(assert (=> d!125747 (= (choose!25 (_keys!11572 thiss!1427) (index!41579 lt!458733) (mask!30351 thiss!1427)) _$44!21)))

(declare-fun bs!30447 () Bool)

(assert (= bs!30447 d!125747))

(assert (=> bs!30447 m!960481))

(assert (=> bs!30447 m!960589))

(assert (=> d!125695 d!125747))

(assert (=> d!125695 d!125693))

(declare-fun d!125749 () Bool)

(declare-fun res!694028 () Bool)

(declare-fun e!589539 () Bool)

(assert (=> d!125749 (=> res!694028 e!589539)))

(assert (=> d!125749 (= res!694028 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32101 lt!458734)))))

(assert (=> d!125749 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458734 (mask!30351 thiss!1427)) e!589539)))

(declare-fun b!1041044 () Bool)

(declare-fun e!589538 () Bool)

(declare-fun call!44097 () Bool)

(assert (=> b!1041044 (= e!589538 call!44097)))

(declare-fun b!1041045 () Bool)

(declare-fun e!589540 () Bool)

(assert (=> b!1041045 (= e!589539 e!589540)))

(declare-fun c!105538 () Bool)

(assert (=> b!1041045 (= c!105538 (validKeyInArray!0 (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1041046 () Bool)

(assert (=> b!1041046 (= e!589540 call!44097)))

(declare-fun bm!44094 () Bool)

(assert (=> bm!44094 (= call!44097 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!458734 (mask!30351 thiss!1427)))))

(declare-fun b!1041047 () Bool)

(assert (=> b!1041047 (= e!589540 e!589538)))

(declare-fun lt!458824 () (_ BitVec 64))

(assert (=> b!1041047 (= lt!458824 (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!458825 () Unit!34022)

(assert (=> b!1041047 (= lt!458825 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458734 lt!458824 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1041047 (arrayContainsKey!0 lt!458734 lt!458824 #b00000000000000000000000000000000)))

(declare-fun lt!458823 () Unit!34022)

(assert (=> b!1041047 (= lt!458823 lt!458825)))

(declare-fun res!694027 () Bool)

(assert (=> b!1041047 (= res!694027 (= (seekEntryOrOpen!0 (select (arr!31569 lt!458734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!458734 (mask!30351 thiss!1427)) (Found!9802 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1041047 (=> (not res!694027) (not e!589538))))

(assert (= (and d!125749 (not res!694028)) b!1041045))

(assert (= (and b!1041045 c!105538) b!1041047))

(assert (= (and b!1041045 (not c!105538)) b!1041046))

(assert (= (and b!1041047 res!694027) b!1041044))

(assert (= (or b!1041044 b!1041046) bm!44094))

(assert (=> b!1041045 m!960611))

(assert (=> b!1041045 m!960611))

(assert (=> b!1041045 m!960613))

(declare-fun m!960677 () Bool)

(assert (=> bm!44094 m!960677))

(assert (=> b!1041047 m!960611))

(declare-fun m!960679 () Bool)

(assert (=> b!1041047 m!960679))

(declare-fun m!960681 () Bool)

(assert (=> b!1041047 m!960681))

(assert (=> b!1041047 m!960611))

(declare-fun m!960683 () Bool)

(assert (=> b!1041047 m!960683))

(assert (=> bm!44081 d!125749))

(declare-fun b!1041066 () Bool)

(declare-fun e!589551 () Bool)

(declare-fun e!589554 () Bool)

(assert (=> b!1041066 (= e!589551 e!589554)))

(declare-fun res!694035 () Bool)

(declare-fun lt!458830 () SeekEntryResult!9802)

(assert (=> b!1041066 (= res!694035 (and ((_ is Intermediate!9802) lt!458830) (not (undefined!10614 lt!458830)) (bvslt (x!92917 lt!458830) #b01111111111111111111111111111110) (bvsge (x!92917 lt!458830) #b00000000000000000000000000000000) (bvsge (x!92917 lt!458830) #b00000000000000000000000000000000)))))

(assert (=> b!1041066 (=> (not res!694035) (not e!589554))))

(declare-fun b!1041067 () Bool)

(assert (=> b!1041067 (= e!589551 (bvsge (x!92917 lt!458830) #b01111111111111111111111111111110))))

(declare-fun b!1041068 () Bool)

(assert (=> b!1041068 (and (bvsge (index!41580 lt!458830) #b00000000000000000000000000000000) (bvslt (index!41580 lt!458830) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun res!694037 () Bool)

(assert (=> b!1041068 (= res!694037 (= (select (arr!31569 (_keys!11572 thiss!1427)) (index!41580 lt!458830)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589553 () Bool)

(assert (=> b!1041068 (=> res!694037 e!589553)))

(declare-fun b!1041069 () Bool)

(declare-fun e!589555 () SeekEntryResult!9802)

(assert (=> b!1041069 (= e!589555 (Intermediate!9802 false (toIndex!0 key!909 (mask!30351 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun d!125751 () Bool)

(assert (=> d!125751 e!589551))

(declare-fun c!105547 () Bool)

(assert (=> d!125751 (= c!105547 (and ((_ is Intermediate!9802) lt!458830) (undefined!10614 lt!458830)))))

(declare-fun e!589552 () SeekEntryResult!9802)

(assert (=> d!125751 (= lt!458830 e!589552)))

(declare-fun c!105545 () Bool)

(assert (=> d!125751 (= c!105545 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!458831 () (_ BitVec 64))

(assert (=> d!125751 (= lt!458831 (select (arr!31569 (_keys!11572 thiss!1427)) (toIndex!0 key!909 (mask!30351 thiss!1427))))))

(assert (=> d!125751 (validMask!0 (mask!30351 thiss!1427))))

(assert (=> d!125751 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30351 thiss!1427)) key!909 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)) lt!458830)))

(declare-fun b!1041070 () Bool)

(assert (=> b!1041070 (and (bvsge (index!41580 lt!458830) #b00000000000000000000000000000000) (bvslt (index!41580 lt!458830) (size!32101 (_keys!11572 thiss!1427))))))

(declare-fun res!694036 () Bool)

(assert (=> b!1041070 (= res!694036 (= (select (arr!31569 (_keys!11572 thiss!1427)) (index!41580 lt!458830)) key!909))))

(assert (=> b!1041070 (=> res!694036 e!589553)))

(assert (=> b!1041070 (= e!589554 e!589553)))

(declare-fun b!1041071 () Bool)

(assert (=> b!1041071 (= e!589555 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!30351 thiss!1427)) #b00000000000000000000000000000000 (mask!30351 thiss!1427)) key!909 (_keys!11572 thiss!1427) (mask!30351 thiss!1427)))))

(declare-fun b!1041072 () Bool)

(assert (=> b!1041072 (= e!589552 e!589555)))

(declare-fun c!105546 () Bool)

(assert (=> b!1041072 (= c!105546 (or (= lt!458831 key!909) (= (bvadd lt!458831 lt!458831) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1041073 () Bool)

(assert (=> b!1041073 (= e!589552 (Intermediate!9802 true (toIndex!0 key!909 (mask!30351 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1041074 () Bool)

(assert (=> b!1041074 (and (bvsge (index!41580 lt!458830) #b00000000000000000000000000000000) (bvslt (index!41580 lt!458830) (size!32101 (_keys!11572 thiss!1427))))))

(assert (=> b!1041074 (= e!589553 (= (select (arr!31569 (_keys!11572 thiss!1427)) (index!41580 lt!458830)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125751 c!105545) b!1041073))

(assert (= (and d!125751 (not c!105545)) b!1041072))

(assert (= (and b!1041072 c!105546) b!1041069))

(assert (= (and b!1041072 (not c!105546)) b!1041071))

(assert (= (and d!125751 c!105547) b!1041067))

(assert (= (and d!125751 (not c!105547)) b!1041066))

(assert (= (and b!1041066 res!694035) b!1041070))

(assert (= (and b!1041070 (not res!694036)) b!1041068))

(assert (= (and b!1041068 (not res!694037)) b!1041074))

(declare-fun m!960685 () Bool)

(assert (=> b!1041068 m!960685))

(assert (=> b!1041074 m!960685))

(assert (=> b!1041070 m!960685))

(assert (=> b!1041071 m!960529))

(declare-fun m!960687 () Bool)

(assert (=> b!1041071 m!960687))

(assert (=> b!1041071 m!960687))

(declare-fun m!960689 () Bool)

(assert (=> b!1041071 m!960689))

(assert (=> d!125751 m!960529))

(declare-fun m!960691 () Bool)

(assert (=> d!125751 m!960691))

(assert (=> d!125751 m!960467))

(assert (=> d!125673 d!125751))

(declare-fun d!125753 () Bool)

(declare-fun lt!458837 () (_ BitVec 32))

(declare-fun lt!458836 () (_ BitVec 32))

(assert (=> d!125753 (= lt!458837 (bvmul (bvxor lt!458836 (bvlshr lt!458836 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!125753 (= lt!458836 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!125753 (and (bvsge (mask!30351 thiss!1427) #b00000000000000000000000000000000) (let ((res!694038 (let ((h!23288 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!92935 (bvmul (bvxor h!23288 (bvlshr h!23288 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!92935 (bvlshr x!92935 #b00000000000000000000000000001101)) (mask!30351 thiss!1427)))))) (and (bvslt res!694038 (bvadd (mask!30351 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!694038 #b00000000000000000000000000000000))))))

(assert (=> d!125753 (= (toIndex!0 key!909 (mask!30351 thiss!1427)) (bvand (bvxor lt!458837 (bvlshr lt!458837 #b00000000000000000000000000001101)) (mask!30351 thiss!1427)))))

(assert (=> d!125673 d!125753))

(assert (=> d!125673 d!125693))

(declare-fun mapNonEmpty!38714 () Bool)

(declare-fun mapRes!38714 () Bool)

(declare-fun tp!74296 () Bool)

(declare-fun e!589556 () Bool)

(assert (=> mapNonEmpty!38714 (= mapRes!38714 (and tp!74296 e!589556))))

(declare-fun mapKey!38714 () (_ BitVec 32))

(declare-fun mapRest!38714 () (Array (_ BitVec 32) ValueCell!11670))

(declare-fun mapValue!38714 () ValueCell!11670)

(assert (=> mapNonEmpty!38714 (= mapRest!38713 (store mapRest!38714 mapKey!38714 mapValue!38714))))

(declare-fun condMapEmpty!38714 () Bool)

(declare-fun mapDefault!38714 () ValueCell!11670)

(assert (=> mapNonEmpty!38713 (= condMapEmpty!38714 (= mapRest!38713 ((as const (Array (_ BitVec 32) ValueCell!11670)) mapDefault!38714)))))

(declare-fun e!589557 () Bool)

(assert (=> mapNonEmpty!38713 (= tp!74295 (and e!589557 mapRes!38714))))

(declare-fun mapIsEmpty!38714 () Bool)

(assert (=> mapIsEmpty!38714 mapRes!38714))

(declare-fun b!1041076 () Bool)

(assert (=> b!1041076 (= e!589557 tp_is_empty!24747)))

(declare-fun b!1041075 () Bool)

(assert (=> b!1041075 (= e!589556 tp_is_empty!24747)))

(assert (= (and mapNonEmpty!38713 condMapEmpty!38714) mapIsEmpty!38714))

(assert (= (and mapNonEmpty!38713 (not condMapEmpty!38714)) mapNonEmpty!38714))

(assert (= (and mapNonEmpty!38714 ((_ is ValueCellFull!11670) mapValue!38714)) b!1041075))

(assert (= (and mapNonEmpty!38713 ((_ is ValueCellFull!11670) mapDefault!38714)) b!1041076))

(declare-fun m!960693 () Bool)

(assert (=> mapNonEmpty!38714 m!960693))

(check-sat (not b!1040959) (not b!1040955) (not b!1041011) (not b!1041018) (not d!125725) (not b!1041023) (not d!125747) (not d!125745) (not bm!44093) (not b!1040973) (not b!1040950) (not b!1041016) (not d!125751) (not b!1040951) (not b!1040993) (not bm!44094) (not d!125721) (not b!1041025) tp_is_empty!24747 (not b!1041021) (not bm!44090) (not bm!44092) (not bm!44089) (not b!1041015) (not b!1041045) b_and!33577 (not b!1041007) (not d!125723) (not d!125707) (not b!1041047) (not b!1041071) (not b_next!21027) (not b!1041038) (not bm!44088) (not mapNonEmpty!38714) (not d!125729) (not b!1041003) (not b!1040965) (not b!1041004) (not b!1041020) (not b!1041013) (not d!125741) (not b!1040986) (not b!1040953) (not b!1041009) (not bm!44086) (not b!1040963) (not bm!44087) (not d!125731) (not bm!44091))
(check-sat b_and!33577 (not b_next!21027))
