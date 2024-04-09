; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78992 () Bool)

(assert start!78992)

(declare-fun b_free!17177 () Bool)

(declare-fun b_next!17177 () Bool)

(assert (=> start!78992 (= b_free!17177 (not b_next!17177))))

(declare-fun tp!59972 () Bool)

(declare-fun b_and!28109 () Bool)

(assert (=> start!78992 (= tp!59972 b_and!28109)))

(declare-fun b!923863 () Bool)

(declare-fun e!518444 () Bool)

(declare-fun tp_is_empty!19685 () Bool)

(assert (=> b!923863 (= e!518444 tp_is_empty!19685)))

(declare-fun b!923865 () Bool)

(declare-datatypes ((Unit!31188 0))(
  ( (Unit!31189) )
))
(declare-fun e!518443 () Unit!31188)

(declare-fun Unit!31190 () Unit!31188)

(assert (=> b!923865 (= e!518443 Unit!31190)))

(declare-fun b!923866 () Bool)

(declare-fun e!518441 () Bool)

(declare-fun e!518442 () Bool)

(assert (=> b!923866 (= e!518441 e!518442)))

(declare-fun res!622940 () Bool)

(assert (=> b!923866 (=> (not res!622940) (not e!518442))))

(declare-datatypes ((V!31211 0))(
  ( (V!31212 (val!9893 Int)) )
))
(declare-fun lt!415282 () V!31211)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun v!791 () V!31211)

