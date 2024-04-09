; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73448 () Bool)

(assert start!73448)

(declare-fun b_free!14335 () Bool)

(declare-fun b_next!14335 () Bool)

(assert (=> start!73448 (= b_free!14335 (not b_next!14335))))

(declare-fun tp!50510 () Bool)

(declare-fun b_and!23709 () Bool)

(assert (=> start!73448 (= tp!50510 b_and!23709)))

(declare-fun b!857004 () Bool)

(declare-fun res!582247 () Bool)

(declare-fun e!477704 () Bool)

(assert (=> b!857004 (=> (not res!582247) (not e!477704))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857004 (= res!582247 (validKeyInArray!0 k!854))))

(declare-fun res!582249 () Bool)

(assert (=> start!73448 (=> (not res!582249) (not e!477704))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49108 0))(
  ( (array!49109 (arr!23581 (Array (_ BitVec 32) (_ BitVec 64))) (size!24022 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49108)

(assert (=> start!73448 (= res!582249 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24022 _keys!868))))))

(assert (=> start!73448 e!477704))

(declare-fun tp_is_empty!16471 () Bool)

(assert (=> start!73448 tp_is_empty!16471))

(assert (=> start!73448 true))

(assert (=> start!73448 tp!50510))

(declare-fun array_inv!18664 (array!49108) Bool)

(assert (=> start!73448 (array_inv!18664 _keys!868)))

(declare-datatypes ((V!27009 0))(
  ( (V!27010 (val!8283 Int)) )
))
(declare-datatypes ((ValueCell!7796 0))(
  ( (ValueCellFull!7796 (v!10704 V!27009)) (EmptyCell!7796) )
))
(declare-datatypes ((array!49110 0))(
  ( (array!49111 (arr!23582 (Array (_ BitVec 32) ValueCell!7796)) (size!24023 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49110)

(declare-fun e!477706 () Bool)

(declare-fun array_inv!18665 (array!49110) Bool)

(assert (=> start!73448 (and (array_inv!18665 _values!688) e!477706)))

(declare-fun b!857005 () Bool)

(declare-fun e!477705 () Bool)

(assert (=> b!857005 (= e!477705 tp_is_empty!16471)))

(declare-fun b!857006 () Bool)

(declare-fun res!582250 () Bool)

(assert (=> b!857006 (=> (not res!582250) (not e!477704))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49108 (_ BitVec 32)) Bool)

(assert (=> b!857006 (= res!582250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857007 () Bool)

(declare-fun e!477703 () Bool)

(assert (=> b!857007 (= e!477704 e!477703)))

(declare-fun res!582251 () Bool)

(assert (=> b!857007 (=> (not res!582251) (not e!477703))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!857007 (= res!582251 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!10912 0))(
  ( (tuple2!10913 (_1!5466 (_ BitVec 64)) (_2!5466 V!27009)) )
))
(declare-datatypes ((List!16784 0))(
  ( (Nil!16781) (Cons!16780 (h!17911 tuple2!10912) (t!23433 List!16784)) )
))
(declare-datatypes ((ListLongMap!9695 0))(
  ( (ListLongMap!9696 (toList!4863 List!16784)) )
))
(declare-fun lt!386139 () ListLongMap!9695)

(declare-fun lt!386142 () array!49110)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27009)

(declare-fun zeroValue!654 () V!27009)

(declare-fun getCurrentListMapNoExtraKeys!2845 (array!49108 array!49110 (_ BitVec 32) (_ BitVec 32) V!27009 V!27009 (_ BitVec 32) Int) ListLongMap!9695)

(assert (=> b!857007 (= lt!386139 (getCurrentListMapNoExtraKeys!2845 _keys!868 lt!386142 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27009)

(assert (=> b!857007 (= lt!386142 (array!49111 (store (arr!23582 _values!688) i!612 (ValueCellFull!7796 v!557)) (size!24023 _values!688)))))

(declare-fun lt!386141 () ListLongMap!9695)

(assert (=> b!857007 (= lt!386141 (getCurrentListMapNoExtraKeys!2845 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857008 () Bool)

(declare-fun e!477707 () Bool)

(declare-fun mapRes!26306 () Bool)

(assert (=> b!857008 (= e!477706 (and e!477707 mapRes!26306))))

(declare-fun condMapEmpty!26306 () Bool)

(declare-fun mapDefault!26306 () ValueCell!7796)

