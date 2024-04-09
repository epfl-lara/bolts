; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113744 () Bool)

(assert start!113744)

(declare-fun b_free!31593 () Bool)

(declare-fun b_next!31593 () Bool)

(assert (=> start!113744 (= b_free!31593 (not b_next!31593))))

(declare-fun tp!110598 () Bool)

(declare-fun b_and!51001 () Bool)

(assert (=> start!113744 (= tp!110598 b_and!51001)))

(declare-fun b!1349504 () Bool)

(declare-fun res!895361 () Bool)

(declare-fun e!767700 () Bool)

(assert (=> b!1349504 (=> (not res!895361) (not e!767700))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91977 0))(
  ( (array!91978 (arr!44436 (Array (_ BitVec 32) (_ BitVec 64))) (size!44987 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91977)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55227 0))(
  ( (V!55228 (val!18871 Int)) )
))
(declare-datatypes ((ValueCell!17898 0))(
  ( (ValueCellFull!17898 (v!21525 V!55227)) (EmptyCell!17898) )
))
(declare-datatypes ((array!91979 0))(
  ( (array!91980 (arr!44437 (Array (_ BitVec 32) ValueCell!17898)) (size!44988 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91979)

(assert (=> b!1349504 (= res!895361 (and (= (size!44988 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44987 _keys!1571) (size!44988 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1349505 () Bool)

(declare-fun res!895363 () Bool)

(assert (=> b!1349505 (=> (not res!895363) (not e!767700))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1349505 (= res!895363 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44987 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1349506 () Bool)

(declare-fun res!895368 () Bool)

(assert (=> b!1349506 (=> (not res!895368) (not e!767700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91977 (_ BitVec 32)) Bool)

(assert (=> b!1349506 (= res!895368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1349507 () Bool)

(declare-fun res!895366 () Bool)

(assert (=> b!1349507 (=> (not res!895366) (not e!767700))))

(assert (=> b!1349507 (= res!895366 (not (= (select (arr!44436 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1349508 () Bool)

(declare-fun res!895364 () Bool)

(assert (=> b!1349508 (=> (not res!895364) (not e!767700))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1349508 (= res!895364 (not (validKeyInArray!0 (select (arr!44436 _keys!1571) from!1960))))))

(declare-fun b!1349509 () Bool)

(declare-fun res!895365 () Bool)

(assert (=> b!1349509 (=> (not res!895365) (not e!767700))))

(declare-datatypes ((List!31643 0))(
  ( (Nil!31640) (Cons!31639 (h!32848 (_ BitVec 64)) (t!46306 List!31643)) )
))
(declare-fun arrayNoDuplicates!0 (array!91977 (_ BitVec 32) List!31643) Bool)

(assert (=> b!1349509 (= res!895365 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31640))))

(declare-fun b!1349510 () Bool)

(declare-fun e!767698 () Bool)

(declare-fun e!767699 () Bool)

(declare-fun mapRes!58110 () Bool)

(assert (=> b!1349510 (= e!767698 (and e!767699 mapRes!58110))))

(declare-fun condMapEmpty!58110 () Bool)

(declare-fun mapDefault!58110 () ValueCell!17898)

(assert (=> b!1349510 (= condMapEmpty!58110 (= (arr!44437 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17898)) mapDefault!58110)))))

(declare-fun b!1349511 () Bool)

(declare-fun res!895362 () Bool)

(assert (=> b!1349511 (=> (not res!895362) (not e!767700))))

(declare-fun minValue!1245 () V!55227)

(declare-fun zeroValue!1245 () V!55227)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24476 0))(
  ( (tuple2!24477 (_1!12248 (_ BitVec 64)) (_2!12248 V!55227)) )
))
(declare-datatypes ((List!31644 0))(
  ( (Nil!31641) (Cons!31640 (h!32849 tuple2!24476) (t!46307 List!31644)) )
))
(declare-datatypes ((ListLongMap!22145 0))(
  ( (ListLongMap!22146 (toList!11088 List!31644)) )
))
(declare-fun contains!9207 (ListLongMap!22145 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5977 (array!91977 array!91979 (_ BitVec 32) (_ BitVec 32) V!55227 V!55227 (_ BitVec 32) Int) ListLongMap!22145)

(assert (=> b!1349511 (= res!895362 (contains!9207 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!58110 () Bool)

(declare-fun tp!110599 () Bool)

(declare-fun e!767701 () Bool)

(assert (=> mapNonEmpty!58110 (= mapRes!58110 (and tp!110599 e!767701))))

(declare-fun mapKey!58110 () (_ BitVec 32))

(declare-fun mapValue!58110 () ValueCell!17898)

(declare-fun mapRest!58110 () (Array (_ BitVec 32) ValueCell!17898))

(assert (=> mapNonEmpty!58110 (= (arr!44437 _values!1303) (store mapRest!58110 mapKey!58110 mapValue!58110))))

(declare-fun b!1349512 () Bool)

(declare-fun tp_is_empty!37593 () Bool)

(assert (=> b!1349512 (= e!767699 tp_is_empty!37593)))

(declare-fun res!895367 () Bool)

(assert (=> start!113744 (=> (not res!895367) (not e!767700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113744 (= res!895367 (validMask!0 mask!1977))))

(assert (=> start!113744 e!767700))

(assert (=> start!113744 tp_is_empty!37593))

(assert (=> start!113744 true))

(declare-fun array_inv!33381 (array!91977) Bool)

(assert (=> start!113744 (array_inv!33381 _keys!1571)))

(declare-fun array_inv!33382 (array!91979) Bool)

(assert (=> start!113744 (and (array_inv!33382 _values!1303) e!767698)))

(assert (=> start!113744 tp!110598))

(declare-fun b!1349513 () Bool)

(assert (=> b!1349513 (= e!767701 tp_is_empty!37593)))

(declare-fun mapIsEmpty!58110 () Bool)

(assert (=> mapIsEmpty!58110 mapRes!58110))

(declare-fun b!1349514 () Bool)

(assert (=> b!1349514 (= e!767700 (not (contains!9207 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k0!1142)))))

(assert (= (and start!113744 res!895367) b!1349504))

(assert (= (and b!1349504 res!895361) b!1349506))

(assert (= (and b!1349506 res!895368) b!1349509))

(assert (= (and b!1349509 res!895365) b!1349505))

(assert (= (and b!1349505 res!895363) b!1349511))

(assert (= (and b!1349511 res!895362) b!1349507))

(assert (= (and b!1349507 res!895366) b!1349508))

(assert (= (and b!1349508 res!895364) b!1349514))

(assert (= (and b!1349510 condMapEmpty!58110) mapIsEmpty!58110))

(assert (= (and b!1349510 (not condMapEmpty!58110)) mapNonEmpty!58110))

(get-info :version)

(assert (= (and mapNonEmpty!58110 ((_ is ValueCellFull!17898) mapValue!58110)) b!1349513))

(assert (= (and b!1349510 ((_ is ValueCellFull!17898) mapDefault!58110)) b!1349512))

(assert (= start!113744 b!1349510))

(declare-fun m!1236635 () Bool)

(assert (=> b!1349506 m!1236635))

(declare-fun m!1236637 () Bool)

(assert (=> b!1349509 m!1236637))

(declare-fun m!1236639 () Bool)

(assert (=> b!1349508 m!1236639))

(assert (=> b!1349508 m!1236639))

(declare-fun m!1236641 () Bool)

(assert (=> b!1349508 m!1236641))

(declare-fun m!1236643 () Bool)

(assert (=> start!113744 m!1236643))

(declare-fun m!1236645 () Bool)

(assert (=> start!113744 m!1236645))

(declare-fun m!1236647 () Bool)

(assert (=> start!113744 m!1236647))

(declare-fun m!1236649 () Bool)

(assert (=> b!1349514 m!1236649))

(assert (=> b!1349514 m!1236649))

(declare-fun m!1236651 () Bool)

(assert (=> b!1349514 m!1236651))

(assert (=> b!1349507 m!1236639))

(declare-fun m!1236653 () Bool)

(assert (=> b!1349511 m!1236653))

(assert (=> b!1349511 m!1236653))

(declare-fun m!1236655 () Bool)

(assert (=> b!1349511 m!1236655))

(declare-fun m!1236657 () Bool)

(assert (=> mapNonEmpty!58110 m!1236657))

(check-sat (not b!1349508) b_and!51001 (not b!1349509) (not mapNonEmpty!58110) (not b!1349511) (not start!113744) (not b!1349506) (not b_next!31593) (not b!1349514) tp_is_empty!37593)
(check-sat b_and!51001 (not b_next!31593))
(get-model)

(declare-fun b!1349558 () Bool)

(declare-fun e!767728 () Bool)

(declare-fun e!767726 () Bool)

(assert (=> b!1349558 (= e!767728 e!767726)))

(declare-fun res!895401 () Bool)

(assert (=> b!1349558 (=> (not res!895401) (not e!767726))))

(declare-fun e!767727 () Bool)

(assert (=> b!1349558 (= res!895401 (not e!767727))))

(declare-fun res!895399 () Bool)

(assert (=> b!1349558 (=> (not res!895399) (not e!767727))))

(assert (=> b!1349558 (= res!895399 (validKeyInArray!0 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1349559 () Bool)

(declare-fun contains!9209 (List!31643 (_ BitVec 64)) Bool)

(assert (=> b!1349559 (= e!767727 (contains!9209 Nil!31640 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun d!144607 () Bool)

(declare-fun res!895400 () Bool)

(assert (=> d!144607 (=> res!895400 e!767728)))

(assert (=> d!144607 (= res!895400 (bvsge #b00000000000000000000000000000000 (size!44987 _keys!1571)))))

(assert (=> d!144607 (= (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31640) e!767728)))

(declare-fun b!1349560 () Bool)

(declare-fun e!767725 () Bool)

(assert (=> b!1349560 (= e!767726 e!767725)))

(declare-fun c!126547 () Bool)

(assert (=> b!1349560 (= c!126547 (validKeyInArray!0 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun bm!65196 () Bool)

(declare-fun call!65199 () Bool)

(assert (=> bm!65196 (= call!65199 (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126547 (Cons!31639 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) Nil!31640) Nil!31640)))))

(declare-fun b!1349561 () Bool)

(assert (=> b!1349561 (= e!767725 call!65199)))

(declare-fun b!1349562 () Bool)

(assert (=> b!1349562 (= e!767725 call!65199)))

(assert (= (and d!144607 (not res!895400)) b!1349558))

(assert (= (and b!1349558 res!895399) b!1349559))

(assert (= (and b!1349558 res!895401) b!1349560))

(assert (= (and b!1349560 c!126547) b!1349562))

(assert (= (and b!1349560 (not c!126547)) b!1349561))

(assert (= (or b!1349562 b!1349561) bm!65196))

(declare-fun m!1236683 () Bool)

(assert (=> b!1349558 m!1236683))

(assert (=> b!1349558 m!1236683))

(declare-fun m!1236685 () Bool)

(assert (=> b!1349558 m!1236685))

(assert (=> b!1349559 m!1236683))

(assert (=> b!1349559 m!1236683))

(declare-fun m!1236687 () Bool)

(assert (=> b!1349559 m!1236687))

(assert (=> b!1349560 m!1236683))

(assert (=> b!1349560 m!1236683))

(assert (=> b!1349560 m!1236685))

(assert (=> bm!65196 m!1236683))

(declare-fun m!1236689 () Bool)

(assert (=> bm!65196 m!1236689))

(assert (=> b!1349509 d!144607))

(declare-fun d!144609 () Bool)

(assert (=> d!144609 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!113744 d!144609))

(declare-fun d!144611 () Bool)

(assert (=> d!144611 (= (array_inv!33381 _keys!1571) (bvsge (size!44987 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!113744 d!144611))

(declare-fun d!144613 () Bool)

(assert (=> d!144613 (= (array_inv!33382 _values!1303) (bvsge (size!44988 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!113744 d!144613))

(declare-fun d!144615 () Bool)

(assert (=> d!144615 (= (validKeyInArray!0 (select (arr!44436 _keys!1571) from!1960)) (and (not (= (select (arr!44436 _keys!1571) from!1960) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44436 _keys!1571) from!1960) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1349508 d!144615))

(declare-fun b!1349571 () Bool)

(declare-fun e!767736 () Bool)

(declare-fun e!767735 () Bool)

(assert (=> b!1349571 (= e!767736 e!767735)))

(declare-fun lt!596550 () (_ BitVec 64))

(assert (=> b!1349571 (= lt!596550 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!44151 0))(
  ( (Unit!44152) )
))
(declare-fun lt!596549 () Unit!44151)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!91977 (_ BitVec 64) (_ BitVec 32)) Unit!44151)

(assert (=> b!1349571 (= lt!596549 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!596550 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!91977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1349571 (arrayContainsKey!0 _keys!1571 lt!596550 #b00000000000000000000000000000000)))

(declare-fun lt!596548 () Unit!44151)

(assert (=> b!1349571 (= lt!596548 lt!596549)))

(declare-fun res!895406 () Bool)

(declare-datatypes ((SeekEntryResult!10057 0))(
  ( (MissingZero!10057 (index!42598 (_ BitVec 32))) (Found!10057 (index!42599 (_ BitVec 32))) (Intermediate!10057 (undefined!10869 Bool) (index!42600 (_ BitVec 32)) (x!120771 (_ BitVec 32))) (Undefined!10057) (MissingVacant!10057 (index!42601 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!91977 (_ BitVec 32)) SeekEntryResult!10057)

(assert (=> b!1349571 (= res!895406 (= (seekEntryOrOpen!0 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10057 #b00000000000000000000000000000000)))))

(assert (=> b!1349571 (=> (not res!895406) (not e!767735))))

(declare-fun d!144617 () Bool)

(declare-fun res!895407 () Bool)

(declare-fun e!767737 () Bool)

(assert (=> d!144617 (=> res!895407 e!767737)))

(assert (=> d!144617 (= res!895407 (bvsge #b00000000000000000000000000000000 (size!44987 _keys!1571)))))

(assert (=> d!144617 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!767737)))

(declare-fun bm!65199 () Bool)

(declare-fun call!65202 () Bool)

(assert (=> bm!65199 (= call!65202 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun b!1349572 () Bool)

(assert (=> b!1349572 (= e!767735 call!65202)))

(declare-fun b!1349573 () Bool)

(assert (=> b!1349573 (= e!767737 e!767736)))

(declare-fun c!126550 () Bool)

(assert (=> b!1349573 (= c!126550 (validKeyInArray!0 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1349574 () Bool)

(assert (=> b!1349574 (= e!767736 call!65202)))

(assert (= (and d!144617 (not res!895407)) b!1349573))

(assert (= (and b!1349573 c!126550) b!1349571))

(assert (= (and b!1349573 (not c!126550)) b!1349574))

(assert (= (and b!1349571 res!895406) b!1349572))

(assert (= (or b!1349572 b!1349574) bm!65199))

(assert (=> b!1349571 m!1236683))

(declare-fun m!1236691 () Bool)

(assert (=> b!1349571 m!1236691))

(declare-fun m!1236693 () Bool)

(assert (=> b!1349571 m!1236693))

(assert (=> b!1349571 m!1236683))

(declare-fun m!1236695 () Bool)

(assert (=> b!1349571 m!1236695))

(declare-fun m!1236697 () Bool)

(assert (=> bm!65199 m!1236697))

(assert (=> b!1349573 m!1236683))

(assert (=> b!1349573 m!1236683))

(assert (=> b!1349573 m!1236685))

(assert (=> b!1349506 d!144617))

(declare-fun d!144619 () Bool)

(declare-fun e!767743 () Bool)

(assert (=> d!144619 e!767743))

(declare-fun res!895410 () Bool)

(assert (=> d!144619 (=> res!895410 e!767743)))

(declare-fun lt!596562 () Bool)

(assert (=> d!144619 (= res!895410 (not lt!596562))))

(declare-fun lt!596560 () Bool)

(assert (=> d!144619 (= lt!596562 lt!596560)))

(declare-fun lt!596559 () Unit!44151)

(declare-fun e!767742 () Unit!44151)

(assert (=> d!144619 (= lt!596559 e!767742)))

(declare-fun c!126553 () Bool)

(assert (=> d!144619 (= c!126553 lt!596560)))

(declare-fun containsKey!744 (List!31644 (_ BitVec 64)) Bool)

(assert (=> d!144619 (= lt!596560 (containsKey!744 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(assert (=> d!144619 (= (contains!9207 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k0!1142) lt!596562)))

(declare-fun b!1349581 () Bool)

(declare-fun lt!596561 () Unit!44151)

(assert (=> b!1349581 (= e!767742 lt!596561)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!489 (List!31644 (_ BitVec 64)) Unit!44151)

(assert (=> b!1349581 (= lt!596561 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(declare-datatypes ((Option!777 0))(
  ( (Some!776 (v!21527 V!55227)) (None!775) )
))
(declare-fun isDefined!529 (Option!777) Bool)

(declare-fun getValueByKey!726 (List!31644 (_ BitVec 64)) Option!777)

(assert (=> b!1349581 (isDefined!529 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(declare-fun b!1349582 () Bool)

(declare-fun Unit!44153 () Unit!44151)

(assert (=> b!1349582 (= e!767742 Unit!44153)))

(declare-fun b!1349583 () Bool)

(assert (=> b!1349583 (= e!767743 (isDefined!529 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142)))))

(assert (= (and d!144619 c!126553) b!1349581))

(assert (= (and d!144619 (not c!126553)) b!1349582))

(assert (= (and d!144619 (not res!895410)) b!1349583))

(declare-fun m!1236699 () Bool)

(assert (=> d!144619 m!1236699))

(declare-fun m!1236701 () Bool)

(assert (=> b!1349581 m!1236701))

(declare-fun m!1236703 () Bool)

(assert (=> b!1349581 m!1236703))

(assert (=> b!1349581 m!1236703))

(declare-fun m!1236705 () Bool)

(assert (=> b!1349581 m!1236705))

(assert (=> b!1349583 m!1236703))

(assert (=> b!1349583 m!1236703))

(assert (=> b!1349583 m!1236705))

(assert (=> b!1349514 d!144619))

(declare-fun b!1349626 () Bool)

(declare-fun res!895429 () Bool)

(declare-fun e!767770 () Bool)

(assert (=> b!1349626 (=> (not res!895429) (not e!767770))))

(declare-fun e!767774 () Bool)

(assert (=> b!1349626 (= res!895429 e!767774)))

(declare-fun c!126566 () Bool)

(assert (=> b!1349626 (= c!126566 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1349627 () Bool)

(declare-fun e!767780 () Unit!44151)

(declare-fun lt!596608 () Unit!44151)

(assert (=> b!1349627 (= e!767780 lt!596608)))

(declare-fun lt!596613 () ListLongMap!22145)

(declare-fun getCurrentListMapNoExtraKeys!6557 (array!91977 array!91979 (_ BitVec 32) (_ BitVec 32) V!55227 V!55227 (_ BitVec 32) Int) ListLongMap!22145)

(assert (=> b!1349627 (= lt!596613 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596625 () (_ BitVec 64))

(assert (=> b!1349627 (= lt!596625 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596611 () (_ BitVec 64))

(assert (=> b!1349627 (= lt!596611 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596624 () Unit!44151)

(declare-fun addStillContains!1221 (ListLongMap!22145 (_ BitVec 64) V!55227 (_ BitVec 64)) Unit!44151)

(assert (=> b!1349627 (= lt!596624 (addStillContains!1221 lt!596613 lt!596625 zeroValue!1245 lt!596611))))

(declare-fun +!4830 (ListLongMap!22145 tuple2!24476) ListLongMap!22145)

(assert (=> b!1349627 (contains!9207 (+!4830 lt!596613 (tuple2!24477 lt!596625 zeroValue!1245)) lt!596611)))

(declare-fun lt!596607 () Unit!44151)

(assert (=> b!1349627 (= lt!596607 lt!596624)))

(declare-fun lt!596627 () ListLongMap!22145)

(assert (=> b!1349627 (= lt!596627 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596617 () (_ BitVec 64))

(assert (=> b!1349627 (= lt!596617 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596628 () (_ BitVec 64))

(assert (=> b!1349627 (= lt!596628 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596619 () Unit!44151)

(declare-fun addApplyDifferent!579 (ListLongMap!22145 (_ BitVec 64) V!55227 (_ BitVec 64)) Unit!44151)

(assert (=> b!1349627 (= lt!596619 (addApplyDifferent!579 lt!596627 lt!596617 minValue!1245 lt!596628))))

(declare-fun apply!1076 (ListLongMap!22145 (_ BitVec 64)) V!55227)

(assert (=> b!1349627 (= (apply!1076 (+!4830 lt!596627 (tuple2!24477 lt!596617 minValue!1245)) lt!596628) (apply!1076 lt!596627 lt!596628))))

(declare-fun lt!596615 () Unit!44151)

(assert (=> b!1349627 (= lt!596615 lt!596619)))

(declare-fun lt!596618 () ListLongMap!22145)

(assert (=> b!1349627 (= lt!596618 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596616 () (_ BitVec 64))

(assert (=> b!1349627 (= lt!596616 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596609 () (_ BitVec 64))

(assert (=> b!1349627 (= lt!596609 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596614 () Unit!44151)

(assert (=> b!1349627 (= lt!596614 (addApplyDifferent!579 lt!596618 lt!596616 zeroValue!1245 lt!596609))))

(assert (=> b!1349627 (= (apply!1076 (+!4830 lt!596618 (tuple2!24477 lt!596616 zeroValue!1245)) lt!596609) (apply!1076 lt!596618 lt!596609))))

(declare-fun lt!596626 () Unit!44151)

(assert (=> b!1349627 (= lt!596626 lt!596614)))

(declare-fun lt!596610 () ListLongMap!22145)

(assert (=> b!1349627 (= lt!596610 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596621 () (_ BitVec 64))

(assert (=> b!1349627 (= lt!596621 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596622 () (_ BitVec 64))

(assert (=> b!1349627 (= lt!596622 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(assert (=> b!1349627 (= lt!596608 (addApplyDifferent!579 lt!596610 lt!596621 minValue!1245 lt!596622))))

(assert (=> b!1349627 (= (apply!1076 (+!4830 lt!596610 (tuple2!24477 lt!596621 minValue!1245)) lt!596622) (apply!1076 lt!596610 lt!596622))))

(declare-fun b!1349628 () Bool)

(declare-fun e!767776 () Bool)

(declare-fun lt!596620 () ListLongMap!22145)

(assert (=> b!1349628 (= e!767776 (= (apply!1076 lt!596620 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1245))))

(declare-fun e!767775 () Bool)

(declare-fun b!1349629 () Bool)

(declare-fun get!22499 (ValueCell!17898 V!55227) V!55227)

(declare-fun dynLambda!3867 (Int (_ BitVec 64)) V!55227)

(assert (=> b!1349629 (= e!767775 (= (apply!1076 lt!596620 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22499 (select (arr!44437 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1349629 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44988 _values!1303)))))

(assert (=> b!1349629 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(declare-fun b!1349630 () Bool)

(declare-fun e!767778 () Bool)

(assert (=> b!1349630 (= e!767778 (validKeyInArray!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1349631 () Bool)

(declare-fun e!767777 () Bool)

(declare-fun call!65221 () Bool)

(assert (=> b!1349631 (= e!767777 (not call!65221))))

(declare-fun b!1349632 () Bool)

(declare-fun e!767782 () ListLongMap!22145)

(declare-fun call!65218 () ListLongMap!22145)

(assert (=> b!1349632 (= e!767782 (+!4830 call!65218 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(declare-fun b!1349633 () Bool)

(declare-fun res!895436 () Bool)

(assert (=> b!1349633 (=> (not res!895436) (not e!767770))))

(declare-fun e!767773 () Bool)

(assert (=> b!1349633 (= res!895436 e!767773)))

(declare-fun res!895437 () Bool)

(assert (=> b!1349633 (=> res!895437 e!767773)))

(declare-fun e!767779 () Bool)

(assert (=> b!1349633 (= res!895437 (not e!767779))))

(declare-fun res!895431 () Bool)

(assert (=> b!1349633 (=> (not res!895431) (not e!767779))))

(assert (=> b!1349633 (= res!895431 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(declare-fun b!1349634 () Bool)

(declare-fun call!65223 () Bool)

(assert (=> b!1349634 (= e!767774 (not call!65223))))

(declare-fun b!1349635 () Bool)

(declare-fun e!767781 () Bool)

(assert (=> b!1349635 (= e!767777 e!767781)))

(declare-fun res!895435 () Bool)

(assert (=> b!1349635 (= res!895435 call!65221)))

(assert (=> b!1349635 (=> (not res!895435) (not e!767781))))

(declare-fun bm!65214 () Bool)

(declare-fun call!65219 () ListLongMap!22145)

(assert (=> bm!65214 (= call!65219 call!65218)))

(declare-fun b!1349636 () Bool)

(assert (=> b!1349636 (= e!767773 e!767775)))

(declare-fun res!895432 () Bool)

(assert (=> b!1349636 (=> (not res!895432) (not e!767775))))

(assert (=> b!1349636 (= res!895432 (contains!9207 lt!596620 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1349636 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(declare-fun bm!65215 () Bool)

(declare-fun call!65222 () ListLongMap!22145)

(declare-fun call!65217 () ListLongMap!22145)

(assert (=> bm!65215 (= call!65222 call!65217)))

(declare-fun b!1349637 () Bool)

(assert (=> b!1349637 (= e!767781 (= (apply!1076 lt!596620 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1245))))

(declare-fun b!1349638 () Bool)

(declare-fun e!767772 () ListLongMap!22145)

(assert (=> b!1349638 (= e!767772 call!65222)))

(declare-fun b!1349639 () Bool)

(declare-fun Unit!44154 () Unit!44151)

(assert (=> b!1349639 (= e!767780 Unit!44154)))

(declare-fun c!126571 () Bool)

(declare-fun bm!65216 () Bool)

(declare-fun call!65220 () ListLongMap!22145)

(declare-fun c!126569 () Bool)

(assert (=> bm!65216 (= call!65218 (+!4830 (ite c!126571 call!65220 (ite c!126569 call!65217 call!65222)) (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun b!1349641 () Bool)

(assert (=> b!1349641 (= e!767770 e!767777)))

(declare-fun c!126567 () Bool)

(assert (=> b!1349641 (= c!126567 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1349642 () Bool)

(assert (=> b!1349642 (= e!767772 call!65219)))

(declare-fun b!1349640 () Bool)

(assert (=> b!1349640 (= e!767779 (validKeyInArray!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun d!144621 () Bool)

(assert (=> d!144621 e!767770))

(declare-fun res!895433 () Bool)

(assert (=> d!144621 (=> (not res!895433) (not e!767770))))

(assert (=> d!144621 (= res!895433 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))))

(declare-fun lt!596612 () ListLongMap!22145)

(assert (=> d!144621 (= lt!596620 lt!596612)))

(declare-fun lt!596623 () Unit!44151)

(assert (=> d!144621 (= lt!596623 e!767780)))

(declare-fun c!126568 () Bool)

(assert (=> d!144621 (= c!126568 e!767778)))

(declare-fun res!895430 () Bool)

(assert (=> d!144621 (=> (not res!895430) (not e!767778))))

(assert (=> d!144621 (= res!895430 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(assert (=> d!144621 (= lt!596612 e!767782)))

(assert (=> d!144621 (= c!126571 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!144621 (validMask!0 mask!1977)))

(assert (=> d!144621 (= (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) lt!596620)))

(declare-fun b!1349643 () Bool)

(declare-fun e!767771 () ListLongMap!22145)

(assert (=> b!1349643 (= e!767782 e!767771)))

(assert (=> b!1349643 (= c!126569 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!65217 () Bool)

(assert (=> bm!65217 (= call!65223 (contains!9207 lt!596620 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349644 () Bool)

(declare-fun c!126570 () Bool)

(assert (=> b!1349644 (= c!126570 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1349644 (= e!767771 e!767772)))

(declare-fun bm!65218 () Bool)

(assert (=> bm!65218 (= call!65221 (contains!9207 lt!596620 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349645 () Bool)

(assert (=> b!1349645 (= e!767774 e!767776)))

(declare-fun res!895434 () Bool)

(assert (=> b!1349645 (= res!895434 call!65223)))

(assert (=> b!1349645 (=> (not res!895434) (not e!767776))))

(declare-fun b!1349646 () Bool)

(assert (=> b!1349646 (= e!767771 call!65219)))

(declare-fun bm!65219 () Bool)

(assert (=> bm!65219 (= call!65217 call!65220)))

(declare-fun bm!65220 () Bool)

(assert (=> bm!65220 (= call!65220 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(assert (= (and d!144621 c!126571) b!1349632))

(assert (= (and d!144621 (not c!126571)) b!1349643))

(assert (= (and b!1349643 c!126569) b!1349646))

(assert (= (and b!1349643 (not c!126569)) b!1349644))

(assert (= (and b!1349644 c!126570) b!1349642))

(assert (= (and b!1349644 (not c!126570)) b!1349638))

(assert (= (or b!1349642 b!1349638) bm!65215))

(assert (= (or b!1349646 bm!65215) bm!65219))

(assert (= (or b!1349646 b!1349642) bm!65214))

(assert (= (or b!1349632 bm!65219) bm!65220))

(assert (= (or b!1349632 bm!65214) bm!65216))

(assert (= (and d!144621 res!895430) b!1349630))

(assert (= (and d!144621 c!126568) b!1349627))

(assert (= (and d!144621 (not c!126568)) b!1349639))

(assert (= (and d!144621 res!895433) b!1349633))

(assert (= (and b!1349633 res!895431) b!1349640))

(assert (= (and b!1349633 (not res!895437)) b!1349636))

(assert (= (and b!1349636 res!895432) b!1349629))

(assert (= (and b!1349633 res!895436) b!1349626))

(assert (= (and b!1349626 c!126566) b!1349645))

(assert (= (and b!1349626 (not c!126566)) b!1349634))

(assert (= (and b!1349645 res!895434) b!1349628))

(assert (= (or b!1349645 b!1349634) bm!65217))

(assert (= (and b!1349626 res!895429) b!1349641))

(assert (= (and b!1349641 c!126567) b!1349635))

(assert (= (and b!1349641 (not c!126567)) b!1349631))

(assert (= (and b!1349635 res!895435) b!1349637))

(assert (= (or b!1349635 b!1349631) bm!65218))

(declare-fun b_lambda!24729 () Bool)

(assert (=> (not b_lambda!24729) (not b!1349629)))

(declare-fun t!46310 () Bool)

(declare-fun tb!12469 () Bool)

(assert (=> (and start!113744 (= defaultEntry!1306 defaultEntry!1306) t!46310) tb!12469))

(declare-fun result!26029 () Bool)

(assert (=> tb!12469 (= result!26029 tp_is_empty!37593)))

(assert (=> b!1349629 t!46310))

(declare-fun b_and!51005 () Bool)

(assert (= b_and!51001 (and (=> t!46310 result!26029) b_and!51005)))

(declare-fun m!1236707 () Bool)

(assert (=> b!1349640 m!1236707))

(assert (=> b!1349640 m!1236707))

(declare-fun m!1236709 () Bool)

(assert (=> b!1349640 m!1236709))

(declare-fun m!1236711 () Bool)

(assert (=> bm!65216 m!1236711))

(declare-fun m!1236713 () Bool)

(assert (=> b!1349637 m!1236713))

(assert (=> b!1349636 m!1236707))

(assert (=> b!1349636 m!1236707))

(declare-fun m!1236715 () Bool)

(assert (=> b!1349636 m!1236715))

(declare-fun m!1236717 () Bool)

(assert (=> b!1349629 m!1236717))

(assert (=> b!1349629 m!1236707))

(declare-fun m!1236719 () Bool)

(assert (=> b!1349629 m!1236719))

(assert (=> b!1349629 m!1236707))

(declare-fun m!1236721 () Bool)

(assert (=> b!1349629 m!1236721))

(assert (=> b!1349629 m!1236717))

(declare-fun m!1236723 () Bool)

(assert (=> b!1349629 m!1236723))

(assert (=> b!1349629 m!1236721))

(declare-fun m!1236725 () Bool)

(assert (=> bm!65218 m!1236725))

(declare-fun m!1236727 () Bool)

(assert (=> b!1349632 m!1236727))

(declare-fun m!1236729 () Bool)

(assert (=> bm!65217 m!1236729))

(assert (=> b!1349630 m!1236707))

(assert (=> b!1349630 m!1236707))

(assert (=> b!1349630 m!1236709))

(declare-fun m!1236731 () Bool)

(assert (=> bm!65220 m!1236731))

(assert (=> d!144621 m!1236643))

(declare-fun m!1236733 () Bool)

(assert (=> b!1349628 m!1236733))

(declare-fun m!1236735 () Bool)

(assert (=> b!1349627 m!1236735))

(declare-fun m!1236737 () Bool)

(assert (=> b!1349627 m!1236737))

(declare-fun m!1236739 () Bool)

(assert (=> b!1349627 m!1236739))

(declare-fun m!1236741 () Bool)

(assert (=> b!1349627 m!1236741))

(assert (=> b!1349627 m!1236731))

(declare-fun m!1236743 () Bool)

(assert (=> b!1349627 m!1236743))

(declare-fun m!1236745 () Bool)

(assert (=> b!1349627 m!1236745))

(declare-fun m!1236747 () Bool)

(assert (=> b!1349627 m!1236747))

(declare-fun m!1236749 () Bool)

(assert (=> b!1349627 m!1236749))

(declare-fun m!1236751 () Bool)

(assert (=> b!1349627 m!1236751))

(assert (=> b!1349627 m!1236739))

(assert (=> b!1349627 m!1236743))

(declare-fun m!1236753 () Bool)

(assert (=> b!1349627 m!1236753))

(assert (=> b!1349627 m!1236707))

(declare-fun m!1236755 () Bool)

(assert (=> b!1349627 m!1236755))

(declare-fun m!1236757 () Bool)

(assert (=> b!1349627 m!1236757))

(assert (=> b!1349627 m!1236747))

(assert (=> b!1349627 m!1236737))

(declare-fun m!1236759 () Bool)

(assert (=> b!1349627 m!1236759))

(declare-fun m!1236761 () Bool)

(assert (=> b!1349627 m!1236761))

(declare-fun m!1236763 () Bool)

(assert (=> b!1349627 m!1236763))

(assert (=> b!1349514 d!144621))

(declare-fun d!144623 () Bool)

(declare-fun e!767784 () Bool)

(assert (=> d!144623 e!767784))

(declare-fun res!895438 () Bool)

(assert (=> d!144623 (=> res!895438 e!767784)))

(declare-fun lt!596632 () Bool)

(assert (=> d!144623 (= res!895438 (not lt!596632))))

(declare-fun lt!596630 () Bool)

(assert (=> d!144623 (= lt!596632 lt!596630)))

(declare-fun lt!596629 () Unit!44151)

(declare-fun e!767783 () Unit!44151)

(assert (=> d!144623 (= lt!596629 e!767783)))

(declare-fun c!126572 () Bool)

(assert (=> d!144623 (= c!126572 lt!596630)))

(assert (=> d!144623 (= lt!596630 (containsKey!744 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> d!144623 (= (contains!9207 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142) lt!596632)))

(declare-fun b!1349649 () Bool)

(declare-fun lt!596631 () Unit!44151)

(assert (=> b!1349649 (= e!767783 lt!596631)))

(assert (=> b!1349649 (= lt!596631 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> b!1349649 (isDefined!529 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun b!1349650 () Bool)

(declare-fun Unit!44155 () Unit!44151)

(assert (=> b!1349650 (= e!767783 Unit!44155)))

(declare-fun b!1349651 () Bool)

(assert (=> b!1349651 (= e!767784 (isDefined!529 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142)))))

(assert (= (and d!144623 c!126572) b!1349649))

(assert (= (and d!144623 (not c!126572)) b!1349650))

(assert (= (and d!144623 (not res!895438)) b!1349651))

(declare-fun m!1236765 () Bool)

(assert (=> d!144623 m!1236765))

(declare-fun m!1236767 () Bool)

(assert (=> b!1349649 m!1236767))

(declare-fun m!1236769 () Bool)

(assert (=> b!1349649 m!1236769))

(assert (=> b!1349649 m!1236769))

(declare-fun m!1236771 () Bool)

(assert (=> b!1349649 m!1236771))

(assert (=> b!1349651 m!1236769))

(assert (=> b!1349651 m!1236769))

(assert (=> b!1349651 m!1236771))

(assert (=> b!1349511 d!144623))

(declare-fun b!1349652 () Bool)

(declare-fun res!895439 () Bool)

(declare-fun e!767785 () Bool)

(assert (=> b!1349652 (=> (not res!895439) (not e!767785))))

(declare-fun e!767789 () Bool)

(assert (=> b!1349652 (= res!895439 e!767789)))

(declare-fun c!126573 () Bool)

(assert (=> b!1349652 (= c!126573 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1349653 () Bool)

(declare-fun e!767795 () Unit!44151)

(declare-fun lt!596634 () Unit!44151)

(assert (=> b!1349653 (= e!767795 lt!596634)))

(declare-fun lt!596639 () ListLongMap!22145)

(assert (=> b!1349653 (= lt!596639 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596651 () (_ BitVec 64))

(assert (=> b!1349653 (= lt!596651 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596637 () (_ BitVec 64))

(assert (=> b!1349653 (= lt!596637 (select (arr!44436 _keys!1571) from!1960))))

(declare-fun lt!596650 () Unit!44151)

(assert (=> b!1349653 (= lt!596650 (addStillContains!1221 lt!596639 lt!596651 zeroValue!1245 lt!596637))))

(assert (=> b!1349653 (contains!9207 (+!4830 lt!596639 (tuple2!24477 lt!596651 zeroValue!1245)) lt!596637)))

(declare-fun lt!596633 () Unit!44151)

(assert (=> b!1349653 (= lt!596633 lt!596650)))

(declare-fun lt!596653 () ListLongMap!22145)

(assert (=> b!1349653 (= lt!596653 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596643 () (_ BitVec 64))

(assert (=> b!1349653 (= lt!596643 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596654 () (_ BitVec 64))

(assert (=> b!1349653 (= lt!596654 (select (arr!44436 _keys!1571) from!1960))))

(declare-fun lt!596645 () Unit!44151)

(assert (=> b!1349653 (= lt!596645 (addApplyDifferent!579 lt!596653 lt!596643 minValue!1245 lt!596654))))

(assert (=> b!1349653 (= (apply!1076 (+!4830 lt!596653 (tuple2!24477 lt!596643 minValue!1245)) lt!596654) (apply!1076 lt!596653 lt!596654))))

(declare-fun lt!596641 () Unit!44151)

(assert (=> b!1349653 (= lt!596641 lt!596645)))

(declare-fun lt!596644 () ListLongMap!22145)

(assert (=> b!1349653 (= lt!596644 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596642 () (_ BitVec 64))

(assert (=> b!1349653 (= lt!596642 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596635 () (_ BitVec 64))

(assert (=> b!1349653 (= lt!596635 (select (arr!44436 _keys!1571) from!1960))))

(declare-fun lt!596640 () Unit!44151)

(assert (=> b!1349653 (= lt!596640 (addApplyDifferent!579 lt!596644 lt!596642 zeroValue!1245 lt!596635))))

(assert (=> b!1349653 (= (apply!1076 (+!4830 lt!596644 (tuple2!24477 lt!596642 zeroValue!1245)) lt!596635) (apply!1076 lt!596644 lt!596635))))

(declare-fun lt!596652 () Unit!44151)

(assert (=> b!1349653 (= lt!596652 lt!596640)))

(declare-fun lt!596636 () ListLongMap!22145)

(assert (=> b!1349653 (= lt!596636 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596647 () (_ BitVec 64))

(assert (=> b!1349653 (= lt!596647 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596648 () (_ BitVec 64))

(assert (=> b!1349653 (= lt!596648 (select (arr!44436 _keys!1571) from!1960))))

(assert (=> b!1349653 (= lt!596634 (addApplyDifferent!579 lt!596636 lt!596647 minValue!1245 lt!596648))))

(assert (=> b!1349653 (= (apply!1076 (+!4830 lt!596636 (tuple2!24477 lt!596647 minValue!1245)) lt!596648) (apply!1076 lt!596636 lt!596648))))

(declare-fun b!1349654 () Bool)

(declare-fun e!767791 () Bool)

(declare-fun lt!596646 () ListLongMap!22145)

(assert (=> b!1349654 (= e!767791 (= (apply!1076 lt!596646 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1245))))

(declare-fun b!1349655 () Bool)

(declare-fun e!767790 () Bool)

(assert (=> b!1349655 (= e!767790 (= (apply!1076 lt!596646 (select (arr!44436 _keys!1571) from!1960)) (get!22499 (select (arr!44437 _values!1303) from!1960) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1349655 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44988 _values!1303)))))

(assert (=> b!1349655 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44987 _keys!1571)))))

(declare-fun b!1349656 () Bool)

(declare-fun e!767793 () Bool)

(assert (=> b!1349656 (= e!767793 (validKeyInArray!0 (select (arr!44436 _keys!1571) from!1960)))))

(declare-fun b!1349657 () Bool)

(declare-fun e!767792 () Bool)

(declare-fun call!65228 () Bool)

(assert (=> b!1349657 (= e!767792 (not call!65228))))

(declare-fun b!1349658 () Bool)

(declare-fun e!767797 () ListLongMap!22145)

(declare-fun call!65225 () ListLongMap!22145)

(assert (=> b!1349658 (= e!767797 (+!4830 call!65225 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(declare-fun b!1349659 () Bool)

(declare-fun res!895446 () Bool)

(assert (=> b!1349659 (=> (not res!895446) (not e!767785))))

(declare-fun e!767788 () Bool)

(assert (=> b!1349659 (= res!895446 e!767788)))

(declare-fun res!895447 () Bool)

(assert (=> b!1349659 (=> res!895447 e!767788)))

(declare-fun e!767794 () Bool)

(assert (=> b!1349659 (= res!895447 (not e!767794))))

(declare-fun res!895441 () Bool)

(assert (=> b!1349659 (=> (not res!895441) (not e!767794))))

(assert (=> b!1349659 (= res!895441 (bvslt from!1960 (size!44987 _keys!1571)))))

(declare-fun b!1349660 () Bool)

(declare-fun call!65230 () Bool)

(assert (=> b!1349660 (= e!767789 (not call!65230))))

(declare-fun b!1349661 () Bool)

(declare-fun e!767796 () Bool)

(assert (=> b!1349661 (= e!767792 e!767796)))

(declare-fun res!895445 () Bool)

(assert (=> b!1349661 (= res!895445 call!65228)))

(assert (=> b!1349661 (=> (not res!895445) (not e!767796))))

(declare-fun bm!65221 () Bool)

(declare-fun call!65226 () ListLongMap!22145)

(assert (=> bm!65221 (= call!65226 call!65225)))

(declare-fun b!1349662 () Bool)

(assert (=> b!1349662 (= e!767788 e!767790)))

(declare-fun res!895442 () Bool)

(assert (=> b!1349662 (=> (not res!895442) (not e!767790))))

(assert (=> b!1349662 (= res!895442 (contains!9207 lt!596646 (select (arr!44436 _keys!1571) from!1960)))))

(assert (=> b!1349662 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44987 _keys!1571)))))

(declare-fun bm!65222 () Bool)

(declare-fun call!65229 () ListLongMap!22145)

(declare-fun call!65224 () ListLongMap!22145)

(assert (=> bm!65222 (= call!65229 call!65224)))

(declare-fun b!1349663 () Bool)

(assert (=> b!1349663 (= e!767796 (= (apply!1076 lt!596646 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1245))))

(declare-fun b!1349664 () Bool)

(declare-fun e!767787 () ListLongMap!22145)

(assert (=> b!1349664 (= e!767787 call!65229)))

(declare-fun b!1349665 () Bool)

(declare-fun Unit!44156 () Unit!44151)

(assert (=> b!1349665 (= e!767795 Unit!44156)))

(declare-fun c!126576 () Bool)

(declare-fun c!126578 () Bool)

(declare-fun call!65227 () ListLongMap!22145)

(declare-fun bm!65223 () Bool)

(assert (=> bm!65223 (= call!65225 (+!4830 (ite c!126578 call!65227 (ite c!126576 call!65224 call!65229)) (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun b!1349667 () Bool)

(assert (=> b!1349667 (= e!767785 e!767792)))

(declare-fun c!126574 () Bool)

(assert (=> b!1349667 (= c!126574 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1349668 () Bool)

(assert (=> b!1349668 (= e!767787 call!65226)))

(declare-fun b!1349666 () Bool)

(assert (=> b!1349666 (= e!767794 (validKeyInArray!0 (select (arr!44436 _keys!1571) from!1960)))))

(declare-fun d!144625 () Bool)

(assert (=> d!144625 e!767785))

(declare-fun res!895443 () Bool)

(assert (=> d!144625 (=> (not res!895443) (not e!767785))))

(assert (=> d!144625 (= res!895443 (or (bvsge from!1960 (size!44987 _keys!1571)) (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44987 _keys!1571)))))))

(declare-fun lt!596638 () ListLongMap!22145)

(assert (=> d!144625 (= lt!596646 lt!596638)))

(declare-fun lt!596649 () Unit!44151)

(assert (=> d!144625 (= lt!596649 e!767795)))

(declare-fun c!126575 () Bool)

(assert (=> d!144625 (= c!126575 e!767793)))

(declare-fun res!895440 () Bool)

(assert (=> d!144625 (=> (not res!895440) (not e!767793))))

(assert (=> d!144625 (= res!895440 (bvslt from!1960 (size!44987 _keys!1571)))))

(assert (=> d!144625 (= lt!596638 e!767797)))

(assert (=> d!144625 (= c!126578 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!144625 (validMask!0 mask!1977)))

(assert (=> d!144625 (= (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) lt!596646)))

(declare-fun b!1349669 () Bool)

(declare-fun e!767786 () ListLongMap!22145)

(assert (=> b!1349669 (= e!767797 e!767786)))

(assert (=> b!1349669 (= c!126576 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!65224 () Bool)

(assert (=> bm!65224 (= call!65230 (contains!9207 lt!596646 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349670 () Bool)

(declare-fun c!126577 () Bool)

(assert (=> b!1349670 (= c!126577 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1349670 (= e!767786 e!767787)))

(declare-fun bm!65225 () Bool)

(assert (=> bm!65225 (= call!65228 (contains!9207 lt!596646 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349671 () Bool)

(assert (=> b!1349671 (= e!767789 e!767791)))

(declare-fun res!895444 () Bool)

(assert (=> b!1349671 (= res!895444 call!65230)))

(assert (=> b!1349671 (=> (not res!895444) (not e!767791))))

(declare-fun b!1349672 () Bool)

(assert (=> b!1349672 (= e!767786 call!65226)))

(declare-fun bm!65226 () Bool)

(assert (=> bm!65226 (= call!65224 call!65227)))

(declare-fun bm!65227 () Bool)

(assert (=> bm!65227 (= call!65227 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(assert (= (and d!144625 c!126578) b!1349658))

(assert (= (and d!144625 (not c!126578)) b!1349669))

(assert (= (and b!1349669 c!126576) b!1349672))

(assert (= (and b!1349669 (not c!126576)) b!1349670))

(assert (= (and b!1349670 c!126577) b!1349668))

(assert (= (and b!1349670 (not c!126577)) b!1349664))

(assert (= (or b!1349668 b!1349664) bm!65222))

(assert (= (or b!1349672 bm!65222) bm!65226))

(assert (= (or b!1349672 b!1349668) bm!65221))

(assert (= (or b!1349658 bm!65226) bm!65227))

(assert (= (or b!1349658 bm!65221) bm!65223))

(assert (= (and d!144625 res!895440) b!1349656))

(assert (= (and d!144625 c!126575) b!1349653))

(assert (= (and d!144625 (not c!126575)) b!1349665))

(assert (= (and d!144625 res!895443) b!1349659))

(assert (= (and b!1349659 res!895441) b!1349666))

(assert (= (and b!1349659 (not res!895447)) b!1349662))

(assert (= (and b!1349662 res!895442) b!1349655))

(assert (= (and b!1349659 res!895446) b!1349652))

(assert (= (and b!1349652 c!126573) b!1349671))

(assert (= (and b!1349652 (not c!126573)) b!1349660))

(assert (= (and b!1349671 res!895444) b!1349654))

(assert (= (or b!1349671 b!1349660) bm!65224))

(assert (= (and b!1349652 res!895439) b!1349667))

(assert (= (and b!1349667 c!126574) b!1349661))

(assert (= (and b!1349667 (not c!126574)) b!1349657))

(assert (= (and b!1349661 res!895445) b!1349663))

(assert (= (or b!1349661 b!1349657) bm!65225))

(declare-fun b_lambda!24731 () Bool)

(assert (=> (not b_lambda!24731) (not b!1349655)))

(assert (=> b!1349655 t!46310))

(declare-fun b_and!51007 () Bool)

(assert (= b_and!51005 (and (=> t!46310 result!26029) b_and!51007)))

(assert (=> b!1349666 m!1236639))

(assert (=> b!1349666 m!1236639))

(assert (=> b!1349666 m!1236641))

(declare-fun m!1236773 () Bool)

(assert (=> bm!65223 m!1236773))

(declare-fun m!1236775 () Bool)

(assert (=> b!1349663 m!1236775))

(assert (=> b!1349662 m!1236639))

(assert (=> b!1349662 m!1236639))

(declare-fun m!1236777 () Bool)

(assert (=> b!1349662 m!1236777))

(assert (=> b!1349655 m!1236717))

(assert (=> b!1349655 m!1236639))

(declare-fun m!1236779 () Bool)

(assert (=> b!1349655 m!1236779))

(assert (=> b!1349655 m!1236639))

(declare-fun m!1236781 () Bool)

(assert (=> b!1349655 m!1236781))

(assert (=> b!1349655 m!1236717))

(declare-fun m!1236783 () Bool)

(assert (=> b!1349655 m!1236783))

(assert (=> b!1349655 m!1236781))

(declare-fun m!1236785 () Bool)

(assert (=> bm!65225 m!1236785))

(declare-fun m!1236787 () Bool)

(assert (=> b!1349658 m!1236787))

(declare-fun m!1236789 () Bool)

(assert (=> bm!65224 m!1236789))

(assert (=> b!1349656 m!1236639))

(assert (=> b!1349656 m!1236639))

(assert (=> b!1349656 m!1236641))

(declare-fun m!1236791 () Bool)

(assert (=> bm!65227 m!1236791))

(assert (=> d!144625 m!1236643))

(declare-fun m!1236793 () Bool)

(assert (=> b!1349654 m!1236793))

(declare-fun m!1236795 () Bool)

(assert (=> b!1349653 m!1236795))

(declare-fun m!1236797 () Bool)

(assert (=> b!1349653 m!1236797))

(declare-fun m!1236799 () Bool)

(assert (=> b!1349653 m!1236799))

(declare-fun m!1236801 () Bool)

(assert (=> b!1349653 m!1236801))

(assert (=> b!1349653 m!1236791))

(declare-fun m!1236803 () Bool)

(assert (=> b!1349653 m!1236803))

(declare-fun m!1236805 () Bool)

(assert (=> b!1349653 m!1236805))

(declare-fun m!1236807 () Bool)

(assert (=> b!1349653 m!1236807))

(declare-fun m!1236809 () Bool)

(assert (=> b!1349653 m!1236809))

(declare-fun m!1236811 () Bool)

(assert (=> b!1349653 m!1236811))

(assert (=> b!1349653 m!1236799))

(assert (=> b!1349653 m!1236803))

(declare-fun m!1236813 () Bool)

(assert (=> b!1349653 m!1236813))

(assert (=> b!1349653 m!1236639))

(declare-fun m!1236815 () Bool)

(assert (=> b!1349653 m!1236815))

(declare-fun m!1236817 () Bool)

(assert (=> b!1349653 m!1236817))

(assert (=> b!1349653 m!1236807))

(assert (=> b!1349653 m!1236797))

(declare-fun m!1236819 () Bool)

(assert (=> b!1349653 m!1236819))

(declare-fun m!1236821 () Bool)

(assert (=> b!1349653 m!1236821))

(declare-fun m!1236823 () Bool)

(assert (=> b!1349653 m!1236823))

(assert (=> b!1349511 d!144625))

(declare-fun b!1349680 () Bool)

(declare-fun e!767803 () Bool)

(assert (=> b!1349680 (= e!767803 tp_is_empty!37593)))

(declare-fun b!1349679 () Bool)

(declare-fun e!767802 () Bool)

(assert (=> b!1349679 (= e!767802 tp_is_empty!37593)))

(declare-fun condMapEmpty!58116 () Bool)

(declare-fun mapDefault!58116 () ValueCell!17898)

(assert (=> mapNonEmpty!58110 (= condMapEmpty!58116 (= mapRest!58110 ((as const (Array (_ BitVec 32) ValueCell!17898)) mapDefault!58116)))))

(declare-fun mapRes!58116 () Bool)

(assert (=> mapNonEmpty!58110 (= tp!110599 (and e!767803 mapRes!58116))))

(declare-fun mapNonEmpty!58116 () Bool)

(declare-fun tp!110608 () Bool)

(assert (=> mapNonEmpty!58116 (= mapRes!58116 (and tp!110608 e!767802))))

(declare-fun mapKey!58116 () (_ BitVec 32))

(declare-fun mapValue!58116 () ValueCell!17898)

(declare-fun mapRest!58116 () (Array (_ BitVec 32) ValueCell!17898))

(assert (=> mapNonEmpty!58116 (= mapRest!58110 (store mapRest!58116 mapKey!58116 mapValue!58116))))

(declare-fun mapIsEmpty!58116 () Bool)

(assert (=> mapIsEmpty!58116 mapRes!58116))

(assert (= (and mapNonEmpty!58110 condMapEmpty!58116) mapIsEmpty!58116))

(assert (= (and mapNonEmpty!58110 (not condMapEmpty!58116)) mapNonEmpty!58116))

(assert (= (and mapNonEmpty!58116 ((_ is ValueCellFull!17898) mapValue!58116)) b!1349679))

(assert (= (and mapNonEmpty!58110 ((_ is ValueCellFull!17898) mapDefault!58116)) b!1349680))

(declare-fun m!1236825 () Bool)

(assert (=> mapNonEmpty!58116 m!1236825))

(declare-fun b_lambda!24733 () Bool)

(assert (= b_lambda!24729 (or (and start!113744 b_free!31593) b_lambda!24733)))

(declare-fun b_lambda!24735 () Bool)

(assert (= b_lambda!24731 (or (and start!113744 b_free!31593) b_lambda!24735)))

(check-sat (not b!1349658) (not b!1349581) (not bm!65216) (not bm!65220) (not b!1349651) (not b!1349640) (not d!144623) (not bm!65199) (not b!1349666) (not b!1349629) (not b!1349558) (not b!1349654) (not b!1349655) (not bm!65217) (not b!1349628) (not d!144625) (not bm!65218) (not b!1349559) (not b!1349630) (not b_next!31593) (not b!1349653) (not bm!65227) (not bm!65225) (not b!1349662) (not mapNonEmpty!58116) (not b!1349560) (not b!1349627) (not b!1349637) (not b!1349663) (not bm!65196) (not b_lambda!24735) (not bm!65224) (not b!1349632) (not b!1349583) (not d!144619) (not b!1349571) (not b!1349573) b_and!51007 (not b!1349636) (not d!144621) (not b!1349656) (not b!1349649) tp_is_empty!37593 (not bm!65223) (not b_lambda!24733))
(check-sat b_and!51007 (not b_next!31593))
(get-model)

(assert (=> b!1349666 d!144615))

(declare-fun d!144627 () Bool)

(declare-fun isEmpty!1102 (Option!777) Bool)

(assert (=> d!144627 (= (isDefined!529 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142)) (not (isEmpty!1102 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))))

(declare-fun bs!38679 () Bool)

(assert (= bs!38679 d!144627))

(assert (=> bs!38679 m!1236703))

(declare-fun m!1236827 () Bool)

(assert (=> bs!38679 m!1236827))

(assert (=> b!1349583 d!144627))

(declare-fun b!1349690 () Bool)

(declare-fun e!767808 () Option!777)

(declare-fun e!767809 () Option!777)

(assert (=> b!1349690 (= e!767808 e!767809)))

(declare-fun c!126584 () Bool)

(assert (=> b!1349690 (= c!126584 (and ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (not (= (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) k0!1142))))))

(declare-fun c!126583 () Bool)

(declare-fun d!144629 () Bool)

(assert (=> d!144629 (= c!126583 (and ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (= (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) k0!1142)))))

(assert (=> d!144629 (= (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142) e!767808)))

(declare-fun b!1349691 () Bool)

(assert (=> b!1349691 (= e!767809 (getValueByKey!726 (t!46307 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) k0!1142))))

(declare-fun b!1349689 () Bool)

(assert (=> b!1349689 (= e!767808 (Some!776 (_2!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))))))

(declare-fun b!1349692 () Bool)

(assert (=> b!1349692 (= e!767809 None!775)))

(assert (= (and d!144629 c!126583) b!1349689))

(assert (= (and d!144629 (not c!126583)) b!1349690))

(assert (= (and b!1349690 c!126584) b!1349691))

(assert (= (and b!1349690 (not c!126584)) b!1349692))

(declare-fun m!1236829 () Bool)

(assert (=> b!1349691 m!1236829))

(assert (=> b!1349583 d!144629))

(declare-fun d!144631 () Bool)

(declare-fun e!767812 () Bool)

(assert (=> d!144631 e!767812))

(declare-fun res!895453 () Bool)

(assert (=> d!144631 (=> (not res!895453) (not e!767812))))

(declare-fun lt!596665 () ListLongMap!22145)

(assert (=> d!144631 (= res!895453 (contains!9207 lt!596665 (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun lt!596664 () List!31644)

(assert (=> d!144631 (= lt!596665 (ListLongMap!22146 lt!596664))))

(declare-fun lt!596666 () Unit!44151)

(declare-fun lt!596663 () Unit!44151)

(assert (=> d!144631 (= lt!596666 lt!596663)))

(assert (=> d!144631 (= (getValueByKey!726 lt!596664 (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun lemmaContainsTupThenGetReturnValue!369 (List!31644 (_ BitVec 64) V!55227) Unit!44151)

(assert (=> d!144631 (= lt!596663 (lemmaContainsTupThenGetReturnValue!369 lt!596664 (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) (_2!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun insertStrictlySorted!498 (List!31644 (_ BitVec 64) V!55227) List!31644)

(assert (=> d!144631 (= lt!596664 (insertStrictlySorted!498 (toList!11088 call!65218) (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) (_2!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144631 (= (+!4830 call!65218 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) lt!596665)))

(declare-fun b!1349697 () Bool)

(declare-fun res!895452 () Bool)

(assert (=> b!1349697 (=> (not res!895452) (not e!767812))))

(assert (=> b!1349697 (= res!895452 (= (getValueByKey!726 (toList!11088 lt!596665) (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(declare-fun b!1349698 () Bool)

(declare-fun contains!9210 (List!31644 tuple2!24476) Bool)

(assert (=> b!1349698 (= e!767812 (contains!9210 (toList!11088 lt!596665) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(assert (= (and d!144631 res!895453) b!1349697))

(assert (= (and b!1349697 res!895452) b!1349698))

(declare-fun m!1236831 () Bool)

(assert (=> d!144631 m!1236831))

(declare-fun m!1236833 () Bool)

(assert (=> d!144631 m!1236833))

(declare-fun m!1236835 () Bool)

(assert (=> d!144631 m!1236835))

(declare-fun m!1236837 () Bool)

(assert (=> d!144631 m!1236837))

(declare-fun m!1236839 () Bool)

(assert (=> b!1349697 m!1236839))

(declare-fun m!1236841 () Bool)

(assert (=> b!1349698 m!1236841))

(assert (=> b!1349632 d!144631))

(declare-fun d!144633 () Bool)

(declare-fun e!767813 () Bool)

(assert (=> d!144633 e!767813))

(declare-fun res!895455 () Bool)

(assert (=> d!144633 (=> (not res!895455) (not e!767813))))

(declare-fun lt!596669 () ListLongMap!22145)

(assert (=> d!144633 (= res!895455 (contains!9207 lt!596669 (_1!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(declare-fun lt!596668 () List!31644)

(assert (=> d!144633 (= lt!596669 (ListLongMap!22146 lt!596668))))

(declare-fun lt!596670 () Unit!44151)

(declare-fun lt!596667 () Unit!44151)

(assert (=> d!144633 (= lt!596670 lt!596667)))

(assert (=> d!144633 (= (getValueByKey!726 lt!596668 (_1!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))) (Some!776 (_2!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144633 (= lt!596667 (lemmaContainsTupThenGetReturnValue!369 lt!596668 (_1!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (_2!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144633 (= lt!596668 (insertStrictlySorted!498 (toList!11088 (ite c!126578 call!65227 (ite c!126576 call!65224 call!65229))) (_1!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (_2!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144633 (= (+!4830 (ite c!126578 call!65227 (ite c!126576 call!65224 call!65229)) (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) lt!596669)))

(declare-fun b!1349699 () Bool)

(declare-fun res!895454 () Bool)

(assert (=> b!1349699 (=> (not res!895454) (not e!767813))))

(assert (=> b!1349699 (= res!895454 (= (getValueByKey!726 (toList!11088 lt!596669) (_1!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))) (Some!776 (_2!12248 (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))))

(declare-fun b!1349700 () Bool)

(assert (=> b!1349700 (= e!767813 (contains!9210 (toList!11088 lt!596669) (ite (or c!126578 c!126576) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (= (and d!144633 res!895455) b!1349699))

(assert (= (and b!1349699 res!895454) b!1349700))

(declare-fun m!1236843 () Bool)

(assert (=> d!144633 m!1236843))

(declare-fun m!1236845 () Bool)

(assert (=> d!144633 m!1236845))

(declare-fun m!1236847 () Bool)

(assert (=> d!144633 m!1236847))

(declare-fun m!1236849 () Bool)

(assert (=> d!144633 m!1236849))

(declare-fun m!1236851 () Bool)

(assert (=> b!1349699 m!1236851))

(declare-fun m!1236853 () Bool)

(assert (=> b!1349700 m!1236853))

(assert (=> bm!65223 d!144633))

(declare-fun d!144635 () Bool)

(assert (=> d!144635 (= (validKeyInArray!0 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)) (and (not (= (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1349560 d!144635))

(declare-fun d!144637 () Bool)

(assert (=> d!144637 (isDefined!529 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(declare-fun lt!596673 () Unit!44151)

(declare-fun choose!1993 (List!31644 (_ BitVec 64)) Unit!44151)

(assert (=> d!144637 (= lt!596673 (choose!1993 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(declare-fun e!767816 () Bool)

(assert (=> d!144637 e!767816))

(declare-fun res!895458 () Bool)

(assert (=> d!144637 (=> (not res!895458) (not e!767816))))

(declare-fun isStrictlySorted!880 (List!31644) Bool)

(assert (=> d!144637 (= res!895458 (isStrictlySorted!880 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))))

(assert (=> d!144637 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142) lt!596673)))

(declare-fun b!1349703 () Bool)

(assert (=> b!1349703 (= e!767816 (containsKey!744 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(assert (= (and d!144637 res!895458) b!1349703))

(assert (=> d!144637 m!1236703))

(assert (=> d!144637 m!1236703))

(assert (=> d!144637 m!1236705))

(declare-fun m!1236855 () Bool)

(assert (=> d!144637 m!1236855))

(declare-fun m!1236857 () Bool)

(assert (=> d!144637 m!1236857))

(assert (=> b!1349703 m!1236699))

(assert (=> b!1349581 d!144637))

(assert (=> b!1349581 d!144627))

(assert (=> b!1349581 d!144629))

(declare-fun b!1349704 () Bool)

(declare-fun e!767820 () Bool)

(declare-fun e!767818 () Bool)

(assert (=> b!1349704 (= e!767820 e!767818)))

(declare-fun res!895461 () Bool)

(assert (=> b!1349704 (=> (not res!895461) (not e!767818))))

(declare-fun e!767819 () Bool)

(assert (=> b!1349704 (= res!895461 (not e!767819))))

(declare-fun res!895459 () Bool)

(assert (=> b!1349704 (=> (not res!895459) (not e!767819))))

(assert (=> b!1349704 (= res!895459 (validKeyInArray!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1349705 () Bool)

(assert (=> b!1349705 (= e!767819 (contains!9209 (ite c!126547 (Cons!31639 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) Nil!31640) Nil!31640) (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!144639 () Bool)

(declare-fun res!895460 () Bool)

(assert (=> d!144639 (=> res!895460 e!767820)))

(assert (=> d!144639 (= res!895460 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44987 _keys!1571)))))

(assert (=> d!144639 (= (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126547 (Cons!31639 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) Nil!31640) Nil!31640)) e!767820)))

(declare-fun b!1349706 () Bool)

(declare-fun e!767817 () Bool)

(assert (=> b!1349706 (= e!767818 e!767817)))

(declare-fun c!126585 () Bool)

(assert (=> b!1349706 (= c!126585 (validKeyInArray!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!65228 () Bool)

(declare-fun call!65231 () Bool)

(assert (=> bm!65228 (= call!65231 (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!126585 (Cons!31639 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!126547 (Cons!31639 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) Nil!31640) Nil!31640)) (ite c!126547 (Cons!31639 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) Nil!31640) Nil!31640))))))

(declare-fun b!1349707 () Bool)

(assert (=> b!1349707 (= e!767817 call!65231)))

(declare-fun b!1349708 () Bool)

(assert (=> b!1349708 (= e!767817 call!65231)))

(assert (= (and d!144639 (not res!895460)) b!1349704))

(assert (= (and b!1349704 res!895459) b!1349705))

(assert (= (and b!1349704 res!895461) b!1349706))

(assert (= (and b!1349706 c!126585) b!1349708))

(assert (= (and b!1349706 (not c!126585)) b!1349707))

(assert (= (or b!1349708 b!1349707) bm!65228))

(declare-fun m!1236859 () Bool)

(assert (=> b!1349704 m!1236859))

(assert (=> b!1349704 m!1236859))

(declare-fun m!1236861 () Bool)

(assert (=> b!1349704 m!1236861))

(assert (=> b!1349705 m!1236859))

(assert (=> b!1349705 m!1236859))

(declare-fun m!1236863 () Bool)

(assert (=> b!1349705 m!1236863))

(assert (=> b!1349706 m!1236859))

(assert (=> b!1349706 m!1236859))

(assert (=> b!1349706 m!1236861))

(assert (=> bm!65228 m!1236859))

(declare-fun m!1236865 () Bool)

(assert (=> bm!65228 m!1236865))

(assert (=> bm!65196 d!144639))

(declare-fun d!144641 () Bool)

(assert (=> d!144641 (= (isDefined!529 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142)) (not (isEmpty!1102 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))))

(declare-fun bs!38680 () Bool)

(assert (= bs!38680 d!144641))

(assert (=> bs!38680 m!1236769))

(declare-fun m!1236867 () Bool)

(assert (=> bs!38680 m!1236867))

(assert (=> b!1349651 d!144641))

(declare-fun b!1349710 () Bool)

(declare-fun e!767821 () Option!777)

(declare-fun e!767822 () Option!777)

(assert (=> b!1349710 (= e!767821 e!767822)))

(declare-fun c!126587 () Bool)

(assert (=> b!1349710 (= c!126587 (and ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (not (= (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142))))))

(declare-fun c!126586 () Bool)

(declare-fun d!144643 () Bool)

(assert (=> d!144643 (= c!126586 (and ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (= (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(assert (=> d!144643 (= (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) e!767821)))

(declare-fun b!1349711 () Bool)

(assert (=> b!1349711 (= e!767822 (getValueByKey!726 (t!46307 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) k0!1142))))

(declare-fun b!1349709 () Bool)

(assert (=> b!1349709 (= e!767821 (Some!776 (_2!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))))))

(declare-fun b!1349712 () Bool)

(assert (=> b!1349712 (= e!767822 None!775)))

(assert (= (and d!144643 c!126586) b!1349709))

(assert (= (and d!144643 (not c!126586)) b!1349710))

(assert (= (and b!1349710 c!126587) b!1349711))

(assert (= (and b!1349710 (not c!126587)) b!1349712))

(declare-fun m!1236869 () Bool)

(assert (=> b!1349711 m!1236869))

(assert (=> b!1349651 d!144643))

(declare-fun d!144645 () Bool)

(declare-fun lt!596676 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!674 (List!31643) (InoxSet (_ BitVec 64)))

(assert (=> d!144645 (= lt!596676 (select (content!674 Nil!31640) (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun e!767828 () Bool)

(assert (=> d!144645 (= lt!596676 e!767828)))

(declare-fun res!895466 () Bool)

(assert (=> d!144645 (=> (not res!895466) (not e!767828))))

(assert (=> d!144645 (= res!895466 ((_ is Cons!31639) Nil!31640))))

(assert (=> d!144645 (= (contains!9209 Nil!31640 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)) lt!596676)))

(declare-fun b!1349717 () Bool)

(declare-fun e!767827 () Bool)

(assert (=> b!1349717 (= e!767828 e!767827)))

(declare-fun res!895467 () Bool)

(assert (=> b!1349717 (=> res!895467 e!767827)))

(assert (=> b!1349717 (= res!895467 (= (h!32848 Nil!31640) (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1349718 () Bool)

(assert (=> b!1349718 (= e!767827 (contains!9209 (t!46306 Nil!31640) (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144645 res!895466) b!1349717))

(assert (= (and b!1349717 (not res!895467)) b!1349718))

(declare-fun m!1236871 () Bool)

(assert (=> d!144645 m!1236871))

(assert (=> d!144645 m!1236683))

(declare-fun m!1236873 () Bool)

(assert (=> d!144645 m!1236873))

(assert (=> b!1349718 m!1236683))

(declare-fun m!1236875 () Bool)

(assert (=> b!1349718 m!1236875))

(assert (=> b!1349559 d!144645))

(declare-fun d!144647 () Bool)

(assert (=> d!144647 (= (validKeyInArray!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (and (not (= (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1349630 d!144647))

(declare-fun b!1349743 () Bool)

(declare-fun lt!596695 () Unit!44151)

(declare-fun lt!596691 () Unit!44151)

(assert (=> b!1349743 (= lt!596695 lt!596691)))

(declare-fun lt!596697 () (_ BitVec 64))

(declare-fun lt!596692 () ListLongMap!22145)

(declare-fun lt!596696 () V!55227)

(declare-fun lt!596693 () (_ BitVec 64))

(assert (=> b!1349743 (not (contains!9207 (+!4830 lt!596692 (tuple2!24477 lt!596693 lt!596696)) lt!596697))))

(declare-fun addStillNotContains!514 (ListLongMap!22145 (_ BitVec 64) V!55227 (_ BitVec 64)) Unit!44151)

(assert (=> b!1349743 (= lt!596691 (addStillNotContains!514 lt!596692 lt!596693 lt!596696 lt!596697))))

(assert (=> b!1349743 (= lt!596697 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1349743 (= lt!596696 (get!22499 (select (arr!44437 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1349743 (= lt!596693 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun call!65234 () ListLongMap!22145)

(assert (=> b!1349743 (= lt!596692 call!65234)))

(declare-fun e!767849 () ListLongMap!22145)

(assert (=> b!1349743 (= e!767849 (+!4830 call!65234 (tuple2!24477 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22499 (select (arr!44437 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1349744 () Bool)

(declare-fun e!767848 () ListLongMap!22145)

(assert (=> b!1349744 (= e!767848 e!767849)))

(declare-fun c!126596 () Bool)

(assert (=> b!1349744 (= c!126596 (validKeyInArray!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun lt!596694 () ListLongMap!22145)

(declare-fun e!767847 () Bool)

(declare-fun b!1349745 () Bool)

(assert (=> b!1349745 (= e!767847 (= lt!596694 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun d!144649 () Bool)

(declare-fun e!767844 () Bool)

(assert (=> d!144649 e!767844))

(declare-fun res!895479 () Bool)

(assert (=> d!144649 (=> (not res!895479) (not e!767844))))

(assert (=> d!144649 (= res!895479 (not (contains!9207 lt!596694 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!144649 (= lt!596694 e!767848)))

(declare-fun c!126597 () Bool)

(assert (=> d!144649 (= c!126597 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(assert (=> d!144649 (validMask!0 mask!1977)))

(assert (=> d!144649 (= (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) lt!596694)))

(declare-fun b!1349746 () Bool)

(declare-fun res!895478 () Bool)

(assert (=> b!1349746 (=> (not res!895478) (not e!767844))))

(assert (=> b!1349746 (= res!895478 (not (contains!9207 lt!596694 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1349747 () Bool)

(declare-fun e!767846 () Bool)

(assert (=> b!1349747 (= e!767844 e!767846)))

(declare-fun c!126599 () Bool)

(declare-fun e!767843 () Bool)

(assert (=> b!1349747 (= c!126599 e!767843)))

(declare-fun res!895476 () Bool)

(assert (=> b!1349747 (=> (not res!895476) (not e!767843))))

(assert (=> b!1349747 (= res!895476 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(declare-fun b!1349748 () Bool)

(assert (=> b!1349748 (= e!767848 (ListLongMap!22146 Nil!31641))))

(declare-fun b!1349749 () Bool)

(declare-fun e!767845 () Bool)

(assert (=> b!1349749 (= e!767846 e!767845)))

(assert (=> b!1349749 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(declare-fun res!895477 () Bool)

(assert (=> b!1349749 (= res!895477 (contains!9207 lt!596694 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1349749 (=> (not res!895477) (not e!767845))))

(declare-fun b!1349750 () Bool)

(assert (=> b!1349750 (= e!767849 call!65234)))

(declare-fun b!1349751 () Bool)

(assert (=> b!1349751 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(assert (=> b!1349751 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44988 _values!1303)))))

(assert (=> b!1349751 (= e!767845 (= (apply!1076 lt!596694 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22499 (select (arr!44437 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1349752 () Bool)

(declare-fun isEmpty!1103 (ListLongMap!22145) Bool)

(assert (=> b!1349752 (= e!767847 (isEmpty!1103 lt!596694))))

(declare-fun b!1349753 () Bool)

(assert (=> b!1349753 (= e!767846 e!767847)))

(declare-fun c!126598 () Bool)

(assert (=> b!1349753 (= c!126598 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44987 _keys!1571)))))

(declare-fun bm!65231 () Bool)

(assert (=> bm!65231 (= call!65234 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1349754 () Bool)

(assert (=> b!1349754 (= e!767843 (validKeyInArray!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1349754 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))

(assert (= (and d!144649 c!126597) b!1349748))

(assert (= (and d!144649 (not c!126597)) b!1349744))

(assert (= (and b!1349744 c!126596) b!1349743))

(assert (= (and b!1349744 (not c!126596)) b!1349750))

(assert (= (or b!1349743 b!1349750) bm!65231))

(assert (= (and d!144649 res!895479) b!1349746))

(assert (= (and b!1349746 res!895478) b!1349747))

(assert (= (and b!1349747 res!895476) b!1349754))

(assert (= (and b!1349747 c!126599) b!1349749))

(assert (= (and b!1349747 (not c!126599)) b!1349753))

(assert (= (and b!1349749 res!895477) b!1349751))

(assert (= (and b!1349753 c!126598) b!1349745))

(assert (= (and b!1349753 (not c!126598)) b!1349752))

(declare-fun b_lambda!24737 () Bool)

(assert (=> (not b_lambda!24737) (not b!1349743)))

(assert (=> b!1349743 t!46310))

(declare-fun b_and!51009 () Bool)

(assert (= b_and!51007 (and (=> t!46310 result!26029) b_and!51009)))

(declare-fun b_lambda!24739 () Bool)

(assert (=> (not b_lambda!24739) (not b!1349751)))

(assert (=> b!1349751 t!46310))

(declare-fun b_and!51011 () Bool)

(assert (= b_and!51009 (and (=> t!46310 result!26029) b_and!51011)))

(declare-fun m!1236877 () Bool)

(assert (=> b!1349745 m!1236877))

(declare-fun m!1236879 () Bool)

(assert (=> b!1349746 m!1236879))

(assert (=> b!1349749 m!1236707))

(assert (=> b!1349749 m!1236707))

(declare-fun m!1236881 () Bool)

(assert (=> b!1349749 m!1236881))

(assert (=> bm!65231 m!1236877))

(declare-fun m!1236883 () Bool)

(assert (=> b!1349752 m!1236883))

(declare-fun m!1236885 () Bool)

(assert (=> b!1349743 m!1236885))

(declare-fun m!1236887 () Bool)

(assert (=> b!1349743 m!1236887))

(assert (=> b!1349743 m!1236721))

(assert (=> b!1349743 m!1236707))

(assert (=> b!1349743 m!1236721))

(assert (=> b!1349743 m!1236717))

(assert (=> b!1349743 m!1236723))

(assert (=> b!1349743 m!1236717))

(assert (=> b!1349743 m!1236885))

(declare-fun m!1236889 () Bool)

(assert (=> b!1349743 m!1236889))

(declare-fun m!1236891 () Bool)

(assert (=> b!1349743 m!1236891))

(declare-fun m!1236893 () Bool)

(assert (=> d!144649 m!1236893))

(assert (=> d!144649 m!1236643))

(assert (=> b!1349751 m!1236721))

(assert (=> b!1349751 m!1236721))

(assert (=> b!1349751 m!1236717))

(assert (=> b!1349751 m!1236723))

(assert (=> b!1349751 m!1236717))

(assert (=> b!1349751 m!1236707))

(declare-fun m!1236895 () Bool)

(assert (=> b!1349751 m!1236895))

(assert (=> b!1349751 m!1236707))

(assert (=> b!1349744 m!1236707))

(assert (=> b!1349744 m!1236707))

(assert (=> b!1349744 m!1236709))

(assert (=> b!1349754 m!1236707))

(assert (=> b!1349754 m!1236707))

(assert (=> b!1349754 m!1236709))

(assert (=> bm!65220 d!144649))

(declare-fun d!144651 () Bool)

(assert (=> d!144651 (isDefined!529 (getValueByKey!726 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun lt!596698 () Unit!44151)

(assert (=> d!144651 (= lt!596698 (choose!1993 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun e!767850 () Bool)

(assert (=> d!144651 e!767850))

(declare-fun res!895480 () Bool)

(assert (=> d!144651 (=> (not res!895480) (not e!767850))))

(assert (=> d!144651 (= res!895480 (isStrictlySorted!880 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))))

(assert (=> d!144651 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) lt!596698)))

(declare-fun b!1349755 () Bool)

(assert (=> b!1349755 (= e!767850 (containsKey!744 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (= (and d!144651 res!895480) b!1349755))

(assert (=> d!144651 m!1236769))

(assert (=> d!144651 m!1236769))

(assert (=> d!144651 m!1236771))

(declare-fun m!1236897 () Bool)

(assert (=> d!144651 m!1236897))

(declare-fun m!1236899 () Bool)

(assert (=> d!144651 m!1236899))

(assert (=> b!1349755 m!1236765))

(assert (=> b!1349649 d!144651))

(assert (=> b!1349649 d!144641))

(assert (=> b!1349649 d!144643))

(assert (=> b!1349558 d!144635))

(declare-fun d!144653 () Bool)

(declare-fun e!767851 () Bool)

(assert (=> d!144653 e!767851))

(declare-fun res!895482 () Bool)

(assert (=> d!144653 (=> (not res!895482) (not e!767851))))

(declare-fun lt!596701 () ListLongMap!22145)

(assert (=> d!144653 (= res!895482 (contains!9207 lt!596701 (_1!12248 (tuple2!24477 lt!596651 zeroValue!1245))))))

(declare-fun lt!596700 () List!31644)

(assert (=> d!144653 (= lt!596701 (ListLongMap!22146 lt!596700))))

(declare-fun lt!596702 () Unit!44151)

(declare-fun lt!596699 () Unit!44151)

(assert (=> d!144653 (= lt!596702 lt!596699)))

(assert (=> d!144653 (= (getValueByKey!726 lt!596700 (_1!12248 (tuple2!24477 lt!596651 zeroValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596651 zeroValue!1245))))))

(assert (=> d!144653 (= lt!596699 (lemmaContainsTupThenGetReturnValue!369 lt!596700 (_1!12248 (tuple2!24477 lt!596651 zeroValue!1245)) (_2!12248 (tuple2!24477 lt!596651 zeroValue!1245))))))

(assert (=> d!144653 (= lt!596700 (insertStrictlySorted!498 (toList!11088 lt!596639) (_1!12248 (tuple2!24477 lt!596651 zeroValue!1245)) (_2!12248 (tuple2!24477 lt!596651 zeroValue!1245))))))

(assert (=> d!144653 (= (+!4830 lt!596639 (tuple2!24477 lt!596651 zeroValue!1245)) lt!596701)))

(declare-fun b!1349756 () Bool)

(declare-fun res!895481 () Bool)

(assert (=> b!1349756 (=> (not res!895481) (not e!767851))))

(assert (=> b!1349756 (= res!895481 (= (getValueByKey!726 (toList!11088 lt!596701) (_1!12248 (tuple2!24477 lt!596651 zeroValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596651 zeroValue!1245)))))))

(declare-fun b!1349757 () Bool)

(assert (=> b!1349757 (= e!767851 (contains!9210 (toList!11088 lt!596701) (tuple2!24477 lt!596651 zeroValue!1245)))))

(assert (= (and d!144653 res!895482) b!1349756))

(assert (= (and b!1349756 res!895481) b!1349757))

(declare-fun m!1236901 () Bool)

(assert (=> d!144653 m!1236901))

(declare-fun m!1236903 () Bool)

(assert (=> d!144653 m!1236903))

(declare-fun m!1236905 () Bool)

(assert (=> d!144653 m!1236905))

(declare-fun m!1236907 () Bool)

(assert (=> d!144653 m!1236907))

(declare-fun m!1236909 () Bool)

(assert (=> b!1349756 m!1236909))

(declare-fun m!1236911 () Bool)

(assert (=> b!1349757 m!1236911))

(assert (=> b!1349653 d!144653))

(declare-fun d!144655 () Bool)

(declare-fun e!767852 () Bool)

(assert (=> d!144655 e!767852))

(declare-fun res!895484 () Bool)

(assert (=> d!144655 (=> (not res!895484) (not e!767852))))

(declare-fun lt!596705 () ListLongMap!22145)

(assert (=> d!144655 (= res!895484 (contains!9207 lt!596705 (_1!12248 (tuple2!24477 lt!596642 zeroValue!1245))))))

(declare-fun lt!596704 () List!31644)

(assert (=> d!144655 (= lt!596705 (ListLongMap!22146 lt!596704))))

(declare-fun lt!596706 () Unit!44151)

(declare-fun lt!596703 () Unit!44151)

(assert (=> d!144655 (= lt!596706 lt!596703)))

(assert (=> d!144655 (= (getValueByKey!726 lt!596704 (_1!12248 (tuple2!24477 lt!596642 zeroValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596642 zeroValue!1245))))))

(assert (=> d!144655 (= lt!596703 (lemmaContainsTupThenGetReturnValue!369 lt!596704 (_1!12248 (tuple2!24477 lt!596642 zeroValue!1245)) (_2!12248 (tuple2!24477 lt!596642 zeroValue!1245))))))

(assert (=> d!144655 (= lt!596704 (insertStrictlySorted!498 (toList!11088 lt!596644) (_1!12248 (tuple2!24477 lt!596642 zeroValue!1245)) (_2!12248 (tuple2!24477 lt!596642 zeroValue!1245))))))

(assert (=> d!144655 (= (+!4830 lt!596644 (tuple2!24477 lt!596642 zeroValue!1245)) lt!596705)))

(declare-fun b!1349758 () Bool)

(declare-fun res!895483 () Bool)

(assert (=> b!1349758 (=> (not res!895483) (not e!767852))))

(assert (=> b!1349758 (= res!895483 (= (getValueByKey!726 (toList!11088 lt!596705) (_1!12248 (tuple2!24477 lt!596642 zeroValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596642 zeroValue!1245)))))))

(declare-fun b!1349759 () Bool)

(assert (=> b!1349759 (= e!767852 (contains!9210 (toList!11088 lt!596705) (tuple2!24477 lt!596642 zeroValue!1245)))))

(assert (= (and d!144655 res!895484) b!1349758))

(assert (= (and b!1349758 res!895483) b!1349759))

(declare-fun m!1236913 () Bool)

(assert (=> d!144655 m!1236913))

(declare-fun m!1236915 () Bool)

(assert (=> d!144655 m!1236915))

(declare-fun m!1236917 () Bool)

(assert (=> d!144655 m!1236917))

(declare-fun m!1236919 () Bool)

(assert (=> d!144655 m!1236919))

(declare-fun m!1236921 () Bool)

(assert (=> b!1349758 m!1236921))

(declare-fun m!1236923 () Bool)

(assert (=> b!1349759 m!1236923))

(assert (=> b!1349653 d!144655))

(declare-fun d!144657 () Bool)

(declare-fun get!22500 (Option!777) V!55227)

(assert (=> d!144657 (= (apply!1076 (+!4830 lt!596644 (tuple2!24477 lt!596642 zeroValue!1245)) lt!596635) (get!22500 (getValueByKey!726 (toList!11088 (+!4830 lt!596644 (tuple2!24477 lt!596642 zeroValue!1245))) lt!596635)))))

(declare-fun bs!38681 () Bool)

(assert (= bs!38681 d!144657))

(declare-fun m!1236925 () Bool)

(assert (=> bs!38681 m!1236925))

(assert (=> bs!38681 m!1236925))

(declare-fun m!1236927 () Bool)

(assert (=> bs!38681 m!1236927))

(assert (=> b!1349653 d!144657))

(declare-fun d!144659 () Bool)

(assert (=> d!144659 (contains!9207 (+!4830 lt!596639 (tuple2!24477 lt!596651 zeroValue!1245)) lt!596637)))

(declare-fun lt!596709 () Unit!44151)

(declare-fun choose!1994 (ListLongMap!22145 (_ BitVec 64) V!55227 (_ BitVec 64)) Unit!44151)

(assert (=> d!144659 (= lt!596709 (choose!1994 lt!596639 lt!596651 zeroValue!1245 lt!596637))))

(assert (=> d!144659 (contains!9207 lt!596639 lt!596637)))

(assert (=> d!144659 (= (addStillContains!1221 lt!596639 lt!596651 zeroValue!1245 lt!596637) lt!596709)))

(declare-fun bs!38682 () Bool)

(assert (= bs!38682 d!144659))

(assert (=> bs!38682 m!1236807))

(assert (=> bs!38682 m!1236807))

(assert (=> bs!38682 m!1236809))

(declare-fun m!1236929 () Bool)

(assert (=> bs!38682 m!1236929))

(declare-fun m!1236931 () Bool)

(assert (=> bs!38682 m!1236931))

(assert (=> b!1349653 d!144659))

(declare-fun d!144661 () Bool)

(assert (=> d!144661 (= (apply!1076 (+!4830 lt!596653 (tuple2!24477 lt!596643 minValue!1245)) lt!596654) (apply!1076 lt!596653 lt!596654))))

(declare-fun lt!596712 () Unit!44151)

(declare-fun choose!1995 (ListLongMap!22145 (_ BitVec 64) V!55227 (_ BitVec 64)) Unit!44151)

(assert (=> d!144661 (= lt!596712 (choose!1995 lt!596653 lt!596643 minValue!1245 lt!596654))))

(declare-fun e!767855 () Bool)

(assert (=> d!144661 e!767855))

(declare-fun res!895487 () Bool)

(assert (=> d!144661 (=> (not res!895487) (not e!767855))))

(assert (=> d!144661 (= res!895487 (contains!9207 lt!596653 lt!596654))))

(assert (=> d!144661 (= (addApplyDifferent!579 lt!596653 lt!596643 minValue!1245 lt!596654) lt!596712)))

(declare-fun b!1349764 () Bool)

(assert (=> b!1349764 (= e!767855 (not (= lt!596654 lt!596643)))))

(assert (= (and d!144661 res!895487) b!1349764))

(assert (=> d!144661 m!1236803))

(declare-fun m!1236933 () Bool)

(assert (=> d!144661 m!1236933))

(assert (=> d!144661 m!1236803))

(assert (=> d!144661 m!1236813))

(assert (=> d!144661 m!1236815))

(declare-fun m!1236935 () Bool)

(assert (=> d!144661 m!1236935))

(assert (=> b!1349653 d!144661))

(declare-fun d!144663 () Bool)

(declare-fun e!767856 () Bool)

(assert (=> d!144663 e!767856))

(declare-fun res!895489 () Bool)

(assert (=> d!144663 (=> (not res!895489) (not e!767856))))

(declare-fun lt!596715 () ListLongMap!22145)

(assert (=> d!144663 (= res!895489 (contains!9207 lt!596715 (_1!12248 (tuple2!24477 lt!596643 minValue!1245))))))

(declare-fun lt!596714 () List!31644)

(assert (=> d!144663 (= lt!596715 (ListLongMap!22146 lt!596714))))

(declare-fun lt!596716 () Unit!44151)

(declare-fun lt!596713 () Unit!44151)

(assert (=> d!144663 (= lt!596716 lt!596713)))

(assert (=> d!144663 (= (getValueByKey!726 lt!596714 (_1!12248 (tuple2!24477 lt!596643 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596643 minValue!1245))))))

(assert (=> d!144663 (= lt!596713 (lemmaContainsTupThenGetReturnValue!369 lt!596714 (_1!12248 (tuple2!24477 lt!596643 minValue!1245)) (_2!12248 (tuple2!24477 lt!596643 minValue!1245))))))

(assert (=> d!144663 (= lt!596714 (insertStrictlySorted!498 (toList!11088 lt!596653) (_1!12248 (tuple2!24477 lt!596643 minValue!1245)) (_2!12248 (tuple2!24477 lt!596643 minValue!1245))))))

(assert (=> d!144663 (= (+!4830 lt!596653 (tuple2!24477 lt!596643 minValue!1245)) lt!596715)))

(declare-fun b!1349765 () Bool)

(declare-fun res!895488 () Bool)

(assert (=> b!1349765 (=> (not res!895488) (not e!767856))))

(assert (=> b!1349765 (= res!895488 (= (getValueByKey!726 (toList!11088 lt!596715) (_1!12248 (tuple2!24477 lt!596643 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596643 minValue!1245)))))))

(declare-fun b!1349766 () Bool)

(assert (=> b!1349766 (= e!767856 (contains!9210 (toList!11088 lt!596715) (tuple2!24477 lt!596643 minValue!1245)))))

(assert (= (and d!144663 res!895489) b!1349765))

(assert (= (and b!1349765 res!895488) b!1349766))

(declare-fun m!1236937 () Bool)

(assert (=> d!144663 m!1236937))

(declare-fun m!1236939 () Bool)

(assert (=> d!144663 m!1236939))

(declare-fun m!1236941 () Bool)

(assert (=> d!144663 m!1236941))

(declare-fun m!1236943 () Bool)

(assert (=> d!144663 m!1236943))

(declare-fun m!1236945 () Bool)

(assert (=> b!1349765 m!1236945))

(declare-fun m!1236947 () Bool)

(assert (=> b!1349766 m!1236947))

(assert (=> b!1349653 d!144663))

(declare-fun d!144665 () Bool)

(assert (=> d!144665 (= (apply!1076 (+!4830 lt!596636 (tuple2!24477 lt!596647 minValue!1245)) lt!596648) (get!22500 (getValueByKey!726 (toList!11088 (+!4830 lt!596636 (tuple2!24477 lt!596647 minValue!1245))) lt!596648)))))

(declare-fun bs!38683 () Bool)

(assert (= bs!38683 d!144665))

(declare-fun m!1236949 () Bool)

(assert (=> bs!38683 m!1236949))

(assert (=> bs!38683 m!1236949))

(declare-fun m!1236951 () Bool)

(assert (=> bs!38683 m!1236951))

(assert (=> b!1349653 d!144665))

(declare-fun d!144667 () Bool)

(declare-fun e!767857 () Bool)

(assert (=> d!144667 e!767857))

(declare-fun res!895491 () Bool)

(assert (=> d!144667 (=> (not res!895491) (not e!767857))))

(declare-fun lt!596719 () ListLongMap!22145)

(assert (=> d!144667 (= res!895491 (contains!9207 lt!596719 (_1!12248 (tuple2!24477 lt!596647 minValue!1245))))))

(declare-fun lt!596718 () List!31644)

(assert (=> d!144667 (= lt!596719 (ListLongMap!22146 lt!596718))))

(declare-fun lt!596720 () Unit!44151)

(declare-fun lt!596717 () Unit!44151)

(assert (=> d!144667 (= lt!596720 lt!596717)))

(assert (=> d!144667 (= (getValueByKey!726 lt!596718 (_1!12248 (tuple2!24477 lt!596647 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596647 minValue!1245))))))

(assert (=> d!144667 (= lt!596717 (lemmaContainsTupThenGetReturnValue!369 lt!596718 (_1!12248 (tuple2!24477 lt!596647 minValue!1245)) (_2!12248 (tuple2!24477 lt!596647 minValue!1245))))))

(assert (=> d!144667 (= lt!596718 (insertStrictlySorted!498 (toList!11088 lt!596636) (_1!12248 (tuple2!24477 lt!596647 minValue!1245)) (_2!12248 (tuple2!24477 lt!596647 minValue!1245))))))

(assert (=> d!144667 (= (+!4830 lt!596636 (tuple2!24477 lt!596647 minValue!1245)) lt!596719)))

(declare-fun b!1349767 () Bool)

(declare-fun res!895490 () Bool)

(assert (=> b!1349767 (=> (not res!895490) (not e!767857))))

(assert (=> b!1349767 (= res!895490 (= (getValueByKey!726 (toList!11088 lt!596719) (_1!12248 (tuple2!24477 lt!596647 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596647 minValue!1245)))))))

(declare-fun b!1349768 () Bool)

(assert (=> b!1349768 (= e!767857 (contains!9210 (toList!11088 lt!596719) (tuple2!24477 lt!596647 minValue!1245)))))

(assert (= (and d!144667 res!895491) b!1349767))

(assert (= (and b!1349767 res!895490) b!1349768))

(declare-fun m!1236953 () Bool)

(assert (=> d!144667 m!1236953))

(declare-fun m!1236955 () Bool)

(assert (=> d!144667 m!1236955))

(declare-fun m!1236957 () Bool)

(assert (=> d!144667 m!1236957))

(declare-fun m!1236959 () Bool)

(assert (=> d!144667 m!1236959))

(declare-fun m!1236961 () Bool)

(assert (=> b!1349767 m!1236961))

(declare-fun m!1236963 () Bool)

(assert (=> b!1349768 m!1236963))

(assert (=> b!1349653 d!144667))

(declare-fun d!144669 () Bool)

(assert (=> d!144669 (= (apply!1076 lt!596653 lt!596654) (get!22500 (getValueByKey!726 (toList!11088 lt!596653) lt!596654)))))

(declare-fun bs!38684 () Bool)

(assert (= bs!38684 d!144669))

(declare-fun m!1236965 () Bool)

(assert (=> bs!38684 m!1236965))

(assert (=> bs!38684 m!1236965))

(declare-fun m!1236967 () Bool)

(assert (=> bs!38684 m!1236967))

(assert (=> b!1349653 d!144669))

(declare-fun d!144671 () Bool)

(assert (=> d!144671 (= (apply!1076 lt!596644 lt!596635) (get!22500 (getValueByKey!726 (toList!11088 lt!596644) lt!596635)))))

(declare-fun bs!38685 () Bool)

(assert (= bs!38685 d!144671))

(declare-fun m!1236969 () Bool)

(assert (=> bs!38685 m!1236969))

(assert (=> bs!38685 m!1236969))

(declare-fun m!1236971 () Bool)

(assert (=> bs!38685 m!1236971))

(assert (=> b!1349653 d!144671))

(declare-fun b!1349769 () Bool)

(declare-fun lt!596725 () Unit!44151)

(declare-fun lt!596721 () Unit!44151)

(assert (=> b!1349769 (= lt!596725 lt!596721)))

(declare-fun lt!596722 () ListLongMap!22145)

(declare-fun lt!596726 () V!55227)

(declare-fun lt!596727 () (_ BitVec 64))

(declare-fun lt!596723 () (_ BitVec 64))

(assert (=> b!1349769 (not (contains!9207 (+!4830 lt!596722 (tuple2!24477 lt!596723 lt!596726)) lt!596727))))

(assert (=> b!1349769 (= lt!596721 (addStillNotContains!514 lt!596722 lt!596723 lt!596726 lt!596727))))

(assert (=> b!1349769 (= lt!596727 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1349769 (= lt!596726 (get!22499 (select (arr!44437 _values!1303) from!1960) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1349769 (= lt!596723 (select (arr!44436 _keys!1571) from!1960))))

(declare-fun call!65235 () ListLongMap!22145)

(assert (=> b!1349769 (= lt!596722 call!65235)))

(declare-fun e!767864 () ListLongMap!22145)

(assert (=> b!1349769 (= e!767864 (+!4830 call!65235 (tuple2!24477 (select (arr!44436 _keys!1571) from!1960) (get!22499 (select (arr!44437 _values!1303) from!1960) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1349770 () Bool)

(declare-fun e!767863 () ListLongMap!22145)

(assert (=> b!1349770 (= e!767863 e!767864)))

(declare-fun c!126600 () Bool)

(assert (=> b!1349770 (= c!126600 (validKeyInArray!0 (select (arr!44436 _keys!1571) from!1960)))))

(declare-fun e!767862 () Bool)

(declare-fun b!1349771 () Bool)

(declare-fun lt!596724 () ListLongMap!22145)

(assert (=> b!1349771 (= e!767862 (= lt!596724 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd from!1960 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun d!144673 () Bool)

(declare-fun e!767859 () Bool)

(assert (=> d!144673 e!767859))

(declare-fun res!895495 () Bool)

(assert (=> d!144673 (=> (not res!895495) (not e!767859))))

(assert (=> d!144673 (= res!895495 (not (contains!9207 lt!596724 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!144673 (= lt!596724 e!767863)))

(declare-fun c!126601 () Bool)

(assert (=> d!144673 (= c!126601 (bvsge from!1960 (size!44987 _keys!1571)))))

(assert (=> d!144673 (validMask!0 mask!1977)))

(assert (=> d!144673 (= (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) lt!596724)))

(declare-fun b!1349772 () Bool)

(declare-fun res!895494 () Bool)

(assert (=> b!1349772 (=> (not res!895494) (not e!767859))))

(assert (=> b!1349772 (= res!895494 (not (contains!9207 lt!596724 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1349773 () Bool)

(declare-fun e!767861 () Bool)

(assert (=> b!1349773 (= e!767859 e!767861)))

(declare-fun c!126603 () Bool)

(declare-fun e!767858 () Bool)

(assert (=> b!1349773 (= c!126603 e!767858)))

(declare-fun res!895492 () Bool)

(assert (=> b!1349773 (=> (not res!895492) (not e!767858))))

(assert (=> b!1349773 (= res!895492 (bvslt from!1960 (size!44987 _keys!1571)))))

(declare-fun b!1349774 () Bool)

(assert (=> b!1349774 (= e!767863 (ListLongMap!22146 Nil!31641))))

(declare-fun b!1349775 () Bool)

(declare-fun e!767860 () Bool)

(assert (=> b!1349775 (= e!767861 e!767860)))

(assert (=> b!1349775 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44987 _keys!1571)))))

(declare-fun res!895493 () Bool)

(assert (=> b!1349775 (= res!895493 (contains!9207 lt!596724 (select (arr!44436 _keys!1571) from!1960)))))

(assert (=> b!1349775 (=> (not res!895493) (not e!767860))))

(declare-fun b!1349776 () Bool)

(assert (=> b!1349776 (= e!767864 call!65235)))

(declare-fun b!1349777 () Bool)

(assert (=> b!1349777 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44987 _keys!1571)))))

(assert (=> b!1349777 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44988 _values!1303)))))

(assert (=> b!1349777 (= e!767860 (= (apply!1076 lt!596724 (select (arr!44436 _keys!1571) from!1960)) (get!22499 (select (arr!44437 _values!1303) from!1960) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1349778 () Bool)

(assert (=> b!1349778 (= e!767862 (isEmpty!1103 lt!596724))))

(declare-fun b!1349779 () Bool)

(assert (=> b!1349779 (= e!767861 e!767862)))

(declare-fun c!126602 () Bool)

(assert (=> b!1349779 (= c!126602 (bvslt from!1960 (size!44987 _keys!1571)))))

(declare-fun bm!65232 () Bool)

(assert (=> bm!65232 (= call!65235 (getCurrentListMapNoExtraKeys!6557 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd from!1960 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1349780 () Bool)

(assert (=> b!1349780 (= e!767858 (validKeyInArray!0 (select (arr!44436 _keys!1571) from!1960)))))

(assert (=> b!1349780 (bvsge from!1960 #b00000000000000000000000000000000)))

(assert (= (and d!144673 c!126601) b!1349774))

(assert (= (and d!144673 (not c!126601)) b!1349770))

(assert (= (and b!1349770 c!126600) b!1349769))

(assert (= (and b!1349770 (not c!126600)) b!1349776))

(assert (= (or b!1349769 b!1349776) bm!65232))

(assert (= (and d!144673 res!895495) b!1349772))

(assert (= (and b!1349772 res!895494) b!1349773))

(assert (= (and b!1349773 res!895492) b!1349780))

(assert (= (and b!1349773 c!126603) b!1349775))

(assert (= (and b!1349773 (not c!126603)) b!1349779))

(assert (= (and b!1349775 res!895493) b!1349777))

(assert (= (and b!1349779 c!126602) b!1349771))

(assert (= (and b!1349779 (not c!126602)) b!1349778))

(declare-fun b_lambda!24741 () Bool)

(assert (=> (not b_lambda!24741) (not b!1349769)))

(assert (=> b!1349769 t!46310))

(declare-fun b_and!51013 () Bool)

(assert (= b_and!51011 (and (=> t!46310 result!26029) b_and!51013)))

(declare-fun b_lambda!24743 () Bool)

(assert (=> (not b_lambda!24743) (not b!1349777)))

(assert (=> b!1349777 t!46310))

(declare-fun b_and!51015 () Bool)

(assert (= b_and!51013 (and (=> t!46310 result!26029) b_and!51015)))

(declare-fun m!1236973 () Bool)

(assert (=> b!1349771 m!1236973))

(declare-fun m!1236975 () Bool)

(assert (=> b!1349772 m!1236975))

(assert (=> b!1349775 m!1236639))

(assert (=> b!1349775 m!1236639))

(declare-fun m!1236977 () Bool)

(assert (=> b!1349775 m!1236977))

(assert (=> bm!65232 m!1236973))

(declare-fun m!1236979 () Bool)

(assert (=> b!1349778 m!1236979))

(declare-fun m!1236981 () Bool)

(assert (=> b!1349769 m!1236981))

(declare-fun m!1236983 () Bool)

(assert (=> b!1349769 m!1236983))

(assert (=> b!1349769 m!1236781))

(assert (=> b!1349769 m!1236639))

(assert (=> b!1349769 m!1236781))

(assert (=> b!1349769 m!1236717))

(assert (=> b!1349769 m!1236783))

(assert (=> b!1349769 m!1236717))

(assert (=> b!1349769 m!1236981))

(declare-fun m!1236985 () Bool)

(assert (=> b!1349769 m!1236985))

(declare-fun m!1236987 () Bool)

(assert (=> b!1349769 m!1236987))

(declare-fun m!1236989 () Bool)

(assert (=> d!144673 m!1236989))

(assert (=> d!144673 m!1236643))

(assert (=> b!1349777 m!1236781))

(assert (=> b!1349777 m!1236781))

(assert (=> b!1349777 m!1236717))

(assert (=> b!1349777 m!1236783))

(assert (=> b!1349777 m!1236717))

(assert (=> b!1349777 m!1236639))

(declare-fun m!1236991 () Bool)

(assert (=> b!1349777 m!1236991))

(assert (=> b!1349777 m!1236639))

(assert (=> b!1349770 m!1236639))

(assert (=> b!1349770 m!1236639))

(assert (=> b!1349770 m!1236641))

(assert (=> b!1349780 m!1236639))

(assert (=> b!1349780 m!1236639))

(assert (=> b!1349780 m!1236641))

(assert (=> b!1349653 d!144673))

(declare-fun d!144675 () Bool)

(assert (=> d!144675 (= (apply!1076 (+!4830 lt!596644 (tuple2!24477 lt!596642 zeroValue!1245)) lt!596635) (apply!1076 lt!596644 lt!596635))))

(declare-fun lt!596728 () Unit!44151)

(assert (=> d!144675 (= lt!596728 (choose!1995 lt!596644 lt!596642 zeroValue!1245 lt!596635))))

(declare-fun e!767865 () Bool)

(assert (=> d!144675 e!767865))

(declare-fun res!895496 () Bool)

(assert (=> d!144675 (=> (not res!895496) (not e!767865))))

(assert (=> d!144675 (= res!895496 (contains!9207 lt!596644 lt!596635))))

(assert (=> d!144675 (= (addApplyDifferent!579 lt!596644 lt!596642 zeroValue!1245 lt!596635) lt!596728)))

(declare-fun b!1349781 () Bool)

(assert (=> b!1349781 (= e!767865 (not (= lt!596635 lt!596642)))))

(assert (= (and d!144675 res!895496) b!1349781))

(assert (=> d!144675 m!1236799))

(declare-fun m!1236993 () Bool)

(assert (=> d!144675 m!1236993))

(assert (=> d!144675 m!1236799))

(assert (=> d!144675 m!1236801))

(assert (=> d!144675 m!1236823))

(declare-fun m!1236995 () Bool)

(assert (=> d!144675 m!1236995))

(assert (=> b!1349653 d!144675))

(declare-fun d!144677 () Bool)

(assert (=> d!144677 (= (apply!1076 (+!4830 lt!596636 (tuple2!24477 lt!596647 minValue!1245)) lt!596648) (apply!1076 lt!596636 lt!596648))))

(declare-fun lt!596729 () Unit!44151)

(assert (=> d!144677 (= lt!596729 (choose!1995 lt!596636 lt!596647 minValue!1245 lt!596648))))

(declare-fun e!767866 () Bool)

(assert (=> d!144677 e!767866))

(declare-fun res!895497 () Bool)

(assert (=> d!144677 (=> (not res!895497) (not e!767866))))

(assert (=> d!144677 (= res!895497 (contains!9207 lt!596636 lt!596648))))

(assert (=> d!144677 (= (addApplyDifferent!579 lt!596636 lt!596647 minValue!1245 lt!596648) lt!596729)))

(declare-fun b!1349782 () Bool)

(assert (=> b!1349782 (= e!767866 (not (= lt!596648 lt!596647)))))

(assert (= (and d!144677 res!895497) b!1349782))

(assert (=> d!144677 m!1236797))

(declare-fun m!1236997 () Bool)

(assert (=> d!144677 m!1236997))

(assert (=> d!144677 m!1236797))

(assert (=> d!144677 m!1236819))

(assert (=> d!144677 m!1236811))

(declare-fun m!1236999 () Bool)

(assert (=> d!144677 m!1236999))

(assert (=> b!1349653 d!144677))

(declare-fun d!144679 () Bool)

(assert (=> d!144679 (= (apply!1076 lt!596636 lt!596648) (get!22500 (getValueByKey!726 (toList!11088 lt!596636) lt!596648)))))

(declare-fun bs!38686 () Bool)

(assert (= bs!38686 d!144679))

(declare-fun m!1237001 () Bool)

(assert (=> bs!38686 m!1237001))

(assert (=> bs!38686 m!1237001))

(declare-fun m!1237003 () Bool)

(assert (=> bs!38686 m!1237003))

(assert (=> b!1349653 d!144679))

(declare-fun d!144681 () Bool)

(declare-fun e!767868 () Bool)

(assert (=> d!144681 e!767868))

(declare-fun res!895498 () Bool)

(assert (=> d!144681 (=> res!895498 e!767868)))

(declare-fun lt!596733 () Bool)

(assert (=> d!144681 (= res!895498 (not lt!596733))))

(declare-fun lt!596731 () Bool)

(assert (=> d!144681 (= lt!596733 lt!596731)))

(declare-fun lt!596730 () Unit!44151)

(declare-fun e!767867 () Unit!44151)

(assert (=> d!144681 (= lt!596730 e!767867)))

(declare-fun c!126604 () Bool)

(assert (=> d!144681 (= c!126604 lt!596731)))

(assert (=> d!144681 (= lt!596731 (containsKey!744 (toList!11088 (+!4830 lt!596639 (tuple2!24477 lt!596651 zeroValue!1245))) lt!596637))))

(assert (=> d!144681 (= (contains!9207 (+!4830 lt!596639 (tuple2!24477 lt!596651 zeroValue!1245)) lt!596637) lt!596733)))

(declare-fun b!1349783 () Bool)

(declare-fun lt!596732 () Unit!44151)

(assert (=> b!1349783 (= e!767867 lt!596732)))

(assert (=> b!1349783 (= lt!596732 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 (+!4830 lt!596639 (tuple2!24477 lt!596651 zeroValue!1245))) lt!596637))))

(assert (=> b!1349783 (isDefined!529 (getValueByKey!726 (toList!11088 (+!4830 lt!596639 (tuple2!24477 lt!596651 zeroValue!1245))) lt!596637))))

(declare-fun b!1349784 () Bool)

(declare-fun Unit!44157 () Unit!44151)

(assert (=> b!1349784 (= e!767867 Unit!44157)))

(declare-fun b!1349785 () Bool)

(assert (=> b!1349785 (= e!767868 (isDefined!529 (getValueByKey!726 (toList!11088 (+!4830 lt!596639 (tuple2!24477 lt!596651 zeroValue!1245))) lt!596637)))))

(assert (= (and d!144681 c!126604) b!1349783))

(assert (= (and d!144681 (not c!126604)) b!1349784))

(assert (= (and d!144681 (not res!895498)) b!1349785))

(declare-fun m!1237005 () Bool)

(assert (=> d!144681 m!1237005))

(declare-fun m!1237007 () Bool)

(assert (=> b!1349783 m!1237007))

(declare-fun m!1237009 () Bool)

(assert (=> b!1349783 m!1237009))

(assert (=> b!1349783 m!1237009))

(declare-fun m!1237011 () Bool)

(assert (=> b!1349783 m!1237011))

(assert (=> b!1349785 m!1237009))

(assert (=> b!1349785 m!1237009))

(assert (=> b!1349785 m!1237011))

(assert (=> b!1349653 d!144681))

(declare-fun d!144683 () Bool)

(assert (=> d!144683 (= (apply!1076 (+!4830 lt!596653 (tuple2!24477 lt!596643 minValue!1245)) lt!596654) (get!22500 (getValueByKey!726 (toList!11088 (+!4830 lt!596653 (tuple2!24477 lt!596643 minValue!1245))) lt!596654)))))

(declare-fun bs!38687 () Bool)

(assert (= bs!38687 d!144683))

(declare-fun m!1237013 () Bool)

(assert (=> bs!38687 m!1237013))

(assert (=> bs!38687 m!1237013))

(declare-fun m!1237015 () Bool)

(assert (=> bs!38687 m!1237015))

(assert (=> b!1349653 d!144683))

(declare-fun d!144685 () Bool)

(declare-fun res!895503 () Bool)

(declare-fun e!767873 () Bool)

(assert (=> d!144685 (=> res!895503 e!767873)))

(assert (=> d!144685 (= res!895503 (and ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (= (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) k0!1142)))))

(assert (=> d!144685 (= (containsKey!744 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142) e!767873)))

(declare-fun b!1349790 () Bool)

(declare-fun e!767874 () Bool)

(assert (=> b!1349790 (= e!767873 e!767874)))

(declare-fun res!895504 () Bool)

(assert (=> b!1349790 (=> (not res!895504) (not e!767874))))

(assert (=> b!1349790 (= res!895504 (and (or (not ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) (bvsle (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) k0!1142)) ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (bvslt (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) k0!1142)))))

(declare-fun b!1349791 () Bool)

(assert (=> b!1349791 (= e!767874 (containsKey!744 (t!46307 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) k0!1142))))

(assert (= (and d!144685 (not res!895503)) b!1349790))

(assert (= (and b!1349790 res!895504) b!1349791))

(declare-fun m!1237017 () Bool)

(assert (=> b!1349791 m!1237017))

(assert (=> d!144619 d!144685))

(declare-fun d!144687 () Bool)

(assert (=> d!144687 (= (apply!1076 lt!596646 #b0000000000000000000000000000000000000000000000000000000000000000) (get!22500 (getValueByKey!726 (toList!11088 lt!596646) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38688 () Bool)

(assert (= bs!38688 d!144687))

(declare-fun m!1237019 () Bool)

(assert (=> bs!38688 m!1237019))

(assert (=> bs!38688 m!1237019))

(declare-fun m!1237021 () Bool)

(assert (=> bs!38688 m!1237021))

(assert (=> b!1349654 d!144687))

(declare-fun d!144689 () Bool)

(assert (=> d!144689 (= (apply!1076 lt!596620 #b1000000000000000000000000000000000000000000000000000000000000000) (get!22500 (getValueByKey!726 (toList!11088 lt!596620) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38689 () Bool)

(assert (= bs!38689 d!144689))

(declare-fun m!1237023 () Bool)

(assert (=> bs!38689 m!1237023))

(assert (=> bs!38689 m!1237023))

(declare-fun m!1237025 () Bool)

(assert (=> bs!38689 m!1237025))

(assert (=> b!1349637 d!144689))

(declare-fun d!144691 () Bool)

(declare-fun e!767876 () Bool)

(assert (=> d!144691 e!767876))

(declare-fun res!895505 () Bool)

(assert (=> d!144691 (=> res!895505 e!767876)))

(declare-fun lt!596737 () Bool)

(assert (=> d!144691 (= res!895505 (not lt!596737))))

(declare-fun lt!596735 () Bool)

(assert (=> d!144691 (= lt!596737 lt!596735)))

(declare-fun lt!596734 () Unit!44151)

(declare-fun e!767875 () Unit!44151)

(assert (=> d!144691 (= lt!596734 e!767875)))

(declare-fun c!126605 () Bool)

(assert (=> d!144691 (= c!126605 lt!596735)))

(assert (=> d!144691 (= lt!596735 (containsKey!744 (toList!11088 lt!596646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144691 (= (contains!9207 lt!596646 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596737)))

(declare-fun b!1349792 () Bool)

(declare-fun lt!596736 () Unit!44151)

(assert (=> b!1349792 (= e!767875 lt!596736)))

(assert (=> b!1349792 (= lt!596736 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 lt!596646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1349792 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349793 () Bool)

(declare-fun Unit!44158 () Unit!44151)

(assert (=> b!1349793 (= e!767875 Unit!44158)))

(declare-fun b!1349794 () Bool)

(assert (=> b!1349794 (= e!767876 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596646) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144691 c!126605) b!1349792))

(assert (= (and d!144691 (not c!126605)) b!1349793))

(assert (= (and d!144691 (not res!895505)) b!1349794))

(declare-fun m!1237027 () Bool)

(assert (=> d!144691 m!1237027))

(declare-fun m!1237029 () Bool)

(assert (=> b!1349792 m!1237029))

(declare-fun m!1237031 () Bool)

(assert (=> b!1349792 m!1237031))

(assert (=> b!1349792 m!1237031))

(declare-fun m!1237033 () Bool)

(assert (=> b!1349792 m!1237033))

(assert (=> b!1349794 m!1237031))

(assert (=> b!1349794 m!1237031))

(assert (=> b!1349794 m!1237033))

(assert (=> bm!65225 d!144691))

(declare-fun d!144693 () Bool)

(declare-fun e!767878 () Bool)

(assert (=> d!144693 e!767878))

(declare-fun res!895506 () Bool)

(assert (=> d!144693 (=> res!895506 e!767878)))

(declare-fun lt!596741 () Bool)

(assert (=> d!144693 (= res!895506 (not lt!596741))))

(declare-fun lt!596739 () Bool)

(assert (=> d!144693 (= lt!596741 lt!596739)))

(declare-fun lt!596738 () Unit!44151)

(declare-fun e!767877 () Unit!44151)

(assert (=> d!144693 (= lt!596738 e!767877)))

(declare-fun c!126606 () Bool)

(assert (=> d!144693 (= c!126606 lt!596739)))

(assert (=> d!144693 (= lt!596739 (containsKey!744 (toList!11088 lt!596620) (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> d!144693 (= (contains!9207 lt!596620 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) lt!596741)))

(declare-fun b!1349795 () Bool)

(declare-fun lt!596740 () Unit!44151)

(assert (=> b!1349795 (= e!767877 lt!596740)))

(assert (=> b!1349795 (= lt!596740 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 lt!596620) (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1349795 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596620) (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1349796 () Bool)

(declare-fun Unit!44159 () Unit!44151)

(assert (=> b!1349796 (= e!767877 Unit!44159)))

(declare-fun b!1349797 () Bool)

(assert (=> b!1349797 (= e!767878 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596620) (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))))

(assert (= (and d!144693 c!126606) b!1349795))

(assert (= (and d!144693 (not c!126606)) b!1349796))

(assert (= (and d!144693 (not res!895506)) b!1349797))

(assert (=> d!144693 m!1236707))

(declare-fun m!1237035 () Bool)

(assert (=> d!144693 m!1237035))

(assert (=> b!1349795 m!1236707))

(declare-fun m!1237037 () Bool)

(assert (=> b!1349795 m!1237037))

(assert (=> b!1349795 m!1236707))

(declare-fun m!1237039 () Bool)

(assert (=> b!1349795 m!1237039))

(assert (=> b!1349795 m!1237039))

(declare-fun m!1237041 () Bool)

(assert (=> b!1349795 m!1237041))

(assert (=> b!1349797 m!1236707))

(assert (=> b!1349797 m!1237039))

(assert (=> b!1349797 m!1237039))

(assert (=> b!1349797 m!1237041))

(assert (=> b!1349636 d!144693))

(declare-fun d!144695 () Bool)

(declare-fun e!767880 () Bool)

(assert (=> d!144695 e!767880))

(declare-fun res!895507 () Bool)

(assert (=> d!144695 (=> res!895507 e!767880)))

(declare-fun lt!596745 () Bool)

(assert (=> d!144695 (= res!895507 (not lt!596745))))

(declare-fun lt!596743 () Bool)

(assert (=> d!144695 (= lt!596745 lt!596743)))

(declare-fun lt!596742 () Unit!44151)

(declare-fun e!767879 () Unit!44151)

(assert (=> d!144695 (= lt!596742 e!767879)))

(declare-fun c!126607 () Bool)

(assert (=> d!144695 (= c!126607 lt!596743)))

(assert (=> d!144695 (= lt!596743 (containsKey!744 (toList!11088 lt!596646) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144695 (= (contains!9207 lt!596646 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596745)))

(declare-fun b!1349798 () Bool)

(declare-fun lt!596744 () Unit!44151)

(assert (=> b!1349798 (= e!767879 lt!596744)))

(assert (=> b!1349798 (= lt!596744 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 lt!596646) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1349798 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596646) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349799 () Bool)

(declare-fun Unit!44160 () Unit!44151)

(assert (=> b!1349799 (= e!767879 Unit!44160)))

(declare-fun b!1349800 () Bool)

(assert (=> b!1349800 (= e!767880 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596646) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144695 c!126607) b!1349798))

(assert (= (and d!144695 (not c!126607)) b!1349799))

(assert (= (and d!144695 (not res!895507)) b!1349800))

(declare-fun m!1237043 () Bool)

(assert (=> d!144695 m!1237043))

(declare-fun m!1237045 () Bool)

(assert (=> b!1349798 m!1237045))

(assert (=> b!1349798 m!1237019))

(assert (=> b!1349798 m!1237019))

(declare-fun m!1237047 () Bool)

(assert (=> b!1349798 m!1237047))

(assert (=> b!1349800 m!1237019))

(assert (=> b!1349800 m!1237019))

(assert (=> b!1349800 m!1237047))

(assert (=> bm!65224 d!144695))

(assert (=> d!144621 d!144609))

(declare-fun d!144697 () Bool)

(declare-fun res!895508 () Bool)

(declare-fun e!767881 () Bool)

(assert (=> d!144697 (=> res!895508 e!767881)))

(assert (=> d!144697 (= res!895508 (and ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (= (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(assert (=> d!144697 (= (containsKey!744 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) e!767881)))

(declare-fun b!1349801 () Bool)

(declare-fun e!767882 () Bool)

(assert (=> b!1349801 (= e!767881 e!767882)))

(declare-fun res!895509 () Bool)

(assert (=> b!1349801 (=> (not res!895509) (not e!767882))))

(assert (=> b!1349801 (= res!895509 (and (or (not ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) (bvsle (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)) ((_ is Cons!31640) (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (bvslt (_1!12248 (h!32849 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(declare-fun b!1349802 () Bool)

(assert (=> b!1349802 (= e!767882 (containsKey!744 (t!46307 (toList!11088 (getCurrentListMap!5977 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) k0!1142))))

(assert (= (and d!144697 (not res!895508)) b!1349801))

(assert (= (and b!1349801 res!895509) b!1349802))

(declare-fun m!1237049 () Bool)

(assert (=> b!1349802 m!1237049))

(assert (=> d!144623 d!144697))

(assert (=> d!144625 d!144609))

(declare-fun d!144699 () Bool)

(declare-fun e!767883 () Bool)

(assert (=> d!144699 e!767883))

(declare-fun res!895511 () Bool)

(assert (=> d!144699 (=> (not res!895511) (not e!767883))))

(declare-fun lt!596748 () ListLongMap!22145)

(assert (=> d!144699 (= res!895511 (contains!9207 lt!596748 (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun lt!596747 () List!31644)

(assert (=> d!144699 (= lt!596748 (ListLongMap!22146 lt!596747))))

(declare-fun lt!596749 () Unit!44151)

(declare-fun lt!596746 () Unit!44151)

(assert (=> d!144699 (= lt!596749 lt!596746)))

(assert (=> d!144699 (= (getValueByKey!726 lt!596747 (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144699 (= lt!596746 (lemmaContainsTupThenGetReturnValue!369 lt!596747 (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) (_2!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144699 (= lt!596747 (insertStrictlySorted!498 (toList!11088 call!65225) (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) (_2!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144699 (= (+!4830 call!65225 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) lt!596748)))

(declare-fun b!1349803 () Bool)

(declare-fun res!895510 () Bool)

(assert (=> b!1349803 (=> (not res!895510) (not e!767883))))

(assert (=> b!1349803 (= res!895510 (= (getValueByKey!726 (toList!11088 lt!596748) (_1!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(declare-fun b!1349804 () Bool)

(assert (=> b!1349804 (= e!767883 (contains!9210 (toList!11088 lt!596748) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(assert (= (and d!144699 res!895511) b!1349803))

(assert (= (and b!1349803 res!895510) b!1349804))

(declare-fun m!1237051 () Bool)

(assert (=> d!144699 m!1237051))

(declare-fun m!1237053 () Bool)

(assert (=> d!144699 m!1237053))

(declare-fun m!1237055 () Bool)

(assert (=> d!144699 m!1237055))

(declare-fun m!1237057 () Bool)

(assert (=> d!144699 m!1237057))

(declare-fun m!1237059 () Bool)

(assert (=> b!1349803 m!1237059))

(declare-fun m!1237061 () Bool)

(assert (=> b!1349804 m!1237061))

(assert (=> b!1349658 d!144699))

(assert (=> b!1349640 d!144647))

(assert (=> bm!65227 d!144673))

(declare-fun d!144701 () Bool)

(assert (=> d!144701 (= (apply!1076 lt!596646 (select (arr!44436 _keys!1571) from!1960)) (get!22500 (getValueByKey!726 (toList!11088 lt!596646) (select (arr!44436 _keys!1571) from!1960))))))

(declare-fun bs!38690 () Bool)

(assert (= bs!38690 d!144701))

(assert (=> bs!38690 m!1236639))

(declare-fun m!1237063 () Bool)

(assert (=> bs!38690 m!1237063))

(assert (=> bs!38690 m!1237063))

(declare-fun m!1237065 () Bool)

(assert (=> bs!38690 m!1237065))

(assert (=> b!1349655 d!144701))

(declare-fun d!144703 () Bool)

(declare-fun c!126610 () Bool)

(assert (=> d!144703 (= c!126610 ((_ is ValueCellFull!17898) (select (arr!44437 _values!1303) from!1960)))))

(declare-fun e!767886 () V!55227)

(assert (=> d!144703 (= (get!22499 (select (arr!44437 _values!1303) from!1960) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) e!767886)))

(declare-fun b!1349809 () Bool)

(declare-fun get!22501 (ValueCell!17898 V!55227) V!55227)

(assert (=> b!1349809 (= e!767886 (get!22501 (select (arr!44437 _values!1303) from!1960) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1349810 () Bool)

(declare-fun get!22502 (ValueCell!17898 V!55227) V!55227)

(assert (=> b!1349810 (= e!767886 (get!22502 (select (arr!44437 _values!1303) from!1960) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144703 c!126610) b!1349809))

(assert (= (and d!144703 (not c!126610)) b!1349810))

(assert (=> b!1349809 m!1236781))

(assert (=> b!1349809 m!1236717))

(declare-fun m!1237067 () Bool)

(assert (=> b!1349809 m!1237067))

(assert (=> b!1349810 m!1236781))

(assert (=> b!1349810 m!1236717))

(declare-fun m!1237069 () Bool)

(assert (=> b!1349810 m!1237069))

(assert (=> b!1349655 d!144703))

(declare-fun d!144705 () Bool)

(declare-fun e!767887 () Bool)

(assert (=> d!144705 e!767887))

(declare-fun res!895513 () Bool)

(assert (=> d!144705 (=> (not res!895513) (not e!767887))))

(declare-fun lt!596752 () ListLongMap!22145)

(assert (=> d!144705 (= res!895513 (contains!9207 lt!596752 (_1!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(declare-fun lt!596751 () List!31644)

(assert (=> d!144705 (= lt!596752 (ListLongMap!22146 lt!596751))))

(declare-fun lt!596753 () Unit!44151)

(declare-fun lt!596750 () Unit!44151)

(assert (=> d!144705 (= lt!596753 lt!596750)))

(assert (=> d!144705 (= (getValueByKey!726 lt!596751 (_1!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))) (Some!776 (_2!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144705 (= lt!596750 (lemmaContainsTupThenGetReturnValue!369 lt!596751 (_1!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (_2!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144705 (= lt!596751 (insertStrictlySorted!498 (toList!11088 (ite c!126571 call!65220 (ite c!126569 call!65217 call!65222))) (_1!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (_2!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144705 (= (+!4830 (ite c!126571 call!65220 (ite c!126569 call!65217 call!65222)) (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) lt!596752)))

(declare-fun b!1349811 () Bool)

(declare-fun res!895512 () Bool)

(assert (=> b!1349811 (=> (not res!895512) (not e!767887))))

(assert (=> b!1349811 (= res!895512 (= (getValueByKey!726 (toList!11088 lt!596752) (_1!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))) (Some!776 (_2!12248 (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))))

(declare-fun b!1349812 () Bool)

(assert (=> b!1349812 (= e!767887 (contains!9210 (toList!11088 lt!596752) (ite (or c!126571 c!126569) (tuple2!24477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (= (and d!144705 res!895513) b!1349811))

(assert (= (and b!1349811 res!895512) b!1349812))

(declare-fun m!1237071 () Bool)

(assert (=> d!144705 m!1237071))

(declare-fun m!1237073 () Bool)

(assert (=> d!144705 m!1237073))

(declare-fun m!1237075 () Bool)

(assert (=> d!144705 m!1237075))

(declare-fun m!1237077 () Bool)

(assert (=> d!144705 m!1237077))

(declare-fun m!1237079 () Bool)

(assert (=> b!1349811 m!1237079))

(declare-fun m!1237081 () Bool)

(assert (=> b!1349812 m!1237081))

(assert (=> bm!65216 d!144705))

(assert (=> b!1349656 d!144615))

(declare-fun d!144707 () Bool)

(declare-fun e!767889 () Bool)

(assert (=> d!144707 e!767889))

(declare-fun res!895514 () Bool)

(assert (=> d!144707 (=> res!895514 e!767889)))

(declare-fun lt!596757 () Bool)

(assert (=> d!144707 (= res!895514 (not lt!596757))))

(declare-fun lt!596755 () Bool)

(assert (=> d!144707 (= lt!596757 lt!596755)))

(declare-fun lt!596754 () Unit!44151)

(declare-fun e!767888 () Unit!44151)

(assert (=> d!144707 (= lt!596754 e!767888)))

(declare-fun c!126611 () Bool)

(assert (=> d!144707 (= c!126611 lt!596755)))

(assert (=> d!144707 (= lt!596755 (containsKey!744 (toList!11088 lt!596620) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144707 (= (contains!9207 lt!596620 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596757)))

(declare-fun b!1349813 () Bool)

(declare-fun lt!596756 () Unit!44151)

(assert (=> b!1349813 (= e!767888 lt!596756)))

(assert (=> b!1349813 (= lt!596756 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 lt!596620) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1349813 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596620) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349814 () Bool)

(declare-fun Unit!44161 () Unit!44151)

(assert (=> b!1349814 (= e!767888 Unit!44161)))

(declare-fun b!1349815 () Bool)

(assert (=> b!1349815 (= e!767889 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596620) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144707 c!126611) b!1349813))

(assert (= (and d!144707 (not c!126611)) b!1349814))

(assert (= (and d!144707 (not res!895514)) b!1349815))

(declare-fun m!1237083 () Bool)

(assert (=> d!144707 m!1237083))

(declare-fun m!1237085 () Bool)

(assert (=> b!1349813 m!1237085))

(assert (=> b!1349813 m!1237023))

(assert (=> b!1349813 m!1237023))

(declare-fun m!1237087 () Bool)

(assert (=> b!1349813 m!1237087))

(assert (=> b!1349815 m!1237023))

(assert (=> b!1349815 m!1237023))

(assert (=> b!1349815 m!1237087))

(assert (=> bm!65218 d!144707))

(assert (=> b!1349573 d!144635))

(declare-fun d!144709 () Bool)

(declare-fun e!767890 () Bool)

(assert (=> d!144709 e!767890))

(declare-fun res!895516 () Bool)

(assert (=> d!144709 (=> (not res!895516) (not e!767890))))

(declare-fun lt!596760 () ListLongMap!22145)

(assert (=> d!144709 (= res!895516 (contains!9207 lt!596760 (_1!12248 (tuple2!24477 lt!596625 zeroValue!1245))))))

(declare-fun lt!596759 () List!31644)

(assert (=> d!144709 (= lt!596760 (ListLongMap!22146 lt!596759))))

(declare-fun lt!596761 () Unit!44151)

(declare-fun lt!596758 () Unit!44151)

(assert (=> d!144709 (= lt!596761 lt!596758)))

(assert (=> d!144709 (= (getValueByKey!726 lt!596759 (_1!12248 (tuple2!24477 lt!596625 zeroValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596625 zeroValue!1245))))))

(assert (=> d!144709 (= lt!596758 (lemmaContainsTupThenGetReturnValue!369 lt!596759 (_1!12248 (tuple2!24477 lt!596625 zeroValue!1245)) (_2!12248 (tuple2!24477 lt!596625 zeroValue!1245))))))

(assert (=> d!144709 (= lt!596759 (insertStrictlySorted!498 (toList!11088 lt!596613) (_1!12248 (tuple2!24477 lt!596625 zeroValue!1245)) (_2!12248 (tuple2!24477 lt!596625 zeroValue!1245))))))

(assert (=> d!144709 (= (+!4830 lt!596613 (tuple2!24477 lt!596625 zeroValue!1245)) lt!596760)))

(declare-fun b!1349816 () Bool)

(declare-fun res!895515 () Bool)

(assert (=> b!1349816 (=> (not res!895515) (not e!767890))))

(assert (=> b!1349816 (= res!895515 (= (getValueByKey!726 (toList!11088 lt!596760) (_1!12248 (tuple2!24477 lt!596625 zeroValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596625 zeroValue!1245)))))))

(declare-fun b!1349817 () Bool)

(assert (=> b!1349817 (= e!767890 (contains!9210 (toList!11088 lt!596760) (tuple2!24477 lt!596625 zeroValue!1245)))))

(assert (= (and d!144709 res!895516) b!1349816))

(assert (= (and b!1349816 res!895515) b!1349817))

(declare-fun m!1237089 () Bool)

(assert (=> d!144709 m!1237089))

(declare-fun m!1237091 () Bool)

(assert (=> d!144709 m!1237091))

(declare-fun m!1237093 () Bool)

(assert (=> d!144709 m!1237093))

(declare-fun m!1237095 () Bool)

(assert (=> d!144709 m!1237095))

(declare-fun m!1237097 () Bool)

(assert (=> b!1349816 m!1237097))

(declare-fun m!1237099 () Bool)

(assert (=> b!1349817 m!1237099))

(assert (=> b!1349627 d!144709))

(declare-fun d!144711 () Bool)

(assert (=> d!144711 (= (apply!1076 lt!596610 lt!596622) (get!22500 (getValueByKey!726 (toList!11088 lt!596610) lt!596622)))))

(declare-fun bs!38691 () Bool)

(assert (= bs!38691 d!144711))

(declare-fun m!1237101 () Bool)

(assert (=> bs!38691 m!1237101))

(assert (=> bs!38691 m!1237101))

(declare-fun m!1237103 () Bool)

(assert (=> bs!38691 m!1237103))

(assert (=> b!1349627 d!144711))

(declare-fun d!144713 () Bool)

(assert (=> d!144713 (= (apply!1076 (+!4830 lt!596618 (tuple2!24477 lt!596616 zeroValue!1245)) lt!596609) (apply!1076 lt!596618 lt!596609))))

(declare-fun lt!596762 () Unit!44151)

(assert (=> d!144713 (= lt!596762 (choose!1995 lt!596618 lt!596616 zeroValue!1245 lt!596609))))

(declare-fun e!767891 () Bool)

(assert (=> d!144713 e!767891))

(declare-fun res!895517 () Bool)

(assert (=> d!144713 (=> (not res!895517) (not e!767891))))

(assert (=> d!144713 (= res!895517 (contains!9207 lt!596618 lt!596609))))

(assert (=> d!144713 (= (addApplyDifferent!579 lt!596618 lt!596616 zeroValue!1245 lt!596609) lt!596762)))

(declare-fun b!1349818 () Bool)

(assert (=> b!1349818 (= e!767891 (not (= lt!596609 lt!596616)))))

(assert (= (and d!144713 res!895517) b!1349818))

(assert (=> d!144713 m!1236739))

(declare-fun m!1237105 () Bool)

(assert (=> d!144713 m!1237105))

(assert (=> d!144713 m!1236739))

(assert (=> d!144713 m!1236741))

(assert (=> d!144713 m!1236763))

(declare-fun m!1237107 () Bool)

(assert (=> d!144713 m!1237107))

(assert (=> b!1349627 d!144713))

(declare-fun d!144715 () Bool)

(declare-fun e!767892 () Bool)

(assert (=> d!144715 e!767892))

(declare-fun res!895519 () Bool)

(assert (=> d!144715 (=> (not res!895519) (not e!767892))))

(declare-fun lt!596765 () ListLongMap!22145)

(assert (=> d!144715 (= res!895519 (contains!9207 lt!596765 (_1!12248 (tuple2!24477 lt!596621 minValue!1245))))))

(declare-fun lt!596764 () List!31644)

(assert (=> d!144715 (= lt!596765 (ListLongMap!22146 lt!596764))))

(declare-fun lt!596766 () Unit!44151)

(declare-fun lt!596763 () Unit!44151)

(assert (=> d!144715 (= lt!596766 lt!596763)))

(assert (=> d!144715 (= (getValueByKey!726 lt!596764 (_1!12248 (tuple2!24477 lt!596621 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596621 minValue!1245))))))

(assert (=> d!144715 (= lt!596763 (lemmaContainsTupThenGetReturnValue!369 lt!596764 (_1!12248 (tuple2!24477 lt!596621 minValue!1245)) (_2!12248 (tuple2!24477 lt!596621 minValue!1245))))))

(assert (=> d!144715 (= lt!596764 (insertStrictlySorted!498 (toList!11088 lt!596610) (_1!12248 (tuple2!24477 lt!596621 minValue!1245)) (_2!12248 (tuple2!24477 lt!596621 minValue!1245))))))

(assert (=> d!144715 (= (+!4830 lt!596610 (tuple2!24477 lt!596621 minValue!1245)) lt!596765)))

(declare-fun b!1349819 () Bool)

(declare-fun res!895518 () Bool)

(assert (=> b!1349819 (=> (not res!895518) (not e!767892))))

(assert (=> b!1349819 (= res!895518 (= (getValueByKey!726 (toList!11088 lt!596765) (_1!12248 (tuple2!24477 lt!596621 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596621 minValue!1245)))))))

(declare-fun b!1349820 () Bool)

(assert (=> b!1349820 (= e!767892 (contains!9210 (toList!11088 lt!596765) (tuple2!24477 lt!596621 minValue!1245)))))

(assert (= (and d!144715 res!895519) b!1349819))

(assert (= (and b!1349819 res!895518) b!1349820))

(declare-fun m!1237109 () Bool)

(assert (=> d!144715 m!1237109))

(declare-fun m!1237111 () Bool)

(assert (=> d!144715 m!1237111))

(declare-fun m!1237113 () Bool)

(assert (=> d!144715 m!1237113))

(declare-fun m!1237115 () Bool)

(assert (=> d!144715 m!1237115))

(declare-fun m!1237117 () Bool)

(assert (=> b!1349819 m!1237117))

(declare-fun m!1237119 () Bool)

(assert (=> b!1349820 m!1237119))

(assert (=> b!1349627 d!144715))

(declare-fun d!144717 () Bool)

(assert (=> d!144717 (= (apply!1076 (+!4830 lt!596618 (tuple2!24477 lt!596616 zeroValue!1245)) lt!596609) (get!22500 (getValueByKey!726 (toList!11088 (+!4830 lt!596618 (tuple2!24477 lt!596616 zeroValue!1245))) lt!596609)))))

(declare-fun bs!38692 () Bool)

(assert (= bs!38692 d!144717))

(declare-fun m!1237121 () Bool)

(assert (=> bs!38692 m!1237121))

(assert (=> bs!38692 m!1237121))

(declare-fun m!1237123 () Bool)

(assert (=> bs!38692 m!1237123))

(assert (=> b!1349627 d!144717))

(declare-fun d!144719 () Bool)

(declare-fun e!767893 () Bool)

(assert (=> d!144719 e!767893))

(declare-fun res!895521 () Bool)

(assert (=> d!144719 (=> (not res!895521) (not e!767893))))

(declare-fun lt!596769 () ListLongMap!22145)

(assert (=> d!144719 (= res!895521 (contains!9207 lt!596769 (_1!12248 (tuple2!24477 lt!596617 minValue!1245))))))

(declare-fun lt!596768 () List!31644)

(assert (=> d!144719 (= lt!596769 (ListLongMap!22146 lt!596768))))

(declare-fun lt!596770 () Unit!44151)

(declare-fun lt!596767 () Unit!44151)

(assert (=> d!144719 (= lt!596770 lt!596767)))

(assert (=> d!144719 (= (getValueByKey!726 lt!596768 (_1!12248 (tuple2!24477 lt!596617 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596617 minValue!1245))))))

(assert (=> d!144719 (= lt!596767 (lemmaContainsTupThenGetReturnValue!369 lt!596768 (_1!12248 (tuple2!24477 lt!596617 minValue!1245)) (_2!12248 (tuple2!24477 lt!596617 minValue!1245))))))

(assert (=> d!144719 (= lt!596768 (insertStrictlySorted!498 (toList!11088 lt!596627) (_1!12248 (tuple2!24477 lt!596617 minValue!1245)) (_2!12248 (tuple2!24477 lt!596617 minValue!1245))))))

(assert (=> d!144719 (= (+!4830 lt!596627 (tuple2!24477 lt!596617 minValue!1245)) lt!596769)))

(declare-fun b!1349821 () Bool)

(declare-fun res!895520 () Bool)

(assert (=> b!1349821 (=> (not res!895520) (not e!767893))))

(assert (=> b!1349821 (= res!895520 (= (getValueByKey!726 (toList!11088 lt!596769) (_1!12248 (tuple2!24477 lt!596617 minValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596617 minValue!1245)))))))

(declare-fun b!1349822 () Bool)

(assert (=> b!1349822 (= e!767893 (contains!9210 (toList!11088 lt!596769) (tuple2!24477 lt!596617 minValue!1245)))))

(assert (= (and d!144719 res!895521) b!1349821))

(assert (= (and b!1349821 res!895520) b!1349822))

(declare-fun m!1237125 () Bool)

(assert (=> d!144719 m!1237125))

(declare-fun m!1237127 () Bool)

(assert (=> d!144719 m!1237127))

(declare-fun m!1237129 () Bool)

(assert (=> d!144719 m!1237129))

(declare-fun m!1237131 () Bool)

(assert (=> d!144719 m!1237131))

(declare-fun m!1237133 () Bool)

(assert (=> b!1349821 m!1237133))

(declare-fun m!1237135 () Bool)

(assert (=> b!1349822 m!1237135))

(assert (=> b!1349627 d!144719))

(declare-fun d!144721 () Bool)

(assert (=> d!144721 (= (apply!1076 (+!4830 lt!596610 (tuple2!24477 lt!596621 minValue!1245)) lt!596622) (get!22500 (getValueByKey!726 (toList!11088 (+!4830 lt!596610 (tuple2!24477 lt!596621 minValue!1245))) lt!596622)))))

(declare-fun bs!38693 () Bool)

(assert (= bs!38693 d!144721))

(declare-fun m!1237137 () Bool)

(assert (=> bs!38693 m!1237137))

(assert (=> bs!38693 m!1237137))

(declare-fun m!1237139 () Bool)

(assert (=> bs!38693 m!1237139))

(assert (=> b!1349627 d!144721))

(declare-fun d!144723 () Bool)

(assert (=> d!144723 (= (apply!1076 (+!4830 lt!596627 (tuple2!24477 lt!596617 minValue!1245)) lt!596628) (get!22500 (getValueByKey!726 (toList!11088 (+!4830 lt!596627 (tuple2!24477 lt!596617 minValue!1245))) lt!596628)))))

(declare-fun bs!38694 () Bool)

(assert (= bs!38694 d!144723))

(declare-fun m!1237141 () Bool)

(assert (=> bs!38694 m!1237141))

(assert (=> bs!38694 m!1237141))

(declare-fun m!1237143 () Bool)

(assert (=> bs!38694 m!1237143))

(assert (=> b!1349627 d!144723))

(declare-fun d!144725 () Bool)

(assert (=> d!144725 (= (apply!1076 (+!4830 lt!596610 (tuple2!24477 lt!596621 minValue!1245)) lt!596622) (apply!1076 lt!596610 lt!596622))))

(declare-fun lt!596771 () Unit!44151)

(assert (=> d!144725 (= lt!596771 (choose!1995 lt!596610 lt!596621 minValue!1245 lt!596622))))

(declare-fun e!767894 () Bool)

(assert (=> d!144725 e!767894))

(declare-fun res!895522 () Bool)

(assert (=> d!144725 (=> (not res!895522) (not e!767894))))

(assert (=> d!144725 (= res!895522 (contains!9207 lt!596610 lt!596622))))

(assert (=> d!144725 (= (addApplyDifferent!579 lt!596610 lt!596621 minValue!1245 lt!596622) lt!596771)))

(declare-fun b!1349823 () Bool)

(assert (=> b!1349823 (= e!767894 (not (= lt!596622 lt!596621)))))

(assert (= (and d!144725 res!895522) b!1349823))

(assert (=> d!144725 m!1236737))

(declare-fun m!1237145 () Bool)

(assert (=> d!144725 m!1237145))

(assert (=> d!144725 m!1236737))

(assert (=> d!144725 m!1236759))

(assert (=> d!144725 m!1236751))

(declare-fun m!1237147 () Bool)

(assert (=> d!144725 m!1237147))

(assert (=> b!1349627 d!144725))

(declare-fun d!144727 () Bool)

(declare-fun e!767896 () Bool)

(assert (=> d!144727 e!767896))

(declare-fun res!895523 () Bool)

(assert (=> d!144727 (=> res!895523 e!767896)))

(declare-fun lt!596775 () Bool)

(assert (=> d!144727 (= res!895523 (not lt!596775))))

(declare-fun lt!596773 () Bool)

(assert (=> d!144727 (= lt!596775 lt!596773)))

(declare-fun lt!596772 () Unit!44151)

(declare-fun e!767895 () Unit!44151)

(assert (=> d!144727 (= lt!596772 e!767895)))

(declare-fun c!126612 () Bool)

(assert (=> d!144727 (= c!126612 lt!596773)))

(assert (=> d!144727 (= lt!596773 (containsKey!744 (toList!11088 (+!4830 lt!596613 (tuple2!24477 lt!596625 zeroValue!1245))) lt!596611))))

(assert (=> d!144727 (= (contains!9207 (+!4830 lt!596613 (tuple2!24477 lt!596625 zeroValue!1245)) lt!596611) lt!596775)))

(declare-fun b!1349824 () Bool)

(declare-fun lt!596774 () Unit!44151)

(assert (=> b!1349824 (= e!767895 lt!596774)))

(assert (=> b!1349824 (= lt!596774 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 (+!4830 lt!596613 (tuple2!24477 lt!596625 zeroValue!1245))) lt!596611))))

(assert (=> b!1349824 (isDefined!529 (getValueByKey!726 (toList!11088 (+!4830 lt!596613 (tuple2!24477 lt!596625 zeroValue!1245))) lt!596611))))

(declare-fun b!1349825 () Bool)

(declare-fun Unit!44162 () Unit!44151)

(assert (=> b!1349825 (= e!767895 Unit!44162)))

(declare-fun b!1349826 () Bool)

(assert (=> b!1349826 (= e!767896 (isDefined!529 (getValueByKey!726 (toList!11088 (+!4830 lt!596613 (tuple2!24477 lt!596625 zeroValue!1245))) lt!596611)))))

(assert (= (and d!144727 c!126612) b!1349824))

(assert (= (and d!144727 (not c!126612)) b!1349825))

(assert (= (and d!144727 (not res!895523)) b!1349826))

(declare-fun m!1237149 () Bool)

(assert (=> d!144727 m!1237149))

(declare-fun m!1237151 () Bool)

(assert (=> b!1349824 m!1237151))

(declare-fun m!1237153 () Bool)

(assert (=> b!1349824 m!1237153))

(assert (=> b!1349824 m!1237153))

(declare-fun m!1237155 () Bool)

(assert (=> b!1349824 m!1237155))

(assert (=> b!1349826 m!1237153))

(assert (=> b!1349826 m!1237153))

(assert (=> b!1349826 m!1237155))

(assert (=> b!1349627 d!144727))

(declare-fun d!144729 () Bool)

(assert (=> d!144729 (= (apply!1076 lt!596618 lt!596609) (get!22500 (getValueByKey!726 (toList!11088 lt!596618) lt!596609)))))

(declare-fun bs!38695 () Bool)

(assert (= bs!38695 d!144729))

(declare-fun m!1237157 () Bool)

(assert (=> bs!38695 m!1237157))

(assert (=> bs!38695 m!1237157))

(declare-fun m!1237159 () Bool)

(assert (=> bs!38695 m!1237159))

(assert (=> b!1349627 d!144729))

(declare-fun d!144731 () Bool)

(declare-fun e!767897 () Bool)

(assert (=> d!144731 e!767897))

(declare-fun res!895525 () Bool)

(assert (=> d!144731 (=> (not res!895525) (not e!767897))))

(declare-fun lt!596778 () ListLongMap!22145)

(assert (=> d!144731 (= res!895525 (contains!9207 lt!596778 (_1!12248 (tuple2!24477 lt!596616 zeroValue!1245))))))

(declare-fun lt!596777 () List!31644)

(assert (=> d!144731 (= lt!596778 (ListLongMap!22146 lt!596777))))

(declare-fun lt!596779 () Unit!44151)

(declare-fun lt!596776 () Unit!44151)

(assert (=> d!144731 (= lt!596779 lt!596776)))

(assert (=> d!144731 (= (getValueByKey!726 lt!596777 (_1!12248 (tuple2!24477 lt!596616 zeroValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596616 zeroValue!1245))))))

(assert (=> d!144731 (= lt!596776 (lemmaContainsTupThenGetReturnValue!369 lt!596777 (_1!12248 (tuple2!24477 lt!596616 zeroValue!1245)) (_2!12248 (tuple2!24477 lt!596616 zeroValue!1245))))))

(assert (=> d!144731 (= lt!596777 (insertStrictlySorted!498 (toList!11088 lt!596618) (_1!12248 (tuple2!24477 lt!596616 zeroValue!1245)) (_2!12248 (tuple2!24477 lt!596616 zeroValue!1245))))))

(assert (=> d!144731 (= (+!4830 lt!596618 (tuple2!24477 lt!596616 zeroValue!1245)) lt!596778)))

(declare-fun b!1349827 () Bool)

(declare-fun res!895524 () Bool)

(assert (=> b!1349827 (=> (not res!895524) (not e!767897))))

(assert (=> b!1349827 (= res!895524 (= (getValueByKey!726 (toList!11088 lt!596778) (_1!12248 (tuple2!24477 lt!596616 zeroValue!1245))) (Some!776 (_2!12248 (tuple2!24477 lt!596616 zeroValue!1245)))))))

(declare-fun b!1349828 () Bool)

(assert (=> b!1349828 (= e!767897 (contains!9210 (toList!11088 lt!596778) (tuple2!24477 lt!596616 zeroValue!1245)))))

(assert (= (and d!144731 res!895525) b!1349827))

(assert (= (and b!1349827 res!895524) b!1349828))

(declare-fun m!1237161 () Bool)

(assert (=> d!144731 m!1237161))

(declare-fun m!1237163 () Bool)

(assert (=> d!144731 m!1237163))

(declare-fun m!1237165 () Bool)

(assert (=> d!144731 m!1237165))

(declare-fun m!1237167 () Bool)

(assert (=> d!144731 m!1237167))

(declare-fun m!1237169 () Bool)

(assert (=> b!1349827 m!1237169))

(declare-fun m!1237171 () Bool)

(assert (=> b!1349828 m!1237171))

(assert (=> b!1349627 d!144731))

(declare-fun d!144733 () Bool)

(assert (=> d!144733 (= (apply!1076 (+!4830 lt!596627 (tuple2!24477 lt!596617 minValue!1245)) lt!596628) (apply!1076 lt!596627 lt!596628))))

(declare-fun lt!596780 () Unit!44151)

(assert (=> d!144733 (= lt!596780 (choose!1995 lt!596627 lt!596617 minValue!1245 lt!596628))))

(declare-fun e!767898 () Bool)

(assert (=> d!144733 e!767898))

(declare-fun res!895526 () Bool)

(assert (=> d!144733 (=> (not res!895526) (not e!767898))))

(assert (=> d!144733 (= res!895526 (contains!9207 lt!596627 lt!596628))))

(assert (=> d!144733 (= (addApplyDifferent!579 lt!596627 lt!596617 minValue!1245 lt!596628) lt!596780)))

(declare-fun b!1349829 () Bool)

(assert (=> b!1349829 (= e!767898 (not (= lt!596628 lt!596617)))))

(assert (= (and d!144733 res!895526) b!1349829))

(assert (=> d!144733 m!1236743))

(declare-fun m!1237173 () Bool)

(assert (=> d!144733 m!1237173))

(assert (=> d!144733 m!1236743))

(assert (=> d!144733 m!1236753))

(assert (=> d!144733 m!1236755))

(declare-fun m!1237175 () Bool)

(assert (=> d!144733 m!1237175))

(assert (=> b!1349627 d!144733))

(declare-fun d!144735 () Bool)

(assert (=> d!144735 (contains!9207 (+!4830 lt!596613 (tuple2!24477 lt!596625 zeroValue!1245)) lt!596611)))

(declare-fun lt!596781 () Unit!44151)

(assert (=> d!144735 (= lt!596781 (choose!1994 lt!596613 lt!596625 zeroValue!1245 lt!596611))))

(assert (=> d!144735 (contains!9207 lt!596613 lt!596611)))

(assert (=> d!144735 (= (addStillContains!1221 lt!596613 lt!596625 zeroValue!1245 lt!596611) lt!596781)))

(declare-fun bs!38696 () Bool)

(assert (= bs!38696 d!144735))

(assert (=> bs!38696 m!1236747))

(assert (=> bs!38696 m!1236747))

(assert (=> bs!38696 m!1236749))

(declare-fun m!1237177 () Bool)

(assert (=> bs!38696 m!1237177))

(declare-fun m!1237179 () Bool)

(assert (=> bs!38696 m!1237179))

(assert (=> b!1349627 d!144735))

(declare-fun d!144737 () Bool)

(assert (=> d!144737 (= (apply!1076 lt!596627 lt!596628) (get!22500 (getValueByKey!726 (toList!11088 lt!596627) lt!596628)))))

(declare-fun bs!38697 () Bool)

(assert (= bs!38697 d!144737))

(declare-fun m!1237181 () Bool)

(assert (=> bs!38697 m!1237181))

(assert (=> bs!38697 m!1237181))

(declare-fun m!1237183 () Bool)

(assert (=> bs!38697 m!1237183))

(assert (=> b!1349627 d!144737))

(assert (=> b!1349627 d!144649))

(declare-fun d!144739 () Bool)

(declare-fun e!767900 () Bool)

(assert (=> d!144739 e!767900))

(declare-fun res!895527 () Bool)

(assert (=> d!144739 (=> res!895527 e!767900)))

(declare-fun lt!596785 () Bool)

(assert (=> d!144739 (= res!895527 (not lt!596785))))

(declare-fun lt!596783 () Bool)

(assert (=> d!144739 (= lt!596785 lt!596783)))

(declare-fun lt!596782 () Unit!44151)

(declare-fun e!767899 () Unit!44151)

(assert (=> d!144739 (= lt!596782 e!767899)))

(declare-fun c!126613 () Bool)

(assert (=> d!144739 (= c!126613 lt!596783)))

(assert (=> d!144739 (= lt!596783 (containsKey!744 (toList!11088 lt!596646) (select (arr!44436 _keys!1571) from!1960)))))

(assert (=> d!144739 (= (contains!9207 lt!596646 (select (arr!44436 _keys!1571) from!1960)) lt!596785)))

(declare-fun b!1349830 () Bool)

(declare-fun lt!596784 () Unit!44151)

(assert (=> b!1349830 (= e!767899 lt!596784)))

(assert (=> b!1349830 (= lt!596784 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 lt!596646) (select (arr!44436 _keys!1571) from!1960)))))

(assert (=> b!1349830 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596646) (select (arr!44436 _keys!1571) from!1960)))))

(declare-fun b!1349831 () Bool)

(declare-fun Unit!44163 () Unit!44151)

(assert (=> b!1349831 (= e!767899 Unit!44163)))

(declare-fun b!1349832 () Bool)

(assert (=> b!1349832 (= e!767900 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596646) (select (arr!44436 _keys!1571) from!1960))))))

(assert (= (and d!144739 c!126613) b!1349830))

(assert (= (and d!144739 (not c!126613)) b!1349831))

(assert (= (and d!144739 (not res!895527)) b!1349832))

(assert (=> d!144739 m!1236639))

(declare-fun m!1237185 () Bool)

(assert (=> d!144739 m!1237185))

(assert (=> b!1349830 m!1236639))

(declare-fun m!1237187 () Bool)

(assert (=> b!1349830 m!1237187))

(assert (=> b!1349830 m!1236639))

(assert (=> b!1349830 m!1237063))

(assert (=> b!1349830 m!1237063))

(declare-fun m!1237189 () Bool)

(assert (=> b!1349830 m!1237189))

(assert (=> b!1349832 m!1236639))

(assert (=> b!1349832 m!1237063))

(assert (=> b!1349832 m!1237063))

(assert (=> b!1349832 m!1237189))

(assert (=> b!1349662 d!144739))

(declare-fun b!1349833 () Bool)

(declare-fun e!767902 () Bool)

(declare-fun e!767901 () Bool)

(assert (=> b!1349833 (= e!767902 e!767901)))

(declare-fun lt!596788 () (_ BitVec 64))

(assert (=> b!1349833 (= lt!596788 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!596787 () Unit!44151)

(assert (=> b!1349833 (= lt!596787 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!596788 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1349833 (arrayContainsKey!0 _keys!1571 lt!596788 #b00000000000000000000000000000000)))

(declare-fun lt!596786 () Unit!44151)

(assert (=> b!1349833 (= lt!596786 lt!596787)))

(declare-fun res!895528 () Bool)

(assert (=> b!1349833 (= res!895528 (= (seekEntryOrOpen!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1571 mask!1977) (Found!10057 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1349833 (=> (not res!895528) (not e!767901))))

(declare-fun d!144741 () Bool)

(declare-fun res!895529 () Bool)

(declare-fun e!767903 () Bool)

(assert (=> d!144741 (=> res!895529 e!767903)))

(assert (=> d!144741 (= res!895529 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44987 _keys!1571)))))

(assert (=> d!144741 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977) e!767903)))

(declare-fun bm!65233 () Bool)

(declare-fun call!65236 () Bool)

(assert (=> bm!65233 (= call!65236 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun b!1349834 () Bool)

(assert (=> b!1349834 (= e!767901 call!65236)))

(declare-fun b!1349835 () Bool)

(assert (=> b!1349835 (= e!767903 e!767902)))

(declare-fun c!126614 () Bool)

(assert (=> b!1349835 (= c!126614 (validKeyInArray!0 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1349836 () Bool)

(assert (=> b!1349836 (= e!767902 call!65236)))

(assert (= (and d!144741 (not res!895529)) b!1349835))

(assert (= (and b!1349835 c!126614) b!1349833))

(assert (= (and b!1349835 (not c!126614)) b!1349836))

(assert (= (and b!1349833 res!895528) b!1349834))

(assert (= (or b!1349834 b!1349836) bm!65233))

(assert (=> b!1349833 m!1236859))

(declare-fun m!1237191 () Bool)

(assert (=> b!1349833 m!1237191))

(declare-fun m!1237193 () Bool)

(assert (=> b!1349833 m!1237193))

(assert (=> b!1349833 m!1236859))

(declare-fun m!1237195 () Bool)

(assert (=> b!1349833 m!1237195))

(declare-fun m!1237197 () Bool)

(assert (=> bm!65233 m!1237197))

(assert (=> b!1349835 m!1236859))

(assert (=> b!1349835 m!1236859))

(assert (=> b!1349835 m!1236861))

(assert (=> bm!65199 d!144741))

(declare-fun d!144743 () Bool)

(assert (=> d!144743 (= (apply!1076 lt!596620 (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22500 (getValueByKey!726 (toList!11088 lt!596620) (select (arr!44436 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))))

(declare-fun bs!38698 () Bool)

(assert (= bs!38698 d!144743))

(assert (=> bs!38698 m!1236707))

(assert (=> bs!38698 m!1237039))

(assert (=> bs!38698 m!1237039))

(declare-fun m!1237199 () Bool)

(assert (=> bs!38698 m!1237199))

(assert (=> b!1349629 d!144743))

(declare-fun d!144745 () Bool)

(declare-fun c!126615 () Bool)

(assert (=> d!144745 (= c!126615 ((_ is ValueCellFull!17898) (select (arr!44437 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun e!767904 () V!55227)

(assert (=> d!144745 (= (get!22499 (select (arr!44437 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) e!767904)))

(declare-fun b!1349837 () Bool)

(assert (=> b!1349837 (= e!767904 (get!22501 (select (arr!44437 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1349838 () Bool)

(assert (=> b!1349838 (= e!767904 (get!22502 (select (arr!44437 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3867 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144745 c!126615) b!1349837))

(assert (= (and d!144745 (not c!126615)) b!1349838))

(assert (=> b!1349837 m!1236721))

(assert (=> b!1349837 m!1236717))

(declare-fun m!1237201 () Bool)

(assert (=> b!1349837 m!1237201))

(assert (=> b!1349838 m!1236721))

(assert (=> b!1349838 m!1236717))

(declare-fun m!1237203 () Bool)

(assert (=> b!1349838 m!1237203))

(assert (=> b!1349629 d!144745))

(declare-fun d!144747 () Bool)

(assert (=> d!144747 (= (apply!1076 lt!596646 #b1000000000000000000000000000000000000000000000000000000000000000) (get!22500 (getValueByKey!726 (toList!11088 lt!596646) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38699 () Bool)

(assert (= bs!38699 d!144747))

(assert (=> bs!38699 m!1237031))

(assert (=> bs!38699 m!1237031))

(declare-fun m!1237205 () Bool)

(assert (=> bs!38699 m!1237205))

(assert (=> b!1349663 d!144747))

(declare-fun d!144749 () Bool)

(assert (=> d!144749 (= (apply!1076 lt!596620 #b0000000000000000000000000000000000000000000000000000000000000000) (get!22500 (getValueByKey!726 (toList!11088 lt!596620) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38700 () Bool)

(assert (= bs!38700 d!144749))

(declare-fun m!1237207 () Bool)

(assert (=> bs!38700 m!1237207))

(assert (=> bs!38700 m!1237207))

(declare-fun m!1237209 () Bool)

(assert (=> bs!38700 m!1237209))

(assert (=> b!1349628 d!144749))

(declare-fun d!144751 () Bool)

(assert (=> d!144751 (arrayContainsKey!0 _keys!1571 lt!596550 #b00000000000000000000000000000000)))

(declare-fun lt!596791 () Unit!44151)

(declare-fun choose!13 (array!91977 (_ BitVec 64) (_ BitVec 32)) Unit!44151)

(assert (=> d!144751 (= lt!596791 (choose!13 _keys!1571 lt!596550 #b00000000000000000000000000000000))))

(assert (=> d!144751 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!144751 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!596550 #b00000000000000000000000000000000) lt!596791)))

(declare-fun bs!38701 () Bool)

(assert (= bs!38701 d!144751))

(assert (=> bs!38701 m!1236693))

(declare-fun m!1237211 () Bool)

(assert (=> bs!38701 m!1237211))

(assert (=> b!1349571 d!144751))

(declare-fun d!144753 () Bool)

(declare-fun res!895534 () Bool)

(declare-fun e!767909 () Bool)

(assert (=> d!144753 (=> res!895534 e!767909)))

(assert (=> d!144753 (= res!895534 (= (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) lt!596550))))

(assert (=> d!144753 (= (arrayContainsKey!0 _keys!1571 lt!596550 #b00000000000000000000000000000000) e!767909)))

(declare-fun b!1349843 () Bool)

(declare-fun e!767910 () Bool)

(assert (=> b!1349843 (= e!767909 e!767910)))

(declare-fun res!895535 () Bool)

(assert (=> b!1349843 (=> (not res!895535) (not e!767910))))

(assert (=> b!1349843 (= res!895535 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44987 _keys!1571)))))

(declare-fun b!1349844 () Bool)

(assert (=> b!1349844 (= e!767910 (arrayContainsKey!0 _keys!1571 lt!596550 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!144753 (not res!895534)) b!1349843))

(assert (= (and b!1349843 res!895535) b!1349844))

(assert (=> d!144753 m!1236683))

(declare-fun m!1237213 () Bool)

(assert (=> b!1349844 m!1237213))

(assert (=> b!1349571 d!144753))

(declare-fun b!1349857 () Bool)

(declare-fun e!767917 () SeekEntryResult!10057)

(declare-fun lt!596800 () SeekEntryResult!10057)

(assert (=> b!1349857 (= e!767917 (Found!10057 (index!42600 lt!596800)))))

(declare-fun b!1349858 () Bool)

(declare-fun e!767919 () SeekEntryResult!10057)

(assert (=> b!1349858 (= e!767919 e!767917)))

(declare-fun lt!596798 () (_ BitVec 64))

(assert (=> b!1349858 (= lt!596798 (select (arr!44436 _keys!1571) (index!42600 lt!596800)))))

(declare-fun c!126623 () Bool)

(assert (=> b!1349858 (= c!126623 (= lt!596798 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun d!144755 () Bool)

(declare-fun lt!596799 () SeekEntryResult!10057)

(assert (=> d!144755 (and (or ((_ is Undefined!10057) lt!596799) (not ((_ is Found!10057) lt!596799)) (and (bvsge (index!42599 lt!596799) #b00000000000000000000000000000000) (bvslt (index!42599 lt!596799) (size!44987 _keys!1571)))) (or ((_ is Undefined!10057) lt!596799) ((_ is Found!10057) lt!596799) (not ((_ is MissingZero!10057) lt!596799)) (and (bvsge (index!42598 lt!596799) #b00000000000000000000000000000000) (bvslt (index!42598 lt!596799) (size!44987 _keys!1571)))) (or ((_ is Undefined!10057) lt!596799) ((_ is Found!10057) lt!596799) ((_ is MissingZero!10057) lt!596799) (not ((_ is MissingVacant!10057) lt!596799)) (and (bvsge (index!42601 lt!596799) #b00000000000000000000000000000000) (bvslt (index!42601 lt!596799) (size!44987 _keys!1571)))) (or ((_ is Undefined!10057) lt!596799) (ite ((_ is Found!10057) lt!596799) (= (select (arr!44436 _keys!1571) (index!42599 lt!596799)) (select (arr!44436 _keys!1571) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10057) lt!596799) (= (select (arr!44436 _keys!1571) (index!42598 lt!596799)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10057) lt!596799) (= (select (arr!44436 _keys!1571) (index!42601 lt!596799)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144755 (= lt!596799 e!767919)))

(declare-fun c!126624 () Bool)

(assert (=> d!144755 (= c!126624 (and ((_ is Intermediate!10057) lt!596800) (undefined!10869 lt!596800)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!91977 (_ BitVec 32)) SeekEntryResult!10057)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!144755 (= lt!596800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) mask!1977) (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977))))

(assert (=> d!144755 (validMask!0 mask!1977)))

(assert (=> d!144755 (= (seekEntryOrOpen!0 (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) lt!596799)))

(declare-fun e!767918 () SeekEntryResult!10057)

(declare-fun b!1349859 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!91977 (_ BitVec 32)) SeekEntryResult!10057)

(assert (=> b!1349859 (= e!767918 (seekKeyOrZeroReturnVacant!0 (x!120771 lt!596800) (index!42600 lt!596800) (index!42600 lt!596800) (select (arr!44436 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977))))

(declare-fun b!1349860 () Bool)

(declare-fun c!126622 () Bool)

(assert (=> b!1349860 (= c!126622 (= lt!596798 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1349860 (= e!767917 e!767918)))

(declare-fun b!1349861 () Bool)

(assert (=> b!1349861 (= e!767919 Undefined!10057)))

(declare-fun b!1349862 () Bool)

(assert (=> b!1349862 (= e!767918 (MissingZero!10057 (index!42600 lt!596800)))))

(assert (= (and d!144755 c!126624) b!1349861))

(assert (= (and d!144755 (not c!126624)) b!1349858))

(assert (= (and b!1349858 c!126623) b!1349857))

(assert (= (and b!1349858 (not c!126623)) b!1349860))

(assert (= (and b!1349860 c!126622) b!1349862))

(assert (= (and b!1349860 (not c!126622)) b!1349859))

(declare-fun m!1237215 () Bool)

(assert (=> b!1349858 m!1237215))

(assert (=> d!144755 m!1236643))

(declare-fun m!1237217 () Bool)

(assert (=> d!144755 m!1237217))

(assert (=> d!144755 m!1236683))

(declare-fun m!1237219 () Bool)

(assert (=> d!144755 m!1237219))

(declare-fun m!1237221 () Bool)

(assert (=> d!144755 m!1237221))

(assert (=> d!144755 m!1237219))

(assert (=> d!144755 m!1236683))

(declare-fun m!1237223 () Bool)

(assert (=> d!144755 m!1237223))

(declare-fun m!1237225 () Bool)

(assert (=> d!144755 m!1237225))

(assert (=> b!1349859 m!1236683))

(declare-fun m!1237227 () Bool)

(assert (=> b!1349859 m!1237227))

(assert (=> b!1349571 d!144755))

(declare-fun d!144757 () Bool)

(declare-fun e!767921 () Bool)

(assert (=> d!144757 e!767921))

(declare-fun res!895536 () Bool)

(assert (=> d!144757 (=> res!895536 e!767921)))

(declare-fun lt!596804 () Bool)

(assert (=> d!144757 (= res!895536 (not lt!596804))))

(declare-fun lt!596802 () Bool)

(assert (=> d!144757 (= lt!596804 lt!596802)))

(declare-fun lt!596801 () Unit!44151)

(declare-fun e!767920 () Unit!44151)

(assert (=> d!144757 (= lt!596801 e!767920)))

(declare-fun c!126625 () Bool)

(assert (=> d!144757 (= c!126625 lt!596802)))

(assert (=> d!144757 (= lt!596802 (containsKey!744 (toList!11088 lt!596620) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144757 (= (contains!9207 lt!596620 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596804)))

(declare-fun b!1349863 () Bool)

(declare-fun lt!596803 () Unit!44151)

(assert (=> b!1349863 (= e!767920 lt!596803)))

(assert (=> b!1349863 (= lt!596803 (lemmaContainsKeyImpliesGetValueByKeyDefined!489 (toList!11088 lt!596620) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1349863 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596620) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349864 () Bool)

(declare-fun Unit!44164 () Unit!44151)

(assert (=> b!1349864 (= e!767920 Unit!44164)))

(declare-fun b!1349865 () Bool)

(assert (=> b!1349865 (= e!767921 (isDefined!529 (getValueByKey!726 (toList!11088 lt!596620) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144757 c!126625) b!1349863))

(assert (= (and d!144757 (not c!126625)) b!1349864))

(assert (= (and d!144757 (not res!895536)) b!1349865))

(declare-fun m!1237229 () Bool)

(assert (=> d!144757 m!1237229))

(declare-fun m!1237231 () Bool)

(assert (=> b!1349863 m!1237231))

(assert (=> b!1349863 m!1237207))

(assert (=> b!1349863 m!1237207))

(declare-fun m!1237233 () Bool)

(assert (=> b!1349863 m!1237233))

(assert (=> b!1349865 m!1237207))

(assert (=> b!1349865 m!1237207))

(assert (=> b!1349865 m!1237233))

(assert (=> bm!65217 d!144757))

(declare-fun b!1349867 () Bool)

(declare-fun e!767923 () Bool)

(assert (=> b!1349867 (= e!767923 tp_is_empty!37593)))

(declare-fun b!1349866 () Bool)

(declare-fun e!767922 () Bool)

(assert (=> b!1349866 (= e!767922 tp_is_empty!37593)))

(declare-fun condMapEmpty!58117 () Bool)

(declare-fun mapDefault!58117 () ValueCell!17898)

(assert (=> mapNonEmpty!58116 (= condMapEmpty!58117 (= mapRest!58116 ((as const (Array (_ BitVec 32) ValueCell!17898)) mapDefault!58117)))))

(declare-fun mapRes!58117 () Bool)

(assert (=> mapNonEmpty!58116 (= tp!110608 (and e!767923 mapRes!58117))))

(declare-fun mapNonEmpty!58117 () Bool)

(declare-fun tp!110609 () Bool)

(assert (=> mapNonEmpty!58117 (= mapRes!58117 (and tp!110609 e!767922))))

(declare-fun mapKey!58117 () (_ BitVec 32))

(declare-fun mapRest!58117 () (Array (_ BitVec 32) ValueCell!17898))

(declare-fun mapValue!58117 () ValueCell!17898)

(assert (=> mapNonEmpty!58117 (= mapRest!58116 (store mapRest!58117 mapKey!58117 mapValue!58117))))

(declare-fun mapIsEmpty!58117 () Bool)

(assert (=> mapIsEmpty!58117 mapRes!58117))

(assert (= (and mapNonEmpty!58116 condMapEmpty!58117) mapIsEmpty!58117))

(assert (= (and mapNonEmpty!58116 (not condMapEmpty!58117)) mapNonEmpty!58117))

(assert (= (and mapNonEmpty!58117 ((_ is ValueCellFull!17898) mapValue!58117)) b!1349866))

(assert (= (and mapNonEmpty!58116 ((_ is ValueCellFull!17898) mapDefault!58117)) b!1349867))

(declare-fun m!1237235 () Bool)

(assert (=> mapNonEmpty!58117 m!1237235))

(declare-fun b_lambda!24745 () Bool)

(assert (= b_lambda!24743 (or (and start!113744 b_free!31593) b_lambda!24745)))

(declare-fun b_lambda!24747 () Bool)

(assert (= b_lambda!24741 (or (and start!113744 b_free!31593) b_lambda!24747)))

(declare-fun b_lambda!24749 () Bool)

(assert (= b_lambda!24737 (or (and start!113744 b_free!31593) b_lambda!24749)))

(declare-fun b_lambda!24751 () Bool)

(assert (= b_lambda!24739 (or (and start!113744 b_free!31593) b_lambda!24751)))

(check-sat (not b!1349767) (not b!1349804) (not b_lambda!24735) (not b!1349824) (not d!144631) (not b!1349697) (not b!1349777) (not b!1349718) (not b_lambda!24747) (not b!1349828) (not b!1349711) (not d!144691) (not b!1349830) (not d!144693) (not d!144659) (not d!144663) (not d!144689) (not d!144723) (not d!144729) (not d!144651) (not b!1349809) (not d!144719) (not b!1349800) (not d!144737) (not b!1349785) (not d!144665) (not b!1349837) (not d!144681) (not d!144743) (not d!144735) (not d!144687) (not d!144747) (not b!1349751) (not d!144633) (not b!1349795) (not d!144751) (not d!144713) (not d!144739) (not d!144641) (not bm!65231) (not d!144667) (not b!1349700) (not d!144669) (not b!1349780) (not b!1349827) (not d!144701) (not b!1349746) (not d!144653) (not b!1349772) (not d!144717) (not d!144649) (not b!1349832) (not d!144671) (not d!144675) (not b!1349758) (not b!1349797) (not b!1349745) (not b!1349703) (not d!144677) (not d!144679) (not b!1349757) (not b!1349706) (not d!144709) (not b!1349794) (not b!1349775) (not d!144721) (not b!1349744) (not b!1349838) (not bm!65232) (not b_next!31593) (not b!1349859) (not d!144749) (not b!1349770) (not b!1349783) b_and!51015 (not b!1349759) (not b!1349769) (not b!1349705) (not d!144655) (not d!144645) (not b!1349699) (not d!144731) (not b!1349815) (not b!1349821) (not d!144661) (not d!144705) (not b!1349766) (not b!1349820) (not b!1349822) (not b!1349798) (not d!144725) (not d!144637) (not b!1349810) (not b!1349791) (not d!144715) (not b!1349819) (not b!1349835) (not b!1349749) (not d!144683) (not b!1349778) (not b_lambda!24749) (not d!144757) (not d!144733) (not d!144707) (not d!144673) (not b!1349811) (not b!1349812) (not d!144711) (not b!1349768) (not bm!65233) (not b!1349844) (not b!1349765) (not b!1349752) (not bm!65228) (not b!1349755) (not d!144695) (not b!1349743) (not d!144657) (not b!1349756) (not b!1349816) (not b!1349792) (not d!144699) (not b!1349704) (not b!1349813) (not d!144755) (not b_lambda!24745) (not d!144727) (not b!1349691) (not b!1349826) (not b!1349817) (not d!144627) (not mapNonEmpty!58117) (not b!1349833) (not b!1349865) (not b!1349754) (not b!1349802) tp_is_empty!37593 (not b_lambda!24733) (not b_lambda!24751) (not b!1349698) (not b!1349771) (not b!1349863) (not b!1349803))
(check-sat b_and!51015 (not b_next!31593))
