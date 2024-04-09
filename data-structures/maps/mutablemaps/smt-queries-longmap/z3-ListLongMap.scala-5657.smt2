; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73756 () Bool)

(assert start!73756)

(declare-fun b_free!14643 () Bool)

(declare-fun b_next!14643 () Bool)

(assert (=> start!73756 (= b_free!14643 (not b_next!14643))))

(declare-fun tp!51434 () Bool)

(declare-fun b_and!24283 () Bool)

(assert (=> start!73756 (= tp!51434 b_and!24283)))

(declare-fun b!864175 () Bool)

(declare-fun e!481459 () Bool)

(declare-fun e!481457 () Bool)

(assert (=> b!864175 (= e!481459 e!481457)))

(declare-fun res!587322 () Bool)

(assert (=> b!864175 (=> res!587322 e!481457)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49702 0))(
  ( (array!49703 (arr!23878 (Array (_ BitVec 32) (_ BitVec 64))) (size!24319 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49702)

(assert (=> b!864175 (= res!587322 (= k0!854 (select (arr!23878 _keys!868) from!1053)))))

(assert (=> b!864175 (not (= (select (arr!23878 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29535 0))(
  ( (Unit!29536) )
))
(declare-fun lt!391038 () Unit!29535)

(declare-fun e!481458 () Unit!29535)

(assert (=> b!864175 (= lt!391038 e!481458)))

(declare-fun c!92103 () Bool)

(assert (=> b!864175 (= c!92103 (= (select (arr!23878 _keys!868) from!1053) k0!854))))

(declare-datatypes ((V!27419 0))(
  ( (V!27420 (val!8437 Int)) )
))
(declare-datatypes ((tuple2!11174 0))(
  ( (tuple2!11175 (_1!5597 (_ BitVec 64)) (_2!5597 V!27419)) )
))
(declare-datatypes ((List!17041 0))(
  ( (Nil!17038) (Cons!17037 (h!18168 tuple2!11174) (t!23958 List!17041)) )
))
(declare-datatypes ((ListLongMap!9957 0))(
  ( (ListLongMap!9958 (toList!4994 List!17041)) )
))
(declare-fun lt!391027 () ListLongMap!9957)

(declare-fun lt!391037 () ListLongMap!9957)

(assert (=> b!864175 (= lt!391027 lt!391037)))

(declare-fun lt!391041 () ListLongMap!9957)

(declare-fun lt!391033 () tuple2!11174)

(declare-fun +!2291 (ListLongMap!9957 tuple2!11174) ListLongMap!9957)

(assert (=> b!864175 (= lt!391037 (+!2291 lt!391041 lt!391033))))

(declare-fun lt!391026 () V!27419)

(assert (=> b!864175 (= lt!391033 (tuple2!11175 (select (arr!23878 _keys!868) from!1053) lt!391026))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7950 0))(
  ( (ValueCellFull!7950 (v!10858 V!27419)) (EmptyCell!7950) )
))
(declare-datatypes ((array!49704 0))(
  ( (array!49705 (arr!23879 (Array (_ BitVec 32) ValueCell!7950)) (size!24320 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49704)

(declare-fun get!12626 (ValueCell!7950 V!27419) V!27419)

(declare-fun dynLambda!1162 (Int (_ BitVec 64)) V!27419)

(assert (=> b!864175 (= lt!391026 (get!12626 (select (arr!23879 _values!688) from!1053) (dynLambda!1162 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864176 () Bool)

(declare-fun res!587323 () Bool)

(declare-fun e!481453 () Bool)

(assert (=> b!864176 (=> (not res!587323) (not e!481453))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864176 (= res!587323 (and (= (select (arr!23878 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!864177 () Bool)

(declare-fun res!587329 () Bool)

(assert (=> b!864177 (=> (not res!587329) (not e!481453))))

(assert (=> b!864177 (= res!587329 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24319 _keys!868))))))

(declare-fun b!864178 () Bool)

(declare-fun e!481461 () Bool)

(declare-fun e!481455 () Bool)

(declare-fun mapRes!26768 () Bool)

(assert (=> b!864178 (= e!481461 (and e!481455 mapRes!26768))))

(declare-fun condMapEmpty!26768 () Bool)

(declare-fun mapDefault!26768 () ValueCell!7950)

(assert (=> b!864178 (= condMapEmpty!26768 (= (arr!23879 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7950)) mapDefault!26768)))))

(declare-fun b!864179 () Bool)

(declare-fun res!587328 () Bool)

(assert (=> b!864179 (=> (not res!587328) (not e!481453))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!864179 (= res!587328 (and (= (size!24320 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24319 _keys!868) (size!24320 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864180 () Bool)

(declare-fun res!587321 () Bool)

(assert (=> b!864180 (=> (not res!587321) (not e!481453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864180 (= res!587321 (validKeyInArray!0 k0!854))))

(declare-fun res!587325 () Bool)

(assert (=> start!73756 (=> (not res!587325) (not e!481453))))

(assert (=> start!73756 (= res!587325 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24319 _keys!868))))))

(assert (=> start!73756 e!481453))

(declare-fun tp_is_empty!16779 () Bool)

(assert (=> start!73756 tp_is_empty!16779))

(assert (=> start!73756 true))

(assert (=> start!73756 tp!51434))

(declare-fun array_inv!18862 (array!49702) Bool)

(assert (=> start!73756 (array_inv!18862 _keys!868)))

(declare-fun array_inv!18863 (array!49704) Bool)

(assert (=> start!73756 (and (array_inv!18863 _values!688) e!481461)))

(declare-fun b!864181 () Bool)

(declare-fun e!481460 () Bool)

(assert (=> b!864181 (= e!481453 e!481460)))

(declare-fun res!587324 () Bool)

(assert (=> b!864181 (=> (not res!587324) (not e!481460))))

(assert (=> b!864181 (= res!587324 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun minValue!654 () V!27419)

(declare-fun zeroValue!654 () V!27419)

(declare-fun lt!391028 () array!49704)

(declare-fun getCurrentListMapNoExtraKeys!2967 (array!49702 array!49704 (_ BitVec 32) (_ BitVec 32) V!27419 V!27419 (_ BitVec 32) Int) ListLongMap!9957)

(assert (=> b!864181 (= lt!391027 (getCurrentListMapNoExtraKeys!2967 _keys!868 lt!391028 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27419)

(assert (=> b!864181 (= lt!391028 (array!49705 (store (arr!23879 _values!688) i!612 (ValueCellFull!7950 v!557)) (size!24320 _values!688)))))

(declare-fun lt!391029 () ListLongMap!9957)

(assert (=> b!864181 (= lt!391029 (getCurrentListMapNoExtraKeys!2967 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864182 () Bool)

(assert (=> b!864182 (= e!481460 (not e!481459))))

(declare-fun res!587327 () Bool)

(assert (=> b!864182 (=> res!587327 e!481459)))

(assert (=> b!864182 (= res!587327 (not (validKeyInArray!0 (select (arr!23878 _keys!868) from!1053))))))

(declare-fun lt!391036 () ListLongMap!9957)

(assert (=> b!864182 (= lt!391036 lt!391041)))

(declare-fun lt!391040 () ListLongMap!9957)

(declare-fun lt!391039 () tuple2!11174)

(assert (=> b!864182 (= lt!391041 (+!2291 lt!391040 lt!391039))))

(assert (=> b!864182 (= lt!391036 (getCurrentListMapNoExtraKeys!2967 _keys!868 lt!391028 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864182 (= lt!391039 (tuple2!11175 k0!854 v!557))))

(assert (=> b!864182 (= lt!391040 (getCurrentListMapNoExtraKeys!2967 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391034 () Unit!29535)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!535 (array!49702 array!49704 (_ BitVec 32) (_ BitVec 32) V!27419 V!27419 (_ BitVec 32) (_ BitVec 64) V!27419 (_ BitVec 32) Int) Unit!29535)

(assert (=> b!864182 (= lt!391034 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!535 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26768 () Bool)

(assert (=> mapIsEmpty!26768 mapRes!26768))

(declare-fun b!864183 () Bool)

(assert (=> b!864183 (= e!481455 tp_is_empty!16779)))

(declare-fun b!864184 () Bool)

(declare-fun Unit!29537 () Unit!29535)

(assert (=> b!864184 (= e!481458 Unit!29537)))

(declare-fun lt!391032 () Unit!29535)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49702 (_ BitVec 32) (_ BitVec 32)) Unit!29535)

(assert (=> b!864184 (= lt!391032 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17042 0))(
  ( (Nil!17039) (Cons!17038 (h!18169 (_ BitVec 64)) (t!23959 List!17042)) )
))
(declare-fun arrayNoDuplicates!0 (array!49702 (_ BitVec 32) List!17042) Bool)

(assert (=> b!864184 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17039)))

(declare-fun lt!391031 () Unit!29535)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49702 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29535)

(assert (=> b!864184 (= lt!391031 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864184 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391030 () Unit!29535)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49702 (_ BitVec 64) (_ BitVec 32) List!17042) Unit!29535)

(assert (=> b!864184 (= lt!391030 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17039))))

(assert (=> b!864184 false))

(declare-fun b!864185 () Bool)

(declare-fun res!587330 () Bool)

(assert (=> b!864185 (=> (not res!587330) (not e!481453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864185 (= res!587330 (validMask!0 mask!1196))))

(declare-fun b!864186 () Bool)

(declare-fun e!481456 () Bool)

(assert (=> b!864186 (= e!481456 tp_is_empty!16779)))

(declare-fun b!864187 () Bool)

(declare-fun Unit!29538 () Unit!29535)

(assert (=> b!864187 (= e!481458 Unit!29538)))

(declare-fun b!864188 () Bool)

(declare-fun res!587326 () Bool)

(assert (=> b!864188 (=> (not res!587326) (not e!481453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49702 (_ BitVec 32)) Bool)

(assert (=> b!864188 (= res!587326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864189 () Bool)

(declare-fun res!587331 () Bool)

(assert (=> b!864189 (=> (not res!587331) (not e!481453))))

(assert (=> b!864189 (= res!587331 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17039))))

(declare-fun mapNonEmpty!26768 () Bool)

(declare-fun tp!51433 () Bool)

(assert (=> mapNonEmpty!26768 (= mapRes!26768 (and tp!51433 e!481456))))

(declare-fun mapKey!26768 () (_ BitVec 32))

(declare-fun mapValue!26768 () ValueCell!7950)

(declare-fun mapRest!26768 () (Array (_ BitVec 32) ValueCell!7950))

(assert (=> mapNonEmpty!26768 (= (arr!23879 _values!688) (store mapRest!26768 mapKey!26768 mapValue!26768))))

(declare-fun b!864190 () Bool)

(assert (=> b!864190 (= e!481457 true)))

(assert (=> b!864190 (= lt!391037 (+!2291 (+!2291 lt!391040 lt!391033) lt!391039))))

(declare-fun lt!391035 () Unit!29535)

(declare-fun addCommutativeForDiffKeys!501 (ListLongMap!9957 (_ BitVec 64) V!27419 (_ BitVec 64) V!27419) Unit!29535)

(assert (=> b!864190 (= lt!391035 (addCommutativeForDiffKeys!501 lt!391040 k0!854 v!557 (select (arr!23878 _keys!868) from!1053) lt!391026))))

(assert (= (and start!73756 res!587325) b!864185))

(assert (= (and b!864185 res!587330) b!864179))

(assert (= (and b!864179 res!587328) b!864188))

(assert (= (and b!864188 res!587326) b!864189))

(assert (= (and b!864189 res!587331) b!864177))

(assert (= (and b!864177 res!587329) b!864180))

(assert (= (and b!864180 res!587321) b!864176))

(assert (= (and b!864176 res!587323) b!864181))

(assert (= (and b!864181 res!587324) b!864182))

(assert (= (and b!864182 (not res!587327)) b!864175))

(assert (= (and b!864175 c!92103) b!864184))

(assert (= (and b!864175 (not c!92103)) b!864187))

(assert (= (and b!864175 (not res!587322)) b!864190))

(assert (= (and b!864178 condMapEmpty!26768) mapIsEmpty!26768))

(assert (= (and b!864178 (not condMapEmpty!26768)) mapNonEmpty!26768))

(get-info :version)

(assert (= (and mapNonEmpty!26768 ((_ is ValueCellFull!7950) mapValue!26768)) b!864186))

(assert (= (and b!864178 ((_ is ValueCellFull!7950) mapDefault!26768)) b!864183))

(assert (= start!73756 b!864178))

(declare-fun b_lambda!12025 () Bool)

(assert (=> (not b_lambda!12025) (not b!864175)))

(declare-fun t!23957 () Bool)

(declare-fun tb!4773 () Bool)

(assert (=> (and start!73756 (= defaultEntry!696 defaultEntry!696) t!23957) tb!4773))

(declare-fun result!9149 () Bool)

(assert (=> tb!4773 (= result!9149 tp_is_empty!16779)))

(assert (=> b!864175 t!23957))

(declare-fun b_and!24285 () Bool)

(assert (= b_and!24283 (and (=> t!23957 result!9149) b_and!24285)))

(declare-fun m!805601 () Bool)

(assert (=> b!864185 m!805601))

(declare-fun m!805603 () Bool)

(assert (=> b!864180 m!805603))

(declare-fun m!805605 () Bool)

(assert (=> start!73756 m!805605))

(declare-fun m!805607 () Bool)

(assert (=> start!73756 m!805607))

(declare-fun m!805609 () Bool)

(assert (=> b!864189 m!805609))

(declare-fun m!805611 () Bool)

(assert (=> b!864184 m!805611))

(declare-fun m!805613 () Bool)

(assert (=> b!864184 m!805613))

(declare-fun m!805615 () Bool)

(assert (=> b!864184 m!805615))

(declare-fun m!805617 () Bool)

(assert (=> b!864184 m!805617))

(declare-fun m!805619 () Bool)

(assert (=> b!864184 m!805619))

(declare-fun m!805621 () Bool)

(assert (=> b!864190 m!805621))

(assert (=> b!864190 m!805621))

(declare-fun m!805623 () Bool)

(assert (=> b!864190 m!805623))

(declare-fun m!805625 () Bool)

(assert (=> b!864190 m!805625))

(assert (=> b!864190 m!805625))

(declare-fun m!805627 () Bool)

(assert (=> b!864190 m!805627))

(declare-fun m!805629 () Bool)

(assert (=> b!864176 m!805629))

(declare-fun m!805631 () Bool)

(assert (=> b!864188 m!805631))

(declare-fun m!805633 () Bool)

(assert (=> b!864182 m!805633))

(declare-fun m!805635 () Bool)

(assert (=> b!864182 m!805635))

(assert (=> b!864182 m!805625))

(declare-fun m!805637 () Bool)

(assert (=> b!864182 m!805637))

(declare-fun m!805639 () Bool)

(assert (=> b!864182 m!805639))

(assert (=> b!864182 m!805625))

(declare-fun m!805641 () Bool)

(assert (=> b!864182 m!805641))

(declare-fun m!805643 () Bool)

(assert (=> b!864175 m!805643))

(declare-fun m!805645 () Bool)

(assert (=> b!864175 m!805645))

(declare-fun m!805647 () Bool)

(assert (=> b!864175 m!805647))

(declare-fun m!805649 () Bool)

(assert (=> b!864175 m!805649))

(assert (=> b!864175 m!805645))

(assert (=> b!864175 m!805625))

(assert (=> b!864175 m!805647))

(declare-fun m!805651 () Bool)

(assert (=> b!864181 m!805651))

(declare-fun m!805653 () Bool)

(assert (=> b!864181 m!805653))

(declare-fun m!805655 () Bool)

(assert (=> b!864181 m!805655))

(declare-fun m!805657 () Bool)

(assert (=> mapNonEmpty!26768 m!805657))

(check-sat (not b!864190) (not b!864180) (not start!73756) (not b!864175) (not b!864181) b_and!24285 (not b!864189) (not b_lambda!12025) (not b_next!14643) tp_is_empty!16779 (not b!864185) (not mapNonEmpty!26768) (not b!864188) (not b!864184) (not b!864182))
(check-sat b_and!24285 (not b_next!14643))
