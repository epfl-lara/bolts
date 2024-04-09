; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106128 () Bool)

(assert start!106128)

(declare-fun b_free!27507 () Bool)

(declare-fun b_next!27507 () Bool)

(assert (=> start!106128 (= b_free!27507 (not b_next!27507))))

(declare-fun tp!96075 () Bool)

(declare-fun b_and!45501 () Bool)

(assert (=> start!106128 (= tp!96075 b_and!45501)))

(declare-fun b!1263202 () Bool)

(declare-fun e!719197 () Bool)

(declare-fun e!719194 () Bool)

(assert (=> b!1263202 (= e!719197 e!719194)))

(declare-fun res!841521 () Bool)

(assert (=> b!1263202 (=> res!841521 e!719194)))

(declare-datatypes ((V!48577 0))(
  ( (V!48578 (val!16267 Int)) )
))
(declare-datatypes ((tuple2!21204 0))(
  ( (tuple2!21205 (_1!10612 (_ BitVec 64)) (_2!10612 V!48577)) )
))
(declare-datatypes ((List!28424 0))(
  ( (Nil!28421) (Cons!28420 (h!29629 tuple2!21204) (t!41944 List!28424)) )
))
(declare-datatypes ((ListLongMap!19089 0))(
  ( (ListLongMap!19090 (toList!9560 List!28424)) )
))
(declare-fun lt!572826 () ListLongMap!19089)

(declare-fun contains!7622 (ListLongMap!19089 (_ BitVec 64)) Bool)

