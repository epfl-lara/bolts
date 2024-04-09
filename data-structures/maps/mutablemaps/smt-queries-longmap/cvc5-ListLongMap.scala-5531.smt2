; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72998 () Bool)

(assert start!72998)

(declare-fun b_free!13885 () Bool)

(declare-fun b_next!13885 () Bool)

(assert (=> start!72998 (= b_free!13885 (not b_next!13885))))

(declare-fun tp!49159 () Bool)

(declare-fun b_and!22989 () Bool)

(assert (=> start!72998 (= tp!49159 b_and!22989)))

(declare-fun res!575870 () Bool)

(declare-fun e!472885 () Bool)

(assert (=> start!72998 (=> (not res!575870) (not e!472885))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48236 0))(
  ( (array!48237 (arr!23145 (Array (_ BitVec 32) (_ BitVec 64))) (size!23586 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48236)

(assert (=> start!72998 (= res!575870 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23586 _keys!868))))))

(assert (=> start!72998 e!472885))

(declare-fun tp_is_empty!16021 () Bool)

(assert (=> start!72998 tp_is_empty!16021))

(assert (=> start!72998 true))

(assert (=> start!72998 tp!49159))

(declare-fun array_inv!18364 (array!48236) Bool)

(assert (=> start!72998 (array_inv!18364 _keys!868)))

(declare-datatypes ((V!26409 0))(
  ( (V!26410 (val!8058 Int)) )
))
(declare-datatypes ((ValueCell!7571 0))(
  ( (ValueCellFull!7571 (v!10479 V!26409)) (EmptyCell!7571) )
))
(declare-datatypes ((array!48238 0))(
  ( (array!48239 (arr!23146 (Array (_ BitVec 32) ValueCell!7571)) (size!23587 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48238)

(declare-fun e!472881 () Bool)

(declare-fun array_inv!18365 (array!48238) Bool)

(assert (=> start!72998 (and (array_inv!18365 _values!688) e!472881)))

(declare-fun b!847396 () Bool)

(declare-fun e!472882 () Bool)

(assert (=> b!847396 (= e!472882 (not true))))

(declare-fun e!472883 () Bool)

(assert (=> b!847396 e!472883))

(declare-fun c!91416 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847396 (= c!91416 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28926 0))(
  ( (Unit!28927) )
))
(declare-fun lt!381714 () Unit!28926)

(declare-fun v!557 () V!26409)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!26409)

(declare-fun zeroValue!654 () V!26409)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!312 (array!48236 array!48238 (_ BitVec 32) (_ BitVec 32) V!26409 V!26409 (_ BitVec 32) (_ BitVec 64) V!26409 (_ BitVec 32) Int) Unit!28926)

(assert (=> b!847396 (= lt!381714 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!312 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847397 () Bool)

(declare-fun e!472886 () Bool)

(assert (=> b!847397 (= e!472886 tp_is_empty!16021)))

(declare-fun b!847398 () Bool)

(declare-fun res!575863 () Bool)

(assert (=> b!847398 (=> (not res!575863) (not e!472885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48236 (_ BitVec 32)) Bool)

(assert (=> b!847398 (= res!575863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847399 () Bool)

(declare-datatypes ((tuple2!10540 0))(
  ( (tuple2!10541 (_1!5280 (_ BitVec 64)) (_2!5280 V!26409)) )
))
(declare-datatypes ((List!16453 0))(
  ( (Nil!16450) (Cons!16449 (h!17580 tuple2!10540) (t!22832 List!16453)) )
))
(declare-datatypes ((ListLongMap!9323 0))(
  ( (ListLongMap!9324 (toList!4677 List!16453)) )
))
(declare-fun call!37510 () ListLongMap!9323)

(declare-fun call!37511 () ListLongMap!9323)

(assert (=> b!847399 (= e!472883 (= call!37510 call!37511))))

(declare-fun b!847400 () Bool)

(declare-fun e!472887 () Bool)

(assert (=> b!847400 (= e!472887 tp_is_empty!16021)))

(declare-fun bm!37507 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2666 (array!48236 array!48238 (_ BitVec 32) (_ BitVec 32) V!26409 V!26409 (_ BitVec 32) Int) ListLongMap!9323)

(assert (=> bm!37507 (= call!37511 (getCurrentListMapNoExtraKeys!2666 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847401 () Bool)

(declare-fun +!2035 (ListLongMap!9323 tuple2!10540) ListLongMap!9323)

(assert (=> b!847401 (= e!472883 (= call!37510 (+!2035 call!37511 (tuple2!10541 k!854 v!557))))))

(declare-fun b!847402 () Bool)

(declare-fun res!575867 () Bool)

(assert (=> b!847402 (=> (not res!575867) (not e!472885))))

(declare-datatypes ((List!16454 0))(
  ( (Nil!16451) (Cons!16450 (h!17581 (_ BitVec 64)) (t!22833 List!16454)) )
))
(declare-fun arrayNoDuplicates!0 (array!48236 (_ BitVec 32) List!16454) Bool)

(assert (=> b!847402 (= res!575867 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16451))))

(declare-fun bm!37508 () Bool)

(declare-fun lt!381711 () array!48238)

(assert (=> bm!37508 (= call!37510 (getCurrentListMapNoExtraKeys!2666 _keys!868 lt!381711 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847403 () Bool)

(declare-fun mapRes!25631 () Bool)

(assert (=> b!847403 (= e!472881 (and e!472887 mapRes!25631))))

(declare-fun condMapEmpty!25631 () Bool)

(declare-fun mapDefault!25631 () ValueCell!7571)

