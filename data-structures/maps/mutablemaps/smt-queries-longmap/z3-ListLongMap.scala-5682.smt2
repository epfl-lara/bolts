; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73906 () Bool)

(assert start!73906)

(declare-fun b_free!14793 () Bool)

(declare-fun b_next!14793 () Bool)

(assert (=> start!73906 (= b_free!14793 (not b_next!14793))))

(declare-fun tp!51883 () Bool)

(declare-fun b_and!24563 () Bool)

(assert (=> start!73906 (= tp!51883 b_and!24563)))

(declare-fun b!867777 () Bool)

(declare-fun res!589738 () Bool)

(declare-fun e!483387 () Bool)

(assert (=> b!867777 (=> (not res!589738) (not e!483387))))

(declare-datatypes ((array!49996 0))(
  ( (array!49997 (arr!24025 (Array (_ BitVec 32) (_ BitVec 64))) (size!24466 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49996)

(declare-datatypes ((List!17160 0))(
  ( (Nil!17157) (Cons!17156 (h!18287 (_ BitVec 64)) (t!24205 List!17160)) )
))
(declare-fun arrayNoDuplicates!0 (array!49996 (_ BitVec 32) List!17160) Bool)

(assert (=> b!867777 (= res!589738 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17157))))

(declare-fun b!867778 () Bool)

(declare-fun res!589734 () Bool)

(assert (=> b!867778 (=> (not res!589734) (not e!483387))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867778 (= res!589734 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26993 () Bool)

(declare-fun mapRes!26993 () Bool)

(declare-fun tp!51884 () Bool)

(declare-fun e!483385 () Bool)

(assert (=> mapNonEmpty!26993 (= mapRes!26993 (and tp!51884 e!483385))))

(declare-datatypes ((V!27619 0))(
  ( (V!27620 (val!8512 Int)) )
))
(declare-datatypes ((ValueCell!8025 0))(
  ( (ValueCellFull!8025 (v!10933 V!27619)) (EmptyCell!8025) )
))
(declare-fun mapRest!26993 () (Array (_ BitVec 32) ValueCell!8025))

(declare-fun mapKey!26993 () (_ BitVec 32))

(declare-fun mapValue!26993 () ValueCell!8025)

(declare-datatypes ((array!49998 0))(
  ( (array!49999 (arr!24026 (Array (_ BitVec 32) ValueCell!8025)) (size!24467 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49998)

(assert (=> mapNonEmpty!26993 (= (arr!24026 _values!688) (store mapRest!26993 mapKey!26993 mapValue!26993))))

(declare-fun b!867779 () Bool)

(declare-fun e!483382 () Bool)

(assert (=> b!867779 (= e!483382 (not true))))

(declare-fun v!557 () V!27619)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!394242 () array!49998)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27619)

(declare-fun zeroValue!654 () V!27619)

(declare-datatypes ((tuple2!11300 0))(
  ( (tuple2!11301 (_1!5660 (_ BitVec 64)) (_2!5660 V!27619)) )
))
(declare-datatypes ((List!17161 0))(
  ( (Nil!17158) (Cons!17157 (h!18288 tuple2!11300) (t!24206 List!17161)) )
))
(declare-datatypes ((ListLongMap!10083 0))(
  ( (ListLongMap!10084 (toList!5057 List!17161)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3021 (array!49996 array!49998 (_ BitVec 32) (_ BitVec 32) V!27619 V!27619 (_ BitVec 32) Int) ListLongMap!10083)

(declare-fun +!2349 (ListLongMap!10083 tuple2!11300) ListLongMap!10083)

(assert (=> b!867779 (= (getCurrentListMapNoExtraKeys!3021 _keys!868 lt!394242 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2349 (getCurrentListMapNoExtraKeys!3021 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11301 k0!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29748 0))(
  ( (Unit!29749) )
))
(declare-fun lt!394244 () Unit!29748)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!580 (array!49996 array!49998 (_ BitVec 32) (_ BitVec 32) V!27619 V!27619 (_ BitVec 32) (_ BitVec 64) V!27619 (_ BitVec 32) Int) Unit!29748)

(assert (=> b!867779 (= lt!394244 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!580 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867780 () Bool)

(declare-fun res!589733 () Bool)

(assert (=> b!867780 (=> (not res!589733) (not e!483387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49996 (_ BitVec 32)) Bool)

(assert (=> b!867780 (= res!589733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867781 () Bool)

(declare-fun e!483386 () Bool)

(declare-fun tp_is_empty!16929 () Bool)

(assert (=> b!867781 (= e!483386 tp_is_empty!16929)))

(declare-fun b!867783 () Bool)

(assert (=> b!867783 (= e!483385 tp_is_empty!16929)))

(declare-fun b!867784 () Bool)

(declare-fun res!589736 () Bool)

(assert (=> b!867784 (=> (not res!589736) (not e!483387))))

(assert (=> b!867784 (= res!589736 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24466 _keys!868))))))

(declare-fun b!867785 () Bool)

(declare-fun res!589735 () Bool)

(assert (=> b!867785 (=> (not res!589735) (not e!483387))))

(assert (=> b!867785 (= res!589735 (and (= (select (arr!24025 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26993 () Bool)

(assert (=> mapIsEmpty!26993 mapRes!26993))

(declare-fun b!867786 () Bool)

(assert (=> b!867786 (= e!483387 e!483382)))

(declare-fun res!589732 () Bool)

(assert (=> b!867786 (=> (not res!589732) (not e!483382))))

(assert (=> b!867786 (= res!589732 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394245 () ListLongMap!10083)

(assert (=> b!867786 (= lt!394245 (getCurrentListMapNoExtraKeys!3021 _keys!868 lt!394242 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!867786 (= lt!394242 (array!49999 (store (arr!24026 _values!688) i!612 (ValueCellFull!8025 v!557)) (size!24467 _values!688)))))

(declare-fun lt!394243 () ListLongMap!10083)

(assert (=> b!867786 (= lt!394243 (getCurrentListMapNoExtraKeys!3021 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867787 () Bool)

(declare-fun res!589740 () Bool)

(assert (=> b!867787 (=> (not res!589740) (not e!483387))))

(assert (=> b!867787 (= res!589740 (and (= (size!24467 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24466 _keys!868) (size!24467 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867788 () Bool)

(declare-fun e!483383 () Bool)

(assert (=> b!867788 (= e!483383 (and e!483386 mapRes!26993))))

(declare-fun condMapEmpty!26993 () Bool)

(declare-fun mapDefault!26993 () ValueCell!8025)

(assert (=> b!867788 (= condMapEmpty!26993 (= (arr!24026 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8025)) mapDefault!26993)))))

(declare-fun b!867782 () Bool)

(declare-fun res!589737 () Bool)

(assert (=> b!867782 (=> (not res!589737) (not e!483387))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867782 (= res!589737 (validKeyInArray!0 k0!854))))

(declare-fun res!589739 () Bool)

(assert (=> start!73906 (=> (not res!589739) (not e!483387))))

(assert (=> start!73906 (= res!589739 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24466 _keys!868))))))

(assert (=> start!73906 e!483387))

(assert (=> start!73906 tp_is_empty!16929))

(assert (=> start!73906 true))

(assert (=> start!73906 tp!51883))

(declare-fun array_inv!18960 (array!49996) Bool)

(assert (=> start!73906 (array_inv!18960 _keys!868)))

(declare-fun array_inv!18961 (array!49998) Bool)

(assert (=> start!73906 (and (array_inv!18961 _values!688) e!483383)))

(assert (= (and start!73906 res!589739) b!867778))

(assert (= (and b!867778 res!589734) b!867787))

(assert (= (and b!867787 res!589740) b!867780))

(assert (= (and b!867780 res!589733) b!867777))

(assert (= (and b!867777 res!589738) b!867784))

(assert (= (and b!867784 res!589736) b!867782))

(assert (= (and b!867782 res!589737) b!867785))

(assert (= (and b!867785 res!589735) b!867786))

(assert (= (and b!867786 res!589732) b!867779))

(assert (= (and b!867788 condMapEmpty!26993) mapIsEmpty!26993))

(assert (= (and b!867788 (not condMapEmpty!26993)) mapNonEmpty!26993))

(get-info :version)

(assert (= (and mapNonEmpty!26993 ((_ is ValueCellFull!8025) mapValue!26993)) b!867783))

(assert (= (and b!867788 ((_ is ValueCellFull!8025) mapDefault!26993)) b!867781))

(assert (= start!73906 b!867788))

(declare-fun m!809671 () Bool)

(assert (=> b!867780 m!809671))

(declare-fun m!809673 () Bool)

(assert (=> b!867782 m!809673))

(declare-fun m!809675 () Bool)

(assert (=> b!867778 m!809675))

(declare-fun m!809677 () Bool)

(assert (=> b!867779 m!809677))

(declare-fun m!809679 () Bool)

(assert (=> b!867779 m!809679))

(assert (=> b!867779 m!809679))

(declare-fun m!809681 () Bool)

(assert (=> b!867779 m!809681))

(declare-fun m!809683 () Bool)

(assert (=> b!867779 m!809683))

(declare-fun m!809685 () Bool)

(assert (=> b!867785 m!809685))

(declare-fun m!809687 () Bool)

(assert (=> mapNonEmpty!26993 m!809687))

(declare-fun m!809689 () Bool)

(assert (=> b!867786 m!809689))

(declare-fun m!809691 () Bool)

(assert (=> b!867786 m!809691))

(declare-fun m!809693 () Bool)

(assert (=> b!867786 m!809693))

(declare-fun m!809695 () Bool)

(assert (=> start!73906 m!809695))

(declare-fun m!809697 () Bool)

(assert (=> start!73906 m!809697))

(declare-fun m!809699 () Bool)

(assert (=> b!867777 m!809699))

(check-sat (not mapNonEmpty!26993) (not b!867780) (not b!867782) (not b_next!14793) (not b!867778) b_and!24563 tp_is_empty!16929 (not start!73906) (not b!867777) (not b!867786) (not b!867779))
(check-sat b_and!24563 (not b_next!14793))
