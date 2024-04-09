; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72534 () Bool)

(assert start!72534)

(declare-fun b_free!13691 () Bool)

(declare-fun b_next!13691 () Bool)

(assert (=> start!72534 (= b_free!13691 (not b_next!13691))))

(declare-fun tp!48172 () Bool)

(declare-fun b_and!22795 () Bool)

(assert (=> start!72534 (= tp!48172 b_and!22795)))

(declare-fun b!841136 () Bool)

(declare-fun res!571896 () Bool)

(declare-fun e!469282 () Bool)

(assert (=> b!841136 (=> (not res!571896) (not e!469282))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841136 (= res!571896 (validMask!0 mask!1196))))

(declare-fun b!841137 () Bool)

(assert (=> b!841137 (= e!469282 (not true))))

(declare-fun e!469279 () Bool)

(assert (=> b!841137 e!469279))

(declare-fun c!91314 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!841137 (= c!91314 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28888 0))(
  ( (Unit!28889) )
))
(declare-fun lt!380847 () Unit!28888)

(declare-datatypes ((V!25789 0))(
  ( (V!25790 (val!7826 Int)) )
))
(declare-fun v!557 () V!25789)

(declare-fun defaultEntry!696 () Int)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47360 0))(
  ( (array!47361 (arr!22707 (Array (_ BitVec 32) (_ BitVec 64))) (size!23148 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47360)

(declare-datatypes ((ValueCell!7339 0))(
  ( (ValueCellFull!7339 (v!10247 V!25789)) (EmptyCell!7339) )
))
(declare-datatypes ((array!47362 0))(
  ( (array!47363 (arr!22708 (Array (_ BitVec 32) ValueCell!7339)) (size!23149 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47362)

(declare-fun minValue!654 () V!25789)

(declare-fun zeroValue!654 () V!25789)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!293 (array!47360 array!47362 (_ BitVec 32) (_ BitVec 32) V!25789 V!25789 (_ BitVec 32) (_ BitVec 64) V!25789 (_ BitVec 32) Int) Unit!28888)

(assert (=> b!841137 (= lt!380847 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!293 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841138 () Bool)

(declare-fun e!469284 () Bool)

(declare-fun tp_is_empty!15557 () Bool)

(assert (=> b!841138 (= e!469284 tp_is_empty!15557)))

(declare-fun b!841139 () Bool)

(declare-fun e!469283 () Bool)

(assert (=> b!841139 (= e!469283 tp_is_empty!15557)))

(declare-fun b!841140 () Bool)

(declare-datatypes ((tuple2!10402 0))(
  ( (tuple2!10403 (_1!5211 (_ BitVec 64)) (_2!5211 V!25789)) )
))
(declare-datatypes ((List!16226 0))(
  ( (Nil!16223) (Cons!16222 (h!17353 tuple2!10402) (t!22605 List!16226)) )
))
(declare-datatypes ((ListLongMap!9185 0))(
  ( (ListLongMap!9186 (toList!4608 List!16226)) )
))
(declare-fun call!37307 () ListLongMap!9185)

(declare-fun call!37306 () ListLongMap!9185)

(assert (=> b!841140 (= e!469279 (= call!37307 call!37306))))

(declare-fun b!841141 () Bool)

(declare-fun res!571900 () Bool)

(assert (=> b!841141 (=> (not res!571900) (not e!469282))))

(assert (=> b!841141 (= res!571900 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23148 _keys!868))))))

(declare-fun mapIsEmpty!24935 () Bool)

(declare-fun mapRes!24935 () Bool)

(assert (=> mapIsEmpty!24935 mapRes!24935))

(declare-fun b!841142 () Bool)

(declare-fun res!571898 () Bool)

(assert (=> b!841142 (=> (not res!571898) (not e!469282))))

(assert (=> b!841142 (= res!571898 (and (= (select (arr!22707 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23148 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841143 () Bool)

(declare-fun +!2014 (ListLongMap!9185 tuple2!10402) ListLongMap!9185)

(assert (=> b!841143 (= e!469279 (= call!37307 (+!2014 call!37306 (tuple2!10403 k!854 v!557))))))

(declare-fun res!571902 () Bool)

(assert (=> start!72534 (=> (not res!571902) (not e!469282))))

(assert (=> start!72534 (= res!571902 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23148 _keys!868))))))

(assert (=> start!72534 e!469282))

(assert (=> start!72534 tp_is_empty!15557))

(assert (=> start!72534 true))

(assert (=> start!72534 tp!48172))

(declare-fun array_inv!18054 (array!47360) Bool)

(assert (=> start!72534 (array_inv!18054 _keys!868)))

(declare-fun e!469280 () Bool)

(declare-fun array_inv!18055 (array!47362) Bool)

(assert (=> start!72534 (and (array_inv!18055 _values!688) e!469280)))

(declare-fun b!841144 () Bool)

(declare-fun res!571899 () Bool)

(assert (=> b!841144 (=> (not res!571899) (not e!469282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47360 (_ BitVec 32)) Bool)

(assert (=> b!841144 (= res!571899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!37303 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2599 (array!47360 array!47362 (_ BitVec 32) (_ BitVec 32) V!25789 V!25789 (_ BitVec 32) Int) ListLongMap!9185)

(assert (=> bm!37303 (= call!37306 (getCurrentListMapNoExtraKeys!2599 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841145 () Bool)

(declare-fun res!571895 () Bool)

(assert (=> b!841145 (=> (not res!571895) (not e!469282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841145 (= res!571895 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!24935 () Bool)

(declare-fun tp!48173 () Bool)

(assert (=> mapNonEmpty!24935 (= mapRes!24935 (and tp!48173 e!469283))))

(declare-fun mapRest!24935 () (Array (_ BitVec 32) ValueCell!7339))

(declare-fun mapKey!24935 () (_ BitVec 32))

(declare-fun mapValue!24935 () ValueCell!7339)

(assert (=> mapNonEmpty!24935 (= (arr!22708 _values!688) (store mapRest!24935 mapKey!24935 mapValue!24935))))

(declare-fun b!841146 () Bool)

(declare-fun res!571901 () Bool)

(assert (=> b!841146 (=> (not res!571901) (not e!469282))))

(declare-datatypes ((List!16227 0))(
  ( (Nil!16224) (Cons!16223 (h!17354 (_ BitVec 64)) (t!22606 List!16227)) )
))
(declare-fun arrayNoDuplicates!0 (array!47360 (_ BitVec 32) List!16227) Bool)

(assert (=> b!841146 (= res!571901 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16224))))

(declare-fun bm!37304 () Bool)

(assert (=> bm!37304 (= call!37307 (getCurrentListMapNoExtraKeys!2599 _keys!868 (array!47363 (store (arr!22708 _values!688) i!612 (ValueCellFull!7339 v!557)) (size!23149 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841147 () Bool)

(declare-fun res!571897 () Bool)

(assert (=> b!841147 (=> (not res!571897) (not e!469282))))

(assert (=> b!841147 (= res!571897 (and (= (size!23149 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23148 _keys!868) (size!23149 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841148 () Bool)

(assert (=> b!841148 (= e!469280 (and e!469284 mapRes!24935))))

(declare-fun condMapEmpty!24935 () Bool)

(declare-fun mapDefault!24935 () ValueCell!7339)

