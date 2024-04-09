; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72988 () Bool)

(assert start!72988)

(declare-fun b_free!13875 () Bool)

(declare-fun b_next!13875 () Bool)

(assert (=> start!72988 (= b_free!13875 (not b_next!13875))))

(declare-fun tp!49129 () Bool)

(declare-fun b_and!22979 () Bool)

(assert (=> start!72988 (= tp!49129 b_and!22979)))

(declare-datatypes ((V!26395 0))(
  ( (V!26396 (val!8053 Int)) )
))
(declare-datatypes ((tuple2!10534 0))(
  ( (tuple2!10535 (_1!5277 (_ BitVec 64)) (_2!5277 V!26395)) )
))
(declare-datatypes ((List!16448 0))(
  ( (Nil!16445) (Cons!16444 (h!17575 tuple2!10534) (t!22827 List!16448)) )
))
(declare-datatypes ((ListLongMap!9317 0))(
  ( (ListLongMap!9318 (toList!4674 List!16448)) )
))
(declare-fun call!37481 () ListLongMap!9317)

(declare-fun v!557 () V!26395)

(declare-fun e!472781 () Bool)

(declare-fun b!847186 () Bool)

(declare-fun call!37480 () ListLongMap!9317)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2032 (ListLongMap!9317 tuple2!10534) ListLongMap!9317)

(assert (=> b!847186 (= e!472781 (= call!37481 (+!2032 call!37480 (tuple2!10535 k0!854 v!557))))))

(declare-fun b!847187 () Bool)

(declare-fun res!575728 () Bool)

(declare-fun e!472777 () Bool)

(assert (=> b!847187 (=> (not res!575728) (not e!472777))))

