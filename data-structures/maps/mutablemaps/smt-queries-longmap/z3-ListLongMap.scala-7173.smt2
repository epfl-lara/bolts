; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91692 () Bool)

(assert start!91692)

(declare-fun b!1043369 () Bool)

(declare-fun b_free!21093 () Bool)

(declare-fun b_next!21093 () Bool)

(assert (=> b!1043369 (= b_free!21093 (not b_next!21093))))

(declare-fun tp!74518 () Bool)

(declare-fun b_and!33643 () Bool)

(assert (=> b!1043369 (= tp!74518 b_and!33643)))

(declare-fun tp_is_empty!24813 () Bool)

(declare-fun e!591194 () Bool)

(declare-datatypes ((V!37957 0))(
  ( (V!37958 (val!12457 Int)) )
))
(declare-datatypes ((ValueCell!11703 0))(
  ( (ValueCellFull!11703 (v!15049 V!37957)) (EmptyCell!11703) )
))
(declare-datatypes ((array!65772 0))(
  ( (array!65773 (arr!31635 (Array (_ BitVec 32) (_ BitVec 64))) (size!32171 (_ BitVec 32))) )
))
(declare-datatypes ((array!65774 0))(
  ( (array!65775 (arr!31636 (Array (_ BitVec 32) ValueCell!11703)) (size!32172 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6000 0))(
  ( (LongMapFixedSize!6001 (defaultEntry!6382 Int) (mask!30466 (_ BitVec 32)) (extraKeys!6110 (_ BitVec 32)) (zeroValue!6216 V!37957) (minValue!6216 V!37957) (_size!3055 (_ BitVec 32)) (_keys!11637 array!65772) (_values!6405 array!65774) (_vacant!3055 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6000)

(declare-fun e!591195 () Bool)

(declare-fun array_inv!24285 (array!65772) Bool)

(declare-fun array_inv!24286 (array!65774) Bool)

(assert (=> b!1043369 (= e!591195 (and tp!74518 tp_is_empty!24813 (array_inv!24285 (_keys!11637 thiss!1427)) (array_inv!24286 (_values!6405 thiss!1427)) e!591194))))

(declare-fun mapIsEmpty!38840 () Bool)

(declare-fun mapRes!38840 () Bool)

(assert (=> mapIsEmpty!38840 mapRes!38840))

(declare-fun b!1043370 () Bool)

(declare-fun res!695212 () Bool)

(declare-fun e!591197 () Bool)

(assert (=> b!1043370 (=> (not res!695212) (not e!591197))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1043370 (= res!695212 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1043371 () Bool)

(declare-fun e!591193 () Bool)

(assert (=> b!1043371 (= e!591194 (and e!591193 mapRes!38840))))

(declare-fun condMapEmpty!38840 () Bool)

(declare-fun mapDefault!38840 () ValueCell!11703)

(assert (=> b!1043371 (= condMapEmpty!38840 (= (arr!31636 (_values!6405 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11703)) mapDefault!38840)))))

(declare-fun b!1043372 () Bool)

(assert (=> b!1043372 (= e!591193 tp_is_empty!24813)))

(declare-fun res!695211 () Bool)

(assert (=> start!91692 (=> (not res!695211) (not e!591197))))

(declare-fun valid!2204 (LongMapFixedSize!6000) Bool)

(assert (=> start!91692 (= res!695211 (valid!2204 thiss!1427))))

(assert (=> start!91692 e!591197))

(assert (=> start!91692 e!591195))

(assert (=> start!91692 true))

(declare-fun b!1043373 () Bool)

(declare-fun e!591192 () Bool)

(assert (=> b!1043373 (= e!591197 e!591192)))

(declare-fun res!695215 () Bool)

(assert (=> b!1043373 (=> (not res!695215) (not e!591192))))

(declare-datatypes ((SeekEntryResult!9828 0))(
  ( (MissingZero!9828 (index!41682 (_ BitVec 32))) (Found!9828 (index!41683 (_ BitVec 32))) (Intermediate!9828 (undefined!10640 Bool) (index!41684 (_ BitVec 32)) (x!93147 (_ BitVec 32))) (Undefined!9828) (MissingVacant!9828 (index!41685 (_ BitVec 32))) )
))
(declare-fun lt!459907 () SeekEntryResult!9828)

(get-info :version)

(assert (=> b!1043373 (= res!695215 ((_ is Found!9828) lt!459907))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65772 (_ BitVec 32)) SeekEntryResult!9828)

(assert (=> b!1043373 (= lt!459907 (seekEntry!0 key!909 (_keys!11637 thiss!1427) (mask!30466 thiss!1427)))))

(declare-fun mapNonEmpty!38840 () Bool)

(declare-fun tp!74517 () Bool)

(declare-fun e!591199 () Bool)

(assert (=> mapNonEmpty!38840 (= mapRes!38840 (and tp!74517 e!591199))))

(declare-fun mapValue!38840 () ValueCell!11703)

(declare-fun mapRest!38840 () (Array (_ BitVec 32) ValueCell!11703))

(declare-fun mapKey!38840 () (_ BitVec 32))

(assert (=> mapNonEmpty!38840 (= (arr!31636 (_values!6405 thiss!1427)) (store mapRest!38840 mapKey!38840 mapValue!38840))))

(declare-fun b!1043374 () Bool)

(declare-fun res!695213 () Bool)

(declare-fun e!591198 () Bool)

(assert (=> b!1043374 (=> res!695213 e!591198)))

(assert (=> b!1043374 (= res!695213 (or (not (= (size!32172 (_values!6405 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30466 thiss!1427)))) (not (= (size!32171 (_keys!11637 thiss!1427)) (size!32172 (_values!6405 thiss!1427)))) (bvslt (mask!30466 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6110 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6110 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1043375 () Bool)

(declare-fun res!695214 () Bool)

(assert (=> b!1043375 (=> res!695214 e!591198)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65772 (_ BitVec 32)) Bool)

(assert (=> b!1043375 (= res!695214 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11637 thiss!1427) (mask!30466 thiss!1427))))))

(declare-fun b!1043376 () Bool)

(assert (=> b!1043376 (= e!591192 (not e!591198))))

(declare-fun res!695210 () Bool)

(assert (=> b!1043376 (=> res!695210 e!591198)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1043376 (= res!695210 (not (validMask!0 (mask!30466 thiss!1427))))))

(declare-fun lt!459910 () array!65772)

(declare-fun arrayContainsKey!0 (array!65772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043376 (not (arrayContainsKey!0 lt!459910 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34066 0))(
  ( (Unit!34067) )
))
(declare-fun lt!459908 () Unit!34066)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65772 (_ BitVec 32) (_ BitVec 64)) Unit!34066)

(assert (=> b!1043376 (= lt!459908 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11637 thiss!1427) (index!41683 lt!459907) key!909))))

(assert (=> b!1043376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459910 (mask!30466 thiss!1427))))

(declare-fun lt!459911 () Unit!34066)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65772 (_ BitVec 32) (_ BitVec 32)) Unit!34066)

(assert (=> b!1043376 (= lt!459911 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11637 thiss!1427) (index!41683 lt!459907) (mask!30466 thiss!1427)))))

(declare-datatypes ((List!22114 0))(
  ( (Nil!22111) (Cons!22110 (h!23318 (_ BitVec 64)) (t!31335 List!22114)) )
))
(declare-fun arrayNoDuplicates!0 (array!65772 (_ BitVec 32) List!22114) Bool)

(assert (=> b!1043376 (arrayNoDuplicates!0 lt!459910 #b00000000000000000000000000000000 Nil!22111)))

(declare-fun lt!459905 () Unit!34066)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65772 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22114) Unit!34066)

(assert (=> b!1043376 (= lt!459905 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11637 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41683 lt!459907) #b00000000000000000000000000000000 Nil!22111))))

(declare-fun arrayCountValidKeys!0 (array!65772 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043376 (= (arrayCountValidKeys!0 lt!459910 #b00000000000000000000000000000000 (size!32171 (_keys!11637 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11637 thiss!1427) #b00000000000000000000000000000000 (size!32171 (_keys!11637 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043376 (= lt!459910 (array!65773 (store (arr!31635 (_keys!11637 thiss!1427)) (index!41683 lt!459907) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32171 (_keys!11637 thiss!1427))))))

(declare-fun lt!459909 () Unit!34066)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65772 (_ BitVec 32) (_ BitVec 64)) Unit!34066)

(assert (=> b!1043376 (= lt!459909 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11637 thiss!1427) (index!41683 lt!459907) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043377 () Bool)

(assert (=> b!1043377 (= e!591199 tp_is_empty!24813)))

(declare-fun b!1043378 () Bool)

(assert (=> b!1043378 (= e!591198 true)))

(declare-fun lt!459906 () Bool)

(assert (=> b!1043378 (= lt!459906 (arrayNoDuplicates!0 (_keys!11637 thiss!1427) #b00000000000000000000000000000000 Nil!22111))))

(assert (= (and start!91692 res!695211) b!1043370))

(assert (= (and b!1043370 res!695212) b!1043373))

(assert (= (and b!1043373 res!695215) b!1043376))

(assert (= (and b!1043376 (not res!695210)) b!1043374))

(assert (= (and b!1043374 (not res!695213)) b!1043375))

(assert (= (and b!1043375 (not res!695214)) b!1043378))

(assert (= (and b!1043371 condMapEmpty!38840) mapIsEmpty!38840))

(assert (= (and b!1043371 (not condMapEmpty!38840)) mapNonEmpty!38840))

(assert (= (and mapNonEmpty!38840 ((_ is ValueCellFull!11703) mapValue!38840)) b!1043377))

(assert (= (and b!1043371 ((_ is ValueCellFull!11703) mapDefault!38840)) b!1043372))

(assert (= b!1043369 b!1043371))

(assert (= start!91692 b!1043369))

(declare-fun m!962711 () Bool)

(assert (=> b!1043369 m!962711))

(declare-fun m!962713 () Bool)

(assert (=> b!1043369 m!962713))

(declare-fun m!962715 () Bool)

(assert (=> b!1043375 m!962715))

(declare-fun m!962717 () Bool)

(assert (=> b!1043378 m!962717))

(declare-fun m!962719 () Bool)

(assert (=> b!1043373 m!962719))

(declare-fun m!962721 () Bool)

(assert (=> mapNonEmpty!38840 m!962721))

(declare-fun m!962723 () Bool)

(assert (=> start!91692 m!962723))

(declare-fun m!962725 () Bool)

(assert (=> b!1043376 m!962725))

(declare-fun m!962727 () Bool)

(assert (=> b!1043376 m!962727))

(declare-fun m!962729 () Bool)

(assert (=> b!1043376 m!962729))

(declare-fun m!962731 () Bool)

(assert (=> b!1043376 m!962731))

(declare-fun m!962733 () Bool)

(assert (=> b!1043376 m!962733))

(declare-fun m!962735 () Bool)

(assert (=> b!1043376 m!962735))

(declare-fun m!962737 () Bool)

(assert (=> b!1043376 m!962737))

(declare-fun m!962739 () Bool)

(assert (=> b!1043376 m!962739))

(declare-fun m!962741 () Bool)

(assert (=> b!1043376 m!962741))

(declare-fun m!962743 () Bool)

(assert (=> b!1043376 m!962743))

(declare-fun m!962745 () Bool)

(assert (=> b!1043376 m!962745))

(check-sat (not start!91692) (not b_next!21093) tp_is_empty!24813 (not b!1043375) (not b!1043369) (not b!1043373) (not mapNonEmpty!38840) (not b!1043376) b_and!33643 (not b!1043378))
(check-sat b_and!33643 (not b_next!21093))
