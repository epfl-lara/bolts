; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78188 () Bool)

(assert start!78188)

(declare-fun b_free!16671 () Bool)

(declare-fun b_next!16671 () Bool)

(assert (=> start!78188 (= b_free!16671 (not b_next!16671))))

(declare-fun tp!58287 () Bool)

(declare-fun b_and!27263 () Bool)

(assert (=> start!78188 (= tp!58287 b_and!27263)))

(declare-fun b!912052 () Bool)

(declare-fun res!615380 () Bool)

(declare-fun e!511640 () Bool)

(assert (=> b!912052 (=> (not res!615380) (not e!511640))))

(declare-datatypes ((array!54182 0))(
  ( (array!54183 (arr!26042 (Array (_ BitVec 32) (_ BitVec 64))) (size!26502 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54182)

(declare-datatypes ((List!18397 0))(
  ( (Nil!18394) (Cons!18393 (h!19539 (_ BitVec 64)) (t!25992 List!18397)) )
))
(declare-fun arrayNoDuplicates!0 (array!54182 (_ BitVec 32) List!18397) Bool)

(assert (=> b!912052 (= res!615380 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18394))))

(declare-fun b!912053 () Bool)

(declare-fun res!615379 () Bool)

(assert (=> b!912053 (=> (not res!615379) (not e!511640))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!912053 (= res!615379 (and (= (select (arr!26042 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912054 () Bool)

(declare-datatypes ((V!30417 0))(
  ( (V!30418 (val!9595 Int)) )
))
(declare-datatypes ((ValueCell!9063 0))(
  ( (ValueCellFull!9063 (v!12105 V!30417)) (EmptyCell!9063) )
))
(declare-datatypes ((array!54184 0))(
  ( (array!54185 (arr!26043 (Array (_ BitVec 32) ValueCell!9063)) (size!26503 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54184)

(assert (=> b!912054 (= e!511640 (not (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26503 _values!1152)))))))

(declare-fun arrayContainsKey!0 (array!54182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912054 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30417)

(declare-datatypes ((Unit!30839 0))(
  ( (Unit!30840) )
))
(declare-fun lt!410512 () Unit!30839)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30417)

(declare-fun lemmaKeyInListMapIsInArray!266 (array!54182 array!54184 (_ BitVec 32) (_ BitVec 32) V!30417 V!30417 (_ BitVec 64) Int) Unit!30839)

(assert (=> b!912054 (= lt!410512 (lemmaKeyInListMapIsInArray!266 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!912056 () Bool)

(declare-fun res!615382 () Bool)

(assert (=> b!912056 (=> (not res!615382) (not e!511640))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912056 (= res!615382 (inRange!0 i!717 mask!1756))))

(declare-fun b!912057 () Bool)

(declare-fun res!615384 () Bool)

(assert (=> b!912057 (=> (not res!615384) (not e!511640))))

(assert (=> b!912057 (= res!615384 (and (= (size!26503 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26502 _keys!1386) (size!26503 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30358 () Bool)

(declare-fun mapRes!30358 () Bool)

(assert (=> mapIsEmpty!30358 mapRes!30358))

(declare-fun mapNonEmpty!30358 () Bool)

(declare-fun tp!58288 () Bool)

(declare-fun e!511638 () Bool)

(assert (=> mapNonEmpty!30358 (= mapRes!30358 (and tp!58288 e!511638))))

(declare-fun mapValue!30358 () ValueCell!9063)

(declare-fun mapRest!30358 () (Array (_ BitVec 32) ValueCell!9063))

(declare-fun mapKey!30358 () (_ BitVec 32))

(assert (=> mapNonEmpty!30358 (= (arr!26043 _values!1152) (store mapRest!30358 mapKey!30358 mapValue!30358))))

(declare-fun b!912058 () Bool)

(declare-fun res!615385 () Bool)

(assert (=> b!912058 (=> (not res!615385) (not e!511640))))

(declare-datatypes ((tuple2!12556 0))(
  ( (tuple2!12557 (_1!6288 (_ BitVec 64)) (_2!6288 V!30417)) )
))
(declare-datatypes ((List!18398 0))(
  ( (Nil!18395) (Cons!18394 (h!19540 tuple2!12556) (t!25993 List!18398)) )
))
(declare-datatypes ((ListLongMap!11267 0))(
  ( (ListLongMap!11268 (toList!5649 List!18398)) )
))
(declare-fun contains!4659 (ListLongMap!11267 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2879 (array!54182 array!54184 (_ BitVec 32) (_ BitVec 32) V!30417 V!30417 (_ BitVec 32) Int) ListLongMap!11267)

(assert (=> b!912058 (= res!615385 (contains!4659 (getCurrentListMap!2879 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!912059 () Bool)

(declare-fun res!615381 () Bool)

(assert (=> b!912059 (=> (not res!615381) (not e!511640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54182 (_ BitVec 32)) Bool)

(assert (=> b!912059 (= res!615381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912055 () Bool)

(declare-fun e!511639 () Bool)

(declare-fun e!511636 () Bool)

(assert (=> b!912055 (= e!511639 (and e!511636 mapRes!30358))))

(declare-fun condMapEmpty!30358 () Bool)

(declare-fun mapDefault!30358 () ValueCell!9063)

(assert (=> b!912055 (= condMapEmpty!30358 (= (arr!26043 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9063)) mapDefault!30358)))))

(declare-fun res!615383 () Bool)

(assert (=> start!78188 (=> (not res!615383) (not e!511640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78188 (= res!615383 (validMask!0 mask!1756))))

(assert (=> start!78188 e!511640))

(declare-fun array_inv!20332 (array!54184) Bool)

(assert (=> start!78188 (and (array_inv!20332 _values!1152) e!511639)))

(assert (=> start!78188 tp!58287))

(assert (=> start!78188 true))

(declare-fun tp_is_empty!19089 () Bool)

(assert (=> start!78188 tp_is_empty!19089))

(declare-fun array_inv!20333 (array!54182) Bool)

(assert (=> start!78188 (array_inv!20333 _keys!1386)))

(declare-fun b!912060 () Bool)

(assert (=> b!912060 (= e!511638 tp_is_empty!19089)))

(declare-fun b!912061 () Bool)

(assert (=> b!912061 (= e!511636 tp_is_empty!19089)))

(assert (= (and start!78188 res!615383) b!912057))

(assert (= (and b!912057 res!615384) b!912059))

(assert (= (and b!912059 res!615381) b!912052))

(assert (= (and b!912052 res!615380) b!912058))

(assert (= (and b!912058 res!615385) b!912056))

(assert (= (and b!912056 res!615382) b!912053))

(assert (= (and b!912053 res!615379) b!912054))

(assert (= (and b!912055 condMapEmpty!30358) mapIsEmpty!30358))

(assert (= (and b!912055 (not condMapEmpty!30358)) mapNonEmpty!30358))

(get-info :version)

(assert (= (and mapNonEmpty!30358 ((_ is ValueCellFull!9063) mapValue!30358)) b!912060))

(assert (= (and b!912055 ((_ is ValueCellFull!9063) mapDefault!30358)) b!912061))

(assert (= start!78188 b!912055))

(declare-fun m!846723 () Bool)

(assert (=> b!912058 m!846723))

(assert (=> b!912058 m!846723))

(declare-fun m!846725 () Bool)

(assert (=> b!912058 m!846725))

(declare-fun m!846727 () Bool)

(assert (=> mapNonEmpty!30358 m!846727))

(declare-fun m!846729 () Bool)

(assert (=> b!912052 m!846729))

(declare-fun m!846731 () Bool)

(assert (=> start!78188 m!846731))

(declare-fun m!846733 () Bool)

(assert (=> start!78188 m!846733))

(declare-fun m!846735 () Bool)

(assert (=> start!78188 m!846735))

(declare-fun m!846737 () Bool)

(assert (=> b!912053 m!846737))

(declare-fun m!846739 () Bool)

(assert (=> b!912059 m!846739))

(declare-fun m!846741 () Bool)

(assert (=> b!912054 m!846741))

(declare-fun m!846743 () Bool)

(assert (=> b!912054 m!846743))

(declare-fun m!846745 () Bool)

(assert (=> b!912056 m!846745))

(check-sat (not b!912059) b_and!27263 tp_is_empty!19089 (not b!912056) (not b!912058) (not mapNonEmpty!30358) (not start!78188) (not b_next!16671) (not b!912054) (not b!912052))
(check-sat b_and!27263 (not b_next!16671))
(get-model)

(declare-fun d!112199 () Bool)

(declare-fun e!511661 () Bool)

(assert (=> d!112199 e!511661))

(declare-fun res!615409 () Bool)

(assert (=> d!112199 (=> res!615409 e!511661)))

(declare-fun lt!410526 () Bool)

(assert (=> d!112199 (= res!615409 (not lt!410526))))

(declare-fun lt!410525 () Bool)

(assert (=> d!112199 (= lt!410526 lt!410525)))

(declare-fun lt!410524 () Unit!30839)

(declare-fun e!511660 () Unit!30839)

(assert (=> d!112199 (= lt!410524 e!511660)))

(declare-fun c!95690 () Bool)

(assert (=> d!112199 (= c!95690 lt!410525)))

(declare-fun containsKey!441 (List!18398 (_ BitVec 64)) Bool)

(assert (=> d!112199 (= lt!410525 (containsKey!441 (toList!5649 (getCurrentListMap!2879 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> d!112199 (= (contains!4659 (getCurrentListMap!2879 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033) lt!410526)))

(declare-fun b!912098 () Bool)

(declare-fun lt!410527 () Unit!30839)

(assert (=> b!912098 (= e!511660 lt!410527)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!336 (List!18398 (_ BitVec 64)) Unit!30839)

(assert (=> b!912098 (= lt!410527 (lemmaContainsKeyImpliesGetValueByKeyDefined!336 (toList!5649 (getCurrentListMap!2879 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-datatypes ((Option!482 0))(
  ( (Some!481 (v!12107 V!30417)) (None!480) )
))
(declare-fun isDefined!346 (Option!482) Bool)

(declare-fun getValueByKey!476 (List!18398 (_ BitVec 64)) Option!482)

(assert (=> b!912098 (isDefined!346 (getValueByKey!476 (toList!5649 (getCurrentListMap!2879 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun b!912099 () Bool)

(declare-fun Unit!30843 () Unit!30839)

(assert (=> b!912099 (= e!511660 Unit!30843)))

(declare-fun b!912100 () Bool)

(assert (=> b!912100 (= e!511661 (isDefined!346 (getValueByKey!476 (toList!5649 (getCurrentListMap!2879 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)))))

(assert (= (and d!112199 c!95690) b!912098))

(assert (= (and d!112199 (not c!95690)) b!912099))

(assert (= (and d!112199 (not res!615409)) b!912100))

(declare-fun m!846771 () Bool)

(assert (=> d!112199 m!846771))

(declare-fun m!846773 () Bool)

(assert (=> b!912098 m!846773))

(declare-fun m!846775 () Bool)

(assert (=> b!912098 m!846775))

(assert (=> b!912098 m!846775))

(declare-fun m!846777 () Bool)

(assert (=> b!912098 m!846777))

(assert (=> b!912100 m!846775))

(assert (=> b!912100 m!846775))

(assert (=> b!912100 m!846777))

(assert (=> b!912058 d!112199))

(declare-fun b!912143 () Bool)

(declare-fun e!511694 () Bool)

(declare-fun call!40388 () Bool)

(assert (=> b!912143 (= e!511694 (not call!40388))))

(declare-fun b!912144 () Bool)

(declare-fun e!511699 () Bool)

(declare-fun e!511689 () Bool)

(assert (=> b!912144 (= e!511699 e!511689)))

(declare-fun c!95707 () Bool)

(assert (=> b!912144 (= c!95707 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!912145 () Bool)

(declare-fun e!511693 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!912145 (= e!511693 (validKeyInArray!0 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!912146 () Bool)

(declare-fun e!511692 () Bool)

(assert (=> b!912146 (= e!511692 (validKeyInArray!0 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun lt!410584 () ListLongMap!11267)

(declare-fun b!912147 () Bool)

(declare-fun e!511688 () Bool)

(declare-fun apply!528 (ListLongMap!11267 (_ BitVec 64)) V!30417)

(declare-fun get!13688 (ValueCell!9063 V!30417) V!30417)

(declare-fun dynLambda!1395 (Int (_ BitVec 64)) V!30417)

(assert (=> b!912147 (= e!511688 (= (apply!528 lt!410584 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000)) (get!13688 (select (arr!26043 _values!1152) #b00000000000000000000000000000000) (dynLambda!1395 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!912147 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26503 _values!1152)))))

(assert (=> b!912147 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26502 _keys!1386)))))

(declare-fun call!40383 () ListLongMap!11267)

(declare-fun bm!40379 () Bool)

(declare-fun c!95708 () Bool)

(declare-fun call!40386 () ListLongMap!11267)

(declare-fun c!95705 () Bool)

(declare-fun call!40387 () ListLongMap!11267)

(declare-fun call!40384 () ListLongMap!11267)

(declare-fun +!2561 (ListLongMap!11267 tuple2!12556) ListLongMap!11267)

(assert (=> bm!40379 (= call!40387 (+!2561 (ite c!95708 call!40386 (ite c!95705 call!40384 call!40383)) (ite (or c!95708 c!95705) (tuple2!12557 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12557 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!912148 () Bool)

(declare-fun e!511698 () Bool)

(assert (=> b!912148 (= e!511689 e!511698)))

(declare-fun res!615436 () Bool)

(declare-fun call!40385 () Bool)

(assert (=> b!912148 (= res!615436 call!40385)))

(assert (=> b!912148 (=> (not res!615436) (not e!511698))))

(declare-fun b!912149 () Bool)

(declare-fun e!511695 () Unit!30839)

(declare-fun lt!410578 () Unit!30839)

(assert (=> b!912149 (= e!511695 lt!410578)))

(declare-fun lt!410588 () ListLongMap!11267)

(declare-fun getCurrentListMapNoExtraKeys!3309 (array!54182 array!54184 (_ BitVec 32) (_ BitVec 32) V!30417 V!30417 (_ BitVec 32) Int) ListLongMap!11267)

(assert (=> b!912149 (= lt!410588 (getCurrentListMapNoExtraKeys!3309 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410586 () (_ BitVec 64))

(assert (=> b!912149 (= lt!410586 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410593 () (_ BitVec 64))

(assert (=> b!912149 (= lt!410593 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410589 () Unit!30839)

(declare-fun addStillContains!347 (ListLongMap!11267 (_ BitVec 64) V!30417 (_ BitVec 64)) Unit!30839)

(assert (=> b!912149 (= lt!410589 (addStillContains!347 lt!410588 lt!410586 zeroValue!1094 lt!410593))))

(assert (=> b!912149 (contains!4659 (+!2561 lt!410588 (tuple2!12557 lt!410586 zeroValue!1094)) lt!410593)))

(declare-fun lt!410587 () Unit!30839)

(assert (=> b!912149 (= lt!410587 lt!410589)))

(declare-fun lt!410577 () ListLongMap!11267)

(assert (=> b!912149 (= lt!410577 (getCurrentListMapNoExtraKeys!3309 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410575 () (_ BitVec 64))

(assert (=> b!912149 (= lt!410575 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410574 () (_ BitVec 64))

(assert (=> b!912149 (= lt!410574 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410591 () Unit!30839)

(declare-fun addApplyDifferent!347 (ListLongMap!11267 (_ BitVec 64) V!30417 (_ BitVec 64)) Unit!30839)

(assert (=> b!912149 (= lt!410591 (addApplyDifferent!347 lt!410577 lt!410575 minValue!1094 lt!410574))))

(assert (=> b!912149 (= (apply!528 (+!2561 lt!410577 (tuple2!12557 lt!410575 minValue!1094)) lt!410574) (apply!528 lt!410577 lt!410574))))

(declare-fun lt!410576 () Unit!30839)

(assert (=> b!912149 (= lt!410576 lt!410591)))

(declare-fun lt!410585 () ListLongMap!11267)

(assert (=> b!912149 (= lt!410585 (getCurrentListMapNoExtraKeys!3309 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410590 () (_ BitVec 64))

(assert (=> b!912149 (= lt!410590 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410580 () (_ BitVec 64))

(assert (=> b!912149 (= lt!410580 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410572 () Unit!30839)

(assert (=> b!912149 (= lt!410572 (addApplyDifferent!347 lt!410585 lt!410590 zeroValue!1094 lt!410580))))

(assert (=> b!912149 (= (apply!528 (+!2561 lt!410585 (tuple2!12557 lt!410590 zeroValue!1094)) lt!410580) (apply!528 lt!410585 lt!410580))))

(declare-fun lt!410581 () Unit!30839)

(assert (=> b!912149 (= lt!410581 lt!410572)))

(declare-fun lt!410573 () ListLongMap!11267)

(assert (=> b!912149 (= lt!410573 (getCurrentListMapNoExtraKeys!3309 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410583 () (_ BitVec 64))

(assert (=> b!912149 (= lt!410583 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410579 () (_ BitVec 64))

(assert (=> b!912149 (= lt!410579 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!912149 (= lt!410578 (addApplyDifferent!347 lt!410573 lt!410583 minValue!1094 lt!410579))))

(assert (=> b!912149 (= (apply!528 (+!2561 lt!410573 (tuple2!12557 lt!410583 minValue!1094)) lt!410579) (apply!528 lt!410573 lt!410579))))

(declare-fun b!912150 () Bool)

(declare-fun e!511700 () ListLongMap!11267)

(declare-fun call!40382 () ListLongMap!11267)

(assert (=> b!912150 (= e!511700 call!40382)))

(declare-fun b!912151 () Bool)

(declare-fun res!615434 () Bool)

(assert (=> b!912151 (=> (not res!615434) (not e!511699))))

(assert (=> b!912151 (= res!615434 e!511694)))

(declare-fun c!95703 () Bool)

(assert (=> b!912151 (= c!95703 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!912152 () Bool)

(declare-fun c!95706 () Bool)

(assert (=> b!912152 (= c!95706 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!511690 () ListLongMap!11267)

(assert (=> b!912152 (= e!511700 e!511690)))

(declare-fun b!912153 () Bool)

(declare-fun e!511697 () Bool)

(assert (=> b!912153 (= e!511694 e!511697)))

(declare-fun res!615428 () Bool)

(assert (=> b!912153 (= res!615428 call!40388)))

(assert (=> b!912153 (=> (not res!615428) (not e!511697))))

(declare-fun b!912154 () Bool)

(declare-fun Unit!30844 () Unit!30839)

(assert (=> b!912154 (= e!511695 Unit!30844)))

(declare-fun bm!40380 () Bool)

(assert (=> bm!40380 (= call!40388 (contains!4659 lt!410584 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!912156 () Bool)

(assert (=> b!912156 (= e!511690 call!40382)))

(declare-fun bm!40381 () Bool)

(assert (=> bm!40381 (= call!40382 call!40387)))

(declare-fun b!912157 () Bool)

(assert (=> b!912157 (= e!511690 call!40383)))

(declare-fun bm!40382 () Bool)

(assert (=> bm!40382 (= call!40383 call!40384)))

(declare-fun bm!40383 () Bool)

(assert (=> bm!40383 (= call!40385 (contains!4659 lt!410584 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!912158 () Bool)

(declare-fun e!511696 () ListLongMap!11267)

(assert (=> b!912158 (= e!511696 e!511700)))

(assert (=> b!912158 (= c!95705 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!912159 () Bool)

(assert (=> b!912159 (= e!511696 (+!2561 call!40387 (tuple2!12557 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun bm!40384 () Bool)

(assert (=> bm!40384 (= call!40386 (getCurrentListMapNoExtraKeys!3309 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!912160 () Bool)

(declare-fun res!615431 () Bool)

(assert (=> b!912160 (=> (not res!615431) (not e!511699))))

(declare-fun e!511691 () Bool)

(assert (=> b!912160 (= res!615431 e!511691)))

(declare-fun res!615432 () Bool)

(assert (=> b!912160 (=> res!615432 e!511691)))

(assert (=> b!912160 (= res!615432 (not e!511692))))

(declare-fun res!615429 () Bool)

(assert (=> b!912160 (=> (not res!615429) (not e!511692))))

(assert (=> b!912160 (= res!615429 (bvslt #b00000000000000000000000000000000 (size!26502 _keys!1386)))))

(declare-fun b!912161 () Bool)

(assert (=> b!912161 (= e!511689 (not call!40385))))

(declare-fun b!912155 () Bool)

(assert (=> b!912155 (= e!511691 e!511688)))

(declare-fun res!615435 () Bool)

(assert (=> b!912155 (=> (not res!615435) (not e!511688))))

(assert (=> b!912155 (= res!615435 (contains!4659 lt!410584 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!912155 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26502 _keys!1386)))))

(declare-fun d!112201 () Bool)

(assert (=> d!112201 e!511699))

(declare-fun res!615433 () Bool)

(assert (=> d!112201 (=> (not res!615433) (not e!511699))))

(assert (=> d!112201 (= res!615433 (or (bvsge #b00000000000000000000000000000000 (size!26502 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26502 _keys!1386)))))))

(declare-fun lt!410592 () ListLongMap!11267)

(assert (=> d!112201 (= lt!410584 lt!410592)))

(declare-fun lt!410582 () Unit!30839)

(assert (=> d!112201 (= lt!410582 e!511695)))

(declare-fun c!95704 () Bool)

(assert (=> d!112201 (= c!95704 e!511693)))

(declare-fun res!615430 () Bool)

(assert (=> d!112201 (=> (not res!615430) (not e!511693))))

(assert (=> d!112201 (= res!615430 (bvslt #b00000000000000000000000000000000 (size!26502 _keys!1386)))))

(assert (=> d!112201 (= lt!410592 e!511696)))

(assert (=> d!112201 (= c!95708 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112201 (validMask!0 mask!1756)))

(assert (=> d!112201 (= (getCurrentListMap!2879 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!410584)))

(declare-fun b!912162 () Bool)

(assert (=> b!912162 (= e!511697 (= (apply!528 lt!410584 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun bm!40385 () Bool)

(assert (=> bm!40385 (= call!40384 call!40386)))

(declare-fun b!912163 () Bool)

(assert (=> b!912163 (= e!511698 (= (apply!528 lt!410584 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(assert (= (and d!112201 c!95708) b!912159))

(assert (= (and d!112201 (not c!95708)) b!912158))

(assert (= (and b!912158 c!95705) b!912150))

(assert (= (and b!912158 (not c!95705)) b!912152))

(assert (= (and b!912152 c!95706) b!912156))

(assert (= (and b!912152 (not c!95706)) b!912157))

(assert (= (or b!912156 b!912157) bm!40382))

(assert (= (or b!912150 bm!40382) bm!40385))

(assert (= (or b!912150 b!912156) bm!40381))

(assert (= (or b!912159 bm!40385) bm!40384))

(assert (= (or b!912159 bm!40381) bm!40379))

(assert (= (and d!112201 res!615430) b!912145))

(assert (= (and d!112201 c!95704) b!912149))

(assert (= (and d!112201 (not c!95704)) b!912154))

(assert (= (and d!112201 res!615433) b!912160))

(assert (= (and b!912160 res!615429) b!912146))

(assert (= (and b!912160 (not res!615432)) b!912155))

(assert (= (and b!912155 res!615435) b!912147))

(assert (= (and b!912160 res!615431) b!912151))

(assert (= (and b!912151 c!95703) b!912153))

(assert (= (and b!912151 (not c!95703)) b!912143))

(assert (= (and b!912153 res!615428) b!912162))

(assert (= (or b!912153 b!912143) bm!40380))

(assert (= (and b!912151 res!615434) b!912144))

(assert (= (and b!912144 c!95707) b!912148))

(assert (= (and b!912144 (not c!95707)) b!912161))

(assert (= (and b!912148 res!615436) b!912163))

(assert (= (or b!912148 b!912161) bm!40383))

(declare-fun b_lambda!13337 () Bool)

(assert (=> (not b_lambda!13337) (not b!912147)))

(declare-fun t!25997 () Bool)

(declare-fun tb!5447 () Bool)

(assert (=> (and start!78188 (= defaultEntry!1160 defaultEntry!1160) t!25997) tb!5447))

(declare-fun result!10689 () Bool)

(assert (=> tb!5447 (= result!10689 tp_is_empty!19089)))

(assert (=> b!912147 t!25997))

(declare-fun b_and!27267 () Bool)

(assert (= b_and!27263 (and (=> t!25997 result!10689) b_and!27267)))

(declare-fun m!846779 () Bool)

(assert (=> b!912162 m!846779))

(declare-fun m!846781 () Bool)

(assert (=> bm!40384 m!846781))

(declare-fun m!846783 () Bool)

(assert (=> b!912163 m!846783))

(declare-fun m!846785 () Bool)

(assert (=> bm!40380 m!846785))

(assert (=> d!112201 m!846731))

(declare-fun m!846787 () Bool)

(assert (=> b!912159 m!846787))

(declare-fun m!846789 () Bool)

(assert (=> bm!40383 m!846789))

(declare-fun m!846791 () Bool)

(assert (=> b!912146 m!846791))

(assert (=> b!912146 m!846791))

(declare-fun m!846793 () Bool)

(assert (=> b!912146 m!846793))

(declare-fun m!846795 () Bool)

(assert (=> bm!40379 m!846795))

(declare-fun m!846797 () Bool)

(assert (=> b!912149 m!846797))

(declare-fun m!846799 () Bool)

(assert (=> b!912149 m!846799))

(declare-fun m!846801 () Bool)

(assert (=> b!912149 m!846801))

(declare-fun m!846803 () Bool)

(assert (=> b!912149 m!846803))

(declare-fun m!846805 () Bool)

(assert (=> b!912149 m!846805))

(declare-fun m!846807 () Bool)

(assert (=> b!912149 m!846807))

(declare-fun m!846809 () Bool)

(assert (=> b!912149 m!846809))

(assert (=> b!912149 m!846801))

(declare-fun m!846811 () Bool)

(assert (=> b!912149 m!846811))

(declare-fun m!846813 () Bool)

(assert (=> b!912149 m!846813))

(assert (=> b!912149 m!846807))

(declare-fun m!846815 () Bool)

(assert (=> b!912149 m!846815))

(assert (=> b!912149 m!846791))

(declare-fun m!846817 () Bool)

(assert (=> b!912149 m!846817))

(declare-fun m!846819 () Bool)

(assert (=> b!912149 m!846819))

(assert (=> b!912149 m!846797))

(declare-fun m!846821 () Bool)

(assert (=> b!912149 m!846821))

(declare-fun m!846823 () Bool)

(assert (=> b!912149 m!846823))

(assert (=> b!912149 m!846781))

(assert (=> b!912149 m!846817))

(declare-fun m!846825 () Bool)

(assert (=> b!912149 m!846825))

(declare-fun m!846827 () Bool)

(assert (=> b!912147 m!846827))

(assert (=> b!912147 m!846791))

(declare-fun m!846829 () Bool)

(assert (=> b!912147 m!846829))

(assert (=> b!912147 m!846827))

(declare-fun m!846831 () Bool)

(assert (=> b!912147 m!846831))

(declare-fun m!846833 () Bool)

(assert (=> b!912147 m!846833))

(assert (=> b!912147 m!846831))

(assert (=> b!912147 m!846791))

(assert (=> b!912155 m!846791))

(assert (=> b!912155 m!846791))

(declare-fun m!846835 () Bool)

(assert (=> b!912155 m!846835))

(assert (=> b!912145 m!846791))

(assert (=> b!912145 m!846791))

(assert (=> b!912145 m!846793))

(assert (=> b!912058 d!112201))

(declare-fun d!112203 () Bool)

(declare-fun res!615441 () Bool)

(declare-fun e!511705 () Bool)

(assert (=> d!112203 (=> res!615441 e!511705)))

(assert (=> d!112203 (= res!615441 (= (select (arr!26042 _keys!1386) #b00000000000000000000000000000000) k0!1033))))

(assert (=> d!112203 (= (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000) e!511705)))

(declare-fun b!912170 () Bool)

(declare-fun e!511706 () Bool)

(assert (=> b!912170 (= e!511705 e!511706)))

(declare-fun res!615442 () Bool)

(assert (=> b!912170 (=> (not res!615442) (not e!511706))))

(assert (=> b!912170 (= res!615442 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26502 _keys!1386)))))

(declare-fun b!912171 () Bool)

(assert (=> b!912171 (= e!511706 (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!112203 (not res!615441)) b!912170))

(assert (= (and b!912170 res!615442) b!912171))

(assert (=> d!112203 m!846791))

(declare-fun m!846837 () Bool)

(assert (=> b!912171 m!846837))

(assert (=> b!912054 d!112203))

(declare-fun d!112205 () Bool)

(declare-fun e!511709 () Bool)

(assert (=> d!112205 e!511709))

(declare-fun c!95711 () Bool)

(assert (=> d!112205 (= c!95711 (and (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!410596 () Unit!30839)

(declare-fun choose!1537 (array!54182 array!54184 (_ BitVec 32) (_ BitVec 32) V!30417 V!30417 (_ BitVec 64) Int) Unit!30839)

(assert (=> d!112205 (= lt!410596 (choose!1537 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(assert (=> d!112205 (validMask!0 mask!1756)))

(assert (=> d!112205 (= (lemmaKeyInListMapIsInArray!266 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160) lt!410596)))

(declare-fun b!912176 () Bool)

(assert (=> b!912176 (= e!511709 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000))))

(declare-fun b!912177 () Bool)

(assert (=> b!912177 (= e!511709 (ite (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!112205 c!95711) b!912176))

(assert (= (and d!112205 (not c!95711)) b!912177))

(declare-fun m!846839 () Bool)

(assert (=> d!112205 m!846839))

(assert (=> d!112205 m!846731))

(assert (=> b!912176 m!846741))

(assert (=> b!912054 d!112205))

(declare-fun bm!40388 () Bool)

(declare-fun call!40391 () Bool)

(declare-fun c!95714 () Bool)

(assert (=> bm!40388 (= call!40391 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95714 (Cons!18393 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000) Nil!18394) Nil!18394)))))

(declare-fun b!912188 () Bool)

(declare-fun e!511720 () Bool)

(assert (=> b!912188 (= e!511720 call!40391)))

(declare-fun b!912189 () Bool)

(assert (=> b!912189 (= e!511720 call!40391)))

(declare-fun b!912190 () Bool)

(declare-fun e!511721 () Bool)

(declare-fun contains!4661 (List!18397 (_ BitVec 64)) Bool)

(assert (=> b!912190 (= e!511721 (contains!4661 Nil!18394 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!912191 () Bool)

(declare-fun e!511718 () Bool)

(declare-fun e!511719 () Bool)

(assert (=> b!912191 (= e!511718 e!511719)))

(declare-fun res!615449 () Bool)

(assert (=> b!912191 (=> (not res!615449) (not e!511719))))

(assert (=> b!912191 (= res!615449 (not e!511721))))

(declare-fun res!615450 () Bool)

(assert (=> b!912191 (=> (not res!615450) (not e!511721))))

(assert (=> b!912191 (= res!615450 (validKeyInArray!0 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112207 () Bool)

(declare-fun res!615451 () Bool)

(assert (=> d!112207 (=> res!615451 e!511718)))

(assert (=> d!112207 (= res!615451 (bvsge #b00000000000000000000000000000000 (size!26502 _keys!1386)))))

(assert (=> d!112207 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18394) e!511718)))

(declare-fun b!912192 () Bool)

(assert (=> b!912192 (= e!511719 e!511720)))

(assert (=> b!912192 (= c!95714 (validKeyInArray!0 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!112207 (not res!615451)) b!912191))

(assert (= (and b!912191 res!615450) b!912190))

(assert (= (and b!912191 res!615449) b!912192))

(assert (= (and b!912192 c!95714) b!912188))

(assert (= (and b!912192 (not c!95714)) b!912189))

(assert (= (or b!912188 b!912189) bm!40388))

(assert (=> bm!40388 m!846791))

(declare-fun m!846841 () Bool)

(assert (=> bm!40388 m!846841))

(assert (=> b!912190 m!846791))

(assert (=> b!912190 m!846791))

(declare-fun m!846843 () Bool)

(assert (=> b!912190 m!846843))

(assert (=> b!912191 m!846791))

(assert (=> b!912191 m!846791))

(assert (=> b!912191 m!846793))

(assert (=> b!912192 m!846791))

(assert (=> b!912192 m!846791))

(assert (=> b!912192 m!846793))

(assert (=> b!912052 d!112207))

(declare-fun d!112209 () Bool)

(assert (=> d!112209 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!78188 d!112209))

(declare-fun d!112211 () Bool)

(assert (=> d!112211 (= (array_inv!20332 _values!1152) (bvsge (size!26503 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!78188 d!112211))

(declare-fun d!112213 () Bool)

(assert (=> d!112213 (= (array_inv!20333 _keys!1386) (bvsge (size!26502 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!78188 d!112213))

(declare-fun d!112215 () Bool)

(assert (=> d!112215 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!912056 d!112215))

(declare-fun d!112217 () Bool)

(declare-fun res!615457 () Bool)

(declare-fun e!511730 () Bool)

(assert (=> d!112217 (=> res!615457 e!511730)))

(assert (=> d!112217 (= res!615457 (bvsge #b00000000000000000000000000000000 (size!26502 _keys!1386)))))

(assert (=> d!112217 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!511730)))

(declare-fun bm!40391 () Bool)

(declare-fun call!40394 () Bool)

(assert (=> bm!40391 (= call!40394 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!912201 () Bool)

(declare-fun e!511728 () Bool)

(assert (=> b!912201 (= e!511730 e!511728)))

(declare-fun c!95717 () Bool)

(assert (=> b!912201 (= c!95717 (validKeyInArray!0 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!912202 () Bool)

(declare-fun e!511729 () Bool)

(assert (=> b!912202 (= e!511728 e!511729)))

(declare-fun lt!410603 () (_ BitVec 64))

(assert (=> b!912202 (= lt!410603 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410604 () Unit!30839)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54182 (_ BitVec 64) (_ BitVec 32)) Unit!30839)

(assert (=> b!912202 (= lt!410604 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!410603 #b00000000000000000000000000000000))))

(assert (=> b!912202 (arrayContainsKey!0 _keys!1386 lt!410603 #b00000000000000000000000000000000)))

(declare-fun lt!410605 () Unit!30839)

(assert (=> b!912202 (= lt!410605 lt!410604)))

(declare-fun res!615456 () Bool)

(declare-datatypes ((SeekEntryResult!8954 0))(
  ( (MissingZero!8954 (index!38186 (_ BitVec 32))) (Found!8954 (index!38187 (_ BitVec 32))) (Intermediate!8954 (undefined!9766 Bool) (index!38188 (_ BitVec 32)) (x!78016 (_ BitVec 32))) (Undefined!8954) (MissingVacant!8954 (index!38189 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54182 (_ BitVec 32)) SeekEntryResult!8954)

(assert (=> b!912202 (= res!615456 (= (seekEntryOrOpen!0 (select (arr!26042 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8954 #b00000000000000000000000000000000)))))

(assert (=> b!912202 (=> (not res!615456) (not e!511729))))

(declare-fun b!912203 () Bool)

(assert (=> b!912203 (= e!511728 call!40394)))

(declare-fun b!912204 () Bool)

(assert (=> b!912204 (= e!511729 call!40394)))

(assert (= (and d!112217 (not res!615457)) b!912201))

(assert (= (and b!912201 c!95717) b!912202))

(assert (= (and b!912201 (not c!95717)) b!912203))

(assert (= (and b!912202 res!615456) b!912204))

(assert (= (or b!912204 b!912203) bm!40391))

(declare-fun m!846845 () Bool)

(assert (=> bm!40391 m!846845))

(assert (=> b!912201 m!846791))

(assert (=> b!912201 m!846791))

(assert (=> b!912201 m!846793))

(assert (=> b!912202 m!846791))

(declare-fun m!846847 () Bool)

(assert (=> b!912202 m!846847))

(declare-fun m!846849 () Bool)

(assert (=> b!912202 m!846849))

(assert (=> b!912202 m!846791))

(declare-fun m!846851 () Bool)

(assert (=> b!912202 m!846851))

(assert (=> b!912059 d!112217))

(declare-fun condMapEmpty!30364 () Bool)

(declare-fun mapDefault!30364 () ValueCell!9063)

(assert (=> mapNonEmpty!30358 (= condMapEmpty!30364 (= mapRest!30358 ((as const (Array (_ BitVec 32) ValueCell!9063)) mapDefault!30364)))))

(declare-fun e!511735 () Bool)

(declare-fun mapRes!30364 () Bool)

(assert (=> mapNonEmpty!30358 (= tp!58288 (and e!511735 mapRes!30364))))

(declare-fun b!912212 () Bool)

(assert (=> b!912212 (= e!511735 tp_is_empty!19089)))

(declare-fun mapIsEmpty!30364 () Bool)

(assert (=> mapIsEmpty!30364 mapRes!30364))

(declare-fun b!912211 () Bool)

(declare-fun e!511736 () Bool)

(assert (=> b!912211 (= e!511736 tp_is_empty!19089)))

(declare-fun mapNonEmpty!30364 () Bool)

(declare-fun tp!58297 () Bool)

(assert (=> mapNonEmpty!30364 (= mapRes!30364 (and tp!58297 e!511736))))

(declare-fun mapKey!30364 () (_ BitVec 32))

(declare-fun mapRest!30364 () (Array (_ BitVec 32) ValueCell!9063))

(declare-fun mapValue!30364 () ValueCell!9063)

(assert (=> mapNonEmpty!30364 (= mapRest!30358 (store mapRest!30364 mapKey!30364 mapValue!30364))))

(assert (= (and mapNonEmpty!30358 condMapEmpty!30364) mapIsEmpty!30364))

(assert (= (and mapNonEmpty!30358 (not condMapEmpty!30364)) mapNonEmpty!30364))

(assert (= (and mapNonEmpty!30364 ((_ is ValueCellFull!9063) mapValue!30364)) b!912211))

(assert (= (and mapNonEmpty!30358 ((_ is ValueCellFull!9063) mapDefault!30364)) b!912212))

(declare-fun m!846853 () Bool)

(assert (=> mapNonEmpty!30364 m!846853))

(declare-fun b_lambda!13339 () Bool)

(assert (= b_lambda!13337 (or (and start!78188 b_free!16671) b_lambda!13339)))

(check-sat (not bm!40388) (not d!112205) (not b_lambda!13339) (not bm!40383) (not b!912176) (not b!912171) (not bm!40384) (not d!112199) (not b!912201) (not b!912190) (not b!912192) b_and!27267 (not bm!40391) (not b!912098) (not b!912191) (not b!912162) (not bm!40379) (not b!912163) (not b!912155) (not b!912149) (not mapNonEmpty!30364) (not d!112201) (not b!912146) tp_is_empty!19089 (not b!912145) (not b!912147) (not b_next!16671) (not bm!40380) (not b!912159) (not b!912202) (not b!912100))
(check-sat b_and!27267 (not b_next!16671))
