; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75022 () Bool)

(assert start!75022)

(declare-fun b_free!15483 () Bool)

(declare-fun b_next!15483 () Bool)

(assert (=> start!75022 (= b_free!15483 (not b_next!15483))))

(declare-fun tp!54155 () Bool)

(declare-fun b_and!25691 () Bool)

(assert (=> start!75022 (= tp!54155 b_and!25691)))

(declare-fun b!884525 () Bool)

(declare-fun res!600994 () Bool)

(declare-fun e!492279 () Bool)

(assert (=> b!884525 (=> (not res!600994) (not e!492279))))

(declare-datatypes ((array!51564 0))(
  ( (array!51565 (arr!24796 (Array (_ BitVec 32) (_ BitVec 64))) (size!25237 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51564)

(declare-datatypes ((List!17709 0))(
  ( (Nil!17706) (Cons!17705 (h!18836 (_ BitVec 64)) (t!24992 List!17709)) )
))
(declare-fun arrayNoDuplicates!0 (array!51564 (_ BitVec 32) List!17709) Bool)

(assert (=> b!884525 (= res!600994 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17706))))

(declare-fun b!884526 () Bool)

(declare-fun e!492280 () Bool)

(declare-fun e!492282 () Bool)

(declare-fun mapRes!28230 () Bool)

(assert (=> b!884526 (= e!492280 (and e!492282 mapRes!28230))))

(declare-fun condMapEmpty!28230 () Bool)

(declare-datatypes ((V!28683 0))(
  ( (V!28684 (val!8911 Int)) )
))
(declare-datatypes ((ValueCell!8424 0))(
  ( (ValueCellFull!8424 (v!11380 V!28683)) (EmptyCell!8424) )
))
(declare-datatypes ((array!51566 0))(
  ( (array!51567 (arr!24797 (Array (_ BitVec 32) ValueCell!8424)) (size!25238 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51566)

(declare-fun mapDefault!28230 () ValueCell!8424)

(assert (=> b!884526 (= condMapEmpty!28230 (= (arr!24797 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8424)) mapDefault!28230)))))

(declare-fun b!884527 () Bool)

(declare-fun res!600999 () Bool)

(assert (=> b!884527 (=> (not res!600999) (not e!492279))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!884527 (= res!600999 (and (= (size!25238 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25237 _keys!868) (size!25238 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!600997 () Bool)

(assert (=> start!75022 (=> (not res!600997) (not e!492279))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!75022 (= res!600997 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25237 _keys!868))))))

(assert (=> start!75022 e!492279))

(declare-fun tp_is_empty!17727 () Bool)

(assert (=> start!75022 tp_is_empty!17727))

(assert (=> start!75022 true))

(assert (=> start!75022 tp!54155))

(declare-fun array_inv!19496 (array!51564) Bool)

(assert (=> start!75022 (array_inv!19496 _keys!868)))

(declare-fun array_inv!19497 (array!51566) Bool)

(assert (=> start!75022 (and (array_inv!19497 _values!688) e!492280)))

(declare-fun b!884528 () Bool)

(declare-fun res!601000 () Bool)

(assert (=> b!884528 (=> (not res!601000) (not e!492279))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!884528 (= res!601000 (and (= (select (arr!24796 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!884529 () Bool)

(declare-fun e!492278 () Bool)

(assert (=> b!884529 (= e!492278 (not true))))

(declare-fun v!557 () V!28683)

(declare-fun lt!400695 () array!51566)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28683)

(declare-fun zeroValue!654 () V!28683)

(declare-datatypes ((tuple2!11844 0))(
  ( (tuple2!11845 (_1!5932 (_ BitVec 64)) (_2!5932 V!28683)) )
))
(declare-datatypes ((List!17710 0))(
  ( (Nil!17707) (Cons!17706 (h!18837 tuple2!11844) (t!24993 List!17710)) )
))
(declare-datatypes ((ListLongMap!10627 0))(
  ( (ListLongMap!10628 (toList!5329 List!17710)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3283 (array!51564 array!51566 (_ BitVec 32) (_ BitVec 32) V!28683 V!28683 (_ BitVec 32) Int) ListLongMap!10627)

(declare-fun +!2532 (ListLongMap!10627 tuple2!11844) ListLongMap!10627)

(assert (=> b!884529 (= (getCurrentListMapNoExtraKeys!3283 _keys!868 lt!400695 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2532 (getCurrentListMapNoExtraKeys!3283 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11845 k0!854 v!557)))))

(declare-datatypes ((Unit!30173 0))(
  ( (Unit!30174) )
))
(declare-fun lt!400694 () Unit!30173)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!753 (array!51564 array!51566 (_ BitVec 32) (_ BitVec 32) V!28683 V!28683 (_ BitVec 32) (_ BitVec 64) V!28683 (_ BitVec 32) Int) Unit!30173)

(assert (=> b!884529 (= lt!400694 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!753 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!884530 () Bool)

(declare-fun e!492283 () Bool)

(assert (=> b!884530 (= e!492283 tp_is_empty!17727)))

(declare-fun b!884531 () Bool)

(declare-fun res!600995 () Bool)

(assert (=> b!884531 (=> (not res!600995) (not e!492279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51564 (_ BitVec 32)) Bool)

(assert (=> b!884531 (= res!600995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!28230 () Bool)

(assert (=> mapIsEmpty!28230 mapRes!28230))

(declare-fun b!884532 () Bool)

(declare-fun res!600998 () Bool)

(assert (=> b!884532 (=> (not res!600998) (not e!492279))))

(assert (=> b!884532 (= res!600998 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25237 _keys!868))))))

(declare-fun b!884533 () Bool)

(assert (=> b!884533 (= e!492279 e!492278)))

(declare-fun res!601001 () Bool)

(assert (=> b!884533 (=> (not res!601001) (not e!492278))))

(assert (=> b!884533 (= res!601001 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!400696 () ListLongMap!10627)

(assert (=> b!884533 (= lt!400696 (getCurrentListMapNoExtraKeys!3283 _keys!868 lt!400695 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!884533 (= lt!400695 (array!51567 (store (arr!24797 _values!688) i!612 (ValueCellFull!8424 v!557)) (size!25238 _values!688)))))

(declare-fun lt!400697 () ListLongMap!10627)

(assert (=> b!884533 (= lt!400697 (getCurrentListMapNoExtraKeys!3283 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!884534 () Bool)

(declare-fun res!601002 () Bool)

(assert (=> b!884534 (=> (not res!601002) (not e!492279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884534 (= res!601002 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!28230 () Bool)

(declare-fun tp!54156 () Bool)

(assert (=> mapNonEmpty!28230 (= mapRes!28230 (and tp!54156 e!492283))))

(declare-fun mapValue!28230 () ValueCell!8424)

(declare-fun mapKey!28230 () (_ BitVec 32))

(declare-fun mapRest!28230 () (Array (_ BitVec 32) ValueCell!8424))

(assert (=> mapNonEmpty!28230 (= (arr!24797 _values!688) (store mapRest!28230 mapKey!28230 mapValue!28230))))

(declare-fun b!884535 () Bool)

(assert (=> b!884535 (= e!492282 tp_is_empty!17727)))

(declare-fun b!884536 () Bool)

(declare-fun res!600996 () Bool)

(assert (=> b!884536 (=> (not res!600996) (not e!492279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884536 (= res!600996 (validMask!0 mask!1196))))

(assert (= (and start!75022 res!600997) b!884536))

(assert (= (and b!884536 res!600996) b!884527))

(assert (= (and b!884527 res!600999) b!884531))

(assert (= (and b!884531 res!600995) b!884525))

(assert (= (and b!884525 res!600994) b!884532))

(assert (= (and b!884532 res!600998) b!884534))

(assert (= (and b!884534 res!601002) b!884528))

(assert (= (and b!884528 res!601000) b!884533))

(assert (= (and b!884533 res!601001) b!884529))

(assert (= (and b!884526 condMapEmpty!28230) mapIsEmpty!28230))

(assert (= (and b!884526 (not condMapEmpty!28230)) mapNonEmpty!28230))

(get-info :version)

(assert (= (and mapNonEmpty!28230 ((_ is ValueCellFull!8424) mapValue!28230)) b!884530))

(assert (= (and b!884526 ((_ is ValueCellFull!8424) mapDefault!28230)) b!884535))

(assert (= start!75022 b!884526))

(declare-fun m!824867 () Bool)

(assert (=> b!884534 m!824867))

(declare-fun m!824869 () Bool)

(assert (=> b!884525 m!824869))

(declare-fun m!824871 () Bool)

(assert (=> mapNonEmpty!28230 m!824871))

(declare-fun m!824873 () Bool)

(assert (=> b!884533 m!824873))

(declare-fun m!824875 () Bool)

(assert (=> b!884533 m!824875))

(declare-fun m!824877 () Bool)

(assert (=> b!884533 m!824877))

(declare-fun m!824879 () Bool)

(assert (=> b!884536 m!824879))

(declare-fun m!824881 () Bool)

(assert (=> b!884529 m!824881))

(declare-fun m!824883 () Bool)

(assert (=> b!884529 m!824883))

(assert (=> b!884529 m!824883))

(declare-fun m!824885 () Bool)

(assert (=> b!884529 m!824885))

(declare-fun m!824887 () Bool)

(assert (=> b!884529 m!824887))

(declare-fun m!824889 () Bool)

(assert (=> b!884528 m!824889))

(declare-fun m!824891 () Bool)

(assert (=> b!884531 m!824891))

(declare-fun m!824893 () Bool)

(assert (=> start!75022 m!824893))

(declare-fun m!824895 () Bool)

(assert (=> start!75022 m!824895))

(check-sat (not b_next!15483) (not b!884525) b_and!25691 (not b!884531) tp_is_empty!17727 (not b!884533) (not mapNonEmpty!28230) (not b!884529) (not start!75022) (not b!884536) (not b!884534))
(check-sat b_and!25691 (not b_next!15483))
