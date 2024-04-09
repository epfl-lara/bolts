; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73948 () Bool)

(assert start!73948)

(declare-fun b_free!14835 () Bool)

(declare-fun b_next!14835 () Bool)

(assert (=> start!73948 (= b_free!14835 (not b_next!14835))))

(declare-fun tp!52009 () Bool)

(declare-fun b_and!24605 () Bool)

(assert (=> start!73948 (= tp!52009 b_and!24605)))

(declare-fun b!868533 () Bool)

(declare-fun e!483764 () Bool)

(declare-fun e!483761 () Bool)

(assert (=> b!868533 (= e!483764 e!483761)))

(declare-fun res!590305 () Bool)

(assert (=> b!868533 (=> (not res!590305) (not e!483761))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868533 (= res!590305 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27675 0))(
  ( (V!27676 (val!8533 Int)) )
))
(declare-datatypes ((ValueCell!8046 0))(
  ( (ValueCellFull!8046 (v!10954 V!27675)) (EmptyCell!8046) )
))
(declare-datatypes ((array!50076 0))(
  ( (array!50077 (arr!24065 (Array (_ BitVec 32) ValueCell!8046)) (size!24506 (_ BitVec 32))) )
))
(declare-fun lt!394494 () array!50076)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11326 0))(
  ( (tuple2!11327 (_1!5673 (_ BitVec 64)) (_2!5673 V!27675)) )
))
(declare-datatypes ((List!17186 0))(
  ( (Nil!17183) (Cons!17182 (h!18313 tuple2!11326) (t!24231 List!17186)) )
))
(declare-datatypes ((ListLongMap!10109 0))(
  ( (ListLongMap!10110 (toList!5070 List!17186)) )
))
(declare-fun lt!394497 () ListLongMap!10109)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50078 0))(
  ( (array!50079 (arr!24066 (Array (_ BitVec 32) (_ BitVec 64))) (size!24507 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50078)

(declare-fun minValue!654 () V!27675)

(declare-fun zeroValue!654 () V!27675)

(declare-fun getCurrentListMapNoExtraKeys!3034 (array!50078 array!50076 (_ BitVec 32) (_ BitVec 32) V!27675 V!27675 (_ BitVec 32) Int) ListLongMap!10109)

(assert (=> b!868533 (= lt!394497 (getCurrentListMapNoExtraKeys!3034 _keys!868 lt!394494 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27675)

(declare-fun _values!688 () array!50076)

(assert (=> b!868533 (= lt!394494 (array!50077 (store (arr!24065 _values!688) i!612 (ValueCellFull!8046 v!557)) (size!24506 _values!688)))))

(declare-fun lt!394496 () ListLongMap!10109)

(assert (=> b!868533 (= lt!394496 (getCurrentListMapNoExtraKeys!3034 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868534 () Bool)

(declare-fun res!590306 () Bool)

(assert (=> b!868534 (=> (not res!590306) (not e!483764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868534 (= res!590306 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27056 () Bool)

(declare-fun mapRes!27056 () Bool)

(declare-fun tp!52010 () Bool)

(declare-fun e!483765 () Bool)

(assert (=> mapNonEmpty!27056 (= mapRes!27056 (and tp!52010 e!483765))))

(declare-fun mapValue!27056 () ValueCell!8046)

(declare-fun mapRest!27056 () (Array (_ BitVec 32) ValueCell!8046))

(declare-fun mapKey!27056 () (_ BitVec 32))

(assert (=> mapNonEmpty!27056 (= (arr!24065 _values!688) (store mapRest!27056 mapKey!27056 mapValue!27056))))

(declare-fun b!868535 () Bool)

(declare-fun res!590302 () Bool)

(assert (=> b!868535 (=> (not res!590302) (not e!483764))))

(assert (=> b!868535 (= res!590302 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24507 _keys!868))))))

(declare-fun b!868536 () Bool)

(declare-fun res!590300 () Bool)

(assert (=> b!868536 (=> (not res!590300) (not e!483764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50078 (_ BitVec 32)) Bool)

(assert (=> b!868536 (= res!590300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868537 () Bool)

(declare-fun res!590301 () Bool)

(assert (=> b!868537 (=> (not res!590301) (not e!483764))))

(declare-datatypes ((List!17187 0))(
  ( (Nil!17184) (Cons!17183 (h!18314 (_ BitVec 64)) (t!24232 List!17187)) )
))
(declare-fun arrayNoDuplicates!0 (array!50078 (_ BitVec 32) List!17187) Bool)

(assert (=> b!868537 (= res!590301 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17184))))

(declare-fun b!868538 () Bool)

(declare-fun e!483760 () Bool)

(declare-fun e!483762 () Bool)

(assert (=> b!868538 (= e!483760 (and e!483762 mapRes!27056))))

(declare-fun condMapEmpty!27056 () Bool)

(declare-fun mapDefault!27056 () ValueCell!8046)

(assert (=> b!868538 (= condMapEmpty!27056 (= (arr!24065 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8046)) mapDefault!27056)))))

(declare-fun res!590299 () Bool)

(assert (=> start!73948 (=> (not res!590299) (not e!483764))))

(assert (=> start!73948 (= res!590299 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24507 _keys!868))))))

(assert (=> start!73948 e!483764))

(declare-fun tp_is_empty!16971 () Bool)

(assert (=> start!73948 tp_is_empty!16971))

(assert (=> start!73948 true))

(assert (=> start!73948 tp!52009))

(declare-fun array_inv!18986 (array!50078) Bool)

(assert (=> start!73948 (array_inv!18986 _keys!868)))

(declare-fun array_inv!18987 (array!50076) Bool)

(assert (=> start!73948 (and (array_inv!18987 _values!688) e!483760)))

(declare-fun b!868539 () Bool)

(assert (=> b!868539 (= e!483761 (not true))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2360 (ListLongMap!10109 tuple2!11326) ListLongMap!10109)

(assert (=> b!868539 (= (getCurrentListMapNoExtraKeys!3034 _keys!868 lt!394494 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2360 (getCurrentListMapNoExtraKeys!3034 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11327 k0!854 v!557)))))

(declare-datatypes ((Unit!29770 0))(
  ( (Unit!29771) )
))
(declare-fun lt!394495 () Unit!29770)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!591 (array!50078 array!50076 (_ BitVec 32) (_ BitVec 32) V!27675 V!27675 (_ BitVec 32) (_ BitVec 64) V!27675 (_ BitVec 32) Int) Unit!29770)

(assert (=> b!868539 (= lt!394495 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!591 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27056 () Bool)

(assert (=> mapIsEmpty!27056 mapRes!27056))

(declare-fun b!868540 () Bool)

(assert (=> b!868540 (= e!483765 tp_is_empty!16971)))

(declare-fun b!868541 () Bool)

(assert (=> b!868541 (= e!483762 tp_is_empty!16971)))

(declare-fun b!868542 () Bool)

(declare-fun res!590303 () Bool)

(assert (=> b!868542 (=> (not res!590303) (not e!483764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868542 (= res!590303 (validKeyInArray!0 k0!854))))

(declare-fun b!868543 () Bool)

(declare-fun res!590307 () Bool)

(assert (=> b!868543 (=> (not res!590307) (not e!483764))))

(assert (=> b!868543 (= res!590307 (and (= (size!24506 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24507 _keys!868) (size!24506 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!868544 () Bool)

(declare-fun res!590304 () Bool)

(assert (=> b!868544 (=> (not res!590304) (not e!483764))))

(assert (=> b!868544 (= res!590304 (and (= (select (arr!24066 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!73948 res!590299) b!868534))

(assert (= (and b!868534 res!590306) b!868543))

(assert (= (and b!868543 res!590307) b!868536))

(assert (= (and b!868536 res!590300) b!868537))

(assert (= (and b!868537 res!590301) b!868535))

(assert (= (and b!868535 res!590302) b!868542))

(assert (= (and b!868542 res!590303) b!868544))

(assert (= (and b!868544 res!590304) b!868533))

(assert (= (and b!868533 res!590305) b!868539))

(assert (= (and b!868538 condMapEmpty!27056) mapIsEmpty!27056))

(assert (= (and b!868538 (not condMapEmpty!27056)) mapNonEmpty!27056))

(get-info :version)

(assert (= (and mapNonEmpty!27056 ((_ is ValueCellFull!8046) mapValue!27056)) b!868540))

(assert (= (and b!868538 ((_ is ValueCellFull!8046) mapDefault!27056)) b!868541))

(assert (= start!73948 b!868538))

(declare-fun m!810301 () Bool)

(assert (=> b!868533 m!810301))

(declare-fun m!810303 () Bool)

(assert (=> b!868533 m!810303))

(declare-fun m!810305 () Bool)

(assert (=> b!868533 m!810305))

(declare-fun m!810307 () Bool)

(assert (=> b!868537 m!810307))

(declare-fun m!810309 () Bool)

(assert (=> b!868536 m!810309))

(declare-fun m!810311 () Bool)

(assert (=> b!868534 m!810311))

(declare-fun m!810313 () Bool)

(assert (=> start!73948 m!810313))

(declare-fun m!810315 () Bool)

(assert (=> start!73948 m!810315))

(declare-fun m!810317 () Bool)

(assert (=> b!868539 m!810317))

(declare-fun m!810319 () Bool)

(assert (=> b!868539 m!810319))

(assert (=> b!868539 m!810319))

(declare-fun m!810321 () Bool)

(assert (=> b!868539 m!810321))

(declare-fun m!810323 () Bool)

(assert (=> b!868539 m!810323))

(declare-fun m!810325 () Bool)

(assert (=> b!868542 m!810325))

(declare-fun m!810327 () Bool)

(assert (=> mapNonEmpty!27056 m!810327))

(declare-fun m!810329 () Bool)

(assert (=> b!868544 m!810329))

(check-sat (not b!868536) (not b!868533) (not b!868542) b_and!24605 (not mapNonEmpty!27056) (not b!868534) (not b_next!14835) (not start!73948) tp_is_empty!16971 (not b!868537) (not b!868539))
(check-sat b_and!24605 (not b_next!14835))
