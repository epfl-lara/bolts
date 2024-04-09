; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73012 () Bool)

(assert start!73012)

(declare-fun b_free!13899 () Bool)

(declare-fun b_next!13899 () Bool)

(assert (=> start!73012 (= b_free!13899 (not b_next!13899))))

(declare-fun tp!49202 () Bool)

(declare-fun b_and!23003 () Bool)

(assert (=> start!73012 (= tp!49202 b_and!23003)))

(declare-fun b!847690 () Bool)

(declare-fun e!473033 () Bool)

(declare-fun tp_is_empty!16035 () Bool)

(assert (=> b!847690 (= e!473033 tp_is_empty!16035)))

(declare-fun e!473029 () Bool)

(declare-fun b!847691 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((V!26427 0))(
  ( (V!26428 (val!8065 Int)) )
))
(declare-datatypes ((tuple2!10552 0))(
  ( (tuple2!10553 (_1!5286 (_ BitVec 64)) (_2!5286 V!26427)) )
))
(declare-datatypes ((List!16462 0))(
  ( (Nil!16459) (Cons!16458 (h!17589 tuple2!10552) (t!22841 List!16462)) )
))
(declare-datatypes ((ListLongMap!9335 0))(
  ( (ListLongMap!9336 (toList!4683 List!16462)) )
))
(declare-fun call!37553 () ListLongMap!9335)

(declare-fun call!37552 () ListLongMap!9335)

(declare-fun v!557 () V!26427)

(declare-fun +!2039 (ListLongMap!9335 tuple2!10552) ListLongMap!9335)

(assert (=> b!847691 (= e!473029 (= call!37552 (+!2039 call!37553 (tuple2!10553 k0!854 v!557))))))

(declare-fun b!847692 () Bool)

(declare-fun e!473028 () Bool)

(declare-fun e!473034 () Bool)

(declare-fun mapRes!25652 () Bool)

(assert (=> b!847692 (= e!473028 (and e!473034 mapRes!25652))))

(declare-fun condMapEmpty!25652 () Bool)

