; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78424 () Bool)

(assert start!78424)

(declare-fun b_free!16761 () Bool)

(declare-fun b_next!16761 () Bool)

(assert (=> start!78424 (= b_free!16761 (not b_next!16761))))

(declare-fun tp!58571 () Bool)

(declare-fun b_and!27399 () Bool)

(assert (=> start!78424 (= tp!58571 b_and!27399)))

(declare-fun bm!40504 () Bool)

(declare-datatypes ((V!30537 0))(
  ( (V!30538 (val!9640 Int)) )
))
(declare-fun call!40507 () V!30537)

(declare-datatypes ((tuple2!12630 0))(
  ( (tuple2!12631 (_1!6325 (_ BitVec 64)) (_2!6325 V!30537)) )
))
(declare-datatypes ((List!18467 0))(
  ( (Nil!18464) (Cons!18463 (h!19609 tuple2!12630) (t!26086 List!18467)) )
))
(declare-datatypes ((ListLongMap!11341 0))(
  ( (ListLongMap!11342 (toList!5686 List!18467)) )
))
(declare-fun lt!411440 () ListLongMap!11341)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun apply!538 (ListLongMap!11341 (_ BitVec 64)) V!30537)

(assert (=> bm!40504 (= call!40507 (apply!538 lt!411440 k0!1033))))

(declare-fun b!914412 () Bool)

(declare-fun e!513014 () Bool)

(declare-fun e!513021 () Bool)

(assert (=> b!914412 (= e!513014 e!513021)))

(declare-fun res!616800 () Bool)

(assert (=> b!914412 (=> (not res!616800) (not e!513021))))

(declare-fun contains!4701 (ListLongMap!11341 (_ BitVec 64)) Bool)

(assert (=> b!914412 (= res!616800 (contains!4701 lt!411440 k0!1033))))

