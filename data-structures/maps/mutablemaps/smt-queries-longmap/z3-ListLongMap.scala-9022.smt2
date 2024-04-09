; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108930 () Bool)

(assert start!108930)

(declare-fun b_free!28407 () Bool)

(declare-fun b_next!28407 () Bool)

(assert (=> start!108930 (= b_free!28407 (not b_next!28407))))

(declare-fun tp!100337 () Bool)

(declare-fun b_and!46485 () Bool)

(assert (=> start!108930 (= tp!100337 b_and!46485)))

(declare-datatypes ((V!50499 0))(
  ( (V!50500 (val!17098 Int)) )
))
(declare-datatypes ((tuple2!22058 0))(
  ( (tuple2!22059 (_1!11039 (_ BitVec 64)) (_2!11039 V!50499)) )
))
(declare-datatypes ((List!29265 0))(
  ( (Nil!29262) (Cons!29261 (h!30470 tuple2!22058) (t!42820 List!29265)) )
))
(declare-datatypes ((ListLongMap!19727 0))(
  ( (ListLongMap!19728 (toList!9879 List!29265)) )
))
(declare-fun lt!577076 () ListLongMap!19727)

(declare-fun lt!577069 () ListLongMap!19727)

(declare-fun c!124088 () Bool)

(declare-fun call!62858 () Bool)

(declare-fun c!124089 () Bool)

(declare-fun bm!62855 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!577065 () ListLongMap!19727)

(declare-fun contains!7933 (ListLongMap!19727 (_ BitVec 64)) Bool)

(assert (=> bm!62855 (= call!62858 (contains!7933 (ite c!124088 lt!577065 (ite c!124089 lt!577069 lt!577076)) k0!1205))))

(declare-fun b!1286149 () Bool)

(declare-fun res!854462 () Bool)

(declare-fun e!734635 () Bool)

(assert (=> b!1286149 (=> (not res!854462) (not e!734635))))

(declare-fun minValue!1387 () V!50499)

