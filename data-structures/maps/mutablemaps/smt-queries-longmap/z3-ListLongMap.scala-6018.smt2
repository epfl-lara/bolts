; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78006 () Bool)

(assert start!78006)

(declare-fun b_free!16521 () Bool)

(declare-fun b_next!16521 () Bool)

(assert (=> start!78006 (= b_free!16521 (not b_next!16521))))

(declare-fun tp!57832 () Bool)

(declare-fun b_and!27109 () Bool)

(assert (=> start!78006 (= tp!57832 b_and!27109)))

(declare-fun b!910218 () Bool)

(declare-fun res!614350 () Bool)

(declare-fun e!510367 () Bool)

(assert (=> b!910218 (=> (not res!614350) (not e!510367))))

(declare-datatypes ((V!30217 0))(
  ( (V!30218 (val!9520 Int)) )
))
(declare-datatypes ((ValueCell!8988 0))(
  ( (ValueCellFull!8988 (v!12028 V!30217)) (EmptyCell!8988) )
))
(declare-datatypes ((array!53888 0))(
  ( (array!53889 (arr!25897 (Array (_ BitVec 32) ValueCell!8988)) (size!26357 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53888)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53890 0))(
  ( (array!53891 (arr!25898 (Array (_ BitVec 32) (_ BitVec 64))) (size!26358 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53890)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910218 (= res!614350 (and (= (size!26357 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26358 _keys!1386) (size!26357 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun b!910219 () Bool)

(assert (=> b!910219 (= e!510367 (and (= (select (arr!25898 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsgt #b00000000000000000000000000000000 (size!26358 _keys!1386))))))

(declare-fun b!910220 () Bool)

(declare-fun e!510371 () Bool)

(declare-fun tp_is_empty!18939 () Bool)

(assert (=> b!910220 (= e!510371 tp_is_empty!18939)))

(declare-fun res!614352 () Bool)

(assert (=> start!78006 (=> (not res!614352) (not e!510367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78006 (= res!614352 (validMask!0 mask!1756))))

(assert (=> start!78006 e!510367))

(declare-fun e!510370 () Bool)

(declare-fun array_inv!20230 (array!53888) Bool)

(assert (=> start!78006 (and (array_inv!20230 _values!1152) e!510370)))

(assert (=> start!78006 tp!57832))

(assert (=> start!78006 true))

(assert (=> start!78006 tp_is_empty!18939))

(declare-fun array_inv!20231 (array!53890) Bool)

(assert (=> start!78006 (array_inv!20231 _keys!1386)))

(declare-fun b!910221 () Bool)

(declare-fun res!614348 () Bool)

(assert (=> b!910221 (=> (not res!614348) (not e!510367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53890 (_ BitVec 32)) Bool)

(assert (=> b!910221 (= res!614348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910222 () Bool)

(declare-fun e!510368 () Bool)

(assert (=> b!910222 (= e!510368 tp_is_empty!18939)))

(declare-fun mapIsEmpty!30127 () Bool)

(declare-fun mapRes!30127 () Bool)

(assert (=> mapIsEmpty!30127 mapRes!30127))

(declare-fun b!910223 () Bool)

(declare-fun res!614351 () Bool)

(assert (=> b!910223 (=> (not res!614351) (not e!510367))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30217)

(declare-fun minValue!1094 () V!30217)

(declare-datatypes ((tuple2!12440 0))(
  ( (tuple2!12441 (_1!6230 (_ BitVec 64)) (_2!6230 V!30217)) )
))
(declare-datatypes ((List!18293 0))(
  ( (Nil!18290) (Cons!18289 (h!19435 tuple2!12440) (t!25884 List!18293)) )
))
(declare-datatypes ((ListLongMap!11151 0))(
  ( (ListLongMap!11152 (toList!5591 List!18293)) )
))
(declare-fun contains!4599 (ListLongMap!11151 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2821 (array!53890 array!53888 (_ BitVec 32) (_ BitVec 32) V!30217 V!30217 (_ BitVec 32) Int) ListLongMap!11151)

(assert (=> b!910223 (= res!614351 (contains!4599 (getCurrentListMap!2821 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910224 () Bool)

(assert (=> b!910224 (= e!510370 (and e!510371 mapRes!30127))))

(declare-fun condMapEmpty!30127 () Bool)

(declare-fun mapDefault!30127 () ValueCell!8988)

(assert (=> b!910224 (= condMapEmpty!30127 (= (arr!25897 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8988)) mapDefault!30127)))))

(declare-fun b!910225 () Bool)

(declare-fun res!614353 () Bool)

(assert (=> b!910225 (=> (not res!614353) (not e!510367))))

(declare-datatypes ((List!18294 0))(
  ( (Nil!18291) (Cons!18290 (h!19436 (_ BitVec 64)) (t!25885 List!18294)) )
))
(declare-fun arrayNoDuplicates!0 (array!53890 (_ BitVec 32) List!18294) Bool)

(assert (=> b!910225 (= res!614353 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18291))))

(declare-fun b!910226 () Bool)

(declare-fun res!614349 () Bool)

(assert (=> b!910226 (=> (not res!614349) (not e!510367))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!910226 (= res!614349 (inRange!0 i!717 mask!1756))))

(declare-fun mapNonEmpty!30127 () Bool)

(declare-fun tp!57831 () Bool)

(assert (=> mapNonEmpty!30127 (= mapRes!30127 (and tp!57831 e!510368))))

(declare-fun mapValue!30127 () ValueCell!8988)

(declare-fun mapKey!30127 () (_ BitVec 32))

(declare-fun mapRest!30127 () (Array (_ BitVec 32) ValueCell!8988))

(assert (=> mapNonEmpty!30127 (= (arr!25897 _values!1152) (store mapRest!30127 mapKey!30127 mapValue!30127))))

(assert (= (and start!78006 res!614352) b!910218))

(assert (= (and b!910218 res!614350) b!910221))

(assert (= (and b!910221 res!614348) b!910225))

(assert (= (and b!910225 res!614353) b!910223))

(assert (= (and b!910223 res!614351) b!910226))

(assert (= (and b!910226 res!614349) b!910219))

(assert (= (and b!910224 condMapEmpty!30127) mapIsEmpty!30127))

(assert (= (and b!910224 (not condMapEmpty!30127)) mapNonEmpty!30127))

(get-info :version)

(assert (= (and mapNonEmpty!30127 ((_ is ValueCellFull!8988) mapValue!30127)) b!910222))

(assert (= (and b!910224 ((_ is ValueCellFull!8988) mapDefault!30127)) b!910220))

(assert (= start!78006 b!910224))

(declare-fun m!845341 () Bool)

(assert (=> b!910219 m!845341))

(declare-fun m!845343 () Bool)

(assert (=> b!910225 m!845343))

(declare-fun m!845345 () Bool)

(assert (=> b!910226 m!845345))

(declare-fun m!845347 () Bool)

(assert (=> b!910223 m!845347))

(assert (=> b!910223 m!845347))

(declare-fun m!845349 () Bool)

(assert (=> b!910223 m!845349))

(declare-fun m!845351 () Bool)

(assert (=> mapNonEmpty!30127 m!845351))

(declare-fun m!845353 () Bool)

(assert (=> b!910221 m!845353))

(declare-fun m!845355 () Bool)

(assert (=> start!78006 m!845355))

(declare-fun m!845357 () Bool)

(assert (=> start!78006 m!845357))

(declare-fun m!845359 () Bool)

(assert (=> start!78006 m!845359))

(check-sat (not b_next!16521) (not b!910223) (not b!910225) (not mapNonEmpty!30127) (not b!910221) tp_is_empty!18939 (not b!910226) b_and!27109 (not start!78006))
(check-sat b_and!27109 (not b_next!16521))
(get-model)

(declare-fun d!112117 () Bool)

(assert (=> d!112117 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!78006 d!112117))

(declare-fun d!112119 () Bool)

(assert (=> d!112119 (= (array_inv!20230 _values!1152) (bvsge (size!26357 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!78006 d!112119))

(declare-fun d!112121 () Bool)

(assert (=> d!112121 (= (array_inv!20231 _keys!1386) (bvsge (size!26358 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!78006 d!112121))

(declare-fun b!910262 () Bool)

(declare-fun e!510394 () Bool)

(declare-fun call!40316 () Bool)

(assert (=> b!910262 (= e!510394 call!40316)))

(declare-fun b!910263 () Bool)

(declare-fun e!510393 () Bool)

(assert (=> b!910263 (= e!510393 call!40316)))

(declare-fun b!910264 () Bool)

(declare-fun e!510395 () Bool)

(assert (=> b!910264 (= e!510395 e!510393)))

(declare-fun c!95636 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!910264 (= c!95636 (validKeyInArray!0 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112123 () Bool)

(declare-fun res!614377 () Bool)

(assert (=> d!112123 (=> res!614377 e!510395)))

(assert (=> d!112123 (= res!614377 (bvsge #b00000000000000000000000000000000 (size!26358 _keys!1386)))))

(assert (=> d!112123 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!510395)))

(declare-fun bm!40313 () Bool)

(assert (=> bm!40313 (= call!40316 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!910265 () Bool)

(assert (=> b!910265 (= e!510393 e!510394)))

(declare-fun lt!410134 () (_ BitVec 64))

(assert (=> b!910265 (= lt!410134 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30829 0))(
  ( (Unit!30830) )
))
(declare-fun lt!410133 () Unit!30829)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!53890 (_ BitVec 64) (_ BitVec 32)) Unit!30829)

(assert (=> b!910265 (= lt!410133 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!410134 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!53890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!910265 (arrayContainsKey!0 _keys!1386 lt!410134 #b00000000000000000000000000000000)))

(declare-fun lt!410132 () Unit!30829)

(assert (=> b!910265 (= lt!410132 lt!410133)))

(declare-fun res!614376 () Bool)

(declare-datatypes ((SeekEntryResult!8952 0))(
  ( (MissingZero!8952 (index!38178 (_ BitVec 32))) (Found!8952 (index!38179 (_ BitVec 32))) (Intermediate!8952 (undefined!9764 Bool) (index!38180 (_ BitVec 32)) (x!77794 (_ BitVec 32))) (Undefined!8952) (MissingVacant!8952 (index!38181 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!53890 (_ BitVec 32)) SeekEntryResult!8952)

(assert (=> b!910265 (= res!614376 (= (seekEntryOrOpen!0 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8952 #b00000000000000000000000000000000)))))

(assert (=> b!910265 (=> (not res!614376) (not e!510394))))

(assert (= (and d!112123 (not res!614377)) b!910264))

(assert (= (and b!910264 c!95636) b!910265))

(assert (= (and b!910264 (not c!95636)) b!910263))

(assert (= (and b!910265 res!614376) b!910262))

(assert (= (or b!910262 b!910263) bm!40313))

(declare-fun m!845381 () Bool)

(assert (=> b!910264 m!845381))

(assert (=> b!910264 m!845381))

(declare-fun m!845383 () Bool)

(assert (=> b!910264 m!845383))

(declare-fun m!845385 () Bool)

(assert (=> bm!40313 m!845385))

(assert (=> b!910265 m!845381))

(declare-fun m!845387 () Bool)

(assert (=> b!910265 m!845387))

(declare-fun m!845389 () Bool)

(assert (=> b!910265 m!845389))

(assert (=> b!910265 m!845381))

(declare-fun m!845391 () Bool)

(assert (=> b!910265 m!845391))

(assert (=> b!910221 d!112123))

(declare-fun b!910276 () Bool)

(declare-fun e!510405 () Bool)

(declare-fun e!510407 () Bool)

(assert (=> b!910276 (= e!510405 e!510407)))

(declare-fun res!614385 () Bool)

(assert (=> b!910276 (=> (not res!614385) (not e!510407))))

(declare-fun e!510406 () Bool)

(assert (=> b!910276 (= res!614385 (not e!510406))))

(declare-fun res!614386 () Bool)

(assert (=> b!910276 (=> (not res!614386) (not e!510406))))

(assert (=> b!910276 (= res!614386 (validKeyInArray!0 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!910277 () Bool)

(declare-fun e!510404 () Bool)

(declare-fun call!40319 () Bool)

(assert (=> b!910277 (= e!510404 call!40319)))

(declare-fun bm!40316 () Bool)

(declare-fun c!95639 () Bool)

(assert (=> bm!40316 (= call!40319 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95639 (Cons!18290 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000) Nil!18291) Nil!18291)))))

(declare-fun b!910278 () Bool)

(declare-fun contains!4600 (List!18294 (_ BitVec 64)) Bool)

(assert (=> b!910278 (= e!510406 (contains!4600 Nil!18291 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112125 () Bool)

(declare-fun res!614384 () Bool)

(assert (=> d!112125 (=> res!614384 e!510405)))

(assert (=> d!112125 (= res!614384 (bvsge #b00000000000000000000000000000000 (size!26358 _keys!1386)))))

(assert (=> d!112125 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18291) e!510405)))

(declare-fun b!910279 () Bool)

(assert (=> b!910279 (= e!510407 e!510404)))

(assert (=> b!910279 (= c!95639 (validKeyInArray!0 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!910280 () Bool)

(assert (=> b!910280 (= e!510404 call!40319)))

(assert (= (and d!112125 (not res!614384)) b!910276))

(assert (= (and b!910276 res!614386) b!910278))

(assert (= (and b!910276 res!614385) b!910279))

(assert (= (and b!910279 c!95639) b!910280))

(assert (= (and b!910279 (not c!95639)) b!910277))

(assert (= (or b!910280 b!910277) bm!40316))

(assert (=> b!910276 m!845381))

(assert (=> b!910276 m!845381))

(assert (=> b!910276 m!845383))

(assert (=> bm!40316 m!845381))

(declare-fun m!845393 () Bool)

(assert (=> bm!40316 m!845393))

(assert (=> b!910278 m!845381))

(assert (=> b!910278 m!845381))

(declare-fun m!845395 () Bool)

(assert (=> b!910278 m!845395))

(assert (=> b!910279 m!845381))

(assert (=> b!910279 m!845381))

(assert (=> b!910279 m!845383))

(assert (=> b!910225 d!112125))

(declare-fun d!112127 () Bool)

(assert (=> d!112127 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!910226 d!112127))

(declare-fun d!112129 () Bool)

(declare-fun e!510412 () Bool)

(assert (=> d!112129 e!510412))

(declare-fun res!614389 () Bool)

(assert (=> d!112129 (=> res!614389 e!510412)))

(declare-fun lt!410143 () Bool)

(assert (=> d!112129 (= res!614389 (not lt!410143))))

(declare-fun lt!410145 () Bool)

(assert (=> d!112129 (= lt!410143 lt!410145)))

(declare-fun lt!410144 () Unit!30829)

(declare-fun e!510413 () Unit!30829)

(assert (=> d!112129 (= lt!410144 e!510413)))

(declare-fun c!95642 () Bool)

(assert (=> d!112129 (= c!95642 lt!410145)))

(declare-fun containsKey!439 (List!18293 (_ BitVec 64)) Bool)

(assert (=> d!112129 (= lt!410145 (containsKey!439 (toList!5591 (getCurrentListMap!2821 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> d!112129 (= (contains!4599 (getCurrentListMap!2821 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033) lt!410143)))

(declare-fun b!910287 () Bool)

(declare-fun lt!410146 () Unit!30829)

(assert (=> b!910287 (= e!510413 lt!410146)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!334 (List!18293 (_ BitVec 64)) Unit!30829)

(assert (=> b!910287 (= lt!410146 (lemmaContainsKeyImpliesGetValueByKeyDefined!334 (toList!5591 (getCurrentListMap!2821 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-datatypes ((Option!480 0))(
  ( (Some!479 (v!12030 V!30217)) (None!478) )
))
(declare-fun isDefined!344 (Option!480) Bool)

(declare-fun getValueByKey!474 (List!18293 (_ BitVec 64)) Option!480)

(assert (=> b!910287 (isDefined!344 (getValueByKey!474 (toList!5591 (getCurrentListMap!2821 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun b!910288 () Bool)

(declare-fun Unit!30831 () Unit!30829)

(assert (=> b!910288 (= e!510413 Unit!30831)))

(declare-fun b!910289 () Bool)

(assert (=> b!910289 (= e!510412 (isDefined!344 (getValueByKey!474 (toList!5591 (getCurrentListMap!2821 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)))))

(assert (= (and d!112129 c!95642) b!910287))

(assert (= (and d!112129 (not c!95642)) b!910288))

(assert (= (and d!112129 (not res!614389)) b!910289))

(declare-fun m!845397 () Bool)

(assert (=> d!112129 m!845397))

(declare-fun m!845399 () Bool)

(assert (=> b!910287 m!845399))

(declare-fun m!845401 () Bool)

(assert (=> b!910287 m!845401))

(assert (=> b!910287 m!845401))

(declare-fun m!845403 () Bool)

(assert (=> b!910287 m!845403))

(assert (=> b!910289 m!845401))

(assert (=> b!910289 m!845401))

(assert (=> b!910289 m!845403))

(assert (=> b!910223 d!112129))

(declare-fun lt!410209 () ListLongMap!11151)

(declare-fun b!910332 () Bool)

(declare-fun e!510448 () Bool)

(declare-fun apply!526 (ListLongMap!11151 (_ BitVec 64)) V!30217)

(declare-fun get!13636 (ValueCell!8988 V!30217) V!30217)

(declare-fun dynLambda!1393 (Int (_ BitVec 64)) V!30217)

(assert (=> b!910332 (= e!510448 (= (apply!526 lt!410209 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000)) (get!13636 (select (arr!25897 _values!1152) #b00000000000000000000000000000000) (dynLambda!1393 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!910332 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26357 _values!1152)))))

(assert (=> b!910332 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26358 _keys!1386)))))

(declare-fun bm!40331 () Bool)

(declare-fun call!40335 () Bool)

(assert (=> bm!40331 (= call!40335 (contains!4599 lt!410209 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!910333 () Bool)

(declare-fun e!510442 () Bool)

(assert (=> b!910333 (= e!510442 (validKeyInArray!0 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!910334 () Bool)

(declare-fun e!510447 () Bool)

(declare-fun call!40337 () Bool)

(assert (=> b!910334 (= e!510447 (not call!40337))))

(declare-fun b!910335 () Bool)

(declare-fun e!510451 () ListLongMap!11151)

(declare-fun call!40339 () ListLongMap!11151)

(declare-fun +!2559 (ListLongMap!11151 tuple2!12440) ListLongMap!11151)

(assert (=> b!910335 (= e!510451 (+!2559 call!40339 (tuple2!12441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun bm!40332 () Bool)

(declare-fun call!40340 () ListLongMap!11151)

(declare-fun call!40334 () ListLongMap!11151)

(assert (=> bm!40332 (= call!40340 call!40334)))

(declare-fun bm!40333 () Bool)

(declare-fun call!40336 () ListLongMap!11151)

(assert (=> bm!40333 (= call!40336 call!40340)))

(declare-fun bm!40334 () Bool)

(declare-fun call!40338 () ListLongMap!11151)

(assert (=> bm!40334 (= call!40338 call!40339)))

(declare-fun b!910336 () Bool)

(declare-fun e!510446 () ListLongMap!11151)

(assert (=> b!910336 (= e!510446 call!40336)))

(declare-fun b!910337 () Bool)

(declare-fun e!510443 () Bool)

(assert (=> b!910337 (= e!510447 e!510443)))

(declare-fun res!614408 () Bool)

(assert (=> b!910337 (= res!614408 call!40337)))

(assert (=> b!910337 (=> (not res!614408) (not e!510443))))

(declare-fun b!910338 () Bool)

(declare-fun c!95656 () Bool)

(assert (=> b!910338 (= c!95656 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!510449 () ListLongMap!11151)

(assert (=> b!910338 (= e!510449 e!510446)))

(declare-fun c!95660 () Bool)

(declare-fun c!95658 () Bool)

(declare-fun bm!40335 () Bool)

(assert (=> bm!40335 (= call!40339 (+!2559 (ite c!95658 call!40334 (ite c!95660 call!40340 call!40336)) (ite (or c!95658 c!95660) (tuple2!12441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!910339 () Bool)

(declare-fun e!510450 () Bool)

(declare-fun e!510445 () Bool)

(assert (=> b!910339 (= e!510450 e!510445)))

(declare-fun c!95655 () Bool)

(assert (=> b!910339 (= c!95655 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!112131 () Bool)

(assert (=> d!112131 e!510450))

(declare-fun res!614410 () Bool)

(assert (=> d!112131 (=> (not res!614410) (not e!510450))))

(assert (=> d!112131 (= res!614410 (or (bvsge #b00000000000000000000000000000000 (size!26358 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26358 _keys!1386)))))))

(declare-fun lt!410205 () ListLongMap!11151)

(assert (=> d!112131 (= lt!410209 lt!410205)))

(declare-fun lt!410204 () Unit!30829)

(declare-fun e!510444 () Unit!30829)

(assert (=> d!112131 (= lt!410204 e!510444)))

(declare-fun c!95657 () Bool)

(assert (=> d!112131 (= c!95657 e!510442)))

(declare-fun res!614411 () Bool)

(assert (=> d!112131 (=> (not res!614411) (not e!510442))))

(assert (=> d!112131 (= res!614411 (bvslt #b00000000000000000000000000000000 (size!26358 _keys!1386)))))

(assert (=> d!112131 (= lt!410205 e!510451)))

(assert (=> d!112131 (= c!95658 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112131 (validMask!0 mask!1756)))

(assert (=> d!112131 (= (getCurrentListMap!2821 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!410209)))

(declare-fun b!910340 () Bool)

(declare-fun e!510441 () Bool)

(assert (=> b!910340 (= e!510445 e!510441)))

(declare-fun res!614409 () Bool)

(assert (=> b!910340 (= res!614409 call!40335)))

(assert (=> b!910340 (=> (not res!614409) (not e!510441))))

(declare-fun b!910341 () Bool)

(assert (=> b!910341 (= e!510446 call!40338)))

(declare-fun bm!40336 () Bool)

(assert (=> bm!40336 (= call!40337 (contains!4599 lt!410209 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!910342 () Bool)

(declare-fun res!614414 () Bool)

(assert (=> b!910342 (=> (not res!614414) (not e!510450))))

(declare-fun e!510452 () Bool)

(assert (=> b!910342 (= res!614414 e!510452)))

(declare-fun res!614413 () Bool)

(assert (=> b!910342 (=> res!614413 e!510452)))

(declare-fun e!510440 () Bool)

(assert (=> b!910342 (= res!614413 (not e!510440))))

(declare-fun res!614416 () Bool)

(assert (=> b!910342 (=> (not res!614416) (not e!510440))))

(assert (=> b!910342 (= res!614416 (bvslt #b00000000000000000000000000000000 (size!26358 _keys!1386)))))

(declare-fun b!910343 () Bool)

(assert (=> b!910343 (= e!510451 e!510449)))

(assert (=> b!910343 (= c!95660 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!910344 () Bool)

(assert (=> b!910344 (= e!510441 (= (apply!526 lt!410209 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun b!910345 () Bool)

(assert (=> b!910345 (= e!510443 (= (apply!526 lt!410209 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun b!910346 () Bool)

(assert (=> b!910346 (= e!510449 call!40338)))

(declare-fun bm!40337 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3307 (array!53890 array!53888 (_ BitVec 32) (_ BitVec 32) V!30217 V!30217 (_ BitVec 32) Int) ListLongMap!11151)

(assert (=> bm!40337 (= call!40334 (getCurrentListMapNoExtraKeys!3307 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!910347 () Bool)

(assert (=> b!910347 (= e!510445 (not call!40335))))

(declare-fun b!910348 () Bool)

(declare-fun res!614412 () Bool)

(assert (=> b!910348 (=> (not res!614412) (not e!510450))))

(assert (=> b!910348 (= res!614412 e!510447)))

(declare-fun c!95659 () Bool)

(assert (=> b!910348 (= c!95659 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!910349 () Bool)

(declare-fun lt!410207 () Unit!30829)

(assert (=> b!910349 (= e!510444 lt!410207)))

(declare-fun lt!410212 () ListLongMap!11151)

(assert (=> b!910349 (= lt!410212 (getCurrentListMapNoExtraKeys!3307 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410206 () (_ BitVec 64))

(assert (=> b!910349 (= lt!410206 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410193 () (_ BitVec 64))

(assert (=> b!910349 (= lt!410193 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410196 () Unit!30829)

(declare-fun addStillContains!345 (ListLongMap!11151 (_ BitVec 64) V!30217 (_ BitVec 64)) Unit!30829)

(assert (=> b!910349 (= lt!410196 (addStillContains!345 lt!410212 lt!410206 zeroValue!1094 lt!410193))))

(assert (=> b!910349 (contains!4599 (+!2559 lt!410212 (tuple2!12441 lt!410206 zeroValue!1094)) lt!410193)))

(declare-fun lt!410201 () Unit!30829)

(assert (=> b!910349 (= lt!410201 lt!410196)))

(declare-fun lt!410197 () ListLongMap!11151)

(assert (=> b!910349 (= lt!410197 (getCurrentListMapNoExtraKeys!3307 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410195 () (_ BitVec 64))

(assert (=> b!910349 (= lt!410195 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410192 () (_ BitVec 64))

(assert (=> b!910349 (= lt!410192 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410203 () Unit!30829)

(declare-fun addApplyDifferent!345 (ListLongMap!11151 (_ BitVec 64) V!30217 (_ BitVec 64)) Unit!30829)

(assert (=> b!910349 (= lt!410203 (addApplyDifferent!345 lt!410197 lt!410195 minValue!1094 lt!410192))))

(assert (=> b!910349 (= (apply!526 (+!2559 lt!410197 (tuple2!12441 lt!410195 minValue!1094)) lt!410192) (apply!526 lt!410197 lt!410192))))

(declare-fun lt!410211 () Unit!30829)

(assert (=> b!910349 (= lt!410211 lt!410203)))

(declare-fun lt!410191 () ListLongMap!11151)

(assert (=> b!910349 (= lt!410191 (getCurrentListMapNoExtraKeys!3307 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410198 () (_ BitVec 64))

(assert (=> b!910349 (= lt!410198 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410199 () (_ BitVec 64))

(assert (=> b!910349 (= lt!410199 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410200 () Unit!30829)

(assert (=> b!910349 (= lt!410200 (addApplyDifferent!345 lt!410191 lt!410198 zeroValue!1094 lt!410199))))

(assert (=> b!910349 (= (apply!526 (+!2559 lt!410191 (tuple2!12441 lt!410198 zeroValue!1094)) lt!410199) (apply!526 lt!410191 lt!410199))))

(declare-fun lt!410210 () Unit!30829)

(assert (=> b!910349 (= lt!410210 lt!410200)))

(declare-fun lt!410202 () ListLongMap!11151)

(assert (=> b!910349 (= lt!410202 (getCurrentListMapNoExtraKeys!3307 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410194 () (_ BitVec 64))

(assert (=> b!910349 (= lt!410194 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410208 () (_ BitVec 64))

(assert (=> b!910349 (= lt!410208 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!910349 (= lt!410207 (addApplyDifferent!345 lt!410202 lt!410194 minValue!1094 lt!410208))))

(assert (=> b!910349 (= (apply!526 (+!2559 lt!410202 (tuple2!12441 lt!410194 minValue!1094)) lt!410208) (apply!526 lt!410202 lt!410208))))

(declare-fun b!910350 () Bool)

(declare-fun Unit!30832 () Unit!30829)

(assert (=> b!910350 (= e!510444 Unit!30832)))

(declare-fun b!910351 () Bool)

(assert (=> b!910351 (= e!510452 e!510448)))

(declare-fun res!614415 () Bool)

(assert (=> b!910351 (=> (not res!614415) (not e!510448))))

(assert (=> b!910351 (= res!614415 (contains!4599 lt!410209 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!910351 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26358 _keys!1386)))))

(declare-fun b!910352 () Bool)

(assert (=> b!910352 (= e!510440 (validKeyInArray!0 (select (arr!25898 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!112131 c!95658) b!910335))

(assert (= (and d!112131 (not c!95658)) b!910343))

(assert (= (and b!910343 c!95660) b!910346))

(assert (= (and b!910343 (not c!95660)) b!910338))

(assert (= (and b!910338 c!95656) b!910341))

(assert (= (and b!910338 (not c!95656)) b!910336))

(assert (= (or b!910341 b!910336) bm!40333))

(assert (= (or b!910346 bm!40333) bm!40332))

(assert (= (or b!910346 b!910341) bm!40334))

(assert (= (or b!910335 bm!40332) bm!40337))

(assert (= (or b!910335 bm!40334) bm!40335))

(assert (= (and d!112131 res!614411) b!910333))

(assert (= (and d!112131 c!95657) b!910349))

(assert (= (and d!112131 (not c!95657)) b!910350))

(assert (= (and d!112131 res!614410) b!910342))

(assert (= (and b!910342 res!614416) b!910352))

(assert (= (and b!910342 (not res!614413)) b!910351))

(assert (= (and b!910351 res!614415) b!910332))

(assert (= (and b!910342 res!614414) b!910348))

(assert (= (and b!910348 c!95659) b!910337))

(assert (= (and b!910348 (not c!95659)) b!910334))

(assert (= (and b!910337 res!614408) b!910345))

(assert (= (or b!910337 b!910334) bm!40336))

(assert (= (and b!910348 res!614412) b!910339))

(assert (= (and b!910339 c!95655) b!910340))

(assert (= (and b!910339 (not c!95655)) b!910347))

(assert (= (and b!910340 res!614409) b!910344))

(assert (= (or b!910340 b!910347) bm!40331))

(declare-fun b_lambda!13329 () Bool)

(assert (=> (not b_lambda!13329) (not b!910332)))

(declare-fun t!25887 () Bool)

(declare-fun tb!5443 () Bool)

(assert (=> (and start!78006 (= defaultEntry!1160 defaultEntry!1160) t!25887) tb!5443))

(declare-fun result!10677 () Bool)

(assert (=> tb!5443 (= result!10677 tp_is_empty!18939)))

(assert (=> b!910332 t!25887))

(declare-fun b_and!27113 () Bool)

(assert (= b_and!27109 (and (=> t!25887 result!10677) b_and!27113)))

(declare-fun m!845405 () Bool)

(assert (=> b!910345 m!845405))

(declare-fun m!845407 () Bool)

(assert (=> b!910344 m!845407))

(assert (=> b!910333 m!845381))

(assert (=> b!910333 m!845381))

(assert (=> b!910333 m!845383))

(declare-fun m!845409 () Bool)

(assert (=> bm!40336 m!845409))

(declare-fun m!845411 () Bool)

(assert (=> bm!40337 m!845411))

(declare-fun m!845413 () Bool)

(assert (=> bm!40331 m!845413))

(assert (=> b!910351 m!845381))

(assert (=> b!910351 m!845381))

(declare-fun m!845415 () Bool)

(assert (=> b!910351 m!845415))

(assert (=> b!910352 m!845381))

(assert (=> b!910352 m!845381))

(assert (=> b!910352 m!845383))

(declare-fun m!845417 () Bool)

(assert (=> bm!40335 m!845417))

(assert (=> d!112131 m!845355))

(declare-fun m!845419 () Bool)

(assert (=> b!910349 m!845419))

(declare-fun m!845421 () Bool)

(assert (=> b!910349 m!845421))

(declare-fun m!845423 () Bool)

(assert (=> b!910349 m!845423))

(declare-fun m!845425 () Bool)

(assert (=> b!910349 m!845425))

(declare-fun m!845427 () Bool)

(assert (=> b!910349 m!845427))

(declare-fun m!845429 () Bool)

(assert (=> b!910349 m!845429))

(declare-fun m!845431 () Bool)

(assert (=> b!910349 m!845431))

(assert (=> b!910349 m!845411))

(assert (=> b!910349 m!845419))

(declare-fun m!845433 () Bool)

(assert (=> b!910349 m!845433))

(assert (=> b!910349 m!845427))

(declare-fun m!845435 () Bool)

(assert (=> b!910349 m!845435))

(declare-fun m!845437 () Bool)

(assert (=> b!910349 m!845437))

(assert (=> b!910349 m!845431))

(declare-fun m!845439 () Bool)

(assert (=> b!910349 m!845439))

(assert (=> b!910349 m!845381))

(declare-fun m!845441 () Bool)

(assert (=> b!910349 m!845441))

(declare-fun m!845443 () Bool)

(assert (=> b!910349 m!845443))

(declare-fun m!845445 () Bool)

(assert (=> b!910349 m!845445))

(assert (=> b!910349 m!845441))

(declare-fun m!845447 () Bool)

(assert (=> b!910349 m!845447))

(declare-fun m!845449 () Bool)

(assert (=> b!910335 m!845449))

(declare-fun m!845451 () Bool)

(assert (=> b!910332 m!845451))

(declare-fun m!845453 () Bool)

(assert (=> b!910332 m!845453))

(declare-fun m!845455 () Bool)

(assert (=> b!910332 m!845455))

(assert (=> b!910332 m!845381))

(declare-fun m!845457 () Bool)

(assert (=> b!910332 m!845457))

(assert (=> b!910332 m!845451))

(assert (=> b!910332 m!845381))

(assert (=> b!910332 m!845453))

(assert (=> b!910223 d!112131))

(declare-fun condMapEmpty!30133 () Bool)

(declare-fun mapDefault!30133 () ValueCell!8988)

(assert (=> mapNonEmpty!30127 (= condMapEmpty!30133 (= mapRest!30127 ((as const (Array (_ BitVec 32) ValueCell!8988)) mapDefault!30133)))))

(declare-fun e!510458 () Bool)

(declare-fun mapRes!30133 () Bool)

(assert (=> mapNonEmpty!30127 (= tp!57831 (and e!510458 mapRes!30133))))

(declare-fun mapNonEmpty!30133 () Bool)

(declare-fun tp!57841 () Bool)

(declare-fun e!510457 () Bool)

(assert (=> mapNonEmpty!30133 (= mapRes!30133 (and tp!57841 e!510457))))

(declare-fun mapKey!30133 () (_ BitVec 32))

(declare-fun mapValue!30133 () ValueCell!8988)

(declare-fun mapRest!30133 () (Array (_ BitVec 32) ValueCell!8988))

(assert (=> mapNonEmpty!30133 (= mapRest!30127 (store mapRest!30133 mapKey!30133 mapValue!30133))))

(declare-fun b!910361 () Bool)

(assert (=> b!910361 (= e!510457 tp_is_empty!18939)))

(declare-fun mapIsEmpty!30133 () Bool)

(assert (=> mapIsEmpty!30133 mapRes!30133))

(declare-fun b!910362 () Bool)

(assert (=> b!910362 (= e!510458 tp_is_empty!18939)))

(assert (= (and mapNonEmpty!30127 condMapEmpty!30133) mapIsEmpty!30133))

(assert (= (and mapNonEmpty!30127 (not condMapEmpty!30133)) mapNonEmpty!30133))

(assert (= (and mapNonEmpty!30133 ((_ is ValueCellFull!8988) mapValue!30133)) b!910361))

(assert (= (and mapNonEmpty!30127 ((_ is ValueCellFull!8988) mapDefault!30133)) b!910362))

(declare-fun m!845459 () Bool)

(assert (=> mapNonEmpty!30133 m!845459))

(declare-fun b_lambda!13331 () Bool)

(assert (= b_lambda!13329 (or (and start!78006 b_free!16521) b_lambda!13331)))

(check-sat (not b!910335) (not b_next!16521) (not bm!40316) (not bm!40337) (not b!910345) (not b!910264) (not b!910289) (not bm!40335) (not b!910278) (not mapNonEmpty!30133) (not bm!40336) (not d!112129) tp_is_empty!18939 (not bm!40331) (not b!910352) (not b!910287) (not b!910333) (not bm!40313) (not d!112131) (not b_lambda!13331) (not b!910279) (not b!910344) (not b!910265) (not b!910332) (not b!910276) (not b!910351) (not b!910349) b_and!27113)
(check-sat b_and!27113 (not b_next!16521))
