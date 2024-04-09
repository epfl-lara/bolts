; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78288 () Bool)

(assert start!78288)

(declare-fun b_free!16731 () Bool)

(declare-fun b_next!16731 () Bool)

(assert (=> start!78288 (= b_free!16731 (not b_next!16731))))

(declare-fun tp!58473 () Bool)

(declare-fun b_and!27327 () Bool)

(assert (=> start!78288 (= tp!58473 b_and!27327)))

(declare-fun mapNonEmpty!30454 () Bool)

(declare-fun mapRes!30454 () Bool)

(declare-fun tp!58474 () Bool)

(declare-fun e!512258 () Bool)

(assert (=> mapNonEmpty!30454 (= mapRes!30454 (and tp!58474 e!512258))))

(declare-datatypes ((V!30497 0))(
  ( (V!30498 (val!9625 Int)) )
))
(declare-datatypes ((ValueCell!9093 0))(
  ( (ValueCellFull!9093 (v!12137 V!30497)) (EmptyCell!9093) )
))
(declare-fun mapValue!30454 () ValueCell!9093)

(declare-fun mapKey!30454 () (_ BitVec 32))

(declare-fun mapRest!30454 () (Array (_ BitVec 32) ValueCell!9093))

(declare-datatypes ((array!54302 0))(
  ( (array!54303 (arr!26100 (Array (_ BitVec 32) ValueCell!9093)) (size!26560 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54302)

(assert (=> mapNonEmpty!30454 (= (arr!26100 _values!1152) (store mapRest!30454 mapKey!30454 mapValue!30454))))

(declare-fun res!616120 () Bool)

(declare-fun e!512255 () Bool)

(assert (=> start!78288 (=> (not res!616120) (not e!512255))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78288 (= res!616120 (validMask!0 mask!1756))))

(assert (=> start!78288 e!512255))

(declare-fun e!512253 () Bool)

(declare-fun array_inv!20374 (array!54302) Bool)

(assert (=> start!78288 (and (array_inv!20374 _values!1152) e!512253)))

(assert (=> start!78288 tp!58473))

(assert (=> start!78288 true))

(declare-fun tp_is_empty!19149 () Bool)

(assert (=> start!78288 tp_is_empty!19149))

(declare-datatypes ((array!54304 0))(
  ( (array!54305 (arr!26101 (Array (_ BitVec 32) (_ BitVec 64))) (size!26561 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54304)

(declare-fun array_inv!20375 (array!54304) Bool)

(assert (=> start!78288 (array_inv!20375 _keys!1386)))

(declare-fun mapIsEmpty!30454 () Bool)

(assert (=> mapIsEmpty!30454 mapRes!30454))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30497)

(declare-fun b!913199 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun e!512256 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30497)

(declare-datatypes ((tuple2!12602 0))(
  ( (tuple2!12603 (_1!6311 (_ BitVec 64)) (_2!6311 V!30497)) )
))
(declare-datatypes ((List!18442 0))(
  ( (Nil!18439) (Cons!18438 (h!19584 tuple2!12602) (t!26041 List!18442)) )
))
(declare-datatypes ((ListLongMap!11313 0))(
  ( (ListLongMap!11314 (toList!5672 List!18442)) )
))
(declare-fun contains!4684 (ListLongMap!11313 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2902 (array!54304 array!54302 (_ BitVec 32) (_ BitVec 32) V!30497 V!30497 (_ BitVec 32) Int) ListLongMap!11313)

(assert (=> b!913199 (= e!512256 (contains!4684 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160) k0!1033))))

(declare-fun b!913200 () Bool)

(declare-fun e!512254 () Bool)

(assert (=> b!913200 (= e!512253 (and e!512254 mapRes!30454))))

(declare-fun condMapEmpty!30454 () Bool)

(declare-fun mapDefault!30454 () ValueCell!9093)

(assert (=> b!913200 (= condMapEmpty!30454 (= (arr!26100 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9093)) mapDefault!30454)))))

(declare-fun b!913201 () Bool)

(assert (=> b!913201 (= e!512258 tp_is_empty!19149)))

(declare-fun b!913202 () Bool)

(declare-fun res!616116 () Bool)

(assert (=> b!913202 (=> (not res!616116) (not e!512255))))

(declare-datatypes ((List!18443 0))(
  ( (Nil!18440) (Cons!18439 (h!19585 (_ BitVec 64)) (t!26042 List!18443)) )
))
(declare-fun arrayNoDuplicates!0 (array!54304 (_ BitVec 32) List!18443) Bool)

(assert (=> b!913202 (= res!616116 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18440))))

(declare-fun b!913203 () Bool)

(assert (=> b!913203 (= e!512254 tp_is_empty!19149)))

(declare-fun b!913204 () Bool)

(declare-fun res!616118 () Bool)

(assert (=> b!913204 (=> (not res!616118) (not e!512255))))

(assert (=> b!913204 (= res!616118 (and (= (size!26560 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26561 _keys!1386) (size!26560 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!913205 () Bool)

(declare-fun res!616117 () Bool)

(assert (=> b!913205 (=> (not res!616117) (not e!512255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54304 (_ BitVec 32)) Bool)

(assert (=> b!913205 (= res!616117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!913206 () Bool)

(assert (=> b!913206 (= e!512255 (not e!512256))))

(declare-fun res!616119 () Bool)

(assert (=> b!913206 (=> res!616119 e!512256)))

(assert (=> b!913206 (= res!616119 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26561 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!54304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!913206 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30887 0))(
  ( (Unit!30888) )
))
(declare-fun lt!410782 () Unit!30887)

(declare-fun lemmaKeyInListMapIsInArray!288 (array!54304 array!54302 (_ BitVec 32) (_ BitVec 32) V!30497 V!30497 (_ BitVec 64) Int) Unit!30887)

(assert (=> b!913206 (= lt!410782 (lemmaKeyInListMapIsInArray!288 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!913207 () Bool)

(declare-fun res!616121 () Bool)

(assert (=> b!913207 (=> (not res!616121) (not e!512255))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!913207 (= res!616121 (inRange!0 i!717 mask!1756))))

(declare-fun b!913208 () Bool)

(declare-fun res!616122 () Bool)

(assert (=> b!913208 (=> (not res!616122) (not e!512255))))

(assert (=> b!913208 (= res!616122 (and (= (select (arr!26101 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!913209 () Bool)

(declare-fun res!616123 () Bool)

(assert (=> b!913209 (=> (not res!616123) (not e!512255))))

(assert (=> b!913209 (= res!616123 (contains!4684 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(assert (= (and start!78288 res!616120) b!913204))

(assert (= (and b!913204 res!616118) b!913205))

(assert (= (and b!913205 res!616117) b!913202))

(assert (= (and b!913202 res!616116) b!913209))

(assert (= (and b!913209 res!616123) b!913207))

(assert (= (and b!913207 res!616121) b!913208))

(assert (= (and b!913208 res!616122) b!913206))

(assert (= (and b!913206 (not res!616119)) b!913199))

(assert (= (and b!913200 condMapEmpty!30454) mapIsEmpty!30454))

(assert (= (and b!913200 (not condMapEmpty!30454)) mapNonEmpty!30454))

(get-info :version)

(assert (= (and mapNonEmpty!30454 ((_ is ValueCellFull!9093) mapValue!30454)) b!913201))

(assert (= (and b!913200 ((_ is ValueCellFull!9093) mapDefault!30454)) b!913203))

(assert (= start!78288 b!913200))

(declare-fun m!847615 () Bool)

(assert (=> b!913199 m!847615))

(assert (=> b!913199 m!847615))

(declare-fun m!847617 () Bool)

(assert (=> b!913199 m!847617))

(declare-fun m!847619 () Bool)

(assert (=> start!78288 m!847619))

(declare-fun m!847621 () Bool)

(assert (=> start!78288 m!847621))

(declare-fun m!847623 () Bool)

(assert (=> start!78288 m!847623))

(declare-fun m!847625 () Bool)

(assert (=> b!913208 m!847625))

(declare-fun m!847627 () Bool)

(assert (=> mapNonEmpty!30454 m!847627))

(declare-fun m!847629 () Bool)

(assert (=> b!913206 m!847629))

(declare-fun m!847631 () Bool)

(assert (=> b!913206 m!847631))

(declare-fun m!847633 () Bool)

(assert (=> b!913209 m!847633))

(assert (=> b!913209 m!847633))

(declare-fun m!847635 () Bool)

(assert (=> b!913209 m!847635))

(declare-fun m!847637 () Bool)

(assert (=> b!913205 m!847637))

(declare-fun m!847639 () Bool)

(assert (=> b!913202 m!847639))

(declare-fun m!847641 () Bool)

(assert (=> b!913207 m!847641))

(check-sat tp_is_empty!19149 (not mapNonEmpty!30454) (not b!913202) b_and!27327 (not b!913209) (not b!913207) (not b_next!16731) (not b!913199) (not b!913205) (not b!913206) (not start!78288))
(check-sat b_and!27327 (not b_next!16731))
(get-model)

(declare-fun d!112259 () Bool)

(declare-fun e!512281 () Bool)

(assert (=> d!112259 e!512281))

(declare-fun res!616150 () Bool)

(assert (=> d!112259 (=> res!616150 e!512281)))

(declare-fun lt!410796 () Bool)

(assert (=> d!112259 (= res!616150 (not lt!410796))))

(declare-fun lt!410795 () Bool)

(assert (=> d!112259 (= lt!410796 lt!410795)))

(declare-fun lt!410797 () Unit!30887)

(declare-fun e!512282 () Unit!30887)

(assert (=> d!112259 (= lt!410797 e!512282)))

(declare-fun c!95750 () Bool)

(assert (=> d!112259 (= c!95750 lt!410795)))

(declare-fun containsKey!443 (List!18442 (_ BitVec 64)) Bool)

(assert (=> d!112259 (= lt!410795 (containsKey!443 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033))))

(assert (=> d!112259 (= (contains!4684 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160) k0!1033) lt!410796)))

(declare-fun b!913249 () Bool)

(declare-fun lt!410794 () Unit!30887)

(assert (=> b!913249 (= e!512282 lt!410794)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!338 (List!18442 (_ BitVec 64)) Unit!30887)

(assert (=> b!913249 (= lt!410794 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033))))

(declare-datatypes ((Option!484 0))(
  ( (Some!483 (v!12139 V!30497)) (None!482) )
))
(declare-fun isDefined!348 (Option!484) Bool)

(declare-fun getValueByKey!478 (List!18442 (_ BitVec 64)) Option!484)

(assert (=> b!913249 (isDefined!348 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033))))

(declare-fun b!913250 () Bool)

(declare-fun Unit!30891 () Unit!30887)

(assert (=> b!913250 (= e!512282 Unit!30891)))

(declare-fun b!913251 () Bool)

(assert (=> b!913251 (= e!512281 (isDefined!348 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033)))))

(assert (= (and d!112259 c!95750) b!913249))

(assert (= (and d!112259 (not c!95750)) b!913250))

(assert (= (and d!112259 (not res!616150)) b!913251))

(declare-fun m!847671 () Bool)

(assert (=> d!112259 m!847671))

(declare-fun m!847673 () Bool)

(assert (=> b!913249 m!847673))

(declare-fun m!847675 () Bool)

(assert (=> b!913249 m!847675))

(assert (=> b!913249 m!847675))

(declare-fun m!847677 () Bool)

(assert (=> b!913249 m!847677))

(assert (=> b!913251 m!847675))

(assert (=> b!913251 m!847675))

(assert (=> b!913251 m!847677))

(assert (=> b!913199 d!112259))

(declare-fun b!913294 () Bool)

(declare-fun e!512319 () Bool)

(declare-fun call!40441 () Bool)

(assert (=> b!913294 (= e!512319 (not call!40441))))

(declare-fun b!913295 () Bool)

(declare-fun e!512318 () ListLongMap!11313)

(declare-fun call!40438 () ListLongMap!11313)

(assert (=> b!913295 (= e!512318 call!40438)))

(declare-fun bm!40433 () Bool)

(declare-fun call!40442 () ListLongMap!11313)

(declare-fun call!40437 () ListLongMap!11313)

(assert (=> bm!40433 (= call!40442 call!40437)))

(declare-fun b!913297 () Bool)

(declare-fun e!512313 () Bool)

(declare-fun call!40439 () Bool)

(assert (=> b!913297 (= e!512313 (not call!40439))))

(declare-fun call!40440 () ListLongMap!11313)

(declare-fun bm!40434 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3311 (array!54304 array!54302 (_ BitVec 32) (_ BitVec 32) V!30497 V!30497 (_ BitVec 32) Int) ListLongMap!11313)

(assert (=> bm!40434 (= call!40440 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!913298 () Bool)

(declare-fun e!512315 () ListLongMap!11313)

(assert (=> b!913298 (= e!512315 e!512318)))

(declare-fun c!95763 () Bool)

(assert (=> b!913298 (= c!95763 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913299 () Bool)

(declare-fun e!512320 () Bool)

(assert (=> b!913299 (= e!512320 e!512313)))

(declare-fun c!95766 () Bool)

(assert (=> b!913299 (= c!95766 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913300 () Bool)

(declare-fun call!40436 () ListLongMap!11313)

(declare-fun +!2563 (ListLongMap!11313 tuple2!12602) ListLongMap!11313)

(assert (=> b!913300 (= e!512315 (+!2563 call!40436 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!913301 () Bool)

(declare-fun e!512317 () Bool)

(declare-fun lt!410843 () ListLongMap!11313)

(declare-fun apply!530 (ListLongMap!11313 (_ BitVec 64)) V!30497)

(assert (=> b!913301 (= e!512317 (= (apply!530 lt!410843 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun bm!40435 () Bool)

(assert (=> bm!40435 (= call!40439 (contains!4684 lt!410843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913302 () Bool)

(declare-fun c!95765 () Bool)

(assert (=> b!913302 (= c!95765 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!512309 () ListLongMap!11313)

(assert (=> b!913302 (= e!512318 e!512309)))

(declare-fun b!913303 () Bool)

(declare-fun e!512310 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!913303 (= e!512310 (validKeyInArray!0 (select (arr!26101 _keys!1386) i!717)))))

(declare-fun b!913304 () Bool)

(assert (=> b!913304 (= e!512319 e!512317)))

(declare-fun res!616172 () Bool)

(assert (=> b!913304 (= res!616172 call!40441)))

(assert (=> b!913304 (=> (not res!616172) (not e!512317))))

(declare-fun b!913305 () Bool)

(declare-fun e!512311 () Bool)

(assert (=> b!913305 (= e!512311 (= (apply!530 lt!410843 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun bm!40436 () Bool)

(assert (=> bm!40436 (= call!40437 call!40440)))

(declare-fun d!112261 () Bool)

(assert (=> d!112261 e!512320))

(declare-fun res!616175 () Bool)

(assert (=> d!112261 (=> (not res!616175) (not e!512320))))

(assert (=> d!112261 (= res!616175 (or (bvsge i!717 (size!26561 _keys!1386)) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26561 _keys!1386)))))))

(declare-fun lt!410842 () ListLongMap!11313)

(assert (=> d!112261 (= lt!410843 lt!410842)))

(declare-fun lt!410845 () Unit!30887)

(declare-fun e!512321 () Unit!30887)

(assert (=> d!112261 (= lt!410845 e!512321)))

(declare-fun c!95768 () Bool)

(declare-fun e!512316 () Bool)

(assert (=> d!112261 (= c!95768 e!512316)))

(declare-fun res!616171 () Bool)

(assert (=> d!112261 (=> (not res!616171) (not e!512316))))

(assert (=> d!112261 (= res!616171 (bvslt i!717 (size!26561 _keys!1386)))))

(assert (=> d!112261 (= lt!410842 e!512315)))

(declare-fun c!95767 () Bool)

(assert (=> d!112261 (= c!95767 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112261 (validMask!0 mask!1756)))

(assert (=> d!112261 (= (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160) lt!410843)))

(declare-fun b!913296 () Bool)

(assert (=> b!913296 (= e!512309 call!40442)))

(declare-fun bm!40437 () Bool)

(assert (=> bm!40437 (= call!40436 (+!2563 (ite c!95767 call!40440 (ite c!95763 call!40437 call!40442)) (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!913306 () Bool)

(assert (=> b!913306 (= e!512313 e!512311)))

(declare-fun res!616170 () Bool)

(assert (=> b!913306 (= res!616170 call!40439)))

(assert (=> b!913306 (=> (not res!616170) (not e!512311))))

(declare-fun b!913307 () Bool)

(assert (=> b!913307 (= e!512316 (validKeyInArray!0 (select (arr!26101 _keys!1386) i!717)))))

(declare-fun b!913308 () Bool)

(declare-fun lt!410863 () Unit!30887)

(assert (=> b!913308 (= e!512321 lt!410863)))

(declare-fun lt!410862 () ListLongMap!11313)

(assert (=> b!913308 (= lt!410862 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!410852 () (_ BitVec 64))

(assert (=> b!913308 (= lt!410852 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410848 () (_ BitVec 64))

(assert (=> b!913308 (= lt!410848 (select (arr!26101 _keys!1386) i!717))))

(declare-fun lt!410850 () Unit!30887)

(declare-fun addStillContains!349 (ListLongMap!11313 (_ BitVec 64) V!30497 (_ BitVec 64)) Unit!30887)

(assert (=> b!913308 (= lt!410850 (addStillContains!349 lt!410862 lt!410852 zeroValue!1094 lt!410848))))

(assert (=> b!913308 (contains!4684 (+!2563 lt!410862 (tuple2!12603 lt!410852 zeroValue!1094)) lt!410848)))

(declare-fun lt!410854 () Unit!30887)

(assert (=> b!913308 (= lt!410854 lt!410850)))

(declare-fun lt!410844 () ListLongMap!11313)

(assert (=> b!913308 (= lt!410844 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!410853 () (_ BitVec 64))

(assert (=> b!913308 (= lt!410853 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410858 () (_ BitVec 64))

(assert (=> b!913308 (= lt!410858 (select (arr!26101 _keys!1386) i!717))))

(declare-fun lt!410849 () Unit!30887)

(declare-fun addApplyDifferent!349 (ListLongMap!11313 (_ BitVec 64) V!30497 (_ BitVec 64)) Unit!30887)

(assert (=> b!913308 (= lt!410849 (addApplyDifferent!349 lt!410844 lt!410853 minValue!1094 lt!410858))))

(assert (=> b!913308 (= (apply!530 (+!2563 lt!410844 (tuple2!12603 lt!410853 minValue!1094)) lt!410858) (apply!530 lt!410844 lt!410858))))

(declare-fun lt!410861 () Unit!30887)

(assert (=> b!913308 (= lt!410861 lt!410849)))

(declare-fun lt!410859 () ListLongMap!11313)

(assert (=> b!913308 (= lt!410859 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!410856 () (_ BitVec 64))

(assert (=> b!913308 (= lt!410856 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410851 () (_ BitVec 64))

(assert (=> b!913308 (= lt!410851 (select (arr!26101 _keys!1386) i!717))))

(declare-fun lt!410855 () Unit!30887)

(assert (=> b!913308 (= lt!410855 (addApplyDifferent!349 lt!410859 lt!410856 zeroValue!1094 lt!410851))))

(assert (=> b!913308 (= (apply!530 (+!2563 lt!410859 (tuple2!12603 lt!410856 zeroValue!1094)) lt!410851) (apply!530 lt!410859 lt!410851))))

(declare-fun lt!410846 () Unit!30887)

(assert (=> b!913308 (= lt!410846 lt!410855)))

(declare-fun lt!410860 () ListLongMap!11313)

(assert (=> b!913308 (= lt!410860 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!410847 () (_ BitVec 64))

(assert (=> b!913308 (= lt!410847 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410857 () (_ BitVec 64))

(assert (=> b!913308 (= lt!410857 (select (arr!26101 _keys!1386) i!717))))

(assert (=> b!913308 (= lt!410863 (addApplyDifferent!349 lt!410860 lt!410847 minValue!1094 lt!410857))))

(assert (=> b!913308 (= (apply!530 (+!2563 lt!410860 (tuple2!12603 lt!410847 minValue!1094)) lt!410857) (apply!530 lt!410860 lt!410857))))

(declare-fun b!913309 () Bool)

(declare-fun Unit!30892 () Unit!30887)

(assert (=> b!913309 (= e!512321 Unit!30892)))

(declare-fun e!512314 () Bool)

(declare-fun b!913310 () Bool)

(declare-fun get!13710 (ValueCell!9093 V!30497) V!30497)

(declare-fun dynLambda!1397 (Int (_ BitVec 64)) V!30497)

(assert (=> b!913310 (= e!512314 (= (apply!530 lt!410843 (select (arr!26101 _keys!1386) i!717)) (get!13710 (select (arr!26100 _values!1152) i!717) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913310 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26560 _values!1152)))))

(assert (=> b!913310 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26561 _keys!1386)))))

(declare-fun b!913311 () Bool)

(declare-fun e!512312 () Bool)

(assert (=> b!913311 (= e!512312 e!512314)))

(declare-fun res!616169 () Bool)

(assert (=> b!913311 (=> (not res!616169) (not e!512314))))

(assert (=> b!913311 (= res!616169 (contains!4684 lt!410843 (select (arr!26101 _keys!1386) i!717)))))

(assert (=> b!913311 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26561 _keys!1386)))))

(declare-fun b!913312 () Bool)

(assert (=> b!913312 (= e!512309 call!40438)))

(declare-fun b!913313 () Bool)

(declare-fun res!616177 () Bool)

(assert (=> b!913313 (=> (not res!616177) (not e!512320))))

(assert (=> b!913313 (= res!616177 e!512319)))

(declare-fun c!95764 () Bool)

(assert (=> b!913313 (= c!95764 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40438 () Bool)

(assert (=> bm!40438 (= call!40441 (contains!4684 lt!410843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!40439 () Bool)

(assert (=> bm!40439 (= call!40438 call!40436)))

(declare-fun b!913314 () Bool)

(declare-fun res!616174 () Bool)

(assert (=> b!913314 (=> (not res!616174) (not e!512320))))

(assert (=> b!913314 (= res!616174 e!512312)))

(declare-fun res!616176 () Bool)

(assert (=> b!913314 (=> res!616176 e!512312)))

(assert (=> b!913314 (= res!616176 (not e!512310))))

(declare-fun res!616173 () Bool)

(assert (=> b!913314 (=> (not res!616173) (not e!512310))))

(assert (=> b!913314 (= res!616173 (bvslt i!717 (size!26561 _keys!1386)))))

(assert (= (and d!112261 c!95767) b!913300))

(assert (= (and d!112261 (not c!95767)) b!913298))

(assert (= (and b!913298 c!95763) b!913295))

(assert (= (and b!913298 (not c!95763)) b!913302))

(assert (= (and b!913302 c!95765) b!913312))

(assert (= (and b!913302 (not c!95765)) b!913296))

(assert (= (or b!913312 b!913296) bm!40433))

(assert (= (or b!913295 bm!40433) bm!40436))

(assert (= (or b!913295 b!913312) bm!40439))

(assert (= (or b!913300 bm!40436) bm!40434))

(assert (= (or b!913300 bm!40439) bm!40437))

(assert (= (and d!112261 res!616171) b!913307))

(assert (= (and d!112261 c!95768) b!913308))

(assert (= (and d!112261 (not c!95768)) b!913309))

(assert (= (and d!112261 res!616175) b!913314))

(assert (= (and b!913314 res!616173) b!913303))

(assert (= (and b!913314 (not res!616176)) b!913311))

(assert (= (and b!913311 res!616169) b!913310))

(assert (= (and b!913314 res!616174) b!913313))

(assert (= (and b!913313 c!95764) b!913304))

(assert (= (and b!913313 (not c!95764)) b!913294))

(assert (= (and b!913304 res!616172) b!913301))

(assert (= (or b!913304 b!913294) bm!40438))

(assert (= (and b!913313 res!616177) b!913299))

(assert (= (and b!913299 c!95766) b!913306))

(assert (= (and b!913299 (not c!95766)) b!913297))

(assert (= (and b!913306 res!616170) b!913305))

(assert (= (or b!913306 b!913297) bm!40435))

(declare-fun b_lambda!13345 () Bool)

(assert (=> (not b_lambda!13345) (not b!913310)))

(declare-fun t!26046 () Bool)

(declare-fun tb!5451 () Bool)

(assert (=> (and start!78288 (= defaultEntry!1160 defaultEntry!1160) t!26046) tb!5451))

(declare-fun result!10701 () Bool)

(assert (=> tb!5451 (= result!10701 tp_is_empty!19149)))

(assert (=> b!913310 t!26046))

(declare-fun b_and!27331 () Bool)

(assert (= b_and!27327 (and (=> t!26046 result!10701) b_and!27331)))

(assert (=> b!913311 m!847625))

(assert (=> b!913311 m!847625))

(declare-fun m!847679 () Bool)

(assert (=> b!913311 m!847679))

(declare-fun m!847681 () Bool)

(assert (=> b!913305 m!847681))

(declare-fun m!847683 () Bool)

(assert (=> bm!40437 m!847683))

(declare-fun m!847685 () Bool)

(assert (=> b!913308 m!847685))

(declare-fun m!847687 () Bool)

(assert (=> b!913308 m!847687))

(declare-fun m!847689 () Bool)

(assert (=> b!913308 m!847689))

(declare-fun m!847691 () Bool)

(assert (=> b!913308 m!847691))

(declare-fun m!847693 () Bool)

(assert (=> b!913308 m!847693))

(declare-fun m!847695 () Bool)

(assert (=> b!913308 m!847695))

(declare-fun m!847697 () Bool)

(assert (=> b!913308 m!847697))

(assert (=> b!913308 m!847693))

(declare-fun m!847699 () Bool)

(assert (=> b!913308 m!847699))

(declare-fun m!847701 () Bool)

(assert (=> b!913308 m!847701))

(declare-fun m!847703 () Bool)

(assert (=> b!913308 m!847703))

(assert (=> b!913308 m!847699))

(declare-fun m!847705 () Bool)

(assert (=> b!913308 m!847705))

(declare-fun m!847707 () Bool)

(assert (=> b!913308 m!847707))

(declare-fun m!847709 () Bool)

(assert (=> b!913308 m!847709))

(declare-fun m!847711 () Bool)

(assert (=> b!913308 m!847711))

(declare-fun m!847713 () Bool)

(assert (=> b!913308 m!847713))

(assert (=> b!913308 m!847689))

(assert (=> b!913308 m!847625))

(declare-fun m!847715 () Bool)

(assert (=> b!913308 m!847715))

(assert (=> b!913308 m!847707))

(assert (=> b!913307 m!847625))

(assert (=> b!913307 m!847625))

(declare-fun m!847717 () Bool)

(assert (=> b!913307 m!847717))

(assert (=> b!913303 m!847625))

(assert (=> b!913303 m!847625))

(assert (=> b!913303 m!847717))

(assert (=> d!112261 m!847619))

(declare-fun m!847719 () Bool)

(assert (=> bm!40435 m!847719))

(assert (=> bm!40434 m!847701))

(declare-fun m!847721 () Bool)

(assert (=> b!913301 m!847721))

(declare-fun m!847723 () Bool)

(assert (=> bm!40438 m!847723))

(declare-fun m!847725 () Bool)

(assert (=> b!913310 m!847725))

(declare-fun m!847727 () Bool)

(assert (=> b!913310 m!847727))

(declare-fun m!847729 () Bool)

(assert (=> b!913310 m!847729))

(assert (=> b!913310 m!847725))

(assert (=> b!913310 m!847625))

(assert (=> b!913310 m!847625))

(declare-fun m!847731 () Bool)

(assert (=> b!913310 m!847731))

(assert (=> b!913310 m!847727))

(declare-fun m!847733 () Bool)

(assert (=> b!913300 m!847733))

(assert (=> b!913199 d!112261))

(declare-fun d!112263 () Bool)

(declare-fun e!512322 () Bool)

(assert (=> d!112263 e!512322))

(declare-fun res!616178 () Bool)

(assert (=> d!112263 (=> res!616178 e!512322)))

(declare-fun lt!410866 () Bool)

(assert (=> d!112263 (= res!616178 (not lt!410866))))

(declare-fun lt!410865 () Bool)

(assert (=> d!112263 (= lt!410866 lt!410865)))

(declare-fun lt!410867 () Unit!30887)

(declare-fun e!512323 () Unit!30887)

(assert (=> d!112263 (= lt!410867 e!512323)))

(declare-fun c!95769 () Bool)

(assert (=> d!112263 (= c!95769 lt!410865)))

(assert (=> d!112263 (= lt!410865 (containsKey!443 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> d!112263 (= (contains!4684 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033) lt!410866)))

(declare-fun b!913317 () Bool)

(declare-fun lt!410864 () Unit!30887)

(assert (=> b!913317 (= e!512323 lt!410864)))

(assert (=> b!913317 (= lt!410864 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> b!913317 (isDefined!348 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun b!913318 () Bool)

(declare-fun Unit!30893 () Unit!30887)

(assert (=> b!913318 (= e!512323 Unit!30893)))

(declare-fun b!913319 () Bool)

(assert (=> b!913319 (= e!512322 (isDefined!348 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)))))

(assert (= (and d!112263 c!95769) b!913317))

(assert (= (and d!112263 (not c!95769)) b!913318))

(assert (= (and d!112263 (not res!616178)) b!913319))

(declare-fun m!847735 () Bool)

(assert (=> d!112263 m!847735))

(declare-fun m!847737 () Bool)

(assert (=> b!913317 m!847737))

(declare-fun m!847739 () Bool)

(assert (=> b!913317 m!847739))

(assert (=> b!913317 m!847739))

(declare-fun m!847741 () Bool)

(assert (=> b!913317 m!847741))

(assert (=> b!913319 m!847739))

(assert (=> b!913319 m!847739))

(assert (=> b!913319 m!847741))

(assert (=> b!913209 d!112263))

(declare-fun b!913320 () Bool)

(declare-fun e!512334 () Bool)

(declare-fun call!40448 () Bool)

(assert (=> b!913320 (= e!512334 (not call!40448))))

(declare-fun b!913321 () Bool)

(declare-fun e!512333 () ListLongMap!11313)

(declare-fun call!40445 () ListLongMap!11313)

(assert (=> b!913321 (= e!512333 call!40445)))

(declare-fun bm!40440 () Bool)

(declare-fun call!40449 () ListLongMap!11313)

(declare-fun call!40444 () ListLongMap!11313)

(assert (=> bm!40440 (= call!40449 call!40444)))

(declare-fun b!913323 () Bool)

(declare-fun e!512328 () Bool)

(declare-fun call!40446 () Bool)

(assert (=> b!913323 (= e!512328 (not call!40446))))

(declare-fun call!40447 () ListLongMap!11313)

(declare-fun bm!40441 () Bool)

(assert (=> bm!40441 (= call!40447 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!913324 () Bool)

(declare-fun e!512330 () ListLongMap!11313)

(assert (=> b!913324 (= e!512330 e!512333)))

(declare-fun c!95770 () Bool)

(assert (=> b!913324 (= c!95770 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913325 () Bool)

(declare-fun e!512335 () Bool)

(assert (=> b!913325 (= e!512335 e!512328)))

(declare-fun c!95773 () Bool)

(assert (=> b!913325 (= c!95773 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913326 () Bool)

(declare-fun call!40443 () ListLongMap!11313)

(assert (=> b!913326 (= e!512330 (+!2563 call!40443 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!913327 () Bool)

(declare-fun e!512332 () Bool)

(declare-fun lt!410869 () ListLongMap!11313)

(assert (=> b!913327 (= e!512332 (= (apply!530 lt!410869 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun bm!40442 () Bool)

(assert (=> bm!40442 (= call!40446 (contains!4684 lt!410869 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913328 () Bool)

(declare-fun c!95772 () Bool)

(assert (=> b!913328 (= c!95772 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!512324 () ListLongMap!11313)

(assert (=> b!913328 (= e!512333 e!512324)))

(declare-fun b!913329 () Bool)

(declare-fun e!512325 () Bool)

(assert (=> b!913329 (= e!512325 (validKeyInArray!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913330 () Bool)

(assert (=> b!913330 (= e!512334 e!512332)))

(declare-fun res!616182 () Bool)

(assert (=> b!913330 (= res!616182 call!40448)))

(assert (=> b!913330 (=> (not res!616182) (not e!512332))))

(declare-fun b!913331 () Bool)

(declare-fun e!512326 () Bool)

(assert (=> b!913331 (= e!512326 (= (apply!530 lt!410869 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun bm!40443 () Bool)

(assert (=> bm!40443 (= call!40444 call!40447)))

(declare-fun d!112265 () Bool)

(assert (=> d!112265 e!512335))

(declare-fun res!616185 () Bool)

(assert (=> d!112265 (=> (not res!616185) (not e!512335))))

(assert (=> d!112265 (= res!616185 (or (bvsge #b00000000000000000000000000000000 (size!26561 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))))

(declare-fun lt!410868 () ListLongMap!11313)

(assert (=> d!112265 (= lt!410869 lt!410868)))

(declare-fun lt!410871 () Unit!30887)

(declare-fun e!512336 () Unit!30887)

(assert (=> d!112265 (= lt!410871 e!512336)))

(declare-fun c!95775 () Bool)

(declare-fun e!512331 () Bool)

(assert (=> d!112265 (= c!95775 e!512331)))

(declare-fun res!616181 () Bool)

(assert (=> d!112265 (=> (not res!616181) (not e!512331))))

(assert (=> d!112265 (= res!616181 (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(assert (=> d!112265 (= lt!410868 e!512330)))

(declare-fun c!95774 () Bool)

(assert (=> d!112265 (= c!95774 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112265 (validMask!0 mask!1756)))

(assert (=> d!112265 (= (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!410869)))

(declare-fun b!913322 () Bool)

(assert (=> b!913322 (= e!512324 call!40449)))

(declare-fun bm!40444 () Bool)

(assert (=> bm!40444 (= call!40443 (+!2563 (ite c!95774 call!40447 (ite c!95770 call!40444 call!40449)) (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!913332 () Bool)

(assert (=> b!913332 (= e!512328 e!512326)))

(declare-fun res!616180 () Bool)

(assert (=> b!913332 (= res!616180 call!40446)))

(assert (=> b!913332 (=> (not res!616180) (not e!512326))))

(declare-fun b!913333 () Bool)

(assert (=> b!913333 (= e!512331 (validKeyInArray!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913334 () Bool)

(declare-fun lt!410889 () Unit!30887)

(assert (=> b!913334 (= e!512336 lt!410889)))

(declare-fun lt!410888 () ListLongMap!11313)

(assert (=> b!913334 (= lt!410888 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410878 () (_ BitVec 64))

(assert (=> b!913334 (= lt!410878 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410874 () (_ BitVec 64))

(assert (=> b!913334 (= lt!410874 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410876 () Unit!30887)

(assert (=> b!913334 (= lt!410876 (addStillContains!349 lt!410888 lt!410878 zeroValue!1094 lt!410874))))

(assert (=> b!913334 (contains!4684 (+!2563 lt!410888 (tuple2!12603 lt!410878 zeroValue!1094)) lt!410874)))

(declare-fun lt!410880 () Unit!30887)

(assert (=> b!913334 (= lt!410880 lt!410876)))

(declare-fun lt!410870 () ListLongMap!11313)

(assert (=> b!913334 (= lt!410870 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410879 () (_ BitVec 64))

(assert (=> b!913334 (= lt!410879 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410884 () (_ BitVec 64))

(assert (=> b!913334 (= lt!410884 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410875 () Unit!30887)

(assert (=> b!913334 (= lt!410875 (addApplyDifferent!349 lt!410870 lt!410879 minValue!1094 lt!410884))))

(assert (=> b!913334 (= (apply!530 (+!2563 lt!410870 (tuple2!12603 lt!410879 minValue!1094)) lt!410884) (apply!530 lt!410870 lt!410884))))

(declare-fun lt!410887 () Unit!30887)

(assert (=> b!913334 (= lt!410887 lt!410875)))

(declare-fun lt!410885 () ListLongMap!11313)

(assert (=> b!913334 (= lt!410885 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410882 () (_ BitVec 64))

(assert (=> b!913334 (= lt!410882 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410877 () (_ BitVec 64))

(assert (=> b!913334 (= lt!410877 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410881 () Unit!30887)

(assert (=> b!913334 (= lt!410881 (addApplyDifferent!349 lt!410885 lt!410882 zeroValue!1094 lt!410877))))

(assert (=> b!913334 (= (apply!530 (+!2563 lt!410885 (tuple2!12603 lt!410882 zeroValue!1094)) lt!410877) (apply!530 lt!410885 lt!410877))))

(declare-fun lt!410872 () Unit!30887)

(assert (=> b!913334 (= lt!410872 lt!410881)))

(declare-fun lt!410886 () ListLongMap!11313)

(assert (=> b!913334 (= lt!410886 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410873 () (_ BitVec 64))

(assert (=> b!913334 (= lt!410873 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410883 () (_ BitVec 64))

(assert (=> b!913334 (= lt!410883 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!913334 (= lt!410889 (addApplyDifferent!349 lt!410886 lt!410873 minValue!1094 lt!410883))))

(assert (=> b!913334 (= (apply!530 (+!2563 lt!410886 (tuple2!12603 lt!410873 minValue!1094)) lt!410883) (apply!530 lt!410886 lt!410883))))

(declare-fun b!913335 () Bool)

(declare-fun Unit!30894 () Unit!30887)

(assert (=> b!913335 (= e!512336 Unit!30894)))

(declare-fun b!913336 () Bool)

(declare-fun e!512329 () Bool)

(assert (=> b!913336 (= e!512329 (= (apply!530 lt!410869 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)) (get!13710 (select (arr!26100 _values!1152) #b00000000000000000000000000000000) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913336 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26560 _values!1152)))))

(assert (=> b!913336 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(declare-fun b!913337 () Bool)

(declare-fun e!512327 () Bool)

(assert (=> b!913337 (= e!512327 e!512329)))

(declare-fun res!616179 () Bool)

(assert (=> b!913337 (=> (not res!616179) (not e!512329))))

(assert (=> b!913337 (= res!616179 (contains!4684 lt!410869 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913337 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(declare-fun b!913338 () Bool)

(assert (=> b!913338 (= e!512324 call!40445)))

(declare-fun b!913339 () Bool)

(declare-fun res!616187 () Bool)

(assert (=> b!913339 (=> (not res!616187) (not e!512335))))

(assert (=> b!913339 (= res!616187 e!512334)))

(declare-fun c!95771 () Bool)

(assert (=> b!913339 (= c!95771 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40445 () Bool)

(assert (=> bm!40445 (= call!40448 (contains!4684 lt!410869 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!40446 () Bool)

(assert (=> bm!40446 (= call!40445 call!40443)))

(declare-fun b!913340 () Bool)

(declare-fun res!616184 () Bool)

(assert (=> b!913340 (=> (not res!616184) (not e!512335))))

(assert (=> b!913340 (= res!616184 e!512327)))

(declare-fun res!616186 () Bool)

(assert (=> b!913340 (=> res!616186 e!512327)))

(assert (=> b!913340 (= res!616186 (not e!512325))))

(declare-fun res!616183 () Bool)

(assert (=> b!913340 (=> (not res!616183) (not e!512325))))

(assert (=> b!913340 (= res!616183 (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(assert (= (and d!112265 c!95774) b!913326))

(assert (= (and d!112265 (not c!95774)) b!913324))

(assert (= (and b!913324 c!95770) b!913321))

(assert (= (and b!913324 (not c!95770)) b!913328))

(assert (= (and b!913328 c!95772) b!913338))

(assert (= (and b!913328 (not c!95772)) b!913322))

(assert (= (or b!913338 b!913322) bm!40440))

(assert (= (or b!913321 bm!40440) bm!40443))

(assert (= (or b!913321 b!913338) bm!40446))

(assert (= (or b!913326 bm!40443) bm!40441))

(assert (= (or b!913326 bm!40446) bm!40444))

(assert (= (and d!112265 res!616181) b!913333))

(assert (= (and d!112265 c!95775) b!913334))

(assert (= (and d!112265 (not c!95775)) b!913335))

(assert (= (and d!112265 res!616185) b!913340))

(assert (= (and b!913340 res!616183) b!913329))

(assert (= (and b!913340 (not res!616186)) b!913337))

(assert (= (and b!913337 res!616179) b!913336))

(assert (= (and b!913340 res!616184) b!913339))

(assert (= (and b!913339 c!95771) b!913330))

(assert (= (and b!913339 (not c!95771)) b!913320))

(assert (= (and b!913330 res!616182) b!913327))

(assert (= (or b!913330 b!913320) bm!40445))

(assert (= (and b!913339 res!616187) b!913325))

(assert (= (and b!913325 c!95773) b!913332))

(assert (= (and b!913325 (not c!95773)) b!913323))

(assert (= (and b!913332 res!616180) b!913331))

(assert (= (or b!913332 b!913323) bm!40442))

(declare-fun b_lambda!13347 () Bool)

(assert (=> (not b_lambda!13347) (not b!913336)))

(assert (=> b!913336 t!26046))

(declare-fun b_and!27333 () Bool)

(assert (= b_and!27331 (and (=> t!26046 result!10701) b_and!27333)))

(declare-fun m!847743 () Bool)

(assert (=> b!913337 m!847743))

(assert (=> b!913337 m!847743))

(declare-fun m!847745 () Bool)

(assert (=> b!913337 m!847745))

(declare-fun m!847747 () Bool)

(assert (=> b!913331 m!847747))

(declare-fun m!847749 () Bool)

(assert (=> bm!40444 m!847749))

(declare-fun m!847751 () Bool)

(assert (=> b!913334 m!847751))

(declare-fun m!847753 () Bool)

(assert (=> b!913334 m!847753))

(declare-fun m!847755 () Bool)

(assert (=> b!913334 m!847755))

(declare-fun m!847757 () Bool)

(assert (=> b!913334 m!847757))

(declare-fun m!847759 () Bool)

(assert (=> b!913334 m!847759))

(declare-fun m!847761 () Bool)

(assert (=> b!913334 m!847761))

(declare-fun m!847763 () Bool)

(assert (=> b!913334 m!847763))

(assert (=> b!913334 m!847759))

(declare-fun m!847765 () Bool)

(assert (=> b!913334 m!847765))

(declare-fun m!847767 () Bool)

(assert (=> b!913334 m!847767))

(declare-fun m!847769 () Bool)

(assert (=> b!913334 m!847769))

(assert (=> b!913334 m!847765))

(declare-fun m!847771 () Bool)

(assert (=> b!913334 m!847771))

(declare-fun m!847773 () Bool)

(assert (=> b!913334 m!847773))

(declare-fun m!847775 () Bool)

(assert (=> b!913334 m!847775))

(declare-fun m!847777 () Bool)

(assert (=> b!913334 m!847777))

(declare-fun m!847779 () Bool)

(assert (=> b!913334 m!847779))

(assert (=> b!913334 m!847755))

(assert (=> b!913334 m!847743))

(declare-fun m!847781 () Bool)

(assert (=> b!913334 m!847781))

(assert (=> b!913334 m!847773))

(assert (=> b!913333 m!847743))

(assert (=> b!913333 m!847743))

(declare-fun m!847783 () Bool)

(assert (=> b!913333 m!847783))

(assert (=> b!913329 m!847743))

(assert (=> b!913329 m!847743))

(assert (=> b!913329 m!847783))

(assert (=> d!112265 m!847619))

(declare-fun m!847785 () Bool)

(assert (=> bm!40442 m!847785))

(assert (=> bm!40441 m!847767))

(declare-fun m!847787 () Bool)

(assert (=> b!913327 m!847787))

(declare-fun m!847789 () Bool)

(assert (=> bm!40445 m!847789))

(declare-fun m!847791 () Bool)

(assert (=> b!913336 m!847791))

(assert (=> b!913336 m!847727))

(declare-fun m!847793 () Bool)

(assert (=> b!913336 m!847793))

(assert (=> b!913336 m!847791))

(assert (=> b!913336 m!847743))

(assert (=> b!913336 m!847743))

(declare-fun m!847795 () Bool)

(assert (=> b!913336 m!847795))

(assert (=> b!913336 m!847727))

(declare-fun m!847797 () Bool)

(assert (=> b!913326 m!847797))

(assert (=> b!913209 d!112265))

(declare-fun d!112267 () Bool)

(assert (=> d!112267 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!913207 d!112267))

(declare-fun b!913351 () Bool)

(declare-fun e!512347 () Bool)

(declare-fun call!40452 () Bool)

(assert (=> b!913351 (= e!512347 call!40452)))

(declare-fun bm!40449 () Bool)

(declare-fun c!95778 () Bool)

(assert (=> bm!40449 (= call!40452 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95778 (Cons!18439 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) Nil!18440) Nil!18440)))))

(declare-fun b!913352 () Bool)

(declare-fun e!512346 () Bool)

(declare-fun contains!4686 (List!18443 (_ BitVec 64)) Bool)

(assert (=> b!913352 (= e!512346 (contains!4686 Nil!18440 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913353 () Bool)

(declare-fun e!512348 () Bool)

(declare-fun e!512345 () Bool)

(assert (=> b!913353 (= e!512348 e!512345)))

(declare-fun res!616194 () Bool)

(assert (=> b!913353 (=> (not res!616194) (not e!512345))))

(assert (=> b!913353 (= res!616194 (not e!512346))))

(declare-fun res!616196 () Bool)

(assert (=> b!913353 (=> (not res!616196) (not e!512346))))

(assert (=> b!913353 (= res!616196 (validKeyInArray!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913355 () Bool)

(assert (=> b!913355 (= e!512347 call!40452)))

(declare-fun b!913354 () Bool)

(assert (=> b!913354 (= e!512345 e!512347)))

(assert (=> b!913354 (= c!95778 (validKeyInArray!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112269 () Bool)

(declare-fun res!616195 () Bool)

(assert (=> d!112269 (=> res!616195 e!512348)))

(assert (=> d!112269 (= res!616195 (bvsge #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(assert (=> d!112269 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18440) e!512348)))

(assert (= (and d!112269 (not res!616195)) b!913353))

(assert (= (and b!913353 res!616196) b!913352))

(assert (= (and b!913353 res!616194) b!913354))

(assert (= (and b!913354 c!95778) b!913355))

(assert (= (and b!913354 (not c!95778)) b!913351))

(assert (= (or b!913355 b!913351) bm!40449))

(assert (=> bm!40449 m!847743))

(declare-fun m!847799 () Bool)

(assert (=> bm!40449 m!847799))

(assert (=> b!913352 m!847743))

(assert (=> b!913352 m!847743))

(declare-fun m!847801 () Bool)

(assert (=> b!913352 m!847801))

(assert (=> b!913353 m!847743))

(assert (=> b!913353 m!847743))

(assert (=> b!913353 m!847783))

(assert (=> b!913354 m!847743))

(assert (=> b!913354 m!847743))

(assert (=> b!913354 m!847783))

(assert (=> b!913202 d!112269))

(declare-fun d!112271 () Bool)

(assert (=> d!112271 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!78288 d!112271))

(declare-fun d!112273 () Bool)

(assert (=> d!112273 (= (array_inv!20374 _values!1152) (bvsge (size!26560 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!78288 d!112273))

(declare-fun d!112275 () Bool)

(assert (=> d!112275 (= (array_inv!20375 _keys!1386) (bvsge (size!26561 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!78288 d!112275))

(declare-fun d!112277 () Bool)

(declare-fun res!616201 () Bool)

(declare-fun e!512353 () Bool)

(assert (=> d!112277 (=> res!616201 e!512353)))

(assert (=> d!112277 (= res!616201 (= (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) k0!1033))))

(assert (=> d!112277 (= (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000) e!512353)))

(declare-fun b!913360 () Bool)

(declare-fun e!512354 () Bool)

(assert (=> b!913360 (= e!512353 e!512354)))

(declare-fun res!616202 () Bool)

(assert (=> b!913360 (=> (not res!616202) (not e!512354))))

(assert (=> b!913360 (= res!616202 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26561 _keys!1386)))))

(declare-fun b!913361 () Bool)

(assert (=> b!913361 (= e!512354 (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!112277 (not res!616201)) b!913360))

(assert (= (and b!913360 res!616202) b!913361))

(assert (=> d!112277 m!847743))

(declare-fun m!847803 () Bool)

(assert (=> b!913361 m!847803))

(assert (=> b!913206 d!112277))

(declare-fun d!112279 () Bool)

(declare-fun e!512357 () Bool)

(assert (=> d!112279 e!512357))

(declare-fun c!95781 () Bool)

(assert (=> d!112279 (= c!95781 (and (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!410892 () Unit!30887)

(declare-fun choose!1539 (array!54304 array!54302 (_ BitVec 32) (_ BitVec 32) V!30497 V!30497 (_ BitVec 64) Int) Unit!30887)

(assert (=> d!112279 (= lt!410892 (choose!1539 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(assert (=> d!112279 (validMask!0 mask!1756)))

(assert (=> d!112279 (= (lemmaKeyInListMapIsInArray!288 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160) lt!410892)))

(declare-fun b!913366 () Bool)

(assert (=> b!913366 (= e!512357 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000))))

(declare-fun b!913367 () Bool)

(assert (=> b!913367 (= e!512357 (ite (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!112279 c!95781) b!913366))

(assert (= (and d!112279 (not c!95781)) b!913367))

(declare-fun m!847805 () Bool)

(assert (=> d!112279 m!847805))

(assert (=> d!112279 m!847619))

(assert (=> b!913366 m!847629))

(assert (=> b!913206 d!112279))

(declare-fun b!913376 () Bool)

(declare-fun e!512365 () Bool)

(declare-fun e!512366 () Bool)

(assert (=> b!913376 (= e!512365 e!512366)))

(declare-fun c!95784 () Bool)

(assert (=> b!913376 (= c!95784 (validKeyInArray!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913377 () Bool)

(declare-fun e!512364 () Bool)

(assert (=> b!913377 (= e!512366 e!512364)))

(declare-fun lt!410900 () (_ BitVec 64))

(assert (=> b!913377 (= lt!410900 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410901 () Unit!30887)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54304 (_ BitVec 64) (_ BitVec 32)) Unit!30887)

(assert (=> b!913377 (= lt!410901 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!410900 #b00000000000000000000000000000000))))

(assert (=> b!913377 (arrayContainsKey!0 _keys!1386 lt!410900 #b00000000000000000000000000000000)))

(declare-fun lt!410899 () Unit!30887)

(assert (=> b!913377 (= lt!410899 lt!410901)))

(declare-fun res!616207 () Bool)

(declare-datatypes ((SeekEntryResult!8956 0))(
  ( (MissingZero!8956 (index!38194 (_ BitVec 32))) (Found!8956 (index!38195 (_ BitVec 32))) (Intermediate!8956 (undefined!9768 Bool) (index!38196 (_ BitVec 32)) (x!78118 (_ BitVec 32))) (Undefined!8956) (MissingVacant!8956 (index!38197 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54304 (_ BitVec 32)) SeekEntryResult!8956)

(assert (=> b!913377 (= res!616207 (= (seekEntryOrOpen!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8956 #b00000000000000000000000000000000)))))

(assert (=> b!913377 (=> (not res!616207) (not e!512364))))

(declare-fun b!913378 () Bool)

(declare-fun call!40455 () Bool)

(assert (=> b!913378 (= e!512364 call!40455)))

(declare-fun d!112281 () Bool)

(declare-fun res!616208 () Bool)

(assert (=> d!112281 (=> res!616208 e!512365)))

(assert (=> d!112281 (= res!616208 (bvsge #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(assert (=> d!112281 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!512365)))

(declare-fun b!913379 () Bool)

(assert (=> b!913379 (= e!512366 call!40455)))

(declare-fun bm!40452 () Bool)

(assert (=> bm!40452 (= call!40455 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(assert (= (and d!112281 (not res!616208)) b!913376))

(assert (= (and b!913376 c!95784) b!913377))

(assert (= (and b!913376 (not c!95784)) b!913379))

(assert (= (and b!913377 res!616207) b!913378))

(assert (= (or b!913378 b!913379) bm!40452))

(assert (=> b!913376 m!847743))

(assert (=> b!913376 m!847743))

(assert (=> b!913376 m!847783))

(assert (=> b!913377 m!847743))

(declare-fun m!847807 () Bool)

(assert (=> b!913377 m!847807))

(declare-fun m!847809 () Bool)

(assert (=> b!913377 m!847809))

(assert (=> b!913377 m!847743))

(declare-fun m!847811 () Bool)

(assert (=> b!913377 m!847811))

(declare-fun m!847813 () Bool)

(assert (=> bm!40452 m!847813))

(assert (=> b!913205 d!112281))

(declare-fun b!913387 () Bool)

(declare-fun e!512372 () Bool)

(assert (=> b!913387 (= e!512372 tp_is_empty!19149)))

(declare-fun b!913386 () Bool)

(declare-fun e!512371 () Bool)

(assert (=> b!913386 (= e!512371 tp_is_empty!19149)))

(declare-fun mapNonEmpty!30460 () Bool)

(declare-fun mapRes!30460 () Bool)

(declare-fun tp!58483 () Bool)

(assert (=> mapNonEmpty!30460 (= mapRes!30460 (and tp!58483 e!512371))))

(declare-fun mapKey!30460 () (_ BitVec 32))

(declare-fun mapValue!30460 () ValueCell!9093)

(declare-fun mapRest!30460 () (Array (_ BitVec 32) ValueCell!9093))

(assert (=> mapNonEmpty!30460 (= mapRest!30454 (store mapRest!30460 mapKey!30460 mapValue!30460))))

(declare-fun condMapEmpty!30460 () Bool)

(declare-fun mapDefault!30460 () ValueCell!9093)

(assert (=> mapNonEmpty!30454 (= condMapEmpty!30460 (= mapRest!30454 ((as const (Array (_ BitVec 32) ValueCell!9093)) mapDefault!30460)))))

(assert (=> mapNonEmpty!30454 (= tp!58474 (and e!512372 mapRes!30460))))

(declare-fun mapIsEmpty!30460 () Bool)

(assert (=> mapIsEmpty!30460 mapRes!30460))

(assert (= (and mapNonEmpty!30454 condMapEmpty!30460) mapIsEmpty!30460))

(assert (= (and mapNonEmpty!30454 (not condMapEmpty!30460)) mapNonEmpty!30460))

(assert (= (and mapNonEmpty!30460 ((_ is ValueCellFull!9093) mapValue!30460)) b!913386))

(assert (= (and mapNonEmpty!30454 ((_ is ValueCellFull!9093) mapDefault!30460)) b!913387))

(declare-fun m!847815 () Bool)

(assert (=> mapNonEmpty!30460 m!847815))

(declare-fun b_lambda!13349 () Bool)

(assert (= b_lambda!13347 (or (and start!78288 b_free!16731) b_lambda!13349)))

(declare-fun b_lambda!13351 () Bool)

(assert (= b_lambda!13345 (or (and start!78288 b_free!16731) b_lambda!13351)))

(check-sat (not bm!40438) (not b!913317) (not d!112261) (not bm!40442) (not bm!40441) (not b!913331) (not b!913301) (not bm!40444) (not b!913303) (not b!913336) (not d!112259) (not b!913308) (not b!913300) (not b!913333) (not b!913334) tp_is_empty!19149 (not b_lambda!13349) (not b!913307) b_and!27333 (not d!112279) (not bm!40452) (not b!913337) (not b!913310) (not bm!40445) (not b!913251) (not b_lambda!13351) (not bm!40437) (not b!913327) (not b!913326) (not b_next!16731) (not d!112263) (not b!913305) (not mapNonEmpty!30460) (not b!913311) (not bm!40434) (not b!913352) (not bm!40449) (not b!913366) (not b!913377) (not b!913353) (not b!913249) (not b!913376) (not b!913361) (not bm!40435) (not d!112265) (not b!913329) (not b!913354) (not b!913319))
(check-sat b_and!27333 (not b_next!16731))
(get-model)

(assert (=> b!913366 d!112277))

(declare-fun d!112283 () Bool)

(declare-fun e!512373 () Bool)

(assert (=> d!112283 e!512373))

(declare-fun res!616209 () Bool)

(assert (=> d!112283 (=> res!616209 e!512373)))

(declare-fun lt!410904 () Bool)

(assert (=> d!112283 (= res!616209 (not lt!410904))))

(declare-fun lt!410903 () Bool)

(assert (=> d!112283 (= lt!410904 lt!410903)))

(declare-fun lt!410905 () Unit!30887)

(declare-fun e!512374 () Unit!30887)

(assert (=> d!112283 (= lt!410905 e!512374)))

(declare-fun c!95785 () Bool)

(assert (=> d!112283 (= c!95785 lt!410903)))

(assert (=> d!112283 (= lt!410903 (containsKey!443 (toList!5672 lt!410869) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!112283 (= (contains!4684 lt!410869 #b0000000000000000000000000000000000000000000000000000000000000000) lt!410904)))

(declare-fun b!913388 () Bool)

(declare-fun lt!410902 () Unit!30887)

(assert (=> b!913388 (= e!512374 lt!410902)))

(assert (=> b!913388 (= lt!410902 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 lt!410869) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!913388 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410869) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913389 () Bool)

(declare-fun Unit!30895 () Unit!30887)

(assert (=> b!913389 (= e!512374 Unit!30895)))

(declare-fun b!913390 () Bool)

(assert (=> b!913390 (= e!512373 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410869) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112283 c!95785) b!913388))

(assert (= (and d!112283 (not c!95785)) b!913389))

(assert (= (and d!112283 (not res!616209)) b!913390))

(declare-fun m!847817 () Bool)

(assert (=> d!112283 m!847817))

(declare-fun m!847819 () Bool)

(assert (=> b!913388 m!847819))

(declare-fun m!847821 () Bool)

(assert (=> b!913388 m!847821))

(assert (=> b!913388 m!847821))

(declare-fun m!847823 () Bool)

(assert (=> b!913388 m!847823))

(assert (=> b!913390 m!847821))

(assert (=> b!913390 m!847821))

(assert (=> b!913390 m!847823))

(assert (=> bm!40445 d!112283))

(declare-fun d!112285 () Bool)

(assert (=> d!112285 (= (validKeyInArray!0 (select (arr!26101 _keys!1386) i!717)) (and (not (= (select (arr!26101 _keys!1386) i!717) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!26101 _keys!1386) i!717) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913303 d!112285))

(declare-fun d!112287 () Bool)

(declare-fun e!512375 () Bool)

(assert (=> d!112287 e!512375))

(declare-fun res!616210 () Bool)

(assert (=> d!112287 (=> res!616210 e!512375)))

(declare-fun lt!410908 () Bool)

(assert (=> d!112287 (= res!616210 (not lt!410908))))

(declare-fun lt!410907 () Bool)

(assert (=> d!112287 (= lt!410908 lt!410907)))

(declare-fun lt!410909 () Unit!30887)

(declare-fun e!512376 () Unit!30887)

(assert (=> d!112287 (= lt!410909 e!512376)))

(declare-fun c!95786 () Bool)

(assert (=> d!112287 (= c!95786 lt!410907)))

(assert (=> d!112287 (= lt!410907 (containsKey!443 (toList!5672 lt!410869) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> d!112287 (= (contains!4684 lt!410869 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)) lt!410908)))

(declare-fun b!913391 () Bool)

(declare-fun lt!410906 () Unit!30887)

(assert (=> b!913391 (= e!512376 lt!410906)))

(assert (=> b!913391 (= lt!410906 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 lt!410869) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913391 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410869) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913392 () Bool)

(declare-fun Unit!30896 () Unit!30887)

(assert (=> b!913392 (= e!512376 Unit!30896)))

(declare-fun b!913393 () Bool)

(assert (=> b!913393 (= e!512375 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410869) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000))))))

(assert (= (and d!112287 c!95786) b!913391))

(assert (= (and d!112287 (not c!95786)) b!913392))

(assert (= (and d!112287 (not res!616210)) b!913393))

(assert (=> d!112287 m!847743))

(declare-fun m!847825 () Bool)

(assert (=> d!112287 m!847825))

(assert (=> b!913391 m!847743))

(declare-fun m!847827 () Bool)

(assert (=> b!913391 m!847827))

(assert (=> b!913391 m!847743))

(declare-fun m!847829 () Bool)

(assert (=> b!913391 m!847829))

(assert (=> b!913391 m!847829))

(declare-fun m!847831 () Bool)

(assert (=> b!913391 m!847831))

(assert (=> b!913393 m!847743))

(assert (=> b!913393 m!847829))

(assert (=> b!913393 m!847829))

(assert (=> b!913393 m!847831))

(assert (=> b!913337 d!112287))

(declare-fun d!112289 () Bool)

(declare-fun e!512377 () Bool)

(assert (=> d!112289 e!512377))

(declare-fun res!616211 () Bool)

(assert (=> d!112289 (=> res!616211 e!512377)))

(declare-fun lt!410912 () Bool)

(assert (=> d!112289 (= res!616211 (not lt!410912))))

(declare-fun lt!410911 () Bool)

(assert (=> d!112289 (= lt!410912 lt!410911)))

(declare-fun lt!410913 () Unit!30887)

(declare-fun e!512378 () Unit!30887)

(assert (=> d!112289 (= lt!410913 e!512378)))

(declare-fun c!95787 () Bool)

(assert (=> d!112289 (= c!95787 lt!410911)))

(assert (=> d!112289 (= lt!410911 (containsKey!443 (toList!5672 lt!410843) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!112289 (= (contains!4684 lt!410843 #b1000000000000000000000000000000000000000000000000000000000000000) lt!410912)))

(declare-fun b!913394 () Bool)

(declare-fun lt!410910 () Unit!30887)

(assert (=> b!913394 (= e!512378 lt!410910)))

(assert (=> b!913394 (= lt!410910 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 lt!410843) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!913394 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410843) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913395 () Bool)

(declare-fun Unit!30897 () Unit!30887)

(assert (=> b!913395 (= e!512378 Unit!30897)))

(declare-fun b!913396 () Bool)

(assert (=> b!913396 (= e!512377 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410843) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112289 c!95787) b!913394))

(assert (= (and d!112289 (not c!95787)) b!913395))

(assert (= (and d!112289 (not res!616211)) b!913396))

(declare-fun m!847833 () Bool)

(assert (=> d!112289 m!847833))

(declare-fun m!847835 () Bool)

(assert (=> b!913394 m!847835))

(declare-fun m!847837 () Bool)

(assert (=> b!913394 m!847837))

(assert (=> b!913394 m!847837))

(declare-fun m!847839 () Bool)

(assert (=> b!913394 m!847839))

(assert (=> b!913396 m!847837))

(assert (=> b!913396 m!847837))

(assert (=> b!913396 m!847839))

(assert (=> bm!40435 d!112289))

(declare-fun d!112291 () Bool)

(declare-fun e!512381 () Bool)

(assert (=> d!112291 e!512381))

(declare-fun c!95790 () Bool)

(assert (=> d!112291 (= c!95790 (and (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!112291 true))

(declare-fun _$15!95 () Unit!30887)

(assert (=> d!112291 (= (choose!1539 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160) _$15!95)))

(declare-fun b!913401 () Bool)

(assert (=> b!913401 (= e!512381 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000))))

(declare-fun b!913402 () Bool)

(assert (=> b!913402 (= e!512381 (ite (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!112291 c!95790) b!913401))

(assert (= (and d!112291 (not c!95790)) b!913402))

(assert (=> b!913401 m!847629))

(assert (=> d!112279 d!112291))

(assert (=> d!112279 d!112271))

(declare-fun d!112293 () Bool)

(declare-fun get!13711 (Option!484) V!30497)

(assert (=> d!112293 (= (apply!530 lt!410869 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)) (get!13711 (getValueByKey!478 (toList!5672 lt!410869) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000))))))

(declare-fun bs!25677 () Bool)

(assert (= bs!25677 d!112293))

(assert (=> bs!25677 m!847743))

(assert (=> bs!25677 m!847829))

(assert (=> bs!25677 m!847829))

(declare-fun m!847841 () Bool)

(assert (=> bs!25677 m!847841))

(assert (=> b!913336 d!112293))

(declare-fun d!112295 () Bool)

(declare-fun c!95793 () Bool)

(assert (=> d!112295 (= c!95793 ((_ is ValueCellFull!9093) (select (arr!26100 _values!1152) #b00000000000000000000000000000000)))))

(declare-fun e!512384 () V!30497)

(assert (=> d!112295 (= (get!13710 (select (arr!26100 _values!1152) #b00000000000000000000000000000000) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)) e!512384)))

(declare-fun b!913407 () Bool)

(declare-fun get!13712 (ValueCell!9093 V!30497) V!30497)

(assert (=> b!913407 (= e!512384 (get!13712 (select (arr!26100 _values!1152) #b00000000000000000000000000000000) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!913408 () Bool)

(declare-fun get!13713 (ValueCell!9093 V!30497) V!30497)

(assert (=> b!913408 (= e!512384 (get!13713 (select (arr!26100 _values!1152) #b00000000000000000000000000000000) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112295 c!95793) b!913407))

(assert (= (and d!112295 (not c!95793)) b!913408))

(assert (=> b!913407 m!847791))

(assert (=> b!913407 m!847727))

(declare-fun m!847843 () Bool)

(assert (=> b!913407 m!847843))

(assert (=> b!913408 m!847791))

(assert (=> b!913408 m!847727))

(declare-fun m!847845 () Bool)

(assert (=> b!913408 m!847845))

(assert (=> b!913336 d!112295))

(declare-fun d!112297 () Bool)

(assert (=> d!112297 (= (apply!530 lt!410843 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13711 (getValueByKey!478 (toList!5672 lt!410843) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25678 () Bool)

(assert (= bs!25678 d!112297))

(declare-fun m!847847 () Bool)

(assert (=> bs!25678 m!847847))

(assert (=> bs!25678 m!847847))

(declare-fun m!847849 () Bool)

(assert (=> bs!25678 m!847849))

(assert (=> b!913301 d!112297))

(declare-fun d!112299 () Bool)

(declare-fun isEmpty!697 (Option!484) Bool)

(assert (=> d!112299 (= (isDefined!348 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033)) (not (isEmpty!697 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033))))))

(declare-fun bs!25679 () Bool)

(assert (= bs!25679 d!112299))

(assert (=> bs!25679 m!847675))

(declare-fun m!847851 () Bool)

(assert (=> bs!25679 m!847851))

(assert (=> b!913251 d!112299))

(declare-fun b!913420 () Bool)

(declare-fun e!512390 () Option!484)

(assert (=> b!913420 (= e!512390 None!482)))

(declare-fun d!112301 () Bool)

(declare-fun c!95798 () Bool)

(assert (=> d!112301 (= c!95798 (and ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))) (= (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)))) k0!1033)))))

(declare-fun e!512389 () Option!484)

(assert (=> d!112301 (= (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033) e!512389)))

(declare-fun b!913418 () Bool)

(assert (=> b!913418 (= e!512389 e!512390)))

(declare-fun c!95799 () Bool)

(assert (=> b!913418 (= c!95799 (and ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))) (not (= (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)))) k0!1033))))))

(declare-fun b!913417 () Bool)

(assert (=> b!913417 (= e!512389 (Some!483 (_2!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))))))

(declare-fun b!913419 () Bool)

(assert (=> b!913419 (= e!512390 (getValueByKey!478 (t!26041 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))) k0!1033))))

(assert (= (and d!112301 c!95798) b!913417))

(assert (= (and d!112301 (not c!95798)) b!913418))

(assert (= (and b!913418 c!95799) b!913419))

(assert (= (and b!913418 (not c!95799)) b!913420))

(declare-fun m!847853 () Bool)

(assert (=> b!913419 m!847853))

(assert (=> b!913251 d!112301))

(declare-fun d!112303 () Bool)

(assert (=> d!112303 (= (apply!530 (+!2563 lt!410870 (tuple2!12603 lt!410879 minValue!1094)) lt!410884) (get!13711 (getValueByKey!478 (toList!5672 (+!2563 lt!410870 (tuple2!12603 lt!410879 minValue!1094))) lt!410884)))))

(declare-fun bs!25680 () Bool)

(assert (= bs!25680 d!112303))

(declare-fun m!847855 () Bool)

(assert (=> bs!25680 m!847855))

(assert (=> bs!25680 m!847855))

(declare-fun m!847857 () Bool)

(assert (=> bs!25680 m!847857))

(assert (=> b!913334 d!112303))

(declare-fun d!112305 () Bool)

(declare-fun e!512393 () Bool)

(assert (=> d!112305 e!512393))

(declare-fun res!616216 () Bool)

(assert (=> d!112305 (=> (not res!616216) (not e!512393))))

(declare-fun lt!410922 () ListLongMap!11313)

(assert (=> d!112305 (= res!616216 (contains!4684 lt!410922 (_1!6311 (tuple2!12603 lt!410873 minValue!1094))))))

(declare-fun lt!410923 () List!18442)

(assert (=> d!112305 (= lt!410922 (ListLongMap!11314 lt!410923))))

(declare-fun lt!410924 () Unit!30887)

(declare-fun lt!410925 () Unit!30887)

(assert (=> d!112305 (= lt!410924 lt!410925)))

(assert (=> d!112305 (= (getValueByKey!478 lt!410923 (_1!6311 (tuple2!12603 lt!410873 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410873 minValue!1094))))))

(declare-fun lemmaContainsTupThenGetReturnValue!253 (List!18442 (_ BitVec 64) V!30497) Unit!30887)

(assert (=> d!112305 (= lt!410925 (lemmaContainsTupThenGetReturnValue!253 lt!410923 (_1!6311 (tuple2!12603 lt!410873 minValue!1094)) (_2!6311 (tuple2!12603 lt!410873 minValue!1094))))))

(declare-fun insertStrictlySorted!309 (List!18442 (_ BitVec 64) V!30497) List!18442)

(assert (=> d!112305 (= lt!410923 (insertStrictlySorted!309 (toList!5672 lt!410886) (_1!6311 (tuple2!12603 lt!410873 minValue!1094)) (_2!6311 (tuple2!12603 lt!410873 minValue!1094))))))

(assert (=> d!112305 (= (+!2563 lt!410886 (tuple2!12603 lt!410873 minValue!1094)) lt!410922)))

(declare-fun b!913425 () Bool)

(declare-fun res!616217 () Bool)

(assert (=> b!913425 (=> (not res!616217) (not e!512393))))

(assert (=> b!913425 (= res!616217 (= (getValueByKey!478 (toList!5672 lt!410922) (_1!6311 (tuple2!12603 lt!410873 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410873 minValue!1094)))))))

(declare-fun b!913426 () Bool)

(declare-fun contains!4687 (List!18442 tuple2!12602) Bool)

(assert (=> b!913426 (= e!512393 (contains!4687 (toList!5672 lt!410922) (tuple2!12603 lt!410873 minValue!1094)))))

(assert (= (and d!112305 res!616216) b!913425))

(assert (= (and b!913425 res!616217) b!913426))

(declare-fun m!847859 () Bool)

(assert (=> d!112305 m!847859))

(declare-fun m!847861 () Bool)

(assert (=> d!112305 m!847861))

(declare-fun m!847863 () Bool)

(assert (=> d!112305 m!847863))

(declare-fun m!847865 () Bool)

(assert (=> d!112305 m!847865))

(declare-fun m!847867 () Bool)

(assert (=> b!913425 m!847867))

(declare-fun m!847869 () Bool)

(assert (=> b!913426 m!847869))

(assert (=> b!913334 d!112305))

(declare-fun d!112307 () Bool)

(declare-fun e!512394 () Bool)

(assert (=> d!112307 e!512394))

(declare-fun res!616218 () Bool)

(assert (=> d!112307 (=> (not res!616218) (not e!512394))))

(declare-fun lt!410926 () ListLongMap!11313)

(assert (=> d!112307 (= res!616218 (contains!4684 lt!410926 (_1!6311 (tuple2!12603 lt!410878 zeroValue!1094))))))

(declare-fun lt!410927 () List!18442)

(assert (=> d!112307 (= lt!410926 (ListLongMap!11314 lt!410927))))

(declare-fun lt!410928 () Unit!30887)

(declare-fun lt!410929 () Unit!30887)

(assert (=> d!112307 (= lt!410928 lt!410929)))

(assert (=> d!112307 (= (getValueByKey!478 lt!410927 (_1!6311 (tuple2!12603 lt!410878 zeroValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410878 zeroValue!1094))))))

(assert (=> d!112307 (= lt!410929 (lemmaContainsTupThenGetReturnValue!253 lt!410927 (_1!6311 (tuple2!12603 lt!410878 zeroValue!1094)) (_2!6311 (tuple2!12603 lt!410878 zeroValue!1094))))))

(assert (=> d!112307 (= lt!410927 (insertStrictlySorted!309 (toList!5672 lt!410888) (_1!6311 (tuple2!12603 lt!410878 zeroValue!1094)) (_2!6311 (tuple2!12603 lt!410878 zeroValue!1094))))))

(assert (=> d!112307 (= (+!2563 lt!410888 (tuple2!12603 lt!410878 zeroValue!1094)) lt!410926)))

(declare-fun b!913427 () Bool)

(declare-fun res!616219 () Bool)

(assert (=> b!913427 (=> (not res!616219) (not e!512394))))

(assert (=> b!913427 (= res!616219 (= (getValueByKey!478 (toList!5672 lt!410926) (_1!6311 (tuple2!12603 lt!410878 zeroValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410878 zeroValue!1094)))))))

(declare-fun b!913428 () Bool)

(assert (=> b!913428 (= e!512394 (contains!4687 (toList!5672 lt!410926) (tuple2!12603 lt!410878 zeroValue!1094)))))

(assert (= (and d!112307 res!616218) b!913427))

(assert (= (and b!913427 res!616219) b!913428))

(declare-fun m!847871 () Bool)

(assert (=> d!112307 m!847871))

(declare-fun m!847873 () Bool)

(assert (=> d!112307 m!847873))

(declare-fun m!847875 () Bool)

(assert (=> d!112307 m!847875))

(declare-fun m!847877 () Bool)

(assert (=> d!112307 m!847877))

(declare-fun m!847879 () Bool)

(assert (=> b!913427 m!847879))

(declare-fun m!847881 () Bool)

(assert (=> b!913428 m!847881))

(assert (=> b!913334 d!112307))

(declare-fun d!112309 () Bool)

(assert (=> d!112309 (= (apply!530 (+!2563 lt!410886 (tuple2!12603 lt!410873 minValue!1094)) lt!410883) (get!13711 (getValueByKey!478 (toList!5672 (+!2563 lt!410886 (tuple2!12603 lt!410873 minValue!1094))) lt!410883)))))

(declare-fun bs!25681 () Bool)

(assert (= bs!25681 d!112309))

(declare-fun m!847883 () Bool)

(assert (=> bs!25681 m!847883))

(assert (=> bs!25681 m!847883))

(declare-fun m!847885 () Bool)

(assert (=> bs!25681 m!847885))

(assert (=> b!913334 d!112309))

(declare-fun d!112311 () Bool)

(declare-fun e!512395 () Bool)

(assert (=> d!112311 e!512395))

(declare-fun res!616220 () Bool)

(assert (=> d!112311 (=> (not res!616220) (not e!512395))))

(declare-fun lt!410930 () ListLongMap!11313)

(assert (=> d!112311 (= res!616220 (contains!4684 lt!410930 (_1!6311 (tuple2!12603 lt!410882 zeroValue!1094))))))

(declare-fun lt!410931 () List!18442)

(assert (=> d!112311 (= lt!410930 (ListLongMap!11314 lt!410931))))

(declare-fun lt!410932 () Unit!30887)

(declare-fun lt!410933 () Unit!30887)

(assert (=> d!112311 (= lt!410932 lt!410933)))

(assert (=> d!112311 (= (getValueByKey!478 lt!410931 (_1!6311 (tuple2!12603 lt!410882 zeroValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410882 zeroValue!1094))))))

(assert (=> d!112311 (= lt!410933 (lemmaContainsTupThenGetReturnValue!253 lt!410931 (_1!6311 (tuple2!12603 lt!410882 zeroValue!1094)) (_2!6311 (tuple2!12603 lt!410882 zeroValue!1094))))))

(assert (=> d!112311 (= lt!410931 (insertStrictlySorted!309 (toList!5672 lt!410885) (_1!6311 (tuple2!12603 lt!410882 zeroValue!1094)) (_2!6311 (tuple2!12603 lt!410882 zeroValue!1094))))))

(assert (=> d!112311 (= (+!2563 lt!410885 (tuple2!12603 lt!410882 zeroValue!1094)) lt!410930)))

(declare-fun b!913429 () Bool)

(declare-fun res!616221 () Bool)

(assert (=> b!913429 (=> (not res!616221) (not e!512395))))

(assert (=> b!913429 (= res!616221 (= (getValueByKey!478 (toList!5672 lt!410930) (_1!6311 (tuple2!12603 lt!410882 zeroValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410882 zeroValue!1094)))))))

(declare-fun b!913430 () Bool)

(assert (=> b!913430 (= e!512395 (contains!4687 (toList!5672 lt!410930) (tuple2!12603 lt!410882 zeroValue!1094)))))

(assert (= (and d!112311 res!616220) b!913429))

(assert (= (and b!913429 res!616221) b!913430))

(declare-fun m!847887 () Bool)

(assert (=> d!112311 m!847887))

(declare-fun m!847889 () Bool)

(assert (=> d!112311 m!847889))

(declare-fun m!847891 () Bool)

(assert (=> d!112311 m!847891))

(declare-fun m!847893 () Bool)

(assert (=> d!112311 m!847893))

(declare-fun m!847895 () Bool)

(assert (=> b!913429 m!847895))

(declare-fun m!847897 () Bool)

(assert (=> b!913430 m!847897))

(assert (=> b!913334 d!112311))

(declare-fun d!112313 () Bool)

(assert (=> d!112313 (= (apply!530 lt!410870 lt!410884) (get!13711 (getValueByKey!478 (toList!5672 lt!410870) lt!410884)))))

(declare-fun bs!25682 () Bool)

(assert (= bs!25682 d!112313))

(declare-fun m!847899 () Bool)

(assert (=> bs!25682 m!847899))

(assert (=> bs!25682 m!847899))

(declare-fun m!847901 () Bool)

(assert (=> bs!25682 m!847901))

(assert (=> b!913334 d!112313))

(declare-fun d!112315 () Bool)

(assert (=> d!112315 (= (apply!530 (+!2563 lt!410886 (tuple2!12603 lt!410873 minValue!1094)) lt!410883) (apply!530 lt!410886 lt!410883))))

(declare-fun lt!410936 () Unit!30887)

(declare-fun choose!1540 (ListLongMap!11313 (_ BitVec 64) V!30497 (_ BitVec 64)) Unit!30887)

(assert (=> d!112315 (= lt!410936 (choose!1540 lt!410886 lt!410873 minValue!1094 lt!410883))))

(declare-fun e!512398 () Bool)

(assert (=> d!112315 e!512398))

(declare-fun res!616224 () Bool)

(assert (=> d!112315 (=> (not res!616224) (not e!512398))))

(assert (=> d!112315 (= res!616224 (contains!4684 lt!410886 lt!410883))))

(assert (=> d!112315 (= (addApplyDifferent!349 lt!410886 lt!410873 minValue!1094 lt!410883) lt!410936)))

(declare-fun b!913434 () Bool)

(assert (=> b!913434 (= e!512398 (not (= lt!410883 lt!410873)))))

(assert (= (and d!112315 res!616224) b!913434))

(declare-fun m!847903 () Bool)

(assert (=> d!112315 m!847903))

(assert (=> d!112315 m!847751))

(assert (=> d!112315 m!847773))

(assert (=> d!112315 m!847773))

(assert (=> d!112315 m!847775))

(declare-fun m!847905 () Bool)

(assert (=> d!112315 m!847905))

(assert (=> b!913334 d!112315))

(declare-fun d!112317 () Bool)

(assert (=> d!112317 (= (apply!530 lt!410885 lt!410877) (get!13711 (getValueByKey!478 (toList!5672 lt!410885) lt!410877)))))

(declare-fun bs!25683 () Bool)

(assert (= bs!25683 d!112317))

(declare-fun m!847907 () Bool)

(assert (=> bs!25683 m!847907))

(assert (=> bs!25683 m!847907))

(declare-fun m!847909 () Bool)

(assert (=> bs!25683 m!847909))

(assert (=> b!913334 d!112317))

(declare-fun d!112319 () Bool)

(assert (=> d!112319 (= (apply!530 (+!2563 lt!410885 (tuple2!12603 lt!410882 zeroValue!1094)) lt!410877) (get!13711 (getValueByKey!478 (toList!5672 (+!2563 lt!410885 (tuple2!12603 lt!410882 zeroValue!1094))) lt!410877)))))

(declare-fun bs!25684 () Bool)

(assert (= bs!25684 d!112319))

(declare-fun m!847911 () Bool)

(assert (=> bs!25684 m!847911))

(assert (=> bs!25684 m!847911))

(declare-fun m!847913 () Bool)

(assert (=> bs!25684 m!847913))

(assert (=> b!913334 d!112319))

(declare-fun d!112321 () Bool)

(assert (=> d!112321 (= (apply!530 (+!2563 lt!410885 (tuple2!12603 lt!410882 zeroValue!1094)) lt!410877) (apply!530 lt!410885 lt!410877))))

(declare-fun lt!410937 () Unit!30887)

(assert (=> d!112321 (= lt!410937 (choose!1540 lt!410885 lt!410882 zeroValue!1094 lt!410877))))

(declare-fun e!512399 () Bool)

(assert (=> d!112321 e!512399))

(declare-fun res!616225 () Bool)

(assert (=> d!112321 (=> (not res!616225) (not e!512399))))

(assert (=> d!112321 (= res!616225 (contains!4684 lt!410885 lt!410877))))

(assert (=> d!112321 (= (addApplyDifferent!349 lt!410885 lt!410882 zeroValue!1094 lt!410877) lt!410937)))

(declare-fun b!913435 () Bool)

(assert (=> b!913435 (= e!512399 (not (= lt!410877 lt!410882)))))

(assert (= (and d!112321 res!616225) b!913435))

(declare-fun m!847915 () Bool)

(assert (=> d!112321 m!847915))

(assert (=> d!112321 m!847753))

(assert (=> d!112321 m!847759))

(assert (=> d!112321 m!847759))

(assert (=> d!112321 m!847761))

(declare-fun m!847917 () Bool)

(assert (=> d!112321 m!847917))

(assert (=> b!913334 d!112321))

(declare-fun d!112323 () Bool)

(assert (=> d!112323 (contains!4684 (+!2563 lt!410888 (tuple2!12603 lt!410878 zeroValue!1094)) lt!410874)))

(declare-fun lt!410940 () Unit!30887)

(declare-fun choose!1541 (ListLongMap!11313 (_ BitVec 64) V!30497 (_ BitVec 64)) Unit!30887)

(assert (=> d!112323 (= lt!410940 (choose!1541 lt!410888 lt!410878 zeroValue!1094 lt!410874))))

(assert (=> d!112323 (contains!4684 lt!410888 lt!410874)))

(assert (=> d!112323 (= (addStillContains!349 lt!410888 lt!410878 zeroValue!1094 lt!410874) lt!410940)))

(declare-fun bs!25685 () Bool)

(assert (= bs!25685 d!112323))

(assert (=> bs!25685 m!847755))

(assert (=> bs!25685 m!847755))

(assert (=> bs!25685 m!847757))

(declare-fun m!847919 () Bool)

(assert (=> bs!25685 m!847919))

(declare-fun m!847921 () Bool)

(assert (=> bs!25685 m!847921))

(assert (=> b!913334 d!112323))

(declare-fun d!112325 () Bool)

(declare-fun e!512400 () Bool)

(assert (=> d!112325 e!512400))

(declare-fun res!616226 () Bool)

(assert (=> d!112325 (=> (not res!616226) (not e!512400))))

(declare-fun lt!410941 () ListLongMap!11313)

(assert (=> d!112325 (= res!616226 (contains!4684 lt!410941 (_1!6311 (tuple2!12603 lt!410879 minValue!1094))))))

(declare-fun lt!410942 () List!18442)

(assert (=> d!112325 (= lt!410941 (ListLongMap!11314 lt!410942))))

(declare-fun lt!410943 () Unit!30887)

(declare-fun lt!410944 () Unit!30887)

(assert (=> d!112325 (= lt!410943 lt!410944)))

(assert (=> d!112325 (= (getValueByKey!478 lt!410942 (_1!6311 (tuple2!12603 lt!410879 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410879 minValue!1094))))))

(assert (=> d!112325 (= lt!410944 (lemmaContainsTupThenGetReturnValue!253 lt!410942 (_1!6311 (tuple2!12603 lt!410879 minValue!1094)) (_2!6311 (tuple2!12603 lt!410879 minValue!1094))))))

(assert (=> d!112325 (= lt!410942 (insertStrictlySorted!309 (toList!5672 lt!410870) (_1!6311 (tuple2!12603 lt!410879 minValue!1094)) (_2!6311 (tuple2!12603 lt!410879 minValue!1094))))))

(assert (=> d!112325 (= (+!2563 lt!410870 (tuple2!12603 lt!410879 minValue!1094)) lt!410941)))

(declare-fun b!913437 () Bool)

(declare-fun res!616227 () Bool)

(assert (=> b!913437 (=> (not res!616227) (not e!512400))))

(assert (=> b!913437 (= res!616227 (= (getValueByKey!478 (toList!5672 lt!410941) (_1!6311 (tuple2!12603 lt!410879 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410879 minValue!1094)))))))

(declare-fun b!913438 () Bool)

(assert (=> b!913438 (= e!512400 (contains!4687 (toList!5672 lt!410941) (tuple2!12603 lt!410879 minValue!1094)))))

(assert (= (and d!112325 res!616226) b!913437))

(assert (= (and b!913437 res!616227) b!913438))

(declare-fun m!847923 () Bool)

(assert (=> d!112325 m!847923))

(declare-fun m!847925 () Bool)

(assert (=> d!112325 m!847925))

(declare-fun m!847927 () Bool)

(assert (=> d!112325 m!847927))

(declare-fun m!847929 () Bool)

(assert (=> d!112325 m!847929))

(declare-fun m!847931 () Bool)

(assert (=> b!913437 m!847931))

(declare-fun m!847933 () Bool)

(assert (=> b!913438 m!847933))

(assert (=> b!913334 d!112325))

(declare-fun d!112327 () Bool)

(declare-fun e!512401 () Bool)

(assert (=> d!112327 e!512401))

(declare-fun res!616228 () Bool)

(assert (=> d!112327 (=> res!616228 e!512401)))

(declare-fun lt!410947 () Bool)

(assert (=> d!112327 (= res!616228 (not lt!410947))))

(declare-fun lt!410946 () Bool)

(assert (=> d!112327 (= lt!410947 lt!410946)))

(declare-fun lt!410948 () Unit!30887)

(declare-fun e!512402 () Unit!30887)

(assert (=> d!112327 (= lt!410948 e!512402)))

(declare-fun c!95800 () Bool)

(assert (=> d!112327 (= c!95800 lt!410946)))

(assert (=> d!112327 (= lt!410946 (containsKey!443 (toList!5672 (+!2563 lt!410888 (tuple2!12603 lt!410878 zeroValue!1094))) lt!410874))))

(assert (=> d!112327 (= (contains!4684 (+!2563 lt!410888 (tuple2!12603 lt!410878 zeroValue!1094)) lt!410874) lt!410947)))

(declare-fun b!913439 () Bool)

(declare-fun lt!410945 () Unit!30887)

(assert (=> b!913439 (= e!512402 lt!410945)))

(assert (=> b!913439 (= lt!410945 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 (+!2563 lt!410888 (tuple2!12603 lt!410878 zeroValue!1094))) lt!410874))))

(assert (=> b!913439 (isDefined!348 (getValueByKey!478 (toList!5672 (+!2563 lt!410888 (tuple2!12603 lt!410878 zeroValue!1094))) lt!410874))))

(declare-fun b!913440 () Bool)

(declare-fun Unit!30898 () Unit!30887)

(assert (=> b!913440 (= e!512402 Unit!30898)))

(declare-fun b!913441 () Bool)

(assert (=> b!913441 (= e!512401 (isDefined!348 (getValueByKey!478 (toList!5672 (+!2563 lt!410888 (tuple2!12603 lt!410878 zeroValue!1094))) lt!410874)))))

(assert (= (and d!112327 c!95800) b!913439))

(assert (= (and d!112327 (not c!95800)) b!913440))

(assert (= (and d!112327 (not res!616228)) b!913441))

(declare-fun m!847935 () Bool)

(assert (=> d!112327 m!847935))

(declare-fun m!847937 () Bool)

(assert (=> b!913439 m!847937))

(declare-fun m!847939 () Bool)

(assert (=> b!913439 m!847939))

(assert (=> b!913439 m!847939))

(declare-fun m!847941 () Bool)

(assert (=> b!913439 m!847941))

(assert (=> b!913441 m!847939))

(assert (=> b!913441 m!847939))

(assert (=> b!913441 m!847941))

(assert (=> b!913334 d!112327))

(declare-fun d!112329 () Bool)

(assert (=> d!112329 (= (apply!530 lt!410886 lt!410883) (get!13711 (getValueByKey!478 (toList!5672 lt!410886) lt!410883)))))

(declare-fun bs!25686 () Bool)

(assert (= bs!25686 d!112329))

(declare-fun m!847943 () Bool)

(assert (=> bs!25686 m!847943))

(assert (=> bs!25686 m!847943))

(declare-fun m!847945 () Bool)

(assert (=> bs!25686 m!847945))

(assert (=> b!913334 d!112329))

(declare-fun d!112331 () Bool)

(assert (=> d!112331 (= (apply!530 (+!2563 lt!410870 (tuple2!12603 lt!410879 minValue!1094)) lt!410884) (apply!530 lt!410870 lt!410884))))

(declare-fun lt!410949 () Unit!30887)

(assert (=> d!112331 (= lt!410949 (choose!1540 lt!410870 lt!410879 minValue!1094 lt!410884))))

(declare-fun e!512403 () Bool)

(assert (=> d!112331 e!512403))

(declare-fun res!616229 () Bool)

(assert (=> d!112331 (=> (not res!616229) (not e!512403))))

(assert (=> d!112331 (= res!616229 (contains!4684 lt!410870 lt!410884))))

(assert (=> d!112331 (= (addApplyDifferent!349 lt!410870 lt!410879 minValue!1094 lt!410884) lt!410949)))

(declare-fun b!913442 () Bool)

(assert (=> b!913442 (= e!512403 (not (= lt!410884 lt!410879)))))

(assert (= (and d!112331 res!616229) b!913442))

(declare-fun m!847947 () Bool)

(assert (=> d!112331 m!847947))

(assert (=> d!112331 m!847763))

(assert (=> d!112331 m!847765))

(assert (=> d!112331 m!847765))

(assert (=> d!112331 m!847771))

(declare-fun m!847949 () Bool)

(assert (=> d!112331 m!847949))

(assert (=> b!913334 d!112331))

(declare-fun b!913467 () Bool)

(declare-fun res!616238 () Bool)

(declare-fun e!512418 () Bool)

(assert (=> b!913467 (=> (not res!616238) (not e!512418))))

(declare-fun lt!410970 () ListLongMap!11313)

(assert (=> b!913467 (= res!616238 (not (contains!4684 lt!410970 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!913468 () Bool)

(declare-fun e!512419 () Bool)

(assert (=> b!913468 (= e!512419 (validKeyInArray!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913468 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!913469 () Bool)

(declare-fun e!512424 () Bool)

(assert (=> b!913469 (= e!512418 e!512424)))

(declare-fun c!95811 () Bool)

(assert (=> b!913469 (= c!95811 e!512419)))

(declare-fun res!616241 () Bool)

(assert (=> b!913469 (=> (not res!616241) (not e!512419))))

(assert (=> b!913469 (= res!616241 (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(declare-fun b!913470 () Bool)

(declare-fun e!512423 () ListLongMap!11313)

(assert (=> b!913470 (= e!512423 (ListLongMap!11314 Nil!18439))))

(declare-fun b!913471 () Bool)

(declare-fun lt!410966 () Unit!30887)

(declare-fun lt!410968 () Unit!30887)

(assert (=> b!913471 (= lt!410966 lt!410968)))

(declare-fun lt!410964 () (_ BitVec 64))

(declare-fun lt!410967 () V!30497)

(declare-fun lt!410965 () ListLongMap!11313)

(declare-fun lt!410969 () (_ BitVec 64))

(assert (=> b!913471 (not (contains!4684 (+!2563 lt!410965 (tuple2!12603 lt!410964 lt!410967)) lt!410969))))

(declare-fun addStillNotContains!220 (ListLongMap!11313 (_ BitVec 64) V!30497 (_ BitVec 64)) Unit!30887)

(assert (=> b!913471 (= lt!410968 (addStillNotContains!220 lt!410965 lt!410964 lt!410967 lt!410969))))

(assert (=> b!913471 (= lt!410969 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!913471 (= lt!410967 (get!13710 (select (arr!26100 _values!1152) #b00000000000000000000000000000000) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!913471 (= lt!410964 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun call!40458 () ListLongMap!11313)

(assert (=> b!913471 (= lt!410965 call!40458)))

(declare-fun e!512420 () ListLongMap!11313)

(assert (=> b!913471 (= e!512420 (+!2563 call!40458 (tuple2!12603 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) (get!13710 (select (arr!26100 _values!1152) #b00000000000000000000000000000000) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!913472 () Bool)

(assert (=> b!913472 (= e!512420 call!40458)))

(declare-fun b!913473 () Bool)

(declare-fun e!512421 () Bool)

(assert (=> b!913473 (= e!512424 e!512421)))

(assert (=> b!913473 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(declare-fun res!616240 () Bool)

(assert (=> b!913473 (= res!616240 (contains!4684 lt!410970 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913473 (=> (not res!616240) (not e!512421))))

(declare-fun b!913474 () Bool)

(assert (=> b!913474 (= e!512423 e!512420)))

(declare-fun c!95810 () Bool)

(assert (=> b!913474 (= c!95810 (validKeyInArray!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913475 () Bool)

(assert (=> b!913475 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(assert (=> b!913475 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26560 _values!1152)))))

(assert (=> b!913475 (= e!512421 (= (apply!530 lt!410970 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)) (get!13710 (select (arr!26100 _values!1152) #b00000000000000000000000000000000) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!913476 () Bool)

(declare-fun e!512422 () Bool)

(declare-fun isEmpty!698 (ListLongMap!11313) Bool)

(assert (=> b!913476 (= e!512422 (isEmpty!698 lt!410970))))

(declare-fun d!112333 () Bool)

(assert (=> d!112333 e!512418))

(declare-fun res!616239 () Bool)

(assert (=> d!112333 (=> (not res!616239) (not e!512418))))

(assert (=> d!112333 (= res!616239 (not (contains!4684 lt!410970 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!112333 (= lt!410970 e!512423)))

(declare-fun c!95809 () Bool)

(assert (=> d!112333 (= c!95809 (bvsge #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(assert (=> d!112333 (validMask!0 mask!1756)))

(assert (=> d!112333 (= (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!410970)))

(declare-fun b!913477 () Bool)

(assert (=> b!913477 (= e!512424 e!512422)))

(declare-fun c!95812 () Bool)

(assert (=> b!913477 (= c!95812 (bvslt #b00000000000000000000000000000000 (size!26561 _keys!1386)))))

(declare-fun b!913478 () Bool)

(assert (=> b!913478 (= e!512422 (= lt!410970 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!1160)))))

(declare-fun bm!40455 () Bool)

(assert (=> bm!40455 (= call!40458 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!1160))))

(assert (= (and d!112333 c!95809) b!913470))

(assert (= (and d!112333 (not c!95809)) b!913474))

(assert (= (and b!913474 c!95810) b!913471))

(assert (= (and b!913474 (not c!95810)) b!913472))

(assert (= (or b!913471 b!913472) bm!40455))

(assert (= (and d!112333 res!616239) b!913467))

(assert (= (and b!913467 res!616238) b!913469))

(assert (= (and b!913469 res!616241) b!913468))

(assert (= (and b!913469 c!95811) b!913473))

(assert (= (and b!913469 (not c!95811)) b!913477))

(assert (= (and b!913473 res!616240) b!913475))

(assert (= (and b!913477 c!95812) b!913478))

(assert (= (and b!913477 (not c!95812)) b!913476))

(declare-fun b_lambda!13353 () Bool)

(assert (=> (not b_lambda!13353) (not b!913471)))

(assert (=> b!913471 t!26046))

(declare-fun b_and!27335 () Bool)

(assert (= b_and!27333 (and (=> t!26046 result!10701) b_and!27335)))

(declare-fun b_lambda!13355 () Bool)

(assert (=> (not b_lambda!13355) (not b!913475)))

(assert (=> b!913475 t!26046))

(declare-fun b_and!27337 () Bool)

(assert (= b_and!27335 (and (=> t!26046 result!10701) b_and!27337)))

(declare-fun m!847951 () Bool)

(assert (=> b!913478 m!847951))

(declare-fun m!847953 () Bool)

(assert (=> b!913476 m!847953))

(declare-fun m!847955 () Bool)

(assert (=> d!112333 m!847955))

(assert (=> d!112333 m!847619))

(assert (=> b!913471 m!847727))

(assert (=> b!913471 m!847791))

(declare-fun m!847957 () Bool)

(assert (=> b!913471 m!847957))

(declare-fun m!847959 () Bool)

(assert (=> b!913471 m!847959))

(assert (=> b!913471 m!847743))

(assert (=> b!913471 m!847791))

(assert (=> b!913471 m!847727))

(assert (=> b!913471 m!847793))

(declare-fun m!847961 () Bool)

(assert (=> b!913471 m!847961))

(assert (=> b!913471 m!847957))

(declare-fun m!847963 () Bool)

(assert (=> b!913471 m!847963))

(assert (=> b!913474 m!847743))

(assert (=> b!913474 m!847743))

(assert (=> b!913474 m!847783))

(assert (=> b!913475 m!847727))

(assert (=> b!913475 m!847791))

(assert (=> b!913475 m!847743))

(assert (=> b!913475 m!847743))

(declare-fun m!847965 () Bool)

(assert (=> b!913475 m!847965))

(assert (=> b!913475 m!847791))

(assert (=> b!913475 m!847727))

(assert (=> b!913475 m!847793))

(assert (=> b!913468 m!847743))

(assert (=> b!913468 m!847743))

(assert (=> b!913468 m!847783))

(assert (=> bm!40455 m!847951))

(assert (=> b!913473 m!847743))

(assert (=> b!913473 m!847743))

(declare-fun m!847967 () Bool)

(assert (=> b!913473 m!847967))

(declare-fun m!847969 () Bool)

(assert (=> b!913467 m!847969))

(assert (=> b!913334 d!112333))

(declare-fun d!112335 () Bool)

(declare-fun e!512425 () Bool)

(assert (=> d!112335 e!512425))

(declare-fun res!616242 () Bool)

(assert (=> d!112335 (=> (not res!616242) (not e!512425))))

(declare-fun lt!410971 () ListLongMap!11313)

(assert (=> d!112335 (= res!616242 (contains!4684 lt!410971 (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun lt!410972 () List!18442)

(assert (=> d!112335 (= lt!410971 (ListLongMap!11314 lt!410972))))

(declare-fun lt!410973 () Unit!30887)

(declare-fun lt!410974 () Unit!30887)

(assert (=> d!112335 (= lt!410973 lt!410974)))

(assert (=> d!112335 (= (getValueByKey!478 lt!410972 (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112335 (= lt!410974 (lemmaContainsTupThenGetReturnValue!253 lt!410972 (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) (_2!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112335 (= lt!410972 (insertStrictlySorted!309 (toList!5672 call!40436) (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) (_2!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112335 (= (+!2563 call!40436 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) lt!410971)))

(declare-fun b!913479 () Bool)

(declare-fun res!616243 () Bool)

(assert (=> b!913479 (=> (not res!616243) (not e!512425))))

(assert (=> b!913479 (= res!616243 (= (getValueByKey!478 (toList!5672 lt!410971) (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(declare-fun b!913480 () Bool)

(assert (=> b!913480 (= e!512425 (contains!4687 (toList!5672 lt!410971) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(assert (= (and d!112335 res!616242) b!913479))

(assert (= (and b!913479 res!616243) b!913480))

(declare-fun m!847971 () Bool)

(assert (=> d!112335 m!847971))

(declare-fun m!847973 () Bool)

(assert (=> d!112335 m!847973))

(declare-fun m!847975 () Bool)

(assert (=> d!112335 m!847975))

(declare-fun m!847977 () Bool)

(assert (=> d!112335 m!847977))

(declare-fun m!847979 () Bool)

(assert (=> b!913479 m!847979))

(declare-fun m!847981 () Bool)

(assert (=> b!913480 m!847981))

(assert (=> b!913300 d!112335))

(declare-fun d!112337 () Bool)

(assert (=> d!112337 (= (validKeyInArray!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)) (and (not (= (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913333 d!112337))

(declare-fun d!112339 () Bool)

(assert (=> d!112339 (isDefined!348 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033))))

(declare-fun lt!410977 () Unit!30887)

(declare-fun choose!1542 (List!18442 (_ BitVec 64)) Unit!30887)

(assert (=> d!112339 (= lt!410977 (choose!1542 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033))))

(declare-fun e!512428 () Bool)

(assert (=> d!112339 e!512428))

(declare-fun res!616246 () Bool)

(assert (=> d!112339 (=> (not res!616246) (not e!512428))))

(declare-fun isStrictlySorted!497 (List!18442) Bool)

(assert (=> d!112339 (= res!616246 (isStrictlySorted!497 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))))

(assert (=> d!112339 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033) lt!410977)))

(declare-fun b!913483 () Bool)

(assert (=> b!913483 (= e!512428 (containsKey!443 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033))))

(assert (= (and d!112339 res!616246) b!913483))

(assert (=> d!112339 m!847675))

(assert (=> d!112339 m!847675))

(assert (=> d!112339 m!847677))

(declare-fun m!847983 () Bool)

(assert (=> d!112339 m!847983))

(declare-fun m!847985 () Bool)

(assert (=> d!112339 m!847985))

(assert (=> b!913483 m!847671))

(assert (=> b!913249 d!112339))

(assert (=> b!913249 d!112299))

(assert (=> b!913249 d!112301))

(declare-fun d!112341 () Bool)

(declare-fun res!616247 () Bool)

(declare-fun e!512429 () Bool)

(assert (=> d!112341 (=> res!616247 e!512429)))

(assert (=> d!112341 (= res!616247 (= (select (arr!26101 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!1033))))

(assert (=> d!112341 (= (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!512429)))

(declare-fun b!913484 () Bool)

(declare-fun e!512430 () Bool)

(assert (=> b!913484 (= e!512429 e!512430)))

(declare-fun res!616248 () Bool)

(assert (=> b!913484 (=> (not res!616248) (not e!512430))))

(assert (=> b!913484 (= res!616248 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!26561 _keys!1386)))))

(declare-fun b!913485 () Bool)

(assert (=> b!913485 (= e!512430 (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!112341 (not res!616247)) b!913484))

(assert (= (and b!913484 res!616248) b!913485))

(declare-fun m!847987 () Bool)

(assert (=> d!112341 m!847987))

(declare-fun m!847989 () Bool)

(assert (=> b!913485 m!847989))

(assert (=> b!913361 d!112341))

(declare-fun d!112343 () Bool)

(assert (=> d!112343 (= (isDefined!348 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)) (not (isEmpty!697 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))))

(declare-fun bs!25687 () Bool)

(assert (= bs!25687 d!112343))

(assert (=> bs!25687 m!847739))

(declare-fun m!847991 () Bool)

(assert (=> bs!25687 m!847991))

(assert (=> b!913319 d!112343))

(declare-fun b!913489 () Bool)

(declare-fun e!512432 () Option!484)

(assert (=> b!913489 (= e!512432 None!482)))

(declare-fun d!112345 () Bool)

(declare-fun c!95813 () Bool)

(assert (=> d!112345 (= c!95813 (and ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) (= (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033)))))

(declare-fun e!512431 () Option!484)

(assert (=> d!112345 (= (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033) e!512431)))

(declare-fun b!913487 () Bool)

(assert (=> b!913487 (= e!512431 e!512432)))

(declare-fun c!95814 () Bool)

(assert (=> b!913487 (= c!95814 (and ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) (not (= (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033))))))

(declare-fun b!913486 () Bool)

(assert (=> b!913486 (= e!512431 (Some!483 (_2!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))))))

(declare-fun b!913488 () Bool)

(assert (=> b!913488 (= e!512432 (getValueByKey!478 (t!26041 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) k0!1033))))

(assert (= (and d!112345 c!95813) b!913486))

(assert (= (and d!112345 (not c!95813)) b!913487))

(assert (= (and b!913487 c!95814) b!913488))

(assert (= (and b!913487 (not c!95814)) b!913489))

(declare-fun m!847993 () Bool)

(assert (=> b!913488 m!847993))

(assert (=> b!913319 d!112345))

(declare-fun b!913490 () Bool)

(declare-fun res!616249 () Bool)

(declare-fun e!512433 () Bool)

(assert (=> b!913490 (=> (not res!616249) (not e!512433))))

(declare-fun lt!410984 () ListLongMap!11313)

(assert (=> b!913490 (= res!616249 (not (contains!4684 lt!410984 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!913491 () Bool)

(declare-fun e!512434 () Bool)

(assert (=> b!913491 (= e!512434 (validKeyInArray!0 (select (arr!26101 _keys!1386) i!717)))))

(assert (=> b!913491 (bvsge i!717 #b00000000000000000000000000000000)))

(declare-fun b!913492 () Bool)

(declare-fun e!512439 () Bool)

(assert (=> b!913492 (= e!512433 e!512439)))

(declare-fun c!95817 () Bool)

(assert (=> b!913492 (= c!95817 e!512434)))

(declare-fun res!616252 () Bool)

(assert (=> b!913492 (=> (not res!616252) (not e!512434))))

(assert (=> b!913492 (= res!616252 (bvslt i!717 (size!26561 _keys!1386)))))

(declare-fun b!913493 () Bool)

(declare-fun e!512438 () ListLongMap!11313)

(assert (=> b!913493 (= e!512438 (ListLongMap!11314 Nil!18439))))

(declare-fun b!913494 () Bool)

(declare-fun lt!410980 () Unit!30887)

(declare-fun lt!410982 () Unit!30887)

(assert (=> b!913494 (= lt!410980 lt!410982)))

(declare-fun lt!410983 () (_ BitVec 64))

(declare-fun lt!410978 () (_ BitVec 64))

(declare-fun lt!410981 () V!30497)

(declare-fun lt!410979 () ListLongMap!11313)

(assert (=> b!913494 (not (contains!4684 (+!2563 lt!410979 (tuple2!12603 lt!410978 lt!410981)) lt!410983))))

(assert (=> b!913494 (= lt!410982 (addStillNotContains!220 lt!410979 lt!410978 lt!410981 lt!410983))))

(assert (=> b!913494 (= lt!410983 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!913494 (= lt!410981 (get!13710 (select (arr!26100 _values!1152) i!717) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!913494 (= lt!410978 (select (arr!26101 _keys!1386) i!717))))

(declare-fun call!40459 () ListLongMap!11313)

(assert (=> b!913494 (= lt!410979 call!40459)))

(declare-fun e!512435 () ListLongMap!11313)

(assert (=> b!913494 (= e!512435 (+!2563 call!40459 (tuple2!12603 (select (arr!26101 _keys!1386) i!717) (get!13710 (select (arr!26100 _values!1152) i!717) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!913495 () Bool)

(assert (=> b!913495 (= e!512435 call!40459)))

(declare-fun b!913496 () Bool)

(declare-fun e!512436 () Bool)

(assert (=> b!913496 (= e!512439 e!512436)))

(assert (=> b!913496 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26561 _keys!1386)))))

(declare-fun res!616251 () Bool)

(assert (=> b!913496 (= res!616251 (contains!4684 lt!410984 (select (arr!26101 _keys!1386) i!717)))))

(assert (=> b!913496 (=> (not res!616251) (not e!512436))))

(declare-fun b!913497 () Bool)

(assert (=> b!913497 (= e!512438 e!512435)))

(declare-fun c!95816 () Bool)

(assert (=> b!913497 (= c!95816 (validKeyInArray!0 (select (arr!26101 _keys!1386) i!717)))))

(declare-fun b!913498 () Bool)

(assert (=> b!913498 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26561 _keys!1386)))))

(assert (=> b!913498 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26560 _values!1152)))))

(assert (=> b!913498 (= e!512436 (= (apply!530 lt!410984 (select (arr!26101 _keys!1386) i!717)) (get!13710 (select (arr!26100 _values!1152) i!717) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!913499 () Bool)

(declare-fun e!512437 () Bool)

(assert (=> b!913499 (= e!512437 (isEmpty!698 lt!410984))))

(declare-fun d!112347 () Bool)

(assert (=> d!112347 e!512433))

(declare-fun res!616250 () Bool)

(assert (=> d!112347 (=> (not res!616250) (not e!512433))))

(assert (=> d!112347 (= res!616250 (not (contains!4684 lt!410984 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!112347 (= lt!410984 e!512438)))

(declare-fun c!95815 () Bool)

(assert (=> d!112347 (= c!95815 (bvsge i!717 (size!26561 _keys!1386)))))

(assert (=> d!112347 (validMask!0 mask!1756)))

(assert (=> d!112347 (= (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160) lt!410984)))

(declare-fun b!913500 () Bool)

(assert (=> b!913500 (= e!512439 e!512437)))

(declare-fun c!95818 () Bool)

(assert (=> b!913500 (= c!95818 (bvslt i!717 (size!26561 _keys!1386)))))

(declare-fun b!913501 () Bool)

(assert (=> b!913501 (= e!512437 (= lt!410984 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 (bvadd i!717 #b00000000000000000000000000000001) defaultEntry!1160)))))

(declare-fun bm!40456 () Bool)

(assert (=> bm!40456 (= call!40459 (getCurrentListMapNoExtraKeys!3311 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 (bvadd i!717 #b00000000000000000000000000000001) defaultEntry!1160))))

(assert (= (and d!112347 c!95815) b!913493))

(assert (= (and d!112347 (not c!95815)) b!913497))

(assert (= (and b!913497 c!95816) b!913494))

(assert (= (and b!913497 (not c!95816)) b!913495))

(assert (= (or b!913494 b!913495) bm!40456))

(assert (= (and d!112347 res!616250) b!913490))

(assert (= (and b!913490 res!616249) b!913492))

(assert (= (and b!913492 res!616252) b!913491))

(assert (= (and b!913492 c!95817) b!913496))

(assert (= (and b!913492 (not c!95817)) b!913500))

(assert (= (and b!913496 res!616251) b!913498))

(assert (= (and b!913500 c!95818) b!913501))

(assert (= (and b!913500 (not c!95818)) b!913499))

(declare-fun b_lambda!13357 () Bool)

(assert (=> (not b_lambda!13357) (not b!913494)))

(assert (=> b!913494 t!26046))

(declare-fun b_and!27339 () Bool)

(assert (= b_and!27337 (and (=> t!26046 result!10701) b_and!27339)))

(declare-fun b_lambda!13359 () Bool)

(assert (=> (not b_lambda!13359) (not b!913498)))

(assert (=> b!913498 t!26046))

(declare-fun b_and!27341 () Bool)

(assert (= b_and!27339 (and (=> t!26046 result!10701) b_and!27341)))

(declare-fun m!847995 () Bool)

(assert (=> b!913501 m!847995))

(declare-fun m!847997 () Bool)

(assert (=> b!913499 m!847997))

(declare-fun m!847999 () Bool)

(assert (=> d!112347 m!847999))

(assert (=> d!112347 m!847619))

(assert (=> b!913494 m!847727))

(assert (=> b!913494 m!847725))

(declare-fun m!848001 () Bool)

(assert (=> b!913494 m!848001))

(declare-fun m!848003 () Bool)

(assert (=> b!913494 m!848003))

(assert (=> b!913494 m!847625))

(assert (=> b!913494 m!847725))

(assert (=> b!913494 m!847727))

(assert (=> b!913494 m!847729))

(declare-fun m!848005 () Bool)

(assert (=> b!913494 m!848005))

(assert (=> b!913494 m!848001))

(declare-fun m!848007 () Bool)

(assert (=> b!913494 m!848007))

(assert (=> b!913497 m!847625))

(assert (=> b!913497 m!847625))

(assert (=> b!913497 m!847717))

(assert (=> b!913498 m!847727))

(assert (=> b!913498 m!847725))

(assert (=> b!913498 m!847625))

(assert (=> b!913498 m!847625))

(declare-fun m!848009 () Bool)

(assert (=> b!913498 m!848009))

(assert (=> b!913498 m!847725))

(assert (=> b!913498 m!847727))

(assert (=> b!913498 m!847729))

(assert (=> b!913491 m!847625))

(assert (=> b!913491 m!847625))

(assert (=> b!913491 m!847717))

(assert (=> bm!40456 m!847995))

(assert (=> b!913496 m!847625))

(assert (=> b!913496 m!847625))

(declare-fun m!848011 () Bool)

(assert (=> b!913496 m!848011))

(declare-fun m!848013 () Bool)

(assert (=> b!913490 m!848013))

(assert (=> bm!40434 d!112347))

(declare-fun d!112349 () Bool)

(assert (=> d!112349 (isDefined!348 (getValueByKey!478 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun lt!410985 () Unit!30887)

(assert (=> d!112349 (= lt!410985 (choose!1542 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun e!512440 () Bool)

(assert (=> d!112349 e!512440))

(declare-fun res!616253 () Bool)

(assert (=> d!112349 (=> (not res!616253) (not e!512440))))

(assert (=> d!112349 (= res!616253 (isStrictlySorted!497 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))))

(assert (=> d!112349 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033) lt!410985)))

(declare-fun b!913502 () Bool)

(assert (=> b!913502 (= e!512440 (containsKey!443 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (= (and d!112349 res!616253) b!913502))

(assert (=> d!112349 m!847739))

(assert (=> d!112349 m!847739))

(assert (=> d!112349 m!847741))

(declare-fun m!848015 () Bool)

(assert (=> d!112349 m!848015))

(declare-fun m!848017 () Bool)

(assert (=> d!112349 m!848017))

(assert (=> b!913502 m!847735))

(assert (=> b!913317 d!112349))

(assert (=> b!913317 d!112343))

(assert (=> b!913317 d!112345))

(assert (=> b!913353 d!112337))

(declare-fun b!913503 () Bool)

(declare-fun e!512442 () Bool)

(declare-fun e!512443 () Bool)

(assert (=> b!913503 (= e!512442 e!512443)))

(declare-fun c!95819 () Bool)

(assert (=> b!913503 (= c!95819 (validKeyInArray!0 (select (arr!26101 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!913504 () Bool)

(declare-fun e!512441 () Bool)

(assert (=> b!913504 (= e!512443 e!512441)))

(declare-fun lt!410987 () (_ BitVec 64))

(assert (=> b!913504 (= lt!410987 (select (arr!26101 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!410988 () Unit!30887)

(assert (=> b!913504 (= lt!410988 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!410987 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!913504 (arrayContainsKey!0 _keys!1386 lt!410987 #b00000000000000000000000000000000)))

(declare-fun lt!410986 () Unit!30887)

(assert (=> b!913504 (= lt!410986 lt!410988)))

(declare-fun res!616254 () Bool)

(assert (=> b!913504 (= res!616254 (= (seekEntryOrOpen!0 (select (arr!26101 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1386 mask!1756) (Found!8956 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!913504 (=> (not res!616254) (not e!512441))))

(declare-fun b!913505 () Bool)

(declare-fun call!40460 () Bool)

(assert (=> b!913505 (= e!512441 call!40460)))

(declare-fun d!112351 () Bool)

(declare-fun res!616255 () Bool)

(assert (=> d!112351 (=> res!616255 e!512442)))

(assert (=> d!112351 (= res!616255 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26561 _keys!1386)))))

(assert (=> d!112351 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756) e!512442)))

(declare-fun b!913506 () Bool)

(assert (=> b!913506 (= e!512443 call!40460)))

(declare-fun bm!40457 () Bool)

(assert (=> bm!40457 (= call!40460 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(assert (= (and d!112351 (not res!616255)) b!913503))

(assert (= (and b!913503 c!95819) b!913504))

(assert (= (and b!913503 (not c!95819)) b!913506))

(assert (= (and b!913504 res!616254) b!913505))

(assert (= (or b!913505 b!913506) bm!40457))

(assert (=> b!913503 m!847987))

(assert (=> b!913503 m!847987))

(declare-fun m!848019 () Bool)

(assert (=> b!913503 m!848019))

(assert (=> b!913504 m!847987))

(declare-fun m!848021 () Bool)

(assert (=> b!913504 m!848021))

(declare-fun m!848023 () Bool)

(assert (=> b!913504 m!848023))

(assert (=> b!913504 m!847987))

(declare-fun m!848025 () Bool)

(assert (=> b!913504 m!848025))

(declare-fun m!848027 () Bool)

(assert (=> bm!40457 m!848027))

(assert (=> bm!40452 d!112351))

(assert (=> b!913354 d!112337))

(declare-fun d!112353 () Bool)

(declare-fun e!512444 () Bool)

(assert (=> d!112353 e!512444))

(declare-fun res!616256 () Bool)

(assert (=> d!112353 (=> (not res!616256) (not e!512444))))

(declare-fun lt!410989 () ListLongMap!11313)

(assert (=> d!112353 (= res!616256 (contains!4684 lt!410989 (_1!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(declare-fun lt!410990 () List!18442)

(assert (=> d!112353 (= lt!410989 (ListLongMap!11314 lt!410990))))

(declare-fun lt!410991 () Unit!30887)

(declare-fun lt!410992 () Unit!30887)

(assert (=> d!112353 (= lt!410991 lt!410992)))

(assert (=> d!112353 (= (getValueByKey!478 lt!410990 (_1!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))) (Some!483 (_2!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112353 (= lt!410992 (lemmaContainsTupThenGetReturnValue!253 lt!410990 (_1!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (_2!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112353 (= lt!410990 (insertStrictlySorted!309 (toList!5672 (ite c!95774 call!40447 (ite c!95770 call!40444 call!40449))) (_1!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (_2!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112353 (= (+!2563 (ite c!95774 call!40447 (ite c!95770 call!40444 call!40449)) (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) lt!410989)))

(declare-fun b!913507 () Bool)

(declare-fun res!616257 () Bool)

(assert (=> b!913507 (=> (not res!616257) (not e!512444))))

(assert (=> b!913507 (= res!616257 (= (getValueByKey!478 (toList!5672 lt!410989) (_1!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))) (Some!483 (_2!6311 (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))))

(declare-fun b!913508 () Bool)

(assert (=> b!913508 (= e!512444 (contains!4687 (toList!5672 lt!410989) (ite (or c!95774 c!95770) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (= (and d!112353 res!616256) b!913507))

(assert (= (and b!913507 res!616257) b!913508))

(declare-fun m!848029 () Bool)

(assert (=> d!112353 m!848029))

(declare-fun m!848031 () Bool)

(assert (=> d!112353 m!848031))

(declare-fun m!848033 () Bool)

(assert (=> d!112353 m!848033))

(declare-fun m!848035 () Bool)

(assert (=> d!112353 m!848035))

(declare-fun m!848037 () Bool)

(assert (=> b!913507 m!848037))

(declare-fun m!848039 () Bool)

(assert (=> b!913508 m!848039))

(assert (=> bm!40444 d!112353))

(declare-fun d!112355 () Bool)

(declare-fun e!512445 () Bool)

(assert (=> d!112355 e!512445))

(declare-fun res!616258 () Bool)

(assert (=> d!112355 (=> res!616258 e!512445)))

(declare-fun lt!410995 () Bool)

(assert (=> d!112355 (= res!616258 (not lt!410995))))

(declare-fun lt!410994 () Bool)

(assert (=> d!112355 (= lt!410995 lt!410994)))

(declare-fun lt!410996 () Unit!30887)

(declare-fun e!512446 () Unit!30887)

(assert (=> d!112355 (= lt!410996 e!512446)))

(declare-fun c!95820 () Bool)

(assert (=> d!112355 (= c!95820 lt!410994)))

(assert (=> d!112355 (= lt!410994 (containsKey!443 (toList!5672 lt!410843) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!112355 (= (contains!4684 lt!410843 #b0000000000000000000000000000000000000000000000000000000000000000) lt!410995)))

(declare-fun b!913509 () Bool)

(declare-fun lt!410993 () Unit!30887)

(assert (=> b!913509 (= e!512446 lt!410993)))

(assert (=> b!913509 (= lt!410993 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 lt!410843) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!913509 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410843) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913510 () Bool)

(declare-fun Unit!30899 () Unit!30887)

(assert (=> b!913510 (= e!512446 Unit!30899)))

(declare-fun b!913511 () Bool)

(assert (=> b!913511 (= e!512445 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410843) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112355 c!95820) b!913509))

(assert (= (and d!112355 (not c!95820)) b!913510))

(assert (= (and d!112355 (not res!616258)) b!913511))

(declare-fun m!848041 () Bool)

(assert (=> d!112355 m!848041))

(declare-fun m!848043 () Bool)

(assert (=> b!913509 m!848043))

(assert (=> b!913509 m!847847))

(assert (=> b!913509 m!847847))

(declare-fun m!848045 () Bool)

(assert (=> b!913509 m!848045))

(assert (=> b!913511 m!847847))

(assert (=> b!913511 m!847847))

(assert (=> b!913511 m!848045))

(assert (=> bm!40438 d!112355))

(declare-fun d!112357 () Bool)

(declare-fun lt!410999 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!405 (List!18443) (InoxSet (_ BitVec 64)))

(assert (=> d!112357 (= lt!410999 (select (content!405 Nil!18440) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun e!512451 () Bool)

(assert (=> d!112357 (= lt!410999 e!512451)))

(declare-fun res!616264 () Bool)

(assert (=> d!112357 (=> (not res!616264) (not e!512451))))

(assert (=> d!112357 (= res!616264 ((_ is Cons!18439) Nil!18440))))

(assert (=> d!112357 (= (contains!4686 Nil!18440 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)) lt!410999)))

(declare-fun b!913516 () Bool)

(declare-fun e!512452 () Bool)

(assert (=> b!913516 (= e!512451 e!512452)))

(declare-fun res!616263 () Bool)

(assert (=> b!913516 (=> res!616263 e!512452)))

(assert (=> b!913516 (= res!616263 (= (h!19585 Nil!18440) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913517 () Bool)

(assert (=> b!913517 (= e!512452 (contains!4686 (t!26042 Nil!18440) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!112357 res!616264) b!913516))

(assert (= (and b!913516 (not res!616263)) b!913517))

(declare-fun m!848047 () Bool)

(assert (=> d!112357 m!848047))

(assert (=> d!112357 m!847743))

(declare-fun m!848049 () Bool)

(assert (=> d!112357 m!848049))

(assert (=> b!913517 m!847743))

(declare-fun m!848051 () Bool)

(assert (=> b!913517 m!848051))

(assert (=> b!913352 d!112357))

(declare-fun d!112359 () Bool)

(assert (=> d!112359 (= (apply!530 lt!410869 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13711 (getValueByKey!478 (toList!5672 lt!410869) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25688 () Bool)

(assert (= bs!25688 d!112359))

(declare-fun m!848053 () Bool)

(assert (=> bs!25688 m!848053))

(assert (=> bs!25688 m!848053))

(declare-fun m!848055 () Bool)

(assert (=> bs!25688 m!848055))

(assert (=> b!913331 d!112359))

(declare-fun d!112361 () Bool)

(declare-fun e!512453 () Bool)

(assert (=> d!112361 e!512453))

(declare-fun res!616265 () Bool)

(assert (=> d!112361 (=> res!616265 e!512453)))

(declare-fun lt!411002 () Bool)

(assert (=> d!112361 (= res!616265 (not lt!411002))))

(declare-fun lt!411001 () Bool)

(assert (=> d!112361 (= lt!411002 lt!411001)))

(declare-fun lt!411003 () Unit!30887)

(declare-fun e!512454 () Unit!30887)

(assert (=> d!112361 (= lt!411003 e!512454)))

(declare-fun c!95821 () Bool)

(assert (=> d!112361 (= c!95821 lt!411001)))

(assert (=> d!112361 (= lt!411001 (containsKey!443 (toList!5672 lt!410843) (select (arr!26101 _keys!1386) i!717)))))

(assert (=> d!112361 (= (contains!4684 lt!410843 (select (arr!26101 _keys!1386) i!717)) lt!411002)))

(declare-fun b!913518 () Bool)

(declare-fun lt!411000 () Unit!30887)

(assert (=> b!913518 (= e!512454 lt!411000)))

(assert (=> b!913518 (= lt!411000 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 lt!410843) (select (arr!26101 _keys!1386) i!717)))))

(assert (=> b!913518 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410843) (select (arr!26101 _keys!1386) i!717)))))

(declare-fun b!913519 () Bool)

(declare-fun Unit!30900 () Unit!30887)

(assert (=> b!913519 (= e!512454 Unit!30900)))

(declare-fun b!913520 () Bool)

(assert (=> b!913520 (= e!512453 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410843) (select (arr!26101 _keys!1386) i!717))))))

(assert (= (and d!112361 c!95821) b!913518))

(assert (= (and d!112361 (not c!95821)) b!913519))

(assert (= (and d!112361 (not res!616265)) b!913520))

(assert (=> d!112361 m!847625))

(declare-fun m!848057 () Bool)

(assert (=> d!112361 m!848057))

(assert (=> b!913518 m!847625))

(declare-fun m!848059 () Bool)

(assert (=> b!913518 m!848059))

(assert (=> b!913518 m!847625))

(declare-fun m!848061 () Bool)

(assert (=> b!913518 m!848061))

(assert (=> b!913518 m!848061))

(declare-fun m!848063 () Bool)

(assert (=> b!913518 m!848063))

(assert (=> b!913520 m!847625))

(assert (=> b!913520 m!848061))

(assert (=> b!913520 m!848061))

(assert (=> b!913520 m!848063))

(assert (=> b!913311 d!112361))

(declare-fun d!112363 () Bool)

(assert (=> d!112363 (arrayContainsKey!0 _keys!1386 lt!410900 #b00000000000000000000000000000000)))

(declare-fun lt!411006 () Unit!30887)

(declare-fun choose!13 (array!54304 (_ BitVec 64) (_ BitVec 32)) Unit!30887)

(assert (=> d!112363 (= lt!411006 (choose!13 _keys!1386 lt!410900 #b00000000000000000000000000000000))))

(assert (=> d!112363 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!112363 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!410900 #b00000000000000000000000000000000) lt!411006)))

(declare-fun bs!25689 () Bool)

(assert (= bs!25689 d!112363))

(assert (=> bs!25689 m!847809))

(declare-fun m!848065 () Bool)

(assert (=> bs!25689 m!848065))

(assert (=> b!913377 d!112363))

(declare-fun d!112365 () Bool)

(declare-fun res!616266 () Bool)

(declare-fun e!512455 () Bool)

(assert (=> d!112365 (=> res!616266 e!512455)))

(assert (=> d!112365 (= res!616266 (= (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) lt!410900))))

(assert (=> d!112365 (= (arrayContainsKey!0 _keys!1386 lt!410900 #b00000000000000000000000000000000) e!512455)))

(declare-fun b!913521 () Bool)

(declare-fun e!512456 () Bool)

(assert (=> b!913521 (= e!512455 e!512456)))

(declare-fun res!616267 () Bool)

(assert (=> b!913521 (=> (not res!616267) (not e!512456))))

(assert (=> b!913521 (= res!616267 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26561 _keys!1386)))))

(declare-fun b!913522 () Bool)

(assert (=> b!913522 (= e!512456 (arrayContainsKey!0 _keys!1386 lt!410900 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!112365 (not res!616266)) b!913521))

(assert (= (and b!913521 res!616267) b!913522))

(assert (=> d!112365 m!847743))

(declare-fun m!848067 () Bool)

(assert (=> b!913522 m!848067))

(assert (=> b!913377 d!112365))

(declare-fun b!913535 () Bool)

(declare-fun lt!411013 () SeekEntryResult!8956)

(declare-fun e!512464 () SeekEntryResult!8956)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!54304 (_ BitVec 32)) SeekEntryResult!8956)

(assert (=> b!913535 (= e!512464 (seekKeyOrZeroReturnVacant!0 (x!78118 lt!411013) (index!38196 lt!411013) (index!38196 lt!411013) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756))))

(declare-fun b!913536 () Bool)

(declare-fun e!512463 () SeekEntryResult!8956)

(assert (=> b!913536 (= e!512463 (Found!8956 (index!38196 lt!411013)))))

(declare-fun b!913537 () Bool)

(declare-fun e!512465 () SeekEntryResult!8956)

(assert (=> b!913537 (= e!512465 Undefined!8956)))

(declare-fun b!913538 () Bool)

(assert (=> b!913538 (= e!512464 (MissingZero!8956 (index!38196 lt!411013)))))

(declare-fun d!112367 () Bool)

(declare-fun lt!411014 () SeekEntryResult!8956)

(assert (=> d!112367 (and (or ((_ is Undefined!8956) lt!411014) (not ((_ is Found!8956) lt!411014)) (and (bvsge (index!38195 lt!411014) #b00000000000000000000000000000000) (bvslt (index!38195 lt!411014) (size!26561 _keys!1386)))) (or ((_ is Undefined!8956) lt!411014) ((_ is Found!8956) lt!411014) (not ((_ is MissingZero!8956) lt!411014)) (and (bvsge (index!38194 lt!411014) #b00000000000000000000000000000000) (bvslt (index!38194 lt!411014) (size!26561 _keys!1386)))) (or ((_ is Undefined!8956) lt!411014) ((_ is Found!8956) lt!411014) ((_ is MissingZero!8956) lt!411014) (not ((_ is MissingVacant!8956) lt!411014)) (and (bvsge (index!38197 lt!411014) #b00000000000000000000000000000000) (bvslt (index!38197 lt!411014) (size!26561 _keys!1386)))) (or ((_ is Undefined!8956) lt!411014) (ite ((_ is Found!8956) lt!411014) (= (select (arr!26101 _keys!1386) (index!38195 lt!411014)) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8956) lt!411014) (= (select (arr!26101 _keys!1386) (index!38194 lt!411014)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8956) lt!411014) (= (select (arr!26101 _keys!1386) (index!38197 lt!411014)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!112367 (= lt!411014 e!512465)))

(declare-fun c!95828 () Bool)

(assert (=> d!112367 (= c!95828 (and ((_ is Intermediate!8956) lt!411013) (undefined!9768 lt!411013)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!54304 (_ BitVec 32)) SeekEntryResult!8956)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!112367 (= lt!411013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) mask!1756) (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756))))

(assert (=> d!112367 (validMask!0 mask!1756)))

(assert (=> d!112367 (= (seekEntryOrOpen!0 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) lt!411014)))

(declare-fun b!913539 () Bool)

(declare-fun c!95829 () Bool)

(declare-fun lt!411015 () (_ BitVec 64))

(assert (=> b!913539 (= c!95829 (= lt!411015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!913539 (= e!512463 e!512464)))

(declare-fun b!913540 () Bool)

(assert (=> b!913540 (= e!512465 e!512463)))

(assert (=> b!913540 (= lt!411015 (select (arr!26101 _keys!1386) (index!38196 lt!411013)))))

(declare-fun c!95830 () Bool)

(assert (=> b!913540 (= c!95830 (= lt!411015 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!112367 c!95828) b!913537))

(assert (= (and d!112367 (not c!95828)) b!913540))

(assert (= (and b!913540 c!95830) b!913536))

(assert (= (and b!913540 (not c!95830)) b!913539))

(assert (= (and b!913539 c!95829) b!913538))

(assert (= (and b!913539 (not c!95829)) b!913535))

(assert (=> b!913535 m!847743))

(declare-fun m!848069 () Bool)

(assert (=> b!913535 m!848069))

(declare-fun m!848071 () Bool)

(assert (=> d!112367 m!848071))

(declare-fun m!848073 () Bool)

(assert (=> d!112367 m!848073))

(assert (=> d!112367 m!847743))

(declare-fun m!848075 () Bool)

(assert (=> d!112367 m!848075))

(assert (=> d!112367 m!847743))

(assert (=> d!112367 m!848073))

(assert (=> d!112367 m!847619))

(declare-fun m!848077 () Bool)

(assert (=> d!112367 m!848077))

(declare-fun m!848079 () Bool)

(assert (=> d!112367 m!848079))

(declare-fun m!848081 () Bool)

(assert (=> b!913540 m!848081))

(assert (=> b!913377 d!112367))

(declare-fun b!913541 () Bool)

(declare-fun e!512468 () Bool)

(declare-fun call!40461 () Bool)

(assert (=> b!913541 (= e!512468 call!40461)))

(declare-fun bm!40458 () Bool)

(declare-fun c!95831 () Bool)

(assert (=> bm!40458 (= call!40461 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!95831 (Cons!18439 (select (arr!26101 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!95778 (Cons!18439 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) Nil!18440) Nil!18440)) (ite c!95778 (Cons!18439 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) Nil!18440) Nil!18440))))))

(declare-fun b!913542 () Bool)

(declare-fun e!512467 () Bool)

(assert (=> b!913542 (= e!512467 (contains!4686 (ite c!95778 (Cons!18439 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) Nil!18440) Nil!18440) (select (arr!26101 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!913543 () Bool)

(declare-fun e!512469 () Bool)

(declare-fun e!512466 () Bool)

(assert (=> b!913543 (= e!512469 e!512466)))

(declare-fun res!616268 () Bool)

(assert (=> b!913543 (=> (not res!616268) (not e!512466))))

(assert (=> b!913543 (= res!616268 (not e!512467))))

(declare-fun res!616270 () Bool)

(assert (=> b!913543 (=> (not res!616270) (not e!512467))))

(assert (=> b!913543 (= res!616270 (validKeyInArray!0 (select (arr!26101 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!913545 () Bool)

(assert (=> b!913545 (= e!512468 call!40461)))

(declare-fun b!913544 () Bool)

(assert (=> b!913544 (= e!512466 e!512468)))

(assert (=> b!913544 (= c!95831 (validKeyInArray!0 (select (arr!26101 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!112369 () Bool)

(declare-fun res!616269 () Bool)

(assert (=> d!112369 (=> res!616269 e!512469)))

(assert (=> d!112369 (= res!616269 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26561 _keys!1386)))))

(assert (=> d!112369 (= (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95778 (Cons!18439 (select (arr!26101 _keys!1386) #b00000000000000000000000000000000) Nil!18440) Nil!18440)) e!512469)))

(assert (= (and d!112369 (not res!616269)) b!913543))

(assert (= (and b!913543 res!616270) b!913542))

(assert (= (and b!913543 res!616268) b!913544))

(assert (= (and b!913544 c!95831) b!913545))

(assert (= (and b!913544 (not c!95831)) b!913541))

(assert (= (or b!913545 b!913541) bm!40458))

(assert (=> bm!40458 m!847987))

(declare-fun m!848083 () Bool)

(assert (=> bm!40458 m!848083))

(assert (=> b!913542 m!847987))

(assert (=> b!913542 m!847987))

(declare-fun m!848085 () Bool)

(assert (=> b!913542 m!848085))

(assert (=> b!913543 m!847987))

(assert (=> b!913543 m!847987))

(assert (=> b!913543 m!848019))

(assert (=> b!913544 m!847987))

(assert (=> b!913544 m!847987))

(assert (=> b!913544 m!848019))

(assert (=> bm!40449 d!112369))

(assert (=> b!913376 d!112337))

(assert (=> b!913329 d!112337))

(declare-fun d!112371 () Bool)

(assert (=> d!112371 (= (apply!530 lt!410843 (select (arr!26101 _keys!1386) i!717)) (get!13711 (getValueByKey!478 (toList!5672 lt!410843) (select (arr!26101 _keys!1386) i!717))))))

(declare-fun bs!25690 () Bool)

(assert (= bs!25690 d!112371))

(assert (=> bs!25690 m!847625))

(assert (=> bs!25690 m!848061))

(assert (=> bs!25690 m!848061))

(declare-fun m!848087 () Bool)

(assert (=> bs!25690 m!848087))

(assert (=> b!913310 d!112371))

(declare-fun d!112373 () Bool)

(declare-fun c!95832 () Bool)

(assert (=> d!112373 (= c!95832 ((_ is ValueCellFull!9093) (select (arr!26100 _values!1152) i!717)))))

(declare-fun e!512470 () V!30497)

(assert (=> d!112373 (= (get!13710 (select (arr!26100 _values!1152) i!717) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)) e!512470)))

(declare-fun b!913546 () Bool)

(assert (=> b!913546 (= e!512470 (get!13712 (select (arr!26100 _values!1152) i!717) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!913547 () Bool)

(assert (=> b!913547 (= e!512470 (get!13713 (select (arr!26100 _values!1152) i!717) (dynLambda!1397 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112373 c!95832) b!913546))

(assert (= (and d!112373 (not c!95832)) b!913547))

(assert (=> b!913546 m!847725))

(assert (=> b!913546 m!847727))

(declare-fun m!848089 () Bool)

(assert (=> b!913546 m!848089))

(assert (=> b!913547 m!847725))

(assert (=> b!913547 m!847727))

(declare-fun m!848091 () Bool)

(assert (=> b!913547 m!848091))

(assert (=> b!913310 d!112373))

(declare-fun d!112375 () Bool)

(declare-fun e!512471 () Bool)

(assert (=> d!112375 e!512471))

(declare-fun res!616271 () Bool)

(assert (=> d!112375 (=> res!616271 e!512471)))

(declare-fun lt!411018 () Bool)

(assert (=> d!112375 (= res!616271 (not lt!411018))))

(declare-fun lt!411017 () Bool)

(assert (=> d!112375 (= lt!411018 lt!411017)))

(declare-fun lt!411019 () Unit!30887)

(declare-fun e!512472 () Unit!30887)

(assert (=> d!112375 (= lt!411019 e!512472)))

(declare-fun c!95833 () Bool)

(assert (=> d!112375 (= c!95833 lt!411017)))

(assert (=> d!112375 (= lt!411017 (containsKey!443 (toList!5672 lt!410869) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!112375 (= (contains!4684 lt!410869 #b1000000000000000000000000000000000000000000000000000000000000000) lt!411018)))

(declare-fun b!913548 () Bool)

(declare-fun lt!411016 () Unit!30887)

(assert (=> b!913548 (= e!512472 lt!411016)))

(assert (=> b!913548 (= lt!411016 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 lt!410869) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!913548 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410869) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913549 () Bool)

(declare-fun Unit!30901 () Unit!30887)

(assert (=> b!913549 (= e!512472 Unit!30901)))

(declare-fun b!913550 () Bool)

(assert (=> b!913550 (= e!512471 (isDefined!348 (getValueByKey!478 (toList!5672 lt!410869) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112375 c!95833) b!913548))

(assert (= (and d!112375 (not c!95833)) b!913549))

(assert (= (and d!112375 (not res!616271)) b!913550))

(declare-fun m!848093 () Bool)

(assert (=> d!112375 m!848093))

(declare-fun m!848095 () Bool)

(assert (=> b!913548 m!848095))

(assert (=> b!913548 m!848053))

(assert (=> b!913548 m!848053))

(declare-fun m!848097 () Bool)

(assert (=> b!913548 m!848097))

(assert (=> b!913550 m!848053))

(assert (=> b!913550 m!848053))

(assert (=> b!913550 m!848097))

(assert (=> bm!40442 d!112375))

(declare-fun d!112377 () Bool)

(declare-fun e!512473 () Bool)

(assert (=> d!112377 e!512473))

(declare-fun res!616272 () Bool)

(assert (=> d!112377 (=> res!616272 e!512473)))

(declare-fun lt!411022 () Bool)

(assert (=> d!112377 (= res!616272 (not lt!411022))))

(declare-fun lt!411021 () Bool)

(assert (=> d!112377 (= lt!411022 lt!411021)))

(declare-fun lt!411023 () Unit!30887)

(declare-fun e!512474 () Unit!30887)

(assert (=> d!112377 (= lt!411023 e!512474)))

(declare-fun c!95834 () Bool)

(assert (=> d!112377 (= c!95834 lt!411021)))

(assert (=> d!112377 (= lt!411021 (containsKey!443 (toList!5672 (+!2563 lt!410862 (tuple2!12603 lt!410852 zeroValue!1094))) lt!410848))))

(assert (=> d!112377 (= (contains!4684 (+!2563 lt!410862 (tuple2!12603 lt!410852 zeroValue!1094)) lt!410848) lt!411022)))

(declare-fun b!913551 () Bool)

(declare-fun lt!411020 () Unit!30887)

(assert (=> b!913551 (= e!512474 lt!411020)))

(assert (=> b!913551 (= lt!411020 (lemmaContainsKeyImpliesGetValueByKeyDefined!338 (toList!5672 (+!2563 lt!410862 (tuple2!12603 lt!410852 zeroValue!1094))) lt!410848))))

(assert (=> b!913551 (isDefined!348 (getValueByKey!478 (toList!5672 (+!2563 lt!410862 (tuple2!12603 lt!410852 zeroValue!1094))) lt!410848))))

(declare-fun b!913552 () Bool)

(declare-fun Unit!30902 () Unit!30887)

(assert (=> b!913552 (= e!512474 Unit!30902)))

(declare-fun b!913553 () Bool)

(assert (=> b!913553 (= e!512473 (isDefined!348 (getValueByKey!478 (toList!5672 (+!2563 lt!410862 (tuple2!12603 lt!410852 zeroValue!1094))) lt!410848)))))

(assert (= (and d!112377 c!95834) b!913551))

(assert (= (and d!112377 (not c!95834)) b!913552))

(assert (= (and d!112377 (not res!616272)) b!913553))

(declare-fun m!848099 () Bool)

(assert (=> d!112377 m!848099))

(declare-fun m!848101 () Bool)

(assert (=> b!913551 m!848101))

(declare-fun m!848103 () Bool)

(assert (=> b!913551 m!848103))

(assert (=> b!913551 m!848103))

(declare-fun m!848105 () Bool)

(assert (=> b!913551 m!848105))

(assert (=> b!913553 m!848103))

(assert (=> b!913553 m!848103))

(assert (=> b!913553 m!848105))

(assert (=> b!913308 d!112377))

(declare-fun d!112379 () Bool)

(assert (=> d!112379 (= (apply!530 lt!410859 lt!410851) (get!13711 (getValueByKey!478 (toList!5672 lt!410859) lt!410851)))))

(declare-fun bs!25691 () Bool)

(assert (= bs!25691 d!112379))

(declare-fun m!848107 () Bool)

(assert (=> bs!25691 m!848107))

(assert (=> bs!25691 m!848107))

(declare-fun m!848109 () Bool)

(assert (=> bs!25691 m!848109))

(assert (=> b!913308 d!112379))

(declare-fun d!112381 () Bool)

(assert (=> d!112381 (= (apply!530 lt!410844 lt!410858) (get!13711 (getValueByKey!478 (toList!5672 lt!410844) lt!410858)))))

(declare-fun bs!25692 () Bool)

(assert (= bs!25692 d!112381))

(declare-fun m!848111 () Bool)

(assert (=> bs!25692 m!848111))

(assert (=> bs!25692 m!848111))

(declare-fun m!848113 () Bool)

(assert (=> bs!25692 m!848113))

(assert (=> b!913308 d!112381))

(declare-fun d!112383 () Bool)

(assert (=> d!112383 (= (apply!530 (+!2563 lt!410844 (tuple2!12603 lt!410853 minValue!1094)) lt!410858) (get!13711 (getValueByKey!478 (toList!5672 (+!2563 lt!410844 (tuple2!12603 lt!410853 minValue!1094))) lt!410858)))))

(declare-fun bs!25693 () Bool)

(assert (= bs!25693 d!112383))

(declare-fun m!848115 () Bool)

(assert (=> bs!25693 m!848115))

(assert (=> bs!25693 m!848115))

(declare-fun m!848117 () Bool)

(assert (=> bs!25693 m!848117))

(assert (=> b!913308 d!112383))

(declare-fun d!112385 () Bool)

(assert (=> d!112385 (= (apply!530 (+!2563 lt!410860 (tuple2!12603 lt!410847 minValue!1094)) lt!410857) (get!13711 (getValueByKey!478 (toList!5672 (+!2563 lt!410860 (tuple2!12603 lt!410847 minValue!1094))) lt!410857)))))

(declare-fun bs!25694 () Bool)

(assert (= bs!25694 d!112385))

(declare-fun m!848119 () Bool)

(assert (=> bs!25694 m!848119))

(assert (=> bs!25694 m!848119))

(declare-fun m!848121 () Bool)

(assert (=> bs!25694 m!848121))

(assert (=> b!913308 d!112385))

(declare-fun d!112387 () Bool)

(assert (=> d!112387 (= (apply!530 lt!410860 lt!410857) (get!13711 (getValueByKey!478 (toList!5672 lt!410860) lt!410857)))))

(declare-fun bs!25695 () Bool)

(assert (= bs!25695 d!112387))

(declare-fun m!848123 () Bool)

(assert (=> bs!25695 m!848123))

(assert (=> bs!25695 m!848123))

(declare-fun m!848125 () Bool)

(assert (=> bs!25695 m!848125))

(assert (=> b!913308 d!112387))

(declare-fun d!112389 () Bool)

(assert (=> d!112389 (= (apply!530 (+!2563 lt!410859 (tuple2!12603 lt!410856 zeroValue!1094)) lt!410851) (apply!530 lt!410859 lt!410851))))

(declare-fun lt!411024 () Unit!30887)

(assert (=> d!112389 (= lt!411024 (choose!1540 lt!410859 lt!410856 zeroValue!1094 lt!410851))))

(declare-fun e!512475 () Bool)

(assert (=> d!112389 e!512475))

(declare-fun res!616273 () Bool)

(assert (=> d!112389 (=> (not res!616273) (not e!512475))))

(assert (=> d!112389 (= res!616273 (contains!4684 lt!410859 lt!410851))))

(assert (=> d!112389 (= (addApplyDifferent!349 lt!410859 lt!410856 zeroValue!1094 lt!410851) lt!411024)))

(declare-fun b!913554 () Bool)

(assert (=> b!913554 (= e!512475 (not (= lt!410851 lt!410856)))))

(assert (= (and d!112389 res!616273) b!913554))

(declare-fun m!848127 () Bool)

(assert (=> d!112389 m!848127))

(assert (=> d!112389 m!847687))

(assert (=> d!112389 m!847693))

(assert (=> d!112389 m!847693))

(assert (=> d!112389 m!847695))

(declare-fun m!848129 () Bool)

(assert (=> d!112389 m!848129))

(assert (=> b!913308 d!112389))

(declare-fun d!112391 () Bool)

(declare-fun e!512476 () Bool)

(assert (=> d!112391 e!512476))

(declare-fun res!616274 () Bool)

(assert (=> d!112391 (=> (not res!616274) (not e!512476))))

(declare-fun lt!411025 () ListLongMap!11313)

(assert (=> d!112391 (= res!616274 (contains!4684 lt!411025 (_1!6311 (tuple2!12603 lt!410853 minValue!1094))))))

(declare-fun lt!411026 () List!18442)

(assert (=> d!112391 (= lt!411025 (ListLongMap!11314 lt!411026))))

(declare-fun lt!411027 () Unit!30887)

(declare-fun lt!411028 () Unit!30887)

(assert (=> d!112391 (= lt!411027 lt!411028)))

(assert (=> d!112391 (= (getValueByKey!478 lt!411026 (_1!6311 (tuple2!12603 lt!410853 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410853 minValue!1094))))))

(assert (=> d!112391 (= lt!411028 (lemmaContainsTupThenGetReturnValue!253 lt!411026 (_1!6311 (tuple2!12603 lt!410853 minValue!1094)) (_2!6311 (tuple2!12603 lt!410853 minValue!1094))))))

(assert (=> d!112391 (= lt!411026 (insertStrictlySorted!309 (toList!5672 lt!410844) (_1!6311 (tuple2!12603 lt!410853 minValue!1094)) (_2!6311 (tuple2!12603 lt!410853 minValue!1094))))))

(assert (=> d!112391 (= (+!2563 lt!410844 (tuple2!12603 lt!410853 minValue!1094)) lt!411025)))

(declare-fun b!913555 () Bool)

(declare-fun res!616275 () Bool)

(assert (=> b!913555 (=> (not res!616275) (not e!512476))))

(assert (=> b!913555 (= res!616275 (= (getValueByKey!478 (toList!5672 lt!411025) (_1!6311 (tuple2!12603 lt!410853 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410853 minValue!1094)))))))

(declare-fun b!913556 () Bool)

(assert (=> b!913556 (= e!512476 (contains!4687 (toList!5672 lt!411025) (tuple2!12603 lt!410853 minValue!1094)))))

(assert (= (and d!112391 res!616274) b!913555))

(assert (= (and b!913555 res!616275) b!913556))

(declare-fun m!848131 () Bool)

(assert (=> d!112391 m!848131))

(declare-fun m!848133 () Bool)

(assert (=> d!112391 m!848133))

(declare-fun m!848135 () Bool)

(assert (=> d!112391 m!848135))

(declare-fun m!848137 () Bool)

(assert (=> d!112391 m!848137))

(declare-fun m!848139 () Bool)

(assert (=> b!913555 m!848139))

(declare-fun m!848141 () Bool)

(assert (=> b!913556 m!848141))

(assert (=> b!913308 d!112391))

(declare-fun d!112393 () Bool)

(assert (=> d!112393 (= (apply!530 (+!2563 lt!410859 (tuple2!12603 lt!410856 zeroValue!1094)) lt!410851) (get!13711 (getValueByKey!478 (toList!5672 (+!2563 lt!410859 (tuple2!12603 lt!410856 zeroValue!1094))) lt!410851)))))

(declare-fun bs!25696 () Bool)

(assert (= bs!25696 d!112393))

(declare-fun m!848143 () Bool)

(assert (=> bs!25696 m!848143))

(assert (=> bs!25696 m!848143))

(declare-fun m!848145 () Bool)

(assert (=> bs!25696 m!848145))

(assert (=> b!913308 d!112393))

(declare-fun d!112395 () Bool)

(declare-fun e!512477 () Bool)

(assert (=> d!112395 e!512477))

(declare-fun res!616276 () Bool)

(assert (=> d!112395 (=> (not res!616276) (not e!512477))))

(declare-fun lt!411029 () ListLongMap!11313)

(assert (=> d!112395 (= res!616276 (contains!4684 lt!411029 (_1!6311 (tuple2!12603 lt!410852 zeroValue!1094))))))

(declare-fun lt!411030 () List!18442)

(assert (=> d!112395 (= lt!411029 (ListLongMap!11314 lt!411030))))

(declare-fun lt!411031 () Unit!30887)

(declare-fun lt!411032 () Unit!30887)

(assert (=> d!112395 (= lt!411031 lt!411032)))

(assert (=> d!112395 (= (getValueByKey!478 lt!411030 (_1!6311 (tuple2!12603 lt!410852 zeroValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410852 zeroValue!1094))))))

(assert (=> d!112395 (= lt!411032 (lemmaContainsTupThenGetReturnValue!253 lt!411030 (_1!6311 (tuple2!12603 lt!410852 zeroValue!1094)) (_2!6311 (tuple2!12603 lt!410852 zeroValue!1094))))))

(assert (=> d!112395 (= lt!411030 (insertStrictlySorted!309 (toList!5672 lt!410862) (_1!6311 (tuple2!12603 lt!410852 zeroValue!1094)) (_2!6311 (tuple2!12603 lt!410852 zeroValue!1094))))))

(assert (=> d!112395 (= (+!2563 lt!410862 (tuple2!12603 lt!410852 zeroValue!1094)) lt!411029)))

(declare-fun b!913557 () Bool)

(declare-fun res!616277 () Bool)

(assert (=> b!913557 (=> (not res!616277) (not e!512477))))

(assert (=> b!913557 (= res!616277 (= (getValueByKey!478 (toList!5672 lt!411029) (_1!6311 (tuple2!12603 lt!410852 zeroValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410852 zeroValue!1094)))))))

(declare-fun b!913558 () Bool)

(assert (=> b!913558 (= e!512477 (contains!4687 (toList!5672 lt!411029) (tuple2!12603 lt!410852 zeroValue!1094)))))

(assert (= (and d!112395 res!616276) b!913557))

(assert (= (and b!913557 res!616277) b!913558))

(declare-fun m!848147 () Bool)

(assert (=> d!112395 m!848147))

(declare-fun m!848149 () Bool)

(assert (=> d!112395 m!848149))

(declare-fun m!848151 () Bool)

(assert (=> d!112395 m!848151))

(declare-fun m!848153 () Bool)

(assert (=> d!112395 m!848153))

(declare-fun m!848155 () Bool)

(assert (=> b!913557 m!848155))

(declare-fun m!848157 () Bool)

(assert (=> b!913558 m!848157))

(assert (=> b!913308 d!112395))

(declare-fun d!112397 () Bool)

(assert (=> d!112397 (contains!4684 (+!2563 lt!410862 (tuple2!12603 lt!410852 zeroValue!1094)) lt!410848)))

(declare-fun lt!411033 () Unit!30887)

(assert (=> d!112397 (= lt!411033 (choose!1541 lt!410862 lt!410852 zeroValue!1094 lt!410848))))

(assert (=> d!112397 (contains!4684 lt!410862 lt!410848)))

(assert (=> d!112397 (= (addStillContains!349 lt!410862 lt!410852 zeroValue!1094 lt!410848) lt!411033)))

(declare-fun bs!25697 () Bool)

(assert (= bs!25697 d!112397))

(assert (=> bs!25697 m!847689))

(assert (=> bs!25697 m!847689))

(assert (=> bs!25697 m!847691))

(declare-fun m!848159 () Bool)

(assert (=> bs!25697 m!848159))

(declare-fun m!848161 () Bool)

(assert (=> bs!25697 m!848161))

(assert (=> b!913308 d!112397))

(assert (=> b!913308 d!112347))

(declare-fun d!112399 () Bool)

(declare-fun e!512478 () Bool)

(assert (=> d!112399 e!512478))

(declare-fun res!616278 () Bool)

(assert (=> d!112399 (=> (not res!616278) (not e!512478))))

(declare-fun lt!411034 () ListLongMap!11313)

(assert (=> d!112399 (= res!616278 (contains!4684 lt!411034 (_1!6311 (tuple2!12603 lt!410856 zeroValue!1094))))))

(declare-fun lt!411035 () List!18442)

(assert (=> d!112399 (= lt!411034 (ListLongMap!11314 lt!411035))))

(declare-fun lt!411036 () Unit!30887)

(declare-fun lt!411037 () Unit!30887)

(assert (=> d!112399 (= lt!411036 lt!411037)))

(assert (=> d!112399 (= (getValueByKey!478 lt!411035 (_1!6311 (tuple2!12603 lt!410856 zeroValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410856 zeroValue!1094))))))

(assert (=> d!112399 (= lt!411037 (lemmaContainsTupThenGetReturnValue!253 lt!411035 (_1!6311 (tuple2!12603 lt!410856 zeroValue!1094)) (_2!6311 (tuple2!12603 lt!410856 zeroValue!1094))))))

(assert (=> d!112399 (= lt!411035 (insertStrictlySorted!309 (toList!5672 lt!410859) (_1!6311 (tuple2!12603 lt!410856 zeroValue!1094)) (_2!6311 (tuple2!12603 lt!410856 zeroValue!1094))))))

(assert (=> d!112399 (= (+!2563 lt!410859 (tuple2!12603 lt!410856 zeroValue!1094)) lt!411034)))

(declare-fun b!913559 () Bool)

(declare-fun res!616279 () Bool)

(assert (=> b!913559 (=> (not res!616279) (not e!512478))))

(assert (=> b!913559 (= res!616279 (= (getValueByKey!478 (toList!5672 lt!411034) (_1!6311 (tuple2!12603 lt!410856 zeroValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410856 zeroValue!1094)))))))

(declare-fun b!913560 () Bool)

(assert (=> b!913560 (= e!512478 (contains!4687 (toList!5672 lt!411034) (tuple2!12603 lt!410856 zeroValue!1094)))))

(assert (= (and d!112399 res!616278) b!913559))

(assert (= (and b!913559 res!616279) b!913560))

(declare-fun m!848163 () Bool)

(assert (=> d!112399 m!848163))

(declare-fun m!848165 () Bool)

(assert (=> d!112399 m!848165))

(declare-fun m!848167 () Bool)

(assert (=> d!112399 m!848167))

(declare-fun m!848169 () Bool)

(assert (=> d!112399 m!848169))

(declare-fun m!848171 () Bool)

(assert (=> b!913559 m!848171))

(declare-fun m!848173 () Bool)

(assert (=> b!913560 m!848173))

(assert (=> b!913308 d!112399))

(declare-fun d!112401 () Bool)

(assert (=> d!112401 (= (apply!530 (+!2563 lt!410844 (tuple2!12603 lt!410853 minValue!1094)) lt!410858) (apply!530 lt!410844 lt!410858))))

(declare-fun lt!411038 () Unit!30887)

(assert (=> d!112401 (= lt!411038 (choose!1540 lt!410844 lt!410853 minValue!1094 lt!410858))))

(declare-fun e!512479 () Bool)

(assert (=> d!112401 e!512479))

(declare-fun res!616280 () Bool)

(assert (=> d!112401 (=> (not res!616280) (not e!512479))))

(assert (=> d!112401 (= res!616280 (contains!4684 lt!410844 lt!410858))))

(assert (=> d!112401 (= (addApplyDifferent!349 lt!410844 lt!410853 minValue!1094 lt!410858) lt!411038)))

(declare-fun b!913561 () Bool)

(assert (=> b!913561 (= e!512479 (not (= lt!410858 lt!410853)))))

(assert (= (and d!112401 res!616280) b!913561))

(declare-fun m!848175 () Bool)

(assert (=> d!112401 m!848175))

(assert (=> d!112401 m!847697))

(assert (=> d!112401 m!847699))

(assert (=> d!112401 m!847699))

(assert (=> d!112401 m!847705))

(declare-fun m!848177 () Bool)

(assert (=> d!112401 m!848177))

(assert (=> b!913308 d!112401))

(declare-fun d!112403 () Bool)

(declare-fun e!512480 () Bool)

(assert (=> d!112403 e!512480))

(declare-fun res!616281 () Bool)

(assert (=> d!112403 (=> (not res!616281) (not e!512480))))

(declare-fun lt!411039 () ListLongMap!11313)

(assert (=> d!112403 (= res!616281 (contains!4684 lt!411039 (_1!6311 (tuple2!12603 lt!410847 minValue!1094))))))

(declare-fun lt!411040 () List!18442)

(assert (=> d!112403 (= lt!411039 (ListLongMap!11314 lt!411040))))

(declare-fun lt!411041 () Unit!30887)

(declare-fun lt!411042 () Unit!30887)

(assert (=> d!112403 (= lt!411041 lt!411042)))

(assert (=> d!112403 (= (getValueByKey!478 lt!411040 (_1!6311 (tuple2!12603 lt!410847 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410847 minValue!1094))))))

(assert (=> d!112403 (= lt!411042 (lemmaContainsTupThenGetReturnValue!253 lt!411040 (_1!6311 (tuple2!12603 lt!410847 minValue!1094)) (_2!6311 (tuple2!12603 lt!410847 minValue!1094))))))

(assert (=> d!112403 (= lt!411040 (insertStrictlySorted!309 (toList!5672 lt!410860) (_1!6311 (tuple2!12603 lt!410847 minValue!1094)) (_2!6311 (tuple2!12603 lt!410847 minValue!1094))))))

(assert (=> d!112403 (= (+!2563 lt!410860 (tuple2!12603 lt!410847 minValue!1094)) lt!411039)))

(declare-fun b!913562 () Bool)

(declare-fun res!616282 () Bool)

(assert (=> b!913562 (=> (not res!616282) (not e!512480))))

(assert (=> b!913562 (= res!616282 (= (getValueByKey!478 (toList!5672 lt!411039) (_1!6311 (tuple2!12603 lt!410847 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 lt!410847 minValue!1094)))))))

(declare-fun b!913563 () Bool)

(assert (=> b!913563 (= e!512480 (contains!4687 (toList!5672 lt!411039) (tuple2!12603 lt!410847 minValue!1094)))))

(assert (= (and d!112403 res!616281) b!913562))

(assert (= (and b!913562 res!616282) b!913563))

(declare-fun m!848179 () Bool)

(assert (=> d!112403 m!848179))

(declare-fun m!848181 () Bool)

(assert (=> d!112403 m!848181))

(declare-fun m!848183 () Bool)

(assert (=> d!112403 m!848183))

(declare-fun m!848185 () Bool)

(assert (=> d!112403 m!848185))

(declare-fun m!848187 () Bool)

(assert (=> b!913562 m!848187))

(declare-fun m!848189 () Bool)

(assert (=> b!913563 m!848189))

(assert (=> b!913308 d!112403))

(declare-fun d!112405 () Bool)

(assert (=> d!112405 (= (apply!530 (+!2563 lt!410860 (tuple2!12603 lt!410847 minValue!1094)) lt!410857) (apply!530 lt!410860 lt!410857))))

(declare-fun lt!411043 () Unit!30887)

(assert (=> d!112405 (= lt!411043 (choose!1540 lt!410860 lt!410847 minValue!1094 lt!410857))))

(declare-fun e!512481 () Bool)

(assert (=> d!112405 e!512481))

(declare-fun res!616283 () Bool)

(assert (=> d!112405 (=> (not res!616283) (not e!512481))))

(assert (=> d!112405 (= res!616283 (contains!4684 lt!410860 lt!410857))))

(assert (=> d!112405 (= (addApplyDifferent!349 lt!410860 lt!410847 minValue!1094 lt!410857) lt!411043)))

(declare-fun b!913564 () Bool)

(assert (=> b!913564 (= e!512481 (not (= lt!410857 lt!410847)))))

(assert (= (and d!112405 res!616283) b!913564))

(declare-fun m!848191 () Bool)

(assert (=> d!112405 m!848191))

(assert (=> d!112405 m!847685))

(assert (=> d!112405 m!847707))

(assert (=> d!112405 m!847707))

(assert (=> d!112405 m!847709))

(declare-fun m!848193 () Bool)

(assert (=> d!112405 m!848193))

(assert (=> b!913308 d!112405))

(assert (=> b!913307 d!112285))

(assert (=> d!112261 d!112271))

(declare-fun d!112407 () Bool)

(assert (=> d!112407 (= (apply!530 lt!410869 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13711 (getValueByKey!478 (toList!5672 lt!410869) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25698 () Bool)

(assert (= bs!25698 d!112407))

(assert (=> bs!25698 m!847821))

(assert (=> bs!25698 m!847821))

(declare-fun m!848195 () Bool)

(assert (=> bs!25698 m!848195))

(assert (=> b!913327 d!112407))

(declare-fun d!112409 () Bool)

(declare-fun e!512482 () Bool)

(assert (=> d!112409 e!512482))

(declare-fun res!616284 () Bool)

(assert (=> d!112409 (=> (not res!616284) (not e!512482))))

(declare-fun lt!411044 () ListLongMap!11313)

(assert (=> d!112409 (= res!616284 (contains!4684 lt!411044 (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun lt!411045 () List!18442)

(assert (=> d!112409 (= lt!411044 (ListLongMap!11314 lt!411045))))

(declare-fun lt!411046 () Unit!30887)

(declare-fun lt!411047 () Unit!30887)

(assert (=> d!112409 (= lt!411046 lt!411047)))

(assert (=> d!112409 (= (getValueByKey!478 lt!411045 (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112409 (= lt!411047 (lemmaContainsTupThenGetReturnValue!253 lt!411045 (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) (_2!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112409 (= lt!411045 (insertStrictlySorted!309 (toList!5672 call!40443) (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) (_2!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112409 (= (+!2563 call!40443 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) lt!411044)))

(declare-fun b!913565 () Bool)

(declare-fun res!616285 () Bool)

(assert (=> b!913565 (=> (not res!616285) (not e!512482))))

(assert (=> b!913565 (= res!616285 (= (getValueByKey!478 (toList!5672 lt!411044) (_1!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (Some!483 (_2!6311 (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(declare-fun b!913566 () Bool)

(assert (=> b!913566 (= e!512482 (contains!4687 (toList!5672 lt!411044) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(assert (= (and d!112409 res!616284) b!913565))

(assert (= (and b!913565 res!616285) b!913566))

(declare-fun m!848197 () Bool)

(assert (=> d!112409 m!848197))

(declare-fun m!848199 () Bool)

(assert (=> d!112409 m!848199))

(declare-fun m!848201 () Bool)

(assert (=> d!112409 m!848201))

(declare-fun m!848203 () Bool)

(assert (=> d!112409 m!848203))

(declare-fun m!848205 () Bool)

(assert (=> b!913565 m!848205))

(declare-fun m!848207 () Bool)

(assert (=> b!913566 m!848207))

(assert (=> b!913326 d!112409))

(assert (=> d!112265 d!112271))

(declare-fun d!112411 () Bool)

(declare-fun e!512483 () Bool)

(assert (=> d!112411 e!512483))

(declare-fun res!616286 () Bool)

(assert (=> d!112411 (=> (not res!616286) (not e!512483))))

(declare-fun lt!411048 () ListLongMap!11313)

(assert (=> d!112411 (= res!616286 (contains!4684 lt!411048 (_1!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(declare-fun lt!411049 () List!18442)

(assert (=> d!112411 (= lt!411048 (ListLongMap!11314 lt!411049))))

(declare-fun lt!411050 () Unit!30887)

(declare-fun lt!411051 () Unit!30887)

(assert (=> d!112411 (= lt!411050 lt!411051)))

(assert (=> d!112411 (= (getValueByKey!478 lt!411049 (_1!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))) (Some!483 (_2!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112411 (= lt!411051 (lemmaContainsTupThenGetReturnValue!253 lt!411049 (_1!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (_2!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112411 (= lt!411049 (insertStrictlySorted!309 (toList!5672 (ite c!95767 call!40440 (ite c!95763 call!40437 call!40442))) (_1!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (_2!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112411 (= (+!2563 (ite c!95767 call!40440 (ite c!95763 call!40437 call!40442)) (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) lt!411048)))

(declare-fun b!913567 () Bool)

(declare-fun res!616287 () Bool)

(assert (=> b!913567 (=> (not res!616287) (not e!512483))))

(assert (=> b!913567 (= res!616287 (= (getValueByKey!478 (toList!5672 lt!411048) (_1!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))) (Some!483 (_2!6311 (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))))

(declare-fun b!913568 () Bool)

(assert (=> b!913568 (= e!512483 (contains!4687 (toList!5672 lt!411048) (ite (or c!95767 c!95763) (tuple2!12603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (= (and d!112411 res!616286) b!913567))

(assert (= (and b!913567 res!616287) b!913568))

(declare-fun m!848209 () Bool)

(assert (=> d!112411 m!848209))

(declare-fun m!848211 () Bool)

(assert (=> d!112411 m!848211))

(declare-fun m!848213 () Bool)

(assert (=> d!112411 m!848213))

(declare-fun m!848215 () Bool)

(assert (=> d!112411 m!848215))

(declare-fun m!848217 () Bool)

(assert (=> b!913567 m!848217))

(declare-fun m!848219 () Bool)

(assert (=> b!913568 m!848219))

(assert (=> bm!40437 d!112411))

(declare-fun d!112413 () Bool)

(declare-fun res!616292 () Bool)

(declare-fun e!512488 () Bool)

(assert (=> d!112413 (=> res!616292 e!512488)))

(assert (=> d!112413 (= res!616292 (and ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) (= (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033)))))

(assert (=> d!112413 (= (containsKey!443 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033) e!512488)))

(declare-fun b!913573 () Bool)

(declare-fun e!512489 () Bool)

(assert (=> b!913573 (= e!512488 e!512489)))

(declare-fun res!616293 () Bool)

(assert (=> b!913573 (=> (not res!616293) (not e!512489))))

(assert (=> b!913573 (= res!616293 (and (or (not ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) (bvsle (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033)) ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) (bvslt (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033)))))

(declare-fun b!913574 () Bool)

(assert (=> b!913574 (= e!512489 (containsKey!443 (t!26041 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) k0!1033))))

(assert (= (and d!112413 (not res!616292)) b!913573))

(assert (= (and b!913573 res!616293) b!913574))

(declare-fun m!848221 () Bool)

(assert (=> b!913574 m!848221))

(assert (=> d!112263 d!112413))

(declare-fun d!112415 () Bool)

(assert (=> d!112415 (= (apply!530 lt!410843 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13711 (getValueByKey!478 (toList!5672 lt!410843) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25699 () Bool)

(assert (= bs!25699 d!112415))

(assert (=> bs!25699 m!847837))

(assert (=> bs!25699 m!847837))

(declare-fun m!848223 () Bool)

(assert (=> bs!25699 m!848223))

(assert (=> b!913305 d!112415))

(declare-fun d!112417 () Bool)

(declare-fun res!616294 () Bool)

(declare-fun e!512490 () Bool)

(assert (=> d!112417 (=> res!616294 e!512490)))

(assert (=> d!112417 (= res!616294 (and ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))) (= (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)))) k0!1033)))))

(assert (=> d!112417 (= (containsKey!443 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)) k0!1033) e!512490)))

(declare-fun b!913575 () Bool)

(declare-fun e!512491 () Bool)

(assert (=> b!913575 (= e!512490 e!512491)))

(declare-fun res!616295 () Bool)

(assert (=> b!913575 (=> (not res!616295) (not e!512491))))

(assert (=> b!913575 (= res!616295 (and (or (not ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)))) (bvsle (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)))) k0!1033)) ((_ is Cons!18438) (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))) (bvslt (_1!6311 (h!19584 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160)))) k0!1033)))))

(declare-fun b!913576 () Bool)

(assert (=> b!913576 (= e!512491 (containsKey!443 (t!26041 (toList!5672 (getCurrentListMap!2902 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))) k0!1033))))

(assert (= (and d!112417 (not res!616294)) b!913575))

(assert (= (and b!913575 res!616295) b!913576))

(declare-fun m!848225 () Bool)

(assert (=> b!913576 m!848225))

(assert (=> d!112259 d!112417))

(assert (=> bm!40441 d!112333))

(declare-fun b!913578 () Bool)

(declare-fun e!512493 () Bool)

(assert (=> b!913578 (= e!512493 tp_is_empty!19149)))

(declare-fun b!913577 () Bool)

(declare-fun e!512492 () Bool)

(assert (=> b!913577 (= e!512492 tp_is_empty!19149)))

(declare-fun mapNonEmpty!30461 () Bool)

(declare-fun mapRes!30461 () Bool)

(declare-fun tp!58484 () Bool)

(assert (=> mapNonEmpty!30461 (= mapRes!30461 (and tp!58484 e!512492))))

(declare-fun mapKey!30461 () (_ BitVec 32))

(declare-fun mapRest!30461 () (Array (_ BitVec 32) ValueCell!9093))

(declare-fun mapValue!30461 () ValueCell!9093)

(assert (=> mapNonEmpty!30461 (= mapRest!30460 (store mapRest!30461 mapKey!30461 mapValue!30461))))

(declare-fun condMapEmpty!30461 () Bool)

(declare-fun mapDefault!30461 () ValueCell!9093)

(assert (=> mapNonEmpty!30460 (= condMapEmpty!30461 (= mapRest!30460 ((as const (Array (_ BitVec 32) ValueCell!9093)) mapDefault!30461)))))

(assert (=> mapNonEmpty!30460 (= tp!58483 (and e!512493 mapRes!30461))))

(declare-fun mapIsEmpty!30461 () Bool)

(assert (=> mapIsEmpty!30461 mapRes!30461))

(assert (= (and mapNonEmpty!30460 condMapEmpty!30461) mapIsEmpty!30461))

(assert (= (and mapNonEmpty!30460 (not condMapEmpty!30461)) mapNonEmpty!30461))

(assert (= (and mapNonEmpty!30461 ((_ is ValueCellFull!9093) mapValue!30461)) b!913577))

(assert (= (and mapNonEmpty!30460 ((_ is ValueCellFull!9093) mapDefault!30461)) b!913578))

(declare-fun m!848227 () Bool)

(assert (=> mapNonEmpty!30461 m!848227))

(declare-fun b_lambda!13361 () Bool)

(assert (= b_lambda!13357 (or (and start!78288 b_free!16731) b_lambda!13361)))

(declare-fun b_lambda!13363 () Bool)

(assert (= b_lambda!13359 (or (and start!78288 b_free!16731) b_lambda!13363)))

(declare-fun b_lambda!13365 () Bool)

(assert (= b_lambda!13355 (or (and start!78288 b_free!16731) b_lambda!13365)))

(declare-fun b_lambda!13367 () Bool)

(assert (= b_lambda!13353 (or (and start!78288 b_free!16731) b_lambda!13367)))

(check-sat (not b_lambda!13351) (not b!913496) (not b!913553) (not bm!40457) (not b!913480) (not b!913498) (not b!913473) (not b_lambda!13367) (not b!913502) (not d!112381) b_and!27341 (not d!112331) (not b!913501) (not d!112329) (not b!913430) (not b!913396) (not b!913546) (not b!913426) (not b!913547) (not bm!40458) (not d!112399) (not b!913568) tp_is_empty!19149 (not d!112411) (not d!112303) (not b!913479) (not d!112349) (not d!112367) (not b_lambda!13349) (not d!112397) (not d!112321) (not b!913475) (not b!913544) (not b!913401) (not b!913428) (not d!112293) (not b!913567) (not b!913476) (not mapNonEmpty!30461) (not b!913507) (not b!913551) (not d!112283) (not b!913511) (not b!913393) (not d!112327) (not b!913388) (not b!913468) (not d!112297) (not b!913494) (not d!112323) (not d!112313) (not d!112407) (not b!913425) (not bm!40456) (not b!913559) (not d!112305) (not d!112333) (not b!913542) (not d!112309) (not b!913471) (not bm!40455) (not b!913429) (not d!112393) (not b!913485) (not b!913562) (not d!112371) (not b!913543) (not d!112353) (not d!112405) (not d!112375) (not b!913441) (not d!112317) (not b!913576) (not d!112415) (not d!112325) (not b!913557) (not d!112389) (not b!913478) (not d!112339) (not d!112311) (not b!913390) (not d!112395) (not b!913558) (not d!112401) (not b!913517) (not d!112315) (not d!112289) (not b!913497) (not d!112355) (not b!913490) (not b!913563) (not d!112363) (not b!913550) (not b_next!16731) (not b_lambda!13365) (not b_lambda!13363) (not d!112343) (not d!112347) (not b!913483) (not d!112359) (not d!112403) (not b!913574) (not b!913419) (not b!913467) (not b!913488) (not d!112385) (not b!913499) (not d!112319) (not b!913520) (not b!913427) (not b!913391) (not d!112377) (not b!913474) (not b!913522) (not b!913508) (not b!913491) (not b!913535) (not d!112357) (not b!913439) (not d!112379) (not d!112307) (not b!913437) (not b!913560) (not b!913556) (not b!913438) (not b_lambda!13361) (not d!112409) (not d!112335) (not d!112299) (not b!913548) (not b!913503) (not d!112387) (not d!112391) (not b!913394) (not b!913408) (not b!913566) (not b!913518) (not b!913565) (not b!913555) (not b!913504) (not b!913407) (not b!913509) (not d!112361) (not d!112383) (not d!112287))
(check-sat b_and!27341 (not b_next!16731))
