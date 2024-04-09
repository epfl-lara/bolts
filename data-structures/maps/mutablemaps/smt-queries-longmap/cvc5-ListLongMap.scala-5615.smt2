; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73502 () Bool)

(assert start!73502)

(declare-fun b_free!14389 () Bool)

(declare-fun b_next!14389 () Bool)

(assert (=> start!73502 (= b_free!14389 (not b_next!14389))))

(declare-fun tp!50671 () Bool)

(declare-fun b_and!23775 () Bool)

(assert (=> start!73502 (= tp!50671 b_and!23775)))

(declare-fun b!858017 () Bool)

(declare-fun e!478223 () Bool)

(declare-fun tp_is_empty!16525 () Bool)

(assert (=> b!858017 (= e!478223 tp_is_empty!16525)))

(declare-fun res!583004 () Bool)

(declare-fun e!478224 () Bool)

(assert (=> start!73502 (=> (not res!583004) (not e!478224))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49210 0))(
  ( (array!49211 (arr!23632 (Array (_ BitVec 32) (_ BitVec 64))) (size!24073 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49210)

(assert (=> start!73502 (= res!583004 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24073 _keys!868))))))

(assert (=> start!73502 e!478224))

(assert (=> start!73502 tp_is_empty!16525))

(assert (=> start!73502 true))

(assert (=> start!73502 tp!50671))

(declare-fun array_inv!18694 (array!49210) Bool)

(assert (=> start!73502 (array_inv!18694 _keys!868)))

(declare-datatypes ((V!27081 0))(
  ( (V!27082 (val!8310 Int)) )
))
(declare-datatypes ((ValueCell!7823 0))(
  ( (ValueCellFull!7823 (v!10731 V!27081)) (EmptyCell!7823) )
))
(declare-datatypes ((array!49212 0))(
  ( (array!49213 (arr!23633 (Array (_ BitVec 32) ValueCell!7823)) (size!24074 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49212)

(declare-fun e!478220 () Bool)

(declare-fun array_inv!18695 (array!49212) Bool)

(assert (=> start!73502 (and (array_inv!18695 _values!688) e!478220)))

(declare-fun b!858018 () Bool)

(declare-fun e!478219 () Bool)

(assert (=> b!858018 (= e!478219 true)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10950 0))(
  ( (tuple2!10951 (_1!5485 (_ BitVec 64)) (_2!5485 V!27081)) )
))
(declare-datatypes ((List!16823 0))(
  ( (Nil!16820) (Cons!16819 (h!17950 tuple2!10950) (t!23486 List!16823)) )
))
(declare-datatypes ((ListLongMap!9733 0))(
  ( (ListLongMap!9734 (toList!4882 List!16823)) )
))
(declare-fun lt!386523 () ListLongMap!9733)

(declare-fun lt!386529 () ListLongMap!9733)

(declare-fun +!2188 (ListLongMap!9733 tuple2!10950) ListLongMap!9733)

(declare-fun get!12458 (ValueCell!7823 V!27081) V!27081)

(declare-fun dynLambda!1078 (Int (_ BitVec 64)) V!27081)

(assert (=> b!858018 (= lt!386523 (+!2188 lt!386529 (tuple2!10951 (select (arr!23632 _keys!868) from!1053) (get!12458 (select (arr!23633 _values!688) from!1053) (dynLambda!1078 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858019 () Bool)

(declare-fun e!478222 () Bool)

(assert (=> b!858019 (= e!478222 (not e!478219))))

(declare-fun res!583003 () Bool)

(assert (=> b!858019 (=> res!583003 e!478219)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858019 (= res!583003 (not (validKeyInArray!0 (select (arr!23632 _keys!868) from!1053))))))

(declare-fun lt!386528 () ListLongMap!9733)

(assert (=> b!858019 (= lt!386528 lt!386529)))

(declare-fun v!557 () V!27081)

(declare-fun lt!386527 () ListLongMap!9733)

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!858019 (= lt!386529 (+!2188 lt!386527 (tuple2!10951 k!854 v!557)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!386524 () array!49212)

(declare-fun minValue!654 () V!27081)

(declare-fun zeroValue!654 () V!27081)

(declare-fun getCurrentListMapNoExtraKeys!2864 (array!49210 array!49212 (_ BitVec 32) (_ BitVec 32) V!27081 V!27081 (_ BitVec 32) Int) ListLongMap!9733)

(assert (=> b!858019 (= lt!386528 (getCurrentListMapNoExtraKeys!2864 _keys!868 lt!386524 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858019 (= lt!386527 (getCurrentListMapNoExtraKeys!2864 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29218 0))(
  ( (Unit!29219) )
))
(declare-fun lt!386526 () Unit!29218)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!448 (array!49210 array!49212 (_ BitVec 32) (_ BitVec 32) V!27081 V!27081 (_ BitVec 32) (_ BitVec 64) V!27081 (_ BitVec 32) Int) Unit!29218)

(assert (=> b!858019 (= lt!386526 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!448 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858020 () Bool)

(declare-fun e!478218 () Bool)

(declare-fun mapRes!26387 () Bool)

(assert (=> b!858020 (= e!478220 (and e!478218 mapRes!26387))))

(declare-fun condMapEmpty!26387 () Bool)

(declare-fun mapDefault!26387 () ValueCell!7823)

