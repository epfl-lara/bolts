; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72544 () Bool)

(assert start!72544)

(declare-fun b_free!13701 () Bool)

(declare-fun b_next!13701 () Bool)

(assert (=> start!72544 (= b_free!13701 (not b_next!13701))))

(declare-fun tp!48203 () Bool)

(declare-fun b_and!22805 () Bool)

(assert (=> start!72544 (= tp!48203 b_and!22805)))

(declare-fun b!841331 () Bool)

(declare-fun e!469371 () Bool)

(declare-fun tp_is_empty!15567 () Bool)

(assert (=> b!841331 (= e!469371 tp_is_empty!15567)))

(declare-fun b!841332 () Bool)

(declare-fun e!469370 () Bool)

(assert (=> b!841332 (= e!469370 (not true))))

(declare-fun e!469374 () Bool)

(assert (=> b!841332 e!469374))

(declare-fun c!91329 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!841332 (= c!91329 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!25803 0))(
  ( (V!25804 (val!7831 Int)) )
))
(declare-fun v!557 () V!25803)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!28894 0))(
  ( (Unit!28895) )
))
(declare-fun lt!380862 () Unit!28894)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!47380 0))(
  ( (array!47381 (arr!22717 (Array (_ BitVec 32) (_ BitVec 64))) (size!23158 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47380)

(declare-datatypes ((ValueCell!7344 0))(
  ( (ValueCellFull!7344 (v!10252 V!25803)) (EmptyCell!7344) )
))
(declare-datatypes ((array!47382 0))(
  ( (array!47383 (arr!22718 (Array (_ BitVec 32) ValueCell!7344)) (size!23159 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47382)

(declare-fun minValue!654 () V!25803)

(declare-fun zeroValue!654 () V!25803)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!296 (array!47380 array!47382 (_ BitVec 32) (_ BitVec 32) V!25803 V!25803 (_ BitVec 32) (_ BitVec 64) V!25803 (_ BitVec 32) Int) Unit!28894)

(assert (=> b!841332 (= lt!380862 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!296 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841333 () Bool)

(declare-fun res!572015 () Bool)

(assert (=> b!841333 (=> (not res!572015) (not e!469370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841333 (= res!572015 (validKeyInArray!0 k0!854))))

(declare-fun b!841334 () Bool)

(declare-fun res!572017 () Bool)

(assert (=> b!841334 (=> (not res!572017) (not e!469370))))

(assert (=> b!841334 (= res!572017 (and (= (select (arr!22717 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23158 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun res!572021 () Bool)

(assert (=> start!72544 (=> (not res!572021) (not e!469370))))

(assert (=> start!72544 (= res!572021 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23158 _keys!868))))))

(assert (=> start!72544 e!469370))

(assert (=> start!72544 tp_is_empty!15567))

(assert (=> start!72544 true))

(assert (=> start!72544 tp!48203))

(declare-fun array_inv!18062 (array!47380) Bool)

(assert (=> start!72544 (array_inv!18062 _keys!868)))

(declare-fun e!469373 () Bool)

(declare-fun array_inv!18063 (array!47382) Bool)

(assert (=> start!72544 (and (array_inv!18063 _values!688) e!469373)))

(declare-fun b!841335 () Bool)

(declare-fun res!572018 () Bool)

(assert (=> b!841335 (=> (not res!572018) (not e!469370))))

(assert (=> b!841335 (= res!572018 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23158 _keys!868))))))

(declare-fun mapIsEmpty!24950 () Bool)

(declare-fun mapRes!24950 () Bool)

(assert (=> mapIsEmpty!24950 mapRes!24950))

(declare-fun b!841336 () Bool)

(declare-fun e!469369 () Bool)

(assert (=> b!841336 (= e!469369 tp_is_empty!15567)))

(declare-fun b!841337 () Bool)

(declare-fun res!572019 () Bool)

(assert (=> b!841337 (=> (not res!572019) (not e!469370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47380 (_ BitVec 32)) Bool)

(assert (=> b!841337 (= res!572019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841338 () Bool)

(declare-fun res!572022 () Bool)

(assert (=> b!841338 (=> (not res!572022) (not e!469370))))

(declare-datatypes ((List!16236 0))(
  ( (Nil!16233) (Cons!16232 (h!17363 (_ BitVec 64)) (t!22615 List!16236)) )
))
(declare-fun arrayNoDuplicates!0 (array!47380 (_ BitVec 32) List!16236) Bool)

(assert (=> b!841338 (= res!572022 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16233))))

(declare-fun b!841339 () Bool)

(assert (=> b!841339 (= e!469373 (and e!469371 mapRes!24950))))

(declare-fun condMapEmpty!24950 () Bool)

(declare-fun mapDefault!24950 () ValueCell!7344)

(assert (=> b!841339 (= condMapEmpty!24950 (= (arr!22718 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7344)) mapDefault!24950)))))

(declare-fun b!841340 () Bool)

(declare-fun res!572020 () Bool)

(assert (=> b!841340 (=> (not res!572020) (not e!469370))))

(assert (=> b!841340 (= res!572020 (and (= (size!23159 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23158 _keys!868) (size!23159 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!10412 0))(
  ( (tuple2!10413 (_1!5216 (_ BitVec 64)) (_2!5216 V!25803)) )
))
(declare-datatypes ((List!16237 0))(
  ( (Nil!16234) (Cons!16233 (h!17364 tuple2!10412) (t!22616 List!16237)) )
))
(declare-datatypes ((ListLongMap!9195 0))(
  ( (ListLongMap!9196 (toList!4613 List!16237)) )
))
(declare-fun call!37336 () ListLongMap!9195)

(declare-fun b!841341 () Bool)

(declare-fun call!37337 () ListLongMap!9195)

(declare-fun +!2016 (ListLongMap!9195 tuple2!10412) ListLongMap!9195)

(assert (=> b!841341 (= e!469374 (= call!37337 (+!2016 call!37336 (tuple2!10413 k0!854 v!557))))))

(declare-fun b!841342 () Bool)

(declare-fun res!572016 () Bool)

(assert (=> b!841342 (=> (not res!572016) (not e!469370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841342 (= res!572016 (validMask!0 mask!1196))))

(declare-fun bm!37333 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2604 (array!47380 array!47382 (_ BitVec 32) (_ BitVec 32) V!25803 V!25803 (_ BitVec 32) Int) ListLongMap!9195)

(assert (=> bm!37333 (= call!37337 (getCurrentListMapNoExtraKeys!2604 _keys!868 (array!47383 (store (arr!22718 _values!688) i!612 (ValueCellFull!7344 v!557)) (size!23159 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841343 () Bool)

(assert (=> b!841343 (= e!469374 (= call!37337 call!37336))))

(declare-fun mapNonEmpty!24950 () Bool)

(declare-fun tp!48202 () Bool)

(assert (=> mapNonEmpty!24950 (= mapRes!24950 (and tp!48202 e!469369))))

(declare-fun mapValue!24950 () ValueCell!7344)

(declare-fun mapRest!24950 () (Array (_ BitVec 32) ValueCell!7344))

(declare-fun mapKey!24950 () (_ BitVec 32))

(assert (=> mapNonEmpty!24950 (= (arr!22718 _values!688) (store mapRest!24950 mapKey!24950 mapValue!24950))))

(declare-fun bm!37334 () Bool)

(assert (=> bm!37334 (= call!37336 (getCurrentListMapNoExtraKeys!2604 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72544 res!572021) b!841342))

(assert (= (and b!841342 res!572016) b!841340))

(assert (= (and b!841340 res!572020) b!841337))

(assert (= (and b!841337 res!572019) b!841338))

(assert (= (and b!841338 res!572022) b!841335))

(assert (= (and b!841335 res!572018) b!841333))

(assert (= (and b!841333 res!572015) b!841334))

(assert (= (and b!841334 res!572017) b!841332))

(assert (= (and b!841332 c!91329) b!841341))

(assert (= (and b!841332 (not c!91329)) b!841343))

(assert (= (or b!841341 b!841343) bm!37333))

(assert (= (or b!841341 b!841343) bm!37334))

(assert (= (and b!841339 condMapEmpty!24950) mapIsEmpty!24950))

(assert (= (and b!841339 (not condMapEmpty!24950)) mapNonEmpty!24950))

(get-info :version)

(assert (= (and mapNonEmpty!24950 ((_ is ValueCellFull!7344) mapValue!24950)) b!841336))

(assert (= (and b!841339 ((_ is ValueCellFull!7344) mapDefault!24950)) b!841331))

(assert (= start!72544 b!841339))

(declare-fun m!784867 () Bool)

(assert (=> b!841334 m!784867))

(declare-fun m!784869 () Bool)

(assert (=> bm!37333 m!784869))

(declare-fun m!784871 () Bool)

(assert (=> bm!37333 m!784871))

(declare-fun m!784873 () Bool)

(assert (=> start!72544 m!784873))

(declare-fun m!784875 () Bool)

(assert (=> start!72544 m!784875))

(declare-fun m!784877 () Bool)

(assert (=> bm!37334 m!784877))

(declare-fun m!784879 () Bool)

(assert (=> b!841338 m!784879))

(declare-fun m!784881 () Bool)

(assert (=> mapNonEmpty!24950 m!784881))

(declare-fun m!784883 () Bool)

(assert (=> b!841332 m!784883))

(declare-fun m!784885 () Bool)

(assert (=> b!841341 m!784885))

(declare-fun m!784887 () Bool)

(assert (=> b!841337 m!784887))

(declare-fun m!784889 () Bool)

(assert (=> b!841342 m!784889))

(declare-fun m!784891 () Bool)

(assert (=> b!841333 m!784891))

(check-sat (not b!841337) (not b!841333) (not bm!37333) (not start!72544) (not b!841338) (not b!841341) tp_is_empty!15567 (not b_next!13701) (not b!841332) b_and!22805 (not b!841342) (not mapNonEmpty!24950) (not bm!37334))
(check-sat b_and!22805 (not b_next!13701))
