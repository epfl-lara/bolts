; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73912 () Bool)

(assert start!73912)

(declare-fun b_free!14799 () Bool)

(declare-fun b_next!14799 () Bool)

(assert (=> start!73912 (= b_free!14799 (not b_next!14799))))

(declare-fun tp!51902 () Bool)

(declare-fun b_and!24569 () Bool)

(assert (=> start!73912 (= tp!51902 b_and!24569)))

(declare-fun b!867885 () Bool)

(declare-fun res!589815 () Bool)

(declare-fun e!483439 () Bool)

(assert (=> b!867885 (=> (not res!589815) (not e!483439))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867885 (= res!589815 (validMask!0 mask!1196))))

(declare-fun b!867886 () Bool)

(declare-fun e!483437 () Bool)

(declare-fun tp_is_empty!16935 () Bool)

(assert (=> b!867886 (= e!483437 tp_is_empty!16935)))

(declare-fun b!867887 () Bool)

(declare-fun res!589819 () Bool)

(assert (=> b!867887 (=> (not res!589819) (not e!483439))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867887 (= res!589819 (validKeyInArray!0 k0!854))))

(declare-fun b!867888 () Bool)

(declare-fun res!589820 () Bool)

(assert (=> b!867888 (=> (not res!589820) (not e!483439))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50008 0))(
  ( (array!50009 (arr!24031 (Array (_ BitVec 32) (_ BitVec 64))) (size!24472 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50008)

(declare-datatypes ((V!27627 0))(
  ( (V!27628 (val!8515 Int)) )
))
(declare-datatypes ((ValueCell!8028 0))(
  ( (ValueCellFull!8028 (v!10936 V!27627)) (EmptyCell!8028) )
))
(declare-datatypes ((array!50010 0))(
  ( (array!50011 (arr!24032 (Array (_ BitVec 32) ValueCell!8028)) (size!24473 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50010)

(assert (=> b!867888 (= res!589820 (and (= (size!24473 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24472 _keys!868) (size!24473 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867889 () Bool)

(declare-fun e!483440 () Bool)

(declare-fun mapRes!27002 () Bool)

(assert (=> b!867889 (= e!483440 (and e!483437 mapRes!27002))))

(declare-fun condMapEmpty!27002 () Bool)

(declare-fun mapDefault!27002 () ValueCell!8028)

(assert (=> b!867889 (= condMapEmpty!27002 (= (arr!24032 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8028)) mapDefault!27002)))))

(declare-fun b!867890 () Bool)

(declare-fun res!589821 () Bool)

(assert (=> b!867890 (=> (not res!589821) (not e!483439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50008 (_ BitVec 32)) Bool)

(assert (=> b!867890 (= res!589821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867891 () Bool)

(declare-fun e!483438 () Bool)

(assert (=> b!867891 (= e!483438 (not true))))

(declare-fun v!557 () V!27627)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!394280 () array!50010)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27627)

(declare-fun zeroValue!654 () V!27627)

(declare-datatypes ((tuple2!11304 0))(
  ( (tuple2!11305 (_1!5662 (_ BitVec 64)) (_2!5662 V!27627)) )
))
(declare-datatypes ((List!17163 0))(
  ( (Nil!17160) (Cons!17159 (h!18290 tuple2!11304) (t!24208 List!17163)) )
))
(declare-datatypes ((ListLongMap!10087 0))(
  ( (ListLongMap!10088 (toList!5059 List!17163)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3023 (array!50008 array!50010 (_ BitVec 32) (_ BitVec 32) V!27627 V!27627 (_ BitVec 32) Int) ListLongMap!10087)

(declare-fun +!2350 (ListLongMap!10087 tuple2!11304) ListLongMap!10087)

(assert (=> b!867891 (= (getCurrentListMapNoExtraKeys!3023 _keys!868 lt!394280 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2350 (getCurrentListMapNoExtraKeys!3023 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11305 k0!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29750 0))(
  ( (Unit!29751) )
))
(declare-fun lt!394281 () Unit!29750)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!581 (array!50008 array!50010 (_ BitVec 32) (_ BitVec 32) V!27627 V!27627 (_ BitVec 32) (_ BitVec 64) V!27627 (_ BitVec 32) Int) Unit!29750)

(assert (=> b!867891 (= lt!394281 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!581 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867892 () Bool)

(declare-fun e!483436 () Bool)

(assert (=> b!867892 (= e!483436 tp_is_empty!16935)))

(declare-fun b!867893 () Bool)

(declare-fun res!589814 () Bool)

(assert (=> b!867893 (=> (not res!589814) (not e!483439))))

(assert (=> b!867893 (= res!589814 (and (= (select (arr!24031 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27002 () Bool)

(declare-fun tp!51901 () Bool)

(assert (=> mapNonEmpty!27002 (= mapRes!27002 (and tp!51901 e!483436))))

(declare-fun mapKey!27002 () (_ BitVec 32))

(declare-fun mapRest!27002 () (Array (_ BitVec 32) ValueCell!8028))

(declare-fun mapValue!27002 () ValueCell!8028)

(assert (=> mapNonEmpty!27002 (= (arr!24032 _values!688) (store mapRest!27002 mapKey!27002 mapValue!27002))))

(declare-fun res!589817 () Bool)

(assert (=> start!73912 (=> (not res!589817) (not e!483439))))

(assert (=> start!73912 (= res!589817 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24472 _keys!868))))))

(assert (=> start!73912 e!483439))

(assert (=> start!73912 tp_is_empty!16935))

(assert (=> start!73912 true))

(assert (=> start!73912 tp!51902))

(declare-fun array_inv!18966 (array!50008) Bool)

(assert (=> start!73912 (array_inv!18966 _keys!868)))

(declare-fun array_inv!18967 (array!50010) Bool)

(assert (=> start!73912 (and (array_inv!18967 _values!688) e!483440)))

(declare-fun b!867894 () Bool)

(declare-fun res!589816 () Bool)

(assert (=> b!867894 (=> (not res!589816) (not e!483439))))

(assert (=> b!867894 (= res!589816 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24472 _keys!868))))))

(declare-fun b!867895 () Bool)

(assert (=> b!867895 (= e!483439 e!483438)))

(declare-fun res!589813 () Bool)

(assert (=> b!867895 (=> (not res!589813) (not e!483438))))

(assert (=> b!867895 (= res!589813 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394279 () ListLongMap!10087)

(assert (=> b!867895 (= lt!394279 (getCurrentListMapNoExtraKeys!3023 _keys!868 lt!394280 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!867895 (= lt!394280 (array!50011 (store (arr!24032 _values!688) i!612 (ValueCellFull!8028 v!557)) (size!24473 _values!688)))))

(declare-fun lt!394278 () ListLongMap!10087)

(assert (=> b!867895 (= lt!394278 (getCurrentListMapNoExtraKeys!3023 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867896 () Bool)

(declare-fun res!589818 () Bool)

(assert (=> b!867896 (=> (not res!589818) (not e!483439))))

(declare-datatypes ((List!17164 0))(
  ( (Nil!17161) (Cons!17160 (h!18291 (_ BitVec 64)) (t!24209 List!17164)) )
))
(declare-fun arrayNoDuplicates!0 (array!50008 (_ BitVec 32) List!17164) Bool)

(assert (=> b!867896 (= res!589818 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17161))))

(declare-fun mapIsEmpty!27002 () Bool)

(assert (=> mapIsEmpty!27002 mapRes!27002))

(assert (= (and start!73912 res!589817) b!867885))

(assert (= (and b!867885 res!589815) b!867888))

(assert (= (and b!867888 res!589820) b!867890))

(assert (= (and b!867890 res!589821) b!867896))

(assert (= (and b!867896 res!589818) b!867894))

(assert (= (and b!867894 res!589816) b!867887))

(assert (= (and b!867887 res!589819) b!867893))

(assert (= (and b!867893 res!589814) b!867895))

(assert (= (and b!867895 res!589813) b!867891))

(assert (= (and b!867889 condMapEmpty!27002) mapIsEmpty!27002))

(assert (= (and b!867889 (not condMapEmpty!27002)) mapNonEmpty!27002))

(get-info :version)

(assert (= (and mapNonEmpty!27002 ((_ is ValueCellFull!8028) mapValue!27002)) b!867892))

(assert (= (and b!867889 ((_ is ValueCellFull!8028) mapDefault!27002)) b!867886))

(assert (= start!73912 b!867889))

(declare-fun m!809761 () Bool)

(assert (=> b!867895 m!809761))

(declare-fun m!809763 () Bool)

(assert (=> b!867895 m!809763))

(declare-fun m!809765 () Bool)

(assert (=> b!867895 m!809765))

(declare-fun m!809767 () Bool)

(assert (=> b!867885 m!809767))

(declare-fun m!809769 () Bool)

(assert (=> b!867891 m!809769))

(declare-fun m!809771 () Bool)

(assert (=> b!867891 m!809771))

(assert (=> b!867891 m!809771))

(declare-fun m!809773 () Bool)

(assert (=> b!867891 m!809773))

(declare-fun m!809775 () Bool)

(assert (=> b!867891 m!809775))

(declare-fun m!809777 () Bool)

(assert (=> start!73912 m!809777))

(declare-fun m!809779 () Bool)

(assert (=> start!73912 m!809779))

(declare-fun m!809781 () Bool)

(assert (=> mapNonEmpty!27002 m!809781))

(declare-fun m!809783 () Bool)

(assert (=> b!867890 m!809783))

(declare-fun m!809785 () Bool)

(assert (=> b!867896 m!809785))

(declare-fun m!809787 () Bool)

(assert (=> b!867887 m!809787))

(declare-fun m!809789 () Bool)

(assert (=> b!867893 m!809789))

(check-sat (not start!73912) (not mapNonEmpty!27002) tp_is_empty!16935 (not b!867885) (not b!867890) (not b!867891) (not b!867896) (not b_next!14799) (not b!867895) b_and!24569 (not b!867887))
(check-sat b_and!24569 (not b_next!14799))