(declare-datatypes ((ValueCell!9108 0))(
  ( (ValueCellFull!9108 (v!12156 V!30537)) (EmptyCell!9108) )
))
(declare-datatypes ((array!54364 0))(
  ( (array!54365 (arr!26129 (Array (_ BitVec 32) ValueCell!9108)) (size!26589 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54364)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54366 0))(
  ( (array!54367 (arr!26130 (Array (_ BitVec 32) (_ BitVec 64))) (size!26590 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54366)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30537)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30537)

(declare-fun getCurrentListMap!2915 (array!54366 array!54364 (_ BitVec 32) (_ BitVec 32) V!30537 V!30537 (_ BitVec 32) Int) ListLongMap!11341)

(assert (=> b!914412 (= lt!411440 (getCurrentListMap!2915 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!914413 () Bool)

(declare-fun res!616791 () Bool)

(assert (=> b!914413 (=> (not res!616791) (not e!513014))))

(declare-datatypes ((List!18468 0))(
  ( (Nil!18465) (Cons!18464 (h!19610 (_ BitVec 64)) (t!26087 List!18468)) )
))
(declare-fun arrayNoDuplicates!0 (array!54366 (_ BitVec 32) List!18468) Bool)

(assert (=> b!914413 (= res!616791 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18465))))

(declare-fun b!914414 () Bool)

(declare-fun res!616796 () Bool)

(assert (=> b!914414 (=> (not res!616796) (not e!513014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54366 (_ BitVec 32)) Bool)

(assert (=> b!914414 (= res!616796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!914415 () Bool)

(declare-fun res!616792 () Bool)

(assert (=> b!914415 (=> (not res!616792) (not e!513021))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!914415 (= res!616792 (and (= (select (arr!26130 _keys!1386) i!717) k0!1033) (or (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!914416 () Bool)

(declare-fun res!616799 () Bool)

(assert (=> b!914416 (=> (not res!616799) (not e!513021))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!914416 (= res!616799 (inRange!0 i!717 mask!1756))))

(declare-fun b!914417 () Bool)

(declare-fun e!513013 () Bool)

(declare-fun tp_is_empty!19179 () Bool)

(assert (=> b!914417 (= e!513013 tp_is_empty!19179)))

(declare-fun mapIsEmpty!30507 () Bool)

(declare-fun mapRes!30507 () Bool)

(assert (=> mapIsEmpty!30507 mapRes!30507))

(declare-fun b!914411 () Bool)

(declare-fun e!513020 () Bool)

(assert (=> b!914411 (= e!513020 (not (= call!40507 zeroValue!1094)))))

(declare-fun res!616793 () Bool)

(assert (=> start!78424 (=> (not res!616793) (not e!513014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78424 (= res!616793 (validMask!0 mask!1756))))

(assert (=> start!78424 e!513014))

(declare-fun e!513015 () Bool)

(declare-fun array_inv!20394 (array!54364) Bool)

(assert (=> start!78424 (and (array_inv!20394 _values!1152) e!513015)))

(assert (=> start!78424 tp!58571))

(assert (=> start!78424 true))

(assert (=> start!78424 tp_is_empty!19179))

(declare-fun array_inv!20395 (array!54366) Bool)

(assert (=> start!78424 (array_inv!20395 _keys!1386)))

(declare-fun b!914418 () Bool)

(declare-fun res!616794 () Bool)

(assert (=> b!914418 (=> (not res!616794) (not e!513014))))

(assert (=> b!914418 (= res!616794 (and (= (size!26589 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26590 _keys!1386) (size!26589 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30507 () Bool)

(declare-fun tp!58572 () Bool)

(assert (=> mapNonEmpty!30507 (= mapRes!30507 (and tp!58572 e!513013))))

(declare-fun mapKey!30507 () (_ BitVec 32))

(declare-fun mapValue!30507 () ValueCell!9108)

(declare-fun mapRest!30507 () (Array (_ BitVec 32) ValueCell!9108))

(assert (=> mapNonEmpty!30507 (= (arr!26129 _values!1152) (store mapRest!30507 mapKey!30507 mapValue!30507))))

(declare-fun b!914419 () Bool)

(declare-fun res!616797 () Bool)

(assert (=> b!914419 (= res!616797 (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun e!513016 () Bool)

(assert (=> b!914419 (=> res!616797 e!513016)))

(declare-fun e!513022 () Bool)

(assert (=> b!914419 (= e!513022 e!513016)))

(declare-fun b!914420 () Bool)

(declare-fun e!513019 () Bool)

(assert (=> b!914420 (= e!513019 tp_is_empty!19179)))

(declare-fun b!914421 () Bool)

(declare-fun e!513017 () Bool)

(assert (=> b!914421 (= e!513017 e!513020)))

(declare-fun res!616795 () Bool)

(assert (=> b!914421 (= res!616795 (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!914421 (=> res!616795 e!513020)))

(declare-fun b!914422 () Bool)

(assert (=> b!914422 (= e!513021 e!513017)))

(declare-fun c!95927 () Bool)

(assert (=> b!914422 (= c!95927 (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914423 () Bool)

(assert (=> b!914423 (= e!513015 (and e!513019 mapRes!30507))))

(declare-fun condMapEmpty!30507 () Bool)

(declare-fun mapDefault!30507 () ValueCell!9108)

(assert (=> b!914423 (= condMapEmpty!30507 (= (arr!26129 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9108)) mapDefault!30507)))))

(declare-fun b!914424 () Bool)

(assert (=> b!914424 (= e!513017 e!513022)))

(declare-fun res!616798 () Bool)

(assert (=> b!914424 (= res!616798 (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!914424 (=> (not res!616798) (not e!513022))))

(declare-fun b!914425 () Bool)

(assert (=> b!914425 (= e!513016 (not (= call!40507 minValue!1094)))))

(assert (= (and start!78424 res!616793) b!914418))

(assert (= (and b!914418 res!616794) b!914414))

(assert (= (and b!914414 res!616796) b!914413))

(assert (= (and b!914413 res!616791) b!914412))

(assert (= (and b!914412 res!616800) b!914416))

(assert (= (and b!914416 res!616799) b!914415))

(assert (= (and b!914415 res!616792) b!914422))

(assert (= (and b!914422 c!95927) b!914421))

(assert (= (and b!914422 (not c!95927)) b!914424))

(assert (= (and b!914421 (not res!616795)) b!914411))

(assert (= (and b!914424 res!616798) b!914419))

(assert (= (and b!914419 (not res!616797)) b!914425))

(assert (= (or b!914411 b!914425) bm!40504))

(assert (= (and b!914423 condMapEmpty!30507) mapIsEmpty!30507))

(assert (= (and b!914423 (not condMapEmpty!30507)) mapNonEmpty!30507))

(get-info :version)

(assert (= (and mapNonEmpty!30507 ((_ is ValueCellFull!9108) mapValue!30507)) b!914417))

(assert (= (and b!914423 ((_ is ValueCellFull!9108) mapDefault!30507)) b!914420))

(assert (= start!78424 b!914423))

(declare-fun m!849201 () Bool)

(assert (=> b!914416 m!849201))

(declare-fun m!849203 () Bool)

(assert (=> mapNonEmpty!30507 m!849203))

(declare-fun m!849205 () Bool)

(assert (=> b!914412 m!849205))

(declare-fun m!849207 () Bool)

(assert (=> b!914412 m!849207))

(declare-fun m!849209 () Bool)

(assert (=> b!914414 m!849209))

(declare-fun m!849211 () Bool)

(assert (=> b!914415 m!849211))

(declare-fun m!849213 () Bool)

(assert (=> start!78424 m!849213))

(declare-fun m!849215 () Bool)

(assert (=> start!78424 m!849215))

(declare-fun m!849217 () Bool)

(assert (=> start!78424 m!849217))

(declare-fun m!849219 () Bool)

(assert (=> b!914413 m!849219))

(declare-fun m!849221 () Bool)

(assert (=> bm!40504 m!849221))

(check-sat (not bm!40504) (not b!914416) (not b!914412) (not start!78424) b_and!27399 (not b!914413) (not b!914414) tp_is_empty!19179 (not b_next!16761) (not mapNonEmpty!30507))
(check-sat b_and!27399 (not b_next!16761))
(get-model)

(declare-fun b!914479 () Bool)

(declare-fun e!513061 () Bool)

(declare-fun call!40513 () Bool)

(assert (=> b!914479 (= e!513061 call!40513)))

(declare-fun b!914480 () Bool)

(declare-fun e!513059 () Bool)

(assert (=> b!914480 (= e!513059 e!513061)))

(declare-fun c!95933 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!914480 (= c!95933 (validKeyInArray!0 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun bm!40510 () Bool)

(assert (=> bm!40510 (= call!40513 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!914481 () Bool)

(declare-fun e!513060 () Bool)

(assert (=> b!914481 (= e!513061 e!513060)))

(declare-fun lt!411452 () (_ BitVec 64))

(assert (=> b!914481 (= lt!411452 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30927 0))(
  ( (Unit!30928) )
))
(declare-fun lt!411450 () Unit!30927)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54366 (_ BitVec 64) (_ BitVec 32)) Unit!30927)

(assert (=> b!914481 (= lt!411450 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!411452 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!54366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914481 (arrayContainsKey!0 _keys!1386 lt!411452 #b00000000000000000000000000000000)))

(declare-fun lt!411451 () Unit!30927)

(assert (=> b!914481 (= lt!411451 lt!411450)))

(declare-fun res!616835 () Bool)

(declare-datatypes ((SeekEntryResult!8958 0))(
  ( (MissingZero!8958 (index!38202 (_ BitVec 32))) (Found!8958 (index!38203 (_ BitVec 32))) (Intermediate!8958 (undefined!9770 Bool) (index!38204 (_ BitVec 32)) (x!78208 (_ BitVec 32))) (Undefined!8958) (MissingVacant!8958 (index!38205 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54366 (_ BitVec 32)) SeekEntryResult!8958)

(assert (=> b!914481 (= res!616835 (= (seekEntryOrOpen!0 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8958 #b00000000000000000000000000000000)))))

(assert (=> b!914481 (=> (not res!616835) (not e!513060))))

(declare-fun b!914482 () Bool)

(assert (=> b!914482 (= e!513060 call!40513)))

(declare-fun d!112597 () Bool)

(declare-fun res!616836 () Bool)

(assert (=> d!112597 (=> res!616836 e!513059)))

(assert (=> d!112597 (= res!616836 (bvsge #b00000000000000000000000000000000 (size!26590 _keys!1386)))))

(assert (=> d!112597 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!513059)))

(assert (= (and d!112597 (not res!616836)) b!914480))

(assert (= (and b!914480 c!95933) b!914481))

(assert (= (and b!914480 (not c!95933)) b!914479))

(assert (= (and b!914481 res!616835) b!914482))

(assert (= (or b!914482 b!914479) bm!40510))

(declare-fun m!849245 () Bool)

(assert (=> b!914480 m!849245))

(assert (=> b!914480 m!849245))

(declare-fun m!849247 () Bool)

(assert (=> b!914480 m!849247))

(declare-fun m!849249 () Bool)

(assert (=> bm!40510 m!849249))

(assert (=> b!914481 m!849245))

(declare-fun m!849251 () Bool)

(assert (=> b!914481 m!849251))

(declare-fun m!849253 () Bool)

(assert (=> b!914481 m!849253))

(assert (=> b!914481 m!849245))

(declare-fun m!849255 () Bool)

(assert (=> b!914481 m!849255))

(assert (=> b!914414 d!112597))

(declare-fun bm!40513 () Bool)

(declare-fun call!40516 () Bool)

(declare-fun c!95936 () Bool)

(assert (=> bm!40513 (= call!40516 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95936 (Cons!18464 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000) Nil!18465) Nil!18465)))))

(declare-fun b!914493 () Bool)

(declare-fun e!513070 () Bool)

(declare-fun e!513073 () Bool)

(assert (=> b!914493 (= e!513070 e!513073)))

(assert (=> b!914493 (= c!95936 (validKeyInArray!0 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112599 () Bool)

(declare-fun res!616844 () Bool)

(declare-fun e!513072 () Bool)

(assert (=> d!112599 (=> res!616844 e!513072)))

(assert (=> d!112599 (= res!616844 (bvsge #b00000000000000000000000000000000 (size!26590 _keys!1386)))))

(assert (=> d!112599 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18465) e!513072)))

(declare-fun b!914494 () Bool)

(assert (=> b!914494 (= e!513072 e!513070)))

(declare-fun res!616845 () Bool)

(assert (=> b!914494 (=> (not res!616845) (not e!513070))))

(declare-fun e!513071 () Bool)

(assert (=> b!914494 (= res!616845 (not e!513071))))

(declare-fun res!616843 () Bool)

(assert (=> b!914494 (=> (not res!616843) (not e!513071))))

(assert (=> b!914494 (= res!616843 (validKeyInArray!0 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!914495 () Bool)

(assert (=> b!914495 (= e!513073 call!40516)))

(declare-fun b!914496 () Bool)

(declare-fun contains!4702 (List!18468 (_ BitVec 64)) Bool)

(assert (=> b!914496 (= e!513071 (contains!4702 Nil!18465 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!914497 () Bool)

(assert (=> b!914497 (= e!513073 call!40516)))

(assert (= (and d!112599 (not res!616844)) b!914494))

(assert (= (and b!914494 res!616843) b!914496))

(assert (= (and b!914494 res!616845) b!914493))

(assert (= (and b!914493 c!95936) b!914497))

(assert (= (and b!914493 (not c!95936)) b!914495))

(assert (= (or b!914497 b!914495) bm!40513))

(assert (=> bm!40513 m!849245))

(declare-fun m!849257 () Bool)

(assert (=> bm!40513 m!849257))

(assert (=> b!914493 m!849245))

(assert (=> b!914493 m!849245))

(assert (=> b!914493 m!849247))

(assert (=> b!914494 m!849245))

(assert (=> b!914494 m!849245))

(assert (=> b!914494 m!849247))

(assert (=> b!914496 m!849245))

(assert (=> b!914496 m!849245))

(declare-fun m!849259 () Bool)

(assert (=> b!914496 m!849259))

(assert (=> b!914413 d!112599))

(declare-fun d!112601 () Bool)

(declare-fun e!513078 () Bool)

(assert (=> d!112601 e!513078))

(declare-fun res!616848 () Bool)

(assert (=> d!112601 (=> res!616848 e!513078)))

(declare-fun lt!411464 () Bool)

(assert (=> d!112601 (= res!616848 (not lt!411464))))

(declare-fun lt!411463 () Bool)

(assert (=> d!112601 (= lt!411464 lt!411463)))

(declare-fun lt!411462 () Unit!30927)

(declare-fun e!513079 () Unit!30927)

(assert (=> d!112601 (= lt!411462 e!513079)))

(declare-fun c!95939 () Bool)

(assert (=> d!112601 (= c!95939 lt!411463)))

(declare-fun containsKey!445 (List!18467 (_ BitVec 64)) Bool)

(assert (=> d!112601 (= lt!411463 (containsKey!445 (toList!5686 lt!411440) k0!1033))))

(assert (=> d!112601 (= (contains!4701 lt!411440 k0!1033) lt!411464)))

(declare-fun b!914504 () Bool)

(declare-fun lt!411461 () Unit!30927)

(assert (=> b!914504 (= e!513079 lt!411461)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!340 (List!18467 (_ BitVec 64)) Unit!30927)

(assert (=> b!914504 (= lt!411461 (lemmaContainsKeyImpliesGetValueByKeyDefined!340 (toList!5686 lt!411440) k0!1033))))

(declare-datatypes ((Option!486 0))(
  ( (Some!485 (v!12158 V!30537)) (None!484) )
))
(declare-fun isDefined!350 (Option!486) Bool)

(declare-fun getValueByKey!480 (List!18467 (_ BitVec 64)) Option!486)

(assert (=> b!914504 (isDefined!350 (getValueByKey!480 (toList!5686 lt!411440) k0!1033))))

(declare-fun b!914505 () Bool)

(declare-fun Unit!30929 () Unit!30927)

(assert (=> b!914505 (= e!513079 Unit!30929)))

(declare-fun b!914506 () Bool)

(assert (=> b!914506 (= e!513078 (isDefined!350 (getValueByKey!480 (toList!5686 lt!411440) k0!1033)))))

(assert (= (and d!112601 c!95939) b!914504))

(assert (= (and d!112601 (not c!95939)) b!914505))

(assert (= (and d!112601 (not res!616848)) b!914506))

(declare-fun m!849261 () Bool)

(assert (=> d!112601 m!849261))

(declare-fun m!849263 () Bool)

(assert (=> b!914504 m!849263))

(declare-fun m!849265 () Bool)

(assert (=> b!914504 m!849265))

(assert (=> b!914504 m!849265))

(declare-fun m!849267 () Bool)

(assert (=> b!914504 m!849267))

(assert (=> b!914506 m!849265))

(assert (=> b!914506 m!849265))

(assert (=> b!914506 m!849267))

(assert (=> b!914412 d!112601))

(declare-fun b!914549 () Bool)

(declare-fun e!513112 () ListLongMap!11341)

(declare-fun call!40531 () ListLongMap!11341)

(assert (=> b!914549 (= e!513112 call!40531)))

(declare-fun b!914550 () Bool)

(declare-fun e!513117 () Bool)

(declare-fun e!513118 () Bool)

(assert (=> b!914550 (= e!513117 e!513118)))

(declare-fun res!616869 () Bool)

(assert (=> b!914550 (=> (not res!616869) (not e!513118))))

(declare-fun lt!411523 () ListLongMap!11341)

(assert (=> b!914550 (= res!616869 (contains!4701 lt!411523 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!914550 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26590 _keys!1386)))))

(declare-fun bm!40528 () Bool)

(declare-fun call!40534 () ListLongMap!11341)

(declare-fun call!40535 () ListLongMap!11341)

(assert (=> bm!40528 (= call!40534 call!40535)))

(declare-fun b!914551 () Bool)

(declare-fun e!513110 () Unit!30927)

(declare-fun Unit!30930 () Unit!30927)

(assert (=> b!914551 (= e!513110 Unit!30930)))

(declare-fun d!112603 () Bool)

(declare-fun e!513109 () Bool)

(assert (=> d!112603 e!513109))

(declare-fun res!616872 () Bool)

(assert (=> d!112603 (=> (not res!616872) (not e!513109))))

(assert (=> d!112603 (= res!616872 (or (bvsge #b00000000000000000000000000000000 (size!26590 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26590 _keys!1386)))))))

(declare-fun lt!411517 () ListLongMap!11341)

(assert (=> d!112603 (= lt!411523 lt!411517)))

(declare-fun lt!411518 () Unit!30927)

(assert (=> d!112603 (= lt!411518 e!513110)))

(declare-fun c!95956 () Bool)

(declare-fun e!513113 () Bool)

(assert (=> d!112603 (= c!95956 e!513113)))

(declare-fun res!616868 () Bool)

(assert (=> d!112603 (=> (not res!616868) (not e!513113))))

(assert (=> d!112603 (= res!616868 (bvslt #b00000000000000000000000000000000 (size!26590 _keys!1386)))))

(declare-fun e!513108 () ListLongMap!11341)

(assert (=> d!112603 (= lt!411517 e!513108)))

(declare-fun c!95955 () Bool)

(assert (=> d!112603 (= c!95955 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112603 (validMask!0 mask!1756)))

(assert (=> d!112603 (= (getCurrentListMap!2915 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!411523)))

(declare-fun b!914552 () Bool)

(declare-fun e!513114 () Bool)

(declare-fun e!513111 () Bool)

(assert (=> b!914552 (= e!513114 e!513111)))

(declare-fun res!616867 () Bool)

(declare-fun call!40533 () Bool)

(assert (=> b!914552 (= res!616867 call!40533)))

(assert (=> b!914552 (=> (not res!616867) (not e!513111))))

(declare-fun b!914553 () Bool)

(declare-fun e!513116 () ListLongMap!11341)

(assert (=> b!914553 (= e!513108 e!513116)))

(declare-fun c!95952 () Bool)

(assert (=> b!914553 (= c!95952 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!914554 () Bool)

(declare-fun e!513106 () Bool)

(assert (=> b!914554 (= e!513106 (validKeyInArray!0 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!914555 () Bool)

(assert (=> b!914555 (= e!513113 (validKeyInArray!0 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!914556 () Bool)

(assert (=> b!914556 (= e!513111 (= (apply!538 lt!411523 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun bm!40529 () Bool)

(declare-fun call!40537 () ListLongMap!11341)

(assert (=> bm!40529 (= call!40537 call!40534)))

(declare-fun b!914557 () Bool)

(assert (=> b!914557 (= e!513109 e!513114)))

(declare-fun c!95957 () Bool)

(assert (=> b!914557 (= c!95957 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!40532 () ListLongMap!11341)

(declare-fun bm!40530 () Bool)

(declare-fun +!2565 (ListLongMap!11341 tuple2!12630) ListLongMap!11341)

(assert (=> bm!40530 (= call!40532 (+!2565 (ite c!95955 call!40535 (ite c!95952 call!40534 call!40537)) (ite (or c!95955 c!95952) (tuple2!12631 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12631 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun bm!40531 () Bool)

(declare-fun call!40536 () Bool)

(assert (=> bm!40531 (= call!40536 (contains!4701 lt!411523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914558 () Bool)

(declare-fun lt!411521 () Unit!30927)

(assert (=> b!914558 (= e!513110 lt!411521)))

(declare-fun lt!411525 () ListLongMap!11341)

(declare-fun getCurrentListMapNoExtraKeys!3313 (array!54366 array!54364 (_ BitVec 32) (_ BitVec 32) V!30537 V!30537 (_ BitVec 32) Int) ListLongMap!11341)

(assert (=> b!914558 (= lt!411525 (getCurrentListMapNoExtraKeys!3313 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!411529 () (_ BitVec 64))

(assert (=> b!914558 (= lt!411529 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411526 () (_ BitVec 64))

(assert (=> b!914558 (= lt!411526 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!411510 () Unit!30927)

(declare-fun addStillContains!351 (ListLongMap!11341 (_ BitVec 64) V!30537 (_ BitVec 64)) Unit!30927)

(assert (=> b!914558 (= lt!411510 (addStillContains!351 lt!411525 lt!411529 zeroValue!1094 lt!411526))))

(assert (=> b!914558 (contains!4701 (+!2565 lt!411525 (tuple2!12631 lt!411529 zeroValue!1094)) lt!411526)))

(declare-fun lt!411527 () Unit!30927)

(assert (=> b!914558 (= lt!411527 lt!411510)))

(declare-fun lt!411514 () ListLongMap!11341)

(assert (=> b!914558 (= lt!411514 (getCurrentListMapNoExtraKeys!3313 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!411524 () (_ BitVec 64))

(assert (=> b!914558 (= lt!411524 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411513 () (_ BitVec 64))

(assert (=> b!914558 (= lt!411513 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!411509 () Unit!30927)

(declare-fun addApplyDifferent!351 (ListLongMap!11341 (_ BitVec 64) V!30537 (_ BitVec 64)) Unit!30927)

(assert (=> b!914558 (= lt!411509 (addApplyDifferent!351 lt!411514 lt!411524 minValue!1094 lt!411513))))

(assert (=> b!914558 (= (apply!538 (+!2565 lt!411514 (tuple2!12631 lt!411524 minValue!1094)) lt!411513) (apply!538 lt!411514 lt!411513))))

(declare-fun lt!411511 () Unit!30927)

(assert (=> b!914558 (= lt!411511 lt!411509)))

(declare-fun lt!411519 () ListLongMap!11341)

(assert (=> b!914558 (= lt!411519 (getCurrentListMapNoExtraKeys!3313 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!411515 () (_ BitVec 64))

(assert (=> b!914558 (= lt!411515 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411522 () (_ BitVec 64))

(assert (=> b!914558 (= lt!411522 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!411512 () Unit!30927)

(assert (=> b!914558 (= lt!411512 (addApplyDifferent!351 lt!411519 lt!411515 zeroValue!1094 lt!411522))))

(assert (=> b!914558 (= (apply!538 (+!2565 lt!411519 (tuple2!12631 lt!411515 zeroValue!1094)) lt!411522) (apply!538 lt!411519 lt!411522))))

(declare-fun lt!411528 () Unit!30927)

(assert (=> b!914558 (= lt!411528 lt!411512)))

(declare-fun lt!411520 () ListLongMap!11341)

(assert (=> b!914558 (= lt!411520 (getCurrentListMapNoExtraKeys!3313 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!411530 () (_ BitVec 64))

(assert (=> b!914558 (= lt!411530 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411516 () (_ BitVec 64))

(assert (=> b!914558 (= lt!411516 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!914558 (= lt!411521 (addApplyDifferent!351 lt!411520 lt!411530 minValue!1094 lt!411516))))

(assert (=> b!914558 (= (apply!538 (+!2565 lt!411520 (tuple2!12631 lt!411530 minValue!1094)) lt!411516) (apply!538 lt!411520 lt!411516))))

(declare-fun b!914559 () Bool)

(assert (=> b!914559 (= e!513116 call!40531)))

(declare-fun bm!40532 () Bool)

(assert (=> bm!40532 (= call!40531 call!40532)))

(declare-fun b!914560 () Bool)

(declare-fun res!616874 () Bool)

(assert (=> b!914560 (=> (not res!616874) (not e!513109))))

(assert (=> b!914560 (= res!616874 e!513117)))

(declare-fun res!616870 () Bool)

(assert (=> b!914560 (=> res!616870 e!513117)))

(assert (=> b!914560 (= res!616870 (not e!513106))))

(declare-fun res!616873 () Bool)

(assert (=> b!914560 (=> (not res!616873) (not e!513106))))

(assert (=> b!914560 (= res!616873 (bvslt #b00000000000000000000000000000000 (size!26590 _keys!1386)))))

(declare-fun b!914561 () Bool)

(declare-fun res!616871 () Bool)

(assert (=> b!914561 (=> (not res!616871) (not e!513109))))

(declare-fun e!513107 () Bool)

(assert (=> b!914561 (= res!616871 e!513107)))

(declare-fun c!95954 () Bool)

(assert (=> b!914561 (= c!95954 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!914562 () Bool)

(assert (=> b!914562 (= e!513114 (not call!40533))))

(declare-fun bm!40533 () Bool)

(assert (=> bm!40533 (= call!40535 (getCurrentListMapNoExtraKeys!3313 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!914563 () Bool)

(assert (=> b!914563 (= e!513107 (not call!40536))))

(declare-fun b!914564 () Bool)

(declare-fun e!513115 () Bool)

(assert (=> b!914564 (= e!513115 (= (apply!538 lt!411523 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun b!914565 () Bool)

(declare-fun get!13733 (ValueCell!9108 V!30537) V!30537)

(declare-fun dynLambda!1404 (Int (_ BitVec 64)) V!30537)

(assert (=> b!914565 (= e!513118 (= (apply!538 lt!411523 (select (arr!26130 _keys!1386) #b00000000000000000000000000000000)) (get!13733 (select (arr!26129 _values!1152) #b00000000000000000000000000000000) (dynLambda!1404 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!914565 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26589 _values!1152)))))

(assert (=> b!914565 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26590 _keys!1386)))))

(declare-fun bm!40534 () Bool)

(assert (=> bm!40534 (= call!40533 (contains!4701 lt!411523 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914566 () Bool)

(assert (=> b!914566 (= e!513107 e!513115)))

(declare-fun res!616875 () Bool)

(assert (=> b!914566 (= res!616875 call!40536)))

(assert (=> b!914566 (=> (not res!616875) (not e!513115))))

(declare-fun b!914567 () Bool)

(assert (=> b!914567 (= e!513112 call!40537)))

(declare-fun b!914568 () Bool)

(assert (=> b!914568 (= e!513108 (+!2565 call!40532 (tuple2!12631 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!914569 () Bool)

(declare-fun c!95953 () Bool)

(assert (=> b!914569 (= c!95953 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!914569 (= e!513116 e!513112)))

(assert (= (and d!112603 c!95955) b!914568))

(assert (= (and d!112603 (not c!95955)) b!914553))

(assert (= (and b!914553 c!95952) b!914559))

(assert (= (and b!914553 (not c!95952)) b!914569))

(assert (= (and b!914569 c!95953) b!914549))

(assert (= (and b!914569 (not c!95953)) b!914567))

(assert (= (or b!914549 b!914567) bm!40529))

(assert (= (or b!914559 bm!40529) bm!40528))

(assert (= (or b!914559 b!914549) bm!40532))

(assert (= (or b!914568 bm!40528) bm!40533))

(assert (= (or b!914568 bm!40532) bm!40530))

(assert (= (and d!112603 res!616868) b!914555))

(assert (= (and d!112603 c!95956) b!914558))

(assert (= (and d!112603 (not c!95956)) b!914551))

(assert (= (and d!112603 res!616872) b!914560))

(assert (= (and b!914560 res!616873) b!914554))

(assert (= (and b!914560 (not res!616870)) b!914550))

(assert (= (and b!914550 res!616869) b!914565))

(assert (= (and b!914560 res!616874) b!914561))

(assert (= (and b!914561 c!95954) b!914566))

(assert (= (and b!914561 (not c!95954)) b!914563))

(assert (= (and b!914566 res!616875) b!914564))

(assert (= (or b!914566 b!914563) bm!40531))

(assert (= (and b!914561 res!616871) b!914557))

(assert (= (and b!914557 c!95957) b!914552))

(assert (= (and b!914557 (not c!95957)) b!914562))

(assert (= (and b!914552 res!616867) b!914556))

(assert (= (or b!914552 b!914562) bm!40534))

(declare-fun b_lambda!13413 () Bool)

(assert (=> (not b_lambda!13413) (not b!914565)))

(declare-fun t!26090 () Bool)

(declare-fun tb!5471 () Bool)

(assert (=> (and start!78424 (= defaultEntry!1160 defaultEntry!1160) t!26090) tb!5471))

(declare-fun result!10745 () Bool)

(assert (=> tb!5471 (= result!10745 tp_is_empty!19179)))

(assert (=> b!914565 t!26090))

(declare-fun b_and!27403 () Bool)

(assert (= b_and!27399 (and (=> t!26090 result!10745) b_and!27403)))

(declare-fun m!849269 () Bool)

(assert (=> bm!40531 m!849269))

(declare-fun m!849271 () Bool)

(assert (=> bm!40533 m!849271))

(assert (=> d!112603 m!849213))

(declare-fun m!849273 () Bool)

(assert (=> b!914568 m!849273))

(declare-fun m!849275 () Bool)

(assert (=> b!914564 m!849275))

(assert (=> b!914554 m!849245))

(assert (=> b!914554 m!849245))

(assert (=> b!914554 m!849247))

(declare-fun m!849277 () Bool)

(assert (=> bm!40530 m!849277))

(assert (=> b!914550 m!849245))

(assert (=> b!914550 m!849245))

(declare-fun m!849279 () Bool)

(assert (=> b!914550 m!849279))

(declare-fun m!849281 () Bool)

(assert (=> b!914558 m!849281))

(declare-fun m!849283 () Bool)

(assert (=> b!914558 m!849283))

(declare-fun m!849285 () Bool)

(assert (=> b!914558 m!849285))

(assert (=> b!914558 m!849281))

(declare-fun m!849287 () Bool)

(assert (=> b!914558 m!849287))

(declare-fun m!849289 () Bool)

(assert (=> b!914558 m!849289))

(assert (=> b!914558 m!849245))

(declare-fun m!849291 () Bool)

(assert (=> b!914558 m!849291))

(declare-fun m!849293 () Bool)

(assert (=> b!914558 m!849293))

(assert (=> b!914558 m!849293))

(declare-fun m!849295 () Bool)

(assert (=> b!914558 m!849295))

(declare-fun m!849297 () Bool)

(assert (=> b!914558 m!849297))

(declare-fun m!849299 () Bool)

(assert (=> b!914558 m!849299))

(declare-fun m!849301 () Bool)

(assert (=> b!914558 m!849301))

(assert (=> b!914558 m!849271))

(declare-fun m!849303 () Bool)

(assert (=> b!914558 m!849303))

(declare-fun m!849305 () Bool)

(assert (=> b!914558 m!849305))

(assert (=> b!914558 m!849287))

(declare-fun m!849307 () Bool)

(assert (=> b!914558 m!849307))

(declare-fun m!849309 () Bool)

(assert (=> b!914558 m!849309))

(assert (=> b!914558 m!849297))

(assert (=> b!914555 m!849245))

(assert (=> b!914555 m!849245))

(assert (=> b!914555 m!849247))

(declare-fun m!849311 () Bool)

(assert (=> bm!40534 m!849311))

(declare-fun m!849313 () Bool)

(assert (=> b!914556 m!849313))

(assert (=> b!914565 m!849245))

(declare-fun m!849315 () Bool)

(assert (=> b!914565 m!849315))

(declare-fun m!849317 () Bool)

(assert (=> b!914565 m!849317))

(declare-fun m!849319 () Bool)

(assert (=> b!914565 m!849319))

(assert (=> b!914565 m!849245))

(assert (=> b!914565 m!849317))

(assert (=> b!914565 m!849319))

(declare-fun m!849321 () Bool)

(assert (=> b!914565 m!849321))

(assert (=> b!914412 d!112603))

(declare-fun d!112605 () Bool)

(declare-fun get!13734 (Option!486) V!30537)

(assert (=> d!112605 (= (apply!538 lt!411440 k0!1033) (get!13734 (getValueByKey!480 (toList!5686 lt!411440) k0!1033)))))

(declare-fun bs!25739 () Bool)

(assert (= bs!25739 d!112605))

(assert (=> bs!25739 m!849265))

(assert (=> bs!25739 m!849265))

(declare-fun m!849323 () Bool)

(assert (=> bs!25739 m!849323))

(assert (=> bm!40504 d!112605))

(declare-fun d!112607 () Bool)

(assert (=> d!112607 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!78424 d!112607))

(declare-fun d!112609 () Bool)

(assert (=> d!112609 (= (array_inv!20394 _values!1152) (bvsge (size!26589 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!78424 d!112609))

(declare-fun d!112611 () Bool)

(assert (=> d!112611 (= (array_inv!20395 _keys!1386) (bvsge (size!26590 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!78424 d!112611))

(declare-fun d!112613 () Bool)

(assert (=> d!112613 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!914416 d!112613))

(declare-fun b!914579 () Bool)

(declare-fun e!513124 () Bool)

(assert (=> b!914579 (= e!513124 tp_is_empty!19179)))

(declare-fun b!914578 () Bool)

(declare-fun e!513123 () Bool)

(assert (=> b!914578 (= e!513123 tp_is_empty!19179)))

(declare-fun mapIsEmpty!30513 () Bool)

(declare-fun mapRes!30513 () Bool)

(assert (=> mapIsEmpty!30513 mapRes!30513))

(declare-fun mapNonEmpty!30513 () Bool)

(declare-fun tp!58581 () Bool)

(assert (=> mapNonEmpty!30513 (= mapRes!30513 (and tp!58581 e!513123))))

(declare-fun mapValue!30513 () ValueCell!9108)

(declare-fun mapKey!30513 () (_ BitVec 32))

(declare-fun mapRest!30513 () (Array (_ BitVec 32) ValueCell!9108))

(assert (=> mapNonEmpty!30513 (= mapRest!30507 (store mapRest!30513 mapKey!30513 mapValue!30513))))

(declare-fun condMapEmpty!30513 () Bool)

(declare-fun mapDefault!30513 () ValueCell!9108)

(assert (=> mapNonEmpty!30507 (= condMapEmpty!30513 (= mapRest!30507 ((as const (Array (_ BitVec 32) ValueCell!9108)) mapDefault!30513)))))

(assert (=> mapNonEmpty!30507 (= tp!58572 (and e!513124 mapRes!30513))))

(assert (= (and mapNonEmpty!30507 condMapEmpty!30513) mapIsEmpty!30513))

(assert (= (and mapNonEmpty!30507 (not condMapEmpty!30513)) mapNonEmpty!30513))

(assert (= (and mapNonEmpty!30513 ((_ is ValueCellFull!9108) mapValue!30513)) b!914578))

(assert (= (and mapNonEmpty!30507 ((_ is ValueCellFull!9108) mapDefault!30513)) b!914579))

(declare-fun m!849325 () Bool)

(assert (=> mapNonEmpty!30513 m!849325))

(declare-fun b_lambda!13415 () Bool)

(assert (= b_lambda!13413 (or (and start!78424 b_free!16761) b_lambda!13415)))

(check-sat (not mapNonEmpty!30513) (not bm!40513) (not bm!40530) (not bm!40533) (not b!914558) (not b!914550) (not b!914494) (not b!914568) b_and!27403 (not b_lambda!13415) (not b_next!16761) (not d!112605) (not b!914554) (not b!914480) tp_is_empty!19179 (not b!914504) (not d!112603) (not b!914506) (not bm!40510) (not b!914481) (not b!914556) (not d!112601) (not b!914565) (not bm!40531) (not bm!40534) (not b!914493) (not b!914555) (not b!914564) (not b!914496))
(check-sat b_and!27403 (not b_next!16761))
