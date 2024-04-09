; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74950 () Bool)

(assert start!74950)

(declare-fun b_free!15441 () Bool)

(declare-fun b_next!15441 () Bool)

(assert (=> start!74950 (= b_free!15441 (not b_next!15441))))

(declare-fun tp!54026 () Bool)

(declare-fun b_and!25599 () Bool)

(assert (=> start!74950 (= tp!54026 b_and!25599)))

(declare-fun b!883405 () Bool)

(declare-fun e!491671 () Bool)

(declare-fun tp_is_empty!17685 () Bool)

(assert (=> b!883405 (= e!491671 tp_is_empty!17685)))

(declare-fun b!883406 () Bool)

(declare-fun e!491672 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51480 0))(
  ( (array!51481 (arr!24755 (Array (_ BitVec 32) (_ BitVec 64))) (size!25196 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51480)

(assert (=> b!883406 (= e!491672 (bvslt from!1053 (size!25196 _keys!868)))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!883406 (not (= (select (arr!24755 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!30120 0))(
  ( (Unit!30121) )
))
(declare-fun lt!399871 () Unit!30120)

(declare-fun e!491677 () Unit!30120)

(assert (=> b!883406 (= lt!399871 e!491677)))

(declare-fun c!92985 () Bool)

(assert (=> b!883406 (= c!92985 (= (select (arr!24755 _keys!868) from!1053) k0!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!28627 0))(
  ( (V!28628 (val!8890 Int)) )
))
(declare-datatypes ((tuple2!11812 0))(
  ( (tuple2!11813 (_1!5916 (_ BitVec 64)) (_2!5916 V!28627)) )
))
(declare-datatypes ((List!17677 0))(
  ( (Nil!17674) (Cons!17673 (h!18804 tuple2!11812) (t!24928 List!17677)) )
))
(declare-datatypes ((ListLongMap!10595 0))(
  ( (ListLongMap!10596 (toList!5313 List!17677)) )
))
(declare-fun lt!399879 () ListLongMap!10595)

(declare-fun lt!399876 () ListLongMap!10595)

(declare-datatypes ((ValueCell!8403 0))(
  ( (ValueCellFull!8403 (v!11355 V!28627)) (EmptyCell!8403) )
))
(declare-datatypes ((array!51482 0))(
  ( (array!51483 (arr!24756 (Array (_ BitVec 32) ValueCell!8403)) (size!25197 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51482)

(declare-fun +!2517 (ListLongMap!10595 tuple2!11812) ListLongMap!10595)

(declare-fun get!13056 (ValueCell!8403 V!28627) V!28627)

(declare-fun dynLambda!1271 (Int (_ BitVec 64)) V!28627)

(assert (=> b!883406 (= lt!399876 (+!2517 lt!399879 (tuple2!11813 (select (arr!24755 _keys!868) from!1053) (get!13056 (select (arr!24756 _values!688) from!1053) (dynLambda!1271 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!883407 () Bool)

(declare-fun Unit!30122 () Unit!30120)

(assert (=> b!883407 (= e!491677 Unit!30122)))

(declare-fun lt!399870 () Unit!30120)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51480 (_ BitVec 32) (_ BitVec 32)) Unit!30120)

(assert (=> b!883407 (= lt!399870 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17678 0))(
  ( (Nil!17675) (Cons!17674 (h!18805 (_ BitVec 64)) (t!24929 List!17678)) )
))
(declare-fun arrayNoDuplicates!0 (array!51480 (_ BitVec 32) List!17678) Bool)

(assert (=> b!883407 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17675)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!399877 () Unit!30120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51480 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30120)

(assert (=> b!883407 (= lt!399877 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883407 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399878 () Unit!30120)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51480 (_ BitVec 64) (_ BitVec 32) List!17678) Unit!30120)

(assert (=> b!883407 (= lt!399878 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17675))))

(assert (=> b!883407 false))

(declare-fun b!883408 () Bool)

(declare-fun res!600285 () Bool)

(declare-fun e!491673 () Bool)

(assert (=> b!883408 (=> (not res!600285) (not e!491673))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883408 (= res!600285 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!28164 () Bool)

(declare-fun mapRes!28164 () Bool)

(declare-fun tp!54027 () Bool)

(assert (=> mapNonEmpty!28164 (= mapRes!28164 (and tp!54027 e!491671))))

(declare-fun mapKey!28164 () (_ BitVec 32))

(declare-fun mapValue!28164 () ValueCell!8403)

(declare-fun mapRest!28164 () (Array (_ BitVec 32) ValueCell!8403))

(assert (=> mapNonEmpty!28164 (= (arr!24756 _values!688) (store mapRest!28164 mapKey!28164 mapValue!28164))))

(declare-fun mapIsEmpty!28164 () Bool)

(assert (=> mapIsEmpty!28164 mapRes!28164))

(declare-fun b!883409 () Bool)

(declare-fun e!491674 () Bool)

(assert (=> b!883409 (= e!491674 (not e!491672))))

(declare-fun res!600278 () Bool)

(assert (=> b!883409 (=> res!600278 e!491672)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883409 (= res!600278 (not (validKeyInArray!0 (select (arr!24755 _keys!868) from!1053))))))

(declare-fun lt!399875 () ListLongMap!10595)

(assert (=> b!883409 (= lt!399875 lt!399879)))

(declare-fun v!557 () V!28627)

(declare-fun lt!399873 () ListLongMap!10595)

(assert (=> b!883409 (= lt!399879 (+!2517 lt!399873 (tuple2!11813 k0!854 v!557)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!399872 () array!51482)

(declare-fun minValue!654 () V!28627)

(declare-fun zeroValue!654 () V!28627)

(declare-fun getCurrentListMapNoExtraKeys!3270 (array!51480 array!51482 (_ BitVec 32) (_ BitVec 32) V!28627 V!28627 (_ BitVec 32) Int) ListLongMap!10595)

(assert (=> b!883409 (= lt!399875 (getCurrentListMapNoExtraKeys!3270 _keys!868 lt!399872 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883409 (= lt!399873 (getCurrentListMapNoExtraKeys!3270 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!399874 () Unit!30120)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!741 (array!51480 array!51482 (_ BitVec 32) (_ BitVec 32) V!28627 V!28627 (_ BitVec 32) (_ BitVec 64) V!28627 (_ BitVec 32) Int) Unit!30120)

(assert (=> b!883409 (= lt!399874 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!741 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!600286 () Bool)

(assert (=> start!74950 (=> (not res!600286) (not e!491673))))

(assert (=> start!74950 (= res!600286 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25196 _keys!868))))))

(assert (=> start!74950 e!491673))

(assert (=> start!74950 tp_is_empty!17685))

(assert (=> start!74950 true))

(assert (=> start!74950 tp!54026))

(declare-fun array_inv!19472 (array!51480) Bool)

(assert (=> start!74950 (array_inv!19472 _keys!868)))

(declare-fun e!491675 () Bool)

(declare-fun array_inv!19473 (array!51482) Bool)

(assert (=> start!74950 (and (array_inv!19473 _values!688) e!491675)))

(declare-fun b!883410 () Bool)

(declare-fun res!600277 () Bool)

(assert (=> b!883410 (=> (not res!600277) (not e!491673))))

(assert (=> b!883410 (= res!600277 (validKeyInArray!0 k0!854))))

(declare-fun b!883411 () Bool)

(declare-fun res!600281 () Bool)

(assert (=> b!883411 (=> (not res!600281) (not e!491673))))

(assert (=> b!883411 (= res!600281 (and (= (select (arr!24755 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!883412 () Bool)

(declare-fun res!600284 () Bool)

(assert (=> b!883412 (=> (not res!600284) (not e!491673))))

(assert (=> b!883412 (= res!600284 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17675))))

(declare-fun b!883413 () Bool)

(assert (=> b!883413 (= e!491673 e!491674)))

(declare-fun res!600282 () Bool)

(assert (=> b!883413 (=> (not res!600282) (not e!491674))))

(assert (=> b!883413 (= res!600282 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!883413 (= lt!399876 (getCurrentListMapNoExtraKeys!3270 _keys!868 lt!399872 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!883413 (= lt!399872 (array!51483 (store (arr!24756 _values!688) i!612 (ValueCellFull!8403 v!557)) (size!25197 _values!688)))))

(declare-fun lt!399880 () ListLongMap!10595)

(assert (=> b!883413 (= lt!399880 (getCurrentListMapNoExtraKeys!3270 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883414 () Bool)

(declare-fun res!600283 () Bool)

(assert (=> b!883414 (=> (not res!600283) (not e!491673))))

(assert (=> b!883414 (= res!600283 (and (= (size!25197 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25196 _keys!868) (size!25197 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883415 () Bool)

(declare-fun e!491678 () Bool)

(assert (=> b!883415 (= e!491678 tp_is_empty!17685)))

(declare-fun b!883416 () Bool)

(declare-fun Unit!30123 () Unit!30120)

(assert (=> b!883416 (= e!491677 Unit!30123)))

(declare-fun b!883417 () Bool)

(assert (=> b!883417 (= e!491675 (and e!491678 mapRes!28164))))

(declare-fun condMapEmpty!28164 () Bool)

(declare-fun mapDefault!28164 () ValueCell!8403)

(assert (=> b!883417 (= condMapEmpty!28164 (= (arr!24756 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8403)) mapDefault!28164)))))

(declare-fun b!883418 () Bool)

(declare-fun res!600280 () Bool)

(assert (=> b!883418 (=> (not res!600280) (not e!491673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51480 (_ BitVec 32)) Bool)

(assert (=> b!883418 (= res!600280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!883419 () Bool)

(declare-fun res!600279 () Bool)

(assert (=> b!883419 (=> (not res!600279) (not e!491673))))

(assert (=> b!883419 (= res!600279 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25196 _keys!868))))))

(assert (= (and start!74950 res!600286) b!883408))

(assert (= (and b!883408 res!600285) b!883414))

(assert (= (and b!883414 res!600283) b!883418))

(assert (= (and b!883418 res!600280) b!883412))

(assert (= (and b!883412 res!600284) b!883419))

(assert (= (and b!883419 res!600279) b!883410))

(assert (= (and b!883410 res!600277) b!883411))

(assert (= (and b!883411 res!600281) b!883413))

(assert (= (and b!883413 res!600282) b!883409))

(assert (= (and b!883409 (not res!600278)) b!883406))

(assert (= (and b!883406 c!92985) b!883407))

(assert (= (and b!883406 (not c!92985)) b!883416))

(assert (= (and b!883417 condMapEmpty!28164) mapIsEmpty!28164))

(assert (= (and b!883417 (not condMapEmpty!28164)) mapNonEmpty!28164))

(get-info :version)

(assert (= (and mapNonEmpty!28164 ((_ is ValueCellFull!8403) mapValue!28164)) b!883405))

(assert (= (and b!883417 ((_ is ValueCellFull!8403) mapDefault!28164)) b!883415))

(assert (= start!74950 b!883417))

(declare-fun b_lambda!12749 () Bool)

(assert (=> (not b_lambda!12749) (not b!883406)))

(declare-fun t!24927 () Bool)

(declare-fun tb!5107 () Bool)

(assert (=> (and start!74950 (= defaultEntry!696 defaultEntry!696) t!24927) tb!5107))

(declare-fun result!9841 () Bool)

(assert (=> tb!5107 (= result!9841 tp_is_empty!17685)))

(assert (=> b!883406 t!24927))

(declare-fun b_and!25601 () Bool)

(assert (= b_and!25599 (and (=> t!24927 result!9841) b_and!25601)))

(declare-fun m!823585 () Bool)

(assert (=> mapNonEmpty!28164 m!823585))

(declare-fun m!823587 () Bool)

(assert (=> start!74950 m!823587))

(declare-fun m!823589 () Bool)

(assert (=> start!74950 m!823589))

(declare-fun m!823591 () Bool)

(assert (=> b!883413 m!823591))

(declare-fun m!823593 () Bool)

(assert (=> b!883413 m!823593))

(declare-fun m!823595 () Bool)

(assert (=> b!883413 m!823595))

(declare-fun m!823597 () Bool)

(assert (=> b!883409 m!823597))

(declare-fun m!823599 () Bool)

(assert (=> b!883409 m!823599))

(declare-fun m!823601 () Bool)

(assert (=> b!883409 m!823601))

(assert (=> b!883409 m!823599))

(declare-fun m!823603 () Bool)

(assert (=> b!883409 m!823603))

(declare-fun m!823605 () Bool)

(assert (=> b!883409 m!823605))

(declare-fun m!823607 () Bool)

(assert (=> b!883409 m!823607))

(declare-fun m!823609 () Bool)

(assert (=> b!883406 m!823609))

(declare-fun m!823611 () Bool)

(assert (=> b!883406 m!823611))

(declare-fun m!823613 () Bool)

(assert (=> b!883406 m!823613))

(declare-fun m!823615 () Bool)

(assert (=> b!883406 m!823615))

(assert (=> b!883406 m!823611))

(assert (=> b!883406 m!823599))

(assert (=> b!883406 m!823613))

(declare-fun m!823617 () Bool)

(assert (=> b!883410 m!823617))

(declare-fun m!823619 () Bool)

(assert (=> b!883408 m!823619))

(declare-fun m!823621 () Bool)

(assert (=> b!883407 m!823621))

(declare-fun m!823623 () Bool)

(assert (=> b!883407 m!823623))

(declare-fun m!823625 () Bool)

(assert (=> b!883407 m!823625))

(declare-fun m!823627 () Bool)

(assert (=> b!883407 m!823627))

(declare-fun m!823629 () Bool)

(assert (=> b!883407 m!823629))

(declare-fun m!823631 () Bool)

(assert (=> b!883412 m!823631))

(declare-fun m!823633 () Bool)

(assert (=> b!883418 m!823633))

(declare-fun m!823635 () Bool)

(assert (=> b!883411 m!823635))

(check-sat (not b!883413) tp_is_empty!17685 (not start!74950) (not b!883410) (not b_lambda!12749) (not b!883412) (not b!883409) (not mapNonEmpty!28164) (not b!883406) (not b!883418) (not b!883408) (not b_next!15441) (not b!883407) b_and!25601)
(check-sat b_and!25601 (not b_next!15441))
