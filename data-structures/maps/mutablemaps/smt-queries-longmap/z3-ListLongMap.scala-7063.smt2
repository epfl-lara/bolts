; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89470 () Bool)

(assert start!89470)

(declare-fun b!1025467 () Bool)

(declare-fun b_free!20433 () Bool)

(declare-fun b_next!20433 () Bool)

(assert (=> b!1025467 (= b_free!20433 (not b_next!20433))))

(declare-fun tp!72345 () Bool)

(declare-fun b_and!32697 () Bool)

(assert (=> b!1025467 (= tp!72345 b_and!32697)))

(declare-fun b!1025464 () Bool)

(declare-fun e!578258 () Bool)

(assert (=> b!1025464 (= e!578258 true)))

(declare-fun lt!450955 () Bool)

(declare-datatypes ((V!37077 0))(
  ( (V!37078 (val!12127 Int)) )
))
(declare-datatypes ((ValueCell!11373 0))(
  ( (ValueCellFull!11373 (v!14697 V!37077)) (EmptyCell!11373) )
))
(declare-datatypes ((array!64340 0))(
  ( (array!64341 (arr!30975 (Array (_ BitVec 32) (_ BitVec 64))) (size!31489 (_ BitVec 32))) )
))
(declare-datatypes ((array!64342 0))(
  ( (array!64343 (arr!30976 (Array (_ BitVec 32) ValueCell!11373)) (size!31490 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5340 0))(
  ( (LongMapFixedSize!5341 (defaultEntry!6022 Int) (mask!29689 (_ BitVec 32)) (extraKeys!5754 (_ BitVec 32)) (zeroValue!5858 V!37077) (minValue!5858 V!37077) (_size!2725 (_ BitVec 32)) (_keys!11166 array!64340) (_values!6045 array!64342) (_vacant!2725 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5340)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64340 (_ BitVec 32)) Bool)

(assert (=> b!1025464 (= lt!450955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11166 thiss!1427) (mask!29689 thiss!1427)))))

(declare-fun b!1025465 () Bool)

(declare-fun res!686640 () Bool)

(assert (=> b!1025465 (=> res!686640 e!578258)))

(declare-datatypes ((SeekEntryResult!9609 0))(
  ( (MissingZero!9609 (index!40806 (_ BitVec 32))) (Found!9609 (index!40807 (_ BitVec 32))) (Intermediate!9609 (undefined!10421 Bool) (index!40808 (_ BitVec 32)) (x!91178 (_ BitVec 32))) (Undefined!9609) (MissingVacant!9609 (index!40809 (_ BitVec 32))) )
))
(declare-fun lt!450952 () SeekEntryResult!9609)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025465 (= res!686640 (not (validKeyInArray!0 (select (arr!30975 (_keys!11166 thiss!1427)) (index!40807 lt!450952)))))))

(declare-fun b!1025466 () Bool)

(declare-fun e!578260 () Bool)

(declare-fun e!578259 () Bool)

(declare-fun mapRes!37658 () Bool)

(assert (=> b!1025466 (= e!578260 (and e!578259 mapRes!37658))))

(declare-fun condMapEmpty!37658 () Bool)

(declare-fun mapDefault!37658 () ValueCell!11373)

(assert (=> b!1025466 (= condMapEmpty!37658 (= (arr!30976 (_values!6045 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11373)) mapDefault!37658)))))

(declare-fun res!686637 () Bool)

(declare-fun e!578263 () Bool)

(assert (=> start!89470 (=> (not res!686637) (not e!578263))))

(declare-fun valid!1983 (LongMapFixedSize!5340) Bool)

(assert (=> start!89470 (= res!686637 (valid!1983 thiss!1427))))

(assert (=> start!89470 e!578263))

(declare-fun e!578261 () Bool)

(assert (=> start!89470 e!578261))

(assert (=> start!89470 true))

(declare-fun tp_is_empty!24153 () Bool)

(declare-fun array_inv!23843 (array!64340) Bool)

(declare-fun array_inv!23844 (array!64342) Bool)

(assert (=> b!1025467 (= e!578261 (and tp!72345 tp_is_empty!24153 (array_inv!23843 (_keys!11166 thiss!1427)) (array_inv!23844 (_values!6045 thiss!1427)) e!578260))))

(declare-fun b!1025468 () Bool)

(declare-fun e!578264 () Bool)

(assert (=> b!1025468 (= e!578263 e!578264)))

(declare-fun res!686642 () Bool)

(assert (=> b!1025468 (=> (not res!686642) (not e!578264))))

(get-info :version)

(assert (=> b!1025468 (= res!686642 ((_ is Found!9609) lt!450952))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64340 (_ BitVec 32)) SeekEntryResult!9609)

(assert (=> b!1025468 (= lt!450952 (seekEntry!0 key!909 (_keys!11166 thiss!1427) (mask!29689 thiss!1427)))))

(declare-fun mapNonEmpty!37658 () Bool)

(declare-fun tp!72346 () Bool)

(declare-fun e!578262 () Bool)

(assert (=> mapNonEmpty!37658 (= mapRes!37658 (and tp!72346 e!578262))))

(declare-fun mapKey!37658 () (_ BitVec 32))

(declare-fun mapValue!37658 () ValueCell!11373)

(declare-fun mapRest!37658 () (Array (_ BitVec 32) ValueCell!11373))

(assert (=> mapNonEmpty!37658 (= (arr!30976 (_values!6045 thiss!1427)) (store mapRest!37658 mapKey!37658 mapValue!37658))))

(declare-fun b!1025469 () Bool)

(declare-fun res!686643 () Bool)

(assert (=> b!1025469 (=> res!686643 e!578258)))

