; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78852 () Bool)

(assert start!78852)

(declare-fun b_free!17037 () Bool)

(declare-fun b_next!17037 () Bool)

(assert (=> start!78852 (= b_free!17037 (not b_next!17037))))

(declare-fun tp!59553 () Bool)

(declare-fun b_and!27829 () Bool)

(assert (=> start!78852 (= tp!59553 b_and!27829)))

(declare-fun mapIsEmpty!31074 () Bool)

(declare-fun mapRes!31074 () Bool)

(assert (=> mapIsEmpty!31074 mapRes!31074))

(declare-fun b!920213 () Bool)

(declare-fun e!516509 () Bool)

(declare-fun e!516505 () Bool)

(assert (=> b!920213 (= e!516509 e!516505)))

(declare-fun res!620650 () Bool)

(assert (=> b!920213 (=> (not res!620650) (not e!516505))))

(declare-datatypes ((V!31025 0))(
  ( (V!31026 (val!9823 Int)) )
))
(declare-datatypes ((tuple2!12862 0))(
  ( (tuple2!12863 (_1!6441 (_ BitVec 64)) (_2!6441 V!31025)) )
))
(declare-datatypes ((List!18704 0))(
  ( (Nil!18701) (Cons!18700 (h!19846 tuple2!12862) (t!26479 List!18704)) )
))
(declare-datatypes ((ListLongMap!11573 0))(
  ( (ListLongMap!11574 (toList!5802 List!18704)) )
))
(declare-fun lt!413120 () ListLongMap!11573)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4813 (ListLongMap!11573 (_ BitVec 64)) Bool)

(assert (=> b!920213 (= res!620650 (contains!4813 lt!413120 k0!1099))))

