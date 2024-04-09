; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74600 () Bool)

(assert start!74600)

(declare-fun b_free!15261 () Bool)

(declare-fun b_next!15261 () Bool)

(assert (=> start!74600 (= b_free!15261 (not b_next!15261))))

(declare-fun tp!53465 () Bool)

(declare-fun b_and!25155 () Bool)

(assert (=> start!74600 (= tp!53465 b_and!25155)))

(declare-fun b!878492 () Bool)

(declare-fun res!596942 () Bool)

(declare-fun e!488940 () Bool)

(assert (=> b!878492 (=> (not res!596942) (not e!488940))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51116 0))(
  ( (array!51117 (arr!24580 (Array (_ BitVec 32) (_ BitVec 64))) (size!25021 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51116)

(declare-datatypes ((V!28387 0))(
  ( (V!28388 (val!8800 Int)) )
))
(declare-datatypes ((ValueCell!8313 0))(
  ( (ValueCellFull!8313 (v!11236 V!28387)) (EmptyCell!8313) )
))
(declare-datatypes ((array!51118 0))(
  ( (array!51119 (arr!24581 (Array (_ BitVec 32) ValueCell!8313)) (size!25022 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51118)

(assert (=> b!878492 (= res!596942 (and (= (size!25022 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25021 _keys!868) (size!25022 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27873 () Bool)

(declare-fun mapRes!27873 () Bool)

(declare-fun tp!53466 () Bool)

(declare-fun e!488943 () Bool)

(assert (=> mapNonEmpty!27873 (= mapRes!27873 (and tp!53466 e!488943))))

(declare-fun mapValue!27873 () ValueCell!8313)

(declare-fun mapRest!27873 () (Array (_ BitVec 32) ValueCell!8313))

(declare-fun mapKey!27873 () (_ BitVec 32))

(assert (=> mapNonEmpty!27873 (= (arr!24581 _values!688) (store mapRest!27873 mapKey!27873 mapValue!27873))))

(declare-fun b!878493 () Bool)

(declare-fun e!488939 () Bool)

(declare-fun e!488942 () Bool)

(assert (=> b!878493 (= e!488939 (and e!488942 mapRes!27873))))

(declare-fun condMapEmpty!27873 () Bool)

(declare-fun mapDefault!27873 () ValueCell!8313)

(assert (=> b!878493 (= condMapEmpty!27873 (= (arr!24581 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8313)) mapDefault!27873)))))

(declare-fun mapIsEmpty!27873 () Bool)

(assert (=> mapIsEmpty!27873 mapRes!27873))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun b!878494 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878494 (= e!488940 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25021 _keys!868)) (bvsge (bvsub (size!25021 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (bvsub (size!25021 _keys!868) from!1053))))))

(declare-fun v!557 () V!28387)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28387)

(declare-fun zeroValue!654 () V!28387)

(declare-datatypes ((tuple2!11654 0))(
  ( (tuple2!11655 (_1!5837 (_ BitVec 64)) (_2!5837 V!28387)) )
))
(declare-datatypes ((List!17534 0))(
  ( (Nil!17531) (Cons!17530 (h!18661 tuple2!11654) (t!24631 List!17534)) )
))
(declare-datatypes ((ListLongMap!10437 0))(
  ( (ListLongMap!10438 (toList!5234 List!17534)) )
))
(declare-fun lt!397237 () ListLongMap!10437)

(declare-fun getCurrentListMapNoExtraKeys!3196 (array!51116 array!51118 (_ BitVec 32) (_ BitVec 32) V!28387 V!28387 (_ BitVec 32) Int) ListLongMap!10437)

(assert (=> b!878494 (= lt!397237 (getCurrentListMapNoExtraKeys!3196 _keys!868 (array!51119 (store (arr!24581 _values!688) i!612 (ValueCellFull!8313 v!557)) (size!25022 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397238 () ListLongMap!10437)

(assert (=> b!878494 (= lt!397238 (getCurrentListMapNoExtraKeys!3196 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878495 () Bool)

(declare-fun res!596943 () Bool)

(assert (=> b!878495 (=> (not res!596943) (not e!488940))))

(assert (=> b!878495 (= res!596943 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25021 _keys!868))))))

(declare-fun b!878496 () Bool)

(declare-fun res!596944 () Bool)

(assert (=> b!878496 (=> (not res!596944) (not e!488940))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878496 (= res!596944 (validKeyInArray!0 k0!854))))

(declare-fun res!596948 () Bool)

(assert (=> start!74600 (=> (not res!596948) (not e!488940))))

(assert (=> start!74600 (= res!596948 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25021 _keys!868))))))

(assert (=> start!74600 e!488940))

(declare-fun tp_is_empty!17505 () Bool)

(assert (=> start!74600 tp_is_empty!17505))

(assert (=> start!74600 true))

(assert (=> start!74600 tp!53465))

(declare-fun array_inv!19346 (array!51116) Bool)

(assert (=> start!74600 (array_inv!19346 _keys!868)))

(declare-fun array_inv!19347 (array!51118) Bool)

(assert (=> start!74600 (and (array_inv!19347 _values!688) e!488939)))

(declare-fun b!878497 () Bool)

(assert (=> b!878497 (= e!488942 tp_is_empty!17505)))

(declare-fun b!878498 () Bool)

(declare-fun res!596946 () Bool)

(assert (=> b!878498 (=> (not res!596946) (not e!488940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51116 (_ BitVec 32)) Bool)

(assert (=> b!878498 (= res!596946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878499 () Bool)

(declare-fun res!596947 () Bool)

(assert (=> b!878499 (=> (not res!596947) (not e!488940))))

(assert (=> b!878499 (= res!596947 (and (= (select (arr!24580 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!878500 () Bool)

(declare-fun res!596945 () Bool)

(assert (=> b!878500 (=> (not res!596945) (not e!488940))))

(declare-datatypes ((List!17535 0))(
  ( (Nil!17532) (Cons!17531 (h!18662 (_ BitVec 64)) (t!24632 List!17535)) )
))
(declare-fun arrayNoDuplicates!0 (array!51116 (_ BitVec 32) List!17535) Bool)

(assert (=> b!878500 (= res!596945 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17532))))

(declare-fun b!878501 () Bool)

(declare-fun res!596949 () Bool)

(assert (=> b!878501 (=> (not res!596949) (not e!488940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878501 (= res!596949 (validMask!0 mask!1196))))

(declare-fun b!878502 () Bool)

(assert (=> b!878502 (= e!488943 tp_is_empty!17505)))

(assert (= (and start!74600 res!596948) b!878501))

(assert (= (and b!878501 res!596949) b!878492))

(assert (= (and b!878492 res!596942) b!878498))

(assert (= (and b!878498 res!596946) b!878500))

(assert (= (and b!878500 res!596945) b!878495))

(assert (= (and b!878495 res!596943) b!878496))

(assert (= (and b!878496 res!596944) b!878499))

(assert (= (and b!878499 res!596947) b!878494))

(assert (= (and b!878493 condMapEmpty!27873) mapIsEmpty!27873))

(assert (= (and b!878493 (not condMapEmpty!27873)) mapNonEmpty!27873))

(get-info :version)

(assert (= (and mapNonEmpty!27873 ((_ is ValueCellFull!8313) mapValue!27873)) b!878502))

(assert (= (and b!878493 ((_ is ValueCellFull!8313) mapDefault!27873)) b!878497))

(assert (= start!74600 b!878493))

(declare-fun m!818401 () Bool)

(assert (=> b!878494 m!818401))

(declare-fun m!818403 () Bool)

(assert (=> b!878494 m!818403))

(declare-fun m!818405 () Bool)

(assert (=> b!878494 m!818405))

(declare-fun m!818407 () Bool)

(assert (=> b!878496 m!818407))

(declare-fun m!818409 () Bool)

(assert (=> b!878500 m!818409))

(declare-fun m!818411 () Bool)

(assert (=> b!878498 m!818411))

(declare-fun m!818413 () Bool)

(assert (=> b!878499 m!818413))

(declare-fun m!818415 () Bool)

(assert (=> b!878501 m!818415))

(declare-fun m!818417 () Bool)

(assert (=> start!74600 m!818417))

(declare-fun m!818419 () Bool)

(assert (=> start!74600 m!818419))

(declare-fun m!818421 () Bool)

(assert (=> mapNonEmpty!27873 m!818421))

(check-sat (not b!878494) (not start!74600) (not b_next!15261) (not mapNonEmpty!27873) (not b!878496) tp_is_empty!17505 (not b!878500) (not b!878501) b_and!25155 (not b!878498))
(check-sat b_and!25155 (not b_next!15261))
