; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73516 () Bool)

(assert start!73516)

(declare-fun b_free!14403 () Bool)

(declare-fun b_next!14403 () Bool)

(assert (=> start!73516 (= b_free!14403 (not b_next!14403))))

(declare-fun tp!50714 () Bool)

(declare-fun b_and!23803 () Bool)

(assert (=> start!73516 (= tp!50714 b_and!23803)))

(declare-fun res!583220 () Bool)

(declare-fun e!478365 () Bool)

(assert (=> start!73516 (=> (not res!583220) (not e!478365))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49238 0))(
  ( (array!49239 (arr!23646 (Array (_ BitVec 32) (_ BitVec 64))) (size!24087 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49238)

(assert (=> start!73516 (= res!583220 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24087 _keys!868))))))

(assert (=> start!73516 e!478365))

(declare-fun tp_is_empty!16539 () Bool)

(assert (=> start!73516 tp_is_empty!16539))

(assert (=> start!73516 true))

(assert (=> start!73516 tp!50714))

(declare-fun array_inv!18706 (array!49238) Bool)

(assert (=> start!73516 (array_inv!18706 _keys!868)))

(declare-datatypes ((V!27099 0))(
  ( (V!27100 (val!8317 Int)) )
))
(declare-datatypes ((ValueCell!7830 0))(
  ( (ValueCellFull!7830 (v!10738 V!27099)) (EmptyCell!7830) )
))
(declare-datatypes ((array!49240 0))(
  ( (array!49241 (arr!23647 (Array (_ BitVec 32) ValueCell!7830)) (size!24088 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49240)

(declare-fun e!478367 () Bool)

(declare-fun array_inv!18707 (array!49240) Bool)

(assert (=> start!73516 (and (array_inv!18707 _values!688) e!478367)))

(declare-fun b!858304 () Bool)

(declare-fun res!583217 () Bool)

(assert (=> b!858304 (=> (not res!583217) (not e!478365))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858304 (= res!583217 (validKeyInArray!0 k0!854))))

(declare-fun b!858305 () Bool)

(declare-fun res!583215 () Bool)

(assert (=> b!858305 (=> (not res!583215) (not e!478365))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49238 (_ BitVec 32)) Bool)

(assert (=> b!858305 (= res!583215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858306 () Bool)

(declare-fun res!583212 () Bool)

(assert (=> b!858306 (=> (not res!583212) (not e!478365))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858306 (= res!583212 (and (= (select (arr!23646 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!858307 () Bool)

(declare-fun e!478370 () Bool)

(assert (=> b!858307 (= e!478365 e!478370)))

(declare-fun res!583221 () Bool)

(assert (=> b!858307 (=> (not res!583221) (not e!478370))))

(assert (=> b!858307 (= res!583221 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386674 () array!49240)

(declare-datatypes ((tuple2!10962 0))(
  ( (tuple2!10963 (_1!5491 (_ BitVec 64)) (_2!5491 V!27099)) )
))
(declare-datatypes ((List!16834 0))(
  ( (Nil!16831) (Cons!16830 (h!17961 tuple2!10962) (t!23511 List!16834)) )
))
(declare-datatypes ((ListLongMap!9745 0))(
  ( (ListLongMap!9746 (toList!4888 List!16834)) )
))
(declare-fun lt!386676 () ListLongMap!9745)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27099)

(declare-fun zeroValue!654 () V!27099)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2870 (array!49238 array!49240 (_ BitVec 32) (_ BitVec 32) V!27099 V!27099 (_ BitVec 32) Int) ListLongMap!9745)

(assert (=> b!858307 (= lt!386676 (getCurrentListMapNoExtraKeys!2870 _keys!868 lt!386674 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27099)

(assert (=> b!858307 (= lt!386674 (array!49241 (store (arr!23647 _values!688) i!612 (ValueCellFull!7830 v!557)) (size!24088 _values!688)))))

(declare-fun lt!386671 () ListLongMap!9745)

(assert (=> b!858307 (= lt!386671 (getCurrentListMapNoExtraKeys!2870 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858308 () Bool)

(declare-fun res!583213 () Bool)

(assert (=> b!858308 (=> (not res!583213) (not e!478365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858308 (= res!583213 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26408 () Bool)

(declare-fun mapRes!26408 () Bool)

(declare-fun tp!50713 () Bool)

(declare-fun e!478366 () Bool)

(assert (=> mapNonEmpty!26408 (= mapRes!26408 (and tp!50713 e!478366))))

(declare-fun mapKey!26408 () (_ BitVec 32))

(declare-fun mapValue!26408 () ValueCell!7830)

(declare-fun mapRest!26408 () (Array (_ BitVec 32) ValueCell!7830))

(assert (=> mapNonEmpty!26408 (= (arr!23647 _values!688) (store mapRest!26408 mapKey!26408 mapValue!26408))))

(declare-fun b!858309 () Bool)

(assert (=> b!858309 (= e!478366 tp_is_empty!16539)))

(declare-fun b!858310 () Bool)

(declare-fun res!583214 () Bool)

(assert (=> b!858310 (=> (not res!583214) (not e!478365))))

(declare-datatypes ((List!16835 0))(
  ( (Nil!16832) (Cons!16831 (h!17962 (_ BitVec 64)) (t!23512 List!16835)) )
))
(declare-fun arrayNoDuplicates!0 (array!49238 (_ BitVec 32) List!16835) Bool)

(assert (=> b!858310 (= res!583214 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16832))))

(declare-fun mapIsEmpty!26408 () Bool)

(assert (=> mapIsEmpty!26408 mapRes!26408))

(declare-fun b!858311 () Bool)

(declare-fun e!478368 () Bool)

(assert (=> b!858311 (= e!478370 (not e!478368))))

(declare-fun res!583216 () Bool)

(assert (=> b!858311 (=> res!583216 e!478368)))

(assert (=> b!858311 (= res!583216 (not (validKeyInArray!0 (select (arr!23646 _keys!868) from!1053))))))

(declare-fun lt!386670 () ListLongMap!9745)

(declare-fun lt!386673 () ListLongMap!9745)

(assert (=> b!858311 (= lt!386670 lt!386673)))

(declare-fun lt!386675 () ListLongMap!9745)

(declare-fun +!2193 (ListLongMap!9745 tuple2!10962) ListLongMap!9745)

(assert (=> b!858311 (= lt!386673 (+!2193 lt!386675 (tuple2!10963 k0!854 v!557)))))

(assert (=> b!858311 (= lt!386670 (getCurrentListMapNoExtraKeys!2870 _keys!868 lt!386674 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858311 (= lt!386675 (getCurrentListMapNoExtraKeys!2870 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29228 0))(
  ( (Unit!29229) )
))
(declare-fun lt!386672 () Unit!29228)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!453 (array!49238 array!49240 (_ BitVec 32) (_ BitVec 32) V!27099 V!27099 (_ BitVec 32) (_ BitVec 64) V!27099 (_ BitVec 32) Int) Unit!29228)

(assert (=> b!858311 (= lt!386672 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!453 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858312 () Bool)

(declare-fun e!478371 () Bool)

(assert (=> b!858312 (= e!478367 (and e!478371 mapRes!26408))))

(declare-fun condMapEmpty!26408 () Bool)

(declare-fun mapDefault!26408 () ValueCell!7830)

(assert (=> b!858312 (= condMapEmpty!26408 (= (arr!23647 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7830)) mapDefault!26408)))))

(declare-fun b!858313 () Bool)

(declare-fun res!583218 () Bool)

(assert (=> b!858313 (=> (not res!583218) (not e!478365))))

(assert (=> b!858313 (= res!583218 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24087 _keys!868))))))

(declare-fun b!858314 () Bool)

(assert (=> b!858314 (= e!478368 true)))

(declare-fun get!12467 (ValueCell!7830 V!27099) V!27099)

(declare-fun dynLambda!1083 (Int (_ BitVec 64)) V!27099)

(assert (=> b!858314 (= lt!386676 (+!2193 lt!386673 (tuple2!10963 (select (arr!23646 _keys!868) from!1053) (get!12467 (select (arr!23647 _values!688) from!1053) (dynLambda!1083 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858315 () Bool)

(declare-fun res!583219 () Bool)

(assert (=> b!858315 (=> (not res!583219) (not e!478365))))

(assert (=> b!858315 (= res!583219 (and (= (size!24088 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24087 _keys!868) (size!24088 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858316 () Bool)

(assert (=> b!858316 (= e!478371 tp_is_empty!16539)))

(assert (= (and start!73516 res!583220) b!858308))

(assert (= (and b!858308 res!583213) b!858315))

(assert (= (and b!858315 res!583219) b!858305))

(assert (= (and b!858305 res!583215) b!858310))

(assert (= (and b!858310 res!583214) b!858313))

(assert (= (and b!858313 res!583218) b!858304))

(assert (= (and b!858304 res!583217) b!858306))

(assert (= (and b!858306 res!583212) b!858307))

(assert (= (and b!858307 res!583221) b!858311))

(assert (= (and b!858311 (not res!583216)) b!858314))

(assert (= (and b!858312 condMapEmpty!26408) mapIsEmpty!26408))

(assert (= (and b!858312 (not condMapEmpty!26408)) mapNonEmpty!26408))

(get-info :version)

(assert (= (and mapNonEmpty!26408 ((_ is ValueCellFull!7830) mapValue!26408)) b!858309))

(assert (= (and b!858312 ((_ is ValueCellFull!7830) mapDefault!26408)) b!858316))

(assert (= start!73516 b!858312))

(declare-fun b_lambda!11785 () Bool)

(assert (=> (not b_lambda!11785) (not b!858314)))

(declare-fun t!23510 () Bool)

(declare-fun tb!4533 () Bool)

(assert (=> (and start!73516 (= defaultEntry!696 defaultEntry!696) t!23510) tb!4533))

(declare-fun result!8669 () Bool)

(assert (=> tb!4533 (= result!8669 tp_is_empty!16539)))

(assert (=> b!858314 t!23510))

(declare-fun b_and!23805 () Bool)

(assert (= b_and!23803 (and (=> t!23510 result!8669) b_and!23805)))

(declare-fun m!799123 () Bool)

(assert (=> b!858311 m!799123))

(declare-fun m!799125 () Bool)

(assert (=> b!858311 m!799125))

(declare-fun m!799127 () Bool)

(assert (=> b!858311 m!799127))

(assert (=> b!858311 m!799125))

(declare-fun m!799129 () Bool)

(assert (=> b!858311 m!799129))

(declare-fun m!799131 () Bool)

(assert (=> b!858311 m!799131))

(declare-fun m!799133 () Bool)

(assert (=> b!858311 m!799133))

(declare-fun m!799135 () Bool)

(assert (=> b!858307 m!799135))

(declare-fun m!799137 () Bool)

(assert (=> b!858307 m!799137))

(declare-fun m!799139 () Bool)

(assert (=> b!858307 m!799139))

(declare-fun m!799141 () Bool)

(assert (=> b!858304 m!799141))

(declare-fun m!799143 () Bool)

(assert (=> b!858314 m!799143))

(declare-fun m!799145 () Bool)

(assert (=> b!858314 m!799145))

(declare-fun m!799147 () Bool)

(assert (=> b!858314 m!799147))

(declare-fun m!799149 () Bool)

(assert (=> b!858314 m!799149))

(assert (=> b!858314 m!799145))

(assert (=> b!858314 m!799125))

(assert (=> b!858314 m!799147))

(declare-fun m!799151 () Bool)

(assert (=> start!73516 m!799151))

(declare-fun m!799153 () Bool)

(assert (=> start!73516 m!799153))

(declare-fun m!799155 () Bool)

(assert (=> mapNonEmpty!26408 m!799155))

(declare-fun m!799157 () Bool)

(assert (=> b!858310 m!799157))

(declare-fun m!799159 () Bool)

(assert (=> b!858306 m!799159))

(declare-fun m!799161 () Bool)

(assert (=> b!858305 m!799161))

(declare-fun m!799163 () Bool)

(assert (=> b!858308 m!799163))

(check-sat (not b!858307) (not b!858305) (not mapNonEmpty!26408) tp_is_empty!16539 (not b!858311) b_and!23805 (not b!858304) (not b_lambda!11785) (not b_next!14403) (not start!73516) (not b!858310) (not b!858314) (not b!858308))
(check-sat b_and!23805 (not b_next!14403))
