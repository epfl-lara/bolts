; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78466 () Bool)

(assert start!78466)

(declare-fun b!914690 () Bool)

(declare-fun e!513248 () Bool)

(declare-fun tp_is_empty!19197 () Bool)

(assert (=> b!914690 (= e!513248 tp_is_empty!19197)))

(declare-fun b!914691 () Bool)

(declare-fun res!616910 () Bool)

(declare-fun e!513249 () Bool)

(assert (=> b!914691 (=> (not res!616910) (not e!513249))))

(declare-datatypes ((array!54400 0))(
  ( (array!54401 (arr!26145 (Array (_ BitVec 32) (_ BitVec 64))) (size!26605 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54400)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54400 (_ BitVec 32)) Bool)

(assert (=> b!914691 (= res!616910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30540 () Bool)

(declare-fun mapRes!30540 () Bool)

(declare-fun tp!58608 () Bool)

(assert (=> mapNonEmpty!30540 (= mapRes!30540 (and tp!58608 e!513248))))

(declare-datatypes ((V!30561 0))(
  ( (V!30562 (val!9649 Int)) )
))
(declare-datatypes ((ValueCell!9117 0))(
  ( (ValueCellFull!9117 (v!12166 V!30561)) (EmptyCell!9117) )
))
(declare-fun mapValue!30540 () ValueCell!9117)

(declare-datatypes ((array!54402 0))(
  ( (array!54403 (arr!26146 (Array (_ BitVec 32) ValueCell!9117)) (size!26606 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54402)

(declare-fun mapRest!30540 () (Array (_ BitVec 32) ValueCell!9117))

(declare-fun mapKey!30540 () (_ BitVec 32))

(assert (=> mapNonEmpty!30540 (= (arr!26146 _values!1231) (store mapRest!30540 mapKey!30540 mapValue!30540))))

(declare-fun res!616911 () Bool)

(assert (=> start!78466 (=> (not res!616911) (not e!513249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78466 (= res!616911 (validMask!0 mask!1881))))

(assert (=> start!78466 e!513249))

(assert (=> start!78466 true))

(declare-fun e!513247 () Bool)

(declare-fun array_inv!20402 (array!54402) Bool)

(assert (=> start!78466 (and (array_inv!20402 _values!1231) e!513247)))

(declare-fun array_inv!20403 (array!54400) Bool)

(assert (=> start!78466 (array_inv!20403 _keys!1487)))

(declare-fun mapIsEmpty!30540 () Bool)

(assert (=> mapIsEmpty!30540 mapRes!30540))

(declare-fun b!914692 () Bool)

(declare-fun e!513246 () Bool)

(assert (=> b!914692 (= e!513247 (and e!513246 mapRes!30540))))

(declare-fun condMapEmpty!30540 () Bool)

(declare-fun mapDefault!30540 () ValueCell!9117)

(assert (=> b!914692 (= condMapEmpty!30540 (= (arr!26146 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9117)) mapDefault!30540)))))

(declare-fun b!914693 () Bool)

(assert (=> b!914693 (= e!513246 tp_is_empty!19197)))

(declare-fun b!914694 () Bool)

(declare-fun res!616909 () Bool)

(assert (=> b!914694 (=> (not res!616909) (not e!513249))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!914694 (= res!616909 (and (= (size!26606 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26605 _keys!1487) (size!26606 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!914695 () Bool)

(assert (=> b!914695 (= e!513249 (bvsgt #b00000000000000000000000000000000 (size!26605 _keys!1487)))))

(assert (= (and start!78466 res!616911) b!914694))

(assert (= (and b!914694 res!616909) b!914691))

(assert (= (and b!914691 res!616910) b!914695))

(assert (= (and b!914692 condMapEmpty!30540) mapIsEmpty!30540))

(assert (= (and b!914692 (not condMapEmpty!30540)) mapNonEmpty!30540))

(get-info :version)

(assert (= (and mapNonEmpty!30540 ((_ is ValueCellFull!9117) mapValue!30540)) b!914690))

(assert (= (and b!914692 ((_ is ValueCellFull!9117) mapDefault!30540)) b!914693))

(assert (= start!78466 b!914692))

(declare-fun m!849387 () Bool)

(assert (=> b!914691 m!849387))

(declare-fun m!849389 () Bool)

(assert (=> mapNonEmpty!30540 m!849389))

(declare-fun m!849391 () Bool)

(assert (=> start!78466 m!849391))

(declare-fun m!849393 () Bool)

(assert (=> start!78466 m!849393))

(declare-fun m!849395 () Bool)

(assert (=> start!78466 m!849395))

(check-sat (not b!914691) (not start!78466) (not mapNonEmpty!30540) tp_is_empty!19197)
(check-sat)
(get-model)

(declare-fun b!914722 () Bool)

(declare-fun e!513274 () Bool)

(declare-fun e!513272 () Bool)

(assert (=> b!914722 (= e!513274 e!513272)))

(declare-fun c!95960 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!914722 (= c!95960 (validKeyInArray!0 (select (arr!26145 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!914723 () Bool)

(declare-fun e!513273 () Bool)

(assert (=> b!914723 (= e!513272 e!513273)))

(declare-fun lt!411537 () (_ BitVec 64))

(assert (=> b!914723 (= lt!411537 (select (arr!26145 _keys!1487) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30931 0))(
  ( (Unit!30932) )
))
(declare-fun lt!411539 () Unit!30931)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54400 (_ BitVec 64) (_ BitVec 32)) Unit!30931)

(assert (=> b!914723 (= lt!411539 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!411537 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!54400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914723 (arrayContainsKey!0 _keys!1487 lt!411537 #b00000000000000000000000000000000)))

(declare-fun lt!411538 () Unit!30931)

(assert (=> b!914723 (= lt!411538 lt!411539)))

(declare-fun res!616925 () Bool)

(declare-datatypes ((SeekEntryResult!8959 0))(
  ( (MissingZero!8959 (index!38206 (_ BitVec 32))) (Found!8959 (index!38207 (_ BitVec 32))) (Intermediate!8959 (undefined!9771 Bool) (index!38208 (_ BitVec 32)) (x!78237 (_ BitVec 32))) (Undefined!8959) (MissingVacant!8959 (index!38209 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54400 (_ BitVec 32)) SeekEntryResult!8959)

(assert (=> b!914723 (= res!616925 (= (seekEntryOrOpen!0 (select (arr!26145 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8959 #b00000000000000000000000000000000)))))

(assert (=> b!914723 (=> (not res!616925) (not e!513273))))

(declare-fun d!112627 () Bool)

(declare-fun res!616926 () Bool)

(assert (=> d!112627 (=> res!616926 e!513274)))

(assert (=> d!112627 (= res!616926 (bvsge #b00000000000000000000000000000000 (size!26605 _keys!1487)))))

(assert (=> d!112627 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!513274)))

(declare-fun b!914724 () Bool)

(declare-fun call!40540 () Bool)

(assert (=> b!914724 (= e!513273 call!40540)))

(declare-fun bm!40537 () Bool)

(assert (=> bm!40537 (= call!40540 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!914725 () Bool)

(assert (=> b!914725 (= e!513272 call!40540)))

(assert (= (and d!112627 (not res!616926)) b!914722))

(assert (= (and b!914722 c!95960) b!914723))

(assert (= (and b!914722 (not c!95960)) b!914725))

(assert (= (and b!914723 res!616925) b!914724))

(assert (= (or b!914724 b!914725) bm!40537))

(declare-fun m!849407 () Bool)

(assert (=> b!914722 m!849407))

(assert (=> b!914722 m!849407))

(declare-fun m!849409 () Bool)

(assert (=> b!914722 m!849409))

(assert (=> b!914723 m!849407))

(declare-fun m!849411 () Bool)

(assert (=> b!914723 m!849411))

(declare-fun m!849413 () Bool)

(assert (=> b!914723 m!849413))

(assert (=> b!914723 m!849407))

(declare-fun m!849415 () Bool)

(assert (=> b!914723 m!849415))

(declare-fun m!849417 () Bool)

(assert (=> bm!40537 m!849417))

(assert (=> b!914691 d!112627))

(declare-fun d!112629 () Bool)

(assert (=> d!112629 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!78466 d!112629))

(declare-fun d!112631 () Bool)

(assert (=> d!112631 (= (array_inv!20402 _values!1231) (bvsge (size!26606 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!78466 d!112631))

(declare-fun d!112633 () Bool)

(assert (=> d!112633 (= (array_inv!20403 _keys!1487) (bvsge (size!26605 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!78466 d!112633))

(declare-fun mapNonEmpty!30546 () Bool)

(declare-fun mapRes!30546 () Bool)

(declare-fun tp!58614 () Bool)

(declare-fun e!513279 () Bool)

(assert (=> mapNonEmpty!30546 (= mapRes!30546 (and tp!58614 e!513279))))

(declare-fun mapRest!30546 () (Array (_ BitVec 32) ValueCell!9117))

(declare-fun mapKey!30546 () (_ BitVec 32))

(declare-fun mapValue!30546 () ValueCell!9117)

(assert (=> mapNonEmpty!30546 (= mapRest!30540 (store mapRest!30546 mapKey!30546 mapValue!30546))))

(declare-fun mapIsEmpty!30546 () Bool)

(assert (=> mapIsEmpty!30546 mapRes!30546))

(declare-fun b!914732 () Bool)

(assert (=> b!914732 (= e!513279 tp_is_empty!19197)))

(declare-fun b!914733 () Bool)

(declare-fun e!513280 () Bool)

(assert (=> b!914733 (= e!513280 tp_is_empty!19197)))

(declare-fun condMapEmpty!30546 () Bool)

(declare-fun mapDefault!30546 () ValueCell!9117)

(assert (=> mapNonEmpty!30540 (= condMapEmpty!30546 (= mapRest!30540 ((as const (Array (_ BitVec 32) ValueCell!9117)) mapDefault!30546)))))

(assert (=> mapNonEmpty!30540 (= tp!58608 (and e!513280 mapRes!30546))))

(assert (= (and mapNonEmpty!30540 condMapEmpty!30546) mapIsEmpty!30546))

(assert (= (and mapNonEmpty!30540 (not condMapEmpty!30546)) mapNonEmpty!30546))

(assert (= (and mapNonEmpty!30546 ((_ is ValueCellFull!9117) mapValue!30546)) b!914732))

(assert (= (and mapNonEmpty!30540 ((_ is ValueCellFull!9117) mapDefault!30546)) b!914733))

(declare-fun m!849419 () Bool)

(assert (=> mapNonEmpty!30546 m!849419))

(check-sat (not b!914722) (not bm!40537) tp_is_empty!19197 (not b!914723) (not mapNonEmpty!30546))
(check-sat)
