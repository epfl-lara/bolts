; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78888 () Bool)

(assert start!78888)

(declare-fun b_free!17073 () Bool)

(declare-fun b_next!17073 () Bool)

(assert (=> start!78888 (= b_free!17073 (not b_next!17073))))

(declare-fun tp!59660 () Bool)

(declare-fun b_and!27901 () Bool)

(assert (=> start!78888 (= tp!59660 b_and!27901)))

(declare-fun b!921221 () Bool)

(declare-fun e!516992 () Bool)

(declare-fun e!516997 () Bool)

(assert (=> b!921221 (= e!516992 e!516997)))

(declare-fun res!621351 () Bool)

(assert (=> b!921221 (=> (not res!621351) (not e!516997))))

(declare-fun lt!413607 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921221 (= res!621351 (validKeyInArray!0 lt!413607))))

(declare-datatypes ((array!55152 0))(
  ( (array!55153 (arr!26517 (Array (_ BitVec 32) (_ BitVec 64))) (size!26977 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55152)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921221 (= lt!413607 (select (arr!26517 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921222 () Bool)

(declare-fun res!621350 () Bool)

(declare-fun e!516993 () Bool)

(assert (=> b!921222 (=> (not res!621350) (not e!516993))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55152 (_ BitVec 32)) Bool)

(assert (=> b!921222 (= res!621350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!921223 () Bool)

(declare-fun res!621356 () Bool)

(assert (=> b!921223 (=> (not res!621356) (not e!516993))))

(declare-datatypes ((List!18737 0))(
  ( (Nil!18734) (Cons!18733 (h!19879 (_ BitVec 64)) (t!26548 List!18737)) )
))
(declare-fun arrayNoDuplicates!0 (array!55152 (_ BitVec 32) List!18737) Bool)

(assert (=> b!921223 (= res!621356 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18734))))

(declare-fun b!921224 () Bool)

(declare-fun res!621352 () Bool)

(assert (=> b!921224 (=> (not res!621352) (not e!516992))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!31073 0))(
  ( (V!31074 (val!9841 Int)) )
))
(declare-fun v!791 () V!31073)

(declare-datatypes ((tuple2!12896 0))(
  ( (tuple2!12897 (_1!6458 (_ BitVec 64)) (_2!6458 V!31073)) )
))
(declare-datatypes ((List!18738 0))(
  ( (Nil!18735) (Cons!18734 (h!19880 tuple2!12896) (t!26549 List!18738)) )
))
(declare-datatypes ((ListLongMap!11607 0))(
  ( (ListLongMap!11608 (toList!5819 List!18738)) )
))
(declare-fun lt!413605 () ListLongMap!11607)

(declare-fun apply!628 (ListLongMap!11607 (_ BitVec 64)) V!31073)

(assert (=> b!921224 (= res!621352 (= (apply!628 lt!413605 k0!1099) v!791))))

(declare-fun mapIsEmpty!31128 () Bool)

(declare-fun mapRes!31128 () Bool)

(assert (=> mapIsEmpty!31128 mapRes!31128))

(declare-fun b!921225 () Bool)

(declare-fun e!516998 () Bool)

(declare-fun tp_is_empty!19581 () Bool)

(assert (=> b!921225 (= e!516998 tp_is_empty!19581)))

(declare-fun b!921226 () Bool)

(declare-fun res!621359 () Bool)

(declare-fun e!516996 () Bool)

(assert (=> b!921226 (=> res!621359 e!516996)))

(declare-fun contains!4843 (List!18737 (_ BitVec 64)) Bool)

(assert (=> b!921226 (= res!621359 (contains!4843 Nil!18734 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921227 () Bool)

(declare-fun e!516999 () Bool)

(declare-fun e!516994 () Bool)

(assert (=> b!921227 (= e!516999 (and e!516994 mapRes!31128))))

(declare-fun condMapEmpty!31128 () Bool)

(declare-datatypes ((ValueCell!9309 0))(
  ( (ValueCellFull!9309 (v!12359 V!31073)) (EmptyCell!9309) )
))
(declare-datatypes ((array!55154 0))(
  ( (array!55155 (arr!26518 (Array (_ BitVec 32) ValueCell!9309)) (size!26978 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55154)

(declare-fun mapDefault!31128 () ValueCell!9309)

(assert (=> b!921227 (= condMapEmpty!31128 (= (arr!26518 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9309)) mapDefault!31128)))))

(declare-fun b!921228 () Bool)

(declare-fun res!621354 () Bool)

(assert (=> b!921228 (=> (not res!621354) (not e!516992))))

(assert (=> b!921228 (= res!621354 (validKeyInArray!0 k0!1099))))

(declare-fun res!621358 () Bool)

(assert (=> start!78888 (=> (not res!621358) (not e!516993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78888 (= res!621358 (validMask!0 mask!1881))))

(assert (=> start!78888 e!516993))

(assert (=> start!78888 true))

(assert (=> start!78888 tp_is_empty!19581))

(declare-fun array_inv!20648 (array!55154) Bool)

(assert (=> start!78888 (and (array_inv!20648 _values!1231) e!516999)))

(assert (=> start!78888 tp!59660))

(declare-fun array_inv!20649 (array!55152) Bool)

(assert (=> start!78888 (array_inv!20649 _keys!1487)))

(declare-fun b!921229 () Bool)

(declare-fun res!621362 () Bool)

(assert (=> b!921229 (=> res!621362 e!516996)))

(declare-fun noDuplicate!1347 (List!18737) Bool)

(assert (=> b!921229 (= res!621362 (not (noDuplicate!1347 Nil!18734)))))

(declare-fun b!921230 () Bool)

(assert (=> b!921230 (= e!516993 e!516992)))

(declare-fun res!621355 () Bool)

(assert (=> b!921230 (=> (not res!621355) (not e!516992))))

(declare-fun contains!4844 (ListLongMap!11607 (_ BitVec 64)) Bool)

(assert (=> b!921230 (= res!621355 (contains!4844 lt!413605 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31073)

(declare-fun minValue!1173 () V!31073)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3041 (array!55152 array!55154 (_ BitVec 32) (_ BitVec 32) V!31073 V!31073 (_ BitVec 32) Int) ListLongMap!11607)

(assert (=> b!921230 (= lt!413605 (getCurrentListMap!3041 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921231 () Bool)

(declare-fun res!621357 () Bool)

(assert (=> b!921231 (=> (not res!621357) (not e!516993))))

(assert (=> b!921231 (= res!621357 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26977 _keys!1487))))))

(declare-fun mapNonEmpty!31128 () Bool)

(declare-fun tp!59661 () Bool)

(assert (=> mapNonEmpty!31128 (= mapRes!31128 (and tp!59661 e!516998))))

(declare-fun mapKey!31128 () (_ BitVec 32))

(declare-fun mapRest!31128 () (Array (_ BitVec 32) ValueCell!9309))

(declare-fun mapValue!31128 () ValueCell!9309)

(assert (=> mapNonEmpty!31128 (= (arr!26518 _values!1231) (store mapRest!31128 mapKey!31128 mapValue!31128))))

(declare-fun b!921232 () Bool)

(assert (=> b!921232 (= e!516994 tp_is_empty!19581)))

(declare-fun b!921233 () Bool)

(assert (=> b!921233 (= e!516996 true)))

(declare-fun lt!413610 () Bool)

(assert (=> b!921233 (= lt!413610 (contains!4843 Nil!18734 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921234 () Bool)

(declare-fun e!516995 () Bool)

(assert (=> b!921234 (= e!516995 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921235 () Bool)

(declare-fun arrayContainsKey!0 (array!55152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921235 (= e!516995 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!921236 () Bool)

(declare-fun res!621360 () Bool)

(assert (=> b!921236 (=> (not res!621360) (not e!516992))))

(assert (=> b!921236 (= res!621360 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921237 () Bool)

(assert (=> b!921237 (= e!516997 (not e!516996))))

(declare-fun res!621353 () Bool)

(assert (=> b!921237 (=> res!621353 e!516996)))

(assert (=> b!921237 (= res!621353 (or (bvsge (size!26977 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26977 _keys!1487))))))

(assert (=> b!921237 e!516995))

(declare-fun c!96029 () Bool)

(assert (=> b!921237 (= c!96029 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31079 0))(
  ( (Unit!31080) )
))
(declare-fun lt!413612 () Unit!31079)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!182 (array!55152 array!55154 (_ BitVec 32) (_ BitVec 32) V!31073 V!31073 (_ BitVec 64) (_ BitVec 32) Int) Unit!31079)

(assert (=> b!921237 (= lt!413612 (lemmaListMapContainsThenArrayContainsFrom!182 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!921237 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18734)))

(declare-fun lt!413611 () Unit!31079)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55152 (_ BitVec 32) (_ BitVec 32)) Unit!31079)

(assert (=> b!921237 (= lt!413611 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413613 () tuple2!12896)

(declare-fun +!2636 (ListLongMap!11607 tuple2!12896) ListLongMap!11607)

(assert (=> b!921237 (contains!4844 (+!2636 lt!413605 lt!413613) k0!1099)))

(declare-fun lt!413609 () Unit!31079)

(declare-fun lt!413606 () V!31073)

(declare-fun addStillContains!398 (ListLongMap!11607 (_ BitVec 64) V!31073 (_ BitVec 64)) Unit!31079)

(assert (=> b!921237 (= lt!413609 (addStillContains!398 lt!413605 lt!413607 lt!413606 k0!1099))))

(assert (=> b!921237 (= (getCurrentListMap!3041 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2636 (getCurrentListMap!3041 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413613))))

(assert (=> b!921237 (= lt!413613 (tuple2!12897 lt!413607 lt!413606))))

(declare-fun get!13939 (ValueCell!9309 V!31073) V!31073)

(declare-fun dynLambda!1475 (Int (_ BitVec 64)) V!31073)

(assert (=> b!921237 (= lt!413606 (get!13939 (select (arr!26518 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1475 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413608 () Unit!31079)

(declare-fun lemmaListMapRecursiveValidKeyArray!71 (array!55152 array!55154 (_ BitVec 32) (_ BitVec 32) V!31073 V!31073 (_ BitVec 32) Int) Unit!31079)

(assert (=> b!921237 (= lt!413608 (lemmaListMapRecursiveValidKeyArray!71 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921238 () Bool)

(declare-fun res!621361 () Bool)

(assert (=> b!921238 (=> (not res!621361) (not e!516993))))

(assert (=> b!921238 (= res!621361 (and (= (size!26978 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26977 _keys!1487) (size!26978 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!78888 res!621358) b!921238))

(assert (= (and b!921238 res!621361) b!921222))

(assert (= (and b!921222 res!621350) b!921223))

(assert (= (and b!921223 res!621356) b!921231))

(assert (= (and b!921231 res!621357) b!921230))

(assert (= (and b!921230 res!621355) b!921224))

(assert (= (and b!921224 res!621352) b!921236))

(assert (= (and b!921236 res!621360) b!921228))

(assert (= (and b!921228 res!621354) b!921221))

(assert (= (and b!921221 res!621351) b!921237))

(assert (= (and b!921237 c!96029) b!921235))

(assert (= (and b!921237 (not c!96029)) b!921234))

(assert (= (and b!921237 (not res!621353)) b!921229))

(assert (= (and b!921229 (not res!621362)) b!921226))

(assert (= (and b!921226 (not res!621359)) b!921233))

(assert (= (and b!921227 condMapEmpty!31128) mapIsEmpty!31128))

(assert (= (and b!921227 (not condMapEmpty!31128)) mapNonEmpty!31128))

(get-info :version)

(assert (= (and mapNonEmpty!31128 ((_ is ValueCellFull!9309) mapValue!31128)) b!921225))

(assert (= (and b!921227 ((_ is ValueCellFull!9309) mapDefault!31128)) b!921232))

(assert (= start!78888 b!921227))

(declare-fun b_lambda!13605 () Bool)

(assert (=> (not b_lambda!13605) (not b!921237)))

(declare-fun t!26547 () Bool)

(declare-fun tb!5661 () Bool)

(assert (=> (and start!78888 (= defaultEntry!1235 defaultEntry!1235) t!26547) tb!5661))

(declare-fun result!11137 () Bool)

(assert (=> tb!5661 (= result!11137 tp_is_empty!19581)))

(assert (=> b!921237 t!26547))

(declare-fun b_and!27903 () Bool)

(assert (= b_and!27901 (and (=> t!26547 result!11137) b_and!27903)))

(declare-fun m!855281 () Bool)

(assert (=> b!921230 m!855281))

(declare-fun m!855283 () Bool)

(assert (=> b!921230 m!855283))

(declare-fun m!855285 () Bool)

(assert (=> mapNonEmpty!31128 m!855285))

(declare-fun m!855287 () Bool)

(assert (=> start!78888 m!855287))

(declare-fun m!855289 () Bool)

(assert (=> start!78888 m!855289))

(declare-fun m!855291 () Bool)

(assert (=> start!78888 m!855291))

(declare-fun m!855293 () Bool)

(assert (=> b!921222 m!855293))

(declare-fun m!855295 () Bool)

(assert (=> b!921221 m!855295))

(declare-fun m!855297 () Bool)

(assert (=> b!921221 m!855297))

(declare-fun m!855299 () Bool)

(assert (=> b!921228 m!855299))

(declare-fun m!855301 () Bool)

(assert (=> b!921223 m!855301))

(declare-fun m!855303 () Bool)

(assert (=> b!921233 m!855303))

(declare-fun m!855305 () Bool)

(assert (=> b!921226 m!855305))

(declare-fun m!855307 () Bool)

(assert (=> b!921224 m!855307))

(declare-fun m!855309 () Bool)

(assert (=> b!921235 m!855309))

(declare-fun m!855311 () Bool)

(assert (=> b!921237 m!855311))

(declare-fun m!855313 () Bool)

(assert (=> b!921237 m!855313))

(declare-fun m!855315 () Bool)

(assert (=> b!921237 m!855315))

(declare-fun m!855317 () Bool)

(assert (=> b!921237 m!855317))

(assert (=> b!921237 m!855313))

(assert (=> b!921237 m!855315))

(declare-fun m!855319 () Bool)

(assert (=> b!921237 m!855319))

(declare-fun m!855321 () Bool)

(assert (=> b!921237 m!855321))

(declare-fun m!855323 () Bool)

(assert (=> b!921237 m!855323))

(declare-fun m!855325 () Bool)

(assert (=> b!921237 m!855325))

(declare-fun m!855327 () Bool)

(assert (=> b!921237 m!855327))

(declare-fun m!855329 () Bool)

(assert (=> b!921237 m!855329))

(assert (=> b!921237 m!855323))

(declare-fun m!855331 () Bool)

(assert (=> b!921237 m!855331))

(declare-fun m!855333 () Bool)

(assert (=> b!921237 m!855333))

(assert (=> b!921237 m!855325))

(declare-fun m!855335 () Bool)

(assert (=> b!921237 m!855335))

(declare-fun m!855337 () Bool)

(assert (=> b!921229 m!855337))

(check-sat (not b!921221) (not start!78888) tp_is_empty!19581 (not b!921226) (not b!921222) (not b_lambda!13605) (not b!921224) (not b!921228) (not b!921229) (not b!921223) (not b!921235) (not b_next!17073) (not b!921233) (not mapNonEmpty!31128) (not b!921230) (not b!921237) b_and!27903)
(check-sat b_and!27903 (not b_next!17073))
