; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73494 () Bool)

(assert start!73494)

(declare-fun b_free!14381 () Bool)

(declare-fun b_next!14381 () Bool)

(assert (=> start!73494 (= b_free!14381 (not b_next!14381))))

(declare-fun tp!50647 () Bool)

(declare-fun b_and!23759 () Bool)

(assert (=> start!73494 (= tp!50647 b_and!23759)))

(declare-fun b!857853 () Bool)

(declare-fun res!582885 () Bool)

(declare-fun e!478134 () Bool)

(assert (=> b!857853 (=> (not res!582885) (not e!478134))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49196 0))(
  ( (array!49197 (arr!23625 (Array (_ BitVec 32) (_ BitVec 64))) (size!24066 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49196)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857853 (= res!582885 (and (= (select (arr!23625 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26375 () Bool)

(declare-fun mapRes!26375 () Bool)

(declare-fun tp!50648 () Bool)

(declare-fun e!478139 () Bool)

(assert (=> mapNonEmpty!26375 (= mapRes!26375 (and tp!50648 e!478139))))

(declare-datatypes ((V!27069 0))(
  ( (V!27070 (val!8306 Int)) )
))
(declare-datatypes ((ValueCell!7819 0))(
  ( (ValueCellFull!7819 (v!10727 V!27069)) (EmptyCell!7819) )
))
(declare-fun mapValue!26375 () ValueCell!7819)

(declare-fun mapKey!26375 () (_ BitVec 32))

(declare-fun mapRest!26375 () (Array (_ BitVec 32) ValueCell!7819))

(declare-datatypes ((array!49198 0))(
  ( (array!49199 (arr!23626 (Array (_ BitVec 32) ValueCell!7819)) (size!24067 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49198)

(assert (=> mapNonEmpty!26375 (= (arr!23626 _values!688) (store mapRest!26375 mapKey!26375 mapValue!26375))))

(declare-fun b!857854 () Bool)

(declare-fun res!582883 () Bool)

(assert (=> b!857854 (=> (not res!582883) (not e!478134))))

(declare-datatypes ((List!16817 0))(
  ( (Nil!16814) (Cons!16813 (h!17944 (_ BitVec 64)) (t!23472 List!16817)) )
))
(declare-fun arrayNoDuplicates!0 (array!49196 (_ BitVec 32) List!16817) Bool)

(assert (=> b!857854 (= res!582883 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16814))))

(declare-fun b!857855 () Bool)

(declare-fun e!478138 () Bool)

(assert (=> b!857855 (= e!478134 e!478138)))

(declare-fun res!582891 () Bool)

(assert (=> b!857855 (=> (not res!582891) (not e!478138))))

(assert (=> b!857855 (= res!582891 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10944 0))(
  ( (tuple2!10945 (_1!5482 (_ BitVec 64)) (_2!5482 V!27069)) )
))
(declare-datatypes ((List!16818 0))(
  ( (Nil!16815) (Cons!16814 (h!17945 tuple2!10944) (t!23473 List!16818)) )
))
(declare-datatypes ((ListLongMap!9727 0))(
  ( (ListLongMap!9728 (toList!4879 List!16818)) )
))
(declare-fun lt!386445 () ListLongMap!9727)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27069)

(declare-fun zeroValue!654 () V!27069)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!386441 () array!49198)

(declare-fun getCurrentListMapNoExtraKeys!2861 (array!49196 array!49198 (_ BitVec 32) (_ BitVec 32) V!27069 V!27069 (_ BitVec 32) Int) ListLongMap!9727)

(assert (=> b!857855 (= lt!386445 (getCurrentListMapNoExtraKeys!2861 _keys!868 lt!386441 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27069)

(assert (=> b!857855 (= lt!386441 (array!49199 (store (arr!23626 _values!688) i!612 (ValueCellFull!7819 v!557)) (size!24067 _values!688)))))

(declare-fun lt!386444 () ListLongMap!9727)

(assert (=> b!857855 (= lt!386444 (getCurrentListMapNoExtraKeys!2861 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857856 () Bool)

(declare-fun e!478137 () Bool)

(declare-fun e!478136 () Bool)

(assert (=> b!857856 (= e!478137 (and e!478136 mapRes!26375))))

(declare-fun condMapEmpty!26375 () Bool)

(declare-fun mapDefault!26375 () ValueCell!7819)

