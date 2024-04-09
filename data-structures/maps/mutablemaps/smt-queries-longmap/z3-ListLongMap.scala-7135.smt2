; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90578 () Bool)

(assert start!90578)

(declare-fun b!1035627 () Bool)

(declare-fun b_free!20865 () Bool)

(declare-fun b_next!20865 () Bool)

(assert (=> b!1035627 (= b_free!20865 (not b_next!20865))))

(declare-fun tp!73723 () Bool)

(declare-fun b_and!33383 () Bool)

(assert (=> b!1035627 (= tp!73723 b_and!33383)))

(declare-fun b!1035624 () Bool)

(declare-fun e!585686 () Bool)

(declare-fun tp_is_empty!24585 () Bool)

(assert (=> b!1035624 (= e!585686 tp_is_empty!24585)))

(declare-fun b!1035625 () Bool)

(declare-fun res!691518 () Bool)

(declare-fun e!585687 () Bool)

(assert (=> b!1035625 (=> (not res!691518) (not e!585687))))

(declare-datatypes ((V!37653 0))(
  ( (V!37654 (val!12343 Int)) )
))
(declare-datatypes ((ValueCell!11589 0))(
  ( (ValueCellFull!11589 (v!14924 V!37653)) (EmptyCell!11589) )
))
(declare-datatypes ((array!65248 0))(
  ( (array!65249 (arr!31407 (Array (_ BitVec 32) (_ BitVec 64))) (size!31936 (_ BitVec 32))) )
))
(declare-datatypes ((array!65250 0))(
  ( (array!65251 (arr!31408 (Array (_ BitVec 32) ValueCell!11589)) (size!31937 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5772 0))(
  ( (LongMapFixedSize!5773 (defaultEntry!6264 Int) (mask!30152 (_ BitVec 32)) (extraKeys!5994 (_ BitVec 32)) (zeroValue!6098 V!37653) (minValue!6100 V!37653) (_size!2941 (_ BitVec 32)) (_keys!11448 array!65248) (_values!6287 array!65250) (_vacant!2941 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5772)

(assert (=> b!1035625 (= res!691518 (and (= (size!31937 (_values!6287 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30152 thiss!1427))) (= (size!31936 (_keys!11448 thiss!1427)) (size!31937 (_values!6287 thiss!1427))) (bvsge (mask!30152 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5994 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5994 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5994 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5994 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5994 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5994 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5994 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38388 () Bool)

(declare-fun mapRes!38388 () Bool)

(assert (=> mapIsEmpty!38388 mapRes!38388))

(declare-fun b!1035626 () Bool)

(declare-fun res!691520 () Bool)

(assert (=> b!1035626 (=> (not res!691520) (not e!585687))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035626 (= res!691520 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!38388 () Bool)

(declare-fun tp!73724 () Bool)

(declare-fun e!585689 () Bool)

(assert (=> mapNonEmpty!38388 (= mapRes!38388 (and tp!73724 e!585689))))

(declare-fun mapValue!38388 () ValueCell!11589)

(declare-fun mapRest!38388 () (Array (_ BitVec 32) ValueCell!11589))

(declare-fun mapKey!38388 () (_ BitVec 32))

(assert (=> mapNonEmpty!38388 (= (arr!31408 (_values!6287 thiss!1427)) (store mapRest!38388 mapKey!38388 mapValue!38388))))

(declare-fun e!585685 () Bool)

(declare-fun e!585684 () Bool)

(declare-fun array_inv!24121 (array!65248) Bool)

(declare-fun array_inv!24122 (array!65250) Bool)

(assert (=> b!1035627 (= e!585684 (and tp!73723 tp_is_empty!24585 (array_inv!24121 (_keys!11448 thiss!1427)) (array_inv!24122 (_values!6287 thiss!1427)) e!585685))))

(declare-fun res!691519 () Bool)

(assert (=> start!90578 (=> (not res!691519) (not e!585687))))

(declare-fun valid!2128 (LongMapFixedSize!5772) Bool)

(assert (=> start!90578 (= res!691519 (valid!2128 thiss!1427))))

(assert (=> start!90578 e!585687))

(assert (=> start!90578 e!585684))

(assert (=> start!90578 true))

(declare-fun b!1035628 () Bool)

(assert (=> b!1035628 (= e!585685 (and e!585686 mapRes!38388))))

(declare-fun condMapEmpty!38388 () Bool)

(declare-fun mapDefault!38388 () ValueCell!11589)

(assert (=> b!1035628 (= condMapEmpty!38388 (= (arr!31408 (_values!6287 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11589)) mapDefault!38388)))))

(declare-fun b!1035629 () Bool)

(declare-fun res!691521 () Bool)

(assert (=> b!1035629 (=> (not res!691521) (not e!585687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035629 (= res!691521 (validMask!0 (mask!30152 thiss!1427)))))

(declare-fun b!1035630 () Bool)

(assert (=> b!1035630 (= e!585689 tp_is_empty!24585)))

(declare-fun b!1035631 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65248 (_ BitVec 32)) Bool)

(assert (=> b!1035631 (= e!585687 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11448 thiss!1427) (mask!30152 thiss!1427))))))

(assert (= (and start!90578 res!691519) b!1035626))

(assert (= (and b!1035626 res!691520) b!1035629))

(assert (= (and b!1035629 res!691521) b!1035625))

(assert (= (and b!1035625 res!691518) b!1035631))

(assert (= (and b!1035628 condMapEmpty!38388) mapIsEmpty!38388))

(assert (= (and b!1035628 (not condMapEmpty!38388)) mapNonEmpty!38388))

(get-info :version)

(assert (= (and mapNonEmpty!38388 ((_ is ValueCellFull!11589) mapValue!38388)) b!1035630))

(assert (= (and b!1035628 ((_ is ValueCellFull!11589) mapDefault!38388)) b!1035624))

(assert (= b!1035627 b!1035628))

(assert (= start!90578 b!1035627))

(declare-fun m!955579 () Bool)

(assert (=> start!90578 m!955579))

(declare-fun m!955581 () Bool)

(assert (=> b!1035631 m!955581))

(declare-fun m!955583 () Bool)

(assert (=> b!1035629 m!955583))

(declare-fun m!955585 () Bool)

(assert (=> b!1035627 m!955585))

(declare-fun m!955587 () Bool)

(assert (=> b!1035627 m!955587))

(declare-fun m!955589 () Bool)

(assert (=> mapNonEmpty!38388 m!955589))

(check-sat (not b!1035627) (not start!90578) (not b!1035629) (not b!1035631) tp_is_empty!24585 (not b_next!20865) b_and!33383 (not mapNonEmpty!38388))
(check-sat b_and!33383 (not b_next!20865))
(get-model)

(declare-fun d!124487 () Bool)

(assert (=> d!124487 (= (validMask!0 (mask!30152 thiss!1427)) (and (or (= (mask!30152 thiss!1427) #b00000000000000000000000000000111) (= (mask!30152 thiss!1427) #b00000000000000000000000000001111) (= (mask!30152 thiss!1427) #b00000000000000000000000000011111) (= (mask!30152 thiss!1427) #b00000000000000000000000000111111) (= (mask!30152 thiss!1427) #b00000000000000000000000001111111) (= (mask!30152 thiss!1427) #b00000000000000000000000011111111) (= (mask!30152 thiss!1427) #b00000000000000000000000111111111) (= (mask!30152 thiss!1427) #b00000000000000000000001111111111) (= (mask!30152 thiss!1427) #b00000000000000000000011111111111) (= (mask!30152 thiss!1427) #b00000000000000000000111111111111) (= (mask!30152 thiss!1427) #b00000000000000000001111111111111) (= (mask!30152 thiss!1427) #b00000000000000000011111111111111) (= (mask!30152 thiss!1427) #b00000000000000000111111111111111) (= (mask!30152 thiss!1427) #b00000000000000001111111111111111) (= (mask!30152 thiss!1427) #b00000000000000011111111111111111) (= (mask!30152 thiss!1427) #b00000000000000111111111111111111) (= (mask!30152 thiss!1427) #b00000000000001111111111111111111) (= (mask!30152 thiss!1427) #b00000000000011111111111111111111) (= (mask!30152 thiss!1427) #b00000000000111111111111111111111) (= (mask!30152 thiss!1427) #b00000000001111111111111111111111) (= (mask!30152 thiss!1427) #b00000000011111111111111111111111) (= (mask!30152 thiss!1427) #b00000000111111111111111111111111) (= (mask!30152 thiss!1427) #b00000001111111111111111111111111) (= (mask!30152 thiss!1427) #b00000011111111111111111111111111) (= (mask!30152 thiss!1427) #b00000111111111111111111111111111) (= (mask!30152 thiss!1427) #b00001111111111111111111111111111) (= (mask!30152 thiss!1427) #b00011111111111111111111111111111) (= (mask!30152 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30152 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1035629 d!124487))

(declare-fun d!124489 () Bool)

(assert (=> d!124489 (= (array_inv!24121 (_keys!11448 thiss!1427)) (bvsge (size!31936 (_keys!11448 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035627 d!124489))

(declare-fun d!124491 () Bool)

(assert (=> d!124491 (= (array_inv!24122 (_values!6287 thiss!1427)) (bvsge (size!31937 (_values!6287 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035627 d!124491))

(declare-fun b!1035664 () Bool)

(declare-fun e!585715 () Bool)

(declare-fun e!585716 () Bool)

(assert (=> b!1035664 (= e!585715 e!585716)))

(declare-fun c!104687 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1035664 (= c!104687 (validKeyInArray!0 (select (arr!31407 (_keys!11448 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035665 () Bool)

(declare-fun call!43795 () Bool)

(assert (=> b!1035665 (= e!585716 call!43795)))

(declare-fun bm!43792 () Bool)

(assert (=> bm!43792 (= call!43795 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11448 thiss!1427) (mask!30152 thiss!1427)))))

(declare-fun b!1035666 () Bool)

(declare-fun e!585714 () Bool)

(assert (=> b!1035666 (= e!585716 e!585714)))

(declare-fun lt!456741 () (_ BitVec 64))

(assert (=> b!1035666 (= lt!456741 (select (arr!31407 (_keys!11448 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33867 0))(
  ( (Unit!33868) )
))
(declare-fun lt!456740 () Unit!33867)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65248 (_ BitVec 64) (_ BitVec 32)) Unit!33867)

(assert (=> b!1035666 (= lt!456740 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11448 thiss!1427) lt!456741 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1035666 (arrayContainsKey!0 (_keys!11448 thiss!1427) lt!456741 #b00000000000000000000000000000000)))

(declare-fun lt!456742 () Unit!33867)

(assert (=> b!1035666 (= lt!456742 lt!456740)))

(declare-fun res!691538 () Bool)

(declare-datatypes ((SeekEntryResult!9739 0))(
  ( (MissingZero!9739 (index!41326 (_ BitVec 32))) (Found!9739 (index!41327 (_ BitVec 32))) (Intermediate!9739 (undefined!10551 Bool) (index!41328 (_ BitVec 32)) (x!92403 (_ BitVec 32))) (Undefined!9739) (MissingVacant!9739 (index!41329 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65248 (_ BitVec 32)) SeekEntryResult!9739)

(assert (=> b!1035666 (= res!691538 (= (seekEntryOrOpen!0 (select (arr!31407 (_keys!11448 thiss!1427)) #b00000000000000000000000000000000) (_keys!11448 thiss!1427) (mask!30152 thiss!1427)) (Found!9739 #b00000000000000000000000000000000)))))

(assert (=> b!1035666 (=> (not res!691538) (not e!585714))))

(declare-fun d!124493 () Bool)

(declare-fun res!691539 () Bool)

(assert (=> d!124493 (=> res!691539 e!585715)))

(assert (=> d!124493 (= res!691539 (bvsge #b00000000000000000000000000000000 (size!31936 (_keys!11448 thiss!1427))))))

(assert (=> d!124493 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11448 thiss!1427) (mask!30152 thiss!1427)) e!585715)))

(declare-fun b!1035667 () Bool)

(assert (=> b!1035667 (= e!585714 call!43795)))

(assert (= (and d!124493 (not res!691539)) b!1035664))

(assert (= (and b!1035664 c!104687) b!1035666))

(assert (= (and b!1035664 (not c!104687)) b!1035665))

(assert (= (and b!1035666 res!691538) b!1035667))

(assert (= (or b!1035667 b!1035665) bm!43792))

(declare-fun m!955603 () Bool)

(assert (=> b!1035664 m!955603))

(assert (=> b!1035664 m!955603))

(declare-fun m!955605 () Bool)

(assert (=> b!1035664 m!955605))

(declare-fun m!955607 () Bool)

(assert (=> bm!43792 m!955607))

(assert (=> b!1035666 m!955603))

(declare-fun m!955609 () Bool)

(assert (=> b!1035666 m!955609))

(declare-fun m!955611 () Bool)

(assert (=> b!1035666 m!955611))

(assert (=> b!1035666 m!955603))

(declare-fun m!955613 () Bool)

(assert (=> b!1035666 m!955613))

(assert (=> b!1035631 d!124493))

(declare-fun d!124495 () Bool)

(declare-fun res!691546 () Bool)

(declare-fun e!585719 () Bool)

(assert (=> d!124495 (=> (not res!691546) (not e!585719))))

(declare-fun simpleValid!411 (LongMapFixedSize!5772) Bool)

(assert (=> d!124495 (= res!691546 (simpleValid!411 thiss!1427))))

(assert (=> d!124495 (= (valid!2128 thiss!1427) e!585719)))

(declare-fun b!1035674 () Bool)

(declare-fun res!691547 () Bool)

(assert (=> b!1035674 (=> (not res!691547) (not e!585719))))

(declare-fun arrayCountValidKeys!0 (array!65248 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1035674 (= res!691547 (= (arrayCountValidKeys!0 (_keys!11448 thiss!1427) #b00000000000000000000000000000000 (size!31936 (_keys!11448 thiss!1427))) (_size!2941 thiss!1427)))))

(declare-fun b!1035675 () Bool)

(declare-fun res!691548 () Bool)

(assert (=> b!1035675 (=> (not res!691548) (not e!585719))))

(assert (=> b!1035675 (= res!691548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11448 thiss!1427) (mask!30152 thiss!1427)))))

(declare-fun b!1035676 () Bool)

(declare-datatypes ((List!22030 0))(
  ( (Nil!22027) (Cons!22026 (h!23228 (_ BitVec 64)) (t!31240 List!22030)) )
))
(declare-fun arrayNoDuplicates!0 (array!65248 (_ BitVec 32) List!22030) Bool)

(assert (=> b!1035676 (= e!585719 (arrayNoDuplicates!0 (_keys!11448 thiss!1427) #b00000000000000000000000000000000 Nil!22027))))

(assert (= (and d!124495 res!691546) b!1035674))

(assert (= (and b!1035674 res!691547) b!1035675))

(assert (= (and b!1035675 res!691548) b!1035676))

(declare-fun m!955615 () Bool)

(assert (=> d!124495 m!955615))

(declare-fun m!955617 () Bool)

(assert (=> b!1035674 m!955617))

(assert (=> b!1035675 m!955581))

(declare-fun m!955619 () Bool)

(assert (=> b!1035676 m!955619))

(assert (=> start!90578 d!124495))

(declare-fun condMapEmpty!38394 () Bool)

(declare-fun mapDefault!38394 () ValueCell!11589)

(assert (=> mapNonEmpty!38388 (= condMapEmpty!38394 (= mapRest!38388 ((as const (Array (_ BitVec 32) ValueCell!11589)) mapDefault!38394)))))

(declare-fun e!585724 () Bool)

(declare-fun mapRes!38394 () Bool)

(assert (=> mapNonEmpty!38388 (= tp!73724 (and e!585724 mapRes!38394))))

(declare-fun b!1035683 () Bool)

(declare-fun e!585725 () Bool)

(assert (=> b!1035683 (= e!585725 tp_is_empty!24585)))

(declare-fun mapNonEmpty!38394 () Bool)

(declare-fun tp!73733 () Bool)

(assert (=> mapNonEmpty!38394 (= mapRes!38394 (and tp!73733 e!585725))))

(declare-fun mapKey!38394 () (_ BitVec 32))

(declare-fun mapRest!38394 () (Array (_ BitVec 32) ValueCell!11589))

(declare-fun mapValue!38394 () ValueCell!11589)

(assert (=> mapNonEmpty!38394 (= mapRest!38388 (store mapRest!38394 mapKey!38394 mapValue!38394))))

(declare-fun mapIsEmpty!38394 () Bool)

(assert (=> mapIsEmpty!38394 mapRes!38394))

(declare-fun b!1035684 () Bool)

(assert (=> b!1035684 (= e!585724 tp_is_empty!24585)))

(assert (= (and mapNonEmpty!38388 condMapEmpty!38394) mapIsEmpty!38394))

(assert (= (and mapNonEmpty!38388 (not condMapEmpty!38394)) mapNonEmpty!38394))

(assert (= (and mapNonEmpty!38394 ((_ is ValueCellFull!11589) mapValue!38394)) b!1035683))

(assert (= (and mapNonEmpty!38388 ((_ is ValueCellFull!11589) mapDefault!38394)) b!1035684))

(declare-fun m!955621 () Bool)

(assert (=> mapNonEmpty!38394 m!955621))

(check-sat (not b!1035675) (not mapNonEmpty!38394) (not b_next!20865) b_and!33383 (not b!1035676) tp_is_empty!24585 (not b!1035666) (not bm!43792) (not b!1035664) (not b!1035674) (not d!124495))
(check-sat b_and!33383 (not b_next!20865))