(declare-fun zeroValue!1387 () V!50499)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16125 0))(
  ( (ValueCellFull!16125 (v!19698 V!50499)) (EmptyCell!16125) )
))
(declare-datatypes ((array!85103 0))(
  ( (array!85104 (arr!41049 (Array (_ BitVec 32) ValueCell!16125)) (size!41600 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85103)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85105 0))(
  ( (array!85106 (arr!41050 (Array (_ BitVec 32) (_ BitVec 64))) (size!41601 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85105)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!4892 (array!85105 array!85103 (_ BitVec 32) (_ BitVec 32) V!50499 V!50499 (_ BitVec 32) Int) ListLongMap!19727)

(assert (=> b!1286149 (= res!854462 (contains!7933 (getCurrentListMap!4892 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!52628 () Bool)

(declare-fun mapRes!52628 () Bool)

(declare-fun tp!100338 () Bool)

(declare-fun e!734640 () Bool)

(assert (=> mapNonEmpty!52628 (= mapRes!52628 (and tp!100338 e!734640))))

(declare-fun mapRest!52628 () (Array (_ BitVec 32) ValueCell!16125))

(declare-fun mapKey!52628 () (_ BitVec 32))

(declare-fun mapValue!52628 () ValueCell!16125)

(assert (=> mapNonEmpty!52628 (= (arr!41049 _values!1445) (store mapRest!52628 mapKey!52628 mapValue!52628))))

(declare-fun b!1286150 () Bool)

(declare-datatypes ((Unit!42449 0))(
  ( (Unit!42450) )
))
(declare-fun e!734641 () Unit!42449)

(declare-fun e!734634 () Unit!42449)

(assert (=> b!1286150 (= e!734641 e!734634)))

(declare-fun lt!577075 () Bool)

(assert (=> b!1286150 (= c!124089 (and (not lt!577075) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286151 () Bool)

(declare-fun res!854460 () Bool)

(assert (=> b!1286151 (=> (not res!854460) (not e!734635))))

(assert (=> b!1286151 (= res!854460 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41601 _keys!1741))))))

(declare-fun b!1286152 () Bool)

(declare-fun e!734633 () Unit!42449)

(declare-fun lt!577068 () Unit!42449)

(assert (=> b!1286152 (= e!734633 lt!577068)))

(declare-fun call!62861 () ListLongMap!19727)

(assert (=> b!1286152 (= lt!577076 call!62861)))

(declare-fun call!62863 () Unit!42449)

(assert (=> b!1286152 (= lt!577068 call!62863)))

(declare-fun call!62859 () Bool)

(assert (=> b!1286152 call!62859))

(declare-fun b!1286153 () Bool)

(declare-fun Unit!42451 () Unit!42449)

(assert (=> b!1286153 (= e!734633 Unit!42451)))

(declare-fun b!1286154 () Bool)

(declare-fun e!734638 () Bool)

(assert (=> b!1286154 (= e!734638 true)))

(declare-fun lt!577071 () V!50499)

(declare-fun +!4287 (ListLongMap!19727 tuple2!22058) ListLongMap!19727)

(assert (=> b!1286154 (not (contains!7933 (+!4287 (ListLongMap!19728 Nil!29262) (tuple2!22059 (select (arr!41050 _keys!1741) from!2144) lt!577071)) k0!1205))))

(declare-fun lt!577067 () Unit!42449)

(declare-fun addStillNotContains!338 (ListLongMap!19727 (_ BitVec 64) V!50499 (_ BitVec 64)) Unit!42449)

(assert (=> b!1286154 (= lt!577067 (addStillNotContains!338 (ListLongMap!19728 Nil!29262) (select (arr!41050 _keys!1741) from!2144) lt!577071 k0!1205))))

(declare-fun get!20893 (ValueCell!16125 V!50499) V!50499)

(declare-fun dynLambda!3492 (Int (_ BitVec 64)) V!50499)

(assert (=> b!1286154 (= lt!577071 (get!20893 (select (arr!41049 _values!1445) from!2144) (dynLambda!3492 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!62856 () Bool)

(declare-fun call!62862 () Unit!42449)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!25 ((_ BitVec 64) (_ BitVec 64) V!50499 ListLongMap!19727) Unit!42449)

(assert (=> bm!62856 (= call!62862 (lemmaInListMapAfterAddingDiffThenInBefore!25 k0!1205 (ite (or c!124088 c!124089) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124088 c!124089) zeroValue!1387 minValue!1387) (ite c!124088 lt!577065 (ite c!124089 lt!577069 lt!577076))))))

(declare-fun bm!62857 () Bool)

(declare-fun call!62860 () ListLongMap!19727)

(assert (=> bm!62857 (= call!62861 call!62860)))

(declare-fun b!1286155 () Bool)

(declare-fun tp_is_empty!34047 () Bool)

(assert (=> b!1286155 (= e!734640 tp_is_empty!34047)))

(declare-fun b!1286156 () Bool)

(declare-fun res!854466 () Bool)

(assert (=> b!1286156 (=> (not res!854466) (not e!734635))))

(declare-datatypes ((List!29266 0))(
  ( (Nil!29263) (Cons!29262 (h!30471 (_ BitVec 64)) (t!42821 List!29266)) )
))
(declare-fun arrayNoDuplicates!0 (array!85105 (_ BitVec 32) List!29266) Bool)

(assert (=> b!1286156 (= res!854466 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29263))))

(declare-fun bm!62858 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5998 (array!85105 array!85103 (_ BitVec 32) (_ BitVec 32) V!50499 V!50499 (_ BitVec 32) Int) ListLongMap!19727)

(assert (=> bm!62858 (= call!62860 (getCurrentListMapNoExtraKeys!5998 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1286158 () Bool)

(declare-fun res!854459 () Bool)

(assert (=> b!1286158 (=> (not res!854459) (not e!734635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286158 (= res!854459 (validKeyInArray!0 (select (arr!41050 _keys!1741) from!2144)))))

(declare-fun mapIsEmpty!52628 () Bool)

(assert (=> mapIsEmpty!52628 mapRes!52628))

(declare-fun b!1286159 () Bool)

(declare-fun lt!577077 () Unit!42449)

(assert (=> b!1286159 (= e!734641 lt!577077)))

(assert (=> b!1286159 (= lt!577065 call!62860)))

(declare-fun lt!577073 () ListLongMap!19727)

(assert (=> b!1286159 (= lt!577073 (+!4287 lt!577065 (tuple2!22059 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577066 () Unit!42449)

(assert (=> b!1286159 (= lt!577066 (lemmaInListMapAfterAddingDiffThenInBefore!25 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!577073))))

(assert (=> b!1286159 (contains!7933 lt!577073 k0!1205)))

(assert (=> b!1286159 (= lt!577077 call!62862)))

(assert (=> b!1286159 call!62858))

(declare-fun bm!62859 () Bool)

(assert (=> bm!62859 (= call!62859 call!62858)))

(declare-fun bm!62860 () Bool)

(assert (=> bm!62860 (= call!62863 call!62862)))

(declare-fun b!1286160 () Bool)

(declare-fun res!854464 () Bool)

(assert (=> b!1286160 (=> (not res!854464) (not e!734635))))

(assert (=> b!1286160 (= res!854464 (and (= (size!41600 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41601 _keys!1741) (size!41600 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1286161 () Bool)

(declare-fun c!124090 () Bool)

(assert (=> b!1286161 (= c!124090 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577075))))

(assert (=> b!1286161 (= e!734634 e!734633)))

(declare-fun b!1286162 () Bool)

(declare-fun e!734636 () Bool)

(assert (=> b!1286162 (= e!734636 tp_is_empty!34047)))

(declare-fun b!1286163 () Bool)

(declare-fun e!734637 () Bool)

(assert (=> b!1286163 (= e!734637 (and e!734636 mapRes!52628))))

(declare-fun condMapEmpty!52628 () Bool)

(declare-fun mapDefault!52628 () ValueCell!16125)

(assert (=> b!1286163 (= condMapEmpty!52628 (= (arr!41049 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16125)) mapDefault!52628)))))

(declare-fun b!1286164 () Bool)

(declare-fun res!854465 () Bool)

(assert (=> b!1286164 (=> (not res!854465) (not e!734635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85105 (_ BitVec 32)) Bool)

(assert (=> b!1286164 (= res!854465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1286165 () Bool)

(assert (=> b!1286165 (= e!734635 (not e!734638))))

(declare-fun res!854463 () Bool)

(assert (=> b!1286165 (=> res!854463 e!734638)))

(assert (=> b!1286165 (= res!854463 (= k0!1205 (select (arr!41050 _keys!1741) from!2144)))))

(assert (=> b!1286165 (not (contains!7933 (ListLongMap!19728 Nil!29262) k0!1205))))

(declare-fun lt!577070 () Unit!42449)

(declare-fun emptyContainsNothing!4 ((_ BitVec 64)) Unit!42449)

(assert (=> b!1286165 (= lt!577070 (emptyContainsNothing!4 k0!1205))))

(declare-fun lt!577072 () Unit!42449)

(assert (=> b!1286165 (= lt!577072 e!734641)))

(assert (=> b!1286165 (= c!124088 (and (not lt!577075) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286165 (= lt!577075 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286166 () Bool)

(declare-fun res!854458 () Bool)

(assert (=> b!1286166 (=> (not res!854458) (not e!734635))))

(assert (=> b!1286166 (= res!854458 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41601 _keys!1741))))))

(declare-fun res!854461 () Bool)

(assert (=> start!108930 (=> (not res!854461) (not e!734635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108930 (= res!854461 (validMask!0 mask!2175))))

(assert (=> start!108930 e!734635))

(assert (=> start!108930 tp_is_empty!34047))

(assert (=> start!108930 true))

(declare-fun array_inv!31105 (array!85103) Bool)

(assert (=> start!108930 (and (array_inv!31105 _values!1445) e!734637)))

(declare-fun array_inv!31106 (array!85105) Bool)

(assert (=> start!108930 (array_inv!31106 _keys!1741)))

(assert (=> start!108930 tp!100337))

(declare-fun b!1286157 () Bool)

(assert (=> b!1286157 call!62859))

(declare-fun lt!577074 () Unit!42449)

(assert (=> b!1286157 (= lt!577074 call!62863)))

(assert (=> b!1286157 (= lt!577069 call!62861)))

(assert (=> b!1286157 (= e!734634 lt!577074)))

(assert (= (and start!108930 res!854461) b!1286160))

(assert (= (and b!1286160 res!854464) b!1286164))

(assert (= (and b!1286164 res!854465) b!1286156))

(assert (= (and b!1286156 res!854466) b!1286151))

(assert (= (and b!1286151 res!854460) b!1286149))

(assert (= (and b!1286149 res!854462) b!1286166))

(assert (= (and b!1286166 res!854458) b!1286158))

(assert (= (and b!1286158 res!854459) b!1286165))

(assert (= (and b!1286165 c!124088) b!1286159))

(assert (= (and b!1286165 (not c!124088)) b!1286150))

(assert (= (and b!1286150 c!124089) b!1286157))

(assert (= (and b!1286150 (not c!124089)) b!1286161))

(assert (= (and b!1286161 c!124090) b!1286152))

(assert (= (and b!1286161 (not c!124090)) b!1286153))

(assert (= (or b!1286157 b!1286152) bm!62857))

(assert (= (or b!1286157 b!1286152) bm!62860))

(assert (= (or b!1286157 b!1286152) bm!62859))

(assert (= (or b!1286159 bm!62857) bm!62858))

(assert (= (or b!1286159 bm!62860) bm!62856))

(assert (= (or b!1286159 bm!62859) bm!62855))

(assert (= (and b!1286165 (not res!854463)) b!1286154))

(assert (= (and b!1286163 condMapEmpty!52628) mapIsEmpty!52628))

(assert (= (and b!1286163 (not condMapEmpty!52628)) mapNonEmpty!52628))

(get-info :version)

(assert (= (and mapNonEmpty!52628 ((_ is ValueCellFull!16125) mapValue!52628)) b!1286155))

(assert (= (and b!1286163 ((_ is ValueCellFull!16125) mapDefault!52628)) b!1286162))

(assert (= start!108930 b!1286163))

(declare-fun b_lambda!23119 () Bool)

(assert (=> (not b_lambda!23119) (not b!1286154)))

(declare-fun t!42819 () Bool)

(declare-fun tb!11359 () Bool)

(assert (=> (and start!108930 (= defaultEntry!1448 defaultEntry!1448) t!42819) tb!11359))

(declare-fun result!23709 () Bool)

(assert (=> tb!11359 (= result!23709 tp_is_empty!34047)))

(assert (=> b!1286154 t!42819))

(declare-fun b_and!46487 () Bool)

(assert (= b_and!46485 (and (=> t!42819 result!23709) b_and!46487)))

(declare-fun m!1179291 () Bool)

(assert (=> b!1286159 m!1179291))

(declare-fun m!1179293 () Bool)

(assert (=> b!1286159 m!1179293))

(declare-fun m!1179295 () Bool)

(assert (=> b!1286159 m!1179295))

(declare-fun m!1179297 () Bool)

(assert (=> b!1286158 m!1179297))

(assert (=> b!1286158 m!1179297))

(declare-fun m!1179299 () Bool)

(assert (=> b!1286158 m!1179299))

(declare-fun m!1179301 () Bool)

(assert (=> bm!62858 m!1179301))

(declare-fun m!1179303 () Bool)

(assert (=> b!1286164 m!1179303))

(declare-fun m!1179305 () Bool)

(assert (=> b!1286156 m!1179305))

(declare-fun m!1179307 () Bool)

(assert (=> mapNonEmpty!52628 m!1179307))

(declare-fun m!1179309 () Bool)

(assert (=> bm!62855 m!1179309))

(declare-fun m!1179311 () Bool)

(assert (=> bm!62856 m!1179311))

(declare-fun m!1179313 () Bool)

(assert (=> b!1286149 m!1179313))

(assert (=> b!1286149 m!1179313))

(declare-fun m!1179315 () Bool)

(assert (=> b!1286149 m!1179315))

(assert (=> b!1286154 m!1179297))

(declare-fun m!1179317 () Bool)

(assert (=> b!1286154 m!1179317))

(declare-fun m!1179319 () Bool)

(assert (=> b!1286154 m!1179319))

(declare-fun m!1179321 () Bool)

(assert (=> b!1286154 m!1179321))

(declare-fun m!1179323 () Bool)

(assert (=> b!1286154 m!1179323))

(assert (=> b!1286154 m!1179323))

(assert (=> b!1286154 m!1179321))

(declare-fun m!1179325 () Bool)

(assert (=> b!1286154 m!1179325))

(assert (=> b!1286154 m!1179319))

(declare-fun m!1179327 () Bool)

(assert (=> b!1286154 m!1179327))

(assert (=> b!1286154 m!1179297))

(declare-fun m!1179329 () Bool)

(assert (=> start!108930 m!1179329))

(declare-fun m!1179331 () Bool)

(assert (=> start!108930 m!1179331))

(declare-fun m!1179333 () Bool)

(assert (=> start!108930 m!1179333))

(assert (=> b!1286165 m!1179297))

(declare-fun m!1179335 () Bool)

(assert (=> b!1286165 m!1179335))

(declare-fun m!1179337 () Bool)

(assert (=> b!1286165 m!1179337))

(check-sat (not bm!62858) (not mapNonEmpty!52628) (not b_next!28407) (not b!1286164) (not b_lambda!23119) (not bm!62856) (not b!1286149) (not b!1286165) tp_is_empty!34047 (not b!1286159) (not b!1286154) (not start!108930) (not bm!62855) (not b!1286158) (not b!1286156) b_and!46487)
(check-sat b_and!46487 (not b_next!28407))
