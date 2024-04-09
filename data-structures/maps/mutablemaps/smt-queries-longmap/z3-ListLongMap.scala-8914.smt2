; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108172 () Bool)

(assert start!108172)

(declare-fun b_free!27849 () Bool)

(declare-fun b_next!27849 () Bool)

(assert (=> start!108172 (= b_free!27849 (not b_next!27849))))

(declare-fun tp!98502 () Bool)

(declare-fun b_and!45915 () Bool)

(assert (=> start!108172 (= tp!98502 b_and!45915)))

(declare-fun b!1276979 () Bool)

(declare-fun e!729272 () Bool)

(declare-fun tp_is_empty!33399 () Bool)

(assert (=> b!1276979 (= e!729272 tp_is_empty!33399)))

(declare-fun mapIsEmpty!51629 () Bool)

(declare-fun mapRes!51629 () Bool)

(assert (=> mapIsEmpty!51629 mapRes!51629))

(declare-fun b!1276980 () Bool)

(declare-fun res!848664 () Bool)

(declare-fun e!729274 () Bool)

(assert (=> b!1276980 (=> (not res!848664) (not e!729274))))

(declare-datatypes ((array!83839 0))(
  ( (array!83840 (arr!40426 (Array (_ BitVec 32) (_ BitVec 64))) (size!40977 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83839)

(assert (=> b!1276980 (= res!848664 (bvslt #b00000000000000000000000000000000 (size!40977 _keys!1427)))))

(declare-fun res!848665 () Bool)

(assert (=> start!108172 (=> (not res!848665) (not e!729274))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108172 (= res!848665 (validMask!0 mask!1805))))

(assert (=> start!108172 e!729274))

(assert (=> start!108172 true))

(assert (=> start!108172 tp!98502))

(assert (=> start!108172 tp_is_empty!33399))

(declare-datatypes ((V!49635 0))(
  ( (V!49636 (val!16774 Int)) )
))
(declare-datatypes ((ValueCell!15801 0))(
  ( (ValueCellFull!15801 (v!19369 V!49635)) (EmptyCell!15801) )
))
(declare-datatypes ((array!83841 0))(
  ( (array!83842 (arr!40427 (Array (_ BitVec 32) ValueCell!15801)) (size!40978 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83841)

(declare-fun e!729273 () Bool)

(declare-fun array_inv!30681 (array!83841) Bool)

(assert (=> start!108172 (and (array_inv!30681 _values!1187) e!729273)))

(declare-fun array_inv!30682 (array!83839) Bool)

(assert (=> start!108172 (array_inv!30682 _keys!1427)))

(declare-fun b!1276981 () Bool)

(declare-fun res!848663 () Bool)

(assert (=> b!1276981 (=> (not res!848663) (not e!729274))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276981 (= res!848663 (and (= (size!40978 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40977 _keys!1427) (size!40978 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276982 () Bool)

(declare-fun e!729275 () Bool)

(declare-fun k0!1053 () (_ BitVec 64))

(assert (=> b!1276982 (= e!729275 (ite (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1276983 () Bool)

(declare-fun res!848662 () Bool)

(assert (=> b!1276983 (=> (not res!848662) (not e!729274))))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49635)

(declare-fun zeroValue!1129 () V!49635)

(declare-datatypes ((tuple2!21662 0))(
  ( (tuple2!21663 (_1!10841 (_ BitVec 64)) (_2!10841 V!49635)) )
))
(declare-datatypes ((List!28848 0))(
  ( (Nil!28845) (Cons!28844 (h!30053 tuple2!21662) (t!42391 List!28848)) )
))
(declare-datatypes ((ListLongMap!19331 0))(
  ( (ListLongMap!19332 (toList!9681 List!28848)) )
))
(declare-fun contains!7728 (ListLongMap!19331 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4701 (array!83839 array!83841 (_ BitVec 32) (_ BitVec 32) V!49635 V!49635 (_ BitVec 32) Int) ListLongMap!19331)

(assert (=> b!1276983 (= res!848662 (contains!7728 (getCurrentListMap!4701 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1276984 () Bool)

(assert (=> b!1276984 (= e!729273 (and e!729272 mapRes!51629))))

(declare-fun condMapEmpty!51629 () Bool)

(declare-fun mapDefault!51629 () ValueCell!15801)

(assert (=> b!1276984 (= condMapEmpty!51629 (= (arr!40427 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15801)) mapDefault!51629)))))

(declare-fun b!1276985 () Bool)

(declare-fun lt!575508 () Bool)

(assert (=> b!1276985 (= e!729274 (not (or lt!575508 (bvslt (size!40977 _keys!1427) #b01111111111111111111111111111111))))))

(assert (=> b!1276985 e!729275))

(declare-fun c!123900 () Bool)

(assert (=> b!1276985 (= c!123900 (not lt!575508))))

(assert (=> b!1276985 (= lt!575508 (or (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (= k0!1053 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!42317 0))(
  ( (Unit!42318) )
))
(declare-fun lt!575507 () Unit!42317)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!631 (array!83839 array!83841 (_ BitVec 32) (_ BitVec 32) V!49635 V!49635 (_ BitVec 64) (_ BitVec 32) Int) Unit!42317)

(assert (=> b!1276985 (= lt!575507 (lemmaListMapContainsThenArrayContainsFrom!631 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k0!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun b!1276986 () Bool)

(declare-fun res!848667 () Bool)

(assert (=> b!1276986 (=> (not res!848667) (not e!729274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83839 (_ BitVec 32)) Bool)

(assert (=> b!1276986 (= res!848667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276987 () Bool)

(declare-fun arrayContainsKey!0 (array!83839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1276987 (= e!729275 (arrayContainsKey!0 _keys!1427 k0!1053 #b00000000000000000000000000000000))))

(declare-fun b!1276988 () Bool)

(declare-fun res!848666 () Bool)

(assert (=> b!1276988 (=> (not res!848666) (not e!729274))))

(declare-datatypes ((List!28849 0))(
  ( (Nil!28846) (Cons!28845 (h!30054 (_ BitVec 64)) (t!42392 List!28849)) )
))
(declare-fun arrayNoDuplicates!0 (array!83839 (_ BitVec 32) List!28849) Bool)

(assert (=> b!1276988 (= res!848666 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28846))))

(declare-fun mapNonEmpty!51629 () Bool)

(declare-fun tp!98501 () Bool)

(declare-fun e!729271 () Bool)

(assert (=> mapNonEmpty!51629 (= mapRes!51629 (and tp!98501 e!729271))))

(declare-fun mapKey!51629 () (_ BitVec 32))

(declare-fun mapRest!51629 () (Array (_ BitVec 32) ValueCell!15801))

(declare-fun mapValue!51629 () ValueCell!15801)

(assert (=> mapNonEmpty!51629 (= (arr!40427 _values!1187) (store mapRest!51629 mapKey!51629 mapValue!51629))))

(declare-fun b!1276989 () Bool)

(assert (=> b!1276989 (= e!729271 tp_is_empty!33399)))

(assert (= (and start!108172 res!848665) b!1276981))

(assert (= (and b!1276981 res!848663) b!1276986))

(assert (= (and b!1276986 res!848667) b!1276988))

(assert (= (and b!1276988 res!848666) b!1276983))

(assert (= (and b!1276983 res!848662) b!1276980))

(assert (= (and b!1276980 res!848664) b!1276985))

(assert (= (and b!1276985 c!123900) b!1276987))

(assert (= (and b!1276985 (not c!123900)) b!1276982))

(assert (= (and b!1276984 condMapEmpty!51629) mapIsEmpty!51629))

(assert (= (and b!1276984 (not condMapEmpty!51629)) mapNonEmpty!51629))

(get-info :version)

(assert (= (and mapNonEmpty!51629 ((_ is ValueCellFull!15801) mapValue!51629)) b!1276989))

(assert (= (and b!1276984 ((_ is ValueCellFull!15801) mapDefault!51629)) b!1276979))

(assert (= start!108172 b!1276984))

(declare-fun m!1172743 () Bool)

(assert (=> b!1276986 m!1172743))

(declare-fun m!1172745 () Bool)

(assert (=> b!1276988 m!1172745))

(declare-fun m!1172747 () Bool)

(assert (=> b!1276985 m!1172747))

(declare-fun m!1172749 () Bool)

(assert (=> b!1276987 m!1172749))

(declare-fun m!1172751 () Bool)

(assert (=> mapNonEmpty!51629 m!1172751))

(declare-fun m!1172753 () Bool)

(assert (=> start!108172 m!1172753))

(declare-fun m!1172755 () Bool)

(assert (=> start!108172 m!1172755))

(declare-fun m!1172757 () Bool)

(assert (=> start!108172 m!1172757))

(declare-fun m!1172759 () Bool)

(assert (=> b!1276983 m!1172759))

(assert (=> b!1276983 m!1172759))

(declare-fun m!1172761 () Bool)

(assert (=> b!1276983 m!1172761))

(check-sat (not b!1276987) (not b_next!27849) (not b!1276983) (not start!108172) (not mapNonEmpty!51629) (not b!1276986) (not b!1276985) b_and!45915 (not b!1276988) tp_is_empty!33399)
(check-sat b_and!45915 (not b_next!27849))
(get-model)

(declare-fun d!140365 () Bool)

(declare-fun res!848690 () Bool)

(declare-fun e!729298 () Bool)

(assert (=> d!140365 (=> res!848690 e!729298)))

(assert (=> d!140365 (= res!848690 (= (select (arr!40426 _keys!1427) #b00000000000000000000000000000000) k0!1053))))

(assert (=> d!140365 (= (arrayContainsKey!0 _keys!1427 k0!1053 #b00000000000000000000000000000000) e!729298)))

(declare-fun b!1277027 () Bool)

(declare-fun e!729299 () Bool)

(assert (=> b!1277027 (= e!729298 e!729299)))

(declare-fun res!848691 () Bool)

(assert (=> b!1277027 (=> (not res!848691) (not e!729299))))

(assert (=> b!1277027 (= res!848691 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40977 _keys!1427)))))

(declare-fun b!1277028 () Bool)

(assert (=> b!1277028 (= e!729299 (arrayContainsKey!0 _keys!1427 k0!1053 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!140365 (not res!848690)) b!1277027))

(assert (= (and b!1277027 res!848691) b!1277028))

(declare-fun m!1172783 () Bool)

(assert (=> d!140365 m!1172783))

(declare-fun m!1172785 () Bool)

(assert (=> b!1277028 m!1172785))

(assert (=> b!1276987 d!140365))

(declare-fun d!140367 () Bool)

(assert (=> d!140367 (= (validMask!0 mask!1805) (and (or (= mask!1805 #b00000000000000000000000000000111) (= mask!1805 #b00000000000000000000000000001111) (= mask!1805 #b00000000000000000000000000011111) (= mask!1805 #b00000000000000000000000000111111) (= mask!1805 #b00000000000000000000000001111111) (= mask!1805 #b00000000000000000000000011111111) (= mask!1805 #b00000000000000000000000111111111) (= mask!1805 #b00000000000000000000001111111111) (= mask!1805 #b00000000000000000000011111111111) (= mask!1805 #b00000000000000000000111111111111) (= mask!1805 #b00000000000000000001111111111111) (= mask!1805 #b00000000000000000011111111111111) (= mask!1805 #b00000000000000000111111111111111) (= mask!1805 #b00000000000000001111111111111111) (= mask!1805 #b00000000000000011111111111111111) (= mask!1805 #b00000000000000111111111111111111) (= mask!1805 #b00000000000001111111111111111111) (= mask!1805 #b00000000000011111111111111111111) (= mask!1805 #b00000000000111111111111111111111) (= mask!1805 #b00000000001111111111111111111111) (= mask!1805 #b00000000011111111111111111111111) (= mask!1805 #b00000000111111111111111111111111) (= mask!1805 #b00000001111111111111111111111111) (= mask!1805 #b00000011111111111111111111111111) (= mask!1805 #b00000111111111111111111111111111) (= mask!1805 #b00001111111111111111111111111111) (= mask!1805 #b00011111111111111111111111111111) (= mask!1805 #b00111111111111111111111111111111)) (bvsle mask!1805 #b00111111111111111111111111111111)))))

(assert (=> start!108172 d!140367))

(declare-fun d!140369 () Bool)

(assert (=> d!140369 (= (array_inv!30681 _values!1187) (bvsge (size!40978 _values!1187) #b00000000000000000000000000000000))))

(assert (=> start!108172 d!140369))

(declare-fun d!140371 () Bool)

(assert (=> d!140371 (= (array_inv!30682 _keys!1427) (bvsge (size!40977 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> start!108172 d!140371))

(declare-fun d!140373 () Bool)

(declare-fun e!729305 () Bool)

(assert (=> d!140373 e!729305))

(declare-fun res!848694 () Bool)

(assert (=> d!140373 (=> res!848694 e!729305)))

(declare-fun lt!575526 () Bool)

(assert (=> d!140373 (= res!848694 (not lt!575526))))

(declare-fun lt!575523 () Bool)

(assert (=> d!140373 (= lt!575526 lt!575523)))

(declare-fun lt!575524 () Unit!42317)

(declare-fun e!729304 () Unit!42317)

(assert (=> d!140373 (= lt!575524 e!729304)))

(declare-fun c!123906 () Bool)

(assert (=> d!140373 (= c!123906 lt!575523)))

(declare-fun containsKey!710 (List!28848 (_ BitVec 64)) Bool)

(assert (=> d!140373 (= lt!575523 (containsKey!710 (toList!9681 (getCurrentListMap!4701 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195)) k0!1053))))

(assert (=> d!140373 (= (contains!7728 (getCurrentListMap!4701 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053) lt!575526)))

(declare-fun b!1277035 () Bool)

(declare-fun lt!575525 () Unit!42317)

(assert (=> b!1277035 (= e!729304 lt!575525)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!455 (List!28848 (_ BitVec 64)) Unit!42317)

(assert (=> b!1277035 (= lt!575525 (lemmaContainsKeyImpliesGetValueByKeyDefined!455 (toList!9681 (getCurrentListMap!4701 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195)) k0!1053))))

(declare-datatypes ((Option!743 0))(
  ( (Some!742 (v!19371 V!49635)) (None!741) )
))
(declare-fun isDefined!495 (Option!743) Bool)

(declare-fun getValueByKey!692 (List!28848 (_ BitVec 64)) Option!743)

(assert (=> b!1277035 (isDefined!495 (getValueByKey!692 (toList!9681 (getCurrentListMap!4701 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195)) k0!1053))))

(declare-fun b!1277036 () Bool)

(declare-fun Unit!42319 () Unit!42317)

(assert (=> b!1277036 (= e!729304 Unit!42319)))

(declare-fun b!1277037 () Bool)

(assert (=> b!1277037 (= e!729305 (isDefined!495 (getValueByKey!692 (toList!9681 (getCurrentListMap!4701 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195)) k0!1053)))))

(assert (= (and d!140373 c!123906) b!1277035))

(assert (= (and d!140373 (not c!123906)) b!1277036))

(assert (= (and d!140373 (not res!848694)) b!1277037))

(declare-fun m!1172787 () Bool)

(assert (=> d!140373 m!1172787))

(declare-fun m!1172789 () Bool)

(assert (=> b!1277035 m!1172789))

(declare-fun m!1172791 () Bool)

(assert (=> b!1277035 m!1172791))

(assert (=> b!1277035 m!1172791))

(declare-fun m!1172793 () Bool)

(assert (=> b!1277035 m!1172793))

(assert (=> b!1277037 m!1172791))

(assert (=> b!1277037 m!1172791))

(assert (=> b!1277037 m!1172793))

(assert (=> b!1276983 d!140373))

(declare-fun b!1277080 () Bool)

(declare-fun e!729342 () ListLongMap!19331)

(declare-fun call!62667 () ListLongMap!19331)

(declare-fun +!4244 (ListLongMap!19331 tuple2!21662) ListLongMap!19331)

(assert (=> b!1277080 (= e!729342 (+!4244 call!62667 (tuple2!21663 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1129)))))

(declare-fun b!1277081 () Bool)

(declare-fun e!729339 () ListLongMap!19331)

(declare-fun call!62663 () ListLongMap!19331)

(assert (=> b!1277081 (= e!729339 call!62663)))

(declare-fun b!1277082 () Bool)

(declare-fun c!123920 () Bool)

(assert (=> b!1277082 (= c!123920 (and (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!729343 () ListLongMap!19331)

(assert (=> b!1277082 (= e!729343 e!729339)))

(declare-fun b!1277083 () Bool)

(declare-fun e!729332 () Bool)

(declare-fun lt!575587 () ListLongMap!19331)

(declare-fun apply!1042 (ListLongMap!19331 (_ BitVec 64)) V!49635)

(assert (=> b!1277083 (= e!729332 (= (apply!1042 lt!575587 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1129))))

(declare-fun b!1277084 () Bool)

(declare-fun e!729336 () Bool)

(declare-fun call!62664 () Bool)

(assert (=> b!1277084 (= e!729336 (not call!62664))))

(declare-fun b!1277085 () Bool)

(assert (=> b!1277085 (= e!729342 e!729343)))

(declare-fun c!123921 () Bool)

(assert (=> b!1277085 (= c!123921 (and (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1277086 () Bool)

(declare-fun call!62662 () ListLongMap!19331)

(assert (=> b!1277086 (= e!729343 call!62662)))

(declare-fun bm!62658 () Bool)

(declare-fun call!62661 () Bool)

(assert (=> bm!62658 (= call!62661 (contains!7728 lt!575587 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!140375 () Bool)

(declare-fun e!729338 () Bool)

(assert (=> d!140375 e!729338))

(declare-fun res!848718 () Bool)

(assert (=> d!140375 (=> (not res!848718) (not e!729338))))

(assert (=> d!140375 (= res!848718 (or (bvsge #b00000000000000000000000000000000 (size!40977 _keys!1427)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40977 _keys!1427)))))))

(declare-fun lt!575592 () ListLongMap!19331)

(assert (=> d!140375 (= lt!575587 lt!575592)))

(declare-fun lt!575573 () Unit!42317)

(declare-fun e!729340 () Unit!42317)

(assert (=> d!140375 (= lt!575573 e!729340)))

(declare-fun c!123919 () Bool)

(declare-fun e!729341 () Bool)

(assert (=> d!140375 (= c!123919 e!729341)))

(declare-fun res!848716 () Bool)

(assert (=> d!140375 (=> (not res!848716) (not e!729341))))

(assert (=> d!140375 (= res!848716 (bvslt #b00000000000000000000000000000000 (size!40977 _keys!1427)))))

(assert (=> d!140375 (= lt!575592 e!729342)))

(declare-fun c!123924 () Bool)

(assert (=> d!140375 (= c!123924 (and (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140375 (validMask!0 mask!1805)))

(assert (=> d!140375 (= (getCurrentListMap!4701 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) lt!575587)))

(declare-fun b!1277087 () Bool)

(declare-fun e!729334 () Bool)

(declare-fun e!729333 () Bool)

(assert (=> b!1277087 (= e!729334 e!729333)))

(declare-fun res!848720 () Bool)

(assert (=> b!1277087 (= res!848720 call!62661)))

(assert (=> b!1277087 (=> (not res!848720) (not e!729333))))

(declare-fun bm!62659 () Bool)

(assert (=> bm!62659 (= call!62662 call!62667)))

(declare-fun b!1277088 () Bool)

(declare-fun res!848719 () Bool)

(assert (=> b!1277088 (=> (not res!848719) (not e!729338))))

(declare-fun e!729344 () Bool)

(assert (=> b!1277088 (= res!848719 e!729344)))

(declare-fun res!848713 () Bool)

(assert (=> b!1277088 (=> res!848713 e!729344)))

(declare-fun e!729335 () Bool)

(assert (=> b!1277088 (= res!848713 (not e!729335))))

(declare-fun res!848715 () Bool)

(assert (=> b!1277088 (=> (not res!848715) (not e!729335))))

(assert (=> b!1277088 (= res!848715 (bvslt #b00000000000000000000000000000000 (size!40977 _keys!1427)))))

(declare-fun b!1277089 () Bool)

(declare-fun lt!575574 () Unit!42317)

(assert (=> b!1277089 (= e!729340 lt!575574)))

(declare-fun lt!575572 () ListLongMap!19331)

(declare-fun getCurrentListMapNoExtraKeys!5955 (array!83839 array!83841 (_ BitVec 32) (_ BitVec 32) V!49635 V!49635 (_ BitVec 32) Int) ListLongMap!19331)

(assert (=> b!1277089 (= lt!575572 (getCurrentListMapNoExtraKeys!5955 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun lt!575571 () (_ BitVec 64))

(assert (=> b!1277089 (= lt!575571 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!575582 () (_ BitVec 64))

(assert (=> b!1277089 (= lt!575582 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000))))

(declare-fun lt!575591 () Unit!42317)

(declare-fun addStillContains!1111 (ListLongMap!19331 (_ BitVec 64) V!49635 (_ BitVec 64)) Unit!42317)

(assert (=> b!1277089 (= lt!575591 (addStillContains!1111 lt!575572 lt!575571 zeroValue!1129 lt!575582))))

(assert (=> b!1277089 (contains!7728 (+!4244 lt!575572 (tuple2!21663 lt!575571 zeroValue!1129)) lt!575582)))

(declare-fun lt!575576 () Unit!42317)

(assert (=> b!1277089 (= lt!575576 lt!575591)))

(declare-fun lt!575588 () ListLongMap!19331)

(assert (=> b!1277089 (= lt!575588 (getCurrentListMapNoExtraKeys!5955 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun lt!575584 () (_ BitVec 64))

(assert (=> b!1277089 (= lt!575584 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!575575 () (_ BitVec 64))

(assert (=> b!1277089 (= lt!575575 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000))))

(declare-fun lt!575585 () Unit!42317)

(declare-fun addApplyDifferent!545 (ListLongMap!19331 (_ BitVec 64) V!49635 (_ BitVec 64)) Unit!42317)

(assert (=> b!1277089 (= lt!575585 (addApplyDifferent!545 lt!575588 lt!575584 minValue!1129 lt!575575))))

(assert (=> b!1277089 (= (apply!1042 (+!4244 lt!575588 (tuple2!21663 lt!575584 minValue!1129)) lt!575575) (apply!1042 lt!575588 lt!575575))))

(declare-fun lt!575577 () Unit!42317)

(assert (=> b!1277089 (= lt!575577 lt!575585)))

(declare-fun lt!575581 () ListLongMap!19331)

(assert (=> b!1277089 (= lt!575581 (getCurrentListMapNoExtraKeys!5955 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun lt!575578 () (_ BitVec 64))

(assert (=> b!1277089 (= lt!575578 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!575590 () (_ BitVec 64))

(assert (=> b!1277089 (= lt!575590 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000))))

(declare-fun lt!575583 () Unit!42317)

(assert (=> b!1277089 (= lt!575583 (addApplyDifferent!545 lt!575581 lt!575578 zeroValue!1129 lt!575590))))

(assert (=> b!1277089 (= (apply!1042 (+!4244 lt!575581 (tuple2!21663 lt!575578 zeroValue!1129)) lt!575590) (apply!1042 lt!575581 lt!575590))))

(declare-fun lt!575586 () Unit!42317)

(assert (=> b!1277089 (= lt!575586 lt!575583)))

(declare-fun lt!575579 () ListLongMap!19331)

(assert (=> b!1277089 (= lt!575579 (getCurrentListMapNoExtraKeys!5955 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun lt!575580 () (_ BitVec 64))

(assert (=> b!1277089 (= lt!575580 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!575589 () (_ BitVec 64))

(assert (=> b!1277089 (= lt!575589 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> b!1277089 (= lt!575574 (addApplyDifferent!545 lt!575579 lt!575580 minValue!1129 lt!575589))))

(assert (=> b!1277089 (= (apply!1042 (+!4244 lt!575579 (tuple2!21663 lt!575580 minValue!1129)) lt!575589) (apply!1042 lt!575579 lt!575589))))

(declare-fun b!1277090 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1277090 (= e!729335 (validKeyInArray!0 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun e!729337 () Bool)

(declare-fun b!1277091 () Bool)

(declare-fun get!20672 (ValueCell!15801 V!49635) V!49635)

(declare-fun dynLambda!3487 (Int (_ BitVec 64)) V!49635)

(assert (=> b!1277091 (= e!729337 (= (apply!1042 lt!575587 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000)) (get!20672 (select (arr!40427 _values!1187) #b00000000000000000000000000000000) (dynLambda!3487 defaultEntry!1195 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1277091 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40978 _values!1187)))))

(assert (=> b!1277091 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40977 _keys!1427)))))

(declare-fun b!1277092 () Bool)

(declare-fun Unit!42320 () Unit!42317)

(assert (=> b!1277092 (= e!729340 Unit!42320)))

(declare-fun b!1277093 () Bool)

(assert (=> b!1277093 (= e!729334 (not call!62661))))

(declare-fun call!62665 () ListLongMap!19331)

(declare-fun call!62666 () ListLongMap!19331)

(declare-fun bm!62660 () Bool)

(assert (=> bm!62660 (= call!62667 (+!4244 (ite c!123924 call!62666 (ite c!123921 call!62665 call!62663)) (ite (or c!123924 c!123921) (tuple2!21663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1129) (tuple2!21663 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1129))))))

(declare-fun b!1277094 () Bool)

(assert (=> b!1277094 (= e!729344 e!729337)))

(declare-fun res!848717 () Bool)

(assert (=> b!1277094 (=> (not res!848717) (not e!729337))))

(assert (=> b!1277094 (= res!848717 (contains!7728 lt!575587 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000)))))

(assert (=> b!1277094 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40977 _keys!1427)))))

(declare-fun b!1277095 () Bool)

(declare-fun res!848714 () Bool)

(assert (=> b!1277095 (=> (not res!848714) (not e!729338))))

(assert (=> b!1277095 (= res!848714 e!729336)))

(declare-fun c!123923 () Bool)

(assert (=> b!1277095 (= c!123923 (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1277096 () Bool)

(assert (=> b!1277096 (= e!729341 (validKeyInArray!0 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1277097 () Bool)

(assert (=> b!1277097 (= e!729333 (= (apply!1042 lt!575587 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1129))))

(declare-fun b!1277098 () Bool)

(assert (=> b!1277098 (= e!729336 e!729332)))

(declare-fun res!848721 () Bool)

(assert (=> b!1277098 (= res!848721 call!62664)))

(assert (=> b!1277098 (=> (not res!848721) (not e!729332))))

(declare-fun bm!62661 () Bool)

(assert (=> bm!62661 (= call!62663 call!62665)))

(declare-fun bm!62662 () Bool)

(assert (=> bm!62662 (= call!62665 call!62666)))

(declare-fun b!1277099 () Bool)

(assert (=> b!1277099 (= e!729339 call!62662)))

(declare-fun bm!62663 () Bool)

(assert (=> bm!62663 (= call!62664 (contains!7728 lt!575587 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62664 () Bool)

(assert (=> bm!62664 (= call!62666 (getCurrentListMapNoExtraKeys!5955 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun b!1277100 () Bool)

(assert (=> b!1277100 (= e!729338 e!729334)))

(declare-fun c!123922 () Bool)

(assert (=> b!1277100 (= c!123922 (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!140375 c!123924) b!1277080))

(assert (= (and d!140375 (not c!123924)) b!1277085))

(assert (= (and b!1277085 c!123921) b!1277086))

(assert (= (and b!1277085 (not c!123921)) b!1277082))

(assert (= (and b!1277082 c!123920) b!1277099))

(assert (= (and b!1277082 (not c!123920)) b!1277081))

(assert (= (or b!1277099 b!1277081) bm!62661))

(assert (= (or b!1277086 bm!62661) bm!62662))

(assert (= (or b!1277086 b!1277099) bm!62659))

(assert (= (or b!1277080 bm!62662) bm!62664))

(assert (= (or b!1277080 bm!62659) bm!62660))

(assert (= (and d!140375 res!848716) b!1277096))

(assert (= (and d!140375 c!123919) b!1277089))

(assert (= (and d!140375 (not c!123919)) b!1277092))

(assert (= (and d!140375 res!848718) b!1277088))

(assert (= (and b!1277088 res!848715) b!1277090))

(assert (= (and b!1277088 (not res!848713)) b!1277094))

(assert (= (and b!1277094 res!848717) b!1277091))

(assert (= (and b!1277088 res!848719) b!1277095))

(assert (= (and b!1277095 c!123923) b!1277098))

(assert (= (and b!1277095 (not c!123923)) b!1277084))

(assert (= (and b!1277098 res!848721) b!1277083))

(assert (= (or b!1277098 b!1277084) bm!62663))

(assert (= (and b!1277095 res!848714) b!1277100))

(assert (= (and b!1277100 c!123922) b!1277087))

(assert (= (and b!1277100 (not c!123922)) b!1277093))

(assert (= (and b!1277087 res!848720) b!1277097))

(assert (= (or b!1277087 b!1277093) bm!62658))

(declare-fun b_lambda!23097 () Bool)

(assert (=> (not b_lambda!23097) (not b!1277091)))

(declare-fun t!42395 () Bool)

(declare-fun tb!11349 () Bool)

(assert (=> (and start!108172 (= defaultEntry!1195 defaultEntry!1195) t!42395) tb!11349))

(declare-fun result!23671 () Bool)

(assert (=> tb!11349 (= result!23671 tp_is_empty!33399)))

(assert (=> b!1277091 t!42395))

(declare-fun b_and!45919 () Bool)

(assert (= b_and!45915 (and (=> t!42395 result!23671) b_and!45919)))

(declare-fun m!1172795 () Bool)

(assert (=> bm!62663 m!1172795))

(assert (=> d!140375 m!1172753))

(assert (=> b!1277094 m!1172783))

(assert (=> b!1277094 m!1172783))

(declare-fun m!1172797 () Bool)

(assert (=> b!1277094 m!1172797))

(declare-fun m!1172799 () Bool)

(assert (=> b!1277089 m!1172799))

(declare-fun m!1172801 () Bool)

(assert (=> b!1277089 m!1172801))

(declare-fun m!1172803 () Bool)

(assert (=> b!1277089 m!1172803))

(declare-fun m!1172805 () Bool)

(assert (=> b!1277089 m!1172805))

(declare-fun m!1172807 () Bool)

(assert (=> b!1277089 m!1172807))

(declare-fun m!1172809 () Bool)

(assert (=> b!1277089 m!1172809))

(assert (=> b!1277089 m!1172807))

(declare-fun m!1172811 () Bool)

(assert (=> b!1277089 m!1172811))

(declare-fun m!1172813 () Bool)

(assert (=> b!1277089 m!1172813))

(declare-fun m!1172815 () Bool)

(assert (=> b!1277089 m!1172815))

(assert (=> b!1277089 m!1172801))

(declare-fun m!1172817 () Bool)

(assert (=> b!1277089 m!1172817))

(declare-fun m!1172819 () Bool)

(assert (=> b!1277089 m!1172819))

(declare-fun m!1172821 () Bool)

(assert (=> b!1277089 m!1172821))

(assert (=> b!1277089 m!1172819))

(declare-fun m!1172823 () Bool)

(assert (=> b!1277089 m!1172823))

(assert (=> b!1277089 m!1172783))

(declare-fun m!1172825 () Bool)

(assert (=> b!1277089 m!1172825))

(assert (=> b!1277089 m!1172813))

(declare-fun m!1172827 () Bool)

(assert (=> b!1277089 m!1172827))

(declare-fun m!1172829 () Bool)

(assert (=> b!1277089 m!1172829))

(declare-fun m!1172831 () Bool)

(assert (=> bm!62658 m!1172831))

(assert (=> b!1277090 m!1172783))

(assert (=> b!1277090 m!1172783))

(declare-fun m!1172833 () Bool)

(assert (=> b!1277090 m!1172833))

(declare-fun m!1172835 () Bool)

(assert (=> b!1277083 m!1172835))

(assert (=> b!1277091 m!1172783))

(assert (=> b!1277091 m!1172783))

(declare-fun m!1172837 () Bool)

(assert (=> b!1277091 m!1172837))

(declare-fun m!1172839 () Bool)

(assert (=> b!1277091 m!1172839))

(declare-fun m!1172841 () Bool)

(assert (=> b!1277091 m!1172841))

(declare-fun m!1172843 () Bool)

(assert (=> b!1277091 m!1172843))

(assert (=> b!1277091 m!1172839))

(assert (=> b!1277091 m!1172841))

(assert (=> b!1277096 m!1172783))

(assert (=> b!1277096 m!1172783))

(assert (=> b!1277096 m!1172833))

(declare-fun m!1172845 () Bool)

(assert (=> bm!62660 m!1172845))

(declare-fun m!1172847 () Bool)

(assert (=> b!1277097 m!1172847))

(declare-fun m!1172849 () Bool)

(assert (=> b!1277080 m!1172849))

(assert (=> bm!62664 m!1172809))

(assert (=> b!1276983 d!140375))

(declare-fun d!140377 () Bool)

(declare-fun res!848730 () Bool)

(declare-fun e!729353 () Bool)

(assert (=> d!140377 (=> res!848730 e!729353)))

(assert (=> d!140377 (= res!848730 (bvsge #b00000000000000000000000000000000 (size!40977 _keys!1427)))))

(assert (=> d!140377 (= (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28846) e!729353)))

(declare-fun b!1277113 () Bool)

(declare-fun e!729356 () Bool)

(declare-fun contains!7730 (List!28849 (_ BitVec 64)) Bool)

(assert (=> b!1277113 (= e!729356 (contains!7730 Nil!28846 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1277114 () Bool)

(declare-fun e!729355 () Bool)

(declare-fun call!62670 () Bool)

(assert (=> b!1277114 (= e!729355 call!62670)))

(declare-fun b!1277115 () Bool)

(declare-fun e!729354 () Bool)

(assert (=> b!1277115 (= e!729353 e!729354)))

(declare-fun res!848728 () Bool)

(assert (=> b!1277115 (=> (not res!848728) (not e!729354))))

(assert (=> b!1277115 (= res!848728 (not e!729356))))

(declare-fun res!848729 () Bool)

(assert (=> b!1277115 (=> (not res!848729) (not e!729356))))

(assert (=> b!1277115 (= res!848729 (validKeyInArray!0 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun bm!62667 () Bool)

(declare-fun c!123927 () Bool)

(assert (=> bm!62667 (= call!62670 (arrayNoDuplicates!0 _keys!1427 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123927 (Cons!28845 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000) Nil!28846) Nil!28846)))))

(declare-fun b!1277116 () Bool)

(assert (=> b!1277116 (= e!729355 call!62670)))

(declare-fun b!1277117 () Bool)

(assert (=> b!1277117 (= e!729354 e!729355)))

(assert (=> b!1277117 (= c!123927 (validKeyInArray!0 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000)))))

(assert (= (and d!140377 (not res!848730)) b!1277115))

(assert (= (and b!1277115 res!848729) b!1277113))

(assert (= (and b!1277115 res!848728) b!1277117))

(assert (= (and b!1277117 c!123927) b!1277114))

(assert (= (and b!1277117 (not c!123927)) b!1277116))

(assert (= (or b!1277114 b!1277116) bm!62667))

(assert (=> b!1277113 m!1172783))

(assert (=> b!1277113 m!1172783))

(declare-fun m!1172851 () Bool)

(assert (=> b!1277113 m!1172851))

(assert (=> b!1277115 m!1172783))

(assert (=> b!1277115 m!1172783))

(assert (=> b!1277115 m!1172833))

(assert (=> bm!62667 m!1172783))

(declare-fun m!1172853 () Bool)

(assert (=> bm!62667 m!1172853))

(assert (=> b!1277117 m!1172783))

(assert (=> b!1277117 m!1172783))

(assert (=> b!1277117 m!1172833))

(assert (=> b!1276988 d!140377))

(declare-fun b!1277126 () Bool)

(declare-fun e!729365 () Bool)

(declare-fun e!729363 () Bool)

(assert (=> b!1277126 (= e!729365 e!729363)))

(declare-fun lt!575599 () (_ BitVec 64))

(assert (=> b!1277126 (= lt!575599 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000))))

(declare-fun lt!575600 () Unit!42317)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83839 (_ BitVec 64) (_ BitVec 32)) Unit!42317)

(assert (=> b!1277126 (= lt!575600 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1427 lt!575599 #b00000000000000000000000000000000))))

(assert (=> b!1277126 (arrayContainsKey!0 _keys!1427 lt!575599 #b00000000000000000000000000000000)))

(declare-fun lt!575601 () Unit!42317)

(assert (=> b!1277126 (= lt!575601 lt!575600)))

(declare-fun res!848736 () Bool)

(declare-datatypes ((SeekEntryResult!10003 0))(
  ( (MissingZero!10003 (index!42382 (_ BitVec 32))) (Found!10003 (index!42383 (_ BitVec 32))) (Intermediate!10003 (undefined!10815 Bool) (index!42384 (_ BitVec 32)) (x!113161 (_ BitVec 32))) (Undefined!10003) (MissingVacant!10003 (index!42385 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83839 (_ BitVec 32)) SeekEntryResult!10003)

(assert (=> b!1277126 (= res!848736 (= (seekEntryOrOpen!0 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000) _keys!1427 mask!1805) (Found!10003 #b00000000000000000000000000000000)))))

(assert (=> b!1277126 (=> (not res!848736) (not e!729363))))

(declare-fun b!1277127 () Bool)

(declare-fun call!62673 () Bool)

(assert (=> b!1277127 (= e!729365 call!62673)))

(declare-fun bm!62670 () Bool)

(assert (=> bm!62670 (= call!62673 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1427 mask!1805))))

(declare-fun d!140379 () Bool)

(declare-fun res!848735 () Bool)

(declare-fun e!729364 () Bool)

(assert (=> d!140379 (=> res!848735 e!729364)))

(assert (=> d!140379 (= res!848735 (bvsge #b00000000000000000000000000000000 (size!40977 _keys!1427)))))

(assert (=> d!140379 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805) e!729364)))

(declare-fun b!1277128 () Bool)

(assert (=> b!1277128 (= e!729363 call!62673)))

(declare-fun b!1277129 () Bool)

(assert (=> b!1277129 (= e!729364 e!729365)))

(declare-fun c!123930 () Bool)

(assert (=> b!1277129 (= c!123930 (validKeyInArray!0 (select (arr!40426 _keys!1427) #b00000000000000000000000000000000)))))

(assert (= (and d!140379 (not res!848735)) b!1277129))

(assert (= (and b!1277129 c!123930) b!1277126))

(assert (= (and b!1277129 (not c!123930)) b!1277127))

(assert (= (and b!1277126 res!848736) b!1277128))

(assert (= (or b!1277128 b!1277127) bm!62670))

(assert (=> b!1277126 m!1172783))

(declare-fun m!1172855 () Bool)

(assert (=> b!1277126 m!1172855))

(declare-fun m!1172857 () Bool)

(assert (=> b!1277126 m!1172857))

(assert (=> b!1277126 m!1172783))

(declare-fun m!1172859 () Bool)

(assert (=> b!1277126 m!1172859))

(declare-fun m!1172861 () Bool)

(assert (=> bm!62670 m!1172861))

(assert (=> b!1277129 m!1172783))

(assert (=> b!1277129 m!1172783))

(assert (=> b!1277129 m!1172833))

(assert (=> b!1276986 d!140379))

(declare-fun d!140381 () Bool)

(declare-fun e!729368 () Bool)

(assert (=> d!140381 e!729368))

(declare-fun c!123933 () Bool)

(assert (=> d!140381 (= c!123933 (and (not (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!575604 () Unit!42317)

(declare-fun choose!1905 (array!83839 array!83841 (_ BitVec 32) (_ BitVec 32) V!49635 V!49635 (_ BitVec 64) (_ BitVec 32) Int) Unit!42317)

(assert (=> d!140381 (= lt!575604 (choose!1905 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k0!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(assert (=> d!140381 (validMask!0 mask!1805)))

(assert (=> d!140381 (= (lemmaListMapContainsThenArrayContainsFrom!631 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k0!1053 #b00000000000000000000000000000000 defaultEntry!1195) lt!575604)))

(declare-fun b!1277134 () Bool)

(assert (=> b!1277134 (= e!729368 (arrayContainsKey!0 _keys!1427 k0!1053 #b00000000000000000000000000000000))))

(declare-fun b!1277135 () Bool)

(assert (=> b!1277135 (= e!729368 (ite (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!140381 c!123933) b!1277134))

(assert (= (and d!140381 (not c!123933)) b!1277135))

(declare-fun m!1172863 () Bool)

(assert (=> d!140381 m!1172863))

(assert (=> d!140381 m!1172753))

(assert (=> b!1277134 m!1172749))

(assert (=> b!1276985 d!140381))

(declare-fun mapIsEmpty!51635 () Bool)

(declare-fun mapRes!51635 () Bool)

(assert (=> mapIsEmpty!51635 mapRes!51635))

(declare-fun mapNonEmpty!51635 () Bool)

(declare-fun tp!98511 () Bool)

(declare-fun e!729374 () Bool)

(assert (=> mapNonEmpty!51635 (= mapRes!51635 (and tp!98511 e!729374))))

(declare-fun mapKey!51635 () (_ BitVec 32))

(declare-fun mapValue!51635 () ValueCell!15801)

(declare-fun mapRest!51635 () (Array (_ BitVec 32) ValueCell!15801))

(assert (=> mapNonEmpty!51635 (= mapRest!51629 (store mapRest!51635 mapKey!51635 mapValue!51635))))

(declare-fun condMapEmpty!51635 () Bool)

(declare-fun mapDefault!51635 () ValueCell!15801)

(assert (=> mapNonEmpty!51629 (= condMapEmpty!51635 (= mapRest!51629 ((as const (Array (_ BitVec 32) ValueCell!15801)) mapDefault!51635)))))

(declare-fun e!729373 () Bool)

(assert (=> mapNonEmpty!51629 (= tp!98501 (and e!729373 mapRes!51635))))

(declare-fun b!1277142 () Bool)

(assert (=> b!1277142 (= e!729374 tp_is_empty!33399)))

(declare-fun b!1277143 () Bool)

(assert (=> b!1277143 (= e!729373 tp_is_empty!33399)))

(assert (= (and mapNonEmpty!51629 condMapEmpty!51635) mapIsEmpty!51635))

(assert (= (and mapNonEmpty!51629 (not condMapEmpty!51635)) mapNonEmpty!51635))

(assert (= (and mapNonEmpty!51635 ((_ is ValueCellFull!15801) mapValue!51635)) b!1277142))

(assert (= (and mapNonEmpty!51629 ((_ is ValueCellFull!15801) mapDefault!51635)) b!1277143))

(declare-fun m!1172865 () Bool)

(assert (=> mapNonEmpty!51635 m!1172865))

(declare-fun b_lambda!23099 () Bool)

(assert (= b_lambda!23097 (or (and start!108172 b_free!27849) b_lambda!23099)))

(check-sat (not bm!62667) (not mapNonEmpty!51635) (not b!1277113) (not bm!62670) (not d!140373) (not b!1277091) (not bm!62660) (not b!1277090) b_and!45919 (not b_lambda!23099) (not b!1277117) tp_is_empty!33399 (not b!1277129) (not b!1277083) (not b!1277037) (not d!140375) (not bm!62663) (not b!1277126) (not b_next!27849) (not bm!62664) (not d!140381) (not b!1277035) (not b!1277134) (not b!1277028) (not b!1277115) (not bm!62658) (not b!1277096) (not b!1277094) (not b!1277080) (not b!1277097) (not b!1277089))
(check-sat b_and!45919 (not b_next!27849))
