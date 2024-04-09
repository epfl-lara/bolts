; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73952 () Bool)

(assert start!73952)

(declare-fun b_free!14839 () Bool)

(declare-fun b_next!14839 () Bool)

(assert (=> start!73952 (= b_free!14839 (not b_next!14839))))

(declare-fun tp!52022 () Bool)

(declare-fun b_and!24609 () Bool)

(assert (=> start!73952 (= tp!52022 b_and!24609)))

(declare-fun b!868605 () Bool)

(declare-fun e!483797 () Bool)

(declare-fun e!483798 () Bool)

(assert (=> b!868605 (= e!483797 e!483798)))

(declare-fun res!590353 () Bool)

(assert (=> b!868605 (=> (not res!590353) (not e!483798))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868605 (= res!590353 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27681 0))(
  ( (V!27682 (val!8535 Int)) )
))
(declare-datatypes ((ValueCell!8048 0))(
  ( (ValueCellFull!8048 (v!10956 V!27681)) (EmptyCell!8048) )
))
(declare-datatypes ((array!50084 0))(
  ( (array!50085 (arr!24069 (Array (_ BitVec 32) ValueCell!8048)) (size!24510 (_ BitVec 32))) )
))
(declare-fun lt!394520 () array!50084)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11330 0))(
  ( (tuple2!11331 (_1!5675 (_ BitVec 64)) (_2!5675 V!27681)) )
))
(declare-datatypes ((List!17190 0))(
  ( (Nil!17187) (Cons!17186 (h!18317 tuple2!11330) (t!24235 List!17190)) )
))
(declare-datatypes ((ListLongMap!10113 0))(
  ( (ListLongMap!10114 (toList!5072 List!17190)) )
))
(declare-fun lt!394521 () ListLongMap!10113)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50086 0))(
  ( (array!50087 (arr!24070 (Array (_ BitVec 32) (_ BitVec 64))) (size!24511 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50086)

(declare-fun minValue!654 () V!27681)

(declare-fun zeroValue!654 () V!27681)

(declare-fun getCurrentListMapNoExtraKeys!3036 (array!50086 array!50084 (_ BitVec 32) (_ BitVec 32) V!27681 V!27681 (_ BitVec 32) Int) ListLongMap!10113)

(assert (=> b!868605 (= lt!394521 (getCurrentListMapNoExtraKeys!3036 _keys!868 lt!394520 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27681)

(declare-fun _values!688 () array!50084)

(assert (=> b!868605 (= lt!394520 (array!50085 (store (arr!24069 _values!688) i!612 (ValueCellFull!8048 v!557)) (size!24510 _values!688)))))

(declare-fun lt!394518 () ListLongMap!10113)

(assert (=> b!868605 (= lt!394518 (getCurrentListMapNoExtraKeys!3036 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868606 () Bool)

(declare-fun e!483799 () Bool)

(declare-fun tp_is_empty!16975 () Bool)

(assert (=> b!868606 (= e!483799 tp_is_empty!16975)))

(declare-fun b!868607 () Bool)

(declare-fun e!483800 () Bool)

(declare-fun mapRes!27062 () Bool)

(assert (=> b!868607 (= e!483800 (and e!483799 mapRes!27062))))

(declare-fun condMapEmpty!27062 () Bool)

(declare-fun mapDefault!27062 () ValueCell!8048)

