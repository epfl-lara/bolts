; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73018 () Bool)

(assert start!73018)

(declare-fun b_free!13905 () Bool)

(declare-fun b_next!13905 () Bool)

(assert (=> start!73018 (= b_free!13905 (not b_next!13905))))

(declare-fun tp!49219 () Bool)

(declare-fun b_and!23009 () Bool)

(assert (=> start!73018 (= tp!49219 b_and!23009)))

(declare-fun b!847816 () Bool)

(declare-fun res!576135 () Bool)

(declare-fun e!473095 () Bool)

(assert (=> b!847816 (=> (not res!576135) (not e!473095))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48274 0))(
  ( (array!48275 (arr!23164 (Array (_ BitVec 32) (_ BitVec 64))) (size!23605 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48274)

(assert (=> b!847816 (= res!576135 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23605 _keys!868))))))

(declare-fun res!576138 () Bool)

(assert (=> start!73018 (=> (not res!576138) (not e!473095))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73018 (= res!576138 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23605 _keys!868))))))

(assert (=> start!73018 e!473095))

(declare-fun tp_is_empty!16041 () Bool)

(assert (=> start!73018 tp_is_empty!16041))

(assert (=> start!73018 true))

(assert (=> start!73018 tp!49219))

(declare-fun array_inv!18376 (array!48274) Bool)

(assert (=> start!73018 (array_inv!18376 _keys!868)))

