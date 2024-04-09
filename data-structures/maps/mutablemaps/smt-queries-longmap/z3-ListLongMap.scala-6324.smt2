; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81378 () Bool)

(assert start!81378)

(declare-fun b!951209 () Bool)

(declare-fun b_free!18267 () Bool)

(declare-fun b_next!18267 () Bool)

(assert (=> b!951209 (= b_free!18267 (not b_next!18267))))

(declare-fun tp!63410 () Bool)

(declare-fun b_and!29753 () Bool)

(assert (=> b!951209 (= tp!63410 b_and!29753)))

(declare-fun b!951200 () Bool)

(declare-fun e!535652 () Bool)

(declare-fun e!535650 () Bool)

(declare-fun mapRes!33087 () Bool)

(assert (=> b!951200 (= e!535652 (and e!535650 mapRes!33087))))

(declare-fun condMapEmpty!33087 () Bool)

(declare-datatypes ((V!32665 0))(
  ( (V!32666 (val!10438 Int)) )
))
(declare-datatypes ((ValueCell!9906 0))(
  ( (ValueCellFull!9906 (v!12985 V!32665)) (EmptyCell!9906) )
))
(declare-datatypes ((array!57598 0))(
  ( (array!57599 (arr!27691 (Array (_ BitVec 32) ValueCell!9906)) (size!28170 (_ BitVec 32))) )
))
(declare-datatypes ((array!57600 0))(
  ( (array!57601 (arr!27692 (Array (_ BitVec 32) (_ BitVec 64))) (size!28171 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4962 0))(
  ( (LongMapFixedSize!4963 (defaultEntry!5802 Int) (mask!27615 (_ BitVec 32)) (extraKeys!5534 (_ BitVec 32)) (zeroValue!5638 V!32665) (minValue!5638 V!32665) (_size!2536 (_ BitVec 32)) (_keys!10741 array!57600) (_values!5825 array!57598) (_vacant!2536 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4962)

(declare-fun mapDefault!33087 () ValueCell!9906)

(assert (=> b!951200 (= condMapEmpty!33087 (= (arr!27691 (_values!5825 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9906)) mapDefault!33087)))))

(declare-fun mapNonEmpty!33087 () Bool)

(declare-fun tp!63411 () Bool)

(declare-fun e!535649 () Bool)

(assert (=> mapNonEmpty!33087 (= mapRes!33087 (and tp!63411 e!535649))))

(declare-fun mapValue!33087 () ValueCell!9906)

(declare-fun mapKey!33087 () (_ BitVec 32))

(declare-fun mapRest!33087 () (Array (_ BitVec 32) ValueCell!9906))

(assert (=> mapNonEmpty!33087 (= (arr!27691 (_values!5825 thiss!1141)) (store mapRest!33087 mapKey!33087 mapValue!33087))))

(declare-fun b!951201 () Bool)

(declare-fun res!637615 () Bool)

(declare-fun e!535654 () Bool)

(assert (=> b!951201 (=> (not res!637615) (not e!535654))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!951201 (= res!637615 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!951202 () Bool)

(declare-fun res!637614 () Bool)

(declare-fun e!535648 () Bool)

(assert (=> b!951202 (=> res!637614 e!535648)))

(declare-fun lt!428462 () (_ BitVec 32))

(assert (=> b!951202 (= res!637614 (or (not (= (size!28171 (_keys!10741 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27615 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))) (bvslt lt!428462 #b00000000000000000000000000000000) (bvsgt lt!428462 (size!28171 (_keys!10741 thiss!1141)))))))

(declare-fun b!951203 () Bool)

(declare-fun tp_is_empty!20775 () Bool)

(assert (=> b!951203 (= e!535649 tp_is_empty!20775)))

(declare-fun b!951204 () Bool)

(declare-fun res!637616 () Bool)

(assert (=> b!951204 (=> (not res!637616) (not e!535654))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9138 0))(
  ( (MissingZero!9138 (index!38922 (_ BitVec 32))) (Found!9138 (index!38923 (_ BitVec 32))) (Intermediate!9138 (undefined!9950 Bool) (index!38924 (_ BitVec 32)) (x!81829 (_ BitVec 32))) (Undefined!9138) (MissingVacant!9138 (index!38925 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57600 (_ BitVec 32)) SeekEntryResult!9138)

(assert (=> b!951204 (= res!637616 (not ((_ is Found!9138) (seekEntry!0 key!756 (_keys!10741 thiss!1141) (mask!27615 thiss!1141)))))))

(declare-fun b!951205 () Bool)

(assert (=> b!951205 (= e!535654 (not e!535648))))

(declare-fun res!637617 () Bool)

(assert (=> b!951205 (=> res!637617 e!535648)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!951205 (= res!637617 (not (validMask!0 (mask!27615 thiss!1141))))))

(declare-fun arrayScanForKey!0 (array!57600 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951205 (= lt!428462 (arrayScanForKey!0 (_keys!10741 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!951205 (arrayContainsKey!0 (_keys!10741 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!32010 0))(
  ( (Unit!32011) )
))
(declare-fun lt!428461 () Unit!32010)

(declare-fun lemmaKeyInListMapIsInArray!330 (array!57600 array!57598 (_ BitVec 32) (_ BitVec 32) V!32665 V!32665 (_ BitVec 64) Int) Unit!32010)

(assert (=> b!951205 (= lt!428461 (lemmaKeyInListMapIsInArray!330 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) key!756 (defaultEntry!5802 thiss!1141)))))

(declare-fun b!951206 () Bool)

(declare-fun res!637613 () Bool)

(assert (=> b!951206 (=> (not res!637613) (not e!535654))))

(declare-datatypes ((tuple2!13658 0))(
  ( (tuple2!13659 (_1!6839 (_ BitVec 64)) (_2!6839 V!32665)) )
))
(declare-datatypes ((List!19481 0))(
  ( (Nil!19478) (Cons!19477 (h!20638 tuple2!13658) (t!27836 List!19481)) )
))
(declare-datatypes ((ListLongMap!12369 0))(
  ( (ListLongMap!12370 (toList!6200 List!19481)) )
))
(declare-fun contains!5244 (ListLongMap!12369 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3385 (array!57600 array!57598 (_ BitVec 32) (_ BitVec 32) V!32665 V!32665 (_ BitVec 32) Int) ListLongMap!12369)

(assert (=> b!951206 (= res!637613 (contains!5244 (getCurrentListMap!3385 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141)) key!756))))

(declare-fun b!951207 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57600 (_ BitVec 32)) Bool)

(assert (=> b!951207 (= e!535648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10741 thiss!1141) (mask!27615 thiss!1141)))))

(declare-fun b!951208 () Bool)

(assert (=> b!951208 (= e!535650 tp_is_empty!20775)))

(declare-fun e!535651 () Bool)

(declare-fun array_inv!21436 (array!57600) Bool)

(declare-fun array_inv!21437 (array!57598) Bool)

(assert (=> b!951209 (= e!535651 (and tp!63410 tp_is_empty!20775 (array_inv!21436 (_keys!10741 thiss!1141)) (array_inv!21437 (_values!5825 thiss!1141)) e!535652))))

(declare-fun mapIsEmpty!33087 () Bool)

(assert (=> mapIsEmpty!33087 mapRes!33087))

(declare-fun res!637612 () Bool)

(assert (=> start!81378 (=> (not res!637612) (not e!535654))))

(declare-fun valid!1858 (LongMapFixedSize!4962) Bool)

(assert (=> start!81378 (= res!637612 (valid!1858 thiss!1141))))

(assert (=> start!81378 e!535654))

(assert (=> start!81378 e!535651))

(assert (=> start!81378 true))

(assert (= (and start!81378 res!637612) b!951201))

(assert (= (and b!951201 res!637615) b!951204))

(assert (= (and b!951204 res!637616) b!951206))

(assert (= (and b!951206 res!637613) b!951205))

(assert (= (and b!951205 (not res!637617)) b!951202))

(assert (= (and b!951202 (not res!637614)) b!951207))

(assert (= (and b!951200 condMapEmpty!33087) mapIsEmpty!33087))

(assert (= (and b!951200 (not condMapEmpty!33087)) mapNonEmpty!33087))

(assert (= (and mapNonEmpty!33087 ((_ is ValueCellFull!9906) mapValue!33087)) b!951203))

(assert (= (and b!951200 ((_ is ValueCellFull!9906) mapDefault!33087)) b!951208))

(assert (= b!951209 b!951200))

(assert (= start!81378 b!951209))

(declare-fun m!883577 () Bool)

(assert (=> start!81378 m!883577))

(declare-fun m!883579 () Bool)

(assert (=> b!951209 m!883579))

(declare-fun m!883581 () Bool)

(assert (=> b!951209 m!883581))

(declare-fun m!883583 () Bool)

(assert (=> b!951207 m!883583))

(declare-fun m!883585 () Bool)

(assert (=> b!951205 m!883585))

(declare-fun m!883587 () Bool)

(assert (=> b!951205 m!883587))

(declare-fun m!883589 () Bool)

(assert (=> b!951205 m!883589))

(declare-fun m!883591 () Bool)

(assert (=> b!951205 m!883591))

(declare-fun m!883593 () Bool)

(assert (=> b!951204 m!883593))

(declare-fun m!883595 () Bool)

(assert (=> b!951206 m!883595))

(assert (=> b!951206 m!883595))

(declare-fun m!883597 () Bool)

(assert (=> b!951206 m!883597))

(declare-fun m!883599 () Bool)

(assert (=> mapNonEmpty!33087 m!883599))

(check-sat (not b!951205) (not b_next!18267) (not b!951207) b_and!29753 (not b!951206) (not b!951204) (not start!81378) (not mapNonEmpty!33087) (not b!951209) tp_is_empty!20775)
(check-sat b_and!29753 (not b_next!18267))
(get-model)

(declare-fun d!115257 () Bool)

(declare-fun lt!428479 () SeekEntryResult!9138)

(assert (=> d!115257 (and (or ((_ is MissingVacant!9138) lt!428479) (not ((_ is Found!9138) lt!428479)) (and (bvsge (index!38923 lt!428479) #b00000000000000000000000000000000) (bvslt (index!38923 lt!428479) (size!28171 (_keys!10741 thiss!1141))))) (not ((_ is MissingVacant!9138) lt!428479)) (or (not ((_ is Found!9138) lt!428479)) (= (select (arr!27692 (_keys!10741 thiss!1141)) (index!38923 lt!428479)) key!756)))))

(declare-fun e!535682 () SeekEntryResult!9138)

(assert (=> d!115257 (= lt!428479 e!535682)))

(declare-fun c!99345 () Bool)

(declare-fun lt!428478 () SeekEntryResult!9138)

(assert (=> d!115257 (= c!99345 (and ((_ is Intermediate!9138) lt!428478) (undefined!9950 lt!428478)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57600 (_ BitVec 32)) SeekEntryResult!9138)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115257 (= lt!428478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27615 thiss!1141)) key!756 (_keys!10741 thiss!1141) (mask!27615 thiss!1141)))))

(assert (=> d!115257 (validMask!0 (mask!27615 thiss!1141))))

(assert (=> d!115257 (= (seekEntry!0 key!756 (_keys!10741 thiss!1141) (mask!27615 thiss!1141)) lt!428479)))

(declare-fun b!951252 () Bool)

(assert (=> b!951252 (= e!535682 Undefined!9138)))

(declare-fun b!951253 () Bool)

(declare-fun e!535684 () SeekEntryResult!9138)

(assert (=> b!951253 (= e!535682 e!535684)))

(declare-fun lt!428477 () (_ BitVec 64))

(assert (=> b!951253 (= lt!428477 (select (arr!27692 (_keys!10741 thiss!1141)) (index!38924 lt!428478)))))

(declare-fun c!99347 () Bool)

(assert (=> b!951253 (= c!99347 (= lt!428477 key!756))))

(declare-fun b!951254 () Bool)

(declare-fun c!99346 () Bool)

(assert (=> b!951254 (= c!99346 (= lt!428477 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!535683 () SeekEntryResult!9138)

(assert (=> b!951254 (= e!535684 e!535683)))

(declare-fun b!951255 () Bool)

(assert (=> b!951255 (= e!535683 (MissingZero!9138 (index!38924 lt!428478)))))

(declare-fun b!951256 () Bool)

(declare-fun lt!428480 () SeekEntryResult!9138)

(assert (=> b!951256 (= e!535683 (ite ((_ is MissingVacant!9138) lt!428480) (MissingZero!9138 (index!38925 lt!428480)) lt!428480))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57600 (_ BitVec 32)) SeekEntryResult!9138)

(assert (=> b!951256 (= lt!428480 (seekKeyOrZeroReturnVacant!0 (x!81829 lt!428478) (index!38924 lt!428478) (index!38924 lt!428478) key!756 (_keys!10741 thiss!1141) (mask!27615 thiss!1141)))))

(declare-fun b!951257 () Bool)

(assert (=> b!951257 (= e!535684 (Found!9138 (index!38924 lt!428478)))))

(assert (= (and d!115257 c!99345) b!951252))

(assert (= (and d!115257 (not c!99345)) b!951253))

(assert (= (and b!951253 c!99347) b!951257))

(assert (= (and b!951253 (not c!99347)) b!951254))

(assert (= (and b!951254 c!99346) b!951255))

(assert (= (and b!951254 (not c!99346)) b!951256))

(declare-fun m!883625 () Bool)

(assert (=> d!115257 m!883625))

(declare-fun m!883627 () Bool)

(assert (=> d!115257 m!883627))

(assert (=> d!115257 m!883627))

(declare-fun m!883629 () Bool)

(assert (=> d!115257 m!883629))

(assert (=> d!115257 m!883585))

(declare-fun m!883631 () Bool)

(assert (=> b!951253 m!883631))

(declare-fun m!883633 () Bool)

(assert (=> b!951256 m!883633))

(assert (=> b!951204 d!115257))

(declare-fun d!115259 () Bool)

(declare-fun res!637642 () Bool)

(declare-fun e!535687 () Bool)

(assert (=> d!115259 (=> (not res!637642) (not e!535687))))

(declare-fun simpleValid!377 (LongMapFixedSize!4962) Bool)

(assert (=> d!115259 (= res!637642 (simpleValid!377 thiss!1141))))

(assert (=> d!115259 (= (valid!1858 thiss!1141) e!535687)))

(declare-fun b!951264 () Bool)

(declare-fun res!637643 () Bool)

(assert (=> b!951264 (=> (not res!637643) (not e!535687))))

(declare-fun arrayCountValidKeys!0 (array!57600 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951264 (= res!637643 (= (arrayCountValidKeys!0 (_keys!10741 thiss!1141) #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))) (_size!2536 thiss!1141)))))

(declare-fun b!951265 () Bool)

(declare-fun res!637644 () Bool)

(assert (=> b!951265 (=> (not res!637644) (not e!535687))))

(assert (=> b!951265 (= res!637644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10741 thiss!1141) (mask!27615 thiss!1141)))))

(declare-fun b!951266 () Bool)

(declare-datatypes ((List!19483 0))(
  ( (Nil!19480) (Cons!19479 (h!20640 (_ BitVec 64)) (t!27840 List!19483)) )
))
(declare-fun arrayNoDuplicates!0 (array!57600 (_ BitVec 32) List!19483) Bool)

(assert (=> b!951266 (= e!535687 (arrayNoDuplicates!0 (_keys!10741 thiss!1141) #b00000000000000000000000000000000 Nil!19480))))

(assert (= (and d!115259 res!637642) b!951264))

(assert (= (and b!951264 res!637643) b!951265))

(assert (= (and b!951265 res!637644) b!951266))

(declare-fun m!883635 () Bool)

(assert (=> d!115259 m!883635))

(declare-fun m!883637 () Bool)

(assert (=> b!951264 m!883637))

(assert (=> b!951265 m!883583))

(declare-fun m!883639 () Bool)

(assert (=> b!951266 m!883639))

(assert (=> start!81378 d!115259))

(declare-fun d!115261 () Bool)

(declare-fun res!637649 () Bool)

(declare-fun e!535694 () Bool)

(assert (=> d!115261 (=> res!637649 e!535694)))

(assert (=> d!115261 (= res!637649 (bvsge #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))))))

(assert (=> d!115261 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10741 thiss!1141) (mask!27615 thiss!1141)) e!535694)))

(declare-fun b!951275 () Bool)

(declare-fun e!535696 () Bool)

(declare-fun call!41469 () Bool)

(assert (=> b!951275 (= e!535696 call!41469)))

(declare-fun bm!41466 () Bool)

(assert (=> bm!41466 (= call!41469 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10741 thiss!1141) (mask!27615 thiss!1141)))))

(declare-fun b!951276 () Bool)

(declare-fun e!535695 () Bool)

(assert (=> b!951276 (= e!535695 e!535696)))

(declare-fun lt!428487 () (_ BitVec 64))

(assert (=> b!951276 (= lt!428487 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428489 () Unit!32010)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57600 (_ BitVec 64) (_ BitVec 32)) Unit!32010)

(assert (=> b!951276 (= lt!428489 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10741 thiss!1141) lt!428487 #b00000000000000000000000000000000))))

(assert (=> b!951276 (arrayContainsKey!0 (_keys!10741 thiss!1141) lt!428487 #b00000000000000000000000000000000)))

(declare-fun lt!428488 () Unit!32010)

(assert (=> b!951276 (= lt!428488 lt!428489)))

(declare-fun res!637650 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57600 (_ BitVec 32)) SeekEntryResult!9138)

(assert (=> b!951276 (= res!637650 (= (seekEntryOrOpen!0 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000) (_keys!10741 thiss!1141) (mask!27615 thiss!1141)) (Found!9138 #b00000000000000000000000000000000)))))

(assert (=> b!951276 (=> (not res!637650) (not e!535696))))

(declare-fun b!951277 () Bool)

(assert (=> b!951277 (= e!535694 e!535695)))

(declare-fun c!99350 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!951277 (= c!99350 (validKeyInArray!0 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951278 () Bool)

(assert (=> b!951278 (= e!535695 call!41469)))

(assert (= (and d!115261 (not res!637649)) b!951277))

(assert (= (and b!951277 c!99350) b!951276))

(assert (= (and b!951277 (not c!99350)) b!951278))

(assert (= (and b!951276 res!637650) b!951275))

(assert (= (or b!951275 b!951278) bm!41466))

(declare-fun m!883641 () Bool)

(assert (=> bm!41466 m!883641))

(declare-fun m!883643 () Bool)

(assert (=> b!951276 m!883643))

(declare-fun m!883645 () Bool)

(assert (=> b!951276 m!883645))

(declare-fun m!883647 () Bool)

(assert (=> b!951276 m!883647))

(assert (=> b!951276 m!883643))

(declare-fun m!883649 () Bool)

(assert (=> b!951276 m!883649))

(assert (=> b!951277 m!883643))

(assert (=> b!951277 m!883643))

(declare-fun m!883651 () Bool)

(assert (=> b!951277 m!883651))

(assert (=> b!951207 d!115261))

(declare-fun d!115263 () Bool)

(declare-fun e!535701 () Bool)

(assert (=> d!115263 e!535701))

(declare-fun res!637653 () Bool)

(assert (=> d!115263 (=> res!637653 e!535701)))

(declare-fun lt!428500 () Bool)

(assert (=> d!115263 (= res!637653 (not lt!428500))))

(declare-fun lt!428499 () Bool)

(assert (=> d!115263 (= lt!428500 lt!428499)))

(declare-fun lt!428498 () Unit!32010)

(declare-fun e!535702 () Unit!32010)

(assert (=> d!115263 (= lt!428498 e!535702)))

(declare-fun c!99353 () Bool)

(assert (=> d!115263 (= c!99353 lt!428499)))

(declare-fun containsKey!469 (List!19481 (_ BitVec 64)) Bool)

(assert (=> d!115263 (= lt!428499 (containsKey!469 (toList!6200 (getCurrentListMap!3385 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141))) key!756))))

(assert (=> d!115263 (= (contains!5244 (getCurrentListMap!3385 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141)) key!756) lt!428500)))

(declare-fun b!951285 () Bool)

(declare-fun lt!428501 () Unit!32010)

(assert (=> b!951285 (= e!535702 lt!428501)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!364 (List!19481 (_ BitVec 64)) Unit!32010)

(assert (=> b!951285 (= lt!428501 (lemmaContainsKeyImpliesGetValueByKeyDefined!364 (toList!6200 (getCurrentListMap!3385 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141))) key!756))))

(declare-datatypes ((Option!510 0))(
  ( (Some!509 (v!12987 V!32665)) (None!508) )
))
(declare-fun isDefined!374 (Option!510) Bool)

(declare-fun getValueByKey!504 (List!19481 (_ BitVec 64)) Option!510)

(assert (=> b!951285 (isDefined!374 (getValueByKey!504 (toList!6200 (getCurrentListMap!3385 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141))) key!756))))

(declare-fun b!951286 () Bool)

(declare-fun Unit!32014 () Unit!32010)

(assert (=> b!951286 (= e!535702 Unit!32014)))

(declare-fun b!951287 () Bool)

(assert (=> b!951287 (= e!535701 (isDefined!374 (getValueByKey!504 (toList!6200 (getCurrentListMap!3385 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141))) key!756)))))

(assert (= (and d!115263 c!99353) b!951285))

(assert (= (and d!115263 (not c!99353)) b!951286))

(assert (= (and d!115263 (not res!637653)) b!951287))

(declare-fun m!883653 () Bool)

(assert (=> d!115263 m!883653))

(declare-fun m!883655 () Bool)

(assert (=> b!951285 m!883655))

(declare-fun m!883657 () Bool)

(assert (=> b!951285 m!883657))

(assert (=> b!951285 m!883657))

(declare-fun m!883659 () Bool)

(assert (=> b!951285 m!883659))

(assert (=> b!951287 m!883657))

(assert (=> b!951287 m!883657))

(assert (=> b!951287 m!883659))

(assert (=> b!951206 d!115263))

(declare-fun b!951330 () Bool)

(declare-fun res!637675 () Bool)

(declare-fun e!535741 () Bool)

(assert (=> b!951330 (=> (not res!637675) (not e!535741))))

(declare-fun e!535738 () Bool)

(assert (=> b!951330 (= res!637675 e!535738)))

(declare-fun c!99370 () Bool)

(assert (=> b!951330 (= c!99370 (not (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!951331 () Bool)

(declare-fun e!535737 () Bool)

(assert (=> b!951331 (= e!535738 e!535737)))

(declare-fun res!637680 () Bool)

(declare-fun call!41486 () Bool)

(assert (=> b!951331 (= res!637680 call!41486)))

(assert (=> b!951331 (=> (not res!637680) (not e!535737))))

(declare-fun b!951332 () Bool)

(declare-fun e!535732 () Bool)

(declare-fun call!41490 () Bool)

(assert (=> b!951332 (= e!535732 (not call!41490))))

(declare-fun b!951333 () Bool)

(declare-fun lt!428547 () ListLongMap!12369)

(declare-fun apply!917 (ListLongMap!12369 (_ BitVec 64)) V!32665)

(assert (=> b!951333 (= e!535737 (= (apply!917 lt!428547 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5638 thiss!1141)))))

(declare-fun b!951334 () Bool)

(declare-fun e!535734 () ListLongMap!12369)

(declare-fun e!535733 () ListLongMap!12369)

(assert (=> b!951334 (= e!535734 e!535733)))

(declare-fun c!99368 () Bool)

(assert (=> b!951334 (= c!99368 (and (not (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!951335 () Bool)

(declare-fun e!535731 () Bool)

(assert (=> b!951335 (= e!535732 e!535731)))

(declare-fun res!637676 () Bool)

(assert (=> b!951335 (= res!637676 call!41490)))

(assert (=> b!951335 (=> (not res!637676) (not e!535731))))

(declare-fun b!951336 () Bool)

(declare-fun call!41484 () ListLongMap!12369)

(declare-fun +!2831 (ListLongMap!12369 tuple2!13658) ListLongMap!12369)

(assert (=> b!951336 (= e!535734 (+!2831 call!41484 (tuple2!13659 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5638 thiss!1141))))))

(declare-fun bm!41481 () Bool)

(declare-fun call!41488 () ListLongMap!12369)

(declare-fun call!41489 () ListLongMap!12369)

(assert (=> bm!41481 (= call!41488 call!41489)))

(declare-fun bm!41482 () Bool)

(assert (=> bm!41482 (= call!41490 (contains!5244 lt!428547 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!951337 () Bool)

(declare-fun res!637679 () Bool)

(assert (=> b!951337 (=> (not res!637679) (not e!535741))))

(declare-fun e!535736 () Bool)

(assert (=> b!951337 (= res!637679 e!535736)))

(declare-fun res!637674 () Bool)

(assert (=> b!951337 (=> res!637674 e!535736)))

(declare-fun e!535729 () Bool)

(assert (=> b!951337 (= res!637674 (not e!535729))))

(declare-fun res!637673 () Bool)

(assert (=> b!951337 (=> (not res!637673) (not e!535729))))

(assert (=> b!951337 (= res!637673 (bvslt #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))))))

(declare-fun b!951338 () Bool)

(declare-fun e!535739 () Bool)

(assert (=> b!951338 (= e!535736 e!535739)))

(declare-fun res!637672 () Bool)

(assert (=> b!951338 (=> (not res!637672) (not e!535739))))

(assert (=> b!951338 (= res!637672 (contains!5244 lt!428547 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!951338 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))))))

(declare-fun b!951339 () Bool)

(declare-fun get!14571 (ValueCell!9906 V!32665) V!32665)

(declare-fun dynLambda!1670 (Int (_ BitVec 64)) V!32665)

(assert (=> b!951339 (= e!535739 (= (apply!917 lt!428547 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000)) (get!14571 (select (arr!27691 (_values!5825 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1670 (defaultEntry!5802 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!951339 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28170 (_values!5825 thiss!1141))))))

(assert (=> b!951339 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))))))

(declare-fun b!951340 () Bool)

(assert (=> b!951340 (= e!535738 (not call!41486))))

(declare-fun bm!41483 () Bool)

(assert (=> bm!41483 (= call!41486 (contains!5244 lt!428547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!951341 () Bool)

(declare-fun e!535740 () Unit!32010)

(declare-fun lt!428546 () Unit!32010)

(assert (=> b!951341 (= e!535740 lt!428546)))

(declare-fun lt!428550 () ListLongMap!12369)

(declare-fun getCurrentListMapNoExtraKeys!3337 (array!57600 array!57598 (_ BitVec 32) (_ BitVec 32) V!32665 V!32665 (_ BitVec 32) Int) ListLongMap!12369)

(assert (=> b!951341 (= lt!428550 (getCurrentListMapNoExtraKeys!3337 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141)))))

(declare-fun lt!428551 () (_ BitVec 64))

(assert (=> b!951341 (= lt!428551 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428560 () (_ BitVec 64))

(assert (=> b!951341 (= lt!428560 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428552 () Unit!32010)

(declare-fun addStillContains!587 (ListLongMap!12369 (_ BitVec 64) V!32665 (_ BitVec 64)) Unit!32010)

(assert (=> b!951341 (= lt!428552 (addStillContains!587 lt!428550 lt!428551 (zeroValue!5638 thiss!1141) lt!428560))))

(assert (=> b!951341 (contains!5244 (+!2831 lt!428550 (tuple2!13659 lt!428551 (zeroValue!5638 thiss!1141))) lt!428560)))

(declare-fun lt!428565 () Unit!32010)

(assert (=> b!951341 (= lt!428565 lt!428552)))

(declare-fun lt!428557 () ListLongMap!12369)

(assert (=> b!951341 (= lt!428557 (getCurrentListMapNoExtraKeys!3337 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141)))))

(declare-fun lt!428562 () (_ BitVec 64))

(assert (=> b!951341 (= lt!428562 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428555 () (_ BitVec 64))

(assert (=> b!951341 (= lt!428555 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428558 () Unit!32010)

(declare-fun addApplyDifferent!461 (ListLongMap!12369 (_ BitVec 64) V!32665 (_ BitVec 64)) Unit!32010)

(assert (=> b!951341 (= lt!428558 (addApplyDifferent!461 lt!428557 lt!428562 (minValue!5638 thiss!1141) lt!428555))))

(assert (=> b!951341 (= (apply!917 (+!2831 lt!428557 (tuple2!13659 lt!428562 (minValue!5638 thiss!1141))) lt!428555) (apply!917 lt!428557 lt!428555))))

(declare-fun lt!428559 () Unit!32010)

(assert (=> b!951341 (= lt!428559 lt!428558)))

(declare-fun lt!428556 () ListLongMap!12369)

(assert (=> b!951341 (= lt!428556 (getCurrentListMapNoExtraKeys!3337 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141)))))

(declare-fun lt!428561 () (_ BitVec 64))

(assert (=> b!951341 (= lt!428561 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428554 () (_ BitVec 64))

(assert (=> b!951341 (= lt!428554 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428553 () Unit!32010)

(assert (=> b!951341 (= lt!428553 (addApplyDifferent!461 lt!428556 lt!428561 (zeroValue!5638 thiss!1141) lt!428554))))

(assert (=> b!951341 (= (apply!917 (+!2831 lt!428556 (tuple2!13659 lt!428561 (zeroValue!5638 thiss!1141))) lt!428554) (apply!917 lt!428556 lt!428554))))

(declare-fun lt!428564 () Unit!32010)

(assert (=> b!951341 (= lt!428564 lt!428553)))

(declare-fun lt!428563 () ListLongMap!12369)

(assert (=> b!951341 (= lt!428563 (getCurrentListMapNoExtraKeys!3337 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141)))))

(declare-fun lt!428549 () (_ BitVec 64))

(assert (=> b!951341 (= lt!428549 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428567 () (_ BitVec 64))

(assert (=> b!951341 (= lt!428567 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951341 (= lt!428546 (addApplyDifferent!461 lt!428563 lt!428549 (minValue!5638 thiss!1141) lt!428567))))

(assert (=> b!951341 (= (apply!917 (+!2831 lt!428563 (tuple2!13659 lt!428549 (minValue!5638 thiss!1141))) lt!428567) (apply!917 lt!428563 lt!428567))))

(declare-fun b!951342 () Bool)

(declare-fun Unit!32015 () Unit!32010)

(assert (=> b!951342 (= e!535740 Unit!32015)))

(declare-fun b!951343 () Bool)

(assert (=> b!951343 (= e!535731 (= (apply!917 lt!428547 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5638 thiss!1141)))))

(declare-fun d!115265 () Bool)

(assert (=> d!115265 e!535741))

(declare-fun res!637678 () Bool)

(assert (=> d!115265 (=> (not res!637678) (not e!535741))))

(assert (=> d!115265 (= res!637678 (or (bvsge #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))))))))

(declare-fun lt!428548 () ListLongMap!12369)

(assert (=> d!115265 (= lt!428547 lt!428548)))

(declare-fun lt!428566 () Unit!32010)

(assert (=> d!115265 (= lt!428566 e!535740)))

(declare-fun c!99366 () Bool)

(declare-fun e!535730 () Bool)

(assert (=> d!115265 (= c!99366 e!535730)))

(declare-fun res!637677 () Bool)

(assert (=> d!115265 (=> (not res!637677) (not e!535730))))

(assert (=> d!115265 (= res!637677 (bvslt #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))))))

(assert (=> d!115265 (= lt!428548 e!535734)))

(declare-fun c!99371 () Bool)

(assert (=> d!115265 (= c!99371 (and (not (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115265 (validMask!0 (mask!27615 thiss!1141))))

(assert (=> d!115265 (= (getCurrentListMap!3385 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141)) lt!428547)))

(declare-fun b!951344 () Bool)

(assert (=> b!951344 (= e!535730 (validKeyInArray!0 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951345 () Bool)

(assert (=> b!951345 (= e!535729 (validKeyInArray!0 (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951346 () Bool)

(declare-fun e!535735 () ListLongMap!12369)

(declare-fun call!41485 () ListLongMap!12369)

(assert (=> b!951346 (= e!535735 call!41485)))

(declare-fun b!951347 () Bool)

(declare-fun call!41487 () ListLongMap!12369)

(assert (=> b!951347 (= e!535735 call!41487)))

(declare-fun bm!41484 () Bool)

(assert (=> bm!41484 (= call!41487 call!41488)))

(declare-fun bm!41485 () Bool)

(assert (=> bm!41485 (= call!41489 (getCurrentListMapNoExtraKeys!3337 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5802 thiss!1141)))))

(declare-fun b!951348 () Bool)

(assert (=> b!951348 (= e!535741 e!535732)))

(declare-fun c!99367 () Bool)

(assert (=> b!951348 (= c!99367 (not (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41486 () Bool)

(assert (=> bm!41486 (= call!41485 call!41484)))

(declare-fun bm!41487 () Bool)

(assert (=> bm!41487 (= call!41484 (+!2831 (ite c!99371 call!41489 (ite c!99368 call!41488 call!41487)) (ite (or c!99371 c!99368) (tuple2!13659 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5638 thiss!1141)) (tuple2!13659 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5638 thiss!1141)))))))

(declare-fun b!951349 () Bool)

(assert (=> b!951349 (= e!535733 call!41485)))

(declare-fun b!951350 () Bool)

(declare-fun c!99369 () Bool)

(assert (=> b!951350 (= c!99369 (and (not (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!951350 (= e!535733 e!535735)))

(assert (= (and d!115265 c!99371) b!951336))

(assert (= (and d!115265 (not c!99371)) b!951334))

(assert (= (and b!951334 c!99368) b!951349))

(assert (= (and b!951334 (not c!99368)) b!951350))

(assert (= (and b!951350 c!99369) b!951346))

(assert (= (and b!951350 (not c!99369)) b!951347))

(assert (= (or b!951346 b!951347) bm!41484))

(assert (= (or b!951349 bm!41484) bm!41481))

(assert (= (or b!951349 b!951346) bm!41486))

(assert (= (or b!951336 bm!41481) bm!41485))

(assert (= (or b!951336 bm!41486) bm!41487))

(assert (= (and d!115265 res!637677) b!951344))

(assert (= (and d!115265 c!99366) b!951341))

(assert (= (and d!115265 (not c!99366)) b!951342))

(assert (= (and d!115265 res!637678) b!951337))

(assert (= (and b!951337 res!637673) b!951345))

(assert (= (and b!951337 (not res!637674)) b!951338))

(assert (= (and b!951338 res!637672) b!951339))

(assert (= (and b!951337 res!637679) b!951330))

(assert (= (and b!951330 c!99370) b!951331))

(assert (= (and b!951330 (not c!99370)) b!951340))

(assert (= (and b!951331 res!637680) b!951333))

(assert (= (or b!951331 b!951340) bm!41483))

(assert (= (and b!951330 res!637675) b!951348))

(assert (= (and b!951348 c!99367) b!951335))

(assert (= (and b!951348 (not c!99367)) b!951332))

(assert (= (and b!951335 res!637676) b!951343))

(assert (= (or b!951335 b!951332) bm!41482))

(declare-fun b_lambda!14421 () Bool)

(assert (=> (not b_lambda!14421) (not b!951339)))

(declare-fun t!27839 () Bool)

(declare-fun tb!6207 () Bool)

(assert (=> (and b!951209 (= (defaultEntry!5802 thiss!1141) (defaultEntry!5802 thiss!1141)) t!27839) tb!6207))

(declare-fun result!12327 () Bool)

(assert (=> tb!6207 (= result!12327 tp_is_empty!20775)))

(assert (=> b!951339 t!27839))

(declare-fun b_and!29757 () Bool)

(assert (= b_and!29753 (and (=> t!27839 result!12327) b_and!29757)))

(assert (=> b!951345 m!883643))

(assert (=> b!951345 m!883643))

(assert (=> b!951345 m!883651))

(assert (=> b!951339 m!883643))

(declare-fun m!883661 () Bool)

(assert (=> b!951339 m!883661))

(assert (=> b!951339 m!883643))

(declare-fun m!883663 () Bool)

(assert (=> b!951339 m!883663))

(declare-fun m!883665 () Bool)

(assert (=> b!951339 m!883665))

(declare-fun m!883667 () Bool)

(assert (=> b!951339 m!883667))

(assert (=> b!951339 m!883665))

(assert (=> b!951339 m!883663))

(declare-fun m!883669 () Bool)

(assert (=> b!951343 m!883669))

(declare-fun m!883671 () Bool)

(assert (=> b!951336 m!883671))

(declare-fun m!883673 () Bool)

(assert (=> b!951333 m!883673))

(declare-fun m!883675 () Bool)

(assert (=> bm!41487 m!883675))

(declare-fun m!883677 () Bool)

(assert (=> bm!41485 m!883677))

(assert (=> d!115265 m!883585))

(declare-fun m!883679 () Bool)

(assert (=> bm!41482 m!883679))

(declare-fun m!883681 () Bool)

(assert (=> bm!41483 m!883681))

(declare-fun m!883683 () Bool)

(assert (=> b!951341 m!883683))

(declare-fun m!883685 () Bool)

(assert (=> b!951341 m!883685))

(declare-fun m!883687 () Bool)

(assert (=> b!951341 m!883687))

(declare-fun m!883689 () Bool)

(assert (=> b!951341 m!883689))

(declare-fun m!883691 () Bool)

(assert (=> b!951341 m!883691))

(declare-fun m!883693 () Bool)

(assert (=> b!951341 m!883693))

(assert (=> b!951341 m!883643))

(declare-fun m!883695 () Bool)

(assert (=> b!951341 m!883695))

(assert (=> b!951341 m!883685))

(declare-fun m!883697 () Bool)

(assert (=> b!951341 m!883697))

(declare-fun m!883699 () Bool)

(assert (=> b!951341 m!883699))

(declare-fun m!883701 () Bool)

(assert (=> b!951341 m!883701))

(assert (=> b!951341 m!883687))

(assert (=> b!951341 m!883699))

(declare-fun m!883703 () Bool)

(assert (=> b!951341 m!883703))

(assert (=> b!951341 m!883677))

(assert (=> b!951341 m!883691))

(declare-fun m!883705 () Bool)

(assert (=> b!951341 m!883705))

(declare-fun m!883707 () Bool)

(assert (=> b!951341 m!883707))

(declare-fun m!883709 () Bool)

(assert (=> b!951341 m!883709))

(declare-fun m!883711 () Bool)

(assert (=> b!951341 m!883711))

(assert (=> b!951338 m!883643))

(assert (=> b!951338 m!883643))

(declare-fun m!883713 () Bool)

(assert (=> b!951338 m!883713))

(assert (=> b!951344 m!883643))

(assert (=> b!951344 m!883643))

(assert (=> b!951344 m!883651))

(assert (=> b!951206 d!115265))

(declare-fun d!115267 () Bool)

(assert (=> d!115267 (= (array_inv!21436 (_keys!10741 thiss!1141)) (bvsge (size!28171 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951209 d!115267))

(declare-fun d!115269 () Bool)

(assert (=> d!115269 (= (array_inv!21437 (_values!5825 thiss!1141)) (bvsge (size!28170 (_values!5825 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951209 d!115269))

(declare-fun d!115271 () Bool)

(assert (=> d!115271 (= (validMask!0 (mask!27615 thiss!1141)) (and (or (= (mask!27615 thiss!1141) #b00000000000000000000000000000111) (= (mask!27615 thiss!1141) #b00000000000000000000000000001111) (= (mask!27615 thiss!1141) #b00000000000000000000000000011111) (= (mask!27615 thiss!1141) #b00000000000000000000000000111111) (= (mask!27615 thiss!1141) #b00000000000000000000000001111111) (= (mask!27615 thiss!1141) #b00000000000000000000000011111111) (= (mask!27615 thiss!1141) #b00000000000000000000000111111111) (= (mask!27615 thiss!1141) #b00000000000000000000001111111111) (= (mask!27615 thiss!1141) #b00000000000000000000011111111111) (= (mask!27615 thiss!1141) #b00000000000000000000111111111111) (= (mask!27615 thiss!1141) #b00000000000000000001111111111111) (= (mask!27615 thiss!1141) #b00000000000000000011111111111111) (= (mask!27615 thiss!1141) #b00000000000000000111111111111111) (= (mask!27615 thiss!1141) #b00000000000000001111111111111111) (= (mask!27615 thiss!1141) #b00000000000000011111111111111111) (= (mask!27615 thiss!1141) #b00000000000000111111111111111111) (= (mask!27615 thiss!1141) #b00000000000001111111111111111111) (= (mask!27615 thiss!1141) #b00000000000011111111111111111111) (= (mask!27615 thiss!1141) #b00000000000111111111111111111111) (= (mask!27615 thiss!1141) #b00000000001111111111111111111111) (= (mask!27615 thiss!1141) #b00000000011111111111111111111111) (= (mask!27615 thiss!1141) #b00000000111111111111111111111111) (= (mask!27615 thiss!1141) #b00000001111111111111111111111111) (= (mask!27615 thiss!1141) #b00000011111111111111111111111111) (= (mask!27615 thiss!1141) #b00000111111111111111111111111111) (= (mask!27615 thiss!1141) #b00001111111111111111111111111111) (= (mask!27615 thiss!1141) #b00011111111111111111111111111111) (= (mask!27615 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27615 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!951205 d!115271))

(declare-fun d!115273 () Bool)

(declare-fun lt!428570 () (_ BitVec 32))

(assert (=> d!115273 (and (or (bvslt lt!428570 #b00000000000000000000000000000000) (bvsge lt!428570 (size!28171 (_keys!10741 thiss!1141))) (and (bvsge lt!428570 #b00000000000000000000000000000000) (bvslt lt!428570 (size!28171 (_keys!10741 thiss!1141))))) (bvsge lt!428570 #b00000000000000000000000000000000) (bvslt lt!428570 (size!28171 (_keys!10741 thiss!1141))) (= (select (arr!27692 (_keys!10741 thiss!1141)) lt!428570) key!756))))

(declare-fun e!535744 () (_ BitVec 32))

(assert (=> d!115273 (= lt!428570 e!535744)))

(declare-fun c!99374 () Bool)

(assert (=> d!115273 (= c!99374 (= (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115273 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28171 (_keys!10741 thiss!1141))) (bvslt (size!28171 (_keys!10741 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115273 (= (arrayScanForKey!0 (_keys!10741 thiss!1141) key!756 #b00000000000000000000000000000000) lt!428570)))

(declare-fun b!951357 () Bool)

(assert (=> b!951357 (= e!535744 #b00000000000000000000000000000000)))

(declare-fun b!951358 () Bool)

(assert (=> b!951358 (= e!535744 (arrayScanForKey!0 (_keys!10741 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115273 c!99374) b!951357))

(assert (= (and d!115273 (not c!99374)) b!951358))

(declare-fun m!883715 () Bool)

(assert (=> d!115273 m!883715))

(assert (=> d!115273 m!883643))

(declare-fun m!883717 () Bool)

(assert (=> b!951358 m!883717))

(assert (=> b!951205 d!115273))

(declare-fun d!115275 () Bool)

(declare-fun res!637685 () Bool)

(declare-fun e!535749 () Bool)

(assert (=> d!115275 (=> res!637685 e!535749)))

(assert (=> d!115275 (= res!637685 (= (select (arr!27692 (_keys!10741 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115275 (= (arrayContainsKey!0 (_keys!10741 thiss!1141) key!756 #b00000000000000000000000000000000) e!535749)))

(declare-fun b!951363 () Bool)

(declare-fun e!535750 () Bool)

(assert (=> b!951363 (= e!535749 e!535750)))

(declare-fun res!637686 () Bool)

(assert (=> b!951363 (=> (not res!637686) (not e!535750))))

(assert (=> b!951363 (= res!637686 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28171 (_keys!10741 thiss!1141))))))

(declare-fun b!951364 () Bool)

(assert (=> b!951364 (= e!535750 (arrayContainsKey!0 (_keys!10741 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115275 (not res!637685)) b!951363))

(assert (= (and b!951363 res!637686) b!951364))

(assert (=> d!115275 m!883643))

(declare-fun m!883719 () Bool)

(assert (=> b!951364 m!883719))

(assert (=> b!951205 d!115275))

(declare-fun d!115277 () Bool)

(declare-fun e!535753 () Bool)

(assert (=> d!115277 e!535753))

(declare-fun c!99377 () Bool)

(assert (=> d!115277 (= c!99377 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!428573 () Unit!32010)

(declare-fun choose!1599 (array!57600 array!57598 (_ BitVec 32) (_ BitVec 32) V!32665 V!32665 (_ BitVec 64) Int) Unit!32010)

(assert (=> d!115277 (= lt!428573 (choose!1599 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) key!756 (defaultEntry!5802 thiss!1141)))))

(assert (=> d!115277 (validMask!0 (mask!27615 thiss!1141))))

(assert (=> d!115277 (= (lemmaKeyInListMapIsInArray!330 (_keys!10741 thiss!1141) (_values!5825 thiss!1141) (mask!27615 thiss!1141) (extraKeys!5534 thiss!1141) (zeroValue!5638 thiss!1141) (minValue!5638 thiss!1141) key!756 (defaultEntry!5802 thiss!1141)) lt!428573)))

(declare-fun b!951369 () Bool)

(assert (=> b!951369 (= e!535753 (arrayContainsKey!0 (_keys!10741 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!951370 () Bool)

(assert (=> b!951370 (= e!535753 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5534 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115277 c!99377) b!951369))

(assert (= (and d!115277 (not c!99377)) b!951370))

(declare-fun m!883721 () Bool)

(assert (=> d!115277 m!883721))

(assert (=> d!115277 m!883585))

(assert (=> b!951369 m!883589))

(assert (=> b!951205 d!115277))

(declare-fun b!951377 () Bool)

(declare-fun e!535759 () Bool)

(assert (=> b!951377 (= e!535759 tp_is_empty!20775)))

(declare-fun condMapEmpty!33093 () Bool)

(declare-fun mapDefault!33093 () ValueCell!9906)

(assert (=> mapNonEmpty!33087 (= condMapEmpty!33093 (= mapRest!33087 ((as const (Array (_ BitVec 32) ValueCell!9906)) mapDefault!33093)))))

(declare-fun e!535758 () Bool)

(declare-fun mapRes!33093 () Bool)

(assert (=> mapNonEmpty!33087 (= tp!63411 (and e!535758 mapRes!33093))))

(declare-fun mapNonEmpty!33093 () Bool)

(declare-fun tp!63420 () Bool)

(assert (=> mapNonEmpty!33093 (= mapRes!33093 (and tp!63420 e!535759))))

(declare-fun mapRest!33093 () (Array (_ BitVec 32) ValueCell!9906))

(declare-fun mapKey!33093 () (_ BitVec 32))

(declare-fun mapValue!33093 () ValueCell!9906)

(assert (=> mapNonEmpty!33093 (= mapRest!33087 (store mapRest!33093 mapKey!33093 mapValue!33093))))

(declare-fun b!951378 () Bool)

(assert (=> b!951378 (= e!535758 tp_is_empty!20775)))

(declare-fun mapIsEmpty!33093 () Bool)

(assert (=> mapIsEmpty!33093 mapRes!33093))

(assert (= (and mapNonEmpty!33087 condMapEmpty!33093) mapIsEmpty!33093))

(assert (= (and mapNonEmpty!33087 (not condMapEmpty!33093)) mapNonEmpty!33093))

(assert (= (and mapNonEmpty!33093 ((_ is ValueCellFull!9906) mapValue!33093)) b!951377))

(assert (= (and mapNonEmpty!33087 ((_ is ValueCellFull!9906) mapDefault!33093)) b!951378))

(declare-fun m!883723 () Bool)

(assert (=> mapNonEmpty!33093 m!883723))

(declare-fun b_lambda!14423 () Bool)

(assert (= b_lambda!14421 (or (and b!951209 b_free!18267) b_lambda!14423)))

(check-sat (not b!951333) (not d!115263) (not b!951285) (not bm!41482) (not d!115259) (not d!115265) (not b!951336) (not bm!41483) (not d!115257) (not b!951265) (not b_next!18267) (not bm!41466) (not b!951364) (not b!951276) (not b!951287) (not b!951341) (not b_lambda!14423) (not b!951339) (not bm!41487) (not b!951277) (not d!115277) (not b!951266) (not b!951338) (not b!951343) (not b!951358) (not b!951369) (not b!951345) (not b!951344) b_and!29757 (not mapNonEmpty!33093) (not bm!41485) (not b!951264) tp_is_empty!20775 (not b!951256))
(check-sat b_and!29757 (not b_next!18267))