(declare-datatypes ((array!48218 0))(
  ( (array!48219 (arr!23136 (Array (_ BitVec 32) (_ BitVec 64))) (size!23577 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48218)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48218 (_ BitVec 32)) Bool)

(assert (=> b!847187 (= res!575728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847188 () Bool)

(declare-fun res!575733 () Bool)

(assert (=> b!847188 (=> (not res!575733) (not e!472777))))

(declare-datatypes ((List!16449 0))(
  ( (Nil!16446) (Cons!16445 (h!17576 (_ BitVec 64)) (t!22828 List!16449)) )
))
(declare-fun arrayNoDuplicates!0 (array!48218 (_ BitVec 32) List!16449) Bool)

(assert (=> b!847188 (= res!575733 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16446))))

(declare-fun b!847189 () Bool)

(declare-fun res!575736 () Bool)

(assert (=> b!847189 (=> (not res!575736) (not e!472777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847189 (= res!575736 (validKeyInArray!0 k0!854))))

(declare-fun b!847191 () Bool)

(declare-fun e!472778 () Bool)

(assert (=> b!847191 (= e!472777 e!472778)))

(declare-fun res!575731 () Bool)

(assert (=> b!847191 (=> (not res!575731) (not e!472778))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847191 (= res!575731 (= from!1053 i!612))))

(declare-fun lt!381654 () ListLongMap!9317)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7566 0))(
  ( (ValueCellFull!7566 (v!10474 V!26395)) (EmptyCell!7566) )
))
(declare-datatypes ((array!48220 0))(
  ( (array!48221 (arr!23137 (Array (_ BitVec 32) ValueCell!7566)) (size!23578 (_ BitVec 32))) )
))
(declare-fun lt!381652 () array!48220)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26395)

(declare-fun zeroValue!654 () V!26395)

(declare-fun getCurrentListMapNoExtraKeys!2663 (array!48218 array!48220 (_ BitVec 32) (_ BitVec 32) V!26395 V!26395 (_ BitVec 32) Int) ListLongMap!9317)

(assert (=> b!847191 (= lt!381654 (getCurrentListMapNoExtraKeys!2663 _keys!868 lt!381652 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!48220)

(assert (=> b!847191 (= lt!381652 (array!48221 (store (arr!23137 _values!688) i!612 (ValueCellFull!7566 v!557)) (size!23578 _values!688)))))

(declare-fun lt!381651 () ListLongMap!9317)

(assert (=> b!847191 (= lt!381651 (getCurrentListMapNoExtraKeys!2663 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847192 () Bool)

(assert (=> b!847192 (= e!472778 (not true))))

(assert (=> b!847192 e!472781))

(declare-fun c!91401 () Bool)

(assert (=> b!847192 (= c!91401 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28920 0))(
  ( (Unit!28921) )
))
(declare-fun lt!381653 () Unit!28920)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!309 (array!48218 array!48220 (_ BitVec 32) (_ BitVec 32) V!26395 V!26395 (_ BitVec 32) (_ BitVec 64) V!26395 (_ BitVec 32) Int) Unit!28920)

(assert (=> b!847192 (= lt!381653 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!309 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847193 () Bool)

(assert (=> b!847193 (= e!472781 (= call!37481 call!37480))))

(declare-fun mapNonEmpty!25616 () Bool)

(declare-fun mapRes!25616 () Bool)

(declare-fun tp!49130 () Bool)

(declare-fun e!472782 () Bool)

(assert (=> mapNonEmpty!25616 (= mapRes!25616 (and tp!49130 e!472782))))

(declare-fun mapValue!25616 () ValueCell!7566)

(declare-fun mapKey!25616 () (_ BitVec 32))

(declare-fun mapRest!25616 () (Array (_ BitVec 32) ValueCell!7566))

(assert (=> mapNonEmpty!25616 (= (arr!23137 _values!688) (store mapRest!25616 mapKey!25616 mapValue!25616))))

(declare-fun b!847194 () Bool)

(declare-fun res!575729 () Bool)

(assert (=> b!847194 (=> (not res!575729) (not e!472777))))

(assert (=> b!847194 (= res!575729 (and (= (select (arr!23136 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!25616 () Bool)

(assert (=> mapIsEmpty!25616 mapRes!25616))

(declare-fun b!847195 () Bool)

(declare-fun res!575735 () Bool)

(assert (=> b!847195 (=> (not res!575735) (not e!472777))))

(assert (=> b!847195 (= res!575735 (and (= (size!23578 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23577 _keys!868) (size!23578 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37477 () Bool)

(assert (=> bm!37477 (= call!37480 (getCurrentListMapNoExtraKeys!2663 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37478 () Bool)

(assert (=> bm!37478 (= call!37481 (getCurrentListMapNoExtraKeys!2663 _keys!868 lt!381652 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847196 () Bool)

(declare-fun tp_is_empty!16011 () Bool)

(assert (=> b!847196 (= e!472782 tp_is_empty!16011)))

(declare-fun b!847197 () Bool)

(declare-fun res!575734 () Bool)

(assert (=> b!847197 (=> (not res!575734) (not e!472777))))

(assert (=> b!847197 (= res!575734 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23577 _keys!868))))))

(declare-fun res!575732 () Bool)

(assert (=> start!72988 (=> (not res!575732) (not e!472777))))

(assert (=> start!72988 (= res!575732 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23577 _keys!868))))))

(assert (=> start!72988 e!472777))

(assert (=> start!72988 tp_is_empty!16011))

(assert (=> start!72988 true))

(assert (=> start!72988 tp!49129))

(declare-fun array_inv!18358 (array!48218) Bool)

(assert (=> start!72988 (array_inv!18358 _keys!868)))

(declare-fun e!472776 () Bool)

(declare-fun array_inv!18359 (array!48220) Bool)

(assert (=> start!72988 (and (array_inv!18359 _values!688) e!472776)))

(declare-fun b!847190 () Bool)

(declare-fun e!472780 () Bool)

(assert (=> b!847190 (= e!472780 tp_is_empty!16011)))

(declare-fun b!847198 () Bool)

(assert (=> b!847198 (= e!472776 (and e!472780 mapRes!25616))))

(declare-fun condMapEmpty!25616 () Bool)

(declare-fun mapDefault!25616 () ValueCell!7566)

(assert (=> b!847198 (= condMapEmpty!25616 (= (arr!23137 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7566)) mapDefault!25616)))))

(declare-fun b!847199 () Bool)

(declare-fun res!575730 () Bool)

(assert (=> b!847199 (=> (not res!575730) (not e!472777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847199 (= res!575730 (validMask!0 mask!1196))))

(assert (= (and start!72988 res!575732) b!847199))

(assert (= (and b!847199 res!575730) b!847195))

(assert (= (and b!847195 res!575735) b!847187))

(assert (= (and b!847187 res!575728) b!847188))

(assert (= (and b!847188 res!575733) b!847197))

(assert (= (and b!847197 res!575734) b!847189))

(assert (= (and b!847189 res!575736) b!847194))

(assert (= (and b!847194 res!575729) b!847191))

(assert (= (and b!847191 res!575731) b!847192))

(assert (= (and b!847192 c!91401) b!847186))

(assert (= (and b!847192 (not c!91401)) b!847193))

(assert (= (or b!847186 b!847193) bm!37478))

(assert (= (or b!847186 b!847193) bm!37477))

(assert (= (and b!847198 condMapEmpty!25616) mapIsEmpty!25616))

(assert (= (and b!847198 (not condMapEmpty!25616)) mapNonEmpty!25616))

(get-info :version)

(assert (= (and mapNonEmpty!25616 ((_ is ValueCellFull!7566) mapValue!25616)) b!847196))

(assert (= (and b!847198 ((_ is ValueCellFull!7566) mapDefault!25616)) b!847190))

(assert (= start!72988 b!847198))

(declare-fun m!788393 () Bool)

(assert (=> b!847186 m!788393))

(declare-fun m!788395 () Bool)

(assert (=> b!847199 m!788395))

(declare-fun m!788397 () Bool)

(assert (=> b!847191 m!788397))

(declare-fun m!788399 () Bool)

(assert (=> b!847191 m!788399))

(declare-fun m!788401 () Bool)

(assert (=> b!847191 m!788401))

(declare-fun m!788403 () Bool)

(assert (=> b!847194 m!788403))

(declare-fun m!788405 () Bool)

(assert (=> b!847189 m!788405))

(declare-fun m!788407 () Bool)

(assert (=> bm!37478 m!788407))

(declare-fun m!788409 () Bool)

(assert (=> bm!37477 m!788409))

(declare-fun m!788411 () Bool)

(assert (=> start!72988 m!788411))

(declare-fun m!788413 () Bool)

(assert (=> start!72988 m!788413))

(declare-fun m!788415 () Bool)

(assert (=> b!847188 m!788415))

(declare-fun m!788417 () Bool)

(assert (=> b!847192 m!788417))

(declare-fun m!788419 () Bool)

(assert (=> b!847187 m!788419))

(declare-fun m!788421 () Bool)

(assert (=> mapNonEmpty!25616 m!788421))

(check-sat tp_is_empty!16011 (not b!847189) (not b!847191) (not b!847199) (not b!847188) (not b!847192) (not bm!37477) (not start!72988) (not mapNonEmpty!25616) (not bm!37478) (not b!847186) (not b_next!13875) b_and!22979 (not b!847187))
(check-sat b_and!22979 (not b_next!13875))
