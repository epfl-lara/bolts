; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73292 () Bool)

(assert start!73292)

(declare-fun b_free!14179 () Bool)

(declare-fun b_next!14179 () Bool)

(assert (=> start!73292 (= b_free!14179 (not b_next!14179))))

(declare-fun tp!50041 () Bool)

(declare-fun b_and!23535 () Bool)

(assert (=> start!73292 (= tp!50041 b_and!23535)))

(declare-datatypes ((V!26801 0))(
  ( (V!26802 (val!8205 Int)) )
))
(declare-datatypes ((ValueCell!7718 0))(
  ( (ValueCellFull!7718 (v!10626 V!26801)) (EmptyCell!7718) )
))
(declare-datatypes ((array!48810 0))(
  ( (array!48811 (arr!23432 (Array (_ BitVec 32) ValueCell!7718)) (size!23873 (_ BitVec 32))) )
))
(declare-fun lt!385274 () array!48810)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48812 0))(
  ( (array!48813 (arr!23433 (Array (_ BitVec 32) (_ BitVec 64))) (size!23874 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48812)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!10802 0))(
  ( (tuple2!10803 (_1!5411 (_ BitVec 64)) (_2!5411 V!26801)) )
))
(declare-datatypes ((List!16675 0))(
  ( (Nil!16672) (Cons!16671 (h!17802 tuple2!10802) (t!23308 List!16675)) )
))
(declare-datatypes ((ListLongMap!9585 0))(
  ( (ListLongMap!9586 (toList!4808 List!16675)) )
))
(declare-fun call!38392 () ListLongMap!9585)

(declare-fun minValue!654 () V!26801)

(declare-fun zeroValue!654 () V!26801)

(declare-fun bm!38389 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2790 (array!48812 array!48810 (_ BitVec 32) (_ BitVec 32) V!26801 V!26801 (_ BitVec 32) Int) ListLongMap!9585)

(assert (=> bm!38389 (= call!38392 (getCurrentListMapNoExtraKeys!2790 _keys!868 lt!385274 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun e!476362 () Bool)

(declare-fun v!557 () V!26801)

(declare-fun b!854211 () Bool)

(declare-fun call!38393 () ListLongMap!9585)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2143 (ListLongMap!9585 tuple2!10802) ListLongMap!9585)

(assert (=> b!854211 (= e!476362 (= call!38392 (+!2143 call!38393 (tuple2!10803 k!854 v!557))))))

(declare-fun b!854212 () Bool)

(declare-fun res!580225 () Bool)

(declare-fun e!476360 () Bool)

(assert (=> b!854212 (=> (not res!580225) (not e!476360))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854212 (= res!580225 (and (= (select (arr!23433 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!854213 () Bool)

(declare-fun e!476363 () Bool)

(declare-fun tp_is_empty!16315 () Bool)

(assert (=> b!854213 (= e!476363 tp_is_empty!16315)))

(declare-fun mapIsEmpty!26072 () Bool)

(declare-fun mapRes!26072 () Bool)

(assert (=> mapIsEmpty!26072 mapRes!26072))

(declare-fun res!580223 () Bool)

(assert (=> start!73292 (=> (not res!580223) (not e!476360))))

(assert (=> start!73292 (= res!580223 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23874 _keys!868))))))

(assert (=> start!73292 e!476360))

(assert (=> start!73292 tp_is_empty!16315))

(assert (=> start!73292 true))

(assert (=> start!73292 tp!50041))

(declare-fun array_inv!18552 (array!48812) Bool)

(assert (=> start!73292 (array_inv!18552 _keys!868)))

(declare-fun _values!688 () array!48810)

(declare-fun e!476361 () Bool)

(declare-fun array_inv!18553 (array!48810) Bool)

(assert (=> start!73292 (and (array_inv!18553 _values!688) e!476361)))

(declare-fun b!854214 () Bool)

(declare-fun res!580222 () Bool)

(assert (=> b!854214 (=> (not res!580222) (not e!476360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854214 (= res!580222 (validKeyInArray!0 k!854))))

(declare-fun b!854215 () Bool)

(declare-fun res!580227 () Bool)

(assert (=> b!854215 (=> (not res!580227) (not e!476360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854215 (= res!580227 (validMask!0 mask!1196))))

(declare-fun b!854216 () Bool)

(declare-fun e!476358 () Bool)

(assert (=> b!854216 (= e!476358 tp_is_empty!16315)))

(declare-fun mapNonEmpty!26072 () Bool)

(declare-fun tp!50042 () Bool)

(assert (=> mapNonEmpty!26072 (= mapRes!26072 (and tp!50042 e!476358))))

(declare-fun mapValue!26072 () ValueCell!7718)

(declare-fun mapRest!26072 () (Array (_ BitVec 32) ValueCell!7718))

(declare-fun mapKey!26072 () (_ BitVec 32))

(assert (=> mapNonEmpty!26072 (= (arr!23432 _values!688) (store mapRest!26072 mapKey!26072 mapValue!26072))))

(declare-fun b!854217 () Bool)

(declare-fun res!580229 () Bool)

(assert (=> b!854217 (=> (not res!580229) (not e!476360))))

(assert (=> b!854217 (= res!580229 (and (= (size!23873 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23874 _keys!868) (size!23873 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854218 () Bool)

(assert (=> b!854218 (= e!476361 (and e!476363 mapRes!26072))))

(declare-fun condMapEmpty!26072 () Bool)

(declare-fun mapDefault!26072 () ValueCell!7718)

