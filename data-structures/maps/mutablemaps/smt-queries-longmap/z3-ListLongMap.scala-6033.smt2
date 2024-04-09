; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78112 () Bool)

(assert start!78112)

(declare-fun b_free!16611 () Bool)

(declare-fun b_next!16611 () Bool)

(assert (=> start!78112 (= b_free!16611 (not b_next!16611))))

(declare-fun tp!58104 () Bool)

(declare-fun b_and!27201 () Bool)

(assert (=> start!78112 (= tp!58104 b_and!27201)))

(declare-fun b!911290 () Bool)

(declare-fun res!614955 () Bool)

(declare-fun e!511117 () Bool)

(assert (=> b!911290 (=> (not res!614955) (not e!511117))))

(declare-datatypes ((V!30337 0))(
  ( (V!30338 (val!9565 Int)) )
))
(declare-datatypes ((ValueCell!9033 0))(
  ( (ValueCellFull!9033 (v!12074 V!30337)) (EmptyCell!9033) )
))
(declare-datatypes ((array!54064 0))(
  ( (array!54065 (arr!25984 (Array (_ BitVec 32) ValueCell!9033)) (size!26444 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54064)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30337)

(declare-datatypes ((array!54066 0))(
  ( (array!54067 (arr!25985 (Array (_ BitVec 32) (_ BitVec 64))) (size!26445 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54066)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30337)

(declare-datatypes ((tuple2!12510 0))(
  ( (tuple2!12511 (_1!6265 (_ BitVec 64)) (_2!6265 V!30337)) )
))
(declare-datatypes ((List!18356 0))(
  ( (Nil!18353) (Cons!18352 (h!19498 tuple2!12510) (t!25949 List!18356)) )
))
(declare-datatypes ((ListLongMap!11221 0))(
  ( (ListLongMap!11222 (toList!5626 List!18356)) )
))
(declare-fun contains!4635 (ListLongMap!11221 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2856 (array!54066 array!54064 (_ BitVec 32) (_ BitVec 32) V!30337 V!30337 (_ BitVec 32) Int) ListLongMap!11221)

(assert (=> b!911290 (= res!614955 (contains!4635 (getCurrentListMap!2856 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!30265 () Bool)

(declare-fun mapRes!30265 () Bool)

(declare-fun tp!58105 () Bool)

(declare-fun e!511116 () Bool)

(assert (=> mapNonEmpty!30265 (= mapRes!30265 (and tp!58105 e!511116))))

(declare-fun mapKey!30265 () (_ BitVec 32))

(declare-fun mapValue!30265 () ValueCell!9033)

(declare-fun mapRest!30265 () (Array (_ BitVec 32) ValueCell!9033))

(assert (=> mapNonEmpty!30265 (= (arr!25984 _values!1152) (store mapRest!30265 mapKey!30265 mapValue!30265))))

(declare-fun b!911291 () Bool)

(declare-fun res!614956 () Bool)

(assert (=> b!911291 (=> (not res!614956) (not e!511117))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!911291 (= res!614956 (inRange!0 i!717 mask!1756))))

(declare-fun b!911292 () Bool)

(declare-fun e!511115 () Bool)

(declare-fun e!511118 () Bool)

(assert (=> b!911292 (= e!511115 (and e!511118 mapRes!30265))))

(declare-fun condMapEmpty!30265 () Bool)

(declare-fun mapDefault!30265 () ValueCell!9033)

(assert (=> b!911292 (= condMapEmpty!30265 (= (arr!25984 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9033)) mapDefault!30265)))))

(declare-fun b!911294 () Bool)

(declare-fun tp_is_empty!19029 () Bool)

(assert (=> b!911294 (= e!511118 tp_is_empty!19029)))

(declare-fun b!911295 () Bool)

(assert (=> b!911295 (= e!511116 tp_is_empty!19029)))

(declare-fun mapIsEmpty!30265 () Bool)

(assert (=> mapIsEmpty!30265 mapRes!30265))

(declare-fun b!911296 () Bool)

(declare-fun res!614951 () Bool)

(assert (=> b!911296 (=> (not res!614951) (not e!511117))))

(declare-datatypes ((List!18357 0))(
  ( (Nil!18354) (Cons!18353 (h!19499 (_ BitVec 64)) (t!25950 List!18357)) )
))
(declare-fun arrayNoDuplicates!0 (array!54066 (_ BitVec 32) List!18357) Bool)

(assert (=> b!911296 (= res!614951 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18354))))

(declare-fun b!911297 () Bool)

(assert (=> b!911297 (= e!511117 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26445 _keys!1386))))))

(declare-fun b!911298 () Bool)

(declare-fun res!614952 () Bool)

(assert (=> b!911298 (=> (not res!614952) (not e!511117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54066 (_ BitVec 32)) Bool)

(assert (=> b!911298 (= res!614952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!614954 () Bool)

(assert (=> start!78112 (=> (not res!614954) (not e!511117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78112 (= res!614954 (validMask!0 mask!1756))))

(assert (=> start!78112 e!511117))

(declare-fun array_inv!20292 (array!54064) Bool)

(assert (=> start!78112 (and (array_inv!20292 _values!1152) e!511115)))

(assert (=> start!78112 tp!58104))

(assert (=> start!78112 true))

(assert (=> start!78112 tp_is_empty!19029))

(declare-fun array_inv!20293 (array!54066) Bool)

(assert (=> start!78112 (array_inv!20293 _keys!1386)))

(declare-fun b!911293 () Bool)

(declare-fun res!614953 () Bool)

(assert (=> b!911293 (=> (not res!614953) (not e!511117))))

(assert (=> b!911293 (= res!614953 (and (= (size!26444 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26445 _keys!1386) (size!26444 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!78112 res!614954) b!911293))

(assert (= (and b!911293 res!614953) b!911298))

(assert (= (and b!911298 res!614952) b!911296))

(assert (= (and b!911296 res!614951) b!911290))

(assert (= (and b!911290 res!614955) b!911291))

(assert (= (and b!911291 res!614956) b!911297))

(assert (= (and b!911292 condMapEmpty!30265) mapIsEmpty!30265))

(assert (= (and b!911292 (not condMapEmpty!30265)) mapNonEmpty!30265))

(get-info :version)

(assert (= (and mapNonEmpty!30265 ((_ is ValueCellFull!9033) mapValue!30265)) b!911295))

(assert (= (and b!911292 ((_ is ValueCellFull!9033) mapDefault!30265)) b!911294))

(assert (= start!78112 b!911292))

(declare-fun m!846151 () Bool)

(assert (=> b!911298 m!846151))

(declare-fun m!846153 () Bool)

(assert (=> b!911296 m!846153))

(declare-fun m!846155 () Bool)

(assert (=> start!78112 m!846155))

(declare-fun m!846157 () Bool)

(assert (=> start!78112 m!846157))

(declare-fun m!846159 () Bool)

(assert (=> start!78112 m!846159))

(declare-fun m!846161 () Bool)

(assert (=> b!911291 m!846161))

(declare-fun m!846163 () Bool)

(assert (=> b!911290 m!846163))

(assert (=> b!911290 m!846163))

(declare-fun m!846165 () Bool)

(assert (=> b!911290 m!846165))

(declare-fun m!846167 () Bool)

(assert (=> mapNonEmpty!30265 m!846167))

(check-sat tp_is_empty!19029 (not b!911290) b_and!27201 (not b!911296) (not b_next!16611) (not b!911298) (not b!911291) (not start!78112) (not mapNonEmpty!30265))
(check-sat b_and!27201 (not b_next!16611))
(get-model)

(declare-fun d!112163 () Bool)

(declare-fun e!511139 () Bool)

(assert (=> d!112163 e!511139))

(declare-fun res!614977 () Bool)

(assert (=> d!112163 (=> res!614977 e!511139)))

(declare-fun lt!410348 () Bool)

(assert (=> d!112163 (= res!614977 (not lt!410348))))

(declare-fun lt!410347 () Bool)

(assert (=> d!112163 (= lt!410348 lt!410347)))

(declare-datatypes ((Unit!30833 0))(
  ( (Unit!30834) )
))
(declare-fun lt!410350 () Unit!30833)

(declare-fun e!511138 () Unit!30833)

(assert (=> d!112163 (= lt!410350 e!511138)))

(declare-fun c!95663 () Bool)

(assert (=> d!112163 (= c!95663 lt!410347)))

(declare-fun containsKey!440 (List!18356 (_ BitVec 64)) Bool)

(assert (=> d!112163 (= lt!410347 (containsKey!440 (toList!5626 (getCurrentListMap!2856 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> d!112163 (= (contains!4635 (getCurrentListMap!2856 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033) lt!410348)))

(declare-fun b!911332 () Bool)

(declare-fun lt!410349 () Unit!30833)

(assert (=> b!911332 (= e!511138 lt!410349)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!335 (List!18356 (_ BitVec 64)) Unit!30833)

(assert (=> b!911332 (= lt!410349 (lemmaContainsKeyImpliesGetValueByKeyDefined!335 (toList!5626 (getCurrentListMap!2856 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-datatypes ((Option!481 0))(
  ( (Some!480 (v!12076 V!30337)) (None!479) )
))
(declare-fun isDefined!345 (Option!481) Bool)

(declare-fun getValueByKey!475 (List!18356 (_ BitVec 64)) Option!481)

(assert (=> b!911332 (isDefined!345 (getValueByKey!475 (toList!5626 (getCurrentListMap!2856 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun b!911333 () Bool)

(declare-fun Unit!30835 () Unit!30833)

(assert (=> b!911333 (= e!511138 Unit!30835)))

(declare-fun b!911334 () Bool)

(assert (=> b!911334 (= e!511139 (isDefined!345 (getValueByKey!475 (toList!5626 (getCurrentListMap!2856 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)))))

(assert (= (and d!112163 c!95663) b!911332))

(assert (= (and d!112163 (not c!95663)) b!911333))

(assert (= (and d!112163 (not res!614977)) b!911334))

(declare-fun m!846187 () Bool)

(assert (=> d!112163 m!846187))

(declare-fun m!846189 () Bool)

(assert (=> b!911332 m!846189))

(declare-fun m!846191 () Bool)

(assert (=> b!911332 m!846191))

(assert (=> b!911332 m!846191))

(declare-fun m!846193 () Bool)

(assert (=> b!911332 m!846193))

(assert (=> b!911334 m!846191))

(assert (=> b!911334 m!846191))

(assert (=> b!911334 m!846193))

(assert (=> b!911290 d!112163))

(declare-fun b!911377 () Bool)

(declare-fun res!615002 () Bool)

(declare-fun e!511176 () Bool)

(assert (=> b!911377 (=> (not res!615002) (not e!511176))))

(declare-fun e!511178 () Bool)

(assert (=> b!911377 (= res!615002 e!511178)))

(declare-fun c!95676 () Bool)

(assert (=> b!911377 (= c!95676 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!40356 () ListLongMap!11221)

(declare-fun bm!40352 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3308 (array!54066 array!54064 (_ BitVec 32) (_ BitVec 32) V!30337 V!30337 (_ BitVec 32) Int) ListLongMap!11221)

(assert (=> bm!40352 (= call!40356 (getCurrentListMapNoExtraKeys!3308 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!911378 () Bool)

(declare-fun c!95678 () Bool)

(assert (=> b!911378 (= c!95678 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!511174 () ListLongMap!11221)

(declare-fun e!511169 () ListLongMap!11221)

(assert (=> b!911378 (= e!511174 e!511169)))

(declare-fun b!911379 () Bool)

(declare-fun e!511170 () Unit!30833)

(declare-fun lt!410404 () Unit!30833)

(assert (=> b!911379 (= e!511170 lt!410404)))

(declare-fun lt!410401 () ListLongMap!11221)

(assert (=> b!911379 (= lt!410401 (getCurrentListMapNoExtraKeys!3308 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410399 () (_ BitVec 64))

(assert (=> b!911379 (= lt!410399 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410416 () (_ BitVec 64))

(assert (=> b!911379 (= lt!410416 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410395 () Unit!30833)

(declare-fun addStillContains!346 (ListLongMap!11221 (_ BitVec 64) V!30337 (_ BitVec 64)) Unit!30833)

(assert (=> b!911379 (= lt!410395 (addStillContains!346 lt!410401 lt!410399 zeroValue!1094 lt!410416))))

(declare-fun +!2560 (ListLongMap!11221 tuple2!12510) ListLongMap!11221)

(assert (=> b!911379 (contains!4635 (+!2560 lt!410401 (tuple2!12511 lt!410399 zeroValue!1094)) lt!410416)))

(declare-fun lt!410410 () Unit!30833)

(assert (=> b!911379 (= lt!410410 lt!410395)))

(declare-fun lt!410415 () ListLongMap!11221)

(assert (=> b!911379 (= lt!410415 (getCurrentListMapNoExtraKeys!3308 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410398 () (_ BitVec 64))

(assert (=> b!911379 (= lt!410398 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410407 () (_ BitVec 64))

(assert (=> b!911379 (= lt!410407 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410397 () Unit!30833)

(declare-fun addApplyDifferent!346 (ListLongMap!11221 (_ BitVec 64) V!30337 (_ BitVec 64)) Unit!30833)

(assert (=> b!911379 (= lt!410397 (addApplyDifferent!346 lt!410415 lt!410398 minValue!1094 lt!410407))))

(declare-fun apply!527 (ListLongMap!11221 (_ BitVec 64)) V!30337)

(assert (=> b!911379 (= (apply!527 (+!2560 lt!410415 (tuple2!12511 lt!410398 minValue!1094)) lt!410407) (apply!527 lt!410415 lt!410407))))

(declare-fun lt!410402 () Unit!30833)

(assert (=> b!911379 (= lt!410402 lt!410397)))

(declare-fun lt!410403 () ListLongMap!11221)

(assert (=> b!911379 (= lt!410403 (getCurrentListMapNoExtraKeys!3308 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410411 () (_ BitVec 64))

(assert (=> b!911379 (= lt!410411 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410405 () (_ BitVec 64))

(assert (=> b!911379 (= lt!410405 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410412 () Unit!30833)

(assert (=> b!911379 (= lt!410412 (addApplyDifferent!346 lt!410403 lt!410411 zeroValue!1094 lt!410405))))

(assert (=> b!911379 (= (apply!527 (+!2560 lt!410403 (tuple2!12511 lt!410411 zeroValue!1094)) lt!410405) (apply!527 lt!410403 lt!410405))))

(declare-fun lt!410406 () Unit!30833)

(assert (=> b!911379 (= lt!410406 lt!410412)))

(declare-fun lt!410396 () ListLongMap!11221)

(assert (=> b!911379 (= lt!410396 (getCurrentListMapNoExtraKeys!3308 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410409 () (_ BitVec 64))

(assert (=> b!911379 (= lt!410409 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410413 () (_ BitVec 64))

(assert (=> b!911379 (= lt!410413 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!911379 (= lt!410404 (addApplyDifferent!346 lt!410396 lt!410409 minValue!1094 lt!410413))))

(assert (=> b!911379 (= (apply!527 (+!2560 lt!410396 (tuple2!12511 lt!410409 minValue!1094)) lt!410413) (apply!527 lt!410396 lt!410413))))

(declare-fun b!911380 () Bool)

(declare-fun call!40358 () Bool)

(assert (=> b!911380 (= e!511178 (not call!40358))))

(declare-fun bm!40353 () Bool)

(declare-fun call!40355 () ListLongMap!11221)

(assert (=> bm!40353 (= call!40355 call!40356)))

(declare-fun bm!40355 () Bool)

(declare-fun call!40361 () ListLongMap!11221)

(declare-fun c!95681 () Bool)

(declare-fun c!95679 () Bool)

(declare-fun call!40360 () ListLongMap!11221)

(assert (=> bm!40355 (= call!40361 (+!2560 (ite c!95681 call!40356 (ite c!95679 call!40355 call!40360)) (ite (or c!95681 c!95679) (tuple2!12511 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12511 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!911381 () Bool)

(assert (=> b!911381 (= e!511169 call!40360)))

(declare-fun b!911382 () Bool)

(declare-fun e!511166 () Bool)

(declare-fun e!511175 () Bool)

(assert (=> b!911382 (= e!511166 e!511175)))

(declare-fun res!615000 () Bool)

(assert (=> b!911382 (=> (not res!615000) (not e!511175))))

(declare-fun lt!410400 () ListLongMap!11221)

(assert (=> b!911382 (= res!615000 (contains!4635 lt!410400 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!911382 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26445 _keys!1386)))))

(declare-fun bm!40356 () Bool)

(assert (=> bm!40356 (= call!40358 (contains!4635 lt!410400 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!911383 () Bool)

(declare-fun call!40359 () ListLongMap!11221)

(assert (=> b!911383 (= e!511174 call!40359)))

(declare-fun b!911384 () Bool)

(declare-fun e!511177 () Bool)

(declare-fun call!40357 () Bool)

(assert (=> b!911384 (= e!511177 (not call!40357))))

(declare-fun b!911385 () Bool)

(declare-fun e!511172 () Bool)

(assert (=> b!911385 (= e!511177 e!511172)))

(declare-fun res!615003 () Bool)

(assert (=> b!911385 (= res!615003 call!40357)))

(assert (=> b!911385 (=> (not res!615003) (not e!511172))))

(declare-fun bm!40357 () Bool)

(assert (=> bm!40357 (= call!40359 call!40361)))

(declare-fun b!911386 () Bool)

(declare-fun e!511168 () Bool)

(assert (=> b!911386 (= e!511168 (= (apply!527 lt!410400 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun b!911387 () Bool)

(declare-fun Unit!30836 () Unit!30833)

(assert (=> b!911387 (= e!511170 Unit!30836)))

(declare-fun b!911388 () Bool)

(assert (=> b!911388 (= e!511178 e!511168)))

(declare-fun res!615004 () Bool)

(assert (=> b!911388 (= res!615004 call!40358)))

(assert (=> b!911388 (=> (not res!615004) (not e!511168))))

(declare-fun b!911389 () Bool)

(declare-fun e!511171 () ListLongMap!11221)

(assert (=> b!911389 (= e!511171 (+!2560 call!40361 (tuple2!12511 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!911390 () Bool)

(declare-fun get!13667 (ValueCell!9033 V!30337) V!30337)

(declare-fun dynLambda!1394 (Int (_ BitVec 64)) V!30337)

(assert (=> b!911390 (= e!511175 (= (apply!527 lt!410400 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000)) (get!13667 (select (arr!25984 _values!1152) #b00000000000000000000000000000000) (dynLambda!1394 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!911390 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26444 _values!1152)))))

(assert (=> b!911390 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26445 _keys!1386)))))

(declare-fun b!911391 () Bool)

(assert (=> b!911391 (= e!511169 call!40359)))

(declare-fun b!911392 () Bool)

(declare-fun e!511173 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!911392 (= e!511173 (validKeyInArray!0 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun bm!40354 () Bool)

(assert (=> bm!40354 (= call!40357 (contains!4635 lt!410400 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!112165 () Bool)

(assert (=> d!112165 e!511176))

(declare-fun res!614998 () Bool)

(assert (=> d!112165 (=> (not res!614998) (not e!511176))))

(assert (=> d!112165 (= res!614998 (or (bvsge #b00000000000000000000000000000000 (size!26445 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26445 _keys!1386)))))))

(declare-fun lt!410414 () ListLongMap!11221)

(assert (=> d!112165 (= lt!410400 lt!410414)))

(declare-fun lt!410408 () Unit!30833)

(assert (=> d!112165 (= lt!410408 e!511170)))

(declare-fun c!95680 () Bool)

(assert (=> d!112165 (= c!95680 e!511173)))

(declare-fun res!614999 () Bool)

(assert (=> d!112165 (=> (not res!614999) (not e!511173))))

(assert (=> d!112165 (= res!614999 (bvslt #b00000000000000000000000000000000 (size!26445 _keys!1386)))))

(assert (=> d!112165 (= lt!410414 e!511171)))

(assert (=> d!112165 (= c!95681 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112165 (validMask!0 mask!1756)))

(assert (=> d!112165 (= (getCurrentListMap!2856 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!410400)))

(declare-fun b!911393 () Bool)

(assert (=> b!911393 (= e!511172 (= (apply!527 lt!410400 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun b!911394 () Bool)

(assert (=> b!911394 (= e!511176 e!511177)))

(declare-fun c!95677 () Bool)

(assert (=> b!911394 (= c!95677 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40358 () Bool)

(assert (=> bm!40358 (= call!40360 call!40355)))

(declare-fun b!911395 () Bool)

(assert (=> b!911395 (= e!511171 e!511174)))

(assert (=> b!911395 (= c!95679 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!911396 () Bool)

(declare-fun e!511167 () Bool)

(assert (=> b!911396 (= e!511167 (validKeyInArray!0 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!911397 () Bool)

(declare-fun res!614996 () Bool)

(assert (=> b!911397 (=> (not res!614996) (not e!511176))))

(assert (=> b!911397 (= res!614996 e!511166)))

(declare-fun res!614997 () Bool)

(assert (=> b!911397 (=> res!614997 e!511166)))

(assert (=> b!911397 (= res!614997 (not e!511167))))

(declare-fun res!615001 () Bool)

(assert (=> b!911397 (=> (not res!615001) (not e!511167))))

(assert (=> b!911397 (= res!615001 (bvslt #b00000000000000000000000000000000 (size!26445 _keys!1386)))))

(assert (= (and d!112165 c!95681) b!911389))

(assert (= (and d!112165 (not c!95681)) b!911395))

(assert (= (and b!911395 c!95679) b!911383))

(assert (= (and b!911395 (not c!95679)) b!911378))

(assert (= (and b!911378 c!95678) b!911391))

(assert (= (and b!911378 (not c!95678)) b!911381))

(assert (= (or b!911391 b!911381) bm!40358))

(assert (= (or b!911383 bm!40358) bm!40353))

(assert (= (or b!911383 b!911391) bm!40357))

(assert (= (or b!911389 bm!40353) bm!40352))

(assert (= (or b!911389 bm!40357) bm!40355))

(assert (= (and d!112165 res!614999) b!911392))

(assert (= (and d!112165 c!95680) b!911379))

(assert (= (and d!112165 (not c!95680)) b!911387))

(assert (= (and d!112165 res!614998) b!911397))

(assert (= (and b!911397 res!615001) b!911396))

(assert (= (and b!911397 (not res!614997)) b!911382))

(assert (= (and b!911382 res!615000) b!911390))

(assert (= (and b!911397 res!614996) b!911377))

(assert (= (and b!911377 c!95676) b!911388))

(assert (= (and b!911377 (not c!95676)) b!911380))

(assert (= (and b!911388 res!615004) b!911386))

(assert (= (or b!911388 b!911380) bm!40356))

(assert (= (and b!911377 res!615002) b!911394))

(assert (= (and b!911394 c!95677) b!911385))

(assert (= (and b!911394 (not c!95677)) b!911384))

(assert (= (and b!911385 res!615003) b!911393))

(assert (= (or b!911385 b!911384) bm!40354))

(declare-fun b_lambda!13333 () Bool)

(assert (=> (not b_lambda!13333) (not b!911390)))

(declare-fun t!25953 () Bool)

(declare-fun tb!5445 () Bool)

(assert (=> (and start!78112 (= defaultEntry!1160 defaultEntry!1160) t!25953) tb!5445))

(declare-fun result!10683 () Bool)

(assert (=> tb!5445 (= result!10683 tp_is_empty!19029)))

(assert (=> b!911390 t!25953))

(declare-fun b_and!27205 () Bool)

(assert (= b_and!27201 (and (=> t!25953 result!10683) b_and!27205)))

(declare-fun m!846195 () Bool)

(assert (=> b!911392 m!846195))

(assert (=> b!911392 m!846195))

(declare-fun m!846197 () Bool)

(assert (=> b!911392 m!846197))

(declare-fun m!846199 () Bool)

(assert (=> bm!40354 m!846199))

(assert (=> b!911396 m!846195))

(assert (=> b!911396 m!846195))

(assert (=> b!911396 m!846197))

(declare-fun m!846201 () Bool)

(assert (=> bm!40356 m!846201))

(declare-fun m!846203 () Bool)

(assert (=> b!911393 m!846203))

(assert (=> d!112165 m!846155))

(declare-fun m!846205 () Bool)

(assert (=> b!911389 m!846205))

(assert (=> b!911382 m!846195))

(assert (=> b!911382 m!846195))

(declare-fun m!846207 () Bool)

(assert (=> b!911382 m!846207))

(declare-fun m!846209 () Bool)

(assert (=> bm!40352 m!846209))

(declare-fun m!846211 () Bool)

(assert (=> bm!40355 m!846211))

(assert (=> b!911390 m!846195))

(assert (=> b!911390 m!846195))

(declare-fun m!846213 () Bool)

(assert (=> b!911390 m!846213))

(declare-fun m!846215 () Bool)

(assert (=> b!911390 m!846215))

(declare-fun m!846217 () Bool)

(assert (=> b!911390 m!846217))

(assert (=> b!911390 m!846215))

(assert (=> b!911390 m!846217))

(declare-fun m!846219 () Bool)

(assert (=> b!911390 m!846219))

(declare-fun m!846221 () Bool)

(assert (=> b!911386 m!846221))

(assert (=> b!911379 m!846195))

(declare-fun m!846223 () Bool)

(assert (=> b!911379 m!846223))

(declare-fun m!846225 () Bool)

(assert (=> b!911379 m!846225))

(assert (=> b!911379 m!846209))

(declare-fun m!846227 () Bool)

(assert (=> b!911379 m!846227))

(declare-fun m!846229 () Bool)

(assert (=> b!911379 m!846229))

(declare-fun m!846231 () Bool)

(assert (=> b!911379 m!846231))

(assert (=> b!911379 m!846231))

(declare-fun m!846233 () Bool)

(assert (=> b!911379 m!846233))

(declare-fun m!846235 () Bool)

(assert (=> b!911379 m!846235))

(declare-fun m!846237 () Bool)

(assert (=> b!911379 m!846237))

(declare-fun m!846239 () Bool)

(assert (=> b!911379 m!846239))

(declare-fun m!846241 () Bool)

(assert (=> b!911379 m!846241))

(assert (=> b!911379 m!846241))

(declare-fun m!846243 () Bool)

(assert (=> b!911379 m!846243))

(assert (=> b!911379 m!846227))

(assert (=> b!911379 m!846223))

(declare-fun m!846245 () Bool)

(assert (=> b!911379 m!846245))

(declare-fun m!846247 () Bool)

(assert (=> b!911379 m!846247))

(declare-fun m!846249 () Bool)

(assert (=> b!911379 m!846249))

(declare-fun m!846251 () Bool)

(assert (=> b!911379 m!846251))

(assert (=> b!911290 d!112165))

(declare-fun d!112167 () Bool)

(assert (=> d!112167 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!911291 d!112167))

(declare-fun d!112169 () Bool)

(assert (=> d!112169 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!78112 d!112169))

(declare-fun d!112171 () Bool)

(assert (=> d!112171 (= (array_inv!20292 _values!1152) (bvsge (size!26444 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!78112 d!112171))

(declare-fun d!112173 () Bool)

(assert (=> d!112173 (= (array_inv!20293 _keys!1386) (bvsge (size!26445 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!78112 d!112173))

(declare-fun b!911410 () Bool)

(declare-fun e!511188 () Bool)

(declare-fun contains!4637 (List!18357 (_ BitVec 64)) Bool)

(assert (=> b!911410 (= e!511188 (contains!4637 Nil!18354 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!911411 () Bool)

(declare-fun e!511187 () Bool)

(declare-fun call!40364 () Bool)

(assert (=> b!911411 (= e!511187 call!40364)))

(declare-fun bm!40361 () Bool)

(declare-fun c!95684 () Bool)

(assert (=> bm!40361 (= call!40364 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95684 (Cons!18353 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000) Nil!18354) Nil!18354)))))

(declare-fun b!911413 () Bool)

(assert (=> b!911413 (= e!511187 call!40364)))

(declare-fun b!911414 () Bool)

(declare-fun e!511189 () Bool)

(assert (=> b!911414 (= e!511189 e!511187)))

(assert (=> b!911414 (= c!95684 (validKeyInArray!0 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!911412 () Bool)

(declare-fun e!511190 () Bool)

(assert (=> b!911412 (= e!511190 e!511189)))

(declare-fun res!615011 () Bool)

(assert (=> b!911412 (=> (not res!615011) (not e!511189))))

(assert (=> b!911412 (= res!615011 (not e!511188))))

(declare-fun res!615012 () Bool)

(assert (=> b!911412 (=> (not res!615012) (not e!511188))))

(assert (=> b!911412 (= res!615012 (validKeyInArray!0 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112175 () Bool)

(declare-fun res!615013 () Bool)

(assert (=> d!112175 (=> res!615013 e!511190)))

(assert (=> d!112175 (= res!615013 (bvsge #b00000000000000000000000000000000 (size!26445 _keys!1386)))))

(assert (=> d!112175 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18354) e!511190)))

(assert (= (and d!112175 (not res!615013)) b!911412))

(assert (= (and b!911412 res!615012) b!911410))

(assert (= (and b!911412 res!615011) b!911414))

(assert (= (and b!911414 c!95684) b!911411))

(assert (= (and b!911414 (not c!95684)) b!911413))

(assert (= (or b!911411 b!911413) bm!40361))

(assert (=> b!911410 m!846195))

(assert (=> b!911410 m!846195))

(declare-fun m!846253 () Bool)

(assert (=> b!911410 m!846253))

(assert (=> bm!40361 m!846195))

(declare-fun m!846255 () Bool)

(assert (=> bm!40361 m!846255))

(assert (=> b!911414 m!846195))

(assert (=> b!911414 m!846195))

(assert (=> b!911414 m!846197))

(assert (=> b!911412 m!846195))

(assert (=> b!911412 m!846195))

(assert (=> b!911412 m!846197))

(assert (=> b!911296 d!112175))

(declare-fun bm!40364 () Bool)

(declare-fun call!40367 () Bool)

(assert (=> bm!40364 (= call!40367 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!911423 () Bool)

(declare-fun e!511199 () Bool)

(assert (=> b!911423 (= e!511199 call!40367)))

(declare-fun b!911424 () Bool)

(declare-fun e!511198 () Bool)

(assert (=> b!911424 (= e!511198 call!40367)))

(declare-fun b!911425 () Bool)

(declare-fun e!511197 () Bool)

(assert (=> b!911425 (= e!511197 e!511198)))

(declare-fun c!95687 () Bool)

(assert (=> b!911425 (= c!95687 (validKeyInArray!0 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112177 () Bool)

(declare-fun res!615018 () Bool)

(assert (=> d!112177 (=> res!615018 e!511197)))

(assert (=> d!112177 (= res!615018 (bvsge #b00000000000000000000000000000000 (size!26445 _keys!1386)))))

(assert (=> d!112177 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!511197)))

(declare-fun b!911426 () Bool)

(assert (=> b!911426 (= e!511198 e!511199)))

(declare-fun lt!410423 () (_ BitVec 64))

(assert (=> b!911426 (= lt!410423 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410425 () Unit!30833)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54066 (_ BitVec 64) (_ BitVec 32)) Unit!30833)

(assert (=> b!911426 (= lt!410425 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!410423 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!54066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!911426 (arrayContainsKey!0 _keys!1386 lt!410423 #b00000000000000000000000000000000)))

(declare-fun lt!410424 () Unit!30833)

(assert (=> b!911426 (= lt!410424 lt!410425)))

(declare-fun res!615019 () Bool)

(declare-datatypes ((SeekEntryResult!8953 0))(
  ( (MissingZero!8953 (index!38182 (_ BitVec 32))) (Found!8953 (index!38183 (_ BitVec 32))) (Intermediate!8953 (undefined!9765 Bool) (index!38184 (_ BitVec 32)) (x!77925 (_ BitVec 32))) (Undefined!8953) (MissingVacant!8953 (index!38185 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54066 (_ BitVec 32)) SeekEntryResult!8953)

(assert (=> b!911426 (= res!615019 (= (seekEntryOrOpen!0 (select (arr!25985 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8953 #b00000000000000000000000000000000)))))

(assert (=> b!911426 (=> (not res!615019) (not e!511199))))

(assert (= (and d!112177 (not res!615018)) b!911425))

(assert (= (and b!911425 c!95687) b!911426))

(assert (= (and b!911425 (not c!95687)) b!911424))

(assert (= (and b!911426 res!615019) b!911423))

(assert (= (or b!911423 b!911424) bm!40364))

(declare-fun m!846257 () Bool)

(assert (=> bm!40364 m!846257))

(assert (=> b!911425 m!846195))

(assert (=> b!911425 m!846195))

(assert (=> b!911425 m!846197))

(assert (=> b!911426 m!846195))

(declare-fun m!846259 () Bool)

(assert (=> b!911426 m!846259))

(declare-fun m!846261 () Bool)

(assert (=> b!911426 m!846261))

(assert (=> b!911426 m!846195))

(declare-fun m!846263 () Bool)

(assert (=> b!911426 m!846263))

(assert (=> b!911298 d!112177))

(declare-fun b!911433 () Bool)

(declare-fun e!511205 () Bool)

(assert (=> b!911433 (= e!511205 tp_is_empty!19029)))

(declare-fun mapIsEmpty!30271 () Bool)

(declare-fun mapRes!30271 () Bool)

(assert (=> mapIsEmpty!30271 mapRes!30271))

(declare-fun b!911434 () Bool)

(declare-fun e!511204 () Bool)

(assert (=> b!911434 (= e!511204 tp_is_empty!19029)))

(declare-fun mapNonEmpty!30271 () Bool)

(declare-fun tp!58114 () Bool)

(assert (=> mapNonEmpty!30271 (= mapRes!30271 (and tp!58114 e!511205))))

(declare-fun mapKey!30271 () (_ BitVec 32))

(declare-fun mapValue!30271 () ValueCell!9033)

(declare-fun mapRest!30271 () (Array (_ BitVec 32) ValueCell!9033))

(assert (=> mapNonEmpty!30271 (= mapRest!30265 (store mapRest!30271 mapKey!30271 mapValue!30271))))

(declare-fun condMapEmpty!30271 () Bool)

(declare-fun mapDefault!30271 () ValueCell!9033)

(assert (=> mapNonEmpty!30265 (= condMapEmpty!30271 (= mapRest!30265 ((as const (Array (_ BitVec 32) ValueCell!9033)) mapDefault!30271)))))

(assert (=> mapNonEmpty!30265 (= tp!58105 (and e!511204 mapRes!30271))))

(assert (= (and mapNonEmpty!30265 condMapEmpty!30271) mapIsEmpty!30271))

(assert (= (and mapNonEmpty!30265 (not condMapEmpty!30271)) mapNonEmpty!30271))

(assert (= (and mapNonEmpty!30271 ((_ is ValueCellFull!9033) mapValue!30271)) b!911433))

(assert (= (and mapNonEmpty!30265 ((_ is ValueCellFull!9033) mapDefault!30271)) b!911434))

(declare-fun m!846265 () Bool)

(assert (=> mapNonEmpty!30271 m!846265))

(declare-fun b_lambda!13335 () Bool)

(assert (= b_lambda!13333 (or (and start!78112 b_free!16611) b_lambda!13335)))

(check-sat tp_is_empty!19029 b_and!27205 (not b!911426) (not mapNonEmpty!30271) (not b!911332) (not bm!40361) (not b!911386) (not d!112165) (not d!112163) (not b!911382) (not b_lambda!13335) (not b!911393) (not bm!40352) (not b!911389) (not b!911379) (not b!911410) (not b!911425) (not bm!40354) (not b!911334) (not b!911392) (not bm!40356) (not b!911396) (not bm!40355) (not b_next!16611) (not b!911390) (not bm!40364) (not b!911414) (not b!911412))
(check-sat b_and!27205 (not b_next!16611))