(declare-datatypes ((array!55082 0))(
  ( (array!55083 (arr!26482 (Array (_ BitVec 32) (_ BitVec 64))) (size!26942 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55082)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9291 0))(
  ( (ValueCellFull!9291 (v!12341 V!31025)) (EmptyCell!9291) )
))
(declare-datatypes ((array!55084 0))(
  ( (array!55085 (arr!26483 (Array (_ BitVec 32) ValueCell!9291)) (size!26943 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55084)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31025)

(declare-fun minValue!1173 () V!31025)

(declare-fun getCurrentListMap!3024 (array!55082 array!55084 (_ BitVec 32) (_ BitVec 32) V!31025 V!31025 (_ BitVec 32) Int) ListLongMap!11573)

(assert (=> b!920213 (= lt!413120 (getCurrentListMap!3024 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920214 () Bool)

(declare-fun e!516513 () Bool)

(declare-fun arrayContainsKey!0 (array!55082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920214 (= e!516513 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!920215 () Bool)

(declare-fun res!620648 () Bool)

(assert (=> b!920215 (=> (not res!620648) (not e!516509))))

(assert (=> b!920215 (= res!620648 (and (= (size!26943 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26942 _keys!1487) (size!26943 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920216 () Bool)

(declare-fun e!516507 () Bool)

(assert (=> b!920216 (= e!516507 true)))

(declare-fun lt!413123 () Bool)

(declare-datatypes ((List!18705 0))(
  ( (Nil!18702) (Cons!18701 (h!19847 (_ BitVec 64)) (t!26480 List!18705)) )
))
(declare-fun contains!4814 (List!18705 (_ BitVec 64)) Bool)

(assert (=> b!920216 (= lt!413123 (contains!4814 Nil!18702 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920218 () Bool)

(declare-fun e!516512 () Bool)

(declare-fun tp_is_empty!19545 () Bool)

(assert (=> b!920218 (= e!516512 tp_is_empty!19545)))

(declare-fun b!920219 () Bool)

(declare-fun res!620655 () Bool)

(assert (=> b!920219 (=> (not res!620655) (not e!516509))))

(declare-fun arrayNoDuplicates!0 (array!55082 (_ BitVec 32) List!18705) Bool)

(assert (=> b!920219 (= res!620655 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18702))))

(declare-fun b!920220 () Bool)

(declare-fun res!620653 () Bool)

(assert (=> b!920220 (=> (not res!620653) (not e!516505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920220 (= res!620653 (validKeyInArray!0 k0!1099))))

(declare-fun b!920221 () Bool)

(declare-fun res!620659 () Bool)

(assert (=> b!920221 (=> (not res!620659) (not e!516505))))

(declare-fun v!791 () V!31025)

(declare-fun apply!614 (ListLongMap!11573 (_ BitVec 64)) V!31025)

(assert (=> b!920221 (= res!620659 (= (apply!614 lt!413120 k0!1099) v!791))))

(declare-fun b!920222 () Bool)

(declare-fun e!516506 () Bool)

(assert (=> b!920222 (= e!516506 tp_is_empty!19545)))

(declare-fun b!920223 () Bool)

(declare-fun res!620656 () Bool)

(assert (=> b!920223 (=> (not res!620656) (not e!516509))))

(assert (=> b!920223 (= res!620656 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26942 _keys!1487))))))

(declare-fun b!920224 () Bool)

(declare-fun res!620654 () Bool)

(assert (=> b!920224 (=> (not res!620654) (not e!516509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55082 (_ BitVec 32)) Bool)

(assert (=> b!920224 (= res!620654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920225 () Bool)

(declare-fun res!620658 () Bool)

(assert (=> b!920225 (=> res!620658 e!516507)))

(assert (=> b!920225 (= res!620658 (contains!4814 Nil!18702 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920226 () Bool)

(declare-fun res!620652 () Bool)

(assert (=> b!920226 (=> res!620652 e!516507)))

(declare-fun noDuplicate!1334 (List!18705) Bool)

(assert (=> b!920226 (= res!620652 (not (noDuplicate!1334 Nil!18702)))))

(declare-fun b!920227 () Bool)

(declare-fun e!516511 () Bool)

(assert (=> b!920227 (= e!516511 (not e!516507))))

(declare-fun res!620660 () Bool)

(assert (=> b!920227 (=> res!620660 e!516507)))

(assert (=> b!920227 (= res!620660 (or (bvsge (size!26942 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26942 _keys!1487))))))

(assert (=> b!920227 e!516513))

(declare-fun c!95975 () Bool)

(assert (=> b!920227 (= c!95975 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31049 0))(
  ( (Unit!31050) )
))
(declare-fun lt!413124 () Unit!31049)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!167 (array!55082 array!55084 (_ BitVec 32) (_ BitVec 32) V!31025 V!31025 (_ BitVec 64) (_ BitVec 32) Int) Unit!31049)

(assert (=> b!920227 (= lt!413124 (lemmaListMapContainsThenArrayContainsFrom!167 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!920227 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18702)))

(declare-fun lt!413119 () Unit!31049)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55082 (_ BitVec 32) (_ BitVec 32)) Unit!31049)

(assert (=> b!920227 (= lt!413119 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413125 () tuple2!12862)

(declare-fun +!2621 (ListLongMap!11573 tuple2!12862) ListLongMap!11573)

(assert (=> b!920227 (contains!4813 (+!2621 lt!413120 lt!413125) k0!1099)))

(declare-fun lt!413121 () V!31025)

(declare-fun lt!413127 () Unit!31049)

(declare-fun lt!413122 () (_ BitVec 64))

(declare-fun addStillContains!383 (ListLongMap!11573 (_ BitVec 64) V!31025 (_ BitVec 64)) Unit!31049)

(assert (=> b!920227 (= lt!413127 (addStillContains!383 lt!413120 lt!413122 lt!413121 k0!1099))))

(assert (=> b!920227 (= (getCurrentListMap!3024 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2621 (getCurrentListMap!3024 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413125))))

(assert (=> b!920227 (= lt!413125 (tuple2!12863 lt!413122 lt!413121))))

(declare-fun get!13912 (ValueCell!9291 V!31025) V!31025)

(declare-fun dynLambda!1460 (Int (_ BitVec 64)) V!31025)

(assert (=> b!920227 (= lt!413121 (get!13912 (select (arr!26483 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1460 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413126 () Unit!31049)

(declare-fun lemmaListMapRecursiveValidKeyArray!56 (array!55082 array!55084 (_ BitVec 32) (_ BitVec 32) V!31025 V!31025 (_ BitVec 32) Int) Unit!31049)

(assert (=> b!920227 (= lt!413126 (lemmaListMapRecursiveValidKeyArray!56 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!620657 () Bool)

(assert (=> start!78852 (=> (not res!620657) (not e!516509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78852 (= res!620657 (validMask!0 mask!1881))))

(assert (=> start!78852 e!516509))

(assert (=> start!78852 true))

(assert (=> start!78852 tp_is_empty!19545))

(declare-fun e!516510 () Bool)

(declare-fun array_inv!20624 (array!55084) Bool)

(assert (=> start!78852 (and (array_inv!20624 _values!1231) e!516510)))

(assert (=> start!78852 tp!59553))

(declare-fun array_inv!20625 (array!55082) Bool)

(assert (=> start!78852 (array_inv!20625 _keys!1487)))

(declare-fun b!920217 () Bool)

(assert (=> b!920217 (= e!516510 (and e!516506 mapRes!31074))))

(declare-fun condMapEmpty!31074 () Bool)

(declare-fun mapDefault!31074 () ValueCell!9291)

(assert (=> b!920217 (= condMapEmpty!31074 (= (arr!26483 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9291)) mapDefault!31074)))))

(declare-fun b!920228 () Bool)

(assert (=> b!920228 (= e!516505 e!516511)))

(declare-fun res!620651 () Bool)

(assert (=> b!920228 (=> (not res!620651) (not e!516511))))

(assert (=> b!920228 (= res!620651 (validKeyInArray!0 lt!413122))))

(assert (=> b!920228 (= lt!413122 (select (arr!26482 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920229 () Bool)

(declare-fun res!620649 () Bool)

(assert (=> b!920229 (=> (not res!620649) (not e!516505))))

(assert (=> b!920229 (= res!620649 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920230 () Bool)

(assert (=> b!920230 (= e!516513 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31074 () Bool)

(declare-fun tp!59552 () Bool)

(assert (=> mapNonEmpty!31074 (= mapRes!31074 (and tp!59552 e!516512))))

(declare-fun mapKey!31074 () (_ BitVec 32))

(declare-fun mapValue!31074 () ValueCell!9291)

(declare-fun mapRest!31074 () (Array (_ BitVec 32) ValueCell!9291))

(assert (=> mapNonEmpty!31074 (= (arr!26483 _values!1231) (store mapRest!31074 mapKey!31074 mapValue!31074))))

(assert (= (and start!78852 res!620657) b!920215))

(assert (= (and b!920215 res!620648) b!920224))

(assert (= (and b!920224 res!620654) b!920219))

(assert (= (and b!920219 res!620655) b!920223))

(assert (= (and b!920223 res!620656) b!920213))

(assert (= (and b!920213 res!620650) b!920221))

(assert (= (and b!920221 res!620659) b!920229))

(assert (= (and b!920229 res!620649) b!920220))

(assert (= (and b!920220 res!620653) b!920228))

(assert (= (and b!920228 res!620651) b!920227))

(assert (= (and b!920227 c!95975) b!920214))

(assert (= (and b!920227 (not c!95975)) b!920230))

(assert (= (and b!920227 (not res!620660)) b!920226))

(assert (= (and b!920226 (not res!620652)) b!920225))

(assert (= (and b!920225 (not res!620658)) b!920216))

(assert (= (and b!920217 condMapEmpty!31074) mapIsEmpty!31074))

(assert (= (and b!920217 (not condMapEmpty!31074)) mapNonEmpty!31074))

(get-info :version)

(assert (= (and mapNonEmpty!31074 ((_ is ValueCellFull!9291) mapValue!31074)) b!920218))

(assert (= (and b!920217 ((_ is ValueCellFull!9291) mapDefault!31074)) b!920222))

(assert (= start!78852 b!920217))

(declare-fun b_lambda!13569 () Bool)

(assert (=> (not b_lambda!13569) (not b!920227)))

(declare-fun t!26478 () Bool)

(declare-fun tb!5625 () Bool)

(assert (=> (and start!78852 (= defaultEntry!1235 defaultEntry!1235) t!26478) tb!5625))

(declare-fun result!11065 () Bool)

(assert (=> tb!5625 (= result!11065 tp_is_empty!19545)))

(assert (=> b!920227 t!26478))

(declare-fun b_and!27831 () Bool)

(assert (= b_and!27829 (and (=> t!26478 result!11065) b_and!27831)))

(declare-fun m!854237 () Bool)

(assert (=> b!920220 m!854237))

(declare-fun m!854239 () Bool)

(assert (=> b!920228 m!854239))

(declare-fun m!854241 () Bool)

(assert (=> b!920228 m!854241))

(declare-fun m!854243 () Bool)

(assert (=> b!920219 m!854243))

(declare-fun m!854245 () Bool)

(assert (=> b!920216 m!854245))

(declare-fun m!854247 () Bool)

(assert (=> b!920224 m!854247))

(declare-fun m!854249 () Bool)

(assert (=> b!920221 m!854249))

(declare-fun m!854251 () Bool)

(assert (=> start!78852 m!854251))

(declare-fun m!854253 () Bool)

(assert (=> start!78852 m!854253))

(declare-fun m!854255 () Bool)

(assert (=> start!78852 m!854255))

(declare-fun m!854257 () Bool)

(assert (=> b!920227 m!854257))

(declare-fun m!854259 () Bool)

(assert (=> b!920227 m!854259))

(declare-fun m!854261 () Bool)

(assert (=> b!920227 m!854261))

(declare-fun m!854263 () Bool)

(assert (=> b!920227 m!854263))

(declare-fun m!854265 () Bool)

(assert (=> b!920227 m!854265))

(declare-fun m!854267 () Bool)

(assert (=> b!920227 m!854267))

(declare-fun m!854269 () Bool)

(assert (=> b!920227 m!854269))

(declare-fun m!854271 () Bool)

(assert (=> b!920227 m!854271))

(declare-fun m!854273 () Bool)

(assert (=> b!920227 m!854273))

(declare-fun m!854275 () Bool)

(assert (=> b!920227 m!854275))

(declare-fun m!854277 () Bool)

(assert (=> b!920227 m!854277))

(assert (=> b!920227 m!854257))

(assert (=> b!920227 m!854267))

(assert (=> b!920227 m!854269))

(declare-fun m!854279 () Bool)

(assert (=> b!920227 m!854279))

(assert (=> b!920227 m!854263))

(declare-fun m!854281 () Bool)

(assert (=> b!920227 m!854281))

(declare-fun m!854283 () Bool)

(assert (=> b!920213 m!854283))

(declare-fun m!854285 () Bool)

(assert (=> b!920213 m!854285))

(declare-fun m!854287 () Bool)

(assert (=> b!920226 m!854287))

(declare-fun m!854289 () Bool)

(assert (=> b!920225 m!854289))

(declare-fun m!854291 () Bool)

(assert (=> mapNonEmpty!31074 m!854291))

(declare-fun m!854293 () Bool)

(assert (=> b!920214 m!854293))

(check-sat (not b!920226) (not b!920219) (not b!920221) (not mapNonEmpty!31074) (not b_next!17037) (not start!78852) (not b_lambda!13569) b_and!27831 (not b!920225) tp_is_empty!19545 (not b!920220) (not b!920227) (not b!920213) (not b!920224) (not b!920216) (not b!920214) (not b!920228))
(check-sat b_and!27831 (not b_next!17037))
