; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89464 () Bool)

(assert start!89464)

(declare-fun b!1025375 () Bool)

(declare-fun b_free!20427 () Bool)

(declare-fun b_next!20427 () Bool)

(assert (=> b!1025375 (= b_free!20427 (not b_next!20427))))

(declare-fun tp!72328 () Bool)

(declare-fun b_and!32691 () Bool)

(assert (=> b!1025375 (= tp!72328 b_and!32691)))

(declare-fun b!1025365 () Bool)

(declare-fun res!686575 () Bool)

(declare-fun e!578185 () Bool)

(assert (=> b!1025365 (=> res!686575 e!578185)))

(declare-datatypes ((V!37069 0))(
  ( (V!37070 (val!12124 Int)) )
))
(declare-datatypes ((ValueCell!11370 0))(
  ( (ValueCellFull!11370 (v!14694 V!37069)) (EmptyCell!11370) )
))
(declare-datatypes ((array!64328 0))(
  ( (array!64329 (arr!30969 (Array (_ BitVec 32) (_ BitVec 64))) (size!31483 (_ BitVec 32))) )
))
(declare-datatypes ((array!64330 0))(
  ( (array!64331 (arr!30970 (Array (_ BitVec 32) ValueCell!11370)) (size!31484 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5334 0))(
  ( (LongMapFixedSize!5335 (defaultEntry!6019 Int) (mask!29684 (_ BitVec 32)) (extraKeys!5751 (_ BitVec 32)) (zeroValue!5855 V!37069) (minValue!5855 V!37069) (_size!2722 (_ BitVec 32)) (_keys!11163 array!64328) (_values!6042 array!64330) (_vacant!2722 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5334)

(declare-datatypes ((SeekEntryResult!9608 0))(
  ( (MissingZero!9608 (index!40802 (_ BitVec 32))) (Found!9608 (index!40803 (_ BitVec 32))) (Intermediate!9608 (undefined!10420 Bool) (index!40804 (_ BitVec 32)) (x!91169 (_ BitVec 32))) (Undefined!9608) (MissingVacant!9608 (index!40805 (_ BitVec 32))) )
))
(declare-fun lt!450907 () SeekEntryResult!9608)

(assert (=> b!1025365 (= res!686575 (or (not (= (size!31483 (_keys!11163 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29684 thiss!1427)))) (bvslt (index!40803 lt!450907) #b00000000000000000000000000000000) (bvsge (index!40803 lt!450907) (size!31483 (_keys!11163 thiss!1427)))))))

(declare-fun mapNonEmpty!37649 () Bool)

(declare-fun mapRes!37649 () Bool)

(declare-fun tp!72327 () Bool)

(declare-fun e!578187 () Bool)

(assert (=> mapNonEmpty!37649 (= mapRes!37649 (and tp!72327 e!578187))))

(declare-fun mapRest!37649 () (Array (_ BitVec 32) ValueCell!11370))

(declare-fun mapValue!37649 () ValueCell!11370)

(declare-fun mapKey!37649 () (_ BitVec 32))

(assert (=> mapNonEmpty!37649 (= (arr!30970 (_values!6042 thiss!1427)) (store mapRest!37649 mapKey!37649 mapValue!37649))))

(declare-fun b!1025367 () Bool)

(declare-fun e!578188 () Bool)

(declare-fun tp_is_empty!24147 () Bool)

(assert (=> b!1025367 (= e!578188 tp_is_empty!24147)))

(declare-fun b!1025368 () Bool)

(declare-fun res!686574 () Bool)

(assert (=> b!1025368 (=> res!686574 e!578185)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025368 (= res!686574 (not (validKeyInArray!0 (select (arr!30969 (_keys!11163 thiss!1427)) (index!40803 lt!450907)))))))

(declare-fun mapIsEmpty!37649 () Bool)

(assert (=> mapIsEmpty!37649 mapRes!37649))

(declare-fun b!1025369 () Bool)

(declare-fun res!686577 () Bool)

(declare-fun e!578189 () Bool)

(assert (=> b!1025369 (=> (not res!686577) (not e!578189))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025369 (= res!686577 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025370 () Bool)

(assert (=> b!1025370 (= e!578185 true)))

(declare-fun lt!450908 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64328 (_ BitVec 32)) Bool)

(assert (=> b!1025370 (= lt!450908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11163 thiss!1427) (mask!29684 thiss!1427)))))

(declare-fun b!1025371 () Bool)

(declare-fun e!578190 () Bool)

(assert (=> b!1025371 (= e!578190 (not e!578185))))

(declare-fun res!686579 () Bool)

(assert (=> b!1025371 (=> res!686579 e!578185)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025371 (= res!686579 (not (validMask!0 (mask!29684 thiss!1427))))))

(declare-fun lt!450910 () array!64328)

(declare-datatypes ((List!21860 0))(
  ( (Nil!21857) (Cons!21856 (h!23054 (_ BitVec 64)) (t!30929 List!21860)) )
))
(declare-fun arrayNoDuplicates!0 (array!64328 (_ BitVec 32) List!21860) Bool)

(assert (=> b!1025371 (arrayNoDuplicates!0 lt!450910 #b00000000000000000000000000000000 Nil!21857)))

(declare-datatypes ((Unit!33354 0))(
  ( (Unit!33355) )
))
(declare-fun lt!450909 () Unit!33354)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64328 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21860) Unit!33354)

(assert (=> b!1025371 (= lt!450909 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11163 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40803 lt!450907) #b00000000000000000000000000000000 Nil!21857))))

(declare-fun arrayCountValidKeys!0 (array!64328 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025371 (= (arrayCountValidKeys!0 lt!450910 #b00000000000000000000000000000000 (size!31483 (_keys!11163 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11163 thiss!1427) #b00000000000000000000000000000000 (size!31483 (_keys!11163 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025371 (= lt!450910 (array!64329 (store (arr!30969 (_keys!11163 thiss!1427)) (index!40803 lt!450907) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31483 (_keys!11163 thiss!1427))))))

(declare-fun lt!450906 () Unit!33354)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64328 (_ BitVec 32) (_ BitVec 64)) Unit!33354)

(assert (=> b!1025371 (= lt!450906 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11163 thiss!1427) (index!40803 lt!450907) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025372 () Bool)

(declare-fun e!578191 () Bool)

(assert (=> b!1025372 (= e!578191 (and e!578188 mapRes!37649))))

(declare-fun condMapEmpty!37649 () Bool)

(declare-fun mapDefault!37649 () ValueCell!11370)

(assert (=> b!1025372 (= condMapEmpty!37649 (= (arr!30970 (_values!6042 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11370)) mapDefault!37649)))))

(declare-fun b!1025366 () Bool)

(assert (=> b!1025366 (= e!578187 tp_is_empty!24147)))

(declare-fun res!686578 () Bool)

(assert (=> start!89464 (=> (not res!686578) (not e!578189))))

(declare-fun valid!1981 (LongMapFixedSize!5334) Bool)

(assert (=> start!89464 (= res!686578 (valid!1981 thiss!1427))))

(assert (=> start!89464 e!578189))

(declare-fun e!578186 () Bool)

(assert (=> start!89464 e!578186))

(assert (=> start!89464 true))

(declare-fun b!1025373 () Bool)

(assert (=> b!1025373 (= e!578189 e!578190)))

(declare-fun res!686576 () Bool)

(assert (=> b!1025373 (=> (not res!686576) (not e!578190))))

(get-info :version)

(assert (=> b!1025373 (= res!686576 ((_ is Found!9608) lt!450907))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64328 (_ BitVec 32)) SeekEntryResult!9608)

(assert (=> b!1025373 (= lt!450907 (seekEntry!0 key!909 (_keys!11163 thiss!1427) (mask!29684 thiss!1427)))))

(declare-fun b!1025374 () Bool)

(declare-fun res!686580 () Bool)

(assert (=> b!1025374 (=> res!686580 e!578185)))

(assert (=> b!1025374 (= res!686580 (not (arrayNoDuplicates!0 (_keys!11163 thiss!1427) #b00000000000000000000000000000000 Nil!21857)))))

(declare-fun array_inv!23841 (array!64328) Bool)

(declare-fun array_inv!23842 (array!64330) Bool)

(assert (=> b!1025375 (= e!578186 (and tp!72328 tp_is_empty!24147 (array_inv!23841 (_keys!11163 thiss!1427)) (array_inv!23842 (_values!6042 thiss!1427)) e!578191))))

(assert (= (and start!89464 res!686578) b!1025369))

(assert (= (and b!1025369 res!686577) b!1025373))

(assert (= (and b!1025373 res!686576) b!1025371))

(assert (= (and b!1025371 (not res!686579)) b!1025365))

(assert (= (and b!1025365 (not res!686575)) b!1025368))

(assert (= (and b!1025368 (not res!686574)) b!1025374))

(assert (= (and b!1025374 (not res!686580)) b!1025370))

(assert (= (and b!1025372 condMapEmpty!37649) mapIsEmpty!37649))

(assert (= (and b!1025372 (not condMapEmpty!37649)) mapNonEmpty!37649))

(assert (= (and mapNonEmpty!37649 ((_ is ValueCellFull!11370) mapValue!37649)) b!1025366))

(assert (= (and b!1025372 ((_ is ValueCellFull!11370) mapDefault!37649)) b!1025367))

(assert (= b!1025375 b!1025372))

(assert (= start!89464 b!1025375))

(declare-fun m!943683 () Bool)

(assert (=> b!1025373 m!943683))

(declare-fun m!943685 () Bool)

(assert (=> start!89464 m!943685))

(declare-fun m!943687 () Bool)

(assert (=> b!1025370 m!943687))

(declare-fun m!943689 () Bool)

(assert (=> b!1025375 m!943689))

(declare-fun m!943691 () Bool)

(assert (=> b!1025375 m!943691))

(declare-fun m!943693 () Bool)

(assert (=> b!1025368 m!943693))

(assert (=> b!1025368 m!943693))

(declare-fun m!943695 () Bool)

(assert (=> b!1025368 m!943695))

(declare-fun m!943697 () Bool)

(assert (=> b!1025374 m!943697))

(declare-fun m!943699 () Bool)

(assert (=> mapNonEmpty!37649 m!943699))

(declare-fun m!943701 () Bool)

(assert (=> b!1025371 m!943701))

(declare-fun m!943703 () Bool)

(assert (=> b!1025371 m!943703))

(declare-fun m!943705 () Bool)

(assert (=> b!1025371 m!943705))

(declare-fun m!943707 () Bool)

(assert (=> b!1025371 m!943707))

(declare-fun m!943709 () Bool)

(assert (=> b!1025371 m!943709))

(declare-fun m!943711 () Bool)

(assert (=> b!1025371 m!943711))

(declare-fun m!943713 () Bool)

(assert (=> b!1025371 m!943713))

(check-sat b_and!32691 (not mapNonEmpty!37649) (not b!1025370) (not start!89464) (not b!1025375) (not b!1025371) (not b_next!20427) (not b!1025368) (not b!1025374) tp_is_empty!24147 (not b!1025373))
(check-sat b_and!32691 (not b_next!20427))
