; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72514 () Bool)

(assert start!72514)

(declare-fun b_free!13671 () Bool)

(declare-fun b_next!13671 () Bool)

(assert (=> start!72514 (= b_free!13671 (not b_next!13671))))

(declare-fun tp!48113 () Bool)

(declare-fun b_and!22775 () Bool)

(assert (=> start!72514 (= tp!48113 b_and!22775)))

(declare-fun b!840746 () Bool)

(declare-fun e!469101 () Bool)

(declare-fun tp_is_empty!15537 () Bool)

(assert (=> b!840746 (= e!469101 tp_is_empty!15537)))

(declare-fun b!840747 () Bool)

(declare-fun res!571662 () Bool)

(declare-fun e!469103 () Bool)

(assert (=> b!840747 (=> (not res!571662) (not e!469103))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47320 0))(
  ( (array!47321 (arr!22687 (Array (_ BitVec 32) (_ BitVec 64))) (size!23128 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47320)

(declare-datatypes ((V!25763 0))(
  ( (V!25764 (val!7816 Int)) )
))
(declare-datatypes ((ValueCell!7329 0))(
  ( (ValueCellFull!7329 (v!10237 V!25763)) (EmptyCell!7329) )
))
(declare-datatypes ((array!47322 0))(
  ( (array!47323 (arr!22688 (Array (_ BitVec 32) ValueCell!7329)) (size!23129 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47322)

(assert (=> b!840747 (= res!571662 (and (= (size!23129 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23128 _keys!868) (size!23129 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840748 () Bool)

(declare-fun res!571661 () Bool)

(assert (=> b!840748 (=> (not res!571661) (not e!469103))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840748 (= res!571661 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23128 _keys!868))))))

(declare-fun bm!37243 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25763)

(declare-fun zeroValue!654 () V!25763)

(declare-datatypes ((tuple2!10382 0))(
  ( (tuple2!10383 (_1!5201 (_ BitVec 64)) (_2!5201 V!25763)) )
))
(declare-datatypes ((List!16206 0))(
  ( (Nil!16203) (Cons!16202 (h!17333 tuple2!10382) (t!22585 List!16206)) )
))
(declare-datatypes ((ListLongMap!9165 0))(
  ( (ListLongMap!9166 (toList!4598 List!16206)) )
))
(declare-fun call!37246 () ListLongMap!9165)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2589 (array!47320 array!47322 (_ BitVec 32) (_ BitVec 32) V!25763 V!25763 (_ BitVec 32) Int) ListLongMap!9165)

(assert (=> bm!37243 (= call!37246 (getCurrentListMapNoExtraKeys!2589 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840749 () Bool)

(declare-fun v!557 () V!25763)

(declare-fun call!37247 () ListLongMap!9165)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun e!469099 () Bool)

(declare-fun +!2006 (ListLongMap!9165 tuple2!10382) ListLongMap!9165)

(assert (=> b!840749 (= e!469099 (= call!37247 (+!2006 call!37246 (tuple2!10383 k0!854 v!557))))))

(declare-fun b!840750 () Bool)

(declare-fun e!469104 () Bool)

(assert (=> b!840750 (= e!469104 tp_is_empty!15537)))

(declare-fun b!840751 () Bool)

(declare-fun res!571659 () Bool)

(assert (=> b!840751 (=> (not res!571659) (not e!469103))))

(assert (=> b!840751 (= res!571659 (and (= (select (arr!22687 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23128 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840752 () Bool)

(declare-fun res!571655 () Bool)

(assert (=> b!840752 (=> (not res!571655) (not e!469103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47320 (_ BitVec 32)) Bool)

(assert (=> b!840752 (= res!571655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840753 () Bool)

(declare-fun e!469100 () Bool)

(declare-fun mapRes!24905 () Bool)

(assert (=> b!840753 (= e!469100 (and e!469101 mapRes!24905))))

(declare-fun condMapEmpty!24905 () Bool)

(declare-fun mapDefault!24905 () ValueCell!7329)

(assert (=> b!840753 (= condMapEmpty!24905 (= (arr!22688 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7329)) mapDefault!24905)))))

(declare-fun res!571658 () Bool)

(assert (=> start!72514 (=> (not res!571658) (not e!469103))))

(assert (=> start!72514 (= res!571658 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23128 _keys!868))))))

(assert (=> start!72514 e!469103))

(assert (=> start!72514 tp_is_empty!15537))

(assert (=> start!72514 true))

(assert (=> start!72514 tp!48113))

(declare-fun array_inv!18036 (array!47320) Bool)

(assert (=> start!72514 (array_inv!18036 _keys!868)))

(declare-fun array_inv!18037 (array!47322) Bool)

(assert (=> start!72514 (and (array_inv!18037 _values!688) e!469100)))

(declare-fun mapIsEmpty!24905 () Bool)

(assert (=> mapIsEmpty!24905 mapRes!24905))

(declare-fun b!840754 () Bool)

(declare-fun res!571657 () Bool)

(assert (=> b!840754 (=> (not res!571657) (not e!469103))))

(declare-datatypes ((List!16207 0))(
  ( (Nil!16204) (Cons!16203 (h!17334 (_ BitVec 64)) (t!22586 List!16207)) )
))
(declare-fun arrayNoDuplicates!0 (array!47320 (_ BitVec 32) List!16207) Bool)

(assert (=> b!840754 (= res!571657 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16204))))

(declare-fun b!840755 () Bool)

(assert (=> b!840755 (= e!469103 (not true))))

(assert (=> b!840755 e!469099))

(declare-fun c!91284 () Bool)

(assert (=> b!840755 (= c!91284 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28872 0))(
  ( (Unit!28873) )
))
(declare-fun lt!380817 () Unit!28872)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!285 (array!47320 array!47322 (_ BitVec 32) (_ BitVec 32) V!25763 V!25763 (_ BitVec 32) (_ BitVec 64) V!25763 (_ BitVec 32) Int) Unit!28872)

(assert (=> b!840755 (= lt!380817 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24905 () Bool)

(declare-fun tp!48112 () Bool)

(assert (=> mapNonEmpty!24905 (= mapRes!24905 (and tp!48112 e!469104))))

(declare-fun mapKey!24905 () (_ BitVec 32))

(declare-fun mapValue!24905 () ValueCell!7329)

(declare-fun mapRest!24905 () (Array (_ BitVec 32) ValueCell!7329))

(assert (=> mapNonEmpty!24905 (= (arr!22688 _values!688) (store mapRest!24905 mapKey!24905 mapValue!24905))))

(declare-fun b!840756 () Bool)

(declare-fun res!571656 () Bool)

(assert (=> b!840756 (=> (not res!571656) (not e!469103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840756 (= res!571656 (validMask!0 mask!1196))))

(declare-fun bm!37244 () Bool)

(assert (=> bm!37244 (= call!37247 (getCurrentListMapNoExtraKeys!2589 _keys!868 (array!47323 (store (arr!22688 _values!688) i!612 (ValueCellFull!7329 v!557)) (size!23129 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840757 () Bool)

(declare-fun res!571660 () Bool)

(assert (=> b!840757 (=> (not res!571660) (not e!469103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840757 (= res!571660 (validKeyInArray!0 k0!854))))

(declare-fun b!840758 () Bool)

(assert (=> b!840758 (= e!469099 (= call!37247 call!37246))))

(assert (= (and start!72514 res!571658) b!840756))

(assert (= (and b!840756 res!571656) b!840747))

(assert (= (and b!840747 res!571662) b!840752))

(assert (= (and b!840752 res!571655) b!840754))

(assert (= (and b!840754 res!571657) b!840748))

(assert (= (and b!840748 res!571661) b!840757))

(assert (= (and b!840757 res!571660) b!840751))

(assert (= (and b!840751 res!571659) b!840755))

(assert (= (and b!840755 c!91284) b!840749))

(assert (= (and b!840755 (not c!91284)) b!840758))

(assert (= (or b!840749 b!840758) bm!37244))

(assert (= (or b!840749 b!840758) bm!37243))

(assert (= (and b!840753 condMapEmpty!24905) mapIsEmpty!24905))

(assert (= (and b!840753 (not condMapEmpty!24905)) mapNonEmpty!24905))

(get-info :version)

(assert (= (and mapNonEmpty!24905 ((_ is ValueCellFull!7329) mapValue!24905)) b!840750))

(assert (= (and b!840753 ((_ is ValueCellFull!7329) mapDefault!24905)) b!840746))

(assert (= start!72514 b!840753))

(declare-fun m!784477 () Bool)

(assert (=> b!840756 m!784477))

(declare-fun m!784479 () Bool)

(assert (=> bm!37243 m!784479))

(declare-fun m!784481 () Bool)

(assert (=> mapNonEmpty!24905 m!784481))

(declare-fun m!784483 () Bool)

(assert (=> b!840755 m!784483))

(declare-fun m!784485 () Bool)

(assert (=> start!72514 m!784485))

(declare-fun m!784487 () Bool)

(assert (=> start!72514 m!784487))

(declare-fun m!784489 () Bool)

(assert (=> b!840751 m!784489))

(declare-fun m!784491 () Bool)

(assert (=> bm!37244 m!784491))

(declare-fun m!784493 () Bool)

(assert (=> bm!37244 m!784493))

(declare-fun m!784495 () Bool)

(assert (=> b!840749 m!784495))

(declare-fun m!784497 () Bool)

(assert (=> b!840754 m!784497))

(declare-fun m!784499 () Bool)

(assert (=> b!840757 m!784499))

(declare-fun m!784501 () Bool)

(assert (=> b!840752 m!784501))

(check-sat (not bm!37243) tp_is_empty!15537 b_and!22775 (not b!840752) (not b!840754) (not start!72514) (not b!840749) (not b!840755) (not b_next!13671) (not b!840756) (not bm!37244) (not b!840757) (not mapNonEmpty!24905))
(check-sat b_and!22775 (not b_next!13671))
