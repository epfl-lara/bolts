; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72520 () Bool)

(assert start!72520)

(declare-fun b_free!13677 () Bool)

(declare-fun b_next!13677 () Bool)

(assert (=> start!72520 (= b_free!13677 (not b_next!13677))))

(declare-fun tp!48131 () Bool)

(declare-fun b_and!22781 () Bool)

(assert (=> start!72520 (= tp!48131 b_and!22781)))

(declare-fun b!840864 () Bool)

(declare-fun e!469158 () Bool)

(declare-datatypes ((V!25771 0))(
  ( (V!25772 (val!7819 Int)) )
))
(declare-datatypes ((tuple2!10388 0))(
  ( (tuple2!10389 (_1!5204 (_ BitVec 64)) (_2!5204 V!25771)) )
))
(declare-datatypes ((List!16212 0))(
  ( (Nil!16209) (Cons!16208 (h!17339 tuple2!10388) (t!22591 List!16212)) )
))
(declare-datatypes ((ListLongMap!9171 0))(
  ( (ListLongMap!9172 (toList!4601 List!16212)) )
))
(declare-fun call!37264 () ListLongMap!9171)

(declare-fun call!37265 () ListLongMap!9171)

(assert (=> b!840864 (= e!469158 (= call!37264 call!37265))))

(declare-fun mapIsEmpty!24914 () Bool)

(declare-fun mapRes!24914 () Bool)

(assert (=> mapIsEmpty!24914 mapRes!24914))

(declare-fun b!840865 () Bool)

(declare-fun res!571729 () Bool)

(declare-fun e!469156 () Bool)

(assert (=> b!840865 (=> (not res!571729) (not e!469156))))

