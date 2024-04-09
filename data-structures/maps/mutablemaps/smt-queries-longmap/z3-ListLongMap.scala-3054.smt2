; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43146 () Bool)

(assert start!43146)

(declare-fun b!478187 () Bool)

(declare-fun e!281143 () Bool)

(declare-fun tp_is_empty!13557 () Bool)

(assert (=> b!478187 (= e!281143 tp_is_empty!13557)))

(declare-fun b!478188 () Bool)

(declare-fun res!285379 () Bool)

(declare-fun e!281145 () Bool)

(assert (=> b!478188 (=> (not res!285379) (not e!281145))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30755 0))(
  ( (array!30756 (arr!14785 (Array (_ BitVec 32) (_ BitVec 64))) (size!15143 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30755)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19147 0))(
  ( (V!19148 (val!6826 Int)) )
))
(declare-datatypes ((ValueCell!6417 0))(
  ( (ValueCellFull!6417 (v!9110 V!19147)) (EmptyCell!6417) )
))
(declare-datatypes ((array!30757 0))(
  ( (array!30758 (arr!14786 (Array (_ BitVec 32) ValueCell!6417)) (size!15144 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30757)

(assert (=> b!478188 (= res!285379 (and (= (size!15144 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15143 _keys!1874) (size!15144 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22021 () Bool)

(declare-fun mapRes!22021 () Bool)

(assert (=> mapIsEmpty!22021 mapRes!22021))

(declare-fun res!285378 () Bool)

(assert (=> start!43146 (=> (not res!285378) (not e!281145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43146 (= res!285378 (validMask!0 mask!2352))))

(assert (=> start!43146 e!281145))

(assert (=> start!43146 true))

(declare-fun e!281144 () Bool)

(declare-fun array_inv!10658 (array!30757) Bool)

(assert (=> start!43146 (and (array_inv!10658 _values!1516) e!281144)))

(declare-fun array_inv!10659 (array!30755) Bool)

(assert (=> start!43146 (array_inv!10659 _keys!1874)))

(declare-fun b!478189 () Bool)

(declare-fun res!285377 () Bool)

(assert (=> b!478189 (=> (not res!285377) (not e!281145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30755 (_ BitVec 32)) Bool)

(assert (=> b!478189 (= res!285377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478190 () Bool)

(assert (=> b!478190 (= e!281145 (and (bvsle #b00000000000000000000000000000000 (size!15143 _keys!1874)) (bvsge (size!15143 _keys!1874) #b01111111111111111111111111111111)))))

(declare-fun b!478191 () Bool)

(declare-fun e!281146 () Bool)

(assert (=> b!478191 (= e!281146 tp_is_empty!13557)))

(declare-fun mapNonEmpty!22021 () Bool)

(declare-fun tp!42496 () Bool)

(assert (=> mapNonEmpty!22021 (= mapRes!22021 (and tp!42496 e!281143))))

(declare-fun mapRest!22021 () (Array (_ BitVec 32) ValueCell!6417))

(declare-fun mapKey!22021 () (_ BitVec 32))

(declare-fun mapValue!22021 () ValueCell!6417)

(assert (=> mapNonEmpty!22021 (= (arr!14786 _values!1516) (store mapRest!22021 mapKey!22021 mapValue!22021))))

(declare-fun b!478192 () Bool)

(assert (=> b!478192 (= e!281144 (and e!281146 mapRes!22021))))

(declare-fun condMapEmpty!22021 () Bool)

(declare-fun mapDefault!22021 () ValueCell!6417)

(assert (=> b!478192 (= condMapEmpty!22021 (= (arr!14786 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6417)) mapDefault!22021)))))

(assert (= (and start!43146 res!285378) b!478188))

(assert (= (and b!478188 res!285379) b!478189))

(assert (= (and b!478189 res!285377) b!478190))

(assert (= (and b!478192 condMapEmpty!22021) mapIsEmpty!22021))

(assert (= (and b!478192 (not condMapEmpty!22021)) mapNonEmpty!22021))

(get-info :version)

(assert (= (and mapNonEmpty!22021 ((_ is ValueCellFull!6417) mapValue!22021)) b!478187))

(assert (= (and b!478192 ((_ is ValueCellFull!6417) mapDefault!22021)) b!478191))

(assert (= start!43146 b!478192))

(declare-fun m!460517 () Bool)

(assert (=> start!43146 m!460517))

(declare-fun m!460519 () Bool)

(assert (=> start!43146 m!460519))

(declare-fun m!460521 () Bool)

(assert (=> start!43146 m!460521))

(declare-fun m!460523 () Bool)

(assert (=> b!478189 m!460523))

(declare-fun m!460525 () Bool)

(assert (=> mapNonEmpty!22021 m!460525))

(check-sat (not start!43146) (not b!478189) (not mapNonEmpty!22021) tp_is_empty!13557)
(check-sat)
(get-model)

(declare-fun d!76471 () Bool)

(assert (=> d!76471 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43146 d!76471))

(declare-fun d!76473 () Bool)

(assert (=> d!76473 (= (array_inv!10658 _values!1516) (bvsge (size!15144 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43146 d!76473))

(declare-fun d!76475 () Bool)

(assert (=> d!76475 (= (array_inv!10659 _keys!1874) (bvsge (size!15143 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43146 d!76475))

(declare-fun b!478219 () Bool)

(declare-fun e!281169 () Bool)

(declare-fun e!281170 () Bool)

(assert (=> b!478219 (= e!281169 e!281170)))

(declare-fun lt!217681 () (_ BitVec 64))

(assert (=> b!478219 (= lt!217681 (select (arr!14785 _keys!1874) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14028 0))(
  ( (Unit!14029) )
))
(declare-fun lt!217680 () Unit!14028)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30755 (_ BitVec 64) (_ BitVec 32)) Unit!14028)

(assert (=> b!478219 (= lt!217680 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!217681 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!478219 (arrayContainsKey!0 _keys!1874 lt!217681 #b00000000000000000000000000000000)))

(declare-fun lt!217679 () Unit!14028)

(assert (=> b!478219 (= lt!217679 lt!217680)))

(declare-fun res!285394 () Bool)

(declare-datatypes ((SeekEntryResult!3552 0))(
  ( (MissingZero!3552 (index!16387 (_ BitVec 32))) (Found!3552 (index!16388 (_ BitVec 32))) (Intermediate!3552 (undefined!4364 Bool) (index!16389 (_ BitVec 32)) (x!44877 (_ BitVec 32))) (Undefined!3552) (MissingVacant!3552 (index!16390 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30755 (_ BitVec 32)) SeekEntryResult!3552)

(assert (=> b!478219 (= res!285394 (= (seekEntryOrOpen!0 (select (arr!14785 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3552 #b00000000000000000000000000000000)))))

(assert (=> b!478219 (=> (not res!285394) (not e!281170))))

(declare-fun b!478220 () Bool)

(declare-fun e!281171 () Bool)

(assert (=> b!478220 (= e!281171 e!281169)))

(declare-fun c!57589 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!478220 (= c!57589 (validKeyInArray!0 (select (arr!14785 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76477 () Bool)

(declare-fun res!285393 () Bool)

(assert (=> d!76477 (=> res!285393 e!281171)))

(assert (=> d!76477 (= res!285393 (bvsge #b00000000000000000000000000000000 (size!15143 _keys!1874)))))

(assert (=> d!76477 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!281171)))

(declare-fun bm!30829 () Bool)

(declare-fun call!30832 () Bool)

(assert (=> bm!30829 (= call!30832 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!478221 () Bool)

(assert (=> b!478221 (= e!281169 call!30832)))

(declare-fun b!478222 () Bool)

(assert (=> b!478222 (= e!281170 call!30832)))

(assert (= (and d!76477 (not res!285393)) b!478220))

(assert (= (and b!478220 c!57589) b!478219))

(assert (= (and b!478220 (not c!57589)) b!478221))

(assert (= (and b!478219 res!285394) b!478222))

(assert (= (or b!478222 b!478221) bm!30829))

(declare-fun m!460537 () Bool)

(assert (=> b!478219 m!460537))

(declare-fun m!460539 () Bool)

(assert (=> b!478219 m!460539))

(declare-fun m!460541 () Bool)

(assert (=> b!478219 m!460541))

(assert (=> b!478219 m!460537))

(declare-fun m!460543 () Bool)

(assert (=> b!478219 m!460543))

(assert (=> b!478220 m!460537))

(assert (=> b!478220 m!460537))

(declare-fun m!460545 () Bool)

(assert (=> b!478220 m!460545))

(declare-fun m!460547 () Bool)

(assert (=> bm!30829 m!460547))

(assert (=> b!478189 d!76477))

(declare-fun mapIsEmpty!22027 () Bool)

(declare-fun mapRes!22027 () Bool)

(assert (=> mapIsEmpty!22027 mapRes!22027))

(declare-fun mapNonEmpty!22027 () Bool)

(declare-fun tp!42502 () Bool)

(declare-fun e!281177 () Bool)

(assert (=> mapNonEmpty!22027 (= mapRes!22027 (and tp!42502 e!281177))))

(declare-fun mapValue!22027 () ValueCell!6417)

(declare-fun mapRest!22027 () (Array (_ BitVec 32) ValueCell!6417))

(declare-fun mapKey!22027 () (_ BitVec 32))

(assert (=> mapNonEmpty!22027 (= mapRest!22021 (store mapRest!22027 mapKey!22027 mapValue!22027))))

(declare-fun b!478229 () Bool)

(assert (=> b!478229 (= e!281177 tp_is_empty!13557)))

(declare-fun b!478230 () Bool)

(declare-fun e!281176 () Bool)

(assert (=> b!478230 (= e!281176 tp_is_empty!13557)))

(declare-fun condMapEmpty!22027 () Bool)

(declare-fun mapDefault!22027 () ValueCell!6417)

(assert (=> mapNonEmpty!22021 (= condMapEmpty!22027 (= mapRest!22021 ((as const (Array (_ BitVec 32) ValueCell!6417)) mapDefault!22027)))))

(assert (=> mapNonEmpty!22021 (= tp!42496 (and e!281176 mapRes!22027))))

(assert (= (and mapNonEmpty!22021 condMapEmpty!22027) mapIsEmpty!22027))

(assert (= (and mapNonEmpty!22021 (not condMapEmpty!22027)) mapNonEmpty!22027))

(assert (= (and mapNonEmpty!22027 ((_ is ValueCellFull!6417) mapValue!22027)) b!478229))

(assert (= (and mapNonEmpty!22021 ((_ is ValueCellFull!6417) mapDefault!22027)) b!478230))

(declare-fun m!460549 () Bool)

(assert (=> mapNonEmpty!22027 m!460549))

(check-sat (not b!478220) (not mapNonEmpty!22027) (not b!478219) (not bm!30829) tp_is_empty!13557)
(check-sat)