(declare-datatypes ((ValueCell!7578 0))(
  ( (ValueCellFull!7578 (v!10486 V!26427)) (EmptyCell!7578) )
))
(declare-datatypes ((array!48262 0))(
  ( (array!48263 (arr!23158 (Array (_ BitVec 32) ValueCell!7578)) (size!23599 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48262)

(declare-fun mapDefault!25652 () ValueCell!7578)

(assert (=> b!847692 (= condMapEmpty!25652 (= (arr!23158 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7578)) mapDefault!25652)))))

(declare-fun b!847693 () Bool)

(declare-fun e!473031 () Bool)

(declare-fun e!473032 () Bool)

(assert (=> b!847693 (= e!473031 e!473032)))

(declare-fun res!576057 () Bool)

(assert (=> b!847693 (=> (not res!576057) (not e!473032))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847693 (= res!576057 (= from!1053 i!612))))

(declare-fun lt!381796 () array!48262)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!381795 () ListLongMap!9335)

(declare-datatypes ((array!48264 0))(
  ( (array!48265 (arr!23159 (Array (_ BitVec 32) (_ BitVec 64))) (size!23600 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48264)

(declare-fun minValue!654 () V!26427)

(declare-fun zeroValue!654 () V!26427)

(declare-fun getCurrentListMapNoExtraKeys!2672 (array!48264 array!48262 (_ BitVec 32) (_ BitVec 32) V!26427 V!26427 (_ BitVec 32) Int) ListLongMap!9335)

(assert (=> b!847693 (= lt!381795 (getCurrentListMapNoExtraKeys!2672 _keys!868 lt!381796 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!847693 (= lt!381796 (array!48263 (store (arr!23158 _values!688) i!612 (ValueCellFull!7578 v!557)) (size!23599 _values!688)))))

(declare-fun lt!381798 () ListLongMap!9335)

(assert (=> b!847693 (= lt!381798 (getCurrentListMapNoExtraKeys!2672 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847694 () Bool)

(declare-fun res!576052 () Bool)

(assert (=> b!847694 (=> (not res!576052) (not e!473031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847694 (= res!576052 (validMask!0 mask!1196))))

(declare-fun b!847695 () Bool)

(declare-fun res!576056 () Bool)

(assert (=> b!847695 (=> (not res!576056) (not e!473031))))

(assert (=> b!847695 (= res!576056 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23600 _keys!868))))))

(declare-fun b!847696 () Bool)

(assert (=> b!847696 (= e!473029 (= call!37552 call!37553))))

(declare-fun res!576059 () Bool)

(assert (=> start!73012 (=> (not res!576059) (not e!473031))))

(assert (=> start!73012 (= res!576059 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23600 _keys!868))))))

(assert (=> start!73012 e!473031))

(assert (=> start!73012 tp_is_empty!16035))

(assert (=> start!73012 true))

(assert (=> start!73012 tp!49202))

(declare-fun array_inv!18370 (array!48264) Bool)

(assert (=> start!73012 (array_inv!18370 _keys!868)))

(declare-fun array_inv!18371 (array!48262) Bool)

(assert (=> start!73012 (and (array_inv!18371 _values!688) e!473028)))

(declare-fun mapIsEmpty!25652 () Bool)

(assert (=> mapIsEmpty!25652 mapRes!25652))

(declare-fun b!847697 () Bool)

(declare-fun res!576054 () Bool)

(assert (=> b!847697 (=> (not res!576054) (not e!473031))))

(assert (=> b!847697 (= res!576054 (and (= (size!23599 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23600 _keys!868) (size!23599 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847698 () Bool)

(declare-fun res!576058 () Bool)

(assert (=> b!847698 (=> (not res!576058) (not e!473031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847698 (= res!576058 (validKeyInArray!0 k0!854))))

(declare-fun b!847699 () Bool)

(assert (=> b!847699 (= e!473034 tp_is_empty!16035)))

(declare-fun b!847700 () Bool)

(declare-fun res!576060 () Bool)

(assert (=> b!847700 (=> (not res!576060) (not e!473031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48264 (_ BitVec 32)) Bool)

(assert (=> b!847700 (= res!576060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847701 () Bool)

(declare-fun res!576053 () Bool)

(assert (=> b!847701 (=> (not res!576053) (not e!473031))))

(assert (=> b!847701 (= res!576053 (and (= (select (arr!23159 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!847702 () Bool)

(assert (=> b!847702 (= e!473032 (not true))))

(assert (=> b!847702 e!473029))

(declare-fun c!91437 () Bool)

(assert (=> b!847702 (= c!91437 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28934 0))(
  ( (Unit!28935) )
))
(declare-fun lt!381797 () Unit!28934)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!316 (array!48264 array!48262 (_ BitVec 32) (_ BitVec 32) V!26427 V!26427 (_ BitVec 32) (_ BitVec 64) V!26427 (_ BitVec 32) Int) Unit!28934)

(assert (=> b!847702 (= lt!381797 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!316 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37549 () Bool)

(assert (=> bm!37549 (= call!37553 (getCurrentListMapNoExtraKeys!2672 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37550 () Bool)

(assert (=> bm!37550 (= call!37552 (getCurrentListMapNoExtraKeys!2672 _keys!868 lt!381796 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847703 () Bool)

(declare-fun res!576055 () Bool)

(assert (=> b!847703 (=> (not res!576055) (not e!473031))))

(declare-datatypes ((List!16463 0))(
  ( (Nil!16460) (Cons!16459 (h!17590 (_ BitVec 64)) (t!22842 List!16463)) )
))
(declare-fun arrayNoDuplicates!0 (array!48264 (_ BitVec 32) List!16463) Bool)

(assert (=> b!847703 (= res!576055 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16460))))

(declare-fun mapNonEmpty!25652 () Bool)

(declare-fun tp!49201 () Bool)

(assert (=> mapNonEmpty!25652 (= mapRes!25652 (and tp!49201 e!473033))))

(declare-fun mapKey!25652 () (_ BitVec 32))

(declare-fun mapValue!25652 () ValueCell!7578)

(declare-fun mapRest!25652 () (Array (_ BitVec 32) ValueCell!7578))

(assert (=> mapNonEmpty!25652 (= (arr!23158 _values!688) (store mapRest!25652 mapKey!25652 mapValue!25652))))

(assert (= (and start!73012 res!576059) b!847694))

(assert (= (and b!847694 res!576052) b!847697))

(assert (= (and b!847697 res!576054) b!847700))

(assert (= (and b!847700 res!576060) b!847703))

(assert (= (and b!847703 res!576055) b!847695))

(assert (= (and b!847695 res!576056) b!847698))

(assert (= (and b!847698 res!576058) b!847701))

(assert (= (and b!847701 res!576053) b!847693))

(assert (= (and b!847693 res!576057) b!847702))

(assert (= (and b!847702 c!91437) b!847691))

(assert (= (and b!847702 (not c!91437)) b!847696))

(assert (= (or b!847691 b!847696) bm!37550))

(assert (= (or b!847691 b!847696) bm!37549))

(assert (= (and b!847692 condMapEmpty!25652) mapIsEmpty!25652))

(assert (= (and b!847692 (not condMapEmpty!25652)) mapNonEmpty!25652))

(get-info :version)

(assert (= (and mapNonEmpty!25652 ((_ is ValueCellFull!7578) mapValue!25652)) b!847690))

(assert (= (and b!847692 ((_ is ValueCellFull!7578) mapDefault!25652)) b!847699))

(assert (= start!73012 b!847692))

(declare-fun m!788753 () Bool)

(assert (=> b!847693 m!788753))

(declare-fun m!788755 () Bool)

(assert (=> b!847693 m!788755))

(declare-fun m!788757 () Bool)

(assert (=> b!847693 m!788757))

(declare-fun m!788759 () Bool)

(assert (=> b!847694 m!788759))

(declare-fun m!788761 () Bool)

(assert (=> b!847691 m!788761))

(declare-fun m!788763 () Bool)

(assert (=> bm!37550 m!788763))

(declare-fun m!788765 () Bool)

(assert (=> b!847703 m!788765))

(declare-fun m!788767 () Bool)

(assert (=> b!847698 m!788767))

(declare-fun m!788769 () Bool)

(assert (=> mapNonEmpty!25652 m!788769))

(declare-fun m!788771 () Bool)

(assert (=> b!847702 m!788771))

(declare-fun m!788773 () Bool)

(assert (=> b!847700 m!788773))

(declare-fun m!788775 () Bool)

(assert (=> b!847701 m!788775))

(declare-fun m!788777 () Bool)

(assert (=> bm!37549 m!788777))

(declare-fun m!788779 () Bool)

(assert (=> start!73012 m!788779))

(declare-fun m!788781 () Bool)

(assert (=> start!73012 m!788781))

(check-sat (not b!847694) (not bm!37549) (not start!73012) b_and!23003 (not bm!37550) (not b!847703) (not b_next!13899) (not b!847691) (not b!847698) (not mapNonEmpty!25652) (not b!847702) (not b!847700) tp_is_empty!16035 (not b!847693))
(check-sat b_and!23003 (not b_next!13899))
