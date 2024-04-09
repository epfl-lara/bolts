; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74346 () Bool)

(assert start!74346)

(declare-fun b_free!15081 () Bool)

(declare-fun b_next!15081 () Bool)

(assert (=> start!74346 (= b_free!15081 (not b_next!15081))))

(declare-fun tp!52918 () Bool)

(declare-fun b_and!24875 () Bool)

(assert (=> start!74346 (= tp!52918 b_and!24875)))

(declare-fun b!874361 () Bool)

(declare-fun e!486853 () Bool)

(assert (=> b!874361 (= e!486853 false)))

(declare-datatypes ((V!28147 0))(
  ( (V!28148 (val!8710 Int)) )
))
(declare-fun v!557 () V!28147)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11506 0))(
  ( (tuple2!11507 (_1!5763 (_ BitVec 64)) (_2!5763 V!28147)) )
))
(declare-datatypes ((List!17395 0))(
  ( (Nil!17392) (Cons!17391 (h!18522 tuple2!11506) (t!24444 List!17395)) )
))
(declare-datatypes ((ListLongMap!10289 0))(
  ( (ListLongMap!10290 (toList!5160 List!17395)) )
))
(declare-fun lt!395901 () ListLongMap!10289)

(declare-datatypes ((array!50762 0))(
  ( (array!50763 (arr!24405 (Array (_ BitVec 32) (_ BitVec 64))) (size!24846 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50762)

(declare-datatypes ((ValueCell!8223 0))(
  ( (ValueCellFull!8223 (v!11135 V!28147)) (EmptyCell!8223) )
))
(declare-datatypes ((array!50764 0))(
  ( (array!50765 (arr!24406 (Array (_ BitVec 32) ValueCell!8223)) (size!24847 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50764)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28147)

(declare-fun zeroValue!654 () V!28147)

(declare-fun getCurrentListMapNoExtraKeys!3124 (array!50762 array!50764 (_ BitVec 32) (_ BitVec 32) V!28147 V!28147 (_ BitVec 32) Int) ListLongMap!10289)

(assert (=> b!874361 (= lt!395901 (getCurrentListMapNoExtraKeys!3124 _keys!868 (array!50765 (store (arr!24406 _values!688) i!612 (ValueCellFull!8223 v!557)) (size!24847 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395902 () ListLongMap!10289)

(assert (=> b!874361 (= lt!395902 (getCurrentListMapNoExtraKeys!3124 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874362 () Bool)

(declare-fun res!594316 () Bool)

(assert (=> b!874362 (=> (not res!594316) (not e!486853))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874362 (= res!594316 (validKeyInArray!0 k0!854))))

(declare-fun b!874363 () Bool)

(declare-fun res!594312 () Bool)

(assert (=> b!874363 (=> (not res!594312) (not e!486853))))

(assert (=> b!874363 (= res!594312 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24846 _keys!868))))))

(declare-fun b!874364 () Bool)

(declare-fun e!486850 () Bool)

(declare-fun tp_is_empty!17325 () Bool)

(assert (=> b!874364 (= e!486850 tp_is_empty!17325)))

(declare-fun b!874365 () Bool)

(declare-fun res!594314 () Bool)

(assert (=> b!874365 (=> (not res!594314) (not e!486853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50762 (_ BitVec 32)) Bool)

(assert (=> b!874365 (= res!594314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!594318 () Bool)

(assert (=> start!74346 (=> (not res!594318) (not e!486853))))

(assert (=> start!74346 (= res!594318 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24846 _keys!868))))))

(assert (=> start!74346 e!486853))

(assert (=> start!74346 tp_is_empty!17325))

(assert (=> start!74346 true))

(assert (=> start!74346 tp!52918))

(declare-fun array_inv!19228 (array!50762) Bool)

(assert (=> start!74346 (array_inv!19228 _keys!868)))

(declare-fun e!486849 () Bool)

(declare-fun array_inv!19229 (array!50764) Bool)

(assert (=> start!74346 (and (array_inv!19229 _values!688) e!486849)))

(declare-fun b!874366 () Bool)

(declare-fun res!594313 () Bool)

(assert (=> b!874366 (=> (not res!594313) (not e!486853))))

(declare-datatypes ((List!17396 0))(
  ( (Nil!17393) (Cons!17392 (h!18523 (_ BitVec 64)) (t!24445 List!17396)) )
))
(declare-fun arrayNoDuplicates!0 (array!50762 (_ BitVec 32) List!17396) Bool)

(assert (=> b!874366 (= res!594313 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17393))))

(declare-fun b!874367 () Bool)

(declare-fun e!486851 () Bool)

(assert (=> b!874367 (= e!486851 tp_is_empty!17325)))

(declare-fun b!874368 () Bool)

(declare-fun mapRes!27596 () Bool)

(assert (=> b!874368 (= e!486849 (and e!486851 mapRes!27596))))

(declare-fun condMapEmpty!27596 () Bool)

(declare-fun mapDefault!27596 () ValueCell!8223)

(assert (=> b!874368 (= condMapEmpty!27596 (= (arr!24406 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8223)) mapDefault!27596)))))

(declare-fun b!874369 () Bool)

(declare-fun res!594319 () Bool)

(assert (=> b!874369 (=> (not res!594319) (not e!486853))))

(assert (=> b!874369 (= res!594319 (and (= (select (arr!24405 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27596 () Bool)

(assert (=> mapIsEmpty!27596 mapRes!27596))

(declare-fun b!874370 () Bool)

(declare-fun res!594317 () Bool)

(assert (=> b!874370 (=> (not res!594317) (not e!486853))))

(assert (=> b!874370 (= res!594317 (and (= (size!24847 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24846 _keys!868) (size!24847 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874371 () Bool)

(declare-fun res!594315 () Bool)

(assert (=> b!874371 (=> (not res!594315) (not e!486853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874371 (= res!594315 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27596 () Bool)

(declare-fun tp!52919 () Bool)

(assert (=> mapNonEmpty!27596 (= mapRes!27596 (and tp!52919 e!486850))))

(declare-fun mapKey!27596 () (_ BitVec 32))

(declare-fun mapRest!27596 () (Array (_ BitVec 32) ValueCell!8223))

(declare-fun mapValue!27596 () ValueCell!8223)

(assert (=> mapNonEmpty!27596 (= (arr!24406 _values!688) (store mapRest!27596 mapKey!27596 mapValue!27596))))

(assert (= (and start!74346 res!594318) b!874371))

(assert (= (and b!874371 res!594315) b!874370))

(assert (= (and b!874370 res!594317) b!874365))

(assert (= (and b!874365 res!594314) b!874366))

(assert (= (and b!874366 res!594313) b!874363))

(assert (= (and b!874363 res!594312) b!874362))

(assert (= (and b!874362 res!594316) b!874369))

(assert (= (and b!874369 res!594319) b!874361))

(assert (= (and b!874368 condMapEmpty!27596) mapIsEmpty!27596))

(assert (= (and b!874368 (not condMapEmpty!27596)) mapNonEmpty!27596))

(get-info :version)

(assert (= (and mapNonEmpty!27596 ((_ is ValueCellFull!8223) mapValue!27596)) b!874364))

(assert (= (and b!874368 ((_ is ValueCellFull!8223) mapDefault!27596)) b!874367))

(assert (= start!74346 b!874368))

(declare-fun m!814609 () Bool)

(assert (=> b!874366 m!814609))

(declare-fun m!814611 () Bool)

(assert (=> mapNonEmpty!27596 m!814611))

(declare-fun m!814613 () Bool)

(assert (=> start!74346 m!814613))

(declare-fun m!814615 () Bool)

(assert (=> start!74346 m!814615))

(declare-fun m!814617 () Bool)

(assert (=> b!874369 m!814617))

(declare-fun m!814619 () Bool)

(assert (=> b!874371 m!814619))

(declare-fun m!814621 () Bool)

(assert (=> b!874362 m!814621))

(declare-fun m!814623 () Bool)

(assert (=> b!874361 m!814623))

(declare-fun m!814625 () Bool)

(assert (=> b!874361 m!814625))

(declare-fun m!814627 () Bool)

(assert (=> b!874361 m!814627))

(declare-fun m!814629 () Bool)

(assert (=> b!874365 m!814629))

(check-sat (not b_next!15081) tp_is_empty!17325 (not b!874362) (not mapNonEmpty!27596) b_and!24875 (not b!874365) (not b!874361) (not b!874366) (not b!874371) (not start!74346))
(check-sat b_and!24875 (not b_next!15081))
