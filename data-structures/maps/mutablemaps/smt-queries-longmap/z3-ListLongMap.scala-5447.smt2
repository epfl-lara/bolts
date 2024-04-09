; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72496 () Bool)

(assert start!72496)

(declare-fun b_free!13653 () Bool)

(declare-fun b_next!13653 () Bool)

(assert (=> start!72496 (= b_free!13653 (not b_next!13653))))

(declare-fun tp!48059 () Bool)

(declare-fun b_and!22757 () Bool)

(assert (=> start!72496 (= tp!48059 b_and!22757)))

(declare-fun b!840395 () Bool)

(declare-fun e!468941 () Bool)

(declare-datatypes ((V!25739 0))(
  ( (V!25740 (val!7807 Int)) )
))
(declare-datatypes ((tuple2!10366 0))(
  ( (tuple2!10367 (_1!5193 (_ BitVec 64)) (_2!5193 V!25739)) )
))
(declare-datatypes ((List!16193 0))(
  ( (Nil!16190) (Cons!16189 (h!17320 tuple2!10366) (t!22572 List!16193)) )
))
(declare-datatypes ((ListLongMap!9149 0))(
  ( (ListLongMap!9150 (toList!4590 List!16193)) )
))
(declare-fun call!37193 () ListLongMap!9149)

(declare-fun call!37192 () ListLongMap!9149)

(assert (=> b!840395 (= e!468941 (= call!37193 call!37192))))

(declare-fun b!840396 () Bool)

(declare-fun res!571445 () Bool)

(declare-fun e!468939 () Bool)

