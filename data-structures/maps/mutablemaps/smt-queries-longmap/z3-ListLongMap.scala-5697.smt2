; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73996 () Bool)

(assert start!73996)

(declare-fun b_free!14883 () Bool)

(declare-fun b_next!14883 () Bool)

(assert (=> start!73996 (= b_free!14883 (not b_next!14883))))

(declare-fun tp!52154 () Bool)

(declare-fun b_and!24653 () Bool)

(assert (=> start!73996 (= tp!52154 b_and!24653)))

(declare-fun b!869397 () Bool)

(declare-fun e!484194 () Bool)

(declare-fun e!484193 () Bool)

(assert (=> b!869397 (= e!484194 e!484193)))

(declare-fun res!590952 () Bool)

(assert (=> b!869397 (=> (not res!590952) (not e!484193))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869397 (= res!590952 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50170 0))(
  ( (array!50171 (arr!24112 (Array (_ BitVec 32) (_ BitVec 64))) (size!24553 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50170)

(declare-datatypes ((V!27739 0))(
  ( (V!27740 (val!8557 Int)) )
))
(declare-datatypes ((tuple2!11362 0))(
  ( (tuple2!11363 (_1!5691 (_ BitVec 64)) (_2!5691 V!27739)) )
))
(declare-datatypes ((List!17220 0))(
  ( (Nil!17217) (Cons!17216 (h!18347 tuple2!11362) (t!24265 List!17220)) )
))
(declare-datatypes ((ListLongMap!10145 0))(
  ( (ListLongMap!10146 (toList!5088 List!17220)) )
))
(declare-fun lt!394784 () ListLongMap!10145)

(declare-fun minValue!654 () V!27739)

(declare-fun zeroValue!654 () V!27739)

(declare-datatypes ((ValueCell!8070 0))(
  ( (ValueCellFull!8070 (v!10978 V!27739)) (EmptyCell!8070) )
))
(declare-datatypes ((array!50172 0))(
  ( (array!50173 (arr!24113 (Array (_ BitVec 32) ValueCell!8070)) (size!24554 (_ BitVec 32))) )
))
(declare-fun lt!394782 () array!50172)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3052 (array!50170 array!50172 (_ BitVec 32) (_ BitVec 32) V!27739 V!27739 (_ BitVec 32) Int) ListLongMap!10145)

(assert (=> b!869397 (= lt!394784 (getCurrentListMapNoExtraKeys!3052 _keys!868 lt!394782 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27739)

(declare-fun _values!688 () array!50172)

(assert (=> b!869397 (= lt!394782 (array!50173 (store (arr!24113 _values!688) i!612 (ValueCellFull!8070 v!557)) (size!24554 _values!688)))))

(declare-fun lt!394783 () ListLongMap!10145)

(assert (=> b!869397 (= lt!394783 (getCurrentListMapNoExtraKeys!3052 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!590947 () Bool)

(assert (=> start!73996 (=> (not res!590947) (not e!484194))))

(assert (=> start!73996 (= res!590947 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24553 _keys!868))))))

(assert (=> start!73996 e!484194))

(declare-fun tp_is_empty!17019 () Bool)

(assert (=> start!73996 tp_is_empty!17019))

(assert (=> start!73996 true))

(assert (=> start!73996 tp!52154))

(declare-fun array_inv!19018 (array!50170) Bool)

(assert (=> start!73996 (array_inv!19018 _keys!868)))

(declare-fun e!484197 () Bool)

(declare-fun array_inv!19019 (array!50172) Bool)

(assert (=> start!73996 (and (array_inv!19019 _values!688) e!484197)))

(declare-fun b!869398 () Bool)

(declare-fun res!590950 () Bool)

(assert (=> b!869398 (=> (not res!590950) (not e!484194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869398 (= res!590950 (validMask!0 mask!1196))))

(declare-fun b!869399 () Bool)

(assert (=> b!869399 (= e!484193 (not true))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2374 (ListLongMap!10145 tuple2!11362) ListLongMap!10145)

(assert (=> b!869399 (= (getCurrentListMapNoExtraKeys!3052 _keys!868 lt!394782 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2374 (getCurrentListMapNoExtraKeys!3052 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11363 k0!854 v!557)))))

(declare-datatypes ((Unit!29798 0))(
  ( (Unit!29799) )
))
(declare-fun lt!394785 () Unit!29798)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!605 (array!50170 array!50172 (_ BitVec 32) (_ BitVec 32) V!27739 V!27739 (_ BitVec 32) (_ BitVec 64) V!27739 (_ BitVec 32) Int) Unit!29798)

(assert (=> b!869399 (= lt!394785 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!605 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869400 () Bool)

(declare-fun res!590949 () Bool)

(assert (=> b!869400 (=> (not res!590949) (not e!484194))))

(declare-datatypes ((List!17221 0))(
  ( (Nil!17218) (Cons!17217 (h!18348 (_ BitVec 64)) (t!24266 List!17221)) )
))
(declare-fun arrayNoDuplicates!0 (array!50170 (_ BitVec 32) List!17221) Bool)

(assert (=> b!869400 (= res!590949 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17218))))

(declare-fun b!869401 () Bool)

(declare-fun res!590953 () Bool)

(assert (=> b!869401 (=> (not res!590953) (not e!484194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50170 (_ BitVec 32)) Bool)

(assert (=> b!869401 (= res!590953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869402 () Bool)

(declare-fun e!484196 () Bool)

(assert (=> b!869402 (= e!484196 tp_is_empty!17019)))

(declare-fun b!869403 () Bool)

(declare-fun e!484192 () Bool)

(assert (=> b!869403 (= e!484192 tp_is_empty!17019)))

(declare-fun mapIsEmpty!27128 () Bool)

(declare-fun mapRes!27128 () Bool)

(assert (=> mapIsEmpty!27128 mapRes!27128))

(declare-fun mapNonEmpty!27128 () Bool)

(declare-fun tp!52153 () Bool)

(assert (=> mapNonEmpty!27128 (= mapRes!27128 (and tp!52153 e!484192))))

(declare-fun mapRest!27128 () (Array (_ BitVec 32) ValueCell!8070))

(declare-fun mapKey!27128 () (_ BitVec 32))

(declare-fun mapValue!27128 () ValueCell!8070)

(assert (=> mapNonEmpty!27128 (= (arr!24113 _values!688) (store mapRest!27128 mapKey!27128 mapValue!27128))))

(declare-fun b!869404 () Bool)

(declare-fun res!590951 () Bool)

(assert (=> b!869404 (=> (not res!590951) (not e!484194))))

(assert (=> b!869404 (= res!590951 (and (= (select (arr!24112 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869405 () Bool)

(declare-fun res!590955 () Bool)

(assert (=> b!869405 (=> (not res!590955) (not e!484194))))

(assert (=> b!869405 (= res!590955 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24553 _keys!868))))))

(declare-fun b!869406 () Bool)

(declare-fun res!590948 () Bool)

(assert (=> b!869406 (=> (not res!590948) (not e!484194))))

(assert (=> b!869406 (= res!590948 (and (= (size!24554 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24553 _keys!868) (size!24554 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869407 () Bool)

(declare-fun res!590954 () Bool)

(assert (=> b!869407 (=> (not res!590954) (not e!484194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869407 (= res!590954 (validKeyInArray!0 k0!854))))

(declare-fun b!869408 () Bool)

(assert (=> b!869408 (= e!484197 (and e!484196 mapRes!27128))))

(declare-fun condMapEmpty!27128 () Bool)

(declare-fun mapDefault!27128 () ValueCell!8070)

(assert (=> b!869408 (= condMapEmpty!27128 (= (arr!24113 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8070)) mapDefault!27128)))))

(assert (= (and start!73996 res!590947) b!869398))

(assert (= (and b!869398 res!590950) b!869406))

(assert (= (and b!869406 res!590948) b!869401))

(assert (= (and b!869401 res!590953) b!869400))

(assert (= (and b!869400 res!590949) b!869405))

(assert (= (and b!869405 res!590955) b!869407))

(assert (= (and b!869407 res!590954) b!869404))

(assert (= (and b!869404 res!590951) b!869397))

(assert (= (and b!869397 res!590952) b!869399))

(assert (= (and b!869408 condMapEmpty!27128) mapIsEmpty!27128))

(assert (= (and b!869408 (not condMapEmpty!27128)) mapNonEmpty!27128))

(get-info :version)

(assert (= (and mapNonEmpty!27128 ((_ is ValueCellFull!8070) mapValue!27128)) b!869403))

(assert (= (and b!869408 ((_ is ValueCellFull!8070) mapDefault!27128)) b!869402))

(assert (= start!73996 b!869408))

(declare-fun m!811021 () Bool)

(assert (=> b!869400 m!811021))

(declare-fun m!811023 () Bool)

(assert (=> start!73996 m!811023))

(declare-fun m!811025 () Bool)

(assert (=> start!73996 m!811025))

(declare-fun m!811027 () Bool)

(assert (=> b!869404 m!811027))

(declare-fun m!811029 () Bool)

(assert (=> b!869399 m!811029))

(declare-fun m!811031 () Bool)

(assert (=> b!869399 m!811031))

(assert (=> b!869399 m!811031))

(declare-fun m!811033 () Bool)

(assert (=> b!869399 m!811033))

(declare-fun m!811035 () Bool)

(assert (=> b!869399 m!811035))

(declare-fun m!811037 () Bool)

(assert (=> b!869401 m!811037))

(declare-fun m!811039 () Bool)

(assert (=> b!869397 m!811039))

(declare-fun m!811041 () Bool)

(assert (=> b!869397 m!811041))

(declare-fun m!811043 () Bool)

(assert (=> b!869397 m!811043))

(declare-fun m!811045 () Bool)

(assert (=> b!869398 m!811045))

(declare-fun m!811047 () Bool)

(assert (=> mapNonEmpty!27128 m!811047))

(declare-fun m!811049 () Bool)

(assert (=> b!869407 m!811049))

(check-sat tp_is_empty!17019 (not b_next!14883) (not mapNonEmpty!27128) (not b!869400) (not b!869407) (not b!869397) b_and!24653 (not b!869399) (not b!869398) (not b!869401) (not start!73996))
(check-sat b_and!24653 (not b_next!14883))
