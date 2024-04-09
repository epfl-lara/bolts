; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78960 () Bool)

(assert start!78960)

(declare-fun b_free!17145 () Bool)

(declare-fun b_next!17145 () Bool)

(assert (=> start!78960 (= b_free!17145 (not b_next!17145))))

(declare-fun tp!59876 () Bool)

(declare-fun b_and!28045 () Bool)

(assert (=> start!78960 (= tp!59876 b_and!28045)))

(declare-fun b!922979 () Bool)

(declare-fun res!622498 () Bool)

(declare-fun e!517878 () Bool)

(assert (=> b!922979 (=> (not res!622498) (not e!517878))))

(declare-datatypes ((array!55292 0))(
  ( (array!55293 (arr!26587 (Array (_ BitVec 32) (_ BitVec 64))) (size!27047 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55292)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31169 0))(
  ( (V!31170 (val!9877 Int)) )
))
(declare-datatypes ((ValueCell!9345 0))(
  ( (ValueCellFull!9345 (v!12395 V!31169)) (EmptyCell!9345) )
))
(declare-datatypes ((array!55294 0))(
  ( (array!55295 (arr!26588 (Array (_ BitVec 32) ValueCell!9345)) (size!27048 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55294)

(assert (=> b!922979 (= res!622498 (and (= (size!27048 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27047 _keys!1487) (size!27048 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922980 () Bool)

(declare-fun res!622501 () Bool)

(declare-fun e!517884 () Bool)

(assert (=> b!922980 (=> (not res!622501) (not e!517884))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922980 (= res!622501 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922981 () Bool)

(declare-fun res!622500 () Bool)

(assert (=> b!922981 (=> (not res!622500) (not e!517884))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31169)

(declare-datatypes ((tuple2!12962 0))(
  ( (tuple2!12963 (_1!6491 (_ BitVec 64)) (_2!6491 V!31169)) )
))
(declare-datatypes ((List!18799 0))(
  ( (Nil!18796) (Cons!18795 (h!19941 tuple2!12962) (t!26682 List!18799)) )
))
(declare-datatypes ((ListLongMap!11673 0))(
  ( (ListLongMap!11674 (toList!5852 List!18799)) )
))
(declare-fun lt!414580 () ListLongMap!11673)

(declare-fun apply!657 (ListLongMap!11673 (_ BitVec 64)) V!31169)

(assert (=> b!922981 (= res!622500 (= (apply!657 lt!414580 k0!1099) v!791))))

(declare-fun b!922982 () Bool)

(declare-fun e!517883 () Bool)

(declare-fun e!517879 () Bool)

(declare-fun mapRes!31236 () Bool)

(assert (=> b!922982 (= e!517883 (and e!517879 mapRes!31236))))

(declare-fun condMapEmpty!31236 () Bool)

(declare-fun mapDefault!31236 () ValueCell!9345)

(assert (=> b!922982 (= condMapEmpty!31236 (= (arr!26588 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9345)) mapDefault!31236)))))

(declare-fun res!622503 () Bool)

(assert (=> start!78960 (=> (not res!622503) (not e!517878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78960 (= res!622503 (validMask!0 mask!1881))))

(assert (=> start!78960 e!517878))

(assert (=> start!78960 true))

(declare-fun tp_is_empty!19653 () Bool)

(assert (=> start!78960 tp_is_empty!19653))

(declare-fun array_inv!20700 (array!55294) Bool)

(assert (=> start!78960 (and (array_inv!20700 _values!1231) e!517883)))

(assert (=> start!78960 tp!59876))

(declare-fun array_inv!20701 (array!55292) Bool)

(assert (=> start!78960 (array_inv!20701 _keys!1487)))

(declare-fun b!922983 () Bool)

(declare-fun res!622505 () Bool)

(assert (=> b!922983 (=> (not res!622505) (not e!517878))))

(declare-datatypes ((List!18800 0))(
  ( (Nil!18797) (Cons!18796 (h!19942 (_ BitVec 64)) (t!26683 List!18800)) )
))
(declare-fun arrayNoDuplicates!0 (array!55292 (_ BitVec 32) List!18800) Bool)

(assert (=> b!922983 (= res!622505 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18797))))

(declare-fun mapNonEmpty!31236 () Bool)

(declare-fun tp!59877 () Bool)

(declare-fun e!517880 () Bool)

(assert (=> mapNonEmpty!31236 (= mapRes!31236 (and tp!59877 e!517880))))

(declare-fun mapKey!31236 () (_ BitVec 32))

(declare-fun mapRest!31236 () (Array (_ BitVec 32) ValueCell!9345))

(declare-fun mapValue!31236 () ValueCell!9345)

(assert (=> mapNonEmpty!31236 (= (arr!26588 _values!1231) (store mapRest!31236 mapKey!31236 mapValue!31236))))

(declare-fun e!517881 () Bool)

(declare-fun b!922984 () Bool)

(declare-fun arrayContainsKey!0 (array!55292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922984 (= e!517881 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!922985 () Bool)

(declare-fun res!622504 () Bool)

(assert (=> b!922985 (=> (not res!622504) (not e!517884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922985 (= res!622504 (validKeyInArray!0 k0!1099))))

(declare-fun b!922986 () Bool)

(assert (=> b!922986 (= e!517878 e!517884)))

(declare-fun res!622496 () Bool)

(assert (=> b!922986 (=> (not res!622496) (not e!517884))))

(declare-fun contains!4877 (ListLongMap!11673 (_ BitVec 64)) Bool)

(assert (=> b!922986 (= res!622496 (contains!4877 lt!414580 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31169)

(declare-fun minValue!1173 () V!31169)

(declare-fun getCurrentListMap!3071 (array!55292 array!55294 (_ BitVec 32) (_ BitVec 32) V!31169 V!31169 (_ BitVec 32) Int) ListLongMap!11673)

(assert (=> b!922986 (= lt!414580 (getCurrentListMap!3071 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922987 () Bool)

(assert (=> b!922987 (= e!517879 tp_is_empty!19653)))

(declare-fun b!922988 () Bool)

(declare-fun res!622499 () Bool)

(assert (=> b!922988 (=> (not res!622499) (not e!517878))))

(assert (=> b!922988 (= res!622499 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27047 _keys!1487))))))

(declare-fun b!922989 () Bool)

(assert (=> b!922989 (= e!517880 tp_is_empty!19653)))

(declare-fun b!922990 () Bool)

(declare-fun res!622502 () Bool)

(assert (=> b!922990 (=> (not res!622502) (not e!517878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55292 (_ BitVec 32)) Bool)

(assert (=> b!922990 (= res!622502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922991 () Bool)

(assert (=> b!922991 (= e!517881 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922992 () Bool)

(declare-fun e!517882 () Bool)

(assert (=> b!922992 (= e!517882 (not true))))

(declare-fun lt!414584 () (_ BitVec 64))

(assert (=> b!922992 (not (= lt!414584 k0!1099))))

(declare-datatypes ((Unit!31135 0))(
  ( (Unit!31136) )
))
(declare-fun lt!414577 () Unit!31135)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55292 (_ BitVec 64) (_ BitVec 32) List!18800) Unit!31135)

(assert (=> b!922992 (= lt!414577 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18797))))

(assert (=> b!922992 e!517881))

(declare-fun c!96137 () Bool)

(assert (=> b!922992 (= c!96137 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414583 () Unit!31135)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!210 (array!55292 array!55294 (_ BitVec 32) (_ BitVec 32) V!31169 V!31169 (_ BitVec 64) (_ BitVec 32) Int) Unit!31135)

(assert (=> b!922992 (= lt!414583 (lemmaListMapContainsThenArrayContainsFrom!210 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922992 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18797)))

(declare-fun lt!414582 () Unit!31135)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55292 (_ BitVec 32) (_ BitVec 32)) Unit!31135)

(assert (=> b!922992 (= lt!414582 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414578 () tuple2!12962)

(declare-fun +!2664 (ListLongMap!11673 tuple2!12962) ListLongMap!11673)

(assert (=> b!922992 (contains!4877 (+!2664 lt!414580 lt!414578) k0!1099)))

(declare-fun lt!414581 () V!31169)

(declare-fun lt!414585 () Unit!31135)

(declare-fun addStillContains!426 (ListLongMap!11673 (_ BitVec 64) V!31169 (_ BitVec 64)) Unit!31135)

(assert (=> b!922992 (= lt!414585 (addStillContains!426 lt!414580 lt!414584 lt!414581 k0!1099))))

(assert (=> b!922992 (= (getCurrentListMap!3071 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2664 (getCurrentListMap!3071 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414578))))

(assert (=> b!922992 (= lt!414578 (tuple2!12963 lt!414584 lt!414581))))

(declare-fun get!13991 (ValueCell!9345 V!31169) V!31169)

(declare-fun dynLambda!1503 (Int (_ BitVec 64)) V!31169)

(assert (=> b!922992 (= lt!414581 (get!13991 (select (arr!26588 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1503 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414579 () Unit!31135)

(declare-fun lemmaListMapRecursiveValidKeyArray!99 (array!55292 array!55294 (_ BitVec 32) (_ BitVec 32) V!31169 V!31169 (_ BitVec 32) Int) Unit!31135)

(assert (=> b!922992 (= lt!414579 (lemmaListMapRecursiveValidKeyArray!99 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31236 () Bool)

(assert (=> mapIsEmpty!31236 mapRes!31236))

(declare-fun b!922993 () Bool)

(assert (=> b!922993 (= e!517884 e!517882)))

(declare-fun res!622497 () Bool)

(assert (=> b!922993 (=> (not res!622497) (not e!517882))))

(assert (=> b!922993 (= res!622497 (validKeyInArray!0 lt!414584))))

(assert (=> b!922993 (= lt!414584 (select (arr!26587 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (= (and start!78960 res!622503) b!922979))

(assert (= (and b!922979 res!622498) b!922990))

(assert (= (and b!922990 res!622502) b!922983))

(assert (= (and b!922983 res!622505) b!922988))

(assert (= (and b!922988 res!622499) b!922986))

(assert (= (and b!922986 res!622496) b!922981))

(assert (= (and b!922981 res!622500) b!922980))

(assert (= (and b!922980 res!622501) b!922985))

(assert (= (and b!922985 res!622504) b!922993))

(assert (= (and b!922993 res!622497) b!922992))

(assert (= (and b!922992 c!96137) b!922984))

(assert (= (and b!922992 (not c!96137)) b!922991))

(assert (= (and b!922982 condMapEmpty!31236) mapIsEmpty!31236))

(assert (= (and b!922982 (not condMapEmpty!31236)) mapNonEmpty!31236))

(get-info :version)

(assert (= (and mapNonEmpty!31236 ((_ is ValueCellFull!9345) mapValue!31236)) b!922989))

(assert (= (and b!922982 ((_ is ValueCellFull!9345) mapDefault!31236)) b!922987))

(assert (= start!78960 b!922982))

(declare-fun b_lambda!13677 () Bool)

(assert (=> (not b_lambda!13677) (not b!922992)))

(declare-fun t!26681 () Bool)

(declare-fun tb!5733 () Bool)

(assert (=> (and start!78960 (= defaultEntry!1235 defaultEntry!1235) t!26681) tb!5733))

(declare-fun result!11281 () Bool)

(assert (=> tb!5733 (= result!11281 tp_is_empty!19653)))

(assert (=> b!922992 t!26681))

(declare-fun b_and!28047 () Bool)

(assert (= b_and!28045 (and (=> t!26681 result!11281) b_and!28047)))

(declare-fun m!857257 () Bool)

(assert (=> b!922984 m!857257))

(declare-fun m!857259 () Bool)

(assert (=> start!78960 m!857259))

(declare-fun m!857261 () Bool)

(assert (=> start!78960 m!857261))

(declare-fun m!857263 () Bool)

(assert (=> start!78960 m!857263))

(declare-fun m!857265 () Bool)

(assert (=> mapNonEmpty!31236 m!857265))

(declare-fun m!857267 () Bool)

(assert (=> b!922983 m!857267))

(declare-fun m!857269 () Bool)

(assert (=> b!922986 m!857269))

(declare-fun m!857271 () Bool)

(assert (=> b!922986 m!857271))

(declare-fun m!857273 () Bool)

(assert (=> b!922985 m!857273))

(declare-fun m!857275 () Bool)

(assert (=> b!922981 m!857275))

(declare-fun m!857277 () Bool)

(assert (=> b!922993 m!857277))

(declare-fun m!857279 () Bool)

(assert (=> b!922993 m!857279))

(declare-fun m!857281 () Bool)

(assert (=> b!922990 m!857281))

(declare-fun m!857283 () Bool)

(assert (=> b!922992 m!857283))

(declare-fun m!857285 () Bool)

(assert (=> b!922992 m!857285))

(declare-fun m!857287 () Bool)

(assert (=> b!922992 m!857287))

(declare-fun m!857289 () Bool)

(assert (=> b!922992 m!857289))

(declare-fun m!857291 () Bool)

(assert (=> b!922992 m!857291))

(declare-fun m!857293 () Bool)

(assert (=> b!922992 m!857293))

(assert (=> b!922992 m!857285))

(assert (=> b!922992 m!857291))

(declare-fun m!857295 () Bool)

(assert (=> b!922992 m!857295))

(declare-fun m!857297 () Bool)

(assert (=> b!922992 m!857297))

(declare-fun m!857299 () Bool)

(assert (=> b!922992 m!857299))

(declare-fun m!857301 () Bool)

(assert (=> b!922992 m!857301))

(declare-fun m!857303 () Bool)

(assert (=> b!922992 m!857303))

(assert (=> b!922992 m!857287))

(declare-fun m!857305 () Bool)

(assert (=> b!922992 m!857305))

(declare-fun m!857307 () Bool)

(assert (=> b!922992 m!857307))

(assert (=> b!922992 m!857301))

(declare-fun m!857309 () Bool)

(assert (=> b!922992 m!857309))

(check-sat tp_is_empty!19653 (not b!922981) b_and!28047 (not b!922993) (not b!922983) (not start!78960) (not b_lambda!13677) (not b!922986) (not mapNonEmpty!31236) (not b_next!17145) (not b!922990) (not b!922984) (not b!922985) (not b!922992))
(check-sat b_and!28047 (not b_next!17145))
