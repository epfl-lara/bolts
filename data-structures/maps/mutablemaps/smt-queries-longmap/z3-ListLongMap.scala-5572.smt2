; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73246 () Bool)

(assert start!73246)

(declare-fun b_free!14133 () Bool)

(declare-fun b_next!14133 () Bool)

(assert (=> start!73246 (= b_free!14133 (not b_next!14133))))

(declare-fun tp!49904 () Bool)

(declare-fun b_and!23443 () Bool)

(assert (=> start!73246 (= tp!49904 b_and!23443)))

(declare-datatypes ((V!26739 0))(
  ( (V!26740 (val!8182 Int)) )
))
(declare-datatypes ((tuple2!10766 0))(
  ( (tuple2!10767 (_1!5393 (_ BitVec 64)) (_2!5393 V!26739)) )
))
(declare-datatypes ((List!16644 0))(
  ( (Nil!16641) (Cons!16640 (h!17771 tuple2!10766) (t!23231 List!16644)) )
))
(declare-datatypes ((ListLongMap!9549 0))(
  ( (ListLongMap!9550 (toList!4790 List!16644)) )
))
(declare-fun call!38255 () ListLongMap!9549)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((array!48722 0))(
  ( (array!48723 (arr!23388 (Array (_ BitVec 32) (_ BitVec 64))) (size!23829 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48722)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26739)

(declare-fun zeroValue!654 () V!26739)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7695 0))(
  ( (ValueCellFull!7695 (v!10603 V!26739)) (EmptyCell!7695) )
))
(declare-datatypes ((array!48724 0))(
  ( (array!48725 (arr!23389 (Array (_ BitVec 32) ValueCell!7695)) (size!23830 (_ BitVec 32))) )
))
(declare-fun lt!384580 () array!48724)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!38251 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2773 (array!48722 array!48724 (_ BitVec 32) (_ BitVec 32) V!26739 V!26739 (_ BitVec 32) Int) ListLongMap!9549)

