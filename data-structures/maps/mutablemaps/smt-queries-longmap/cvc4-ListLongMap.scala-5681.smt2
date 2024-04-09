; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73902 () Bool)

(assert start!73902)

(declare-fun b_free!14789 () Bool)

(declare-fun b_next!14789 () Bool)

(assert (=> start!73902 (= b_free!14789 (not b_next!14789))))

(declare-fun tp!51872 () Bool)

(declare-fun b_and!24559 () Bool)

(assert (=> start!73902 (= tp!51872 b_and!24559)))

(declare-fun b!867705 () Bool)

(declare-fun e!483351 () Bool)

(declare-fun e!483349 () Bool)

(assert (=> b!867705 (= e!483351 e!483349)))

(declare-fun res!589680 () Bool)

(assert (=> b!867705 (=> (not res!589680) (not e!483349))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!867705 (= res!589680 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27613 0))(
  ( (V!27614 (val!8510 Int)) )
))
(declare-datatypes ((ValueCell!8023 0))(
  ( (ValueCellFull!8023 (v!10931 V!27613)) (EmptyCell!8023) )
))
(declare-datatypes ((array!49988 0))(
  ( (array!49989 (arr!24021 (Array (_ BitVec 32) ValueCell!8023)) (size!24462 (_ BitVec 32))) )
))
(declare-fun lt!394221 () array!49988)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27613)

(declare-fun zeroValue!654 () V!27613)

(declare-datatypes ((array!49990 0))(
  ( (array!49991 (arr!24022 (Array (_ BitVec 32) (_ BitVec 64))) (size!24463 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49990)

(declare-datatypes ((tuple2!11298 0))(
  ( (tuple2!11299 (_1!5659 (_ BitVec 64)) (_2!5659 V!27613)) )
))
(declare-datatypes ((List!17158 0))(
  ( (Nil!17155) (Cons!17154 (h!18285 tuple2!11298) (t!24203 List!17158)) )
))
(declare-datatypes ((ListLongMap!10081 0))(
  ( (ListLongMap!10082 (toList!5056 List!17158)) )
))
(declare-fun lt!394219 () ListLongMap!10081)

(declare-fun getCurrentListMapNoExtraKeys!3020 (array!49990 array!49988 (_ BitVec 32) (_ BitVec 32) V!27613 V!27613 (_ BitVec 32) Int) ListLongMap!10081)

(assert (=> b!867705 (= lt!394219 (getCurrentListMapNoExtraKeys!3020 _keys!868 lt!394221 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27613)

(declare-fun _values!688 () array!49988)

(assert (=> b!867705 (= lt!394221 (array!49989 (store (arr!24021 _values!688) i!612 (ValueCellFull!8023 v!557)) (size!24462 _values!688)))))

(declare-fun lt!394220 () ListLongMap!10081)

(assert (=> b!867705 (= lt!394220 (getCurrentListMapNoExtraKeys!3020 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26987 () Bool)

(declare-fun mapRes!26987 () Bool)

(assert (=> mapIsEmpty!26987 mapRes!26987))

(declare-fun b!867706 () Bool)

(declare-fun res!589682 () Bool)

(assert (=> b!867706 (=> (not res!589682) (not e!483351))))

(assert (=> b!867706 (= res!589682 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24463 _keys!868))))))

(declare-fun res!589685 () Bool)

(assert (=> start!73902 (=> (not res!589685) (not e!483351))))

(assert (=> start!73902 (= res!589685 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24463 _keys!868))))))

(assert (=> start!73902 e!483351))

(declare-fun tp_is_empty!16925 () Bool)

(assert (=> start!73902 tp_is_empty!16925))

(assert (=> start!73902 true))

(assert (=> start!73902 tp!51872))

(declare-fun array_inv!18958 (array!49990) Bool)

(assert (=> start!73902 (array_inv!18958 _keys!868)))

(declare-fun e!483348 () Bool)

(declare-fun array_inv!18959 (array!49988) Bool)

(assert (=> start!73902 (and (array_inv!18959 _values!688) e!483348)))

(declare-fun b!867707 () Bool)

(declare-fun res!589678 () Bool)

(assert (=> b!867707 (=> (not res!589678) (not e!483351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867707 (= res!589678 (validMask!0 mask!1196))))

(declare-fun b!867708 () Bool)

(declare-fun e!483346 () Bool)

(assert (=> b!867708 (= e!483348 (and e!483346 mapRes!26987))))

(declare-fun condMapEmpty!26987 () Bool)

(declare-fun mapDefault!26987 () ValueCell!8023)

