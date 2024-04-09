; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73030 () Bool)

(assert start!73030)

(declare-fun b_free!13917 () Bool)

(declare-fun b_next!13917 () Bool)

(assert (=> start!73030 (= b_free!13917 (not b_next!13917))))

(declare-fun tp!49255 () Bool)

(declare-fun b_and!23021 () Bool)

(assert (=> start!73030 (= tp!49255 b_and!23021)))

(declare-datatypes ((V!26451 0))(
  ( (V!26452 (val!8074 Int)) )
))
(declare-datatypes ((tuple2!10570 0))(
  ( (tuple2!10571 (_1!5295 (_ BitVec 64)) (_2!5295 V!26451)) )
))
(declare-datatypes ((List!16477 0))(
  ( (Nil!16474) (Cons!16473 (h!17604 tuple2!10570) (t!22856 List!16477)) )
))
(declare-datatypes ((ListLongMap!9353 0))(
  ( (ListLongMap!9354 (toList!4692 List!16477)) )
))
(declare-fun call!37607 () ListLongMap!9353)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7587 0))(
  ( (ValueCellFull!7587 (v!10495 V!26451)) (EmptyCell!7587) )
))
(declare-datatypes ((array!48298 0))(
  ( (array!48299 (arr!23176 (Array (_ BitVec 32) ValueCell!7587)) (size!23617 (_ BitVec 32))) )
))
(declare-fun lt!381906 () array!48298)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48300 0))(
  ( (array!48301 (arr!23177 (Array (_ BitVec 32) (_ BitVec 64))) (size!23618 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48300)

(declare-fun bm!37603 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26451)

(declare-fun zeroValue!654 () V!26451)

(declare-fun getCurrentListMapNoExtraKeys!2681 (array!48300 array!48298 (_ BitVec 32) (_ BitVec 32) V!26451 V!26451 (_ BitVec 32) Int) ListLongMap!9353)

(assert (=> bm!37603 (= call!37607 (getCurrentListMapNoExtraKeys!2681 _keys!868 lt!381906 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!576299 () Bool)

(declare-fun e!473220 () Bool)

(assert (=> start!73030 (=> (not res!576299) (not e!473220))))

(assert (=> start!73030 (= res!576299 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23618 _keys!868))))))

(assert (=> start!73030 e!473220))

(declare-fun tp_is_empty!16053 () Bool)

(assert (=> start!73030 tp_is_empty!16053))

(assert (=> start!73030 true))

(assert (=> start!73030 tp!49255))

(declare-fun array_inv!18382 (array!48300) Bool)

(assert (=> start!73030 (array_inv!18382 _keys!868)))

(declare-fun _values!688 () array!48298)

(declare-fun e!473217 () Bool)

(declare-fun array_inv!18383 (array!48298) Bool)

(assert (=> start!73030 (and (array_inv!18383 _values!688) e!473217)))

(declare-fun b!848068 () Bool)

(declare-fun res!576295 () Bool)

(assert (=> b!848068 (=> (not res!576295) (not e!473220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848068 (= res!576295 (validMask!0 mask!1196))))

(declare-fun b!848069 () Bool)

(declare-fun e!473219 () Bool)

(assert (=> b!848069 (= e!473219 (not true))))

(declare-fun e!473221 () Bool)

(assert (=> b!848069 e!473221))

(declare-fun c!91464 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848069 (= c!91464 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26451)

(declare-datatypes ((Unit!28946 0))(
  ( (Unit!28947) )
))
(declare-fun lt!381903 () Unit!28946)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!322 (array!48300 array!48298 (_ BitVec 32) (_ BitVec 32) V!26451 V!26451 (_ BitVec 32) (_ BitVec 64) V!26451 (_ BitVec 32) Int) Unit!28946)

(assert (=> b!848069 (= lt!381903 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!322 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848070 () Bool)

(declare-fun res!576301 () Bool)

(assert (=> b!848070 (=> (not res!576301) (not e!473220))))

(assert (=> b!848070 (= res!576301 (and (= (size!23617 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23618 _keys!868) (size!23617 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25679 () Bool)

(declare-fun mapRes!25679 () Bool)

(declare-fun tp!49256 () Bool)

(declare-fun e!473223 () Bool)

(assert (=> mapNonEmpty!25679 (= mapRes!25679 (and tp!49256 e!473223))))

(declare-fun mapValue!25679 () ValueCell!7587)

(declare-fun mapRest!25679 () (Array (_ BitVec 32) ValueCell!7587))

(declare-fun mapKey!25679 () (_ BitVec 32))

(assert (=> mapNonEmpty!25679 (= (arr!23176 _values!688) (store mapRest!25679 mapKey!25679 mapValue!25679))))

(declare-fun b!848071 () Bool)

(declare-fun res!576302 () Bool)

(assert (=> b!848071 (=> (not res!576302) (not e!473220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848071 (= res!576302 (validKeyInArray!0 k0!854))))

(declare-fun b!848072 () Bool)

(declare-fun e!473222 () Bool)

(assert (=> b!848072 (= e!473217 (and e!473222 mapRes!25679))))

(declare-fun condMapEmpty!25679 () Bool)

(declare-fun mapDefault!25679 () ValueCell!7587)

(assert (=> b!848072 (= condMapEmpty!25679 (= (arr!23176 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7587)) mapDefault!25679)))))

(declare-fun b!848073 () Bool)

(declare-fun res!576300 () Bool)

(assert (=> b!848073 (=> (not res!576300) (not e!473220))))

(assert (=> b!848073 (= res!576300 (and (= (select (arr!23177 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun bm!37604 () Bool)

(declare-fun call!37606 () ListLongMap!9353)

(assert (=> bm!37604 (= call!37606 (getCurrentListMapNoExtraKeys!2681 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25679 () Bool)

(assert (=> mapIsEmpty!25679 mapRes!25679))

(declare-fun b!848074 () Bool)

(declare-fun res!576296 () Bool)

(assert (=> b!848074 (=> (not res!576296) (not e!473220))))

(declare-datatypes ((List!16478 0))(
  ( (Nil!16475) (Cons!16474 (h!17605 (_ BitVec 64)) (t!22857 List!16478)) )
))
(declare-fun arrayNoDuplicates!0 (array!48300 (_ BitVec 32) List!16478) Bool)

(assert (=> b!848074 (= res!576296 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16475))))

(declare-fun b!848075 () Bool)

(declare-fun res!576298 () Bool)

(assert (=> b!848075 (=> (not res!576298) (not e!473220))))

(assert (=> b!848075 (= res!576298 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23618 _keys!868))))))

(declare-fun b!848076 () Bool)

(assert (=> b!848076 (= e!473223 tp_is_empty!16053)))

(declare-fun b!848077 () Bool)

(assert (=> b!848077 (= e!473220 e!473219)))

(declare-fun res!576303 () Bool)

(assert (=> b!848077 (=> (not res!576303) (not e!473219))))

(assert (=> b!848077 (= res!576303 (= from!1053 i!612))))

(declare-fun lt!381905 () ListLongMap!9353)

(assert (=> b!848077 (= lt!381905 (getCurrentListMapNoExtraKeys!2681 _keys!868 lt!381906 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!848077 (= lt!381906 (array!48299 (store (arr!23176 _values!688) i!612 (ValueCellFull!7587 v!557)) (size!23617 _values!688)))))

(declare-fun lt!381904 () ListLongMap!9353)

(assert (=> b!848077 (= lt!381904 (getCurrentListMapNoExtraKeys!2681 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848078 () Bool)

(assert (=> b!848078 (= e!473221 (= call!37607 call!37606))))

(declare-fun b!848079 () Bool)

(assert (=> b!848079 (= e!473222 tp_is_empty!16053)))

(declare-fun b!848080 () Bool)

(declare-fun +!2044 (ListLongMap!9353 tuple2!10570) ListLongMap!9353)

(assert (=> b!848080 (= e!473221 (= call!37607 (+!2044 call!37606 (tuple2!10571 k0!854 v!557))))))

(declare-fun b!848081 () Bool)

(declare-fun res!576297 () Bool)

(assert (=> b!848081 (=> (not res!576297) (not e!473220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48300 (_ BitVec 32)) Bool)

(assert (=> b!848081 (= res!576297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73030 res!576299) b!848068))

(assert (= (and b!848068 res!576295) b!848070))

(assert (= (and b!848070 res!576301) b!848081))

(assert (= (and b!848081 res!576297) b!848074))

(assert (= (and b!848074 res!576296) b!848075))

(assert (= (and b!848075 res!576298) b!848071))

(assert (= (and b!848071 res!576302) b!848073))

(assert (= (and b!848073 res!576300) b!848077))

(assert (= (and b!848077 res!576303) b!848069))

(assert (= (and b!848069 c!91464) b!848080))

(assert (= (and b!848069 (not c!91464)) b!848078))

(assert (= (or b!848080 b!848078) bm!37603))

(assert (= (or b!848080 b!848078) bm!37604))

(assert (= (and b!848072 condMapEmpty!25679) mapIsEmpty!25679))

(assert (= (and b!848072 (not condMapEmpty!25679)) mapNonEmpty!25679))

(get-info :version)

(assert (= (and mapNonEmpty!25679 ((_ is ValueCellFull!7587) mapValue!25679)) b!848076))

(assert (= (and b!848072 ((_ is ValueCellFull!7587) mapDefault!25679)) b!848079))

(assert (= start!73030 b!848072))

(declare-fun m!789023 () Bool)

(assert (=> b!848074 m!789023))

(declare-fun m!789025 () Bool)

(assert (=> b!848081 m!789025))

(declare-fun m!789027 () Bool)

(assert (=> mapNonEmpty!25679 m!789027))

(declare-fun m!789029 () Bool)

(assert (=> b!848068 m!789029))

(declare-fun m!789031 () Bool)

(assert (=> b!848080 m!789031))

(declare-fun m!789033 () Bool)

(assert (=> b!848077 m!789033))

(declare-fun m!789035 () Bool)

(assert (=> b!848077 m!789035))

(declare-fun m!789037 () Bool)

(assert (=> b!848077 m!789037))

(declare-fun m!789039 () Bool)

(assert (=> b!848071 m!789039))

(declare-fun m!789041 () Bool)

(assert (=> bm!37604 m!789041))

(declare-fun m!789043 () Bool)

(assert (=> b!848069 m!789043))

(declare-fun m!789045 () Bool)

(assert (=> b!848073 m!789045))

(declare-fun m!789047 () Bool)

(assert (=> bm!37603 m!789047))

(declare-fun m!789049 () Bool)

(assert (=> start!73030 m!789049))

(declare-fun m!789051 () Bool)

(assert (=> start!73030 m!789051))

(check-sat (not b!848080) (not b!848077) (not bm!37603) (not b_next!13917) (not mapNonEmpty!25679) (not b!848074) (not b!848069) b_and!23021 (not b!848071) (not b!848068) tp_is_empty!16053 (not bm!37604) (not b!848081) (not start!73030))
(check-sat b_and!23021 (not b_next!13917))
