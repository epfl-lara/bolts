; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73430 () Bool)

(assert start!73430)

(declare-fun b_free!14317 () Bool)

(declare-fun b_next!14317 () Bool)

(assert (=> start!73430 (= b_free!14317 (not b_next!14317))))

(declare-fun tp!50455 () Bool)

(declare-fun b_and!23691 () Bool)

(assert (=> start!73430 (= tp!50455 b_and!23691)))

(declare-fun b!856680 () Bool)

(declare-fun e!477541 () Bool)

(declare-fun e!477542 () Bool)

(assert (=> b!856680 (= e!477541 e!477542)))

(declare-fun res!582002 () Bool)

(assert (=> b!856680 (=> (not res!582002) (not e!477542))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856680 (= res!582002 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!26985 0))(
  ( (V!26986 (val!8274 Int)) )
))
(declare-datatypes ((ValueCell!7787 0))(
  ( (ValueCellFull!7787 (v!10695 V!26985)) (EmptyCell!7787) )
))
(declare-datatypes ((array!49074 0))(
  ( (array!49075 (arr!23564 (Array (_ BitVec 32) ValueCell!7787)) (size!24005 (_ BitVec 32))) )
))
(declare-fun lt!386034 () array!49074)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49076 0))(
  ( (array!49077 (arr!23565 (Array (_ BitVec 32) (_ BitVec 64))) (size!24006 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49076)

(declare-datatypes ((tuple2!10900 0))(
  ( (tuple2!10901 (_1!5460 (_ BitVec 64)) (_2!5460 V!26985)) )
))
(declare-datatypes ((List!16772 0))(
  ( (Nil!16769) (Cons!16768 (h!17899 tuple2!10900) (t!23421 List!16772)) )
))
(declare-datatypes ((ListLongMap!9683 0))(
  ( (ListLongMap!9684 (toList!4857 List!16772)) )
))
(declare-fun lt!386033 () ListLongMap!9683)

(declare-fun minValue!654 () V!26985)

(declare-fun zeroValue!654 () V!26985)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2839 (array!49076 array!49074 (_ BitVec 32) (_ BitVec 32) V!26985 V!26985 (_ BitVec 32) Int) ListLongMap!9683)

(assert (=> b!856680 (= lt!386033 (getCurrentListMapNoExtraKeys!2839 _keys!868 lt!386034 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26985)

(declare-fun _values!688 () array!49074)

(assert (=> b!856680 (= lt!386034 (array!49075 (store (arr!23564 _values!688) i!612 (ValueCellFull!7787 v!557)) (size!24005 _values!688)))))

(declare-fun lt!386032 () ListLongMap!9683)

(assert (=> b!856680 (= lt!386032 (getCurrentListMapNoExtraKeys!2839 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856681 () Bool)

(declare-fun res!582001 () Bool)

(assert (=> b!856681 (=> (not res!582001) (not e!477541))))

(assert (=> b!856681 (= res!582001 (and (= (size!24005 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24006 _keys!868) (size!24005 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26279 () Bool)

(declare-fun mapRes!26279 () Bool)

(assert (=> mapIsEmpty!26279 mapRes!26279))

(declare-fun b!856682 () Bool)

(declare-fun res!582007 () Bool)

(assert (=> b!856682 (=> (not res!582007) (not e!477541))))

(assert (=> b!856682 (= res!582007 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24006 _keys!868))))))

(declare-fun b!856683 () Bool)

(declare-fun res!582004 () Bool)

(assert (=> b!856683 (=> (not res!582004) (not e!477541))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856683 (= res!582004 (validKeyInArray!0 k!854))))

(declare-fun b!856684 () Bool)

(assert (=> b!856684 (= e!477542 (not true))))

(declare-fun +!2166 (ListLongMap!9683 tuple2!10900) ListLongMap!9683)

(assert (=> b!856684 (= (getCurrentListMapNoExtraKeys!2839 _keys!868 lt!386034 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2166 (getCurrentListMapNoExtraKeys!2839 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10901 k!854 v!557)))))

(declare-datatypes ((Unit!29174 0))(
  ( (Unit!29175) )
))
(declare-fun lt!386031 () Unit!29174)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!426 (array!49076 array!49074 (_ BitVec 32) (_ BitVec 32) V!26985 V!26985 (_ BitVec 32) (_ BitVec 64) V!26985 (_ BitVec 32) Int) Unit!29174)

(assert (=> b!856684 (= lt!386031 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!426 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!582009 () Bool)

(assert (=> start!73430 (=> (not res!582009) (not e!477541))))

(assert (=> start!73430 (= res!582009 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24006 _keys!868))))))

(assert (=> start!73430 e!477541))

(declare-fun tp_is_empty!16453 () Bool)

(assert (=> start!73430 tp_is_empty!16453))

(assert (=> start!73430 true))

(assert (=> start!73430 tp!50455))

(declare-fun array_inv!18652 (array!49076) Bool)

(assert (=> start!73430 (array_inv!18652 _keys!868)))

(declare-fun e!477546 () Bool)

(declare-fun array_inv!18653 (array!49074) Bool)

(assert (=> start!73430 (and (array_inv!18653 _values!688) e!477546)))

(declare-fun b!856685 () Bool)

(declare-fun e!477545 () Bool)

(assert (=> b!856685 (= e!477546 (and e!477545 mapRes!26279))))

(declare-fun condMapEmpty!26279 () Bool)

(declare-fun mapDefault!26279 () ValueCell!7787)

