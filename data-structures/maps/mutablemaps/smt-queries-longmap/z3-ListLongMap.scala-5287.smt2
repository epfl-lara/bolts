; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70918 () Bool)

(assert start!70918)

(declare-fun b_free!13131 () Bool)

(declare-fun b_next!13131 () Bool)

(assert (=> start!70918 (= b_free!13131 (not b_next!13131))))

(declare-fun tp!46140 () Bool)

(declare-fun b_and!22033 () Bool)

(assert (=> start!70918 (= tp!46140 b_and!22033)))

(declare-fun b!823268 () Bool)

(declare-fun res!561549 () Bool)

(declare-fun e!457920 () Bool)

(assert (=> b!823268 (=> (not res!561549) (not e!457920))))

(declare-datatypes ((array!45832 0))(
  ( (array!45833 (arr!21961 (Array (_ BitVec 32) (_ BitVec 64))) (size!22382 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45832)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24789 0))(
  ( (V!24790 (val!7468 Int)) )
))
(declare-datatypes ((ValueCell!7005 0))(
  ( (ValueCellFull!7005 (v!9896 V!24789)) (EmptyCell!7005) )
))
(declare-datatypes ((array!45834 0))(
  ( (array!45835 (arr!21962 (Array (_ BitVec 32) ValueCell!7005)) (size!22383 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45834)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823268 (= res!561549 (and (= (size!22383 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22382 _keys!976) (size!22383 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23875 () Bool)

(declare-fun mapRes!23875 () Bool)

(assert (=> mapIsEmpty!23875 mapRes!23875))

(declare-fun b!823269 () Bool)

(declare-fun e!457921 () Bool)

(declare-fun e!457922 () Bool)

(assert (=> b!823269 (= e!457921 (and e!457922 mapRes!23875))))

(declare-fun condMapEmpty!23875 () Bool)

(declare-fun mapDefault!23875 () ValueCell!7005)

(assert (=> b!823269 (= condMapEmpty!23875 (= (arr!21962 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7005)) mapDefault!23875)))))

(declare-fun b!823270 () Bool)

(declare-fun e!457919 () Bool)

(declare-fun tp_is_empty!14841 () Bool)

(assert (=> b!823270 (= e!457919 tp_is_empty!14841)))

(declare-fun mapNonEmpty!23875 () Bool)

(declare-fun tp!46141 () Bool)

(assert (=> mapNonEmpty!23875 (= mapRes!23875 (and tp!46141 e!457919))))

(declare-fun mapKey!23875 () (_ BitVec 32))

(declare-fun mapValue!23875 () ValueCell!7005)

(declare-fun mapRest!23875 () (Array (_ BitVec 32) ValueCell!7005))

(assert (=> mapNonEmpty!23875 (= (arr!21962 _values!788) (store mapRest!23875 mapKey!23875 mapValue!23875))))

(declare-fun b!823272 () Bool)

(declare-fun e!457924 () Bool)

(assert (=> b!823272 (= e!457920 (not e!457924))))

(declare-fun res!561546 () Bool)

(assert (=> b!823272 (=> res!561546 e!457924)))

(assert (=> b!823272 (= res!561546 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9870 0))(
  ( (tuple2!9871 (_1!4945 (_ BitVec 64)) (_2!4945 V!24789)) )
))
(declare-datatypes ((List!15727 0))(
  ( (Nil!15724) (Cons!15723 (h!16852 tuple2!9870) (t!22074 List!15727)) )
))
(declare-datatypes ((ListLongMap!8707 0))(
  ( (ListLongMap!8708 (toList!4369 List!15727)) )
))
(declare-fun lt!371227 () ListLongMap!8707)

(declare-fun lt!371222 () ListLongMap!8707)

(assert (=> b!823272 (= lt!371227 lt!371222)))

(declare-fun zeroValueBefore!34 () V!24789)

(declare-datatypes ((Unit!28182 0))(
  ( (Unit!28183) )
))
(declare-fun lt!371225 () Unit!28182)

(declare-fun zeroValueAfter!34 () V!24789)

(declare-fun minValue!754 () V!24789)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!507 (array!45832 array!45834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24789 V!24789 V!24789 V!24789 (_ BitVec 32) Int) Unit!28182)

(assert (=> b!823272 (= lt!371225 (lemmaNoChangeToArrayThenSameMapNoExtras!507 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2391 (array!45832 array!45834 (_ BitVec 32) (_ BitVec 32) V!24789 V!24789 (_ BitVec 32) Int) ListLongMap!8707)

(assert (=> b!823272 (= lt!371222 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823272 (= lt!371227 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823273 () Bool)

(assert (=> b!823273 (= e!457922 tp_is_empty!14841)))

(declare-fun b!823274 () Bool)

(declare-fun res!561547 () Bool)

(assert (=> b!823274 (=> (not res!561547) (not e!457920))))

(declare-datatypes ((List!15728 0))(
  ( (Nil!15725) (Cons!15724 (h!16853 (_ BitVec 64)) (t!22075 List!15728)) )
))
(declare-fun arrayNoDuplicates!0 (array!45832 (_ BitVec 32) List!15728) Bool)

(assert (=> b!823274 (= res!561547 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15725))))

(declare-fun b!823275 () Bool)

(declare-fun res!561545 () Bool)

(assert (=> b!823275 (=> (not res!561545) (not e!457920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45832 (_ BitVec 32)) Bool)

(assert (=> b!823275 (= res!561545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823271 () Bool)

(assert (=> b!823271 (= e!457924 (bvsle #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun lt!371218 () ListLongMap!8707)

(declare-fun lt!371226 () ListLongMap!8707)

(declare-fun lt!371220 () tuple2!9870)

(declare-fun +!1871 (ListLongMap!8707 tuple2!9870) ListLongMap!8707)

(assert (=> b!823271 (= lt!371218 (+!1871 lt!371226 lt!371220))))

(declare-fun lt!371224 () Unit!28182)

(declare-fun addCommutativeForDiffKeys!466 (ListLongMap!8707 (_ BitVec 64) V!24789 (_ BitVec 64) V!24789) Unit!28182)

(assert (=> b!823271 (= lt!371224 (addCommutativeForDiffKeys!466 lt!371227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!371221 () ListLongMap!8707)

(assert (=> b!823271 (= lt!371221 lt!371218)))

(declare-fun lt!371219 () tuple2!9870)

(assert (=> b!823271 (= lt!371218 (+!1871 (+!1871 lt!371227 lt!371220) lt!371219))))

(assert (=> b!823271 (= lt!371220 (tuple2!9871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!371223 () ListLongMap!8707)

(assert (=> b!823271 (= lt!371223 lt!371226)))

(assert (=> b!823271 (= lt!371226 (+!1871 lt!371227 lt!371219))))

(assert (=> b!823271 (= lt!371219 (tuple2!9871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2501 (array!45832 array!45834 (_ BitVec 32) (_ BitVec 32) V!24789 V!24789 (_ BitVec 32) Int) ListLongMap!8707)

(assert (=> b!823271 (= lt!371221 (getCurrentListMap!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823271 (= lt!371223 (getCurrentListMap!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!561548 () Bool)

(assert (=> start!70918 (=> (not res!561548) (not e!457920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70918 (= res!561548 (validMask!0 mask!1312))))

(assert (=> start!70918 e!457920))

(assert (=> start!70918 tp_is_empty!14841))

(declare-fun array_inv!17501 (array!45832) Bool)

(assert (=> start!70918 (array_inv!17501 _keys!976)))

(assert (=> start!70918 true))

(declare-fun array_inv!17502 (array!45834) Bool)

(assert (=> start!70918 (and (array_inv!17502 _values!788) e!457921)))

(assert (=> start!70918 tp!46140))

(assert (= (and start!70918 res!561548) b!823268))

(assert (= (and b!823268 res!561549) b!823275))

(assert (= (and b!823275 res!561545) b!823274))

(assert (= (and b!823274 res!561547) b!823272))

(assert (= (and b!823272 (not res!561546)) b!823271))

(assert (= (and b!823269 condMapEmpty!23875) mapIsEmpty!23875))

(assert (= (and b!823269 (not condMapEmpty!23875)) mapNonEmpty!23875))

(get-info :version)

(assert (= (and mapNonEmpty!23875 ((_ is ValueCellFull!7005) mapValue!23875)) b!823270))

(assert (= (and b!823269 ((_ is ValueCellFull!7005) mapDefault!23875)) b!823273))

(assert (= start!70918 b!823269))

(declare-fun m!765519 () Bool)

(assert (=> mapNonEmpty!23875 m!765519))

(declare-fun m!765521 () Bool)

(assert (=> b!823275 m!765521))

(declare-fun m!765523 () Bool)

(assert (=> start!70918 m!765523))

(declare-fun m!765525 () Bool)

(assert (=> start!70918 m!765525))

(declare-fun m!765527 () Bool)

(assert (=> start!70918 m!765527))

(declare-fun m!765529 () Bool)

(assert (=> b!823272 m!765529))

(declare-fun m!765531 () Bool)

(assert (=> b!823272 m!765531))

(declare-fun m!765533 () Bool)

(assert (=> b!823272 m!765533))

(declare-fun m!765535 () Bool)

(assert (=> b!823271 m!765535))

(declare-fun m!765537 () Bool)

(assert (=> b!823271 m!765537))

(declare-fun m!765539 () Bool)

(assert (=> b!823271 m!765539))

(declare-fun m!765541 () Bool)

(assert (=> b!823271 m!765541))

(declare-fun m!765543 () Bool)

(assert (=> b!823271 m!765543))

(declare-fun m!765545 () Bool)

(assert (=> b!823271 m!765545))

(declare-fun m!765547 () Bool)

(assert (=> b!823271 m!765547))

(assert (=> b!823271 m!765539))

(declare-fun m!765549 () Bool)

(assert (=> b!823274 m!765549))

(check-sat (not b!823275) (not start!70918) (not b_next!13131) b_and!22033 (not mapNonEmpty!23875) (not b!823271) (not b!823274) tp_is_empty!14841 (not b!823272))
(check-sat b_and!22033 (not b_next!13131))
(get-model)

(declare-fun d!104799 () Bool)

(assert (=> d!104799 (= (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371260 () Unit!28182)

(declare-fun choose!1409 (array!45832 array!45834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24789 V!24789 V!24789 V!24789 (_ BitVec 32) Int) Unit!28182)

(assert (=> d!104799 (= lt!371260 (choose!1409 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104799 (validMask!0 mask!1312)))

(assert (=> d!104799 (= (lemmaNoChangeToArrayThenSameMapNoExtras!507 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!371260)))

(declare-fun bs!22977 () Bool)

(assert (= bs!22977 d!104799))

(assert (=> bs!22977 m!765533))

(assert (=> bs!22977 m!765531))

(declare-fun m!765583 () Bool)

(assert (=> bs!22977 m!765583))

(assert (=> bs!22977 m!765523))

(assert (=> b!823272 d!104799))

(declare-fun b!823324 () Bool)

(declare-fun lt!371281 () Unit!28182)

(declare-fun lt!371280 () Unit!28182)

(assert (=> b!823324 (= lt!371281 lt!371280)))

(declare-fun lt!371275 () ListLongMap!8707)

(declare-fun lt!371279 () (_ BitVec 64))

(declare-fun lt!371277 () (_ BitVec 64))

(declare-fun lt!371278 () V!24789)

(declare-fun contains!4172 (ListLongMap!8707 (_ BitVec 64)) Bool)

(assert (=> b!823324 (not (contains!4172 (+!1871 lt!371275 (tuple2!9871 lt!371279 lt!371278)) lt!371277))))

(declare-fun addStillNotContains!186 (ListLongMap!8707 (_ BitVec 64) V!24789 (_ BitVec 64)) Unit!28182)

(assert (=> b!823324 (= lt!371280 (addStillNotContains!186 lt!371275 lt!371279 lt!371278 lt!371277))))

(assert (=> b!823324 (= lt!371277 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11687 (ValueCell!7005 V!24789) V!24789)

(declare-fun dynLambda!969 (Int (_ BitVec 64)) V!24789)

(assert (=> b!823324 (= lt!371278 (get!11687 (select (arr!21962 _values!788) #b00000000000000000000000000000000) (dynLambda!969 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!823324 (= lt!371279 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35794 () ListLongMap!8707)

(assert (=> b!823324 (= lt!371275 call!35794)))

(declare-fun e!457957 () ListLongMap!8707)

(assert (=> b!823324 (= e!457957 (+!1871 call!35794 (tuple2!9871 (select (arr!21961 _keys!976) #b00000000000000000000000000000000) (get!11687 (select (arr!21962 _values!788) #b00000000000000000000000000000000) (dynLambda!969 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!823325 () Bool)

(declare-fun e!457961 () ListLongMap!8707)

(assert (=> b!823325 (= e!457961 (ListLongMap!8708 Nil!15724))))

(declare-fun b!823326 () Bool)

(declare-fun e!457962 () Bool)

(declare-fun e!457963 () Bool)

(assert (=> b!823326 (= e!457962 e!457963)))

(assert (=> b!823326 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun res!561576 () Bool)

(declare-fun lt!371276 () ListLongMap!8707)

(assert (=> b!823326 (= res!561576 (contains!4172 lt!371276 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!823326 (=> (not res!561576) (not e!457963))))

(declare-fun bm!35791 () Bool)

(assert (=> bm!35791 (= call!35794 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!823327 () Bool)

(assert (=> b!823327 (= e!457957 call!35794)))

(declare-fun b!823328 () Bool)

(declare-fun e!457960 () Bool)

(declare-fun isEmpty!646 (ListLongMap!8707) Bool)

(assert (=> b!823328 (= e!457960 (isEmpty!646 lt!371276))))

(declare-fun b!823329 () Bool)

(declare-fun res!561575 () Bool)

(declare-fun e!457958 () Bool)

(assert (=> b!823329 (=> (not res!561575) (not e!457958))))

(assert (=> b!823329 (= res!561575 (not (contains!4172 lt!371276 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!104801 () Bool)

(assert (=> d!104801 e!457958))

(declare-fun res!561573 () Bool)

(assert (=> d!104801 (=> (not res!561573) (not e!457958))))

(assert (=> d!104801 (= res!561573 (not (contains!4172 lt!371276 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104801 (= lt!371276 e!457961)))

(declare-fun c!89249 () Bool)

(assert (=> d!104801 (= c!89249 (bvsge #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(assert (=> d!104801 (validMask!0 mask!1312)))

(assert (=> d!104801 (= (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!371276)))

(declare-fun b!823330 () Bool)

(assert (=> b!823330 (= e!457962 e!457960)))

(declare-fun c!89247 () Bool)

(assert (=> b!823330 (= c!89247 (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823331 () Bool)

(assert (=> b!823331 (= e!457961 e!457957)))

(declare-fun c!89246 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!823331 (= c!89246 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823332 () Bool)

(assert (=> b!823332 (= e!457958 e!457962)))

(declare-fun c!89248 () Bool)

(declare-fun e!457959 () Bool)

(assert (=> b!823332 (= c!89248 e!457959)))

(declare-fun res!561574 () Bool)

(assert (=> b!823332 (=> (not res!561574) (not e!457959))))

(assert (=> b!823332 (= res!561574 (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823333 () Bool)

(assert (=> b!823333 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(assert (=> b!823333 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22383 _values!788)))))

(declare-fun apply!359 (ListLongMap!8707 (_ BitVec 64)) V!24789)

(assert (=> b!823333 (= e!457963 (= (apply!359 lt!371276 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)) (get!11687 (select (arr!21962 _values!788) #b00000000000000000000000000000000) (dynLambda!969 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!823334 () Bool)

(assert (=> b!823334 (= e!457959 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!823334 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!823335 () Bool)

(assert (=> b!823335 (= e!457960 (= lt!371276 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(assert (= (and d!104801 c!89249) b!823325))

(assert (= (and d!104801 (not c!89249)) b!823331))

(assert (= (and b!823331 c!89246) b!823324))

(assert (= (and b!823331 (not c!89246)) b!823327))

(assert (= (or b!823324 b!823327) bm!35791))

(assert (= (and d!104801 res!561573) b!823329))

(assert (= (and b!823329 res!561575) b!823332))

(assert (= (and b!823332 res!561574) b!823334))

(assert (= (and b!823332 c!89248) b!823326))

(assert (= (and b!823332 (not c!89248)) b!823330))

(assert (= (and b!823326 res!561576) b!823333))

(assert (= (and b!823330 c!89247) b!823335))

(assert (= (and b!823330 (not c!89247)) b!823328))

(declare-fun b_lambda!11085 () Bool)

(assert (=> (not b_lambda!11085) (not b!823324)))

(declare-fun t!22078 () Bool)

(declare-fun tb!4207 () Bool)

(assert (=> (and start!70918 (= defaultEntry!796 defaultEntry!796) t!22078) tb!4207))

(declare-fun result!7945 () Bool)

(assert (=> tb!4207 (= result!7945 tp_is_empty!14841)))

(assert (=> b!823324 t!22078))

(declare-fun b_and!22037 () Bool)

(assert (= b_and!22033 (and (=> t!22078 result!7945) b_and!22037)))

(declare-fun b_lambda!11087 () Bool)

(assert (=> (not b_lambda!11087) (not b!823333)))

(assert (=> b!823333 t!22078))

(declare-fun b_and!22039 () Bool)

(assert (= b_and!22037 (and (=> t!22078 result!7945) b_and!22039)))

(declare-fun m!765585 () Bool)

(assert (=> b!823333 m!765585))

(declare-fun m!765587 () Bool)

(assert (=> b!823333 m!765587))

(declare-fun m!765589 () Bool)

(assert (=> b!823333 m!765589))

(declare-fun m!765591 () Bool)

(assert (=> b!823333 m!765591))

(assert (=> b!823333 m!765589))

(assert (=> b!823333 m!765585))

(assert (=> b!823333 m!765587))

(declare-fun m!765593 () Bool)

(assert (=> b!823333 m!765593))

(assert (=> b!823331 m!765589))

(assert (=> b!823331 m!765589))

(declare-fun m!765595 () Bool)

(assert (=> b!823331 m!765595))

(assert (=> b!823326 m!765589))

(assert (=> b!823326 m!765589))

(declare-fun m!765597 () Bool)

(assert (=> b!823326 m!765597))

(declare-fun m!765599 () Bool)

(assert (=> b!823329 m!765599))

(assert (=> b!823334 m!765589))

(assert (=> b!823334 m!765589))

(assert (=> b!823334 m!765595))

(declare-fun m!765601 () Bool)

(assert (=> b!823335 m!765601))

(declare-fun m!765603 () Bool)

(assert (=> b!823328 m!765603))

(assert (=> bm!35791 m!765601))

(declare-fun m!765605 () Bool)

(assert (=> b!823324 m!765605))

(declare-fun m!765607 () Bool)

(assert (=> b!823324 m!765607))

(assert (=> b!823324 m!765585))

(assert (=> b!823324 m!765587))

(assert (=> b!823324 m!765605))

(declare-fun m!765609 () Bool)

(assert (=> b!823324 m!765609))

(declare-fun m!765611 () Bool)

(assert (=> b!823324 m!765611))

(assert (=> b!823324 m!765589))

(assert (=> b!823324 m!765585))

(assert (=> b!823324 m!765587))

(assert (=> b!823324 m!765593))

(declare-fun m!765613 () Bool)

(assert (=> d!104801 m!765613))

(assert (=> d!104801 m!765523))

(assert (=> b!823272 d!104801))

(declare-fun b!823338 () Bool)

(declare-fun lt!371288 () Unit!28182)

(declare-fun lt!371287 () Unit!28182)

(assert (=> b!823338 (= lt!371288 lt!371287)))

(declare-fun lt!371284 () (_ BitVec 64))

(declare-fun lt!371285 () V!24789)

(declare-fun lt!371286 () (_ BitVec 64))

(declare-fun lt!371282 () ListLongMap!8707)

(assert (=> b!823338 (not (contains!4172 (+!1871 lt!371282 (tuple2!9871 lt!371286 lt!371285)) lt!371284))))

(assert (=> b!823338 (= lt!371287 (addStillNotContains!186 lt!371282 lt!371286 lt!371285 lt!371284))))

(assert (=> b!823338 (= lt!371284 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!823338 (= lt!371285 (get!11687 (select (arr!21962 _values!788) #b00000000000000000000000000000000) (dynLambda!969 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!823338 (= lt!371286 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35795 () ListLongMap!8707)

(assert (=> b!823338 (= lt!371282 call!35795)))

(declare-fun e!457964 () ListLongMap!8707)

(assert (=> b!823338 (= e!457964 (+!1871 call!35795 (tuple2!9871 (select (arr!21961 _keys!976) #b00000000000000000000000000000000) (get!11687 (select (arr!21962 _values!788) #b00000000000000000000000000000000) (dynLambda!969 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!823339 () Bool)

(declare-fun e!457968 () ListLongMap!8707)

(assert (=> b!823339 (= e!457968 (ListLongMap!8708 Nil!15724))))

(declare-fun b!823340 () Bool)

(declare-fun e!457969 () Bool)

(declare-fun e!457970 () Bool)

(assert (=> b!823340 (= e!457969 e!457970)))

(assert (=> b!823340 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun res!561580 () Bool)

(declare-fun lt!371283 () ListLongMap!8707)

(assert (=> b!823340 (= res!561580 (contains!4172 lt!371283 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!823340 (=> (not res!561580) (not e!457970))))

(declare-fun bm!35792 () Bool)

(assert (=> bm!35792 (= call!35795 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!823341 () Bool)

(assert (=> b!823341 (= e!457964 call!35795)))

(declare-fun b!823342 () Bool)

(declare-fun e!457967 () Bool)

(assert (=> b!823342 (= e!457967 (isEmpty!646 lt!371283))))

(declare-fun b!823343 () Bool)

(declare-fun res!561579 () Bool)

(declare-fun e!457965 () Bool)

(assert (=> b!823343 (=> (not res!561579) (not e!457965))))

(assert (=> b!823343 (= res!561579 (not (contains!4172 lt!371283 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!104803 () Bool)

(assert (=> d!104803 e!457965))

(declare-fun res!561577 () Bool)

(assert (=> d!104803 (=> (not res!561577) (not e!457965))))

(assert (=> d!104803 (= res!561577 (not (contains!4172 lt!371283 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104803 (= lt!371283 e!457968)))

(declare-fun c!89253 () Bool)

(assert (=> d!104803 (= c!89253 (bvsge #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(assert (=> d!104803 (validMask!0 mask!1312)))

(assert (=> d!104803 (= (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!371283)))

(declare-fun b!823344 () Bool)

(assert (=> b!823344 (= e!457969 e!457967)))

(declare-fun c!89251 () Bool)

(assert (=> b!823344 (= c!89251 (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823345 () Bool)

(assert (=> b!823345 (= e!457968 e!457964)))

(declare-fun c!89250 () Bool)

(assert (=> b!823345 (= c!89250 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823346 () Bool)

(assert (=> b!823346 (= e!457965 e!457969)))

(declare-fun c!89252 () Bool)

(declare-fun e!457966 () Bool)

(assert (=> b!823346 (= c!89252 e!457966)))

(declare-fun res!561578 () Bool)

(assert (=> b!823346 (=> (not res!561578) (not e!457966))))

(assert (=> b!823346 (= res!561578 (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823347 () Bool)

(assert (=> b!823347 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(assert (=> b!823347 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22383 _values!788)))))

(assert (=> b!823347 (= e!457970 (= (apply!359 lt!371283 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)) (get!11687 (select (arr!21962 _values!788) #b00000000000000000000000000000000) (dynLambda!969 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!823348 () Bool)

(assert (=> b!823348 (= e!457966 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!823348 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!823349 () Bool)

(assert (=> b!823349 (= e!457967 (= lt!371283 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(assert (= (and d!104803 c!89253) b!823339))

(assert (= (and d!104803 (not c!89253)) b!823345))

(assert (= (and b!823345 c!89250) b!823338))

(assert (= (and b!823345 (not c!89250)) b!823341))

(assert (= (or b!823338 b!823341) bm!35792))

(assert (= (and d!104803 res!561577) b!823343))

(assert (= (and b!823343 res!561579) b!823346))

(assert (= (and b!823346 res!561578) b!823348))

(assert (= (and b!823346 c!89252) b!823340))

(assert (= (and b!823346 (not c!89252)) b!823344))

(assert (= (and b!823340 res!561580) b!823347))

(assert (= (and b!823344 c!89251) b!823349))

(assert (= (and b!823344 (not c!89251)) b!823342))

(declare-fun b_lambda!11089 () Bool)

(assert (=> (not b_lambda!11089) (not b!823338)))

(assert (=> b!823338 t!22078))

(declare-fun b_and!22041 () Bool)

(assert (= b_and!22039 (and (=> t!22078 result!7945) b_and!22041)))

(declare-fun b_lambda!11091 () Bool)

(assert (=> (not b_lambda!11091) (not b!823347)))

(assert (=> b!823347 t!22078))

(declare-fun b_and!22043 () Bool)

(assert (= b_and!22041 (and (=> t!22078 result!7945) b_and!22043)))

(assert (=> b!823347 m!765585))

(assert (=> b!823347 m!765587))

(assert (=> b!823347 m!765589))

(declare-fun m!765615 () Bool)

(assert (=> b!823347 m!765615))

(assert (=> b!823347 m!765589))

(assert (=> b!823347 m!765585))

(assert (=> b!823347 m!765587))

(assert (=> b!823347 m!765593))

(assert (=> b!823345 m!765589))

(assert (=> b!823345 m!765589))

(assert (=> b!823345 m!765595))

(assert (=> b!823340 m!765589))

(assert (=> b!823340 m!765589))

(declare-fun m!765617 () Bool)

(assert (=> b!823340 m!765617))

(declare-fun m!765619 () Bool)

(assert (=> b!823343 m!765619))

(assert (=> b!823348 m!765589))

(assert (=> b!823348 m!765589))

(assert (=> b!823348 m!765595))

(declare-fun m!765621 () Bool)

(assert (=> b!823349 m!765621))

(declare-fun m!765623 () Bool)

(assert (=> b!823342 m!765623))

(assert (=> bm!35792 m!765621))

(declare-fun m!765625 () Bool)

(assert (=> b!823338 m!765625))

(declare-fun m!765627 () Bool)

(assert (=> b!823338 m!765627))

(assert (=> b!823338 m!765585))

(assert (=> b!823338 m!765587))

(assert (=> b!823338 m!765625))

(declare-fun m!765629 () Bool)

(assert (=> b!823338 m!765629))

(declare-fun m!765631 () Bool)

(assert (=> b!823338 m!765631))

(assert (=> b!823338 m!765589))

(assert (=> b!823338 m!765585))

(assert (=> b!823338 m!765587))

(assert (=> b!823338 m!765593))

(declare-fun m!765633 () Bool)

(assert (=> d!104803 m!765633))

(assert (=> d!104803 m!765523))

(assert (=> b!823272 d!104803))

(declare-fun d!104805 () Bool)

(declare-fun e!457973 () Bool)

(assert (=> d!104805 e!457973))

(declare-fun res!561585 () Bool)

(assert (=> d!104805 (=> (not res!561585) (not e!457973))))

(declare-fun lt!371297 () ListLongMap!8707)

(assert (=> d!104805 (= res!561585 (contains!4172 lt!371297 (_1!4945 lt!371219)))))

(declare-fun lt!371299 () List!15727)

(assert (=> d!104805 (= lt!371297 (ListLongMap!8708 lt!371299))))

(declare-fun lt!371300 () Unit!28182)

(declare-fun lt!371298 () Unit!28182)

(assert (=> d!104805 (= lt!371300 lt!371298)))

(declare-datatypes ((Option!410 0))(
  ( (Some!409 (v!9898 V!24789)) (None!408) )
))
(declare-fun getValueByKey!404 (List!15727 (_ BitVec 64)) Option!410)

(assert (=> d!104805 (= (getValueByKey!404 lt!371299 (_1!4945 lt!371219)) (Some!409 (_2!4945 lt!371219)))))

(declare-fun lemmaContainsTupThenGetReturnValue!220 (List!15727 (_ BitVec 64) V!24789) Unit!28182)

(assert (=> d!104805 (= lt!371298 (lemmaContainsTupThenGetReturnValue!220 lt!371299 (_1!4945 lt!371219) (_2!4945 lt!371219)))))

(declare-fun insertStrictlySorted!258 (List!15727 (_ BitVec 64) V!24789) List!15727)

(assert (=> d!104805 (= lt!371299 (insertStrictlySorted!258 (toList!4369 lt!371227) (_1!4945 lt!371219) (_2!4945 lt!371219)))))

(assert (=> d!104805 (= (+!1871 lt!371227 lt!371219) lt!371297)))

(declare-fun b!823354 () Bool)

(declare-fun res!561586 () Bool)

(assert (=> b!823354 (=> (not res!561586) (not e!457973))))

(assert (=> b!823354 (= res!561586 (= (getValueByKey!404 (toList!4369 lt!371297) (_1!4945 lt!371219)) (Some!409 (_2!4945 lt!371219))))))

(declare-fun b!823355 () Bool)

(declare-fun contains!4173 (List!15727 tuple2!9870) Bool)

(assert (=> b!823355 (= e!457973 (contains!4173 (toList!4369 lt!371297) lt!371219))))

(assert (= (and d!104805 res!561585) b!823354))

(assert (= (and b!823354 res!561586) b!823355))

(declare-fun m!765635 () Bool)

(assert (=> d!104805 m!765635))

(declare-fun m!765637 () Bool)

(assert (=> d!104805 m!765637))

(declare-fun m!765639 () Bool)

(assert (=> d!104805 m!765639))

(declare-fun m!765641 () Bool)

(assert (=> d!104805 m!765641))

(declare-fun m!765643 () Bool)

(assert (=> b!823354 m!765643))

(declare-fun m!765645 () Bool)

(assert (=> b!823355 m!765645))

(assert (=> b!823271 d!104805))

(declare-fun d!104807 () Bool)

(declare-fun e!457974 () Bool)

(assert (=> d!104807 e!457974))

(declare-fun res!561587 () Bool)

(assert (=> d!104807 (=> (not res!561587) (not e!457974))))

(declare-fun lt!371301 () ListLongMap!8707)

(assert (=> d!104807 (= res!561587 (contains!4172 lt!371301 (_1!4945 lt!371219)))))

(declare-fun lt!371303 () List!15727)

(assert (=> d!104807 (= lt!371301 (ListLongMap!8708 lt!371303))))

(declare-fun lt!371304 () Unit!28182)

(declare-fun lt!371302 () Unit!28182)

(assert (=> d!104807 (= lt!371304 lt!371302)))

(assert (=> d!104807 (= (getValueByKey!404 lt!371303 (_1!4945 lt!371219)) (Some!409 (_2!4945 lt!371219)))))

(assert (=> d!104807 (= lt!371302 (lemmaContainsTupThenGetReturnValue!220 lt!371303 (_1!4945 lt!371219) (_2!4945 lt!371219)))))

(assert (=> d!104807 (= lt!371303 (insertStrictlySorted!258 (toList!4369 (+!1871 lt!371227 lt!371220)) (_1!4945 lt!371219) (_2!4945 lt!371219)))))

(assert (=> d!104807 (= (+!1871 (+!1871 lt!371227 lt!371220) lt!371219) lt!371301)))

(declare-fun b!823356 () Bool)

(declare-fun res!561588 () Bool)

(assert (=> b!823356 (=> (not res!561588) (not e!457974))))

(assert (=> b!823356 (= res!561588 (= (getValueByKey!404 (toList!4369 lt!371301) (_1!4945 lt!371219)) (Some!409 (_2!4945 lt!371219))))))

(declare-fun b!823357 () Bool)

(assert (=> b!823357 (= e!457974 (contains!4173 (toList!4369 lt!371301) lt!371219))))

(assert (= (and d!104807 res!561587) b!823356))

(assert (= (and b!823356 res!561588) b!823357))

(declare-fun m!765647 () Bool)

(assert (=> d!104807 m!765647))

(declare-fun m!765649 () Bool)

(assert (=> d!104807 m!765649))

(declare-fun m!765651 () Bool)

(assert (=> d!104807 m!765651))

(declare-fun m!765653 () Bool)

(assert (=> d!104807 m!765653))

(declare-fun m!765655 () Bool)

(assert (=> b!823356 m!765655))

(declare-fun m!765657 () Bool)

(assert (=> b!823357 m!765657))

(assert (=> b!823271 d!104807))

(declare-fun d!104809 () Bool)

(declare-fun e!458002 () Bool)

(assert (=> d!104809 e!458002))

(declare-fun res!561611 () Bool)

(assert (=> d!104809 (=> (not res!561611) (not e!458002))))

(assert (=> d!104809 (= res!561611 (or (bvsge #b00000000000000000000000000000000 (size!22382 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))))

(declare-fun lt!371360 () ListLongMap!8707)

(declare-fun lt!371357 () ListLongMap!8707)

(assert (=> d!104809 (= lt!371360 lt!371357)))

(declare-fun lt!371355 () Unit!28182)

(declare-fun e!458010 () Unit!28182)

(assert (=> d!104809 (= lt!371355 e!458010)))

(declare-fun c!89270 () Bool)

(declare-fun e!458009 () Bool)

(assert (=> d!104809 (= c!89270 e!458009)))

(declare-fun res!561612 () Bool)

(assert (=> d!104809 (=> (not res!561612) (not e!458009))))

(assert (=> d!104809 (= res!561612 (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun e!458004 () ListLongMap!8707)

(assert (=> d!104809 (= lt!371357 e!458004)))

(declare-fun c!89271 () Bool)

(assert (=> d!104809 (= c!89271 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104809 (validMask!0 mask!1312)))

(assert (=> d!104809 (= (getCurrentListMap!2501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!371360)))

(declare-fun b!823400 () Bool)

(declare-fun e!458011 () Bool)

(assert (=> b!823400 (= e!458011 (= (apply!359 lt!371360 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun bm!35807 () Bool)

(declare-fun call!35810 () ListLongMap!8707)

(declare-fun call!35813 () ListLongMap!8707)

(assert (=> bm!35807 (= call!35810 call!35813)))

(declare-fun b!823401 () Bool)

(declare-fun e!458013 () Bool)

(assert (=> b!823401 (= e!458002 e!458013)))

(declare-fun c!89267 () Bool)

(assert (=> b!823401 (= c!89267 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!823402 () Bool)

(declare-fun call!35815 () Bool)

(assert (=> b!823402 (= e!458013 (not call!35815))))

(declare-fun bm!35808 () Bool)

(declare-fun call!35814 () ListLongMap!8707)

(declare-fun call!35816 () ListLongMap!8707)

(assert (=> bm!35808 (= call!35814 call!35816)))

(declare-fun b!823403 () Bool)

(declare-fun e!458008 () ListLongMap!8707)

(assert (=> b!823403 (= e!458008 call!35814)))

(declare-fun bm!35809 () Bool)

(declare-fun call!35811 () ListLongMap!8707)

(assert (=> bm!35809 (= call!35813 call!35811)))

(declare-fun b!823404 () Bool)

(declare-fun res!561615 () Bool)

(assert (=> b!823404 (=> (not res!561615) (not e!458002))))

(declare-fun e!458003 () Bool)

(assert (=> b!823404 (= res!561615 e!458003)))

(declare-fun c!89269 () Bool)

(assert (=> b!823404 (= c!89269 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!823405 () Bool)

(declare-fun res!561609 () Bool)

(assert (=> b!823405 (=> (not res!561609) (not e!458002))))

(declare-fun e!458007 () Bool)

(assert (=> b!823405 (= res!561609 e!458007)))

(declare-fun res!561613 () Bool)

(assert (=> b!823405 (=> res!561613 e!458007)))

(declare-fun e!458005 () Bool)

(assert (=> b!823405 (= res!561613 (not e!458005))))

(declare-fun res!561608 () Bool)

(assert (=> b!823405 (=> (not res!561608) (not e!458005))))

(assert (=> b!823405 (= res!561608 (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823406 () Bool)

(assert (=> b!823406 (= e!458004 (+!1871 call!35816 (tuple2!9871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!823407 () Bool)

(assert (=> b!823407 (= e!458008 call!35810)))

(declare-fun bm!35810 () Bool)

(assert (=> bm!35810 (= call!35815 (contains!4172 lt!371360 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!35811 () Bool)

(assert (=> bm!35811 (= call!35811 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823408 () Bool)

(assert (=> b!823408 (= e!458009 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823409 () Bool)

(declare-fun c!89266 () Bool)

(assert (=> b!823409 (= c!89266 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!458001 () ListLongMap!8707)

(assert (=> b!823409 (= e!458001 e!458008)))

(declare-fun b!823410 () Bool)

(declare-fun Unit!28184 () Unit!28182)

(assert (=> b!823410 (= e!458010 Unit!28184)))

(declare-fun b!823411 () Bool)

(declare-fun e!458006 () Bool)

(assert (=> b!823411 (= e!458007 e!458006)))

(declare-fun res!561614 () Bool)

(assert (=> b!823411 (=> (not res!561614) (not e!458006))))

(assert (=> b!823411 (= res!561614 (contains!4172 lt!371360 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!823411 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823412 () Bool)

(assert (=> b!823412 (= e!458005 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823413 () Bool)

(declare-fun e!458012 () Bool)

(assert (=> b!823413 (= e!458012 (= (apply!359 lt!371360 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!823414 () Bool)

(assert (=> b!823414 (= e!458004 e!458001)))

(declare-fun c!89268 () Bool)

(assert (=> b!823414 (= c!89268 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!823415 () Bool)

(assert (=> b!823415 (= e!458003 e!458011)))

(declare-fun res!561610 () Bool)

(declare-fun call!35812 () Bool)

(assert (=> b!823415 (= res!561610 call!35812)))

(assert (=> b!823415 (=> (not res!561610) (not e!458011))))

(declare-fun bm!35812 () Bool)

(assert (=> bm!35812 (= call!35816 (+!1871 (ite c!89271 call!35811 (ite c!89268 call!35813 call!35810)) (ite (or c!89271 c!89268) (tuple2!9871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!823416 () Bool)

(assert (=> b!823416 (= e!458001 call!35814)))

(declare-fun bm!35813 () Bool)

(assert (=> bm!35813 (= call!35812 (contains!4172 lt!371360 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!823417 () Bool)

(assert (=> b!823417 (= e!458006 (= (apply!359 lt!371360 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)) (get!11687 (select (arr!21962 _values!788) #b00000000000000000000000000000000) (dynLambda!969 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!823417 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22383 _values!788)))))

(assert (=> b!823417 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823418 () Bool)

(assert (=> b!823418 (= e!458003 (not call!35812))))

(declare-fun b!823419 () Bool)

(declare-fun lt!371356 () Unit!28182)

(assert (=> b!823419 (= e!458010 lt!371356)))

(declare-fun lt!371369 () ListLongMap!8707)

(assert (=> b!823419 (= lt!371369 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371351 () (_ BitVec 64))

(assert (=> b!823419 (= lt!371351 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!371365 () (_ BitVec 64))

(assert (=> b!823419 (= lt!371365 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!371366 () Unit!28182)

(declare-fun addStillContains!312 (ListLongMap!8707 (_ BitVec 64) V!24789 (_ BitVec 64)) Unit!28182)

(assert (=> b!823419 (= lt!371366 (addStillContains!312 lt!371369 lt!371351 zeroValueBefore!34 lt!371365))))

(assert (=> b!823419 (contains!4172 (+!1871 lt!371369 (tuple2!9871 lt!371351 zeroValueBefore!34)) lt!371365)))

(declare-fun lt!371350 () Unit!28182)

(assert (=> b!823419 (= lt!371350 lt!371366)))

(declare-fun lt!371354 () ListLongMap!8707)

(assert (=> b!823419 (= lt!371354 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371358 () (_ BitVec 64))

(assert (=> b!823419 (= lt!371358 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!371368 () (_ BitVec 64))

(assert (=> b!823419 (= lt!371368 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!371353 () Unit!28182)

(declare-fun addApplyDifferent!312 (ListLongMap!8707 (_ BitVec 64) V!24789 (_ BitVec 64)) Unit!28182)

(assert (=> b!823419 (= lt!371353 (addApplyDifferent!312 lt!371354 lt!371358 minValue!754 lt!371368))))

(assert (=> b!823419 (= (apply!359 (+!1871 lt!371354 (tuple2!9871 lt!371358 minValue!754)) lt!371368) (apply!359 lt!371354 lt!371368))))

(declare-fun lt!371370 () Unit!28182)

(assert (=> b!823419 (= lt!371370 lt!371353)))

(declare-fun lt!371352 () ListLongMap!8707)

(assert (=> b!823419 (= lt!371352 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371361 () (_ BitVec 64))

(assert (=> b!823419 (= lt!371361 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!371349 () (_ BitVec 64))

(assert (=> b!823419 (= lt!371349 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!371367 () Unit!28182)

(assert (=> b!823419 (= lt!371367 (addApplyDifferent!312 lt!371352 lt!371361 zeroValueBefore!34 lt!371349))))

(assert (=> b!823419 (= (apply!359 (+!1871 lt!371352 (tuple2!9871 lt!371361 zeroValueBefore!34)) lt!371349) (apply!359 lt!371352 lt!371349))))

(declare-fun lt!371362 () Unit!28182)

(assert (=> b!823419 (= lt!371362 lt!371367)))

(declare-fun lt!371363 () ListLongMap!8707)

(assert (=> b!823419 (= lt!371363 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371359 () (_ BitVec 64))

(assert (=> b!823419 (= lt!371359 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!371364 () (_ BitVec 64))

(assert (=> b!823419 (= lt!371364 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!823419 (= lt!371356 (addApplyDifferent!312 lt!371363 lt!371359 minValue!754 lt!371364))))

(assert (=> b!823419 (= (apply!359 (+!1871 lt!371363 (tuple2!9871 lt!371359 minValue!754)) lt!371364) (apply!359 lt!371363 lt!371364))))

(declare-fun b!823420 () Bool)

(assert (=> b!823420 (= e!458013 e!458012)))

(declare-fun res!561607 () Bool)

(assert (=> b!823420 (= res!561607 call!35815)))

(assert (=> b!823420 (=> (not res!561607) (not e!458012))))

(assert (= (and d!104809 c!89271) b!823406))

(assert (= (and d!104809 (not c!89271)) b!823414))

(assert (= (and b!823414 c!89268) b!823416))

(assert (= (and b!823414 (not c!89268)) b!823409))

(assert (= (and b!823409 c!89266) b!823403))

(assert (= (and b!823409 (not c!89266)) b!823407))

(assert (= (or b!823403 b!823407) bm!35807))

(assert (= (or b!823416 bm!35807) bm!35809))

(assert (= (or b!823416 b!823403) bm!35808))

(assert (= (or b!823406 bm!35809) bm!35811))

(assert (= (or b!823406 bm!35808) bm!35812))

(assert (= (and d!104809 res!561612) b!823408))

(assert (= (and d!104809 c!89270) b!823419))

(assert (= (and d!104809 (not c!89270)) b!823410))

(assert (= (and d!104809 res!561611) b!823405))

(assert (= (and b!823405 res!561608) b!823412))

(assert (= (and b!823405 (not res!561613)) b!823411))

(assert (= (and b!823411 res!561614) b!823417))

(assert (= (and b!823405 res!561609) b!823404))

(assert (= (and b!823404 c!89269) b!823415))

(assert (= (and b!823404 (not c!89269)) b!823418))

(assert (= (and b!823415 res!561610) b!823400))

(assert (= (or b!823415 b!823418) bm!35813))

(assert (= (and b!823404 res!561615) b!823401))

(assert (= (and b!823401 c!89267) b!823420))

(assert (= (and b!823401 (not c!89267)) b!823402))

(assert (= (and b!823420 res!561607) b!823413))

(assert (= (or b!823420 b!823402) bm!35810))

(declare-fun b_lambda!11093 () Bool)

(assert (=> (not b_lambda!11093) (not b!823417)))

(assert (=> b!823417 t!22078))

(declare-fun b_and!22045 () Bool)

(assert (= b_and!22043 (and (=> t!22078 result!7945) b_and!22045)))

(declare-fun m!765659 () Bool)

(assert (=> bm!35810 m!765659))

(declare-fun m!765661 () Bool)

(assert (=> b!823413 m!765661))

(assert (=> b!823412 m!765589))

(assert (=> b!823412 m!765589))

(assert (=> b!823412 m!765595))

(assert (=> b!823411 m!765589))

(assert (=> b!823411 m!765589))

(declare-fun m!765663 () Bool)

(assert (=> b!823411 m!765663))

(assert (=> bm!35811 m!765533))

(declare-fun m!765665 () Bool)

(assert (=> bm!35813 m!765665))

(declare-fun m!765667 () Bool)

(assert (=> b!823400 m!765667))

(assert (=> b!823408 m!765589))

(assert (=> b!823408 m!765589))

(assert (=> b!823408 m!765595))

(assert (=> d!104809 m!765523))

(assert (=> b!823417 m!765587))

(assert (=> b!823417 m!765585))

(assert (=> b!823417 m!765589))

(assert (=> b!823417 m!765589))

(declare-fun m!765669 () Bool)

(assert (=> b!823417 m!765669))

(assert (=> b!823417 m!765585))

(assert (=> b!823417 m!765587))

(assert (=> b!823417 m!765593))

(declare-fun m!765671 () Bool)

(assert (=> bm!35812 m!765671))

(declare-fun m!765673 () Bool)

(assert (=> b!823419 m!765673))

(declare-fun m!765675 () Bool)

(assert (=> b!823419 m!765675))

(declare-fun m!765677 () Bool)

(assert (=> b!823419 m!765677))

(declare-fun m!765679 () Bool)

(assert (=> b!823419 m!765679))

(declare-fun m!765681 () Bool)

(assert (=> b!823419 m!765681))

(assert (=> b!823419 m!765589))

(declare-fun m!765683 () Bool)

(assert (=> b!823419 m!765683))

(declare-fun m!765685 () Bool)

(assert (=> b!823419 m!765685))

(declare-fun m!765687 () Bool)

(assert (=> b!823419 m!765687))

(declare-fun m!765689 () Bool)

(assert (=> b!823419 m!765689))

(declare-fun m!765691 () Bool)

(assert (=> b!823419 m!765691))

(declare-fun m!765693 () Bool)

(assert (=> b!823419 m!765693))

(assert (=> b!823419 m!765673))

(declare-fun m!765695 () Bool)

(assert (=> b!823419 m!765695))

(assert (=> b!823419 m!765691))

(declare-fun m!765697 () Bool)

(assert (=> b!823419 m!765697))

(assert (=> b!823419 m!765533))

(assert (=> b!823419 m!765677))

(assert (=> b!823419 m!765681))

(declare-fun m!765699 () Bool)

(assert (=> b!823419 m!765699))

(declare-fun m!765701 () Bool)

(assert (=> b!823419 m!765701))

(declare-fun m!765703 () Bool)

(assert (=> b!823406 m!765703))

(assert (=> b!823271 d!104809))

(declare-fun d!104811 () Bool)

(declare-fun e!458015 () Bool)

(assert (=> d!104811 e!458015))

(declare-fun res!561620 () Bool)

(assert (=> d!104811 (=> (not res!561620) (not e!458015))))

(assert (=> d!104811 (= res!561620 (or (bvsge #b00000000000000000000000000000000 (size!22382 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))))

(declare-fun lt!371382 () ListLongMap!8707)

(declare-fun lt!371379 () ListLongMap!8707)

(assert (=> d!104811 (= lt!371382 lt!371379)))

(declare-fun lt!371377 () Unit!28182)

(declare-fun e!458023 () Unit!28182)

(assert (=> d!104811 (= lt!371377 e!458023)))

(declare-fun c!89276 () Bool)

(declare-fun e!458022 () Bool)

(assert (=> d!104811 (= c!89276 e!458022)))

(declare-fun res!561621 () Bool)

(assert (=> d!104811 (=> (not res!561621) (not e!458022))))

(assert (=> d!104811 (= res!561621 (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun e!458017 () ListLongMap!8707)

(assert (=> d!104811 (= lt!371379 e!458017)))

(declare-fun c!89277 () Bool)

(assert (=> d!104811 (= c!89277 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104811 (validMask!0 mask!1312)))

(assert (=> d!104811 (= (getCurrentListMap!2501 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!371382)))

(declare-fun b!823421 () Bool)

(declare-fun e!458024 () Bool)

(assert (=> b!823421 (= e!458024 (= (apply!359 lt!371382 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun bm!35814 () Bool)

(declare-fun call!35817 () ListLongMap!8707)

(declare-fun call!35820 () ListLongMap!8707)

(assert (=> bm!35814 (= call!35817 call!35820)))

(declare-fun b!823422 () Bool)

(declare-fun e!458026 () Bool)

(assert (=> b!823422 (= e!458015 e!458026)))

(declare-fun c!89273 () Bool)

(assert (=> b!823422 (= c!89273 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!823423 () Bool)

(declare-fun call!35822 () Bool)

(assert (=> b!823423 (= e!458026 (not call!35822))))

(declare-fun bm!35815 () Bool)

(declare-fun call!35821 () ListLongMap!8707)

(declare-fun call!35823 () ListLongMap!8707)

(assert (=> bm!35815 (= call!35821 call!35823)))

(declare-fun b!823424 () Bool)

(declare-fun e!458021 () ListLongMap!8707)

(assert (=> b!823424 (= e!458021 call!35821)))

(declare-fun bm!35816 () Bool)

(declare-fun call!35818 () ListLongMap!8707)

(assert (=> bm!35816 (= call!35820 call!35818)))

(declare-fun b!823425 () Bool)

(declare-fun res!561624 () Bool)

(assert (=> b!823425 (=> (not res!561624) (not e!458015))))

(declare-fun e!458016 () Bool)

(assert (=> b!823425 (= res!561624 e!458016)))

(declare-fun c!89275 () Bool)

(assert (=> b!823425 (= c!89275 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!823426 () Bool)

(declare-fun res!561618 () Bool)

(assert (=> b!823426 (=> (not res!561618) (not e!458015))))

(declare-fun e!458020 () Bool)

(assert (=> b!823426 (= res!561618 e!458020)))

(declare-fun res!561622 () Bool)

(assert (=> b!823426 (=> res!561622 e!458020)))

(declare-fun e!458018 () Bool)

(assert (=> b!823426 (= res!561622 (not e!458018))))

(declare-fun res!561617 () Bool)

(assert (=> b!823426 (=> (not res!561617) (not e!458018))))

(assert (=> b!823426 (= res!561617 (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823427 () Bool)

(assert (=> b!823427 (= e!458017 (+!1871 call!35823 (tuple2!9871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!823428 () Bool)

(assert (=> b!823428 (= e!458021 call!35817)))

(declare-fun bm!35817 () Bool)

(assert (=> bm!35817 (= call!35822 (contains!4172 lt!371382 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!35818 () Bool)

(assert (=> bm!35818 (= call!35818 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823429 () Bool)

(assert (=> b!823429 (= e!458022 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823430 () Bool)

(declare-fun c!89272 () Bool)

(assert (=> b!823430 (= c!89272 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!458014 () ListLongMap!8707)

(assert (=> b!823430 (= e!458014 e!458021)))

(declare-fun b!823431 () Bool)

(declare-fun Unit!28185 () Unit!28182)

(assert (=> b!823431 (= e!458023 Unit!28185)))

(declare-fun b!823432 () Bool)

(declare-fun e!458019 () Bool)

(assert (=> b!823432 (= e!458020 e!458019)))

(declare-fun res!561623 () Bool)

(assert (=> b!823432 (=> (not res!561623) (not e!458019))))

(assert (=> b!823432 (= res!561623 (contains!4172 lt!371382 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!823432 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823433 () Bool)

(assert (=> b!823433 (= e!458018 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823434 () Bool)

(declare-fun e!458025 () Bool)

(assert (=> b!823434 (= e!458025 (= (apply!359 lt!371382 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!823435 () Bool)

(assert (=> b!823435 (= e!458017 e!458014)))

(declare-fun c!89274 () Bool)

(assert (=> b!823435 (= c!89274 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!823436 () Bool)

(assert (=> b!823436 (= e!458016 e!458024)))

(declare-fun res!561619 () Bool)

(declare-fun call!35819 () Bool)

(assert (=> b!823436 (= res!561619 call!35819)))

(assert (=> b!823436 (=> (not res!561619) (not e!458024))))

(declare-fun bm!35819 () Bool)

(assert (=> bm!35819 (= call!35823 (+!1871 (ite c!89277 call!35818 (ite c!89274 call!35820 call!35817)) (ite (or c!89277 c!89274) (tuple2!9871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!9871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!823437 () Bool)

(assert (=> b!823437 (= e!458014 call!35821)))

(declare-fun bm!35820 () Bool)

(assert (=> bm!35820 (= call!35819 (contains!4172 lt!371382 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!823438 () Bool)

(assert (=> b!823438 (= e!458019 (= (apply!359 lt!371382 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)) (get!11687 (select (arr!21962 _values!788) #b00000000000000000000000000000000) (dynLambda!969 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!823438 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22383 _values!788)))))

(assert (=> b!823438 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(declare-fun b!823439 () Bool)

(assert (=> b!823439 (= e!458016 (not call!35819))))

(declare-fun b!823440 () Bool)

(declare-fun lt!371378 () Unit!28182)

(assert (=> b!823440 (= e!458023 lt!371378)))

(declare-fun lt!371391 () ListLongMap!8707)

(assert (=> b!823440 (= lt!371391 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371373 () (_ BitVec 64))

(assert (=> b!823440 (= lt!371373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!371387 () (_ BitVec 64))

(assert (=> b!823440 (= lt!371387 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!371388 () Unit!28182)

(assert (=> b!823440 (= lt!371388 (addStillContains!312 lt!371391 lt!371373 zeroValueAfter!34 lt!371387))))

(assert (=> b!823440 (contains!4172 (+!1871 lt!371391 (tuple2!9871 lt!371373 zeroValueAfter!34)) lt!371387)))

(declare-fun lt!371372 () Unit!28182)

(assert (=> b!823440 (= lt!371372 lt!371388)))

(declare-fun lt!371376 () ListLongMap!8707)

(assert (=> b!823440 (= lt!371376 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371380 () (_ BitVec 64))

(assert (=> b!823440 (= lt!371380 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!371390 () (_ BitVec 64))

(assert (=> b!823440 (= lt!371390 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!371375 () Unit!28182)

(assert (=> b!823440 (= lt!371375 (addApplyDifferent!312 lt!371376 lt!371380 minValue!754 lt!371390))))

(assert (=> b!823440 (= (apply!359 (+!1871 lt!371376 (tuple2!9871 lt!371380 minValue!754)) lt!371390) (apply!359 lt!371376 lt!371390))))

(declare-fun lt!371392 () Unit!28182)

(assert (=> b!823440 (= lt!371392 lt!371375)))

(declare-fun lt!371374 () ListLongMap!8707)

(assert (=> b!823440 (= lt!371374 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371383 () (_ BitVec 64))

(assert (=> b!823440 (= lt!371383 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!371371 () (_ BitVec 64))

(assert (=> b!823440 (= lt!371371 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!371389 () Unit!28182)

(assert (=> b!823440 (= lt!371389 (addApplyDifferent!312 lt!371374 lt!371383 zeroValueAfter!34 lt!371371))))

(assert (=> b!823440 (= (apply!359 (+!1871 lt!371374 (tuple2!9871 lt!371383 zeroValueAfter!34)) lt!371371) (apply!359 lt!371374 lt!371371))))

(declare-fun lt!371384 () Unit!28182)

(assert (=> b!823440 (= lt!371384 lt!371389)))

(declare-fun lt!371385 () ListLongMap!8707)

(assert (=> b!823440 (= lt!371385 (getCurrentListMapNoExtraKeys!2391 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!371381 () (_ BitVec 64))

(assert (=> b!823440 (= lt!371381 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!371386 () (_ BitVec 64))

(assert (=> b!823440 (= lt!371386 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!823440 (= lt!371378 (addApplyDifferent!312 lt!371385 lt!371381 minValue!754 lt!371386))))

(assert (=> b!823440 (= (apply!359 (+!1871 lt!371385 (tuple2!9871 lt!371381 minValue!754)) lt!371386) (apply!359 lt!371385 lt!371386))))

(declare-fun b!823441 () Bool)

(assert (=> b!823441 (= e!458026 e!458025)))

(declare-fun res!561616 () Bool)

(assert (=> b!823441 (= res!561616 call!35822)))

(assert (=> b!823441 (=> (not res!561616) (not e!458025))))

(assert (= (and d!104811 c!89277) b!823427))

(assert (= (and d!104811 (not c!89277)) b!823435))

(assert (= (and b!823435 c!89274) b!823437))

(assert (= (and b!823435 (not c!89274)) b!823430))

(assert (= (and b!823430 c!89272) b!823424))

(assert (= (and b!823430 (not c!89272)) b!823428))

(assert (= (or b!823424 b!823428) bm!35814))

(assert (= (or b!823437 bm!35814) bm!35816))

(assert (= (or b!823437 b!823424) bm!35815))

(assert (= (or b!823427 bm!35816) bm!35818))

(assert (= (or b!823427 bm!35815) bm!35819))

(assert (= (and d!104811 res!561621) b!823429))

(assert (= (and d!104811 c!89276) b!823440))

(assert (= (and d!104811 (not c!89276)) b!823431))

(assert (= (and d!104811 res!561620) b!823426))

(assert (= (and b!823426 res!561617) b!823433))

(assert (= (and b!823426 (not res!561622)) b!823432))

(assert (= (and b!823432 res!561623) b!823438))

(assert (= (and b!823426 res!561618) b!823425))

(assert (= (and b!823425 c!89275) b!823436))

(assert (= (and b!823425 (not c!89275)) b!823439))

(assert (= (and b!823436 res!561619) b!823421))

(assert (= (or b!823436 b!823439) bm!35820))

(assert (= (and b!823425 res!561624) b!823422))

(assert (= (and b!823422 c!89273) b!823441))

(assert (= (and b!823422 (not c!89273)) b!823423))

(assert (= (and b!823441 res!561616) b!823434))

(assert (= (or b!823441 b!823423) bm!35817))

(declare-fun b_lambda!11095 () Bool)

(assert (=> (not b_lambda!11095) (not b!823438)))

(assert (=> b!823438 t!22078))

(declare-fun b_and!22047 () Bool)

(assert (= b_and!22045 (and (=> t!22078 result!7945) b_and!22047)))

(declare-fun m!765705 () Bool)

(assert (=> bm!35817 m!765705))

(declare-fun m!765707 () Bool)

(assert (=> b!823434 m!765707))

(assert (=> b!823433 m!765589))

(assert (=> b!823433 m!765589))

(assert (=> b!823433 m!765595))

(assert (=> b!823432 m!765589))

(assert (=> b!823432 m!765589))

(declare-fun m!765709 () Bool)

(assert (=> b!823432 m!765709))

(assert (=> bm!35818 m!765531))

(declare-fun m!765711 () Bool)

(assert (=> bm!35820 m!765711))

(declare-fun m!765713 () Bool)

(assert (=> b!823421 m!765713))

(assert (=> b!823429 m!765589))

(assert (=> b!823429 m!765589))

(assert (=> b!823429 m!765595))

(assert (=> d!104811 m!765523))

(assert (=> b!823438 m!765587))

(assert (=> b!823438 m!765585))

(assert (=> b!823438 m!765589))

(assert (=> b!823438 m!765589))

(declare-fun m!765715 () Bool)

(assert (=> b!823438 m!765715))

(assert (=> b!823438 m!765585))

(assert (=> b!823438 m!765587))

(assert (=> b!823438 m!765593))

(declare-fun m!765717 () Bool)

(assert (=> bm!35819 m!765717))

(declare-fun m!765719 () Bool)

(assert (=> b!823440 m!765719))

(declare-fun m!765721 () Bool)

(assert (=> b!823440 m!765721))

(declare-fun m!765723 () Bool)

(assert (=> b!823440 m!765723))

(declare-fun m!765725 () Bool)

(assert (=> b!823440 m!765725))

(declare-fun m!765727 () Bool)

(assert (=> b!823440 m!765727))

(assert (=> b!823440 m!765589))

(declare-fun m!765729 () Bool)

(assert (=> b!823440 m!765729))

(declare-fun m!765731 () Bool)

(assert (=> b!823440 m!765731))

(declare-fun m!765733 () Bool)

(assert (=> b!823440 m!765733))

(declare-fun m!765735 () Bool)

(assert (=> b!823440 m!765735))

(declare-fun m!765737 () Bool)

(assert (=> b!823440 m!765737))

(declare-fun m!765739 () Bool)

(assert (=> b!823440 m!765739))

(assert (=> b!823440 m!765719))

(declare-fun m!765741 () Bool)

(assert (=> b!823440 m!765741))

(assert (=> b!823440 m!765737))

(declare-fun m!765743 () Bool)

(assert (=> b!823440 m!765743))

(assert (=> b!823440 m!765531))

(assert (=> b!823440 m!765723))

(assert (=> b!823440 m!765727))

(declare-fun m!765745 () Bool)

(assert (=> b!823440 m!765745))

(declare-fun m!765747 () Bool)

(assert (=> b!823440 m!765747))

(declare-fun m!765749 () Bool)

(assert (=> b!823427 m!765749))

(assert (=> b!823271 d!104811))

(declare-fun d!104813 () Bool)

(declare-fun e!458027 () Bool)

(assert (=> d!104813 e!458027))

(declare-fun res!561625 () Bool)

(assert (=> d!104813 (=> (not res!561625) (not e!458027))))

(declare-fun lt!371393 () ListLongMap!8707)

(assert (=> d!104813 (= res!561625 (contains!4172 lt!371393 (_1!4945 lt!371220)))))

(declare-fun lt!371395 () List!15727)

(assert (=> d!104813 (= lt!371393 (ListLongMap!8708 lt!371395))))

(declare-fun lt!371396 () Unit!28182)

(declare-fun lt!371394 () Unit!28182)

(assert (=> d!104813 (= lt!371396 lt!371394)))

(assert (=> d!104813 (= (getValueByKey!404 lt!371395 (_1!4945 lt!371220)) (Some!409 (_2!4945 lt!371220)))))

(assert (=> d!104813 (= lt!371394 (lemmaContainsTupThenGetReturnValue!220 lt!371395 (_1!4945 lt!371220) (_2!4945 lt!371220)))))

(assert (=> d!104813 (= lt!371395 (insertStrictlySorted!258 (toList!4369 lt!371226) (_1!4945 lt!371220) (_2!4945 lt!371220)))))

(assert (=> d!104813 (= (+!1871 lt!371226 lt!371220) lt!371393)))

(declare-fun b!823442 () Bool)

(declare-fun res!561626 () Bool)

(assert (=> b!823442 (=> (not res!561626) (not e!458027))))

(assert (=> b!823442 (= res!561626 (= (getValueByKey!404 (toList!4369 lt!371393) (_1!4945 lt!371220)) (Some!409 (_2!4945 lt!371220))))))

(declare-fun b!823443 () Bool)

(assert (=> b!823443 (= e!458027 (contains!4173 (toList!4369 lt!371393) lt!371220))))

(assert (= (and d!104813 res!561625) b!823442))

(assert (= (and b!823442 res!561626) b!823443))

(declare-fun m!765751 () Bool)

(assert (=> d!104813 m!765751))

(declare-fun m!765753 () Bool)

(assert (=> d!104813 m!765753))

(declare-fun m!765755 () Bool)

(assert (=> d!104813 m!765755))

(declare-fun m!765757 () Bool)

(assert (=> d!104813 m!765757))

(declare-fun m!765759 () Bool)

(assert (=> b!823442 m!765759))

(declare-fun m!765761 () Bool)

(assert (=> b!823443 m!765761))

(assert (=> b!823271 d!104813))

(declare-fun d!104815 () Bool)

(assert (=> d!104815 (= (+!1871 (+!1871 lt!371227 (tuple2!9871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (tuple2!9871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (+!1871 (+!1871 lt!371227 (tuple2!9871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (tuple2!9871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun lt!371399 () Unit!28182)

(declare-fun choose!1410 (ListLongMap!8707 (_ BitVec 64) V!24789 (_ BitVec 64) V!24789) Unit!28182)

(assert (=> d!104815 (= lt!371399 (choose!1410 lt!371227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> d!104815 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!104815 (= (addCommutativeForDiffKeys!466 lt!371227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754) lt!371399)))

(declare-fun bs!22978 () Bool)

(assert (= bs!22978 d!104815))

(declare-fun m!765763 () Bool)

(assert (=> bs!22978 m!765763))

(declare-fun m!765765 () Bool)

(assert (=> bs!22978 m!765765))

(declare-fun m!765767 () Bool)

(assert (=> bs!22978 m!765767))

(assert (=> bs!22978 m!765765))

(declare-fun m!765769 () Bool)

(assert (=> bs!22978 m!765769))

(assert (=> bs!22978 m!765763))

(declare-fun m!765771 () Bool)

(assert (=> bs!22978 m!765771))

(assert (=> b!823271 d!104815))

(declare-fun d!104817 () Bool)

(declare-fun e!458028 () Bool)

(assert (=> d!104817 e!458028))

(declare-fun res!561627 () Bool)

(assert (=> d!104817 (=> (not res!561627) (not e!458028))))

(declare-fun lt!371400 () ListLongMap!8707)

(assert (=> d!104817 (= res!561627 (contains!4172 lt!371400 (_1!4945 lt!371220)))))

(declare-fun lt!371402 () List!15727)

(assert (=> d!104817 (= lt!371400 (ListLongMap!8708 lt!371402))))

(declare-fun lt!371403 () Unit!28182)

(declare-fun lt!371401 () Unit!28182)

(assert (=> d!104817 (= lt!371403 lt!371401)))

(assert (=> d!104817 (= (getValueByKey!404 lt!371402 (_1!4945 lt!371220)) (Some!409 (_2!4945 lt!371220)))))

(assert (=> d!104817 (= lt!371401 (lemmaContainsTupThenGetReturnValue!220 lt!371402 (_1!4945 lt!371220) (_2!4945 lt!371220)))))

(assert (=> d!104817 (= lt!371402 (insertStrictlySorted!258 (toList!4369 lt!371227) (_1!4945 lt!371220) (_2!4945 lt!371220)))))

(assert (=> d!104817 (= (+!1871 lt!371227 lt!371220) lt!371400)))

(declare-fun b!823444 () Bool)

(declare-fun res!561628 () Bool)

(assert (=> b!823444 (=> (not res!561628) (not e!458028))))

(assert (=> b!823444 (= res!561628 (= (getValueByKey!404 (toList!4369 lt!371400) (_1!4945 lt!371220)) (Some!409 (_2!4945 lt!371220))))))

(declare-fun b!823445 () Bool)

(assert (=> b!823445 (= e!458028 (contains!4173 (toList!4369 lt!371400) lt!371220))))

(assert (= (and d!104817 res!561627) b!823444))

(assert (= (and b!823444 res!561628) b!823445))

(declare-fun m!765773 () Bool)

(assert (=> d!104817 m!765773))

(declare-fun m!765775 () Bool)

(assert (=> d!104817 m!765775))

(declare-fun m!765777 () Bool)

(assert (=> d!104817 m!765777))

(declare-fun m!765779 () Bool)

(assert (=> d!104817 m!765779))

(declare-fun m!765781 () Bool)

(assert (=> b!823444 m!765781))

(declare-fun m!765783 () Bool)

(assert (=> b!823445 m!765783))

(assert (=> b!823271 d!104817))

(declare-fun b!823454 () Bool)

(declare-fun e!458036 () Bool)

(declare-fun e!458035 () Bool)

(assert (=> b!823454 (= e!458036 e!458035)))

(declare-fun lt!371412 () (_ BitVec 64))

(assert (=> b!823454 (= lt!371412 (select (arr!21961 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!371411 () Unit!28182)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45832 (_ BitVec 64) (_ BitVec 32)) Unit!28182)

(assert (=> b!823454 (= lt!371411 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!371412 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!823454 (arrayContainsKey!0 _keys!976 lt!371412 #b00000000000000000000000000000000)))

(declare-fun lt!371410 () Unit!28182)

(assert (=> b!823454 (= lt!371410 lt!371411)))

(declare-fun res!561633 () Bool)

(declare-datatypes ((SeekEntryResult!8720 0))(
  ( (MissingZero!8720 (index!37250 (_ BitVec 32))) (Found!8720 (index!37251 (_ BitVec 32))) (Intermediate!8720 (undefined!9532 Bool) (index!37252 (_ BitVec 32)) (x!69447 (_ BitVec 32))) (Undefined!8720) (MissingVacant!8720 (index!37253 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45832 (_ BitVec 32)) SeekEntryResult!8720)

(assert (=> b!823454 (= res!561633 (= (seekEntryOrOpen!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8720 #b00000000000000000000000000000000)))))

(assert (=> b!823454 (=> (not res!561633) (not e!458035))))

(declare-fun bm!35823 () Bool)

(declare-fun call!35826 () Bool)

(assert (=> bm!35823 (= call!35826 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!823455 () Bool)

(declare-fun e!458037 () Bool)

(assert (=> b!823455 (= e!458037 e!458036)))

(declare-fun c!89280 () Bool)

(assert (=> b!823455 (= c!89280 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823456 () Bool)

(assert (=> b!823456 (= e!458035 call!35826)))

(declare-fun d!104819 () Bool)

(declare-fun res!561634 () Bool)

(assert (=> d!104819 (=> res!561634 e!458037)))

(assert (=> d!104819 (= res!561634 (bvsge #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(assert (=> d!104819 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!458037)))

(declare-fun b!823457 () Bool)

(assert (=> b!823457 (= e!458036 call!35826)))

(assert (= (and d!104819 (not res!561634)) b!823455))

(assert (= (and b!823455 c!89280) b!823454))

(assert (= (and b!823455 (not c!89280)) b!823457))

(assert (= (and b!823454 res!561633) b!823456))

(assert (= (or b!823456 b!823457) bm!35823))

(assert (=> b!823454 m!765589))

(declare-fun m!765785 () Bool)

(assert (=> b!823454 m!765785))

(declare-fun m!765787 () Bool)

(assert (=> b!823454 m!765787))

(assert (=> b!823454 m!765589))

(declare-fun m!765789 () Bool)

(assert (=> b!823454 m!765789))

(declare-fun m!765791 () Bool)

(assert (=> bm!35823 m!765791))

(assert (=> b!823455 m!765589))

(assert (=> b!823455 m!765589))

(assert (=> b!823455 m!765595))

(assert (=> b!823275 d!104819))

(declare-fun b!823468 () Bool)

(declare-fun e!458048 () Bool)

(declare-fun call!35829 () Bool)

(assert (=> b!823468 (= e!458048 call!35829)))

(declare-fun d!104821 () Bool)

(declare-fun res!561641 () Bool)

(declare-fun e!458049 () Bool)

(assert (=> d!104821 (=> res!561641 e!458049)))

(assert (=> d!104821 (= res!561641 (bvsge #b00000000000000000000000000000000 (size!22382 _keys!976)))))

(assert (=> d!104821 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15725) e!458049)))

(declare-fun bm!35826 () Bool)

(declare-fun c!89283 () Bool)

(assert (=> bm!35826 (= call!35829 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89283 (Cons!15724 (select (arr!21961 _keys!976) #b00000000000000000000000000000000) Nil!15725) Nil!15725)))))

(declare-fun b!823469 () Bool)

(declare-fun e!458046 () Bool)

(assert (=> b!823469 (= e!458049 e!458046)))

(declare-fun res!561643 () Bool)

(assert (=> b!823469 (=> (not res!561643) (not e!458046))))

(declare-fun e!458047 () Bool)

(assert (=> b!823469 (= res!561643 (not e!458047))))

(declare-fun res!561642 () Bool)

(assert (=> b!823469 (=> (not res!561642) (not e!458047))))

(assert (=> b!823469 (= res!561642 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823470 () Bool)

(declare-fun contains!4174 (List!15728 (_ BitVec 64)) Bool)

(assert (=> b!823470 (= e!458047 (contains!4174 Nil!15725 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!823471 () Bool)

(assert (=> b!823471 (= e!458048 call!35829)))

(declare-fun b!823472 () Bool)

(assert (=> b!823472 (= e!458046 e!458048)))

(assert (=> b!823472 (= c!89283 (validKeyInArray!0 (select (arr!21961 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104821 (not res!561641)) b!823469))

(assert (= (and b!823469 res!561642) b!823470))

(assert (= (and b!823469 res!561643) b!823472))

(assert (= (and b!823472 c!89283) b!823471))

(assert (= (and b!823472 (not c!89283)) b!823468))

(assert (= (or b!823471 b!823468) bm!35826))

(assert (=> bm!35826 m!765589))

(declare-fun m!765793 () Bool)

(assert (=> bm!35826 m!765793))

(assert (=> b!823469 m!765589))

(assert (=> b!823469 m!765589))

(assert (=> b!823469 m!765595))

(assert (=> b!823470 m!765589))

(assert (=> b!823470 m!765589))

(declare-fun m!765795 () Bool)

(assert (=> b!823470 m!765795))

(assert (=> b!823472 m!765589))

(assert (=> b!823472 m!765589))

(assert (=> b!823472 m!765595))

(assert (=> b!823274 d!104821))

(declare-fun d!104823 () Bool)

(assert (=> d!104823 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70918 d!104823))

(declare-fun d!104825 () Bool)

(assert (=> d!104825 (= (array_inv!17501 _keys!976) (bvsge (size!22382 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70918 d!104825))

(declare-fun d!104827 () Bool)

(assert (=> d!104827 (= (array_inv!17502 _values!788) (bvsge (size!22383 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70918 d!104827))

(declare-fun mapNonEmpty!23881 () Bool)

(declare-fun mapRes!23881 () Bool)

(declare-fun tp!46150 () Bool)

(declare-fun e!458055 () Bool)

(assert (=> mapNonEmpty!23881 (= mapRes!23881 (and tp!46150 e!458055))))

(declare-fun mapKey!23881 () (_ BitVec 32))

(declare-fun mapValue!23881 () ValueCell!7005)

(declare-fun mapRest!23881 () (Array (_ BitVec 32) ValueCell!7005))

(assert (=> mapNonEmpty!23881 (= mapRest!23875 (store mapRest!23881 mapKey!23881 mapValue!23881))))

(declare-fun condMapEmpty!23881 () Bool)

(declare-fun mapDefault!23881 () ValueCell!7005)

(assert (=> mapNonEmpty!23875 (= condMapEmpty!23881 (= mapRest!23875 ((as const (Array (_ BitVec 32) ValueCell!7005)) mapDefault!23881)))))

(declare-fun e!458054 () Bool)

(assert (=> mapNonEmpty!23875 (= tp!46141 (and e!458054 mapRes!23881))))

(declare-fun b!823480 () Bool)

(assert (=> b!823480 (= e!458054 tp_is_empty!14841)))

(declare-fun mapIsEmpty!23881 () Bool)

(assert (=> mapIsEmpty!23881 mapRes!23881))

(declare-fun b!823479 () Bool)

(assert (=> b!823479 (= e!458055 tp_is_empty!14841)))

(assert (= (and mapNonEmpty!23875 condMapEmpty!23881) mapIsEmpty!23881))

(assert (= (and mapNonEmpty!23875 (not condMapEmpty!23881)) mapNonEmpty!23881))

(assert (= (and mapNonEmpty!23881 ((_ is ValueCellFull!7005) mapValue!23881)) b!823479))

(assert (= (and mapNonEmpty!23875 ((_ is ValueCellFull!7005) mapDefault!23881)) b!823480))

(declare-fun m!765797 () Bool)

(assert (=> mapNonEmpty!23881 m!765797))

(declare-fun b_lambda!11097 () Bool)

(assert (= b_lambda!11089 (or (and start!70918 b_free!13131) b_lambda!11097)))

(declare-fun b_lambda!11099 () Bool)

(assert (= b_lambda!11085 (or (and start!70918 b_free!13131) b_lambda!11099)))

(declare-fun b_lambda!11101 () Bool)

(assert (= b_lambda!11091 (or (and start!70918 b_free!13131) b_lambda!11101)))

(declare-fun b_lambda!11103 () Bool)

(assert (= b_lambda!11093 (or (and start!70918 b_free!13131) b_lambda!11103)))

(declare-fun b_lambda!11105 () Bool)

(assert (= b_lambda!11095 (or (and start!70918 b_free!13131) b_lambda!11105)))

(declare-fun b_lambda!11107 () Bool)

(assert (= b_lambda!11087 (or (and start!70918 b_free!13131) b_lambda!11107)))

(check-sat (not b!823328) (not b!823434) (not b!823340) (not b!823343) (not bm!35826) (not b!823329) (not b!823334) (not bm!35791) (not b!823356) (not b!823421) (not b!823429) (not bm!35817) tp_is_empty!14841 (not bm!35820) (not b!823400) (not bm!35811) (not b!823338) (not bm!35812) (not mapNonEmpty!23881) (not b!823411) (not b!823326) (not b!823355) (not b!823419) (not b!823324) (not b!823345) (not b_lambda!11101) (not d!104807) (not b!823469) (not b!823347) (not b!823427) (not b!823331) (not b_lambda!11105) (not b!823443) (not b_lambda!11107) (not d!104803) (not b!823348) (not bm!35823) (not b!823417) (not b!823470) (not b!823333) (not b_next!13131) (not d!104817) (not b!823357) (not b!823440) (not b!823406) (not b!823412) (not b!823349) (not b!823472) (not b_lambda!11099) (not b_lambda!11097) b_and!22047 (not b!823354) (not b!823408) (not d!104813) (not d!104805) (not d!104811) (not b!823455) (not b!823454) (not b!823342) (not b!823335) (not bm!35810) (not b!823433) (not d!104799) (not bm!35813) (not b_lambda!11103) (not b!823413) (not b!823438) (not d!104815) (not bm!35792) (not bm!35818) (not bm!35819) (not b!823442) (not b!823444) (not d!104801) (not d!104809) (not b!823445) (not b!823432))
(check-sat b_and!22047 (not b_next!13131))