(declare-datatypes ((V!26435 0))(
  ( (V!26436 (val!8068 Int)) )
))
(declare-datatypes ((ValueCell!7581 0))(
  ( (ValueCellFull!7581 (v!10489 V!26435)) (EmptyCell!7581) )
))
(declare-datatypes ((array!48276 0))(
  ( (array!48277 (arr!23165 (Array (_ BitVec 32) ValueCell!7581)) (size!23606 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48276)

(declare-fun e!473093 () Bool)

(declare-fun array_inv!18377 (array!48276) Bool)

(assert (=> start!73018 (and (array_inv!18377 _values!688) e!473093)))

(declare-fun b!847817 () Bool)

(declare-fun e!473092 () Bool)

(declare-datatypes ((tuple2!10558 0))(
  ( (tuple2!10559 (_1!5289 (_ BitVec 64)) (_2!5289 V!26435)) )
))
(declare-datatypes ((List!16467 0))(
  ( (Nil!16464) (Cons!16463 (h!17594 tuple2!10558) (t!22846 List!16467)) )
))
(declare-datatypes ((ListLongMap!9341 0))(
  ( (ListLongMap!9342 (toList!4686 List!16467)) )
))
(declare-fun call!37571 () ListLongMap!9341)

(declare-fun call!37570 () ListLongMap!9341)

(assert (=> b!847817 (= e!473092 (= call!37571 call!37570))))

(declare-fun bm!37567 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!381834 () array!48276)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26435)

(declare-fun zeroValue!654 () V!26435)

(declare-fun getCurrentListMapNoExtraKeys!2675 (array!48274 array!48276 (_ BitVec 32) (_ BitVec 32) V!26435 V!26435 (_ BitVec 32) Int) ListLongMap!9341)

(assert (=> bm!37567 (= call!37571 (getCurrentListMapNoExtraKeys!2675 _keys!868 lt!381834 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847818 () Bool)

(declare-fun res!576141 () Bool)

(assert (=> b!847818 (=> (not res!576141) (not e!473095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847818 (= res!576141 (validMask!0 mask!1196))))

(declare-fun b!847819 () Bool)

(declare-fun res!576133 () Bool)

(assert (=> b!847819 (=> (not res!576133) (not e!473095))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847819 (= res!576133 (validKeyInArray!0 k0!854))))

(declare-fun b!847820 () Bool)

(declare-fun e!473094 () Bool)

(assert (=> b!847820 (= e!473094 tp_is_empty!16041)))

(declare-fun b!847821 () Bool)

(declare-fun v!557 () V!26435)

(declare-fun +!2041 (ListLongMap!9341 tuple2!10558) ListLongMap!9341)

(assert (=> b!847821 (= e!473092 (= call!37571 (+!2041 call!37570 (tuple2!10559 k0!854 v!557))))))

(declare-fun mapNonEmpty!25661 () Bool)

(declare-fun mapRes!25661 () Bool)

(declare-fun tp!49220 () Bool)

(assert (=> mapNonEmpty!25661 (= mapRes!25661 (and tp!49220 e!473094))))

(declare-fun mapRest!25661 () (Array (_ BitVec 32) ValueCell!7581))

(declare-fun mapValue!25661 () ValueCell!7581)

(declare-fun mapKey!25661 () (_ BitVec 32))

(assert (=> mapNonEmpty!25661 (= (arr!23165 _values!688) (store mapRest!25661 mapKey!25661 mapValue!25661))))

(declare-fun b!847822 () Bool)

(declare-fun e!473096 () Bool)

(assert (=> b!847822 (= e!473096 (not true))))

(assert (=> b!847822 e!473092))

(declare-fun c!91446 () Bool)

(assert (=> b!847822 (= c!91446 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28938 0))(
  ( (Unit!28939) )
))
(declare-fun lt!381832 () Unit!28938)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!318 (array!48274 array!48276 (_ BitVec 32) (_ BitVec 32) V!26435 V!26435 (_ BitVec 32) (_ BitVec 64) V!26435 (_ BitVec 32) Int) Unit!28938)

(assert (=> b!847822 (= lt!381832 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!318 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25661 () Bool)

(assert (=> mapIsEmpty!25661 mapRes!25661))

(declare-fun b!847823 () Bool)

(declare-fun res!576139 () Bool)

(assert (=> b!847823 (=> (not res!576139) (not e!473095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48274 (_ BitVec 32)) Bool)

(assert (=> b!847823 (= res!576139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847824 () Bool)

(declare-fun e!473097 () Bool)

(assert (=> b!847824 (= e!473097 tp_is_empty!16041)))

(declare-fun b!847825 () Bool)

(declare-fun res!576140 () Bool)

(assert (=> b!847825 (=> (not res!576140) (not e!473095))))

(declare-datatypes ((List!16468 0))(
  ( (Nil!16465) (Cons!16464 (h!17595 (_ BitVec 64)) (t!22847 List!16468)) )
))
(declare-fun arrayNoDuplicates!0 (array!48274 (_ BitVec 32) List!16468) Bool)

(assert (=> b!847825 (= res!576140 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16465))))

(declare-fun b!847826 () Bool)

(assert (=> b!847826 (= e!473095 e!473096)))

(declare-fun res!576137 () Bool)

(assert (=> b!847826 (=> (not res!576137) (not e!473096))))

(assert (=> b!847826 (= res!576137 (= from!1053 i!612))))

(declare-fun lt!381833 () ListLongMap!9341)

(assert (=> b!847826 (= lt!381833 (getCurrentListMapNoExtraKeys!2675 _keys!868 lt!381834 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!847826 (= lt!381834 (array!48277 (store (arr!23165 _values!688) i!612 (ValueCellFull!7581 v!557)) (size!23606 _values!688)))))

(declare-fun lt!381831 () ListLongMap!9341)

(assert (=> b!847826 (= lt!381831 (getCurrentListMapNoExtraKeys!2675 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847827 () Bool)

(declare-fun res!576134 () Bool)

(assert (=> b!847827 (=> (not res!576134) (not e!473095))))

(assert (=> b!847827 (= res!576134 (and (= (select (arr!23164 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun bm!37568 () Bool)

(assert (=> bm!37568 (= call!37570 (getCurrentListMapNoExtraKeys!2675 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847828 () Bool)

(declare-fun res!576136 () Bool)

(assert (=> b!847828 (=> (not res!576136) (not e!473095))))

(assert (=> b!847828 (= res!576136 (and (= (size!23606 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23605 _keys!868) (size!23606 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847829 () Bool)

(assert (=> b!847829 (= e!473093 (and e!473097 mapRes!25661))))

(declare-fun condMapEmpty!25661 () Bool)

(declare-fun mapDefault!25661 () ValueCell!7581)

(assert (=> b!847829 (= condMapEmpty!25661 (= (arr!23165 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7581)) mapDefault!25661)))))

(assert (= (and start!73018 res!576138) b!847818))

(assert (= (and b!847818 res!576141) b!847828))

(assert (= (and b!847828 res!576136) b!847823))

(assert (= (and b!847823 res!576139) b!847825))

(assert (= (and b!847825 res!576140) b!847816))

(assert (= (and b!847816 res!576135) b!847819))

(assert (= (and b!847819 res!576133) b!847827))

(assert (= (and b!847827 res!576134) b!847826))

(assert (= (and b!847826 res!576137) b!847822))

(assert (= (and b!847822 c!91446) b!847821))

(assert (= (and b!847822 (not c!91446)) b!847817))

(assert (= (or b!847821 b!847817) bm!37567))

(assert (= (or b!847821 b!847817) bm!37568))

(assert (= (and b!847829 condMapEmpty!25661) mapIsEmpty!25661))

(assert (= (and b!847829 (not condMapEmpty!25661)) mapNonEmpty!25661))

(get-info :version)

(assert (= (and mapNonEmpty!25661 ((_ is ValueCellFull!7581) mapValue!25661)) b!847820))

(assert (= (and b!847829 ((_ is ValueCellFull!7581) mapDefault!25661)) b!847824))

(assert (= start!73018 b!847829))

(declare-fun m!788843 () Bool)

(assert (=> b!847821 m!788843))

(declare-fun m!788845 () Bool)

(assert (=> bm!37567 m!788845))

(declare-fun m!788847 () Bool)

(assert (=> bm!37568 m!788847))

(declare-fun m!788849 () Bool)

(assert (=> start!73018 m!788849))

(declare-fun m!788851 () Bool)

(assert (=> start!73018 m!788851))

(declare-fun m!788853 () Bool)

(assert (=> b!847818 m!788853))

(declare-fun m!788855 () Bool)

(assert (=> mapNonEmpty!25661 m!788855))

(declare-fun m!788857 () Bool)

(assert (=> b!847825 m!788857))

(declare-fun m!788859 () Bool)

(assert (=> b!847819 m!788859))

(declare-fun m!788861 () Bool)

(assert (=> b!847827 m!788861))

(declare-fun m!788863 () Bool)

(assert (=> b!847822 m!788863))

(declare-fun m!788865 () Bool)

(assert (=> b!847826 m!788865))

(declare-fun m!788867 () Bool)

(assert (=> b!847826 m!788867))

(declare-fun m!788869 () Bool)

(assert (=> b!847826 m!788869))

(declare-fun m!788871 () Bool)

(assert (=> b!847823 m!788871))

(check-sat (not b!847818) (not b!847825) (not b!847822) (not mapNonEmpty!25661) (not start!73018) b_and!23009 (not b!847821) (not b!847823) (not b!847819) (not bm!37567) (not bm!37568) tp_is_empty!16041 (not b!847826) (not b_next!13905))
(check-sat b_and!23009 (not b_next!13905))
