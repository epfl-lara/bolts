; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34040 () Bool)

(assert start!34040)

(declare-fun b_free!7137 () Bool)

(declare-fun b_next!7137 () Bool)

(assert (=> start!34040 (= b_free!7137 (not b_next!7137))))

(declare-fun tp!24932 () Bool)

(declare-fun b_and!14347 () Bool)

(assert (=> start!34040 (= tp!24932 b_and!14347)))

(declare-fun b!338908 () Bool)

(declare-fun e!207946 () Bool)

(declare-datatypes ((array!17747 0))(
  ( (array!17748 (arr!8395 (Array (_ BitVec 32) (_ BitVec 64))) (size!8747 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17747)

(declare-datatypes ((SeekEntryResult!3249 0))(
  ( (MissingZero!3249 (index!15175 (_ BitVec 32))) (Found!3249 (index!15176 (_ BitVec 32))) (Intermediate!3249 (undefined!4061 Bool) (index!15177 (_ BitVec 32)) (x!33774 (_ BitVec 32))) (Undefined!3249) (MissingVacant!3249 (index!15178 (_ BitVec 32))) )
))
(declare-fun lt!161016 () SeekEntryResult!3249)

(assert (=> b!338908 (= e!207946 (and (= (select (arr!8395 _keys!1895) (index!15175 lt!161016)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8747 _keys!1895)) (bvsge (size!8747 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!338909 () Bool)

(declare-fun res!187277 () Bool)

(declare-fun e!207945 () Bool)

(assert (=> b!338909 (=> (not res!187277) (not e!207945))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10429 0))(
  ( (V!10430 (val!3589 Int)) )
))
(declare-fun zeroValue!1467 () V!10429)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3201 0))(
  ( (ValueCellFull!3201 (v!5753 V!10429)) (EmptyCell!3201) )
))
(declare-datatypes ((array!17749 0))(
  ( (array!17750 (arr!8396 (Array (_ BitVec 32) ValueCell!3201)) (size!8748 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17749)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10429)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((tuple2!5202 0))(
  ( (tuple2!5203 (_1!2611 (_ BitVec 64)) (_2!2611 V!10429)) )
))
(declare-datatypes ((List!4843 0))(
  ( (Nil!4840) (Cons!4839 (h!5695 tuple2!5202) (t!9951 List!4843)) )
))
(declare-datatypes ((ListLongMap!4129 0))(
  ( (ListLongMap!4130 (toList!2080 List!4843)) )
))
(declare-fun contains!2126 (ListLongMap!4129 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1600 (array!17747 array!17749 (_ BitVec 32) (_ BitVec 32) V!10429 V!10429 (_ BitVec 32) Int) ListLongMap!4129)

(assert (=> b!338909 (= res!187277 (not (contains!2126 (getCurrentListMap!1600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!338910 () Bool)

(declare-fun res!187275 () Bool)

(assert (=> b!338910 (=> (not res!187275) (not e!207946))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!338910 (= res!187275 (inRange!0 (index!15175 lt!161016) mask!2385))))

(declare-fun b!338911 () Bool)

(declare-fun res!187281 () Bool)

(assert (=> b!338911 (=> (not res!187281) (not e!207945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17747 (_ BitVec 32)) Bool)

(assert (=> b!338911 (= res!187281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338912 () Bool)

(declare-fun res!187279 () Bool)

(assert (=> b!338912 (=> (not res!187279) (not e!207945))))

(declare-datatypes ((List!4844 0))(
  ( (Nil!4841) (Cons!4840 (h!5696 (_ BitVec 64)) (t!9952 List!4844)) )
))
(declare-fun arrayNoDuplicates!0 (array!17747 (_ BitVec 32) List!4844) Bool)

(assert (=> b!338912 (= res!187279 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4841))))

(declare-fun b!338913 () Bool)

(declare-fun res!187282 () Bool)

(assert (=> b!338913 (=> (not res!187282) (not e!207945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338913 (= res!187282 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!12048 () Bool)

(declare-fun mapRes!12048 () Bool)

(declare-fun tp!24933 () Bool)

(declare-fun e!207947 () Bool)

(assert (=> mapNonEmpty!12048 (= mapRes!12048 (and tp!24933 e!207947))))

(declare-fun mapValue!12048 () ValueCell!3201)

(declare-fun mapKey!12048 () (_ BitVec 32))

(declare-fun mapRest!12048 () (Array (_ BitVec 32) ValueCell!3201))

(assert (=> mapNonEmpty!12048 (= (arr!8396 _values!1525) (store mapRest!12048 mapKey!12048 mapValue!12048))))

(declare-fun b!338914 () Bool)

(declare-fun e!207950 () Bool)

(assert (=> b!338914 (= e!207950 e!207946)))

(declare-fun res!187283 () Bool)

(assert (=> b!338914 (=> (not res!187283) (not e!207946))))

(declare-fun lt!161019 () Bool)

(assert (=> b!338914 (= res!187283 (not lt!161019))))

(declare-datatypes ((Unit!10546 0))(
  ( (Unit!10547) )
))
(declare-fun lt!161018 () Unit!10546)

(declare-fun e!207949 () Unit!10546)

(assert (=> b!338914 (= lt!161018 e!207949)))

(declare-fun c!52427 () Bool)

(assert (=> b!338914 (= c!52427 lt!161019)))

(declare-fun arrayContainsKey!0 (array!17747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338914 (= lt!161019 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!338915 () Bool)

(declare-fun Unit!10548 () Unit!10546)

(assert (=> b!338915 (= e!207949 Unit!10548)))

(declare-fun lt!161017 () Unit!10546)

(declare-fun lemmaArrayContainsKeyThenInListMap!279 (array!17747 array!17749 (_ BitVec 32) (_ BitVec 32) V!10429 V!10429 (_ BitVec 64) (_ BitVec 32) Int) Unit!10546)

(declare-fun arrayScanForKey!0 (array!17747 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338915 (= lt!161017 (lemmaArrayContainsKeyThenInListMap!279 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338915 false))

(declare-fun b!338916 () Bool)

(declare-fun e!207944 () Bool)

(declare-fun e!207951 () Bool)

(assert (=> b!338916 (= e!207944 (and e!207951 mapRes!12048))))

(declare-fun condMapEmpty!12048 () Bool)

(declare-fun mapDefault!12048 () ValueCell!3201)

(assert (=> b!338916 (= condMapEmpty!12048 (= (arr!8396 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3201)) mapDefault!12048)))))

(declare-fun b!338917 () Bool)

(declare-fun tp_is_empty!7089 () Bool)

(assert (=> b!338917 (= e!207947 tp_is_empty!7089)))

(declare-fun b!338918 () Bool)

(assert (=> b!338918 (= e!207945 e!207950)))

(declare-fun res!187280 () Bool)

(assert (=> b!338918 (=> (not res!187280) (not e!207950))))

(get-info :version)

(assert (=> b!338918 (= res!187280 (and (not ((_ is Found!3249) lt!161016)) ((_ is MissingZero!3249) lt!161016)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17747 (_ BitVec 32)) SeekEntryResult!3249)

(assert (=> b!338918 (= lt!161016 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!338919 () Bool)

(declare-fun res!187276 () Bool)

(assert (=> b!338919 (=> (not res!187276) (not e!207945))))

(assert (=> b!338919 (= res!187276 (and (= (size!8748 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8747 _keys!1895) (size!8748 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12048 () Bool)

(assert (=> mapIsEmpty!12048 mapRes!12048))

(declare-fun res!187278 () Bool)

(assert (=> start!34040 (=> (not res!187278) (not e!207945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34040 (= res!187278 (validMask!0 mask!2385))))

(assert (=> start!34040 e!207945))

(assert (=> start!34040 true))

(assert (=> start!34040 tp_is_empty!7089))

(assert (=> start!34040 tp!24932))

(declare-fun array_inv!6218 (array!17749) Bool)

(assert (=> start!34040 (and (array_inv!6218 _values!1525) e!207944)))

(declare-fun array_inv!6219 (array!17747) Bool)

(assert (=> start!34040 (array_inv!6219 _keys!1895)))

(declare-fun b!338920 () Bool)

(assert (=> b!338920 (= e!207951 tp_is_empty!7089)))

(declare-fun b!338921 () Bool)

(declare-fun Unit!10549 () Unit!10546)

(assert (=> b!338921 (= e!207949 Unit!10549)))

(assert (= (and start!34040 res!187278) b!338919))

(assert (= (and b!338919 res!187276) b!338911))

(assert (= (and b!338911 res!187281) b!338912))

(assert (= (and b!338912 res!187279) b!338913))

(assert (= (and b!338913 res!187282) b!338909))

(assert (= (and b!338909 res!187277) b!338918))

(assert (= (and b!338918 res!187280) b!338914))

(assert (= (and b!338914 c!52427) b!338915))

(assert (= (and b!338914 (not c!52427)) b!338921))

(assert (= (and b!338914 res!187283) b!338910))

(assert (= (and b!338910 res!187275) b!338908))

(assert (= (and b!338916 condMapEmpty!12048) mapIsEmpty!12048))

(assert (= (and b!338916 (not condMapEmpty!12048)) mapNonEmpty!12048))

(assert (= (and mapNonEmpty!12048 ((_ is ValueCellFull!3201) mapValue!12048)) b!338917))

(assert (= (and b!338916 ((_ is ValueCellFull!3201) mapDefault!12048)) b!338920))

(assert (= start!34040 b!338916))

(declare-fun m!342013 () Bool)

(assert (=> start!34040 m!342013))

(declare-fun m!342015 () Bool)

(assert (=> start!34040 m!342015))

(declare-fun m!342017 () Bool)

(assert (=> start!34040 m!342017))

(declare-fun m!342019 () Bool)

(assert (=> b!338909 m!342019))

(assert (=> b!338909 m!342019))

(declare-fun m!342021 () Bool)

(assert (=> b!338909 m!342021))

(declare-fun m!342023 () Bool)

(assert (=> b!338914 m!342023))

(declare-fun m!342025 () Bool)

(assert (=> b!338918 m!342025))

(declare-fun m!342027 () Bool)

(assert (=> b!338915 m!342027))

(assert (=> b!338915 m!342027))

(declare-fun m!342029 () Bool)

(assert (=> b!338915 m!342029))

(declare-fun m!342031 () Bool)

(assert (=> b!338911 m!342031))

(declare-fun m!342033 () Bool)

(assert (=> b!338912 m!342033))

(declare-fun m!342035 () Bool)

(assert (=> mapNonEmpty!12048 m!342035))

(declare-fun m!342037 () Bool)

(assert (=> b!338910 m!342037))

(declare-fun m!342039 () Bool)

(assert (=> b!338913 m!342039))

(declare-fun m!342041 () Bool)

(assert (=> b!338908 m!342041))

(check-sat tp_is_empty!7089 (not b!338915) b_and!14347 (not b!338911) (not b!338914) (not b_next!7137) (not b!338910) (not b!338913) (not b!338912) (not start!34040) (not b!338918) (not b!338909) (not mapNonEmpty!12048))
(check-sat b_and!14347 (not b_next!7137))
(get-model)

(declare-fun b!338972 () Bool)

(declare-fun e!207984 () Bool)

(declare-fun e!207982 () Bool)

(assert (=> b!338972 (= e!207984 e!207982)))

(declare-fun c!52433 () Bool)

(assert (=> b!338972 (= c!52433 (validKeyInArray!0 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!338973 () Bool)

(declare-fun e!207983 () Bool)

(assert (=> b!338973 (= e!207982 e!207983)))

(declare-fun lt!161040 () (_ BitVec 64))

(assert (=> b!338973 (= lt!161040 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161039 () Unit!10546)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17747 (_ BitVec 64) (_ BitVec 32)) Unit!10546)

(assert (=> b!338973 (= lt!161039 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!161040 #b00000000000000000000000000000000))))

(assert (=> b!338973 (arrayContainsKey!0 _keys!1895 lt!161040 #b00000000000000000000000000000000)))

(declare-fun lt!161038 () Unit!10546)

(assert (=> b!338973 (= lt!161038 lt!161039)))

(declare-fun res!187316 () Bool)

(assert (=> b!338973 (= res!187316 (= (seekEntryOrOpen!0 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3249 #b00000000000000000000000000000000)))))

(assert (=> b!338973 (=> (not res!187316) (not e!207983))))

(declare-fun bm!26453 () Bool)

(declare-fun call!26456 () Bool)

(assert (=> bm!26453 (= call!26456 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun d!70699 () Bool)

(declare-fun res!187315 () Bool)

(assert (=> d!70699 (=> res!187315 e!207984)))

(assert (=> d!70699 (= res!187315 (bvsge #b00000000000000000000000000000000 (size!8747 _keys!1895)))))

(assert (=> d!70699 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!207984)))

(declare-fun b!338974 () Bool)

(assert (=> b!338974 (= e!207982 call!26456)))

(declare-fun b!338975 () Bool)

(assert (=> b!338975 (= e!207983 call!26456)))

(assert (= (and d!70699 (not res!187315)) b!338972))

(assert (= (and b!338972 c!52433) b!338973))

(assert (= (and b!338972 (not c!52433)) b!338974))

(assert (= (and b!338973 res!187316) b!338975))

(assert (= (or b!338975 b!338974) bm!26453))

(declare-fun m!342073 () Bool)

(assert (=> b!338972 m!342073))

(assert (=> b!338972 m!342073))

(declare-fun m!342075 () Bool)

(assert (=> b!338972 m!342075))

(assert (=> b!338973 m!342073))

(declare-fun m!342077 () Bool)

(assert (=> b!338973 m!342077))

(declare-fun m!342079 () Bool)

(assert (=> b!338973 m!342079))

(assert (=> b!338973 m!342073))

(declare-fun m!342081 () Bool)

(assert (=> b!338973 m!342081))

(declare-fun m!342083 () Bool)

(assert (=> bm!26453 m!342083))

(assert (=> b!338911 d!70699))

(declare-fun d!70701 () Bool)

(assert (=> d!70701 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34040 d!70701))

(declare-fun d!70703 () Bool)

(assert (=> d!70703 (= (array_inv!6218 _values!1525) (bvsge (size!8748 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34040 d!70703))

(declare-fun d!70705 () Bool)

(assert (=> d!70705 (= (array_inv!6219 _keys!1895) (bvsge (size!8747 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34040 d!70705))

(declare-fun d!70707 () Bool)

(assert (=> d!70707 (contains!2126 (getCurrentListMap!1600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!161043 () Unit!10546)

(declare-fun choose!1309 (array!17747 array!17749 (_ BitVec 32) (_ BitVec 32) V!10429 V!10429 (_ BitVec 64) (_ BitVec 32) Int) Unit!10546)

(assert (=> d!70707 (= lt!161043 (choose!1309 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!70707 (validMask!0 mask!2385)))

(assert (=> d!70707 (= (lemmaArrayContainsKeyThenInListMap!279 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!161043)))

(declare-fun bs!11662 () Bool)

(assert (= bs!11662 d!70707))

(assert (=> bs!11662 m!342019))

(assert (=> bs!11662 m!342019))

(assert (=> bs!11662 m!342021))

(assert (=> bs!11662 m!342027))

(declare-fun m!342085 () Bool)

(assert (=> bs!11662 m!342085))

(assert (=> bs!11662 m!342013))

(assert (=> b!338915 d!70707))

(declare-fun d!70709 () Bool)

(declare-fun lt!161046 () (_ BitVec 32))

(assert (=> d!70709 (and (or (bvslt lt!161046 #b00000000000000000000000000000000) (bvsge lt!161046 (size!8747 _keys!1895)) (and (bvsge lt!161046 #b00000000000000000000000000000000) (bvslt lt!161046 (size!8747 _keys!1895)))) (bvsge lt!161046 #b00000000000000000000000000000000) (bvslt lt!161046 (size!8747 _keys!1895)) (= (select (arr!8395 _keys!1895) lt!161046) k0!1348))))

(declare-fun e!207987 () (_ BitVec 32))

(assert (=> d!70709 (= lt!161046 e!207987)))

(declare-fun c!52436 () Bool)

(assert (=> d!70709 (= c!52436 (= (select (arr!8395 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70709 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8747 _keys!1895)) (bvslt (size!8747 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!70709 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!161046)))

(declare-fun b!338980 () Bool)

(assert (=> b!338980 (= e!207987 #b00000000000000000000000000000000)))

(declare-fun b!338981 () Bool)

(assert (=> b!338981 (= e!207987 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70709 c!52436) b!338980))

(assert (= (and d!70709 (not c!52436)) b!338981))

(declare-fun m!342087 () Bool)

(assert (=> d!70709 m!342087))

(assert (=> d!70709 m!342073))

(declare-fun m!342089 () Bool)

(assert (=> b!338981 m!342089))

(assert (=> b!338915 d!70709))

(declare-fun bm!26456 () Bool)

(declare-fun call!26459 () Bool)

(declare-fun c!52439 () Bool)

(assert (=> bm!26456 (= call!26459 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52439 (Cons!4840 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000) Nil!4841) Nil!4841)))))

(declare-fun b!338992 () Bool)

(declare-fun e!207998 () Bool)

(declare-fun e!207997 () Bool)

(assert (=> b!338992 (= e!207998 e!207997)))

(declare-fun res!187325 () Bool)

(assert (=> b!338992 (=> (not res!187325) (not e!207997))))

(declare-fun e!207996 () Bool)

(assert (=> b!338992 (= res!187325 (not e!207996))))

(declare-fun res!187323 () Bool)

(assert (=> b!338992 (=> (not res!187323) (not e!207996))))

(assert (=> b!338992 (= res!187323 (validKeyInArray!0 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!338993 () Bool)

(declare-fun e!207999 () Bool)

(assert (=> b!338993 (= e!207997 e!207999)))

(assert (=> b!338993 (= c!52439 (validKeyInArray!0 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!338995 () Bool)

(declare-fun contains!2127 (List!4844 (_ BitVec 64)) Bool)

(assert (=> b!338995 (= e!207996 (contains!2127 Nil!4841 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!338996 () Bool)

(assert (=> b!338996 (= e!207999 call!26459)))

(declare-fun d!70711 () Bool)

(declare-fun res!187324 () Bool)

(assert (=> d!70711 (=> res!187324 e!207998)))

(assert (=> d!70711 (= res!187324 (bvsge #b00000000000000000000000000000000 (size!8747 _keys!1895)))))

(assert (=> d!70711 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4841) e!207998)))

(declare-fun b!338994 () Bool)

(assert (=> b!338994 (= e!207999 call!26459)))

(assert (= (and d!70711 (not res!187324)) b!338992))

(assert (= (and b!338992 res!187323) b!338995))

(assert (= (and b!338992 res!187325) b!338993))

(assert (= (and b!338993 c!52439) b!338996))

(assert (= (and b!338993 (not c!52439)) b!338994))

(assert (= (or b!338996 b!338994) bm!26456))

(assert (=> bm!26456 m!342073))

(declare-fun m!342091 () Bool)

(assert (=> bm!26456 m!342091))

(assert (=> b!338992 m!342073))

(assert (=> b!338992 m!342073))

(assert (=> b!338992 m!342075))

(assert (=> b!338993 m!342073))

(assert (=> b!338993 m!342073))

(assert (=> b!338993 m!342075))

(assert (=> b!338995 m!342073))

(assert (=> b!338995 m!342073))

(declare-fun m!342093 () Bool)

(assert (=> b!338995 m!342093))

(assert (=> b!338912 d!70711))

(declare-fun b!339009 () Bool)

(declare-fun c!52447 () Bool)

(declare-fun lt!161053 () (_ BitVec 64))

(assert (=> b!339009 (= c!52447 (= lt!161053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!208008 () SeekEntryResult!3249)

(declare-fun e!208006 () SeekEntryResult!3249)

(assert (=> b!339009 (= e!208008 e!208006)))

(declare-fun d!70713 () Bool)

(declare-fun lt!161055 () SeekEntryResult!3249)

(assert (=> d!70713 (and (or ((_ is Undefined!3249) lt!161055) (not ((_ is Found!3249) lt!161055)) (and (bvsge (index!15176 lt!161055) #b00000000000000000000000000000000) (bvslt (index!15176 lt!161055) (size!8747 _keys!1895)))) (or ((_ is Undefined!3249) lt!161055) ((_ is Found!3249) lt!161055) (not ((_ is MissingZero!3249) lt!161055)) (and (bvsge (index!15175 lt!161055) #b00000000000000000000000000000000) (bvslt (index!15175 lt!161055) (size!8747 _keys!1895)))) (or ((_ is Undefined!3249) lt!161055) ((_ is Found!3249) lt!161055) ((_ is MissingZero!3249) lt!161055) (not ((_ is MissingVacant!3249) lt!161055)) (and (bvsge (index!15178 lt!161055) #b00000000000000000000000000000000) (bvslt (index!15178 lt!161055) (size!8747 _keys!1895)))) (or ((_ is Undefined!3249) lt!161055) (ite ((_ is Found!3249) lt!161055) (= (select (arr!8395 _keys!1895) (index!15176 lt!161055)) k0!1348) (ite ((_ is MissingZero!3249) lt!161055) (= (select (arr!8395 _keys!1895) (index!15175 lt!161055)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3249) lt!161055) (= (select (arr!8395 _keys!1895) (index!15178 lt!161055)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!208007 () SeekEntryResult!3249)

(assert (=> d!70713 (= lt!161055 e!208007)))

(declare-fun c!52446 () Bool)

(declare-fun lt!161054 () SeekEntryResult!3249)

(assert (=> d!70713 (= c!52446 (and ((_ is Intermediate!3249) lt!161054) (undefined!4061 lt!161054)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17747 (_ BitVec 32)) SeekEntryResult!3249)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70713 (= lt!161054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70713 (validMask!0 mask!2385)))

(assert (=> d!70713 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!161055)))

(declare-fun b!339010 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17747 (_ BitVec 32)) SeekEntryResult!3249)

(assert (=> b!339010 (= e!208006 (seekKeyOrZeroReturnVacant!0 (x!33774 lt!161054) (index!15177 lt!161054) (index!15177 lt!161054) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!339011 () Bool)

(assert (=> b!339011 (= e!208006 (MissingZero!3249 (index!15177 lt!161054)))))

(declare-fun b!339012 () Bool)

(assert (=> b!339012 (= e!208008 (Found!3249 (index!15177 lt!161054)))))

(declare-fun b!339013 () Bool)

(assert (=> b!339013 (= e!208007 e!208008)))

(assert (=> b!339013 (= lt!161053 (select (arr!8395 _keys!1895) (index!15177 lt!161054)))))

(declare-fun c!52448 () Bool)

(assert (=> b!339013 (= c!52448 (= lt!161053 k0!1348))))

(declare-fun b!339014 () Bool)

(assert (=> b!339014 (= e!208007 Undefined!3249)))

(assert (= (and d!70713 c!52446) b!339014))

(assert (= (and d!70713 (not c!52446)) b!339013))

(assert (= (and b!339013 c!52448) b!339012))

(assert (= (and b!339013 (not c!52448)) b!339009))

(assert (= (and b!339009 c!52447) b!339011))

(assert (= (and b!339009 (not c!52447)) b!339010))

(declare-fun m!342095 () Bool)

(assert (=> d!70713 m!342095))

(declare-fun m!342097 () Bool)

(assert (=> d!70713 m!342097))

(declare-fun m!342099 () Bool)

(assert (=> d!70713 m!342099))

(declare-fun m!342101 () Bool)

(assert (=> d!70713 m!342101))

(declare-fun m!342103 () Bool)

(assert (=> d!70713 m!342103))

(assert (=> d!70713 m!342095))

(assert (=> d!70713 m!342013))

(declare-fun m!342105 () Bool)

(assert (=> b!339010 m!342105))

(declare-fun m!342107 () Bool)

(assert (=> b!339013 m!342107))

(assert (=> b!338918 d!70713))

(declare-fun d!70715 () Bool)

(assert (=> d!70715 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!338913 d!70715))

(declare-fun d!70717 () Bool)

(declare-fun res!187330 () Bool)

(declare-fun e!208013 () Bool)

(assert (=> d!70717 (=> res!187330 e!208013)))

(assert (=> d!70717 (= res!187330 (= (select (arr!8395 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70717 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!208013)))

(declare-fun b!339019 () Bool)

(declare-fun e!208014 () Bool)

(assert (=> b!339019 (= e!208013 e!208014)))

(declare-fun res!187331 () Bool)

(assert (=> b!339019 (=> (not res!187331) (not e!208014))))

(assert (=> b!339019 (= res!187331 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8747 _keys!1895)))))

(declare-fun b!339020 () Bool)

(assert (=> b!339020 (= e!208014 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70717 (not res!187330)) b!339019))

(assert (= (and b!339019 res!187331) b!339020))

(assert (=> d!70717 m!342073))

(declare-fun m!342109 () Bool)

(assert (=> b!339020 m!342109))

(assert (=> b!338914 d!70717))

(declare-fun d!70719 () Bool)

(assert (=> d!70719 (= (inRange!0 (index!15175 lt!161016) mask!2385) (and (bvsge (index!15175 lt!161016) #b00000000000000000000000000000000) (bvslt (index!15175 lt!161016) (bvadd mask!2385 #b00000000000000000000000000000001))))))

(assert (=> b!338910 d!70719))

(declare-fun d!70721 () Bool)

(declare-fun e!208019 () Bool)

(assert (=> d!70721 e!208019))

(declare-fun res!187334 () Bool)

(assert (=> d!70721 (=> res!187334 e!208019)))

(declare-fun lt!161065 () Bool)

(assert (=> d!70721 (= res!187334 (not lt!161065))))

(declare-fun lt!161067 () Bool)

(assert (=> d!70721 (= lt!161065 lt!161067)))

(declare-fun lt!161064 () Unit!10546)

(declare-fun e!208020 () Unit!10546)

(assert (=> d!70721 (= lt!161064 e!208020)))

(declare-fun c!52451 () Bool)

(assert (=> d!70721 (= c!52451 lt!161067)))

(declare-fun containsKey!321 (List!4843 (_ BitVec 64)) Bool)

(assert (=> d!70721 (= lt!161067 (containsKey!321 (toList!2080 (getCurrentListMap!1600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70721 (= (contains!2126 (getCurrentListMap!1600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!161065)))

(declare-fun b!339027 () Bool)

(declare-fun lt!161066 () Unit!10546)

(assert (=> b!339027 (= e!208020 lt!161066)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!270 (List!4843 (_ BitVec 64)) Unit!10546)

(assert (=> b!339027 (= lt!161066 (lemmaContainsKeyImpliesGetValueByKeyDefined!270 (toList!2080 (getCurrentListMap!1600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!335 0))(
  ( (Some!334 (v!5755 V!10429)) (None!333) )
))
(declare-fun isDefined!271 (Option!335) Bool)

(declare-fun getValueByKey!329 (List!4843 (_ BitVec 64)) Option!335)

(assert (=> b!339027 (isDefined!271 (getValueByKey!329 (toList!2080 (getCurrentListMap!1600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!339028 () Bool)

(declare-fun Unit!10554 () Unit!10546)

(assert (=> b!339028 (= e!208020 Unit!10554)))

(declare-fun b!339029 () Bool)

(assert (=> b!339029 (= e!208019 (isDefined!271 (getValueByKey!329 (toList!2080 (getCurrentListMap!1600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70721 c!52451) b!339027))

(assert (= (and d!70721 (not c!52451)) b!339028))

(assert (= (and d!70721 (not res!187334)) b!339029))

(declare-fun m!342111 () Bool)

(assert (=> d!70721 m!342111))

(declare-fun m!342113 () Bool)

(assert (=> b!339027 m!342113))

(declare-fun m!342115 () Bool)

(assert (=> b!339027 m!342115))

(assert (=> b!339027 m!342115))

(declare-fun m!342117 () Bool)

(assert (=> b!339027 m!342117))

(assert (=> b!339029 m!342115))

(assert (=> b!339029 m!342115))

(assert (=> b!339029 m!342117))

(assert (=> b!338909 d!70721))

(declare-fun b!339072 () Bool)

(declare-fun e!208051 () ListLongMap!4129)

(declare-fun call!26474 () ListLongMap!4129)

(assert (=> b!339072 (= e!208051 call!26474)))

(declare-fun b!339073 () Bool)

(declare-fun e!208058 () Bool)

(declare-fun lt!161120 () ListLongMap!4129)

(declare-fun apply!272 (ListLongMap!4129 (_ BitVec 64)) V!10429)

(assert (=> b!339073 (= e!208058 (= (apply!272 lt!161120 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun call!26480 () ListLongMap!4129)

(declare-fun bm!26471 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!591 (array!17747 array!17749 (_ BitVec 32) (_ BitVec 32) V!10429 V!10429 (_ BitVec 32) Int) ListLongMap!4129)

(assert (=> bm!26471 (= call!26480 (getCurrentListMapNoExtraKeys!591 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun bm!26472 () Bool)

(declare-fun call!26477 () Bool)

(assert (=> bm!26472 (= call!26477 (contains!2126 lt!161120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!339074 () Bool)

(declare-fun e!208055 () Unit!10546)

(declare-fun Unit!10555 () Unit!10546)

(assert (=> b!339074 (= e!208055 Unit!10555)))

(declare-fun e!208052 () Bool)

(declare-fun b!339075 () Bool)

(declare-fun get!4581 (ValueCell!3201 V!10429) V!10429)

(declare-fun dynLambda!610 (Int (_ BitVec 64)) V!10429)

(assert (=> b!339075 (= e!208052 (= (apply!272 lt!161120 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000)) (get!4581 (select (arr!8396 _values!1525) #b00000000000000000000000000000000) (dynLambda!610 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!339075 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8748 _values!1525)))))

(assert (=> b!339075 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8747 _keys!1895)))))

(declare-fun b!339076 () Bool)

(declare-fun call!26475 () ListLongMap!4129)

(assert (=> b!339076 (= e!208051 call!26475)))

(declare-fun b!339077 () Bool)

(declare-fun res!187359 () Bool)

(declare-fun e!208048 () Bool)

(assert (=> b!339077 (=> (not res!187359) (not e!208048))))

(declare-fun e!208047 () Bool)

(assert (=> b!339077 (= res!187359 e!208047)))

(declare-fun res!187354 () Bool)

(assert (=> b!339077 (=> res!187354 e!208047)))

(declare-fun e!208053 () Bool)

(assert (=> b!339077 (= res!187354 (not e!208053))))

(declare-fun res!187355 () Bool)

(assert (=> b!339077 (=> (not res!187355) (not e!208053))))

(assert (=> b!339077 (= res!187355 (bvslt #b00000000000000000000000000000000 (size!8747 _keys!1895)))))

(declare-fun bm!26473 () Bool)

(declare-fun call!26479 () Bool)

(assert (=> bm!26473 (= call!26479 (contains!2126 lt!161120 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!70723 () Bool)

(assert (=> d!70723 e!208048))

(declare-fun res!187361 () Bool)

(assert (=> d!70723 (=> (not res!187361) (not e!208048))))

(assert (=> d!70723 (= res!187361 (or (bvsge #b00000000000000000000000000000000 (size!8747 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8747 _keys!1895)))))))

(declare-fun lt!161116 () ListLongMap!4129)

(assert (=> d!70723 (= lt!161120 lt!161116)))

(declare-fun lt!161118 () Unit!10546)

(assert (=> d!70723 (= lt!161118 e!208055)))

(declare-fun c!52468 () Bool)

(declare-fun e!208050 () Bool)

(assert (=> d!70723 (= c!52468 e!208050)))

(declare-fun res!187358 () Bool)

(assert (=> d!70723 (=> (not res!187358) (not e!208050))))

(assert (=> d!70723 (= res!187358 (bvslt #b00000000000000000000000000000000 (size!8747 _keys!1895)))))

(declare-fun e!208054 () ListLongMap!4129)

(assert (=> d!70723 (= lt!161116 e!208054)))

(declare-fun c!52464 () Bool)

(assert (=> d!70723 (= c!52464 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70723 (validMask!0 mask!2385)))

(assert (=> d!70723 (= (getCurrentListMap!1600 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!161120)))

(declare-fun b!339078 () Bool)

(declare-fun e!208049 () Bool)

(assert (=> b!339078 (= e!208049 (not call!26477))))

(declare-fun bm!26474 () Bool)

(declare-fun call!26478 () ListLongMap!4129)

(assert (=> bm!26474 (= call!26474 call!26478)))

(declare-fun bm!26475 () Bool)

(declare-fun call!26476 () ListLongMap!4129)

(assert (=> bm!26475 (= call!26475 call!26476)))

(declare-fun b!339079 () Bool)

(declare-fun e!208059 () Bool)

(assert (=> b!339079 (= e!208059 e!208058)))

(declare-fun res!187356 () Bool)

(assert (=> b!339079 (= res!187356 call!26479)))

(assert (=> b!339079 (=> (not res!187356) (not e!208058))))

(declare-fun b!339080 () Bool)

(assert (=> b!339080 (= e!208048 e!208059)))

(declare-fun c!52469 () Bool)

(assert (=> b!339080 (= c!52469 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26476 () Bool)

(assert (=> bm!26476 (= call!26478 call!26480)))

(declare-fun b!339081 () Bool)

(declare-fun res!187357 () Bool)

(assert (=> b!339081 (=> (not res!187357) (not e!208048))))

(assert (=> b!339081 (= res!187357 e!208049)))

(declare-fun c!52466 () Bool)

(assert (=> b!339081 (= c!52466 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!339082 () Bool)

(declare-fun e!208057 () ListLongMap!4129)

(assert (=> b!339082 (= e!208054 e!208057)))

(declare-fun c!52465 () Bool)

(assert (=> b!339082 (= c!52465 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!339083 () Bool)

(declare-fun e!208056 () Bool)

(assert (=> b!339083 (= e!208049 e!208056)))

(declare-fun res!187360 () Bool)

(assert (=> b!339083 (= res!187360 call!26477)))

(assert (=> b!339083 (=> (not res!187360) (not e!208056))))

(declare-fun b!339084 () Bool)

(assert (=> b!339084 (= e!208047 e!208052)))

(declare-fun res!187353 () Bool)

(assert (=> b!339084 (=> (not res!187353) (not e!208052))))

(assert (=> b!339084 (= res!187353 (contains!2126 lt!161120 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!339084 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8747 _keys!1895)))))

(declare-fun b!339085 () Bool)

(assert (=> b!339085 (= e!208056 (= (apply!272 lt!161120 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!26477 () Bool)

(declare-fun +!716 (ListLongMap!4129 tuple2!5202) ListLongMap!4129)

(assert (=> bm!26477 (= call!26476 (+!716 (ite c!52464 call!26480 (ite c!52465 call!26478 call!26474)) (ite (or c!52464 c!52465) (tuple2!5203 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5203 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!339086 () Bool)

(declare-fun c!52467 () Bool)

(assert (=> b!339086 (= c!52467 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!339086 (= e!208057 e!208051)))

(declare-fun b!339087 () Bool)

(assert (=> b!339087 (= e!208053 (validKeyInArray!0 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!339088 () Bool)

(declare-fun lt!161133 () Unit!10546)

(assert (=> b!339088 (= e!208055 lt!161133)))

(declare-fun lt!161117 () ListLongMap!4129)

(assert (=> b!339088 (= lt!161117 (getCurrentListMapNoExtraKeys!591 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161132 () (_ BitVec 64))

(assert (=> b!339088 (= lt!161132 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161123 () (_ BitVec 64))

(assert (=> b!339088 (= lt!161123 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161127 () Unit!10546)

(declare-fun addStillContains!248 (ListLongMap!4129 (_ BitVec 64) V!10429 (_ BitVec 64)) Unit!10546)

(assert (=> b!339088 (= lt!161127 (addStillContains!248 lt!161117 lt!161132 zeroValue!1467 lt!161123))))

(assert (=> b!339088 (contains!2126 (+!716 lt!161117 (tuple2!5203 lt!161132 zeroValue!1467)) lt!161123)))

(declare-fun lt!161125 () Unit!10546)

(assert (=> b!339088 (= lt!161125 lt!161127)))

(declare-fun lt!161131 () ListLongMap!4129)

(assert (=> b!339088 (= lt!161131 (getCurrentListMapNoExtraKeys!591 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161124 () (_ BitVec 64))

(assert (=> b!339088 (= lt!161124 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161126 () (_ BitVec 64))

(assert (=> b!339088 (= lt!161126 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161114 () Unit!10546)

(declare-fun addApplyDifferent!248 (ListLongMap!4129 (_ BitVec 64) V!10429 (_ BitVec 64)) Unit!10546)

(assert (=> b!339088 (= lt!161114 (addApplyDifferent!248 lt!161131 lt!161124 minValue!1467 lt!161126))))

(assert (=> b!339088 (= (apply!272 (+!716 lt!161131 (tuple2!5203 lt!161124 minValue!1467)) lt!161126) (apply!272 lt!161131 lt!161126))))

(declare-fun lt!161128 () Unit!10546)

(assert (=> b!339088 (= lt!161128 lt!161114)))

(declare-fun lt!161119 () ListLongMap!4129)

(assert (=> b!339088 (= lt!161119 (getCurrentListMapNoExtraKeys!591 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161112 () (_ BitVec 64))

(assert (=> b!339088 (= lt!161112 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161122 () (_ BitVec 64))

(assert (=> b!339088 (= lt!161122 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161130 () Unit!10546)

(assert (=> b!339088 (= lt!161130 (addApplyDifferent!248 lt!161119 lt!161112 zeroValue!1467 lt!161122))))

(assert (=> b!339088 (= (apply!272 (+!716 lt!161119 (tuple2!5203 lt!161112 zeroValue!1467)) lt!161122) (apply!272 lt!161119 lt!161122))))

(declare-fun lt!161121 () Unit!10546)

(assert (=> b!339088 (= lt!161121 lt!161130)))

(declare-fun lt!161113 () ListLongMap!4129)

(assert (=> b!339088 (= lt!161113 (getCurrentListMapNoExtraKeys!591 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161115 () (_ BitVec 64))

(assert (=> b!339088 (= lt!161115 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161129 () (_ BitVec 64))

(assert (=> b!339088 (= lt!161129 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!339088 (= lt!161133 (addApplyDifferent!248 lt!161113 lt!161115 minValue!1467 lt!161129))))

(assert (=> b!339088 (= (apply!272 (+!716 lt!161113 (tuple2!5203 lt!161115 minValue!1467)) lt!161129) (apply!272 lt!161113 lt!161129))))

(declare-fun b!339089 () Bool)

(assert (=> b!339089 (= e!208057 call!26475)))

(declare-fun b!339090 () Bool)

(assert (=> b!339090 (= e!208054 (+!716 call!26476 (tuple2!5203 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!339091 () Bool)

(assert (=> b!339091 (= e!208059 (not call!26479))))

(declare-fun b!339092 () Bool)

(assert (=> b!339092 (= e!208050 (validKeyInArray!0 (select (arr!8395 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70723 c!52464) b!339090))

(assert (= (and d!70723 (not c!52464)) b!339082))

(assert (= (and b!339082 c!52465) b!339089))

(assert (= (and b!339082 (not c!52465)) b!339086))

(assert (= (and b!339086 c!52467) b!339076))

(assert (= (and b!339086 (not c!52467)) b!339072))

(assert (= (or b!339076 b!339072) bm!26474))

(assert (= (or b!339089 bm!26474) bm!26476))

(assert (= (or b!339089 b!339076) bm!26475))

(assert (= (or b!339090 bm!26476) bm!26471))

(assert (= (or b!339090 bm!26475) bm!26477))

(assert (= (and d!70723 res!187358) b!339092))

(assert (= (and d!70723 c!52468) b!339088))

(assert (= (and d!70723 (not c!52468)) b!339074))

(assert (= (and d!70723 res!187361) b!339077))

(assert (= (and b!339077 res!187355) b!339087))

(assert (= (and b!339077 (not res!187354)) b!339084))

(assert (= (and b!339084 res!187353) b!339075))

(assert (= (and b!339077 res!187359) b!339081))

(assert (= (and b!339081 c!52466) b!339083))

(assert (= (and b!339081 (not c!52466)) b!339078))

(assert (= (and b!339083 res!187360) b!339085))

(assert (= (or b!339083 b!339078) bm!26472))

(assert (= (and b!339081 res!187357) b!339080))

(assert (= (and b!339080 c!52469) b!339079))

(assert (= (and b!339080 (not c!52469)) b!339091))

(assert (= (and b!339079 res!187356) b!339073))

(assert (= (or b!339079 b!339091) bm!26473))

(declare-fun b_lambda!8457 () Bool)

(assert (=> (not b_lambda!8457) (not b!339075)))

(declare-fun t!9955 () Bool)

(declare-fun tb!3067 () Bool)

(assert (=> (and start!34040 (= defaultEntry!1528 defaultEntry!1528) t!9955) tb!3067))

(declare-fun result!5515 () Bool)

(assert (=> tb!3067 (= result!5515 tp_is_empty!7089)))

(assert (=> b!339075 t!9955))

(declare-fun b_and!14351 () Bool)

(assert (= b_and!14347 (and (=> t!9955 result!5515) b_and!14351)))

(assert (=> b!339087 m!342073))

(assert (=> b!339087 m!342073))

(assert (=> b!339087 m!342075))

(assert (=> b!339092 m!342073))

(assert (=> b!339092 m!342073))

(assert (=> b!339092 m!342075))

(declare-fun m!342119 () Bool)

(assert (=> bm!26472 m!342119))

(declare-fun m!342121 () Bool)

(assert (=> b!339073 m!342121))

(declare-fun m!342123 () Bool)

(assert (=> b!339075 m!342123))

(declare-fun m!342125 () Bool)

(assert (=> b!339075 m!342125))

(declare-fun m!342127 () Bool)

(assert (=> b!339075 m!342127))

(assert (=> b!339075 m!342073))

(assert (=> b!339075 m!342125))

(assert (=> b!339075 m!342123))

(assert (=> b!339075 m!342073))

(declare-fun m!342129 () Bool)

(assert (=> b!339075 m!342129))

(declare-fun m!342131 () Bool)

(assert (=> bm!26473 m!342131))

(declare-fun m!342133 () Bool)

(assert (=> bm!26477 m!342133))

(declare-fun m!342135 () Bool)

(assert (=> b!339085 m!342135))

(declare-fun m!342137 () Bool)

(assert (=> b!339090 m!342137))

(assert (=> b!339084 m!342073))

(assert (=> b!339084 m!342073))

(declare-fun m!342139 () Bool)

(assert (=> b!339084 m!342139))

(declare-fun m!342141 () Bool)

(assert (=> bm!26471 m!342141))

(declare-fun m!342143 () Bool)

(assert (=> b!339088 m!342143))

(declare-fun m!342145 () Bool)

(assert (=> b!339088 m!342145))

(declare-fun m!342147 () Bool)

(assert (=> b!339088 m!342147))

(declare-fun m!342149 () Bool)

(assert (=> b!339088 m!342149))

(declare-fun m!342151 () Bool)

(assert (=> b!339088 m!342151))

(assert (=> b!339088 m!342073))

(declare-fun m!342153 () Bool)

(assert (=> b!339088 m!342153))

(declare-fun m!342155 () Bool)

(assert (=> b!339088 m!342155))

(assert (=> b!339088 m!342155))

(declare-fun m!342157 () Bool)

(assert (=> b!339088 m!342157))

(declare-fun m!342159 () Bool)

(assert (=> b!339088 m!342159))

(assert (=> b!339088 m!342143))

(declare-fun m!342161 () Bool)

(assert (=> b!339088 m!342161))

(declare-fun m!342163 () Bool)

(assert (=> b!339088 m!342163))

(assert (=> b!339088 m!342145))

(declare-fun m!342165 () Bool)

(assert (=> b!339088 m!342165))

(declare-fun m!342167 () Bool)

(assert (=> b!339088 m!342167))

(declare-fun m!342169 () Bool)

(assert (=> b!339088 m!342169))

(declare-fun m!342171 () Bool)

(assert (=> b!339088 m!342171))

(assert (=> b!339088 m!342167))

(assert (=> b!339088 m!342141))

(assert (=> d!70723 m!342013))

(assert (=> b!338909 d!70723))

(declare-fun b!339102 () Bool)

(declare-fun e!208064 () Bool)

(assert (=> b!339102 (= e!208064 tp_is_empty!7089)))

(declare-fun mapNonEmpty!12054 () Bool)

(declare-fun mapRes!12054 () Bool)

(declare-fun tp!24942 () Bool)

(declare-fun e!208065 () Bool)

(assert (=> mapNonEmpty!12054 (= mapRes!12054 (and tp!24942 e!208065))))

(declare-fun mapKey!12054 () (_ BitVec 32))

(declare-fun mapRest!12054 () (Array (_ BitVec 32) ValueCell!3201))

(declare-fun mapValue!12054 () ValueCell!3201)

(assert (=> mapNonEmpty!12054 (= mapRest!12048 (store mapRest!12054 mapKey!12054 mapValue!12054))))

(declare-fun condMapEmpty!12054 () Bool)

(declare-fun mapDefault!12054 () ValueCell!3201)

(assert (=> mapNonEmpty!12048 (= condMapEmpty!12054 (= mapRest!12048 ((as const (Array (_ BitVec 32) ValueCell!3201)) mapDefault!12054)))))

(assert (=> mapNonEmpty!12048 (= tp!24933 (and e!208064 mapRes!12054))))

(declare-fun mapIsEmpty!12054 () Bool)

(assert (=> mapIsEmpty!12054 mapRes!12054))

(declare-fun b!339101 () Bool)

(assert (=> b!339101 (= e!208065 tp_is_empty!7089)))

(assert (= (and mapNonEmpty!12048 condMapEmpty!12054) mapIsEmpty!12054))

(assert (= (and mapNonEmpty!12048 (not condMapEmpty!12054)) mapNonEmpty!12054))

(assert (= (and mapNonEmpty!12054 ((_ is ValueCellFull!3201) mapValue!12054)) b!339101))

(assert (= (and mapNonEmpty!12048 ((_ is ValueCellFull!3201) mapDefault!12054)) b!339102))

(declare-fun m!342173 () Bool)

(assert (=> mapNonEmpty!12054 m!342173))

(declare-fun b_lambda!8459 () Bool)

(assert (= b_lambda!8457 (or (and start!34040 b_free!7137) b_lambda!8459)))

(check-sat (not bm!26453) tp_is_empty!7089 (not bm!26471) (not b!339092) (not b!339085) (not b!338993) (not b!338995) (not mapNonEmpty!12054) (not b!339029) (not b!339088) b_and!14351 (not b!339020) (not b_next!7137) (not b!339090) (not b!339010) (not b!338973) (not bm!26472) (not b!339084) (not bm!26473) (not b!339087) (not b_lambda!8459) (not bm!26456) (not d!70713) (not d!70707) (not d!70721) (not b!338981) (not b!338992) (not b!339027) (not b!339075) (not bm!26477) (not d!70723) (not b!338972) (not b!339073))
(check-sat b_and!14351 (not b_next!7137))
