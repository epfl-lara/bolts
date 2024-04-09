; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73522 () Bool)

(assert start!73522)

(declare-fun b_free!14409 () Bool)

(declare-fun b_next!14409 () Bool)

(assert (=> start!73522 (= b_free!14409 (not b_next!14409))))

(declare-fun tp!50731 () Bool)

(declare-fun b_and!23815 () Bool)

(assert (=> start!73522 (= tp!50731 b_and!23815)))

(declare-fun mapIsEmpty!26417 () Bool)

(declare-fun mapRes!26417 () Bool)

(assert (=> mapIsEmpty!26417 mapRes!26417))

(declare-fun b!858433 () Bool)

(declare-fun res!583316 () Bool)

(declare-fun e!478433 () Bool)

(assert (=> b!858433 (=> (not res!583316) (not e!478433))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27107 0))(
  ( (V!27108 (val!8320 Int)) )
))
(declare-datatypes ((ValueCell!7833 0))(
  ( (ValueCellFull!7833 (v!10741 V!27107)) (EmptyCell!7833) )
))
(declare-datatypes ((array!49250 0))(
  ( (array!49251 (arr!23652 (Array (_ BitVec 32) ValueCell!7833)) (size!24093 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49250)

(declare-datatypes ((array!49252 0))(
  ( (array!49253 (arr!23653 (Array (_ BitVec 32) (_ BitVec 64))) (size!24094 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49252)

(assert (=> b!858433 (= res!583316 (and (= (size!24093 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24094 _keys!868) (size!24093 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858434 () Bool)

(declare-fun e!478437 () Bool)

(declare-fun tp_is_empty!16545 () Bool)

(assert (=> b!858434 (= e!478437 tp_is_empty!16545)))

(declare-fun b!858435 () Bool)

(declare-fun res!583315 () Bool)

(assert (=> b!858435 (=> (not res!583315) (not e!478433))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!858435 (= res!583315 (and (= (select (arr!23653 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!858436 () Bool)

(declare-fun res!583310 () Bool)

(assert (=> b!858436 (=> (not res!583310) (not e!478433))))

(assert (=> b!858436 (= res!583310 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24094 _keys!868))))))

(declare-fun b!858437 () Bool)

(declare-fun e!478434 () Bool)

(declare-fun e!478440 () Bool)

(assert (=> b!858437 (= e!478434 (and e!478440 mapRes!26417))))

(declare-fun condMapEmpty!26417 () Bool)

(declare-fun mapDefault!26417 () ValueCell!7833)

(assert (=> b!858437 (= condMapEmpty!26417 (= (arr!23652 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7833)) mapDefault!26417)))))

(declare-fun b!858438 () Bool)

(declare-fun e!478439 () Bool)

(assert (=> b!858438 (= e!478433 e!478439)))

(declare-fun res!583314 () Bool)

(assert (=> b!858438 (=> (not res!583314) (not e!478439))))

(assert (=> b!858438 (= res!583314 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10966 0))(
  ( (tuple2!10967 (_1!5493 (_ BitVec 64)) (_2!5493 V!27107)) )
))
(declare-datatypes ((List!16838 0))(
  ( (Nil!16835) (Cons!16834 (h!17965 tuple2!10966) (t!23521 List!16838)) )
))
(declare-datatypes ((ListLongMap!9749 0))(
  ( (ListLongMap!9750 (toList!4890 List!16838)) )
))
(declare-fun lt!386744 () ListLongMap!9749)

(declare-fun lt!386739 () array!49250)

(declare-fun minValue!654 () V!27107)

(declare-fun zeroValue!654 () V!27107)

(declare-fun getCurrentListMapNoExtraKeys!2872 (array!49252 array!49250 (_ BitVec 32) (_ BitVec 32) V!27107 V!27107 (_ BitVec 32) Int) ListLongMap!9749)

(assert (=> b!858438 (= lt!386744 (getCurrentListMapNoExtraKeys!2872 _keys!868 lt!386739 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27107)

(assert (=> b!858438 (= lt!386739 (array!49251 (store (arr!23652 _values!688) i!612 (ValueCellFull!7833 v!557)) (size!24093 _values!688)))))

(declare-fun lt!386743 () ListLongMap!9749)

(assert (=> b!858438 (= lt!386743 (getCurrentListMapNoExtraKeys!2872 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26417 () Bool)

(declare-fun tp!50732 () Bool)

(assert (=> mapNonEmpty!26417 (= mapRes!26417 (and tp!50732 e!478437))))

(declare-fun mapValue!26417 () ValueCell!7833)

(declare-fun mapKey!26417 () (_ BitVec 32))

(declare-fun mapRest!26417 () (Array (_ BitVec 32) ValueCell!7833))

(assert (=> mapNonEmpty!26417 (= (arr!23652 _values!688) (store mapRest!26417 mapKey!26417 mapValue!26417))))

(declare-fun b!858439 () Bool)

(assert (=> b!858439 (= e!478440 tp_is_empty!16545)))

(declare-fun b!858432 () Bool)

(declare-fun res!583307 () Bool)

(assert (=> b!858432 (=> (not res!583307) (not e!478433))))

(declare-datatypes ((List!16839 0))(
  ( (Nil!16836) (Cons!16835 (h!17966 (_ BitVec 64)) (t!23522 List!16839)) )
))
(declare-fun arrayNoDuplicates!0 (array!49252 (_ BitVec 32) List!16839) Bool)

(assert (=> b!858432 (= res!583307 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16836))))

(declare-fun res!583309 () Bool)

(assert (=> start!73522 (=> (not res!583309) (not e!478433))))

(assert (=> start!73522 (= res!583309 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24094 _keys!868))))))

(assert (=> start!73522 e!478433))

(assert (=> start!73522 tp_is_empty!16545))

(assert (=> start!73522 true))

(assert (=> start!73522 tp!50731))

(declare-fun array_inv!18710 (array!49252) Bool)

(assert (=> start!73522 (array_inv!18710 _keys!868)))

(declare-fun array_inv!18711 (array!49250) Bool)

(assert (=> start!73522 (and (array_inv!18711 _values!688) e!478434)))

(declare-fun b!858440 () Bool)

(declare-fun res!583313 () Bool)

(assert (=> b!858440 (=> (not res!583313) (not e!478433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49252 (_ BitVec 32)) Bool)

(assert (=> b!858440 (= res!583313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858441 () Bool)

(declare-fun res!583312 () Bool)

(assert (=> b!858441 (=> (not res!583312) (not e!478433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858441 (= res!583312 (validMask!0 mask!1196))))

(declare-fun b!858442 () Bool)

(declare-fun res!583317 () Bool)

(assert (=> b!858442 (=> (not res!583317) (not e!478433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858442 (= res!583317 (validKeyInArray!0 k0!854))))

(declare-fun b!858443 () Bool)

(declare-fun e!478438 () Bool)

(assert (=> b!858443 (= e!478438 true)))

(assert (=> b!858443 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16836)))

(declare-datatypes ((Unit!29232 0))(
  ( (Unit!29233) )
))
(declare-fun lt!386745 () Unit!29232)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49252 (_ BitVec 32) (_ BitVec 32)) Unit!29232)

(assert (=> b!858443 (= lt!386745 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858444 () Bool)

(declare-fun e!478435 () Bool)

(assert (=> b!858444 (= e!478435 e!478438)))

(declare-fun res!583308 () Bool)

(assert (=> b!858444 (=> res!583308 e!478438)))

(assert (=> b!858444 (= res!583308 (not (= (select (arr!23653 _keys!868) from!1053) k0!854)))))

(declare-fun lt!386741 () ListLongMap!9749)

(declare-fun +!2194 (ListLongMap!9749 tuple2!10966) ListLongMap!9749)

(declare-fun get!12470 (ValueCell!7833 V!27107) V!27107)

(declare-fun dynLambda!1084 (Int (_ BitVec 64)) V!27107)

(assert (=> b!858444 (= lt!386744 (+!2194 lt!386741 (tuple2!10967 (select (arr!23653 _keys!868) from!1053) (get!12470 (select (arr!23652 _values!688) from!1053) (dynLambda!1084 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858445 () Bool)

(assert (=> b!858445 (= e!478439 (not e!478435))))

(declare-fun res!583311 () Bool)

(assert (=> b!858445 (=> res!583311 e!478435)))

(assert (=> b!858445 (= res!583311 (not (validKeyInArray!0 (select (arr!23653 _keys!868) from!1053))))))

(declare-fun lt!386738 () ListLongMap!9749)

(assert (=> b!858445 (= lt!386738 lt!386741)))

(declare-fun lt!386742 () ListLongMap!9749)

(assert (=> b!858445 (= lt!386741 (+!2194 lt!386742 (tuple2!10967 k0!854 v!557)))))

(assert (=> b!858445 (= lt!386738 (getCurrentListMapNoExtraKeys!2872 _keys!868 lt!386739 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858445 (= lt!386742 (getCurrentListMapNoExtraKeys!2872 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!386740 () Unit!29232)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!454 (array!49252 array!49250 (_ BitVec 32) (_ BitVec 32) V!27107 V!27107 (_ BitVec 32) (_ BitVec 64) V!27107 (_ BitVec 32) Int) Unit!29232)

(assert (=> b!858445 (= lt!386740 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!454 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73522 res!583309) b!858441))

(assert (= (and b!858441 res!583312) b!858433))

(assert (= (and b!858433 res!583316) b!858440))

(assert (= (and b!858440 res!583313) b!858432))

(assert (= (and b!858432 res!583307) b!858436))

(assert (= (and b!858436 res!583310) b!858442))

(assert (= (and b!858442 res!583317) b!858435))

(assert (= (and b!858435 res!583315) b!858438))

(assert (= (and b!858438 res!583314) b!858445))

(assert (= (and b!858445 (not res!583311)) b!858444))

(assert (= (and b!858444 (not res!583308)) b!858443))

(assert (= (and b!858437 condMapEmpty!26417) mapIsEmpty!26417))

(assert (= (and b!858437 (not condMapEmpty!26417)) mapNonEmpty!26417))

(get-info :version)

(assert (= (and mapNonEmpty!26417 ((_ is ValueCellFull!7833) mapValue!26417)) b!858434))

(assert (= (and b!858437 ((_ is ValueCellFull!7833) mapDefault!26417)) b!858439))

(assert (= start!73522 b!858437))

(declare-fun b_lambda!11791 () Bool)

(assert (=> (not b_lambda!11791) (not b!858444)))

(declare-fun t!23520 () Bool)

(declare-fun tb!4539 () Bool)

(assert (=> (and start!73522 (= defaultEntry!696 defaultEntry!696) t!23520) tb!4539))

(declare-fun result!8681 () Bool)

(assert (=> tb!4539 (= result!8681 tp_is_empty!16545)))

(assert (=> b!858444 t!23520))

(declare-fun b_and!23817 () Bool)

(assert (= b_and!23815 (and (=> t!23520 result!8681) b_and!23817)))

(declare-fun m!799253 () Bool)

(assert (=> b!858442 m!799253))

(declare-fun m!799255 () Bool)

(assert (=> b!858440 m!799255))

(declare-fun m!799257 () Bool)

(assert (=> b!858435 m!799257))

(declare-fun m!799259 () Bool)

(assert (=> b!858445 m!799259))

(declare-fun m!799261 () Bool)

(assert (=> b!858445 m!799261))

(declare-fun m!799263 () Bool)

(assert (=> b!858445 m!799263))

(assert (=> b!858445 m!799261))

(declare-fun m!799265 () Bool)

(assert (=> b!858445 m!799265))

(declare-fun m!799267 () Bool)

(assert (=> b!858445 m!799267))

(declare-fun m!799269 () Bool)

(assert (=> b!858445 m!799269))

(declare-fun m!799271 () Bool)

(assert (=> mapNonEmpty!26417 m!799271))

(declare-fun m!799273 () Bool)

(assert (=> b!858443 m!799273))

(declare-fun m!799275 () Bool)

(assert (=> b!858443 m!799275))

(declare-fun m!799277 () Bool)

(assert (=> b!858441 m!799277))

(declare-fun m!799279 () Bool)

(assert (=> b!858432 m!799279))

(declare-fun m!799281 () Bool)

(assert (=> start!73522 m!799281))

(declare-fun m!799283 () Bool)

(assert (=> start!73522 m!799283))

(declare-fun m!799285 () Bool)

(assert (=> b!858444 m!799285))

(declare-fun m!799287 () Bool)

(assert (=> b!858444 m!799287))

(declare-fun m!799289 () Bool)

(assert (=> b!858444 m!799289))

(declare-fun m!799291 () Bool)

(assert (=> b!858444 m!799291))

(assert (=> b!858444 m!799287))

(assert (=> b!858444 m!799261))

(assert (=> b!858444 m!799289))

(declare-fun m!799293 () Bool)

(assert (=> b!858438 m!799293))

(declare-fun m!799295 () Bool)

(assert (=> b!858438 m!799295))

(declare-fun m!799297 () Bool)

(assert (=> b!858438 m!799297))

(check-sat (not b!858442) (not b!858440) (not b!858443) (not b!858445) (not b_lambda!11791) b_and!23817 (not b_next!14409) (not b!858438) (not mapNonEmpty!26417) (not b!858441) (not start!73522) (not b!858444) (not b!858432) tp_is_empty!16545)
(check-sat b_and!23817 (not b_next!14409))
