; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73038 () Bool)

(assert start!73038)

(declare-fun b_free!13925 () Bool)

(declare-fun b_next!13925 () Bool)

(assert (=> start!73038 (= b_free!13925 (not b_next!13925))))

(declare-fun tp!49280 () Bool)

(declare-fun b_and!23029 () Bool)

(assert (=> start!73038 (= tp!49280 b_and!23029)))

(declare-fun mapIsEmpty!25691 () Bool)

(declare-fun mapRes!25691 () Bool)

(assert (=> mapIsEmpty!25691 mapRes!25691))

(declare-fun b!848244 () Bool)

(declare-fun res!576419 () Bool)

(declare-fun e!473313 () Bool)

(assert (=> b!848244 (=> (not res!576419) (not e!473313))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48314 0))(
  ( (array!48315 (arr!23184 (Array (_ BitVec 32) (_ BitVec 64))) (size!23625 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48314)

(declare-datatypes ((V!26461 0))(
  ( (V!26462 (val!8078 Int)) )
))
(declare-datatypes ((ValueCell!7591 0))(
  ( (ValueCellFull!7591 (v!10499 V!26461)) (EmptyCell!7591) )
))
(declare-datatypes ((array!48316 0))(
  ( (array!48317 (arr!23185 (Array (_ BitVec 32) ValueCell!7591)) (size!23626 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48316)

(assert (=> b!848244 (= res!576419 (and (= (size!23626 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23625 _keys!868) (size!23626 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!576416 () Bool)

(assert (=> start!73038 (=> (not res!576416) (not e!473313))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73038 (= res!576416 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23625 _keys!868))))))

(assert (=> start!73038 e!473313))

(declare-fun tp_is_empty!16061 () Bool)

(assert (=> start!73038 tp_is_empty!16061))

(assert (=> start!73038 true))

(assert (=> start!73038 tp!49280))

(declare-fun array_inv!18386 (array!48314) Bool)

(assert (=> start!73038 (array_inv!18386 _keys!868)))

(declare-fun e!473312 () Bool)

(declare-fun array_inv!18387 (array!48316) Bool)

(assert (=> start!73038 (and (array_inv!18387 _values!688) e!473312)))

(declare-fun b!848245 () Bool)

(declare-fun e!473309 () Bool)

(assert (=> b!848245 (= e!473313 e!473309)))

(declare-fun res!576412 () Bool)

(assert (=> b!848245 (=> (not res!576412) (not e!473309))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848245 (= res!576412 (= from!1053 i!612))))

(declare-fun lt!381953 () array!48316)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10576 0))(
  ( (tuple2!10577 (_1!5298 (_ BitVec 64)) (_2!5298 V!26461)) )
))
(declare-datatypes ((List!16483 0))(
  ( (Nil!16480) (Cons!16479 (h!17610 tuple2!10576) (t!22862 List!16483)) )
))
(declare-datatypes ((ListLongMap!9359 0))(
  ( (ListLongMap!9360 (toList!4695 List!16483)) )
))
(declare-fun lt!381952 () ListLongMap!9359)

(declare-fun minValue!654 () V!26461)

(declare-fun zeroValue!654 () V!26461)

(declare-fun getCurrentListMapNoExtraKeys!2684 (array!48314 array!48316 (_ BitVec 32) (_ BitVec 32) V!26461 V!26461 (_ BitVec 32) Int) ListLongMap!9359)

(assert (=> b!848245 (= lt!381952 (getCurrentListMapNoExtraKeys!2684 _keys!868 lt!381953 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26461)

(assert (=> b!848245 (= lt!381953 (array!48317 (store (arr!23185 _values!688) i!612 (ValueCellFull!7591 v!557)) (size!23626 _values!688)))))

(declare-fun lt!381954 () ListLongMap!9359)

(assert (=> b!848245 (= lt!381954 (getCurrentListMapNoExtraKeys!2684 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848246 () Bool)

(declare-fun res!576414 () Bool)

(assert (=> b!848246 (=> (not res!576414) (not e!473313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848246 (= res!576414 (validMask!0 mask!1196))))

(declare-fun b!848247 () Bool)

(declare-fun res!576420 () Bool)

(assert (=> b!848247 (=> (not res!576420) (not e!473313))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!848247 (= res!576420 (and (= (select (arr!23184 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun call!37631 () ListLongMap!9359)

(declare-fun bm!37627 () Bool)

(assert (=> bm!37627 (= call!37631 (getCurrentListMapNoExtraKeys!2684 _keys!868 lt!381953 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848248 () Bool)

(declare-fun res!576411 () Bool)

(assert (=> b!848248 (=> (not res!576411) (not e!473313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848248 (= res!576411 (validKeyInArray!0 k!854))))

(declare-fun b!848249 () Bool)

(declare-fun res!576415 () Bool)

(assert (=> b!848249 (=> (not res!576415) (not e!473313))))

(declare-datatypes ((List!16484 0))(
  ( (Nil!16481) (Cons!16480 (h!17611 (_ BitVec 64)) (t!22863 List!16484)) )
))
(declare-fun arrayNoDuplicates!0 (array!48314 (_ BitVec 32) List!16484) Bool)

(assert (=> b!848249 (= res!576415 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16481))))

(declare-fun b!848250 () Bool)

(declare-fun res!576418 () Bool)

(assert (=> b!848250 (=> (not res!576418) (not e!473313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48314 (_ BitVec 32)) Bool)

(assert (=> b!848250 (= res!576418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25691 () Bool)

(declare-fun tp!49279 () Bool)

(declare-fun e!473315 () Bool)

(assert (=> mapNonEmpty!25691 (= mapRes!25691 (and tp!49279 e!473315))))

(declare-fun mapRest!25691 () (Array (_ BitVec 32) ValueCell!7591))

(declare-fun mapKey!25691 () (_ BitVec 32))

(declare-fun mapValue!25691 () ValueCell!7591)

(assert (=> mapNonEmpty!25691 (= (arr!23185 _values!688) (store mapRest!25691 mapKey!25691 mapValue!25691))))

(declare-fun b!848251 () Bool)

(declare-fun e!473310 () Bool)

(declare-fun call!37630 () ListLongMap!9359)

(assert (=> b!848251 (= e!473310 (= call!37631 call!37630))))

(declare-fun b!848252 () Bool)

(declare-fun e!473311 () Bool)

(assert (=> b!848252 (= e!473312 (and e!473311 mapRes!25691))))

(declare-fun condMapEmpty!25691 () Bool)

(declare-fun mapDefault!25691 () ValueCell!7591)

