; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71314 () Bool)

(assert start!71314)

(declare-fun b_free!13425 () Bool)

(declare-fun b_next!13425 () Bool)

(assert (=> start!71314 (= b_free!13425 (not b_next!13425))))

(declare-fun tp!47040 () Bool)

(declare-fun b_and!22389 () Bool)

(assert (=> start!71314 (= tp!47040 b_and!22389)))

(declare-fun mapIsEmpty!24334 () Bool)

(declare-fun mapRes!24334 () Bool)

(assert (=> mapIsEmpty!24334 mapRes!24334))

(declare-fun b!827842 () Bool)

(declare-fun res!564292 () Bool)

(declare-fun e!461281 () Bool)

(assert (=> b!827842 (=> (not res!564292) (not e!461281))))

(declare-datatypes ((array!46406 0))(
  ( (array!46407 (arr!22242 (Array (_ BitVec 32) (_ BitVec 64))) (size!22663 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46406)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25181 0))(
  ( (V!25182 (val!7615 Int)) )
))
(declare-datatypes ((ValueCell!7152 0))(
  ( (ValueCellFull!7152 (v!10046 V!25181)) (EmptyCell!7152) )
))
(declare-datatypes ((array!46408 0))(
  ( (array!46409 (arr!22243 (Array (_ BitVec 32) ValueCell!7152)) (size!22664 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46408)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827842 (= res!564292 (and (= (size!22664 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22663 _keys!976) (size!22664 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827843 () Bool)

(declare-fun e!461277 () Bool)

(assert (=> b!827843 (= e!461281 (not e!461277))))

(declare-fun res!564295 () Bool)

(assert (=> b!827843 (=> res!564295 e!461277)))

(assert (=> b!827843 (= res!564295 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!10112 0))(
  ( (tuple2!10113 (_1!5066 (_ BitVec 64)) (_2!5066 V!25181)) )
))
(declare-datatypes ((List!15949 0))(
  ( (Nil!15946) (Cons!15945 (h!17074 tuple2!10112) (t!22308 List!15949)) )
))
(declare-datatypes ((ListLongMap!8949 0))(
  ( (ListLongMap!8950 (toList!4490 List!15949)) )
))
(declare-fun lt!375028 () ListLongMap!8949)

(declare-fun lt!375027 () ListLongMap!8949)

(assert (=> b!827843 (= lt!375028 lt!375027)))

(declare-fun zeroValueBefore!34 () V!25181)

(declare-fun zeroValueAfter!34 () V!25181)

(declare-fun minValue!754 () V!25181)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28367 0))(
  ( (Unit!28368) )
))
(declare-fun lt!375029 () Unit!28367)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!587 (array!46406 array!46408 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25181 V!25181 V!25181 V!25181 (_ BitVec 32) Int) Unit!28367)

(assert (=> b!827843 (= lt!375029 (lemmaNoChangeToArrayThenSameMapNoExtras!587 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2497 (array!46406 array!46408 (_ BitVec 32) (_ BitVec 32) V!25181 V!25181 (_ BitVec 32) Int) ListLongMap!8949)

(assert (=> b!827843 (= lt!375027 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!827843 (= lt!375028 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24334 () Bool)

(declare-fun tp!47041 () Bool)

(declare-fun e!461279 () Bool)

(assert (=> mapNonEmpty!24334 (= mapRes!24334 (and tp!47041 e!461279))))

(declare-fun mapValue!24334 () ValueCell!7152)

(declare-fun mapKey!24334 () (_ BitVec 32))

(declare-fun mapRest!24334 () (Array (_ BitVec 32) ValueCell!7152))

(assert (=> mapNonEmpty!24334 (= (arr!22243 _values!788) (store mapRest!24334 mapKey!24334 mapValue!24334))))

(declare-fun b!827844 () Bool)

(declare-fun +!1923 (ListLongMap!8949 tuple2!10112) ListLongMap!8949)

(declare-fun getCurrentListMap!2565 (array!46406 array!46408 (_ BitVec 32) (_ BitVec 32) V!25181 V!25181 (_ BitVec 32) Int) ListLongMap!8949)

(assert (=> b!827844 (= e!461277 (= (+!1923 (getCurrentListMap!2565 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (getCurrentListMap!2565 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796)))))

(declare-fun res!564296 () Bool)

(assert (=> start!71314 (=> (not res!564296) (not e!461281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71314 (= res!564296 (validMask!0 mask!1312))))

(assert (=> start!71314 e!461281))

(declare-fun tp_is_empty!15135 () Bool)

(assert (=> start!71314 tp_is_empty!15135))

(declare-fun array_inv!17705 (array!46406) Bool)

(assert (=> start!71314 (array_inv!17705 _keys!976)))

(assert (=> start!71314 true))

(declare-fun e!461278 () Bool)

(declare-fun array_inv!17706 (array!46408) Bool)

(assert (=> start!71314 (and (array_inv!17706 _values!788) e!461278)))

(assert (=> start!71314 tp!47040))

(declare-fun b!827845 () Bool)

(declare-fun res!564294 () Bool)

(assert (=> b!827845 (=> (not res!564294) (not e!461281))))

(declare-datatypes ((List!15950 0))(
  ( (Nil!15947) (Cons!15946 (h!17075 (_ BitVec 64)) (t!22309 List!15950)) )
))
(declare-fun arrayNoDuplicates!0 (array!46406 (_ BitVec 32) List!15950) Bool)

(assert (=> b!827845 (= res!564294 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15947))))

(declare-fun b!827846 () Bool)

(assert (=> b!827846 (= e!461279 tp_is_empty!15135)))

(declare-fun b!827847 () Bool)

(declare-fun e!461280 () Bool)

(assert (=> b!827847 (= e!461280 tp_is_empty!15135)))

(declare-fun b!827848 () Bool)

(assert (=> b!827848 (= e!461278 (and e!461280 mapRes!24334))))

(declare-fun condMapEmpty!24334 () Bool)

(declare-fun mapDefault!24334 () ValueCell!7152)

(assert (=> b!827848 (= condMapEmpty!24334 (= (arr!22243 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7152)) mapDefault!24334)))))

(declare-fun b!827849 () Bool)

(declare-fun res!564293 () Bool)

(assert (=> b!827849 (=> (not res!564293) (not e!461281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46406 (_ BitVec 32)) Bool)

(assert (=> b!827849 (= res!564293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!71314 res!564296) b!827842))

(assert (= (and b!827842 res!564292) b!827849))

(assert (= (and b!827849 res!564293) b!827845))

(assert (= (and b!827845 res!564294) b!827843))

(assert (= (and b!827843 (not res!564295)) b!827844))

(assert (= (and b!827848 condMapEmpty!24334) mapIsEmpty!24334))

(assert (= (and b!827848 (not condMapEmpty!24334)) mapNonEmpty!24334))

(get-info :version)

(assert (= (and mapNonEmpty!24334 ((_ is ValueCellFull!7152) mapValue!24334)) b!827846))

(assert (= (and b!827848 ((_ is ValueCellFull!7152) mapDefault!24334)) b!827847))

(assert (= start!71314 b!827848))

(declare-fun m!770885 () Bool)

(assert (=> mapNonEmpty!24334 m!770885))

(declare-fun m!770887 () Bool)

(assert (=> b!827844 m!770887))

(assert (=> b!827844 m!770887))

(declare-fun m!770889 () Bool)

(assert (=> b!827844 m!770889))

(declare-fun m!770891 () Bool)

(assert (=> b!827844 m!770891))

(declare-fun m!770893 () Bool)

(assert (=> b!827845 m!770893))

(declare-fun m!770895 () Bool)

(assert (=> start!71314 m!770895))

(declare-fun m!770897 () Bool)

(assert (=> start!71314 m!770897))

(declare-fun m!770899 () Bool)

(assert (=> start!71314 m!770899))

(declare-fun m!770901 () Bool)

(assert (=> b!827843 m!770901))

(declare-fun m!770903 () Bool)

(assert (=> b!827843 m!770903))

(declare-fun m!770905 () Bool)

(assert (=> b!827843 m!770905))

(declare-fun m!770907 () Bool)

(assert (=> b!827849 m!770907))

(check-sat (not b!827844) (not start!71314) (not b_next!13425) (not b!827843) tp_is_empty!15135 (not b!827845) b_and!22389 (not b!827849) (not mapNonEmpty!24334))
(check-sat b_and!22389 (not b_next!13425))
(get-model)

(declare-fun d!105067 () Bool)

(assert (=> d!105067 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71314 d!105067))

(declare-fun d!105069 () Bool)

(assert (=> d!105069 (= (array_inv!17705 _keys!976) (bvsge (size!22663 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71314 d!105069))

(declare-fun d!105071 () Bool)

(assert (=> d!105071 (= (array_inv!17706 _values!788) (bvsge (size!22664 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71314 d!105071))

(declare-fun d!105073 () Bool)

(assert (=> d!105073 (= (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375041 () Unit!28367)

(declare-fun choose!1417 (array!46406 array!46408 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25181 V!25181 V!25181 V!25181 (_ BitVec 32) Int) Unit!28367)

(assert (=> d!105073 (= lt!375041 (choose!1417 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105073 (validMask!0 mask!1312)))

(assert (=> d!105073 (= (lemmaNoChangeToArrayThenSameMapNoExtras!587 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375041)))

(declare-fun bs!23132 () Bool)

(assert (= bs!23132 d!105073))

(assert (=> bs!23132 m!770905))

(assert (=> bs!23132 m!770903))

(declare-fun m!770933 () Bool)

(assert (=> bs!23132 m!770933))

(assert (=> bs!23132 m!770895))

(assert (=> b!827843 d!105073))

(declare-fun d!105075 () Bool)

(declare-fun e!461318 () Bool)

(assert (=> d!105075 e!461318))

(declare-fun res!564320 () Bool)

(assert (=> d!105075 (=> (not res!564320) (not e!461318))))

(declare-fun lt!375057 () ListLongMap!8949)

(declare-fun contains!4187 (ListLongMap!8949 (_ BitVec 64)) Bool)

(assert (=> d!105075 (= res!564320 (not (contains!4187 lt!375057 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!461320 () ListLongMap!8949)

(assert (=> d!105075 (= lt!375057 e!461320)))

(declare-fun c!89468 () Bool)

(assert (=> d!105075 (= c!89468 (bvsge #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (=> d!105075 (validMask!0 mask!1312)))

(assert (=> d!105075 (= (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375057)))

(declare-fun e!461321 () Bool)

(declare-fun b!827898 () Bool)

(assert (=> b!827898 (= e!461321 (= lt!375057 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!827899 () Bool)

(declare-fun e!461316 () Bool)

(declare-fun e!461317 () Bool)

(assert (=> b!827899 (= e!461316 e!461317)))

(assert (=> b!827899 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun res!564323 () Bool)

(assert (=> b!827899 (= res!564323 (contains!4187 lt!375057 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827899 (=> (not res!564323) (not e!461317))))

(declare-fun b!827900 () Bool)

(assert (=> b!827900 (= e!461320 (ListLongMap!8950 Nil!15946))))

(declare-fun b!827901 () Bool)

(declare-fun isEmpty!652 (ListLongMap!8949) Bool)

(assert (=> b!827901 (= e!461321 (isEmpty!652 lt!375057))))

(declare-fun bm!35956 () Bool)

(declare-fun call!35959 () ListLongMap!8949)

(assert (=> bm!35956 (= call!35959 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!827902 () Bool)

(declare-fun e!461315 () ListLongMap!8949)

(assert (=> b!827902 (= e!461315 call!35959)))

(declare-fun b!827903 () Bool)

(declare-fun e!461319 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!827903 (= e!461319 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827903 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!827904 () Bool)

(assert (=> b!827904 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (=> b!827904 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22664 _values!788)))))

(declare-fun apply!365 (ListLongMap!8949 (_ BitVec 64)) V!25181)

(declare-fun get!11791 (ValueCell!7152 V!25181) V!25181)

(declare-fun dynLambda!975 (Int (_ BitVec 64)) V!25181)

(assert (=> b!827904 (= e!461317 (= (apply!365 lt!375057 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)) (get!11791 (select (arr!22243 _values!788) #b00000000000000000000000000000000) (dynLambda!975 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!827905 () Bool)

(assert (=> b!827905 (= e!461320 e!461315)))

(declare-fun c!89470 () Bool)

(assert (=> b!827905 (= c!89470 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827906 () Bool)

(declare-fun lt!375060 () Unit!28367)

(declare-fun lt!375061 () Unit!28367)

(assert (=> b!827906 (= lt!375060 lt!375061)))

(declare-fun lt!375058 () V!25181)

(declare-fun lt!375056 () ListLongMap!8949)

(declare-fun lt!375059 () (_ BitVec 64))

(declare-fun lt!375062 () (_ BitVec 64))

(assert (=> b!827906 (not (contains!4187 (+!1923 lt!375056 (tuple2!10113 lt!375059 lt!375058)) lt!375062))))

(declare-fun addStillNotContains!192 (ListLongMap!8949 (_ BitVec 64) V!25181 (_ BitVec 64)) Unit!28367)

(assert (=> b!827906 (= lt!375061 (addStillNotContains!192 lt!375056 lt!375059 lt!375058 lt!375062))))

(assert (=> b!827906 (= lt!375062 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!827906 (= lt!375058 (get!11791 (select (arr!22243 _values!788) #b00000000000000000000000000000000) (dynLambda!975 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!827906 (= lt!375059 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!827906 (= lt!375056 call!35959)))

(assert (=> b!827906 (= e!461315 (+!1923 call!35959 (tuple2!10113 (select (arr!22242 _keys!976) #b00000000000000000000000000000000) (get!11791 (select (arr!22243 _values!788) #b00000000000000000000000000000000) (dynLambda!975 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!827907 () Bool)

(declare-fun res!564321 () Bool)

(assert (=> b!827907 (=> (not res!564321) (not e!461318))))

(assert (=> b!827907 (= res!564321 (not (contains!4187 lt!375057 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!827908 () Bool)

(assert (=> b!827908 (= e!461316 e!461321)))

(declare-fun c!89471 () Bool)

(assert (=> b!827908 (= c!89471 (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun b!827909 () Bool)

(assert (=> b!827909 (= e!461318 e!461316)))

(declare-fun c!89469 () Bool)

(assert (=> b!827909 (= c!89469 e!461319)))

(declare-fun res!564322 () Bool)

(assert (=> b!827909 (=> (not res!564322) (not e!461319))))

(assert (=> b!827909 (= res!564322 (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (= (and d!105075 c!89468) b!827900))

(assert (= (and d!105075 (not c!89468)) b!827905))

(assert (= (and b!827905 c!89470) b!827906))

(assert (= (and b!827905 (not c!89470)) b!827902))

(assert (= (or b!827906 b!827902) bm!35956))

(assert (= (and d!105075 res!564320) b!827907))

(assert (= (and b!827907 res!564321) b!827909))

(assert (= (and b!827909 res!564322) b!827903))

(assert (= (and b!827909 c!89469) b!827899))

(assert (= (and b!827909 (not c!89469)) b!827908))

(assert (= (and b!827899 res!564323) b!827904))

(assert (= (and b!827908 c!89471) b!827898))

(assert (= (and b!827908 (not c!89471)) b!827901))

(declare-fun b_lambda!11209 () Bool)

(assert (=> (not b_lambda!11209) (not b!827904)))

(declare-fun t!22313 () Bool)

(declare-fun tb!4219 () Bool)

(assert (=> (and start!71314 (= defaultEntry!796 defaultEntry!796) t!22313) tb!4219))

(declare-fun result!7981 () Bool)

(assert (=> tb!4219 (= result!7981 tp_is_empty!15135)))

(assert (=> b!827904 t!22313))

(declare-fun b_and!22393 () Bool)

(assert (= b_and!22389 (and (=> t!22313 result!7981) b_and!22393)))

(declare-fun b_lambda!11211 () Bool)

(assert (=> (not b_lambda!11211) (not b!827906)))

(assert (=> b!827906 t!22313))

(declare-fun b_and!22395 () Bool)

(assert (= b_and!22393 (and (=> t!22313 result!7981) b_and!22395)))

(declare-fun m!770935 () Bool)

(assert (=> d!105075 m!770935))

(assert (=> d!105075 m!770895))

(declare-fun m!770937 () Bool)

(assert (=> bm!35956 m!770937))

(assert (=> b!827898 m!770937))

(declare-fun m!770939 () Bool)

(assert (=> b!827899 m!770939))

(assert (=> b!827899 m!770939))

(declare-fun m!770941 () Bool)

(assert (=> b!827899 m!770941))

(declare-fun m!770943 () Bool)

(assert (=> b!827906 m!770943))

(declare-fun m!770945 () Bool)

(assert (=> b!827906 m!770945))

(declare-fun m!770947 () Bool)

(assert (=> b!827906 m!770947))

(declare-fun m!770949 () Bool)

(assert (=> b!827906 m!770949))

(assert (=> b!827906 m!770945))

(declare-fun m!770951 () Bool)

(assert (=> b!827906 m!770951))

(assert (=> b!827906 m!770943))

(assert (=> b!827906 m!770951))

(declare-fun m!770953 () Bool)

(assert (=> b!827906 m!770953))

(declare-fun m!770955 () Bool)

(assert (=> b!827906 m!770955))

(assert (=> b!827906 m!770939))

(assert (=> b!827903 m!770939))

(assert (=> b!827903 m!770939))

(declare-fun m!770957 () Bool)

(assert (=> b!827903 m!770957))

(declare-fun m!770959 () Bool)

(assert (=> b!827901 m!770959))

(declare-fun m!770961 () Bool)

(assert (=> b!827907 m!770961))

(assert (=> b!827905 m!770939))

(assert (=> b!827905 m!770939))

(assert (=> b!827905 m!770957))

(assert (=> b!827904 m!770943))

(assert (=> b!827904 m!770939))

(declare-fun m!770963 () Bool)

(assert (=> b!827904 m!770963))

(assert (=> b!827904 m!770951))

(assert (=> b!827904 m!770943))

(assert (=> b!827904 m!770951))

(assert (=> b!827904 m!770953))

(assert (=> b!827904 m!770939))

(assert (=> b!827843 d!105075))

(declare-fun d!105077 () Bool)

(declare-fun e!461325 () Bool)

(assert (=> d!105077 e!461325))

(declare-fun res!564324 () Bool)

(assert (=> d!105077 (=> (not res!564324) (not e!461325))))

(declare-fun lt!375064 () ListLongMap!8949)

(assert (=> d!105077 (= res!564324 (not (contains!4187 lt!375064 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!461327 () ListLongMap!8949)

(assert (=> d!105077 (= lt!375064 e!461327)))

(declare-fun c!89472 () Bool)

(assert (=> d!105077 (= c!89472 (bvsge #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (=> d!105077 (validMask!0 mask!1312)))

(assert (=> d!105077 (= (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375064)))

(declare-fun e!461328 () Bool)

(declare-fun b!827912 () Bool)

(assert (=> b!827912 (= e!461328 (= lt!375064 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!827913 () Bool)

(declare-fun e!461323 () Bool)

(declare-fun e!461324 () Bool)

(assert (=> b!827913 (= e!461323 e!461324)))

(assert (=> b!827913 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun res!564327 () Bool)

(assert (=> b!827913 (= res!564327 (contains!4187 lt!375064 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827913 (=> (not res!564327) (not e!461324))))

(declare-fun b!827914 () Bool)

(assert (=> b!827914 (= e!461327 (ListLongMap!8950 Nil!15946))))

(declare-fun b!827915 () Bool)

(assert (=> b!827915 (= e!461328 (isEmpty!652 lt!375064))))

(declare-fun call!35960 () ListLongMap!8949)

(declare-fun bm!35957 () Bool)

(assert (=> bm!35957 (= call!35960 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!827916 () Bool)

(declare-fun e!461322 () ListLongMap!8949)

(assert (=> b!827916 (= e!461322 call!35960)))

(declare-fun b!827917 () Bool)

(declare-fun e!461326 () Bool)

(assert (=> b!827917 (= e!461326 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827917 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!827918 () Bool)

(assert (=> b!827918 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (=> b!827918 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22664 _values!788)))))

(assert (=> b!827918 (= e!461324 (= (apply!365 lt!375064 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)) (get!11791 (select (arr!22243 _values!788) #b00000000000000000000000000000000) (dynLambda!975 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!827919 () Bool)

(assert (=> b!827919 (= e!461327 e!461322)))

(declare-fun c!89474 () Bool)

(assert (=> b!827919 (= c!89474 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827920 () Bool)

(declare-fun lt!375067 () Unit!28367)

(declare-fun lt!375068 () Unit!28367)

(assert (=> b!827920 (= lt!375067 lt!375068)))

(declare-fun lt!375069 () (_ BitVec 64))

(declare-fun lt!375066 () (_ BitVec 64))

(declare-fun lt!375065 () V!25181)

(declare-fun lt!375063 () ListLongMap!8949)

(assert (=> b!827920 (not (contains!4187 (+!1923 lt!375063 (tuple2!10113 lt!375066 lt!375065)) lt!375069))))

(assert (=> b!827920 (= lt!375068 (addStillNotContains!192 lt!375063 lt!375066 lt!375065 lt!375069))))

(assert (=> b!827920 (= lt!375069 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!827920 (= lt!375065 (get!11791 (select (arr!22243 _values!788) #b00000000000000000000000000000000) (dynLambda!975 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!827920 (= lt!375066 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!827920 (= lt!375063 call!35960)))

(assert (=> b!827920 (= e!461322 (+!1923 call!35960 (tuple2!10113 (select (arr!22242 _keys!976) #b00000000000000000000000000000000) (get!11791 (select (arr!22243 _values!788) #b00000000000000000000000000000000) (dynLambda!975 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!827921 () Bool)

(declare-fun res!564325 () Bool)

(assert (=> b!827921 (=> (not res!564325) (not e!461325))))

(assert (=> b!827921 (= res!564325 (not (contains!4187 lt!375064 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!827922 () Bool)

(assert (=> b!827922 (= e!461323 e!461328)))

(declare-fun c!89475 () Bool)

(assert (=> b!827922 (= c!89475 (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun b!827923 () Bool)

(assert (=> b!827923 (= e!461325 e!461323)))

(declare-fun c!89473 () Bool)

(assert (=> b!827923 (= c!89473 e!461326)))

(declare-fun res!564326 () Bool)

(assert (=> b!827923 (=> (not res!564326) (not e!461326))))

(assert (=> b!827923 (= res!564326 (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (= (and d!105077 c!89472) b!827914))

(assert (= (and d!105077 (not c!89472)) b!827919))

(assert (= (and b!827919 c!89474) b!827920))

(assert (= (and b!827919 (not c!89474)) b!827916))

(assert (= (or b!827920 b!827916) bm!35957))

(assert (= (and d!105077 res!564324) b!827921))

(assert (= (and b!827921 res!564325) b!827923))

(assert (= (and b!827923 res!564326) b!827917))

(assert (= (and b!827923 c!89473) b!827913))

(assert (= (and b!827923 (not c!89473)) b!827922))

(assert (= (and b!827913 res!564327) b!827918))

(assert (= (and b!827922 c!89475) b!827912))

(assert (= (and b!827922 (not c!89475)) b!827915))

(declare-fun b_lambda!11213 () Bool)

(assert (=> (not b_lambda!11213) (not b!827918)))

(assert (=> b!827918 t!22313))

(declare-fun b_and!22397 () Bool)

(assert (= b_and!22395 (and (=> t!22313 result!7981) b_and!22397)))

(declare-fun b_lambda!11215 () Bool)

(assert (=> (not b_lambda!11215) (not b!827920)))

(assert (=> b!827920 t!22313))

(declare-fun b_and!22399 () Bool)

(assert (= b_and!22397 (and (=> t!22313 result!7981) b_and!22399)))

(declare-fun m!770965 () Bool)

(assert (=> d!105077 m!770965))

(assert (=> d!105077 m!770895))

(declare-fun m!770967 () Bool)

(assert (=> bm!35957 m!770967))

(assert (=> b!827912 m!770967))

(assert (=> b!827913 m!770939))

(assert (=> b!827913 m!770939))

(declare-fun m!770969 () Bool)

(assert (=> b!827913 m!770969))

(assert (=> b!827920 m!770943))

(declare-fun m!770971 () Bool)

(assert (=> b!827920 m!770971))

(declare-fun m!770973 () Bool)

(assert (=> b!827920 m!770973))

(declare-fun m!770975 () Bool)

(assert (=> b!827920 m!770975))

(assert (=> b!827920 m!770971))

(assert (=> b!827920 m!770951))

(assert (=> b!827920 m!770943))

(assert (=> b!827920 m!770951))

(assert (=> b!827920 m!770953))

(declare-fun m!770977 () Bool)

(assert (=> b!827920 m!770977))

(assert (=> b!827920 m!770939))

(assert (=> b!827917 m!770939))

(assert (=> b!827917 m!770939))

(assert (=> b!827917 m!770957))

(declare-fun m!770979 () Bool)

(assert (=> b!827915 m!770979))

(declare-fun m!770981 () Bool)

(assert (=> b!827921 m!770981))

(assert (=> b!827919 m!770939))

(assert (=> b!827919 m!770939))

(assert (=> b!827919 m!770957))

(assert (=> b!827918 m!770943))

(assert (=> b!827918 m!770939))

(declare-fun m!770983 () Bool)

(assert (=> b!827918 m!770983))

(assert (=> b!827918 m!770951))

(assert (=> b!827918 m!770943))

(assert (=> b!827918 m!770951))

(assert (=> b!827918 m!770953))

(assert (=> b!827918 m!770939))

(assert (=> b!827843 d!105077))

(declare-fun d!105079 () Bool)

(declare-fun e!461331 () Bool)

(assert (=> d!105079 e!461331))

(declare-fun res!564333 () Bool)

(assert (=> d!105079 (=> (not res!564333) (not e!461331))))

(declare-fun lt!375080 () ListLongMap!8949)

(assert (=> d!105079 (= res!564333 (contains!4187 lt!375080 (_1!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!375078 () List!15949)

(assert (=> d!105079 (= lt!375080 (ListLongMap!8950 lt!375078))))

(declare-fun lt!375081 () Unit!28367)

(declare-fun lt!375079 () Unit!28367)

(assert (=> d!105079 (= lt!375081 lt!375079)))

(declare-datatypes ((Option!413 0))(
  ( (Some!412 (v!10048 V!25181)) (None!411) )
))
(declare-fun getValueByKey!407 (List!15949 (_ BitVec 64)) Option!413)

(assert (=> d!105079 (= (getValueByKey!407 lt!375078 (_1!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!412 (_2!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!223 (List!15949 (_ BitVec 64) V!25181) Unit!28367)

(assert (=> d!105079 (= lt!375079 (lemmaContainsTupThenGetReturnValue!223 lt!375078 (_1!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun insertStrictlySorted!261 (List!15949 (_ BitVec 64) V!25181) List!15949)

(assert (=> d!105079 (= lt!375078 (insertStrictlySorted!261 (toList!4490 (getCurrentListMap!2565 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796)) (_1!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105079 (= (+!1923 (getCurrentListMap!2565 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!375080)))

(declare-fun b!827928 () Bool)

(declare-fun res!564332 () Bool)

(assert (=> b!827928 (=> (not res!564332) (not e!461331))))

(assert (=> b!827928 (= res!564332 (= (getValueByKey!407 (toList!4490 lt!375080) (_1!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!412 (_2!5066 (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!827929 () Bool)

(declare-fun contains!4188 (List!15949 tuple2!10112) Bool)

(assert (=> b!827929 (= e!461331 (contains!4188 (toList!4490 lt!375080) (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!105079 res!564333) b!827928))

(assert (= (and b!827928 res!564332) b!827929))

(declare-fun m!770985 () Bool)

(assert (=> d!105079 m!770985))

(declare-fun m!770987 () Bool)

(assert (=> d!105079 m!770987))

(declare-fun m!770989 () Bool)

(assert (=> d!105079 m!770989))

(declare-fun m!770991 () Bool)

(assert (=> d!105079 m!770991))

(declare-fun m!770993 () Bool)

(assert (=> b!827928 m!770993))

(declare-fun m!770995 () Bool)

(assert (=> b!827929 m!770995))

(assert (=> b!827844 d!105079))

(declare-fun b!827972 () Bool)

(declare-fun e!461364 () Bool)

(declare-fun e!461365 () Bool)

(assert (=> b!827972 (= e!461364 e!461365)))

(declare-fun res!564357 () Bool)

(declare-fun call!35981 () Bool)

(assert (=> b!827972 (= res!564357 call!35981)))

(assert (=> b!827972 (=> (not res!564357) (not e!461365))))

(declare-fun b!827973 () Bool)

(declare-fun e!461363 () ListLongMap!8949)

(declare-fun call!35976 () ListLongMap!8949)

(assert (=> b!827973 (= e!461363 call!35976)))

(declare-fun b!827974 () Bool)

(declare-fun e!461369 () Bool)

(declare-fun e!461370 () Bool)

(assert (=> b!827974 (= e!461369 e!461370)))

(declare-fun res!564359 () Bool)

(declare-fun call!35979 () Bool)

(assert (=> b!827974 (= res!564359 call!35979)))

(assert (=> b!827974 (=> (not res!564359) (not e!461370))))

(declare-fun b!827975 () Bool)

(declare-fun lt!375138 () ListLongMap!8949)

(assert (=> b!827975 (= e!461370 (= (apply!365 lt!375138 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!827976 () Bool)

(declare-fun e!461367 () ListLongMap!8949)

(assert (=> b!827976 (= e!461367 e!461363)))

(declare-fun c!89488 () Bool)

(assert (=> b!827976 (= c!89488 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!105081 () Bool)

(declare-fun e!461366 () Bool)

(assert (=> d!105081 e!461366))

(declare-fun res!564356 () Bool)

(assert (=> d!105081 (=> (not res!564356) (not e!461366))))

(assert (=> d!105081 (= res!564356 (or (bvsge #b00000000000000000000000000000000 (size!22663 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))))

(declare-fun lt!375140 () ListLongMap!8949)

(assert (=> d!105081 (= lt!375138 lt!375140)))

(declare-fun lt!375129 () Unit!28367)

(declare-fun e!461362 () Unit!28367)

(assert (=> d!105081 (= lt!375129 e!461362)))

(declare-fun c!89489 () Bool)

(declare-fun e!461359 () Bool)

(assert (=> d!105081 (= c!89489 e!461359)))

(declare-fun res!564353 () Bool)

(assert (=> d!105081 (=> (not res!564353) (not e!461359))))

(assert (=> d!105081 (= res!564353 (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (=> d!105081 (= lt!375140 e!461367)))

(declare-fun c!89490 () Bool)

(assert (=> d!105081 (= c!89490 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105081 (validMask!0 mask!1312)))

(assert (=> d!105081 (= (getCurrentListMap!2565 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375138)))

(declare-fun b!827977 () Bool)

(declare-fun c!89491 () Bool)

(assert (=> b!827977 (= c!89491 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!461368 () ListLongMap!8949)

(assert (=> b!827977 (= e!461363 e!461368)))

(declare-fun b!827978 () Bool)

(declare-fun e!461361 () Bool)

(assert (=> b!827978 (= e!461361 (= (apply!365 lt!375138 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)) (get!11791 (select (arr!22243 _values!788) #b00000000000000000000000000000000) (dynLambda!975 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!827978 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22664 _values!788)))))

(assert (=> b!827978 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun b!827979 () Bool)

(declare-fun lt!375143 () Unit!28367)

(assert (=> b!827979 (= e!461362 lt!375143)))

(declare-fun lt!375144 () ListLongMap!8949)

(assert (=> b!827979 (= lt!375144 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375128 () (_ BitVec 64))

(assert (=> b!827979 (= lt!375128 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375127 () (_ BitVec 64))

(assert (=> b!827979 (= lt!375127 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375145 () Unit!28367)

(declare-fun addStillContains!316 (ListLongMap!8949 (_ BitVec 64) V!25181 (_ BitVec 64)) Unit!28367)

(assert (=> b!827979 (= lt!375145 (addStillContains!316 lt!375144 lt!375128 zeroValueBefore!34 lt!375127))))

(assert (=> b!827979 (contains!4187 (+!1923 lt!375144 (tuple2!10113 lt!375128 zeroValueBefore!34)) lt!375127)))

(declare-fun lt!375137 () Unit!28367)

(assert (=> b!827979 (= lt!375137 lt!375145)))

(declare-fun lt!375131 () ListLongMap!8949)

(assert (=> b!827979 (= lt!375131 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375133 () (_ BitVec 64))

(assert (=> b!827979 (= lt!375133 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375136 () (_ BitVec 64))

(assert (=> b!827979 (= lt!375136 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375134 () Unit!28367)

(declare-fun addApplyDifferent!316 (ListLongMap!8949 (_ BitVec 64) V!25181 (_ BitVec 64)) Unit!28367)

(assert (=> b!827979 (= lt!375134 (addApplyDifferent!316 lt!375131 lt!375133 minValue!754 lt!375136))))

(assert (=> b!827979 (= (apply!365 (+!1923 lt!375131 (tuple2!10113 lt!375133 minValue!754)) lt!375136) (apply!365 lt!375131 lt!375136))))

(declare-fun lt!375142 () Unit!28367)

(assert (=> b!827979 (= lt!375142 lt!375134)))

(declare-fun lt!375141 () ListLongMap!8949)

(assert (=> b!827979 (= lt!375141 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375130 () (_ BitVec 64))

(assert (=> b!827979 (= lt!375130 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375126 () (_ BitVec 64))

(assert (=> b!827979 (= lt!375126 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375147 () Unit!28367)

(assert (=> b!827979 (= lt!375147 (addApplyDifferent!316 lt!375141 lt!375130 zeroValueBefore!34 lt!375126))))

(assert (=> b!827979 (= (apply!365 (+!1923 lt!375141 (tuple2!10113 lt!375130 zeroValueBefore!34)) lt!375126) (apply!365 lt!375141 lt!375126))))

(declare-fun lt!375146 () Unit!28367)

(assert (=> b!827979 (= lt!375146 lt!375147)))

(declare-fun lt!375135 () ListLongMap!8949)

(assert (=> b!827979 (= lt!375135 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375132 () (_ BitVec 64))

(assert (=> b!827979 (= lt!375132 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375139 () (_ BitVec 64))

(assert (=> b!827979 (= lt!375139 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!827979 (= lt!375143 (addApplyDifferent!316 lt!375135 lt!375132 minValue!754 lt!375139))))

(assert (=> b!827979 (= (apply!365 (+!1923 lt!375135 (tuple2!10113 lt!375132 minValue!754)) lt!375139) (apply!365 lt!375135 lt!375139))))

(declare-fun b!827980 () Bool)

(declare-fun call!35978 () ListLongMap!8949)

(assert (=> b!827980 (= e!461367 (+!1923 call!35978 (tuple2!10113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun call!35975 () ListLongMap!8949)

(declare-fun bm!35972 () Bool)

(assert (=> bm!35972 (= call!35975 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun bm!35973 () Bool)

(assert (=> bm!35973 (= call!35981 (contains!4187 lt!375138 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!35974 () Bool)

(assert (=> bm!35974 (= call!35976 call!35978)))

(declare-fun b!827981 () Bool)

(declare-fun call!35977 () ListLongMap!8949)

(assert (=> b!827981 (= e!461368 call!35977)))

(declare-fun b!827982 () Bool)

(assert (=> b!827982 (= e!461368 call!35976)))

(declare-fun b!827983 () Bool)

(declare-fun res!564352 () Bool)

(assert (=> b!827983 (=> (not res!564352) (not e!461366))))

(assert (=> b!827983 (= res!564352 e!461364)))

(declare-fun c!89492 () Bool)

(assert (=> b!827983 (= c!89492 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!827984 () Bool)

(declare-fun e!461360 () Bool)

(assert (=> b!827984 (= e!461360 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827985 () Bool)

(assert (=> b!827985 (= e!461364 (not call!35981))))

(declare-fun b!827986 () Bool)

(assert (=> b!827986 (= e!461365 (= (apply!365 lt!375138 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!827987 () Bool)

(assert (=> b!827987 (= e!461369 (not call!35979))))

(declare-fun bm!35975 () Bool)

(declare-fun call!35980 () ListLongMap!8949)

(assert (=> bm!35975 (= call!35978 (+!1923 (ite c!89490 call!35975 (ite c!89488 call!35980 call!35977)) (ite (or c!89490 c!89488) (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!827988 () Bool)

(assert (=> b!827988 (= e!461359 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827989 () Bool)

(declare-fun Unit!28369 () Unit!28367)

(assert (=> b!827989 (= e!461362 Unit!28369)))

(declare-fun b!827990 () Bool)

(declare-fun res!564358 () Bool)

(assert (=> b!827990 (=> (not res!564358) (not e!461366))))

(declare-fun e!461358 () Bool)

(assert (=> b!827990 (= res!564358 e!461358)))

(declare-fun res!564355 () Bool)

(assert (=> b!827990 (=> res!564355 e!461358)))

(assert (=> b!827990 (= res!564355 (not e!461360))))

(declare-fun res!564354 () Bool)

(assert (=> b!827990 (=> (not res!564354) (not e!461360))))

(assert (=> b!827990 (= res!564354 (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun bm!35976 () Bool)

(assert (=> bm!35976 (= call!35979 (contains!4187 lt!375138 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!827991 () Bool)

(assert (=> b!827991 (= e!461366 e!461369)))

(declare-fun c!89493 () Bool)

(assert (=> b!827991 (= c!89493 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!35977 () Bool)

(assert (=> bm!35977 (= call!35980 call!35975)))

(declare-fun b!827992 () Bool)

(assert (=> b!827992 (= e!461358 e!461361)))

(declare-fun res!564360 () Bool)

(assert (=> b!827992 (=> (not res!564360) (not e!461361))))

(assert (=> b!827992 (= res!564360 (contains!4187 lt!375138 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827992 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun bm!35978 () Bool)

(assert (=> bm!35978 (= call!35977 call!35980)))

(assert (= (and d!105081 c!89490) b!827980))

(assert (= (and d!105081 (not c!89490)) b!827976))

(assert (= (and b!827976 c!89488) b!827973))

(assert (= (and b!827976 (not c!89488)) b!827977))

(assert (= (and b!827977 c!89491) b!827982))

(assert (= (and b!827977 (not c!89491)) b!827981))

(assert (= (or b!827982 b!827981) bm!35978))

(assert (= (or b!827973 bm!35978) bm!35977))

(assert (= (or b!827973 b!827982) bm!35974))

(assert (= (or b!827980 bm!35977) bm!35972))

(assert (= (or b!827980 bm!35974) bm!35975))

(assert (= (and d!105081 res!564353) b!827988))

(assert (= (and d!105081 c!89489) b!827979))

(assert (= (and d!105081 (not c!89489)) b!827989))

(assert (= (and d!105081 res!564356) b!827990))

(assert (= (and b!827990 res!564354) b!827984))

(assert (= (and b!827990 (not res!564355)) b!827992))

(assert (= (and b!827992 res!564360) b!827978))

(assert (= (and b!827990 res!564358) b!827983))

(assert (= (and b!827983 c!89492) b!827972))

(assert (= (and b!827983 (not c!89492)) b!827985))

(assert (= (and b!827972 res!564357) b!827986))

(assert (= (or b!827972 b!827985) bm!35973))

(assert (= (and b!827983 res!564352) b!827991))

(assert (= (and b!827991 c!89493) b!827974))

(assert (= (and b!827991 (not c!89493)) b!827987))

(assert (= (and b!827974 res!564359) b!827975))

(assert (= (or b!827974 b!827987) bm!35976))

(declare-fun b_lambda!11217 () Bool)

(assert (=> (not b_lambda!11217) (not b!827978)))

(assert (=> b!827978 t!22313))

(declare-fun b_and!22401 () Bool)

(assert (= b_and!22399 (and (=> t!22313 result!7981) b_and!22401)))

(assert (=> bm!35972 m!770905))

(declare-fun m!770997 () Bool)

(assert (=> bm!35975 m!770997))

(declare-fun m!770999 () Bool)

(assert (=> b!827980 m!770999))

(declare-fun m!771001 () Bool)

(assert (=> b!827979 m!771001))

(declare-fun m!771003 () Bool)

(assert (=> b!827979 m!771003))

(declare-fun m!771005 () Bool)

(assert (=> b!827979 m!771005))

(assert (=> b!827979 m!770939))

(declare-fun m!771007 () Bool)

(assert (=> b!827979 m!771007))

(declare-fun m!771009 () Bool)

(assert (=> b!827979 m!771009))

(declare-fun m!771011 () Bool)

(assert (=> b!827979 m!771011))

(assert (=> b!827979 m!771003))

(declare-fun m!771013 () Bool)

(assert (=> b!827979 m!771013))

(declare-fun m!771015 () Bool)

(assert (=> b!827979 m!771015))

(declare-fun m!771017 () Bool)

(assert (=> b!827979 m!771017))

(assert (=> b!827979 m!771015))

(assert (=> b!827979 m!771009))

(declare-fun m!771019 () Bool)

(assert (=> b!827979 m!771019))

(declare-fun m!771021 () Bool)

(assert (=> b!827979 m!771021))

(declare-fun m!771023 () Bool)

(assert (=> b!827979 m!771023))

(declare-fun m!771025 () Bool)

(assert (=> b!827979 m!771025))

(assert (=> b!827979 m!771011))

(declare-fun m!771027 () Bool)

(assert (=> b!827979 m!771027))

(declare-fun m!771029 () Bool)

(assert (=> b!827979 m!771029))

(assert (=> b!827979 m!770905))

(declare-fun m!771031 () Bool)

(assert (=> bm!35973 m!771031))

(assert (=> b!827984 m!770939))

(assert (=> b!827984 m!770939))

(assert (=> b!827984 m!770957))

(assert (=> b!827988 m!770939))

(assert (=> b!827988 m!770939))

(assert (=> b!827988 m!770957))

(assert (=> b!827978 m!770943))

(assert (=> b!827978 m!770951))

(assert (=> b!827978 m!770953))

(assert (=> b!827978 m!770939))

(assert (=> b!827978 m!770943))

(assert (=> b!827978 m!770951))

(assert (=> b!827978 m!770939))

(declare-fun m!771033 () Bool)

(assert (=> b!827978 m!771033))

(declare-fun m!771035 () Bool)

(assert (=> bm!35976 m!771035))

(declare-fun m!771037 () Bool)

(assert (=> b!827986 m!771037))

(assert (=> d!105081 m!770895))

(declare-fun m!771039 () Bool)

(assert (=> b!827975 m!771039))

(assert (=> b!827992 m!770939))

(assert (=> b!827992 m!770939))

(declare-fun m!771041 () Bool)

(assert (=> b!827992 m!771041))

(assert (=> b!827844 d!105081))

(declare-fun b!827993 () Bool)

(declare-fun e!461377 () Bool)

(declare-fun e!461378 () Bool)

(assert (=> b!827993 (= e!461377 e!461378)))

(declare-fun res!564366 () Bool)

(declare-fun call!35988 () Bool)

(assert (=> b!827993 (= res!564366 call!35988)))

(assert (=> b!827993 (=> (not res!564366) (not e!461378))))

(declare-fun b!827994 () Bool)

(declare-fun e!461376 () ListLongMap!8949)

(declare-fun call!35983 () ListLongMap!8949)

(assert (=> b!827994 (= e!461376 call!35983)))

(declare-fun b!827995 () Bool)

(declare-fun e!461382 () Bool)

(declare-fun e!461383 () Bool)

(assert (=> b!827995 (= e!461382 e!461383)))

(declare-fun res!564368 () Bool)

(declare-fun call!35986 () Bool)

(assert (=> b!827995 (= res!564368 call!35986)))

(assert (=> b!827995 (=> (not res!564368) (not e!461383))))

(declare-fun b!827996 () Bool)

(declare-fun lt!375160 () ListLongMap!8949)

(assert (=> b!827996 (= e!461383 (= (apply!365 lt!375160 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!827997 () Bool)

(declare-fun e!461380 () ListLongMap!8949)

(assert (=> b!827997 (= e!461380 e!461376)))

(declare-fun c!89494 () Bool)

(assert (=> b!827997 (= c!89494 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!105083 () Bool)

(declare-fun e!461379 () Bool)

(assert (=> d!105083 e!461379))

(declare-fun res!564365 () Bool)

(assert (=> d!105083 (=> (not res!564365) (not e!461379))))

(assert (=> d!105083 (= res!564365 (or (bvsge #b00000000000000000000000000000000 (size!22663 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))))

(declare-fun lt!375162 () ListLongMap!8949)

(assert (=> d!105083 (= lt!375160 lt!375162)))

(declare-fun lt!375151 () Unit!28367)

(declare-fun e!461375 () Unit!28367)

(assert (=> d!105083 (= lt!375151 e!461375)))

(declare-fun c!89495 () Bool)

(declare-fun e!461372 () Bool)

(assert (=> d!105083 (= c!89495 e!461372)))

(declare-fun res!564362 () Bool)

(assert (=> d!105083 (=> (not res!564362) (not e!461372))))

(assert (=> d!105083 (= res!564362 (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (=> d!105083 (= lt!375162 e!461380)))

(declare-fun c!89496 () Bool)

(assert (=> d!105083 (= c!89496 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105083 (validMask!0 mask!1312)))

(assert (=> d!105083 (= (getCurrentListMap!2565 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375160)))

(declare-fun b!827998 () Bool)

(declare-fun c!89497 () Bool)

(assert (=> b!827998 (= c!89497 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!461381 () ListLongMap!8949)

(assert (=> b!827998 (= e!461376 e!461381)))

(declare-fun e!461374 () Bool)

(declare-fun b!827999 () Bool)

(assert (=> b!827999 (= e!461374 (= (apply!365 lt!375160 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)) (get!11791 (select (arr!22243 _values!788) #b00000000000000000000000000000000) (dynLambda!975 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!827999 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22664 _values!788)))))

(assert (=> b!827999 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun b!828000 () Bool)

(declare-fun lt!375165 () Unit!28367)

(assert (=> b!828000 (= e!461375 lt!375165)))

(declare-fun lt!375166 () ListLongMap!8949)

(assert (=> b!828000 (= lt!375166 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375150 () (_ BitVec 64))

(assert (=> b!828000 (= lt!375150 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375149 () (_ BitVec 64))

(assert (=> b!828000 (= lt!375149 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375167 () Unit!28367)

(assert (=> b!828000 (= lt!375167 (addStillContains!316 lt!375166 lt!375150 zeroValueAfter!34 lt!375149))))

(assert (=> b!828000 (contains!4187 (+!1923 lt!375166 (tuple2!10113 lt!375150 zeroValueAfter!34)) lt!375149)))

(declare-fun lt!375159 () Unit!28367)

(assert (=> b!828000 (= lt!375159 lt!375167)))

(declare-fun lt!375153 () ListLongMap!8949)

(assert (=> b!828000 (= lt!375153 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375155 () (_ BitVec 64))

(assert (=> b!828000 (= lt!375155 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375158 () (_ BitVec 64))

(assert (=> b!828000 (= lt!375158 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375156 () Unit!28367)

(assert (=> b!828000 (= lt!375156 (addApplyDifferent!316 lt!375153 lt!375155 minValue!754 lt!375158))))

(assert (=> b!828000 (= (apply!365 (+!1923 lt!375153 (tuple2!10113 lt!375155 minValue!754)) lt!375158) (apply!365 lt!375153 lt!375158))))

(declare-fun lt!375164 () Unit!28367)

(assert (=> b!828000 (= lt!375164 lt!375156)))

(declare-fun lt!375163 () ListLongMap!8949)

(assert (=> b!828000 (= lt!375163 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375152 () (_ BitVec 64))

(assert (=> b!828000 (= lt!375152 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375148 () (_ BitVec 64))

(assert (=> b!828000 (= lt!375148 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375169 () Unit!28367)

(assert (=> b!828000 (= lt!375169 (addApplyDifferent!316 lt!375163 lt!375152 zeroValueAfter!34 lt!375148))))

(assert (=> b!828000 (= (apply!365 (+!1923 lt!375163 (tuple2!10113 lt!375152 zeroValueAfter!34)) lt!375148) (apply!365 lt!375163 lt!375148))))

(declare-fun lt!375168 () Unit!28367)

(assert (=> b!828000 (= lt!375168 lt!375169)))

(declare-fun lt!375157 () ListLongMap!8949)

(assert (=> b!828000 (= lt!375157 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375154 () (_ BitVec 64))

(assert (=> b!828000 (= lt!375154 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375161 () (_ BitVec 64))

(assert (=> b!828000 (= lt!375161 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!828000 (= lt!375165 (addApplyDifferent!316 lt!375157 lt!375154 minValue!754 lt!375161))))

(assert (=> b!828000 (= (apply!365 (+!1923 lt!375157 (tuple2!10113 lt!375154 minValue!754)) lt!375161) (apply!365 lt!375157 lt!375161))))

(declare-fun b!828001 () Bool)

(declare-fun call!35985 () ListLongMap!8949)

(assert (=> b!828001 (= e!461380 (+!1923 call!35985 (tuple2!10113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!35979 () Bool)

(declare-fun call!35982 () ListLongMap!8949)

(assert (=> bm!35979 (= call!35982 (getCurrentListMapNoExtraKeys!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun bm!35980 () Bool)

(assert (=> bm!35980 (= call!35988 (contains!4187 lt!375160 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!35981 () Bool)

(assert (=> bm!35981 (= call!35983 call!35985)))

(declare-fun b!828002 () Bool)

(declare-fun call!35984 () ListLongMap!8949)

(assert (=> b!828002 (= e!461381 call!35984)))

(declare-fun b!828003 () Bool)

(assert (=> b!828003 (= e!461381 call!35983)))

(declare-fun b!828004 () Bool)

(declare-fun res!564361 () Bool)

(assert (=> b!828004 (=> (not res!564361) (not e!461379))))

(assert (=> b!828004 (= res!564361 e!461377)))

(declare-fun c!89498 () Bool)

(assert (=> b!828004 (= c!89498 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!828005 () Bool)

(declare-fun e!461373 () Bool)

(assert (=> b!828005 (= e!461373 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828006 () Bool)

(assert (=> b!828006 (= e!461377 (not call!35988))))

(declare-fun b!828007 () Bool)

(assert (=> b!828007 (= e!461378 (= (apply!365 lt!375160 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!828008 () Bool)

(assert (=> b!828008 (= e!461382 (not call!35986))))

(declare-fun call!35987 () ListLongMap!8949)

(declare-fun bm!35982 () Bool)

(assert (=> bm!35982 (= call!35985 (+!1923 (ite c!89496 call!35982 (ite c!89494 call!35987 call!35984)) (ite (or c!89496 c!89494) (tuple2!10113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!828009 () Bool)

(assert (=> b!828009 (= e!461372 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828010 () Bool)

(declare-fun Unit!28370 () Unit!28367)

(assert (=> b!828010 (= e!461375 Unit!28370)))

(declare-fun b!828011 () Bool)

(declare-fun res!564367 () Bool)

(assert (=> b!828011 (=> (not res!564367) (not e!461379))))

(declare-fun e!461371 () Bool)

(assert (=> b!828011 (= res!564367 e!461371)))

(declare-fun res!564364 () Bool)

(assert (=> b!828011 (=> res!564364 e!461371)))

(assert (=> b!828011 (= res!564364 (not e!461373))))

(declare-fun res!564363 () Bool)

(assert (=> b!828011 (=> (not res!564363) (not e!461373))))

(assert (=> b!828011 (= res!564363 (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun bm!35983 () Bool)

(assert (=> bm!35983 (= call!35986 (contains!4187 lt!375160 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!828012 () Bool)

(assert (=> b!828012 (= e!461379 e!461382)))

(declare-fun c!89499 () Bool)

(assert (=> b!828012 (= c!89499 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!35984 () Bool)

(assert (=> bm!35984 (= call!35987 call!35982)))

(declare-fun b!828013 () Bool)

(assert (=> b!828013 (= e!461371 e!461374)))

(declare-fun res!564369 () Bool)

(assert (=> b!828013 (=> (not res!564369) (not e!461374))))

(assert (=> b!828013 (= res!564369 (contains!4187 lt!375160 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828013 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(declare-fun bm!35985 () Bool)

(assert (=> bm!35985 (= call!35984 call!35987)))

(assert (= (and d!105083 c!89496) b!828001))

(assert (= (and d!105083 (not c!89496)) b!827997))

(assert (= (and b!827997 c!89494) b!827994))

(assert (= (and b!827997 (not c!89494)) b!827998))

(assert (= (and b!827998 c!89497) b!828003))

(assert (= (and b!827998 (not c!89497)) b!828002))

(assert (= (or b!828003 b!828002) bm!35985))

(assert (= (or b!827994 bm!35985) bm!35984))

(assert (= (or b!827994 b!828003) bm!35981))

(assert (= (or b!828001 bm!35984) bm!35979))

(assert (= (or b!828001 bm!35981) bm!35982))

(assert (= (and d!105083 res!564362) b!828009))

(assert (= (and d!105083 c!89495) b!828000))

(assert (= (and d!105083 (not c!89495)) b!828010))

(assert (= (and d!105083 res!564365) b!828011))

(assert (= (and b!828011 res!564363) b!828005))

(assert (= (and b!828011 (not res!564364)) b!828013))

(assert (= (and b!828013 res!564369) b!827999))

(assert (= (and b!828011 res!564367) b!828004))

(assert (= (and b!828004 c!89498) b!827993))

(assert (= (and b!828004 (not c!89498)) b!828006))

(assert (= (and b!827993 res!564366) b!828007))

(assert (= (or b!827993 b!828006) bm!35980))

(assert (= (and b!828004 res!564361) b!828012))

(assert (= (and b!828012 c!89499) b!827995))

(assert (= (and b!828012 (not c!89499)) b!828008))

(assert (= (and b!827995 res!564368) b!827996))

(assert (= (or b!827995 b!828008) bm!35983))

(declare-fun b_lambda!11219 () Bool)

(assert (=> (not b_lambda!11219) (not b!827999)))

(assert (=> b!827999 t!22313))

(declare-fun b_and!22403 () Bool)

(assert (= b_and!22401 (and (=> t!22313 result!7981) b_and!22403)))

(assert (=> bm!35979 m!770903))

(declare-fun m!771043 () Bool)

(assert (=> bm!35982 m!771043))

(declare-fun m!771045 () Bool)

(assert (=> b!828001 m!771045))

(declare-fun m!771047 () Bool)

(assert (=> b!828000 m!771047))

(declare-fun m!771049 () Bool)

(assert (=> b!828000 m!771049))

(declare-fun m!771051 () Bool)

(assert (=> b!828000 m!771051))

(assert (=> b!828000 m!770939))

(declare-fun m!771053 () Bool)

(assert (=> b!828000 m!771053))

(declare-fun m!771055 () Bool)

(assert (=> b!828000 m!771055))

(declare-fun m!771057 () Bool)

(assert (=> b!828000 m!771057))

(assert (=> b!828000 m!771049))

(declare-fun m!771059 () Bool)

(assert (=> b!828000 m!771059))

(declare-fun m!771061 () Bool)

(assert (=> b!828000 m!771061))

(declare-fun m!771063 () Bool)

(assert (=> b!828000 m!771063))

(assert (=> b!828000 m!771061))

(assert (=> b!828000 m!771055))

(declare-fun m!771065 () Bool)

(assert (=> b!828000 m!771065))

(declare-fun m!771067 () Bool)

(assert (=> b!828000 m!771067))

(declare-fun m!771069 () Bool)

(assert (=> b!828000 m!771069))

(declare-fun m!771071 () Bool)

(assert (=> b!828000 m!771071))

(assert (=> b!828000 m!771057))

(declare-fun m!771073 () Bool)

(assert (=> b!828000 m!771073))

(declare-fun m!771075 () Bool)

(assert (=> b!828000 m!771075))

(assert (=> b!828000 m!770903))

(declare-fun m!771077 () Bool)

(assert (=> bm!35980 m!771077))

(assert (=> b!828005 m!770939))

(assert (=> b!828005 m!770939))

(assert (=> b!828005 m!770957))

(assert (=> b!828009 m!770939))

(assert (=> b!828009 m!770939))

(assert (=> b!828009 m!770957))

(assert (=> b!827999 m!770943))

(assert (=> b!827999 m!770951))

(assert (=> b!827999 m!770953))

(assert (=> b!827999 m!770939))

(assert (=> b!827999 m!770943))

(assert (=> b!827999 m!770951))

(assert (=> b!827999 m!770939))

(declare-fun m!771079 () Bool)

(assert (=> b!827999 m!771079))

(declare-fun m!771081 () Bool)

(assert (=> bm!35983 m!771081))

(declare-fun m!771083 () Bool)

(assert (=> b!828007 m!771083))

(assert (=> d!105083 m!770895))

(declare-fun m!771085 () Bool)

(assert (=> b!827996 m!771085))

(assert (=> b!828013 m!770939))

(assert (=> b!828013 m!770939))

(declare-fun m!771087 () Bool)

(assert (=> b!828013 m!771087))

(assert (=> b!827844 d!105083))

(declare-fun b!828022 () Bool)

(declare-fun e!461390 () Bool)

(declare-fun call!35991 () Bool)

(assert (=> b!828022 (= e!461390 call!35991)))

(declare-fun d!105085 () Bool)

(declare-fun res!564374 () Bool)

(declare-fun e!461392 () Bool)

(assert (=> d!105085 (=> res!564374 e!461392)))

(assert (=> d!105085 (= res!564374 (bvsge #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (=> d!105085 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!461392)))

(declare-fun b!828023 () Bool)

(declare-fun e!461391 () Bool)

(assert (=> b!828023 (= e!461392 e!461391)))

(declare-fun c!89502 () Bool)

(assert (=> b!828023 (= c!89502 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35988 () Bool)

(assert (=> bm!35988 (= call!35991 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!828024 () Bool)

(assert (=> b!828024 (= e!461391 e!461390)))

(declare-fun lt!375177 () (_ BitVec 64))

(assert (=> b!828024 (= lt!375177 (select (arr!22242 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375178 () Unit!28367)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46406 (_ BitVec 64) (_ BitVec 32)) Unit!28367)

(assert (=> b!828024 (= lt!375178 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!375177 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!828024 (arrayContainsKey!0 _keys!976 lt!375177 #b00000000000000000000000000000000)))

(declare-fun lt!375176 () Unit!28367)

(assert (=> b!828024 (= lt!375176 lt!375178)))

(declare-fun res!564375 () Bool)

(declare-datatypes ((SeekEntryResult!8726 0))(
  ( (MissingZero!8726 (index!37274 (_ BitVec 32))) (Found!8726 (index!37275 (_ BitVec 32))) (Intermediate!8726 (undefined!9538 Bool) (index!37276 (_ BitVec 32)) (x!69911 (_ BitVec 32))) (Undefined!8726) (MissingVacant!8726 (index!37277 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46406 (_ BitVec 32)) SeekEntryResult!8726)

(assert (=> b!828024 (= res!564375 (= (seekEntryOrOpen!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8726 #b00000000000000000000000000000000)))))

(assert (=> b!828024 (=> (not res!564375) (not e!461390))))

(declare-fun b!828025 () Bool)

(assert (=> b!828025 (= e!461391 call!35991)))

(assert (= (and d!105085 (not res!564374)) b!828023))

(assert (= (and b!828023 c!89502) b!828024))

(assert (= (and b!828023 (not c!89502)) b!828025))

(assert (= (and b!828024 res!564375) b!828022))

(assert (= (or b!828022 b!828025) bm!35988))

(assert (=> b!828023 m!770939))

(assert (=> b!828023 m!770939))

(assert (=> b!828023 m!770957))

(declare-fun m!771089 () Bool)

(assert (=> bm!35988 m!771089))

(assert (=> b!828024 m!770939))

(declare-fun m!771091 () Bool)

(assert (=> b!828024 m!771091))

(declare-fun m!771093 () Bool)

(assert (=> b!828024 m!771093))

(assert (=> b!828024 m!770939))

(declare-fun m!771095 () Bool)

(assert (=> b!828024 m!771095))

(assert (=> b!827849 d!105085))

(declare-fun b!828036 () Bool)

(declare-fun e!461401 () Bool)

(declare-fun call!35994 () Bool)

(assert (=> b!828036 (= e!461401 call!35994)))

(declare-fun bm!35991 () Bool)

(declare-fun c!89505 () Bool)

(assert (=> bm!35991 (= call!35994 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89505 (Cons!15946 (select (arr!22242 _keys!976) #b00000000000000000000000000000000) Nil!15947) Nil!15947)))))

(declare-fun b!828037 () Bool)

(declare-fun e!461403 () Bool)

(declare-fun contains!4189 (List!15950 (_ BitVec 64)) Bool)

(assert (=> b!828037 (= e!461403 (contains!4189 Nil!15947 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105087 () Bool)

(declare-fun res!564382 () Bool)

(declare-fun e!461404 () Bool)

(assert (=> d!105087 (=> res!564382 e!461404)))

(assert (=> d!105087 (= res!564382 (bvsge #b00000000000000000000000000000000 (size!22663 _keys!976)))))

(assert (=> d!105087 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15947) e!461404)))

(declare-fun b!828038 () Bool)

(declare-fun e!461402 () Bool)

(assert (=> b!828038 (= e!461402 e!461401)))

(assert (=> b!828038 (= c!89505 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828039 () Bool)

(assert (=> b!828039 (= e!461404 e!461402)))

(declare-fun res!564383 () Bool)

(assert (=> b!828039 (=> (not res!564383) (not e!461402))))

(assert (=> b!828039 (= res!564383 (not e!461403))))

(declare-fun res!564384 () Bool)

(assert (=> b!828039 (=> (not res!564384) (not e!461403))))

(assert (=> b!828039 (= res!564384 (validKeyInArray!0 (select (arr!22242 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828040 () Bool)

(assert (=> b!828040 (= e!461401 call!35994)))

(assert (= (and d!105087 (not res!564382)) b!828039))

(assert (= (and b!828039 res!564384) b!828037))

(assert (= (and b!828039 res!564383) b!828038))

(assert (= (and b!828038 c!89505) b!828040))

(assert (= (and b!828038 (not c!89505)) b!828036))

(assert (= (or b!828040 b!828036) bm!35991))

(assert (=> bm!35991 m!770939))

(declare-fun m!771097 () Bool)

(assert (=> bm!35991 m!771097))

(assert (=> b!828037 m!770939))

(assert (=> b!828037 m!770939))

(declare-fun m!771099 () Bool)

(assert (=> b!828037 m!771099))

(assert (=> b!828038 m!770939))

(assert (=> b!828038 m!770939))

(assert (=> b!828038 m!770957))

(assert (=> b!828039 m!770939))

(assert (=> b!828039 m!770939))

(assert (=> b!828039 m!770957))

(assert (=> b!827845 d!105087))

(declare-fun b!828048 () Bool)

(declare-fun e!461410 () Bool)

(assert (=> b!828048 (= e!461410 tp_is_empty!15135)))

(declare-fun condMapEmpty!24340 () Bool)

(declare-fun mapDefault!24340 () ValueCell!7152)

(assert (=> mapNonEmpty!24334 (= condMapEmpty!24340 (= mapRest!24334 ((as const (Array (_ BitVec 32) ValueCell!7152)) mapDefault!24340)))))

(declare-fun mapRes!24340 () Bool)

(assert (=> mapNonEmpty!24334 (= tp!47041 (and e!461410 mapRes!24340))))

(declare-fun b!828047 () Bool)

(declare-fun e!461409 () Bool)

(assert (=> b!828047 (= e!461409 tp_is_empty!15135)))

(declare-fun mapIsEmpty!24340 () Bool)

(assert (=> mapIsEmpty!24340 mapRes!24340))

(declare-fun mapNonEmpty!24340 () Bool)

(declare-fun tp!47050 () Bool)

(assert (=> mapNonEmpty!24340 (= mapRes!24340 (and tp!47050 e!461409))))

(declare-fun mapKey!24340 () (_ BitVec 32))

(declare-fun mapValue!24340 () ValueCell!7152)

(declare-fun mapRest!24340 () (Array (_ BitVec 32) ValueCell!7152))

(assert (=> mapNonEmpty!24340 (= mapRest!24334 (store mapRest!24340 mapKey!24340 mapValue!24340))))

(assert (= (and mapNonEmpty!24334 condMapEmpty!24340) mapIsEmpty!24340))

(assert (= (and mapNonEmpty!24334 (not condMapEmpty!24340)) mapNonEmpty!24340))

(assert (= (and mapNonEmpty!24340 ((_ is ValueCellFull!7152) mapValue!24340)) b!828047))

(assert (= (and mapNonEmpty!24334 ((_ is ValueCellFull!7152) mapDefault!24340)) b!828048))

(declare-fun m!771101 () Bool)

(assert (=> mapNonEmpty!24340 m!771101))

(declare-fun b_lambda!11221 () Bool)

(assert (= b_lambda!11215 (or (and start!71314 b_free!13425) b_lambda!11221)))

(declare-fun b_lambda!11223 () Bool)

(assert (= b_lambda!11209 (or (and start!71314 b_free!13425) b_lambda!11223)))

(declare-fun b_lambda!11225 () Bool)

(assert (= b_lambda!11217 (or (and start!71314 b_free!13425) b_lambda!11225)))

(declare-fun b_lambda!11227 () Bool)

(assert (= b_lambda!11219 (or (and start!71314 b_free!13425) b_lambda!11227)))

(declare-fun b_lambda!11229 () Bool)

(assert (= b_lambda!11213 (or (and start!71314 b_free!13425) b_lambda!11229)))

(declare-fun b_lambda!11231 () Bool)

(assert (= b_lambda!11211 (or (and start!71314 b_free!13425) b_lambda!11231)))

(check-sat (not b!827992) (not bm!35982) (not bm!35957) (not b!827984) (not b!827978) (not b!827899) (not b!827986) (not bm!35976) (not b!827928) (not d!105081) (not b!828039) (not b!827920) (not d!105083) (not b!827913) (not d!105075) (not bm!35956) (not b!827921) (not b!827996) (not b_lambda!11229) (not b!828009) (not b!827979) (not bm!35991) (not d!105079) (not b!828005) (not b_lambda!11225) (not b_next!13425) (not bm!35988) (not b!827917) (not bm!35972) (not b!827906) (not b!827905) (not b!828001) (not mapNonEmpty!24340) (not b!828023) (not b!827918) (not d!105077) (not b_lambda!11221) (not b!827912) (not b!827915) (not b!827904) (not b!827980) b_and!22403 tp_is_empty!15135 (not b!827999) (not b!827988) (not b!827903) (not b!827907) (not b!827898) (not bm!35973) (not bm!35983) (not b!827901) (not bm!35975) (not b_lambda!11231) (not bm!35979) (not b!828024) (not b_lambda!11223) (not b!828000) (not b!827929) (not b!828037) (not bm!35980) (not b!827975) (not b_lambda!11227) (not b!828038) (not b!827919) (not b!828007) (not d!105073) (not b!828013))
(check-sat b_and!22403 (not b_next!13425))
