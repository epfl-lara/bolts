; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72458 () Bool)

(assert start!72458)

(declare-fun b_free!13615 () Bool)

(declare-fun b_next!13615 () Bool)

(assert (=> start!72458 (= b_free!13615 (not b_next!13615))))

(declare-fun tp!47945 () Bool)

(declare-fun b_and!22719 () Bool)

(assert (=> start!72458 (= tp!47945 b_and!22719)))

(declare-fun b!839654 () Bool)

(declare-fun res!570988 () Bool)

(declare-fun e!468596 () Bool)

(assert (=> b!839654 (=> (not res!570988) (not e!468596))))

(declare-datatypes ((array!47214 0))(
  ( (array!47215 (arr!22634 (Array (_ BitVec 32) (_ BitVec 64))) (size!23075 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47214)

(declare-datatypes ((List!16165 0))(
  ( (Nil!16162) (Cons!16161 (h!17292 (_ BitVec 64)) (t!22544 List!16165)) )
))
(declare-fun arrayNoDuplicates!0 (array!47214 (_ BitVec 32) List!16165) Bool)

(assert (=> b!839654 (= res!570988 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16162))))

(declare-fun b!839656 () Bool)

(declare-fun res!570983 () Bool)

(assert (=> b!839656 (=> (not res!570983) (not e!468596))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839656 (= res!570983 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23075 _keys!868))))))

(declare-fun b!839657 () Bool)

(declare-fun res!570986 () Bool)

(assert (=> b!839657 (=> (not res!570986) (not e!468596))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25689 0))(
  ( (V!25690 (val!7788 Int)) )
))
(declare-datatypes ((ValueCell!7301 0))(
  ( (ValueCellFull!7301 (v!10209 V!25689)) (EmptyCell!7301) )
))
(declare-datatypes ((array!47216 0))(
  ( (array!47217 (arr!22635 (Array (_ BitVec 32) ValueCell!7301)) (size!23076 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47216)

(assert (=> b!839657 (= res!570986 (and (= (size!23076 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23075 _keys!868) (size!23076 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839658 () Bool)

(assert (=> b!839658 (= e!468596 (not true))))

(declare-fun e!468595 () Bool)

(assert (=> b!839658 e!468595))

(declare-fun c!91200 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!839658 (= c!91200 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25689)

(declare-fun defaultEntry!696 () Int)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!25689)

(declare-datatypes ((Unit!28838 0))(
  ( (Unit!28839) )
))
(declare-fun lt!380733 () Unit!28838)

(declare-fun zeroValue!654 () V!25689)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!268 (array!47214 array!47216 (_ BitVec 32) (_ BitVec 32) V!25689 V!25689 (_ BitVec 32) (_ BitVec 64) V!25689 (_ BitVec 32) Int) Unit!28838)

(assert (=> b!839658 (= lt!380733 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!268 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839659 () Bool)

(declare-fun res!570985 () Bool)

(assert (=> b!839659 (=> (not res!570985) (not e!468596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839659 (= res!570985 (validMask!0 mask!1196))))

(declare-datatypes ((tuple2!10334 0))(
  ( (tuple2!10335 (_1!5177 (_ BitVec 64)) (_2!5177 V!25689)) )
))
(declare-datatypes ((List!16166 0))(
  ( (Nil!16163) (Cons!16162 (h!17293 tuple2!10334) (t!22545 List!16166)) )
))
(declare-datatypes ((ListLongMap!9117 0))(
  ( (ListLongMap!9118 (toList!4574 List!16166)) )
))
(declare-fun call!37078 () ListLongMap!9117)

(declare-fun bm!37075 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2566 (array!47214 array!47216 (_ BitVec 32) (_ BitVec 32) V!25689 V!25689 (_ BitVec 32) Int) ListLongMap!9117)

(assert (=> bm!37075 (= call!37078 (getCurrentListMapNoExtraKeys!2566 _keys!868 (array!47217 (store (arr!22635 _values!688) i!612 (ValueCellFull!7301 v!557)) (size!23076 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839660 () Bool)

(declare-fun res!570989 () Bool)

(assert (=> b!839660 (=> (not res!570989) (not e!468596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47214 (_ BitVec 32)) Bool)

(assert (=> b!839660 (= res!570989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839661 () Bool)

(declare-fun res!570990 () Bool)

(assert (=> b!839661 (=> (not res!570990) (not e!468596))))

(assert (=> b!839661 (= res!570990 (and (= (select (arr!22634 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23075 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!24821 () Bool)

(declare-fun mapRes!24821 () Bool)

(assert (=> mapIsEmpty!24821 mapRes!24821))

(declare-fun call!37079 () ListLongMap!9117)

(declare-fun b!839662 () Bool)

(declare-fun +!1990 (ListLongMap!9117 tuple2!10334) ListLongMap!9117)

(assert (=> b!839662 (= e!468595 (= call!37078 (+!1990 call!37079 (tuple2!10335 k!854 v!557))))))

(declare-fun res!570984 () Bool)

(assert (=> start!72458 (=> (not res!570984) (not e!468596))))

(assert (=> start!72458 (= res!570984 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23075 _keys!868))))))

(assert (=> start!72458 e!468596))

(declare-fun tp_is_empty!15481 () Bool)

(assert (=> start!72458 tp_is_empty!15481))

(assert (=> start!72458 true))

(assert (=> start!72458 tp!47945))

(declare-fun array_inv!18000 (array!47214) Bool)

(assert (=> start!72458 (array_inv!18000 _keys!868)))

(declare-fun e!468600 () Bool)

(declare-fun array_inv!18001 (array!47216) Bool)

(assert (=> start!72458 (and (array_inv!18001 _values!688) e!468600)))

(declare-fun b!839655 () Bool)

(declare-fun res!570987 () Bool)

(assert (=> b!839655 (=> (not res!570987) (not e!468596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839655 (= res!570987 (validKeyInArray!0 k!854))))

(declare-fun b!839663 () Bool)

(declare-fun e!468597 () Bool)

(assert (=> b!839663 (= e!468597 tp_is_empty!15481)))

(declare-fun bm!37076 () Bool)

(assert (=> bm!37076 (= call!37079 (getCurrentListMapNoExtraKeys!2566 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839664 () Bool)

(declare-fun e!468599 () Bool)

(assert (=> b!839664 (= e!468600 (and e!468599 mapRes!24821))))

(declare-fun condMapEmpty!24821 () Bool)

(declare-fun mapDefault!24821 () ValueCell!7301)