(declare-datatypes ((array!47332 0))(
  ( (array!47333 (arr!22693 (Array (_ BitVec 32) (_ BitVec 64))) (size!23134 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47332)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47332 (_ BitVec 32)) Bool)

(assert (=> b!840865 (= res!571729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840866 () Bool)

(declare-fun e!469155 () Bool)

(declare-fun tp_is_empty!15543 () Bool)

(assert (=> b!840866 (= e!469155 tp_is_empty!15543)))

(declare-fun b!840867 () Bool)

(declare-fun res!571728 () Bool)

(assert (=> b!840867 (=> (not res!571728) (not e!469156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840867 (= res!571728 (validMask!0 mask!1196))))

(declare-fun b!840868 () Bool)

(assert (=> b!840868 (= e!469156 (not true))))

(assert (=> b!840868 e!469158))

(declare-fun c!91293 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840868 (= c!91293 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25771)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!28878 0))(
  ( (Unit!28879) )
))
(declare-fun lt!380826 () Unit!28878)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7332 0))(
  ( (ValueCellFull!7332 (v!10240 V!25771)) (EmptyCell!7332) )
))
(declare-datatypes ((array!47334 0))(
  ( (array!47335 (arr!22694 (Array (_ BitVec 32) ValueCell!7332)) (size!23135 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47334)

(declare-fun minValue!654 () V!25771)

(declare-fun zeroValue!654 () V!25771)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!288 (array!47332 array!47334 (_ BitVec 32) (_ BitVec 32) V!25771 V!25771 (_ BitVec 32) (_ BitVec 64) V!25771 (_ BitVec 32) Int) Unit!28878)

(assert (=> b!840868 (= lt!380826 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!288 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37261 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2592 (array!47332 array!47334 (_ BitVec 32) (_ BitVec 32) V!25771 V!25771 (_ BitVec 32) Int) ListLongMap!9171)

(assert (=> bm!37261 (= call!37265 (getCurrentListMapNoExtraKeys!2592 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840869 () Bool)

(declare-fun res!571727 () Bool)

(assert (=> b!840869 (=> (not res!571727) (not e!469156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840869 (= res!571727 (validKeyInArray!0 k0!854))))

(declare-fun b!840870 () Bool)

(declare-fun res!571732 () Bool)

(assert (=> b!840870 (=> (not res!571732) (not e!469156))))

(assert (=> b!840870 (= res!571732 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23134 _keys!868))))))

(declare-fun b!840871 () Bool)

(declare-fun res!571734 () Bool)

(assert (=> b!840871 (=> (not res!571734) (not e!469156))))

(assert (=> b!840871 (= res!571734 (and (= (size!23135 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23134 _keys!868) (size!23135 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!24914 () Bool)

(declare-fun tp!48130 () Bool)

(assert (=> mapNonEmpty!24914 (= mapRes!24914 (and tp!48130 e!469155))))

(declare-fun mapValue!24914 () ValueCell!7332)

(declare-fun mapKey!24914 () (_ BitVec 32))

(declare-fun mapRest!24914 () (Array (_ BitVec 32) ValueCell!7332))

(assert (=> mapNonEmpty!24914 (= (arr!22694 _values!688) (store mapRest!24914 mapKey!24914 mapValue!24914))))

(declare-fun b!840872 () Bool)

(declare-fun res!571731 () Bool)

(assert (=> b!840872 (=> (not res!571731) (not e!469156))))

(assert (=> b!840872 (= res!571731 (and (= (select (arr!22693 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23134 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840873 () Bool)

(declare-fun e!469154 () Bool)

(declare-fun e!469153 () Bool)

(assert (=> b!840873 (= e!469154 (and e!469153 mapRes!24914))))

(declare-fun condMapEmpty!24914 () Bool)

(declare-fun mapDefault!24914 () ValueCell!7332)

(assert (=> b!840873 (= condMapEmpty!24914 (= (arr!22694 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7332)) mapDefault!24914)))))

(declare-fun b!840874 () Bool)

(declare-fun +!2007 (ListLongMap!9171 tuple2!10388) ListLongMap!9171)

(assert (=> b!840874 (= e!469158 (= call!37264 (+!2007 call!37265 (tuple2!10389 k0!854 v!557))))))

(declare-fun b!840863 () Bool)

(assert (=> b!840863 (= e!469153 tp_is_empty!15543)))

(declare-fun res!571733 () Bool)

(assert (=> start!72520 (=> (not res!571733) (not e!469156))))

(assert (=> start!72520 (= res!571733 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23134 _keys!868))))))

(assert (=> start!72520 e!469156))

(assert (=> start!72520 tp_is_empty!15543))

(assert (=> start!72520 true))

(assert (=> start!72520 tp!48131))

(declare-fun array_inv!18040 (array!47332) Bool)

(assert (=> start!72520 (array_inv!18040 _keys!868)))

(declare-fun array_inv!18041 (array!47334) Bool)

(assert (=> start!72520 (and (array_inv!18041 _values!688) e!469154)))

(declare-fun bm!37262 () Bool)

(assert (=> bm!37262 (= call!37264 (getCurrentListMapNoExtraKeys!2592 _keys!868 (array!47335 (store (arr!22694 _values!688) i!612 (ValueCellFull!7332 v!557)) (size!23135 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840875 () Bool)

(declare-fun res!571730 () Bool)

(assert (=> b!840875 (=> (not res!571730) (not e!469156))))

(declare-datatypes ((List!16213 0))(
  ( (Nil!16210) (Cons!16209 (h!17340 (_ BitVec 64)) (t!22592 List!16213)) )
))
(declare-fun arrayNoDuplicates!0 (array!47332 (_ BitVec 32) List!16213) Bool)

(assert (=> b!840875 (= res!571730 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16210))))

(assert (= (and start!72520 res!571733) b!840867))

(assert (= (and b!840867 res!571728) b!840871))

(assert (= (and b!840871 res!571734) b!840865))

(assert (= (and b!840865 res!571729) b!840875))

(assert (= (and b!840875 res!571730) b!840870))

(assert (= (and b!840870 res!571732) b!840869))

(assert (= (and b!840869 res!571727) b!840872))

(assert (= (and b!840872 res!571731) b!840868))

(assert (= (and b!840868 c!91293) b!840874))

(assert (= (and b!840868 (not c!91293)) b!840864))

(assert (= (or b!840874 b!840864) bm!37262))

(assert (= (or b!840874 b!840864) bm!37261))

(assert (= (and b!840873 condMapEmpty!24914) mapIsEmpty!24914))

(assert (= (and b!840873 (not condMapEmpty!24914)) mapNonEmpty!24914))

(get-info :version)

(assert (= (and mapNonEmpty!24914 ((_ is ValueCellFull!7332) mapValue!24914)) b!840866))

(assert (= (and b!840873 ((_ is ValueCellFull!7332) mapDefault!24914)) b!840863))

(assert (= start!72520 b!840873))

(declare-fun m!784555 () Bool)

(assert (=> b!840875 m!784555))

(declare-fun m!784557 () Bool)

(assert (=> b!840867 m!784557))

(declare-fun m!784559 () Bool)

(assert (=> bm!37262 m!784559))

(declare-fun m!784561 () Bool)

(assert (=> bm!37262 m!784561))

(declare-fun m!784563 () Bool)

(assert (=> b!840874 m!784563))

(declare-fun m!784565 () Bool)

(assert (=> b!840865 m!784565))

(declare-fun m!784567 () Bool)

(assert (=> b!840869 m!784567))

(declare-fun m!784569 () Bool)

(assert (=> b!840868 m!784569))

(declare-fun m!784571 () Bool)

(assert (=> start!72520 m!784571))

(declare-fun m!784573 () Bool)

(assert (=> start!72520 m!784573))

(declare-fun m!784575 () Bool)

(assert (=> bm!37261 m!784575))

(declare-fun m!784577 () Bool)

(assert (=> b!840872 m!784577))

(declare-fun m!784579 () Bool)

(assert (=> mapNonEmpty!24914 m!784579))

(check-sat (not mapNonEmpty!24914) (not bm!37262) (not b!840865) (not b_next!13677) b_and!22781 (not b!840868) (not b!840869) (not b!840874) (not bm!37261) tp_is_empty!15543 (not b!840867) (not start!72520) (not b!840875))
(check-sat b_and!22781 (not b_next!13677))
