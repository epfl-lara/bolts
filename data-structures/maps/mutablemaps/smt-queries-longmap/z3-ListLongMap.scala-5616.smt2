; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73510 () Bool)

(assert start!73510)

(declare-fun b_free!14397 () Bool)

(declare-fun b_next!14397 () Bool)

(assert (=> start!73510 (= b_free!14397 (not b_next!14397))))

(declare-fun tp!50695 () Bool)

(declare-fun b_and!23791 () Bool)

(assert (=> start!73510 (= tp!50695 b_and!23791)))

(declare-fun b!858181 () Bool)

(declare-fun e!478308 () Bool)

(declare-fun e!478306 () Bool)

(declare-fun mapRes!26399 () Bool)

(assert (=> b!858181 (= e!478308 (and e!478306 mapRes!26399))))

(declare-fun condMapEmpty!26399 () Bool)

(declare-datatypes ((V!27091 0))(
  ( (V!27092 (val!8314 Int)) )
))
(declare-datatypes ((ValueCell!7827 0))(
  ( (ValueCellFull!7827 (v!10735 V!27091)) (EmptyCell!7827) )
))
(declare-datatypes ((array!49226 0))(
  ( (array!49227 (arr!23640 (Array (_ BitVec 32) ValueCell!7827)) (size!24081 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49226)

(declare-fun mapDefault!26399 () ValueCell!7827)

(assert (=> b!858181 (= condMapEmpty!26399 (= (arr!23640 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7827)) mapDefault!26399)))))

(declare-fun b!858182 () Bool)

(declare-fun res!583129 () Bool)

(declare-fun e!478307 () Bool)

(assert (=> b!858182 (=> (not res!583129) (not e!478307))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858182 (= res!583129 (validKeyInArray!0 k0!854))))

(declare-fun b!858183 () Bool)

(declare-fun e!478305 () Bool)

(declare-fun e!478304 () Bool)

(assert (=> b!858183 (= e!478305 (not e!478304))))

(declare-fun res!583128 () Bool)

(assert (=> b!858183 (=> res!583128 e!478304)))

(declare-datatypes ((array!49228 0))(
  ( (array!49229 (arr!23641 (Array (_ BitVec 32) (_ BitVec 64))) (size!24082 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49228)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!858183 (= res!583128 (not (validKeyInArray!0 (select (arr!23641 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!10958 0))(
  ( (tuple2!10959 (_1!5489 (_ BitVec 64)) (_2!5489 V!27091)) )
))
(declare-datatypes ((List!16829 0))(
  ( (Nil!16826) (Cons!16825 (h!17956 tuple2!10958) (t!23500 List!16829)) )
))
(declare-datatypes ((ListLongMap!9741 0))(
  ( (ListLongMap!9742 (toList!4886 List!16829)) )
))
(declare-fun lt!386607 () ListLongMap!9741)

(declare-fun lt!386613 () ListLongMap!9741)

(assert (=> b!858183 (= lt!386607 lt!386613)))

(declare-fun v!557 () V!27091)

(declare-fun lt!386611 () ListLongMap!9741)

(declare-fun +!2191 (ListLongMap!9741 tuple2!10958) ListLongMap!9741)

(assert (=> b!858183 (= lt!386613 (+!2191 lt!386611 (tuple2!10959 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!386609 () array!49226)

(declare-fun minValue!654 () V!27091)

(declare-fun zeroValue!654 () V!27091)

(declare-fun getCurrentListMapNoExtraKeys!2868 (array!49228 array!49226 (_ BitVec 32) (_ BitVec 32) V!27091 V!27091 (_ BitVec 32) Int) ListLongMap!9741)

(assert (=> b!858183 (= lt!386607 (getCurrentListMapNoExtraKeys!2868 _keys!868 lt!386609 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858183 (= lt!386611 (getCurrentListMapNoExtraKeys!2868 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29224 0))(
  ( (Unit!29225) )
))
(declare-fun lt!386610 () Unit!29224)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!451 (array!49228 array!49226 (_ BitVec 32) (_ BitVec 32) V!27091 V!27091 (_ BitVec 32) (_ BitVec 64) V!27091 (_ BitVec 32) Int) Unit!29224)

(assert (=> b!858183 (= lt!386610 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!451 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858184 () Bool)

(declare-fun e!478303 () Bool)

(declare-fun tp_is_empty!16533 () Bool)

(assert (=> b!858184 (= e!478303 tp_is_empty!16533)))

(declare-fun b!858185 () Bool)

(declare-fun res!583123 () Bool)

(assert (=> b!858185 (=> (not res!583123) (not e!478307))))

(declare-datatypes ((List!16830 0))(
  ( (Nil!16827) (Cons!16826 (h!17957 (_ BitVec 64)) (t!23501 List!16830)) )
))
(declare-fun arrayNoDuplicates!0 (array!49228 (_ BitVec 32) List!16830) Bool)

(assert (=> b!858185 (= res!583123 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16827))))

(declare-fun b!858186 () Bool)

(declare-fun res!583124 () Bool)

(assert (=> b!858186 (=> (not res!583124) (not e!478307))))

(assert (=> b!858186 (= res!583124 (and (= (size!24081 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24082 _keys!868) (size!24081 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858187 () Bool)

(declare-fun res!583127 () Bool)

(assert (=> b!858187 (=> (not res!583127) (not e!478307))))

(assert (=> b!858187 (= res!583127 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24082 _keys!868))))))

(declare-fun res!583131 () Bool)

(assert (=> start!73510 (=> (not res!583131) (not e!478307))))

(assert (=> start!73510 (= res!583131 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24082 _keys!868))))))

(assert (=> start!73510 e!478307))

(assert (=> start!73510 tp_is_empty!16533))

(assert (=> start!73510 true))

(assert (=> start!73510 tp!50695))

(declare-fun array_inv!18702 (array!49228) Bool)

(assert (=> start!73510 (array_inv!18702 _keys!868)))

(declare-fun array_inv!18703 (array!49226) Bool)

(assert (=> start!73510 (and (array_inv!18703 _values!688) e!478308)))

(declare-fun mapIsEmpty!26399 () Bool)

(assert (=> mapIsEmpty!26399 mapRes!26399))

(declare-fun b!858188 () Bool)

(declare-fun res!583122 () Bool)

(assert (=> b!858188 (=> (not res!583122) (not e!478307))))

(assert (=> b!858188 (= res!583122 (and (= (select (arr!23641 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!858189 () Bool)

(declare-fun res!583125 () Bool)

(assert (=> b!858189 (=> (not res!583125) (not e!478307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858189 (= res!583125 (validMask!0 mask!1196))))

(declare-fun b!858190 () Bool)

(declare-fun res!583126 () Bool)

(assert (=> b!858190 (=> (not res!583126) (not e!478307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49228 (_ BitVec 32)) Bool)

(assert (=> b!858190 (= res!583126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858191 () Bool)

(assert (=> b!858191 (= e!478307 e!478305)))

(declare-fun res!583130 () Bool)

(assert (=> b!858191 (=> (not res!583130) (not e!478305))))

(assert (=> b!858191 (= res!583130 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386612 () ListLongMap!9741)

(assert (=> b!858191 (= lt!386612 (getCurrentListMapNoExtraKeys!2868 _keys!868 lt!386609 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!858191 (= lt!386609 (array!49227 (store (arr!23640 _values!688) i!612 (ValueCellFull!7827 v!557)) (size!24081 _values!688)))))

(declare-fun lt!386608 () ListLongMap!9741)

(assert (=> b!858191 (= lt!386608 (getCurrentListMapNoExtraKeys!2868 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858192 () Bool)

(assert (=> b!858192 (= e!478304 true)))

(declare-fun get!12463 (ValueCell!7827 V!27091) V!27091)

(declare-fun dynLambda!1081 (Int (_ BitVec 64)) V!27091)

(assert (=> b!858192 (= lt!386612 (+!2191 lt!386613 (tuple2!10959 (select (arr!23641 _keys!868) from!1053) (get!12463 (select (arr!23640 _values!688) from!1053) (dynLambda!1081 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!26399 () Bool)

(declare-fun tp!50696 () Bool)

(assert (=> mapNonEmpty!26399 (= mapRes!26399 (and tp!50696 e!478303))))

(declare-fun mapRest!26399 () (Array (_ BitVec 32) ValueCell!7827))

(declare-fun mapValue!26399 () ValueCell!7827)

(declare-fun mapKey!26399 () (_ BitVec 32))

(assert (=> mapNonEmpty!26399 (= (arr!23640 _values!688) (store mapRest!26399 mapKey!26399 mapValue!26399))))

(declare-fun b!858193 () Bool)

(assert (=> b!858193 (= e!478306 tp_is_empty!16533)))

(assert (= (and start!73510 res!583131) b!858189))

(assert (= (and b!858189 res!583125) b!858186))

(assert (= (and b!858186 res!583124) b!858190))

(assert (= (and b!858190 res!583126) b!858185))

(assert (= (and b!858185 res!583123) b!858187))

(assert (= (and b!858187 res!583127) b!858182))

(assert (= (and b!858182 res!583129) b!858188))

(assert (= (and b!858188 res!583122) b!858191))

(assert (= (and b!858191 res!583130) b!858183))

(assert (= (and b!858183 (not res!583128)) b!858192))

(assert (= (and b!858181 condMapEmpty!26399) mapIsEmpty!26399))

(assert (= (and b!858181 (not condMapEmpty!26399)) mapNonEmpty!26399))

(get-info :version)

(assert (= (and mapNonEmpty!26399 ((_ is ValueCellFull!7827) mapValue!26399)) b!858184))

(assert (= (and b!858181 ((_ is ValueCellFull!7827) mapDefault!26399)) b!858193))

(assert (= start!73510 b!858181))

(declare-fun b_lambda!11779 () Bool)

(assert (=> (not b_lambda!11779) (not b!858192)))

(declare-fun t!23499 () Bool)

(declare-fun tb!4527 () Bool)

(assert (=> (and start!73510 (= defaultEntry!696 defaultEntry!696) t!23499) tb!4527))

(declare-fun result!8657 () Bool)

(assert (=> tb!4527 (= result!8657 tp_is_empty!16533)))

(assert (=> b!858192 t!23499))

(declare-fun b_and!23793 () Bool)

(assert (= b_and!23791 (and (=> t!23499 result!8657) b_and!23793)))

(declare-fun m!798997 () Bool)

(assert (=> b!858183 m!798997))

(declare-fun m!798999 () Bool)

(assert (=> b!858183 m!798999))

(declare-fun m!799001 () Bool)

(assert (=> b!858183 m!799001))

(declare-fun m!799003 () Bool)

(assert (=> b!858183 m!799003))

(declare-fun m!799005 () Bool)

(assert (=> b!858183 m!799005))

(assert (=> b!858183 m!799003))

(declare-fun m!799007 () Bool)

(assert (=> b!858183 m!799007))

(declare-fun m!799009 () Bool)

(assert (=> b!858188 m!799009))

(declare-fun m!799011 () Bool)

(assert (=> start!73510 m!799011))

(declare-fun m!799013 () Bool)

(assert (=> start!73510 m!799013))

(declare-fun m!799015 () Bool)

(assert (=> b!858191 m!799015))

(declare-fun m!799017 () Bool)

(assert (=> b!858191 m!799017))

(declare-fun m!799019 () Bool)

(assert (=> b!858191 m!799019))

(declare-fun m!799021 () Bool)

(assert (=> b!858190 m!799021))

(declare-fun m!799023 () Bool)

(assert (=> b!858192 m!799023))

(declare-fun m!799025 () Bool)

(assert (=> b!858192 m!799025))

(declare-fun m!799027 () Bool)

(assert (=> b!858192 m!799027))

(declare-fun m!799029 () Bool)

(assert (=> b!858192 m!799029))

(assert (=> b!858192 m!799025))

(assert (=> b!858192 m!799003))

(assert (=> b!858192 m!799027))

(declare-fun m!799031 () Bool)

(assert (=> b!858182 m!799031))

(declare-fun m!799033 () Bool)

(assert (=> b!858185 m!799033))

(declare-fun m!799035 () Bool)

(assert (=> b!858189 m!799035))

(declare-fun m!799037 () Bool)

(assert (=> mapNonEmpty!26399 m!799037))

(check-sat (not b!858183) b_and!23793 (not start!73510) (not b!858182) (not b!858189) tp_is_empty!16533 (not b_lambda!11779) (not b_next!14397) (not b!858192) (not mapNonEmpty!26399) (not b!858190) (not b!858191) (not b!858185))
(check-sat b_and!23793 (not b_next!14397))
