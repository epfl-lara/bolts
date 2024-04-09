; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73874 () Bool)

(assert start!73874)

(declare-fun b_free!14761 () Bool)

(declare-fun b_next!14761 () Bool)

(assert (=> start!73874 (= b_free!14761 (not b_next!14761))))

(declare-fun tp!51787 () Bool)

(declare-fun b_and!24519 () Bool)

(assert (=> start!73874 (= tp!51787 b_and!24519)))

(declare-fun b!867125 () Bool)

(declare-fun res!589270 () Bool)

(declare-fun e!483047 () Bool)

(assert (=> b!867125 (=> (not res!589270) (not e!483047))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867125 (= res!589270 (validMask!0 mask!1196))))

(declare-fun b!867126 () Bool)

(declare-fun e!483054 () Bool)

(assert (=> b!867126 (= e!483047 e!483054)))

(declare-fun res!589278 () Bool)

(assert (=> b!867126 (=> (not res!589278) (not e!483054))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!867126 (= res!589278 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!49934 0))(
  ( (array!49935 (arr!23994 (Array (_ BitVec 32) (_ BitVec 64))) (size!24435 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49934)

(declare-datatypes ((V!27577 0))(
  ( (V!27578 (val!8496 Int)) )
))
(declare-datatypes ((tuple2!11274 0))(
  ( (tuple2!11275 (_1!5647 (_ BitVec 64)) (_2!5647 V!27577)) )
))
(declare-datatypes ((List!17137 0))(
  ( (Nil!17134) (Cons!17133 (h!18264 tuple2!11274) (t!24172 List!17137)) )
))
(declare-datatypes ((ListLongMap!10057 0))(
  ( (ListLongMap!10058 (toList!5044 List!17137)) )
))
(declare-fun lt!393869 () ListLongMap!10057)

(declare-fun minValue!654 () V!27577)

(declare-datatypes ((ValueCell!8009 0))(
  ( (ValueCellFull!8009 (v!10917 V!27577)) (EmptyCell!8009) )
))
(declare-datatypes ((array!49936 0))(
  ( (array!49937 (arr!23995 (Array (_ BitVec 32) ValueCell!8009)) (size!24436 (_ BitVec 32))) )
))
(declare-fun lt!393859 () array!49936)

(declare-fun zeroValue!654 () V!27577)

(declare-fun getCurrentListMapNoExtraKeys!3009 (array!49934 array!49936 (_ BitVec 32) (_ BitVec 32) V!27577 V!27577 (_ BitVec 32) Int) ListLongMap!10057)

(assert (=> b!867126 (= lt!393869 (getCurrentListMapNoExtraKeys!3009 _keys!868 lt!393859 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27577)

(declare-fun _values!688 () array!49936)

(assert (=> b!867126 (= lt!393859 (array!49937 (store (arr!23995 _values!688) i!612 (ValueCellFull!8009 v!557)) (size!24436 _values!688)))))

(declare-fun lt!393860 () ListLongMap!10057)

(assert (=> b!867126 (= lt!393860 (getCurrentListMapNoExtraKeys!3009 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26945 () Bool)

(declare-fun mapRes!26945 () Bool)

(declare-fun tp!51788 () Bool)

(declare-fun e!483053 () Bool)

(assert (=> mapNonEmpty!26945 (= mapRes!26945 (and tp!51788 e!483053))))

(declare-fun mapKey!26945 () (_ BitVec 32))

(declare-fun mapValue!26945 () ValueCell!8009)

(declare-fun mapRest!26945 () (Array (_ BitVec 32) ValueCell!8009))

(assert (=> mapNonEmpty!26945 (= (arr!23995 _values!688) (store mapRest!26945 mapKey!26945 mapValue!26945))))

(declare-fun b!867127 () Bool)

(declare-fun res!589272 () Bool)

(assert (=> b!867127 (=> (not res!589272) (not e!483047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49934 (_ BitVec 32)) Bool)

(assert (=> b!867127 (= res!589272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867128 () Bool)

(declare-fun e!483051 () Bool)

(declare-fun e!483046 () Bool)

(assert (=> b!867128 (= e!483051 (and e!483046 mapRes!26945))))

(declare-fun condMapEmpty!26945 () Bool)

(declare-fun mapDefault!26945 () ValueCell!8009)

