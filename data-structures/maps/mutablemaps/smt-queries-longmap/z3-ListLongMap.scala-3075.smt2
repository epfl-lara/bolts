; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43312 () Bool)

(assert start!43312)

(declare-fun b_free!12171 () Bool)

(declare-fun b_next!12171 () Bool)

(assert (=> start!43312 (= b_free!12171 (not b_next!12171))))

(declare-fun tp!42784 () Bool)

(declare-fun b_and!20941 () Bool)

(assert (=> start!43312 (= tp!42784 b_and!20941)))

(declare-fun b!479587 () Bool)

(declare-fun e!282198 () Bool)

(declare-datatypes ((array!31003 0))(
  ( (array!31004 (arr!14905 (Array (_ BitVec 32) (_ BitVec 64))) (size!15263 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31003)

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!479587 (= e!282198 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!479588 () Bool)

(declare-fun res!286140 () Bool)

(declare-fun e!282199 () Bool)

(assert (=> b!479588 (=> (not res!286140) (not e!282199))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19315 0))(
  ( (V!19316 (val!6889 Int)) )
))
(declare-datatypes ((ValueCell!6480 0))(
  ( (ValueCellFull!6480 (v!9174 V!19315)) (EmptyCell!6480) )
))
(declare-datatypes ((array!31005 0))(
  ( (array!31006 (arr!14906 (Array (_ BitVec 32) ValueCell!6480)) (size!15264 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31005)

(assert (=> b!479588 (= res!286140 (and (= (size!15264 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15263 _keys!1874) (size!15264 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479589 () Bool)

(declare-fun e!282197 () Bool)

(declare-fun tp_is_empty!13683 () Bool)

(assert (=> b!479589 (= e!282197 tp_is_empty!13683)))

(declare-fun b!479590 () Bool)

(declare-fun res!286141 () Bool)

(assert (=> b!479590 (=> (not res!286141) (not e!282199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31003 (_ BitVec 32)) Bool)

(assert (=> b!479590 (= res!286141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479591 () Bool)

(assert (=> b!479591 (= e!282199 (not (and (bvslt #b00000000000000000000000000000000 (size!15263 _keys!1874)) (bvslt (size!15263 _keys!1874) #b01111111111111111111111111111111))))))

(assert (=> b!479591 e!282198))

(declare-fun c!57607 () Bool)

(assert (=> b!479591 (= c!57607 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14038 0))(
  ( (Unit!14039) )
))
(declare-fun lt!217871 () Unit!14038)

(declare-fun minValue!1458 () V!19315)

(declare-fun zeroValue!1458 () V!19315)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!112 (array!31003 array!31005 (_ BitVec 32) (_ BitVec 32) V!19315 V!19315 (_ BitVec 64) Int) Unit!14038)

(assert (=> b!479591 (= lt!217871 (lemmaKeyInListMapIsInArray!112 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!479592 () Bool)

(declare-fun res!286143 () Bool)

(assert (=> b!479592 (=> (not res!286143) (not e!282199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!479592 (= res!286143 (validKeyInArray!0 k0!1332))))

(declare-fun b!479593 () Bool)

(declare-fun res!286138 () Bool)

(assert (=> b!479593 (=> (not res!286138) (not e!282199))))

(declare-datatypes ((tuple2!9038 0))(
  ( (tuple2!9039 (_1!4529 (_ BitVec 64)) (_2!4529 V!19315)) )
))
(declare-datatypes ((List!9151 0))(
  ( (Nil!9148) (Cons!9147 (h!10003 tuple2!9038) (t!15365 List!9151)) )
))
(declare-datatypes ((ListLongMap!7965 0))(
  ( (ListLongMap!7966 (toList!3998 List!9151)) )
))
(declare-fun contains!2605 (ListLongMap!7965 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2290 (array!31003 array!31005 (_ BitVec 32) (_ BitVec 32) V!19315 V!19315 (_ BitVec 32) Int) ListLongMap!7965)

(assert (=> b!479593 (= res!286138 (contains!2605 (getCurrentListMap!2290 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun mapIsEmpty!22222 () Bool)

(declare-fun mapRes!22222 () Bool)

(assert (=> mapIsEmpty!22222 mapRes!22222))

(declare-fun b!479594 () Bool)

(declare-fun res!286139 () Bool)

(assert (=> b!479594 (=> (not res!286139) (not e!282199))))

(declare-datatypes ((List!9152 0))(
  ( (Nil!9149) (Cons!9148 (h!10004 (_ BitVec 64)) (t!15366 List!9152)) )
))
(declare-fun arrayNoDuplicates!0 (array!31003 (_ BitVec 32) List!9152) Bool)

(assert (=> b!479594 (= res!286139 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9149))))

(declare-fun b!479595 () Bool)

(declare-fun e!282196 () Bool)

(assert (=> b!479595 (= e!282196 (and e!282197 mapRes!22222))))

(declare-fun condMapEmpty!22222 () Bool)

(declare-fun mapDefault!22222 () ValueCell!6480)

(assert (=> b!479595 (= condMapEmpty!22222 (= (arr!14906 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6480)) mapDefault!22222)))))

(declare-fun mapNonEmpty!22222 () Bool)

(declare-fun tp!42783 () Bool)

(declare-fun e!282195 () Bool)

(assert (=> mapNonEmpty!22222 (= mapRes!22222 (and tp!42783 e!282195))))

(declare-fun mapKey!22222 () (_ BitVec 32))

(declare-fun mapRest!22222 () (Array (_ BitVec 32) ValueCell!6480))

(declare-fun mapValue!22222 () ValueCell!6480)

(assert (=> mapNonEmpty!22222 (= (arr!14906 _values!1516) (store mapRest!22222 mapKey!22222 mapValue!22222))))

(declare-fun b!479597 () Bool)

(assert (=> b!479597 (= e!282198 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!479596 () Bool)

(assert (=> b!479596 (= e!282195 tp_is_empty!13683)))

(declare-fun res!286142 () Bool)

(assert (=> start!43312 (=> (not res!286142) (not e!282199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43312 (= res!286142 (validMask!0 mask!2352))))

(assert (=> start!43312 e!282199))

(assert (=> start!43312 true))

(assert (=> start!43312 tp_is_empty!13683))

(declare-fun array_inv!10738 (array!31005) Bool)

(assert (=> start!43312 (and (array_inv!10738 _values!1516) e!282196)))

(assert (=> start!43312 tp!42784))

(declare-fun array_inv!10739 (array!31003) Bool)

(assert (=> start!43312 (array_inv!10739 _keys!1874)))

(assert (= (and start!43312 res!286142) b!479588))

(assert (= (and b!479588 res!286140) b!479590))

(assert (= (and b!479590 res!286141) b!479594))

(assert (= (and b!479594 res!286139) b!479593))

(assert (= (and b!479593 res!286138) b!479592))

(assert (= (and b!479592 res!286143) b!479591))

(assert (= (and b!479591 c!57607) b!479587))

(assert (= (and b!479591 (not c!57607)) b!479597))

(assert (= (and b!479595 condMapEmpty!22222) mapIsEmpty!22222))

(assert (= (and b!479595 (not condMapEmpty!22222)) mapNonEmpty!22222))

(get-info :version)

(assert (= (and mapNonEmpty!22222 ((_ is ValueCellFull!6480) mapValue!22222)) b!479596))

(assert (= (and b!479595 ((_ is ValueCellFull!6480) mapDefault!22222)) b!479589))

(assert (= start!43312 b!479595))

(declare-fun m!461477 () Bool)

(assert (=> mapNonEmpty!22222 m!461477))

(declare-fun m!461479 () Bool)

(assert (=> b!479593 m!461479))

(assert (=> b!479593 m!461479))

(declare-fun m!461481 () Bool)

(assert (=> b!479593 m!461481))

(declare-fun m!461483 () Bool)

(assert (=> b!479594 m!461483))

(declare-fun m!461485 () Bool)

(assert (=> b!479591 m!461485))

(declare-fun m!461487 () Bool)

(assert (=> b!479590 m!461487))

(declare-fun m!461489 () Bool)

(assert (=> b!479587 m!461489))

(declare-fun m!461491 () Bool)

(assert (=> start!43312 m!461491))

(declare-fun m!461493 () Bool)

(assert (=> start!43312 m!461493))

(declare-fun m!461495 () Bool)

(assert (=> start!43312 m!461495))

(declare-fun m!461497 () Bool)

(assert (=> b!479592 m!461497))

(check-sat (not start!43312) (not b_next!12171) (not mapNonEmpty!22222) (not b!479591) (not b!479592) b_and!20941 (not b!479590) (not b!479593) tp_is_empty!13683 (not b!479587) (not b!479594))
(check-sat b_and!20941 (not b_next!12171))
(get-model)

(declare-fun b!479641 () Bool)

(declare-fun e!282229 () Bool)

(declare-fun call!30847 () Bool)

(assert (=> b!479641 (= e!282229 call!30847)))

(declare-fun b!479642 () Bool)

(declare-fun e!282228 () Bool)

(declare-fun contains!2607 (List!9152 (_ BitVec 64)) Bool)

(assert (=> b!479642 (= e!282228 (contains!2607 Nil!9149 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76555 () Bool)

(declare-fun res!286169 () Bool)

(declare-fun e!282227 () Bool)

(assert (=> d!76555 (=> res!286169 e!282227)))

(assert (=> d!76555 (= res!286169 (bvsge #b00000000000000000000000000000000 (size!15263 _keys!1874)))))

(assert (=> d!76555 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9149) e!282227)))

(declare-fun b!479643 () Bool)

(assert (=> b!479643 (= e!282229 call!30847)))

(declare-fun b!479644 () Bool)

(declare-fun e!282226 () Bool)

(assert (=> b!479644 (= e!282227 e!282226)))

(declare-fun res!286168 () Bool)

(assert (=> b!479644 (=> (not res!286168) (not e!282226))))

(assert (=> b!479644 (= res!286168 (not e!282228))))

(declare-fun res!286170 () Bool)

(assert (=> b!479644 (=> (not res!286170) (not e!282228))))

(assert (=> b!479644 (= res!286170 (validKeyInArray!0 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!479645 () Bool)

(assert (=> b!479645 (= e!282226 e!282229)))

(declare-fun c!57613 () Bool)

(assert (=> b!479645 (= c!57613 (validKeyInArray!0 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!30844 () Bool)

(assert (=> bm!30844 (= call!30847 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57613 (Cons!9148 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000) Nil!9149) Nil!9149)))))

(assert (= (and d!76555 (not res!286169)) b!479644))

(assert (= (and b!479644 res!286170) b!479642))

(assert (= (and b!479644 res!286168) b!479645))

(assert (= (and b!479645 c!57613) b!479641))

(assert (= (and b!479645 (not c!57613)) b!479643))

(assert (= (or b!479641 b!479643) bm!30844))

(declare-fun m!461521 () Bool)

(assert (=> b!479642 m!461521))

(assert (=> b!479642 m!461521))

(declare-fun m!461523 () Bool)

(assert (=> b!479642 m!461523))

(assert (=> b!479644 m!461521))

(assert (=> b!479644 m!461521))

(declare-fun m!461525 () Bool)

(assert (=> b!479644 m!461525))

(assert (=> b!479645 m!461521))

(assert (=> b!479645 m!461521))

(assert (=> b!479645 m!461525))

(assert (=> bm!30844 m!461521))

(declare-fun m!461527 () Bool)

(assert (=> bm!30844 m!461527))

(assert (=> b!479594 d!76555))

(declare-fun b!479654 () Bool)

(declare-fun e!282238 () Bool)

(declare-fun e!282237 () Bool)

(assert (=> b!479654 (= e!282238 e!282237)))

(declare-fun lt!217883 () (_ BitVec 64))

(assert (=> b!479654 (= lt!217883 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!217882 () Unit!14038)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31003 (_ BitVec 64) (_ BitVec 32)) Unit!14038)

(assert (=> b!479654 (= lt!217882 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!217883 #b00000000000000000000000000000000))))

(assert (=> b!479654 (arrayContainsKey!0 _keys!1874 lt!217883 #b00000000000000000000000000000000)))

(declare-fun lt!217881 () Unit!14038)

(assert (=> b!479654 (= lt!217881 lt!217882)))

(declare-fun res!286176 () Bool)

(declare-datatypes ((SeekEntryResult!3556 0))(
  ( (MissingZero!3556 (index!16403 (_ BitVec 32))) (Found!3556 (index!16404 (_ BitVec 32))) (Intermediate!3556 (undefined!4368 Bool) (index!16405 (_ BitVec 32)) (x!45065 (_ BitVec 32))) (Undefined!3556) (MissingVacant!3556 (index!16406 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31003 (_ BitVec 32)) SeekEntryResult!3556)

(assert (=> b!479654 (= res!286176 (= (seekEntryOrOpen!0 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3556 #b00000000000000000000000000000000)))))

(assert (=> b!479654 (=> (not res!286176) (not e!282237))))

(declare-fun b!479655 () Bool)

(declare-fun call!30850 () Bool)

(assert (=> b!479655 (= e!282237 call!30850)))

(declare-fun b!479656 () Bool)

(assert (=> b!479656 (= e!282238 call!30850)))

(declare-fun d!76557 () Bool)

(declare-fun res!286175 () Bool)

(declare-fun e!282236 () Bool)

(assert (=> d!76557 (=> res!286175 e!282236)))

(assert (=> d!76557 (= res!286175 (bvsge #b00000000000000000000000000000000 (size!15263 _keys!1874)))))

(assert (=> d!76557 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!282236)))

(declare-fun bm!30847 () Bool)

(assert (=> bm!30847 (= call!30850 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!479657 () Bool)

(assert (=> b!479657 (= e!282236 e!282238)))

(declare-fun c!57616 () Bool)

(assert (=> b!479657 (= c!57616 (validKeyInArray!0 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000)))))

(assert (= (and d!76557 (not res!286175)) b!479657))

(assert (= (and b!479657 c!57616) b!479654))

(assert (= (and b!479657 (not c!57616)) b!479656))

(assert (= (and b!479654 res!286176) b!479655))

(assert (= (or b!479655 b!479656) bm!30847))

(assert (=> b!479654 m!461521))

(declare-fun m!461529 () Bool)

(assert (=> b!479654 m!461529))

(declare-fun m!461531 () Bool)

(assert (=> b!479654 m!461531))

(assert (=> b!479654 m!461521))

(declare-fun m!461533 () Bool)

(assert (=> b!479654 m!461533))

(declare-fun m!461535 () Bool)

(assert (=> bm!30847 m!461535))

(assert (=> b!479657 m!461521))

(assert (=> b!479657 m!461521))

(assert (=> b!479657 m!461525))

(assert (=> b!479590 d!76557))

(declare-fun d!76559 () Bool)

(declare-fun e!282241 () Bool)

(assert (=> d!76559 e!282241))

(declare-fun c!57619 () Bool)

(assert (=> d!76559 (= c!57619 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!217886 () Unit!14038)

(declare-fun choose!1382 (array!31003 array!31005 (_ BitVec 32) (_ BitVec 32) V!19315 V!19315 (_ BitVec 64) Int) Unit!14038)

(assert (=> d!76559 (= lt!217886 (choose!1382 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (=> d!76559 (validMask!0 mask!2352)))

(assert (=> d!76559 (= (lemmaKeyInListMapIsInArray!112 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519) lt!217886)))

(declare-fun b!479662 () Bool)

(assert (=> b!479662 (= e!282241 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!479663 () Bool)

(assert (=> b!479663 (= e!282241 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!76559 c!57619) b!479662))

(assert (= (and d!76559 (not c!57619)) b!479663))

(declare-fun m!461537 () Bool)

(assert (=> d!76559 m!461537))

(assert (=> d!76559 m!461491))

(assert (=> b!479662 m!461489))

(assert (=> b!479591 d!76559))

(declare-fun d!76561 () Bool)

(declare-fun res!286181 () Bool)

(declare-fun e!282246 () Bool)

(assert (=> d!76561 (=> res!286181 e!282246)))

(assert (=> d!76561 (= res!286181 (= (select (arr!14905 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76561 (= (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) e!282246)))

(declare-fun b!479668 () Bool)

(declare-fun e!282247 () Bool)

(assert (=> b!479668 (= e!282246 e!282247)))

(declare-fun res!286182 () Bool)

(assert (=> b!479668 (=> (not res!286182) (not e!282247))))

(assert (=> b!479668 (= res!286182 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15263 _keys!1874)))))

(declare-fun b!479669 () Bool)

(assert (=> b!479669 (= e!282247 (arrayContainsKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76561 (not res!286181)) b!479668))

(assert (= (and b!479668 res!286182) b!479669))

(assert (=> d!76561 m!461521))

(declare-fun m!461539 () Bool)

(assert (=> b!479669 m!461539))

(assert (=> b!479587 d!76561))

(declare-fun d!76563 () Bool)

(assert (=> d!76563 (= (validKeyInArray!0 k0!1332) (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!479592 d!76563))

(declare-fun d!76565 () Bool)

(declare-fun e!282253 () Bool)

(assert (=> d!76565 e!282253))

(declare-fun res!286185 () Bool)

(assert (=> d!76565 (=> res!286185 e!282253)))

(declare-fun lt!217898 () Bool)

(assert (=> d!76565 (= res!286185 (not lt!217898))))

(declare-fun lt!217895 () Bool)

(assert (=> d!76565 (= lt!217898 lt!217895)))

(declare-fun lt!217896 () Unit!14038)

(declare-fun e!282252 () Unit!14038)

(assert (=> d!76565 (= lt!217896 e!282252)))

(declare-fun c!57622 () Bool)

(assert (=> d!76565 (= c!57622 lt!217895)))

(declare-fun containsKey!353 (List!9151 (_ BitVec 64)) Bool)

(assert (=> d!76565 (= lt!217895 (containsKey!353 (toList!3998 (getCurrentListMap!2290 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(assert (=> d!76565 (= (contains!2605 (getCurrentListMap!2290 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332) lt!217898)))

(declare-fun b!479676 () Bool)

(declare-fun lt!217897 () Unit!14038)

(assert (=> b!479676 (= e!282252 lt!217897)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!302 (List!9151 (_ BitVec 64)) Unit!14038)

(assert (=> b!479676 (= lt!217897 (lemmaContainsKeyImpliesGetValueByKeyDefined!302 (toList!3998 (getCurrentListMap!2290 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-datatypes ((Option!397 0))(
  ( (Some!396 (v!9176 V!19315)) (None!395) )
))
(declare-fun isDefined!303 (Option!397) Bool)

(declare-fun getValueByKey!391 (List!9151 (_ BitVec 64)) Option!397)

(assert (=> b!479676 (isDefined!303 (getValueByKey!391 (toList!3998 (getCurrentListMap!2290 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-fun b!479677 () Bool)

(declare-fun Unit!14042 () Unit!14038)

(assert (=> b!479677 (= e!282252 Unit!14042)))

(declare-fun b!479678 () Bool)

(assert (=> b!479678 (= e!282253 (isDefined!303 (getValueByKey!391 (toList!3998 (getCurrentListMap!2290 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332)))))

(assert (= (and d!76565 c!57622) b!479676))

(assert (= (and d!76565 (not c!57622)) b!479677))

(assert (= (and d!76565 (not res!286185)) b!479678))

(declare-fun m!461541 () Bool)

(assert (=> d!76565 m!461541))

(declare-fun m!461543 () Bool)

(assert (=> b!479676 m!461543))

(declare-fun m!461545 () Bool)

(assert (=> b!479676 m!461545))

(assert (=> b!479676 m!461545))

(declare-fun m!461547 () Bool)

(assert (=> b!479676 m!461547))

(assert (=> b!479678 m!461545))

(assert (=> b!479678 m!461545))

(assert (=> b!479678 m!461547))

(assert (=> b!479593 d!76565))

(declare-fun b!479721 () Bool)

(declare-fun e!282282 () Bool)

(assert (=> b!479721 (= e!282282 (validKeyInArray!0 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!479722 () Bool)

(declare-fun e!282288 () ListLongMap!7965)

(declare-fun call!30865 () ListLongMap!7965)

(declare-fun +!1742 (ListLongMap!7965 tuple2!9038) ListLongMap!7965)

(assert (=> b!479722 (= e!282288 (+!1742 call!30865 (tuple2!9039 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458)))))

(declare-fun lt!217963 () ListLongMap!7965)

(declare-fun b!479723 () Bool)

(declare-fun e!282284 () Bool)

(declare-fun apply!339 (ListLongMap!7965 (_ BitVec 64)) V!19315)

(declare-fun get!7243 (ValueCell!6480 V!19315) V!19315)

(declare-fun dynLambda!949 (Int (_ BitVec 64)) V!19315)

(assert (=> b!479723 (= e!282284 (= (apply!339 lt!217963 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000)) (get!7243 (select (arr!14906 _values!1516) #b00000000000000000000000000000000) (dynLambda!949 defaultEntry!1519 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!479723 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15264 _values!1516)))))

(assert (=> b!479723 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15263 _keys!1874)))))

(declare-fun b!479724 () Bool)

(declare-fun e!282292 () Bool)

(assert (=> b!479724 (= e!282292 (= (apply!339 lt!217963 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1458))))

(declare-fun bm!30862 () Bool)

(declare-fun call!30871 () ListLongMap!7965)

(declare-fun getCurrentListMapNoExtraKeys!2112 (array!31003 array!31005 (_ BitVec 32) (_ BitVec 32) V!19315 V!19315 (_ BitVec 32) Int) ListLongMap!7965)

(assert (=> bm!30862 (= call!30871 (getCurrentListMapNoExtraKeys!2112 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun b!479725 () Bool)

(declare-fun e!282291 () Bool)

(assert (=> b!479725 (= e!282291 e!282292)))

(declare-fun res!286205 () Bool)

(declare-fun call!30867 () Bool)

(assert (=> b!479725 (= res!286205 call!30867)))

(assert (=> b!479725 (=> (not res!286205) (not e!282292))))

(declare-fun b!479726 () Bool)

(declare-fun e!282287 () Bool)

(assert (=> b!479726 (= e!282287 (= (apply!339 lt!217963 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1458))))

(declare-fun b!479727 () Bool)

(declare-fun e!282286 () Bool)

(assert (=> b!479727 (= e!282286 e!282287)))

(declare-fun res!286210 () Bool)

(declare-fun call!30868 () Bool)

(assert (=> b!479727 (= res!286210 call!30868)))

(assert (=> b!479727 (=> (not res!286210) (not e!282287))))

(declare-fun b!479728 () Bool)

(declare-fun e!282290 () Bool)

(assert (=> b!479728 (= e!282290 e!282284)))

(declare-fun res!286211 () Bool)

(assert (=> b!479728 (=> (not res!286211) (not e!282284))))

(assert (=> b!479728 (= res!286211 (contains!2605 lt!217963 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000)))))

(assert (=> b!479728 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15263 _keys!1874)))))

(declare-fun bm!30863 () Bool)

(declare-fun call!30870 () ListLongMap!7965)

(assert (=> bm!30863 (= call!30870 call!30865)))

(declare-fun b!479729 () Bool)

(declare-fun e!282280 () Unit!14038)

(declare-fun Unit!14043 () Unit!14038)

(assert (=> b!479729 (= e!282280 Unit!14043)))

(declare-fun bm!30864 () Bool)

(assert (=> bm!30864 (= call!30868 (contains!2605 lt!217963 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!479730 () Bool)

(assert (=> b!479730 (= e!282291 (not call!30867))))

(declare-fun b!479731 () Bool)

(declare-fun c!57638 () Bool)

(assert (=> b!479731 (= c!57638 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!282281 () ListLongMap!7965)

(declare-fun e!282283 () ListLongMap!7965)

(assert (=> b!479731 (= e!282281 e!282283)))

(declare-fun b!479732 () Bool)

(assert (=> b!479732 (= e!282288 e!282281)))

(declare-fun c!57640 () Bool)

(assert (=> b!479732 (= c!57640 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!479733 () Bool)

(declare-fun e!282289 () Bool)

(assert (=> b!479733 (= e!282289 e!282286)))

(declare-fun c!57635 () Bool)

(assert (=> b!479733 (= c!57635 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30866 () Bool)

(declare-fun call!30869 () ListLongMap!7965)

(declare-fun call!30866 () ListLongMap!7965)

(assert (=> bm!30866 (= call!30869 call!30866)))

(declare-fun b!479734 () Bool)

(declare-fun res!286207 () Bool)

(assert (=> b!479734 (=> (not res!286207) (not e!282289))))

(assert (=> b!479734 (= res!286207 e!282291)))

(declare-fun c!57636 () Bool)

(assert (=> b!479734 (= c!57636 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!479735 () Bool)

(declare-fun res!286212 () Bool)

(assert (=> b!479735 (=> (not res!286212) (not e!282289))))

(assert (=> b!479735 (= res!286212 e!282290)))

(declare-fun res!286206 () Bool)

(assert (=> b!479735 (=> res!286206 e!282290)))

(assert (=> b!479735 (= res!286206 (not e!282282))))

(declare-fun res!286208 () Bool)

(assert (=> b!479735 (=> (not res!286208) (not e!282282))))

(assert (=> b!479735 (= res!286208 (bvslt #b00000000000000000000000000000000 (size!15263 _keys!1874)))))

(declare-fun b!479736 () Bool)

(assert (=> b!479736 (= e!282283 call!30870)))

(declare-fun b!479737 () Bool)

(declare-fun e!282285 () Bool)

(assert (=> b!479737 (= e!282285 (validKeyInArray!0 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!479738 () Bool)

(assert (=> b!479738 (= e!282286 (not call!30868))))

(declare-fun c!57639 () Bool)

(declare-fun bm!30867 () Bool)

(assert (=> bm!30867 (= call!30865 (+!1742 (ite c!57639 call!30871 (ite c!57640 call!30866 call!30869)) (ite (or c!57639 c!57640) (tuple2!9039 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1458) (tuple2!9039 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458))))))

(declare-fun bm!30868 () Bool)

(assert (=> bm!30868 (= call!30866 call!30871)))

(declare-fun b!479739 () Bool)

(assert (=> b!479739 (= e!282283 call!30869)))

(declare-fun b!479740 () Bool)

(assert (=> b!479740 (= e!282281 call!30870)))

(declare-fun b!479741 () Bool)

(declare-fun lt!217952 () Unit!14038)

(assert (=> b!479741 (= e!282280 lt!217952)))

(declare-fun lt!217959 () ListLongMap!7965)

(assert (=> b!479741 (= lt!217959 (getCurrentListMapNoExtraKeys!2112 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!217945 () (_ BitVec 64))

(assert (=> b!479741 (= lt!217945 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217949 () (_ BitVec 64))

(assert (=> b!479741 (= lt!217949 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!217961 () Unit!14038)

(declare-fun addStillContains!297 (ListLongMap!7965 (_ BitVec 64) V!19315 (_ BitVec 64)) Unit!14038)

(assert (=> b!479741 (= lt!217961 (addStillContains!297 lt!217959 lt!217945 zeroValue!1458 lt!217949))))

(assert (=> b!479741 (contains!2605 (+!1742 lt!217959 (tuple2!9039 lt!217945 zeroValue!1458)) lt!217949)))

(declare-fun lt!217954 () Unit!14038)

(assert (=> b!479741 (= lt!217954 lt!217961)))

(declare-fun lt!217955 () ListLongMap!7965)

(assert (=> b!479741 (= lt!217955 (getCurrentListMapNoExtraKeys!2112 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!217958 () (_ BitVec 64))

(assert (=> b!479741 (= lt!217958 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217943 () (_ BitVec 64))

(assert (=> b!479741 (= lt!217943 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!217956 () Unit!14038)

(declare-fun addApplyDifferent!297 (ListLongMap!7965 (_ BitVec 64) V!19315 (_ BitVec 64)) Unit!14038)

(assert (=> b!479741 (= lt!217956 (addApplyDifferent!297 lt!217955 lt!217958 minValue!1458 lt!217943))))

(assert (=> b!479741 (= (apply!339 (+!1742 lt!217955 (tuple2!9039 lt!217958 minValue!1458)) lt!217943) (apply!339 lt!217955 lt!217943))))

(declare-fun lt!217944 () Unit!14038)

(assert (=> b!479741 (= lt!217944 lt!217956)))

(declare-fun lt!217946 () ListLongMap!7965)

(assert (=> b!479741 (= lt!217946 (getCurrentListMapNoExtraKeys!2112 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!217960 () (_ BitVec 64))

(assert (=> b!479741 (= lt!217960 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217948 () (_ BitVec 64))

(assert (=> b!479741 (= lt!217948 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!217950 () Unit!14038)

(assert (=> b!479741 (= lt!217950 (addApplyDifferent!297 lt!217946 lt!217960 zeroValue!1458 lt!217948))))

(assert (=> b!479741 (= (apply!339 (+!1742 lt!217946 (tuple2!9039 lt!217960 zeroValue!1458)) lt!217948) (apply!339 lt!217946 lt!217948))))

(declare-fun lt!217947 () Unit!14038)

(assert (=> b!479741 (= lt!217947 lt!217950)))

(declare-fun lt!217951 () ListLongMap!7965)

(assert (=> b!479741 (= lt!217951 (getCurrentListMapNoExtraKeys!2112 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!217953 () (_ BitVec 64))

(assert (=> b!479741 (= lt!217953 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217962 () (_ BitVec 64))

(assert (=> b!479741 (= lt!217962 (select (arr!14905 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> b!479741 (= lt!217952 (addApplyDifferent!297 lt!217951 lt!217953 minValue!1458 lt!217962))))

(assert (=> b!479741 (= (apply!339 (+!1742 lt!217951 (tuple2!9039 lt!217953 minValue!1458)) lt!217962) (apply!339 lt!217951 lt!217962))))

(declare-fun bm!30865 () Bool)

(assert (=> bm!30865 (= call!30867 (contains!2605 lt!217963 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!76567 () Bool)

(assert (=> d!76567 e!282289))

(declare-fun res!286204 () Bool)

(assert (=> d!76567 (=> (not res!286204) (not e!282289))))

(assert (=> d!76567 (= res!286204 (or (bvsge #b00000000000000000000000000000000 (size!15263 _keys!1874)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15263 _keys!1874)))))))

(declare-fun lt!217964 () ListLongMap!7965)

(assert (=> d!76567 (= lt!217963 lt!217964)))

(declare-fun lt!217957 () Unit!14038)

(assert (=> d!76567 (= lt!217957 e!282280)))

(declare-fun c!57637 () Bool)

(assert (=> d!76567 (= c!57637 e!282285)))

(declare-fun res!286209 () Bool)

(assert (=> d!76567 (=> (not res!286209) (not e!282285))))

(assert (=> d!76567 (= res!286209 (bvslt #b00000000000000000000000000000000 (size!15263 _keys!1874)))))

(assert (=> d!76567 (= lt!217964 e!282288)))

(assert (=> d!76567 (= c!57639 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!76567 (validMask!0 mask!2352)))

(assert (=> d!76567 (= (getCurrentListMap!2290 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) lt!217963)))

(assert (= (and d!76567 c!57639) b!479722))

(assert (= (and d!76567 (not c!57639)) b!479732))

(assert (= (and b!479732 c!57640) b!479740))

(assert (= (and b!479732 (not c!57640)) b!479731))

(assert (= (and b!479731 c!57638) b!479736))

(assert (= (and b!479731 (not c!57638)) b!479739))

(assert (= (or b!479736 b!479739) bm!30866))

(assert (= (or b!479740 bm!30866) bm!30868))

(assert (= (or b!479740 b!479736) bm!30863))

(assert (= (or b!479722 bm!30868) bm!30862))

(assert (= (or b!479722 bm!30863) bm!30867))

(assert (= (and d!76567 res!286209) b!479737))

(assert (= (and d!76567 c!57637) b!479741))

(assert (= (and d!76567 (not c!57637)) b!479729))

(assert (= (and d!76567 res!286204) b!479735))

(assert (= (and b!479735 res!286208) b!479721))

(assert (= (and b!479735 (not res!286206)) b!479728))

(assert (= (and b!479728 res!286211) b!479723))

(assert (= (and b!479735 res!286212) b!479734))

(assert (= (and b!479734 c!57636) b!479725))

(assert (= (and b!479734 (not c!57636)) b!479730))

(assert (= (and b!479725 res!286205) b!479724))

(assert (= (or b!479725 b!479730) bm!30865))

(assert (= (and b!479734 res!286207) b!479733))

(assert (= (and b!479733 c!57635) b!479727))

(assert (= (and b!479733 (not c!57635)) b!479738))

(assert (= (and b!479727 res!286210) b!479726))

(assert (= (or b!479727 b!479738) bm!30864))

(declare-fun b_lambda!10821 () Bool)

(assert (=> (not b_lambda!10821) (not b!479723)))

(declare-fun t!15370 () Bool)

(declare-fun tb!4167 () Bool)

(assert (=> (and start!43312 (= defaultEntry!1519 defaultEntry!1519) t!15370) tb!4167))

(declare-fun result!7753 () Bool)

(assert (=> tb!4167 (= result!7753 tp_is_empty!13683)))

(assert (=> b!479723 t!15370))

(declare-fun b_and!20945 () Bool)

(assert (= b_and!20941 (and (=> t!15370 result!7753) b_and!20945)))

(declare-fun m!461549 () Bool)

(assert (=> bm!30864 m!461549))

(assert (=> b!479723 m!461521))

(declare-fun m!461551 () Bool)

(assert (=> b!479723 m!461551))

(declare-fun m!461553 () Bool)

(assert (=> b!479723 m!461553))

(declare-fun m!461555 () Bool)

(assert (=> b!479723 m!461555))

(assert (=> b!479723 m!461521))

(declare-fun m!461557 () Bool)

(assert (=> b!479723 m!461557))

(assert (=> b!479723 m!461553))

(assert (=> b!479723 m!461551))

(declare-fun m!461559 () Bool)

(assert (=> bm!30865 m!461559))

(assert (=> b!479721 m!461521))

(assert (=> b!479721 m!461521))

(assert (=> b!479721 m!461525))

(assert (=> b!479728 m!461521))

(assert (=> b!479728 m!461521))

(declare-fun m!461561 () Bool)

(assert (=> b!479728 m!461561))

(declare-fun m!461563 () Bool)

(assert (=> bm!30867 m!461563))

(declare-fun m!461565 () Bool)

(assert (=> b!479741 m!461565))

(declare-fun m!461567 () Bool)

(assert (=> b!479741 m!461567))

(declare-fun m!461569 () Bool)

(assert (=> b!479741 m!461569))

(declare-fun m!461571 () Bool)

(assert (=> b!479741 m!461571))

(assert (=> b!479741 m!461521))

(declare-fun m!461573 () Bool)

(assert (=> b!479741 m!461573))

(declare-fun m!461575 () Bool)

(assert (=> b!479741 m!461575))

(declare-fun m!461577 () Bool)

(assert (=> b!479741 m!461577))

(declare-fun m!461579 () Bool)

(assert (=> b!479741 m!461579))

(declare-fun m!461581 () Bool)

(assert (=> b!479741 m!461581))

(assert (=> b!479741 m!461579))

(declare-fun m!461583 () Bool)

(assert (=> b!479741 m!461583))

(declare-fun m!461585 () Bool)

(assert (=> b!479741 m!461585))

(declare-fun m!461587 () Bool)

(assert (=> b!479741 m!461587))

(assert (=> b!479741 m!461567))

(declare-fun m!461589 () Bool)

(assert (=> b!479741 m!461589))

(assert (=> b!479741 m!461575))

(declare-fun m!461591 () Bool)

(assert (=> b!479741 m!461591))

(declare-fun m!461593 () Bool)

(assert (=> b!479741 m!461593))

(assert (=> b!479741 m!461587))

(declare-fun m!461595 () Bool)

(assert (=> b!479741 m!461595))

(assert (=> d!76567 m!461491))

(declare-fun m!461597 () Bool)

(assert (=> b!479726 m!461597))

(declare-fun m!461599 () Bool)

(assert (=> b!479722 m!461599))

(declare-fun m!461601 () Bool)

(assert (=> b!479724 m!461601))

(assert (=> b!479737 m!461521))

(assert (=> b!479737 m!461521))

(assert (=> b!479737 m!461525))

(assert (=> bm!30862 m!461571))

(assert (=> b!479593 d!76567))

(declare-fun d!76569 () Bool)

(assert (=> d!76569 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43312 d!76569))

(declare-fun d!76571 () Bool)

(assert (=> d!76571 (= (array_inv!10738 _values!1516) (bvsge (size!15264 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43312 d!76571))

(declare-fun d!76573 () Bool)

(assert (=> d!76573 (= (array_inv!10739 _keys!1874) (bvsge (size!15263 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43312 d!76573))

(declare-fun mapNonEmpty!22228 () Bool)

(declare-fun mapRes!22228 () Bool)

(declare-fun tp!42793 () Bool)

(declare-fun e!282298 () Bool)

(assert (=> mapNonEmpty!22228 (= mapRes!22228 (and tp!42793 e!282298))))

(declare-fun mapValue!22228 () ValueCell!6480)

(declare-fun mapKey!22228 () (_ BitVec 32))

(declare-fun mapRest!22228 () (Array (_ BitVec 32) ValueCell!6480))

(assert (=> mapNonEmpty!22228 (= mapRest!22222 (store mapRest!22228 mapKey!22228 mapValue!22228))))

(declare-fun condMapEmpty!22228 () Bool)

(declare-fun mapDefault!22228 () ValueCell!6480)

(assert (=> mapNonEmpty!22222 (= condMapEmpty!22228 (= mapRest!22222 ((as const (Array (_ BitVec 32) ValueCell!6480)) mapDefault!22228)))))

(declare-fun e!282297 () Bool)

(assert (=> mapNonEmpty!22222 (= tp!42783 (and e!282297 mapRes!22228))))

(declare-fun b!479751 () Bool)

(assert (=> b!479751 (= e!282297 tp_is_empty!13683)))

(declare-fun b!479750 () Bool)

(assert (=> b!479750 (= e!282298 tp_is_empty!13683)))

(declare-fun mapIsEmpty!22228 () Bool)

(assert (=> mapIsEmpty!22228 mapRes!22228))

(assert (= (and mapNonEmpty!22222 condMapEmpty!22228) mapIsEmpty!22228))

(assert (= (and mapNonEmpty!22222 (not condMapEmpty!22228)) mapNonEmpty!22228))

(assert (= (and mapNonEmpty!22228 ((_ is ValueCellFull!6480) mapValue!22228)) b!479750))

(assert (= (and mapNonEmpty!22222 ((_ is ValueCellFull!6480) mapDefault!22228)) b!479751))

(declare-fun m!461603 () Bool)

(assert (=> mapNonEmpty!22228 m!461603))

(declare-fun b_lambda!10823 () Bool)

(assert (= b_lambda!10821 (or (and start!43312 b_free!12171) b_lambda!10823)))

(check-sat (not d!76559) (not d!76565) (not b_lambda!10823) (not bm!30862) (not b!479741) (not b!479737) (not b!479657) (not b!479726) (not b!479678) (not bm!30864) (not b!479728) (not b!479645) tp_is_empty!13683 (not b!479722) (not bm!30865) (not b!479642) (not b_next!12171) (not b!479669) (not bm!30847) (not b!479644) (not b!479723) (not mapNonEmpty!22228) (not b!479654) (not b!479724) (not d!76567) (not b!479676) (not bm!30867) (not bm!30844) (not b!479721) b_and!20945 (not b!479662))
(check-sat b_and!20945 (not b_next!12171))
