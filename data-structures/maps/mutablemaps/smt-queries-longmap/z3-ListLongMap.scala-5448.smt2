; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72502 () Bool)

(assert start!72502)

(declare-fun b_free!13659 () Bool)

(declare-fun b_next!13659 () Bool)

(assert (=> start!72502 (= b_free!13659 (not b_next!13659))))

(declare-fun tp!48077 () Bool)

(declare-fun b_and!22763 () Bool)

(assert (=> start!72502 (= tp!48077 b_and!22763)))

(declare-fun b!840512 () Bool)

(declare-fun res!571512 () Bool)

(declare-fun e!468994 () Bool)

(assert (=> b!840512 (=> (not res!571512) (not e!468994))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840512 (= res!571512 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!24887 () Bool)

(declare-fun mapRes!24887 () Bool)

(assert (=> mapIsEmpty!24887 mapRes!24887))

(declare-fun b!840513 () Bool)

(declare-fun e!468991 () Bool)

(declare-datatypes ((V!25747 0))(
  ( (V!25748 (val!7810 Int)) )
))
(declare-datatypes ((tuple2!10372 0))(
  ( (tuple2!10373 (_1!5196 (_ BitVec 64)) (_2!5196 V!25747)) )
))
(declare-datatypes ((List!16199 0))(
  ( (Nil!16196) (Cons!16195 (h!17326 tuple2!10372) (t!22578 List!16199)) )
))
(declare-datatypes ((ListLongMap!9155 0))(
  ( (ListLongMap!9156 (toList!4593 List!16199)) )
))
(declare-fun call!37211 () ListLongMap!9155)

(declare-fun call!37210 () ListLongMap!9155)

(assert (=> b!840513 (= e!468991 (= call!37211 call!37210))))

(declare-fun b!840515 () Bool)

(declare-fun res!571516 () Bool)

(assert (=> b!840515 (=> (not res!571516) (not e!468994))))

(declare-datatypes ((array!47298 0))(
  ( (array!47299 (arr!22676 (Array (_ BitVec 32) (_ BitVec 64))) (size!23117 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47298)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47298 (_ BitVec 32)) Bool)

(assert (=> b!840515 (= res!571516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840516 () Bool)

(declare-fun res!571513 () Bool)

(assert (=> b!840516 (=> (not res!571513) (not e!468994))))

(declare-datatypes ((List!16200 0))(
  ( (Nil!16197) (Cons!16196 (h!17327 (_ BitVec 64)) (t!22579 List!16200)) )
))
(declare-fun arrayNoDuplicates!0 (array!47298 (_ BitVec 32) List!16200) Bool)

(assert (=> b!840516 (= res!571513 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16197))))

(declare-fun b!840517 () Bool)

(declare-fun res!571517 () Bool)

(assert (=> b!840517 (=> (not res!571517) (not e!468994))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7323 0))(
  ( (ValueCellFull!7323 (v!10231 V!25747)) (EmptyCell!7323) )
))
(declare-datatypes ((array!47300 0))(
  ( (array!47301 (arr!22677 (Array (_ BitVec 32) ValueCell!7323)) (size!23118 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47300)

(assert (=> b!840517 (= res!571517 (and (= (size!23118 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23117 _keys!868) (size!23118 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun v!557 () V!25747)

(declare-fun b!840518 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2003 (ListLongMap!9155 tuple2!10372) ListLongMap!9155)

(assert (=> b!840518 (= e!468991 (= call!37211 (+!2003 call!37210 (tuple2!10373 k0!854 v!557))))))

(declare-fun b!840519 () Bool)

(declare-fun e!468992 () Bool)

(declare-fun tp_is_empty!15525 () Bool)

(assert (=> b!840519 (= e!468992 tp_is_empty!15525)))

(declare-fun b!840520 () Bool)

(declare-fun e!468993 () Bool)

(declare-fun e!468995 () Bool)

(assert (=> b!840520 (= e!468993 (and e!468995 mapRes!24887))))

(declare-fun condMapEmpty!24887 () Bool)

(declare-fun mapDefault!24887 () ValueCell!7323)

(assert (=> b!840520 (= condMapEmpty!24887 (= (arr!22677 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7323)) mapDefault!24887)))))

(declare-fun res!571511 () Bool)

(assert (=> start!72502 (=> (not res!571511) (not e!468994))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72502 (= res!571511 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23117 _keys!868))))))

(assert (=> start!72502 e!468994))

(assert (=> start!72502 tp_is_empty!15525))

(assert (=> start!72502 true))

(assert (=> start!72502 tp!48077))

(declare-fun array_inv!18028 (array!47298) Bool)

(assert (=> start!72502 (array_inv!18028 _keys!868)))

(declare-fun array_inv!18029 (array!47300) Bool)

(assert (=> start!72502 (and (array_inv!18029 _values!688) e!468993)))

(declare-fun b!840514 () Bool)

(declare-fun res!571515 () Bool)

(assert (=> b!840514 (=> (not res!571515) (not e!468994))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840514 (= res!571515 (and (= (select (arr!22676 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23117 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840521 () Bool)

(assert (=> b!840521 (= e!468995 tp_is_empty!15525)))

(declare-fun mapNonEmpty!24887 () Bool)

(declare-fun tp!48076 () Bool)

(assert (=> mapNonEmpty!24887 (= mapRes!24887 (and tp!48076 e!468992))))

(declare-fun mapValue!24887 () ValueCell!7323)

(declare-fun mapKey!24887 () (_ BitVec 32))

(declare-fun mapRest!24887 () (Array (_ BitVec 32) ValueCell!7323))

(assert (=> mapNonEmpty!24887 (= (arr!22677 _values!688) (store mapRest!24887 mapKey!24887 mapValue!24887))))

(declare-fun b!840522 () Bool)

(assert (=> b!840522 (= e!468994 (not true))))

(assert (=> b!840522 e!468991))

(declare-fun c!91266 () Bool)

(assert (=> b!840522 (= c!91266 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!28866 0))(
  ( (Unit!28867) )
))
(declare-fun lt!380799 () Unit!28866)

(declare-fun minValue!654 () V!25747)

(declare-fun zeroValue!654 () V!25747)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!282 (array!47298 array!47300 (_ BitVec 32) (_ BitVec 32) V!25747 V!25747 (_ BitVec 32) (_ BitVec 64) V!25747 (_ BitVec 32) Int) Unit!28866)

(assert (=> b!840522 (= lt!380799 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!282 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37207 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2585 (array!47298 array!47300 (_ BitVec 32) (_ BitVec 32) V!25747 V!25747 (_ BitVec 32) Int) ListLongMap!9155)

(assert (=> bm!37207 (= call!37211 (getCurrentListMapNoExtraKeys!2585 _keys!868 (array!47301 (store (arr!22677 _values!688) i!612 (ValueCellFull!7323 v!557)) (size!23118 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840523 () Bool)

(declare-fun res!571514 () Bool)

(assert (=> b!840523 (=> (not res!571514) (not e!468994))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840523 (= res!571514 (validKeyInArray!0 k0!854))))

(declare-fun b!840524 () Bool)

(declare-fun res!571518 () Bool)

(assert (=> b!840524 (=> (not res!571518) (not e!468994))))

(assert (=> b!840524 (= res!571518 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23117 _keys!868))))))

(declare-fun bm!37208 () Bool)

(assert (=> bm!37208 (= call!37210 (getCurrentListMapNoExtraKeys!2585 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72502 res!571511) b!840512))

(assert (= (and b!840512 res!571512) b!840517))

(assert (= (and b!840517 res!571517) b!840515))

(assert (= (and b!840515 res!571516) b!840516))

(assert (= (and b!840516 res!571513) b!840524))

(assert (= (and b!840524 res!571518) b!840523))

(assert (= (and b!840523 res!571514) b!840514))

(assert (= (and b!840514 res!571515) b!840522))

(assert (= (and b!840522 c!91266) b!840518))

(assert (= (and b!840522 (not c!91266)) b!840513))

(assert (= (or b!840518 b!840513) bm!37207))

(assert (= (or b!840518 b!840513) bm!37208))

(assert (= (and b!840520 condMapEmpty!24887) mapIsEmpty!24887))

(assert (= (and b!840520 (not condMapEmpty!24887)) mapNonEmpty!24887))

(get-info :version)

(assert (= (and mapNonEmpty!24887 ((_ is ValueCellFull!7323) mapValue!24887)) b!840519))

(assert (= (and b!840520 ((_ is ValueCellFull!7323) mapDefault!24887)) b!840521))

(assert (= start!72502 b!840520))

(declare-fun m!784321 () Bool)

(assert (=> b!840523 m!784321))

(declare-fun m!784323 () Bool)

(assert (=> bm!37207 m!784323))

(declare-fun m!784325 () Bool)

(assert (=> bm!37207 m!784325))

(declare-fun m!784327 () Bool)

(assert (=> mapNonEmpty!24887 m!784327))

(declare-fun m!784329 () Bool)

(assert (=> b!840515 m!784329))

(declare-fun m!784331 () Bool)

(assert (=> bm!37208 m!784331))

(declare-fun m!784333 () Bool)

(assert (=> b!840518 m!784333))

(declare-fun m!784335 () Bool)

(assert (=> b!840522 m!784335))

(declare-fun m!784337 () Bool)

(assert (=> b!840512 m!784337))

(declare-fun m!784339 () Bool)

(assert (=> start!72502 m!784339))

(declare-fun m!784341 () Bool)

(assert (=> start!72502 m!784341))

(declare-fun m!784343 () Bool)

(assert (=> b!840516 m!784343))

(declare-fun m!784345 () Bool)

(assert (=> b!840514 m!784345))

(check-sat tp_is_empty!15525 (not b!840515) (not bm!37208) (not start!72502) (not b!840522) (not b!840523) (not mapNonEmpty!24887) b_and!22763 (not b!840512) (not b_next!13659) (not b!840516) (not b!840518) (not bm!37207))
(check-sat b_and!22763 (not b_next!13659))
