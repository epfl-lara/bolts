; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71344 () Bool)

(assert start!71344)

(declare-fun b_free!13437 () Bool)

(declare-fun b_next!13437 () Bool)

(assert (=> start!71344 (= b_free!13437 (not b_next!13437))))

(declare-fun tp!47080 () Bool)

(declare-fun b_and!22413 () Bool)

(assert (=> start!71344 (= tp!47080 b_and!22413)))

(declare-fun b!828161 () Bool)

(declare-fun res!564457 () Bool)

(declare-fun e!461499 () Bool)

(assert (=> b!828161 (=> (not res!564457) (not e!461499))))

(declare-datatypes ((array!46432 0))(
  ( (array!46433 (arr!22254 (Array (_ BitVec 32) (_ BitVec 64))) (size!22675 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46432)

(declare-datatypes ((List!15960 0))(
  ( (Nil!15957) (Cons!15956 (h!17085 (_ BitVec 64)) (t!22321 List!15960)) )
))
(declare-fun arrayNoDuplicates!0 (array!46432 (_ BitVec 32) List!15960) Bool)

(assert (=> b!828161 (= res!564457 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15957))))

(declare-fun b!828162 () Bool)

(declare-fun e!461500 () Bool)

(declare-fun e!461498 () Bool)

(declare-fun mapRes!24355 () Bool)

(assert (=> b!828162 (= e!461500 (and e!461498 mapRes!24355))))

(declare-fun condMapEmpty!24355 () Bool)

(declare-datatypes ((V!25197 0))(
  ( (V!25198 (val!7621 Int)) )
))
(declare-datatypes ((ValueCell!7158 0))(
  ( (ValueCellFull!7158 (v!10053 V!25197)) (EmptyCell!7158) )
))
(declare-datatypes ((array!46434 0))(
  ( (array!46435 (arr!22255 (Array (_ BitVec 32) ValueCell!7158)) (size!22676 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46434)

(declare-fun mapDefault!24355 () ValueCell!7158)

(assert (=> b!828162 (= condMapEmpty!24355 (= (arr!22255 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7158)) mapDefault!24355)))))

(declare-fun res!564455 () Bool)

(assert (=> start!71344 (=> (not res!564455) (not e!461499))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71344 (= res!564455 (validMask!0 mask!1312))))

(assert (=> start!71344 e!461499))

(declare-fun tp_is_empty!15147 () Bool)

(assert (=> start!71344 tp_is_empty!15147))

(declare-fun array_inv!17711 (array!46432) Bool)

(assert (=> start!71344 (array_inv!17711 _keys!976)))

(assert (=> start!71344 true))

(declare-fun array_inv!17712 (array!46434) Bool)

(assert (=> start!71344 (and (array_inv!17712 _values!788) e!461500)))

(assert (=> start!71344 tp!47080))

(declare-fun mapNonEmpty!24355 () Bool)

(declare-fun tp!47079 () Bool)

(declare-fun e!461496 () Bool)

(assert (=> mapNonEmpty!24355 (= mapRes!24355 (and tp!47079 e!461496))))

(declare-fun mapRest!24355 () (Array (_ BitVec 32) ValueCell!7158))

(declare-fun mapKey!24355 () (_ BitVec 32))

(declare-fun mapValue!24355 () ValueCell!7158)

(assert (=> mapNonEmpty!24355 (= (arr!22255 _values!788) (store mapRest!24355 mapKey!24355 mapValue!24355))))

(declare-fun b!828163 () Bool)

(declare-fun e!461495 () Bool)

(assert (=> b!828163 (= e!461499 (not e!461495))))

(declare-fun res!564456 () Bool)

(assert (=> b!828163 (=> res!564456 e!461495)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828163 (= res!564456 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10124 0))(
  ( (tuple2!10125 (_1!5072 (_ BitVec 64)) (_2!5072 V!25197)) )
))
(declare-datatypes ((List!15961 0))(
  ( (Nil!15958) (Cons!15957 (h!17086 tuple2!10124) (t!22322 List!15961)) )
))
(declare-datatypes ((ListLongMap!8961 0))(
  ( (ListLongMap!8962 (toList!4496 List!15961)) )
))
(declare-fun lt!375246 () ListLongMap!8961)

(declare-fun lt!375247 () ListLongMap!8961)

(assert (=> b!828163 (= lt!375246 lt!375247)))

(declare-fun zeroValueAfter!34 () V!25197)

(declare-fun minValue!754 () V!25197)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!25197)

(declare-datatypes ((Unit!28377 0))(
  ( (Unit!28378) )
))
(declare-fun lt!375245 () Unit!28377)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!591 (array!46432 array!46434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25197 V!25197 V!25197 V!25197 (_ BitVec 32) Int) Unit!28377)

(assert (=> b!828163 (= lt!375245 (lemmaNoChangeToArrayThenSameMapNoExtras!591 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2501 (array!46432 array!46434 (_ BitVec 32) (_ BitVec 32) V!25197 V!25197 (_ BitVec 32) Int) ListLongMap!8961)

(assert (=> b!828163 (= lt!375247 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828163 (= lt!375246 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828164 () Bool)

(assert (=> b!828164 (= e!461496 tp_is_empty!15147)))

(declare-fun mapIsEmpty!24355 () Bool)

(assert (=> mapIsEmpty!24355 mapRes!24355))

(declare-fun b!828165 () Bool)

(assert (=> b!828165 (= e!461498 tp_is_empty!15147)))

(declare-fun b!828166 () Bool)

(declare-fun res!564459 () Bool)

(assert (=> b!828166 (=> (not res!564459) (not e!461499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46432 (_ BitVec 32)) Bool)

(assert (=> b!828166 (= res!564459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!828167 () Bool)

(declare-fun getCurrentListMap!2571 (array!46432 array!46434 (_ BitVec 32) (_ BitVec 32) V!25197 V!25197 (_ BitVec 32) Int) ListLongMap!8961)

(declare-fun +!1929 (ListLongMap!8961 tuple2!10124) ListLongMap!8961)

(assert (=> b!828167 (= e!461495 (= (getCurrentListMap!2571 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1929 lt!375246 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun lt!375244 () ListLongMap!8961)

(assert (=> b!828167 (= lt!375244 (getCurrentListMap!2571 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828168 () Bool)

(declare-fun res!564458 () Bool)

(assert (=> b!828168 (=> (not res!564458) (not e!461499))))

(assert (=> b!828168 (= res!564458 (and (= (size!22676 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22675 _keys!976) (size!22676 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!71344 res!564455) b!828168))

(assert (= (and b!828168 res!564458) b!828166))

(assert (= (and b!828166 res!564459) b!828161))

(assert (= (and b!828161 res!564457) b!828163))

(assert (= (and b!828163 (not res!564456)) b!828167))

(assert (= (and b!828162 condMapEmpty!24355) mapIsEmpty!24355))

(assert (= (and b!828162 (not condMapEmpty!24355)) mapNonEmpty!24355))

(get-info :version)

(assert (= (and mapNonEmpty!24355 ((_ is ValueCellFull!7158) mapValue!24355)) b!828164))

(assert (= (and b!828162 ((_ is ValueCellFull!7158) mapDefault!24355)) b!828165))

(assert (= start!71344 b!828162))

(declare-fun m!771199 () Bool)

(assert (=> mapNonEmpty!24355 m!771199))

(declare-fun m!771201 () Bool)

(assert (=> b!828163 m!771201))

(declare-fun m!771203 () Bool)

(assert (=> b!828163 m!771203))

(declare-fun m!771205 () Bool)

(assert (=> b!828163 m!771205))

(declare-fun m!771207 () Bool)

(assert (=> b!828166 m!771207))

(declare-fun m!771209 () Bool)

(assert (=> start!71344 m!771209))

(declare-fun m!771211 () Bool)

(assert (=> start!71344 m!771211))

(declare-fun m!771213 () Bool)

(assert (=> start!71344 m!771213))

(declare-fun m!771215 () Bool)

(assert (=> b!828161 m!771215))

(declare-fun m!771217 () Bool)

(assert (=> b!828167 m!771217))

(declare-fun m!771219 () Bool)

(assert (=> b!828167 m!771219))

(declare-fun m!771221 () Bool)

(assert (=> b!828167 m!771221))

(check-sat (not b!828167) (not b!828166) (not b!828163) (not b!828161) (not b_next!13437) (not mapNonEmpty!24355) (not start!71344) tp_is_empty!15147 b_and!22413)
(check-sat b_and!22413 (not b_next!13437))
(get-model)

(declare-fun bm!36006 () Bool)

(declare-fun call!36010 () Bool)

(declare-fun lt!375324 () ListLongMap!8961)

(declare-fun contains!4190 (ListLongMap!8961 (_ BitVec 64)) Bool)

(assert (=> bm!36006 (= call!36010 (contains!4190 lt!375324 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!828235 () Bool)

(declare-fun e!461546 () Bool)

(declare-fun call!36013 () Bool)

(assert (=> b!828235 (= e!461546 (not call!36013))))

(declare-fun b!828236 () Bool)

(declare-fun e!461552 () ListLongMap!8961)

(declare-fun call!36012 () ListLongMap!8961)

(assert (=> b!828236 (= e!461552 call!36012)))

(declare-fun b!828237 () Bool)

(declare-fun e!461554 () Unit!28377)

(declare-fun lt!375310 () Unit!28377)

(assert (=> b!828237 (= e!461554 lt!375310)))

(declare-fun lt!375317 () ListLongMap!8961)

(assert (=> b!828237 (= lt!375317 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375316 () (_ BitVec 64))

(assert (=> b!828237 (= lt!375316 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375304 () (_ BitVec 64))

(assert (=> b!828237 (= lt!375304 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375313 () Unit!28377)

(declare-fun addStillContains!317 (ListLongMap!8961 (_ BitVec 64) V!25197 (_ BitVec 64)) Unit!28377)

(assert (=> b!828237 (= lt!375313 (addStillContains!317 lt!375317 lt!375316 zeroValueBefore!34 lt!375304))))

(assert (=> b!828237 (contains!4190 (+!1929 lt!375317 (tuple2!10125 lt!375316 zeroValueBefore!34)) lt!375304)))

(declare-fun lt!375311 () Unit!28377)

(assert (=> b!828237 (= lt!375311 lt!375313)))

(declare-fun lt!375309 () ListLongMap!8961)

(assert (=> b!828237 (= lt!375309 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375321 () (_ BitVec 64))

(assert (=> b!828237 (= lt!375321 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375305 () (_ BitVec 64))

(assert (=> b!828237 (= lt!375305 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375320 () Unit!28377)

(declare-fun addApplyDifferent!317 (ListLongMap!8961 (_ BitVec 64) V!25197 (_ BitVec 64)) Unit!28377)

(assert (=> b!828237 (= lt!375320 (addApplyDifferent!317 lt!375309 lt!375321 minValue!754 lt!375305))))

(declare-fun apply!366 (ListLongMap!8961 (_ BitVec 64)) V!25197)

(assert (=> b!828237 (= (apply!366 (+!1929 lt!375309 (tuple2!10125 lt!375321 minValue!754)) lt!375305) (apply!366 lt!375309 lt!375305))))

(declare-fun lt!375323 () Unit!28377)

(assert (=> b!828237 (= lt!375323 lt!375320)))

(declare-fun lt!375306 () ListLongMap!8961)

(assert (=> b!828237 (= lt!375306 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375322 () (_ BitVec 64))

(assert (=> b!828237 (= lt!375322 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375318 () (_ BitVec 64))

(assert (=> b!828237 (= lt!375318 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375315 () Unit!28377)

(assert (=> b!828237 (= lt!375315 (addApplyDifferent!317 lt!375306 lt!375322 zeroValueBefore!34 lt!375318))))

(assert (=> b!828237 (= (apply!366 (+!1929 lt!375306 (tuple2!10125 lt!375322 zeroValueBefore!34)) lt!375318) (apply!366 lt!375306 lt!375318))))

(declare-fun lt!375307 () Unit!28377)

(assert (=> b!828237 (= lt!375307 lt!375315)))

(declare-fun lt!375312 () ListLongMap!8961)

(assert (=> b!828237 (= lt!375312 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375314 () (_ BitVec 64))

(assert (=> b!828237 (= lt!375314 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375319 () (_ BitVec 64))

(assert (=> b!828237 (= lt!375319 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!828237 (= lt!375310 (addApplyDifferent!317 lt!375312 lt!375314 minValue!754 lt!375319))))

(assert (=> b!828237 (= (apply!366 (+!1929 lt!375312 (tuple2!10125 lt!375314 minValue!754)) lt!375319) (apply!366 lt!375312 lt!375319))))

(declare-fun d!105093 () Bool)

(declare-fun e!461548 () Bool)

(assert (=> d!105093 e!461548))

(declare-fun res!564495 () Bool)

(assert (=> d!105093 (=> (not res!564495) (not e!461548))))

(assert (=> d!105093 (= res!564495 (or (bvsge #b00000000000000000000000000000000 (size!22675 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))))

(declare-fun lt!375325 () ListLongMap!8961)

(assert (=> d!105093 (= lt!375324 lt!375325)))

(declare-fun lt!375308 () Unit!28377)

(assert (=> d!105093 (= lt!375308 e!461554)))

(declare-fun c!89520 () Bool)

(declare-fun e!461551 () Bool)

(assert (=> d!105093 (= c!89520 e!461551)))

(declare-fun res!564500 () Bool)

(assert (=> d!105093 (=> (not res!564500) (not e!461551))))

(assert (=> d!105093 (= res!564500 (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun e!461553 () ListLongMap!8961)

(assert (=> d!105093 (= lt!375325 e!461553)))

(declare-fun c!89522 () Bool)

(assert (=> d!105093 (= c!89522 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105093 (validMask!0 mask!1312)))

(assert (=> d!105093 (= (getCurrentListMap!2571 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375324)))

(declare-fun b!828238 () Bool)

(declare-fun c!89519 () Bool)

(assert (=> b!828238 (= c!89519 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!461549 () ListLongMap!8961)

(assert (=> b!828238 (= e!461549 e!461552)))

(declare-fun b!828239 () Bool)

(assert (=> b!828239 (= e!461549 call!36012)))

(declare-fun b!828240 () Bool)

(declare-fun e!461556 () Bool)

(assert (=> b!828240 (= e!461556 (not call!36010))))

(declare-fun b!828241 () Bool)

(declare-fun e!461555 () Bool)

(declare-fun e!461550 () Bool)

(assert (=> b!828241 (= e!461555 e!461550)))

(declare-fun res!564498 () Bool)

(assert (=> b!828241 (=> (not res!564498) (not e!461550))))

(assert (=> b!828241 (= res!564498 (contains!4190 lt!375324 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828241 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun b!828242 () Bool)

(assert (=> b!828242 (= e!461548 e!461546)))

(declare-fun c!89518 () Bool)

(assert (=> b!828242 (= c!89518 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!828243 () Bool)

(declare-fun e!461557 () Bool)

(assert (=> b!828243 (= e!461556 e!461557)))

(declare-fun res!564497 () Bool)

(assert (=> b!828243 (= res!564497 call!36010)))

(assert (=> b!828243 (=> (not res!564497) (not e!461557))))

(declare-fun bm!36007 () Bool)

(assert (=> bm!36007 (= call!36013 (contains!4190 lt!375324 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!36008 () Bool)

(declare-fun call!36011 () ListLongMap!8961)

(declare-fun call!36009 () ListLongMap!8961)

(assert (=> bm!36008 (= call!36011 call!36009)))

(declare-fun b!828244 () Bool)

(declare-fun e!461547 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!828244 (= e!461547 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828245 () Bool)

(declare-fun call!36015 () ListLongMap!8961)

(assert (=> b!828245 (= e!461553 (+!1929 call!36015 (tuple2!10125 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!36009 () Bool)

(assert (=> bm!36009 (= call!36012 call!36015)))

(declare-fun b!828246 () Bool)

(declare-fun res!564499 () Bool)

(assert (=> b!828246 (=> (not res!564499) (not e!461548))))

(assert (=> b!828246 (= res!564499 e!461556)))

(declare-fun c!89521 () Bool)

(assert (=> b!828246 (= c!89521 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!828247 () Bool)

(declare-fun res!564494 () Bool)

(assert (=> b!828247 (=> (not res!564494) (not e!461548))))

(assert (=> b!828247 (= res!564494 e!461555)))

(declare-fun res!564493 () Bool)

(assert (=> b!828247 (=> res!564493 e!461555)))

(assert (=> b!828247 (= res!564493 (not e!461547))))

(declare-fun res!564496 () Bool)

(assert (=> b!828247 (=> (not res!564496) (not e!461547))))

(assert (=> b!828247 (= res!564496 (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun b!828248 () Bool)

(declare-fun Unit!28381 () Unit!28377)

(assert (=> b!828248 (= e!461554 Unit!28381)))

(declare-fun b!828249 () Bool)

(declare-fun e!461545 () Bool)

(assert (=> b!828249 (= e!461546 e!461545)))

(declare-fun res!564501 () Bool)

(assert (=> b!828249 (= res!564501 call!36013)))

(assert (=> b!828249 (=> (not res!564501) (not e!461545))))

(declare-fun b!828250 () Bool)

(assert (=> b!828250 (= e!461557 (= (apply!366 lt!375324 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!828251 () Bool)

(assert (=> b!828251 (= e!461551 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36010 () Bool)

(assert (=> bm!36010 (= call!36009 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828252 () Bool)

(declare-fun call!36014 () ListLongMap!8961)

(assert (=> b!828252 (= e!461552 call!36014)))

(declare-fun b!828253 () Bool)

(assert (=> b!828253 (= e!461545 (= (apply!366 lt!375324 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun c!89523 () Bool)

(declare-fun bm!36011 () Bool)

(assert (=> bm!36011 (= call!36015 (+!1929 (ite c!89522 call!36009 (ite c!89523 call!36011 call!36014)) (ite (or c!89522 c!89523) (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10125 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!828254 () Bool)

(declare-fun get!11796 (ValueCell!7158 V!25197) V!25197)

(declare-fun dynLambda!976 (Int (_ BitVec 64)) V!25197)

(assert (=> b!828254 (= e!461550 (= (apply!366 lt!375324 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)) (get!11796 (select (arr!22255 _values!788) #b00000000000000000000000000000000) (dynLambda!976 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!828254 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22676 _values!788)))))

(assert (=> b!828254 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun b!828255 () Bool)

(assert (=> b!828255 (= e!461553 e!461549)))

(assert (=> b!828255 (= c!89523 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!36012 () Bool)

(assert (=> bm!36012 (= call!36014 call!36011)))

(assert (= (and d!105093 c!89522) b!828245))

(assert (= (and d!105093 (not c!89522)) b!828255))

(assert (= (and b!828255 c!89523) b!828239))

(assert (= (and b!828255 (not c!89523)) b!828238))

(assert (= (and b!828238 c!89519) b!828236))

(assert (= (and b!828238 (not c!89519)) b!828252))

(assert (= (or b!828236 b!828252) bm!36012))

(assert (= (or b!828239 bm!36012) bm!36008))

(assert (= (or b!828239 b!828236) bm!36009))

(assert (= (or b!828245 bm!36008) bm!36010))

(assert (= (or b!828245 bm!36009) bm!36011))

(assert (= (and d!105093 res!564500) b!828251))

(assert (= (and d!105093 c!89520) b!828237))

(assert (= (and d!105093 (not c!89520)) b!828248))

(assert (= (and d!105093 res!564495) b!828247))

(assert (= (and b!828247 res!564496) b!828244))

(assert (= (and b!828247 (not res!564493)) b!828241))

(assert (= (and b!828241 res!564498) b!828254))

(assert (= (and b!828247 res!564494) b!828246))

(assert (= (and b!828246 c!89521) b!828243))

(assert (= (and b!828246 (not c!89521)) b!828240))

(assert (= (and b!828243 res!564497) b!828250))

(assert (= (or b!828243 b!828240) bm!36006))

(assert (= (and b!828246 res!564499) b!828242))

(assert (= (and b!828242 c!89518) b!828249))

(assert (= (and b!828242 (not c!89518)) b!828235))

(assert (= (and b!828249 res!564501) b!828253))

(assert (= (or b!828249 b!828235) bm!36007))

(declare-fun b_lambda!11233 () Bool)

(assert (=> (not b_lambda!11233) (not b!828254)))

(declare-fun t!22326 () Bool)

(declare-fun tb!4221 () Bool)

(assert (=> (and start!71344 (= defaultEntry!796 defaultEntry!796) t!22326) tb!4221))

(declare-fun result!7987 () Bool)

(assert (=> tb!4221 (= result!7987 tp_is_empty!15147)))

(assert (=> b!828254 t!22326))

(declare-fun b_and!22417 () Bool)

(assert (= b_and!22413 (and (=> t!22326 result!7987) b_and!22417)))

(declare-fun m!771247 () Bool)

(assert (=> b!828244 m!771247))

(assert (=> b!828244 m!771247))

(declare-fun m!771249 () Bool)

(assert (=> b!828244 m!771249))

(assert (=> b!828241 m!771247))

(assert (=> b!828241 m!771247))

(declare-fun m!771251 () Bool)

(assert (=> b!828241 m!771251))

(assert (=> bm!36010 m!771205))

(declare-fun m!771253 () Bool)

(assert (=> b!828245 m!771253))

(declare-fun m!771255 () Bool)

(assert (=> b!828254 m!771255))

(declare-fun m!771257 () Bool)

(assert (=> b!828254 m!771257))

(assert (=> b!828254 m!771247))

(assert (=> b!828254 m!771247))

(declare-fun m!771259 () Bool)

(assert (=> b!828254 m!771259))

(assert (=> b!828254 m!771257))

(assert (=> b!828254 m!771255))

(declare-fun m!771261 () Bool)

(assert (=> b!828254 m!771261))

(declare-fun m!771263 () Bool)

(assert (=> bm!36006 m!771263))

(declare-fun m!771265 () Bool)

(assert (=> b!828237 m!771265))

(declare-fun m!771267 () Bool)

(assert (=> b!828237 m!771267))

(assert (=> b!828237 m!771265))

(declare-fun m!771269 () Bool)

(assert (=> b!828237 m!771269))

(declare-fun m!771271 () Bool)

(assert (=> b!828237 m!771271))

(assert (=> b!828237 m!771269))

(declare-fun m!771273 () Bool)

(assert (=> b!828237 m!771273))

(declare-fun m!771275 () Bool)

(assert (=> b!828237 m!771275))

(declare-fun m!771277 () Bool)

(assert (=> b!828237 m!771277))

(declare-fun m!771279 () Bool)

(assert (=> b!828237 m!771279))

(declare-fun m!771281 () Bool)

(assert (=> b!828237 m!771281))

(declare-fun m!771283 () Bool)

(assert (=> b!828237 m!771283))

(declare-fun m!771285 () Bool)

(assert (=> b!828237 m!771285))

(assert (=> b!828237 m!771205))

(assert (=> b!828237 m!771247))

(declare-fun m!771287 () Bool)

(assert (=> b!828237 m!771287))

(declare-fun m!771289 () Bool)

(assert (=> b!828237 m!771289))

(declare-fun m!771291 () Bool)

(assert (=> b!828237 m!771291))

(assert (=> b!828237 m!771285))

(declare-fun m!771293 () Bool)

(assert (=> b!828237 m!771293))

(assert (=> b!828237 m!771287))

(declare-fun m!771295 () Bool)

(assert (=> b!828253 m!771295))

(declare-fun m!771297 () Bool)

(assert (=> bm!36007 m!771297))

(declare-fun m!771299 () Bool)

(assert (=> b!828250 m!771299))

(assert (=> b!828251 m!771247))

(assert (=> b!828251 m!771247))

(assert (=> b!828251 m!771249))

(assert (=> d!105093 m!771209))

(declare-fun m!771301 () Bool)

(assert (=> bm!36011 m!771301))

(assert (=> b!828167 d!105093))

(declare-fun d!105095 () Bool)

(declare-fun e!461560 () Bool)

(assert (=> d!105095 e!461560))

(declare-fun res!564507 () Bool)

(assert (=> d!105095 (=> (not res!564507) (not e!461560))))

(declare-fun lt!375335 () ListLongMap!8961)

(assert (=> d!105095 (= res!564507 (contains!4190 lt!375335 (_1!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun lt!375334 () List!15961)

(assert (=> d!105095 (= lt!375335 (ListLongMap!8962 lt!375334))))

(declare-fun lt!375336 () Unit!28377)

(declare-fun lt!375337 () Unit!28377)

(assert (=> d!105095 (= lt!375336 lt!375337)))

(declare-datatypes ((Option!414 0))(
  ( (Some!413 (v!10055 V!25197)) (None!412) )
))
(declare-fun getValueByKey!408 (List!15961 (_ BitVec 64)) Option!414)

(assert (=> d!105095 (= (getValueByKey!408 lt!375334 (_1!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (Some!413 (_2!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!224 (List!15961 (_ BitVec 64) V!25197) Unit!28377)

(assert (=> d!105095 (= lt!375337 (lemmaContainsTupThenGetReturnValue!224 lt!375334 (_1!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (_2!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun insertStrictlySorted!262 (List!15961 (_ BitVec 64) V!25197) List!15961)

(assert (=> d!105095 (= lt!375334 (insertStrictlySorted!262 (toList!4496 lt!375246) (_1!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (_2!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(assert (=> d!105095 (= (+!1929 lt!375246 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) lt!375335)))

(declare-fun b!828262 () Bool)

(declare-fun res!564506 () Bool)

(assert (=> b!828262 (=> (not res!564506) (not e!461560))))

(assert (=> b!828262 (= res!564506 (= (getValueByKey!408 (toList!4496 lt!375335) (_1!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (Some!413 (_2!5072 (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)))))))

(declare-fun b!828263 () Bool)

(declare-fun contains!4191 (List!15961 tuple2!10124) Bool)

(assert (=> b!828263 (= e!461560 (contains!4191 (toList!4496 lt!375335) (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)))))

(assert (= (and d!105095 res!564507) b!828262))

(assert (= (and b!828262 res!564506) b!828263))

(declare-fun m!771303 () Bool)

(assert (=> d!105095 m!771303))

(declare-fun m!771305 () Bool)

(assert (=> d!105095 m!771305))

(declare-fun m!771307 () Bool)

(assert (=> d!105095 m!771307))

(declare-fun m!771309 () Bool)

(assert (=> d!105095 m!771309))

(declare-fun m!771311 () Bool)

(assert (=> b!828262 m!771311))

(declare-fun m!771313 () Bool)

(assert (=> b!828263 m!771313))

(assert (=> b!828167 d!105095))

(declare-fun bm!36013 () Bool)

(declare-fun call!36017 () Bool)

(declare-fun lt!375358 () ListLongMap!8961)

(assert (=> bm!36013 (= call!36017 (contains!4190 lt!375358 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!828264 () Bool)

(declare-fun e!461562 () Bool)

(declare-fun call!36020 () Bool)

(assert (=> b!828264 (= e!461562 (not call!36020))))

(declare-fun b!828265 () Bool)

(declare-fun e!461568 () ListLongMap!8961)

(declare-fun call!36019 () ListLongMap!8961)

(assert (=> b!828265 (= e!461568 call!36019)))

(declare-fun b!828266 () Bool)

(declare-fun e!461570 () Unit!28377)

(declare-fun lt!375344 () Unit!28377)

(assert (=> b!828266 (= e!461570 lt!375344)))

(declare-fun lt!375351 () ListLongMap!8961)

(assert (=> b!828266 (= lt!375351 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375350 () (_ BitVec 64))

(assert (=> b!828266 (= lt!375350 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375338 () (_ BitVec 64))

(assert (=> b!828266 (= lt!375338 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375347 () Unit!28377)

(assert (=> b!828266 (= lt!375347 (addStillContains!317 lt!375351 lt!375350 zeroValueAfter!34 lt!375338))))

(assert (=> b!828266 (contains!4190 (+!1929 lt!375351 (tuple2!10125 lt!375350 zeroValueAfter!34)) lt!375338)))

(declare-fun lt!375345 () Unit!28377)

(assert (=> b!828266 (= lt!375345 lt!375347)))

(declare-fun lt!375343 () ListLongMap!8961)

(assert (=> b!828266 (= lt!375343 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375355 () (_ BitVec 64))

(assert (=> b!828266 (= lt!375355 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375339 () (_ BitVec 64))

(assert (=> b!828266 (= lt!375339 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375354 () Unit!28377)

(assert (=> b!828266 (= lt!375354 (addApplyDifferent!317 lt!375343 lt!375355 minValue!754 lt!375339))))

(assert (=> b!828266 (= (apply!366 (+!1929 lt!375343 (tuple2!10125 lt!375355 minValue!754)) lt!375339) (apply!366 lt!375343 lt!375339))))

(declare-fun lt!375357 () Unit!28377)

(assert (=> b!828266 (= lt!375357 lt!375354)))

(declare-fun lt!375340 () ListLongMap!8961)

(assert (=> b!828266 (= lt!375340 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375356 () (_ BitVec 64))

(assert (=> b!828266 (= lt!375356 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375352 () (_ BitVec 64))

(assert (=> b!828266 (= lt!375352 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375349 () Unit!28377)

(assert (=> b!828266 (= lt!375349 (addApplyDifferent!317 lt!375340 lt!375356 zeroValueAfter!34 lt!375352))))

(assert (=> b!828266 (= (apply!366 (+!1929 lt!375340 (tuple2!10125 lt!375356 zeroValueAfter!34)) lt!375352) (apply!366 lt!375340 lt!375352))))

(declare-fun lt!375341 () Unit!28377)

(assert (=> b!828266 (= lt!375341 lt!375349)))

(declare-fun lt!375346 () ListLongMap!8961)

(assert (=> b!828266 (= lt!375346 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375348 () (_ BitVec 64))

(assert (=> b!828266 (= lt!375348 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375353 () (_ BitVec 64))

(assert (=> b!828266 (= lt!375353 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!828266 (= lt!375344 (addApplyDifferent!317 lt!375346 lt!375348 minValue!754 lt!375353))))

(assert (=> b!828266 (= (apply!366 (+!1929 lt!375346 (tuple2!10125 lt!375348 minValue!754)) lt!375353) (apply!366 lt!375346 lt!375353))))

(declare-fun d!105097 () Bool)

(declare-fun e!461564 () Bool)

(assert (=> d!105097 e!461564))

(declare-fun res!564510 () Bool)

(assert (=> d!105097 (=> (not res!564510) (not e!461564))))

(assert (=> d!105097 (= res!564510 (or (bvsge #b00000000000000000000000000000000 (size!22675 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))))

(declare-fun lt!375359 () ListLongMap!8961)

(assert (=> d!105097 (= lt!375358 lt!375359)))

(declare-fun lt!375342 () Unit!28377)

(assert (=> d!105097 (= lt!375342 e!461570)))

(declare-fun c!89526 () Bool)

(declare-fun e!461567 () Bool)

(assert (=> d!105097 (= c!89526 e!461567)))

(declare-fun res!564515 () Bool)

(assert (=> d!105097 (=> (not res!564515) (not e!461567))))

(assert (=> d!105097 (= res!564515 (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun e!461569 () ListLongMap!8961)

(assert (=> d!105097 (= lt!375359 e!461569)))

(declare-fun c!89528 () Bool)

(assert (=> d!105097 (= c!89528 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105097 (validMask!0 mask!1312)))

(assert (=> d!105097 (= (getCurrentListMap!2571 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375358)))

(declare-fun b!828267 () Bool)

(declare-fun c!89525 () Bool)

(assert (=> b!828267 (= c!89525 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!461565 () ListLongMap!8961)

(assert (=> b!828267 (= e!461565 e!461568)))

(declare-fun b!828268 () Bool)

(assert (=> b!828268 (= e!461565 call!36019)))

(declare-fun b!828269 () Bool)

(declare-fun e!461572 () Bool)

(assert (=> b!828269 (= e!461572 (not call!36017))))

(declare-fun b!828270 () Bool)

(declare-fun e!461571 () Bool)

(declare-fun e!461566 () Bool)

(assert (=> b!828270 (= e!461571 e!461566)))

(declare-fun res!564513 () Bool)

(assert (=> b!828270 (=> (not res!564513) (not e!461566))))

(assert (=> b!828270 (= res!564513 (contains!4190 lt!375358 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828270 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun b!828271 () Bool)

(assert (=> b!828271 (= e!461564 e!461562)))

(declare-fun c!89524 () Bool)

(assert (=> b!828271 (= c!89524 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!828272 () Bool)

(declare-fun e!461573 () Bool)

(assert (=> b!828272 (= e!461572 e!461573)))

(declare-fun res!564512 () Bool)

(assert (=> b!828272 (= res!564512 call!36017)))

(assert (=> b!828272 (=> (not res!564512) (not e!461573))))

(declare-fun bm!36014 () Bool)

(assert (=> bm!36014 (= call!36020 (contains!4190 lt!375358 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!36015 () Bool)

(declare-fun call!36018 () ListLongMap!8961)

(declare-fun call!36016 () ListLongMap!8961)

(assert (=> bm!36015 (= call!36018 call!36016)))

(declare-fun b!828273 () Bool)

(declare-fun e!461563 () Bool)

(assert (=> b!828273 (= e!461563 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828274 () Bool)

(declare-fun call!36022 () ListLongMap!8961)

(assert (=> b!828274 (= e!461569 (+!1929 call!36022 (tuple2!10125 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!36016 () Bool)

(assert (=> bm!36016 (= call!36019 call!36022)))

(declare-fun b!828275 () Bool)

(declare-fun res!564514 () Bool)

(assert (=> b!828275 (=> (not res!564514) (not e!461564))))

(assert (=> b!828275 (= res!564514 e!461572)))

(declare-fun c!89527 () Bool)

(assert (=> b!828275 (= c!89527 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!828276 () Bool)

(declare-fun res!564509 () Bool)

(assert (=> b!828276 (=> (not res!564509) (not e!461564))))

(assert (=> b!828276 (= res!564509 e!461571)))

(declare-fun res!564508 () Bool)

(assert (=> b!828276 (=> res!564508 e!461571)))

(assert (=> b!828276 (= res!564508 (not e!461563))))

(declare-fun res!564511 () Bool)

(assert (=> b!828276 (=> (not res!564511) (not e!461563))))

(assert (=> b!828276 (= res!564511 (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun b!828277 () Bool)

(declare-fun Unit!28382 () Unit!28377)

(assert (=> b!828277 (= e!461570 Unit!28382)))

(declare-fun b!828278 () Bool)

(declare-fun e!461561 () Bool)

(assert (=> b!828278 (= e!461562 e!461561)))

(declare-fun res!564516 () Bool)

(assert (=> b!828278 (= res!564516 call!36020)))

(assert (=> b!828278 (=> (not res!564516) (not e!461561))))

(declare-fun b!828279 () Bool)

(assert (=> b!828279 (= e!461573 (= (apply!366 lt!375358 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!828280 () Bool)

(assert (=> b!828280 (= e!461567 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36017 () Bool)

(assert (=> bm!36017 (= call!36016 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828281 () Bool)

(declare-fun call!36021 () ListLongMap!8961)

(assert (=> b!828281 (= e!461568 call!36021)))

(declare-fun b!828282 () Bool)

(assert (=> b!828282 (= e!461561 (= (apply!366 lt!375358 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun bm!36018 () Bool)

(declare-fun c!89529 () Bool)

(assert (=> bm!36018 (= call!36022 (+!1929 (ite c!89528 call!36016 (ite c!89529 call!36018 call!36021)) (ite (or c!89528 c!89529) (tuple2!10125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10125 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!828283 () Bool)

(assert (=> b!828283 (= e!461566 (= (apply!366 lt!375358 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)) (get!11796 (select (arr!22255 _values!788) #b00000000000000000000000000000000) (dynLambda!976 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!828283 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22676 _values!788)))))

(assert (=> b!828283 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun b!828284 () Bool)

(assert (=> b!828284 (= e!461569 e!461565)))

(assert (=> b!828284 (= c!89529 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!36019 () Bool)

(assert (=> bm!36019 (= call!36021 call!36018)))

(assert (= (and d!105097 c!89528) b!828274))

(assert (= (and d!105097 (not c!89528)) b!828284))

(assert (= (and b!828284 c!89529) b!828268))

(assert (= (and b!828284 (not c!89529)) b!828267))

(assert (= (and b!828267 c!89525) b!828265))

(assert (= (and b!828267 (not c!89525)) b!828281))

(assert (= (or b!828265 b!828281) bm!36019))

(assert (= (or b!828268 bm!36019) bm!36015))

(assert (= (or b!828268 b!828265) bm!36016))

(assert (= (or b!828274 bm!36015) bm!36017))

(assert (= (or b!828274 bm!36016) bm!36018))

(assert (= (and d!105097 res!564515) b!828280))

(assert (= (and d!105097 c!89526) b!828266))

(assert (= (and d!105097 (not c!89526)) b!828277))

(assert (= (and d!105097 res!564510) b!828276))

(assert (= (and b!828276 res!564511) b!828273))

(assert (= (and b!828276 (not res!564508)) b!828270))

(assert (= (and b!828270 res!564513) b!828283))

(assert (= (and b!828276 res!564509) b!828275))

(assert (= (and b!828275 c!89527) b!828272))

(assert (= (and b!828275 (not c!89527)) b!828269))

(assert (= (and b!828272 res!564512) b!828279))

(assert (= (or b!828272 b!828269) bm!36013))

(assert (= (and b!828275 res!564514) b!828271))

(assert (= (and b!828271 c!89524) b!828278))

(assert (= (and b!828271 (not c!89524)) b!828264))

(assert (= (and b!828278 res!564516) b!828282))

(assert (= (or b!828278 b!828264) bm!36014))

(declare-fun b_lambda!11235 () Bool)

(assert (=> (not b_lambda!11235) (not b!828283)))

(assert (=> b!828283 t!22326))

(declare-fun b_and!22419 () Bool)

(assert (= b_and!22417 (and (=> t!22326 result!7987) b_and!22419)))

(assert (=> b!828273 m!771247))

(assert (=> b!828273 m!771247))

(assert (=> b!828273 m!771249))

(assert (=> b!828270 m!771247))

(assert (=> b!828270 m!771247))

(declare-fun m!771315 () Bool)

(assert (=> b!828270 m!771315))

(assert (=> bm!36017 m!771203))

(declare-fun m!771317 () Bool)

(assert (=> b!828274 m!771317))

(assert (=> b!828283 m!771255))

(assert (=> b!828283 m!771257))

(assert (=> b!828283 m!771247))

(assert (=> b!828283 m!771247))

(declare-fun m!771319 () Bool)

(assert (=> b!828283 m!771319))

(assert (=> b!828283 m!771257))

(assert (=> b!828283 m!771255))

(assert (=> b!828283 m!771261))

(declare-fun m!771321 () Bool)

(assert (=> bm!36013 m!771321))

(declare-fun m!771323 () Bool)

(assert (=> b!828266 m!771323))

(declare-fun m!771325 () Bool)

(assert (=> b!828266 m!771325))

(assert (=> b!828266 m!771323))

(declare-fun m!771327 () Bool)

(assert (=> b!828266 m!771327))

(declare-fun m!771329 () Bool)

(assert (=> b!828266 m!771329))

(assert (=> b!828266 m!771327))

(declare-fun m!771331 () Bool)

(assert (=> b!828266 m!771331))

(declare-fun m!771333 () Bool)

(assert (=> b!828266 m!771333))

(declare-fun m!771335 () Bool)

(assert (=> b!828266 m!771335))

(declare-fun m!771337 () Bool)

(assert (=> b!828266 m!771337))

(declare-fun m!771339 () Bool)

(assert (=> b!828266 m!771339))

(declare-fun m!771341 () Bool)

(assert (=> b!828266 m!771341))

(declare-fun m!771343 () Bool)

(assert (=> b!828266 m!771343))

(assert (=> b!828266 m!771203))

(assert (=> b!828266 m!771247))

(declare-fun m!771345 () Bool)

(assert (=> b!828266 m!771345))

(declare-fun m!771347 () Bool)

(assert (=> b!828266 m!771347))

(declare-fun m!771349 () Bool)

(assert (=> b!828266 m!771349))

(assert (=> b!828266 m!771343))

(declare-fun m!771351 () Bool)

(assert (=> b!828266 m!771351))

(assert (=> b!828266 m!771345))

(declare-fun m!771353 () Bool)

(assert (=> b!828282 m!771353))

(declare-fun m!771355 () Bool)

(assert (=> bm!36014 m!771355))

(declare-fun m!771357 () Bool)

(assert (=> b!828279 m!771357))

(assert (=> b!828280 m!771247))

(assert (=> b!828280 m!771247))

(assert (=> b!828280 m!771249))

(assert (=> d!105097 m!771209))

(declare-fun m!771359 () Bool)

(assert (=> bm!36018 m!771359))

(assert (=> b!828167 d!105097))

(declare-fun d!105099 () Bool)

(assert (=> d!105099 (= (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375362 () Unit!28377)

(declare-fun choose!1418 (array!46432 array!46434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25197 V!25197 V!25197 V!25197 (_ BitVec 32) Int) Unit!28377)

(assert (=> d!105099 (= lt!375362 (choose!1418 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105099 (validMask!0 mask!1312)))

(assert (=> d!105099 (= (lemmaNoChangeToArrayThenSameMapNoExtras!591 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375362)))

(declare-fun bs!23139 () Bool)

(assert (= bs!23139 d!105099))

(assert (=> bs!23139 m!771205))

(assert (=> bs!23139 m!771203))

(declare-fun m!771361 () Bool)

(assert (=> bs!23139 m!771361))

(assert (=> bs!23139 m!771209))

(assert (=> b!828163 d!105099))

(declare-fun b!828309 () Bool)

(declare-fun e!461590 () ListLongMap!8961)

(declare-fun call!36025 () ListLongMap!8961)

(assert (=> b!828309 (= e!461590 call!36025)))

(declare-fun b!828310 () Bool)

(assert (=> b!828310 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(assert (=> b!828310 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22676 _values!788)))))

(declare-fun e!461594 () Bool)

(declare-fun lt!375381 () ListLongMap!8961)

(assert (=> b!828310 (= e!461594 (= (apply!366 lt!375381 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)) (get!11796 (select (arr!22255 _values!788) #b00000000000000000000000000000000) (dynLambda!976 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!828311 () Bool)

(declare-fun e!461588 () Bool)

(declare-fun isEmpty!653 (ListLongMap!8961) Bool)

(assert (=> b!828311 (= e!461588 (isEmpty!653 lt!375381))))

(declare-fun bm!36022 () Bool)

(assert (=> bm!36022 (= call!36025 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!828312 () Bool)

(assert (=> b!828312 (= e!461588 (= lt!375381 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!828313 () Bool)

(declare-fun e!461589 () ListLongMap!8961)

(assert (=> b!828313 (= e!461589 e!461590)))

(declare-fun c!89540 () Bool)

(assert (=> b!828313 (= c!89540 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828314 () Bool)

(declare-fun e!461592 () Bool)

(assert (=> b!828314 (= e!461592 e!461594)))

(assert (=> b!828314 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun res!564526 () Bool)

(assert (=> b!828314 (= res!564526 (contains!4190 lt!375381 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828314 (=> (not res!564526) (not e!461594))))

(declare-fun b!828315 () Bool)

(declare-fun lt!375382 () Unit!28377)

(declare-fun lt!375380 () Unit!28377)

(assert (=> b!828315 (= lt!375382 lt!375380)))

(declare-fun lt!375383 () V!25197)

(declare-fun lt!375379 () ListLongMap!8961)

(declare-fun lt!375377 () (_ BitVec 64))

(declare-fun lt!375378 () (_ BitVec 64))

(assert (=> b!828315 (not (contains!4190 (+!1929 lt!375379 (tuple2!10125 lt!375377 lt!375383)) lt!375378))))

(declare-fun addStillNotContains!193 (ListLongMap!8961 (_ BitVec 64) V!25197 (_ BitVec 64)) Unit!28377)

(assert (=> b!828315 (= lt!375380 (addStillNotContains!193 lt!375379 lt!375377 lt!375383 lt!375378))))

(assert (=> b!828315 (= lt!375378 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!828315 (= lt!375383 (get!11796 (select (arr!22255 _values!788) #b00000000000000000000000000000000) (dynLambda!976 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!828315 (= lt!375377 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!828315 (= lt!375379 call!36025)))

(assert (=> b!828315 (= e!461590 (+!1929 call!36025 (tuple2!10125 (select (arr!22254 _keys!976) #b00000000000000000000000000000000) (get!11796 (select (arr!22255 _values!788) #b00000000000000000000000000000000) (dynLambda!976 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!828316 () Bool)

(declare-fun res!564525 () Bool)

(declare-fun e!461593 () Bool)

(assert (=> b!828316 (=> (not res!564525) (not e!461593))))

(assert (=> b!828316 (= res!564525 (not (contains!4190 lt!375381 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!105101 () Bool)

(assert (=> d!105101 e!461593))

(declare-fun res!564527 () Bool)

(assert (=> d!105101 (=> (not res!564527) (not e!461593))))

(assert (=> d!105101 (= res!564527 (not (contains!4190 lt!375381 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105101 (= lt!375381 e!461589)))

(declare-fun c!89541 () Bool)

(assert (=> d!105101 (= c!89541 (bvsge #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(assert (=> d!105101 (validMask!0 mask!1312)))

(assert (=> d!105101 (= (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375381)))

(declare-fun b!828317 () Bool)

(declare-fun e!461591 () Bool)

(assert (=> b!828317 (= e!461591 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828317 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!828318 () Bool)

(assert (=> b!828318 (= e!461589 (ListLongMap!8962 Nil!15958))))

(declare-fun b!828319 () Bool)

(assert (=> b!828319 (= e!461592 e!461588)))

(declare-fun c!89539 () Bool)

(assert (=> b!828319 (= c!89539 (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun b!828320 () Bool)

(assert (=> b!828320 (= e!461593 e!461592)))

(declare-fun c!89538 () Bool)

(assert (=> b!828320 (= c!89538 e!461591)))

(declare-fun res!564528 () Bool)

(assert (=> b!828320 (=> (not res!564528) (not e!461591))))

(assert (=> b!828320 (= res!564528 (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(assert (= (and d!105101 c!89541) b!828318))

(assert (= (and d!105101 (not c!89541)) b!828313))

(assert (= (and b!828313 c!89540) b!828315))

(assert (= (and b!828313 (not c!89540)) b!828309))

(assert (= (or b!828315 b!828309) bm!36022))

(assert (= (and d!105101 res!564527) b!828316))

(assert (= (and b!828316 res!564525) b!828320))

(assert (= (and b!828320 res!564528) b!828317))

(assert (= (and b!828320 c!89538) b!828314))

(assert (= (and b!828320 (not c!89538)) b!828319))

(assert (= (and b!828314 res!564526) b!828310))

(assert (= (and b!828319 c!89539) b!828312))

(assert (= (and b!828319 (not c!89539)) b!828311))

(declare-fun b_lambda!11237 () Bool)

(assert (=> (not b_lambda!11237) (not b!828310)))

(assert (=> b!828310 t!22326))

(declare-fun b_and!22421 () Bool)

(assert (= b_and!22419 (and (=> t!22326 result!7987) b_and!22421)))

(declare-fun b_lambda!11239 () Bool)

(assert (=> (not b_lambda!11239) (not b!828315)))

(assert (=> b!828315 t!22326))

(declare-fun b_and!22423 () Bool)

(assert (= b_and!22421 (and (=> t!22326 result!7987) b_and!22423)))

(declare-fun m!771363 () Bool)

(assert (=> b!828311 m!771363))

(declare-fun m!771365 () Bool)

(assert (=> b!828315 m!771365))

(declare-fun m!771367 () Bool)

(assert (=> b!828315 m!771367))

(declare-fun m!771369 () Bool)

(assert (=> b!828315 m!771369))

(assert (=> b!828315 m!771255))

(assert (=> b!828315 m!771365))

(declare-fun m!771371 () Bool)

(assert (=> b!828315 m!771371))

(assert (=> b!828315 m!771257))

(assert (=> b!828315 m!771247))

(assert (=> b!828315 m!771257))

(assert (=> b!828315 m!771255))

(assert (=> b!828315 m!771261))

(declare-fun m!771373 () Bool)

(assert (=> b!828312 m!771373))

(assert (=> b!828314 m!771247))

(assert (=> b!828314 m!771247))

(declare-fun m!771375 () Bool)

(assert (=> b!828314 m!771375))

(assert (=> b!828313 m!771247))

(assert (=> b!828313 m!771247))

(assert (=> b!828313 m!771249))

(declare-fun m!771377 () Bool)

(assert (=> d!105101 m!771377))

(assert (=> d!105101 m!771209))

(assert (=> b!828317 m!771247))

(assert (=> b!828317 m!771247))

(assert (=> b!828317 m!771249))

(assert (=> b!828310 m!771255))

(assert (=> b!828310 m!771247))

(declare-fun m!771379 () Bool)

(assert (=> b!828310 m!771379))

(assert (=> b!828310 m!771257))

(assert (=> b!828310 m!771247))

(assert (=> b!828310 m!771257))

(assert (=> b!828310 m!771255))

(assert (=> b!828310 m!771261))

(declare-fun m!771381 () Bool)

(assert (=> b!828316 m!771381))

(assert (=> bm!36022 m!771373))

(assert (=> b!828163 d!105101))

(declare-fun b!828321 () Bool)

(declare-fun e!461597 () ListLongMap!8961)

(declare-fun call!36026 () ListLongMap!8961)

(assert (=> b!828321 (= e!461597 call!36026)))

(declare-fun b!828322 () Bool)

(assert (=> b!828322 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(assert (=> b!828322 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22676 _values!788)))))

(declare-fun e!461601 () Bool)

(declare-fun lt!375388 () ListLongMap!8961)

(assert (=> b!828322 (= e!461601 (= (apply!366 lt!375388 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)) (get!11796 (select (arr!22255 _values!788) #b00000000000000000000000000000000) (dynLambda!976 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!828323 () Bool)

(declare-fun e!461595 () Bool)

(assert (=> b!828323 (= e!461595 (isEmpty!653 lt!375388))))

(declare-fun bm!36023 () Bool)

(assert (=> bm!36023 (= call!36026 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!828324 () Bool)

(assert (=> b!828324 (= e!461595 (= lt!375388 (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!828325 () Bool)

(declare-fun e!461596 () ListLongMap!8961)

(assert (=> b!828325 (= e!461596 e!461597)))

(declare-fun c!89544 () Bool)

(assert (=> b!828325 (= c!89544 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828326 () Bool)

(declare-fun e!461599 () Bool)

(assert (=> b!828326 (= e!461599 e!461601)))

(assert (=> b!828326 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun res!564530 () Bool)

(assert (=> b!828326 (= res!564530 (contains!4190 lt!375388 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828326 (=> (not res!564530) (not e!461601))))

(declare-fun b!828327 () Bool)

(declare-fun lt!375389 () Unit!28377)

(declare-fun lt!375387 () Unit!28377)

(assert (=> b!828327 (= lt!375389 lt!375387)))

(declare-fun lt!375390 () V!25197)

(declare-fun lt!375385 () (_ BitVec 64))

(declare-fun lt!375384 () (_ BitVec 64))

(declare-fun lt!375386 () ListLongMap!8961)

(assert (=> b!828327 (not (contains!4190 (+!1929 lt!375386 (tuple2!10125 lt!375384 lt!375390)) lt!375385))))

(assert (=> b!828327 (= lt!375387 (addStillNotContains!193 lt!375386 lt!375384 lt!375390 lt!375385))))

(assert (=> b!828327 (= lt!375385 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!828327 (= lt!375390 (get!11796 (select (arr!22255 _values!788) #b00000000000000000000000000000000) (dynLambda!976 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!828327 (= lt!375384 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!828327 (= lt!375386 call!36026)))

(assert (=> b!828327 (= e!461597 (+!1929 call!36026 (tuple2!10125 (select (arr!22254 _keys!976) #b00000000000000000000000000000000) (get!11796 (select (arr!22255 _values!788) #b00000000000000000000000000000000) (dynLambda!976 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!828328 () Bool)

(declare-fun res!564529 () Bool)

(declare-fun e!461600 () Bool)

(assert (=> b!828328 (=> (not res!564529) (not e!461600))))

(assert (=> b!828328 (= res!564529 (not (contains!4190 lt!375388 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!105103 () Bool)

(assert (=> d!105103 e!461600))

(declare-fun res!564531 () Bool)

(assert (=> d!105103 (=> (not res!564531) (not e!461600))))

(assert (=> d!105103 (= res!564531 (not (contains!4190 lt!375388 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105103 (= lt!375388 e!461596)))

(declare-fun c!89545 () Bool)

(assert (=> d!105103 (= c!89545 (bvsge #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(assert (=> d!105103 (validMask!0 mask!1312)))

(assert (=> d!105103 (= (getCurrentListMapNoExtraKeys!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375388)))

(declare-fun b!828329 () Bool)

(declare-fun e!461598 () Bool)

(assert (=> b!828329 (= e!461598 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828329 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!828330 () Bool)

(assert (=> b!828330 (= e!461596 (ListLongMap!8962 Nil!15958))))

(declare-fun b!828331 () Bool)

(assert (=> b!828331 (= e!461599 e!461595)))

(declare-fun c!89543 () Bool)

(assert (=> b!828331 (= c!89543 (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(declare-fun b!828332 () Bool)

(assert (=> b!828332 (= e!461600 e!461599)))

(declare-fun c!89542 () Bool)

(assert (=> b!828332 (= c!89542 e!461598)))

(declare-fun res!564532 () Bool)

(assert (=> b!828332 (=> (not res!564532) (not e!461598))))

(assert (=> b!828332 (= res!564532 (bvslt #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(assert (= (and d!105103 c!89545) b!828330))

(assert (= (and d!105103 (not c!89545)) b!828325))

(assert (= (and b!828325 c!89544) b!828327))

(assert (= (and b!828325 (not c!89544)) b!828321))

(assert (= (or b!828327 b!828321) bm!36023))

(assert (= (and d!105103 res!564531) b!828328))

(assert (= (and b!828328 res!564529) b!828332))

(assert (= (and b!828332 res!564532) b!828329))

(assert (= (and b!828332 c!89542) b!828326))

(assert (= (and b!828332 (not c!89542)) b!828331))

(assert (= (and b!828326 res!564530) b!828322))

(assert (= (and b!828331 c!89543) b!828324))

(assert (= (and b!828331 (not c!89543)) b!828323))

(declare-fun b_lambda!11241 () Bool)

(assert (=> (not b_lambda!11241) (not b!828322)))

(assert (=> b!828322 t!22326))

(declare-fun b_and!22425 () Bool)

(assert (= b_and!22423 (and (=> t!22326 result!7987) b_and!22425)))

(declare-fun b_lambda!11243 () Bool)

(assert (=> (not b_lambda!11243) (not b!828327)))

(assert (=> b!828327 t!22326))

(declare-fun b_and!22427 () Bool)

(assert (= b_and!22425 (and (=> t!22326 result!7987) b_and!22427)))

(declare-fun m!771383 () Bool)

(assert (=> b!828323 m!771383))

(declare-fun m!771385 () Bool)

(assert (=> b!828327 m!771385))

(declare-fun m!771387 () Bool)

(assert (=> b!828327 m!771387))

(declare-fun m!771389 () Bool)

(assert (=> b!828327 m!771389))

(assert (=> b!828327 m!771255))

(assert (=> b!828327 m!771385))

(declare-fun m!771391 () Bool)

(assert (=> b!828327 m!771391))

(assert (=> b!828327 m!771257))

(assert (=> b!828327 m!771247))

(assert (=> b!828327 m!771257))

(assert (=> b!828327 m!771255))

(assert (=> b!828327 m!771261))

(declare-fun m!771393 () Bool)

(assert (=> b!828324 m!771393))

(assert (=> b!828326 m!771247))

(assert (=> b!828326 m!771247))

(declare-fun m!771395 () Bool)

(assert (=> b!828326 m!771395))

(assert (=> b!828325 m!771247))

(assert (=> b!828325 m!771247))

(assert (=> b!828325 m!771249))

(declare-fun m!771397 () Bool)

(assert (=> d!105103 m!771397))

(assert (=> d!105103 m!771209))

(assert (=> b!828329 m!771247))

(assert (=> b!828329 m!771247))

(assert (=> b!828329 m!771249))

(assert (=> b!828322 m!771255))

(assert (=> b!828322 m!771247))

(declare-fun m!771399 () Bool)

(assert (=> b!828322 m!771399))

(assert (=> b!828322 m!771257))

(assert (=> b!828322 m!771247))

(assert (=> b!828322 m!771257))

(assert (=> b!828322 m!771255))

(assert (=> b!828322 m!771261))

(declare-fun m!771401 () Bool)

(assert (=> b!828328 m!771401))

(assert (=> bm!36023 m!771393))

(assert (=> b!828163 d!105103))

(declare-fun d!105105 () Bool)

(assert (=> d!105105 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71344 d!105105))

(declare-fun d!105107 () Bool)

(assert (=> d!105107 (= (array_inv!17711 _keys!976) (bvsge (size!22675 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71344 d!105107))

(declare-fun d!105109 () Bool)

(assert (=> d!105109 (= (array_inv!17712 _values!788) (bvsge (size!22676 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71344 d!105109))

(declare-fun b!828343 () Bool)

(declare-fun e!461613 () Bool)

(declare-fun call!36029 () Bool)

(assert (=> b!828343 (= e!461613 call!36029)))

(declare-fun b!828344 () Bool)

(declare-fun e!461611 () Bool)

(assert (=> b!828344 (= e!461611 e!461613)))

(declare-fun c!89548 () Bool)

(assert (=> b!828344 (= c!89548 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105111 () Bool)

(declare-fun res!564541 () Bool)

(declare-fun e!461610 () Bool)

(assert (=> d!105111 (=> res!564541 e!461610)))

(assert (=> d!105111 (= res!564541 (bvsge #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(assert (=> d!105111 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15957) e!461610)))

(declare-fun b!828345 () Bool)

(declare-fun e!461612 () Bool)

(declare-fun contains!4192 (List!15960 (_ BitVec 64)) Bool)

(assert (=> b!828345 (= e!461612 (contains!4192 Nil!15957 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828346 () Bool)

(assert (=> b!828346 (= e!461613 call!36029)))

(declare-fun b!828347 () Bool)

(assert (=> b!828347 (= e!461610 e!461611)))

(declare-fun res!564540 () Bool)

(assert (=> b!828347 (=> (not res!564540) (not e!461611))))

(assert (=> b!828347 (= res!564540 (not e!461612))))

(declare-fun res!564539 () Bool)

(assert (=> b!828347 (=> (not res!564539) (not e!461612))))

(assert (=> b!828347 (= res!564539 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36026 () Bool)

(assert (=> bm!36026 (= call!36029 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89548 (Cons!15956 (select (arr!22254 _keys!976) #b00000000000000000000000000000000) Nil!15957) Nil!15957)))))

(assert (= (and d!105111 (not res!564541)) b!828347))

(assert (= (and b!828347 res!564539) b!828345))

(assert (= (and b!828347 res!564540) b!828344))

(assert (= (and b!828344 c!89548) b!828343))

(assert (= (and b!828344 (not c!89548)) b!828346))

(assert (= (or b!828343 b!828346) bm!36026))

(assert (=> b!828344 m!771247))

(assert (=> b!828344 m!771247))

(assert (=> b!828344 m!771249))

(assert (=> b!828345 m!771247))

(assert (=> b!828345 m!771247))

(declare-fun m!771403 () Bool)

(assert (=> b!828345 m!771403))

(assert (=> b!828347 m!771247))

(assert (=> b!828347 m!771247))

(assert (=> b!828347 m!771249))

(assert (=> bm!36026 m!771247))

(declare-fun m!771405 () Bool)

(assert (=> bm!36026 m!771405))

(assert (=> b!828161 d!105111))

(declare-fun bm!36029 () Bool)

(declare-fun call!36032 () Bool)

(assert (=> bm!36029 (= call!36032 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!828356 () Bool)

(declare-fun e!461620 () Bool)

(declare-fun e!461621 () Bool)

(assert (=> b!828356 (= e!461620 e!461621)))

(declare-fun c!89551 () Bool)

(assert (=> b!828356 (= c!89551 (validKeyInArray!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105113 () Bool)

(declare-fun res!564546 () Bool)

(assert (=> d!105113 (=> res!564546 e!461620)))

(assert (=> d!105113 (= res!564546 (bvsge #b00000000000000000000000000000000 (size!22675 _keys!976)))))

(assert (=> d!105113 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!461620)))

(declare-fun b!828357 () Bool)

(declare-fun e!461622 () Bool)

(assert (=> b!828357 (= e!461621 e!461622)))

(declare-fun lt!375399 () (_ BitVec 64))

(assert (=> b!828357 (= lt!375399 (select (arr!22254 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375398 () Unit!28377)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46432 (_ BitVec 64) (_ BitVec 32)) Unit!28377)

(assert (=> b!828357 (= lt!375398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!375399 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!828357 (arrayContainsKey!0 _keys!976 lt!375399 #b00000000000000000000000000000000)))

(declare-fun lt!375397 () Unit!28377)

(assert (=> b!828357 (= lt!375397 lt!375398)))

(declare-fun res!564547 () Bool)

(declare-datatypes ((SeekEntryResult!8727 0))(
  ( (MissingZero!8727 (index!37278 (_ BitVec 32))) (Found!8727 (index!37279 (_ BitVec 32))) (Intermediate!8727 (undefined!9539 Bool) (index!37280 (_ BitVec 32)) (x!69939 (_ BitVec 32))) (Undefined!8727) (MissingVacant!8727 (index!37281 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46432 (_ BitVec 32)) SeekEntryResult!8727)

(assert (=> b!828357 (= res!564547 (= (seekEntryOrOpen!0 (select (arr!22254 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8727 #b00000000000000000000000000000000)))))

(assert (=> b!828357 (=> (not res!564547) (not e!461622))))

(declare-fun b!828358 () Bool)

(assert (=> b!828358 (= e!461621 call!36032)))

(declare-fun b!828359 () Bool)

(assert (=> b!828359 (= e!461622 call!36032)))

(assert (= (and d!105113 (not res!564546)) b!828356))

(assert (= (and b!828356 c!89551) b!828357))

(assert (= (and b!828356 (not c!89551)) b!828358))

(assert (= (and b!828357 res!564547) b!828359))

(assert (= (or b!828359 b!828358) bm!36029))

(declare-fun m!771407 () Bool)

(assert (=> bm!36029 m!771407))

(assert (=> b!828356 m!771247))

(assert (=> b!828356 m!771247))

(assert (=> b!828356 m!771249))

(assert (=> b!828357 m!771247))

(declare-fun m!771409 () Bool)

(assert (=> b!828357 m!771409))

(declare-fun m!771411 () Bool)

(assert (=> b!828357 m!771411))

(assert (=> b!828357 m!771247))

(declare-fun m!771413 () Bool)

(assert (=> b!828357 m!771413))

(assert (=> b!828166 d!105113))

(declare-fun b!828366 () Bool)

(declare-fun e!461628 () Bool)

(assert (=> b!828366 (= e!461628 tp_is_empty!15147)))

(declare-fun mapNonEmpty!24361 () Bool)

(declare-fun mapRes!24361 () Bool)

(declare-fun tp!47089 () Bool)

(assert (=> mapNonEmpty!24361 (= mapRes!24361 (and tp!47089 e!461628))))

(declare-fun mapValue!24361 () ValueCell!7158)

(declare-fun mapKey!24361 () (_ BitVec 32))

(declare-fun mapRest!24361 () (Array (_ BitVec 32) ValueCell!7158))

(assert (=> mapNonEmpty!24361 (= mapRest!24355 (store mapRest!24361 mapKey!24361 mapValue!24361))))

(declare-fun b!828367 () Bool)

(declare-fun e!461627 () Bool)

(assert (=> b!828367 (= e!461627 tp_is_empty!15147)))

(declare-fun condMapEmpty!24361 () Bool)

(declare-fun mapDefault!24361 () ValueCell!7158)

(assert (=> mapNonEmpty!24355 (= condMapEmpty!24361 (= mapRest!24355 ((as const (Array (_ BitVec 32) ValueCell!7158)) mapDefault!24361)))))

(assert (=> mapNonEmpty!24355 (= tp!47079 (and e!461627 mapRes!24361))))

(declare-fun mapIsEmpty!24361 () Bool)

(assert (=> mapIsEmpty!24361 mapRes!24361))

(assert (= (and mapNonEmpty!24355 condMapEmpty!24361) mapIsEmpty!24361))

(assert (= (and mapNonEmpty!24355 (not condMapEmpty!24361)) mapNonEmpty!24361))

(assert (= (and mapNonEmpty!24361 ((_ is ValueCellFull!7158) mapValue!24361)) b!828366))

(assert (= (and mapNonEmpty!24355 ((_ is ValueCellFull!7158) mapDefault!24361)) b!828367))

(declare-fun m!771415 () Bool)

(assert (=> mapNonEmpty!24361 m!771415))

(declare-fun b_lambda!11245 () Bool)

(assert (= b_lambda!11243 (or (and start!71344 b_free!13437) b_lambda!11245)))

(declare-fun b_lambda!11247 () Bool)

(assert (= b_lambda!11241 (or (and start!71344 b_free!13437) b_lambda!11247)))

(declare-fun b_lambda!11249 () Bool)

(assert (= b_lambda!11235 (or (and start!71344 b_free!13437) b_lambda!11249)))

(declare-fun b_lambda!11251 () Bool)

(assert (= b_lambda!11237 (or (and start!71344 b_free!13437) b_lambda!11251)))

(declare-fun b_lambda!11253 () Bool)

(assert (= b_lambda!11239 (or (and start!71344 b_free!13437) b_lambda!11253)))

(declare-fun b_lambda!11255 () Bool)

(assert (= b_lambda!11233 (or (and start!71344 b_free!13437) b_lambda!11255)))

(check-sat (not b!828316) (not b!828250) (not b!828280) b_and!22427 (not bm!36029) (not bm!36013) (not d!105097) (not bm!36026) (not d!105099) (not b!828322) (not b!828327) (not b!828262) (not b!828315) (not b_lambda!11253) (not b!828317) (not bm!36011) (not b!828356) (not b!828325) (not b_lambda!11245) (not b!828310) (not b!828266) (not d!105101) (not b!828251) (not bm!36006) (not mapNonEmpty!24361) (not b!828283) (not bm!36010) (not b!828282) (not b!828329) (not b!828324) (not b!828253) (not d!105093) (not b!828345) (not b!828311) (not b!828328) (not b!828241) (not b!828237) (not b!828312) (not b!828274) (not b!828273) (not b!828245) (not b_lambda!11247) (not b!828347) (not b!828263) (not b_lambda!11255) (not bm!36022) (not b!828270) (not b!828357) (not b_lambda!11251) (not b!828323) (not bm!36023) (not b_next!13437) (not d!105095) (not bm!36014) (not bm!36017) (not b!828344) (not bm!36007) (not b!828313) (not bm!36018) tp_is_empty!15147 (not b!828254) (not b!828314) (not d!105103) (not b!828244) (not b_lambda!11249) (not b!828279) (not b!828326))
(check-sat b_and!22427 (not b_next!13437))
