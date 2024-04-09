; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41674 () Bool)

(assert start!41674)

(declare-fun b_free!11319 () Bool)

(declare-fun b_next!11319 () Bool)

(assert (=> start!41674 (= b_free!11319 (not b_next!11319))))

(declare-fun tp!39957 () Bool)

(declare-fun b_and!19685 () Bool)

(assert (=> start!41674 (= tp!39957 b_and!19685)))

(declare-fun b!465086 () Bool)

(declare-fun e!271789 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!29233 0))(
  ( (array!29234 (arr!14044 (Array (_ BitVec 32) (_ BitVec 64))) (size!14396 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29233)

(assert (=> b!465086 (= e!271789 (not (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14396 _keys!1025)))))))

(declare-datatypes ((V!18101 0))(
  ( (V!18102 (val!6418 Int)) )
))
(declare-datatypes ((tuple2!8392 0))(
  ( (tuple2!8393 (_1!4206 (_ BitVec 64)) (_2!4206 V!18101)) )
))
(declare-datatypes ((List!8515 0))(
  ( (Nil!8512) (Cons!8511 (h!9367 tuple2!8392) (t!14471 List!8515)) )
))
(declare-datatypes ((ListLongMap!7319 0))(
  ( (ListLongMap!7320 (toList!3675 List!8515)) )
))
(declare-fun lt!210041 () ListLongMap!7319)

(declare-fun lt!210042 () ListLongMap!7319)

(assert (=> b!465086 (= lt!210041 lt!210042)))

(declare-fun minValueBefore!38 () V!18101)

(declare-fun zeroValue!794 () V!18101)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13471 0))(
  ( (Unit!13472) )
))
(declare-fun lt!210043 () Unit!13471)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6030 0))(
  ( (ValueCellFull!6030 (v!8701 V!18101)) (EmptyCell!6030) )
))
(declare-datatypes ((array!29235 0))(
  ( (array!29236 (arr!14045 (Array (_ BitVec 32) ValueCell!6030)) (size!14397 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29235)

(declare-fun minValueAfter!38 () V!18101)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!38 (array!29233 array!29235 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18101 V!18101 V!18101 V!18101 (_ BitVec 32) Int) Unit!13471)

(assert (=> b!465086 (= lt!210043 (lemmaNoChangeToArrayThenSameMapNoExtras!38 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1843 (array!29233 array!29235 (_ BitVec 32) (_ BitVec 32) V!18101 V!18101 (_ BitVec 32) Int) ListLongMap!7319)

(assert (=> b!465086 (= lt!210042 (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465086 (= lt!210041 (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465087 () Bool)

(declare-fun res!278094 () Bool)

(assert (=> b!465087 (=> (not res!278094) (not e!271789))))

(declare-datatypes ((List!8516 0))(
  ( (Nil!8513) (Cons!8512 (h!9368 (_ BitVec 64)) (t!14472 List!8516)) )
))
(declare-fun arrayNoDuplicates!0 (array!29233 (_ BitVec 32) List!8516) Bool)

(assert (=> b!465087 (= res!278094 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8513))))

(declare-fun res!278093 () Bool)

(assert (=> start!41674 (=> (not res!278093) (not e!271789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41674 (= res!278093 (validMask!0 mask!1365))))

(assert (=> start!41674 e!271789))

(declare-fun tp_is_empty!12747 () Bool)

(assert (=> start!41674 tp_is_empty!12747))

(assert (=> start!41674 tp!39957))

(assert (=> start!41674 true))

(declare-fun array_inv!10128 (array!29233) Bool)

(assert (=> start!41674 (array_inv!10128 _keys!1025)))

(declare-fun e!271788 () Bool)

(declare-fun array_inv!10129 (array!29235) Bool)

(assert (=> start!41674 (and (array_inv!10129 _values!833) e!271788)))

(declare-fun b!465088 () Bool)

(declare-fun e!271790 () Bool)

(assert (=> b!465088 (= e!271790 tp_is_empty!12747)))

(declare-fun mapIsEmpty!20800 () Bool)

(declare-fun mapRes!20800 () Bool)

(assert (=> mapIsEmpty!20800 mapRes!20800))

(declare-fun mapNonEmpty!20800 () Bool)

(declare-fun tp!39958 () Bool)

(declare-fun e!271786 () Bool)

(assert (=> mapNonEmpty!20800 (= mapRes!20800 (and tp!39958 e!271786))))

(declare-fun mapKey!20800 () (_ BitVec 32))

(declare-fun mapValue!20800 () ValueCell!6030)

(declare-fun mapRest!20800 () (Array (_ BitVec 32) ValueCell!6030))

(assert (=> mapNonEmpty!20800 (= (arr!14045 _values!833) (store mapRest!20800 mapKey!20800 mapValue!20800))))

(declare-fun b!465089 () Bool)

(assert (=> b!465089 (= e!271786 tp_is_empty!12747)))

(declare-fun b!465090 () Bool)

(declare-fun res!278091 () Bool)

(assert (=> b!465090 (=> (not res!278091) (not e!271789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29233 (_ BitVec 32)) Bool)

(assert (=> b!465090 (= res!278091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465091 () Bool)

(declare-fun res!278092 () Bool)

(assert (=> b!465091 (=> (not res!278092) (not e!271789))))

(assert (=> b!465091 (= res!278092 (and (= (size!14397 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14396 _keys!1025) (size!14397 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465092 () Bool)

(assert (=> b!465092 (= e!271788 (and e!271790 mapRes!20800))))

(declare-fun condMapEmpty!20800 () Bool)

(declare-fun mapDefault!20800 () ValueCell!6030)

(assert (=> b!465092 (= condMapEmpty!20800 (= (arr!14045 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6030)) mapDefault!20800)))))

(assert (= (and start!41674 res!278093) b!465091))

(assert (= (and b!465091 res!278092) b!465090))

(assert (= (and b!465090 res!278091) b!465087))

(assert (= (and b!465087 res!278094) b!465086))

(assert (= (and b!465092 condMapEmpty!20800) mapIsEmpty!20800))

(assert (= (and b!465092 (not condMapEmpty!20800)) mapNonEmpty!20800))

(get-info :version)

(assert (= (and mapNonEmpty!20800 ((_ is ValueCellFull!6030) mapValue!20800)) b!465089))

(assert (= (and b!465092 ((_ is ValueCellFull!6030) mapDefault!20800)) b!465088))

(assert (= start!41674 b!465092))

(declare-fun m!447379 () Bool)

(assert (=> b!465087 m!447379))

(declare-fun m!447381 () Bool)

(assert (=> b!465090 m!447381))

(declare-fun m!447383 () Bool)

(assert (=> b!465086 m!447383))

(declare-fun m!447385 () Bool)

(assert (=> b!465086 m!447385))

(declare-fun m!447387 () Bool)

(assert (=> b!465086 m!447387))

(declare-fun m!447389 () Bool)

(assert (=> mapNonEmpty!20800 m!447389))

(declare-fun m!447391 () Bool)

(assert (=> start!41674 m!447391))

(declare-fun m!447393 () Bool)

(assert (=> start!41674 m!447393))

(declare-fun m!447395 () Bool)

(assert (=> start!41674 m!447395))

(check-sat (not b!465090) (not b!465087) b_and!19685 (not start!41674) (not b_next!11319) (not b!465086) (not mapNonEmpty!20800) tp_is_empty!12747)
(check-sat b_and!19685 (not b_next!11319))
(get-model)

(declare-fun d!74961 () Bool)

(assert (=> d!74961 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41674 d!74961))

(declare-fun d!74963 () Bool)

(assert (=> d!74963 (= (array_inv!10128 _keys!1025) (bvsge (size!14396 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41674 d!74963))

(declare-fun d!74965 () Bool)

(assert (=> d!74965 (= (array_inv!10129 _values!833) (bvsge (size!14397 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41674 d!74965))

(declare-fun d!74967 () Bool)

(assert (=> d!74967 (= (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210055 () Unit!13471)

(declare-fun choose!1346 (array!29233 array!29235 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18101 V!18101 V!18101 V!18101 (_ BitVec 32) Int) Unit!13471)

(assert (=> d!74967 (= lt!210055 (choose!1346 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!74967 (validMask!0 mask!1365)))

(assert (=> d!74967 (= (lemmaNoChangeToArrayThenSameMapNoExtras!38 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!210055)))

(declare-fun bs!14718 () Bool)

(assert (= bs!14718 d!74967))

(assert (=> bs!14718 m!447387))

(assert (=> bs!14718 m!447385))

(declare-fun m!447415 () Bool)

(assert (=> bs!14718 m!447415))

(assert (=> bs!14718 m!447391))

(assert (=> b!465086 d!74967))

(declare-fun d!74969 () Bool)

(declare-fun e!271825 () Bool)

(assert (=> d!74969 e!271825))

(declare-fun res!278116 () Bool)

(assert (=> d!74969 (=> (not res!278116) (not e!271825))))

(declare-fun lt!210071 () ListLongMap!7319)

(declare-fun contains!2525 (ListLongMap!7319 (_ BitVec 64)) Bool)

(assert (=> d!74969 (= res!278116 (not (contains!2525 lt!210071 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!271823 () ListLongMap!7319)

(assert (=> d!74969 (= lt!210071 e!271823)))

(declare-fun c!56610 () Bool)

(assert (=> d!74969 (= c!56610 (bvsge #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(assert (=> d!74969 (validMask!0 mask!1365)))

(assert (=> d!74969 (= (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!210071)))

(declare-fun b!465138 () Bool)

(declare-fun e!271824 () Bool)

(declare-fun e!271826 () Bool)

(assert (=> b!465138 (= e!271824 e!271826)))

(declare-fun c!56611 () Bool)

(assert (=> b!465138 (= c!56611 (bvslt #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(declare-fun b!465139 () Bool)

(declare-fun e!271821 () Bool)

(assert (=> b!465139 (= e!271824 e!271821)))

(assert (=> b!465139 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(declare-fun res!278115 () Bool)

(assert (=> b!465139 (= res!278115 (contains!2525 lt!210071 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!465139 (=> (not res!278115) (not e!271821))))

(declare-fun b!465140 () Bool)

(assert (=> b!465140 (= e!271826 (= lt!210071 (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!465141 () Bool)

(declare-fun e!271820 () ListLongMap!7319)

(assert (=> b!465141 (= e!271823 e!271820)))

(declare-fun c!56608 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!465141 (= c!56608 (validKeyInArray!0 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465142 () Bool)

(assert (=> b!465142 (= e!271825 e!271824)))

(declare-fun c!56609 () Bool)

(declare-fun e!271822 () Bool)

(assert (=> b!465142 (= c!56609 e!271822)))

(declare-fun res!278118 () Bool)

(assert (=> b!465142 (=> (not res!278118) (not e!271822))))

(assert (=> b!465142 (= res!278118 (bvslt #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(declare-fun b!465143 () Bool)

(declare-fun lt!210073 () Unit!13471)

(declare-fun lt!210070 () Unit!13471)

(assert (=> b!465143 (= lt!210073 lt!210070)))

(declare-fun lt!210076 () (_ BitVec 64))

(declare-fun lt!210074 () V!18101)

(declare-fun lt!210072 () (_ BitVec 64))

(declare-fun lt!210075 () ListLongMap!7319)

(declare-fun +!1613 (ListLongMap!7319 tuple2!8392) ListLongMap!7319)

(assert (=> b!465143 (not (contains!2525 (+!1613 lt!210075 (tuple2!8393 lt!210076 lt!210074)) lt!210072))))

(declare-fun addStillNotContains!156 (ListLongMap!7319 (_ BitVec 64) V!18101 (_ BitVec 64)) Unit!13471)

(assert (=> b!465143 (= lt!210070 (addStillNotContains!156 lt!210075 lt!210076 lt!210074 lt!210072))))

(assert (=> b!465143 (= lt!210072 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!6911 (ValueCell!6030 V!18101) V!18101)

(declare-fun dynLambda!913 (Int (_ BitVec 64)) V!18101)

(assert (=> b!465143 (= lt!210074 (get!6911 (select (arr!14045 _values!833) #b00000000000000000000000000000000) (dynLambda!913 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!465143 (= lt!210076 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30228 () ListLongMap!7319)

(assert (=> b!465143 (= lt!210075 call!30228)))

(assert (=> b!465143 (= e!271820 (+!1613 call!30228 (tuple2!8393 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000) (get!6911 (select (arr!14045 _values!833) #b00000000000000000000000000000000) (dynLambda!913 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!465144 () Bool)

(assert (=> b!465144 (= e!271820 call!30228)))

(declare-fun b!465145 () Bool)

(assert (=> b!465145 (= e!271823 (ListLongMap!7320 Nil!8512))))

(declare-fun b!465146 () Bool)

(assert (=> b!465146 (= e!271822 (validKeyInArray!0 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!465146 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!465147 () Bool)

(declare-fun res!278117 () Bool)

(assert (=> b!465147 (=> (not res!278117) (not e!271825))))

(assert (=> b!465147 (= res!278117 (not (contains!2525 lt!210071 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!465148 () Bool)

(declare-fun isEmpty!573 (ListLongMap!7319) Bool)

(assert (=> b!465148 (= e!271826 (isEmpty!573 lt!210071))))

(declare-fun b!465149 () Bool)

(assert (=> b!465149 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(assert (=> b!465149 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14397 _values!833)))))

(declare-fun apply!321 (ListLongMap!7319 (_ BitVec 64)) V!18101)

(assert (=> b!465149 (= e!271821 (= (apply!321 lt!210071 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)) (get!6911 (select (arr!14045 _values!833) #b00000000000000000000000000000000) (dynLambda!913 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!30225 () Bool)

(assert (=> bm!30225 (= call!30228 (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(assert (= (and d!74969 c!56610) b!465145))

(assert (= (and d!74969 (not c!56610)) b!465141))

(assert (= (and b!465141 c!56608) b!465143))

(assert (= (and b!465141 (not c!56608)) b!465144))

(assert (= (or b!465143 b!465144) bm!30225))

(assert (= (and d!74969 res!278116) b!465147))

(assert (= (and b!465147 res!278117) b!465142))

(assert (= (and b!465142 res!278118) b!465146))

(assert (= (and b!465142 c!56609) b!465139))

(assert (= (and b!465142 (not c!56609)) b!465138))

(assert (= (and b!465139 res!278115) b!465149))

(assert (= (and b!465138 c!56611) b!465140))

(assert (= (and b!465138 (not c!56611)) b!465148))

(declare-fun b_lambda!10019 () Bool)

(assert (=> (not b_lambda!10019) (not b!465143)))

(declare-fun t!14475 () Bool)

(declare-fun tb!3915 () Bool)

(assert (=> (and start!41674 (= defaultEntry!841 defaultEntry!841) t!14475) tb!3915))

(declare-fun result!7387 () Bool)

(assert (=> tb!3915 (= result!7387 tp_is_empty!12747)))

(assert (=> b!465143 t!14475))

(declare-fun b_and!19689 () Bool)

(assert (= b_and!19685 (and (=> t!14475 result!7387) b_and!19689)))

(declare-fun b_lambda!10021 () Bool)

(assert (=> (not b_lambda!10021) (not b!465149)))

(assert (=> b!465149 t!14475))

(declare-fun b_and!19691 () Bool)

(assert (= b_and!19689 (and (=> t!14475 result!7387) b_and!19691)))

(declare-fun m!447417 () Bool)

(assert (=> b!465143 m!447417))

(declare-fun m!447419 () Bool)

(assert (=> b!465143 m!447419))

(declare-fun m!447421 () Bool)

(assert (=> b!465143 m!447421))

(declare-fun m!447423 () Bool)

(assert (=> b!465143 m!447423))

(assert (=> b!465143 m!447419))

(declare-fun m!447425 () Bool)

(assert (=> b!465143 m!447425))

(assert (=> b!465143 m!447421))

(declare-fun m!447427 () Bool)

(assert (=> b!465143 m!447427))

(declare-fun m!447429 () Bool)

(assert (=> b!465143 m!447429))

(assert (=> b!465143 m!447423))

(declare-fun m!447431 () Bool)

(assert (=> b!465143 m!447431))

(declare-fun m!447433 () Bool)

(assert (=> b!465140 m!447433))

(assert (=> b!465149 m!447417))

(assert (=> b!465149 m!447419))

(assert (=> b!465149 m!447417))

(declare-fun m!447435 () Bool)

(assert (=> b!465149 m!447435))

(assert (=> b!465149 m!447423))

(assert (=> b!465149 m!447419))

(assert (=> b!465149 m!447425))

(assert (=> b!465149 m!447423))

(assert (=> bm!30225 m!447433))

(assert (=> b!465141 m!447417))

(assert (=> b!465141 m!447417))

(declare-fun m!447437 () Bool)

(assert (=> b!465141 m!447437))

(declare-fun m!447439 () Bool)

(assert (=> d!74969 m!447439))

(assert (=> d!74969 m!447391))

(assert (=> b!465146 m!447417))

(assert (=> b!465146 m!447417))

(assert (=> b!465146 m!447437))

(declare-fun m!447441 () Bool)

(assert (=> b!465147 m!447441))

(declare-fun m!447443 () Bool)

(assert (=> b!465148 m!447443))

(assert (=> b!465139 m!447417))

(assert (=> b!465139 m!447417))

(declare-fun m!447445 () Bool)

(assert (=> b!465139 m!447445))

(assert (=> b!465086 d!74969))

(declare-fun d!74971 () Bool)

(declare-fun e!271832 () Bool)

(assert (=> d!74971 e!271832))

(declare-fun res!278120 () Bool)

(assert (=> d!74971 (=> (not res!278120) (not e!271832))))

(declare-fun lt!210078 () ListLongMap!7319)

(assert (=> d!74971 (= res!278120 (not (contains!2525 lt!210078 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!271830 () ListLongMap!7319)

(assert (=> d!74971 (= lt!210078 e!271830)))

(declare-fun c!56614 () Bool)

(assert (=> d!74971 (= c!56614 (bvsge #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(assert (=> d!74971 (validMask!0 mask!1365)))

(assert (=> d!74971 (= (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!210078)))

(declare-fun b!465152 () Bool)

(declare-fun e!271831 () Bool)

(declare-fun e!271833 () Bool)

(assert (=> b!465152 (= e!271831 e!271833)))

(declare-fun c!56615 () Bool)

(assert (=> b!465152 (= c!56615 (bvslt #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(declare-fun b!465153 () Bool)

(declare-fun e!271828 () Bool)

(assert (=> b!465153 (= e!271831 e!271828)))

(assert (=> b!465153 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(declare-fun res!278119 () Bool)

(assert (=> b!465153 (= res!278119 (contains!2525 lt!210078 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!465153 (=> (not res!278119) (not e!271828))))

(declare-fun b!465154 () Bool)

(assert (=> b!465154 (= e!271833 (= lt!210078 (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!465155 () Bool)

(declare-fun e!271827 () ListLongMap!7319)

(assert (=> b!465155 (= e!271830 e!271827)))

(declare-fun c!56612 () Bool)

(assert (=> b!465155 (= c!56612 (validKeyInArray!0 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465156 () Bool)

(assert (=> b!465156 (= e!271832 e!271831)))

(declare-fun c!56613 () Bool)

(declare-fun e!271829 () Bool)

(assert (=> b!465156 (= c!56613 e!271829)))

(declare-fun res!278122 () Bool)

(assert (=> b!465156 (=> (not res!278122) (not e!271829))))

(assert (=> b!465156 (= res!278122 (bvslt #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(declare-fun b!465157 () Bool)

(declare-fun lt!210080 () Unit!13471)

(declare-fun lt!210077 () Unit!13471)

(assert (=> b!465157 (= lt!210080 lt!210077)))

(declare-fun lt!210079 () (_ BitVec 64))

(declare-fun lt!210082 () ListLongMap!7319)

(declare-fun lt!210083 () (_ BitVec 64))

(declare-fun lt!210081 () V!18101)

(assert (=> b!465157 (not (contains!2525 (+!1613 lt!210082 (tuple2!8393 lt!210083 lt!210081)) lt!210079))))

(assert (=> b!465157 (= lt!210077 (addStillNotContains!156 lt!210082 lt!210083 lt!210081 lt!210079))))

(assert (=> b!465157 (= lt!210079 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!465157 (= lt!210081 (get!6911 (select (arr!14045 _values!833) #b00000000000000000000000000000000) (dynLambda!913 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!465157 (= lt!210083 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30229 () ListLongMap!7319)

(assert (=> b!465157 (= lt!210082 call!30229)))

(assert (=> b!465157 (= e!271827 (+!1613 call!30229 (tuple2!8393 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000) (get!6911 (select (arr!14045 _values!833) #b00000000000000000000000000000000) (dynLambda!913 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!465158 () Bool)

(assert (=> b!465158 (= e!271827 call!30229)))

(declare-fun b!465159 () Bool)

(assert (=> b!465159 (= e!271830 (ListLongMap!7320 Nil!8512))))

(declare-fun b!465160 () Bool)

(assert (=> b!465160 (= e!271829 (validKeyInArray!0 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!465160 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!465161 () Bool)

(declare-fun res!278121 () Bool)

(assert (=> b!465161 (=> (not res!278121) (not e!271832))))

(assert (=> b!465161 (= res!278121 (not (contains!2525 lt!210078 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!465162 () Bool)

(assert (=> b!465162 (= e!271833 (isEmpty!573 lt!210078))))

(declare-fun b!465163 () Bool)

(assert (=> b!465163 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(assert (=> b!465163 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14397 _values!833)))))

(assert (=> b!465163 (= e!271828 (= (apply!321 lt!210078 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)) (get!6911 (select (arr!14045 _values!833) #b00000000000000000000000000000000) (dynLambda!913 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!30226 () Bool)

(assert (=> bm!30226 (= call!30229 (getCurrentListMapNoExtraKeys!1843 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(assert (= (and d!74971 c!56614) b!465159))

(assert (= (and d!74971 (not c!56614)) b!465155))

(assert (= (and b!465155 c!56612) b!465157))

(assert (= (and b!465155 (not c!56612)) b!465158))

(assert (= (or b!465157 b!465158) bm!30226))

(assert (= (and d!74971 res!278120) b!465161))

(assert (= (and b!465161 res!278121) b!465156))

(assert (= (and b!465156 res!278122) b!465160))

(assert (= (and b!465156 c!56613) b!465153))

(assert (= (and b!465156 (not c!56613)) b!465152))

(assert (= (and b!465153 res!278119) b!465163))

(assert (= (and b!465152 c!56615) b!465154))

(assert (= (and b!465152 (not c!56615)) b!465162))

(declare-fun b_lambda!10023 () Bool)

(assert (=> (not b_lambda!10023) (not b!465157)))

(assert (=> b!465157 t!14475))

(declare-fun b_and!19693 () Bool)

(assert (= b_and!19691 (and (=> t!14475 result!7387) b_and!19693)))

(declare-fun b_lambda!10025 () Bool)

(assert (=> (not b_lambda!10025) (not b!465163)))

(assert (=> b!465163 t!14475))

(declare-fun b_and!19695 () Bool)

(assert (= b_and!19693 (and (=> t!14475 result!7387) b_and!19695)))

(assert (=> b!465157 m!447417))

(assert (=> b!465157 m!447419))

(declare-fun m!447447 () Bool)

(assert (=> b!465157 m!447447))

(assert (=> b!465157 m!447423))

(assert (=> b!465157 m!447419))

(assert (=> b!465157 m!447425))

(assert (=> b!465157 m!447447))

(declare-fun m!447449 () Bool)

(assert (=> b!465157 m!447449))

(declare-fun m!447451 () Bool)

(assert (=> b!465157 m!447451))

(assert (=> b!465157 m!447423))

(declare-fun m!447453 () Bool)

(assert (=> b!465157 m!447453))

(declare-fun m!447455 () Bool)

(assert (=> b!465154 m!447455))

(assert (=> b!465163 m!447417))

(assert (=> b!465163 m!447419))

(assert (=> b!465163 m!447417))

(declare-fun m!447457 () Bool)

(assert (=> b!465163 m!447457))

(assert (=> b!465163 m!447423))

(assert (=> b!465163 m!447419))

(assert (=> b!465163 m!447425))

(assert (=> b!465163 m!447423))

(assert (=> bm!30226 m!447455))

(assert (=> b!465155 m!447417))

(assert (=> b!465155 m!447417))

(assert (=> b!465155 m!447437))

(declare-fun m!447459 () Bool)

(assert (=> d!74971 m!447459))

(assert (=> d!74971 m!447391))

(assert (=> b!465160 m!447417))

(assert (=> b!465160 m!447417))

(assert (=> b!465160 m!447437))

(declare-fun m!447461 () Bool)

(assert (=> b!465161 m!447461))

(declare-fun m!447463 () Bool)

(assert (=> b!465162 m!447463))

(assert (=> b!465153 m!447417))

(assert (=> b!465153 m!447417))

(declare-fun m!447465 () Bool)

(assert (=> b!465153 m!447465))

(assert (=> b!465086 d!74971))

(declare-fun b!465172 () Bool)

(declare-fun e!271841 () Bool)

(declare-fun e!271842 () Bool)

(assert (=> b!465172 (= e!271841 e!271842)))

(declare-fun c!56618 () Bool)

(assert (=> b!465172 (= c!56618 (validKeyInArray!0 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30229 () Bool)

(declare-fun call!30232 () Bool)

(assert (=> bm!30229 (= call!30232 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!465174 () Bool)

(assert (=> b!465174 (= e!271842 call!30232)))

(declare-fun b!465175 () Bool)

(declare-fun e!271840 () Bool)

(assert (=> b!465175 (= e!271842 e!271840)))

(declare-fun lt!210090 () (_ BitVec 64))

(assert (=> b!465175 (= lt!210090 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!210092 () Unit!13471)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29233 (_ BitVec 64) (_ BitVec 32)) Unit!13471)

(assert (=> b!465175 (= lt!210092 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!210090 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!465175 (arrayContainsKey!0 _keys!1025 lt!210090 #b00000000000000000000000000000000)))

(declare-fun lt!210091 () Unit!13471)

(assert (=> b!465175 (= lt!210091 lt!210092)))

(declare-fun res!278128 () Bool)

(declare-datatypes ((SeekEntryResult!3533 0))(
  ( (MissingZero!3533 (index!16311 (_ BitVec 32))) (Found!3533 (index!16312 (_ BitVec 32))) (Intermediate!3533 (undefined!4345 Bool) (index!16313 (_ BitVec 32)) (x!43483 (_ BitVec 32))) (Undefined!3533) (MissingVacant!3533 (index!16314 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29233 (_ BitVec 32)) SeekEntryResult!3533)

(assert (=> b!465175 (= res!278128 (= (seekEntryOrOpen!0 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3533 #b00000000000000000000000000000000)))))

(assert (=> b!465175 (=> (not res!278128) (not e!271840))))

(declare-fun d!74973 () Bool)

(declare-fun res!278127 () Bool)

(assert (=> d!74973 (=> res!278127 e!271841)))

(assert (=> d!74973 (= res!278127 (bvsge #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(assert (=> d!74973 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!271841)))

(declare-fun b!465173 () Bool)

(assert (=> b!465173 (= e!271840 call!30232)))

(assert (= (and d!74973 (not res!278127)) b!465172))

(assert (= (and b!465172 c!56618) b!465175))

(assert (= (and b!465172 (not c!56618)) b!465174))

(assert (= (and b!465175 res!278128) b!465173))

(assert (= (or b!465173 b!465174) bm!30229))

(assert (=> b!465172 m!447417))

(assert (=> b!465172 m!447417))

(assert (=> b!465172 m!447437))

(declare-fun m!447467 () Bool)

(assert (=> bm!30229 m!447467))

(assert (=> b!465175 m!447417))

(declare-fun m!447469 () Bool)

(assert (=> b!465175 m!447469))

(declare-fun m!447471 () Bool)

(assert (=> b!465175 m!447471))

(assert (=> b!465175 m!447417))

(declare-fun m!447473 () Bool)

(assert (=> b!465175 m!447473))

(assert (=> b!465090 d!74973))

(declare-fun d!74975 () Bool)

(declare-fun res!278136 () Bool)

(declare-fun e!271851 () Bool)

(assert (=> d!74975 (=> res!278136 e!271851)))

(assert (=> d!74975 (= res!278136 (bvsge #b00000000000000000000000000000000 (size!14396 _keys!1025)))))

(assert (=> d!74975 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8513) e!271851)))

(declare-fun bm!30232 () Bool)

(declare-fun call!30235 () Bool)

(declare-fun c!56621 () Bool)

(assert (=> bm!30232 (= call!30235 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56621 (Cons!8512 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000) Nil!8513) Nil!8513)))))

(declare-fun b!465186 () Bool)

(declare-fun e!271854 () Bool)

(assert (=> b!465186 (= e!271851 e!271854)))

(declare-fun res!278135 () Bool)

(assert (=> b!465186 (=> (not res!278135) (not e!271854))))

(declare-fun e!271853 () Bool)

(assert (=> b!465186 (= res!278135 (not e!271853))))

(declare-fun res!278137 () Bool)

(assert (=> b!465186 (=> (not res!278137) (not e!271853))))

(assert (=> b!465186 (= res!278137 (validKeyInArray!0 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465187 () Bool)

(declare-fun e!271852 () Bool)

(assert (=> b!465187 (= e!271854 e!271852)))

(assert (=> b!465187 (= c!56621 (validKeyInArray!0 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465188 () Bool)

(assert (=> b!465188 (= e!271852 call!30235)))

(declare-fun b!465189 () Bool)

(declare-fun contains!2526 (List!8516 (_ BitVec 64)) Bool)

(assert (=> b!465189 (= e!271853 (contains!2526 Nil!8513 (select (arr!14044 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465190 () Bool)

(assert (=> b!465190 (= e!271852 call!30235)))

(assert (= (and d!74975 (not res!278136)) b!465186))

(assert (= (and b!465186 res!278137) b!465189))

(assert (= (and b!465186 res!278135) b!465187))

(assert (= (and b!465187 c!56621) b!465190))

(assert (= (and b!465187 (not c!56621)) b!465188))

(assert (= (or b!465190 b!465188) bm!30232))

(assert (=> bm!30232 m!447417))

(declare-fun m!447475 () Bool)

(assert (=> bm!30232 m!447475))

(assert (=> b!465186 m!447417))

(assert (=> b!465186 m!447417))

(assert (=> b!465186 m!447437))

(assert (=> b!465187 m!447417))

(assert (=> b!465187 m!447417))

(assert (=> b!465187 m!447437))

(assert (=> b!465189 m!447417))

(assert (=> b!465189 m!447417))

(declare-fun m!447477 () Bool)

(assert (=> b!465189 m!447477))

(assert (=> b!465087 d!74975))

(declare-fun mapIsEmpty!20806 () Bool)

(declare-fun mapRes!20806 () Bool)

(assert (=> mapIsEmpty!20806 mapRes!20806))

(declare-fun condMapEmpty!20806 () Bool)

(declare-fun mapDefault!20806 () ValueCell!6030)

(assert (=> mapNonEmpty!20800 (= condMapEmpty!20806 (= mapRest!20800 ((as const (Array (_ BitVec 32) ValueCell!6030)) mapDefault!20806)))))

(declare-fun e!271859 () Bool)

(assert (=> mapNonEmpty!20800 (= tp!39958 (and e!271859 mapRes!20806))))

(declare-fun b!465198 () Bool)

(assert (=> b!465198 (= e!271859 tp_is_empty!12747)))

(declare-fun mapNonEmpty!20806 () Bool)

(declare-fun tp!39967 () Bool)

(declare-fun e!271860 () Bool)

(assert (=> mapNonEmpty!20806 (= mapRes!20806 (and tp!39967 e!271860))))

(declare-fun mapValue!20806 () ValueCell!6030)

(declare-fun mapKey!20806 () (_ BitVec 32))

(declare-fun mapRest!20806 () (Array (_ BitVec 32) ValueCell!6030))

(assert (=> mapNonEmpty!20806 (= mapRest!20800 (store mapRest!20806 mapKey!20806 mapValue!20806))))

(declare-fun b!465197 () Bool)

(assert (=> b!465197 (= e!271860 tp_is_empty!12747)))

(assert (= (and mapNonEmpty!20800 condMapEmpty!20806) mapIsEmpty!20806))

(assert (= (and mapNonEmpty!20800 (not condMapEmpty!20806)) mapNonEmpty!20806))

(assert (= (and mapNonEmpty!20806 ((_ is ValueCellFull!6030) mapValue!20806)) b!465197))

(assert (= (and mapNonEmpty!20800 ((_ is ValueCellFull!6030) mapDefault!20806)) b!465198))

(declare-fun m!447479 () Bool)

(assert (=> mapNonEmpty!20806 m!447479))

(declare-fun b_lambda!10027 () Bool)

(assert (= b_lambda!10021 (or (and start!41674 b_free!11319) b_lambda!10027)))

(declare-fun b_lambda!10029 () Bool)

(assert (= b_lambda!10025 (or (and start!41674 b_free!11319) b_lambda!10029)))

(declare-fun b_lambda!10031 () Bool)

(assert (= b_lambda!10023 (or (and start!41674 b_free!11319) b_lambda!10031)))

(declare-fun b_lambda!10033 () Bool)

(assert (= b_lambda!10019 (or (and start!41674 b_free!11319) b_lambda!10033)))

(check-sat (not b!465148) (not bm!30226) (not b!465143) (not b!465186) (not b!465162) (not b!465161) (not b!465172) (not b_next!11319) (not d!74967) (not b!465140) (not b!465141) (not d!74969) (not d!74971) (not bm!30225) (not b_lambda!10031) (not b!465189) (not b!465139) b_and!19695 (not b!465146) (not b!465147) (not b!465160) (not b_lambda!10029) (not b!465153) (not b_lambda!10033) (not b!465149) (not b!465157) (not b!465155) tp_is_empty!12747 (not b!465175) (not mapNonEmpty!20806) (not b_lambda!10027) (not b!465187) (not bm!30232) (not b!465154) (not bm!30229) (not b!465163))
(check-sat b_and!19695 (not b_next!11319))
