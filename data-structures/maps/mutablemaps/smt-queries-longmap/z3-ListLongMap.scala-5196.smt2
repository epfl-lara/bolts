; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70202 () Bool)

(assert start!70202)

(declare-fun b_free!12585 () Bool)

(declare-fun b_next!12585 () Bool)

(assert (=> start!70202 (= b_free!12585 (not b_next!12585))))

(declare-fun tp!44473 () Bool)

(declare-fun b_and!21383 () Bool)

(assert (=> start!70202 (= tp!44473 b_and!21383)))

(declare-fun b!815223 () Bool)

(declare-fun e!452068 () Bool)

(declare-fun e!452069 () Bool)

(declare-fun mapRes!23026 () Bool)

(assert (=> b!815223 (= e!452068 (and e!452069 mapRes!23026))))

(declare-fun condMapEmpty!23026 () Bool)

(declare-datatypes ((V!24061 0))(
  ( (V!24062 (val!7195 Int)) )
))
(declare-datatypes ((ValueCell!6732 0))(
  ( (ValueCellFull!6732 (v!9618 V!24061)) (EmptyCell!6732) )
))
(declare-datatypes ((array!44778 0))(
  ( (array!44779 (arr!21444 (Array (_ BitVec 32) ValueCell!6732)) (size!21865 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44778)

(declare-fun mapDefault!23026 () ValueCell!6732)

(assert (=> b!815223 (= condMapEmpty!23026 (= (arr!21444 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6732)) mapDefault!23026)))))

(declare-fun mapNonEmpty!23026 () Bool)

(declare-fun tp!44472 () Bool)

(declare-fun e!452066 () Bool)

(assert (=> mapNonEmpty!23026 (= mapRes!23026 (and tp!44472 e!452066))))

(declare-fun mapValue!23026 () ValueCell!6732)

(declare-fun mapKey!23026 () (_ BitVec 32))

(declare-fun mapRest!23026 () (Array (_ BitVec 32) ValueCell!6732))

(assert (=> mapNonEmpty!23026 (= (arr!21444 _values!788) (store mapRest!23026 mapKey!23026 mapValue!23026))))

(declare-fun b!815224 () Bool)

(declare-fun tp_is_empty!14295 () Bool)

(assert (=> b!815224 (= e!452066 tp_is_empty!14295)))

(declare-fun res!556812 () Bool)

(declare-fun e!452067 () Bool)

(assert (=> start!70202 (=> (not res!556812) (not e!452067))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70202 (= res!556812 (validMask!0 mask!1312))))

(assert (=> start!70202 e!452067))

(assert (=> start!70202 tp_is_empty!14295))

(declare-datatypes ((array!44780 0))(
  ( (array!44781 (arr!21445 (Array (_ BitVec 32) (_ BitVec 64))) (size!21866 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44780)

(declare-fun array_inv!17137 (array!44780) Bool)

(assert (=> start!70202 (array_inv!17137 _keys!976)))

(assert (=> start!70202 true))

(declare-fun array_inv!17138 (array!44778) Bool)

(assert (=> start!70202 (and (array_inv!17138 _values!788) e!452068)))

(assert (=> start!70202 tp!44473))

(declare-fun b!815225 () Bool)

(declare-fun res!556809 () Bool)

(assert (=> b!815225 (=> (not res!556809) (not e!452067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44780 (_ BitVec 32)) Bool)

(assert (=> b!815225 (= res!556809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815226 () Bool)

(declare-fun res!556810 () Bool)

(assert (=> b!815226 (=> (not res!556810) (not e!452067))))

(declare-datatypes ((List!15322 0))(
  ( (Nil!15319) (Cons!15318 (h!16447 (_ BitVec 64)) (t!21649 List!15322)) )
))
(declare-fun arrayNoDuplicates!0 (array!44780 (_ BitVec 32) List!15322) Bool)

(assert (=> b!815226 (= res!556810 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15319))))

(declare-fun mapIsEmpty!23026 () Bool)

(assert (=> mapIsEmpty!23026 mapRes!23026))

(declare-fun b!815227 () Bool)

(assert (=> b!815227 (= e!452069 tp_is_empty!14295)))

(declare-fun b!815228 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815228 (= e!452067 (not (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!21866 _keys!976)))))))

(declare-datatypes ((tuple2!9450 0))(
  ( (tuple2!9451 (_1!4735 (_ BitVec 64)) (_2!4735 V!24061)) )
))
(declare-datatypes ((List!15323 0))(
  ( (Nil!15320) (Cons!15319 (h!16448 tuple2!9450) (t!21650 List!15323)) )
))
(declare-datatypes ((ListLongMap!8287 0))(
  ( (ListLongMap!8288 (toList!4159 List!15323)) )
))
(declare-fun lt!364971 () ListLongMap!8287)

(declare-fun lt!364969 () ListLongMap!8287)

(assert (=> b!815228 (= lt!364971 lt!364969)))

(declare-fun zeroValueBefore!34 () V!24061)

(declare-fun zeroValueAfter!34 () V!24061)

(declare-fun minValue!754 () V!24061)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27774 0))(
  ( (Unit!27775) )
))
(declare-fun lt!364970 () Unit!27774)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!324 (array!44780 array!44778 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24061 V!24061 V!24061 V!24061 (_ BitVec 32) Int) Unit!27774)

(assert (=> b!815228 (= lt!364970 (lemmaNoChangeToArrayThenSameMapNoExtras!324 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2208 (array!44780 array!44778 (_ BitVec 32) (_ BitVec 32) V!24061 V!24061 (_ BitVec 32) Int) ListLongMap!8287)

(assert (=> b!815228 (= lt!364969 (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815228 (= lt!364971 (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815229 () Bool)

(declare-fun res!556811 () Bool)

(assert (=> b!815229 (=> (not res!556811) (not e!452067))))

(assert (=> b!815229 (= res!556811 (and (= (size!21865 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21866 _keys!976) (size!21865 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70202 res!556812) b!815229))

(assert (= (and b!815229 res!556811) b!815225))

(assert (= (and b!815225 res!556809) b!815226))

(assert (= (and b!815226 res!556810) b!815228))

(assert (= (and b!815223 condMapEmpty!23026) mapIsEmpty!23026))

(assert (= (and b!815223 (not condMapEmpty!23026)) mapNonEmpty!23026))

(get-info :version)

(assert (= (and mapNonEmpty!23026 ((_ is ValueCellFull!6732) mapValue!23026)) b!815224))

(assert (= (and b!815223 ((_ is ValueCellFull!6732) mapDefault!23026)) b!815227))

(assert (= start!70202 b!815223))

(declare-fun m!756989 () Bool)

(assert (=> b!815228 m!756989))

(declare-fun m!756991 () Bool)

(assert (=> b!815228 m!756991))

(declare-fun m!756993 () Bool)

(assert (=> b!815228 m!756993))

(declare-fun m!756995 () Bool)

(assert (=> start!70202 m!756995))

(declare-fun m!756997 () Bool)

(assert (=> start!70202 m!756997))

(declare-fun m!756999 () Bool)

(assert (=> start!70202 m!756999))

(declare-fun m!757001 () Bool)

(assert (=> mapNonEmpty!23026 m!757001))

(declare-fun m!757003 () Bool)

(assert (=> b!815226 m!757003))

(declare-fun m!757005 () Bool)

(assert (=> b!815225 m!757005))

(check-sat (not b!815225) (not b!815228) (not b!815226) b_and!21383 tp_is_empty!14295 (not mapNonEmpty!23026) (not start!70202) (not b_next!12585))
(check-sat b_and!21383 (not b_next!12585))
(get-model)

(declare-fun b!815259 () Bool)

(declare-fun e!452093 () Bool)

(declare-fun call!35512 () Bool)

(assert (=> b!815259 (= e!452093 call!35512)))

(declare-fun b!815260 () Bool)

(declare-fun e!452094 () Bool)

(assert (=> b!815260 (= e!452094 e!452093)))

(declare-fun c!88864 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!815260 (= c!88864 (validKeyInArray!0 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104391 () Bool)

(declare-fun res!556830 () Bool)

(assert (=> d!104391 (=> res!556830 e!452094)))

(assert (=> d!104391 (= res!556830 (bvsge #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(assert (=> d!104391 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!452094)))

(declare-fun b!815261 () Bool)

(declare-fun e!452092 () Bool)

(assert (=> b!815261 (= e!452092 call!35512)))

(declare-fun bm!35509 () Bool)

(assert (=> bm!35509 (= call!35512 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!815262 () Bool)

(assert (=> b!815262 (= e!452093 e!452092)))

(declare-fun lt!364987 () (_ BitVec 64))

(assert (=> b!815262 (= lt!364987 (select (arr!21445 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!364988 () Unit!27774)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44780 (_ BitVec 64) (_ BitVec 32)) Unit!27774)

(assert (=> b!815262 (= lt!364988 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!364987 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!815262 (arrayContainsKey!0 _keys!976 lt!364987 #b00000000000000000000000000000000)))

(declare-fun lt!364989 () Unit!27774)

(assert (=> b!815262 (= lt!364989 lt!364988)))

(declare-fun res!556829 () Bool)

(declare-datatypes ((SeekEntryResult!8710 0))(
  ( (MissingZero!8710 (index!37210 (_ BitVec 32))) (Found!8710 (index!37211 (_ BitVec 32))) (Intermediate!8710 (undefined!9522 Bool) (index!37212 (_ BitVec 32)) (x!68599 (_ BitVec 32))) (Undefined!8710) (MissingVacant!8710 (index!37213 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44780 (_ BitVec 32)) SeekEntryResult!8710)

(assert (=> b!815262 (= res!556829 (= (seekEntryOrOpen!0 (select (arr!21445 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8710 #b00000000000000000000000000000000)))))

(assert (=> b!815262 (=> (not res!556829) (not e!452092))))

(assert (= (and d!104391 (not res!556830)) b!815260))

(assert (= (and b!815260 c!88864) b!815262))

(assert (= (and b!815260 (not c!88864)) b!815259))

(assert (= (and b!815262 res!556829) b!815261))

(assert (= (or b!815261 b!815259) bm!35509))

(declare-fun m!757025 () Bool)

(assert (=> b!815260 m!757025))

(assert (=> b!815260 m!757025))

(declare-fun m!757027 () Bool)

(assert (=> b!815260 m!757027))

(declare-fun m!757029 () Bool)

(assert (=> bm!35509 m!757029))

(assert (=> b!815262 m!757025))

(declare-fun m!757031 () Bool)

(assert (=> b!815262 m!757031))

(declare-fun m!757033 () Bool)

(assert (=> b!815262 m!757033))

(assert (=> b!815262 m!757025))

(declare-fun m!757035 () Bool)

(assert (=> b!815262 m!757035))

(assert (=> b!815225 d!104391))

(declare-fun d!104393 () Bool)

(assert (=> d!104393 (= (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!364992 () Unit!27774)

(declare-fun choose!1396 (array!44780 array!44778 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24061 V!24061 V!24061 V!24061 (_ BitVec 32) Int) Unit!27774)

(assert (=> d!104393 (= lt!364992 (choose!1396 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104393 (validMask!0 mask!1312)))

(assert (=> d!104393 (= (lemmaNoChangeToArrayThenSameMapNoExtras!324 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!364992)))

(declare-fun bs!22691 () Bool)

(assert (= bs!22691 d!104393))

(assert (=> bs!22691 m!756993))

(assert (=> bs!22691 m!756991))

(declare-fun m!757037 () Bool)

(assert (=> bs!22691 m!757037))

(assert (=> bs!22691 m!756995))

(assert (=> b!815228 d!104393))

(declare-fun b!815287 () Bool)

(declare-fun lt!365007 () Unit!27774)

(declare-fun lt!365011 () Unit!27774)

(assert (=> b!815287 (= lt!365007 lt!365011)))

(declare-fun lt!365008 () ListLongMap!8287)

(declare-fun lt!365012 () V!24061)

(declare-fun lt!365010 () (_ BitVec 64))

(declare-fun lt!365009 () (_ BitVec 64))

(declare-fun contains!4147 (ListLongMap!8287 (_ BitVec 64)) Bool)

(declare-fun +!1752 (ListLongMap!8287 tuple2!9450) ListLongMap!8287)

(assert (=> b!815287 (not (contains!4147 (+!1752 lt!365008 (tuple2!9451 lt!365009 lt!365012)) lt!365010))))

(declare-fun addStillNotContains!176 (ListLongMap!8287 (_ BitVec 64) V!24061 (_ BitVec 64)) Unit!27774)

(assert (=> b!815287 (= lt!365011 (addStillNotContains!176 lt!365008 lt!365009 lt!365012 lt!365010))))

(assert (=> b!815287 (= lt!365010 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11495 (ValueCell!6732 V!24061) V!24061)

(declare-fun dynLambda!959 (Int (_ BitVec 64)) V!24061)

(assert (=> b!815287 (= lt!365012 (get!11495 (select (arr!21444 _values!788) #b00000000000000000000000000000000) (dynLambda!959 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!815287 (= lt!365009 (select (arr!21445 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35515 () ListLongMap!8287)

(assert (=> b!815287 (= lt!365008 call!35515)))

(declare-fun e!452114 () ListLongMap!8287)

(assert (=> b!815287 (= e!452114 (+!1752 call!35515 (tuple2!9451 (select (arr!21445 _keys!976) #b00000000000000000000000000000000) (get!11495 (select (arr!21444 _values!788) #b00000000000000000000000000000000) (dynLambda!959 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!815288 () Bool)

(declare-fun res!556842 () Bool)

(declare-fun e!452115 () Bool)

(assert (=> b!815288 (=> (not res!556842) (not e!452115))))

(declare-fun lt!365013 () ListLongMap!8287)

(assert (=> b!815288 (= res!556842 (not (contains!4147 lt!365013 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!815289 () Bool)

(assert (=> b!815289 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(assert (=> b!815289 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21865 _values!788)))))

(declare-fun e!452111 () Bool)

(declare-fun apply!349 (ListLongMap!8287 (_ BitVec 64)) V!24061)

(assert (=> b!815289 (= e!452111 (= (apply!349 lt!365013 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)) (get!11495 (select (arr!21444 _values!788) #b00000000000000000000000000000000) (dynLambda!959 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!815290 () Bool)

(assert (=> b!815290 (= e!452114 call!35515)))

(declare-fun b!815291 () Bool)

(declare-fun e!452113 () Bool)

(declare-fun isEmpty!636 (ListLongMap!8287) Bool)

(assert (=> b!815291 (= e!452113 (isEmpty!636 lt!365013))))

(declare-fun b!815292 () Bool)

(declare-fun e!452112 () Bool)

(assert (=> b!815292 (= e!452112 e!452111)))

(assert (=> b!815292 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(declare-fun res!556841 () Bool)

(assert (=> b!815292 (= res!556841 (contains!4147 lt!365013 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!815292 (=> (not res!556841) (not e!452111))))

(declare-fun bm!35512 () Bool)

(assert (=> bm!35512 (= call!35515 (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun d!104395 () Bool)

(assert (=> d!104395 e!452115))

(declare-fun res!556839 () Bool)

(assert (=> d!104395 (=> (not res!556839) (not e!452115))))

(assert (=> d!104395 (= res!556839 (not (contains!4147 lt!365013 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!452110 () ListLongMap!8287)

(assert (=> d!104395 (= lt!365013 e!452110)))

(declare-fun c!88874 () Bool)

(assert (=> d!104395 (= c!88874 (bvsge #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(assert (=> d!104395 (validMask!0 mask!1312)))

(assert (=> d!104395 (= (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!365013)))

(declare-fun b!815293 () Bool)

(assert (=> b!815293 (= e!452113 (= lt!365013 (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!815294 () Bool)

(assert (=> b!815294 (= e!452110 (ListLongMap!8288 Nil!15320))))

(declare-fun b!815295 () Bool)

(declare-fun e!452109 () Bool)

(assert (=> b!815295 (= e!452109 (validKeyInArray!0 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!815295 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!815296 () Bool)

(assert (=> b!815296 (= e!452115 e!452112)))

(declare-fun c!88873 () Bool)

(assert (=> b!815296 (= c!88873 e!452109)))

(declare-fun res!556840 () Bool)

(assert (=> b!815296 (=> (not res!556840) (not e!452109))))

(assert (=> b!815296 (= res!556840 (bvslt #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(declare-fun b!815297 () Bool)

(assert (=> b!815297 (= e!452112 e!452113)))

(declare-fun c!88875 () Bool)

(assert (=> b!815297 (= c!88875 (bvslt #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(declare-fun b!815298 () Bool)

(assert (=> b!815298 (= e!452110 e!452114)))

(declare-fun c!88876 () Bool)

(assert (=> b!815298 (= c!88876 (validKeyInArray!0 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104395 c!88874) b!815294))

(assert (= (and d!104395 (not c!88874)) b!815298))

(assert (= (and b!815298 c!88876) b!815287))

(assert (= (and b!815298 (not c!88876)) b!815290))

(assert (= (or b!815287 b!815290) bm!35512))

(assert (= (and d!104395 res!556839) b!815288))

(assert (= (and b!815288 res!556842) b!815296))

(assert (= (and b!815296 res!556840) b!815295))

(assert (= (and b!815296 c!88873) b!815292))

(assert (= (and b!815296 (not c!88873)) b!815297))

(assert (= (and b!815292 res!556841) b!815289))

(assert (= (and b!815297 c!88875) b!815293))

(assert (= (and b!815297 (not c!88875)) b!815291))

(declare-fun b_lambda!10877 () Bool)

(assert (=> (not b_lambda!10877) (not b!815287)))

(declare-fun t!21652 () Bool)

(declare-fun tb!4187 () Bool)

(assert (=> (and start!70202 (= defaultEntry!796 defaultEntry!796) t!21652) tb!4187))

(declare-fun result!7885 () Bool)

(assert (=> tb!4187 (= result!7885 tp_is_empty!14295)))

(assert (=> b!815287 t!21652))

(declare-fun b_and!21387 () Bool)

(assert (= b_and!21383 (and (=> t!21652 result!7885) b_and!21387)))

(declare-fun b_lambda!10879 () Bool)

(assert (=> (not b_lambda!10879) (not b!815289)))

(assert (=> b!815289 t!21652))

(declare-fun b_and!21389 () Bool)

(assert (= b_and!21387 (and (=> t!21652 result!7885) b_and!21389)))

(assert (=> b!815292 m!757025))

(assert (=> b!815292 m!757025))

(declare-fun m!757039 () Bool)

(assert (=> b!815292 m!757039))

(declare-fun m!757041 () Bool)

(assert (=> bm!35512 m!757041))

(assert (=> b!815295 m!757025))

(assert (=> b!815295 m!757025))

(assert (=> b!815295 m!757027))

(assert (=> b!815298 m!757025))

(assert (=> b!815298 m!757025))

(assert (=> b!815298 m!757027))

(declare-fun m!757043 () Bool)

(assert (=> b!815287 m!757043))

(declare-fun m!757045 () Bool)

(assert (=> b!815287 m!757045))

(declare-fun m!757047 () Bool)

(assert (=> b!815287 m!757047))

(declare-fun m!757049 () Bool)

(assert (=> b!815287 m!757049))

(assert (=> b!815287 m!757025))

(declare-fun m!757051 () Bool)

(assert (=> b!815287 m!757051))

(assert (=> b!815287 m!757043))

(declare-fun m!757053 () Bool)

(assert (=> b!815287 m!757053))

(assert (=> b!815287 m!757053))

(assert (=> b!815287 m!757051))

(declare-fun m!757055 () Bool)

(assert (=> b!815287 m!757055))

(declare-fun m!757057 () Bool)

(assert (=> b!815291 m!757057))

(assert (=> b!815289 m!757025))

(declare-fun m!757059 () Bool)

(assert (=> b!815289 m!757059))

(assert (=> b!815289 m!757025))

(assert (=> b!815289 m!757051))

(assert (=> b!815289 m!757053))

(assert (=> b!815289 m!757053))

(assert (=> b!815289 m!757051))

(assert (=> b!815289 m!757055))

(declare-fun m!757061 () Bool)

(assert (=> b!815288 m!757061))

(declare-fun m!757063 () Bool)

(assert (=> d!104395 m!757063))

(assert (=> d!104395 m!756995))

(assert (=> b!815293 m!757041))

(assert (=> b!815228 d!104395))

(declare-fun b!815301 () Bool)

(declare-fun lt!365014 () Unit!27774)

(declare-fun lt!365018 () Unit!27774)

(assert (=> b!815301 (= lt!365014 lt!365018)))

(declare-fun lt!365017 () (_ BitVec 64))

(declare-fun lt!365015 () ListLongMap!8287)

(declare-fun lt!365019 () V!24061)

(declare-fun lt!365016 () (_ BitVec 64))

(assert (=> b!815301 (not (contains!4147 (+!1752 lt!365015 (tuple2!9451 lt!365016 lt!365019)) lt!365017))))

(assert (=> b!815301 (= lt!365018 (addStillNotContains!176 lt!365015 lt!365016 lt!365019 lt!365017))))

(assert (=> b!815301 (= lt!365017 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!815301 (= lt!365019 (get!11495 (select (arr!21444 _values!788) #b00000000000000000000000000000000) (dynLambda!959 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!815301 (= lt!365016 (select (arr!21445 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35516 () ListLongMap!8287)

(assert (=> b!815301 (= lt!365015 call!35516)))

(declare-fun e!452121 () ListLongMap!8287)

(assert (=> b!815301 (= e!452121 (+!1752 call!35516 (tuple2!9451 (select (arr!21445 _keys!976) #b00000000000000000000000000000000) (get!11495 (select (arr!21444 _values!788) #b00000000000000000000000000000000) (dynLambda!959 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!815302 () Bool)

(declare-fun res!556846 () Bool)

(declare-fun e!452122 () Bool)

(assert (=> b!815302 (=> (not res!556846) (not e!452122))))

(declare-fun lt!365020 () ListLongMap!8287)

(assert (=> b!815302 (= res!556846 (not (contains!4147 lt!365020 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!815303 () Bool)

(assert (=> b!815303 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(assert (=> b!815303 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21865 _values!788)))))

(declare-fun e!452118 () Bool)

(assert (=> b!815303 (= e!452118 (= (apply!349 lt!365020 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)) (get!11495 (select (arr!21444 _values!788) #b00000000000000000000000000000000) (dynLambda!959 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!815304 () Bool)

(assert (=> b!815304 (= e!452121 call!35516)))

(declare-fun b!815305 () Bool)

(declare-fun e!452120 () Bool)

(assert (=> b!815305 (= e!452120 (isEmpty!636 lt!365020))))

(declare-fun b!815306 () Bool)

(declare-fun e!452119 () Bool)

(assert (=> b!815306 (= e!452119 e!452118)))

(assert (=> b!815306 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(declare-fun res!556845 () Bool)

(assert (=> b!815306 (= res!556845 (contains!4147 lt!365020 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!815306 (=> (not res!556845) (not e!452118))))

(declare-fun bm!35513 () Bool)

(assert (=> bm!35513 (= call!35516 (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun d!104397 () Bool)

(assert (=> d!104397 e!452122))

(declare-fun res!556843 () Bool)

(assert (=> d!104397 (=> (not res!556843) (not e!452122))))

(assert (=> d!104397 (= res!556843 (not (contains!4147 lt!365020 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!452117 () ListLongMap!8287)

(assert (=> d!104397 (= lt!365020 e!452117)))

(declare-fun c!88878 () Bool)

(assert (=> d!104397 (= c!88878 (bvsge #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(assert (=> d!104397 (validMask!0 mask!1312)))

(assert (=> d!104397 (= (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!365020)))

(declare-fun b!815307 () Bool)

(assert (=> b!815307 (= e!452120 (= lt!365020 (getCurrentListMapNoExtraKeys!2208 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!815308 () Bool)

(assert (=> b!815308 (= e!452117 (ListLongMap!8288 Nil!15320))))

(declare-fun b!815309 () Bool)

(declare-fun e!452116 () Bool)

(assert (=> b!815309 (= e!452116 (validKeyInArray!0 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!815309 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!815310 () Bool)

(assert (=> b!815310 (= e!452122 e!452119)))

(declare-fun c!88877 () Bool)

(assert (=> b!815310 (= c!88877 e!452116)))

(declare-fun res!556844 () Bool)

(assert (=> b!815310 (=> (not res!556844) (not e!452116))))

(assert (=> b!815310 (= res!556844 (bvslt #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(declare-fun b!815311 () Bool)

(assert (=> b!815311 (= e!452119 e!452120)))

(declare-fun c!88879 () Bool)

(assert (=> b!815311 (= c!88879 (bvslt #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(declare-fun b!815312 () Bool)

(assert (=> b!815312 (= e!452117 e!452121)))

(declare-fun c!88880 () Bool)

(assert (=> b!815312 (= c!88880 (validKeyInArray!0 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104397 c!88878) b!815308))

(assert (= (and d!104397 (not c!88878)) b!815312))

(assert (= (and b!815312 c!88880) b!815301))

(assert (= (and b!815312 (not c!88880)) b!815304))

(assert (= (or b!815301 b!815304) bm!35513))

(assert (= (and d!104397 res!556843) b!815302))

(assert (= (and b!815302 res!556846) b!815310))

(assert (= (and b!815310 res!556844) b!815309))

(assert (= (and b!815310 c!88877) b!815306))

(assert (= (and b!815310 (not c!88877)) b!815311))

(assert (= (and b!815306 res!556845) b!815303))

(assert (= (and b!815311 c!88879) b!815307))

(assert (= (and b!815311 (not c!88879)) b!815305))

(declare-fun b_lambda!10881 () Bool)

(assert (=> (not b_lambda!10881) (not b!815301)))

(assert (=> b!815301 t!21652))

(declare-fun b_and!21391 () Bool)

(assert (= b_and!21389 (and (=> t!21652 result!7885) b_and!21391)))

(declare-fun b_lambda!10883 () Bool)

(assert (=> (not b_lambda!10883) (not b!815303)))

(assert (=> b!815303 t!21652))

(declare-fun b_and!21393 () Bool)

(assert (= b_and!21391 (and (=> t!21652 result!7885) b_and!21393)))

(assert (=> b!815306 m!757025))

(assert (=> b!815306 m!757025))

(declare-fun m!757065 () Bool)

(assert (=> b!815306 m!757065))

(declare-fun m!757067 () Bool)

(assert (=> bm!35513 m!757067))

(assert (=> b!815309 m!757025))

(assert (=> b!815309 m!757025))

(assert (=> b!815309 m!757027))

(assert (=> b!815312 m!757025))

(assert (=> b!815312 m!757025))

(assert (=> b!815312 m!757027))

(declare-fun m!757069 () Bool)

(assert (=> b!815301 m!757069))

(declare-fun m!757071 () Bool)

(assert (=> b!815301 m!757071))

(declare-fun m!757073 () Bool)

(assert (=> b!815301 m!757073))

(declare-fun m!757075 () Bool)

(assert (=> b!815301 m!757075))

(assert (=> b!815301 m!757025))

(assert (=> b!815301 m!757051))

(assert (=> b!815301 m!757069))

(assert (=> b!815301 m!757053))

(assert (=> b!815301 m!757053))

(assert (=> b!815301 m!757051))

(assert (=> b!815301 m!757055))

(declare-fun m!757077 () Bool)

(assert (=> b!815305 m!757077))

(assert (=> b!815303 m!757025))

(declare-fun m!757079 () Bool)

(assert (=> b!815303 m!757079))

(assert (=> b!815303 m!757025))

(assert (=> b!815303 m!757051))

(assert (=> b!815303 m!757053))

(assert (=> b!815303 m!757053))

(assert (=> b!815303 m!757051))

(assert (=> b!815303 m!757055))

(declare-fun m!757081 () Bool)

(assert (=> b!815302 m!757081))

(declare-fun m!757083 () Bool)

(assert (=> d!104397 m!757083))

(assert (=> d!104397 m!756995))

(assert (=> b!815307 m!757067))

(assert (=> b!815228 d!104397))

(declare-fun d!104399 () Bool)

(assert (=> d!104399 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70202 d!104399))

(declare-fun d!104401 () Bool)

(assert (=> d!104401 (= (array_inv!17137 _keys!976) (bvsge (size!21866 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70202 d!104401))

(declare-fun d!104403 () Bool)

(assert (=> d!104403 (= (array_inv!17138 _values!788) (bvsge (size!21865 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70202 d!104403))

(declare-fun b!815323 () Bool)

(declare-fun e!452132 () Bool)

(declare-fun call!35519 () Bool)

(assert (=> b!815323 (= e!452132 call!35519)))

(declare-fun b!815324 () Bool)

(declare-fun e!452134 () Bool)

(declare-fun e!452133 () Bool)

(assert (=> b!815324 (= e!452134 e!452133)))

(declare-fun res!556855 () Bool)

(assert (=> b!815324 (=> (not res!556855) (not e!452133))))

(declare-fun e!452131 () Bool)

(assert (=> b!815324 (= res!556855 (not e!452131))))

(declare-fun res!556854 () Bool)

(assert (=> b!815324 (=> (not res!556854) (not e!452131))))

(assert (=> b!815324 (= res!556854 (validKeyInArray!0 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!815325 () Bool)

(assert (=> b!815325 (= e!452133 e!452132)))

(declare-fun c!88883 () Bool)

(assert (=> b!815325 (= c!88883 (validKeyInArray!0 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!815326 () Bool)

(assert (=> b!815326 (= e!452132 call!35519)))

(declare-fun b!815327 () Bool)

(declare-fun contains!4148 (List!15322 (_ BitVec 64)) Bool)

(assert (=> b!815327 (= e!452131 (contains!4148 Nil!15319 (select (arr!21445 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104405 () Bool)

(declare-fun res!556853 () Bool)

(assert (=> d!104405 (=> res!556853 e!452134)))

(assert (=> d!104405 (= res!556853 (bvsge #b00000000000000000000000000000000 (size!21866 _keys!976)))))

(assert (=> d!104405 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15319) e!452134)))

(declare-fun bm!35516 () Bool)

(assert (=> bm!35516 (= call!35519 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88883 (Cons!15318 (select (arr!21445 _keys!976) #b00000000000000000000000000000000) Nil!15319) Nil!15319)))))

(assert (= (and d!104405 (not res!556853)) b!815324))

(assert (= (and b!815324 res!556854) b!815327))

(assert (= (and b!815324 res!556855) b!815325))

(assert (= (and b!815325 c!88883) b!815323))

(assert (= (and b!815325 (not c!88883)) b!815326))

(assert (= (or b!815323 b!815326) bm!35516))

(assert (=> b!815324 m!757025))

(assert (=> b!815324 m!757025))

(assert (=> b!815324 m!757027))

(assert (=> b!815325 m!757025))

(assert (=> b!815325 m!757025))

(assert (=> b!815325 m!757027))

(assert (=> b!815327 m!757025))

(assert (=> b!815327 m!757025))

(declare-fun m!757085 () Bool)

(assert (=> b!815327 m!757085))

(assert (=> bm!35516 m!757025))

(declare-fun m!757087 () Bool)

(assert (=> bm!35516 m!757087))

(assert (=> b!815226 d!104405))

(declare-fun mapIsEmpty!23032 () Bool)

(declare-fun mapRes!23032 () Bool)

(assert (=> mapIsEmpty!23032 mapRes!23032))

(declare-fun condMapEmpty!23032 () Bool)

(declare-fun mapDefault!23032 () ValueCell!6732)

(assert (=> mapNonEmpty!23026 (= condMapEmpty!23032 (= mapRest!23026 ((as const (Array (_ BitVec 32) ValueCell!6732)) mapDefault!23032)))))

(declare-fun e!452139 () Bool)

(assert (=> mapNonEmpty!23026 (= tp!44472 (and e!452139 mapRes!23032))))

(declare-fun mapNonEmpty!23032 () Bool)

(declare-fun tp!44482 () Bool)

(declare-fun e!452140 () Bool)

(assert (=> mapNonEmpty!23032 (= mapRes!23032 (and tp!44482 e!452140))))

(declare-fun mapKey!23032 () (_ BitVec 32))

(declare-fun mapValue!23032 () ValueCell!6732)

(declare-fun mapRest!23032 () (Array (_ BitVec 32) ValueCell!6732))

(assert (=> mapNonEmpty!23032 (= mapRest!23026 (store mapRest!23032 mapKey!23032 mapValue!23032))))

(declare-fun b!815335 () Bool)

(assert (=> b!815335 (= e!452139 tp_is_empty!14295)))

(declare-fun b!815334 () Bool)

(assert (=> b!815334 (= e!452140 tp_is_empty!14295)))

(assert (= (and mapNonEmpty!23026 condMapEmpty!23032) mapIsEmpty!23032))

(assert (= (and mapNonEmpty!23026 (not condMapEmpty!23032)) mapNonEmpty!23032))

(assert (= (and mapNonEmpty!23032 ((_ is ValueCellFull!6732) mapValue!23032)) b!815334))

(assert (= (and mapNonEmpty!23026 ((_ is ValueCellFull!6732) mapDefault!23032)) b!815335))

(declare-fun m!757089 () Bool)

(assert (=> mapNonEmpty!23032 m!757089))

(declare-fun b_lambda!10885 () Bool)

(assert (= b_lambda!10881 (or (and start!70202 b_free!12585) b_lambda!10885)))

(declare-fun b_lambda!10887 () Bool)

(assert (= b_lambda!10877 (or (and start!70202 b_free!12585) b_lambda!10887)))

(declare-fun b_lambda!10889 () Bool)

(assert (= b_lambda!10883 (or (and start!70202 b_free!12585) b_lambda!10889)))

(declare-fun b_lambda!10891 () Bool)

(assert (= b_lambda!10879 (or (and start!70202 b_free!12585) b_lambda!10891)))

(check-sat (not bm!35516) (not b!815309) (not b!815291) b_and!21393 (not b!815301) (not bm!35513) (not b!815288) (not d!104397) (not b!815306) (not b!815262) (not b!815293) (not b!815307) (not b!815289) (not b_lambda!10891) (not b!815327) (not d!104395) (not b_lambda!10887) (not bm!35512) tp_is_empty!14295 (not b!815298) (not b!815295) (not b!815324) (not b!815302) (not b_lambda!10889) (not b_lambda!10885) (not b!815260) (not b!815325) (not b!815305) (not b!815292) (not b!815287) (not b!815303) (not b!815312) (not bm!35509) (not mapNonEmpty!23032) (not d!104393) (not b_next!12585))
(check-sat b_and!21393 (not b_next!12585))
