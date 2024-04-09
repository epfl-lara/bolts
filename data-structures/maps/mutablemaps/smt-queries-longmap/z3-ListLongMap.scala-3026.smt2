; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42520 () Bool)

(assert start!42520)

(declare-fun b_free!11967 () Bool)

(declare-fun b_next!11967 () Bool)

(assert (=> start!42520 (= b_free!11967 (not b_next!11967))))

(declare-fun tp!41938 () Bool)

(declare-fun b_and!20453 () Bool)

(assert (=> start!42520 (= tp!41938 b_and!20453)))

(declare-fun b!474162 () Bool)

(declare-fun e!278313 () Bool)

(declare-fun e!278310 () Bool)

(declare-fun mapRes!21808 () Bool)

(assert (=> b!474162 (= e!278313 (and e!278310 mapRes!21808))))

(declare-fun condMapEmpty!21808 () Bool)

(declare-datatypes ((V!18965 0))(
  ( (V!18966 (val!6742 Int)) )
))
(declare-datatypes ((ValueCell!6354 0))(
  ( (ValueCellFull!6354 (v!9030 V!18965)) (EmptyCell!6354) )
))
(declare-datatypes ((array!30507 0))(
  ( (array!30508 (arr!14669 (Array (_ BitVec 32) ValueCell!6354)) (size!15021 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30507)

(declare-fun mapDefault!21808 () ValueCell!6354)

(assert (=> b!474162 (= condMapEmpty!21808 (= (arr!14669 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6354)) mapDefault!21808)))))

(declare-fun res!283291 () Bool)

(declare-fun e!278315 () Bool)

(assert (=> start!42520 (=> (not res!283291) (not e!278315))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42520 (= res!283291 (validMask!0 mask!1365))))

(assert (=> start!42520 e!278315))

(declare-fun tp_is_empty!13395 () Bool)

(assert (=> start!42520 tp_is_empty!13395))

(assert (=> start!42520 tp!41938))

(assert (=> start!42520 true))

(declare-datatypes ((array!30509 0))(
  ( (array!30510 (arr!14670 (Array (_ BitVec 32) (_ BitVec 64))) (size!15022 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30509)

(declare-fun array_inv!10572 (array!30509) Bool)

(assert (=> start!42520 (array_inv!10572 _keys!1025)))

(declare-fun array_inv!10573 (array!30507) Bool)

(assert (=> start!42520 (and (array_inv!10573 _values!833) e!278313)))

(declare-fun b!474163 () Bool)

(declare-fun e!278312 () Bool)

(assert (=> b!474163 (= e!278312 (bvsle #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-datatypes ((tuple2!8884 0))(
  ( (tuple2!8885 (_1!4452 (_ BitVec 64)) (_2!4452 V!18965)) )
))
(declare-datatypes ((List!8995 0))(
  ( (Nil!8992) (Cons!8991 (h!9847 tuple2!8884) (t!14975 List!8995)) )
))
(declare-datatypes ((ListLongMap!7811 0))(
  ( (ListLongMap!7812 (toList!3921 List!8995)) )
))
(declare-fun lt!215998 () ListLongMap!7811)

(declare-fun lt!215994 () tuple2!8884)

(declare-fun minValueBefore!38 () V!18965)

(declare-fun +!1726 (ListLongMap!7811 tuple2!8884) ListLongMap!7811)

(assert (=> b!474163 (= (+!1726 lt!215998 lt!215994) (+!1726 (+!1726 lt!215998 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215994))))

(declare-fun minValueAfter!38 () V!18965)

(assert (=> b!474163 (= lt!215994 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13965 0))(
  ( (Unit!13966) )
))
(declare-fun lt!215995 () Unit!13965)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!163 (ListLongMap!7811 (_ BitVec 64) V!18965 V!18965) Unit!13965)

(assert (=> b!474163 (= lt!215995 (addSameAsAddTwiceSameKeyDiffValues!163 lt!215998 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215999 () ListLongMap!7811)

(declare-fun zeroValue!794 () V!18965)

(assert (=> b!474163 (= lt!215998 (+!1726 lt!215999 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun lt!216000 () ListLongMap!7811)

(declare-fun getCurrentListMap!2263 (array!30509 array!30507 (_ BitVec 32) (_ BitVec 32) V!18965 V!18965 (_ BitVec 32) Int) ListLongMap!7811)

(assert (=> b!474163 (= lt!216000 (getCurrentListMap!2263 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215996 () ListLongMap!7811)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474163 (= lt!215996 (getCurrentListMap!2263 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474164 () Bool)

(assert (=> b!474164 (= e!278310 tp_is_empty!13395)))

(declare-fun b!474165 () Bool)

(declare-fun res!283292 () Bool)

(assert (=> b!474165 (=> (not res!283292) (not e!278315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30509 (_ BitVec 32)) Bool)

(assert (=> b!474165 (= res!283292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474166 () Bool)

(declare-fun e!278314 () Bool)

(assert (=> b!474166 (= e!278314 tp_is_empty!13395)))

(declare-fun mapIsEmpty!21808 () Bool)

(assert (=> mapIsEmpty!21808 mapRes!21808))

(declare-fun b!474167 () Bool)

(declare-fun res!283293 () Bool)

(assert (=> b!474167 (=> (not res!283293) (not e!278315))))

(declare-datatypes ((List!8996 0))(
  ( (Nil!8993) (Cons!8992 (h!9848 (_ BitVec 64)) (t!14976 List!8996)) )
))
(declare-fun arrayNoDuplicates!0 (array!30509 (_ BitVec 32) List!8996) Bool)

(assert (=> b!474167 (= res!283293 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8993))))

(declare-fun mapNonEmpty!21808 () Bool)

(declare-fun tp!41937 () Bool)

(assert (=> mapNonEmpty!21808 (= mapRes!21808 (and tp!41937 e!278314))))

(declare-fun mapValue!21808 () ValueCell!6354)

(declare-fun mapKey!21808 () (_ BitVec 32))

(declare-fun mapRest!21808 () (Array (_ BitVec 32) ValueCell!6354))

(assert (=> mapNonEmpty!21808 (= (arr!14669 _values!833) (store mapRest!21808 mapKey!21808 mapValue!21808))))

(declare-fun b!474168 () Bool)

(declare-fun res!283295 () Bool)

(assert (=> b!474168 (=> (not res!283295) (not e!278315))))

(assert (=> b!474168 (= res!283295 (and (= (size!15021 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15022 _keys!1025) (size!15021 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474169 () Bool)

(assert (=> b!474169 (= e!278315 (not e!278312))))

(declare-fun res!283294 () Bool)

(assert (=> b!474169 (=> res!283294 e!278312)))

(assert (=> b!474169 (= res!283294 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!216001 () ListLongMap!7811)

(assert (=> b!474169 (= lt!215999 lt!216001)))

(declare-fun lt!215997 () Unit!13965)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!270 (array!30509 array!30507 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18965 V!18965 V!18965 V!18965 (_ BitVec 32) Int) Unit!13965)

(assert (=> b!474169 (= lt!215997 (lemmaNoChangeToArrayThenSameMapNoExtras!270 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2075 (array!30509 array!30507 (_ BitVec 32) (_ BitVec 32) V!18965 V!18965 (_ BitVec 32) Int) ListLongMap!7811)

(assert (=> b!474169 (= lt!216001 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!474169 (= lt!215999 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42520 res!283291) b!474168))

(assert (= (and b!474168 res!283295) b!474165))

(assert (= (and b!474165 res!283292) b!474167))

(assert (= (and b!474167 res!283293) b!474169))

(assert (= (and b!474169 (not res!283294)) b!474163))

(assert (= (and b!474162 condMapEmpty!21808) mapIsEmpty!21808))

(assert (= (and b!474162 (not condMapEmpty!21808)) mapNonEmpty!21808))

(get-info :version)

(assert (= (and mapNonEmpty!21808 ((_ is ValueCellFull!6354) mapValue!21808)) b!474166))

(assert (= (and b!474162 ((_ is ValueCellFull!6354) mapDefault!21808)) b!474164))

(assert (= start!42520 b!474162))

(declare-fun m!456525 () Bool)

(assert (=> mapNonEmpty!21808 m!456525))

(declare-fun m!456527 () Bool)

(assert (=> start!42520 m!456527))

(declare-fun m!456529 () Bool)

(assert (=> start!42520 m!456529))

(declare-fun m!456531 () Bool)

(assert (=> start!42520 m!456531))

(declare-fun m!456533 () Bool)

(assert (=> b!474165 m!456533))

(declare-fun m!456535 () Bool)

(assert (=> b!474169 m!456535))

(declare-fun m!456537 () Bool)

(assert (=> b!474169 m!456537))

(declare-fun m!456539 () Bool)

(assert (=> b!474169 m!456539))

(declare-fun m!456541 () Bool)

(assert (=> b!474163 m!456541))

(declare-fun m!456543 () Bool)

(assert (=> b!474163 m!456543))

(declare-fun m!456545 () Bool)

(assert (=> b!474163 m!456545))

(declare-fun m!456547 () Bool)

(assert (=> b!474163 m!456547))

(assert (=> b!474163 m!456543))

(declare-fun m!456549 () Bool)

(assert (=> b!474163 m!456549))

(declare-fun m!456551 () Bool)

(assert (=> b!474163 m!456551))

(declare-fun m!456553 () Bool)

(assert (=> b!474163 m!456553))

(declare-fun m!456555 () Bool)

(assert (=> b!474167 m!456555))

(check-sat (not b_next!11967) b_and!20453 (not b!474169) tp_is_empty!13395 (not b!474167) (not mapNonEmpty!21808) (not b!474163) (not start!42520) (not b!474165))
(check-sat b_and!20453 (not b_next!11967))
(get-model)

(declare-fun bm!30539 () Bool)

(declare-fun call!30548 () ListLongMap!7811)

(declare-fun call!30543 () ListLongMap!7811)

(assert (=> bm!30539 (= call!30548 call!30543)))

(declare-fun bm!30540 () Bool)

(declare-fun call!30546 () ListLongMap!7811)

(declare-fun call!30544 () ListLongMap!7811)

(declare-fun c!57032 () Bool)

(declare-fun c!57037 () Bool)

(assert (=> bm!30540 (= call!30544 (+!1726 (ite c!57037 call!30543 (ite c!57032 call!30548 call!30546)) (ite (or c!57037 c!57032) (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun b!474236 () Bool)

(declare-fun c!57035 () Bool)

(assert (=> b!474236 (= c!57035 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!278361 () ListLongMap!7811)

(declare-fun e!278363 () ListLongMap!7811)

(assert (=> b!474236 (= e!278361 e!278363)))

(declare-fun b!474237 () Bool)

(declare-fun e!278362 () Bool)

(declare-fun e!278370 () Bool)

(assert (=> b!474237 (= e!278362 e!278370)))

(declare-fun res!283335 () Bool)

(assert (=> b!474237 (=> (not res!283335) (not e!278370))))

(declare-fun lt!216087 () ListLongMap!7811)

(declare-fun contains!2554 (ListLongMap!7811 (_ BitVec 64)) Bool)

(assert (=> b!474237 (= res!283335 (contains!2554 lt!216087 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!474237 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474238 () Bool)

(declare-fun e!278372 () ListLongMap!7811)

(assert (=> b!474238 (= e!278372 e!278361)))

(assert (=> b!474238 (= c!57032 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!474239 () Bool)

(assert (=> b!474239 (= e!278372 (+!1726 call!30544 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!474240 () Bool)

(declare-fun call!30542 () ListLongMap!7811)

(assert (=> b!474240 (= e!278363 call!30542)))

(declare-fun b!474241 () Bool)

(declare-fun e!278366 () Unit!13965)

(declare-fun lt!216076 () Unit!13965)

(assert (=> b!474241 (= e!278366 lt!216076)))

(declare-fun lt!216083 () ListLongMap!7811)

(assert (=> b!474241 (= lt!216083 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216072 () (_ BitVec 64))

(assert (=> b!474241 (= lt!216072 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216084 () (_ BitVec 64))

(assert (=> b!474241 (= lt!216084 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216071 () Unit!13965)

(declare-fun addStillContains!292 (ListLongMap!7811 (_ BitVec 64) V!18965 (_ BitVec 64)) Unit!13965)

(assert (=> b!474241 (= lt!216071 (addStillContains!292 lt!216083 lt!216072 zeroValue!794 lt!216084))))

(assert (=> b!474241 (contains!2554 (+!1726 lt!216083 (tuple2!8885 lt!216072 zeroValue!794)) lt!216084)))

(declare-fun lt!216089 () Unit!13965)

(assert (=> b!474241 (= lt!216089 lt!216071)))

(declare-fun lt!216091 () ListLongMap!7811)

(assert (=> b!474241 (= lt!216091 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216074 () (_ BitVec 64))

(assert (=> b!474241 (= lt!216074 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216080 () (_ BitVec 64))

(assert (=> b!474241 (= lt!216080 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216075 () Unit!13965)

(declare-fun addApplyDifferent!292 (ListLongMap!7811 (_ BitVec 64) V!18965 (_ BitVec 64)) Unit!13965)

(assert (=> b!474241 (= lt!216075 (addApplyDifferent!292 lt!216091 lt!216074 minValueAfter!38 lt!216080))))

(declare-fun apply!333 (ListLongMap!7811 (_ BitVec 64)) V!18965)

(assert (=> b!474241 (= (apply!333 (+!1726 lt!216091 (tuple2!8885 lt!216074 minValueAfter!38)) lt!216080) (apply!333 lt!216091 lt!216080))))

(declare-fun lt!216086 () Unit!13965)

(assert (=> b!474241 (= lt!216086 lt!216075)))

(declare-fun lt!216078 () ListLongMap!7811)

(assert (=> b!474241 (= lt!216078 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216077 () (_ BitVec 64))

(assert (=> b!474241 (= lt!216077 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216085 () (_ BitVec 64))

(assert (=> b!474241 (= lt!216085 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216088 () Unit!13965)

(assert (=> b!474241 (= lt!216088 (addApplyDifferent!292 lt!216078 lt!216077 zeroValue!794 lt!216085))))

(assert (=> b!474241 (= (apply!333 (+!1726 lt!216078 (tuple2!8885 lt!216077 zeroValue!794)) lt!216085) (apply!333 lt!216078 lt!216085))))

(declare-fun lt!216070 () Unit!13965)

(assert (=> b!474241 (= lt!216070 lt!216088)))

(declare-fun lt!216090 () ListLongMap!7811)

(assert (=> b!474241 (= lt!216090 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216073 () (_ BitVec 64))

(assert (=> b!474241 (= lt!216073 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216079 () (_ BitVec 64))

(assert (=> b!474241 (= lt!216079 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!474241 (= lt!216076 (addApplyDifferent!292 lt!216090 lt!216073 minValueAfter!38 lt!216079))))

(assert (=> b!474241 (= (apply!333 (+!1726 lt!216090 (tuple2!8885 lt!216073 minValueAfter!38)) lt!216079) (apply!333 lt!216090 lt!216079))))

(declare-fun b!474242 () Bool)

(declare-fun res!283336 () Bool)

(declare-fun e!278368 () Bool)

(assert (=> b!474242 (=> (not res!283336) (not e!278368))))

(assert (=> b!474242 (= res!283336 e!278362)))

(declare-fun res!283329 () Bool)

(assert (=> b!474242 (=> res!283329 e!278362)))

(declare-fun e!278360 () Bool)

(assert (=> b!474242 (= res!283329 (not e!278360))))

(declare-fun res!283337 () Bool)

(assert (=> b!474242 (=> (not res!283337) (not e!278360))))

(assert (=> b!474242 (= res!283337 (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474243 () Bool)

(declare-fun e!278367 () Bool)

(assert (=> b!474243 (= e!278368 e!278367)))

(declare-fun c!57036 () Bool)

(assert (=> b!474243 (= c!57036 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!474244 () Bool)

(declare-fun e!278369 () Bool)

(declare-fun e!278371 () Bool)

(assert (=> b!474244 (= e!278369 e!278371)))

(declare-fun res!283331 () Bool)

(declare-fun call!30547 () Bool)

(assert (=> b!474244 (= res!283331 call!30547)))

(assert (=> b!474244 (=> (not res!283331) (not e!278371))))

(declare-fun b!474246 () Bool)

(declare-fun Unit!13969 () Unit!13965)

(assert (=> b!474246 (= e!278366 Unit!13969)))

(declare-fun bm!30541 () Bool)

(assert (=> bm!30541 (= call!30542 call!30544)))

(declare-fun bm!30542 () Bool)

(assert (=> bm!30542 (= call!30543 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474247 () Bool)

(assert (=> b!474247 (= e!278371 (= (apply!333 lt!216087 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!474248 () Bool)

(declare-fun get!7139 (ValueCell!6354 V!18965) V!18965)

(declare-fun dynLambda!925 (Int (_ BitVec 64)) V!18965)

(assert (=> b!474248 (= e!278370 (= (apply!333 lt!216087 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)) (get!7139 (select (arr!14669 _values!833) #b00000000000000000000000000000000) (dynLambda!925 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!474248 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15021 _values!833)))))

(assert (=> b!474248 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474249 () Bool)

(declare-fun e!278365 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!474249 (= e!278365 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!474250 () Bool)

(assert (=> b!474250 (= e!278363 call!30546)))

(declare-fun b!474251 () Bool)

(declare-fun call!30545 () Bool)

(assert (=> b!474251 (= e!278367 (not call!30545))))

(declare-fun bm!30543 () Bool)

(assert (=> bm!30543 (= call!30545 (contains!2554 lt!216087 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30544 () Bool)

(assert (=> bm!30544 (= call!30547 (contains!2554 lt!216087 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!474252 () Bool)

(declare-fun e!278364 () Bool)

(assert (=> b!474252 (= e!278367 e!278364)))

(declare-fun res!283332 () Bool)

(assert (=> b!474252 (= res!283332 call!30545)))

(assert (=> b!474252 (=> (not res!283332) (not e!278364))))

(declare-fun b!474253 () Bool)

(assert (=> b!474253 (= e!278369 (not call!30547))))

(declare-fun b!474245 () Bool)

(assert (=> b!474245 (= e!278360 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75423 () Bool)

(assert (=> d!75423 e!278368))

(declare-fun res!283330 () Bool)

(assert (=> d!75423 (=> (not res!283330) (not e!278368))))

(assert (=> d!75423 (= res!283330 (or (bvsge #b00000000000000000000000000000000 (size!15022 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))))

(declare-fun lt!216081 () ListLongMap!7811)

(assert (=> d!75423 (= lt!216087 lt!216081)))

(declare-fun lt!216082 () Unit!13965)

(assert (=> d!75423 (= lt!216082 e!278366)))

(declare-fun c!57033 () Bool)

(assert (=> d!75423 (= c!57033 e!278365)))

(declare-fun res!283334 () Bool)

(assert (=> d!75423 (=> (not res!283334) (not e!278365))))

(assert (=> d!75423 (= res!283334 (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(assert (=> d!75423 (= lt!216081 e!278372)))

(assert (=> d!75423 (= c!57037 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75423 (validMask!0 mask!1365)))

(assert (=> d!75423 (= (getCurrentListMap!2263 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216087)))

(declare-fun b!474254 () Bool)

(declare-fun res!283333 () Bool)

(assert (=> b!474254 (=> (not res!283333) (not e!278368))))

(assert (=> b!474254 (= res!283333 e!278369)))

(declare-fun c!57034 () Bool)

(assert (=> b!474254 (= c!57034 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30545 () Bool)

(assert (=> bm!30545 (= call!30546 call!30548)))

(declare-fun b!474255 () Bool)

(assert (=> b!474255 (= e!278364 (= (apply!333 lt!216087 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun b!474256 () Bool)

(assert (=> b!474256 (= e!278361 call!30542)))

(assert (= (and d!75423 c!57037) b!474239))

(assert (= (and d!75423 (not c!57037)) b!474238))

(assert (= (and b!474238 c!57032) b!474256))

(assert (= (and b!474238 (not c!57032)) b!474236))

(assert (= (and b!474236 c!57035) b!474240))

(assert (= (and b!474236 (not c!57035)) b!474250))

(assert (= (or b!474240 b!474250) bm!30545))

(assert (= (or b!474256 bm!30545) bm!30539))

(assert (= (or b!474256 b!474240) bm!30541))

(assert (= (or b!474239 bm!30539) bm!30542))

(assert (= (or b!474239 bm!30541) bm!30540))

(assert (= (and d!75423 res!283334) b!474249))

(assert (= (and d!75423 c!57033) b!474241))

(assert (= (and d!75423 (not c!57033)) b!474246))

(assert (= (and d!75423 res!283330) b!474242))

(assert (= (and b!474242 res!283337) b!474245))

(assert (= (and b!474242 (not res!283329)) b!474237))

(assert (= (and b!474237 res!283335) b!474248))

(assert (= (and b!474242 res!283336) b!474254))

(assert (= (and b!474254 c!57034) b!474244))

(assert (= (and b!474254 (not c!57034)) b!474253))

(assert (= (and b!474244 res!283331) b!474247))

(assert (= (or b!474244 b!474253) bm!30544))

(assert (= (and b!474254 res!283333) b!474243))

(assert (= (and b!474243 c!57036) b!474252))

(assert (= (and b!474243 (not c!57036)) b!474251))

(assert (= (and b!474252 res!283332) b!474255))

(assert (= (or b!474252 b!474251) bm!30543))

(declare-fun b_lambda!10259 () Bool)

(assert (=> (not b_lambda!10259) (not b!474248)))

(declare-fun t!14980 () Bool)

(declare-fun tb!3939 () Bool)

(assert (=> (and start!42520 (= defaultEntry!841 defaultEntry!841) t!14980) tb!3939))

(declare-fun result!7459 () Bool)

(assert (=> tb!3939 (= result!7459 tp_is_empty!13395)))

(assert (=> b!474248 t!14980))

(declare-fun b_and!20457 () Bool)

(assert (= b_and!20453 (and (=> t!14980 result!7459) b_and!20457)))

(declare-fun m!456589 () Bool)

(assert (=> b!474237 m!456589))

(assert (=> b!474237 m!456589))

(declare-fun m!456591 () Bool)

(assert (=> b!474237 m!456591))

(declare-fun m!456593 () Bool)

(assert (=> bm!30540 m!456593))

(declare-fun m!456595 () Bool)

(assert (=> b!474239 m!456595))

(assert (=> d!75423 m!456527))

(declare-fun m!456597 () Bool)

(assert (=> b!474241 m!456597))

(declare-fun m!456599 () Bool)

(assert (=> b!474241 m!456599))

(declare-fun m!456601 () Bool)

(assert (=> b!474241 m!456601))

(declare-fun m!456603 () Bool)

(assert (=> b!474241 m!456603))

(declare-fun m!456605 () Bool)

(assert (=> b!474241 m!456605))

(declare-fun m!456607 () Bool)

(assert (=> b!474241 m!456607))

(assert (=> b!474241 m!456537))

(declare-fun m!456609 () Bool)

(assert (=> b!474241 m!456609))

(declare-fun m!456611 () Bool)

(assert (=> b!474241 m!456611))

(declare-fun m!456613 () Bool)

(assert (=> b!474241 m!456613))

(assert (=> b!474241 m!456603))

(declare-fun m!456615 () Bool)

(assert (=> b!474241 m!456615))

(declare-fun m!456617 () Bool)

(assert (=> b!474241 m!456617))

(declare-fun m!456619 () Bool)

(assert (=> b!474241 m!456619))

(assert (=> b!474241 m!456609))

(assert (=> b!474241 m!456589))

(declare-fun m!456621 () Bool)

(assert (=> b!474241 m!456621))

(assert (=> b!474241 m!456605))

(declare-fun m!456623 () Bool)

(assert (=> b!474241 m!456623))

(declare-fun m!456625 () Bool)

(assert (=> b!474241 m!456625))

(assert (=> b!474241 m!456599))

(declare-fun m!456627 () Bool)

(assert (=> bm!30544 m!456627))

(declare-fun m!456629 () Bool)

(assert (=> b!474255 m!456629))

(assert (=> b!474248 m!456589))

(declare-fun m!456631 () Bool)

(assert (=> b!474248 m!456631))

(assert (=> b!474248 m!456589))

(declare-fun m!456633 () Bool)

(assert (=> b!474248 m!456633))

(declare-fun m!456635 () Bool)

(assert (=> b!474248 m!456635))

(assert (=> b!474248 m!456635))

(assert (=> b!474248 m!456633))

(declare-fun m!456637 () Bool)

(assert (=> b!474248 m!456637))

(assert (=> b!474245 m!456589))

(assert (=> b!474245 m!456589))

(declare-fun m!456639 () Bool)

(assert (=> b!474245 m!456639))

(declare-fun m!456641 () Bool)

(assert (=> b!474247 m!456641))

(declare-fun m!456643 () Bool)

(assert (=> bm!30543 m!456643))

(assert (=> bm!30542 m!456537))

(assert (=> b!474249 m!456589))

(assert (=> b!474249 m!456589))

(assert (=> b!474249 m!456639))

(assert (=> b!474163 d!75423))

(declare-fun d!75425 () Bool)

(declare-fun e!278375 () Bool)

(assert (=> d!75425 e!278375))

(declare-fun res!283343 () Bool)

(assert (=> d!75425 (=> (not res!283343) (not e!278375))))

(declare-fun lt!216102 () ListLongMap!7811)

(assert (=> d!75425 (= res!283343 (contains!2554 lt!216102 (_1!4452 lt!215994)))))

(declare-fun lt!216100 () List!8995)

(assert (=> d!75425 (= lt!216102 (ListLongMap!7812 lt!216100))))

(declare-fun lt!216103 () Unit!13965)

(declare-fun lt!216101 () Unit!13965)

(assert (=> d!75425 (= lt!216103 lt!216101)))

(declare-datatypes ((Option!386 0))(
  ( (Some!385 (v!9032 V!18965)) (None!384) )
))
(declare-fun getValueByKey!380 (List!8995 (_ BitVec 64)) Option!386)

(assert (=> d!75425 (= (getValueByKey!380 lt!216100 (_1!4452 lt!215994)) (Some!385 (_2!4452 lt!215994)))))

(declare-fun lemmaContainsTupThenGetReturnValue!204 (List!8995 (_ BitVec 64) V!18965) Unit!13965)

(assert (=> d!75425 (= lt!216101 (lemmaContainsTupThenGetReturnValue!204 lt!216100 (_1!4452 lt!215994) (_2!4452 lt!215994)))))

(declare-fun insertStrictlySorted!206 (List!8995 (_ BitVec 64) V!18965) List!8995)

(assert (=> d!75425 (= lt!216100 (insertStrictlySorted!206 (toList!3921 lt!215998) (_1!4452 lt!215994) (_2!4452 lt!215994)))))

(assert (=> d!75425 (= (+!1726 lt!215998 lt!215994) lt!216102)))

(declare-fun b!474263 () Bool)

(declare-fun res!283342 () Bool)

(assert (=> b!474263 (=> (not res!283342) (not e!278375))))

(assert (=> b!474263 (= res!283342 (= (getValueByKey!380 (toList!3921 lt!216102) (_1!4452 lt!215994)) (Some!385 (_2!4452 lt!215994))))))

(declare-fun b!474264 () Bool)

(declare-fun contains!2555 (List!8995 tuple2!8884) Bool)

(assert (=> b!474264 (= e!278375 (contains!2555 (toList!3921 lt!216102) lt!215994))))

(assert (= (and d!75425 res!283343) b!474263))

(assert (= (and b!474263 res!283342) b!474264))

(declare-fun m!456645 () Bool)

(assert (=> d!75425 m!456645))

(declare-fun m!456647 () Bool)

(assert (=> d!75425 m!456647))

(declare-fun m!456649 () Bool)

(assert (=> d!75425 m!456649))

(declare-fun m!456651 () Bool)

(assert (=> d!75425 m!456651))

(declare-fun m!456653 () Bool)

(assert (=> b!474263 m!456653))

(declare-fun m!456655 () Bool)

(assert (=> b!474264 m!456655))

(assert (=> b!474163 d!75425))

(declare-fun d!75427 () Bool)

(declare-fun e!278376 () Bool)

(assert (=> d!75427 e!278376))

(declare-fun res!283345 () Bool)

(assert (=> d!75427 (=> (not res!283345) (not e!278376))))

(declare-fun lt!216106 () ListLongMap!7811)

(assert (=> d!75427 (= res!283345 (contains!2554 lt!216106 (_1!4452 lt!215994)))))

(declare-fun lt!216104 () List!8995)

(assert (=> d!75427 (= lt!216106 (ListLongMap!7812 lt!216104))))

(declare-fun lt!216107 () Unit!13965)

(declare-fun lt!216105 () Unit!13965)

(assert (=> d!75427 (= lt!216107 lt!216105)))

(assert (=> d!75427 (= (getValueByKey!380 lt!216104 (_1!4452 lt!215994)) (Some!385 (_2!4452 lt!215994)))))

(assert (=> d!75427 (= lt!216105 (lemmaContainsTupThenGetReturnValue!204 lt!216104 (_1!4452 lt!215994) (_2!4452 lt!215994)))))

(assert (=> d!75427 (= lt!216104 (insertStrictlySorted!206 (toList!3921 (+!1726 lt!215998 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (_1!4452 lt!215994) (_2!4452 lt!215994)))))

(assert (=> d!75427 (= (+!1726 (+!1726 lt!215998 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215994) lt!216106)))

(declare-fun b!474265 () Bool)

(declare-fun res!283344 () Bool)

(assert (=> b!474265 (=> (not res!283344) (not e!278376))))

(assert (=> b!474265 (= res!283344 (= (getValueByKey!380 (toList!3921 lt!216106) (_1!4452 lt!215994)) (Some!385 (_2!4452 lt!215994))))))

(declare-fun b!474266 () Bool)

(assert (=> b!474266 (= e!278376 (contains!2555 (toList!3921 lt!216106) lt!215994))))

(assert (= (and d!75427 res!283345) b!474265))

(assert (= (and b!474265 res!283344) b!474266))

(declare-fun m!456657 () Bool)

(assert (=> d!75427 m!456657))

(declare-fun m!456659 () Bool)

(assert (=> d!75427 m!456659))

(declare-fun m!456661 () Bool)

(assert (=> d!75427 m!456661))

(declare-fun m!456663 () Bool)

(assert (=> d!75427 m!456663))

(declare-fun m!456665 () Bool)

(assert (=> b!474265 m!456665))

(declare-fun m!456667 () Bool)

(assert (=> b!474266 m!456667))

(assert (=> b!474163 d!75427))

(declare-fun d!75429 () Bool)

(declare-fun e!278377 () Bool)

(assert (=> d!75429 e!278377))

(declare-fun res!283347 () Bool)

(assert (=> d!75429 (=> (not res!283347) (not e!278377))))

(declare-fun lt!216110 () ListLongMap!7811)

(assert (=> d!75429 (= res!283347 (contains!2554 lt!216110 (_1!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun lt!216108 () List!8995)

(assert (=> d!75429 (= lt!216110 (ListLongMap!7812 lt!216108))))

(declare-fun lt!216111 () Unit!13965)

(declare-fun lt!216109 () Unit!13965)

(assert (=> d!75429 (= lt!216111 lt!216109)))

(assert (=> d!75429 (= (getValueByKey!380 lt!216108 (_1!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!385 (_2!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75429 (= lt!216109 (lemmaContainsTupThenGetReturnValue!204 lt!216108 (_1!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75429 (= lt!216108 (insertStrictlySorted!206 (toList!3921 lt!215998) (_1!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75429 (= (+!1726 lt!215998 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!216110)))

(declare-fun b!474267 () Bool)

(declare-fun res!283346 () Bool)

(assert (=> b!474267 (=> (not res!283346) (not e!278377))))

(assert (=> b!474267 (= res!283346 (= (getValueByKey!380 (toList!3921 lt!216110) (_1!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!385 (_2!4452 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))))

(declare-fun b!474268 () Bool)

(assert (=> b!474268 (= e!278377 (contains!2555 (toList!3921 lt!216110) (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(assert (= (and d!75429 res!283347) b!474267))

(assert (= (and b!474267 res!283346) b!474268))

(declare-fun m!456669 () Bool)

(assert (=> d!75429 m!456669))

(declare-fun m!456671 () Bool)

(assert (=> d!75429 m!456671))

(declare-fun m!456673 () Bool)

(assert (=> d!75429 m!456673))

(declare-fun m!456675 () Bool)

(assert (=> d!75429 m!456675))

(declare-fun m!456677 () Bool)

(assert (=> b!474267 m!456677))

(declare-fun m!456679 () Bool)

(assert (=> b!474268 m!456679))

(assert (=> b!474163 d!75429))

(declare-fun bm!30546 () Bool)

(declare-fun call!30555 () ListLongMap!7811)

(declare-fun call!30550 () ListLongMap!7811)

(assert (=> bm!30546 (= call!30555 call!30550)))

(declare-fun bm!30547 () Bool)

(declare-fun c!57038 () Bool)

(declare-fun c!57043 () Bool)

(declare-fun call!30553 () ListLongMap!7811)

(declare-fun call!30551 () ListLongMap!7811)

(assert (=> bm!30547 (= call!30551 (+!1726 (ite c!57043 call!30550 (ite c!57038 call!30555 call!30553)) (ite (or c!57043 c!57038) (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!474269 () Bool)

(declare-fun c!57041 () Bool)

(assert (=> b!474269 (= c!57041 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!278379 () ListLongMap!7811)

(declare-fun e!278381 () ListLongMap!7811)

(assert (=> b!474269 (= e!278379 e!278381)))

(declare-fun b!474270 () Bool)

(declare-fun e!278380 () Bool)

(declare-fun e!278388 () Bool)

(assert (=> b!474270 (= e!278380 e!278388)))

(declare-fun res!283354 () Bool)

(assert (=> b!474270 (=> (not res!283354) (not e!278388))))

(declare-fun lt!216129 () ListLongMap!7811)

(assert (=> b!474270 (= res!283354 (contains!2554 lt!216129 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!474270 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474271 () Bool)

(declare-fun e!278390 () ListLongMap!7811)

(assert (=> b!474271 (= e!278390 e!278379)))

(assert (=> b!474271 (= c!57038 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!474272 () Bool)

(assert (=> b!474272 (= e!278390 (+!1726 call!30551 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!474273 () Bool)

(declare-fun call!30549 () ListLongMap!7811)

(assert (=> b!474273 (= e!278381 call!30549)))

(declare-fun b!474274 () Bool)

(declare-fun e!278384 () Unit!13965)

(declare-fun lt!216118 () Unit!13965)

(assert (=> b!474274 (= e!278384 lt!216118)))

(declare-fun lt!216125 () ListLongMap!7811)

(assert (=> b!474274 (= lt!216125 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216114 () (_ BitVec 64))

(assert (=> b!474274 (= lt!216114 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216126 () (_ BitVec 64))

(assert (=> b!474274 (= lt!216126 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216113 () Unit!13965)

(assert (=> b!474274 (= lt!216113 (addStillContains!292 lt!216125 lt!216114 zeroValue!794 lt!216126))))

(assert (=> b!474274 (contains!2554 (+!1726 lt!216125 (tuple2!8885 lt!216114 zeroValue!794)) lt!216126)))

(declare-fun lt!216131 () Unit!13965)

(assert (=> b!474274 (= lt!216131 lt!216113)))

(declare-fun lt!216133 () ListLongMap!7811)

(assert (=> b!474274 (= lt!216133 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216116 () (_ BitVec 64))

(assert (=> b!474274 (= lt!216116 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216122 () (_ BitVec 64))

(assert (=> b!474274 (= lt!216122 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216117 () Unit!13965)

(assert (=> b!474274 (= lt!216117 (addApplyDifferent!292 lt!216133 lt!216116 minValueBefore!38 lt!216122))))

(assert (=> b!474274 (= (apply!333 (+!1726 lt!216133 (tuple2!8885 lt!216116 minValueBefore!38)) lt!216122) (apply!333 lt!216133 lt!216122))))

(declare-fun lt!216128 () Unit!13965)

(assert (=> b!474274 (= lt!216128 lt!216117)))

(declare-fun lt!216120 () ListLongMap!7811)

(assert (=> b!474274 (= lt!216120 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216119 () (_ BitVec 64))

(assert (=> b!474274 (= lt!216119 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216127 () (_ BitVec 64))

(assert (=> b!474274 (= lt!216127 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216130 () Unit!13965)

(assert (=> b!474274 (= lt!216130 (addApplyDifferent!292 lt!216120 lt!216119 zeroValue!794 lt!216127))))

(assert (=> b!474274 (= (apply!333 (+!1726 lt!216120 (tuple2!8885 lt!216119 zeroValue!794)) lt!216127) (apply!333 lt!216120 lt!216127))))

(declare-fun lt!216112 () Unit!13965)

(assert (=> b!474274 (= lt!216112 lt!216130)))

(declare-fun lt!216132 () ListLongMap!7811)

(assert (=> b!474274 (= lt!216132 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216115 () (_ BitVec 64))

(assert (=> b!474274 (= lt!216115 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216121 () (_ BitVec 64))

(assert (=> b!474274 (= lt!216121 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!474274 (= lt!216118 (addApplyDifferent!292 lt!216132 lt!216115 minValueBefore!38 lt!216121))))

(assert (=> b!474274 (= (apply!333 (+!1726 lt!216132 (tuple2!8885 lt!216115 minValueBefore!38)) lt!216121) (apply!333 lt!216132 lt!216121))))

(declare-fun b!474275 () Bool)

(declare-fun res!283355 () Bool)

(declare-fun e!278386 () Bool)

(assert (=> b!474275 (=> (not res!283355) (not e!278386))))

(assert (=> b!474275 (= res!283355 e!278380)))

(declare-fun res!283348 () Bool)

(assert (=> b!474275 (=> res!283348 e!278380)))

(declare-fun e!278378 () Bool)

(assert (=> b!474275 (= res!283348 (not e!278378))))

(declare-fun res!283356 () Bool)

(assert (=> b!474275 (=> (not res!283356) (not e!278378))))

(assert (=> b!474275 (= res!283356 (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474276 () Bool)

(declare-fun e!278385 () Bool)

(assert (=> b!474276 (= e!278386 e!278385)))

(declare-fun c!57042 () Bool)

(assert (=> b!474276 (= c!57042 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!474277 () Bool)

(declare-fun e!278387 () Bool)

(declare-fun e!278389 () Bool)

(assert (=> b!474277 (= e!278387 e!278389)))

(declare-fun res!283350 () Bool)

(declare-fun call!30554 () Bool)

(assert (=> b!474277 (= res!283350 call!30554)))

(assert (=> b!474277 (=> (not res!283350) (not e!278389))))

(declare-fun b!474279 () Bool)

(declare-fun Unit!13970 () Unit!13965)

(assert (=> b!474279 (= e!278384 Unit!13970)))

(declare-fun bm!30548 () Bool)

(assert (=> bm!30548 (= call!30549 call!30551)))

(declare-fun bm!30549 () Bool)

(assert (=> bm!30549 (= call!30550 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474280 () Bool)

(assert (=> b!474280 (= e!278389 (= (apply!333 lt!216129 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!474281 () Bool)

(assert (=> b!474281 (= e!278388 (= (apply!333 lt!216129 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)) (get!7139 (select (arr!14669 _values!833) #b00000000000000000000000000000000) (dynLambda!925 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!474281 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15021 _values!833)))))

(assert (=> b!474281 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474282 () Bool)

(declare-fun e!278383 () Bool)

(assert (=> b!474282 (= e!278383 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!474283 () Bool)

(assert (=> b!474283 (= e!278381 call!30553)))

(declare-fun b!474284 () Bool)

(declare-fun call!30552 () Bool)

(assert (=> b!474284 (= e!278385 (not call!30552))))

(declare-fun bm!30550 () Bool)

(assert (=> bm!30550 (= call!30552 (contains!2554 lt!216129 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30551 () Bool)

(assert (=> bm!30551 (= call!30554 (contains!2554 lt!216129 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!474285 () Bool)

(declare-fun e!278382 () Bool)

(assert (=> b!474285 (= e!278385 e!278382)))

(declare-fun res!283351 () Bool)

(assert (=> b!474285 (= res!283351 call!30552)))

(assert (=> b!474285 (=> (not res!283351) (not e!278382))))

(declare-fun b!474286 () Bool)

(assert (=> b!474286 (= e!278387 (not call!30554))))

(declare-fun b!474278 () Bool)

(assert (=> b!474278 (= e!278378 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75431 () Bool)

(assert (=> d!75431 e!278386))

(declare-fun res!283349 () Bool)

(assert (=> d!75431 (=> (not res!283349) (not e!278386))))

(assert (=> d!75431 (= res!283349 (or (bvsge #b00000000000000000000000000000000 (size!15022 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))))

(declare-fun lt!216123 () ListLongMap!7811)

(assert (=> d!75431 (= lt!216129 lt!216123)))

(declare-fun lt!216124 () Unit!13965)

(assert (=> d!75431 (= lt!216124 e!278384)))

(declare-fun c!57039 () Bool)

(assert (=> d!75431 (= c!57039 e!278383)))

(declare-fun res!283353 () Bool)

(assert (=> d!75431 (=> (not res!283353) (not e!278383))))

(assert (=> d!75431 (= res!283353 (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(assert (=> d!75431 (= lt!216123 e!278390)))

(assert (=> d!75431 (= c!57043 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75431 (validMask!0 mask!1365)))

(assert (=> d!75431 (= (getCurrentListMap!2263 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216129)))

(declare-fun b!474287 () Bool)

(declare-fun res!283352 () Bool)

(assert (=> b!474287 (=> (not res!283352) (not e!278386))))

(assert (=> b!474287 (= res!283352 e!278387)))

(declare-fun c!57040 () Bool)

(assert (=> b!474287 (= c!57040 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30552 () Bool)

(assert (=> bm!30552 (= call!30553 call!30555)))

(declare-fun b!474288 () Bool)

(assert (=> b!474288 (= e!278382 (= (apply!333 lt!216129 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!474289 () Bool)

(assert (=> b!474289 (= e!278379 call!30549)))

(assert (= (and d!75431 c!57043) b!474272))

(assert (= (and d!75431 (not c!57043)) b!474271))

(assert (= (and b!474271 c!57038) b!474289))

(assert (= (and b!474271 (not c!57038)) b!474269))

(assert (= (and b!474269 c!57041) b!474273))

(assert (= (and b!474269 (not c!57041)) b!474283))

(assert (= (or b!474273 b!474283) bm!30552))

(assert (= (or b!474289 bm!30552) bm!30546))

(assert (= (or b!474289 b!474273) bm!30548))

(assert (= (or b!474272 bm!30546) bm!30549))

(assert (= (or b!474272 bm!30548) bm!30547))

(assert (= (and d!75431 res!283353) b!474282))

(assert (= (and d!75431 c!57039) b!474274))

(assert (= (and d!75431 (not c!57039)) b!474279))

(assert (= (and d!75431 res!283349) b!474275))

(assert (= (and b!474275 res!283356) b!474278))

(assert (= (and b!474275 (not res!283348)) b!474270))

(assert (= (and b!474270 res!283354) b!474281))

(assert (= (and b!474275 res!283355) b!474287))

(assert (= (and b!474287 c!57040) b!474277))

(assert (= (and b!474287 (not c!57040)) b!474286))

(assert (= (and b!474277 res!283350) b!474280))

(assert (= (or b!474277 b!474286) bm!30551))

(assert (= (and b!474287 res!283352) b!474276))

(assert (= (and b!474276 c!57042) b!474285))

(assert (= (and b!474276 (not c!57042)) b!474284))

(assert (= (and b!474285 res!283351) b!474288))

(assert (= (or b!474285 b!474284) bm!30550))

(declare-fun b_lambda!10261 () Bool)

(assert (=> (not b_lambda!10261) (not b!474281)))

(assert (=> b!474281 t!14980))

(declare-fun b_and!20459 () Bool)

(assert (= b_and!20457 (and (=> t!14980 result!7459) b_and!20459)))

(assert (=> b!474270 m!456589))

(assert (=> b!474270 m!456589))

(declare-fun m!456681 () Bool)

(assert (=> b!474270 m!456681))

(declare-fun m!456683 () Bool)

(assert (=> bm!30547 m!456683))

(declare-fun m!456685 () Bool)

(assert (=> b!474272 m!456685))

(assert (=> d!75431 m!456527))

(declare-fun m!456687 () Bool)

(assert (=> b!474274 m!456687))

(declare-fun m!456689 () Bool)

(assert (=> b!474274 m!456689))

(declare-fun m!456691 () Bool)

(assert (=> b!474274 m!456691))

(declare-fun m!456693 () Bool)

(assert (=> b!474274 m!456693))

(declare-fun m!456695 () Bool)

(assert (=> b!474274 m!456695))

(declare-fun m!456697 () Bool)

(assert (=> b!474274 m!456697))

(assert (=> b!474274 m!456539))

(declare-fun m!456699 () Bool)

(assert (=> b!474274 m!456699))

(declare-fun m!456701 () Bool)

(assert (=> b!474274 m!456701))

(declare-fun m!456703 () Bool)

(assert (=> b!474274 m!456703))

(assert (=> b!474274 m!456693))

(declare-fun m!456705 () Bool)

(assert (=> b!474274 m!456705))

(declare-fun m!456707 () Bool)

(assert (=> b!474274 m!456707))

(declare-fun m!456709 () Bool)

(assert (=> b!474274 m!456709))

(assert (=> b!474274 m!456699))

(assert (=> b!474274 m!456589))

(declare-fun m!456711 () Bool)

(assert (=> b!474274 m!456711))

(assert (=> b!474274 m!456695))

(declare-fun m!456713 () Bool)

(assert (=> b!474274 m!456713))

(declare-fun m!456715 () Bool)

(assert (=> b!474274 m!456715))

(assert (=> b!474274 m!456689))

(declare-fun m!456717 () Bool)

(assert (=> bm!30551 m!456717))

(declare-fun m!456719 () Bool)

(assert (=> b!474288 m!456719))

(assert (=> b!474281 m!456589))

(declare-fun m!456721 () Bool)

(assert (=> b!474281 m!456721))

(assert (=> b!474281 m!456589))

(assert (=> b!474281 m!456633))

(assert (=> b!474281 m!456635))

(assert (=> b!474281 m!456635))

(assert (=> b!474281 m!456633))

(assert (=> b!474281 m!456637))

(assert (=> b!474278 m!456589))

(assert (=> b!474278 m!456589))

(assert (=> b!474278 m!456639))

(declare-fun m!456723 () Bool)

(assert (=> b!474280 m!456723))

(declare-fun m!456725 () Bool)

(assert (=> bm!30550 m!456725))

(assert (=> bm!30549 m!456539))

(assert (=> b!474282 m!456589))

(assert (=> b!474282 m!456589))

(assert (=> b!474282 m!456639))

(assert (=> b!474163 d!75431))

(declare-fun d!75433 () Bool)

(declare-fun e!278391 () Bool)

(assert (=> d!75433 e!278391))

(declare-fun res!283358 () Bool)

(assert (=> d!75433 (=> (not res!283358) (not e!278391))))

(declare-fun lt!216136 () ListLongMap!7811)

(assert (=> d!75433 (= res!283358 (contains!2554 lt!216136 (_1!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(declare-fun lt!216134 () List!8995)

(assert (=> d!75433 (= lt!216136 (ListLongMap!7812 lt!216134))))

(declare-fun lt!216137 () Unit!13965)

(declare-fun lt!216135 () Unit!13965)

(assert (=> d!75433 (= lt!216137 lt!216135)))

(assert (=> d!75433 (= (getValueByKey!380 lt!216134 (_1!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))) (Some!385 (_2!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75433 (= lt!216135 (lemmaContainsTupThenGetReturnValue!204 lt!216134 (_1!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) (_2!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75433 (= lt!216134 (insertStrictlySorted!206 (toList!3921 lt!215999) (_1!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) (_2!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75433 (= (+!1726 lt!215999 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) lt!216136)))

(declare-fun b!474290 () Bool)

(declare-fun res!283357 () Bool)

(assert (=> b!474290 (=> (not res!283357) (not e!278391))))

(assert (=> b!474290 (= res!283357 (= (getValueByKey!380 (toList!3921 lt!216136) (_1!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))) (Some!385 (_2!4452 (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))))

(declare-fun b!474291 () Bool)

(assert (=> b!474291 (= e!278391 (contains!2555 (toList!3921 lt!216136) (tuple2!8885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(assert (= (and d!75433 res!283358) b!474290))

(assert (= (and b!474290 res!283357) b!474291))

(declare-fun m!456727 () Bool)

(assert (=> d!75433 m!456727))

(declare-fun m!456729 () Bool)

(assert (=> d!75433 m!456729))

(declare-fun m!456731 () Bool)

(assert (=> d!75433 m!456731))

(declare-fun m!456733 () Bool)

(assert (=> d!75433 m!456733))

(declare-fun m!456735 () Bool)

(assert (=> b!474290 m!456735))

(declare-fun m!456737 () Bool)

(assert (=> b!474291 m!456737))

(assert (=> b!474163 d!75433))

(declare-fun d!75435 () Bool)

(assert (=> d!75435 (= (+!1726 lt!215998 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (+!1726 (+!1726 lt!215998 (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (tuple2!8885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun lt!216140 () Unit!13965)

(declare-fun choose!1361 (ListLongMap!7811 (_ BitVec 64) V!18965 V!18965) Unit!13965)

(assert (=> d!75435 (= lt!216140 (choose!1361 lt!215998 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> d!75435 (= (addSameAsAddTwiceSameKeyDiffValues!163 lt!215998 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38) lt!216140)))

(declare-fun bs!15057 () Bool)

(assert (= bs!15057 d!75435))

(declare-fun m!456739 () Bool)

(assert (=> bs!15057 m!456739))

(assert (=> bs!15057 m!456543))

(assert (=> bs!15057 m!456543))

(declare-fun m!456741 () Bool)

(assert (=> bs!15057 m!456741))

(declare-fun m!456743 () Bool)

(assert (=> bs!15057 m!456743))

(assert (=> b!474163 d!75435))

(declare-fun bm!30555 () Bool)

(declare-fun call!30558 () Bool)

(declare-fun c!57046 () Bool)

(assert (=> bm!30555 (= call!30558 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57046 (Cons!8992 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000) Nil!8993) Nil!8993)))))

(declare-fun b!474302 () Bool)

(declare-fun e!278403 () Bool)

(declare-fun e!278402 () Bool)

(assert (=> b!474302 (= e!278403 e!278402)))

(assert (=> b!474302 (= c!57046 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!474303 () Bool)

(declare-fun e!278401 () Bool)

(declare-fun contains!2556 (List!8996 (_ BitVec 64)) Bool)

(assert (=> b!474303 (= e!278401 (contains!2556 Nil!8993 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!474304 () Bool)

(declare-fun e!278400 () Bool)

(assert (=> b!474304 (= e!278400 e!278403)))

(declare-fun res!283366 () Bool)

(assert (=> b!474304 (=> (not res!283366) (not e!278403))))

(assert (=> b!474304 (= res!283366 (not e!278401))))

(declare-fun res!283367 () Bool)

(assert (=> b!474304 (=> (not res!283367) (not e!278401))))

(assert (=> b!474304 (= res!283367 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75437 () Bool)

(declare-fun res!283365 () Bool)

(assert (=> d!75437 (=> res!283365 e!278400)))

(assert (=> d!75437 (= res!283365 (bvsge #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(assert (=> d!75437 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8993) e!278400)))

(declare-fun b!474305 () Bool)

(assert (=> b!474305 (= e!278402 call!30558)))

(declare-fun b!474306 () Bool)

(assert (=> b!474306 (= e!278402 call!30558)))

(assert (= (and d!75437 (not res!283365)) b!474304))

(assert (= (and b!474304 res!283367) b!474303))

(assert (= (and b!474304 res!283366) b!474302))

(assert (= (and b!474302 c!57046) b!474306))

(assert (= (and b!474302 (not c!57046)) b!474305))

(assert (= (or b!474306 b!474305) bm!30555))

(assert (=> bm!30555 m!456589))

(declare-fun m!456745 () Bool)

(assert (=> bm!30555 m!456745))

(assert (=> b!474302 m!456589))

(assert (=> b!474302 m!456589))

(assert (=> b!474302 m!456639))

(assert (=> b!474303 m!456589))

(assert (=> b!474303 m!456589))

(declare-fun m!456747 () Bool)

(assert (=> b!474303 m!456747))

(assert (=> b!474304 m!456589))

(assert (=> b!474304 m!456589))

(assert (=> b!474304 m!456639))

(assert (=> b!474167 d!75437))

(declare-fun d!75439 () Bool)

(assert (=> d!75439 (= (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216143 () Unit!13965)

(declare-fun choose!1362 (array!30509 array!30507 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18965 V!18965 V!18965 V!18965 (_ BitVec 32) Int) Unit!13965)

(assert (=> d!75439 (= lt!216143 (choose!1362 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75439 (validMask!0 mask!1365)))

(assert (=> d!75439 (= (lemmaNoChangeToArrayThenSameMapNoExtras!270 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216143)))

(declare-fun bs!15058 () Bool)

(assert (= bs!15058 d!75439))

(assert (=> bs!15058 m!456539))

(assert (=> bs!15058 m!456537))

(declare-fun m!456749 () Bool)

(assert (=> bs!15058 m!456749))

(assert (=> bs!15058 m!456527))

(assert (=> b!474169 d!75439))

(declare-fun b!474331 () Bool)

(declare-fun e!278423 () Bool)

(declare-fun lt!216164 () ListLongMap!7811)

(declare-fun isEmpty!585 (ListLongMap!7811) Bool)

(assert (=> b!474331 (= e!278423 (isEmpty!585 lt!216164))))

(declare-fun d!75441 () Bool)

(declare-fun e!278424 () Bool)

(assert (=> d!75441 e!278424))

(declare-fun res!283377 () Bool)

(assert (=> d!75441 (=> (not res!283377) (not e!278424))))

(assert (=> d!75441 (= res!283377 (not (contains!2554 lt!216164 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!278422 () ListLongMap!7811)

(assert (=> d!75441 (= lt!216164 e!278422)))

(declare-fun c!57057 () Bool)

(assert (=> d!75441 (= c!57057 (bvsge #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(assert (=> d!75441 (validMask!0 mask!1365)))

(assert (=> d!75441 (= (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216164)))

(declare-fun b!474332 () Bool)

(declare-fun e!278421 () Bool)

(assert (=> b!474332 (= e!278424 e!278421)))

(declare-fun c!57055 () Bool)

(declare-fun e!278420 () Bool)

(assert (=> b!474332 (= c!57055 e!278420)))

(declare-fun res!283378 () Bool)

(assert (=> b!474332 (=> (not res!283378) (not e!278420))))

(assert (=> b!474332 (= res!283378 (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474333 () Bool)

(declare-fun res!283379 () Bool)

(assert (=> b!474333 (=> (not res!283379) (not e!278424))))

(assert (=> b!474333 (= res!283379 (not (contains!2554 lt!216164 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!474334 () Bool)

(assert (=> b!474334 (= e!278420 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!474334 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!30558 () Bool)

(declare-fun call!30561 () ListLongMap!7811)

(assert (=> bm!30558 (= call!30561 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!474335 () Bool)

(assert (=> b!474335 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(assert (=> b!474335 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15021 _values!833)))))

(declare-fun e!278419 () Bool)

(assert (=> b!474335 (= e!278419 (= (apply!333 lt!216164 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)) (get!7139 (select (arr!14669 _values!833) #b00000000000000000000000000000000) (dynLambda!925 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!474336 () Bool)

(assert (=> b!474336 (= e!278421 e!278423)))

(declare-fun c!57056 () Bool)

(assert (=> b!474336 (= c!57056 (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474337 () Bool)

(assert (=> b!474337 (= e!278423 (= lt!216164 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!474338 () Bool)

(declare-fun lt!216161 () Unit!13965)

(declare-fun lt!216162 () Unit!13965)

(assert (=> b!474338 (= lt!216161 lt!216162)))

(declare-fun lt!216163 () (_ BitVec 64))

(declare-fun lt!216160 () ListLongMap!7811)

(declare-fun lt!216159 () (_ BitVec 64))

(declare-fun lt!216158 () V!18965)

(assert (=> b!474338 (not (contains!2554 (+!1726 lt!216160 (tuple2!8885 lt!216159 lt!216158)) lt!216163))))

(declare-fun addStillNotContains!168 (ListLongMap!7811 (_ BitVec 64) V!18965 (_ BitVec 64)) Unit!13965)

(assert (=> b!474338 (= lt!216162 (addStillNotContains!168 lt!216160 lt!216159 lt!216158 lt!216163))))

(assert (=> b!474338 (= lt!216163 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!474338 (= lt!216158 (get!7139 (select (arr!14669 _values!833) #b00000000000000000000000000000000) (dynLambda!925 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!474338 (= lt!216159 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!474338 (= lt!216160 call!30561)))

(declare-fun e!278418 () ListLongMap!7811)

(assert (=> b!474338 (= e!278418 (+!1726 call!30561 (tuple2!8885 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000) (get!7139 (select (arr!14669 _values!833) #b00000000000000000000000000000000) (dynLambda!925 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!474339 () Bool)

(assert (=> b!474339 (= e!278422 e!278418)))

(declare-fun c!57058 () Bool)

(assert (=> b!474339 (= c!57058 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!474340 () Bool)

(assert (=> b!474340 (= e!278422 (ListLongMap!7812 Nil!8992))))

(declare-fun b!474341 () Bool)

(assert (=> b!474341 (= e!278418 call!30561)))

(declare-fun b!474342 () Bool)

(assert (=> b!474342 (= e!278421 e!278419)))

(assert (=> b!474342 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun res!283376 () Bool)

(assert (=> b!474342 (= res!283376 (contains!2554 lt!216164 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!474342 (=> (not res!283376) (not e!278419))))

(assert (= (and d!75441 c!57057) b!474340))

(assert (= (and d!75441 (not c!57057)) b!474339))

(assert (= (and b!474339 c!57058) b!474338))

(assert (= (and b!474339 (not c!57058)) b!474341))

(assert (= (or b!474338 b!474341) bm!30558))

(assert (= (and d!75441 res!283377) b!474333))

(assert (= (and b!474333 res!283379) b!474332))

(assert (= (and b!474332 res!283378) b!474334))

(assert (= (and b!474332 c!57055) b!474342))

(assert (= (and b!474332 (not c!57055)) b!474336))

(assert (= (and b!474342 res!283376) b!474335))

(assert (= (and b!474336 c!57056) b!474337))

(assert (= (and b!474336 (not c!57056)) b!474331))

(declare-fun b_lambda!10263 () Bool)

(assert (=> (not b_lambda!10263) (not b!474335)))

(assert (=> b!474335 t!14980))

(declare-fun b_and!20461 () Bool)

(assert (= b_and!20459 (and (=> t!14980 result!7459) b_and!20461)))

(declare-fun b_lambda!10265 () Bool)

(assert (=> (not b_lambda!10265) (not b!474338)))

(assert (=> b!474338 t!14980))

(declare-fun b_and!20463 () Bool)

(assert (= b_and!20461 (and (=> t!14980 result!7459) b_and!20463)))

(declare-fun m!456751 () Bool)

(assert (=> d!75441 m!456751))

(assert (=> d!75441 m!456527))

(assert (=> b!474342 m!456589))

(assert (=> b!474342 m!456589))

(declare-fun m!456753 () Bool)

(assert (=> b!474342 m!456753))

(assert (=> b!474334 m!456589))

(assert (=> b!474334 m!456589))

(assert (=> b!474334 m!456639))

(declare-fun m!456755 () Bool)

(assert (=> b!474331 m!456755))

(declare-fun m!456757 () Bool)

(assert (=> b!474333 m!456757))

(assert (=> b!474339 m!456589))

(assert (=> b!474339 m!456589))

(assert (=> b!474339 m!456639))

(declare-fun m!456759 () Bool)

(assert (=> bm!30558 m!456759))

(declare-fun m!456761 () Bool)

(assert (=> b!474338 m!456761))

(assert (=> b!474338 m!456635))

(assert (=> b!474338 m!456633))

(assert (=> b!474338 m!456637))

(declare-fun m!456763 () Bool)

(assert (=> b!474338 m!456763))

(declare-fun m!456765 () Bool)

(assert (=> b!474338 m!456765))

(assert (=> b!474338 m!456763))

(declare-fun m!456767 () Bool)

(assert (=> b!474338 m!456767))

(assert (=> b!474338 m!456633))

(assert (=> b!474338 m!456635))

(assert (=> b!474338 m!456589))

(assert (=> b!474337 m!456759))

(assert (=> b!474335 m!456589))

(declare-fun m!456769 () Bool)

(assert (=> b!474335 m!456769))

(assert (=> b!474335 m!456635))

(assert (=> b!474335 m!456633))

(assert (=> b!474335 m!456637))

(assert (=> b!474335 m!456633))

(assert (=> b!474335 m!456635))

(assert (=> b!474335 m!456589))

(assert (=> b!474169 d!75441))

(declare-fun b!474343 () Bool)

(declare-fun e!278430 () Bool)

(declare-fun lt!216171 () ListLongMap!7811)

(assert (=> b!474343 (= e!278430 (isEmpty!585 lt!216171))))

(declare-fun d!75443 () Bool)

(declare-fun e!278431 () Bool)

(assert (=> d!75443 e!278431))

(declare-fun res!283381 () Bool)

(assert (=> d!75443 (=> (not res!283381) (not e!278431))))

(assert (=> d!75443 (= res!283381 (not (contains!2554 lt!216171 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!278429 () ListLongMap!7811)

(assert (=> d!75443 (= lt!216171 e!278429)))

(declare-fun c!57061 () Bool)

(assert (=> d!75443 (= c!57061 (bvsge #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(assert (=> d!75443 (validMask!0 mask!1365)))

(assert (=> d!75443 (= (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216171)))

(declare-fun b!474344 () Bool)

(declare-fun e!278428 () Bool)

(assert (=> b!474344 (= e!278431 e!278428)))

(declare-fun c!57059 () Bool)

(declare-fun e!278427 () Bool)

(assert (=> b!474344 (= c!57059 e!278427)))

(declare-fun res!283382 () Bool)

(assert (=> b!474344 (=> (not res!283382) (not e!278427))))

(assert (=> b!474344 (= res!283382 (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474345 () Bool)

(declare-fun res!283383 () Bool)

(assert (=> b!474345 (=> (not res!283383) (not e!278431))))

(assert (=> b!474345 (= res!283383 (not (contains!2554 lt!216171 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!474346 () Bool)

(assert (=> b!474346 (= e!278427 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!474346 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun call!30562 () ListLongMap!7811)

(declare-fun bm!30559 () Bool)

(assert (=> bm!30559 (= call!30562 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!474347 () Bool)

(assert (=> b!474347 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(assert (=> b!474347 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15021 _values!833)))))

(declare-fun e!278426 () Bool)

(assert (=> b!474347 (= e!278426 (= (apply!333 lt!216171 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)) (get!7139 (select (arr!14669 _values!833) #b00000000000000000000000000000000) (dynLambda!925 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!474348 () Bool)

(assert (=> b!474348 (= e!278428 e!278430)))

(declare-fun c!57060 () Bool)

(assert (=> b!474348 (= c!57060 (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun b!474349 () Bool)

(assert (=> b!474349 (= e!278430 (= lt!216171 (getCurrentListMapNoExtraKeys!2075 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!474350 () Bool)

(declare-fun lt!216168 () Unit!13965)

(declare-fun lt!216169 () Unit!13965)

(assert (=> b!474350 (= lt!216168 lt!216169)))

(declare-fun lt!216170 () (_ BitVec 64))

(declare-fun lt!216166 () (_ BitVec 64))

(declare-fun lt!216167 () ListLongMap!7811)

(declare-fun lt!216165 () V!18965)

(assert (=> b!474350 (not (contains!2554 (+!1726 lt!216167 (tuple2!8885 lt!216166 lt!216165)) lt!216170))))

(assert (=> b!474350 (= lt!216169 (addStillNotContains!168 lt!216167 lt!216166 lt!216165 lt!216170))))

(assert (=> b!474350 (= lt!216170 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!474350 (= lt!216165 (get!7139 (select (arr!14669 _values!833) #b00000000000000000000000000000000) (dynLambda!925 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!474350 (= lt!216166 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!474350 (= lt!216167 call!30562)))

(declare-fun e!278425 () ListLongMap!7811)

(assert (=> b!474350 (= e!278425 (+!1726 call!30562 (tuple2!8885 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000) (get!7139 (select (arr!14669 _values!833) #b00000000000000000000000000000000) (dynLambda!925 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!474351 () Bool)

(assert (=> b!474351 (= e!278429 e!278425)))

(declare-fun c!57062 () Bool)

(assert (=> b!474351 (= c!57062 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!474352 () Bool)

(assert (=> b!474352 (= e!278429 (ListLongMap!7812 Nil!8992))))

(declare-fun b!474353 () Bool)

(assert (=> b!474353 (= e!278425 call!30562)))

(declare-fun b!474354 () Bool)

(assert (=> b!474354 (= e!278428 e!278426)))

(assert (=> b!474354 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(declare-fun res!283380 () Bool)

(assert (=> b!474354 (= res!283380 (contains!2554 lt!216171 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!474354 (=> (not res!283380) (not e!278426))))

(assert (= (and d!75443 c!57061) b!474352))

(assert (= (and d!75443 (not c!57061)) b!474351))

(assert (= (and b!474351 c!57062) b!474350))

(assert (= (and b!474351 (not c!57062)) b!474353))

(assert (= (or b!474350 b!474353) bm!30559))

(assert (= (and d!75443 res!283381) b!474345))

(assert (= (and b!474345 res!283383) b!474344))

(assert (= (and b!474344 res!283382) b!474346))

(assert (= (and b!474344 c!57059) b!474354))

(assert (= (and b!474344 (not c!57059)) b!474348))

(assert (= (and b!474354 res!283380) b!474347))

(assert (= (and b!474348 c!57060) b!474349))

(assert (= (and b!474348 (not c!57060)) b!474343))

(declare-fun b_lambda!10267 () Bool)

(assert (=> (not b_lambda!10267) (not b!474347)))

(assert (=> b!474347 t!14980))

(declare-fun b_and!20465 () Bool)

(assert (= b_and!20463 (and (=> t!14980 result!7459) b_and!20465)))

(declare-fun b_lambda!10269 () Bool)

(assert (=> (not b_lambda!10269) (not b!474350)))

(assert (=> b!474350 t!14980))

(declare-fun b_and!20467 () Bool)

(assert (= b_and!20465 (and (=> t!14980 result!7459) b_and!20467)))

(declare-fun m!456771 () Bool)

(assert (=> d!75443 m!456771))

(assert (=> d!75443 m!456527))

(assert (=> b!474354 m!456589))

(assert (=> b!474354 m!456589))

(declare-fun m!456773 () Bool)

(assert (=> b!474354 m!456773))

(assert (=> b!474346 m!456589))

(assert (=> b!474346 m!456589))

(assert (=> b!474346 m!456639))

(declare-fun m!456775 () Bool)

(assert (=> b!474343 m!456775))

(declare-fun m!456777 () Bool)

(assert (=> b!474345 m!456777))

(assert (=> b!474351 m!456589))

(assert (=> b!474351 m!456589))

(assert (=> b!474351 m!456639))

(declare-fun m!456779 () Bool)

(assert (=> bm!30559 m!456779))

(declare-fun m!456781 () Bool)

(assert (=> b!474350 m!456781))

(assert (=> b!474350 m!456635))

(assert (=> b!474350 m!456633))

(assert (=> b!474350 m!456637))

(declare-fun m!456783 () Bool)

(assert (=> b!474350 m!456783))

(declare-fun m!456785 () Bool)

(assert (=> b!474350 m!456785))

(assert (=> b!474350 m!456783))

(declare-fun m!456787 () Bool)

(assert (=> b!474350 m!456787))

(assert (=> b!474350 m!456633))

(assert (=> b!474350 m!456635))

(assert (=> b!474350 m!456589))

(assert (=> b!474349 m!456779))

(assert (=> b!474347 m!456589))

(declare-fun m!456789 () Bool)

(assert (=> b!474347 m!456789))

(assert (=> b!474347 m!456635))

(assert (=> b!474347 m!456633))

(assert (=> b!474347 m!456637))

(assert (=> b!474347 m!456633))

(assert (=> b!474347 m!456635))

(assert (=> b!474347 m!456589))

(assert (=> b!474169 d!75443))

(declare-fun b!474363 () Bool)

(declare-fun e!278438 () Bool)

(declare-fun call!30565 () Bool)

(assert (=> b!474363 (= e!278438 call!30565)))

(declare-fun d!75445 () Bool)

(declare-fun res!283389 () Bool)

(declare-fun e!278440 () Bool)

(assert (=> d!75445 (=> res!283389 e!278440)))

(assert (=> d!75445 (= res!283389 (bvsge #b00000000000000000000000000000000 (size!15022 _keys!1025)))))

(assert (=> d!75445 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!278440)))

(declare-fun b!474364 () Bool)

(declare-fun e!278439 () Bool)

(assert (=> b!474364 (= e!278438 e!278439)))

(declare-fun lt!216178 () (_ BitVec 64))

(assert (=> b!474364 (= lt!216178 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216180 () Unit!13965)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30509 (_ BitVec 64) (_ BitVec 32)) Unit!13965)

(assert (=> b!474364 (= lt!216180 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!216178 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!474364 (arrayContainsKey!0 _keys!1025 lt!216178 #b00000000000000000000000000000000)))

(declare-fun lt!216179 () Unit!13965)

(assert (=> b!474364 (= lt!216179 lt!216180)))

(declare-fun res!283388 () Bool)

(declare-datatypes ((SeekEntryResult!3545 0))(
  ( (MissingZero!3545 (index!16359 (_ BitVec 32))) (Found!3545 (index!16360 (_ BitVec 32))) (Intermediate!3545 (undefined!4357 Bool) (index!16361 (_ BitVec 32)) (x!44491 (_ BitVec 32))) (Undefined!3545) (MissingVacant!3545 (index!16362 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30509 (_ BitVec 32)) SeekEntryResult!3545)

(assert (=> b!474364 (= res!283388 (= (seekEntryOrOpen!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3545 #b00000000000000000000000000000000)))))

(assert (=> b!474364 (=> (not res!283388) (not e!278439))))

(declare-fun b!474365 () Bool)

(assert (=> b!474365 (= e!278439 call!30565)))

(declare-fun b!474366 () Bool)

(assert (=> b!474366 (= e!278440 e!278438)))

(declare-fun c!57065 () Bool)

(assert (=> b!474366 (= c!57065 (validKeyInArray!0 (select (arr!14670 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30562 () Bool)

(assert (=> bm!30562 (= call!30565 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(assert (= (and d!75445 (not res!283389)) b!474366))

(assert (= (and b!474366 c!57065) b!474364))

(assert (= (and b!474366 (not c!57065)) b!474363))

(assert (= (and b!474364 res!283388) b!474365))

(assert (= (or b!474365 b!474363) bm!30562))

(assert (=> b!474364 m!456589))

(declare-fun m!456791 () Bool)

(assert (=> b!474364 m!456791))

(declare-fun m!456793 () Bool)

(assert (=> b!474364 m!456793))

(assert (=> b!474364 m!456589))

(declare-fun m!456795 () Bool)

(assert (=> b!474364 m!456795))

(assert (=> b!474366 m!456589))

(assert (=> b!474366 m!456589))

(assert (=> b!474366 m!456639))

(declare-fun m!456797 () Bool)

(assert (=> bm!30562 m!456797))

(assert (=> b!474165 d!75445))

(declare-fun d!75447 () Bool)

(assert (=> d!75447 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42520 d!75447))

(declare-fun d!75449 () Bool)

(assert (=> d!75449 (= (array_inv!10572 _keys!1025) (bvsge (size!15022 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42520 d!75449))

(declare-fun d!75451 () Bool)

(assert (=> d!75451 (= (array_inv!10573 _values!833) (bvsge (size!15021 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42520 d!75451))

(declare-fun mapNonEmpty!21814 () Bool)

(declare-fun mapRes!21814 () Bool)

(declare-fun tp!41947 () Bool)

(declare-fun e!278445 () Bool)

(assert (=> mapNonEmpty!21814 (= mapRes!21814 (and tp!41947 e!278445))))

(declare-fun mapRest!21814 () (Array (_ BitVec 32) ValueCell!6354))

(declare-fun mapKey!21814 () (_ BitVec 32))

(declare-fun mapValue!21814 () ValueCell!6354)

(assert (=> mapNonEmpty!21814 (= mapRest!21808 (store mapRest!21814 mapKey!21814 mapValue!21814))))

(declare-fun condMapEmpty!21814 () Bool)

(declare-fun mapDefault!21814 () ValueCell!6354)

(assert (=> mapNonEmpty!21808 (= condMapEmpty!21814 (= mapRest!21808 ((as const (Array (_ BitVec 32) ValueCell!6354)) mapDefault!21814)))))

(declare-fun e!278446 () Bool)

(assert (=> mapNonEmpty!21808 (= tp!41937 (and e!278446 mapRes!21814))))

(declare-fun b!474373 () Bool)

(assert (=> b!474373 (= e!278445 tp_is_empty!13395)))

(declare-fun mapIsEmpty!21814 () Bool)

(assert (=> mapIsEmpty!21814 mapRes!21814))

(declare-fun b!474374 () Bool)

(assert (=> b!474374 (= e!278446 tp_is_empty!13395)))

(assert (= (and mapNonEmpty!21808 condMapEmpty!21814) mapIsEmpty!21814))

(assert (= (and mapNonEmpty!21808 (not condMapEmpty!21814)) mapNonEmpty!21814))

(assert (= (and mapNonEmpty!21814 ((_ is ValueCellFull!6354) mapValue!21814)) b!474373))

(assert (= (and mapNonEmpty!21808 ((_ is ValueCellFull!6354) mapDefault!21814)) b!474374))

(declare-fun m!456799 () Bool)

(assert (=> mapNonEmpty!21814 m!456799))

(declare-fun b_lambda!10271 () Bool)

(assert (= b_lambda!10267 (or (and start!42520 b_free!11967) b_lambda!10271)))

(declare-fun b_lambda!10273 () Bool)

(assert (= b_lambda!10261 (or (and start!42520 b_free!11967) b_lambda!10273)))

(declare-fun b_lambda!10275 () Bool)

(assert (= b_lambda!10259 (or (and start!42520 b_free!11967) b_lambda!10275)))

(declare-fun b_lambda!10277 () Bool)

(assert (= b_lambda!10263 (or (and start!42520 b_free!11967) b_lambda!10277)))

(declare-fun b_lambda!10279 () Bool)

(assert (= b_lambda!10269 (or (and start!42520 b_free!11967) b_lambda!10279)))

(declare-fun b_lambda!10281 () Bool)

(assert (= b_lambda!10265 (or (and start!42520 b_free!11967) b_lambda!10281)))

(check-sat (not d!75425) (not bm!30559) (not b!474364) (not b!474278) (not b!474281) (not b!474255) (not d!75433) (not b!474304) (not b_next!11967) (not b!474335) (not b!474270) (not b!474263) (not b!474241) (not b_lambda!10277) (not b!474337) (not b!474350) (not b!474245) (not b!474237) (not d!75429) (not b!474288) (not b_lambda!10281) (not b_lambda!10273) (not bm!30542) (not b!474343) (not b!474249) (not b!474333) (not b!474291) (not b!474346) (not bm!30547) (not d!75427) (not b!474264) (not b!474366) (not d!75441) (not b!474280) (not bm!30562) (not b!474302) (not b!474351) (not b!474248) (not b!474342) (not b!474265) (not d!75443) (not b!474345) (not bm!30558) (not d!75435) (not d!75439) (not b!474266) (not b!474338) (not d!75423) b_and!20467 (not bm!30544) (not d!75431) (not bm!30550) (not b!474274) (not b!474272) (not b!474268) (not bm!30543) (not bm!30555) (not bm!30549) (not b!474267) (not b!474239) (not b!474282) (not b!474349) (not b_lambda!10275) tp_is_empty!13395 (not b!474334) (not bm!30540) (not b_lambda!10279) (not b!474347) (not b!474247) (not b!474331) (not b!474339) (not bm!30551) (not b_lambda!10271) (not b!474303) (not b!474290) (not b!474354) (not mapNonEmpty!21814))
(check-sat b_and!20467 (not b_next!11967))
