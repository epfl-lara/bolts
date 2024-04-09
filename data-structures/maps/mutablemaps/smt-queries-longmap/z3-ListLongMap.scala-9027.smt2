; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108960 () Bool)

(assert start!108960)

(declare-fun b_free!28437 () Bool)

(declare-fun b_next!28437 () Bool)

(assert (=> start!108960 (= b_free!28437 (not b_next!28437))))

(declare-fun tp!100427 () Bool)

(declare-fun b_and!46531 () Bool)

(assert (=> start!108960 (= tp!100427 b_and!46531)))

(declare-fun b!1286952 () Bool)

(declare-fun res!854847 () Bool)

(declare-fun e!735021 () Bool)

(assert (=> b!1286952 (=> (not res!854847) (not e!735021))))

(declare-datatypes ((array!85159 0))(
  ( (array!85160 (arr!41077 (Array (_ BitVec 32) (_ BitVec 64))) (size!41628 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85159)

(declare-datatypes ((List!29289 0))(
  ( (Nil!29286) (Cons!29285 (h!30494 (_ BitVec 64)) (t!42858 List!29289)) )
))
(declare-fun arrayNoDuplicates!0 (array!85159 (_ BitVec 32) List!29289) Bool)

(assert (=> b!1286952 (= res!854847 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29286))))

(declare-fun b!1286953 () Bool)

(declare-fun e!735019 () Bool)

(declare-fun e!735022 () Bool)

(declare-fun mapRes!52673 () Bool)

(assert (=> b!1286953 (= e!735019 (and e!735022 mapRes!52673))))

(declare-fun condMapEmpty!52673 () Bool)

(declare-datatypes ((V!50539 0))(
  ( (V!50540 (val!17113 Int)) )
))
(declare-datatypes ((ValueCell!16140 0))(
  ( (ValueCellFull!16140 (v!19713 V!50539)) (EmptyCell!16140) )
))
(declare-datatypes ((array!85161 0))(
  ( (array!85162 (arr!41078 (Array (_ BitVec 32) ValueCell!16140)) (size!41629 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85161)

(declare-fun mapDefault!52673 () ValueCell!16140)

(assert (=> b!1286953 (= condMapEmpty!52673 (= (arr!41078 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16140)) mapDefault!52673)))))

(declare-fun b!1286954 () Bool)

(declare-fun e!735018 () Bool)

(declare-fun tp_is_empty!34077 () Bool)

(assert (=> b!1286954 (= e!735018 tp_is_empty!34077)))

(declare-fun b!1286955 () Bool)

(declare-fun c!124223 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!577604 () Bool)

(assert (=> b!1286955 (= c!124223 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577604))))

(declare-datatypes ((Unit!42487 0))(
  ( (Unit!42488) )
))
(declare-fun e!735016 () Unit!42487)

(declare-fun e!735020 () Unit!42487)

(assert (=> b!1286955 (= e!735016 e!735020)))

(declare-fun b!1286956 () Bool)

(declare-fun res!854846 () Bool)

(assert (=> b!1286956 (=> (not res!854846) (not e!735021))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286956 (= res!854846 (validKeyInArray!0 (select (arr!41077 _keys!1741) from!2144)))))

(declare-fun b!1286957 () Bool)

(declare-fun Unit!42489 () Unit!42487)

(assert (=> b!1286957 (= e!735020 Unit!42489)))

(declare-fun b!1286958 () Bool)

(declare-fun call!63132 () Bool)

(assert (=> b!1286958 call!63132))

(declare-fun lt!577605 () Unit!42487)

(declare-fun call!63129 () Unit!42487)

(assert (=> b!1286958 (= lt!577605 call!63129)))

(declare-datatypes ((tuple2!22088 0))(
  ( (tuple2!22089 (_1!11054 (_ BitVec 64)) (_2!11054 V!50539)) )
))
(declare-datatypes ((List!29290 0))(
  ( (Nil!29287) (Cons!29286 (h!30495 tuple2!22088) (t!42859 List!29290)) )
))
(declare-datatypes ((ListLongMap!19757 0))(
  ( (ListLongMap!19758 (toList!9894 List!29290)) )
))
(declare-fun lt!577611 () ListLongMap!19757)

(declare-fun call!63131 () ListLongMap!19757)

(assert (=> b!1286958 (= lt!577611 call!63131)))

(assert (=> b!1286958 (= e!735016 lt!577605)))

(declare-fun b!1286960 () Bool)

(declare-fun e!735017 () Unit!42487)

(assert (=> b!1286960 (= e!735017 e!735016)))

(declare-fun c!124225 () Bool)

(assert (=> b!1286960 (= c!124225 (and (not lt!577604) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286961 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1286961 (= e!735021 (not (or (not (= k0!1205 (select (arr!41077 _keys!1741) from!2144))) (bvslt (size!41628 _keys!1741) #b01111111111111111111111111111111))))))

(declare-fun contains!7948 (ListLongMap!19757 (_ BitVec 64)) Bool)

(assert (=> b!1286961 (not (contains!7948 (ListLongMap!19758 Nil!29287) k0!1205))))

(declare-fun lt!577607 () Unit!42487)

(declare-fun emptyContainsNothing!15 ((_ BitVec 64)) Unit!42487)

(assert (=> b!1286961 (= lt!577607 (emptyContainsNothing!15 k0!1205))))

(declare-fun lt!577610 () Unit!42487)

(assert (=> b!1286961 (= lt!577610 e!735017)))

(declare-fun c!124224 () Bool)

(assert (=> b!1286961 (= c!124224 (and (not lt!577604) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286961 (= lt!577604 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!52673 () Bool)

(assert (=> mapIsEmpty!52673 mapRes!52673))

(declare-fun bm!63125 () Bool)

(declare-fun call!63130 () Bool)

(assert (=> bm!63125 (= call!63132 call!63130)))

(declare-fun b!1286962 () Bool)

(declare-fun lt!577614 () Unit!42487)

(assert (=> b!1286962 (= e!735020 lt!577614)))

(declare-fun lt!577612 () ListLongMap!19757)

(assert (=> b!1286962 (= lt!577612 call!63131)))

(assert (=> b!1286962 (= lt!577614 call!63129)))

(assert (=> b!1286962 call!63132))

(declare-fun bm!63126 () Bool)

(declare-fun lt!577609 () ListLongMap!19757)

(assert (=> bm!63126 (= call!63130 (contains!7948 (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612)) k0!1205))))

(declare-fun minValue!1387 () V!50539)

(declare-fun zeroValue!1387 () V!50539)

(declare-fun call!63133 () Unit!42487)

(declare-fun bm!63127 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!37 ((_ BitVec 64) (_ BitVec 64) V!50539 ListLongMap!19757) Unit!42487)

(assert (=> bm!63127 (= call!63133 (lemmaInListMapAfterAddingDiffThenInBefore!37 k0!1205 (ite c!124224 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124225 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124224 minValue!1387 (ite c!124225 zeroValue!1387 minValue!1387)) (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612))))))

(declare-fun b!1286963 () Bool)

(declare-fun res!854843 () Bool)

(assert (=> b!1286963 (=> (not res!854843) (not e!735021))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!4902 (array!85159 array!85161 (_ BitVec 32) (_ BitVec 32) V!50539 V!50539 (_ BitVec 32) Int) ListLongMap!19757)

(assert (=> b!1286963 (= res!854843 (contains!7948 (getCurrentListMap!4902 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1286964 () Bool)

(declare-fun res!854841 () Bool)

(assert (=> b!1286964 (=> (not res!854841) (not e!735021))))

(assert (=> b!1286964 (= res!854841 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41628 _keys!1741))))))

(declare-fun mapNonEmpty!52673 () Bool)

(declare-fun tp!100428 () Bool)

(assert (=> mapNonEmpty!52673 (= mapRes!52673 (and tp!100428 e!735018))))

(declare-fun mapKey!52673 () (_ BitVec 32))

(declare-fun mapRest!52673 () (Array (_ BitVec 32) ValueCell!16140))

(declare-fun mapValue!52673 () ValueCell!16140)

(assert (=> mapNonEmpty!52673 (= (arr!41078 _values!1445) (store mapRest!52673 mapKey!52673 mapValue!52673))))

(declare-fun b!1286965 () Bool)

(declare-fun res!854845 () Bool)

(assert (=> b!1286965 (=> (not res!854845) (not e!735021))))

(assert (=> b!1286965 (= res!854845 (and (= (size!41629 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41628 _keys!1741) (size!41629 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1286959 () Bool)

(assert (=> b!1286959 (= e!735022 tp_is_empty!34077)))

(declare-fun res!854842 () Bool)

(assert (=> start!108960 (=> (not res!854842) (not e!735021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108960 (= res!854842 (validMask!0 mask!2175))))

(assert (=> start!108960 e!735021))

(assert (=> start!108960 tp_is_empty!34077))

(assert (=> start!108960 true))

(declare-fun array_inv!31123 (array!85161) Bool)

(assert (=> start!108960 (and (array_inv!31123 _values!1445) e!735019)))

(declare-fun array_inv!31124 (array!85159) Bool)

(assert (=> start!108960 (array_inv!31124 _keys!1741)))

(assert (=> start!108960 tp!100427))

(declare-fun b!1286966 () Bool)

(declare-fun res!854840 () Bool)

(assert (=> b!1286966 (=> (not res!854840) (not e!735021))))

(assert (=> b!1286966 (= res!854840 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41628 _keys!1741))))))

(declare-fun call!63128 () ListLongMap!19757)

(declare-fun bm!63128 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6008 (array!85159 array!85161 (_ BitVec 32) (_ BitVec 32) V!50539 V!50539 (_ BitVec 32) Int) ListLongMap!19757)

(assert (=> bm!63128 (= call!63128 (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun bm!63129 () Bool)

(assert (=> bm!63129 (= call!63129 call!63133)))

(declare-fun b!1286967 () Bool)

(declare-fun lt!577606 () Unit!42487)

(assert (=> b!1286967 (= e!735017 lt!577606)))

(declare-fun lt!577608 () ListLongMap!19757)

(assert (=> b!1286967 (= lt!577608 call!63128)))

(declare-fun +!4297 (ListLongMap!19757 tuple2!22088) ListLongMap!19757)

(assert (=> b!1286967 (= lt!577609 (+!4297 lt!577608 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577613 () Unit!42487)

(assert (=> b!1286967 (= lt!577613 call!63133)))

(assert (=> b!1286967 call!63130))

(assert (=> b!1286967 (= lt!577606 (lemmaInListMapAfterAddingDiffThenInBefore!37 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!577608))))

(assert (=> b!1286967 (contains!7948 lt!577608 k0!1205)))

(declare-fun bm!63130 () Bool)

(assert (=> bm!63130 (= call!63131 call!63128)))

(declare-fun b!1286968 () Bool)

(declare-fun res!854844 () Bool)

(assert (=> b!1286968 (=> (not res!854844) (not e!735021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85159 (_ BitVec 32)) Bool)

(assert (=> b!1286968 (= res!854844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108960 res!854842) b!1286965))

(assert (= (and b!1286965 res!854845) b!1286968))

(assert (= (and b!1286968 res!854844) b!1286952))

(assert (= (and b!1286952 res!854847) b!1286964))

(assert (= (and b!1286964 res!854841) b!1286963))

(assert (= (and b!1286963 res!854843) b!1286966))

(assert (= (and b!1286966 res!854840) b!1286956))

(assert (= (and b!1286956 res!854846) b!1286961))

(assert (= (and b!1286961 c!124224) b!1286967))

(assert (= (and b!1286961 (not c!124224)) b!1286960))

(assert (= (and b!1286960 c!124225) b!1286958))

(assert (= (and b!1286960 (not c!124225)) b!1286955))

(assert (= (and b!1286955 c!124223) b!1286962))

(assert (= (and b!1286955 (not c!124223)) b!1286957))

(assert (= (or b!1286958 b!1286962) bm!63130))

(assert (= (or b!1286958 b!1286962) bm!63129))

(assert (= (or b!1286958 b!1286962) bm!63125))

(assert (= (or b!1286967 bm!63130) bm!63128))

(assert (= (or b!1286967 bm!63129) bm!63127))

(assert (= (or b!1286967 bm!63125) bm!63126))

(assert (= (and b!1286953 condMapEmpty!52673) mapIsEmpty!52673))

(assert (= (and b!1286953 (not condMapEmpty!52673)) mapNonEmpty!52673))

(get-info :version)

(assert (= (and mapNonEmpty!52673 ((_ is ValueCellFull!16140) mapValue!52673)) b!1286954))

(assert (= (and b!1286953 ((_ is ValueCellFull!16140) mapDefault!52673)) b!1286959))

(assert (= start!108960 b!1286953))

(declare-fun m!1179927 () Bool)

(assert (=> bm!63126 m!1179927))

(declare-fun m!1179929 () Bool)

(assert (=> start!108960 m!1179929))

(declare-fun m!1179931 () Bool)

(assert (=> start!108960 m!1179931))

(declare-fun m!1179933 () Bool)

(assert (=> start!108960 m!1179933))

(declare-fun m!1179935 () Bool)

(assert (=> b!1286956 m!1179935))

(assert (=> b!1286956 m!1179935))

(declare-fun m!1179937 () Bool)

(assert (=> b!1286956 m!1179937))

(declare-fun m!1179939 () Bool)

(assert (=> b!1286967 m!1179939))

(declare-fun m!1179941 () Bool)

(assert (=> b!1286967 m!1179941))

(declare-fun m!1179943 () Bool)

(assert (=> b!1286967 m!1179943))

(declare-fun m!1179945 () Bool)

(assert (=> mapNonEmpty!52673 m!1179945))

(declare-fun m!1179947 () Bool)

(assert (=> b!1286968 m!1179947))

(declare-fun m!1179949 () Bool)

(assert (=> bm!63128 m!1179949))

(declare-fun m!1179951 () Bool)

(assert (=> b!1286952 m!1179951))

(declare-fun m!1179953 () Bool)

(assert (=> bm!63127 m!1179953))

(declare-fun m!1179955 () Bool)

(assert (=> b!1286963 m!1179955))

(assert (=> b!1286963 m!1179955))

(declare-fun m!1179957 () Bool)

(assert (=> b!1286963 m!1179957))

(assert (=> b!1286961 m!1179935))

(declare-fun m!1179959 () Bool)

(assert (=> b!1286961 m!1179959))

(declare-fun m!1179961 () Bool)

(assert (=> b!1286961 m!1179961))

(check-sat (not b!1286967) b_and!46531 (not bm!63126) (not bm!63128) (not start!108960) (not b!1286956) (not bm!63127) (not b!1286968) (not b!1286961) (not b_next!28437) tp_is_empty!34077 (not mapNonEmpty!52673) (not b!1286963) (not b!1286952))
(check-sat b_and!46531 (not b_next!28437))
(get-model)

(declare-fun d!140707 () Bool)

(declare-fun e!735052 () Bool)

(assert (=> d!140707 e!735052))

(declare-fun res!854874 () Bool)

(assert (=> d!140707 (=> res!854874 e!735052)))

(declare-fun lt!577658 () Bool)

(assert (=> d!140707 (= res!854874 (not lt!577658))))

(declare-fun lt!577657 () Bool)

(assert (=> d!140707 (= lt!577658 lt!577657)))

(declare-fun lt!577659 () Unit!42487)

(declare-fun e!735051 () Unit!42487)

(assert (=> d!140707 (= lt!577659 e!735051)))

(declare-fun c!124237 () Bool)

(assert (=> d!140707 (= c!124237 lt!577657)))

(declare-fun containsKey!714 (List!29290 (_ BitVec 64)) Bool)

(assert (=> d!140707 (= lt!577657 (containsKey!714 (toList!9894 (getCurrentListMap!4902 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!140707 (= (contains!7948 (getCurrentListMap!4902 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!577658)))

(declare-fun b!1287026 () Bool)

(declare-fun lt!577656 () Unit!42487)

(assert (=> b!1287026 (= e!735051 lt!577656)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!459 (List!29290 (_ BitVec 64)) Unit!42487)

(assert (=> b!1287026 (= lt!577656 (lemmaContainsKeyImpliesGetValueByKeyDefined!459 (toList!9894 (getCurrentListMap!4902 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!747 0))(
  ( (Some!746 (v!19715 V!50539)) (None!745) )
))
(declare-fun isDefined!499 (Option!747) Bool)

(declare-fun getValueByKey!696 (List!29290 (_ BitVec 64)) Option!747)

(assert (=> b!1287026 (isDefined!499 (getValueByKey!696 (toList!9894 (getCurrentListMap!4902 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1287027 () Bool)

(declare-fun Unit!42492 () Unit!42487)

(assert (=> b!1287027 (= e!735051 Unit!42492)))

(declare-fun b!1287028 () Bool)

(assert (=> b!1287028 (= e!735052 (isDefined!499 (getValueByKey!696 (toList!9894 (getCurrentListMap!4902 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!140707 c!124237) b!1287026))

(assert (= (and d!140707 (not c!124237)) b!1287027))

(assert (= (and d!140707 (not res!854874)) b!1287028))

(declare-fun m!1179999 () Bool)

(assert (=> d!140707 m!1179999))

(declare-fun m!1180001 () Bool)

(assert (=> b!1287026 m!1180001))

(declare-fun m!1180003 () Bool)

(assert (=> b!1287026 m!1180003))

(assert (=> b!1287026 m!1180003))

(declare-fun m!1180005 () Bool)

(assert (=> b!1287026 m!1180005))

(assert (=> b!1287028 m!1180003))

(assert (=> b!1287028 m!1180003))

(assert (=> b!1287028 m!1180005))

(assert (=> b!1286963 d!140707))

(declare-fun b!1287071 () Bool)

(declare-fun e!735089 () Bool)

(declare-fun e!735081 () Bool)

(assert (=> b!1287071 (= e!735089 e!735081)))

(declare-fun c!124250 () Bool)

(assert (=> b!1287071 (= c!124250 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1287072 () Bool)

(declare-fun call!63169 () Bool)

(assert (=> b!1287072 (= e!735081 (not call!63169))))

(declare-fun b!1287073 () Bool)

(declare-fun e!735088 () Bool)

(assert (=> b!1287073 (= e!735088 (validKeyInArray!0 (select (arr!41077 _keys!1741) from!2144)))))

(declare-fun bm!63163 () Bool)

(declare-fun call!63171 () ListLongMap!19757)

(declare-fun call!63170 () ListLongMap!19757)

(assert (=> bm!63163 (= call!63171 call!63170)))

(declare-fun b!1287074 () Bool)

(declare-fun res!854898 () Bool)

(assert (=> b!1287074 (=> (not res!854898) (not e!735089))))

(declare-fun e!735080 () Bool)

(assert (=> b!1287074 (= res!854898 e!735080)))

(declare-fun res!854896 () Bool)

(assert (=> b!1287074 (=> res!854896 e!735080)))

(assert (=> b!1287074 (= res!854896 (not e!735088))))

(declare-fun res!854899 () Bool)

(assert (=> b!1287074 (=> (not res!854899) (not e!735088))))

(assert (=> b!1287074 (= res!854899 (bvslt from!2144 (size!41628 _keys!1741)))))

(declare-fun bm!63164 () Bool)

(declare-fun call!63172 () ListLongMap!19757)

(declare-fun call!63166 () ListLongMap!19757)

(assert (=> bm!63164 (= call!63172 call!63166)))

(declare-fun d!140709 () Bool)

(assert (=> d!140709 e!735089))

(declare-fun res!854901 () Bool)

(assert (=> d!140709 (=> (not res!854901) (not e!735089))))

(assert (=> d!140709 (= res!854901 (or (bvsge from!2144 (size!41628 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41628 _keys!1741)))))))

(declare-fun lt!577715 () ListLongMap!19757)

(declare-fun lt!577720 () ListLongMap!19757)

(assert (=> d!140709 (= lt!577715 lt!577720)))

(declare-fun lt!577704 () Unit!42487)

(declare-fun e!735090 () Unit!42487)

(assert (=> d!140709 (= lt!577704 e!735090)))

(declare-fun c!124254 () Bool)

(declare-fun e!735085 () Bool)

(assert (=> d!140709 (= c!124254 e!735085)))

(declare-fun res!854897 () Bool)

(assert (=> d!140709 (=> (not res!854897) (not e!735085))))

(assert (=> d!140709 (= res!854897 (bvslt from!2144 (size!41628 _keys!1741)))))

(declare-fun e!735079 () ListLongMap!19757)

(assert (=> d!140709 (= lt!577720 e!735079)))

(declare-fun c!124253 () Bool)

(assert (=> d!140709 (= c!124253 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140709 (validMask!0 mask!2175)))

(assert (=> d!140709 (= (getCurrentListMap!4902 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!577715)))

(declare-fun b!1287075 () Bool)

(declare-fun e!735084 () ListLongMap!19757)

(assert (=> b!1287075 (= e!735079 e!735084)))

(declare-fun c!124255 () Bool)

(assert (=> b!1287075 (= c!124255 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1287076 () Bool)

(declare-fun Unit!42493 () Unit!42487)

(assert (=> b!1287076 (= e!735090 Unit!42493)))

(declare-fun b!1287077 () Bool)

(assert (=> b!1287077 (= e!735084 call!63172)))

(declare-fun b!1287078 () Bool)

(declare-fun e!735091 () Bool)

(assert (=> b!1287078 (= e!735081 e!735091)))

(declare-fun res!854900 () Bool)

(assert (=> b!1287078 (= res!854900 call!63169)))

(assert (=> b!1287078 (=> (not res!854900) (not e!735091))))

(declare-fun b!1287079 () Bool)

(declare-fun lt!577719 () Unit!42487)

(assert (=> b!1287079 (= e!735090 lt!577719)))

(declare-fun lt!577714 () ListLongMap!19757)

(assert (=> b!1287079 (= lt!577714 (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!577723 () (_ BitVec 64))

(assert (=> b!1287079 (= lt!577723 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!577707 () (_ BitVec 64))

(assert (=> b!1287079 (= lt!577707 (select (arr!41077 _keys!1741) from!2144))))

(declare-fun lt!577724 () Unit!42487)

(declare-fun addStillContains!1115 (ListLongMap!19757 (_ BitVec 64) V!50539 (_ BitVec 64)) Unit!42487)

(assert (=> b!1287079 (= lt!577724 (addStillContains!1115 lt!577714 lt!577723 zeroValue!1387 lt!577707))))

(assert (=> b!1287079 (contains!7948 (+!4297 lt!577714 (tuple2!22089 lt!577723 zeroValue!1387)) lt!577707)))

(declare-fun lt!577710 () Unit!42487)

(assert (=> b!1287079 (= lt!577710 lt!577724)))

(declare-fun lt!577718 () ListLongMap!19757)

(assert (=> b!1287079 (= lt!577718 (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!577713 () (_ BitVec 64))

(assert (=> b!1287079 (= lt!577713 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!577706 () (_ BitVec 64))

(assert (=> b!1287079 (= lt!577706 (select (arr!41077 _keys!1741) from!2144))))

(declare-fun lt!577722 () Unit!42487)

(declare-fun addApplyDifferent!549 (ListLongMap!19757 (_ BitVec 64) V!50539 (_ BitVec 64)) Unit!42487)

(assert (=> b!1287079 (= lt!577722 (addApplyDifferent!549 lt!577718 lt!577713 minValue!1387 lt!577706))))

(declare-fun apply!1046 (ListLongMap!19757 (_ BitVec 64)) V!50539)

(assert (=> b!1287079 (= (apply!1046 (+!4297 lt!577718 (tuple2!22089 lt!577713 minValue!1387)) lt!577706) (apply!1046 lt!577718 lt!577706))))

(declare-fun lt!577716 () Unit!42487)

(assert (=> b!1287079 (= lt!577716 lt!577722)))

(declare-fun lt!577709 () ListLongMap!19757)

(assert (=> b!1287079 (= lt!577709 (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!577705 () (_ BitVec 64))

(assert (=> b!1287079 (= lt!577705 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!577708 () (_ BitVec 64))

(assert (=> b!1287079 (= lt!577708 (select (arr!41077 _keys!1741) from!2144))))

(declare-fun lt!577725 () Unit!42487)

(assert (=> b!1287079 (= lt!577725 (addApplyDifferent!549 lt!577709 lt!577705 zeroValue!1387 lt!577708))))

(assert (=> b!1287079 (= (apply!1046 (+!4297 lt!577709 (tuple2!22089 lt!577705 zeroValue!1387)) lt!577708) (apply!1046 lt!577709 lt!577708))))

(declare-fun lt!577721 () Unit!42487)

(assert (=> b!1287079 (= lt!577721 lt!577725)))

(declare-fun lt!577712 () ListLongMap!19757)

(assert (=> b!1287079 (= lt!577712 (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!577717 () (_ BitVec 64))

(assert (=> b!1287079 (= lt!577717 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!577711 () (_ BitVec 64))

(assert (=> b!1287079 (= lt!577711 (select (arr!41077 _keys!1741) from!2144))))

(assert (=> b!1287079 (= lt!577719 (addApplyDifferent!549 lt!577712 lt!577717 minValue!1387 lt!577711))))

(assert (=> b!1287079 (= (apply!1046 (+!4297 lt!577712 (tuple2!22089 lt!577717 minValue!1387)) lt!577711) (apply!1046 lt!577712 lt!577711))))

(declare-fun b!1287080 () Bool)

(assert (=> b!1287080 (= e!735079 (+!4297 call!63166 (tuple2!22089 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1287081 () Bool)

(declare-fun e!735083 () Bool)

(declare-fun get!20907 (ValueCell!16140 V!50539) V!50539)

(declare-fun dynLambda!3496 (Int (_ BitVec 64)) V!50539)

(assert (=> b!1287081 (= e!735083 (= (apply!1046 lt!577715 (select (arr!41077 _keys!1741) from!2144)) (get!20907 (select (arr!41078 _values!1445) from!2144) (dynLambda!3496 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1287081 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41629 _values!1445)))))

(assert (=> b!1287081 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41628 _keys!1741)))))

(declare-fun b!1287082 () Bool)

(declare-fun res!854894 () Bool)

(assert (=> b!1287082 (=> (not res!854894) (not e!735089))))

(declare-fun e!735086 () Bool)

(assert (=> b!1287082 (= res!854894 e!735086)))

(declare-fun c!124252 () Bool)

(assert (=> b!1287082 (= c!124252 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1287083 () Bool)

(declare-fun c!124251 () Bool)

(assert (=> b!1287083 (= c!124251 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!735087 () ListLongMap!19757)

(assert (=> b!1287083 (= e!735084 e!735087)))

(declare-fun b!1287084 () Bool)

(declare-fun call!63168 () Bool)

(assert (=> b!1287084 (= e!735086 (not call!63168))))

(declare-fun b!1287085 () Bool)

(assert (=> b!1287085 (= e!735080 e!735083)))

(declare-fun res!854895 () Bool)

(assert (=> b!1287085 (=> (not res!854895) (not e!735083))))

(assert (=> b!1287085 (= res!854895 (contains!7948 lt!577715 (select (arr!41077 _keys!1741) from!2144)))))

(assert (=> b!1287085 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41628 _keys!1741)))))

(declare-fun b!1287086 () Bool)

(assert (=> b!1287086 (= e!735091 (= (apply!1046 lt!577715 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun call!63167 () ListLongMap!19757)

(declare-fun bm!63165 () Bool)

(assert (=> bm!63165 (= call!63166 (+!4297 (ite c!124253 call!63170 (ite c!124255 call!63171 call!63167)) (ite (or c!124253 c!124255) (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22089 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun bm!63166 () Bool)

(assert (=> bm!63166 (= call!63169 (contains!7948 lt!577715 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1287087 () Bool)

(assert (=> b!1287087 (= e!735085 (validKeyInArray!0 (select (arr!41077 _keys!1741) from!2144)))))

(declare-fun bm!63167 () Bool)

(assert (=> bm!63167 (= call!63170 (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1287088 () Bool)

(declare-fun e!735082 () Bool)

(assert (=> b!1287088 (= e!735082 (= (apply!1046 lt!577715 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1287089 () Bool)

(assert (=> b!1287089 (= e!735086 e!735082)))

(declare-fun res!854893 () Bool)

(assert (=> b!1287089 (= res!854893 call!63168)))

(assert (=> b!1287089 (=> (not res!854893) (not e!735082))))

(declare-fun bm!63168 () Bool)

(assert (=> bm!63168 (= call!63168 (contains!7948 lt!577715 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!63169 () Bool)

(assert (=> bm!63169 (= call!63167 call!63171)))

(declare-fun b!1287090 () Bool)

(assert (=> b!1287090 (= e!735087 call!63172)))

(declare-fun b!1287091 () Bool)

(assert (=> b!1287091 (= e!735087 call!63167)))

(assert (= (and d!140709 c!124253) b!1287080))

(assert (= (and d!140709 (not c!124253)) b!1287075))

(assert (= (and b!1287075 c!124255) b!1287077))

(assert (= (and b!1287075 (not c!124255)) b!1287083))

(assert (= (and b!1287083 c!124251) b!1287090))

(assert (= (and b!1287083 (not c!124251)) b!1287091))

(assert (= (or b!1287090 b!1287091) bm!63169))

(assert (= (or b!1287077 bm!63169) bm!63163))

(assert (= (or b!1287077 b!1287090) bm!63164))

(assert (= (or b!1287080 bm!63163) bm!63167))

(assert (= (or b!1287080 bm!63164) bm!63165))

(assert (= (and d!140709 res!854897) b!1287087))

(assert (= (and d!140709 c!124254) b!1287079))

(assert (= (and d!140709 (not c!124254)) b!1287076))

(assert (= (and d!140709 res!854901) b!1287074))

(assert (= (and b!1287074 res!854899) b!1287073))

(assert (= (and b!1287074 (not res!854896)) b!1287085))

(assert (= (and b!1287085 res!854895) b!1287081))

(assert (= (and b!1287074 res!854898) b!1287082))

(assert (= (and b!1287082 c!124252) b!1287089))

(assert (= (and b!1287082 (not c!124252)) b!1287084))

(assert (= (and b!1287089 res!854893) b!1287088))

(assert (= (or b!1287089 b!1287084) bm!63168))

(assert (= (and b!1287082 res!854894) b!1287071))

(assert (= (and b!1287071 c!124250) b!1287078))

(assert (= (and b!1287071 (not c!124250)) b!1287072))

(assert (= (and b!1287078 res!854900) b!1287086))

(assert (= (or b!1287078 b!1287072) bm!63166))

(declare-fun b_lambda!23135 () Bool)

(assert (=> (not b_lambda!23135) (not b!1287081)))

(declare-fun t!42861 () Bool)

(declare-fun tb!11375 () Bool)

(assert (=> (and start!108960 (= defaultEntry!1448 defaultEntry!1448) t!42861) tb!11375))

(declare-fun result!23741 () Bool)

(assert (=> tb!11375 (= result!23741 tp_is_empty!34077)))

(assert (=> b!1287081 t!42861))

(declare-fun b_and!46535 () Bool)

(assert (= b_and!46531 (and (=> t!42861 result!23741) b_and!46535)))

(assert (=> d!140709 m!1179929))

(declare-fun m!1180007 () Bool)

(assert (=> bm!63168 m!1180007))

(assert (=> b!1287085 m!1179935))

(assert (=> b!1287085 m!1179935))

(declare-fun m!1180009 () Bool)

(assert (=> b!1287085 m!1180009))

(declare-fun m!1180011 () Bool)

(assert (=> bm!63165 m!1180011))

(declare-fun m!1180013 () Bool)

(assert (=> b!1287081 m!1180013))

(declare-fun m!1180015 () Bool)

(assert (=> b!1287081 m!1180015))

(assert (=> b!1287081 m!1179935))

(assert (=> b!1287081 m!1179935))

(declare-fun m!1180017 () Bool)

(assert (=> b!1287081 m!1180017))

(assert (=> b!1287081 m!1180013))

(assert (=> b!1287081 m!1180015))

(declare-fun m!1180019 () Bool)

(assert (=> b!1287081 m!1180019))

(declare-fun m!1180021 () Bool)

(assert (=> b!1287079 m!1180021))

(declare-fun m!1180023 () Bool)

(assert (=> b!1287079 m!1180023))

(declare-fun m!1180025 () Bool)

(assert (=> b!1287079 m!1180025))

(declare-fun m!1180027 () Bool)

(assert (=> b!1287079 m!1180027))

(declare-fun m!1180029 () Bool)

(assert (=> b!1287079 m!1180029))

(assert (=> b!1287079 m!1180025))

(declare-fun m!1180031 () Bool)

(assert (=> b!1287079 m!1180031))

(declare-fun m!1180033 () Bool)

(assert (=> b!1287079 m!1180033))

(assert (=> b!1287079 m!1179935))

(declare-fun m!1180035 () Bool)

(assert (=> b!1287079 m!1180035))

(assert (=> b!1287079 m!1180027))

(assert (=> b!1287079 m!1179949))

(declare-fun m!1180037 () Bool)

(assert (=> b!1287079 m!1180037))

(declare-fun m!1180039 () Bool)

(assert (=> b!1287079 m!1180039))

(declare-fun m!1180041 () Bool)

(assert (=> b!1287079 m!1180041))

(declare-fun m!1180043 () Bool)

(assert (=> b!1287079 m!1180043))

(declare-fun m!1180045 () Bool)

(assert (=> b!1287079 m!1180045))

(assert (=> b!1287079 m!1180037))

(declare-fun m!1180047 () Bool)

(assert (=> b!1287079 m!1180047))

(declare-fun m!1180049 () Bool)

(assert (=> b!1287079 m!1180049))

(assert (=> b!1287079 m!1180043))

(assert (=> bm!63167 m!1179949))

(declare-fun m!1180051 () Bool)

(assert (=> b!1287088 m!1180051))

(declare-fun m!1180053 () Bool)

(assert (=> b!1287086 m!1180053))

(declare-fun m!1180055 () Bool)

(assert (=> b!1287080 m!1180055))

(declare-fun m!1180057 () Bool)

(assert (=> bm!63166 m!1180057))

(assert (=> b!1287087 m!1179935))

(assert (=> b!1287087 m!1179935))

(assert (=> b!1287087 m!1179937))

(assert (=> b!1287073 m!1179935))

(assert (=> b!1287073 m!1179935))

(assert (=> b!1287073 m!1179937))

(assert (=> b!1286963 d!140709))

(declare-fun d!140711 () Bool)

(assert (=> d!140711 (= (validKeyInArray!0 (select (arr!41077 _keys!1741) from!2144)) (and (not (= (select (arr!41077 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41077 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1286956 d!140711))

(declare-fun e!735111 () Bool)

(declare-fun lt!577740 () ListLongMap!19757)

(declare-fun b!1287118 () Bool)

(assert (=> b!1287118 (= e!735111 (= lt!577740 (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1287119 () Bool)

(declare-fun e!735108 () Bool)

(assert (=> b!1287119 (= e!735108 e!735111)))

(declare-fun c!124264 () Bool)

(assert (=> b!1287119 (= c!124264 (bvslt from!2144 (size!41628 _keys!1741)))))

(declare-fun b!1287120 () Bool)

(declare-fun e!735107 () Bool)

(assert (=> b!1287120 (= e!735107 (validKeyInArray!0 (select (arr!41077 _keys!1741) from!2144)))))

(assert (=> b!1287120 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun b!1287121 () Bool)

(declare-fun isEmpty!1052 (ListLongMap!19757) Bool)

(assert (=> b!1287121 (= e!735111 (isEmpty!1052 lt!577740))))

(declare-fun b!1287122 () Bool)

(assert (=> b!1287122 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41628 _keys!1741)))))

(assert (=> b!1287122 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41629 _values!1445)))))

(declare-fun e!735110 () Bool)

(assert (=> b!1287122 (= e!735110 (= (apply!1046 lt!577740 (select (arr!41077 _keys!1741) from!2144)) (get!20907 (select (arr!41078 _values!1445) from!2144) (dynLambda!3496 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1287123 () Bool)

(declare-fun e!735109 () Bool)

(assert (=> b!1287123 (= e!735109 e!735108)))

(declare-fun c!124265 () Bool)

(assert (=> b!1287123 (= c!124265 e!735107)))

(declare-fun res!854911 () Bool)

(assert (=> b!1287123 (=> (not res!854911) (not e!735107))))

(assert (=> b!1287123 (= res!854911 (bvslt from!2144 (size!41628 _keys!1741)))))

(declare-fun b!1287125 () Bool)

(declare-fun e!735106 () ListLongMap!19757)

(declare-fun e!735112 () ListLongMap!19757)

(assert (=> b!1287125 (= e!735106 e!735112)))

(declare-fun c!124267 () Bool)

(assert (=> b!1287125 (= c!124267 (validKeyInArray!0 (select (arr!41077 _keys!1741) from!2144)))))

(declare-fun b!1287126 () Bool)

(declare-fun res!854910 () Bool)

(assert (=> b!1287126 (=> (not res!854910) (not e!735109))))

(assert (=> b!1287126 (= res!854910 (not (contains!7948 lt!577740 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun call!63175 () ListLongMap!19757)

(declare-fun bm!63172 () Bool)

(assert (=> bm!63172 (= call!63175 (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1287127 () Bool)

(assert (=> b!1287127 (= e!735106 (ListLongMap!19758 Nil!29287))))

(declare-fun b!1287128 () Bool)

(assert (=> b!1287128 (= e!735112 call!63175)))

(declare-fun b!1287129 () Bool)

(declare-fun lt!577741 () Unit!42487)

(declare-fun lt!577743 () Unit!42487)

(assert (=> b!1287129 (= lt!577741 lt!577743)))

(declare-fun lt!577746 () V!50539)

(declare-fun lt!577744 () ListLongMap!19757)

(declare-fun lt!577742 () (_ BitVec 64))

(declare-fun lt!577745 () (_ BitVec 64))

(assert (=> b!1287129 (not (contains!7948 (+!4297 lt!577744 (tuple2!22089 lt!577742 lt!577746)) lt!577745))))

(declare-fun addStillNotContains!342 (ListLongMap!19757 (_ BitVec 64) V!50539 (_ BitVec 64)) Unit!42487)

(assert (=> b!1287129 (= lt!577743 (addStillNotContains!342 lt!577744 lt!577742 lt!577746 lt!577745))))

(assert (=> b!1287129 (= lt!577745 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1287129 (= lt!577746 (get!20907 (select (arr!41078 _values!1445) from!2144) (dynLambda!3496 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1287129 (= lt!577742 (select (arr!41077 _keys!1741) from!2144))))

(assert (=> b!1287129 (= lt!577744 call!63175)))

(assert (=> b!1287129 (= e!735112 (+!4297 call!63175 (tuple2!22089 (select (arr!41077 _keys!1741) from!2144) (get!20907 (select (arr!41078 _values!1445) from!2144) (dynLambda!3496 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1287124 () Bool)

(assert (=> b!1287124 (= e!735108 e!735110)))

(assert (=> b!1287124 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41628 _keys!1741)))))

(declare-fun res!854913 () Bool)

(assert (=> b!1287124 (= res!854913 (contains!7948 lt!577740 (select (arr!41077 _keys!1741) from!2144)))))

(assert (=> b!1287124 (=> (not res!854913) (not e!735110))))

(declare-fun d!140713 () Bool)

(assert (=> d!140713 e!735109))

(declare-fun res!854912 () Bool)

(assert (=> d!140713 (=> (not res!854912) (not e!735109))))

(assert (=> d!140713 (= res!854912 (not (contains!7948 lt!577740 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!140713 (= lt!577740 e!735106)))

(declare-fun c!124266 () Bool)

(assert (=> d!140713 (= c!124266 (bvsge from!2144 (size!41628 _keys!1741)))))

(assert (=> d!140713 (validMask!0 mask!2175)))

(assert (=> d!140713 (= (getCurrentListMapNoExtraKeys!6008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!577740)))

(assert (= (and d!140713 c!124266) b!1287127))

(assert (= (and d!140713 (not c!124266)) b!1287125))

(assert (= (and b!1287125 c!124267) b!1287129))

(assert (= (and b!1287125 (not c!124267)) b!1287128))

(assert (= (or b!1287129 b!1287128) bm!63172))

(assert (= (and d!140713 res!854912) b!1287126))

(assert (= (and b!1287126 res!854910) b!1287123))

(assert (= (and b!1287123 res!854911) b!1287120))

(assert (= (and b!1287123 c!124265) b!1287124))

(assert (= (and b!1287123 (not c!124265)) b!1287119))

(assert (= (and b!1287124 res!854913) b!1287122))

(assert (= (and b!1287119 c!124264) b!1287118))

(assert (= (and b!1287119 (not c!124264)) b!1287121))

(declare-fun b_lambda!23137 () Bool)

(assert (=> (not b_lambda!23137) (not b!1287122)))

(assert (=> b!1287122 t!42861))

(declare-fun b_and!46537 () Bool)

(assert (= b_and!46535 (and (=> t!42861 result!23741) b_and!46537)))

(declare-fun b_lambda!23139 () Bool)

(assert (=> (not b_lambda!23139) (not b!1287129)))

(assert (=> b!1287129 t!42861))

(declare-fun b_and!46539 () Bool)

(assert (= b_and!46537 (and (=> t!42861 result!23741) b_and!46539)))

(assert (=> b!1287129 m!1179935))

(declare-fun m!1180059 () Bool)

(assert (=> b!1287129 m!1180059))

(declare-fun m!1180061 () Bool)

(assert (=> b!1287129 m!1180061))

(declare-fun m!1180063 () Bool)

(assert (=> b!1287129 m!1180063))

(assert (=> b!1287129 m!1180061))

(assert (=> b!1287129 m!1180015))

(declare-fun m!1180065 () Bool)

(assert (=> b!1287129 m!1180065))

(assert (=> b!1287129 m!1180013))

(assert (=> b!1287129 m!1180015))

(assert (=> b!1287129 m!1180019))

(assert (=> b!1287129 m!1180013))

(assert (=> b!1287125 m!1179935))

(assert (=> b!1287125 m!1179935))

(assert (=> b!1287125 m!1179937))

(declare-fun m!1180067 () Bool)

(assert (=> bm!63172 m!1180067))

(assert (=> b!1287124 m!1179935))

(assert (=> b!1287124 m!1179935))

(declare-fun m!1180069 () Bool)

(assert (=> b!1287124 m!1180069))

(declare-fun m!1180071 () Bool)

(assert (=> d!140713 m!1180071))

(assert (=> d!140713 m!1179929))

(assert (=> b!1287118 m!1180067))

(declare-fun m!1180073 () Bool)

(assert (=> b!1287126 m!1180073))

(declare-fun m!1180075 () Bool)

(assert (=> b!1287121 m!1180075))

(assert (=> b!1287122 m!1179935))

(assert (=> b!1287122 m!1180015))

(assert (=> b!1287122 m!1180013))

(assert (=> b!1287122 m!1180015))

(assert (=> b!1287122 m!1180019))

(assert (=> b!1287122 m!1180013))

(assert (=> b!1287122 m!1179935))

(declare-fun m!1180077 () Bool)

(assert (=> b!1287122 m!1180077))

(assert (=> b!1287120 m!1179935))

(assert (=> b!1287120 m!1179935))

(assert (=> b!1287120 m!1179937))

(assert (=> bm!63128 d!140713))

(declare-fun d!140715 () Bool)

(declare-fun e!735114 () Bool)

(assert (=> d!140715 e!735114))

(declare-fun res!854914 () Bool)

(assert (=> d!140715 (=> res!854914 e!735114)))

(declare-fun lt!577749 () Bool)

(assert (=> d!140715 (= res!854914 (not lt!577749))))

(declare-fun lt!577748 () Bool)

(assert (=> d!140715 (= lt!577749 lt!577748)))

(declare-fun lt!577750 () Unit!42487)

(declare-fun e!735113 () Unit!42487)

(assert (=> d!140715 (= lt!577750 e!735113)))

(declare-fun c!124268 () Bool)

(assert (=> d!140715 (= c!124268 lt!577748)))

(assert (=> d!140715 (= lt!577748 (containsKey!714 (toList!9894 (ListLongMap!19758 Nil!29287)) k0!1205))))

(assert (=> d!140715 (= (contains!7948 (ListLongMap!19758 Nil!29287) k0!1205) lt!577749)))

(declare-fun b!1287130 () Bool)

(declare-fun lt!577747 () Unit!42487)

(assert (=> b!1287130 (= e!735113 lt!577747)))

(assert (=> b!1287130 (= lt!577747 (lemmaContainsKeyImpliesGetValueByKeyDefined!459 (toList!9894 (ListLongMap!19758 Nil!29287)) k0!1205))))

(assert (=> b!1287130 (isDefined!499 (getValueByKey!696 (toList!9894 (ListLongMap!19758 Nil!29287)) k0!1205))))

(declare-fun b!1287131 () Bool)

(declare-fun Unit!42494 () Unit!42487)

(assert (=> b!1287131 (= e!735113 Unit!42494)))

(declare-fun b!1287132 () Bool)

(assert (=> b!1287132 (= e!735114 (isDefined!499 (getValueByKey!696 (toList!9894 (ListLongMap!19758 Nil!29287)) k0!1205)))))

(assert (= (and d!140715 c!124268) b!1287130))

(assert (= (and d!140715 (not c!124268)) b!1287131))

(assert (= (and d!140715 (not res!854914)) b!1287132))

(declare-fun m!1180079 () Bool)

(assert (=> d!140715 m!1180079))

(declare-fun m!1180081 () Bool)

(assert (=> b!1287130 m!1180081))

(declare-fun m!1180083 () Bool)

(assert (=> b!1287130 m!1180083))

(assert (=> b!1287130 m!1180083))

(declare-fun m!1180085 () Bool)

(assert (=> b!1287130 m!1180085))

(assert (=> b!1287132 m!1180083))

(assert (=> b!1287132 m!1180083))

(assert (=> b!1287132 m!1180085))

(assert (=> b!1286961 d!140715))

(declare-fun d!140717 () Bool)

(assert (=> d!140717 (not (contains!7948 (ListLongMap!19758 Nil!29287) k0!1205))))

(declare-fun lt!577753 () Unit!42487)

(declare-fun choose!1908 ((_ BitVec 64)) Unit!42487)

(assert (=> d!140717 (= lt!577753 (choose!1908 k0!1205))))

(assert (=> d!140717 (= (emptyContainsNothing!15 k0!1205) lt!577753)))

(declare-fun bs!36648 () Bool)

(assert (= bs!36648 d!140717))

(assert (=> bs!36648 m!1179959))

(declare-fun m!1180087 () Bool)

(assert (=> bs!36648 m!1180087))

(assert (=> b!1286961 d!140717))

(declare-fun d!140719 () Bool)

(assert (=> d!140719 (contains!7948 (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612)) k0!1205)))

(declare-fun lt!577756 () Unit!42487)

(declare-fun choose!1909 ((_ BitVec 64) (_ BitVec 64) V!50539 ListLongMap!19757) Unit!42487)

(assert (=> d!140719 (= lt!577756 (choose!1909 k0!1205 (ite c!124224 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124225 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124224 minValue!1387 (ite c!124225 zeroValue!1387 minValue!1387)) (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612))))))

(assert (=> d!140719 (contains!7948 (+!4297 (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612)) (tuple2!22089 (ite c!124224 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124225 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124224 minValue!1387 (ite c!124225 zeroValue!1387 minValue!1387)))) k0!1205)))

(assert (=> d!140719 (= (lemmaInListMapAfterAddingDiffThenInBefore!37 k0!1205 (ite c!124224 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124225 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124224 minValue!1387 (ite c!124225 zeroValue!1387 minValue!1387)) (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612))) lt!577756)))

(declare-fun bs!36649 () Bool)

(assert (= bs!36649 d!140719))

(assert (=> bs!36649 m!1179927))

(declare-fun m!1180089 () Bool)

(assert (=> bs!36649 m!1180089))

(declare-fun m!1180091 () Bool)

(assert (=> bs!36649 m!1180091))

(assert (=> bs!36649 m!1180091))

(declare-fun m!1180093 () Bool)

(assert (=> bs!36649 m!1180093))

(assert (=> bm!63127 d!140719))

(declare-fun b!1287141 () Bool)

(declare-fun e!735123 () Bool)

(declare-fun call!63178 () Bool)

(assert (=> b!1287141 (= e!735123 call!63178)))

(declare-fun d!140721 () Bool)

(declare-fun res!854920 () Bool)

(declare-fun e!735121 () Bool)

(assert (=> d!140721 (=> res!854920 e!735121)))

(assert (=> d!140721 (= res!854920 (bvsge #b00000000000000000000000000000000 (size!41628 _keys!1741)))))

(assert (=> d!140721 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!735121)))

(declare-fun b!1287142 () Bool)

(declare-fun e!735122 () Bool)

(assert (=> b!1287142 (= e!735123 e!735122)))

(declare-fun lt!577763 () (_ BitVec 64))

(assert (=> b!1287142 (= lt!577763 (select (arr!41077 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!577764 () Unit!42487)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!85159 (_ BitVec 64) (_ BitVec 32)) Unit!42487)

(assert (=> b!1287142 (= lt!577764 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!577763 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!85159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1287142 (arrayContainsKey!0 _keys!1741 lt!577763 #b00000000000000000000000000000000)))

(declare-fun lt!577765 () Unit!42487)

(assert (=> b!1287142 (= lt!577765 lt!577764)))

(declare-fun res!854919 () Bool)

(declare-datatypes ((SeekEntryResult!10011 0))(
  ( (MissingZero!10011 (index!42414 (_ BitVec 32))) (Found!10011 (index!42415 (_ BitVec 32))) (Intermediate!10011 (undefined!10823 Bool) (index!42416 (_ BitVec 32)) (x!114183 (_ BitVec 32))) (Undefined!10011) (MissingVacant!10011 (index!42417 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!85159 (_ BitVec 32)) SeekEntryResult!10011)

(assert (=> b!1287142 (= res!854919 (= (seekEntryOrOpen!0 (select (arr!41077 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10011 #b00000000000000000000000000000000)))))

(assert (=> b!1287142 (=> (not res!854919) (not e!735122))))

(declare-fun b!1287143 () Bool)

(assert (=> b!1287143 (= e!735122 call!63178)))

(declare-fun bm!63175 () Bool)

(assert (=> bm!63175 (= call!63178 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1287144 () Bool)

(assert (=> b!1287144 (= e!735121 e!735123)))

(declare-fun c!124271 () Bool)

(assert (=> b!1287144 (= c!124271 (validKeyInArray!0 (select (arr!41077 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!140721 (not res!854920)) b!1287144))

(assert (= (and b!1287144 c!124271) b!1287142))

(assert (= (and b!1287144 (not c!124271)) b!1287141))

(assert (= (and b!1287142 res!854919) b!1287143))

(assert (= (or b!1287143 b!1287141) bm!63175))

(declare-fun m!1180095 () Bool)

(assert (=> b!1287142 m!1180095))

(declare-fun m!1180097 () Bool)

(assert (=> b!1287142 m!1180097))

(declare-fun m!1180099 () Bool)

(assert (=> b!1287142 m!1180099))

(assert (=> b!1287142 m!1180095))

(declare-fun m!1180101 () Bool)

(assert (=> b!1287142 m!1180101))

(declare-fun m!1180103 () Bool)

(assert (=> bm!63175 m!1180103))

(assert (=> b!1287144 m!1180095))

(assert (=> b!1287144 m!1180095))

(declare-fun m!1180105 () Bool)

(assert (=> b!1287144 m!1180105))

(assert (=> b!1286968 d!140721))

(declare-fun d!140723 () Bool)

(declare-fun e!735125 () Bool)

(assert (=> d!140723 e!735125))

(declare-fun res!854921 () Bool)

(assert (=> d!140723 (=> res!854921 e!735125)))

(declare-fun lt!577768 () Bool)

(assert (=> d!140723 (= res!854921 (not lt!577768))))

(declare-fun lt!577767 () Bool)

(assert (=> d!140723 (= lt!577768 lt!577767)))

(declare-fun lt!577769 () Unit!42487)

(declare-fun e!735124 () Unit!42487)

(assert (=> d!140723 (= lt!577769 e!735124)))

(declare-fun c!124272 () Bool)

(assert (=> d!140723 (= c!124272 lt!577767)))

(assert (=> d!140723 (= lt!577767 (containsKey!714 (toList!9894 (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612))) k0!1205))))

(assert (=> d!140723 (= (contains!7948 (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612)) k0!1205) lt!577768)))

(declare-fun b!1287145 () Bool)

(declare-fun lt!577766 () Unit!42487)

(assert (=> b!1287145 (= e!735124 lt!577766)))

(assert (=> b!1287145 (= lt!577766 (lemmaContainsKeyImpliesGetValueByKeyDefined!459 (toList!9894 (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612))) k0!1205))))

(assert (=> b!1287145 (isDefined!499 (getValueByKey!696 (toList!9894 (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612))) k0!1205))))

(declare-fun b!1287146 () Bool)

(declare-fun Unit!42495 () Unit!42487)

(assert (=> b!1287146 (= e!735124 Unit!42495)))

(declare-fun b!1287147 () Bool)

(assert (=> b!1287147 (= e!735125 (isDefined!499 (getValueByKey!696 (toList!9894 (ite c!124224 lt!577609 (ite c!124225 lt!577611 lt!577612))) k0!1205)))))

(assert (= (and d!140723 c!124272) b!1287145))

(assert (= (and d!140723 (not c!124272)) b!1287146))

(assert (= (and d!140723 (not res!854921)) b!1287147))

(declare-fun m!1180107 () Bool)

(assert (=> d!140723 m!1180107))

(declare-fun m!1180109 () Bool)

(assert (=> b!1287145 m!1180109))

(declare-fun m!1180111 () Bool)

(assert (=> b!1287145 m!1180111))

(assert (=> b!1287145 m!1180111))

(declare-fun m!1180113 () Bool)

(assert (=> b!1287145 m!1180113))

(assert (=> b!1287147 m!1180111))

(assert (=> b!1287147 m!1180111))

(assert (=> b!1287147 m!1180113))

(assert (=> bm!63126 d!140723))

(declare-fun d!140725 () Bool)

(assert (=> d!140725 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!108960 d!140725))

(declare-fun d!140727 () Bool)

(assert (=> d!140727 (= (array_inv!31123 _values!1445) (bvsge (size!41629 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!108960 d!140727))

(declare-fun d!140729 () Bool)

(assert (=> d!140729 (= (array_inv!31124 _keys!1741) (bvsge (size!41628 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!108960 d!140729))

(declare-fun d!140731 () Bool)

(declare-fun e!735128 () Bool)

(assert (=> d!140731 e!735128))

(declare-fun res!854926 () Bool)

(assert (=> d!140731 (=> (not res!854926) (not e!735128))))

(declare-fun lt!577781 () ListLongMap!19757)

(assert (=> d!140731 (= res!854926 (contains!7948 lt!577781 (_1!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!577778 () List!29290)

(assert (=> d!140731 (= lt!577781 (ListLongMap!19758 lt!577778))))

(declare-fun lt!577780 () Unit!42487)

(declare-fun lt!577779 () Unit!42487)

(assert (=> d!140731 (= lt!577780 lt!577779)))

(assert (=> d!140731 (= (getValueByKey!696 lt!577778 (_1!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!746 (_2!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!342 (List!29290 (_ BitVec 64) V!50539) Unit!42487)

(assert (=> d!140731 (= lt!577779 (lemmaContainsTupThenGetReturnValue!342 lt!577778 (_1!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun insertStrictlySorted!471 (List!29290 (_ BitVec 64) V!50539) List!29290)

(assert (=> d!140731 (= lt!577778 (insertStrictlySorted!471 (toList!9894 lt!577608) (_1!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!140731 (= (+!4297 lt!577608 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!577781)))

(declare-fun b!1287152 () Bool)

(declare-fun res!854927 () Bool)

(assert (=> b!1287152 (=> (not res!854927) (not e!735128))))

(assert (=> b!1287152 (= res!854927 (= (getValueByKey!696 (toList!9894 lt!577781) (_1!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!746 (_2!11054 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1287153 () Bool)

(declare-fun contains!7949 (List!29290 tuple2!22088) Bool)

(assert (=> b!1287153 (= e!735128 (contains!7949 (toList!9894 lt!577781) (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!140731 res!854926) b!1287152))

(assert (= (and b!1287152 res!854927) b!1287153))

(declare-fun m!1180115 () Bool)

(assert (=> d!140731 m!1180115))

(declare-fun m!1180117 () Bool)

(assert (=> d!140731 m!1180117))

(declare-fun m!1180119 () Bool)

(assert (=> d!140731 m!1180119))

(declare-fun m!1180121 () Bool)

(assert (=> d!140731 m!1180121))

(declare-fun m!1180123 () Bool)

(assert (=> b!1287152 m!1180123))

(declare-fun m!1180125 () Bool)

(assert (=> b!1287153 m!1180125))

(assert (=> b!1286967 d!140731))

(declare-fun d!140733 () Bool)

(assert (=> d!140733 (contains!7948 lt!577608 k0!1205)))

(declare-fun lt!577782 () Unit!42487)

(assert (=> d!140733 (= lt!577782 (choose!1909 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!577608))))

(assert (=> d!140733 (contains!7948 (+!4297 lt!577608 (tuple2!22089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205)))

(assert (=> d!140733 (= (lemmaInListMapAfterAddingDiffThenInBefore!37 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!577608) lt!577782)))

(declare-fun bs!36650 () Bool)

(assert (= bs!36650 d!140733))

(assert (=> bs!36650 m!1179943))

(declare-fun m!1180127 () Bool)

(assert (=> bs!36650 m!1180127))

(assert (=> bs!36650 m!1179939))

(assert (=> bs!36650 m!1179939))

(declare-fun m!1180129 () Bool)

(assert (=> bs!36650 m!1180129))

(assert (=> b!1286967 d!140733))

(declare-fun d!140735 () Bool)

(declare-fun e!735130 () Bool)

(assert (=> d!140735 e!735130))

(declare-fun res!854928 () Bool)

(assert (=> d!140735 (=> res!854928 e!735130)))

(declare-fun lt!577785 () Bool)

(assert (=> d!140735 (= res!854928 (not lt!577785))))

(declare-fun lt!577784 () Bool)

(assert (=> d!140735 (= lt!577785 lt!577784)))

(declare-fun lt!577786 () Unit!42487)

(declare-fun e!735129 () Unit!42487)

(assert (=> d!140735 (= lt!577786 e!735129)))

(declare-fun c!124273 () Bool)

(assert (=> d!140735 (= c!124273 lt!577784)))

(assert (=> d!140735 (= lt!577784 (containsKey!714 (toList!9894 lt!577608) k0!1205))))

(assert (=> d!140735 (= (contains!7948 lt!577608 k0!1205) lt!577785)))

(declare-fun b!1287154 () Bool)

(declare-fun lt!577783 () Unit!42487)

(assert (=> b!1287154 (= e!735129 lt!577783)))

(assert (=> b!1287154 (= lt!577783 (lemmaContainsKeyImpliesGetValueByKeyDefined!459 (toList!9894 lt!577608) k0!1205))))

(assert (=> b!1287154 (isDefined!499 (getValueByKey!696 (toList!9894 lt!577608) k0!1205))))

(declare-fun b!1287155 () Bool)

(declare-fun Unit!42496 () Unit!42487)

(assert (=> b!1287155 (= e!735129 Unit!42496)))

(declare-fun b!1287156 () Bool)

(assert (=> b!1287156 (= e!735130 (isDefined!499 (getValueByKey!696 (toList!9894 lt!577608) k0!1205)))))

(assert (= (and d!140735 c!124273) b!1287154))

(assert (= (and d!140735 (not c!124273)) b!1287155))

(assert (= (and d!140735 (not res!854928)) b!1287156))

(declare-fun m!1180131 () Bool)

(assert (=> d!140735 m!1180131))

(declare-fun m!1180133 () Bool)

(assert (=> b!1287154 m!1180133))

(declare-fun m!1180135 () Bool)

(assert (=> b!1287154 m!1180135))

(assert (=> b!1287154 m!1180135))

(declare-fun m!1180137 () Bool)

(assert (=> b!1287154 m!1180137))

(assert (=> b!1287156 m!1180135))

(assert (=> b!1287156 m!1180135))

(assert (=> b!1287156 m!1180137))

(assert (=> b!1286967 d!140735))

(declare-fun b!1287167 () Bool)

(declare-fun e!735141 () Bool)

(declare-fun call!63181 () Bool)

(assert (=> b!1287167 (= e!735141 call!63181)))

(declare-fun b!1287168 () Bool)

(declare-fun e!735139 () Bool)

(assert (=> b!1287168 (= e!735139 e!735141)))

(declare-fun c!124276 () Bool)

(assert (=> b!1287168 (= c!124276 (validKeyInArray!0 (select (arr!41077 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1287169 () Bool)

(declare-fun e!735140 () Bool)

(assert (=> b!1287169 (= e!735140 e!735139)))

(declare-fun res!854936 () Bool)

(assert (=> b!1287169 (=> (not res!854936) (not e!735139))))

(declare-fun e!735142 () Bool)

(assert (=> b!1287169 (= res!854936 (not e!735142))))

(declare-fun res!854935 () Bool)

(assert (=> b!1287169 (=> (not res!854935) (not e!735142))))

(assert (=> b!1287169 (= res!854935 (validKeyInArray!0 (select (arr!41077 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!140737 () Bool)

(declare-fun res!854937 () Bool)

(assert (=> d!140737 (=> res!854937 e!735140)))

(assert (=> d!140737 (= res!854937 (bvsge #b00000000000000000000000000000000 (size!41628 _keys!1741)))))

(assert (=> d!140737 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29286) e!735140)))

(declare-fun bm!63178 () Bool)

(assert (=> bm!63178 (= call!63181 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124276 (Cons!29285 (select (arr!41077 _keys!1741) #b00000000000000000000000000000000) Nil!29286) Nil!29286)))))

(declare-fun b!1287170 () Bool)

(declare-fun contains!7950 (List!29289 (_ BitVec 64)) Bool)

(assert (=> b!1287170 (= e!735142 (contains!7950 Nil!29286 (select (arr!41077 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1287171 () Bool)

(assert (=> b!1287171 (= e!735141 call!63181)))

(assert (= (and d!140737 (not res!854937)) b!1287169))

(assert (= (and b!1287169 res!854935) b!1287170))

(assert (= (and b!1287169 res!854936) b!1287168))

(assert (= (and b!1287168 c!124276) b!1287167))

(assert (= (and b!1287168 (not c!124276)) b!1287171))

(assert (= (or b!1287167 b!1287171) bm!63178))

(assert (=> b!1287168 m!1180095))

(assert (=> b!1287168 m!1180095))

(assert (=> b!1287168 m!1180105))

(assert (=> b!1287169 m!1180095))

(assert (=> b!1287169 m!1180095))

(assert (=> b!1287169 m!1180105))

(assert (=> bm!63178 m!1180095))

(declare-fun m!1180139 () Bool)

(assert (=> bm!63178 m!1180139))

(assert (=> b!1287170 m!1180095))

(assert (=> b!1287170 m!1180095))

(declare-fun m!1180141 () Bool)

(assert (=> b!1287170 m!1180141))

(assert (=> b!1286952 d!140737))

(declare-fun b!1287178 () Bool)

(declare-fun e!735147 () Bool)

(assert (=> b!1287178 (= e!735147 tp_is_empty!34077)))

(declare-fun condMapEmpty!52679 () Bool)

(declare-fun mapDefault!52679 () ValueCell!16140)

(assert (=> mapNonEmpty!52673 (= condMapEmpty!52679 (= mapRest!52673 ((as const (Array (_ BitVec 32) ValueCell!16140)) mapDefault!52679)))))

(declare-fun e!735148 () Bool)

(declare-fun mapRes!52679 () Bool)

(assert (=> mapNonEmpty!52673 (= tp!100428 (and e!735148 mapRes!52679))))

(declare-fun mapIsEmpty!52679 () Bool)

(assert (=> mapIsEmpty!52679 mapRes!52679))

(declare-fun mapNonEmpty!52679 () Bool)

(declare-fun tp!100437 () Bool)

(assert (=> mapNonEmpty!52679 (= mapRes!52679 (and tp!100437 e!735147))))

(declare-fun mapValue!52679 () ValueCell!16140)

(declare-fun mapKey!52679 () (_ BitVec 32))

(declare-fun mapRest!52679 () (Array (_ BitVec 32) ValueCell!16140))

(assert (=> mapNonEmpty!52679 (= mapRest!52673 (store mapRest!52679 mapKey!52679 mapValue!52679))))

(declare-fun b!1287179 () Bool)

(assert (=> b!1287179 (= e!735148 tp_is_empty!34077)))

(assert (= (and mapNonEmpty!52673 condMapEmpty!52679) mapIsEmpty!52679))

(assert (= (and mapNonEmpty!52673 (not condMapEmpty!52679)) mapNonEmpty!52679))

(assert (= (and mapNonEmpty!52679 ((_ is ValueCellFull!16140) mapValue!52679)) b!1287178))

(assert (= (and mapNonEmpty!52673 ((_ is ValueCellFull!16140) mapDefault!52679)) b!1287179))

(declare-fun m!1180143 () Bool)

(assert (=> mapNonEmpty!52679 m!1180143))

(declare-fun b_lambda!23141 () Bool)

(assert (= b_lambda!23135 (or (and start!108960 b_free!28437) b_lambda!23141)))

(declare-fun b_lambda!23143 () Bool)

(assert (= b_lambda!23139 (or (and start!108960 b_free!28437) b_lambda!23143)))

(declare-fun b_lambda!23145 () Bool)

(assert (= b_lambda!23137 (or (and start!108960 b_free!28437) b_lambda!23145)))

(check-sat (not b!1287080) (not bm!63172) (not b!1287147) (not d!140735) (not d!140723) (not b_lambda!23145) (not bm!63168) (not d!140707) (not bm!63165) (not bm!63166) (not b!1287153) (not b!1287026) (not bm!63178) (not b!1287152) (not b!1287132) (not b!1287129) (not d!140717) (not b!1287122) (not b!1287120) (not b_next!28437) tp_is_empty!34077 (not b!1287081) (not b!1287156) (not b!1287125) (not b!1287144) (not b!1287028) (not b!1287145) (not b!1287154) (not b_lambda!23141) (not b!1287085) (not mapNonEmpty!52679) (not d!140715) (not b!1287087) (not b!1287142) (not d!140709) b_and!46539 (not d!140713) (not b!1287088) (not b!1287169) (not b!1287079) (not d!140719) (not d!140731) (not b!1287130) (not d!140733) (not b!1287073) (not b_lambda!23143) (not b!1287118) (not b!1287086) (not bm!63175) (not b!1287121) (not bm!63167) (not b!1287168) (not b!1287126) (not b!1287170) (not b!1287124))
(check-sat b_and!46539 (not b_next!28437))
