; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78950 () Bool)

(assert start!78950)

(declare-fun b_free!17135 () Bool)

(declare-fun b_next!17135 () Bool)

(assert (=> start!78950 (= b_free!17135 (not b_next!17135))))

(declare-fun tp!59847 () Bool)

(declare-fun b_and!28025 () Bool)

(assert (=> start!78950 (= tp!59847 b_and!28025)))

(declare-fun b!922744 () Bool)

(declare-fun res!622346 () Bool)

(declare-fun e!517764 () Bool)

(assert (=> b!922744 (=> (not res!622346) (not e!517764))))

(declare-datatypes ((array!55272 0))(
  ( (array!55273 (arr!26577 (Array (_ BitVec 32) (_ BitVec 64))) (size!27037 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55272)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31155 0))(
  ( (V!31156 (val!9872 Int)) )
))
(declare-datatypes ((ValueCell!9340 0))(
  ( (ValueCellFull!9340 (v!12390 V!31155)) (EmptyCell!9340) )
))
(declare-datatypes ((array!55274 0))(
  ( (array!55275 (arr!26578 (Array (_ BitVec 32) ValueCell!9340)) (size!27038 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55274)

(assert (=> b!922744 (= res!622346 (and (= (size!27038 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27037 _keys!1487) (size!27038 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!517758 () Bool)

(declare-fun b!922745 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!55272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922745 (= e!517758 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922746 () Bool)

(declare-fun e!517760 () Bool)

(assert (=> b!922746 (= e!517764 e!517760)))

(declare-fun res!622354 () Bool)

(assert (=> b!922746 (=> (not res!622354) (not e!517760))))

(declare-datatypes ((tuple2!12952 0))(
  ( (tuple2!12953 (_1!6486 (_ BitVec 64)) (_2!6486 V!31155)) )
))
(declare-datatypes ((List!18789 0))(
  ( (Nil!18786) (Cons!18785 (h!19931 tuple2!12952) (t!26662 List!18789)) )
))
(declare-datatypes ((ListLongMap!11663 0))(
  ( (ListLongMap!11664 (toList!5847 List!18789)) )
))
(declare-fun lt!414450 () ListLongMap!11663)

(declare-fun contains!4872 (ListLongMap!11663 (_ BitVec 64)) Bool)

(assert (=> b!922746 (= res!622354 (contains!4872 lt!414450 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31155)

(declare-fun minValue!1173 () V!31155)

(declare-fun getCurrentListMap!3066 (array!55272 array!55274 (_ BitVec 32) (_ BitVec 32) V!31155 V!31155 (_ BitVec 32) Int) ListLongMap!11663)

(assert (=> b!922746 (= lt!414450 (getCurrentListMap!3066 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922747 () Bool)

(declare-fun e!517759 () Bool)

(assert (=> b!922747 (= e!517760 e!517759)))

(declare-fun res!622348 () Bool)

(assert (=> b!922747 (=> (not res!622348) (not e!517759))))

(declare-fun lt!414443 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922747 (= res!622348 (validKeyInArray!0 lt!414443))))

(assert (=> b!922747 (= lt!414443 (select (arr!26577 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922748 () Bool)

(assert (=> b!922748 (= e!517758 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31221 () Bool)

(declare-fun mapRes!31221 () Bool)

(declare-fun tp!59846 () Bool)

(declare-fun e!517763 () Bool)

(assert (=> mapNonEmpty!31221 (= mapRes!31221 (and tp!59846 e!517763))))

(declare-fun mapRest!31221 () (Array (_ BitVec 32) ValueCell!9340))

(declare-fun mapKey!31221 () (_ BitVec 32))

(declare-fun mapValue!31221 () ValueCell!9340)

(assert (=> mapNonEmpty!31221 (= (arr!26578 _values!1231) (store mapRest!31221 mapKey!31221 mapValue!31221))))

(declare-fun b!922749 () Bool)

(declare-fun res!622351 () Bool)

(assert (=> b!922749 (=> (not res!622351) (not e!517760))))

(declare-fun v!791 () V!31155)

(declare-fun apply!652 (ListLongMap!11663 (_ BitVec 64)) V!31155)

(assert (=> b!922749 (= res!622351 (= (apply!652 lt!414450 k!1099) v!791))))

(declare-fun b!922750 () Bool)

(declare-fun res!622349 () Bool)

(assert (=> b!922750 (=> (not res!622349) (not e!517764))))

(assert (=> b!922750 (= res!622349 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27037 _keys!1487))))))

(declare-fun b!922751 () Bool)

(declare-fun res!622353 () Bool)

(assert (=> b!922751 (=> (not res!622353) (not e!517760))))

(assert (=> b!922751 (= res!622353 (validKeyInArray!0 k!1099))))

(declare-fun b!922752 () Bool)

(declare-fun res!622350 () Bool)

(assert (=> b!922752 (=> (not res!622350) (not e!517764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55272 (_ BitVec 32)) Bool)

(assert (=> b!922752 (= res!622350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922753 () Bool)

(declare-fun e!517761 () Bool)

(declare-fun tp_is_empty!19643 () Bool)

(assert (=> b!922753 (= e!517761 tp_is_empty!19643)))

(declare-fun res!622347 () Bool)

(assert (=> start!78950 (=> (not res!622347) (not e!517764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78950 (= res!622347 (validMask!0 mask!1881))))

(assert (=> start!78950 e!517764))

(assert (=> start!78950 true))

(assert (=> start!78950 tp_is_empty!19643))

(declare-fun e!517757 () Bool)

(declare-fun array_inv!20692 (array!55274) Bool)

(assert (=> start!78950 (and (array_inv!20692 _values!1231) e!517757)))

(assert (=> start!78950 tp!59847))

(declare-fun array_inv!20693 (array!55272) Bool)

(assert (=> start!78950 (array_inv!20693 _keys!1487)))

(declare-fun b!922754 () Bool)

(assert (=> b!922754 (= e!517763 tp_is_empty!19643)))

(declare-fun b!922755 () Bool)

(assert (=> b!922755 (= e!517759 (not true))))

(assert (=> b!922755 (not (= lt!414443 k!1099))))

(declare-datatypes ((Unit!31125 0))(
  ( (Unit!31126) )
))
(declare-fun lt!414447 () Unit!31125)

(declare-datatypes ((List!18790 0))(
  ( (Nil!18787) (Cons!18786 (h!19932 (_ BitVec 64)) (t!26663 List!18790)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55272 (_ BitVec 64) (_ BitVec 32) List!18790) Unit!31125)

(assert (=> b!922755 (= lt!414447 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18787))))

(assert (=> b!922755 e!517758))

(declare-fun c!96122 () Bool)

(assert (=> b!922755 (= c!96122 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414448 () Unit!31125)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!205 (array!55272 array!55274 (_ BitVec 32) (_ BitVec 32) V!31155 V!31155 (_ BitVec 64) (_ BitVec 32) Int) Unit!31125)

(assert (=> b!922755 (= lt!414448 (lemmaListMapContainsThenArrayContainsFrom!205 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55272 (_ BitVec 32) List!18790) Bool)

(assert (=> b!922755 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18787)))

(declare-fun lt!414442 () Unit!31125)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55272 (_ BitVec 32) (_ BitVec 32)) Unit!31125)

(assert (=> b!922755 (= lt!414442 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414444 () tuple2!12952)

(declare-fun +!2659 (ListLongMap!11663 tuple2!12952) ListLongMap!11663)

(assert (=> b!922755 (contains!4872 (+!2659 lt!414450 lt!414444) k!1099)))

(declare-fun lt!414446 () V!31155)

(declare-fun lt!414445 () Unit!31125)

(declare-fun addStillContains!421 (ListLongMap!11663 (_ BitVec 64) V!31155 (_ BitVec 64)) Unit!31125)

(assert (=> b!922755 (= lt!414445 (addStillContains!421 lt!414450 lt!414443 lt!414446 k!1099))))

(assert (=> b!922755 (= (getCurrentListMap!3066 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2659 (getCurrentListMap!3066 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414444))))

(assert (=> b!922755 (= lt!414444 (tuple2!12953 lt!414443 lt!414446))))

(declare-fun get!13982 (ValueCell!9340 V!31155) V!31155)

(declare-fun dynLambda!1498 (Int (_ BitVec 64)) V!31155)

(assert (=> b!922755 (= lt!414446 (get!13982 (select (arr!26578 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1498 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414449 () Unit!31125)

(declare-fun lemmaListMapRecursiveValidKeyArray!94 (array!55272 array!55274 (_ BitVec 32) (_ BitVec 32) V!31155 V!31155 (_ BitVec 32) Int) Unit!31125)

(assert (=> b!922755 (= lt!414449 (lemmaListMapRecursiveValidKeyArray!94 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922756 () Bool)

(declare-fun res!622352 () Bool)

(assert (=> b!922756 (=> (not res!622352) (not e!517764))))

(assert (=> b!922756 (= res!622352 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18787))))

(declare-fun b!922757 () Bool)

(declare-fun res!622355 () Bool)

(assert (=> b!922757 (=> (not res!622355) (not e!517760))))

(assert (=> b!922757 (= res!622355 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922758 () Bool)

(assert (=> b!922758 (= e!517757 (and e!517761 mapRes!31221))))

(declare-fun condMapEmpty!31221 () Bool)

(declare-fun mapDefault!31221 () ValueCell!9340)