(assert (=> b!923866 (= res!622940 (and (= lt!415282 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!12994 0))(
  ( (tuple2!12995 (_1!6507 (_ BitVec 64)) (_2!6507 V!31211)) )
))
(declare-datatypes ((List!18830 0))(
  ( (Nil!18827) (Cons!18826 (h!19972 tuple2!12994) (t!26745 List!18830)) )
))
(declare-datatypes ((ListLongMap!11705 0))(
  ( (ListLongMap!11706 (toList!5868 List!18830)) )
))
(declare-fun lt!415281 () ListLongMap!11705)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!671 (ListLongMap!11705 (_ BitVec 64)) V!31211)

(assert (=> b!923866 (= lt!415282 (apply!671 lt!415281 k!1099))))

(declare-fun b!923867 () Bool)

(declare-fun e!518439 () Unit!31188)

(assert (=> b!923867 (= e!518439 e!518443)))

(declare-fun lt!415278 () (_ BitVec 64))

(declare-datatypes ((array!55356 0))(
  ( (array!55357 (arr!26619 (Array (_ BitVec 32) (_ BitVec 64))) (size!27079 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55356)

(assert (=> b!923867 (= lt!415278 (select (arr!26619 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96275 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923867 (= c!96275 (validKeyInArray!0 lt!415278))))

(declare-fun mapNonEmpty!31284 () Bool)

(declare-fun mapRes!31284 () Bool)

(declare-fun tp!59973 () Bool)

(declare-fun e!518448 () Bool)

(assert (=> mapNonEmpty!31284 (= mapRes!31284 (and tp!59973 e!518448))))

(declare-datatypes ((ValueCell!9361 0))(
  ( (ValueCellFull!9361 (v!12411 V!31211)) (EmptyCell!9361) )
))
(declare-fun mapRest!31284 () (Array (_ BitVec 32) ValueCell!9361))

(declare-datatypes ((array!55358 0))(
  ( (array!55359 (arr!26620 (Array (_ BitVec 32) ValueCell!9361)) (size!27080 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55358)

(declare-fun mapKey!31284 () (_ BitVec 32))

(declare-fun mapValue!31284 () ValueCell!9361)

(assert (=> mapNonEmpty!31284 (= (arr!26620 _values!1231) (store mapRest!31284 mapKey!31284 mapValue!31284))))

(declare-fun b!923868 () Bool)

(declare-fun res!622934 () Bool)

(declare-fun e!518446 () Bool)

(assert (=> b!923868 (=> (not res!622934) (not e!518446))))

(assert (=> b!923868 (= res!622934 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27079 _keys!1487))))))

(declare-fun b!923869 () Bool)

(assert (=> b!923869 (= e!518448 tp_is_empty!19685)))

(declare-fun b!923870 () Bool)

(declare-fun lt!415287 () ListLongMap!11705)

(assert (=> b!923870 (= (apply!671 lt!415287 k!1099) lt!415282)))

(declare-fun lt!415280 () V!31211)

(declare-fun lt!415285 () Unit!31188)

(declare-fun addApplyDifferent!363 (ListLongMap!11705 (_ BitVec 64) V!31211 (_ BitVec 64)) Unit!31188)

(assert (=> b!923870 (= lt!415285 (addApplyDifferent!363 lt!415281 lt!415278 lt!415280 k!1099))))

(assert (=> b!923870 (not (= lt!415278 k!1099))))

(declare-fun lt!415286 () Unit!31188)

(declare-datatypes ((List!18831 0))(
  ( (Nil!18828) (Cons!18827 (h!19973 (_ BitVec 64)) (t!26746 List!18831)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55356 (_ BitVec 64) (_ BitVec 32) List!18831) Unit!31188)

(assert (=> b!923870 (= lt!415286 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18828))))

(declare-fun e!518445 () Bool)

(assert (=> b!923870 e!518445))

(declare-fun c!96273 () Bool)

(assert (=> b!923870 (= c!96273 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415274 () Unit!31188)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31211)

(declare-fun minValue!1173 () V!31211)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!223 (array!55356 array!55358 (_ BitVec 32) (_ BitVec 32) V!31211 V!31211 (_ BitVec 64) (_ BitVec 32) Int) Unit!31188)

(assert (=> b!923870 (= lt!415274 (lemmaListMapContainsThenArrayContainsFrom!223 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55356 (_ BitVec 32) List!18831) Bool)

(assert (=> b!923870 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18828)))

(declare-fun lt!415273 () Unit!31188)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55356 (_ BitVec 32) (_ BitVec 32)) Unit!31188)

(assert (=> b!923870 (= lt!415273 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4892 (ListLongMap!11705 (_ BitVec 64)) Bool)

(assert (=> b!923870 (contains!4892 lt!415287 k!1099)))

(declare-fun lt!415284 () tuple2!12994)

(declare-fun +!2677 (ListLongMap!11705 tuple2!12994) ListLongMap!11705)

(assert (=> b!923870 (= lt!415287 (+!2677 lt!415281 lt!415284))))

(declare-fun lt!415277 () Unit!31188)

(declare-fun addStillContains!439 (ListLongMap!11705 (_ BitVec 64) V!31211 (_ BitVec 64)) Unit!31188)

(assert (=> b!923870 (= lt!415277 (addStillContains!439 lt!415281 lt!415278 lt!415280 k!1099))))

(declare-fun getCurrentListMap!3086 (array!55356 array!55358 (_ BitVec 32) (_ BitVec 32) V!31211 V!31211 (_ BitVec 32) Int) ListLongMap!11705)

(assert (=> b!923870 (= (getCurrentListMap!3086 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2677 (getCurrentListMap!3086 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415284))))

(assert (=> b!923870 (= lt!415284 (tuple2!12995 lt!415278 lt!415280))))

(declare-fun get!14014 (ValueCell!9361 V!31211) V!31211)

(declare-fun dynLambda!1516 (Int (_ BitVec 64)) V!31211)

(assert (=> b!923870 (= lt!415280 (get!14014 (select (arr!26620 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1516 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415279 () Unit!31188)

(declare-fun lemmaListMapRecursiveValidKeyArray!112 (array!55356 array!55358 (_ BitVec 32) (_ BitVec 32) V!31211 V!31211 (_ BitVec 32) Int) Unit!31188)

(assert (=> b!923870 (= lt!415279 (lemmaListMapRecursiveValidKeyArray!112 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923870 (= e!518443 lt!415285)))

(declare-fun b!923871 () Bool)

(declare-fun res!622936 () Bool)

(assert (=> b!923871 (=> (not res!622936) (not e!518446))))

(assert (=> b!923871 (= res!622936 (and (= (size!27080 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27079 _keys!1487) (size!27080 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923872 () Bool)

(declare-fun arrayContainsKey!0 (array!55356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923872 (= e!518445 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!923873 () Bool)

(declare-fun e!518440 () Bool)

(assert (=> b!923873 (= e!518442 e!518440)))

(declare-fun res!622939 () Bool)

(assert (=> b!923873 (=> (not res!622939) (not e!518440))))

(assert (=> b!923873 (= res!622939 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27079 _keys!1487)))))

(declare-fun lt!415275 () Unit!31188)

(assert (=> b!923873 (= lt!415275 e!518439)))

(declare-fun c!96274 () Bool)

(assert (=> b!923873 (= c!96274 (validKeyInArray!0 k!1099))))

(declare-fun b!923874 () Bool)

(assert (=> b!923874 (= e!518446 e!518441)))

(declare-fun res!622932 () Bool)

(assert (=> b!923874 (=> (not res!622932) (not e!518441))))

(assert (=> b!923874 (= res!622932 (contains!4892 lt!415281 k!1099))))

(assert (=> b!923874 (= lt!415281 (getCurrentListMap!3086 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31284 () Bool)

(assert (=> mapIsEmpty!31284 mapRes!31284))

(declare-fun b!923875 () Bool)

(declare-fun e!518437 () Bool)

(assert (=> b!923875 (= e!518437 (and e!518444 mapRes!31284))))

(declare-fun condMapEmpty!31284 () Bool)

(declare-fun mapDefault!31284 () ValueCell!9361)

