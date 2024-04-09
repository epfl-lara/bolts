; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73928 () Bool)

(assert start!73928)

(declare-fun b_free!14815 () Bool)

(declare-fun b_next!14815 () Bool)

(assert (=> start!73928 (= b_free!14815 (not b_next!14815))))

(declare-fun tp!51950 () Bool)

(declare-fun b_and!24585 () Bool)

(assert (=> start!73928 (= tp!51950 b_and!24585)))

(declare-fun mapNonEmpty!27026 () Bool)

(declare-fun mapRes!27026 () Bool)

(declare-fun tp!51949 () Bool)

(declare-fun e!483584 () Bool)

(assert (=> mapNonEmpty!27026 (= mapRes!27026 (and tp!51949 e!483584))))

(declare-datatypes ((V!27649 0))(
  ( (V!27650 (val!8523 Int)) )
))
(declare-datatypes ((ValueCell!8036 0))(
  ( (ValueCellFull!8036 (v!10944 V!27649)) (EmptyCell!8036) )
))
(declare-fun mapValue!27026 () ValueCell!8036)

(declare-fun mapRest!27026 () (Array (_ BitVec 32) ValueCell!8036))

(declare-datatypes ((array!50038 0))(
  ( (array!50039 (arr!24046 (Array (_ BitVec 32) ValueCell!8036)) (size!24487 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50038)

(declare-fun mapKey!27026 () (_ BitVec 32))

(assert (=> mapNonEmpty!27026 (= (arr!24046 _values!688) (store mapRest!27026 mapKey!27026 mapValue!27026))))

(declare-fun b!868174 () Bool)

(declare-fun res!590032 () Bool)

(declare-fun e!483582 () Bool)

(assert (=> b!868174 (=> (not res!590032) (not e!483582))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868174 (= res!590032 (validKeyInArray!0 k!854))))

(declare-fun b!868175 () Bool)

(declare-fun e!483585 () Bool)

(assert (=> b!868175 (= e!483585 (not true))))

(declare-fun v!557 () V!27649)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50040 0))(
  ( (array!50041 (arr!24047 (Array (_ BitVec 32) (_ BitVec 64))) (size!24488 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50040)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27649)

(declare-fun zeroValue!654 () V!27649)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!394374 () array!50038)

(declare-datatypes ((tuple2!11312 0))(
  ( (tuple2!11313 (_1!5666 (_ BitVec 64)) (_2!5666 V!27649)) )
))
(declare-datatypes ((List!17172 0))(
  ( (Nil!17169) (Cons!17168 (h!18299 tuple2!11312) (t!24217 List!17172)) )
))
(declare-datatypes ((ListLongMap!10095 0))(
  ( (ListLongMap!10096 (toList!5063 List!17172)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3027 (array!50040 array!50038 (_ BitVec 32) (_ BitVec 32) V!27649 V!27649 (_ BitVec 32) Int) ListLongMap!10095)

(declare-fun +!2353 (ListLongMap!10095 tuple2!11312) ListLongMap!10095)

(assert (=> b!868175 (= (getCurrentListMapNoExtraKeys!3027 _keys!868 lt!394374 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2353 (getCurrentListMapNoExtraKeys!3027 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11313 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29756 0))(
  ( (Unit!29757) )
))
(declare-fun lt!394375 () Unit!29756)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!584 (array!50040 array!50038 (_ BitVec 32) (_ BitVec 32) V!27649 V!27649 (_ BitVec 32) (_ BitVec 64) V!27649 (_ BitVec 32) Int) Unit!29756)

(assert (=> b!868175 (= lt!394375 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!584 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868176 () Bool)

(declare-fun res!590035 () Bool)

(assert (=> b!868176 (=> (not res!590035) (not e!483582))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50040 (_ BitVec 32)) Bool)

(assert (=> b!868176 (= res!590035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868177 () Bool)

(declare-fun res!590034 () Bool)

(assert (=> b!868177 (=> (not res!590034) (not e!483582))))

(declare-datatypes ((List!17173 0))(
  ( (Nil!17170) (Cons!17169 (h!18300 (_ BitVec 64)) (t!24218 List!17173)) )
))
(declare-fun arrayNoDuplicates!0 (array!50040 (_ BitVec 32) List!17173) Bool)

(assert (=> b!868177 (= res!590034 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17170))))

(declare-fun b!868178 () Bool)

(declare-fun res!590031 () Bool)

(assert (=> b!868178 (=> (not res!590031) (not e!483582))))

(assert (=> b!868178 (= res!590031 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24488 _keys!868))))))

(declare-fun mapIsEmpty!27026 () Bool)

(assert (=> mapIsEmpty!27026 mapRes!27026))

(declare-fun b!868179 () Bool)

(declare-fun tp_is_empty!16951 () Bool)

(assert (=> b!868179 (= e!483584 tp_is_empty!16951)))

(declare-fun b!868180 () Bool)

(assert (=> b!868180 (= e!483582 e!483585)))

(declare-fun res!590029 () Bool)

(assert (=> b!868180 (=> (not res!590029) (not e!483585))))

(assert (=> b!868180 (= res!590029 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394377 () ListLongMap!10095)

(assert (=> b!868180 (= lt!394377 (getCurrentListMapNoExtraKeys!3027 _keys!868 lt!394374 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!868180 (= lt!394374 (array!50039 (store (arr!24046 _values!688) i!612 (ValueCellFull!8036 v!557)) (size!24487 _values!688)))))

(declare-fun lt!394376 () ListLongMap!10095)

(assert (=> b!868180 (= lt!394376 (getCurrentListMapNoExtraKeys!3027 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868181 () Bool)

(declare-fun res!590030 () Bool)

(assert (=> b!868181 (=> (not res!590030) (not e!483582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868181 (= res!590030 (validMask!0 mask!1196))))

(declare-fun b!868182 () Bool)

(declare-fun e!483580 () Bool)

(assert (=> b!868182 (= e!483580 tp_is_empty!16951)))

(declare-fun b!868173 () Bool)

(declare-fun res!590037 () Bool)

(assert (=> b!868173 (=> (not res!590037) (not e!483582))))

(assert (=> b!868173 (= res!590037 (and (= (size!24487 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24488 _keys!868) (size!24487 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!590036 () Bool)

(assert (=> start!73928 (=> (not res!590036) (not e!483582))))

(assert (=> start!73928 (= res!590036 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24488 _keys!868))))))

(assert (=> start!73928 e!483582))

(assert (=> start!73928 tp_is_empty!16951))

(assert (=> start!73928 true))

(assert (=> start!73928 tp!51950))

(declare-fun array_inv!18974 (array!50040) Bool)

(assert (=> start!73928 (array_inv!18974 _keys!868)))

(declare-fun e!483581 () Bool)

(declare-fun array_inv!18975 (array!50038) Bool)

(assert (=> start!73928 (and (array_inv!18975 _values!688) e!483581)))

(declare-fun b!868183 () Bool)

(assert (=> b!868183 (= e!483581 (and e!483580 mapRes!27026))))

(declare-fun condMapEmpty!27026 () Bool)

(declare-fun mapDefault!27026 () ValueCell!8036)

