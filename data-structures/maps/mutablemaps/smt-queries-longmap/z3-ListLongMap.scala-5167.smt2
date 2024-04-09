; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70002 () Bool)

(assert start!70002)

(declare-fun b_free!12411 () Bool)

(declare-fun b_next!12411 () Bool)

(assert (=> start!70002 (= b_free!12411 (not b_next!12411))))

(declare-fun tp!43945 () Bool)

(declare-fun b_and!21197 () Bool)

(assert (=> start!70002 (= tp!43945 b_and!21197)))

(declare-fun res!555707 () Bool)

(declare-fun e!450660 () Bool)

(assert (=> start!70002 (=> (not res!555707) (not e!450660))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70002 (= res!555707 (validMask!0 mask!1312))))

(assert (=> start!70002 e!450660))

(declare-fun tp_is_empty!14121 () Bool)

(assert (=> start!70002 tp_is_empty!14121))

(declare-datatypes ((array!44430 0))(
  ( (array!44431 (arr!21272 (Array (_ BitVec 32) (_ BitVec 64))) (size!21693 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44430)

(declare-fun array_inv!17013 (array!44430) Bool)

(assert (=> start!70002 (array_inv!17013 _keys!976)))

(assert (=> start!70002 true))

(declare-datatypes ((V!23829 0))(
  ( (V!23830 (val!7108 Int)) )
))
(declare-datatypes ((ValueCell!6645 0))(
  ( (ValueCellFull!6645 (v!9531 V!23829)) (EmptyCell!6645) )
))
(declare-datatypes ((array!44432 0))(
  ( (array!44433 (arr!21273 (Array (_ BitVec 32) ValueCell!6645)) (size!21694 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44432)

(declare-fun e!450662 () Bool)

(declare-fun array_inv!17014 (array!44432) Bool)

(assert (=> start!70002 (and (array_inv!17014 _values!788) e!450662)))

(assert (=> start!70002 tp!43945))

(declare-fun mapIsEmpty!22759 () Bool)

(declare-fun mapRes!22759 () Bool)

(assert (=> mapIsEmpty!22759 mapRes!22759))

(declare-fun b!813238 () Bool)

(assert (=> b!813238 (= e!450660 (bvsgt #b00000000000000000000000000000000 (size!21693 _keys!976)))))

(declare-fun zeroValueBefore!34 () V!23829)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23829)

(declare-datatypes ((tuple2!9314 0))(
  ( (tuple2!9315 (_1!4667 (_ BitVec 64)) (_2!4667 V!23829)) )
))
(declare-datatypes ((List!15186 0))(
  ( (Nil!15183) (Cons!15182 (h!16311 tuple2!9314) (t!21509 List!15186)) )
))
(declare-datatypes ((ListLongMap!8151 0))(
  ( (ListLongMap!8152 (toList!4091 List!15186)) )
))
(declare-fun lt!364223 () ListLongMap!8151)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2140 (array!44430 array!44432 (_ BitVec 32) (_ BitVec 32) V!23829 V!23829 (_ BitVec 32) Int) ListLongMap!8151)

(assert (=> b!813238 (= lt!364223 (getCurrentListMapNoExtraKeys!2140 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813239 () Bool)

(declare-fun e!450659 () Bool)

(assert (=> b!813239 (= e!450659 tp_is_empty!14121)))

(declare-fun mapNonEmpty!22759 () Bool)

(declare-fun tp!43944 () Bool)

(assert (=> mapNonEmpty!22759 (= mapRes!22759 (and tp!43944 e!450659))))

(declare-fun mapValue!22759 () ValueCell!6645)

(declare-fun mapKey!22759 () (_ BitVec 32))

(declare-fun mapRest!22759 () (Array (_ BitVec 32) ValueCell!6645))

(assert (=> mapNonEmpty!22759 (= (arr!21273 _values!788) (store mapRest!22759 mapKey!22759 mapValue!22759))))

(declare-fun b!813240 () Bool)

(declare-fun res!555709 () Bool)

(assert (=> b!813240 (=> (not res!555709) (not e!450660))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813240 (= res!555709 (and (= (size!21694 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21693 _keys!976) (size!21694 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813241 () Bool)

(declare-fun res!555710 () Bool)

(assert (=> b!813241 (=> (not res!555710) (not e!450660))))

(declare-datatypes ((List!15187 0))(
  ( (Nil!15184) (Cons!15183 (h!16312 (_ BitVec 64)) (t!21510 List!15187)) )
))
(declare-fun arrayNoDuplicates!0 (array!44430 (_ BitVec 32) List!15187) Bool)

(assert (=> b!813241 (= res!555710 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15184))))

(declare-fun b!813242 () Bool)

(declare-fun e!450658 () Bool)

(assert (=> b!813242 (= e!450658 tp_is_empty!14121)))

(declare-fun b!813243 () Bool)

(assert (=> b!813243 (= e!450662 (and e!450658 mapRes!22759))))

(declare-fun condMapEmpty!22759 () Bool)

(declare-fun mapDefault!22759 () ValueCell!6645)

(assert (=> b!813243 (= condMapEmpty!22759 (= (arr!21273 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6645)) mapDefault!22759)))))

(declare-fun b!813244 () Bool)

(declare-fun res!555708 () Bool)

(assert (=> b!813244 (=> (not res!555708) (not e!450660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44430 (_ BitVec 32)) Bool)

(assert (=> b!813244 (= res!555708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70002 res!555707) b!813240))

(assert (= (and b!813240 res!555709) b!813244))

(assert (= (and b!813244 res!555708) b!813241))

(assert (= (and b!813241 res!555710) b!813238))

(assert (= (and b!813243 condMapEmpty!22759) mapIsEmpty!22759))

(assert (= (and b!813243 (not condMapEmpty!22759)) mapNonEmpty!22759))

(get-info :version)

(assert (= (and mapNonEmpty!22759 ((_ is ValueCellFull!6645) mapValue!22759)) b!813239))

(assert (= (and b!813243 ((_ is ValueCellFull!6645) mapDefault!22759)) b!813242))

(assert (= start!70002 b!813243))

(declare-fun m!755387 () Bool)

(assert (=> start!70002 m!755387))

(declare-fun m!755389 () Bool)

(assert (=> start!70002 m!755389))

(declare-fun m!755391 () Bool)

(assert (=> start!70002 m!755391))

(declare-fun m!755393 () Bool)

(assert (=> b!813241 m!755393))

(declare-fun m!755395 () Bool)

(assert (=> mapNonEmpty!22759 m!755395))

(declare-fun m!755397 () Bool)

(assert (=> b!813244 m!755397))

(declare-fun m!755399 () Bool)

(assert (=> b!813238 m!755399))

(check-sat tp_is_empty!14121 (not mapNonEmpty!22759) b_and!21197 (not start!70002) (not b!813241) (not b!813238) (not b!813244) (not b_next!12411))
(check-sat b_and!21197 (not b_next!12411))
(get-model)

(declare-fun b!813276 () Bool)

(declare-fun e!450686 () Bool)

(declare-fun e!450689 () Bool)

(assert (=> b!813276 (= e!450686 e!450689)))

(declare-fun c!88824 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!813276 (= c!88824 (validKeyInArray!0 (select (arr!21272 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!813277 () Bool)

(declare-fun e!450687 () Bool)

(declare-fun contains!4143 (List!15187 (_ BitVec 64)) Bool)

(assert (=> b!813277 (= e!450687 (contains!4143 Nil!15184 (select (arr!21272 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!813278 () Bool)

(declare-fun e!450688 () Bool)

(assert (=> b!813278 (= e!450688 e!450686)))

(declare-fun res!555731 () Bool)

(assert (=> b!813278 (=> (not res!555731) (not e!450686))))

(assert (=> b!813278 (= res!555731 (not e!450687))))

(declare-fun res!555730 () Bool)

(assert (=> b!813278 (=> (not res!555730) (not e!450687))))

(assert (=> b!813278 (= res!555730 (validKeyInArray!0 (select (arr!21272 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!813279 () Bool)

(declare-fun call!35493 () Bool)

(assert (=> b!813279 (= e!450689 call!35493)))

(declare-fun b!813280 () Bool)

(assert (=> b!813280 (= e!450689 call!35493)))

(declare-fun bm!35490 () Bool)

(assert (=> bm!35490 (= call!35493 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88824 (Cons!15183 (select (arr!21272 _keys!976) #b00000000000000000000000000000000) Nil!15184) Nil!15184)))))

(declare-fun d!104305 () Bool)

(declare-fun res!555729 () Bool)

(assert (=> d!104305 (=> res!555729 e!450688)))

(assert (=> d!104305 (= res!555729 (bvsge #b00000000000000000000000000000000 (size!21693 _keys!976)))))

(assert (=> d!104305 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15184) e!450688)))

(assert (= (and d!104305 (not res!555729)) b!813278))

(assert (= (and b!813278 res!555730) b!813277))

(assert (= (and b!813278 res!555731) b!813276))

(assert (= (and b!813276 c!88824) b!813280))

(assert (= (and b!813276 (not c!88824)) b!813279))

(assert (= (or b!813280 b!813279) bm!35490))

(declare-fun m!755415 () Bool)

(assert (=> b!813276 m!755415))

(assert (=> b!813276 m!755415))

(declare-fun m!755417 () Bool)

(assert (=> b!813276 m!755417))

(assert (=> b!813277 m!755415))

(assert (=> b!813277 m!755415))

(declare-fun m!755419 () Bool)

(assert (=> b!813277 m!755419))

(assert (=> b!813278 m!755415))

(assert (=> b!813278 m!755415))

(assert (=> b!813278 m!755417))

(assert (=> bm!35490 m!755415))

(declare-fun m!755421 () Bool)

(assert (=> bm!35490 m!755421))

(assert (=> b!813241 d!104305))

(declare-fun d!104307 () Bool)

(assert (=> d!104307 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70002 d!104307))

(declare-fun d!104309 () Bool)

(assert (=> d!104309 (= (array_inv!17013 _keys!976) (bvsge (size!21693 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70002 d!104309))

(declare-fun d!104311 () Bool)

(assert (=> d!104311 (= (array_inv!17014 _values!788) (bvsge (size!21694 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70002 d!104311))

(declare-fun d!104313 () Bool)

(declare-fun res!555737 () Bool)

(declare-fun e!450696 () Bool)

(assert (=> d!104313 (=> res!555737 e!450696)))

(assert (=> d!104313 (= res!555737 (bvsge #b00000000000000000000000000000000 (size!21693 _keys!976)))))

(assert (=> d!104313 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!450696)))

(declare-fun bm!35493 () Bool)

(declare-fun call!35496 () Bool)

(assert (=> bm!35493 (= call!35496 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!813289 () Bool)

(declare-fun e!450697 () Bool)

(declare-fun e!450698 () Bool)

(assert (=> b!813289 (= e!450697 e!450698)))

(declare-fun lt!364235 () (_ BitVec 64))

(assert (=> b!813289 (= lt!364235 (select (arr!21272 _keys!976) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27690 0))(
  ( (Unit!27691) )
))
(declare-fun lt!364234 () Unit!27690)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44430 (_ BitVec 64) (_ BitVec 32)) Unit!27690)

(assert (=> b!813289 (= lt!364234 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!364235 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!813289 (arrayContainsKey!0 _keys!976 lt!364235 #b00000000000000000000000000000000)))

(declare-fun lt!364233 () Unit!27690)

(assert (=> b!813289 (= lt!364233 lt!364234)))

(declare-fun res!555736 () Bool)

(declare-datatypes ((SeekEntryResult!8708 0))(
  ( (MissingZero!8708 (index!37202 (_ BitVec 32))) (Found!8708 (index!37203 (_ BitVec 32))) (Intermediate!8708 (undefined!9520 Bool) (index!37204 (_ BitVec 32)) (x!68343 (_ BitVec 32))) (Undefined!8708) (MissingVacant!8708 (index!37205 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44430 (_ BitVec 32)) SeekEntryResult!8708)

(assert (=> b!813289 (= res!555736 (= (seekEntryOrOpen!0 (select (arr!21272 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8708 #b00000000000000000000000000000000)))))

(assert (=> b!813289 (=> (not res!555736) (not e!450698))))

(declare-fun b!813290 () Bool)

(assert (=> b!813290 (= e!450698 call!35496)))

(declare-fun b!813291 () Bool)

(assert (=> b!813291 (= e!450697 call!35496)))

(declare-fun b!813292 () Bool)

(assert (=> b!813292 (= e!450696 e!450697)))

(declare-fun c!88827 () Bool)

(assert (=> b!813292 (= c!88827 (validKeyInArray!0 (select (arr!21272 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104313 (not res!555737)) b!813292))

(assert (= (and b!813292 c!88827) b!813289))

(assert (= (and b!813292 (not c!88827)) b!813291))

(assert (= (and b!813289 res!555736) b!813290))

(assert (= (or b!813290 b!813291) bm!35493))

(declare-fun m!755423 () Bool)

(assert (=> bm!35493 m!755423))

(assert (=> b!813289 m!755415))

(declare-fun m!755425 () Bool)

(assert (=> b!813289 m!755425))

(declare-fun m!755427 () Bool)

(assert (=> b!813289 m!755427))

(assert (=> b!813289 m!755415))

(declare-fun m!755429 () Bool)

(assert (=> b!813289 m!755429))

(assert (=> b!813292 m!755415))

(assert (=> b!813292 m!755415))

(assert (=> b!813292 m!755417))

(assert (=> b!813244 d!104313))

(declare-fun b!813317 () Bool)

(declare-fun e!450715 () ListLongMap!8151)

(assert (=> b!813317 (= e!450715 (ListLongMap!8152 Nil!15183))))

(declare-fun b!813318 () Bool)

(declare-fun lt!364255 () Unit!27690)

(declare-fun lt!364250 () Unit!27690)

(assert (=> b!813318 (= lt!364255 lt!364250)))

(declare-fun lt!364251 () V!23829)

(declare-fun lt!364256 () (_ BitVec 64))

(declare-fun lt!364254 () ListLongMap!8151)

(declare-fun lt!364253 () (_ BitVec 64))

(declare-fun contains!4144 (ListLongMap!8151 (_ BitVec 64)) Bool)

(declare-fun +!1750 (ListLongMap!8151 tuple2!9314) ListLongMap!8151)

(assert (=> b!813318 (not (contains!4144 (+!1750 lt!364254 (tuple2!9315 lt!364256 lt!364251)) lt!364253))))

(declare-fun addStillNotContains!174 (ListLongMap!8151 (_ BitVec 64) V!23829 (_ BitVec 64)) Unit!27690)

(assert (=> b!813318 (= lt!364250 (addStillNotContains!174 lt!364254 lt!364256 lt!364251 lt!364253))))

(assert (=> b!813318 (= lt!364253 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11435 (ValueCell!6645 V!23829) V!23829)

(declare-fun dynLambda!957 (Int (_ BitVec 64)) V!23829)

(assert (=> b!813318 (= lt!364251 (get!11435 (select (arr!21273 _values!788) #b00000000000000000000000000000000) (dynLambda!957 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!813318 (= lt!364256 (select (arr!21272 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35499 () ListLongMap!8151)

(assert (=> b!813318 (= lt!364254 call!35499)))

(declare-fun e!450716 () ListLongMap!8151)

(assert (=> b!813318 (= e!450716 (+!1750 call!35499 (tuple2!9315 (select (arr!21272 _keys!976) #b00000000000000000000000000000000) (get!11435 (select (arr!21273 _values!788) #b00000000000000000000000000000000) (dynLambda!957 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!813319 () Bool)

(assert (=> b!813319 (= e!450716 call!35499)))

(declare-fun d!104315 () Bool)

(declare-fun e!450719 () Bool)

(assert (=> d!104315 e!450719))

(declare-fun res!555746 () Bool)

(assert (=> d!104315 (=> (not res!555746) (not e!450719))))

(declare-fun lt!364252 () ListLongMap!8151)

(assert (=> d!104315 (= res!555746 (not (contains!4144 lt!364252 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104315 (= lt!364252 e!450715)))

(declare-fun c!88839 () Bool)

(assert (=> d!104315 (= c!88839 (bvsge #b00000000000000000000000000000000 (size!21693 _keys!976)))))

(assert (=> d!104315 (validMask!0 mask!1312)))

(assert (=> d!104315 (= (getCurrentListMapNoExtraKeys!2140 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!364252)))

(declare-fun b!813320 () Bool)

(declare-fun e!450713 () Bool)

(assert (=> b!813320 (= e!450719 e!450713)))

(declare-fun c!88836 () Bool)

(declare-fun e!450717 () Bool)

(assert (=> b!813320 (= c!88836 e!450717)))

(declare-fun res!555749 () Bool)

(assert (=> b!813320 (=> (not res!555749) (not e!450717))))

(assert (=> b!813320 (= res!555749 (bvslt #b00000000000000000000000000000000 (size!21693 _keys!976)))))

(declare-fun b!813321 () Bool)

(assert (=> b!813321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21693 _keys!976)))))

(assert (=> b!813321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21694 _values!788)))))

(declare-fun e!450714 () Bool)

(declare-fun apply!347 (ListLongMap!8151 (_ BitVec 64)) V!23829)

(assert (=> b!813321 (= e!450714 (= (apply!347 lt!364252 (select (arr!21272 _keys!976) #b00000000000000000000000000000000)) (get!11435 (select (arr!21273 _values!788) #b00000000000000000000000000000000) (dynLambda!957 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!450718 () Bool)

(declare-fun b!813322 () Bool)

(assert (=> b!813322 (= e!450718 (= lt!364252 (getCurrentListMapNoExtraKeys!2140 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!813323 () Bool)

(assert (=> b!813323 (= e!450715 e!450716)))

(declare-fun c!88838 () Bool)

(assert (=> b!813323 (= c!88838 (validKeyInArray!0 (select (arr!21272 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!813324 () Bool)

(assert (=> b!813324 (= e!450713 e!450714)))

(assert (=> b!813324 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21693 _keys!976)))))

(declare-fun res!555747 () Bool)

(assert (=> b!813324 (= res!555747 (contains!4144 lt!364252 (select (arr!21272 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!813324 (=> (not res!555747) (not e!450714))))

(declare-fun b!813325 () Bool)

(assert (=> b!813325 (= e!450717 (validKeyInArray!0 (select (arr!21272 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!813325 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!35496 () Bool)

(assert (=> bm!35496 (= call!35499 (getCurrentListMapNoExtraKeys!2140 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!813326 () Bool)

(declare-fun res!555748 () Bool)

(assert (=> b!813326 (=> (not res!555748) (not e!450719))))

(assert (=> b!813326 (= res!555748 (not (contains!4144 lt!364252 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!813327 () Bool)

(declare-fun isEmpty!634 (ListLongMap!8151) Bool)

(assert (=> b!813327 (= e!450718 (isEmpty!634 lt!364252))))

(declare-fun b!813328 () Bool)

(assert (=> b!813328 (= e!450713 e!450718)))

(declare-fun c!88837 () Bool)

(assert (=> b!813328 (= c!88837 (bvslt #b00000000000000000000000000000000 (size!21693 _keys!976)))))

(assert (= (and d!104315 c!88839) b!813317))

(assert (= (and d!104315 (not c!88839)) b!813323))

(assert (= (and b!813323 c!88838) b!813318))

(assert (= (and b!813323 (not c!88838)) b!813319))

(assert (= (or b!813318 b!813319) bm!35496))

(assert (= (and d!104315 res!555746) b!813326))

(assert (= (and b!813326 res!555748) b!813320))

(assert (= (and b!813320 res!555749) b!813325))

(assert (= (and b!813320 c!88836) b!813324))

(assert (= (and b!813320 (not c!88836)) b!813328))

(assert (= (and b!813324 res!555747) b!813321))

(assert (= (and b!813328 c!88837) b!813322))

(assert (= (and b!813328 (not c!88837)) b!813327))

(declare-fun b_lambda!10853 () Bool)

(assert (=> (not b_lambda!10853) (not b!813318)))

(declare-fun t!21514 () Bool)

(declare-fun tb!4183 () Bool)

(assert (=> (and start!70002 (= defaultEntry!796 defaultEntry!796) t!21514) tb!4183))

(declare-fun result!7873 () Bool)

(assert (=> tb!4183 (= result!7873 tp_is_empty!14121)))

(assert (=> b!813318 t!21514))

(declare-fun b_and!21201 () Bool)

(assert (= b_and!21197 (and (=> t!21514 result!7873) b_and!21201)))

(declare-fun b_lambda!10855 () Bool)

(assert (=> (not b_lambda!10855) (not b!813321)))

(assert (=> b!813321 t!21514))

(declare-fun b_and!21203 () Bool)

(assert (= b_and!21201 (and (=> t!21514 result!7873) b_and!21203)))

(assert (=> b!813324 m!755415))

(assert (=> b!813324 m!755415))

(declare-fun m!755431 () Bool)

(assert (=> b!813324 m!755431))

(assert (=> b!813318 m!755415))

(declare-fun m!755433 () Bool)

(assert (=> b!813318 m!755433))

(declare-fun m!755435 () Bool)

(assert (=> b!813318 m!755435))

(declare-fun m!755437 () Bool)

(assert (=> b!813318 m!755437))

(assert (=> b!813318 m!755433))

(assert (=> b!813318 m!755435))

(declare-fun m!755439 () Bool)

(assert (=> b!813318 m!755439))

(declare-fun m!755441 () Bool)

(assert (=> b!813318 m!755441))

(declare-fun m!755443 () Bool)

(assert (=> b!813318 m!755443))

(assert (=> b!813318 m!755443))

(declare-fun m!755445 () Bool)

(assert (=> b!813318 m!755445))

(assert (=> b!813321 m!755415))

(assert (=> b!813321 m!755433))

(assert (=> b!813321 m!755435))

(assert (=> b!813321 m!755415))

(declare-fun m!755447 () Bool)

(assert (=> b!813321 m!755447))

(assert (=> b!813321 m!755433))

(assert (=> b!813321 m!755435))

(assert (=> b!813321 m!755439))

(assert (=> b!813325 m!755415))

(assert (=> b!813325 m!755415))

(assert (=> b!813325 m!755417))

(declare-fun m!755449 () Bool)

(assert (=> bm!35496 m!755449))

(assert (=> b!813322 m!755449))

(declare-fun m!755451 () Bool)

(assert (=> d!104315 m!755451))

(assert (=> d!104315 m!755387))

(assert (=> b!813323 m!755415))

(assert (=> b!813323 m!755415))

(assert (=> b!813323 m!755417))

(declare-fun m!755453 () Bool)

(assert (=> b!813326 m!755453))

(declare-fun m!755455 () Bool)

(assert (=> b!813327 m!755455))

(assert (=> b!813238 d!104315))

(declare-fun mapNonEmpty!22765 () Bool)

(declare-fun mapRes!22765 () Bool)

(declare-fun tp!43954 () Bool)

(declare-fun e!450725 () Bool)

(assert (=> mapNonEmpty!22765 (= mapRes!22765 (and tp!43954 e!450725))))

(declare-fun mapKey!22765 () (_ BitVec 32))

(declare-fun mapRest!22765 () (Array (_ BitVec 32) ValueCell!6645))

(declare-fun mapValue!22765 () ValueCell!6645)

(assert (=> mapNonEmpty!22765 (= mapRest!22759 (store mapRest!22765 mapKey!22765 mapValue!22765))))

(declare-fun condMapEmpty!22765 () Bool)

(declare-fun mapDefault!22765 () ValueCell!6645)

(assert (=> mapNonEmpty!22759 (= condMapEmpty!22765 (= mapRest!22759 ((as const (Array (_ BitVec 32) ValueCell!6645)) mapDefault!22765)))))

(declare-fun e!450724 () Bool)

(assert (=> mapNonEmpty!22759 (= tp!43944 (and e!450724 mapRes!22765))))

(declare-fun b!813338 () Bool)

(assert (=> b!813338 (= e!450724 tp_is_empty!14121)))

(declare-fun mapIsEmpty!22765 () Bool)

(assert (=> mapIsEmpty!22765 mapRes!22765))

(declare-fun b!813337 () Bool)

(assert (=> b!813337 (= e!450725 tp_is_empty!14121)))

(assert (= (and mapNonEmpty!22759 condMapEmpty!22765) mapIsEmpty!22765))

(assert (= (and mapNonEmpty!22759 (not condMapEmpty!22765)) mapNonEmpty!22765))

(assert (= (and mapNonEmpty!22765 ((_ is ValueCellFull!6645) mapValue!22765)) b!813337))

(assert (= (and mapNonEmpty!22759 ((_ is ValueCellFull!6645) mapDefault!22765)) b!813338))

(declare-fun m!755457 () Bool)

(assert (=> mapNonEmpty!22765 m!755457))

(declare-fun b_lambda!10857 () Bool)

(assert (= b_lambda!10855 (or (and start!70002 b_free!12411) b_lambda!10857)))

(declare-fun b_lambda!10859 () Bool)

(assert (= b_lambda!10853 (or (and start!70002 b_free!12411) b_lambda!10859)))

(check-sat (not b!813276) (not b!813277) (not b!813325) b_and!21203 (not b!813322) (not d!104315) (not b!813318) (not b_next!12411) (not b_lambda!10859) (not b!813321) (not bm!35490) (not bm!35496) (not b!813326) tp_is_empty!14121 (not b!813327) (not b!813323) (not b_lambda!10857) (not mapNonEmpty!22765) (not b!813292) (not b!813278) (not bm!35493) (not b!813289) (not b!813324))
(check-sat b_and!21203 (not b_next!12411))