(assert (=> bm!38251 (= call!38255 (getCurrentListMapNoExtraKeys!2773 _keys!868 lt!384580 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853130 () Bool)

(declare-fun res!579535 () Bool)

(declare-fun e!475811 () Bool)

(assert (=> b!853130 (=> (not res!579535) (not e!475811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853130 (= res!579535 (validMask!0 mask!1196))))

(declare-fun b!853131 () Bool)

(declare-fun res!579538 () Bool)

(assert (=> b!853131 (=> (not res!579538) (not e!475811))))

(declare-fun _values!688 () array!48724)

(assert (=> b!853131 (= res!579538 (and (= (size!23830 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23829 _keys!868) (size!23830 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!853132 () Bool)

(declare-fun e!475812 () Bool)

(declare-fun tp_is_empty!16269 () Bool)

(assert (=> b!853132 (= e!475812 tp_is_empty!16269)))

(declare-fun mapNonEmpty!26003 () Bool)

(declare-fun mapRes!26003 () Bool)

(declare-fun tp!49903 () Bool)

(assert (=> mapNonEmpty!26003 (= mapRes!26003 (and tp!49903 e!475812))))

(declare-fun mapKey!26003 () (_ BitVec 32))

(declare-fun mapValue!26003 () ValueCell!7695)

(declare-fun mapRest!26003 () (Array (_ BitVec 32) ValueCell!7695))

(assert (=> mapNonEmpty!26003 (= (arr!23389 _values!688) (store mapRest!26003 mapKey!26003 mapValue!26003))))

(declare-fun b!853133 () Bool)

(declare-fun res!579532 () Bool)

(assert (=> b!853133 (=> (not res!579532) (not e!475811))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!853133 (= res!579532 (and (= (select (arr!23388 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!853134 () Bool)

(declare-fun res!579533 () Bool)

(assert (=> b!853134 (=> (not res!579533) (not e!475811))))

(assert (=> b!853134 (= res!579533 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23829 _keys!868))))))

(declare-fun b!853135 () Bool)

(declare-fun e!475806 () Bool)

(declare-fun call!38254 () ListLongMap!9549)

(assert (=> b!853135 (= e!475806 (= call!38255 call!38254))))

(declare-fun b!853136 () Bool)

(declare-fun e!475810 () Bool)

(assert (=> b!853136 (= e!475810 tp_is_empty!16269)))

(declare-fun res!579537 () Bool)

(assert (=> start!73246 (=> (not res!579537) (not e!475811))))

(assert (=> start!73246 (= res!579537 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23829 _keys!868))))))

(assert (=> start!73246 e!475811))

(assert (=> start!73246 tp_is_empty!16269))

(assert (=> start!73246 true))

(assert (=> start!73246 tp!49904))

(declare-fun array_inv!18528 (array!48722) Bool)

(assert (=> start!73246 (array_inv!18528 _keys!868)))

(declare-fun e!475808 () Bool)

(declare-fun array_inv!18529 (array!48724) Bool)

(assert (=> start!73246 (and (array_inv!18529 _values!688) e!475808)))

(declare-fun b!853137 () Bool)

(declare-fun e!475805 () Bool)

(assert (=> b!853137 (= e!475805 true)))

(declare-fun lt!384587 () tuple2!10766)

(declare-fun lt!384582 () ListLongMap!9549)

(declare-fun lt!384579 () V!26739)

(declare-fun +!2130 (ListLongMap!9549 tuple2!10766) ListLongMap!9549)

(assert (=> b!853137 (= (+!2130 lt!384582 lt!384587) (+!2130 (+!2130 lt!384582 (tuple2!10767 k0!854 lt!384579)) lt!384587))))

(declare-fun lt!384584 () V!26739)

(assert (=> b!853137 (= lt!384587 (tuple2!10767 k0!854 lt!384584))))

(declare-datatypes ((Unit!29106 0))(
  ( (Unit!29107) )
))
(declare-fun lt!384588 () Unit!29106)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!310 (ListLongMap!9549 (_ BitVec 64) V!26739 V!26739) Unit!29106)

(assert (=> b!853137 (= lt!384588 (addSameAsAddTwiceSameKeyDiffValues!310 lt!384582 k0!854 lt!384579 lt!384584))))

(declare-fun lt!384585 () V!26739)

(declare-fun get!12352 (ValueCell!7695 V!26739) V!26739)

(assert (=> b!853137 (= lt!384579 (get!12352 (select (arr!23389 _values!688) from!1053) lt!384585))))

(declare-fun lt!384583 () ListLongMap!9549)

(assert (=> b!853137 (= lt!384583 (+!2130 lt!384582 (tuple2!10767 (select (arr!23388 _keys!868) from!1053) lt!384584)))))

(declare-fun v!557 () V!26739)

(assert (=> b!853137 (= lt!384584 (get!12352 (select (store (arr!23389 _values!688) i!612 (ValueCellFull!7695 v!557)) from!1053) lt!384585))))

(declare-fun dynLambda!1058 (Int (_ BitVec 64)) V!26739)

(assert (=> b!853137 (= lt!384585 (dynLambda!1058 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!853137 (= lt!384582 (getCurrentListMapNoExtraKeys!2773 _keys!868 lt!384580 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26003 () Bool)

(assert (=> mapIsEmpty!26003 mapRes!26003))

(declare-fun b!853138 () Bool)

(declare-fun e!475807 () Bool)

(assert (=> b!853138 (= e!475811 e!475807)))

(declare-fun res!579540 () Bool)

(assert (=> b!853138 (=> (not res!579540) (not e!475807))))

(assert (=> b!853138 (= res!579540 (= from!1053 i!612))))

(assert (=> b!853138 (= lt!384583 (getCurrentListMapNoExtraKeys!2773 _keys!868 lt!384580 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853138 (= lt!384580 (array!48725 (store (arr!23389 _values!688) i!612 (ValueCellFull!7695 v!557)) (size!23830 _values!688)))))

(declare-fun lt!384581 () ListLongMap!9549)

(assert (=> b!853138 (= lt!384581 (getCurrentListMapNoExtraKeys!2773 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853139 () Bool)

(declare-fun res!579531 () Bool)

(assert (=> b!853139 (=> (not res!579531) (not e!475811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48722 (_ BitVec 32)) Bool)

(assert (=> b!853139 (= res!579531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853140 () Bool)

(declare-fun res!579536 () Bool)

(assert (=> b!853140 (=> (not res!579536) (not e!475811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853140 (= res!579536 (validKeyInArray!0 k0!854))))

(declare-fun b!853141 () Bool)

(assert (=> b!853141 (= e!475807 (not e!475805))))

(declare-fun res!579534 () Bool)

(assert (=> b!853141 (=> res!579534 e!475805)))

(assert (=> b!853141 (= res!579534 (not (validKeyInArray!0 (select (arr!23388 _keys!868) from!1053))))))

(assert (=> b!853141 e!475806))

(declare-fun c!91788 () Bool)

(assert (=> b!853141 (= c!91788 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384586 () Unit!29106)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!393 (array!48722 array!48724 (_ BitVec 32) (_ BitVec 32) V!26739 V!26739 (_ BitVec 32) (_ BitVec 64) V!26739 (_ BitVec 32) Int) Unit!29106)

(assert (=> b!853141 (= lt!384586 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!393 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38252 () Bool)

(assert (=> bm!38252 (= call!38254 (getCurrentListMapNoExtraKeys!2773 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853142 () Bool)

(declare-fun res!579539 () Bool)

(assert (=> b!853142 (=> (not res!579539) (not e!475811))))

(declare-datatypes ((List!16645 0))(
  ( (Nil!16642) (Cons!16641 (h!17772 (_ BitVec 64)) (t!23232 List!16645)) )
))
(declare-fun arrayNoDuplicates!0 (array!48722 (_ BitVec 32) List!16645) Bool)

(assert (=> b!853142 (= res!579539 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16642))))

(declare-fun b!853143 () Bool)

(assert (=> b!853143 (= e!475808 (and e!475810 mapRes!26003))))

(declare-fun condMapEmpty!26003 () Bool)

(declare-fun mapDefault!26003 () ValueCell!7695)

(assert (=> b!853143 (= condMapEmpty!26003 (= (arr!23389 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7695)) mapDefault!26003)))))

(declare-fun b!853144 () Bool)

(assert (=> b!853144 (= e!475806 (= call!38255 (+!2130 call!38254 (tuple2!10767 k0!854 v!557))))))

(assert (= (and start!73246 res!579537) b!853130))

(assert (= (and b!853130 res!579535) b!853131))

(assert (= (and b!853131 res!579538) b!853139))

(assert (= (and b!853139 res!579531) b!853142))

(assert (= (and b!853142 res!579539) b!853134))

(assert (= (and b!853134 res!579533) b!853140))

(assert (= (and b!853140 res!579536) b!853133))

(assert (= (and b!853133 res!579532) b!853138))

(assert (= (and b!853138 res!579540) b!853141))

(assert (= (and b!853141 c!91788) b!853144))

(assert (= (and b!853141 (not c!91788)) b!853135))

(assert (= (or b!853144 b!853135) bm!38251))

(assert (= (or b!853144 b!853135) bm!38252))

(assert (= (and b!853141 (not res!579534)) b!853137))

(assert (= (and b!853143 condMapEmpty!26003) mapIsEmpty!26003))

(assert (= (and b!853143 (not condMapEmpty!26003)) mapNonEmpty!26003))

(get-info :version)

(assert (= (and mapNonEmpty!26003 ((_ is ValueCellFull!7695) mapValue!26003)) b!853132))

(assert (= (and b!853143 ((_ is ValueCellFull!7695) mapDefault!26003)) b!853136))

(assert (= start!73246 b!853143))

(declare-fun b_lambda!11695 () Bool)

(assert (=> (not b_lambda!11695) (not b!853137)))

(declare-fun t!23230 () Bool)

(declare-fun tb!4443 () Bool)

(assert (=> (and start!73246 (= defaultEntry!696 defaultEntry!696) t!23230) tb!4443))

(declare-fun result!8489 () Bool)

(assert (=> tb!4443 (= result!8489 tp_is_empty!16269)))

(assert (=> b!853137 t!23230))

(declare-fun b_and!23445 () Bool)

(assert (= b_and!23443 (and (=> t!23230 result!8489) b_and!23445)))

(declare-fun m!794425 () Bool)

(assert (=> b!853138 m!794425))

(declare-fun m!794427 () Bool)

(assert (=> b!853138 m!794427))

(declare-fun m!794429 () Bool)

(assert (=> b!853138 m!794429))

(declare-fun m!794431 () Bool)

(assert (=> start!73246 m!794431))

(declare-fun m!794433 () Bool)

(assert (=> start!73246 m!794433))

(declare-fun m!794435 () Bool)

(assert (=> b!853137 m!794435))

(declare-fun m!794437 () Bool)

(assert (=> b!853137 m!794437))

(declare-fun m!794439 () Bool)

(assert (=> b!853137 m!794439))

(declare-fun m!794441 () Bool)

(assert (=> b!853137 m!794441))

(declare-fun m!794443 () Bool)

(assert (=> b!853137 m!794443))

(declare-fun m!794445 () Bool)

(assert (=> b!853137 m!794445))

(declare-fun m!794447 () Bool)

(assert (=> b!853137 m!794447))

(declare-fun m!794449 () Bool)

(assert (=> b!853137 m!794449))

(assert (=> b!853137 m!794427))

(assert (=> b!853137 m!794441))

(declare-fun m!794451 () Bool)

(assert (=> b!853137 m!794451))

(declare-fun m!794453 () Bool)

(assert (=> b!853137 m!794453))

(declare-fun m!794455 () Bool)

(assert (=> b!853137 m!794455))

(assert (=> b!853137 m!794437))

(assert (=> b!853137 m!794449))

(declare-fun m!794457 () Bool)

(assert (=> b!853137 m!794457))

(declare-fun m!794459 () Bool)

(assert (=> b!853130 m!794459))

(declare-fun m!794461 () Bool)

(assert (=> b!853139 m!794461))

(declare-fun m!794463 () Bool)

(assert (=> b!853133 m!794463))

(declare-fun m!794465 () Bool)

(assert (=> b!853142 m!794465))

(declare-fun m!794467 () Bool)

(assert (=> b!853144 m!794467))

(assert (=> b!853141 m!794453))

(assert (=> b!853141 m!794453))

(declare-fun m!794469 () Bool)

(assert (=> b!853141 m!794469))

(declare-fun m!794471 () Bool)

(assert (=> b!853141 m!794471))

(declare-fun m!794473 () Bool)

(assert (=> mapNonEmpty!26003 m!794473))

(declare-fun m!794475 () Bool)

(assert (=> bm!38252 m!794475))

(assert (=> bm!38251 m!794443))

(declare-fun m!794477 () Bool)

(assert (=> b!853140 m!794477))

(check-sat (not bm!38251) (not b!853142) b_and!23445 (not mapNonEmpty!26003) (not b_lambda!11695) (not b!853140) tp_is_empty!16269 (not b!853139) (not start!73246) (not bm!38252) (not b!853137) (not b_next!14133) (not b!853130) (not b!853144) (not b!853141) (not b!853138))
(check-sat b_and!23445 (not b_next!14133))
