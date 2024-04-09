; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73054 () Bool)

(assert start!73054)

(declare-fun b_free!13941 () Bool)

(declare-fun b_next!13941 () Bool)

(assert (=> start!73054 (= b_free!13941 (not b_next!13941))))

(declare-fun tp!49328 () Bool)

(declare-fun b_and!23059 () Bool)

(assert (=> start!73054 (= tp!49328 b_and!23059)))

(declare-fun mapNonEmpty!25715 () Bool)

(declare-fun mapRes!25715 () Bool)

(declare-fun tp!49327 () Bool)

(declare-fun e!473502 () Bool)

(assert (=> mapNonEmpty!25715 (= mapRes!25715 (and tp!49327 e!473502))))

(declare-fun mapKey!25715 () (_ BitVec 32))

(declare-datatypes ((V!26483 0))(
  ( (V!26484 (val!8086 Int)) )
))
(declare-datatypes ((ValueCell!7599 0))(
  ( (ValueCellFull!7599 (v!10507 V!26483)) (EmptyCell!7599) )
))
(declare-fun mapValue!25715 () ValueCell!7599)

(declare-fun mapRest!25715 () (Array (_ BitVec 32) ValueCell!7599))

(declare-datatypes ((array!48346 0))(
  ( (array!48347 (arr!23200 (Array (_ BitVec 32) ValueCell!7599)) (size!23641 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48346)

(assert (=> mapNonEmpty!25715 (= (arr!23200 _values!688) (store mapRest!25715 mapKey!25715 mapValue!25715))))

(declare-fun b!848618 () Bool)

(declare-fun e!473507 () Bool)

(declare-datatypes ((tuple2!10590 0))(
  ( (tuple2!10591 (_1!5305 (_ BitVec 64)) (_2!5305 V!26483)) )
))
(declare-datatypes ((List!16495 0))(
  ( (Nil!16492) (Cons!16491 (h!17622 tuple2!10590) (t!22890 List!16495)) )
))
(declare-datatypes ((ListLongMap!9373 0))(
  ( (ListLongMap!9374 (toList!4702 List!16495)) )
))
(declare-fun call!37678 () ListLongMap!9373)

(declare-fun call!37679 () ListLongMap!9373)

(assert (=> b!848618 (= e!473507 (= call!37678 call!37679))))

(declare-fun b!848619 () Bool)

(declare-fun res!576660 () Bool)

(declare-fun e!473504 () Bool)

(assert (=> b!848619 (=> (not res!576660) (not e!473504))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48348 0))(
  ( (array!48349 (arr!23201 (Array (_ BitVec 32) (_ BitVec 64))) (size!23642 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48348)

(assert (=> b!848619 (= res!576660 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23642 _keys!868))))))

(declare-fun b!848620 () Bool)

(declare-fun tp_is_empty!16077 () Bool)

(assert (=> b!848620 (= e!473502 tp_is_empty!16077)))

(declare-fun b!848621 () Bool)

(declare-fun res!576651 () Bool)

(assert (=> b!848621 (=> (not res!576651) (not e!473504))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!848621 (= res!576651 (and (= (select (arr!23201 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!25715 () Bool)

(assert (=> mapIsEmpty!25715 mapRes!25715))

(declare-fun b!848622 () Bool)

(declare-fun res!576652 () Bool)

(assert (=> b!848622 (=> (not res!576652) (not e!473504))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!848622 (= res!576652 (and (= (size!23641 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23642 _keys!868) (size!23641 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!848624 () Bool)

(declare-fun res!576658 () Bool)

(assert (=> b!848624 (=> (not res!576658) (not e!473504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48348 (_ BitVec 32)) Bool)

(assert (=> b!848624 (= res!576658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!848625 () Bool)

(declare-fun e!473501 () Bool)

(assert (=> b!848625 (= e!473501 true)))

(declare-fun lt!382048 () ListLongMap!9373)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!382050 () array!48346)

(declare-fun minValue!654 () V!26483)

(declare-fun zeroValue!654 () V!26483)

(declare-fun +!2050 (ListLongMap!9373 tuple2!10590) ListLongMap!9373)

(declare-fun getCurrentListMapNoExtraKeys!2690 (array!48348 array!48346 (_ BitVec 32) (_ BitVec 32) V!26483 V!26483 (_ BitVec 32) Int) ListLongMap!9373)

(declare-fun get!12217 (ValueCell!7599 V!26483) V!26483)

(declare-fun dynLambda!987 (Int (_ BitVec 64)) V!26483)

(assert (=> b!848625 (= lt!382048 (+!2050 (getCurrentListMapNoExtraKeys!2690 _keys!868 lt!382050 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10591 (select (arr!23201 _keys!868) from!1053) (get!12217 (select (arr!23200 lt!382050) from!1053) (dynLambda!987 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!848626 () Bool)

(declare-fun e!473508 () Bool)

(assert (=> b!848626 (= e!473508 tp_is_empty!16077)))

(declare-fun bm!37675 () Bool)

(assert (=> bm!37675 (= call!37679 (getCurrentListMapNoExtraKeys!2690 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848627 () Bool)

(declare-fun res!576653 () Bool)

(assert (=> b!848627 (=> (not res!576653) (not e!473504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848627 (= res!576653 (validKeyInArray!0 k0!854))))

(declare-fun bm!37676 () Bool)

(assert (=> bm!37676 (= call!37678 (getCurrentListMapNoExtraKeys!2690 _keys!868 lt!382050 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848628 () Bool)

(declare-fun e!473505 () Bool)

(assert (=> b!848628 (= e!473505 (not e!473501))))

(declare-fun res!576656 () Bool)

(assert (=> b!848628 (=> res!576656 e!473501)))

(assert (=> b!848628 (= res!576656 (not (validKeyInArray!0 (select (arr!23201 _keys!868) from!1053))))))

(assert (=> b!848628 e!473507))

(declare-fun c!91500 () Bool)

(assert (=> b!848628 (= c!91500 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26483)

(declare-datatypes ((Unit!28958 0))(
  ( (Unit!28959) )
))
(declare-fun lt!382049 () Unit!28958)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!328 (array!48348 array!48346 (_ BitVec 32) (_ BitVec 32) V!26483 V!26483 (_ BitVec 32) (_ BitVec 64) V!26483 (_ BitVec 32) Int) Unit!28958)

(assert (=> b!848628 (= lt!382049 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!328 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848629 () Bool)

(declare-fun res!576655 () Bool)

(assert (=> b!848629 (=> (not res!576655) (not e!473504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848629 (= res!576655 (validMask!0 mask!1196))))

(declare-fun b!848630 () Bool)

(declare-fun e!473506 () Bool)

(assert (=> b!848630 (= e!473506 (and e!473508 mapRes!25715))))

(declare-fun condMapEmpty!25715 () Bool)

(declare-fun mapDefault!25715 () ValueCell!7599)

(assert (=> b!848630 (= condMapEmpty!25715 (= (arr!23200 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7599)) mapDefault!25715)))))

(declare-fun b!848631 () Bool)

(assert (=> b!848631 (= e!473507 (= call!37678 (+!2050 call!37679 (tuple2!10591 k0!854 v!557))))))

(declare-fun b!848632 () Bool)

(assert (=> b!848632 (= e!473504 e!473505)))

(declare-fun res!576654 () Bool)

(assert (=> b!848632 (=> (not res!576654) (not e!473505))))

(assert (=> b!848632 (= res!576654 (= from!1053 i!612))))

(assert (=> b!848632 (= lt!382048 (getCurrentListMapNoExtraKeys!2690 _keys!868 lt!382050 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!848632 (= lt!382050 (array!48347 (store (arr!23200 _values!688) i!612 (ValueCellFull!7599 v!557)) (size!23641 _values!688)))))

(declare-fun lt!382047 () ListLongMap!9373)

(assert (=> b!848632 (= lt!382047 (getCurrentListMapNoExtraKeys!2690 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848623 () Bool)

(declare-fun res!576659 () Bool)

(assert (=> b!848623 (=> (not res!576659) (not e!473504))))

(declare-datatypes ((List!16496 0))(
  ( (Nil!16493) (Cons!16492 (h!17623 (_ BitVec 64)) (t!22891 List!16496)) )
))
(declare-fun arrayNoDuplicates!0 (array!48348 (_ BitVec 32) List!16496) Bool)

(assert (=> b!848623 (= res!576659 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16493))))

(declare-fun res!576657 () Bool)

(assert (=> start!73054 (=> (not res!576657) (not e!473504))))

(assert (=> start!73054 (= res!576657 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23642 _keys!868))))))

(assert (=> start!73054 e!473504))

(assert (=> start!73054 tp_is_empty!16077))

(assert (=> start!73054 true))

(assert (=> start!73054 tp!49328))

(declare-fun array_inv!18400 (array!48348) Bool)

(assert (=> start!73054 (array_inv!18400 _keys!868)))

(declare-fun array_inv!18401 (array!48346) Bool)

(assert (=> start!73054 (and (array_inv!18401 _values!688) e!473506)))

(assert (= (and start!73054 res!576657) b!848629))

(assert (= (and b!848629 res!576655) b!848622))

(assert (= (and b!848622 res!576652) b!848624))

(assert (= (and b!848624 res!576658) b!848623))

(assert (= (and b!848623 res!576659) b!848619))

(assert (= (and b!848619 res!576660) b!848627))

(assert (= (and b!848627 res!576653) b!848621))

(assert (= (and b!848621 res!576651) b!848632))

(assert (= (and b!848632 res!576654) b!848628))

(assert (= (and b!848628 c!91500) b!848631))

(assert (= (and b!848628 (not c!91500)) b!848618))

(assert (= (or b!848631 b!848618) bm!37676))

(assert (= (or b!848631 b!848618) bm!37675))

(assert (= (and b!848628 (not res!576656)) b!848625))

(assert (= (and b!848630 condMapEmpty!25715) mapIsEmpty!25715))

(assert (= (and b!848630 (not condMapEmpty!25715)) mapNonEmpty!25715))

(get-info :version)

(assert (= (and mapNonEmpty!25715 ((_ is ValueCellFull!7599) mapValue!25715)) b!848620))

(assert (= (and b!848630 ((_ is ValueCellFull!7599) mapDefault!25715)) b!848626))

(assert (= start!73054 b!848630))

(declare-fun b_lambda!11503 () Bool)

(assert (=> (not b_lambda!11503) (not b!848625)))

(declare-fun t!22889 () Bool)

(declare-fun tb!4251 () Bool)

(assert (=> (and start!73054 (= defaultEntry!696 defaultEntry!696) t!22889) tb!4251))

(declare-fun result!8105 () Bool)

(assert (=> tb!4251 (= result!8105 tp_is_empty!16077)))

(assert (=> b!848625 t!22889))

(declare-fun b_and!23061 () Bool)

(assert (= b_and!23059 (and (=> t!22889 result!8105) b_and!23061)))

(declare-fun m!789479 () Bool)

(assert (=> start!73054 m!789479))

(declare-fun m!789481 () Bool)

(assert (=> start!73054 m!789481))

(declare-fun m!789483 () Bool)

(assert (=> b!848632 m!789483))

(declare-fun m!789485 () Bool)

(assert (=> b!848632 m!789485))

(declare-fun m!789487 () Bool)

(assert (=> b!848632 m!789487))

(declare-fun m!789489 () Bool)

(assert (=> b!848625 m!789489))

(declare-fun m!789491 () Bool)

(assert (=> b!848625 m!789491))

(declare-fun m!789493 () Bool)

(assert (=> b!848625 m!789493))

(declare-fun m!789495 () Bool)

(assert (=> b!848625 m!789495))

(declare-fun m!789497 () Bool)

(assert (=> b!848625 m!789497))

(assert (=> b!848625 m!789489))

(assert (=> b!848625 m!789495))

(declare-fun m!789499 () Bool)

(assert (=> b!848625 m!789499))

(assert (=> b!848625 m!789491))

(declare-fun m!789501 () Bool)

(assert (=> b!848621 m!789501))

(declare-fun m!789503 () Bool)

(assert (=> b!848623 m!789503))

(assert (=> bm!37676 m!789495))

(declare-fun m!789505 () Bool)

(assert (=> mapNonEmpty!25715 m!789505))

(declare-fun m!789507 () Bool)

(assert (=> b!848627 m!789507))

(declare-fun m!789509 () Bool)

(assert (=> b!848624 m!789509))

(assert (=> b!848628 m!789499))

(assert (=> b!848628 m!789499))

(declare-fun m!789511 () Bool)

(assert (=> b!848628 m!789511))

(declare-fun m!789513 () Bool)

(assert (=> b!848628 m!789513))

(declare-fun m!789515 () Bool)

(assert (=> b!848629 m!789515))

(declare-fun m!789517 () Bool)

(assert (=> b!848631 m!789517))

(declare-fun m!789519 () Bool)

(assert (=> bm!37675 m!789519))

(check-sat (not b!848624) (not b!848631) (not b!848629) (not b!848628) (not start!73054) b_and!23061 (not mapNonEmpty!25715) (not b!848627) (not b!848625) (not bm!37676) (not b!848623) (not bm!37675) tp_is_empty!16077 (not b!848632) (not b_lambda!11503) (not b_next!13941))
(check-sat b_and!23061 (not b_next!13941))
