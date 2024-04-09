; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41474 () Bool)

(assert start!41474)

(declare-fun b_free!11145 () Bool)

(declare-fun b_next!11145 () Bool)

(assert (=> start!41474 (= b_free!11145 (not b_next!11145))))

(declare-fun tp!39430 () Bool)

(declare-fun b_and!19499 () Bool)

(assert (=> start!41474 (= tp!39430 b_and!19499)))

(declare-fun mapNonEmpty!20533 () Bool)

(declare-fun mapRes!20533 () Bool)

(declare-fun tp!39429 () Bool)

(declare-fun e!270381 () Bool)

(assert (=> mapNonEmpty!20533 (= mapRes!20533 (and tp!39429 e!270381))))

(declare-datatypes ((V!17869 0))(
  ( (V!17870 (val!6331 Int)) )
))
(declare-datatypes ((ValueCell!5943 0))(
  ( (ValueCellFull!5943 (v!8614 V!17869)) (EmptyCell!5943) )
))
(declare-datatypes ((array!28905 0))(
  ( (array!28906 (arr!13882 (Array (_ BitVec 32) ValueCell!5943)) (size!14234 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28905)

(declare-fun mapValue!20533 () ValueCell!5943)

(declare-fun mapKey!20533 () (_ BitVec 32))

(declare-fun mapRest!20533 () (Array (_ BitVec 32) ValueCell!5943))

(assert (=> mapNonEmpty!20533 (= (arr!13882 _values!833) (store mapRest!20533 mapKey!20533 mapValue!20533))))

(declare-fun b!463101 () Bool)

(declare-fun e!270379 () Bool)

(declare-fun e!270380 () Bool)

(assert (=> b!463101 (= e!270379 (and e!270380 mapRes!20533))))

(declare-fun condMapEmpty!20533 () Bool)

(declare-fun mapDefault!20533 () ValueCell!5943)

(assert (=> b!463101 (= condMapEmpty!20533 (= (arr!13882 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5943)) mapDefault!20533)))))

(declare-fun b!463102 () Bool)

(declare-fun tp_is_empty!12573 () Bool)

(assert (=> b!463102 (= e!270380 tp_is_empty!12573)))

(declare-fun res!276991 () Bool)

(declare-fun e!270382 () Bool)

(assert (=> start!41474 (=> (not res!276991) (not e!270382))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41474 (= res!276991 (validMask!0 mask!1365))))

(assert (=> start!41474 e!270382))

(assert (=> start!41474 tp_is_empty!12573))

(assert (=> start!41474 tp!39430))

(assert (=> start!41474 true))

(declare-datatypes ((array!28907 0))(
  ( (array!28908 (arr!13883 (Array (_ BitVec 32) (_ BitVec 64))) (size!14235 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28907)

(declare-fun array_inv!10014 (array!28907) Bool)

(assert (=> start!41474 (array_inv!10014 _keys!1025)))

(declare-fun array_inv!10015 (array!28905) Bool)

(assert (=> start!41474 (and (array_inv!10015 _values!833) e!270379)))

(declare-fun mapIsEmpty!20533 () Bool)

(assert (=> mapIsEmpty!20533 mapRes!20533))

(declare-fun b!463103 () Bool)

(assert (=> b!463103 (= e!270382 (bvsgt #b00000000000000000000000000000000 (size!14235 _keys!1025)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!17869)

(declare-fun zeroValue!794 () V!17869)

(declare-datatypes ((tuple2!8268 0))(
  ( (tuple2!8269 (_1!4144 (_ BitVec 64)) (_2!4144 V!17869)) )
))
(declare-datatypes ((List!8394 0))(
  ( (Nil!8391) (Cons!8390 (h!9246 tuple2!8268) (t!14346 List!8394)) )
))
(declare-datatypes ((ListLongMap!7195 0))(
  ( (ListLongMap!7196 (toList!3613 List!8394)) )
))
(declare-fun lt!209295 () ListLongMap!7195)

(declare-fun getCurrentListMapNoExtraKeys!1781 (array!28907 array!28905 (_ BitVec 32) (_ BitVec 32) V!17869 V!17869 (_ BitVec 32) Int) ListLongMap!7195)

(assert (=> b!463103 (= lt!209295 (getCurrentListMapNoExtraKeys!1781 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463104 () Bool)

(declare-fun res!276990 () Bool)

(assert (=> b!463104 (=> (not res!276990) (not e!270382))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!463104 (= res!276990 (and (= (size!14234 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14235 _keys!1025) (size!14234 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463105 () Bool)

(declare-fun res!276989 () Bool)

(assert (=> b!463105 (=> (not res!276989) (not e!270382))))

(declare-datatypes ((List!8395 0))(
  ( (Nil!8392) (Cons!8391 (h!9247 (_ BitVec 64)) (t!14347 List!8395)) )
))
(declare-fun arrayNoDuplicates!0 (array!28907 (_ BitVec 32) List!8395) Bool)

(assert (=> b!463105 (= res!276989 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8392))))

(declare-fun b!463106 () Bool)

(assert (=> b!463106 (= e!270381 tp_is_empty!12573)))

(declare-fun b!463107 () Bool)

(declare-fun res!276992 () Bool)

(assert (=> b!463107 (=> (not res!276992) (not e!270382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28907 (_ BitVec 32)) Bool)

(assert (=> b!463107 (= res!276992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41474 res!276991) b!463104))

(assert (= (and b!463104 res!276990) b!463107))

(assert (= (and b!463107 res!276992) b!463105))

(assert (= (and b!463105 res!276989) b!463103))

(assert (= (and b!463101 condMapEmpty!20533) mapIsEmpty!20533))

(assert (= (and b!463101 (not condMapEmpty!20533)) mapNonEmpty!20533))

(get-info :version)

(assert (= (and mapNonEmpty!20533 ((_ is ValueCellFull!5943) mapValue!20533)) b!463106))

(assert (= (and b!463101 ((_ is ValueCellFull!5943) mapDefault!20533)) b!463102))

(assert (= start!41474 b!463101))

(declare-fun m!445777 () Bool)

(assert (=> b!463105 m!445777))

(declare-fun m!445779 () Bool)

(assert (=> start!41474 m!445779))

(declare-fun m!445781 () Bool)

(assert (=> start!41474 m!445781))

(declare-fun m!445783 () Bool)

(assert (=> start!41474 m!445783))

(declare-fun m!445785 () Bool)

(assert (=> b!463107 m!445785))

(declare-fun m!445787 () Bool)

(assert (=> b!463103 m!445787))

(declare-fun m!445789 () Bool)

(assert (=> mapNonEmpty!20533 m!445789))

(check-sat (not b!463107) b_and!19499 (not mapNonEmpty!20533) (not b_next!11145) (not start!41474) tp_is_empty!12573 (not b!463103) (not b!463105))
(check-sat b_and!19499 (not b_next!11145))
(get-model)

(declare-fun d!74875 () Bool)

(declare-fun res!277009 () Bool)

(declare-fun e!270404 () Bool)

(assert (=> d!74875 (=> res!277009 e!270404)))

(assert (=> d!74875 (= res!277009 (bvsge #b00000000000000000000000000000000 (size!14235 _keys!1025)))))

(assert (=> d!74875 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!270404)))

(declare-fun b!463137 () Bool)

(declare-fun e!270405 () Bool)

(declare-fun e!270406 () Bool)

(assert (=> b!463137 (= e!270405 e!270406)))

(declare-fun lt!209305 () (_ BitVec 64))

(assert (=> b!463137 (= lt!209305 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13395 0))(
  ( (Unit!13396) )
))
(declare-fun lt!209306 () Unit!13395)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28907 (_ BitVec 64) (_ BitVec 32)) Unit!13395)

(assert (=> b!463137 (= lt!209306 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!209305 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!28907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!463137 (arrayContainsKey!0 _keys!1025 lt!209305 #b00000000000000000000000000000000)))

(declare-fun lt!209307 () Unit!13395)

(assert (=> b!463137 (= lt!209307 lt!209306)))

(declare-fun res!277010 () Bool)

(declare-datatypes ((SeekEntryResult!3531 0))(
  ( (MissingZero!3531 (index!16303 (_ BitVec 32))) (Found!3531 (index!16304 (_ BitVec 32))) (Intermediate!3531 (undefined!4343 Bool) (index!16305 (_ BitVec 32)) (x!43227 (_ BitVec 32))) (Undefined!3531) (MissingVacant!3531 (index!16306 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28907 (_ BitVec 32)) SeekEntryResult!3531)

(assert (=> b!463137 (= res!277010 (= (seekEntryOrOpen!0 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3531 #b00000000000000000000000000000000)))))

(assert (=> b!463137 (=> (not res!277010) (not e!270406))))

(declare-fun b!463138 () Bool)

(assert (=> b!463138 (= e!270404 e!270405)))

(declare-fun c!56562 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!463138 (= c!56562 (validKeyInArray!0 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!463139 () Bool)

(declare-fun call!30209 () Bool)

(assert (=> b!463139 (= e!270405 call!30209)))

(declare-fun bm!30206 () Bool)

(assert (=> bm!30206 (= call!30209 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!463140 () Bool)

(assert (=> b!463140 (= e!270406 call!30209)))

(assert (= (and d!74875 (not res!277009)) b!463138))

(assert (= (and b!463138 c!56562) b!463137))

(assert (= (and b!463138 (not c!56562)) b!463139))

(assert (= (and b!463137 res!277010) b!463140))

(assert (= (or b!463140 b!463139) bm!30206))

(declare-fun m!445805 () Bool)

(assert (=> b!463137 m!445805))

(declare-fun m!445807 () Bool)

(assert (=> b!463137 m!445807))

(declare-fun m!445809 () Bool)

(assert (=> b!463137 m!445809))

(assert (=> b!463137 m!445805))

(declare-fun m!445811 () Bool)

(assert (=> b!463137 m!445811))

(assert (=> b!463138 m!445805))

(assert (=> b!463138 m!445805))

(declare-fun m!445813 () Bool)

(assert (=> b!463138 m!445813))

(declare-fun m!445815 () Bool)

(assert (=> bm!30206 m!445815))

(assert (=> b!463107 d!74875))

(declare-fun b!463165 () Bool)

(declare-fun e!270422 () ListLongMap!7195)

(declare-fun call!30212 () ListLongMap!7195)

(assert (=> b!463165 (= e!270422 call!30212)))

(declare-fun b!463166 () Bool)

(declare-fun e!270427 () ListLongMap!7195)

(assert (=> b!463166 (= e!270427 e!270422)))

(declare-fun c!56573 () Bool)

(assert (=> b!463166 (= c!56573 (validKeyInArray!0 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!463167 () Bool)

(declare-fun res!277022 () Bool)

(declare-fun e!270426 () Bool)

(assert (=> b!463167 (=> (not res!277022) (not e!270426))))

(declare-fun lt!209325 () ListLongMap!7195)

(declare-fun contains!2521 (ListLongMap!7195 (_ BitVec 64)) Bool)

(assert (=> b!463167 (= res!277022 (not (contains!2521 lt!209325 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!463168 () Bool)

(assert (=> b!463168 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14235 _keys!1025)))))

(assert (=> b!463168 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14234 _values!833)))))

(declare-fun e!270423 () Bool)

(declare-fun apply!319 (ListLongMap!7195 (_ BitVec 64)) V!17869)

(declare-fun get!6851 (ValueCell!5943 V!17869) V!17869)

(declare-fun dynLambda!911 (Int (_ BitVec 64)) V!17869)

(assert (=> b!463168 (= e!270423 (= (apply!319 lt!209325 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000)) (get!6851 (select (arr!13882 _values!833) #b00000000000000000000000000000000) (dynLambda!911 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!463169 () Bool)

(declare-fun e!270421 () Bool)

(assert (=> b!463169 (= e!270426 e!270421)))

(declare-fun c!56574 () Bool)

(declare-fun e!270424 () Bool)

(assert (=> b!463169 (= c!56574 e!270424)))

(declare-fun res!277021 () Bool)

(assert (=> b!463169 (=> (not res!277021) (not e!270424))))

(assert (=> b!463169 (= res!277021 (bvslt #b00000000000000000000000000000000 (size!14235 _keys!1025)))))

(declare-fun b!463170 () Bool)

(declare-fun e!270425 () Bool)

(assert (=> b!463170 (= e!270421 e!270425)))

(declare-fun c!56572 () Bool)

(assert (=> b!463170 (= c!56572 (bvslt #b00000000000000000000000000000000 (size!14235 _keys!1025)))))

(declare-fun b!463171 () Bool)

(assert (=> b!463171 (= e!270425 (= lt!209325 (getCurrentListMapNoExtraKeys!1781 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun bm!30209 () Bool)

(assert (=> bm!30209 (= call!30212 (getCurrentListMapNoExtraKeys!1781 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!463173 () Bool)

(declare-fun lt!209326 () Unit!13395)

(declare-fun lt!209323 () Unit!13395)

(assert (=> b!463173 (= lt!209326 lt!209323)))

(declare-fun lt!209324 () (_ BitVec 64))

(declare-fun lt!209327 () V!17869)

(declare-fun lt!209328 () ListLongMap!7195)

(declare-fun lt!209322 () (_ BitVec 64))

(declare-fun +!1611 (ListLongMap!7195 tuple2!8268) ListLongMap!7195)

(assert (=> b!463173 (not (contains!2521 (+!1611 lt!209328 (tuple2!8269 lt!209324 lt!209327)) lt!209322))))

(declare-fun addStillNotContains!154 (ListLongMap!7195 (_ BitVec 64) V!17869 (_ BitVec 64)) Unit!13395)

(assert (=> b!463173 (= lt!209323 (addStillNotContains!154 lt!209328 lt!209324 lt!209327 lt!209322))))

(assert (=> b!463173 (= lt!209322 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!463173 (= lt!209327 (get!6851 (select (arr!13882 _values!833) #b00000000000000000000000000000000) (dynLambda!911 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!463173 (= lt!209324 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!463173 (= lt!209328 call!30212)))

(assert (=> b!463173 (= e!270422 (+!1611 call!30212 (tuple2!8269 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000) (get!6851 (select (arr!13882 _values!833) #b00000000000000000000000000000000) (dynLambda!911 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!463174 () Bool)

(assert (=> b!463174 (= e!270421 e!270423)))

(assert (=> b!463174 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14235 _keys!1025)))))

(declare-fun res!277019 () Bool)

(assert (=> b!463174 (= res!277019 (contains!2521 lt!209325 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!463174 (=> (not res!277019) (not e!270423))))

(declare-fun b!463175 () Bool)

(assert (=> b!463175 (= e!270427 (ListLongMap!7196 Nil!8391))))

(declare-fun b!463176 () Bool)

(assert (=> b!463176 (= e!270424 (validKeyInArray!0 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!463176 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!74877 () Bool)

(assert (=> d!74877 e!270426))

(declare-fun res!277020 () Bool)

(assert (=> d!74877 (=> (not res!277020) (not e!270426))))

(assert (=> d!74877 (= res!277020 (not (contains!2521 lt!209325 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74877 (= lt!209325 e!270427)))

(declare-fun c!56571 () Bool)

(assert (=> d!74877 (= c!56571 (bvsge #b00000000000000000000000000000000 (size!14235 _keys!1025)))))

(assert (=> d!74877 (validMask!0 mask!1365)))

(assert (=> d!74877 (= (getCurrentListMapNoExtraKeys!1781 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!209325)))

(declare-fun b!463172 () Bool)

(declare-fun isEmpty!571 (ListLongMap!7195) Bool)

(assert (=> b!463172 (= e!270425 (isEmpty!571 lt!209325))))

(assert (= (and d!74877 c!56571) b!463175))

(assert (= (and d!74877 (not c!56571)) b!463166))

(assert (= (and b!463166 c!56573) b!463173))

(assert (= (and b!463166 (not c!56573)) b!463165))

(assert (= (or b!463173 b!463165) bm!30209))

(assert (= (and d!74877 res!277020) b!463167))

(assert (= (and b!463167 res!277022) b!463169))

(assert (= (and b!463169 res!277021) b!463176))

(assert (= (and b!463169 c!56574) b!463174))

(assert (= (and b!463169 (not c!56574)) b!463170))

(assert (= (and b!463174 res!277019) b!463168))

(assert (= (and b!463170 c!56572) b!463171))

(assert (= (and b!463170 (not c!56572)) b!463172))

(declare-fun b_lambda!9995 () Bool)

(assert (=> (not b_lambda!9995) (not b!463168)))

(declare-fun t!14350 () Bool)

(declare-fun tb!3911 () Bool)

(assert (=> (and start!41474 (= defaultEntry!841 defaultEntry!841) t!14350) tb!3911))

(declare-fun result!7375 () Bool)

(assert (=> tb!3911 (= result!7375 tp_is_empty!12573)))

(assert (=> b!463168 t!14350))

(declare-fun b_and!19503 () Bool)

(assert (= b_and!19499 (and (=> t!14350 result!7375) b_and!19503)))

(declare-fun b_lambda!9997 () Bool)

(assert (=> (not b_lambda!9997) (not b!463173)))

(assert (=> b!463173 t!14350))

(declare-fun b_and!19505 () Bool)

(assert (= b_and!19503 (and (=> t!14350 result!7375) b_and!19505)))

(declare-fun m!445817 () Bool)

(assert (=> b!463167 m!445817))

(declare-fun m!445819 () Bool)

(assert (=> bm!30209 m!445819))

(declare-fun m!445821 () Bool)

(assert (=> b!463173 m!445821))

(declare-fun m!445823 () Bool)

(assert (=> b!463173 m!445823))

(declare-fun m!445825 () Bool)

(assert (=> b!463173 m!445825))

(declare-fun m!445827 () Bool)

(assert (=> b!463173 m!445827))

(assert (=> b!463173 m!445823))

(assert (=> b!463173 m!445821))

(assert (=> b!463173 m!445805))

(declare-fun m!445829 () Bool)

(assert (=> b!463173 m!445829))

(declare-fun m!445831 () Bool)

(assert (=> b!463173 m!445831))

(declare-fun m!445833 () Bool)

(assert (=> b!463173 m!445833))

(assert (=> b!463173 m!445829))

(declare-fun m!445835 () Bool)

(assert (=> d!74877 m!445835))

(assert (=> d!74877 m!445779))

(assert (=> b!463174 m!445805))

(assert (=> b!463174 m!445805))

(declare-fun m!445837 () Bool)

(assert (=> b!463174 m!445837))

(assert (=> b!463168 m!445821))

(assert (=> b!463168 m!445823))

(assert (=> b!463168 m!445825))

(assert (=> b!463168 m!445823))

(assert (=> b!463168 m!445821))

(assert (=> b!463168 m!445805))

(declare-fun m!445839 () Bool)

(assert (=> b!463168 m!445839))

(assert (=> b!463168 m!445805))

(assert (=> b!463171 m!445819))

(assert (=> b!463176 m!445805))

(assert (=> b!463176 m!445805))

(assert (=> b!463176 m!445813))

(declare-fun m!445841 () Bool)

(assert (=> b!463172 m!445841))

(assert (=> b!463166 m!445805))

(assert (=> b!463166 m!445805))

(assert (=> b!463166 m!445813))

(assert (=> b!463103 d!74877))

(declare-fun d!74879 () Bool)

(assert (=> d!74879 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41474 d!74879))

(declare-fun d!74881 () Bool)

(assert (=> d!74881 (= (array_inv!10014 _keys!1025) (bvsge (size!14235 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41474 d!74881))

(declare-fun d!74883 () Bool)

(assert (=> d!74883 (= (array_inv!10015 _values!833) (bvsge (size!14234 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41474 d!74883))

(declare-fun b!463189 () Bool)

(declare-fun e!270437 () Bool)

(declare-fun e!270438 () Bool)

(assert (=> b!463189 (= e!270437 e!270438)))

(declare-fun res!277029 () Bool)

(assert (=> b!463189 (=> (not res!277029) (not e!270438))))

(declare-fun e!270439 () Bool)

(assert (=> b!463189 (= res!277029 (not e!270439))))

(declare-fun res!277031 () Bool)

(assert (=> b!463189 (=> (not res!277031) (not e!270439))))

(assert (=> b!463189 (= res!277031 (validKeyInArray!0 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!463190 () Bool)

(declare-fun contains!2522 (List!8395 (_ BitVec 64)) Bool)

(assert (=> b!463190 (= e!270439 (contains!2522 Nil!8392 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!463191 () Bool)

(declare-fun e!270436 () Bool)

(assert (=> b!463191 (= e!270438 e!270436)))

(declare-fun c!56577 () Bool)

(assert (=> b!463191 (= c!56577 (validKeyInArray!0 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!463192 () Bool)

(declare-fun call!30215 () Bool)

(assert (=> b!463192 (= e!270436 call!30215)))

(declare-fun d!74885 () Bool)

(declare-fun res!277030 () Bool)

(assert (=> d!74885 (=> res!277030 e!270437)))

(assert (=> d!74885 (= res!277030 (bvsge #b00000000000000000000000000000000 (size!14235 _keys!1025)))))

(assert (=> d!74885 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8392) e!270437)))

(declare-fun bm!30212 () Bool)

(assert (=> bm!30212 (= call!30215 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56577 (Cons!8391 (select (arr!13883 _keys!1025) #b00000000000000000000000000000000) Nil!8392) Nil!8392)))))

(declare-fun b!463193 () Bool)

(assert (=> b!463193 (= e!270436 call!30215)))

(assert (= (and d!74885 (not res!277030)) b!463189))

(assert (= (and b!463189 res!277031) b!463190))

(assert (= (and b!463189 res!277029) b!463191))

(assert (= (and b!463191 c!56577) b!463192))

(assert (= (and b!463191 (not c!56577)) b!463193))

(assert (= (or b!463192 b!463193) bm!30212))

(assert (=> b!463189 m!445805))

(assert (=> b!463189 m!445805))

(assert (=> b!463189 m!445813))

(assert (=> b!463190 m!445805))

(assert (=> b!463190 m!445805))

(declare-fun m!445843 () Bool)

(assert (=> b!463190 m!445843))

(assert (=> b!463191 m!445805))

(assert (=> b!463191 m!445805))

(assert (=> b!463191 m!445813))

(assert (=> bm!30212 m!445805))

(declare-fun m!445845 () Bool)

(assert (=> bm!30212 m!445845))

(assert (=> b!463105 d!74885))

(declare-fun condMapEmpty!20539 () Bool)

(declare-fun mapDefault!20539 () ValueCell!5943)

(assert (=> mapNonEmpty!20533 (= condMapEmpty!20539 (= mapRest!20533 ((as const (Array (_ BitVec 32) ValueCell!5943)) mapDefault!20539)))))

(declare-fun e!270444 () Bool)

(declare-fun mapRes!20539 () Bool)

(assert (=> mapNonEmpty!20533 (= tp!39429 (and e!270444 mapRes!20539))))

(declare-fun mapIsEmpty!20539 () Bool)

(assert (=> mapIsEmpty!20539 mapRes!20539))

(declare-fun mapNonEmpty!20539 () Bool)

(declare-fun tp!39439 () Bool)

(declare-fun e!270445 () Bool)

(assert (=> mapNonEmpty!20539 (= mapRes!20539 (and tp!39439 e!270445))))

(declare-fun mapKey!20539 () (_ BitVec 32))

(declare-fun mapRest!20539 () (Array (_ BitVec 32) ValueCell!5943))

(declare-fun mapValue!20539 () ValueCell!5943)

(assert (=> mapNonEmpty!20539 (= mapRest!20533 (store mapRest!20539 mapKey!20539 mapValue!20539))))

(declare-fun b!463200 () Bool)

(assert (=> b!463200 (= e!270445 tp_is_empty!12573)))

(declare-fun b!463201 () Bool)

(assert (=> b!463201 (= e!270444 tp_is_empty!12573)))

(assert (= (and mapNonEmpty!20533 condMapEmpty!20539) mapIsEmpty!20539))

(assert (= (and mapNonEmpty!20533 (not condMapEmpty!20539)) mapNonEmpty!20539))

(assert (= (and mapNonEmpty!20539 ((_ is ValueCellFull!5943) mapValue!20539)) b!463200))

(assert (= (and mapNonEmpty!20533 ((_ is ValueCellFull!5943) mapDefault!20539)) b!463201))

(declare-fun m!445847 () Bool)

(assert (=> mapNonEmpty!20539 m!445847))

(declare-fun b_lambda!9999 () Bool)

(assert (= b_lambda!9997 (or (and start!41474 b_free!11145) b_lambda!9999)))

(declare-fun b_lambda!10001 () Bool)

(assert (= b_lambda!9995 (or (and start!41474 b_free!11145) b_lambda!10001)))

(check-sat (not b!463176) (not b!463189) (not b!463167) (not bm!30206) (not b!463173) (not b_lambda!10001) (not b!463174) (not b_next!11145) (not b!463168) (not b!463137) (not b_lambda!9999) (not b!463166) (not b!463138) (not bm!30209) b_and!19505 (not b!463171) (not d!74877) (not bm!30212) (not b!463190) (not b!463172) (not mapNonEmpty!20539) tp_is_empty!12573 (not b!463191))
(check-sat b_and!19505 (not b_next!11145))