(assert (=> b!1263202 (= res!841521 (contains!7622 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!82425 0))(
  ( (array!82426 (arr!39754 (Array (_ BitVec 32) (_ BitVec 64))) (size!40291 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82425)

(declare-fun minValueBefore!43 () V!48577)

(declare-fun zeroValue!871 () V!48577)

(declare-datatypes ((ValueCell!15441 0))(
  ( (ValueCellFull!15441 (v!18977 V!48577)) (EmptyCell!15441) )
))
(declare-datatypes ((array!82427 0))(
  ( (array!82428 (arr!39755 (Array (_ BitVec 32) ValueCell!15441)) (size!40292 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82427)

(declare-fun getCurrentListMap!4663 (array!82425 array!82427 (_ BitVec 32) (_ BitVec 32) V!48577 V!48577 (_ BitVec 32) Int) ListLongMap!19089)

(assert (=> b!1263202 (= lt!572826 (getCurrentListMap!4663 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263203 () Bool)

(declare-fun res!841520 () Bool)

(declare-fun e!719196 () Bool)

(assert (=> b!1263203 (=> (not res!841520) (not e!719196))))

(declare-datatypes ((List!28425 0))(
  ( (Nil!28422) (Cons!28421 (h!29630 (_ BitVec 64)) (t!41945 List!28425)) )
))
(declare-fun arrayNoDuplicates!0 (array!82425 (_ BitVec 32) List!28425) Bool)

(assert (=> b!1263203 (= res!841520 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28422))))

(declare-fun b!1263204 () Bool)

(declare-fun e!719193 () Bool)

(declare-fun tp_is_empty!32409 () Bool)

(assert (=> b!1263204 (= e!719193 tp_is_empty!32409)))

(declare-fun b!1263205 () Bool)

(declare-fun e!719198 () Bool)

(declare-fun mapRes!50437 () Bool)

(assert (=> b!1263205 (= e!719198 (and e!719193 mapRes!50437))))

(declare-fun condMapEmpty!50437 () Bool)

(declare-fun mapDefault!50437 () ValueCell!15441)

(assert (=> b!1263205 (= condMapEmpty!50437 (= (arr!39755 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15441)) mapDefault!50437)))))

(declare-fun b!1263206 () Bool)

(declare-fun e!719199 () Bool)

(assert (=> b!1263206 (= e!719199 tp_is_empty!32409)))

(declare-fun b!1263207 () Bool)

(declare-fun res!841522 () Bool)

(assert (=> b!1263207 (=> (not res!841522) (not e!719196))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1263207 (= res!841522 (and (= (size!40292 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40291 _keys!1118) (size!40292 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263208 () Bool)

(assert (=> b!1263208 (= e!719196 (not e!719197))))

(declare-fun res!841523 () Bool)

(assert (=> b!1263208 (=> res!841523 e!719197)))

(assert (=> b!1263208 (= res!841523 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!572825 () ListLongMap!19089)

(declare-fun lt!572823 () ListLongMap!19089)

(assert (=> b!1263208 (= lt!572825 lt!572823)))

(declare-datatypes ((Unit!42059 0))(
  ( (Unit!42060) )
))
(declare-fun lt!572827 () Unit!42059)

(declare-fun minValueAfter!43 () V!48577)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1196 (array!82425 array!82427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48577 V!48577 V!48577 V!48577 (_ BitVec 32) Int) Unit!42059)

(assert (=> b!1263208 (= lt!572827 (lemmaNoChangeToArrayThenSameMapNoExtras!1196 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5900 (array!82425 array!82427 (_ BitVec 32) (_ BitVec 32) V!48577 V!48577 (_ BitVec 32) Int) ListLongMap!19089)

(assert (=> b!1263208 (= lt!572823 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263208 (= lt!572825 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!841519 () Bool)

(assert (=> start!106128 (=> (not res!841519) (not e!719196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106128 (= res!841519 (validMask!0 mask!1466))))

(assert (=> start!106128 e!719196))

(assert (=> start!106128 true))

(assert (=> start!106128 tp!96075))

(assert (=> start!106128 tp_is_empty!32409))

(declare-fun array_inv!30215 (array!82425) Bool)

(assert (=> start!106128 (array_inv!30215 _keys!1118)))

(declare-fun array_inv!30216 (array!82427) Bool)

(assert (=> start!106128 (and (array_inv!30216 _values!914) e!719198)))

(declare-fun mapNonEmpty!50437 () Bool)

(declare-fun tp!96074 () Bool)

(assert (=> mapNonEmpty!50437 (= mapRes!50437 (and tp!96074 e!719199))))

(declare-fun mapRest!50437 () (Array (_ BitVec 32) ValueCell!15441))

(declare-fun mapValue!50437 () ValueCell!15441)

(declare-fun mapKey!50437 () (_ BitVec 32))

(assert (=> mapNonEmpty!50437 (= (arr!39755 _values!914) (store mapRest!50437 mapKey!50437 mapValue!50437))))

(declare-fun lt!572822 () ListLongMap!19089)

(declare-fun b!1263209 () Bool)

(assert (=> b!1263209 (= e!719194 (= lt!572822 (getCurrentListMap!4663 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922)))))

(assert (=> b!1263209 (= lt!572822 lt!572826)))

(declare-fun -!2149 (ListLongMap!19089 (_ BitVec 64)) ListLongMap!19089)

(assert (=> b!1263209 (= lt!572822 (-!2149 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!572824 () Unit!42059)

(declare-fun removeNotPresentStillSame!145 (ListLongMap!19089 (_ BitVec 64)) Unit!42059)

(assert (=> b!1263209 (= lt!572824 (removeNotPresentStillSame!145 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263210 () Bool)

(declare-fun res!841518 () Bool)

(assert (=> b!1263210 (=> (not res!841518) (not e!719196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82425 (_ BitVec 32)) Bool)

(assert (=> b!1263210 (= res!841518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50437 () Bool)

(assert (=> mapIsEmpty!50437 mapRes!50437))

(assert (= (and start!106128 res!841519) b!1263207))

(assert (= (and b!1263207 res!841522) b!1263210))

(assert (= (and b!1263210 res!841518) b!1263203))

(assert (= (and b!1263203 res!841520) b!1263208))

(assert (= (and b!1263208 (not res!841523)) b!1263202))

(assert (= (and b!1263202 (not res!841521)) b!1263209))

(assert (= (and b!1263205 condMapEmpty!50437) mapIsEmpty!50437))

(assert (= (and b!1263205 (not condMapEmpty!50437)) mapNonEmpty!50437))

(get-info :version)

(assert (= (and mapNonEmpty!50437 ((_ is ValueCellFull!15441) mapValue!50437)) b!1263206))

(assert (= (and b!1263205 ((_ is ValueCellFull!15441) mapDefault!50437)) b!1263204))

(assert (= start!106128 b!1263205))

(declare-fun m!1163731 () Bool)

(assert (=> b!1263202 m!1163731))

(declare-fun m!1163733 () Bool)

(assert (=> b!1263202 m!1163733))

(declare-fun m!1163735 () Bool)

(assert (=> b!1263208 m!1163735))

(declare-fun m!1163737 () Bool)

(assert (=> b!1263208 m!1163737))

(declare-fun m!1163739 () Bool)

(assert (=> b!1263208 m!1163739))

(declare-fun m!1163741 () Bool)

(assert (=> b!1263210 m!1163741))

(declare-fun m!1163743 () Bool)

(assert (=> b!1263209 m!1163743))

(declare-fun m!1163745 () Bool)

(assert (=> b!1263209 m!1163745))

(declare-fun m!1163747 () Bool)

(assert (=> b!1263209 m!1163747))

(declare-fun m!1163749 () Bool)

(assert (=> b!1263203 m!1163749))

(declare-fun m!1163751 () Bool)

(assert (=> mapNonEmpty!50437 m!1163751))

(declare-fun m!1163753 () Bool)

(assert (=> start!106128 m!1163753))

(declare-fun m!1163755 () Bool)

(assert (=> start!106128 m!1163755))

(declare-fun m!1163757 () Bool)

(assert (=> start!106128 m!1163757))

(check-sat (not b!1263202) tp_is_empty!32409 (not b!1263209) (not start!106128) b_and!45501 (not b!1263210) (not mapNonEmpty!50437) (not b_next!27507) (not b!1263203) (not b!1263208))
(check-sat b_and!45501 (not b_next!27507))
(get-model)

(declare-fun b!1263248 () Bool)

(declare-fun e!719229 () Bool)

(declare-fun e!719231 () Bool)

(assert (=> b!1263248 (= e!719229 e!719231)))

(declare-fun res!841548 () Bool)

(assert (=> b!1263248 (=> (not res!841548) (not e!719231))))

(declare-fun e!719232 () Bool)

(assert (=> b!1263248 (= res!841548 (not e!719232))))

(declare-fun res!841549 () Bool)

(assert (=> b!1263248 (=> (not res!841549) (not e!719232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1263248 (= res!841549 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263250 () Bool)

(declare-fun e!719230 () Bool)

(declare-fun call!62179 () Bool)

(assert (=> b!1263250 (= e!719230 call!62179)))

(declare-fun b!1263251 () Bool)

(assert (=> b!1263251 (= e!719230 call!62179)))

(declare-fun b!1263249 () Bool)

(declare-fun contains!7623 (List!28425 (_ BitVec 64)) Bool)

(assert (=> b!1263249 (= e!719232 (contains!7623 Nil!28422 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138531 () Bool)

(declare-fun res!841550 () Bool)

(assert (=> d!138531 (=> res!841550 e!719229)))

(assert (=> d!138531 (= res!841550 (bvsge #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(assert (=> d!138531 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28422) e!719229)))

(declare-fun b!1263252 () Bool)

(assert (=> b!1263252 (= e!719231 e!719230)))

(declare-fun c!122892 () Bool)

(assert (=> b!1263252 (= c!122892 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62176 () Bool)

(assert (=> bm!62176 (= call!62179 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122892 (Cons!28421 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000) Nil!28422) Nil!28422)))))

(assert (= (and d!138531 (not res!841550)) b!1263248))

(assert (= (and b!1263248 res!841549) b!1263249))

(assert (= (and b!1263248 res!841548) b!1263252))

(assert (= (and b!1263252 c!122892) b!1263251))

(assert (= (and b!1263252 (not c!122892)) b!1263250))

(assert (= (or b!1263251 b!1263250) bm!62176))

(declare-fun m!1163787 () Bool)

(assert (=> b!1263248 m!1163787))

(assert (=> b!1263248 m!1163787))

(declare-fun m!1163789 () Bool)

(assert (=> b!1263248 m!1163789))

(assert (=> b!1263249 m!1163787))

(assert (=> b!1263249 m!1163787))

(declare-fun m!1163791 () Bool)

(assert (=> b!1263249 m!1163791))

(assert (=> b!1263252 m!1163787))

(assert (=> b!1263252 m!1163787))

(assert (=> b!1263252 m!1163789))

(assert (=> bm!62176 m!1163787))

(declare-fun m!1163793 () Bool)

(assert (=> bm!62176 m!1163793))

(assert (=> b!1263203 d!138531))

(declare-fun d!138533 () Bool)

(assert (=> d!138533 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!106128 d!138533))

(declare-fun d!138535 () Bool)

(assert (=> d!138535 (= (array_inv!30215 _keys!1118) (bvsge (size!40291 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!106128 d!138535))

(declare-fun d!138537 () Bool)

(assert (=> d!138537 (= (array_inv!30216 _values!914) (bvsge (size!40292 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!106128 d!138537))

(declare-fun d!138539 () Bool)

(assert (=> d!138539 (= (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572848 () Unit!42059)

(declare-fun choose!1884 (array!82425 array!82427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48577 V!48577 V!48577 V!48577 (_ BitVec 32) Int) Unit!42059)

(assert (=> d!138539 (= lt!572848 (choose!1884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138539 (validMask!0 mask!1466)))

(assert (=> d!138539 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1196 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572848)))

(declare-fun bs!35737 () Bool)

(assert (= bs!35737 d!138539))

(assert (=> bs!35737 m!1163739))

(assert (=> bs!35737 m!1163737))

(declare-fun m!1163795 () Bool)

(assert (=> bs!35737 m!1163795))

(assert (=> bs!35737 m!1163753))

(assert (=> b!1263208 d!138539))

(declare-fun b!1263277 () Bool)

(declare-fun e!719252 () Bool)

(declare-fun lt!572867 () ListLongMap!19089)

(declare-fun isEmpty!1046 (ListLongMap!19089) Bool)

(assert (=> b!1263277 (= e!719252 (isEmpty!1046 lt!572867))))

(declare-fun b!1263278 () Bool)

(declare-fun e!719248 () Bool)

(assert (=> b!1263278 (= e!719248 e!719252)))

(declare-fun c!122901 () Bool)

(assert (=> b!1263278 (= c!122901 (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun bm!62179 () Bool)

(declare-fun call!62182 () ListLongMap!19089)

(assert (=> bm!62179 (= call!62182 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1263280 () Bool)

(assert (=> b!1263280 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(assert (=> b!1263280 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40292 _values!914)))))

(declare-fun e!719251 () Bool)

(declare-fun apply!1036 (ListLongMap!19089 (_ BitVec 64)) V!48577)

(declare-fun get!20328 (ValueCell!15441 V!48577) V!48577)

(declare-fun dynLambda!3481 (Int (_ BitVec 64)) V!48577)

(assert (=> b!1263280 (= e!719251 (= (apply!1036 lt!572867 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)) (get!20328 (select (arr!39755 _values!914) #b00000000000000000000000000000000) (dynLambda!3481 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1263281 () Bool)

(declare-fun e!719249 () ListLongMap!19089)

(assert (=> b!1263281 (= e!719249 (ListLongMap!19090 Nil!28421))))

(declare-fun b!1263282 () Bool)

(declare-fun res!841561 () Bool)

(declare-fun e!719250 () Bool)

(assert (=> b!1263282 (=> (not res!841561) (not e!719250))))

(assert (=> b!1263282 (= res!841561 (not (contains!7622 lt!572867 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1263283 () Bool)

(declare-fun lt!572869 () Unit!42059)

(declare-fun lt!572866 () Unit!42059)

(assert (=> b!1263283 (= lt!572869 lt!572866)))

(declare-fun lt!572868 () (_ BitVec 64))

(declare-fun lt!572865 () ListLongMap!19089)

(declare-fun lt!572863 () V!48577)

(declare-fun lt!572864 () (_ BitVec 64))

(declare-fun +!4225 (ListLongMap!19089 tuple2!21204) ListLongMap!19089)

(assert (=> b!1263283 (not (contains!7622 (+!4225 lt!572865 (tuple2!21205 lt!572868 lt!572863)) lt!572864))))

(declare-fun addStillNotContains!331 (ListLongMap!19089 (_ BitVec 64) V!48577 (_ BitVec 64)) Unit!42059)

(assert (=> b!1263283 (= lt!572866 (addStillNotContains!331 lt!572865 lt!572868 lt!572863 lt!572864))))

(assert (=> b!1263283 (= lt!572864 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1263283 (= lt!572863 (get!20328 (select (arr!39755 _values!914) #b00000000000000000000000000000000) (dynLambda!3481 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263283 (= lt!572868 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263283 (= lt!572865 call!62182)))

(declare-fun e!719247 () ListLongMap!19089)

(assert (=> b!1263283 (= e!719247 (+!4225 call!62182 (tuple2!21205 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000) (get!20328 (select (arr!39755 _values!914) #b00000000000000000000000000000000) (dynLambda!3481 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1263284 () Bool)

(declare-fun e!719253 () Bool)

(assert (=> b!1263284 (= e!719253 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263284 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1263285 () Bool)

(assert (=> b!1263285 (= e!719250 e!719248)))

(declare-fun c!122902 () Bool)

(assert (=> b!1263285 (= c!122902 e!719253)))

(declare-fun res!841562 () Bool)

(assert (=> b!1263285 (=> (not res!841562) (not e!719253))))

(assert (=> b!1263285 (= res!841562 (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun b!1263286 () Bool)

(assert (=> b!1263286 (= e!719248 e!719251)))

(assert (=> b!1263286 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun res!841560 () Bool)

(assert (=> b!1263286 (= res!841560 (contains!7622 lt!572867 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263286 (=> (not res!841560) (not e!719251))))

(declare-fun b!1263287 () Bool)

(assert (=> b!1263287 (= e!719249 e!719247)))

(declare-fun c!122903 () Bool)

(assert (=> b!1263287 (= c!122903 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263288 () Bool)

(assert (=> b!1263288 (= e!719252 (= lt!572867 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun d!138541 () Bool)

(assert (=> d!138541 e!719250))

(declare-fun res!841559 () Bool)

(assert (=> d!138541 (=> (not res!841559) (not e!719250))))

(assert (=> d!138541 (= res!841559 (not (contains!7622 lt!572867 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138541 (= lt!572867 e!719249)))

(declare-fun c!122904 () Bool)

(assert (=> d!138541 (= c!122904 (bvsge #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(assert (=> d!138541 (validMask!0 mask!1466)))

(assert (=> d!138541 (= (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572867)))

(declare-fun b!1263279 () Bool)

(assert (=> b!1263279 (= e!719247 call!62182)))

(assert (= (and d!138541 c!122904) b!1263281))

(assert (= (and d!138541 (not c!122904)) b!1263287))

(assert (= (and b!1263287 c!122903) b!1263283))

(assert (= (and b!1263287 (not c!122903)) b!1263279))

(assert (= (or b!1263283 b!1263279) bm!62179))

(assert (= (and d!138541 res!841559) b!1263282))

(assert (= (and b!1263282 res!841561) b!1263285))

(assert (= (and b!1263285 res!841562) b!1263284))

(assert (= (and b!1263285 c!122902) b!1263286))

(assert (= (and b!1263285 (not c!122902)) b!1263278))

(assert (= (and b!1263286 res!841560) b!1263280))

(assert (= (and b!1263278 c!122901) b!1263288))

(assert (= (and b!1263278 (not c!122901)) b!1263277))

(declare-fun b_lambda!22953 () Bool)

(assert (=> (not b_lambda!22953) (not b!1263280)))

(declare-fun t!41947 () Bool)

(declare-fun tb!11337 () Bool)

(assert (=> (and start!106128 (= defaultEntry!922 defaultEntry!922) t!41947) tb!11337))

(declare-fun result!23403 () Bool)

(assert (=> tb!11337 (= result!23403 tp_is_empty!32409)))

(assert (=> b!1263280 t!41947))

(declare-fun b_and!45505 () Bool)

(assert (= b_and!45501 (and (=> t!41947 result!23403) b_and!45505)))

(declare-fun b_lambda!22955 () Bool)

(assert (=> (not b_lambda!22955) (not b!1263283)))

(assert (=> b!1263283 t!41947))

(declare-fun b_and!45507 () Bool)

(assert (= b_and!45505 (and (=> t!41947 result!23403) b_and!45507)))

(declare-fun m!1163797 () Bool)

(assert (=> b!1263283 m!1163797))

(assert (=> b!1263283 m!1163787))

(declare-fun m!1163799 () Bool)

(assert (=> b!1263283 m!1163799))

(declare-fun m!1163801 () Bool)

(assert (=> b!1263283 m!1163801))

(declare-fun m!1163803 () Bool)

(assert (=> b!1263283 m!1163803))

(declare-fun m!1163805 () Bool)

(assert (=> b!1263283 m!1163805))

(assert (=> b!1263283 m!1163805))

(assert (=> b!1263283 m!1163799))

(declare-fun m!1163807 () Bool)

(assert (=> b!1263283 m!1163807))

(assert (=> b!1263283 m!1163803))

(declare-fun m!1163809 () Bool)

(assert (=> b!1263283 m!1163809))

(assert (=> b!1263286 m!1163787))

(assert (=> b!1263286 m!1163787))

(declare-fun m!1163811 () Bool)

(assert (=> b!1263286 m!1163811))

(declare-fun m!1163813 () Bool)

(assert (=> b!1263288 m!1163813))

(declare-fun m!1163815 () Bool)

(assert (=> d!138541 m!1163815))

(assert (=> d!138541 m!1163753))

(assert (=> b!1263280 m!1163787))

(assert (=> b!1263280 m!1163799))

(assert (=> b!1263280 m!1163805))

(assert (=> b!1263280 m!1163799))

(assert (=> b!1263280 m!1163807))

(assert (=> b!1263280 m!1163805))

(assert (=> b!1263280 m!1163787))

(declare-fun m!1163817 () Bool)

(assert (=> b!1263280 m!1163817))

(assert (=> b!1263284 m!1163787))

(assert (=> b!1263284 m!1163787))

(assert (=> b!1263284 m!1163789))

(declare-fun m!1163819 () Bool)

(assert (=> b!1263282 m!1163819))

(declare-fun m!1163821 () Bool)

(assert (=> b!1263277 m!1163821))

(assert (=> b!1263287 m!1163787))

(assert (=> b!1263287 m!1163787))

(assert (=> b!1263287 m!1163789))

(assert (=> bm!62179 m!1163813))

(assert (=> b!1263208 d!138541))

(declare-fun b!1263291 () Bool)

(declare-fun e!719259 () Bool)

(declare-fun lt!572874 () ListLongMap!19089)

(assert (=> b!1263291 (= e!719259 (isEmpty!1046 lt!572874))))

(declare-fun b!1263292 () Bool)

(declare-fun e!719255 () Bool)

(assert (=> b!1263292 (= e!719255 e!719259)))

(declare-fun c!122905 () Bool)

(assert (=> b!1263292 (= c!122905 (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun bm!62180 () Bool)

(declare-fun call!62183 () ListLongMap!19089)

(assert (=> bm!62180 (= call!62183 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1263294 () Bool)

(assert (=> b!1263294 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(assert (=> b!1263294 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40292 _values!914)))))

(declare-fun e!719258 () Bool)

(assert (=> b!1263294 (= e!719258 (= (apply!1036 lt!572874 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)) (get!20328 (select (arr!39755 _values!914) #b00000000000000000000000000000000) (dynLambda!3481 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1263295 () Bool)

(declare-fun e!719256 () ListLongMap!19089)

(assert (=> b!1263295 (= e!719256 (ListLongMap!19090 Nil!28421))))

(declare-fun b!1263296 () Bool)

(declare-fun res!841565 () Bool)

(declare-fun e!719257 () Bool)

(assert (=> b!1263296 (=> (not res!841565) (not e!719257))))

(assert (=> b!1263296 (= res!841565 (not (contains!7622 lt!572874 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1263297 () Bool)

(declare-fun lt!572876 () Unit!42059)

(declare-fun lt!572873 () Unit!42059)

(assert (=> b!1263297 (= lt!572876 lt!572873)))

(declare-fun lt!572872 () ListLongMap!19089)

(declare-fun lt!572875 () (_ BitVec 64))

(declare-fun lt!572870 () V!48577)

(declare-fun lt!572871 () (_ BitVec 64))

(assert (=> b!1263297 (not (contains!7622 (+!4225 lt!572872 (tuple2!21205 lt!572875 lt!572870)) lt!572871))))

(assert (=> b!1263297 (= lt!572873 (addStillNotContains!331 lt!572872 lt!572875 lt!572870 lt!572871))))

(assert (=> b!1263297 (= lt!572871 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1263297 (= lt!572870 (get!20328 (select (arr!39755 _values!914) #b00000000000000000000000000000000) (dynLambda!3481 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263297 (= lt!572875 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263297 (= lt!572872 call!62183)))

(declare-fun e!719254 () ListLongMap!19089)

(assert (=> b!1263297 (= e!719254 (+!4225 call!62183 (tuple2!21205 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000) (get!20328 (select (arr!39755 _values!914) #b00000000000000000000000000000000) (dynLambda!3481 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1263298 () Bool)

(declare-fun e!719260 () Bool)

(assert (=> b!1263298 (= e!719260 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263298 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1263299 () Bool)

(assert (=> b!1263299 (= e!719257 e!719255)))

(declare-fun c!122906 () Bool)

(assert (=> b!1263299 (= c!122906 e!719260)))

(declare-fun res!841566 () Bool)

(assert (=> b!1263299 (=> (not res!841566) (not e!719260))))

(assert (=> b!1263299 (= res!841566 (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun b!1263300 () Bool)

(assert (=> b!1263300 (= e!719255 e!719258)))

(assert (=> b!1263300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun res!841564 () Bool)

(assert (=> b!1263300 (= res!841564 (contains!7622 lt!572874 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263300 (=> (not res!841564) (not e!719258))))

(declare-fun b!1263301 () Bool)

(assert (=> b!1263301 (= e!719256 e!719254)))

(declare-fun c!122907 () Bool)

(assert (=> b!1263301 (= c!122907 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263302 () Bool)

(assert (=> b!1263302 (= e!719259 (= lt!572874 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun d!138543 () Bool)

(assert (=> d!138543 e!719257))

(declare-fun res!841563 () Bool)

(assert (=> d!138543 (=> (not res!841563) (not e!719257))))

(assert (=> d!138543 (= res!841563 (not (contains!7622 lt!572874 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138543 (= lt!572874 e!719256)))

(declare-fun c!122908 () Bool)

(assert (=> d!138543 (= c!122908 (bvsge #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(assert (=> d!138543 (validMask!0 mask!1466)))

(assert (=> d!138543 (= (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572874)))

(declare-fun b!1263293 () Bool)

(assert (=> b!1263293 (= e!719254 call!62183)))

(assert (= (and d!138543 c!122908) b!1263295))

(assert (= (and d!138543 (not c!122908)) b!1263301))

(assert (= (and b!1263301 c!122907) b!1263297))

(assert (= (and b!1263301 (not c!122907)) b!1263293))

(assert (= (or b!1263297 b!1263293) bm!62180))

(assert (= (and d!138543 res!841563) b!1263296))

(assert (= (and b!1263296 res!841565) b!1263299))

(assert (= (and b!1263299 res!841566) b!1263298))

(assert (= (and b!1263299 c!122906) b!1263300))

(assert (= (and b!1263299 (not c!122906)) b!1263292))

(assert (= (and b!1263300 res!841564) b!1263294))

(assert (= (and b!1263292 c!122905) b!1263302))

(assert (= (and b!1263292 (not c!122905)) b!1263291))

(declare-fun b_lambda!22957 () Bool)

(assert (=> (not b_lambda!22957) (not b!1263294)))

(assert (=> b!1263294 t!41947))

(declare-fun b_and!45509 () Bool)

(assert (= b_and!45507 (and (=> t!41947 result!23403) b_and!45509)))

(declare-fun b_lambda!22959 () Bool)

(assert (=> (not b_lambda!22959) (not b!1263297)))

(assert (=> b!1263297 t!41947))

(declare-fun b_and!45511 () Bool)

(assert (= b_and!45509 (and (=> t!41947 result!23403) b_and!45511)))

(declare-fun m!1163823 () Bool)

(assert (=> b!1263297 m!1163823))

(assert (=> b!1263297 m!1163787))

(assert (=> b!1263297 m!1163799))

(declare-fun m!1163825 () Bool)

(assert (=> b!1263297 m!1163825))

(declare-fun m!1163827 () Bool)

(assert (=> b!1263297 m!1163827))

(assert (=> b!1263297 m!1163805))

(assert (=> b!1263297 m!1163805))

(assert (=> b!1263297 m!1163799))

(assert (=> b!1263297 m!1163807))

(assert (=> b!1263297 m!1163827))

(declare-fun m!1163829 () Bool)

(assert (=> b!1263297 m!1163829))

(assert (=> b!1263300 m!1163787))

(assert (=> b!1263300 m!1163787))

(declare-fun m!1163831 () Bool)

(assert (=> b!1263300 m!1163831))

(declare-fun m!1163833 () Bool)

(assert (=> b!1263302 m!1163833))

(declare-fun m!1163835 () Bool)

(assert (=> d!138543 m!1163835))

(assert (=> d!138543 m!1163753))

(assert (=> b!1263294 m!1163787))

(assert (=> b!1263294 m!1163799))

(assert (=> b!1263294 m!1163805))

(assert (=> b!1263294 m!1163799))

(assert (=> b!1263294 m!1163807))

(assert (=> b!1263294 m!1163805))

(assert (=> b!1263294 m!1163787))

(declare-fun m!1163837 () Bool)

(assert (=> b!1263294 m!1163837))

(assert (=> b!1263298 m!1163787))

(assert (=> b!1263298 m!1163787))

(assert (=> b!1263298 m!1163789))

(declare-fun m!1163839 () Bool)

(assert (=> b!1263296 m!1163839))

(declare-fun m!1163841 () Bool)

(assert (=> b!1263291 m!1163841))

(assert (=> b!1263301 m!1163787))

(assert (=> b!1263301 m!1163787))

(assert (=> b!1263301 m!1163789))

(assert (=> bm!62180 m!1163833))

(assert (=> b!1263208 d!138543))

(declare-fun d!138545 () Bool)

(declare-fun e!719265 () Bool)

(assert (=> d!138545 e!719265))

(declare-fun res!841569 () Bool)

(assert (=> d!138545 (=> res!841569 e!719265)))

(declare-fun lt!572886 () Bool)

(assert (=> d!138545 (= res!841569 (not lt!572886))))

(declare-fun lt!572888 () Bool)

(assert (=> d!138545 (= lt!572886 lt!572888)))

(declare-fun lt!572885 () Unit!42059)

(declare-fun e!719266 () Unit!42059)

(assert (=> d!138545 (= lt!572885 e!719266)))

(declare-fun c!122911 () Bool)

(assert (=> d!138545 (= c!122911 lt!572888)))

(declare-fun containsKey!625 (List!28424 (_ BitVec 64)) Bool)

(assert (=> d!138545 (= lt!572888 (containsKey!625 (toList!9560 lt!572826) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138545 (= (contains!7622 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572886)))

(declare-fun b!1263309 () Bool)

(declare-fun lt!572887 () Unit!42059)

(assert (=> b!1263309 (= e!719266 lt!572887)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!435 (List!28424 (_ BitVec 64)) Unit!42059)

(assert (=> b!1263309 (= lt!572887 (lemmaContainsKeyImpliesGetValueByKeyDefined!435 (toList!9560 lt!572826) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!720 0))(
  ( (Some!719 (v!18979 V!48577)) (None!718) )
))
(declare-fun isDefined!475 (Option!720) Bool)

(declare-fun getValueByKey!669 (List!28424 (_ BitVec 64)) Option!720)

(assert (=> b!1263309 (isDefined!475 (getValueByKey!669 (toList!9560 lt!572826) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263310 () Bool)

(declare-fun Unit!42061 () Unit!42059)

(assert (=> b!1263310 (= e!719266 Unit!42061)))

(declare-fun b!1263311 () Bool)

(assert (=> b!1263311 (= e!719265 (isDefined!475 (getValueByKey!669 (toList!9560 lt!572826) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138545 c!122911) b!1263309))

(assert (= (and d!138545 (not c!122911)) b!1263310))

(assert (= (and d!138545 (not res!841569)) b!1263311))

(declare-fun m!1163843 () Bool)

(assert (=> d!138545 m!1163843))

(declare-fun m!1163845 () Bool)

(assert (=> b!1263309 m!1163845))

(declare-fun m!1163847 () Bool)

(assert (=> b!1263309 m!1163847))

(assert (=> b!1263309 m!1163847))

(declare-fun m!1163849 () Bool)

(assert (=> b!1263309 m!1163849))

(assert (=> b!1263311 m!1163847))

(assert (=> b!1263311 m!1163847))

(assert (=> b!1263311 m!1163849))

(assert (=> b!1263202 d!138545))

(declare-fun b!1263354 () Bool)

(declare-fun e!719299 () Bool)

(declare-fun e!719304 () Bool)

(assert (=> b!1263354 (= e!719299 e!719304)))

(declare-fun res!841588 () Bool)

(declare-fun call!62198 () Bool)

(assert (=> b!1263354 (= res!841588 call!62198)))

(assert (=> b!1263354 (=> (not res!841588) (not e!719304))))

(declare-fun b!1263355 () Bool)

(declare-fun e!719298 () Bool)

(declare-fun e!719295 () Bool)

(assert (=> b!1263355 (= e!719298 e!719295)))

(declare-fun res!841589 () Bool)

(declare-fun call!62199 () Bool)

(assert (=> b!1263355 (= res!841589 call!62199)))

(assert (=> b!1263355 (=> (not res!841589) (not e!719295))))

(declare-fun b!1263356 () Bool)

(declare-fun c!122926 () Bool)

(assert (=> b!1263356 (= c!122926 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!719305 () ListLongMap!19089)

(declare-fun e!719303 () ListLongMap!19089)

(assert (=> b!1263356 (= e!719305 e!719303)))

(declare-fun lt!572940 () ListLongMap!19089)

(declare-fun b!1263357 () Bool)

(declare-fun e!719293 () Bool)

(assert (=> b!1263357 (= e!719293 (= (apply!1036 lt!572940 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)) (get!20328 (select (arr!39755 _values!914) #b00000000000000000000000000000000) (dynLambda!3481 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1263357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40292 _values!914)))))

(assert (=> b!1263357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun b!1263358 () Bool)

(declare-fun e!719302 () ListLongMap!19089)

(declare-fun call!62204 () ListLongMap!19089)

(assert (=> b!1263358 (= e!719302 (+!4225 call!62204 (tuple2!21205 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun d!138547 () Bool)

(declare-fun e!719300 () Bool)

(assert (=> d!138547 e!719300))

(declare-fun res!841593 () Bool)

(assert (=> d!138547 (=> (not res!841593) (not e!719300))))

(assert (=> d!138547 (= res!841593 (or (bvsge #b00000000000000000000000000000000 (size!40291 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))))

(declare-fun lt!572935 () ListLongMap!19089)

(assert (=> d!138547 (= lt!572940 lt!572935)))

(declare-fun lt!572945 () Unit!42059)

(declare-fun e!719297 () Unit!42059)

(assert (=> d!138547 (= lt!572945 e!719297)))

(declare-fun c!122928 () Bool)

(declare-fun e!719294 () Bool)

(assert (=> d!138547 (= c!122928 e!719294)))

(declare-fun res!841594 () Bool)

(assert (=> d!138547 (=> (not res!841594) (not e!719294))))

(assert (=> d!138547 (= res!841594 (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(assert (=> d!138547 (= lt!572935 e!719302)))

(declare-fun c!122929 () Bool)

(assert (=> d!138547 (= c!122929 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138547 (validMask!0 mask!1466)))

(assert (=> d!138547 (= (getCurrentListMap!4663 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572940)))

(declare-fun b!1263359 () Bool)

(assert (=> b!1263359 (= e!719300 e!719298)))

(declare-fun c!122927 () Bool)

(assert (=> b!1263359 (= c!122927 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62195 () Bool)

(assert (=> bm!62195 (= call!62199 (contains!7622 lt!572940 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263360 () Bool)

(declare-fun lt!572939 () Unit!42059)

(assert (=> b!1263360 (= e!719297 lt!572939)))

(declare-fun lt!572952 () ListLongMap!19089)

(assert (=> b!1263360 (= lt!572952 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572941 () (_ BitVec 64))

(assert (=> b!1263360 (= lt!572941 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572950 () (_ BitVec 64))

(assert (=> b!1263360 (= lt!572950 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572936 () Unit!42059)

(declare-fun addStillContains!1107 (ListLongMap!19089 (_ BitVec 64) V!48577 (_ BitVec 64)) Unit!42059)

(assert (=> b!1263360 (= lt!572936 (addStillContains!1107 lt!572952 lt!572941 zeroValue!871 lt!572950))))

(assert (=> b!1263360 (contains!7622 (+!4225 lt!572952 (tuple2!21205 lt!572941 zeroValue!871)) lt!572950)))

(declare-fun lt!572948 () Unit!42059)

(assert (=> b!1263360 (= lt!572948 lt!572936)))

(declare-fun lt!572938 () ListLongMap!19089)

(assert (=> b!1263360 (= lt!572938 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572946 () (_ BitVec 64))

(assert (=> b!1263360 (= lt!572946 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572949 () (_ BitVec 64))

(assert (=> b!1263360 (= lt!572949 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572944 () Unit!42059)

(declare-fun addApplyDifferent!541 (ListLongMap!19089 (_ BitVec 64) V!48577 (_ BitVec 64)) Unit!42059)

(assert (=> b!1263360 (= lt!572944 (addApplyDifferent!541 lt!572938 lt!572946 minValueBefore!43 lt!572949))))

(assert (=> b!1263360 (= (apply!1036 (+!4225 lt!572938 (tuple2!21205 lt!572946 minValueBefore!43)) lt!572949) (apply!1036 lt!572938 lt!572949))))

(declare-fun lt!572933 () Unit!42059)

(assert (=> b!1263360 (= lt!572933 lt!572944)))

(declare-fun lt!572953 () ListLongMap!19089)

(assert (=> b!1263360 (= lt!572953 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572937 () (_ BitVec 64))

(assert (=> b!1263360 (= lt!572937 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572943 () (_ BitVec 64))

(assert (=> b!1263360 (= lt!572943 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572947 () Unit!42059)

(assert (=> b!1263360 (= lt!572947 (addApplyDifferent!541 lt!572953 lt!572937 zeroValue!871 lt!572943))))

(assert (=> b!1263360 (= (apply!1036 (+!4225 lt!572953 (tuple2!21205 lt!572937 zeroValue!871)) lt!572943) (apply!1036 lt!572953 lt!572943))))

(declare-fun lt!572954 () Unit!42059)

(assert (=> b!1263360 (= lt!572954 lt!572947)))

(declare-fun lt!572942 () ListLongMap!19089)

(assert (=> b!1263360 (= lt!572942 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572951 () (_ BitVec 64))

(assert (=> b!1263360 (= lt!572951 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572934 () (_ BitVec 64))

(assert (=> b!1263360 (= lt!572934 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263360 (= lt!572939 (addApplyDifferent!541 lt!572942 lt!572951 minValueBefore!43 lt!572934))))

(assert (=> b!1263360 (= (apply!1036 (+!4225 lt!572942 (tuple2!21205 lt!572951 minValueBefore!43)) lt!572934) (apply!1036 lt!572942 lt!572934))))

(declare-fun b!1263361 () Bool)

(assert (=> b!1263361 (= e!719299 (not call!62198))))

(declare-fun b!1263362 () Bool)

(declare-fun e!719296 () Bool)

(assert (=> b!1263362 (= e!719296 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263363 () Bool)

(assert (=> b!1263363 (= e!719304 (= (apply!1036 lt!572940 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun bm!62196 () Bool)

(declare-fun call!62201 () ListLongMap!19089)

(declare-fun call!62200 () ListLongMap!19089)

(assert (=> bm!62196 (= call!62201 call!62200)))

(declare-fun bm!62197 () Bool)

(assert (=> bm!62197 (= call!62200 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263364 () Bool)

(declare-fun call!62202 () ListLongMap!19089)

(assert (=> b!1263364 (= e!719303 call!62202)))

(declare-fun b!1263365 () Bool)

(declare-fun res!841595 () Bool)

(assert (=> b!1263365 (=> (not res!841595) (not e!719300))))

(assert (=> b!1263365 (= res!841595 e!719299)))

(declare-fun c!122924 () Bool)

(assert (=> b!1263365 (= c!122924 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun c!122925 () Bool)

(declare-fun call!62203 () ListLongMap!19089)

(declare-fun bm!62198 () Bool)

(assert (=> bm!62198 (= call!62204 (+!4225 (ite c!122929 call!62200 (ite c!122925 call!62201 call!62203)) (ite (or c!122929 c!122925) (tuple2!21205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21205 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1263366 () Bool)

(declare-fun e!719301 () Bool)

(assert (=> b!1263366 (= e!719301 e!719293)))

(declare-fun res!841591 () Bool)

(assert (=> b!1263366 (=> (not res!841591) (not e!719293))))

(assert (=> b!1263366 (= res!841591 (contains!7622 lt!572940 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263366 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun b!1263367 () Bool)

(assert (=> b!1263367 (= e!719302 e!719305)))

(assert (=> b!1263367 (= c!122925 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263368 () Bool)

(assert (=> b!1263368 (= e!719305 call!62202)))

(declare-fun b!1263369 () Bool)

(declare-fun Unit!42062 () Unit!42059)

(assert (=> b!1263369 (= e!719297 Unit!42062)))

(declare-fun b!1263370 () Bool)

(assert (=> b!1263370 (= e!719303 call!62203)))

(declare-fun b!1263371 () Bool)

(declare-fun res!841592 () Bool)

(assert (=> b!1263371 (=> (not res!841592) (not e!719300))))

(assert (=> b!1263371 (= res!841592 e!719301)))

(declare-fun res!841596 () Bool)

(assert (=> b!1263371 (=> res!841596 e!719301)))

(assert (=> b!1263371 (= res!841596 (not e!719296))))

(declare-fun res!841590 () Bool)

(assert (=> b!1263371 (=> (not res!841590) (not e!719296))))

(assert (=> b!1263371 (= res!841590 (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun bm!62199 () Bool)

(assert (=> bm!62199 (= call!62202 call!62204)))

(declare-fun bm!62200 () Bool)

(assert (=> bm!62200 (= call!62198 (contains!7622 lt!572940 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62201 () Bool)

(assert (=> bm!62201 (= call!62203 call!62201)))

(declare-fun b!1263372 () Bool)

(assert (=> b!1263372 (= e!719294 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263373 () Bool)

(assert (=> b!1263373 (= e!719298 (not call!62199))))

(declare-fun b!1263374 () Bool)

(assert (=> b!1263374 (= e!719295 (= (apply!1036 lt!572940 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(assert (= (and d!138547 c!122929) b!1263358))

(assert (= (and d!138547 (not c!122929)) b!1263367))

(assert (= (and b!1263367 c!122925) b!1263368))

(assert (= (and b!1263367 (not c!122925)) b!1263356))

(assert (= (and b!1263356 c!122926) b!1263364))

(assert (= (and b!1263356 (not c!122926)) b!1263370))

(assert (= (or b!1263364 b!1263370) bm!62201))

(assert (= (or b!1263368 bm!62201) bm!62196))

(assert (= (or b!1263368 b!1263364) bm!62199))

(assert (= (or b!1263358 bm!62196) bm!62197))

(assert (= (or b!1263358 bm!62199) bm!62198))

(assert (= (and d!138547 res!841594) b!1263372))

(assert (= (and d!138547 c!122928) b!1263360))

(assert (= (and d!138547 (not c!122928)) b!1263369))

(assert (= (and d!138547 res!841593) b!1263371))

(assert (= (and b!1263371 res!841590) b!1263362))

(assert (= (and b!1263371 (not res!841596)) b!1263366))

(assert (= (and b!1263366 res!841591) b!1263357))

(assert (= (and b!1263371 res!841592) b!1263365))

(assert (= (and b!1263365 c!122924) b!1263354))

(assert (= (and b!1263365 (not c!122924)) b!1263361))

(assert (= (and b!1263354 res!841588) b!1263363))

(assert (= (or b!1263354 b!1263361) bm!62200))

(assert (= (and b!1263365 res!841595) b!1263359))

(assert (= (and b!1263359 c!122927) b!1263355))

(assert (= (and b!1263359 (not c!122927)) b!1263373))

(assert (= (and b!1263355 res!841589) b!1263374))

(assert (= (or b!1263355 b!1263373) bm!62195))

(declare-fun b_lambda!22961 () Bool)

(assert (=> (not b_lambda!22961) (not b!1263357)))

(assert (=> b!1263357 t!41947))

(declare-fun b_and!45513 () Bool)

(assert (= b_and!45511 (and (=> t!41947 result!23403) b_and!45513)))

(declare-fun m!1163851 () Bool)

(assert (=> b!1263363 m!1163851))

(declare-fun m!1163853 () Bool)

(assert (=> b!1263374 m!1163853))

(declare-fun m!1163855 () Bool)

(assert (=> bm!62195 m!1163855))

(declare-fun m!1163857 () Bool)

(assert (=> b!1263360 m!1163857))

(declare-fun m!1163859 () Bool)

(assert (=> b!1263360 m!1163859))

(declare-fun m!1163861 () Bool)

(assert (=> b!1263360 m!1163861))

(assert (=> b!1263360 m!1163739))

(assert (=> b!1263360 m!1163861))

(declare-fun m!1163863 () Bool)

(assert (=> b!1263360 m!1163863))

(declare-fun m!1163865 () Bool)

(assert (=> b!1263360 m!1163865))

(assert (=> b!1263360 m!1163787))

(declare-fun m!1163867 () Bool)

(assert (=> b!1263360 m!1163867))

(declare-fun m!1163869 () Bool)

(assert (=> b!1263360 m!1163869))

(declare-fun m!1163871 () Bool)

(assert (=> b!1263360 m!1163871))

(declare-fun m!1163873 () Bool)

(assert (=> b!1263360 m!1163873))

(declare-fun m!1163875 () Bool)

(assert (=> b!1263360 m!1163875))

(declare-fun m!1163877 () Bool)

(assert (=> b!1263360 m!1163877))

(declare-fun m!1163879 () Bool)

(assert (=> b!1263360 m!1163879))

(assert (=> b!1263360 m!1163877))

(declare-fun m!1163881 () Bool)

(assert (=> b!1263360 m!1163881))

(declare-fun m!1163883 () Bool)

(assert (=> b!1263360 m!1163883))

(assert (=> b!1263360 m!1163873))

(declare-fun m!1163885 () Bool)

(assert (=> b!1263360 m!1163885))

(assert (=> b!1263360 m!1163857))

(assert (=> b!1263357 m!1163805))

(assert (=> b!1263357 m!1163805))

(assert (=> b!1263357 m!1163799))

(assert (=> b!1263357 m!1163807))

(assert (=> b!1263357 m!1163787))

(assert (=> b!1263357 m!1163787))

(declare-fun m!1163887 () Bool)

(assert (=> b!1263357 m!1163887))

(assert (=> b!1263357 m!1163799))

(assert (=> b!1263372 m!1163787))

(assert (=> b!1263372 m!1163787))

(assert (=> b!1263372 m!1163789))

(assert (=> d!138547 m!1163753))

(declare-fun m!1163889 () Bool)

(assert (=> bm!62198 m!1163889))

(assert (=> bm!62197 m!1163739))

(assert (=> b!1263362 m!1163787))

(assert (=> b!1263362 m!1163787))

(assert (=> b!1263362 m!1163789))

(declare-fun m!1163891 () Bool)

(assert (=> bm!62200 m!1163891))

(declare-fun m!1163893 () Bool)

(assert (=> b!1263358 m!1163893))

(assert (=> b!1263366 m!1163787))

(assert (=> b!1263366 m!1163787))

(declare-fun m!1163895 () Bool)

(assert (=> b!1263366 m!1163895))

(assert (=> b!1263202 d!138547))

(declare-fun bm!62204 () Bool)

(declare-fun call!62207 () Bool)

(assert (=> bm!62204 (= call!62207 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1263383 () Bool)

(declare-fun e!719313 () Bool)

(assert (=> b!1263383 (= e!719313 call!62207)))

(declare-fun b!1263384 () Bool)

(declare-fun e!719312 () Bool)

(assert (=> b!1263384 (= e!719312 e!719313)))

(declare-fun lt!572963 () (_ BitVec 64))

(assert (=> b!1263384 (= lt!572963 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572962 () Unit!42059)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82425 (_ BitVec 64) (_ BitVec 32)) Unit!42059)

(assert (=> b!1263384 (= lt!572962 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!572963 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1263384 (arrayContainsKey!0 _keys!1118 lt!572963 #b00000000000000000000000000000000)))

(declare-fun lt!572961 () Unit!42059)

(assert (=> b!1263384 (= lt!572961 lt!572962)))

(declare-fun res!841601 () Bool)

(declare-datatypes ((SeekEntryResult!9976 0))(
  ( (MissingZero!9976 (index!42274 (_ BitVec 32))) (Found!9976 (index!42275 (_ BitVec 32))) (Intermediate!9976 (undefined!10788 Bool) (index!42276 (_ BitVec 32)) (x!111317 (_ BitVec 32))) (Undefined!9976) (MissingVacant!9976 (index!42277 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82425 (_ BitVec 32)) SeekEntryResult!9976)

(assert (=> b!1263384 (= res!841601 (= (seekEntryOrOpen!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9976 #b00000000000000000000000000000000)))))

(assert (=> b!1263384 (=> (not res!841601) (not e!719313))))

(declare-fun b!1263385 () Bool)

(assert (=> b!1263385 (= e!719312 call!62207)))

(declare-fun b!1263386 () Bool)

(declare-fun e!719314 () Bool)

(assert (=> b!1263386 (= e!719314 e!719312)))

(declare-fun c!122932 () Bool)

(assert (=> b!1263386 (= c!122932 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138549 () Bool)

(declare-fun res!841602 () Bool)

(assert (=> d!138549 (=> res!841602 e!719314)))

(assert (=> d!138549 (= res!841602 (bvsge #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(assert (=> d!138549 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!719314)))

(assert (= (and d!138549 (not res!841602)) b!1263386))

(assert (= (and b!1263386 c!122932) b!1263384))

(assert (= (and b!1263386 (not c!122932)) b!1263385))

(assert (= (and b!1263384 res!841601) b!1263383))

(assert (= (or b!1263383 b!1263385) bm!62204))

(declare-fun m!1163897 () Bool)

(assert (=> bm!62204 m!1163897))

(assert (=> b!1263384 m!1163787))

(declare-fun m!1163899 () Bool)

(assert (=> b!1263384 m!1163899))

(declare-fun m!1163901 () Bool)

(assert (=> b!1263384 m!1163901))

(assert (=> b!1263384 m!1163787))

(declare-fun m!1163903 () Bool)

(assert (=> b!1263384 m!1163903))

(assert (=> b!1263386 m!1163787))

(assert (=> b!1263386 m!1163787))

(assert (=> b!1263386 m!1163789))

(assert (=> b!1263210 d!138549))

(declare-fun b!1263387 () Bool)

(declare-fun e!719321 () Bool)

(declare-fun e!719326 () Bool)

(assert (=> b!1263387 (= e!719321 e!719326)))

(declare-fun res!841603 () Bool)

(declare-fun call!62208 () Bool)

(assert (=> b!1263387 (= res!841603 call!62208)))

(assert (=> b!1263387 (=> (not res!841603) (not e!719326))))

(declare-fun b!1263388 () Bool)

(declare-fun e!719320 () Bool)

(declare-fun e!719317 () Bool)

(assert (=> b!1263388 (= e!719320 e!719317)))

(declare-fun res!841604 () Bool)

(declare-fun call!62209 () Bool)

(assert (=> b!1263388 (= res!841604 call!62209)))

(assert (=> b!1263388 (=> (not res!841604) (not e!719317))))

(declare-fun b!1263389 () Bool)

(declare-fun c!122935 () Bool)

(assert (=> b!1263389 (= c!122935 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!719327 () ListLongMap!19089)

(declare-fun e!719325 () ListLongMap!19089)

(assert (=> b!1263389 (= e!719327 e!719325)))

(declare-fun b!1263390 () Bool)

(declare-fun e!719315 () Bool)

(declare-fun lt!572971 () ListLongMap!19089)

(assert (=> b!1263390 (= e!719315 (= (apply!1036 lt!572971 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)) (get!20328 (select (arr!39755 _values!914) #b00000000000000000000000000000000) (dynLambda!3481 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1263390 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40292 _values!914)))))

(assert (=> b!1263390 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun b!1263391 () Bool)

(declare-fun e!719324 () ListLongMap!19089)

(declare-fun call!62214 () ListLongMap!19089)

(assert (=> b!1263391 (= e!719324 (+!4225 call!62214 (tuple2!21205 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun d!138551 () Bool)

(declare-fun e!719322 () Bool)

(assert (=> d!138551 e!719322))

(declare-fun res!841608 () Bool)

(assert (=> d!138551 (=> (not res!841608) (not e!719322))))

(assert (=> d!138551 (= res!841608 (or (bvsge #b00000000000000000000000000000000 (size!40291 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))))

(declare-fun lt!572966 () ListLongMap!19089)

(assert (=> d!138551 (= lt!572971 lt!572966)))

(declare-fun lt!572976 () Unit!42059)

(declare-fun e!719319 () Unit!42059)

(assert (=> d!138551 (= lt!572976 e!719319)))

(declare-fun c!122937 () Bool)

(declare-fun e!719316 () Bool)

(assert (=> d!138551 (= c!122937 e!719316)))

(declare-fun res!841609 () Bool)

(assert (=> d!138551 (=> (not res!841609) (not e!719316))))

(assert (=> d!138551 (= res!841609 (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(assert (=> d!138551 (= lt!572966 e!719324)))

(declare-fun c!122938 () Bool)

(assert (=> d!138551 (= c!122938 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138551 (validMask!0 mask!1466)))

(assert (=> d!138551 (= (getCurrentListMap!4663 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572971)))

(declare-fun b!1263392 () Bool)

(assert (=> b!1263392 (= e!719322 e!719320)))

(declare-fun c!122936 () Bool)

(assert (=> b!1263392 (= c!122936 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62205 () Bool)

(assert (=> bm!62205 (= call!62209 (contains!7622 lt!572971 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263393 () Bool)

(declare-fun lt!572970 () Unit!42059)

(assert (=> b!1263393 (= e!719319 lt!572970)))

(declare-fun lt!572983 () ListLongMap!19089)

(assert (=> b!1263393 (= lt!572983 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572972 () (_ BitVec 64))

(assert (=> b!1263393 (= lt!572972 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572981 () (_ BitVec 64))

(assert (=> b!1263393 (= lt!572981 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572967 () Unit!42059)

(assert (=> b!1263393 (= lt!572967 (addStillContains!1107 lt!572983 lt!572972 zeroValue!871 lt!572981))))

(assert (=> b!1263393 (contains!7622 (+!4225 lt!572983 (tuple2!21205 lt!572972 zeroValue!871)) lt!572981)))

(declare-fun lt!572979 () Unit!42059)

(assert (=> b!1263393 (= lt!572979 lt!572967)))

(declare-fun lt!572969 () ListLongMap!19089)

(assert (=> b!1263393 (= lt!572969 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572977 () (_ BitVec 64))

(assert (=> b!1263393 (= lt!572977 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572980 () (_ BitVec 64))

(assert (=> b!1263393 (= lt!572980 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572975 () Unit!42059)

(assert (=> b!1263393 (= lt!572975 (addApplyDifferent!541 lt!572969 lt!572977 minValueAfter!43 lt!572980))))

(assert (=> b!1263393 (= (apply!1036 (+!4225 lt!572969 (tuple2!21205 lt!572977 minValueAfter!43)) lt!572980) (apply!1036 lt!572969 lt!572980))))

(declare-fun lt!572964 () Unit!42059)

(assert (=> b!1263393 (= lt!572964 lt!572975)))

(declare-fun lt!572984 () ListLongMap!19089)

(assert (=> b!1263393 (= lt!572984 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572968 () (_ BitVec 64))

(assert (=> b!1263393 (= lt!572968 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572974 () (_ BitVec 64))

(assert (=> b!1263393 (= lt!572974 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572978 () Unit!42059)

(assert (=> b!1263393 (= lt!572978 (addApplyDifferent!541 lt!572984 lt!572968 zeroValue!871 lt!572974))))

(assert (=> b!1263393 (= (apply!1036 (+!4225 lt!572984 (tuple2!21205 lt!572968 zeroValue!871)) lt!572974) (apply!1036 lt!572984 lt!572974))))

(declare-fun lt!572985 () Unit!42059)

(assert (=> b!1263393 (= lt!572985 lt!572978)))

(declare-fun lt!572973 () ListLongMap!19089)

(assert (=> b!1263393 (= lt!572973 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572982 () (_ BitVec 64))

(assert (=> b!1263393 (= lt!572982 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572965 () (_ BitVec 64))

(assert (=> b!1263393 (= lt!572965 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263393 (= lt!572970 (addApplyDifferent!541 lt!572973 lt!572982 minValueAfter!43 lt!572965))))

(assert (=> b!1263393 (= (apply!1036 (+!4225 lt!572973 (tuple2!21205 lt!572982 minValueAfter!43)) lt!572965) (apply!1036 lt!572973 lt!572965))))

(declare-fun b!1263394 () Bool)

(assert (=> b!1263394 (= e!719321 (not call!62208))))

(declare-fun b!1263395 () Bool)

(declare-fun e!719318 () Bool)

(assert (=> b!1263395 (= e!719318 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263396 () Bool)

(assert (=> b!1263396 (= e!719326 (= (apply!1036 lt!572971 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun bm!62206 () Bool)

(declare-fun call!62211 () ListLongMap!19089)

(declare-fun call!62210 () ListLongMap!19089)

(assert (=> bm!62206 (= call!62211 call!62210)))

(declare-fun bm!62207 () Bool)

(assert (=> bm!62207 (= call!62210 (getCurrentListMapNoExtraKeys!5900 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263397 () Bool)

(declare-fun call!62212 () ListLongMap!19089)

(assert (=> b!1263397 (= e!719325 call!62212)))

(declare-fun b!1263398 () Bool)

(declare-fun res!841610 () Bool)

(assert (=> b!1263398 (=> (not res!841610) (not e!719322))))

(assert (=> b!1263398 (= res!841610 e!719321)))

(declare-fun c!122933 () Bool)

(assert (=> b!1263398 (= c!122933 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!62213 () ListLongMap!19089)

(declare-fun bm!62208 () Bool)

(declare-fun c!122934 () Bool)

(assert (=> bm!62208 (= call!62214 (+!4225 (ite c!122938 call!62210 (ite c!122934 call!62211 call!62213)) (ite (or c!122938 c!122934) (tuple2!21205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21205 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun b!1263399 () Bool)

(declare-fun e!719323 () Bool)

(assert (=> b!1263399 (= e!719323 e!719315)))

(declare-fun res!841606 () Bool)

(assert (=> b!1263399 (=> (not res!841606) (not e!719315))))

(assert (=> b!1263399 (= res!841606 (contains!7622 lt!572971 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263399 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun b!1263400 () Bool)

(assert (=> b!1263400 (= e!719324 e!719327)))

(assert (=> b!1263400 (= c!122934 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263401 () Bool)

(assert (=> b!1263401 (= e!719327 call!62212)))

(declare-fun b!1263402 () Bool)

(declare-fun Unit!42063 () Unit!42059)

(assert (=> b!1263402 (= e!719319 Unit!42063)))

(declare-fun b!1263403 () Bool)

(assert (=> b!1263403 (= e!719325 call!62213)))

(declare-fun b!1263404 () Bool)

(declare-fun res!841607 () Bool)

(assert (=> b!1263404 (=> (not res!841607) (not e!719322))))

(assert (=> b!1263404 (= res!841607 e!719323)))

(declare-fun res!841611 () Bool)

(assert (=> b!1263404 (=> res!841611 e!719323)))

(assert (=> b!1263404 (= res!841611 (not e!719318))))

(declare-fun res!841605 () Bool)

(assert (=> b!1263404 (=> (not res!841605) (not e!719318))))

(assert (=> b!1263404 (= res!841605 (bvslt #b00000000000000000000000000000000 (size!40291 _keys!1118)))))

(declare-fun bm!62209 () Bool)

(assert (=> bm!62209 (= call!62212 call!62214)))

(declare-fun bm!62210 () Bool)

(assert (=> bm!62210 (= call!62208 (contains!7622 lt!572971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62211 () Bool)

(assert (=> bm!62211 (= call!62213 call!62211)))

(declare-fun b!1263405 () Bool)

(assert (=> b!1263405 (= e!719316 (validKeyInArray!0 (select (arr!39754 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263406 () Bool)

(assert (=> b!1263406 (= e!719320 (not call!62209))))

(declare-fun b!1263407 () Bool)

(assert (=> b!1263407 (= e!719317 (= (apply!1036 lt!572971 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(assert (= (and d!138551 c!122938) b!1263391))

(assert (= (and d!138551 (not c!122938)) b!1263400))

(assert (= (and b!1263400 c!122934) b!1263401))

(assert (= (and b!1263400 (not c!122934)) b!1263389))

(assert (= (and b!1263389 c!122935) b!1263397))

(assert (= (and b!1263389 (not c!122935)) b!1263403))

(assert (= (or b!1263397 b!1263403) bm!62211))

(assert (= (or b!1263401 bm!62211) bm!62206))

(assert (= (or b!1263401 b!1263397) bm!62209))

(assert (= (or b!1263391 bm!62206) bm!62207))

(assert (= (or b!1263391 bm!62209) bm!62208))

(assert (= (and d!138551 res!841609) b!1263405))

(assert (= (and d!138551 c!122937) b!1263393))

(assert (= (and d!138551 (not c!122937)) b!1263402))

(assert (= (and d!138551 res!841608) b!1263404))

(assert (= (and b!1263404 res!841605) b!1263395))

(assert (= (and b!1263404 (not res!841611)) b!1263399))

(assert (= (and b!1263399 res!841606) b!1263390))

(assert (= (and b!1263404 res!841607) b!1263398))

(assert (= (and b!1263398 c!122933) b!1263387))

(assert (= (and b!1263398 (not c!122933)) b!1263394))

(assert (= (and b!1263387 res!841603) b!1263396))

(assert (= (or b!1263387 b!1263394) bm!62210))

(assert (= (and b!1263398 res!841610) b!1263392))

(assert (= (and b!1263392 c!122936) b!1263388))

(assert (= (and b!1263392 (not c!122936)) b!1263406))

(assert (= (and b!1263388 res!841604) b!1263407))

(assert (= (or b!1263388 b!1263406) bm!62205))

(declare-fun b_lambda!22963 () Bool)

(assert (=> (not b_lambda!22963) (not b!1263390)))

(assert (=> b!1263390 t!41947))

(declare-fun b_and!45515 () Bool)

(assert (= b_and!45513 (and (=> t!41947 result!23403) b_and!45515)))

(declare-fun m!1163905 () Bool)

(assert (=> b!1263396 m!1163905))

(declare-fun m!1163907 () Bool)

(assert (=> b!1263407 m!1163907))

(declare-fun m!1163909 () Bool)

(assert (=> bm!62205 m!1163909))

(declare-fun m!1163911 () Bool)

(assert (=> b!1263393 m!1163911))

(declare-fun m!1163913 () Bool)

(assert (=> b!1263393 m!1163913))

(declare-fun m!1163915 () Bool)

(assert (=> b!1263393 m!1163915))

(assert (=> b!1263393 m!1163737))

(assert (=> b!1263393 m!1163915))

(declare-fun m!1163917 () Bool)

(assert (=> b!1263393 m!1163917))

(declare-fun m!1163919 () Bool)

(assert (=> b!1263393 m!1163919))

(assert (=> b!1263393 m!1163787))

(declare-fun m!1163921 () Bool)

(assert (=> b!1263393 m!1163921))

(declare-fun m!1163923 () Bool)

(assert (=> b!1263393 m!1163923))

(declare-fun m!1163925 () Bool)

(assert (=> b!1263393 m!1163925))

(declare-fun m!1163927 () Bool)

(assert (=> b!1263393 m!1163927))

(declare-fun m!1163929 () Bool)

(assert (=> b!1263393 m!1163929))

(declare-fun m!1163931 () Bool)

(assert (=> b!1263393 m!1163931))

(declare-fun m!1163933 () Bool)

(assert (=> b!1263393 m!1163933))

(assert (=> b!1263393 m!1163931))

(declare-fun m!1163935 () Bool)

(assert (=> b!1263393 m!1163935))

(declare-fun m!1163937 () Bool)

(assert (=> b!1263393 m!1163937))

(assert (=> b!1263393 m!1163927))

(declare-fun m!1163939 () Bool)

(assert (=> b!1263393 m!1163939))

(assert (=> b!1263393 m!1163911))

(assert (=> b!1263390 m!1163805))

(assert (=> b!1263390 m!1163805))

(assert (=> b!1263390 m!1163799))

(assert (=> b!1263390 m!1163807))

(assert (=> b!1263390 m!1163787))

(assert (=> b!1263390 m!1163787))

(declare-fun m!1163941 () Bool)

(assert (=> b!1263390 m!1163941))

(assert (=> b!1263390 m!1163799))

(assert (=> b!1263405 m!1163787))

(assert (=> b!1263405 m!1163787))

(assert (=> b!1263405 m!1163789))

(assert (=> d!138551 m!1163753))

(declare-fun m!1163943 () Bool)

(assert (=> bm!62208 m!1163943))

(assert (=> bm!62207 m!1163737))

(assert (=> b!1263395 m!1163787))

(assert (=> b!1263395 m!1163787))

(assert (=> b!1263395 m!1163789))

(declare-fun m!1163945 () Bool)

(assert (=> bm!62210 m!1163945))

(declare-fun m!1163947 () Bool)

(assert (=> b!1263391 m!1163947))

(assert (=> b!1263399 m!1163787))

(assert (=> b!1263399 m!1163787))

(declare-fun m!1163949 () Bool)

(assert (=> b!1263399 m!1163949))

(assert (=> b!1263209 d!138551))

(declare-fun d!138553 () Bool)

(declare-fun lt!572988 () ListLongMap!19089)

(assert (=> d!138553 (not (contains!7622 lt!572988 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!146 (List!28424 (_ BitVec 64)) List!28424)

(assert (=> d!138553 (= lt!572988 (ListLongMap!19090 (removeStrictlySorted!146 (toList!9560 lt!572826) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138553 (= (-!2149 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572988)))

(declare-fun bs!35738 () Bool)

(assert (= bs!35738 d!138553))

(declare-fun m!1163951 () Bool)

(assert (=> bs!35738 m!1163951))

(declare-fun m!1163953 () Bool)

(assert (=> bs!35738 m!1163953))

(assert (=> b!1263209 d!138553))

(declare-fun d!138555 () Bool)

(assert (=> d!138555 (= (-!2149 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572826)))

(declare-fun lt!572991 () Unit!42059)

(declare-fun choose!1885 (ListLongMap!19089 (_ BitVec 64)) Unit!42059)

(assert (=> d!138555 (= lt!572991 (choose!1885 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138555 (not (contains!7622 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138555 (= (removeNotPresentStillSame!145 lt!572826 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572991)))

(declare-fun bs!35739 () Bool)

(assert (= bs!35739 d!138555))

(assert (=> bs!35739 m!1163745))

(declare-fun m!1163955 () Bool)

(assert (=> bs!35739 m!1163955))

(assert (=> bs!35739 m!1163731))

(assert (=> b!1263209 d!138555))

(declare-fun mapNonEmpty!50443 () Bool)

(declare-fun mapRes!50443 () Bool)

(declare-fun tp!96084 () Bool)

(declare-fun e!719333 () Bool)

(assert (=> mapNonEmpty!50443 (= mapRes!50443 (and tp!96084 e!719333))))

(declare-fun mapRest!50443 () (Array (_ BitVec 32) ValueCell!15441))

(declare-fun mapKey!50443 () (_ BitVec 32))

(declare-fun mapValue!50443 () ValueCell!15441)

(assert (=> mapNonEmpty!50443 (= mapRest!50437 (store mapRest!50443 mapKey!50443 mapValue!50443))))

(declare-fun mapIsEmpty!50443 () Bool)

(assert (=> mapIsEmpty!50443 mapRes!50443))

(declare-fun b!1263414 () Bool)

(assert (=> b!1263414 (= e!719333 tp_is_empty!32409)))

(declare-fun b!1263415 () Bool)

(declare-fun e!719332 () Bool)

(assert (=> b!1263415 (= e!719332 tp_is_empty!32409)))

(declare-fun condMapEmpty!50443 () Bool)

(declare-fun mapDefault!50443 () ValueCell!15441)

(assert (=> mapNonEmpty!50437 (= condMapEmpty!50443 (= mapRest!50437 ((as const (Array (_ BitVec 32) ValueCell!15441)) mapDefault!50443)))))

(assert (=> mapNonEmpty!50437 (= tp!96074 (and e!719332 mapRes!50443))))

(assert (= (and mapNonEmpty!50437 condMapEmpty!50443) mapIsEmpty!50443))

(assert (= (and mapNonEmpty!50437 (not condMapEmpty!50443)) mapNonEmpty!50443))

(assert (= (and mapNonEmpty!50443 ((_ is ValueCellFull!15441) mapValue!50443)) b!1263414))

(assert (= (and mapNonEmpty!50437 ((_ is ValueCellFull!15441) mapDefault!50443)) b!1263415))

(declare-fun m!1163957 () Bool)

(assert (=> mapNonEmpty!50443 m!1163957))

(declare-fun b_lambda!22965 () Bool)

(assert (= b_lambda!22955 (or (and start!106128 b_free!27507) b_lambda!22965)))

(declare-fun b_lambda!22967 () Bool)

(assert (= b_lambda!22953 (or (and start!106128 b_free!27507) b_lambda!22967)))

(declare-fun b_lambda!22969 () Bool)

(assert (= b_lambda!22957 (or (and start!106128 b_free!27507) b_lambda!22969)))

(declare-fun b_lambda!22971 () Bool)

(assert (= b_lambda!22959 (or (and start!106128 b_free!27507) b_lambda!22971)))

(declare-fun b_lambda!22973 () Bool)

(assert (= b_lambda!22961 (or (and start!106128 b_free!27507) b_lambda!22973)))

(declare-fun b_lambda!22975 () Bool)

(assert (= b_lambda!22963 (or (and start!106128 b_free!27507) b_lambda!22975)))

(check-sat (not b!1263395) (not b!1263252) (not b_lambda!22965) (not b!1263405) (not b!1263399) (not b!1263360) (not b!1263407) (not b!1263362) (not mapNonEmpty!50443) (not b!1263384) (not b!1263286) (not b!1263386) (not b!1263283) (not b!1263277) (not b!1263372) (not b_lambda!22973) (not b!1263374) (not b!1263390) tp_is_empty!32409 (not d!138553) (not d!138547) (not bm!62179) (not b!1263300) (not b!1263302) (not b!1263249) (not d!138545) (not b!1263288) (not b!1263391) (not bm!62195) (not b!1263296) (not bm!62205) (not d!138539) (not bm!62200) (not b!1263358) (not bm!62198) b_and!45515 (not b!1263248) (not b!1263298) (not d!138551) (not d!138541) (not b_lambda!22975) (not b!1263357) (not bm!62210) (not b!1263297) (not b!1263396) (not b!1263294) (not bm!62176) (not bm!62207) (not b_lambda!22967) (not b!1263309) (not bm!62208) (not b!1263280) (not bm!62204) (not bm!62180) (not d!138543) (not b_lambda!22969) (not b!1263301) (not b!1263284) (not b!1263287) (not b!1263363) (not b!1263282) (not b_next!27507) (not bm!62197) (not b!1263291) (not b_lambda!22971) (not d!138555) (not b!1263311) (not b!1263393) (not b!1263366))
(check-sat b_and!45515 (not b_next!27507))
