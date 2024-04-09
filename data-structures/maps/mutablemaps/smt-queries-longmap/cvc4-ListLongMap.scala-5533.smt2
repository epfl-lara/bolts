; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73014 () Bool)

(assert start!73014)

(declare-fun b_free!13901 () Bool)

(declare-fun b_next!13901 () Bool)

(assert (=> start!73014 (= b_free!13901 (not b_next!13901))))

(declare-fun tp!49207 () Bool)

(declare-fun b_and!23005 () Bool)

(assert (=> start!73014 (= tp!49207 b_and!23005)))

(declare-fun b!847732 () Bool)

(declare-fun res!576083 () Bool)

(declare-fun e!473053 () Bool)

(assert (=> b!847732 (=> (not res!576083) (not e!473053))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48266 0))(
  ( (array!48267 (arr!23160 (Array (_ BitVec 32) (_ BitVec 64))) (size!23601 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48266)

(declare-datatypes ((V!26429 0))(
  ( (V!26430 (val!8066 Int)) )
))
(declare-datatypes ((ValueCell!7579 0))(
  ( (ValueCellFull!7579 (v!10487 V!26429)) (EmptyCell!7579) )
))
(declare-datatypes ((array!48268 0))(
  ( (array!48269 (arr!23161 (Array (_ BitVec 32) ValueCell!7579)) (size!23602 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48268)

(assert (=> b!847732 (= res!576083 (and (= (size!23602 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23601 _keys!868) (size!23602 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10554 0))(
  ( (tuple2!10555 (_1!5287 (_ BitVec 64)) (_2!5287 V!26429)) )
))
(declare-datatypes ((List!16464 0))(
  ( (Nil!16461) (Cons!16460 (h!17591 tuple2!10554) (t!22843 List!16464)) )
))
(declare-datatypes ((ListLongMap!9337 0))(
  ( (ListLongMap!9338 (toList!4684 List!16464)) )
))
(declare-fun call!37559 () ListLongMap!9337)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26429)

(declare-fun zeroValue!654 () V!26429)

(declare-fun lt!381808 () array!48268)

(declare-fun bm!37555 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2673 (array!48266 array!48268 (_ BitVec 32) (_ BitVec 32) V!26429 V!26429 (_ BitVec 32) Int) ListLongMap!9337)

(assert (=> bm!37555 (= call!37559 (getCurrentListMapNoExtraKeys!2673 _keys!868 lt!381808 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847733 () Bool)

(declare-fun e!473054 () Bool)

(declare-fun tp_is_empty!16037 () Bool)

(assert (=> b!847733 (= e!473054 tp_is_empty!16037)))

(declare-fun b!847734 () Bool)

(declare-fun res!576081 () Bool)

(assert (=> b!847734 (=> (not res!576081) (not e!473053))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847734 (= res!576081 (validKeyInArray!0 k!854))))

(declare-fun b!847735 () Bool)

(declare-fun res!576085 () Bool)

(assert (=> b!847735 (=> (not res!576085) (not e!473053))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847735 (= res!576085 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23601 _keys!868))))))

(declare-fun bm!37556 () Bool)

(declare-fun call!37558 () ListLongMap!9337)

(assert (=> bm!37556 (= call!37558 (getCurrentListMapNoExtraKeys!2673 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847736 () Bool)

(declare-fun res!576087 () Bool)

(assert (=> b!847736 (=> (not res!576087) (not e!473053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847736 (= res!576087 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25655 () Bool)

(declare-fun mapRes!25655 () Bool)

(declare-fun tp!49208 () Bool)

(assert (=> mapNonEmpty!25655 (= mapRes!25655 (and tp!49208 e!473054))))

(declare-fun mapKey!25655 () (_ BitVec 32))

(declare-fun mapRest!25655 () (Array (_ BitVec 32) ValueCell!7579))

(declare-fun mapValue!25655 () ValueCell!7579)

(assert (=> mapNonEmpty!25655 (= (arr!23161 _values!688) (store mapRest!25655 mapKey!25655 mapValue!25655))))

(declare-fun b!847737 () Bool)

(declare-fun res!576084 () Bool)

(assert (=> b!847737 (=> (not res!576084) (not e!473053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48266 (_ BitVec 32)) Bool)

(assert (=> b!847737 (= res!576084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!576086 () Bool)

(assert (=> start!73014 (=> (not res!576086) (not e!473053))))

(assert (=> start!73014 (= res!576086 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23601 _keys!868))))))

(assert (=> start!73014 e!473053))

(assert (=> start!73014 tp_is_empty!16037))

(assert (=> start!73014 true))

(assert (=> start!73014 tp!49207))

(declare-fun array_inv!18372 (array!48266) Bool)

(assert (=> start!73014 (array_inv!18372 _keys!868)))

(declare-fun e!473055 () Bool)

(declare-fun array_inv!18373 (array!48268) Bool)

(assert (=> start!73014 (and (array_inv!18373 _values!688) e!473055)))

(declare-fun mapIsEmpty!25655 () Bool)

(assert (=> mapIsEmpty!25655 mapRes!25655))

(declare-fun b!847738 () Bool)

(declare-fun e!473051 () Bool)

(assert (=> b!847738 (= e!473051 tp_is_empty!16037)))

(declare-fun b!847739 () Bool)

(assert (=> b!847739 (= e!473055 (and e!473051 mapRes!25655))))

(declare-fun condMapEmpty!25655 () Bool)

(declare-fun mapDefault!25655 () ValueCell!7579)

