; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74612 () Bool)

(assert start!74612)

(declare-fun b_free!15273 () Bool)

(declare-fun b_next!15273 () Bool)

(assert (=> start!74612 (= b_free!15273 (not b_next!15273))))

(declare-fun tp!53502 () Bool)

(declare-fun b_and!25167 () Bool)

(assert (=> start!74612 (= tp!53502 b_and!25167)))

(declare-fun b!878709 () Bool)

(declare-fun e!489051 () Bool)

(declare-fun tp_is_empty!17517 () Bool)

(assert (=> b!878709 (= e!489051 tp_is_empty!17517)))

(declare-fun b!878710 () Bool)

(declare-fun res!597108 () Bool)

(declare-fun e!489049 () Bool)

(assert (=> b!878710 (=> (not res!597108) (not e!489049))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51140 0))(
  ( (array!51141 (arr!24592 (Array (_ BitVec 32) (_ BitVec 64))) (size!25033 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51140)

(declare-datatypes ((V!28403 0))(
  ( (V!28404 (val!8806 Int)) )
))
(declare-datatypes ((ValueCell!8319 0))(
  ( (ValueCellFull!8319 (v!11242 V!28403)) (EmptyCell!8319) )
))
(declare-datatypes ((array!51142 0))(
  ( (array!51143 (arr!24593 (Array (_ BitVec 32) ValueCell!8319)) (size!25034 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51142)

(assert (=> b!878710 (= res!597108 (and (= (size!25034 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25033 _keys!868) (size!25034 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878711 () Bool)

(declare-fun e!489050 () Bool)

(declare-fun mapRes!27891 () Bool)

(assert (=> b!878711 (= e!489050 (and e!489051 mapRes!27891))))

(declare-fun condMapEmpty!27891 () Bool)

(declare-fun mapDefault!27891 () ValueCell!8319)

(assert (=> b!878711 (= condMapEmpty!27891 (= (arr!24593 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8319)) mapDefault!27891)))))

(declare-fun b!878712 () Bool)

(declare-fun res!597113 () Bool)

(assert (=> b!878712 (=> (not res!597113) (not e!489049))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!878712 (= res!597113 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25033 _keys!868))))))

(declare-fun mapNonEmpty!27891 () Bool)

(declare-fun tp!53501 () Bool)

(declare-fun e!489054 () Bool)

(assert (=> mapNonEmpty!27891 (= mapRes!27891 (and tp!53501 e!489054))))

(declare-fun mapRest!27891 () (Array (_ BitVec 32) ValueCell!8319))

(declare-fun mapValue!27891 () ValueCell!8319)

(declare-fun mapKey!27891 () (_ BitVec 32))

(assert (=> mapNonEmpty!27891 (= (arr!24593 _values!688) (store mapRest!27891 mapKey!27891 mapValue!27891))))

(declare-fun b!878713 () Bool)

(declare-fun res!597114 () Bool)

(assert (=> b!878713 (=> (not res!597114) (not e!489049))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878713 (= res!597114 (and (= (select (arr!24592 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!878714 () Bool)

(declare-fun e!489048 () Bool)

(assert (=> b!878714 (= e!489048 (bvslt i!612 (size!25034 _values!688)))))

(declare-fun b!878715 () Bool)

(declare-fun e!489052 () Bool)

(assert (=> b!878715 (= e!489049 e!489052)))

(declare-fun res!597109 () Bool)

(assert (=> b!878715 (=> (not res!597109) (not e!489052))))

(assert (=> b!878715 (= res!597109 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11664 0))(
  ( (tuple2!11665 (_1!5842 (_ BitVec 64)) (_2!5842 V!28403)) )
))
(declare-datatypes ((List!17543 0))(
  ( (Nil!17540) (Cons!17539 (h!18670 tuple2!11664) (t!24640 List!17543)) )
))
(declare-datatypes ((ListLongMap!10447 0))(
  ( (ListLongMap!10448 (toList!5239 List!17543)) )
))
(declare-fun lt!397304 () ListLongMap!10447)

(declare-fun lt!397303 () array!51142)

(declare-fun minValue!654 () V!28403)

(declare-fun zeroValue!654 () V!28403)

(declare-fun getCurrentListMapNoExtraKeys!3201 (array!51140 array!51142 (_ BitVec 32) (_ BitVec 32) V!28403 V!28403 (_ BitVec 32) Int) ListLongMap!10447)

(assert (=> b!878715 (= lt!397304 (getCurrentListMapNoExtraKeys!3201 _keys!868 lt!397303 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28403)

(assert (=> b!878715 (= lt!397303 (array!51143 (store (arr!24593 _values!688) i!612 (ValueCellFull!8319 v!557)) (size!25034 _values!688)))))

(declare-fun lt!397302 () ListLongMap!10447)

(assert (=> b!878715 (= lt!397302 (getCurrentListMapNoExtraKeys!3201 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!597107 () Bool)

(assert (=> start!74612 (=> (not res!597107) (not e!489049))))

(assert (=> start!74612 (= res!597107 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25033 _keys!868))))))

(assert (=> start!74612 e!489049))

(assert (=> start!74612 tp_is_empty!17517))

(assert (=> start!74612 true))

(assert (=> start!74612 tp!53502))

(declare-fun array_inv!19358 (array!51140) Bool)

(assert (=> start!74612 (array_inv!19358 _keys!868)))

(declare-fun array_inv!19359 (array!51142) Bool)

(assert (=> start!74612 (and (array_inv!19359 _values!688) e!489050)))

(declare-fun b!878716 () Bool)

(declare-fun res!597111 () Bool)

(assert (=> b!878716 (=> (not res!597111) (not e!489049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51140 (_ BitVec 32)) Bool)

(assert (=> b!878716 (= res!597111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878717 () Bool)

(declare-fun res!597110 () Bool)

(assert (=> b!878717 (=> (not res!597110) (not e!489049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878717 (= res!597110 (validMask!0 mask!1196))))

(declare-fun b!878718 () Bool)

(declare-fun res!597106 () Bool)

(assert (=> b!878718 (=> (not res!597106) (not e!489049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878718 (= res!597106 (validKeyInArray!0 k0!854))))

(declare-fun b!878719 () Bool)

(assert (=> b!878719 (= e!489054 tp_is_empty!17517)))

(declare-fun b!878720 () Bool)

(assert (=> b!878720 (= e!489052 (not e!489048))))

(declare-fun res!597112 () Bool)

(assert (=> b!878720 (=> res!597112 e!489048)))

(assert (=> b!878720 (= res!597112 (not (validKeyInArray!0 (select (arr!24592 _keys!868) from!1053))))))

(declare-fun +!2445 (ListLongMap!10447 tuple2!11664) ListLongMap!10447)

(assert (=> b!878720 (= (getCurrentListMapNoExtraKeys!3201 _keys!868 lt!397303 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2445 (getCurrentListMapNoExtraKeys!3201 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11665 k0!854 v!557)))))

(declare-datatypes ((Unit!29970 0))(
  ( (Unit!29971) )
))
(declare-fun lt!397301 () Unit!29970)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!677 (array!51140 array!51142 (_ BitVec 32) (_ BitVec 32) V!28403 V!28403 (_ BitVec 32) (_ BitVec 64) V!28403 (_ BitVec 32) Int) Unit!29970)

(assert (=> b!878720 (= lt!397301 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!677 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878721 () Bool)

(declare-fun res!597105 () Bool)

(assert (=> b!878721 (=> (not res!597105) (not e!489049))))

(declare-datatypes ((List!17544 0))(
  ( (Nil!17541) (Cons!17540 (h!18671 (_ BitVec 64)) (t!24641 List!17544)) )
))
(declare-fun arrayNoDuplicates!0 (array!51140 (_ BitVec 32) List!17544) Bool)

(assert (=> b!878721 (= res!597105 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17541))))

(declare-fun mapIsEmpty!27891 () Bool)

(assert (=> mapIsEmpty!27891 mapRes!27891))

(assert (= (and start!74612 res!597107) b!878717))

(assert (= (and b!878717 res!597110) b!878710))

(assert (= (and b!878710 res!597108) b!878716))

(assert (= (and b!878716 res!597111) b!878721))

(assert (= (and b!878721 res!597105) b!878712))

(assert (= (and b!878712 res!597113) b!878718))

(assert (= (and b!878718 res!597106) b!878713))

(assert (= (and b!878713 res!597114) b!878715))

(assert (= (and b!878715 res!597109) b!878720))

(assert (= (and b!878720 (not res!597112)) b!878714))

(assert (= (and b!878711 condMapEmpty!27891) mapIsEmpty!27891))

(assert (= (and b!878711 (not condMapEmpty!27891)) mapNonEmpty!27891))

(get-info :version)

(assert (= (and mapNonEmpty!27891 ((_ is ValueCellFull!8319) mapValue!27891)) b!878719))

(assert (= (and b!878711 ((_ is ValueCellFull!8319) mapDefault!27891)) b!878709))

(assert (= start!74612 b!878711))

(declare-fun m!818569 () Bool)

(assert (=> b!878716 m!818569))

(declare-fun m!818571 () Bool)

(assert (=> b!878720 m!818571))

(declare-fun m!818573 () Bool)

(assert (=> b!878720 m!818573))

(declare-fun m!818575 () Bool)

(assert (=> b!878720 m!818575))

(assert (=> b!878720 m!818571))

(declare-fun m!818577 () Bool)

(assert (=> b!878720 m!818577))

(declare-fun m!818579 () Bool)

(assert (=> b!878720 m!818579))

(assert (=> b!878720 m!818577))

(declare-fun m!818581 () Bool)

(assert (=> b!878720 m!818581))

(declare-fun m!818583 () Bool)

(assert (=> b!878717 m!818583))

(declare-fun m!818585 () Bool)

(assert (=> mapNonEmpty!27891 m!818585))

(declare-fun m!818587 () Bool)

(assert (=> b!878715 m!818587))

(declare-fun m!818589 () Bool)

(assert (=> b!878715 m!818589))

(declare-fun m!818591 () Bool)

(assert (=> b!878715 m!818591))

(declare-fun m!818593 () Bool)

(assert (=> b!878718 m!818593))

(declare-fun m!818595 () Bool)

(assert (=> b!878721 m!818595))

(declare-fun m!818597 () Bool)

(assert (=> b!878713 m!818597))

(declare-fun m!818599 () Bool)

(assert (=> start!74612 m!818599))

(declare-fun m!818601 () Bool)

(assert (=> start!74612 m!818601))

(check-sat (not b!878720) (not b!878716) (not start!74612) (not b!878718) (not b!878715) (not b!878721) tp_is_empty!17517 b_and!25167 (not b_next!15273) (not b!878717) (not mapNonEmpty!27891))
(check-sat b_and!25167 (not b_next!15273))
