; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73540 () Bool)

(assert start!73540)

(declare-fun b_free!14427 () Bool)

(declare-fun b_next!14427 () Bool)

(assert (=> start!73540 (= b_free!14427 (not b_next!14427))))

(declare-fun tp!50786 () Bool)

(declare-fun b_and!23851 () Bool)

(assert (=> start!73540 (= tp!50786 b_and!23851)))

(declare-fun b!858828 () Bool)

(declare-fun res!583611 () Bool)

(declare-fun e!478649 () Bool)

(assert (=> b!858828 (=> (not res!583611) (not e!478649))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49284 0))(
  ( (array!49285 (arr!23669 (Array (_ BitVec 32) (_ BitVec 64))) (size!24110 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49284)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!858828 (= res!583611 (and (= (select (arr!23669 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26444 () Bool)

(declare-fun mapRes!26444 () Bool)

(declare-fun tp!50785 () Bool)

(declare-fun e!478656 () Bool)

(assert (=> mapNonEmpty!26444 (= mapRes!26444 (and tp!50785 e!478656))))

(declare-fun mapKey!26444 () (_ BitVec 32))

(declare-datatypes ((V!27131 0))(
  ( (V!27132 (val!8329 Int)) )
))
(declare-datatypes ((ValueCell!7842 0))(
  ( (ValueCellFull!7842 (v!10750 V!27131)) (EmptyCell!7842) )
))
(declare-fun mapRest!26444 () (Array (_ BitVec 32) ValueCell!7842))

(declare-datatypes ((array!49286 0))(
  ( (array!49287 (arr!23670 (Array (_ BitVec 32) ValueCell!7842)) (size!24111 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49286)

(declare-fun mapValue!26444 () ValueCell!7842)

(assert (=> mapNonEmpty!26444 (= (arr!23670 _values!688) (store mapRest!26444 mapKey!26444 mapValue!26444))))

(declare-fun b!858829 () Bool)

(declare-fun res!583604 () Bool)

(assert (=> b!858829 (=> (not res!583604) (not e!478649))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49284 (_ BitVec 32)) Bool)

(assert (=> b!858829 (= res!583604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858830 () Bool)

(declare-fun tp_is_empty!16563 () Bool)

(assert (=> b!858830 (= e!478656 tp_is_empty!16563)))

(declare-fun b!858831 () Bool)

(declare-fun e!478654 () Bool)

(assert (=> b!858831 (= e!478654 tp_is_empty!16563)))

(declare-fun b!858832 () Bool)

(declare-fun res!583607 () Bool)

(assert (=> b!858832 (=> (not res!583607) (not e!478649))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!858832 (= res!583607 (and (= (size!24111 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24110 _keys!868) (size!24111 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858833 () Bool)

(declare-fun res!583605 () Bool)

(assert (=> b!858833 (=> (not res!583605) (not e!478649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858833 (= res!583605 (validMask!0 mask!1196))))

(declare-fun b!858835 () Bool)

(declare-fun e!478655 () Bool)

(assert (=> b!858835 (= e!478655 true)))

(declare-datatypes ((List!16854 0))(
  ( (Nil!16851) (Cons!16850 (h!17981 (_ BitVec 64)) (t!23555 List!16854)) )
))
(declare-fun arrayNoDuplicates!0 (array!49284 (_ BitVec 32) List!16854) Bool)

(assert (=> b!858835 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16851)))

(declare-datatypes ((Unit!29246 0))(
  ( (Unit!29247) )
))
(declare-fun lt!386958 () Unit!29246)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49284 (_ BitVec 32) (_ BitVec 32)) Unit!29246)

(assert (=> b!858835 (= lt!386958 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858836 () Bool)

(declare-fun res!583606 () Bool)

(assert (=> b!858836 (=> (not res!583606) (not e!478649))))

(assert (=> b!858836 (= res!583606 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16851))))

(declare-fun mapIsEmpty!26444 () Bool)

(assert (=> mapIsEmpty!26444 mapRes!26444))

(declare-fun b!858837 () Bool)

(declare-fun res!583609 () Bool)

(assert (=> b!858837 (=> (not res!583609) (not e!478649))))

(assert (=> b!858837 (= res!583609 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24110 _keys!868))))))

(declare-fun b!858838 () Bool)

(declare-fun e!478652 () Bool)

(declare-fun e!478650 () Bool)

(assert (=> b!858838 (= e!478652 (not e!478650))))

(declare-fun res!583610 () Bool)

(assert (=> b!858838 (=> res!583610 e!478650)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858838 (= res!583610 (not (validKeyInArray!0 (select (arr!23669 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!10982 0))(
  ( (tuple2!10983 (_1!5501 (_ BitVec 64)) (_2!5501 V!27131)) )
))
(declare-datatypes ((List!16855 0))(
  ( (Nil!16852) (Cons!16851 (h!17982 tuple2!10982) (t!23556 List!16855)) )
))
(declare-datatypes ((ListLongMap!9765 0))(
  ( (ListLongMap!9766 (toList!4898 List!16855)) )
))
(declare-fun lt!386954 () ListLongMap!9765)

(declare-fun lt!386956 () ListLongMap!9765)

(assert (=> b!858838 (= lt!386954 lt!386956)))

(declare-fun v!557 () V!27131)

(declare-fun lt!386957 () ListLongMap!9765)

(declare-fun +!2201 (ListLongMap!9765 tuple2!10982) ListLongMap!9765)

(assert (=> b!858838 (= lt!386956 (+!2201 lt!386957 (tuple2!10983 k0!854 v!557)))))

(declare-fun lt!386960 () array!49286)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27131)

(declare-fun zeroValue!654 () V!27131)

(declare-fun getCurrentListMapNoExtraKeys!2879 (array!49284 array!49286 (_ BitVec 32) (_ BitVec 32) V!27131 V!27131 (_ BitVec 32) Int) ListLongMap!9765)

(assert (=> b!858838 (= lt!386954 (getCurrentListMapNoExtraKeys!2879 _keys!868 lt!386960 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858838 (= lt!386957 (getCurrentListMapNoExtraKeys!2879 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!386961 () Unit!29246)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!459 (array!49284 array!49286 (_ BitVec 32) (_ BitVec 32) V!27131 V!27131 (_ BitVec 32) (_ BitVec 64) V!27131 (_ BitVec 32) Int) Unit!29246)

(assert (=> b!858838 (= lt!386961 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!459 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858839 () Bool)

(declare-fun e!478653 () Bool)

(assert (=> b!858839 (= e!478653 (and e!478654 mapRes!26444))))

(declare-fun condMapEmpty!26444 () Bool)

(declare-fun mapDefault!26444 () ValueCell!7842)

(assert (=> b!858839 (= condMapEmpty!26444 (= (arr!23670 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7842)) mapDefault!26444)))))

(declare-fun b!858840 () Bool)

(declare-fun res!583608 () Bool)

(assert (=> b!858840 (=> (not res!583608) (not e!478649))))

(assert (=> b!858840 (= res!583608 (validKeyInArray!0 k0!854))))

(declare-fun b!858841 () Bool)

(assert (=> b!858841 (= e!478650 e!478655)))

(declare-fun res!583614 () Bool)

(assert (=> b!858841 (=> res!583614 e!478655)))

(assert (=> b!858841 (= res!583614 (not (= (select (arr!23669 _keys!868) from!1053) k0!854)))))

(declare-fun lt!386959 () ListLongMap!9765)

(declare-fun get!12482 (ValueCell!7842 V!27131) V!27131)

(declare-fun dynLambda!1090 (Int (_ BitVec 64)) V!27131)

(assert (=> b!858841 (= lt!386959 (+!2201 lt!386956 (tuple2!10983 (select (arr!23669 _keys!868) from!1053) (get!12482 (select (arr!23670 _values!688) from!1053) (dynLambda!1090 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!583613 () Bool)

(assert (=> start!73540 (=> (not res!583613) (not e!478649))))

(assert (=> start!73540 (= res!583613 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24110 _keys!868))))))

(assert (=> start!73540 e!478649))

(assert (=> start!73540 tp_is_empty!16563))

(assert (=> start!73540 true))

(assert (=> start!73540 tp!50786))

(declare-fun array_inv!18722 (array!49284) Bool)

(assert (=> start!73540 (array_inv!18722 _keys!868)))

(declare-fun array_inv!18723 (array!49286) Bool)

(assert (=> start!73540 (and (array_inv!18723 _values!688) e!478653)))

(declare-fun b!858834 () Bool)

(assert (=> b!858834 (= e!478649 e!478652)))

(declare-fun res!583612 () Bool)

(assert (=> b!858834 (=> (not res!583612) (not e!478652))))

(assert (=> b!858834 (= res!583612 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!858834 (= lt!386959 (getCurrentListMapNoExtraKeys!2879 _keys!868 lt!386960 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!858834 (= lt!386960 (array!49287 (store (arr!23670 _values!688) i!612 (ValueCellFull!7842 v!557)) (size!24111 _values!688)))))

(declare-fun lt!386955 () ListLongMap!9765)

(assert (=> b!858834 (= lt!386955 (getCurrentListMapNoExtraKeys!2879 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73540 res!583613) b!858833))

(assert (= (and b!858833 res!583605) b!858832))

(assert (= (and b!858832 res!583607) b!858829))

(assert (= (and b!858829 res!583604) b!858836))

(assert (= (and b!858836 res!583606) b!858837))

(assert (= (and b!858837 res!583609) b!858840))

(assert (= (and b!858840 res!583608) b!858828))

(assert (= (and b!858828 res!583611) b!858834))

(assert (= (and b!858834 res!583612) b!858838))

(assert (= (and b!858838 (not res!583610)) b!858841))

(assert (= (and b!858841 (not res!583614)) b!858835))

(assert (= (and b!858839 condMapEmpty!26444) mapIsEmpty!26444))

(assert (= (and b!858839 (not condMapEmpty!26444)) mapNonEmpty!26444))

(get-info :version)

(assert (= (and mapNonEmpty!26444 ((_ is ValueCellFull!7842) mapValue!26444)) b!858830))

(assert (= (and b!858839 ((_ is ValueCellFull!7842) mapDefault!26444)) b!858831))

(assert (= start!73540 b!858839))

(declare-fun b_lambda!11809 () Bool)

(assert (=> (not b_lambda!11809) (not b!858841)))

(declare-fun t!23554 () Bool)

(declare-fun tb!4557 () Bool)

(assert (=> (and start!73540 (= defaultEntry!696 defaultEntry!696) t!23554) tb!4557))

(declare-fun result!8717 () Bool)

(assert (=> tb!4557 (= result!8717 tp_is_empty!16563)))

(assert (=> b!858841 t!23554))

(declare-fun b_and!23853 () Bool)

(assert (= b_and!23851 (and (=> t!23554 result!8717) b_and!23853)))

(declare-fun m!799667 () Bool)

(assert (=> b!858836 m!799667))

(declare-fun m!799669 () Bool)

(assert (=> b!858833 m!799669))

(declare-fun m!799671 () Bool)

(assert (=> mapNonEmpty!26444 m!799671))

(declare-fun m!799673 () Bool)

(assert (=> start!73540 m!799673))

(declare-fun m!799675 () Bool)

(assert (=> start!73540 m!799675))

(declare-fun m!799677 () Bool)

(assert (=> b!858835 m!799677))

(declare-fun m!799679 () Bool)

(assert (=> b!858835 m!799679))

(declare-fun m!799681 () Bool)

(assert (=> b!858834 m!799681))

(declare-fun m!799683 () Bool)

(assert (=> b!858834 m!799683))

(declare-fun m!799685 () Bool)

(assert (=> b!858834 m!799685))

(declare-fun m!799687 () Bool)

(assert (=> b!858841 m!799687))

(declare-fun m!799689 () Bool)

(assert (=> b!858841 m!799689))

(declare-fun m!799691 () Bool)

(assert (=> b!858841 m!799691))

(declare-fun m!799693 () Bool)

(assert (=> b!858841 m!799693))

(assert (=> b!858841 m!799689))

(declare-fun m!799695 () Bool)

(assert (=> b!858841 m!799695))

(assert (=> b!858841 m!799691))

(declare-fun m!799697 () Bool)

(assert (=> b!858840 m!799697))

(declare-fun m!799699 () Bool)

(assert (=> b!858828 m!799699))

(declare-fun m!799701 () Bool)

(assert (=> b!858829 m!799701))

(declare-fun m!799703 () Bool)

(assert (=> b!858838 m!799703))

(declare-fun m!799705 () Bool)

(assert (=> b!858838 m!799705))

(assert (=> b!858838 m!799695))

(declare-fun m!799707 () Bool)

(assert (=> b!858838 m!799707))

(assert (=> b!858838 m!799695))

(declare-fun m!799709 () Bool)

(assert (=> b!858838 m!799709))

(declare-fun m!799711 () Bool)

(assert (=> b!858838 m!799711))

(check-sat (not b!858841) (not b!858829) (not b!858833) (not b!858835) (not b!858834) (not b!858840) (not mapNonEmpty!26444) tp_is_empty!16563 (not b_next!14427) (not b_lambda!11809) b_and!23853 (not b!858836) (not b!858838) (not start!73540))
(check-sat b_and!23853 (not b_next!14427))
