; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73508 () Bool)

(assert start!73508)

(declare-fun b_free!14395 () Bool)

(declare-fun b_next!14395 () Bool)

(assert (=> start!73508 (= b_free!14395 (not b_next!14395))))

(declare-fun tp!50690 () Bool)

(declare-fun b_and!23787 () Bool)

(assert (=> start!73508 (= tp!50690 b_and!23787)))

(declare-fun res!583093 () Bool)

(declare-fun e!478282 () Bool)

(assert (=> start!73508 (=> (not res!583093) (not e!478282))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49222 0))(
  ( (array!49223 (arr!23638 (Array (_ BitVec 32) (_ BitVec 64))) (size!24079 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49222)

(assert (=> start!73508 (= res!583093 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24079 _keys!868))))))

(assert (=> start!73508 e!478282))

(declare-fun tp_is_empty!16531 () Bool)

(assert (=> start!73508 tp_is_empty!16531))

(assert (=> start!73508 true))

(assert (=> start!73508 tp!50690))

(declare-fun array_inv!18700 (array!49222) Bool)

(assert (=> start!73508 (array_inv!18700 _keys!868)))

(declare-datatypes ((V!27089 0))(
  ( (V!27090 (val!8313 Int)) )
))
(declare-datatypes ((ValueCell!7826 0))(
  ( (ValueCellFull!7826 (v!10734 V!27089)) (EmptyCell!7826) )
))
(declare-datatypes ((array!49224 0))(
  ( (array!49225 (arr!23639 (Array (_ BitVec 32) ValueCell!7826)) (size!24080 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49224)

(declare-fun e!478283 () Bool)

(declare-fun array_inv!18701 (array!49224) Bool)

(assert (=> start!73508 (and (array_inv!18701 _values!688) e!478283)))

(declare-fun b!858140 () Bool)

(declare-fun res!583096 () Bool)

(assert (=> b!858140 (=> (not res!583096) (not e!478282))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858140 (= res!583096 (validKeyInArray!0 k!854))))

(declare-fun b!858141 () Bool)

(declare-fun res!583095 () Bool)

(assert (=> b!858141 (=> (not res!583095) (not e!478282))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858141 (= res!583095 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24079 _keys!868))))))

(declare-fun b!858142 () Bool)

(declare-fun e!478284 () Bool)

(assert (=> b!858142 (= e!478284 tp_is_empty!16531)))

(declare-fun b!858143 () Bool)

(declare-fun e!478286 () Bool)

(assert (=> b!858143 (= e!478282 e!478286)))

(declare-fun res!583101 () Bool)

(assert (=> b!858143 (=> (not res!583101) (not e!478286))))

(assert (=> b!858143 (= res!583101 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!386588 () array!49224)

(declare-datatypes ((tuple2!10956 0))(
  ( (tuple2!10957 (_1!5488 (_ BitVec 64)) (_2!5488 V!27089)) )
))
(declare-datatypes ((List!16828 0))(
  ( (Nil!16825) (Cons!16824 (h!17955 tuple2!10956) (t!23497 List!16828)) )
))
(declare-datatypes ((ListLongMap!9739 0))(
  ( (ListLongMap!9740 (toList!4885 List!16828)) )
))
(declare-fun lt!386587 () ListLongMap!9739)

(declare-fun minValue!654 () V!27089)

(declare-fun zeroValue!654 () V!27089)

(declare-fun getCurrentListMapNoExtraKeys!2867 (array!49222 array!49224 (_ BitVec 32) (_ BitVec 32) V!27089 V!27089 (_ BitVec 32) Int) ListLongMap!9739)

(assert (=> b!858143 (= lt!386587 (getCurrentListMapNoExtraKeys!2867 _keys!868 lt!386588 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27089)

(assert (=> b!858143 (= lt!386588 (array!49225 (store (arr!23639 _values!688) i!612 (ValueCellFull!7826 v!557)) (size!24080 _values!688)))))

(declare-fun lt!386591 () ListLongMap!9739)

(assert (=> b!858143 (= lt!386591 (getCurrentListMapNoExtraKeys!2867 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26396 () Bool)

(declare-fun mapRes!26396 () Bool)

(declare-fun tp!50689 () Bool)

(assert (=> mapNonEmpty!26396 (= mapRes!26396 (and tp!50689 e!478284))))

(declare-fun mapValue!26396 () ValueCell!7826)

(declare-fun mapRest!26396 () (Array (_ BitVec 32) ValueCell!7826))

(declare-fun mapKey!26396 () (_ BitVec 32))

(assert (=> mapNonEmpty!26396 (= (arr!23639 _values!688) (store mapRest!26396 mapKey!26396 mapValue!26396))))

(declare-fun mapIsEmpty!26396 () Bool)

(assert (=> mapIsEmpty!26396 mapRes!26396))

(declare-fun b!858144 () Bool)

(declare-fun res!583099 () Bool)

(assert (=> b!858144 (=> (not res!583099) (not e!478282))))

(assert (=> b!858144 (= res!583099 (and (= (select (arr!23638 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!858145 () Bool)

(declare-fun e!478281 () Bool)

(assert (=> b!858145 (= e!478283 (and e!478281 mapRes!26396))))

(declare-fun condMapEmpty!26396 () Bool)

(declare-fun mapDefault!26396 () ValueCell!7826)

