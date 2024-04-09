; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73970 () Bool)

(assert start!73970)

(declare-fun b_free!14857 () Bool)

(declare-fun b_next!14857 () Bool)

(assert (=> start!73970 (= b_free!14857 (not b_next!14857))))

(declare-fun tp!52075 () Bool)

(declare-fun b_and!24627 () Bool)

(assert (=> start!73970 (= tp!52075 b_and!24627)))

(declare-fun mapNonEmpty!27089 () Bool)

(declare-fun mapRes!27089 () Bool)

(declare-fun tp!52076 () Bool)

(declare-fun e!483959 () Bool)

(assert (=> mapNonEmpty!27089 (= mapRes!27089 (and tp!52076 e!483959))))

(declare-fun mapKey!27089 () (_ BitVec 32))

(declare-datatypes ((V!27705 0))(
  ( (V!27706 (val!8544 Int)) )
))
(declare-datatypes ((ValueCell!8057 0))(
  ( (ValueCellFull!8057 (v!10965 V!27705)) (EmptyCell!8057) )
))
(declare-fun mapValue!27089 () ValueCell!8057)

(declare-datatypes ((array!50118 0))(
  ( (array!50119 (arr!24086 (Array (_ BitVec 32) ValueCell!8057)) (size!24527 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50118)

(declare-fun mapRest!27089 () (Array (_ BitVec 32) ValueCell!8057))

(assert (=> mapNonEmpty!27089 (= (arr!24086 _values!688) (store mapRest!27089 mapKey!27089 mapValue!27089))))

(declare-fun b!868929 () Bool)

(declare-fun res!590604 () Bool)

(declare-fun e!483958 () Bool)

(assert (=> b!868929 (=> (not res!590604) (not e!483958))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50120 0))(
  ( (array!50121 (arr!24087 (Array (_ BitVec 32) (_ BitVec 64))) (size!24528 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50120)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!868929 (= res!590604 (and (= (select (arr!24087 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!868930 () Bool)

(declare-fun res!590596 () Bool)

(assert (=> b!868930 (=> (not res!590596) (not e!483958))))

(declare-datatypes ((List!17203 0))(
  ( (Nil!17200) (Cons!17199 (h!18330 (_ BitVec 64)) (t!24248 List!17203)) )
))
(declare-fun arrayNoDuplicates!0 (array!50120 (_ BitVec 32) List!17203) Bool)

(assert (=> b!868930 (= res!590596 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17200))))

(declare-fun mapIsEmpty!27089 () Bool)

(assert (=> mapIsEmpty!27089 mapRes!27089))

(declare-fun b!868931 () Bool)

(declare-fun e!483961 () Bool)

(assert (=> b!868931 (= e!483958 e!483961)))

(declare-fun res!590603 () Bool)

(assert (=> b!868931 (=> (not res!590603) (not e!483961))))

(assert (=> b!868931 (= res!590603 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394626 () array!50118)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27705)

(declare-fun zeroValue!654 () V!27705)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11346 0))(
  ( (tuple2!11347 (_1!5683 (_ BitVec 64)) (_2!5683 V!27705)) )
))
(declare-datatypes ((List!17204 0))(
  ( (Nil!17201) (Cons!17200 (h!18331 tuple2!11346) (t!24249 List!17204)) )
))
(declare-datatypes ((ListLongMap!10129 0))(
  ( (ListLongMap!10130 (toList!5080 List!17204)) )
))
(declare-fun lt!394628 () ListLongMap!10129)

(declare-fun getCurrentListMapNoExtraKeys!3044 (array!50120 array!50118 (_ BitVec 32) (_ BitVec 32) V!27705 V!27705 (_ BitVec 32) Int) ListLongMap!10129)

(assert (=> b!868931 (= lt!394628 (getCurrentListMapNoExtraKeys!3044 _keys!868 lt!394626 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27705)

(assert (=> b!868931 (= lt!394626 (array!50119 (store (arr!24086 _values!688) i!612 (ValueCellFull!8057 v!557)) (size!24527 _values!688)))))

(declare-fun lt!394629 () ListLongMap!10129)

(assert (=> b!868931 (= lt!394629 (getCurrentListMapNoExtraKeys!3044 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868932 () Bool)

(declare-fun res!590601 () Bool)

(assert (=> b!868932 (=> (not res!590601) (not e!483958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868932 (= res!590601 (validKeyInArray!0 k!854))))

(declare-fun b!868933 () Bool)

(declare-fun tp_is_empty!16993 () Bool)

(assert (=> b!868933 (= e!483959 tp_is_empty!16993)))

(declare-fun b!868934 () Bool)

(declare-fun res!590597 () Bool)

(assert (=> b!868934 (=> (not res!590597) (not e!483958))))

(assert (=> b!868934 (= res!590597 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24528 _keys!868))))))

(declare-fun b!868935 () Bool)

(declare-fun res!590599 () Bool)

(assert (=> b!868935 (=> (not res!590599) (not e!483958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50120 (_ BitVec 32)) Bool)

(assert (=> b!868935 (= res!590599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868936 () Bool)

(declare-fun e!483960 () Bool)

(declare-fun e!483962 () Bool)

(assert (=> b!868936 (= e!483960 (and e!483962 mapRes!27089))))

(declare-fun condMapEmpty!27089 () Bool)

(declare-fun mapDefault!27089 () ValueCell!8057)

