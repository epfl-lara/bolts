; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89476 () Bool)

(assert start!89476)

(declare-fun b!1025565 () Bool)

(declare-fun b_free!20439 () Bool)

(declare-fun b_next!20439 () Bool)

(assert (=> b!1025565 (= b_free!20439 (not b_next!20439))))

(declare-fun tp!72363 () Bool)

(declare-fun b_and!32703 () Bool)

(assert (=> b!1025565 (= tp!72363 b_and!32703)))

(declare-fun b!1025563 () Bool)

(declare-fun e!578334 () Bool)

(declare-fun tp_is_empty!24159 () Bool)

(assert (=> b!1025563 (= e!578334 tp_is_empty!24159)))

(declare-fun b!1025564 () Bool)

(declare-fun res!686705 () Bool)

(declare-fun e!578329 () Bool)

(assert (=> b!1025564 (=> res!686705 e!578329)))

(declare-datatypes ((V!37085 0))(
  ( (V!37086 (val!12130 Int)) )
))
(declare-datatypes ((ValueCell!11376 0))(
  ( (ValueCellFull!11376 (v!14700 V!37085)) (EmptyCell!11376) )
))
(declare-datatypes ((array!64352 0))(
  ( (array!64353 (arr!30981 (Array (_ BitVec 32) (_ BitVec 64))) (size!31495 (_ BitVec 32))) )
))
(declare-datatypes ((array!64354 0))(
  ( (array!64355 (arr!30982 (Array (_ BitVec 32) ValueCell!11376)) (size!31496 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5346 0))(
  ( (LongMapFixedSize!5347 (defaultEntry!6025 Int) (mask!29694 (_ BitVec 32)) (extraKeys!5757 (_ BitVec 32)) (zeroValue!5861 V!37085) (minValue!5861 V!37085) (_size!2728 (_ BitVec 32)) (_keys!11169 array!64352) (_values!6048 array!64354) (_vacant!2728 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5346)

(declare-datatypes ((SeekEntryResult!9611 0))(
  ( (MissingZero!9611 (index!40814 (_ BitVec 32))) (Found!9611 (index!40815 (_ BitVec 32))) (Intermediate!9611 (undefined!10423 Bool) (index!40816 (_ BitVec 32)) (x!91188 (_ BitVec 32))) (Undefined!9611) (MissingVacant!9611 (index!40817 (_ BitVec 32))) )
))
(declare-fun lt!450999 () SeekEntryResult!9611)

(assert (=> b!1025564 (= res!686705 (or (not (= (size!31495 (_keys!11169 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29694 thiss!1427)))) (bvslt (index!40815 lt!450999) #b00000000000000000000000000000000) (bvsge (index!40815 lt!450999) (size!31495 (_keys!11169 thiss!1427)))))))

(declare-fun e!578336 () Bool)

(declare-fun e!578331 () Bool)

(declare-fun array_inv!23847 (array!64352) Bool)

(declare-fun array_inv!23848 (array!64354) Bool)

(assert (=> b!1025565 (= e!578331 (and tp!72363 tp_is_empty!24159 (array_inv!23847 (_keys!11169 thiss!1427)) (array_inv!23848 (_values!6048 thiss!1427)) e!578336))))

(declare-fun b!1025566 () Bool)

(declare-fun res!686701 () Bool)

(declare-fun e!578330 () Bool)

(assert (=> b!1025566 (=> (not res!686701) (not e!578330))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025566 (= res!686701 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!37667 () Bool)

(declare-fun mapRes!37667 () Bool)

(declare-fun tp!72364 () Bool)

(assert (=> mapNonEmpty!37667 (= mapRes!37667 (and tp!72364 e!578334))))

(declare-fun mapKey!37667 () (_ BitVec 32))

(declare-fun mapRest!37667 () (Array (_ BitVec 32) ValueCell!11376))

(declare-fun mapValue!37667 () ValueCell!11376)

(assert (=> mapNonEmpty!37667 (= (arr!30982 (_values!6048 thiss!1427)) (store mapRest!37667 mapKey!37667 mapValue!37667))))

(declare-fun res!686700 () Bool)

(assert (=> start!89476 (=> (not res!686700) (not e!578330))))

(declare-fun valid!1985 (LongMapFixedSize!5346) Bool)

(assert (=> start!89476 (= res!686700 (valid!1985 thiss!1427))))

(assert (=> start!89476 e!578330))

(assert (=> start!89476 e!578331))

(assert (=> start!89476 true))

(declare-fun b!1025567 () Bool)

(declare-fun e!578335 () Bool)

(assert (=> b!1025567 (= e!578335 tp_is_empty!24159)))

(declare-fun b!1025568 () Bool)

(assert (=> b!1025568 (= e!578329 true)))

(declare-fun lt!450998 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64352 (_ BitVec 32)) Bool)

(assert (=> b!1025568 (= lt!450998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11169 thiss!1427) (mask!29694 thiss!1427)))))

(declare-fun b!1025569 () Bool)

(declare-fun e!578332 () Bool)

(assert (=> b!1025569 (= e!578330 e!578332)))

(declare-fun res!686703 () Bool)

(assert (=> b!1025569 (=> (not res!686703) (not e!578332))))

(get-info :version)

(assert (=> b!1025569 (= res!686703 ((_ is Found!9611) lt!450999))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64352 (_ BitVec 32)) SeekEntryResult!9611)

(assert (=> b!1025569 (= lt!450999 (seekEntry!0 key!909 (_keys!11169 thiss!1427) (mask!29694 thiss!1427)))))

(declare-fun b!1025570 () Bool)

(assert (=> b!1025570 (= e!578336 (and e!578335 mapRes!37667))))

(declare-fun condMapEmpty!37667 () Bool)

(declare-fun mapDefault!37667 () ValueCell!11376)

(assert (=> b!1025570 (= condMapEmpty!37667 (= (arr!30982 (_values!6048 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11376)) mapDefault!37667)))))

(declare-fun b!1025571 () Bool)

(declare-fun res!686704 () Bool)

(assert (=> b!1025571 (=> res!686704 e!578329)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025571 (= res!686704 (not (validKeyInArray!0 (select (arr!30981 (_keys!11169 thiss!1427)) (index!40815 lt!450999)))))))

(declare-fun b!1025572 () Bool)

(assert (=> b!1025572 (= e!578332 (not e!578329))))

(declare-fun res!686702 () Bool)

(assert (=> b!1025572 (=> res!686702 e!578329)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025572 (= res!686702 (not (validMask!0 (mask!29694 thiss!1427))))))

(declare-fun lt!451000 () array!64352)

(declare-datatypes ((List!21863 0))(
  ( (Nil!21860) (Cons!21859 (h!23057 (_ BitVec 64)) (t!30932 List!21863)) )
))
(declare-fun arrayNoDuplicates!0 (array!64352 (_ BitVec 32) List!21863) Bool)

(assert (=> b!1025572 (arrayNoDuplicates!0 lt!451000 #b00000000000000000000000000000000 Nil!21860)))

(declare-datatypes ((Unit!33360 0))(
  ( (Unit!33361) )
))
(declare-fun lt!450997 () Unit!33360)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64352 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21863) Unit!33360)

(assert (=> b!1025572 (= lt!450997 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11169 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40815 lt!450999) #b00000000000000000000000000000000 Nil!21860))))

(declare-fun arrayCountValidKeys!0 (array!64352 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025572 (= (arrayCountValidKeys!0 lt!451000 #b00000000000000000000000000000000 (size!31495 (_keys!11169 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11169 thiss!1427) #b00000000000000000000000000000000 (size!31495 (_keys!11169 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025572 (= lt!451000 (array!64353 (store (arr!30981 (_keys!11169 thiss!1427)) (index!40815 lt!450999) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31495 (_keys!11169 thiss!1427))))))

(declare-fun lt!450996 () Unit!33360)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64352 (_ BitVec 32) (_ BitVec 64)) Unit!33360)

(assert (=> b!1025572 (= lt!450996 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11169 thiss!1427) (index!40815 lt!450999) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025573 () Bool)

(declare-fun res!686706 () Bool)

(assert (=> b!1025573 (=> res!686706 e!578329)))

(assert (=> b!1025573 (= res!686706 (not (arrayNoDuplicates!0 (_keys!11169 thiss!1427) #b00000000000000000000000000000000 Nil!21860)))))

(declare-fun mapIsEmpty!37667 () Bool)

(assert (=> mapIsEmpty!37667 mapRes!37667))

(assert (= (and start!89476 res!686700) b!1025566))

(assert (= (and b!1025566 res!686701) b!1025569))

(assert (= (and b!1025569 res!686703) b!1025572))

(assert (= (and b!1025572 (not res!686702)) b!1025564))

(assert (= (and b!1025564 (not res!686705)) b!1025571))

(assert (= (and b!1025571 (not res!686704)) b!1025573))

(assert (= (and b!1025573 (not res!686706)) b!1025568))

(assert (= (and b!1025570 condMapEmpty!37667) mapIsEmpty!37667))

(assert (= (and b!1025570 (not condMapEmpty!37667)) mapNonEmpty!37667))

(assert (= (and mapNonEmpty!37667 ((_ is ValueCellFull!11376) mapValue!37667)) b!1025563))

(assert (= (and b!1025570 ((_ is ValueCellFull!11376) mapDefault!37667)) b!1025567))

(assert (= b!1025565 b!1025570))

(assert (= start!89476 b!1025565))

(declare-fun m!943875 () Bool)

(assert (=> b!1025572 m!943875))

(declare-fun m!943877 () Bool)

(assert (=> b!1025572 m!943877))

(declare-fun m!943879 () Bool)

(assert (=> b!1025572 m!943879))

(declare-fun m!943881 () Bool)

(assert (=> b!1025572 m!943881))

(declare-fun m!943883 () Bool)

(assert (=> b!1025572 m!943883))

(declare-fun m!943885 () Bool)

(assert (=> b!1025572 m!943885))

(declare-fun m!943887 () Bool)

(assert (=> b!1025572 m!943887))

(declare-fun m!943889 () Bool)

(assert (=> b!1025568 m!943889))

(declare-fun m!943891 () Bool)

(assert (=> start!89476 m!943891))

(declare-fun m!943893 () Bool)

(assert (=> b!1025569 m!943893))

(declare-fun m!943895 () Bool)

(assert (=> mapNonEmpty!37667 m!943895))

(declare-fun m!943897 () Bool)

(assert (=> b!1025565 m!943897))

(declare-fun m!943899 () Bool)

(assert (=> b!1025565 m!943899))

(declare-fun m!943901 () Bool)

(assert (=> b!1025571 m!943901))

(assert (=> b!1025571 m!943901))

(declare-fun m!943903 () Bool)

(assert (=> b!1025571 m!943903))

(declare-fun m!943905 () Bool)

(assert (=> b!1025573 m!943905))

(check-sat (not b!1025569) b_and!32703 (not start!89476) (not b!1025572) (not b!1025568) (not mapNonEmpty!37667) (not b!1025571) tp_is_empty!24159 (not b!1025573) (not b_next!20439) (not b!1025565))
(check-sat b_and!32703 (not b_next!20439))
