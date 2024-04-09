; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74078 () Bool)

(assert start!74078)

(declare-fun b_free!14965 () Bool)

(declare-fun b_next!14965 () Bool)

(assert (=> start!74078 (= b_free!14965 (not b_next!14965))))

(declare-fun tp!52399 () Bool)

(declare-fun b_and!24735 () Bool)

(assert (=> start!74078 (= tp!52399 b_and!24735)))

(declare-fun b!870873 () Bool)

(declare-fun res!592060 () Bool)

(declare-fun e!484933 () Bool)

(assert (=> b!870873 (=> (not res!592060) (not e!484933))))

(declare-datatypes ((array!50332 0))(
  ( (array!50333 (arr!24193 (Array (_ BitVec 32) (_ BitVec 64))) (size!24634 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50332)

(declare-datatypes ((List!17279 0))(
  ( (Nil!17276) (Cons!17275 (h!18406 (_ BitVec 64)) (t!24324 List!17279)) )
))
(declare-fun arrayNoDuplicates!0 (array!50332 (_ BitVec 32) List!17279) Bool)

(assert (=> b!870873 (= res!592060 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17276))))

(declare-fun res!592054 () Bool)

(assert (=> start!74078 (=> (not res!592054) (not e!484933))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74078 (= res!592054 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24634 _keys!868))))))

(assert (=> start!74078 e!484933))

(declare-fun tp_is_empty!17101 () Bool)

(assert (=> start!74078 tp_is_empty!17101))

(assert (=> start!74078 true))

(assert (=> start!74078 tp!52399))

(declare-fun array_inv!19078 (array!50332) Bool)

(assert (=> start!74078 (array_inv!19078 _keys!868)))

(declare-datatypes ((V!27849 0))(
  ( (V!27850 (val!8598 Int)) )
))
(declare-datatypes ((ValueCell!8111 0))(
  ( (ValueCellFull!8111 (v!11019 V!27849)) (EmptyCell!8111) )
))
(declare-datatypes ((array!50334 0))(
  ( (array!50335 (arr!24194 (Array (_ BitVec 32) ValueCell!8111)) (size!24635 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50334)

(declare-fun e!484932 () Bool)

(declare-fun array_inv!19079 (array!50334) Bool)

(assert (=> start!74078 (and (array_inv!19079 _values!688) e!484932)))

(declare-fun b!870874 () Bool)

(declare-fun e!484931 () Bool)

(assert (=> b!870874 (= e!484933 e!484931)))

(declare-fun res!592059 () Bool)

(assert (=> b!870874 (=> (not res!592059) (not e!484931))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870874 (= res!592059 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395277 () array!50334)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27849)

(declare-fun zeroValue!654 () V!27849)

(declare-datatypes ((tuple2!11424 0))(
  ( (tuple2!11425 (_1!5722 (_ BitVec 64)) (_2!5722 V!27849)) )
))
(declare-datatypes ((List!17280 0))(
  ( (Nil!17277) (Cons!17276 (h!18407 tuple2!11424) (t!24325 List!17280)) )
))
(declare-datatypes ((ListLongMap!10207 0))(
  ( (ListLongMap!10208 (toList!5119 List!17280)) )
))
(declare-fun lt!395274 () ListLongMap!10207)

(declare-fun getCurrentListMapNoExtraKeys!3083 (array!50332 array!50334 (_ BitVec 32) (_ BitVec 32) V!27849 V!27849 (_ BitVec 32) Int) ListLongMap!10207)

(assert (=> b!870874 (= lt!395274 (getCurrentListMapNoExtraKeys!3083 _keys!868 lt!395277 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27849)

(assert (=> b!870874 (= lt!395277 (array!50335 (store (arr!24194 _values!688) i!612 (ValueCellFull!8111 v!557)) (size!24635 _values!688)))))

(declare-fun lt!395276 () ListLongMap!10207)

(assert (=> b!870874 (= lt!395276 (getCurrentListMapNoExtraKeys!3083 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870875 () Bool)

(declare-fun res!592055 () Bool)

(assert (=> b!870875 (=> (not res!592055) (not e!484933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870875 (= res!592055 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27251 () Bool)

(declare-fun mapRes!27251 () Bool)

(assert (=> mapIsEmpty!27251 mapRes!27251))

(declare-fun b!870876 () Bool)

(declare-fun e!484935 () Bool)

(assert (=> b!870876 (= e!484932 (and e!484935 mapRes!27251))))

(declare-fun condMapEmpty!27251 () Bool)

(declare-fun mapDefault!27251 () ValueCell!8111)