(assert (=> b!840396 (=> (not res!571445) (not e!468939))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840396 (= res!571445 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!24878 () Bool)

(declare-fun mapRes!24878 () Bool)

(assert (=> mapIsEmpty!24878 mapRes!24878))

(declare-fun b!840397 () Bool)

(declare-fun res!571441 () Bool)

(assert (=> b!840397 (=> (not res!571441) (not e!468939))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840397 (= res!571441 (validKeyInArray!0 k0!854))))

(declare-fun b!840398 () Bool)

(declare-fun res!571439 () Bool)

(assert (=> b!840398 (=> (not res!571439) (not e!468939))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!47286 0))(
  ( (array!47287 (arr!22670 (Array (_ BitVec 32) (_ BitVec 64))) (size!23111 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47286)

(declare-datatypes ((ValueCell!7320 0))(
  ( (ValueCellFull!7320 (v!10228 V!25739)) (EmptyCell!7320) )
))
(declare-datatypes ((array!47288 0))(
  ( (array!47289 (arr!22671 (Array (_ BitVec 32) ValueCell!7320)) (size!23112 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47288)

(assert (=> b!840398 (= res!571439 (and (= (size!23112 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23111 _keys!868) (size!23112 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840399 () Bool)

(declare-fun e!468938 () Bool)

(declare-fun e!468937 () Bool)

(assert (=> b!840399 (= e!468938 (and e!468937 mapRes!24878))))

(declare-fun condMapEmpty!24878 () Bool)

(declare-fun mapDefault!24878 () ValueCell!7320)

(assert (=> b!840399 (= condMapEmpty!24878 (= (arr!22671 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7320)) mapDefault!24878)))))

(declare-fun b!840400 () Bool)

(declare-fun res!571440 () Bool)

(assert (=> b!840400 (=> (not res!571440) (not e!468939))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!840400 (= res!571440 (and (= (select (arr!22670 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23111 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840402 () Bool)

(declare-fun res!571442 () Bool)

(assert (=> b!840402 (=> (not res!571442) (not e!468939))))

(assert (=> b!840402 (= res!571442 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23111 _keys!868))))))

(declare-fun bm!37189 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!25739)

(declare-fun zeroValue!654 () V!25739)

(declare-fun getCurrentListMapNoExtraKeys!2582 (array!47286 array!47288 (_ BitVec 32) (_ BitVec 32) V!25739 V!25739 (_ BitVec 32) Int) ListLongMap!9149)

(assert (=> bm!37189 (= call!37192 (getCurrentListMapNoExtraKeys!2582 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840403 () Bool)

(declare-fun res!571443 () Bool)

(assert (=> b!840403 (=> (not res!571443) (not e!468939))))

(declare-datatypes ((List!16194 0))(
  ( (Nil!16191) (Cons!16190 (h!17321 (_ BitVec 64)) (t!22573 List!16194)) )
))
(declare-fun arrayNoDuplicates!0 (array!47286 (_ BitVec 32) List!16194) Bool)

(assert (=> b!840403 (= res!571443 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16191))))

(declare-fun v!557 () V!25739)

(declare-fun b!840404 () Bool)

(declare-fun +!2000 (ListLongMap!9149 tuple2!10366) ListLongMap!9149)

(assert (=> b!840404 (= e!468941 (= call!37193 (+!2000 call!37192 (tuple2!10367 k0!854 v!557))))))

(declare-fun b!840405 () Bool)

(declare-fun res!571444 () Bool)

(assert (=> b!840405 (=> (not res!571444) (not e!468939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47286 (_ BitVec 32)) Bool)

(assert (=> b!840405 (= res!571444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840406 () Bool)

(declare-fun e!468942 () Bool)

(declare-fun tp_is_empty!15519 () Bool)

(assert (=> b!840406 (= e!468942 tp_is_empty!15519)))

(declare-fun b!840407 () Bool)

(assert (=> b!840407 (= e!468937 tp_is_empty!15519)))

(declare-fun mapNonEmpty!24878 () Bool)

(declare-fun tp!48058 () Bool)

(assert (=> mapNonEmpty!24878 (= mapRes!24878 (and tp!48058 e!468942))))

(declare-fun mapValue!24878 () ValueCell!7320)

(declare-fun mapKey!24878 () (_ BitVec 32))

(declare-fun mapRest!24878 () (Array (_ BitVec 32) ValueCell!7320))

(assert (=> mapNonEmpty!24878 (= (arr!22671 _values!688) (store mapRest!24878 mapKey!24878 mapValue!24878))))

(declare-fun bm!37190 () Bool)

(assert (=> bm!37190 (= call!37193 (getCurrentListMapNoExtraKeys!2582 _keys!868 (array!47289 (store (arr!22671 _values!688) i!612 (ValueCellFull!7320 v!557)) (size!23112 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840401 () Bool)

(assert (=> b!840401 (= e!468939 (not true))))

(assert (=> b!840401 e!468941))

(declare-fun c!91257 () Bool)

(assert (=> b!840401 (= c!91257 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28860 0))(
  ( (Unit!28861) )
))
(declare-fun lt!380790 () Unit!28860)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!279 (array!47286 array!47288 (_ BitVec 32) (_ BitVec 32) V!25739 V!25739 (_ BitVec 32) (_ BitVec 64) V!25739 (_ BitVec 32) Int) Unit!28860)

(assert (=> b!840401 (= lt!380790 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!279 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!571446 () Bool)

(assert (=> start!72496 (=> (not res!571446) (not e!468939))))

(assert (=> start!72496 (= res!571446 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23111 _keys!868))))))

(assert (=> start!72496 e!468939))

(assert (=> start!72496 tp_is_empty!15519))

(assert (=> start!72496 true))

(assert (=> start!72496 tp!48059))

(declare-fun array_inv!18022 (array!47286) Bool)

(assert (=> start!72496 (array_inv!18022 _keys!868)))

(declare-fun array_inv!18023 (array!47288) Bool)

(assert (=> start!72496 (and (array_inv!18023 _values!688) e!468938)))

(assert (= (and start!72496 res!571446) b!840396))

(assert (= (and b!840396 res!571445) b!840398))

(assert (= (and b!840398 res!571439) b!840405))

(assert (= (and b!840405 res!571444) b!840403))

(assert (= (and b!840403 res!571443) b!840402))

(assert (= (and b!840402 res!571442) b!840397))

(assert (= (and b!840397 res!571441) b!840400))

(assert (= (and b!840400 res!571440) b!840401))

(assert (= (and b!840401 c!91257) b!840404))

(assert (= (and b!840401 (not c!91257)) b!840395))

(assert (= (or b!840404 b!840395) bm!37190))

(assert (= (or b!840404 b!840395) bm!37189))

(assert (= (and b!840399 condMapEmpty!24878) mapIsEmpty!24878))

(assert (= (and b!840399 (not condMapEmpty!24878)) mapNonEmpty!24878))

(get-info :version)

(assert (= (and mapNonEmpty!24878 ((_ is ValueCellFull!7320) mapValue!24878)) b!840406))

(assert (= (and b!840399 ((_ is ValueCellFull!7320) mapDefault!24878)) b!840407))

(assert (= start!72496 b!840399))

(declare-fun m!784243 () Bool)

(assert (=> mapNonEmpty!24878 m!784243))

(declare-fun m!784245 () Bool)

(assert (=> bm!37189 m!784245))

(declare-fun m!784247 () Bool)

(assert (=> b!840403 m!784247))

(declare-fun m!784249 () Bool)

(assert (=> b!840401 m!784249))

(declare-fun m!784251 () Bool)

(assert (=> b!840400 m!784251))

(declare-fun m!784253 () Bool)

(assert (=> b!840404 m!784253))

(declare-fun m!784255 () Bool)

(assert (=> b!840396 m!784255))

(declare-fun m!784257 () Bool)

(assert (=> b!840397 m!784257))

(declare-fun m!784259 () Bool)

(assert (=> bm!37190 m!784259))

(declare-fun m!784261 () Bool)

(assert (=> bm!37190 m!784261))

(declare-fun m!784263 () Bool)

(assert (=> b!840405 m!784263))

(declare-fun m!784265 () Bool)

(assert (=> start!72496 m!784265))

(declare-fun m!784267 () Bool)

(assert (=> start!72496 m!784267))

(check-sat (not b_next!13653) tp_is_empty!15519 (not mapNonEmpty!24878) (not b!840403) b_and!22757 (not b!840401) (not b!840397) (not b!840405) (not bm!37189) (not b!840396) (not bm!37190) (not start!72496) (not b!840404))
(check-sat b_and!22757 (not b_next!13653))
