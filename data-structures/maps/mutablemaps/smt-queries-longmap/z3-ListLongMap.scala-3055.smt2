; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43160 () Bool)

(assert start!43160)

(declare-fun mapNonEmpty!22033 () Bool)

(declare-fun mapRes!22033 () Bool)

(declare-fun tp!42508 () Bool)

(declare-fun e!281205 () Bool)

(assert (=> mapNonEmpty!22033 (= mapRes!22033 (and tp!42508 e!281205))))

(declare-fun mapKey!22033 () (_ BitVec 32))

(declare-datatypes ((V!19155 0))(
  ( (V!19156 (val!6829 Int)) )
))
(declare-datatypes ((ValueCell!6420 0))(
  ( (ValueCellFull!6420 (v!9113 V!19155)) (EmptyCell!6420) )
))
(declare-fun mapRest!22033 () (Array (_ BitVec 32) ValueCell!6420))

(declare-fun mapValue!22033 () ValueCell!6420)

(declare-datatypes ((array!30769 0))(
  ( (array!30770 (arr!14791 (Array (_ BitVec 32) ValueCell!6420)) (size!15149 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30769)

(assert (=> mapNonEmpty!22033 (= (arr!14791 _values!1516) (store mapRest!22033 mapKey!22033 mapValue!22033))))

(declare-fun b!478266 () Bool)

(declare-fun res!285415 () Bool)

(declare-fun e!281204 () Bool)

(assert (=> b!478266 (=> (not res!285415) (not e!281204))))

(declare-datatypes ((array!30771 0))(
  ( (array!30772 (arr!14792 (Array (_ BitVec 32) (_ BitVec 64))) (size!15150 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30771)

(assert (=> b!478266 (= res!285415 (and (bvsle #b00000000000000000000000000000000 (size!15150 _keys!1874)) (bvslt (size!15150 _keys!1874) #b01111111111111111111111111111111)))))

(declare-fun b!478267 () Bool)

(declare-fun e!281207 () Bool)

(declare-fun e!281203 () Bool)

(assert (=> b!478267 (= e!281207 (and e!281203 mapRes!22033))))

(declare-fun condMapEmpty!22033 () Bool)

(declare-fun mapDefault!22033 () ValueCell!6420)

(assert (=> b!478267 (= condMapEmpty!22033 (= (arr!14791 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6420)) mapDefault!22033)))))

(declare-fun mapIsEmpty!22033 () Bool)

(assert (=> mapIsEmpty!22033 mapRes!22033))

(declare-fun b!478269 () Bool)

(declare-fun tp_is_empty!13563 () Bool)

(assert (=> b!478269 (= e!281203 tp_is_empty!13563)))

(declare-fun b!478270 () Bool)

(declare-datatypes ((List!9091 0))(
  ( (Nil!9088) (Cons!9087 (h!9943 (_ BitVec 64)) (t!15305 List!9091)) )
))
(declare-fun noDuplicate!205 (List!9091) Bool)

(assert (=> b!478270 (= e!281204 (not (noDuplicate!205 Nil!9088)))))

(declare-fun b!478271 () Bool)

(declare-fun res!285418 () Bool)

(assert (=> b!478271 (=> (not res!285418) (not e!281204))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30771 (_ BitVec 32)) Bool)

(assert (=> b!478271 (= res!285418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478272 () Bool)

(declare-fun res!285417 () Bool)

(assert (=> b!478272 (=> (not res!285417) (not e!281204))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478272 (= res!285417 (and (= (size!15149 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15150 _keys!1874) (size!15149 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478268 () Bool)

(assert (=> b!478268 (= e!281205 tp_is_empty!13563)))

(declare-fun res!285416 () Bool)

(assert (=> start!43160 (=> (not res!285416) (not e!281204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43160 (= res!285416 (validMask!0 mask!2352))))

(assert (=> start!43160 e!281204))

(assert (=> start!43160 true))

(declare-fun array_inv!10662 (array!30769) Bool)

(assert (=> start!43160 (and (array_inv!10662 _values!1516) e!281207)))

(declare-fun array_inv!10663 (array!30771) Bool)

(assert (=> start!43160 (array_inv!10663 _keys!1874)))

(assert (= (and start!43160 res!285416) b!478272))

(assert (= (and b!478272 res!285417) b!478271))

(assert (= (and b!478271 res!285418) b!478266))

(assert (= (and b!478266 res!285415) b!478270))

(assert (= (and b!478267 condMapEmpty!22033) mapIsEmpty!22033))

(assert (= (and b!478267 (not condMapEmpty!22033)) mapNonEmpty!22033))

(get-info :version)

(assert (= (and mapNonEmpty!22033 ((_ is ValueCellFull!6420) mapValue!22033)) b!478268))

(assert (= (and b!478267 ((_ is ValueCellFull!6420) mapDefault!22033)) b!478269))

(assert (= start!43160 b!478267))

(declare-fun m!460563 () Bool)

(assert (=> mapNonEmpty!22033 m!460563))

(declare-fun m!460565 () Bool)

(assert (=> b!478270 m!460565))

(declare-fun m!460567 () Bool)

(assert (=> b!478271 m!460567))

(declare-fun m!460569 () Bool)

(assert (=> start!43160 m!460569))

(declare-fun m!460571 () Bool)

(assert (=> start!43160 m!460571))

(declare-fun m!460573 () Bool)

(assert (=> start!43160 m!460573))

(check-sat tp_is_empty!13563 (not mapNonEmpty!22033) (not b!478271) (not b!478270) (not start!43160))
(check-sat)
(get-model)

(declare-fun b!478302 () Bool)

(declare-fun e!281229 () Bool)

(declare-fun e!281230 () Bool)

(assert (=> b!478302 (= e!281229 e!281230)))

(declare-fun lt!217690 () (_ BitVec 64))

(assert (=> b!478302 (= lt!217690 (select (arr!14792 _keys!1874) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14030 0))(
  ( (Unit!14031) )
))
(declare-fun lt!217688 () Unit!14030)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30771 (_ BitVec 64) (_ BitVec 32)) Unit!14030)

(assert (=> b!478302 (= lt!217688 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!217690 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!478302 (arrayContainsKey!0 _keys!1874 lt!217690 #b00000000000000000000000000000000)))

(declare-fun lt!217689 () Unit!14030)

(assert (=> b!478302 (= lt!217689 lt!217688)))

(declare-fun res!285436 () Bool)

(declare-datatypes ((SeekEntryResult!3553 0))(
  ( (MissingZero!3553 (index!16391 (_ BitVec 32))) (Found!3553 (index!16392 (_ BitVec 32))) (Intermediate!3553 (undefined!4365 Bool) (index!16393 (_ BitVec 32)) (x!44888 (_ BitVec 32))) (Undefined!3553) (MissingVacant!3553 (index!16394 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30771 (_ BitVec 32)) SeekEntryResult!3553)

(assert (=> b!478302 (= res!285436 (= (seekEntryOrOpen!0 (select (arr!14792 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3553 #b00000000000000000000000000000000)))))

(assert (=> b!478302 (=> (not res!285436) (not e!281230))))

(declare-fun b!478303 () Bool)

(declare-fun e!281231 () Bool)

(assert (=> b!478303 (= e!281231 e!281229)))

(declare-fun c!57592 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!478303 (= c!57592 (validKeyInArray!0 (select (arr!14792 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!478304 () Bool)

(declare-fun call!30835 () Bool)

(assert (=> b!478304 (= e!281230 call!30835)))

(declare-fun d!76481 () Bool)

(declare-fun res!285435 () Bool)

(assert (=> d!76481 (=> res!285435 e!281231)))

(assert (=> d!76481 (= res!285435 (bvsge #b00000000000000000000000000000000 (size!15150 _keys!1874)))))

(assert (=> d!76481 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!281231)))

(declare-fun bm!30832 () Bool)

(assert (=> bm!30832 (= call!30835 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!478305 () Bool)

(assert (=> b!478305 (= e!281229 call!30835)))

(assert (= (and d!76481 (not res!285435)) b!478303))

(assert (= (and b!478303 c!57592) b!478302))

(assert (= (and b!478303 (not c!57592)) b!478305))

(assert (= (and b!478302 res!285436) b!478304))

(assert (= (or b!478304 b!478305) bm!30832))

(declare-fun m!460587 () Bool)

(assert (=> b!478302 m!460587))

(declare-fun m!460589 () Bool)

(assert (=> b!478302 m!460589))

(declare-fun m!460591 () Bool)

(assert (=> b!478302 m!460591))

(assert (=> b!478302 m!460587))

(declare-fun m!460593 () Bool)

(assert (=> b!478302 m!460593))

(assert (=> b!478303 m!460587))

(assert (=> b!478303 m!460587))

(declare-fun m!460595 () Bool)

(assert (=> b!478303 m!460595))

(declare-fun m!460597 () Bool)

(assert (=> bm!30832 m!460597))

(assert (=> b!478271 d!76481))

(declare-fun d!76483 () Bool)

(declare-fun res!285441 () Bool)

(declare-fun e!281236 () Bool)

(assert (=> d!76483 (=> res!285441 e!281236)))

(assert (=> d!76483 (= res!285441 ((_ is Nil!9088) Nil!9088))))

(assert (=> d!76483 (= (noDuplicate!205 Nil!9088) e!281236)))

(declare-fun b!478310 () Bool)

(declare-fun e!281237 () Bool)

(assert (=> b!478310 (= e!281236 e!281237)))

(declare-fun res!285442 () Bool)

(assert (=> b!478310 (=> (not res!285442) (not e!281237))))

(declare-fun contains!2583 (List!9091 (_ BitVec 64)) Bool)

(assert (=> b!478310 (= res!285442 (not (contains!2583 (t!15305 Nil!9088) (h!9943 Nil!9088))))))

(declare-fun b!478311 () Bool)

(assert (=> b!478311 (= e!281237 (noDuplicate!205 (t!15305 Nil!9088)))))

(assert (= (and d!76483 (not res!285441)) b!478310))

(assert (= (and b!478310 res!285442) b!478311))

(declare-fun m!460599 () Bool)

(assert (=> b!478310 m!460599))

(declare-fun m!460601 () Bool)

(assert (=> b!478311 m!460601))

(assert (=> b!478270 d!76483))

(declare-fun d!76485 () Bool)

(assert (=> d!76485 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43160 d!76485))

(declare-fun d!76487 () Bool)

(assert (=> d!76487 (= (array_inv!10662 _values!1516) (bvsge (size!15149 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43160 d!76487))

(declare-fun d!76489 () Bool)

(assert (=> d!76489 (= (array_inv!10663 _keys!1874) (bvsge (size!15150 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43160 d!76489))

(declare-fun mapIsEmpty!22039 () Bool)

(declare-fun mapRes!22039 () Bool)

(assert (=> mapIsEmpty!22039 mapRes!22039))

(declare-fun mapNonEmpty!22039 () Bool)

(declare-fun tp!42514 () Bool)

(declare-fun e!281242 () Bool)

(assert (=> mapNonEmpty!22039 (= mapRes!22039 (and tp!42514 e!281242))))

(declare-fun mapValue!22039 () ValueCell!6420)

(declare-fun mapRest!22039 () (Array (_ BitVec 32) ValueCell!6420))

(declare-fun mapKey!22039 () (_ BitVec 32))

(assert (=> mapNonEmpty!22039 (= mapRest!22033 (store mapRest!22039 mapKey!22039 mapValue!22039))))

(declare-fun b!478319 () Bool)

(declare-fun e!281243 () Bool)

(assert (=> b!478319 (= e!281243 tp_is_empty!13563)))

(declare-fun b!478318 () Bool)

(assert (=> b!478318 (= e!281242 tp_is_empty!13563)))

(declare-fun condMapEmpty!22039 () Bool)

(declare-fun mapDefault!22039 () ValueCell!6420)

(assert (=> mapNonEmpty!22033 (= condMapEmpty!22039 (= mapRest!22033 ((as const (Array (_ BitVec 32) ValueCell!6420)) mapDefault!22039)))))

(assert (=> mapNonEmpty!22033 (= tp!42508 (and e!281243 mapRes!22039))))

(assert (= (and mapNonEmpty!22033 condMapEmpty!22039) mapIsEmpty!22039))

(assert (= (and mapNonEmpty!22033 (not condMapEmpty!22039)) mapNonEmpty!22039))

(assert (= (and mapNonEmpty!22039 ((_ is ValueCellFull!6420) mapValue!22039)) b!478318))

(assert (= (and mapNonEmpty!22033 ((_ is ValueCellFull!6420) mapDefault!22039)) b!478319))

(declare-fun m!460603 () Bool)

(assert (=> mapNonEmpty!22039 m!460603))

(check-sat (not b!478303) (not b!478310) (not bm!30832) (not mapNonEmpty!22039) (not b!478311) (not b!478302) tp_is_empty!13563)
(check-sat)
