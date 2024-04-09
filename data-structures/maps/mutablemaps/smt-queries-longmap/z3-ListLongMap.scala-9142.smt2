; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109674 () Bool)

(assert start!109674)

(declare-fun b_free!29127 () Bool)

(declare-fun b_next!29127 () Bool)

(assert (=> start!109674 (= b_free!29127 (not b_next!29127))))

(declare-fun tp!102501 () Bool)

(declare-fun b_and!47227 () Bool)

(assert (=> start!109674 (= tp!102501 b_and!47227)))

(declare-fun b!1298674 () Bool)

(declare-fun res!863177 () Bool)

(declare-fun e!740905 () Bool)

(assert (=> b!1298674 (=> (not res!863177) (not e!740905))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!86503 0))(
  ( (array!86504 (arr!41748 (Array (_ BitVec 32) (_ BitVec 64))) (size!42299 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86503)

(assert (=> b!1298674 (= res!863177 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42299 _keys!1741)) (not (= (select (arr!41748 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1298675 () Bool)

(declare-fun res!863180 () Bool)

(assert (=> b!1298675 (=> (not res!863180) (not e!740905))))

(declare-datatypes ((V!51459 0))(
  ( (V!51460 (val!17458 Int)) )
))
(declare-fun minValue!1387 () V!51459)

(declare-fun zeroValue!1387 () V!51459)

(declare-datatypes ((ValueCell!16485 0))(
  ( (ValueCellFull!16485 (v!20059 V!51459)) (EmptyCell!16485) )
))
(declare-datatypes ((array!86505 0))(
  ( (array!86506 (arr!41749 (Array (_ BitVec 32) ValueCell!16485)) (size!42300 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86505)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22660 0))(
  ( (tuple2!22661 (_1!11340 (_ BitVec 64)) (_2!11340 V!51459)) )
))
(declare-datatypes ((List!29820 0))(
  ( (Nil!29817) (Cons!29816 (h!31025 tuple2!22660) (t!43391 List!29820)) )
))
(declare-datatypes ((ListLongMap!20329 0))(
  ( (ListLongMap!20330 (toList!10180 List!29820)) )
))
(declare-fun contains!8234 (ListLongMap!20329 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5154 (array!86503 array!86505 (_ BitVec 32) (_ BitVec 32) V!51459 V!51459 (_ BitVec 32) Int) ListLongMap!20329)

(assert (=> b!1298675 (= res!863180 (contains!8234 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1298676 () Bool)

(declare-fun e!740906 () Bool)

(declare-fun tp_is_empty!34767 () Bool)

(assert (=> b!1298676 (= e!740906 tp_is_empty!34767)))

(declare-fun b!1298677 () Bool)

(declare-fun e!740904 () Bool)

(assert (=> b!1298677 (= e!740905 (not e!740904))))

(declare-fun res!863178 () Bool)

(assert (=> b!1298677 (=> res!863178 e!740904)))

(assert (=> b!1298677 (= res!863178 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000))))

(assert (=> b!1298677 (contains!8234 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42954 0))(
  ( (Unit!42955) )
))
(declare-fun lt!580677 () Unit!42954)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!52 (array!86503 array!86505 (_ BitVec 32) (_ BitVec 32) V!51459 V!51459 (_ BitVec 64) (_ BitVec 32) Int) Unit!42954)

(assert (=> b!1298677 (= lt!580677 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!52 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298678 () Bool)

(declare-fun arrayContainsKey!0 (array!86503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1298678 (= e!740904 (arrayContainsKey!0 _keys!1741 k0!1205 from!2144))))

(assert (=> b!1298678 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144))))

(declare-fun lt!580678 () Unit!42954)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!640 (array!86503 array!86505 (_ BitVec 32) (_ BitVec 32) V!51459 V!51459 (_ BitVec 64) (_ BitVec 32) Int) Unit!42954)

(assert (=> b!1298678 (= lt!580678 (lemmaListMapContainsThenArrayContainsFrom!640 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun b!1298679 () Bool)

(declare-fun res!863183 () Bool)

(assert (=> b!1298679 (=> (not res!863183) (not e!740905))))

(assert (=> b!1298679 (= res!863183 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42299 _keys!1741))))))

(declare-fun b!1298680 () Bool)

(declare-fun res!863182 () Bool)

(assert (=> b!1298680 (=> (not res!863182) (not e!740905))))

(declare-datatypes ((List!29821 0))(
  ( (Nil!29818) (Cons!29817 (h!31026 (_ BitVec 64)) (t!43392 List!29821)) )
))
(declare-fun arrayNoDuplicates!0 (array!86503 (_ BitVec 32) List!29821) Bool)

(assert (=> b!1298680 (= res!863182 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29818))))

(declare-fun b!1298681 () Bool)

(declare-fun res!863181 () Bool)

(assert (=> b!1298681 (=> (not res!863181) (not e!740905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86503 (_ BitVec 32)) Bool)

(assert (=> b!1298681 (= res!863181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53711 () Bool)

(declare-fun mapRes!53711 () Bool)

(declare-fun tp!102500 () Bool)

(assert (=> mapNonEmpty!53711 (= mapRes!53711 (and tp!102500 e!740906))))

(declare-fun mapRest!53711 () (Array (_ BitVec 32) ValueCell!16485))

(declare-fun mapKey!53711 () (_ BitVec 32))

(declare-fun mapValue!53711 () ValueCell!16485)

(assert (=> mapNonEmpty!53711 (= (arr!41749 _values!1445) (store mapRest!53711 mapKey!53711 mapValue!53711))))

(declare-fun res!863179 () Bool)

(assert (=> start!109674 (=> (not res!863179) (not e!740905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109674 (= res!863179 (validMask!0 mask!2175))))

(assert (=> start!109674 e!740905))

(assert (=> start!109674 tp_is_empty!34767))

(assert (=> start!109674 true))

(declare-fun e!740903 () Bool)

(declare-fun array_inv!31589 (array!86505) Bool)

(assert (=> start!109674 (and (array_inv!31589 _values!1445) e!740903)))

(declare-fun array_inv!31590 (array!86503) Bool)

(assert (=> start!109674 (array_inv!31590 _keys!1741)))

(assert (=> start!109674 tp!102501))

(declare-fun b!1298682 () Bool)

(declare-fun e!740907 () Bool)

(assert (=> b!1298682 (= e!740907 tp_is_empty!34767)))

(declare-fun b!1298683 () Bool)

(assert (=> b!1298683 (= e!740903 (and e!740907 mapRes!53711))))

(declare-fun condMapEmpty!53711 () Bool)

(declare-fun mapDefault!53711 () ValueCell!16485)

(assert (=> b!1298683 (= condMapEmpty!53711 (= (arr!41749 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16485)) mapDefault!53711)))))

(declare-fun mapIsEmpty!53711 () Bool)

(assert (=> mapIsEmpty!53711 mapRes!53711))

(declare-fun b!1298684 () Bool)

(declare-fun res!863184 () Bool)

(assert (=> b!1298684 (=> (not res!863184) (not e!740905))))

(assert (=> b!1298684 (= res!863184 (and (= (size!42300 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42299 _keys!1741) (size!42300 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109674 res!863179) b!1298684))

(assert (= (and b!1298684 res!863184) b!1298681))

(assert (= (and b!1298681 res!863181) b!1298680))

(assert (= (and b!1298680 res!863182) b!1298679))

(assert (= (and b!1298679 res!863183) b!1298675))

(assert (= (and b!1298675 res!863180) b!1298674))

(assert (= (and b!1298674 res!863177) b!1298677))

(assert (= (and b!1298677 (not res!863178)) b!1298678))

(assert (= (and b!1298683 condMapEmpty!53711) mapIsEmpty!53711))

(assert (= (and b!1298683 (not condMapEmpty!53711)) mapNonEmpty!53711))

(get-info :version)

(assert (= (and mapNonEmpty!53711 ((_ is ValueCellFull!16485) mapValue!53711)) b!1298676))

(assert (= (and b!1298683 ((_ is ValueCellFull!16485) mapDefault!53711)) b!1298682))

(assert (= start!109674 b!1298683))

(declare-fun m!1190003 () Bool)

(assert (=> mapNonEmpty!53711 m!1190003))

(declare-fun m!1190005 () Bool)

(assert (=> b!1298677 m!1190005))

(assert (=> b!1298677 m!1190005))

(declare-fun m!1190007 () Bool)

(assert (=> b!1298677 m!1190007))

(declare-fun m!1190009 () Bool)

(assert (=> b!1298677 m!1190009))

(declare-fun m!1190011 () Bool)

(assert (=> b!1298680 m!1190011))

(declare-fun m!1190013 () Bool)

(assert (=> b!1298681 m!1190013))

(declare-fun m!1190015 () Bool)

(assert (=> b!1298678 m!1190015))

(declare-fun m!1190017 () Bool)

(assert (=> b!1298678 m!1190017))

(declare-fun m!1190019 () Bool)

(assert (=> b!1298678 m!1190019))

(declare-fun m!1190021 () Bool)

(assert (=> b!1298675 m!1190021))

(assert (=> b!1298675 m!1190021))

(declare-fun m!1190023 () Bool)

(assert (=> b!1298675 m!1190023))

(declare-fun m!1190025 () Bool)

(assert (=> b!1298674 m!1190025))

(declare-fun m!1190027 () Bool)

(assert (=> start!109674 m!1190027))

(declare-fun m!1190029 () Bool)

(assert (=> start!109674 m!1190029))

(declare-fun m!1190031 () Bool)

(assert (=> start!109674 m!1190031))

(check-sat (not b_next!29127) (not b!1298677) tp_is_empty!34767 (not b!1298680) (not mapNonEmpty!53711) (not b!1298681) b_and!47227 (not start!109674) (not b!1298678) (not b!1298675))
(check-sat b_and!47227 (not b_next!29127))
(get-model)

(declare-fun b!1298726 () Bool)

(declare-fun e!740934 () Bool)

(declare-fun call!63508 () Bool)

(assert (=> b!1298726 (= e!740934 call!63508)))

(declare-fun bm!63505 () Bool)

(assert (=> bm!63505 (= call!63508 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1298727 () Bool)

(declare-fun e!740933 () Bool)

(assert (=> b!1298727 (= e!740933 call!63508)))

(declare-fun b!1298728 () Bool)

(assert (=> b!1298728 (= e!740934 e!740933)))

(declare-fun lt!580691 () (_ BitVec 64))

(assert (=> b!1298728 (= lt!580691 (select (arr!41748 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!580692 () Unit!42954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86503 (_ BitVec 64) (_ BitVec 32)) Unit!42954)

(assert (=> b!1298728 (= lt!580692 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!580691 #b00000000000000000000000000000000))))

(assert (=> b!1298728 (arrayContainsKey!0 _keys!1741 lt!580691 #b00000000000000000000000000000000)))

(declare-fun lt!580693 () Unit!42954)

(assert (=> b!1298728 (= lt!580693 lt!580692)))

(declare-fun res!863213 () Bool)

(declare-datatypes ((SeekEntryResult!10012 0))(
  ( (MissingZero!10012 (index!42418 (_ BitVec 32))) (Found!10012 (index!42419 (_ BitVec 32))) (Intermediate!10012 (undefined!10824 Bool) (index!42420 (_ BitVec 32)) (x!115375 (_ BitVec 32))) (Undefined!10012) (MissingVacant!10012 (index!42421 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86503 (_ BitVec 32)) SeekEntryResult!10012)

(assert (=> b!1298728 (= res!863213 (= (seekEntryOrOpen!0 (select (arr!41748 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10012 #b00000000000000000000000000000000)))))

(assert (=> b!1298728 (=> (not res!863213) (not e!740933))))

(declare-fun d!140969 () Bool)

(declare-fun res!863214 () Bool)

(declare-fun e!740935 () Bool)

(assert (=> d!140969 (=> res!863214 e!740935)))

(assert (=> d!140969 (= res!863214 (bvsge #b00000000000000000000000000000000 (size!42299 _keys!1741)))))

(assert (=> d!140969 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!740935)))

(declare-fun b!1298729 () Bool)

(assert (=> b!1298729 (= e!740935 e!740934)))

(declare-fun c!124360 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1298729 (= c!124360 (validKeyInArray!0 (select (arr!41748 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!140969 (not res!863214)) b!1298729))

(assert (= (and b!1298729 c!124360) b!1298728))

(assert (= (and b!1298729 (not c!124360)) b!1298726))

(assert (= (and b!1298728 res!863213) b!1298727))

(assert (= (or b!1298727 b!1298726) bm!63505))

(declare-fun m!1190063 () Bool)

(assert (=> bm!63505 m!1190063))

(declare-fun m!1190065 () Bool)

(assert (=> b!1298728 m!1190065))

(declare-fun m!1190067 () Bool)

(assert (=> b!1298728 m!1190067))

(declare-fun m!1190069 () Bool)

(assert (=> b!1298728 m!1190069))

(assert (=> b!1298728 m!1190065))

(declare-fun m!1190071 () Bool)

(assert (=> b!1298728 m!1190071))

(assert (=> b!1298729 m!1190065))

(assert (=> b!1298729 m!1190065))

(declare-fun m!1190073 () Bool)

(assert (=> b!1298729 m!1190073))

(assert (=> b!1298681 d!140969))

(declare-fun d!140971 () Bool)

(declare-fun e!740941 () Bool)

(assert (=> d!140971 e!740941))

(declare-fun res!863217 () Bool)

(assert (=> d!140971 (=> res!863217 e!740941)))

(declare-fun lt!580704 () Bool)

(assert (=> d!140971 (= res!863217 (not lt!580704))))

(declare-fun lt!580705 () Bool)

(assert (=> d!140971 (= lt!580704 lt!580705)))

(declare-fun lt!580703 () Unit!42954)

(declare-fun e!740940 () Unit!42954)

(assert (=> d!140971 (= lt!580703 e!740940)))

(declare-fun c!124363 () Bool)

(assert (=> d!140971 (= c!124363 lt!580705)))

(declare-fun containsKey!715 (List!29820 (_ BitVec 64)) Bool)

(assert (=> d!140971 (= lt!580705 (containsKey!715 (toList!10180 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!140971 (= (contains!8234 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!580704)))

(declare-fun b!1298736 () Bool)

(declare-fun lt!580702 () Unit!42954)

(assert (=> b!1298736 (= e!740940 lt!580702)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!460 (List!29820 (_ BitVec 64)) Unit!42954)

(assert (=> b!1298736 (= lt!580702 (lemmaContainsKeyImpliesGetValueByKeyDefined!460 (toList!10180 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!748 0))(
  ( (Some!747 (v!20061 V!51459)) (None!746) )
))
(declare-fun isDefined!500 (Option!748) Bool)

(declare-fun getValueByKey!697 (List!29820 (_ BitVec 64)) Option!748)

(assert (=> b!1298736 (isDefined!500 (getValueByKey!697 (toList!10180 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1298737 () Bool)

(declare-fun Unit!42956 () Unit!42954)

(assert (=> b!1298737 (= e!740940 Unit!42956)))

(declare-fun b!1298738 () Bool)

(assert (=> b!1298738 (= e!740941 (isDefined!500 (getValueByKey!697 (toList!10180 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!140971 c!124363) b!1298736))

(assert (= (and d!140971 (not c!124363)) b!1298737))

(assert (= (and d!140971 (not res!863217)) b!1298738))

(declare-fun m!1190075 () Bool)

(assert (=> d!140971 m!1190075))

(declare-fun m!1190077 () Bool)

(assert (=> b!1298736 m!1190077))

(declare-fun m!1190079 () Bool)

(assert (=> b!1298736 m!1190079))

(assert (=> b!1298736 m!1190079))

(declare-fun m!1190081 () Bool)

(assert (=> b!1298736 m!1190081))

(assert (=> b!1298738 m!1190079))

(assert (=> b!1298738 m!1190079))

(assert (=> b!1298738 m!1190081))

(assert (=> b!1298675 d!140971))

(declare-fun bm!63520 () Bool)

(declare-fun call!63523 () Bool)

(declare-fun lt!580760 () ListLongMap!20329)

(assert (=> bm!63520 (= call!63523 (contains!8234 lt!580760 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1298781 () Bool)

(declare-fun e!740974 () ListLongMap!20329)

(declare-fun call!63527 () ListLongMap!20329)

(assert (=> b!1298781 (= e!740974 call!63527)))

(declare-fun b!1298782 () Bool)

(declare-fun e!740969 () Bool)

(assert (=> b!1298782 (= e!740969 (validKeyInArray!0 (select (arr!41748 _keys!1741) from!2144)))))

(declare-fun b!1298783 () Bool)

(declare-fun c!124377 () Bool)

(assert (=> b!1298783 (= c!124377 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!740976 () ListLongMap!20329)

(assert (=> b!1298783 (= e!740976 e!740974)))

(declare-fun b!1298784 () Bool)

(declare-fun e!740977 () Bool)

(assert (=> b!1298784 (= e!740977 (not call!63523))))

(declare-fun b!1298785 () Bool)

(declare-fun e!740971 () Bool)

(declare-fun apply!1047 (ListLongMap!20329 (_ BitVec 64)) V!51459)

(declare-fun get!21138 (ValueCell!16485 V!51459) V!51459)

(declare-fun dynLambda!3497 (Int (_ BitVec 64)) V!51459)

(assert (=> b!1298785 (= e!740971 (= (apply!1047 lt!580760 (select (arr!41748 _keys!1741) from!2144)) (get!21138 (select (arr!41749 _values!1445) from!2144) (dynLambda!3497 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1298785 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42300 _values!1445)))))

(assert (=> b!1298785 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42299 _keys!1741)))))

(declare-fun b!1298786 () Bool)

(declare-fun e!740978 () ListLongMap!20329)

(declare-fun call!63528 () ListLongMap!20329)

(declare-fun +!4415 (ListLongMap!20329 tuple2!22660) ListLongMap!20329)

(assert (=> b!1298786 (= e!740978 (+!4415 call!63528 (tuple2!22661 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1298787 () Bool)

(declare-fun res!863238 () Bool)

(declare-fun e!740980 () Bool)

(assert (=> b!1298787 (=> (not res!863238) (not e!740980))))

(declare-fun e!740970 () Bool)

(assert (=> b!1298787 (= res!863238 e!740970)))

(declare-fun res!863239 () Bool)

(assert (=> b!1298787 (=> res!863239 e!740970)))

(assert (=> b!1298787 (= res!863239 (not e!740969))))

(declare-fun res!863244 () Bool)

(assert (=> b!1298787 (=> (not res!863244) (not e!740969))))

(assert (=> b!1298787 (= res!863244 (bvslt from!2144 (size!42299 _keys!1741)))))

(declare-fun b!1298788 () Bool)

(declare-fun e!740968 () Bool)

(assert (=> b!1298788 (= e!740968 (= (apply!1047 lt!580760 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1298789 () Bool)

(declare-fun e!740972 () Bool)

(declare-fun call!63529 () Bool)

(assert (=> b!1298789 (= e!740972 (not call!63529))))

(declare-fun b!1298790 () Bool)

(declare-fun e!740979 () Bool)

(assert (=> b!1298790 (= e!740979 (validKeyInArray!0 (select (arr!41748 _keys!1741) from!2144)))))

(declare-fun bm!63521 () Bool)

(assert (=> bm!63521 (= call!63529 (contains!8234 lt!580760 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1298791 () Bool)

(declare-fun e!740975 () Unit!42954)

(declare-fun Unit!42957 () Unit!42954)

(assert (=> b!1298791 (= e!740975 Unit!42957)))

(declare-fun b!1298793 () Bool)

(declare-fun e!740973 () Bool)

(assert (=> b!1298793 (= e!740972 e!740973)))

(declare-fun res!863242 () Bool)

(assert (=> b!1298793 (= res!863242 call!63529)))

(assert (=> b!1298793 (=> (not res!863242) (not e!740973))))

(declare-fun b!1298794 () Bool)

(assert (=> b!1298794 (= e!740973 (= (apply!1047 lt!580760 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun bm!63522 () Bool)

(assert (=> bm!63522 (= call!63527 call!63528)))

(declare-fun call!63526 () ListLongMap!20329)

(declare-fun bm!63523 () Bool)

(declare-fun call!63525 () ListLongMap!20329)

(declare-fun c!124376 () Bool)

(declare-fun call!63524 () ListLongMap!20329)

(declare-fun c!124379 () Bool)

(assert (=> bm!63523 (= call!63528 (+!4415 (ite c!124376 call!63525 (ite c!124379 call!63524 call!63526)) (ite (or c!124376 c!124379) (tuple2!22661 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22661 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1298795 () Bool)

(assert (=> b!1298795 (= e!740977 e!740968)))

(declare-fun res!863243 () Bool)

(assert (=> b!1298795 (= res!863243 call!63523)))

(assert (=> b!1298795 (=> (not res!863243) (not e!740968))))

(declare-fun b!1298796 () Bool)

(assert (=> b!1298796 (= e!740978 e!740976)))

(assert (=> b!1298796 (= c!124379 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63524 () Bool)

(assert (=> bm!63524 (= call!63524 call!63525)))

(declare-fun bm!63525 () Bool)

(assert (=> bm!63525 (= call!63526 call!63524)))

(declare-fun bm!63526 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6128 (array!86503 array!86505 (_ BitVec 32) (_ BitVec 32) V!51459 V!51459 (_ BitVec 32) Int) ListLongMap!20329)

(assert (=> bm!63526 (= call!63525 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1298797 () Bool)

(declare-fun lt!580764 () Unit!42954)

(assert (=> b!1298797 (= e!740975 lt!580764)))

(declare-fun lt!580758 () ListLongMap!20329)

(assert (=> b!1298797 (= lt!580758 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!580761 () (_ BitVec 64))

(assert (=> b!1298797 (= lt!580761 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580756 () (_ BitVec 64))

(assert (=> b!1298797 (= lt!580756 (select (arr!41748 _keys!1741) from!2144))))

(declare-fun lt!580771 () Unit!42954)

(declare-fun addStillContains!1116 (ListLongMap!20329 (_ BitVec 64) V!51459 (_ BitVec 64)) Unit!42954)

(assert (=> b!1298797 (= lt!580771 (addStillContains!1116 lt!580758 lt!580761 zeroValue!1387 lt!580756))))

(assert (=> b!1298797 (contains!8234 (+!4415 lt!580758 (tuple2!22661 lt!580761 zeroValue!1387)) lt!580756)))

(declare-fun lt!580769 () Unit!42954)

(assert (=> b!1298797 (= lt!580769 lt!580771)))

(declare-fun lt!580770 () ListLongMap!20329)

(assert (=> b!1298797 (= lt!580770 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!580765 () (_ BitVec 64))

(assert (=> b!1298797 (= lt!580765 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580754 () (_ BitVec 64))

(assert (=> b!1298797 (= lt!580754 (select (arr!41748 _keys!1741) from!2144))))

(declare-fun lt!580759 () Unit!42954)

(declare-fun addApplyDifferent!550 (ListLongMap!20329 (_ BitVec 64) V!51459 (_ BitVec 64)) Unit!42954)

(assert (=> b!1298797 (= lt!580759 (addApplyDifferent!550 lt!580770 lt!580765 minValue!1387 lt!580754))))

(assert (=> b!1298797 (= (apply!1047 (+!4415 lt!580770 (tuple2!22661 lt!580765 minValue!1387)) lt!580754) (apply!1047 lt!580770 lt!580754))))

(declare-fun lt!580767 () Unit!42954)

(assert (=> b!1298797 (= lt!580767 lt!580759)))

(declare-fun lt!580751 () ListLongMap!20329)

(assert (=> b!1298797 (= lt!580751 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!580753 () (_ BitVec 64))

(assert (=> b!1298797 (= lt!580753 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580752 () (_ BitVec 64))

(assert (=> b!1298797 (= lt!580752 (select (arr!41748 _keys!1741) from!2144))))

(declare-fun lt!580763 () Unit!42954)

(assert (=> b!1298797 (= lt!580763 (addApplyDifferent!550 lt!580751 lt!580753 zeroValue!1387 lt!580752))))

(assert (=> b!1298797 (= (apply!1047 (+!4415 lt!580751 (tuple2!22661 lt!580753 zeroValue!1387)) lt!580752) (apply!1047 lt!580751 lt!580752))))

(declare-fun lt!580762 () Unit!42954)

(assert (=> b!1298797 (= lt!580762 lt!580763)))

(declare-fun lt!580766 () ListLongMap!20329)

(assert (=> b!1298797 (= lt!580766 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!580755 () (_ BitVec 64))

(assert (=> b!1298797 (= lt!580755 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580750 () (_ BitVec 64))

(assert (=> b!1298797 (= lt!580750 (select (arr!41748 _keys!1741) from!2144))))

(assert (=> b!1298797 (= lt!580764 (addApplyDifferent!550 lt!580766 lt!580755 minValue!1387 lt!580750))))

(assert (=> b!1298797 (= (apply!1047 (+!4415 lt!580766 (tuple2!22661 lt!580755 minValue!1387)) lt!580750) (apply!1047 lt!580766 lt!580750))))

(declare-fun b!1298798 () Bool)

(declare-fun res!863236 () Bool)

(assert (=> b!1298798 (=> (not res!863236) (not e!740980))))

(assert (=> b!1298798 (= res!863236 e!740977)))

(declare-fun c!124380 () Bool)

(assert (=> b!1298798 (= c!124380 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1298799 () Bool)

(assert (=> b!1298799 (= e!740976 call!63527)))

(declare-fun b!1298800 () Bool)

(assert (=> b!1298800 (= e!740970 e!740971)))

(declare-fun res!863237 () Bool)

(assert (=> b!1298800 (=> (not res!863237) (not e!740971))))

(assert (=> b!1298800 (= res!863237 (contains!8234 lt!580760 (select (arr!41748 _keys!1741) from!2144)))))

(assert (=> b!1298800 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42299 _keys!1741)))))

(declare-fun b!1298801 () Bool)

(assert (=> b!1298801 (= e!740974 call!63526)))

(declare-fun d!140973 () Bool)

(assert (=> d!140973 e!740980))

(declare-fun res!863241 () Bool)

(assert (=> d!140973 (=> (not res!863241) (not e!740980))))

(assert (=> d!140973 (= res!863241 (or (bvsge from!2144 (size!42299 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42299 _keys!1741)))))))

(declare-fun lt!580768 () ListLongMap!20329)

(assert (=> d!140973 (= lt!580760 lt!580768)))

(declare-fun lt!580757 () Unit!42954)

(assert (=> d!140973 (= lt!580757 e!740975)))

(declare-fun c!124378 () Bool)

(assert (=> d!140973 (= c!124378 e!740979)))

(declare-fun res!863240 () Bool)

(assert (=> d!140973 (=> (not res!863240) (not e!740979))))

(assert (=> d!140973 (= res!863240 (bvslt from!2144 (size!42299 _keys!1741)))))

(assert (=> d!140973 (= lt!580768 e!740978)))

(assert (=> d!140973 (= c!124376 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140973 (validMask!0 mask!2175)))

(assert (=> d!140973 (= (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!580760)))

(declare-fun b!1298792 () Bool)

(assert (=> b!1298792 (= e!740980 e!740972)))

(declare-fun c!124381 () Bool)

(assert (=> b!1298792 (= c!124381 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!140973 c!124376) b!1298786))

(assert (= (and d!140973 (not c!124376)) b!1298796))

(assert (= (and b!1298796 c!124379) b!1298799))

(assert (= (and b!1298796 (not c!124379)) b!1298783))

(assert (= (and b!1298783 c!124377) b!1298781))

(assert (= (and b!1298783 (not c!124377)) b!1298801))

(assert (= (or b!1298781 b!1298801) bm!63525))

(assert (= (or b!1298799 bm!63525) bm!63524))

(assert (= (or b!1298799 b!1298781) bm!63522))

(assert (= (or b!1298786 bm!63524) bm!63526))

(assert (= (or b!1298786 bm!63522) bm!63523))

(assert (= (and d!140973 res!863240) b!1298790))

(assert (= (and d!140973 c!124378) b!1298797))

(assert (= (and d!140973 (not c!124378)) b!1298791))

(assert (= (and d!140973 res!863241) b!1298787))

(assert (= (and b!1298787 res!863244) b!1298782))

(assert (= (and b!1298787 (not res!863239)) b!1298800))

(assert (= (and b!1298800 res!863237) b!1298785))

(assert (= (and b!1298787 res!863238) b!1298798))

(assert (= (and b!1298798 c!124380) b!1298795))

(assert (= (and b!1298798 (not c!124380)) b!1298784))

(assert (= (and b!1298795 res!863243) b!1298788))

(assert (= (or b!1298795 b!1298784) bm!63520))

(assert (= (and b!1298798 res!863236) b!1298792))

(assert (= (and b!1298792 c!124381) b!1298793))

(assert (= (and b!1298792 (not c!124381)) b!1298789))

(assert (= (and b!1298793 res!863242) b!1298794))

(assert (= (or b!1298793 b!1298789) bm!63521))

(declare-fun b_lambda!23147 () Bool)

(assert (=> (not b_lambda!23147) (not b!1298785)))

(declare-fun t!43396 () Bool)

(declare-fun tb!11377 () Bool)

(assert (=> (and start!109674 (= defaultEntry!1448 defaultEntry!1448) t!43396) tb!11377))

(declare-fun result!23747 () Bool)

(assert (=> tb!11377 (= result!23747 tp_is_empty!34767)))

(assert (=> b!1298785 t!43396))

(declare-fun b_and!47231 () Bool)

(assert (= b_and!47227 (and (=> t!43396 result!23747) b_and!47231)))

(assert (=> b!1298782 m!1190025))

(assert (=> b!1298782 m!1190025))

(declare-fun m!1190083 () Bool)

(assert (=> b!1298782 m!1190083))

(declare-fun m!1190085 () Bool)

(assert (=> b!1298785 m!1190085))

(declare-fun m!1190087 () Bool)

(assert (=> b!1298785 m!1190087))

(declare-fun m!1190089 () Bool)

(assert (=> b!1298785 m!1190089))

(assert (=> b!1298785 m!1190087))

(assert (=> b!1298785 m!1190025))

(declare-fun m!1190091 () Bool)

(assert (=> b!1298785 m!1190091))

(assert (=> b!1298785 m!1190085))

(assert (=> b!1298785 m!1190025))

(declare-fun m!1190093 () Bool)

(assert (=> b!1298797 m!1190093))

(declare-fun m!1190095 () Bool)

(assert (=> b!1298797 m!1190095))

(declare-fun m!1190097 () Bool)

(assert (=> b!1298797 m!1190097))

(assert (=> b!1298797 m!1190095))

(declare-fun m!1190099 () Bool)

(assert (=> b!1298797 m!1190099))

(declare-fun m!1190101 () Bool)

(assert (=> b!1298797 m!1190101))

(declare-fun m!1190103 () Bool)

(assert (=> b!1298797 m!1190103))

(declare-fun m!1190105 () Bool)

(assert (=> b!1298797 m!1190105))

(declare-fun m!1190107 () Bool)

(assert (=> b!1298797 m!1190107))

(declare-fun m!1190109 () Bool)

(assert (=> b!1298797 m!1190109))

(declare-fun m!1190111 () Bool)

(assert (=> b!1298797 m!1190111))

(declare-fun m!1190113 () Bool)

(assert (=> b!1298797 m!1190113))

(assert (=> b!1298797 m!1190101))

(assert (=> b!1298797 m!1190105))

(declare-fun m!1190115 () Bool)

(assert (=> b!1298797 m!1190115))

(declare-fun m!1190117 () Bool)

(assert (=> b!1298797 m!1190117))

(declare-fun m!1190119 () Bool)

(assert (=> b!1298797 m!1190119))

(assert (=> b!1298797 m!1190107))

(declare-fun m!1190121 () Bool)

(assert (=> b!1298797 m!1190121))

(declare-fun m!1190123 () Bool)

(assert (=> b!1298797 m!1190123))

(assert (=> b!1298797 m!1190025))

(assert (=> b!1298790 m!1190025))

(assert (=> b!1298790 m!1190025))

(assert (=> b!1298790 m!1190083))

(assert (=> d!140973 m!1190027))

(assert (=> bm!63526 m!1190119))

(declare-fun m!1190125 () Bool)

(assert (=> bm!63521 m!1190125))

(declare-fun m!1190127 () Bool)

(assert (=> bm!63523 m!1190127))

(declare-fun m!1190129 () Bool)

(assert (=> b!1298786 m!1190129))

(declare-fun m!1190131 () Bool)

(assert (=> b!1298788 m!1190131))

(assert (=> b!1298800 m!1190025))

(assert (=> b!1298800 m!1190025))

(declare-fun m!1190133 () Bool)

(assert (=> b!1298800 m!1190133))

(declare-fun m!1190135 () Bool)

(assert (=> bm!63520 m!1190135))

(declare-fun m!1190137 () Bool)

(assert (=> b!1298794 m!1190137))

(assert (=> b!1298675 d!140973))

(declare-fun d!140975 () Bool)

(declare-fun e!740982 () Bool)

(assert (=> d!140975 e!740982))

(declare-fun res!863245 () Bool)

(assert (=> d!140975 (=> res!863245 e!740982)))

(declare-fun lt!580774 () Bool)

(assert (=> d!140975 (= res!863245 (not lt!580774))))

(declare-fun lt!580775 () Bool)

(assert (=> d!140975 (= lt!580774 lt!580775)))

(declare-fun lt!580773 () Unit!42954)

(declare-fun e!740981 () Unit!42954)

(assert (=> d!140975 (= lt!580773 e!740981)))

(declare-fun c!124382 () Bool)

(assert (=> d!140975 (= c!124382 lt!580775)))

(assert (=> d!140975 (= lt!580775 (containsKey!715 (toList!10180 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448)) k0!1205))))

(assert (=> d!140975 (= (contains!8234 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205) lt!580774)))

(declare-fun b!1298804 () Bool)

(declare-fun lt!580772 () Unit!42954)

(assert (=> b!1298804 (= e!740981 lt!580772)))

(assert (=> b!1298804 (= lt!580772 (lemmaContainsKeyImpliesGetValueByKeyDefined!460 (toList!10180 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448)) k0!1205))))

(assert (=> b!1298804 (isDefined!500 (getValueByKey!697 (toList!10180 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448)) k0!1205))))

(declare-fun b!1298805 () Bool)

(declare-fun Unit!42958 () Unit!42954)

(assert (=> b!1298805 (= e!740981 Unit!42958)))

(declare-fun b!1298806 () Bool)

(assert (=> b!1298806 (= e!740982 (isDefined!500 (getValueByKey!697 (toList!10180 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448)) k0!1205)))))

(assert (= (and d!140975 c!124382) b!1298804))

(assert (= (and d!140975 (not c!124382)) b!1298805))

(assert (= (and d!140975 (not res!863245)) b!1298806))

(declare-fun m!1190139 () Bool)

(assert (=> d!140975 m!1190139))

(declare-fun m!1190141 () Bool)

(assert (=> b!1298804 m!1190141))

(declare-fun m!1190143 () Bool)

(assert (=> b!1298804 m!1190143))

(assert (=> b!1298804 m!1190143))

(declare-fun m!1190145 () Bool)

(assert (=> b!1298804 m!1190145))

(assert (=> b!1298806 m!1190143))

(assert (=> b!1298806 m!1190143))

(assert (=> b!1298806 m!1190145))

(assert (=> b!1298677 d!140975))

(declare-fun bm!63527 () Bool)

(declare-fun call!63530 () Bool)

(declare-fun lt!580786 () ListLongMap!20329)

(assert (=> bm!63527 (= call!63530 (contains!8234 lt!580786 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1298807 () Bool)

(declare-fun e!740989 () ListLongMap!20329)

(declare-fun call!63534 () ListLongMap!20329)

(assert (=> b!1298807 (= e!740989 call!63534)))

(declare-fun b!1298808 () Bool)

(declare-fun e!740984 () Bool)

(assert (=> b!1298808 (= e!740984 (validKeyInArray!0 (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144))))))

(declare-fun b!1298809 () Bool)

(declare-fun c!124384 () Bool)

(assert (=> b!1298809 (= c!124384 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!740991 () ListLongMap!20329)

(assert (=> b!1298809 (= e!740991 e!740989)))

(declare-fun b!1298810 () Bool)

(declare-fun e!740992 () Bool)

(assert (=> b!1298810 (= e!740992 (not call!63530))))

(declare-fun e!740986 () Bool)

(declare-fun b!1298811 () Bool)

(assert (=> b!1298811 (= e!740986 (= (apply!1047 lt!580786 (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144))) (get!21138 (select (arr!41749 _values!1445) (bvadd #b00000000000000000000000000000001 from!2144)) (dynLambda!3497 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1298811 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42300 _values!1445)))))

(assert (=> b!1298811 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42299 _keys!1741)))))

(declare-fun b!1298812 () Bool)

(declare-fun e!740993 () ListLongMap!20329)

(declare-fun call!63535 () ListLongMap!20329)

(assert (=> b!1298812 (= e!740993 (+!4415 call!63535 (tuple2!22661 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1298813 () Bool)

(declare-fun res!863248 () Bool)

(declare-fun e!740995 () Bool)

(assert (=> b!1298813 (=> (not res!863248) (not e!740995))))

(declare-fun e!740985 () Bool)

(assert (=> b!1298813 (= res!863248 e!740985)))

(declare-fun res!863249 () Bool)

(assert (=> b!1298813 (=> res!863249 e!740985)))

(assert (=> b!1298813 (= res!863249 (not e!740984))))

(declare-fun res!863254 () Bool)

(assert (=> b!1298813 (=> (not res!863254) (not e!740984))))

(assert (=> b!1298813 (= res!863254 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42299 _keys!1741)))))

(declare-fun b!1298814 () Bool)

(declare-fun e!740983 () Bool)

(assert (=> b!1298814 (= e!740983 (= (apply!1047 lt!580786 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1298815 () Bool)

(declare-fun e!740987 () Bool)

(declare-fun call!63536 () Bool)

(assert (=> b!1298815 (= e!740987 (not call!63536))))

(declare-fun b!1298816 () Bool)

(declare-fun e!740994 () Bool)

(assert (=> b!1298816 (= e!740994 (validKeyInArray!0 (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144))))))

(declare-fun bm!63528 () Bool)

(assert (=> bm!63528 (= call!63536 (contains!8234 lt!580786 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1298817 () Bool)

(declare-fun e!740990 () Unit!42954)

(declare-fun Unit!42959 () Unit!42954)

(assert (=> b!1298817 (= e!740990 Unit!42959)))

(declare-fun b!1298819 () Bool)

(declare-fun e!740988 () Bool)

(assert (=> b!1298819 (= e!740987 e!740988)))

(declare-fun res!863252 () Bool)

(assert (=> b!1298819 (= res!863252 call!63536)))

(assert (=> b!1298819 (=> (not res!863252) (not e!740988))))

(declare-fun b!1298820 () Bool)

(assert (=> b!1298820 (= e!740988 (= (apply!1047 lt!580786 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun bm!63529 () Bool)

(assert (=> bm!63529 (= call!63534 call!63535)))

(declare-fun call!63533 () ListLongMap!20329)

(declare-fun call!63531 () ListLongMap!20329)

(declare-fun bm!63530 () Bool)

(declare-fun c!124386 () Bool)

(declare-fun call!63532 () ListLongMap!20329)

(declare-fun c!124383 () Bool)

(assert (=> bm!63530 (= call!63535 (+!4415 (ite c!124383 call!63532 (ite c!124386 call!63531 call!63533)) (ite (or c!124383 c!124386) (tuple2!22661 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22661 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1298821 () Bool)

(assert (=> b!1298821 (= e!740992 e!740983)))

(declare-fun res!863253 () Bool)

(assert (=> b!1298821 (= res!863253 call!63530)))

(assert (=> b!1298821 (=> (not res!863253) (not e!740983))))

(declare-fun b!1298822 () Bool)

(assert (=> b!1298822 (= e!740993 e!740991)))

(assert (=> b!1298822 (= c!124386 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63531 () Bool)

(assert (=> bm!63531 (= call!63531 call!63532)))

(declare-fun bm!63532 () Bool)

(assert (=> bm!63532 (= call!63533 call!63531)))

(declare-fun bm!63533 () Bool)

(assert (=> bm!63533 (= call!63532 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun b!1298823 () Bool)

(declare-fun lt!580790 () Unit!42954)

(assert (=> b!1298823 (= e!740990 lt!580790)))

(declare-fun lt!580784 () ListLongMap!20329)

(assert (=> b!1298823 (= lt!580784 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun lt!580787 () (_ BitVec 64))

(assert (=> b!1298823 (= lt!580787 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580782 () (_ BitVec 64))

(assert (=> b!1298823 (= lt!580782 (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)))))

(declare-fun lt!580797 () Unit!42954)

(assert (=> b!1298823 (= lt!580797 (addStillContains!1116 lt!580784 lt!580787 zeroValue!1387 lt!580782))))

(assert (=> b!1298823 (contains!8234 (+!4415 lt!580784 (tuple2!22661 lt!580787 zeroValue!1387)) lt!580782)))

(declare-fun lt!580795 () Unit!42954)

(assert (=> b!1298823 (= lt!580795 lt!580797)))

(declare-fun lt!580796 () ListLongMap!20329)

(assert (=> b!1298823 (= lt!580796 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun lt!580791 () (_ BitVec 64))

(assert (=> b!1298823 (= lt!580791 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580780 () (_ BitVec 64))

(assert (=> b!1298823 (= lt!580780 (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)))))

(declare-fun lt!580785 () Unit!42954)

(assert (=> b!1298823 (= lt!580785 (addApplyDifferent!550 lt!580796 lt!580791 minValue!1387 lt!580780))))

(assert (=> b!1298823 (= (apply!1047 (+!4415 lt!580796 (tuple2!22661 lt!580791 minValue!1387)) lt!580780) (apply!1047 lt!580796 lt!580780))))

(declare-fun lt!580793 () Unit!42954)

(assert (=> b!1298823 (= lt!580793 lt!580785)))

(declare-fun lt!580777 () ListLongMap!20329)

(assert (=> b!1298823 (= lt!580777 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun lt!580779 () (_ BitVec 64))

(assert (=> b!1298823 (= lt!580779 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580778 () (_ BitVec 64))

(assert (=> b!1298823 (= lt!580778 (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)))))

(declare-fun lt!580789 () Unit!42954)

(assert (=> b!1298823 (= lt!580789 (addApplyDifferent!550 lt!580777 lt!580779 zeroValue!1387 lt!580778))))

(assert (=> b!1298823 (= (apply!1047 (+!4415 lt!580777 (tuple2!22661 lt!580779 zeroValue!1387)) lt!580778) (apply!1047 lt!580777 lt!580778))))

(declare-fun lt!580788 () Unit!42954)

(assert (=> b!1298823 (= lt!580788 lt!580789)))

(declare-fun lt!580792 () ListLongMap!20329)

(assert (=> b!1298823 (= lt!580792 (getCurrentListMapNoExtraKeys!6128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun lt!580781 () (_ BitVec 64))

(assert (=> b!1298823 (= lt!580781 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580776 () (_ BitVec 64))

(assert (=> b!1298823 (= lt!580776 (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)))))

(assert (=> b!1298823 (= lt!580790 (addApplyDifferent!550 lt!580792 lt!580781 minValue!1387 lt!580776))))

(assert (=> b!1298823 (= (apply!1047 (+!4415 lt!580792 (tuple2!22661 lt!580781 minValue!1387)) lt!580776) (apply!1047 lt!580792 lt!580776))))

(declare-fun b!1298824 () Bool)

(declare-fun res!863246 () Bool)

(assert (=> b!1298824 (=> (not res!863246) (not e!740995))))

(assert (=> b!1298824 (= res!863246 e!740992)))

(declare-fun c!124387 () Bool)

(assert (=> b!1298824 (= c!124387 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1298825 () Bool)

(assert (=> b!1298825 (= e!740991 call!63534)))

(declare-fun b!1298826 () Bool)

(assert (=> b!1298826 (= e!740985 e!740986)))

(declare-fun res!863247 () Bool)

(assert (=> b!1298826 (=> (not res!863247) (not e!740986))))

(assert (=> b!1298826 (= res!863247 (contains!8234 lt!580786 (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144))))))

(assert (=> b!1298826 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42299 _keys!1741)))))

(declare-fun b!1298827 () Bool)

(assert (=> b!1298827 (= e!740989 call!63533)))

(declare-fun d!140977 () Bool)

(assert (=> d!140977 e!740995))

(declare-fun res!863251 () Bool)

(assert (=> d!140977 (=> (not res!863251) (not e!740995))))

(assert (=> d!140977 (= res!863251 (or (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42299 _keys!1741)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42299 _keys!1741)))))))

(declare-fun lt!580794 () ListLongMap!20329)

(assert (=> d!140977 (= lt!580786 lt!580794)))

(declare-fun lt!580783 () Unit!42954)

(assert (=> d!140977 (= lt!580783 e!740990)))

(declare-fun c!124385 () Bool)

(assert (=> d!140977 (= c!124385 e!740994)))

(declare-fun res!863250 () Bool)

(assert (=> d!140977 (=> (not res!863250) (not e!740994))))

(assert (=> d!140977 (= res!863250 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42299 _keys!1741)))))

(assert (=> d!140977 (= lt!580794 e!740993)))

(assert (=> d!140977 (= c!124383 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140977 (validMask!0 mask!2175)))

(assert (=> d!140977 (= (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) lt!580786)))

(declare-fun b!1298818 () Bool)

(assert (=> b!1298818 (= e!740995 e!740987)))

(declare-fun c!124388 () Bool)

(assert (=> b!1298818 (= c!124388 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!140977 c!124383) b!1298812))

(assert (= (and d!140977 (not c!124383)) b!1298822))

(assert (= (and b!1298822 c!124386) b!1298825))

(assert (= (and b!1298822 (not c!124386)) b!1298809))

(assert (= (and b!1298809 c!124384) b!1298807))

(assert (= (and b!1298809 (not c!124384)) b!1298827))

(assert (= (or b!1298807 b!1298827) bm!63532))

(assert (= (or b!1298825 bm!63532) bm!63531))

(assert (= (or b!1298825 b!1298807) bm!63529))

(assert (= (or b!1298812 bm!63531) bm!63533))

(assert (= (or b!1298812 bm!63529) bm!63530))

(assert (= (and d!140977 res!863250) b!1298816))

(assert (= (and d!140977 c!124385) b!1298823))

(assert (= (and d!140977 (not c!124385)) b!1298817))

(assert (= (and d!140977 res!863251) b!1298813))

(assert (= (and b!1298813 res!863254) b!1298808))

(assert (= (and b!1298813 (not res!863249)) b!1298826))

(assert (= (and b!1298826 res!863247) b!1298811))

(assert (= (and b!1298813 res!863248) b!1298824))

(assert (= (and b!1298824 c!124387) b!1298821))

(assert (= (and b!1298824 (not c!124387)) b!1298810))

(assert (= (and b!1298821 res!863253) b!1298814))

(assert (= (or b!1298821 b!1298810) bm!63527))

(assert (= (and b!1298824 res!863246) b!1298818))

(assert (= (and b!1298818 c!124388) b!1298819))

(assert (= (and b!1298818 (not c!124388)) b!1298815))

(assert (= (and b!1298819 res!863252) b!1298820))

(assert (= (or b!1298819 b!1298815) bm!63528))

(declare-fun b_lambda!23149 () Bool)

(assert (=> (not b_lambda!23149) (not b!1298811)))

(assert (=> b!1298811 t!43396))

(declare-fun b_and!47233 () Bool)

(assert (= b_and!47231 (and (=> t!43396 result!23747) b_and!47233)))

(declare-fun m!1190147 () Bool)

(assert (=> b!1298808 m!1190147))

(assert (=> b!1298808 m!1190147))

(declare-fun m!1190149 () Bool)

(assert (=> b!1298808 m!1190149))

(declare-fun m!1190151 () Bool)

(assert (=> b!1298811 m!1190151))

(assert (=> b!1298811 m!1190087))

(declare-fun m!1190153 () Bool)

(assert (=> b!1298811 m!1190153))

(assert (=> b!1298811 m!1190087))

(assert (=> b!1298811 m!1190147))

(declare-fun m!1190155 () Bool)

(assert (=> b!1298811 m!1190155))

(assert (=> b!1298811 m!1190151))

(assert (=> b!1298811 m!1190147))

(declare-fun m!1190157 () Bool)

(assert (=> b!1298823 m!1190157))

(declare-fun m!1190159 () Bool)

(assert (=> b!1298823 m!1190159))

(declare-fun m!1190161 () Bool)

(assert (=> b!1298823 m!1190161))

(assert (=> b!1298823 m!1190159))

(declare-fun m!1190163 () Bool)

(assert (=> b!1298823 m!1190163))

(declare-fun m!1190165 () Bool)

(assert (=> b!1298823 m!1190165))

(declare-fun m!1190167 () Bool)

(assert (=> b!1298823 m!1190167))

(declare-fun m!1190169 () Bool)

(assert (=> b!1298823 m!1190169))

(declare-fun m!1190171 () Bool)

(assert (=> b!1298823 m!1190171))

(declare-fun m!1190173 () Bool)

(assert (=> b!1298823 m!1190173))

(declare-fun m!1190175 () Bool)

(assert (=> b!1298823 m!1190175))

(declare-fun m!1190177 () Bool)

(assert (=> b!1298823 m!1190177))

(assert (=> b!1298823 m!1190165))

(assert (=> b!1298823 m!1190169))

(declare-fun m!1190179 () Bool)

(assert (=> b!1298823 m!1190179))

(declare-fun m!1190181 () Bool)

(assert (=> b!1298823 m!1190181))

(declare-fun m!1190183 () Bool)

(assert (=> b!1298823 m!1190183))

(assert (=> b!1298823 m!1190171))

(declare-fun m!1190185 () Bool)

(assert (=> b!1298823 m!1190185))

(declare-fun m!1190187 () Bool)

(assert (=> b!1298823 m!1190187))

(assert (=> b!1298823 m!1190147))

(assert (=> b!1298816 m!1190147))

(assert (=> b!1298816 m!1190147))

(assert (=> b!1298816 m!1190149))

(assert (=> d!140977 m!1190027))

(assert (=> bm!63533 m!1190183))

(declare-fun m!1190189 () Bool)

(assert (=> bm!63528 m!1190189))

(declare-fun m!1190191 () Bool)

(assert (=> bm!63530 m!1190191))

(declare-fun m!1190193 () Bool)

(assert (=> b!1298812 m!1190193))

(declare-fun m!1190195 () Bool)

(assert (=> b!1298814 m!1190195))

(assert (=> b!1298826 m!1190147))

(assert (=> b!1298826 m!1190147))

(declare-fun m!1190197 () Bool)

(assert (=> b!1298826 m!1190197))

(declare-fun m!1190199 () Bool)

(assert (=> bm!63527 m!1190199))

(declare-fun m!1190201 () Bool)

(assert (=> b!1298820 m!1190201))

(assert (=> b!1298677 d!140977))

(declare-fun d!140979 () Bool)

(assert (=> d!140979 (contains!8234 (getCurrentListMap!5154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448) k0!1205)))

(declare-fun lt!580800 () Unit!42954)

(declare-fun choose!1910 (array!86503 array!86505 (_ BitVec 32) (_ BitVec 32) V!51459 V!51459 (_ BitVec 64) (_ BitVec 32) Int) Unit!42954)

(assert (=> d!140979 (= lt!580800 (choose!1910 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(assert (=> d!140979 (validMask!0 mask!2175)))

(assert (=> d!140979 (= (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!52 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448) lt!580800)))

(declare-fun bs!36996 () Bool)

(assert (= bs!36996 d!140979))

(declare-fun m!1190203 () Bool)

(assert (=> bs!36996 m!1190203))

(assert (=> bs!36996 m!1190203))

(declare-fun m!1190205 () Bool)

(assert (=> bs!36996 m!1190205))

(declare-fun m!1190207 () Bool)

(assert (=> bs!36996 m!1190207))

(assert (=> bs!36996 m!1190027))

(assert (=> b!1298677 d!140979))

(declare-fun d!140981 () Bool)

(declare-fun res!863259 () Bool)

(declare-fun e!741000 () Bool)

(assert (=> d!140981 (=> res!863259 e!741000)))

(assert (=> d!140981 (= res!863259 (= (select (arr!41748 _keys!1741) from!2144) k0!1205))))

(assert (=> d!140981 (= (arrayContainsKey!0 _keys!1741 k0!1205 from!2144) e!741000)))

(declare-fun b!1298832 () Bool)

(declare-fun e!741001 () Bool)

(assert (=> b!1298832 (= e!741000 e!741001)))

(declare-fun res!863260 () Bool)

(assert (=> b!1298832 (=> (not res!863260) (not e!741001))))

(assert (=> b!1298832 (= res!863260 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42299 _keys!1741)))))

(declare-fun b!1298833 () Bool)

(assert (=> b!1298833 (= e!741001 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd from!2144 #b00000000000000000000000000000001)))))

(assert (= (and d!140981 (not res!863259)) b!1298832))

(assert (= (and b!1298832 res!863260) b!1298833))

(assert (=> d!140981 m!1190025))

(declare-fun m!1190209 () Bool)

(assert (=> b!1298833 m!1190209))

(assert (=> b!1298678 d!140981))

(declare-fun d!140983 () Bool)

(declare-fun res!863261 () Bool)

(declare-fun e!741002 () Bool)

(assert (=> d!140983 (=> res!863261 e!741002)))

(assert (=> d!140983 (= res!863261 (= (select (arr!41748 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)) k0!1205))))

(assert (=> d!140983 (= (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144)) e!741002)))

(declare-fun b!1298834 () Bool)

(declare-fun e!741003 () Bool)

(assert (=> b!1298834 (= e!741002 e!741003)))

(declare-fun res!863262 () Bool)

(assert (=> b!1298834 (=> (not res!863262) (not e!741003))))

(assert (=> b!1298834 (= res!863262 (bvslt (bvadd #b00000000000000000000000000000001 from!2144 #b00000000000000000000000000000001) (size!42299 _keys!1741)))))

(declare-fun b!1298835 () Bool)

(assert (=> b!1298835 (= e!741003 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144 #b00000000000000000000000000000001)))))

(assert (= (and d!140983 (not res!863261)) b!1298834))

(assert (= (and b!1298834 res!863262) b!1298835))

(assert (=> d!140983 m!1190147))

(declare-fun m!1190211 () Bool)

(assert (=> b!1298835 m!1190211))

(assert (=> b!1298678 d!140983))

(declare-fun d!140985 () Bool)

(declare-fun e!741006 () Bool)

(assert (=> d!140985 e!741006))

(declare-fun c!124391 () Bool)

(assert (=> d!140985 (= c!124391 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!580803 () Unit!42954)

(declare-fun choose!1911 (array!86503 array!86505 (_ BitVec 32) (_ BitVec 32) V!51459 V!51459 (_ BitVec 64) (_ BitVec 32) Int) Unit!42954)

(assert (=> d!140985 (= lt!580803 (choose!1911 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(assert (=> d!140985 (validMask!0 mask!2175)))

(assert (=> d!140985 (= (lemmaListMapContainsThenArrayContainsFrom!640 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) lt!580803)))

(declare-fun b!1298840 () Bool)

(assert (=> b!1298840 (= e!741006 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144)))))

(declare-fun b!1298841 () Bool)

(assert (=> b!1298841 (= e!741006 (ite (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!140985 c!124391) b!1298840))

(assert (= (and d!140985 (not c!124391)) b!1298841))

(declare-fun m!1190213 () Bool)

(assert (=> d!140985 m!1190213))

(assert (=> d!140985 m!1190027))

(assert (=> b!1298840 m!1190017))

(assert (=> b!1298678 d!140985))

(declare-fun d!140987 () Bool)

(declare-fun res!863270 () Bool)

(declare-fun e!741015 () Bool)

(assert (=> d!140987 (=> res!863270 e!741015)))

(assert (=> d!140987 (= res!863270 (bvsge #b00000000000000000000000000000000 (size!42299 _keys!1741)))))

(assert (=> d!140987 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29818) e!741015)))

(declare-fun b!1298852 () Bool)

(declare-fun e!741017 () Bool)

(declare-fun call!63539 () Bool)

(assert (=> b!1298852 (= e!741017 call!63539)))

(declare-fun b!1298853 () Bool)

(assert (=> b!1298853 (= e!741017 call!63539)))

(declare-fun bm!63536 () Bool)

(declare-fun c!124394 () Bool)

(assert (=> bm!63536 (= call!63539 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124394 (Cons!29817 (select (arr!41748 _keys!1741) #b00000000000000000000000000000000) Nil!29818) Nil!29818)))))

(declare-fun b!1298854 () Bool)

(declare-fun e!741018 () Bool)

(assert (=> b!1298854 (= e!741018 e!741017)))

(assert (=> b!1298854 (= c!124394 (validKeyInArray!0 (select (arr!41748 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1298855 () Bool)

(assert (=> b!1298855 (= e!741015 e!741018)))

(declare-fun res!863269 () Bool)

(assert (=> b!1298855 (=> (not res!863269) (not e!741018))))

(declare-fun e!741016 () Bool)

(assert (=> b!1298855 (= res!863269 (not e!741016))))

(declare-fun res!863271 () Bool)

(assert (=> b!1298855 (=> (not res!863271) (not e!741016))))

(assert (=> b!1298855 (= res!863271 (validKeyInArray!0 (select (arr!41748 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1298856 () Bool)

(declare-fun contains!8236 (List!29821 (_ BitVec 64)) Bool)

(assert (=> b!1298856 (= e!741016 (contains!8236 Nil!29818 (select (arr!41748 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!140987 (not res!863270)) b!1298855))

(assert (= (and b!1298855 res!863271) b!1298856))

(assert (= (and b!1298855 res!863269) b!1298854))

(assert (= (and b!1298854 c!124394) b!1298853))

(assert (= (and b!1298854 (not c!124394)) b!1298852))

(assert (= (or b!1298853 b!1298852) bm!63536))

(assert (=> bm!63536 m!1190065))

(declare-fun m!1190215 () Bool)

(assert (=> bm!63536 m!1190215))

(assert (=> b!1298854 m!1190065))

(assert (=> b!1298854 m!1190065))

(assert (=> b!1298854 m!1190073))

(assert (=> b!1298855 m!1190065))

(assert (=> b!1298855 m!1190065))

(assert (=> b!1298855 m!1190073))

(assert (=> b!1298856 m!1190065))

(assert (=> b!1298856 m!1190065))

(declare-fun m!1190217 () Bool)

(assert (=> b!1298856 m!1190217))

(assert (=> b!1298680 d!140987))

(declare-fun d!140989 () Bool)

(assert (=> d!140989 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!109674 d!140989))

(declare-fun d!140991 () Bool)

(assert (=> d!140991 (= (array_inv!31589 _values!1445) (bvsge (size!42300 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!109674 d!140991))

(declare-fun d!140993 () Bool)

(assert (=> d!140993 (= (array_inv!31590 _keys!1741) (bvsge (size!42299 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!109674 d!140993))

(declare-fun b!1298863 () Bool)

(declare-fun e!741024 () Bool)

(assert (=> b!1298863 (= e!741024 tp_is_empty!34767)))

(declare-fun b!1298864 () Bool)

(declare-fun e!741023 () Bool)

(assert (=> b!1298864 (= e!741023 tp_is_empty!34767)))

(declare-fun mapIsEmpty!53717 () Bool)

(declare-fun mapRes!53717 () Bool)

(assert (=> mapIsEmpty!53717 mapRes!53717))

(declare-fun mapNonEmpty!53717 () Bool)

(declare-fun tp!102510 () Bool)

(assert (=> mapNonEmpty!53717 (= mapRes!53717 (and tp!102510 e!741024))))

(declare-fun mapRest!53717 () (Array (_ BitVec 32) ValueCell!16485))

(declare-fun mapKey!53717 () (_ BitVec 32))

(declare-fun mapValue!53717 () ValueCell!16485)

(assert (=> mapNonEmpty!53717 (= mapRest!53711 (store mapRest!53717 mapKey!53717 mapValue!53717))))

(declare-fun condMapEmpty!53717 () Bool)

(declare-fun mapDefault!53717 () ValueCell!16485)

(assert (=> mapNonEmpty!53711 (= condMapEmpty!53717 (= mapRest!53711 ((as const (Array (_ BitVec 32) ValueCell!16485)) mapDefault!53717)))))

(assert (=> mapNonEmpty!53711 (= tp!102500 (and e!741023 mapRes!53717))))

(assert (= (and mapNonEmpty!53711 condMapEmpty!53717) mapIsEmpty!53717))

(assert (= (and mapNonEmpty!53711 (not condMapEmpty!53717)) mapNonEmpty!53717))

(assert (= (and mapNonEmpty!53717 ((_ is ValueCellFull!16485) mapValue!53717)) b!1298863))

(assert (= (and mapNonEmpty!53711 ((_ is ValueCellFull!16485) mapDefault!53717)) b!1298864))

(declare-fun m!1190219 () Bool)

(assert (=> mapNonEmpty!53717 m!1190219))

(declare-fun b_lambda!23151 () Bool)

(assert (= b_lambda!23147 (or (and start!109674 b_free!29127) b_lambda!23151)))

(declare-fun b_lambda!23153 () Bool)

(assert (= b_lambda!23149 (or (and start!109674 b_free!29127) b_lambda!23153)))

(check-sat (not b_lambda!23153) (not b!1298797) b_and!47233 (not b!1298794) (not bm!63523) (not b!1298728) (not b!1298812) (not b!1298854) (not b!1298855) (not b!1298811) (not b_lambda!23151) (not b!1298835) (not b!1298786) (not b_next!29127) (not b!1298729) (not b!1298816) (not b!1298782) (not mapNonEmpty!53717) (not b!1298823) (not bm!63528) (not bm!63520) (not bm!63536) (not bm!63533) (not b!1298814) (not b!1298833) (not d!140971) (not b!1298856) (not b!1298785) (not b!1298790) (not b!1298736) (not b!1298804) tp_is_empty!34767 (not bm!63505) (not b!1298738) (not bm!63530) (not bm!63527) (not d!140973) (not b!1298800) (not d!140985) (not d!140979) (not b!1298820) (not b!1298806) (not b!1298788) (not b!1298826) (not bm!63521) (not bm!63526) (not d!140975) (not d!140977) (not b!1298808) (not b!1298840))
(check-sat b_and!47233 (not b_next!29127))
