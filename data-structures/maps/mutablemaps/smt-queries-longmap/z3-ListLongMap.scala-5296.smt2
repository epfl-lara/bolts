; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70992 () Bool)

(assert start!70992)

(declare-fun b_free!13185 () Bool)

(declare-fun b_next!13185 () Bool)

(assert (=> start!70992 (= b_free!13185 (not b_next!13185))))

(declare-fun tp!46306 () Bool)

(declare-fun b_and!22099 () Bool)

(assert (=> start!70992 (= tp!46306 b_and!22099)))

(declare-fun b!824020 () Bool)

(declare-fun e!458442 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((array!45936 0))(
  ( (array!45937 (arr!22012 (Array (_ BitVec 32) (_ BitVec 64))) (size!22433 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45936)

(assert (=> b!824020 (= e!458442 (not (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!22433 _keys!976)))))))

(declare-datatypes ((V!24861 0))(
  ( (V!24862 (val!7495 Int)) )
))
(declare-datatypes ((tuple2!9904 0))(
  ( (tuple2!9905 (_1!4962 (_ BitVec 64)) (_2!4962 V!24861)) )
))
(declare-datatypes ((List!15762 0))(
  ( (Nil!15759) (Cons!15758 (h!16887 tuple2!9904) (t!22111 List!15762)) )
))
(declare-datatypes ((ListLongMap!8741 0))(
  ( (ListLongMap!8742 (toList!4386 List!15762)) )
))
(declare-fun lt!371645 () ListLongMap!8741)

(declare-fun lt!371644 () ListLongMap!8741)

(assert (=> b!824020 (= lt!371645 lt!371644)))

(declare-fun zeroValueBefore!34 () V!24861)

(declare-fun zeroValueAfter!34 () V!24861)

(declare-fun minValue!754 () V!24861)

(declare-datatypes ((ValueCell!7032 0))(
  ( (ValueCellFull!7032 (v!9924 V!24861)) (EmptyCell!7032) )
))
(declare-datatypes ((array!45938 0))(
  ( (array!45939 (arr!22013 (Array (_ BitVec 32) ValueCell!7032)) (size!22434 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45938)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28218 0))(
  ( (Unit!28219) )
))
(declare-fun lt!371646 () Unit!28218)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!524 (array!45936 array!45938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24861 V!24861 V!24861 V!24861 (_ BitVec 32) Int) Unit!28218)

(assert (=> b!824020 (= lt!371646 (lemmaNoChangeToArrayThenSameMapNoExtras!524 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2408 (array!45936 array!45938 (_ BitVec 32) (_ BitVec 32) V!24861 V!24861 (_ BitVec 32) Int) ListLongMap!8741)

(assert (=> b!824020 (= lt!371644 (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824020 (= lt!371645 (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824021 () Bool)

(declare-fun e!458444 () Bool)

(declare-fun tp_is_empty!14895 () Bool)

(assert (=> b!824021 (= e!458444 tp_is_empty!14895)))

(declare-fun b!824022 () Bool)

(declare-fun e!458445 () Bool)

(declare-fun mapRes!23959 () Bool)

(assert (=> b!824022 (= e!458445 (and e!458444 mapRes!23959))))

(declare-fun condMapEmpty!23959 () Bool)

(declare-fun mapDefault!23959 () ValueCell!7032)

(assert (=> b!824022 (= condMapEmpty!23959 (= (arr!22013 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7032)) mapDefault!23959)))))

(declare-fun b!824023 () Bool)

(declare-fun res!561954 () Bool)

(assert (=> b!824023 (=> (not res!561954) (not e!458442))))

(assert (=> b!824023 (= res!561954 (and (= (size!22434 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22433 _keys!976) (size!22434 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824024 () Bool)

(declare-fun res!561953 () Bool)

(assert (=> b!824024 (=> (not res!561953) (not e!458442))))

(declare-datatypes ((List!15763 0))(
  ( (Nil!15760) (Cons!15759 (h!16888 (_ BitVec 64)) (t!22112 List!15763)) )
))
(declare-fun arrayNoDuplicates!0 (array!45936 (_ BitVec 32) List!15763) Bool)

(assert (=> b!824024 (= res!561953 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15760))))

(declare-fun b!824025 () Bool)

(declare-fun e!458441 () Bool)

(assert (=> b!824025 (= e!458441 tp_is_empty!14895)))

(declare-fun res!561952 () Bool)

(assert (=> start!70992 (=> (not res!561952) (not e!458442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70992 (= res!561952 (validMask!0 mask!1312))))

(assert (=> start!70992 e!458442))

(assert (=> start!70992 tp_is_empty!14895))

(declare-fun array_inv!17541 (array!45936) Bool)

(assert (=> start!70992 (array_inv!17541 _keys!976)))

(assert (=> start!70992 true))

(declare-fun array_inv!17542 (array!45938) Bool)

(assert (=> start!70992 (and (array_inv!17542 _values!788) e!458445)))

(assert (=> start!70992 tp!46306))

(declare-fun mapIsEmpty!23959 () Bool)

(assert (=> mapIsEmpty!23959 mapRes!23959))

(declare-fun b!824026 () Bool)

(declare-fun res!561955 () Bool)

(assert (=> b!824026 (=> (not res!561955) (not e!458442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45936 (_ BitVec 32)) Bool)

(assert (=> b!824026 (= res!561955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23959 () Bool)

(declare-fun tp!46305 () Bool)

(assert (=> mapNonEmpty!23959 (= mapRes!23959 (and tp!46305 e!458441))))

(declare-fun mapValue!23959 () ValueCell!7032)

(declare-fun mapKey!23959 () (_ BitVec 32))

(declare-fun mapRest!23959 () (Array (_ BitVec 32) ValueCell!7032))

(assert (=> mapNonEmpty!23959 (= (arr!22013 _values!788) (store mapRest!23959 mapKey!23959 mapValue!23959))))

(assert (= (and start!70992 res!561952) b!824023))

(assert (= (and b!824023 res!561954) b!824026))

(assert (= (and b!824026 res!561955) b!824024))

(assert (= (and b!824024 res!561953) b!824020))

(assert (= (and b!824022 condMapEmpty!23959) mapIsEmpty!23959))

(assert (= (and b!824022 (not condMapEmpty!23959)) mapNonEmpty!23959))

(get-info :version)

(assert (= (and mapNonEmpty!23959 ((_ is ValueCellFull!7032) mapValue!23959)) b!824025))

(assert (= (and b!824022 ((_ is ValueCellFull!7032) mapDefault!23959)) b!824021))

(assert (= start!70992 b!824022))

(declare-fun m!766249 () Bool)

(assert (=> b!824026 m!766249))

(declare-fun m!766251 () Bool)

(assert (=> b!824024 m!766251))

(declare-fun m!766253 () Bool)

(assert (=> mapNonEmpty!23959 m!766253))

(declare-fun m!766255 () Bool)

(assert (=> b!824020 m!766255))

(declare-fun m!766257 () Bool)

(assert (=> b!824020 m!766257))

(declare-fun m!766259 () Bool)

(assert (=> b!824020 m!766259))

(declare-fun m!766261 () Bool)

(assert (=> start!70992 m!766261))

(declare-fun m!766263 () Bool)

(assert (=> start!70992 m!766263))

(declare-fun m!766265 () Bool)

(assert (=> start!70992 m!766265))

(check-sat tp_is_empty!14895 (not b!824020) b_and!22099 (not mapNonEmpty!23959) (not start!70992) (not b!824024) (not b!824026) (not b_next!13185))
(check-sat b_and!22099 (not b_next!13185))
(get-model)

(declare-fun b!824058 () Bool)

(declare-fun e!458469 () Bool)

(declare-fun e!458471 () Bool)

(assert (=> b!824058 (= e!458469 e!458471)))

(declare-fun res!561976 () Bool)

(assert (=> b!824058 (=> (not res!561976) (not e!458471))))

(declare-fun e!458472 () Bool)

(assert (=> b!824058 (= res!561976 (not e!458472))))

(declare-fun res!561975 () Bool)

(assert (=> b!824058 (=> (not res!561975) (not e!458472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!824058 (= res!561975 (validKeyInArray!0 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824059 () Bool)

(declare-fun e!458470 () Bool)

(assert (=> b!824059 (= e!458471 e!458470)))

(declare-fun c!89286 () Bool)

(assert (=> b!824059 (= c!89286 (validKeyInArray!0 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35829 () Bool)

(declare-fun call!35832 () Bool)

(assert (=> bm!35829 (= call!35832 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89286 (Cons!15759 (select (arr!22012 _keys!976) #b00000000000000000000000000000000) Nil!15760) Nil!15760)))))

(declare-fun d!104847 () Bool)

(declare-fun res!561974 () Bool)

(assert (=> d!104847 (=> res!561974 e!458469)))

(assert (=> d!104847 (= res!561974 (bvsge #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(assert (=> d!104847 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15760) e!458469)))

(declare-fun b!824060 () Bool)

(assert (=> b!824060 (= e!458470 call!35832)))

(declare-fun b!824061 () Bool)

(declare-fun contains!4175 (List!15763 (_ BitVec 64)) Bool)

(assert (=> b!824061 (= e!458472 (contains!4175 Nil!15760 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824062 () Bool)

(assert (=> b!824062 (= e!458470 call!35832)))

(assert (= (and d!104847 (not res!561974)) b!824058))

(assert (= (and b!824058 res!561975) b!824061))

(assert (= (and b!824058 res!561976) b!824059))

(assert (= (and b!824059 c!89286) b!824062))

(assert (= (and b!824059 (not c!89286)) b!824060))

(assert (= (or b!824062 b!824060) bm!35829))

(declare-fun m!766285 () Bool)

(assert (=> b!824058 m!766285))

(assert (=> b!824058 m!766285))

(declare-fun m!766287 () Bool)

(assert (=> b!824058 m!766287))

(assert (=> b!824059 m!766285))

(assert (=> b!824059 m!766285))

(assert (=> b!824059 m!766287))

(assert (=> bm!35829 m!766285))

(declare-fun m!766289 () Bool)

(assert (=> bm!35829 m!766289))

(assert (=> b!824061 m!766285))

(assert (=> b!824061 m!766285))

(declare-fun m!766291 () Bool)

(assert (=> b!824061 m!766291))

(assert (=> b!824024 d!104847))

(declare-fun d!104849 () Bool)

(assert (=> d!104849 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70992 d!104849))

(declare-fun d!104851 () Bool)

(assert (=> d!104851 (= (array_inv!17541 _keys!976) (bvsge (size!22433 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70992 d!104851))

(declare-fun d!104853 () Bool)

(assert (=> d!104853 (= (array_inv!17542 _values!788) (bvsge (size!22434 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70992 d!104853))

(declare-fun d!104855 () Bool)

(assert (=> d!104855 (= (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371658 () Unit!28218)

(declare-fun choose!1411 (array!45936 array!45938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24861 V!24861 V!24861 V!24861 (_ BitVec 32) Int) Unit!28218)

(assert (=> d!104855 (= lt!371658 (choose!1411 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104855 (validMask!0 mask!1312)))

(assert (=> d!104855 (= (lemmaNoChangeToArrayThenSameMapNoExtras!524 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!371658)))

(declare-fun bs!23006 () Bool)

(assert (= bs!23006 d!104855))

(assert (=> bs!23006 m!766259))

(assert (=> bs!23006 m!766257))

(declare-fun m!766293 () Bool)

(assert (=> bs!23006 m!766293))

(assert (=> bs!23006 m!766261))

(assert (=> b!824020 d!104855))

(declare-fun b!824087 () Bool)

(declare-fun res!561985 () Bool)

(declare-fun e!458487 () Bool)

(assert (=> b!824087 (=> (not res!561985) (not e!458487))))

(declare-fun lt!371676 () ListLongMap!8741)

(declare-fun contains!4176 (ListLongMap!8741 (_ BitVec 64)) Bool)

(assert (=> b!824087 (= res!561985 (not (contains!4176 lt!371676 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!824088 () Bool)

(declare-fun e!458490 () Bool)

(declare-fun e!458493 () Bool)

(assert (=> b!824088 (= e!458490 e!458493)))

(assert (=> b!824088 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(declare-fun res!561988 () Bool)

(assert (=> b!824088 (= res!561988 (contains!4176 lt!371676 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824088 (=> (not res!561988) (not e!458493))))

(declare-fun b!824089 () Bool)

(declare-fun e!458489 () Bool)

(declare-fun isEmpty!647 (ListLongMap!8741) Bool)

(assert (=> b!824089 (= e!458489 (isEmpty!647 lt!371676))))

(declare-fun b!824090 () Bool)

(declare-fun lt!371677 () Unit!28218)

(declare-fun lt!371674 () Unit!28218)

(assert (=> b!824090 (= lt!371677 lt!371674)))

(declare-fun lt!371675 () V!24861)

(declare-fun lt!371679 () (_ BitVec 64))

(declare-fun lt!371673 () ListLongMap!8741)

(declare-fun lt!371678 () (_ BitVec 64))

(declare-fun +!1872 (ListLongMap!8741 tuple2!9904) ListLongMap!8741)

(assert (=> b!824090 (not (contains!4176 (+!1872 lt!371673 (tuple2!9905 lt!371679 lt!371675)) lt!371678))))

(declare-fun addStillNotContains!187 (ListLongMap!8741 (_ BitVec 64) V!24861 (_ BitVec 64)) Unit!28218)

(assert (=> b!824090 (= lt!371674 (addStillNotContains!187 lt!371673 lt!371679 lt!371675 lt!371678))))

(assert (=> b!824090 (= lt!371678 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11706 (ValueCell!7032 V!24861) V!24861)

(declare-fun dynLambda!970 (Int (_ BitVec 64)) V!24861)

(assert (=> b!824090 (= lt!371675 (get!11706 (select (arr!22013 _values!788) #b00000000000000000000000000000000) (dynLambda!970 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!824090 (= lt!371679 (select (arr!22012 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35835 () ListLongMap!8741)

(assert (=> b!824090 (= lt!371673 call!35835)))

(declare-fun e!458488 () ListLongMap!8741)

(assert (=> b!824090 (= e!458488 (+!1872 call!35835 (tuple2!9905 (select (arr!22012 _keys!976) #b00000000000000000000000000000000) (get!11706 (select (arr!22013 _values!788) #b00000000000000000000000000000000) (dynLambda!970 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!824091 () Bool)

(assert (=> b!824091 (= e!458487 e!458490)))

(declare-fun c!89296 () Bool)

(declare-fun e!458492 () Bool)

(assert (=> b!824091 (= c!89296 e!458492)))

(declare-fun res!561987 () Bool)

(assert (=> b!824091 (=> (not res!561987) (not e!458492))))

(assert (=> b!824091 (= res!561987 (bvslt #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(declare-fun b!824092 () Bool)

(assert (=> b!824092 (= e!458490 e!458489)))

(declare-fun c!89295 () Bool)

(assert (=> b!824092 (= c!89295 (bvslt #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(declare-fun b!824093 () Bool)

(assert (=> b!824093 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(assert (=> b!824093 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22434 _values!788)))))

(declare-fun apply!360 (ListLongMap!8741 (_ BitVec 64)) V!24861)

(assert (=> b!824093 (= e!458493 (= (apply!360 lt!371676 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)) (get!11706 (select (arr!22013 _values!788) #b00000000000000000000000000000000) (dynLambda!970 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!824094 () Bool)

(assert (=> b!824094 (= e!458492 (validKeyInArray!0 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824094 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!104857 () Bool)

(assert (=> d!104857 e!458487))

(declare-fun res!561986 () Bool)

(assert (=> d!104857 (=> (not res!561986) (not e!458487))))

(assert (=> d!104857 (= res!561986 (not (contains!4176 lt!371676 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!458491 () ListLongMap!8741)

(assert (=> d!104857 (= lt!371676 e!458491)))

(declare-fun c!89297 () Bool)

(assert (=> d!104857 (= c!89297 (bvsge #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(assert (=> d!104857 (validMask!0 mask!1312)))

(assert (=> d!104857 (= (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!371676)))

(declare-fun bm!35832 () Bool)

(assert (=> bm!35832 (= call!35835 (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!824095 () Bool)

(assert (=> b!824095 (= e!458491 e!458488)))

(declare-fun c!89298 () Bool)

(assert (=> b!824095 (= c!89298 (validKeyInArray!0 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824096 () Bool)

(assert (=> b!824096 (= e!458491 (ListLongMap!8742 Nil!15759))))

(declare-fun b!824097 () Bool)

(assert (=> b!824097 (= e!458489 (= lt!371676 (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!824098 () Bool)

(assert (=> b!824098 (= e!458488 call!35835)))

(assert (= (and d!104857 c!89297) b!824096))

(assert (= (and d!104857 (not c!89297)) b!824095))

(assert (= (and b!824095 c!89298) b!824090))

(assert (= (and b!824095 (not c!89298)) b!824098))

(assert (= (or b!824090 b!824098) bm!35832))

(assert (= (and d!104857 res!561986) b!824087))

(assert (= (and b!824087 res!561985) b!824091))

(assert (= (and b!824091 res!561987) b!824094))

(assert (= (and b!824091 c!89296) b!824088))

(assert (= (and b!824091 (not c!89296)) b!824092))

(assert (= (and b!824088 res!561988) b!824093))

(assert (= (and b!824092 c!89295) b!824097))

(assert (= (and b!824092 (not c!89295)) b!824089))

(declare-fun b_lambda!11109 () Bool)

(assert (=> (not b_lambda!11109) (not b!824090)))

(declare-fun t!22115 () Bool)

(declare-fun tb!4209 () Bool)

(assert (=> (and start!70992 (= defaultEntry!796 defaultEntry!796) t!22115) tb!4209))

(declare-fun result!7951 () Bool)

(assert (=> tb!4209 (= result!7951 tp_is_empty!14895)))

(assert (=> b!824090 t!22115))

(declare-fun b_and!22103 () Bool)

(assert (= b_and!22099 (and (=> t!22115 result!7951) b_and!22103)))

(declare-fun b_lambda!11111 () Bool)

(assert (=> (not b_lambda!11111) (not b!824093)))

(assert (=> b!824093 t!22115))

(declare-fun b_and!22105 () Bool)

(assert (= b_and!22103 (and (=> t!22115 result!7951) b_and!22105)))

(declare-fun m!766295 () Bool)

(assert (=> b!824087 m!766295))

(assert (=> b!824095 m!766285))

(assert (=> b!824095 m!766285))

(assert (=> b!824095 m!766287))

(declare-fun m!766297 () Bool)

(assert (=> d!104857 m!766297))

(assert (=> d!104857 m!766261))

(declare-fun m!766299 () Bool)

(assert (=> bm!35832 m!766299))

(declare-fun m!766301 () Bool)

(assert (=> b!824089 m!766301))

(declare-fun m!766303 () Bool)

(assert (=> b!824090 m!766303))

(declare-fun m!766305 () Bool)

(assert (=> b!824090 m!766305))

(assert (=> b!824090 m!766303))

(assert (=> b!824090 m!766305))

(declare-fun m!766307 () Bool)

(assert (=> b!824090 m!766307))

(assert (=> b!824090 m!766285))

(declare-fun m!766309 () Bool)

(assert (=> b!824090 m!766309))

(declare-fun m!766311 () Bool)

(assert (=> b!824090 m!766311))

(declare-fun m!766313 () Bool)

(assert (=> b!824090 m!766313))

(assert (=> b!824090 m!766311))

(declare-fun m!766315 () Bool)

(assert (=> b!824090 m!766315))

(assert (=> b!824097 m!766299))

(assert (=> b!824094 m!766285))

(assert (=> b!824094 m!766285))

(assert (=> b!824094 m!766287))

(assert (=> b!824093 m!766303))

(assert (=> b!824093 m!766305))

(assert (=> b!824093 m!766303))

(assert (=> b!824093 m!766305))

(assert (=> b!824093 m!766307))

(assert (=> b!824093 m!766285))

(assert (=> b!824093 m!766285))

(declare-fun m!766317 () Bool)

(assert (=> b!824093 m!766317))

(assert (=> b!824088 m!766285))

(assert (=> b!824088 m!766285))

(declare-fun m!766319 () Bool)

(assert (=> b!824088 m!766319))

(assert (=> b!824020 d!104857))

(declare-fun b!824101 () Bool)

(declare-fun res!561989 () Bool)

(declare-fun e!458494 () Bool)

(assert (=> b!824101 (=> (not res!561989) (not e!458494))))

(declare-fun lt!371683 () ListLongMap!8741)

(assert (=> b!824101 (= res!561989 (not (contains!4176 lt!371683 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!824102 () Bool)

(declare-fun e!458497 () Bool)

(declare-fun e!458500 () Bool)

(assert (=> b!824102 (= e!458497 e!458500)))

(assert (=> b!824102 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(declare-fun res!561992 () Bool)

(assert (=> b!824102 (= res!561992 (contains!4176 lt!371683 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824102 (=> (not res!561992) (not e!458500))))

(declare-fun b!824103 () Bool)

(declare-fun e!458496 () Bool)

(assert (=> b!824103 (= e!458496 (isEmpty!647 lt!371683))))

(declare-fun b!824104 () Bool)

(declare-fun lt!371684 () Unit!28218)

(declare-fun lt!371681 () Unit!28218)

(assert (=> b!824104 (= lt!371684 lt!371681)))

(declare-fun lt!371685 () (_ BitVec 64))

(declare-fun lt!371682 () V!24861)

(declare-fun lt!371680 () ListLongMap!8741)

(declare-fun lt!371686 () (_ BitVec 64))

(assert (=> b!824104 (not (contains!4176 (+!1872 lt!371680 (tuple2!9905 lt!371686 lt!371682)) lt!371685))))

(assert (=> b!824104 (= lt!371681 (addStillNotContains!187 lt!371680 lt!371686 lt!371682 lt!371685))))

(assert (=> b!824104 (= lt!371685 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!824104 (= lt!371682 (get!11706 (select (arr!22013 _values!788) #b00000000000000000000000000000000) (dynLambda!970 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!824104 (= lt!371686 (select (arr!22012 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35836 () ListLongMap!8741)

(assert (=> b!824104 (= lt!371680 call!35836)))

(declare-fun e!458495 () ListLongMap!8741)

(assert (=> b!824104 (= e!458495 (+!1872 call!35836 (tuple2!9905 (select (arr!22012 _keys!976) #b00000000000000000000000000000000) (get!11706 (select (arr!22013 _values!788) #b00000000000000000000000000000000) (dynLambda!970 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!824105 () Bool)

(assert (=> b!824105 (= e!458494 e!458497)))

(declare-fun c!89300 () Bool)

(declare-fun e!458499 () Bool)

(assert (=> b!824105 (= c!89300 e!458499)))

(declare-fun res!561991 () Bool)

(assert (=> b!824105 (=> (not res!561991) (not e!458499))))

(assert (=> b!824105 (= res!561991 (bvslt #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(declare-fun b!824106 () Bool)

(assert (=> b!824106 (= e!458497 e!458496)))

(declare-fun c!89299 () Bool)

(assert (=> b!824106 (= c!89299 (bvslt #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(declare-fun b!824107 () Bool)

(assert (=> b!824107 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(assert (=> b!824107 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22434 _values!788)))))

(assert (=> b!824107 (= e!458500 (= (apply!360 lt!371683 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)) (get!11706 (select (arr!22013 _values!788) #b00000000000000000000000000000000) (dynLambda!970 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!824108 () Bool)

(assert (=> b!824108 (= e!458499 (validKeyInArray!0 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824108 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!104859 () Bool)

(assert (=> d!104859 e!458494))

(declare-fun res!561990 () Bool)

(assert (=> d!104859 (=> (not res!561990) (not e!458494))))

(assert (=> d!104859 (= res!561990 (not (contains!4176 lt!371683 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!458498 () ListLongMap!8741)

(assert (=> d!104859 (= lt!371683 e!458498)))

(declare-fun c!89301 () Bool)

(assert (=> d!104859 (= c!89301 (bvsge #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(assert (=> d!104859 (validMask!0 mask!1312)))

(assert (=> d!104859 (= (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!371683)))

(declare-fun bm!35833 () Bool)

(assert (=> bm!35833 (= call!35836 (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!824109 () Bool)

(assert (=> b!824109 (= e!458498 e!458495)))

(declare-fun c!89302 () Bool)

(assert (=> b!824109 (= c!89302 (validKeyInArray!0 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824110 () Bool)

(assert (=> b!824110 (= e!458498 (ListLongMap!8742 Nil!15759))))

(declare-fun b!824111 () Bool)

(assert (=> b!824111 (= e!458496 (= lt!371683 (getCurrentListMapNoExtraKeys!2408 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!824112 () Bool)

(assert (=> b!824112 (= e!458495 call!35836)))

(assert (= (and d!104859 c!89301) b!824110))

(assert (= (and d!104859 (not c!89301)) b!824109))

(assert (= (and b!824109 c!89302) b!824104))

(assert (= (and b!824109 (not c!89302)) b!824112))

(assert (= (or b!824104 b!824112) bm!35833))

(assert (= (and d!104859 res!561990) b!824101))

(assert (= (and b!824101 res!561989) b!824105))

(assert (= (and b!824105 res!561991) b!824108))

(assert (= (and b!824105 c!89300) b!824102))

(assert (= (and b!824105 (not c!89300)) b!824106))

(assert (= (and b!824102 res!561992) b!824107))

(assert (= (and b!824106 c!89299) b!824111))

(assert (= (and b!824106 (not c!89299)) b!824103))

(declare-fun b_lambda!11113 () Bool)

(assert (=> (not b_lambda!11113) (not b!824104)))

(assert (=> b!824104 t!22115))

(declare-fun b_and!22107 () Bool)

(assert (= b_and!22105 (and (=> t!22115 result!7951) b_and!22107)))

(declare-fun b_lambda!11115 () Bool)

(assert (=> (not b_lambda!11115) (not b!824107)))

(assert (=> b!824107 t!22115))

(declare-fun b_and!22109 () Bool)

(assert (= b_and!22107 (and (=> t!22115 result!7951) b_and!22109)))

(declare-fun m!766321 () Bool)

(assert (=> b!824101 m!766321))

(assert (=> b!824109 m!766285))

(assert (=> b!824109 m!766285))

(assert (=> b!824109 m!766287))

(declare-fun m!766323 () Bool)

(assert (=> d!104859 m!766323))

(assert (=> d!104859 m!766261))

(declare-fun m!766325 () Bool)

(assert (=> bm!35833 m!766325))

(declare-fun m!766327 () Bool)

(assert (=> b!824103 m!766327))

(assert (=> b!824104 m!766303))

(assert (=> b!824104 m!766305))

(assert (=> b!824104 m!766303))

(assert (=> b!824104 m!766305))

(assert (=> b!824104 m!766307))

(assert (=> b!824104 m!766285))

(declare-fun m!766329 () Bool)

(assert (=> b!824104 m!766329))

(declare-fun m!766331 () Bool)

(assert (=> b!824104 m!766331))

(declare-fun m!766333 () Bool)

(assert (=> b!824104 m!766333))

(assert (=> b!824104 m!766331))

(declare-fun m!766335 () Bool)

(assert (=> b!824104 m!766335))

(assert (=> b!824111 m!766325))

(assert (=> b!824108 m!766285))

(assert (=> b!824108 m!766285))

(assert (=> b!824108 m!766287))

(assert (=> b!824107 m!766303))

(assert (=> b!824107 m!766305))

(assert (=> b!824107 m!766303))

(assert (=> b!824107 m!766305))

(assert (=> b!824107 m!766307))

(assert (=> b!824107 m!766285))

(assert (=> b!824107 m!766285))

(declare-fun m!766337 () Bool)

(assert (=> b!824107 m!766337))

(assert (=> b!824102 m!766285))

(assert (=> b!824102 m!766285))

(declare-fun m!766339 () Bool)

(assert (=> b!824102 m!766339))

(assert (=> b!824020 d!104859))

(declare-fun b!824121 () Bool)

(declare-fun e!458508 () Bool)

(declare-fun e!458509 () Bool)

(assert (=> b!824121 (= e!458508 e!458509)))

(declare-fun lt!371694 () (_ BitVec 64))

(assert (=> b!824121 (= lt!371694 (select (arr!22012 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!371695 () Unit!28218)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45936 (_ BitVec 64) (_ BitVec 32)) Unit!28218)

(assert (=> b!824121 (= lt!371695 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!371694 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!824121 (arrayContainsKey!0 _keys!976 lt!371694 #b00000000000000000000000000000000)))

(declare-fun lt!371693 () Unit!28218)

(assert (=> b!824121 (= lt!371693 lt!371695)))

(declare-fun res!561997 () Bool)

(declare-datatypes ((SeekEntryResult!8721 0))(
  ( (MissingZero!8721 (index!37254 (_ BitVec 32))) (Found!8721 (index!37255 (_ BitVec 32))) (Intermediate!8721 (undefined!9533 Bool) (index!37256 (_ BitVec 32)) (x!69531 (_ BitVec 32))) (Undefined!8721) (MissingVacant!8721 (index!37257 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45936 (_ BitVec 32)) SeekEntryResult!8721)

(assert (=> b!824121 (= res!561997 (= (seekEntryOrOpen!0 (select (arr!22012 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8721 #b00000000000000000000000000000000)))))

(assert (=> b!824121 (=> (not res!561997) (not e!458509))))

(declare-fun b!824122 () Bool)

(declare-fun e!458507 () Bool)

(assert (=> b!824122 (= e!458507 e!458508)))

(declare-fun c!89305 () Bool)

(assert (=> b!824122 (= c!89305 (validKeyInArray!0 (select (arr!22012 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824123 () Bool)

(declare-fun call!35839 () Bool)

(assert (=> b!824123 (= e!458508 call!35839)))

(declare-fun d!104861 () Bool)

(declare-fun res!561998 () Bool)

(assert (=> d!104861 (=> res!561998 e!458507)))

(assert (=> d!104861 (= res!561998 (bvsge #b00000000000000000000000000000000 (size!22433 _keys!976)))))

(assert (=> d!104861 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!458507)))

(declare-fun b!824124 () Bool)

(assert (=> b!824124 (= e!458509 call!35839)))

(declare-fun bm!35836 () Bool)

(assert (=> bm!35836 (= call!35839 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!104861 (not res!561998)) b!824122))

(assert (= (and b!824122 c!89305) b!824121))

(assert (= (and b!824122 (not c!89305)) b!824123))

(assert (= (and b!824121 res!561997) b!824124))

(assert (= (or b!824124 b!824123) bm!35836))

(assert (=> b!824121 m!766285))

(declare-fun m!766341 () Bool)

(assert (=> b!824121 m!766341))

(declare-fun m!766343 () Bool)

(assert (=> b!824121 m!766343))

(assert (=> b!824121 m!766285))

(declare-fun m!766345 () Bool)

(assert (=> b!824121 m!766345))

(assert (=> b!824122 m!766285))

(assert (=> b!824122 m!766285))

(assert (=> b!824122 m!766287))

(declare-fun m!766347 () Bool)

(assert (=> bm!35836 m!766347))

(assert (=> b!824026 d!104861))

(declare-fun condMapEmpty!23965 () Bool)

(declare-fun mapDefault!23965 () ValueCell!7032)

(assert (=> mapNonEmpty!23959 (= condMapEmpty!23965 (= mapRest!23959 ((as const (Array (_ BitVec 32) ValueCell!7032)) mapDefault!23965)))))

(declare-fun e!458514 () Bool)

(declare-fun mapRes!23965 () Bool)

(assert (=> mapNonEmpty!23959 (= tp!46305 (and e!458514 mapRes!23965))))

(declare-fun b!824131 () Bool)

(declare-fun e!458515 () Bool)

(assert (=> b!824131 (= e!458515 tp_is_empty!14895)))

(declare-fun b!824132 () Bool)

(assert (=> b!824132 (= e!458514 tp_is_empty!14895)))

(declare-fun mapNonEmpty!23965 () Bool)

(declare-fun tp!46315 () Bool)

(assert (=> mapNonEmpty!23965 (= mapRes!23965 (and tp!46315 e!458515))))

(declare-fun mapKey!23965 () (_ BitVec 32))

(declare-fun mapValue!23965 () ValueCell!7032)

(declare-fun mapRest!23965 () (Array (_ BitVec 32) ValueCell!7032))

(assert (=> mapNonEmpty!23965 (= mapRest!23959 (store mapRest!23965 mapKey!23965 mapValue!23965))))

(declare-fun mapIsEmpty!23965 () Bool)

(assert (=> mapIsEmpty!23965 mapRes!23965))

(assert (= (and mapNonEmpty!23959 condMapEmpty!23965) mapIsEmpty!23965))

(assert (= (and mapNonEmpty!23959 (not condMapEmpty!23965)) mapNonEmpty!23965))

(assert (= (and mapNonEmpty!23965 ((_ is ValueCellFull!7032) mapValue!23965)) b!824131))

(assert (= (and mapNonEmpty!23959 ((_ is ValueCellFull!7032) mapDefault!23965)) b!824132))

(declare-fun m!766349 () Bool)

(assert (=> mapNonEmpty!23965 m!766349))

(declare-fun b_lambda!11117 () Bool)

(assert (= b_lambda!11111 (or (and start!70992 b_free!13185) b_lambda!11117)))

(declare-fun b_lambda!11119 () Bool)

(assert (= b_lambda!11109 (or (and start!70992 b_free!13185) b_lambda!11119)))

(declare-fun b_lambda!11121 () Bool)

(assert (= b_lambda!11115 (or (and start!70992 b_free!13185) b_lambda!11121)))

(declare-fun b_lambda!11123 () Bool)

(assert (= b_lambda!11113 (or (and start!70992 b_free!13185) b_lambda!11123)))

(check-sat (not b!824090) (not mapNonEmpty!23965) (not b!824122) (not b!824107) (not bm!35832) (not b!824088) (not b!824108) (not b!824101) (not b_lambda!11121) (not b!824087) (not b!824058) (not b!824089) tp_is_empty!14895 (not b!824095) (not b!824061) (not bm!35829) (not bm!35836) (not b!824059) (not b!824094) (not b!824111) (not b!824093) (not d!104857) (not b!824097) b_and!22109 (not b!824103) (not b!824121) (not b_lambda!11117) (not d!104855) (not b!824102) (not b_lambda!11119) (not b_lambda!11123) (not d!104859) (not b!824109) (not b_next!13185) (not b!824104) (not bm!35833))
(check-sat b_and!22109 (not b_next!13185))