(declare-datatypes ((List!21861 0))(
  ( (Nil!21858) (Cons!21857 (h!23055 (_ BitVec 64)) (t!30930 List!21861)) )
))
(declare-fun arrayNoDuplicates!0 (array!64340 (_ BitVec 32) List!21861) Bool)

(assert (=> b!1025469 (= res!686643 (not (arrayNoDuplicates!0 (_keys!11166 thiss!1427) #b00000000000000000000000000000000 Nil!21858)))))

(declare-fun b!1025470 () Bool)

(assert (=> b!1025470 (= e!578259 tp_is_empty!24153)))

(declare-fun mapIsEmpty!37658 () Bool)

(assert (=> mapIsEmpty!37658 mapRes!37658))

(declare-fun b!1025471 () Bool)

(assert (=> b!1025471 (= e!578262 tp_is_empty!24153)))

(declare-fun b!1025472 () Bool)

(declare-fun res!686641 () Bool)

(assert (=> b!1025472 (=> res!686641 e!578258)))

(assert (=> b!1025472 (= res!686641 (or (not (= (size!31489 (_keys!11166 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29689 thiss!1427)))) (bvslt (index!40807 lt!450952) #b00000000000000000000000000000000) (bvsge (index!40807 lt!450952) (size!31489 (_keys!11166 thiss!1427)))))))

(declare-fun b!1025473 () Bool)

(declare-fun res!686638 () Bool)

(assert (=> b!1025473 (=> (not res!686638) (not e!578263))))

(assert (=> b!1025473 (= res!686638 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025474 () Bool)

(assert (=> b!1025474 (= e!578264 (not e!578258))))

(declare-fun res!686639 () Bool)

(assert (=> b!1025474 (=> res!686639 e!578258)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025474 (= res!686639 (not (validMask!0 (mask!29689 thiss!1427))))))

(declare-fun lt!450951 () array!64340)

(assert (=> b!1025474 (arrayNoDuplicates!0 lt!450951 #b00000000000000000000000000000000 Nil!21858)))

(declare-datatypes ((Unit!33356 0))(
  ( (Unit!33357) )
))
(declare-fun lt!450953 () Unit!33356)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64340 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21861) Unit!33356)

(assert (=> b!1025474 (= lt!450953 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11166 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40807 lt!450952) #b00000000000000000000000000000000 Nil!21858))))

(declare-fun arrayCountValidKeys!0 (array!64340 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025474 (= (arrayCountValidKeys!0 lt!450951 #b00000000000000000000000000000000 (size!31489 (_keys!11166 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11166 thiss!1427) #b00000000000000000000000000000000 (size!31489 (_keys!11166 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025474 (= lt!450951 (array!64341 (store (arr!30975 (_keys!11166 thiss!1427)) (index!40807 lt!450952) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31489 (_keys!11166 thiss!1427))))))

(declare-fun lt!450954 () Unit!33356)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64340 (_ BitVec 32) (_ BitVec 64)) Unit!33356)

(assert (=> b!1025474 (= lt!450954 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11166 thiss!1427) (index!40807 lt!450952) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!89470 res!686637) b!1025473))

(assert (= (and b!1025473 res!686638) b!1025468))

(assert (= (and b!1025468 res!686642) b!1025474))

(assert (= (and b!1025474 (not res!686639)) b!1025472))

(assert (= (and b!1025472 (not res!686641)) b!1025465))

(assert (= (and b!1025465 (not res!686640)) b!1025469))

(assert (= (and b!1025469 (not res!686643)) b!1025464))

(assert (= (and b!1025466 condMapEmpty!37658) mapIsEmpty!37658))

(assert (= (and b!1025466 (not condMapEmpty!37658)) mapNonEmpty!37658))

(assert (= (and mapNonEmpty!37658 ((_ is ValueCellFull!11373) mapValue!37658)) b!1025471))

(assert (= (and b!1025466 ((_ is ValueCellFull!11373) mapDefault!37658)) b!1025470))

(assert (= b!1025467 b!1025466))

(assert (= start!89470 b!1025467))

(declare-fun m!943779 () Bool)

(assert (=> b!1025465 m!943779))

(assert (=> b!1025465 m!943779))

(declare-fun m!943781 () Bool)

(assert (=> b!1025465 m!943781))

(declare-fun m!943783 () Bool)

(assert (=> b!1025467 m!943783))

(declare-fun m!943785 () Bool)

(assert (=> b!1025467 m!943785))

(declare-fun m!943787 () Bool)

(assert (=> b!1025469 m!943787))

(declare-fun m!943789 () Bool)

(assert (=> mapNonEmpty!37658 m!943789))

(declare-fun m!943791 () Bool)

(assert (=> start!89470 m!943791))

(declare-fun m!943793 () Bool)

(assert (=> b!1025474 m!943793))

(declare-fun m!943795 () Bool)

(assert (=> b!1025474 m!943795))

(declare-fun m!943797 () Bool)

(assert (=> b!1025474 m!943797))

(declare-fun m!943799 () Bool)

(assert (=> b!1025474 m!943799))

(declare-fun m!943801 () Bool)

(assert (=> b!1025474 m!943801))

(declare-fun m!943803 () Bool)

(assert (=> b!1025474 m!943803))

(declare-fun m!943805 () Bool)

(assert (=> b!1025474 m!943805))

(declare-fun m!943807 () Bool)

(assert (=> b!1025468 m!943807))

(declare-fun m!943809 () Bool)

(assert (=> b!1025464 m!943809))

(check-sat (not b_next!20433) (not b!1025468) (not b!1025465) b_and!32697 (not b!1025464) (not b!1025467) (not b!1025474) tp_is_empty!24153 (not start!89470) (not mapNonEmpty!37658) (not b!1025469))
(check-sat b_and!32697 (not b_next!20433))
