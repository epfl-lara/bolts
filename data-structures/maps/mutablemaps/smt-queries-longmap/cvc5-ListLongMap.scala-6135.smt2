; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78946 () Bool)

(assert start!78946)

(declare-fun b_free!17131 () Bool)

(declare-fun b_next!17131 () Bool)

(assert (=> start!78946 (= b_free!17131 (not b_next!17131))))

(declare-fun tp!59834 () Bool)

(declare-fun b_and!28017 () Bool)

(assert (=> start!78946 (= tp!59834 b_and!28017)))

(declare-fun b!922650 () Bool)

(declare-fun res!622292 () Bool)

(declare-fun e!517714 () Bool)

(assert (=> b!922650 (=> (not res!622292) (not e!517714))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922650 (= res!622292 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922651 () Bool)

(declare-fun res!622295 () Bool)

(declare-fun e!517712 () Bool)

(assert (=> b!922651 (=> (not res!622295) (not e!517712))))

(declare-datatypes ((array!55264 0))(
  ( (array!55265 (arr!26573 (Array (_ BitVec 32) (_ BitVec 64))) (size!27033 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55264)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31151 0))(
  ( (V!31152 (val!9870 Int)) )
))
(declare-datatypes ((ValueCell!9338 0))(
  ( (ValueCellFull!9338 (v!12388 V!31151)) (EmptyCell!9338) )
))
(declare-datatypes ((array!55266 0))(
  ( (array!55267 (arr!26574 (Array (_ BitVec 32) ValueCell!9338)) (size!27034 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55266)

(assert (=> b!922651 (= res!622295 (and (= (size!27034 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27033 _keys!1487) (size!27034 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922652 () Bool)

(declare-fun e!517716 () Bool)

(assert (=> b!922652 (= e!517714 e!517716)))

(declare-fun res!622290 () Bool)

(assert (=> b!922652 (=> (not res!622290) (not e!517716))))

(declare-fun lt!414390 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922652 (= res!622290 (validKeyInArray!0 lt!414390))))

(assert (=> b!922652 (= lt!414390 (select (arr!26573 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922653 () Bool)

(declare-fun e!517713 () Bool)

(declare-fun tp_is_empty!19639 () Bool)

(assert (=> b!922653 (= e!517713 tp_is_empty!19639)))

(declare-fun b!922654 () Bool)

(assert (=> b!922654 (= e!517712 e!517714)))

(declare-fun res!622289 () Bool)

(assert (=> b!922654 (=> (not res!622289) (not e!517714))))

(declare-datatypes ((tuple2!12948 0))(
  ( (tuple2!12949 (_1!6484 (_ BitVec 64)) (_2!6484 V!31151)) )
))
(declare-datatypes ((List!18785 0))(
  ( (Nil!18782) (Cons!18781 (h!19927 tuple2!12948) (t!26654 List!18785)) )
))
(declare-datatypes ((ListLongMap!11659 0))(
  ( (ListLongMap!11660 (toList!5845 List!18785)) )
))
(declare-fun lt!414396 () ListLongMap!11659)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4870 (ListLongMap!11659 (_ BitVec 64)) Bool)

(assert (=> b!922654 (= res!622289 (contains!4870 lt!414396 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31151)

(declare-fun minValue!1173 () V!31151)

(declare-fun getCurrentListMap!3064 (array!55264 array!55266 (_ BitVec 32) (_ BitVec 32) V!31151 V!31151 (_ BitVec 32) Int) ListLongMap!11659)

(assert (=> b!922654 (= lt!414396 (getCurrentListMap!3064 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922655 () Bool)

(declare-fun res!622293 () Bool)

(assert (=> b!922655 (=> (not res!622293) (not e!517714))))

(declare-fun v!791 () V!31151)

(declare-fun apply!650 (ListLongMap!11659 (_ BitVec 64)) V!31151)

(assert (=> b!922655 (= res!622293 (= (apply!650 lt!414396 k!1099) v!791))))

(declare-fun res!622287 () Bool)

(assert (=> start!78946 (=> (not res!622287) (not e!517712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78946 (= res!622287 (validMask!0 mask!1881))))

(assert (=> start!78946 e!517712))

(assert (=> start!78946 true))

(assert (=> start!78946 tp_is_empty!19639))

(declare-fun e!517715 () Bool)

(declare-fun array_inv!20688 (array!55266) Bool)

(assert (=> start!78946 (and (array_inv!20688 _values!1231) e!517715)))

(assert (=> start!78946 tp!59834))

(declare-fun array_inv!20689 (array!55264) Bool)

(assert (=> start!78946 (array_inv!20689 _keys!1487)))

(declare-fun b!922656 () Bool)

(declare-fun e!517711 () Bool)

(assert (=> b!922656 (= e!517711 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922657 () Bool)

(declare-fun res!622286 () Bool)

(assert (=> b!922657 (=> (not res!622286) (not e!517712))))

(assert (=> b!922657 (= res!622286 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27033 _keys!1487))))))

(declare-fun b!922658 () Bool)

(declare-fun res!622288 () Bool)

(assert (=> b!922658 (=> (not res!622288) (not e!517714))))

(assert (=> b!922658 (= res!622288 (validKeyInArray!0 k!1099))))

(declare-fun b!922659 () Bool)

(assert (=> b!922659 (= e!517716 (not true))))

(assert (=> b!922659 (not (= lt!414390 k!1099))))

(declare-datatypes ((Unit!31121 0))(
  ( (Unit!31122) )
))
(declare-fun lt!414389 () Unit!31121)

(declare-datatypes ((List!18786 0))(
  ( (Nil!18783) (Cons!18782 (h!19928 (_ BitVec 64)) (t!26655 List!18786)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55264 (_ BitVec 64) (_ BitVec 32) List!18786) Unit!31121)

(assert (=> b!922659 (= lt!414389 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18783))))

(assert (=> b!922659 e!517711))

(declare-fun c!96116 () Bool)

(assert (=> b!922659 (= c!96116 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414395 () Unit!31121)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!203 (array!55264 array!55266 (_ BitVec 32) (_ BitVec 32) V!31151 V!31151 (_ BitVec 64) (_ BitVec 32) Int) Unit!31121)

(assert (=> b!922659 (= lt!414395 (lemmaListMapContainsThenArrayContainsFrom!203 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55264 (_ BitVec 32) List!18786) Bool)

(assert (=> b!922659 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18783)))

(declare-fun lt!414393 () Unit!31121)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55264 (_ BitVec 32) (_ BitVec 32)) Unit!31121)

(assert (=> b!922659 (= lt!414393 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414392 () tuple2!12948)

(declare-fun +!2657 (ListLongMap!11659 tuple2!12948) ListLongMap!11659)

(assert (=> b!922659 (contains!4870 (+!2657 lt!414396 lt!414392) k!1099)))

(declare-fun lt!414394 () V!31151)

(declare-fun lt!414391 () Unit!31121)

(declare-fun addStillContains!419 (ListLongMap!11659 (_ BitVec 64) V!31151 (_ BitVec 64)) Unit!31121)

(assert (=> b!922659 (= lt!414391 (addStillContains!419 lt!414396 lt!414390 lt!414394 k!1099))))

(assert (=> b!922659 (= (getCurrentListMap!3064 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2657 (getCurrentListMap!3064 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414392))))

(assert (=> b!922659 (= lt!414392 (tuple2!12949 lt!414390 lt!414394))))

(declare-fun get!13980 (ValueCell!9338 V!31151) V!31151)

(declare-fun dynLambda!1496 (Int (_ BitVec 64)) V!31151)

(assert (=> b!922659 (= lt!414394 (get!13980 (select (arr!26574 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1496 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414388 () Unit!31121)

(declare-fun lemmaListMapRecursiveValidKeyArray!92 (array!55264 array!55266 (_ BitVec 32) (_ BitVec 32) V!31151 V!31151 (_ BitVec 32) Int) Unit!31121)

(assert (=> b!922659 (= lt!414388 (lemmaListMapRecursiveValidKeyArray!92 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922660 () Bool)

(declare-fun mapRes!31215 () Bool)

(assert (=> b!922660 (= e!517715 (and e!517713 mapRes!31215))))

(declare-fun condMapEmpty!31215 () Bool)

(declare-fun mapDefault!31215 () ValueCell!9338)

