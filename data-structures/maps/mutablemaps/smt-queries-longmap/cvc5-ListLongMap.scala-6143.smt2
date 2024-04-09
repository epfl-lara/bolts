; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78994 () Bool)

(assert start!78994)

(declare-fun b_free!17179 () Bool)

(declare-fun b_next!17179 () Bool)

(assert (=> start!78994 (= b_free!17179 (not b_next!17179))))

(declare-fun tp!59979 () Bool)

(declare-fun b_and!28113 () Bool)

(assert (=> start!78994 (= tp!59979 b_and!28113)))

(declare-fun b!923919 () Bool)

(declare-datatypes ((Unit!31191 0))(
  ( (Unit!31192) )
))
(declare-fun e!518477 () Unit!31191)

(declare-fun Unit!31193 () Unit!31191)

(assert (=> b!923919 (= e!518477 Unit!31193)))

(declare-fun b!923920 () Bool)

(declare-fun res!622963 () Bool)

(declare-fun e!518476 () Bool)

(assert (=> b!923920 (=> (not res!622963) (not e!518476))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55360 0))(
  ( (array!55361 (arr!26621 (Array (_ BitVec 32) (_ BitVec 64))) (size!27081 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55360)

(assert (=> b!923920 (= res!622963 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27081 _keys!1487))))))

(declare-fun mapIsEmpty!31287 () Bool)

(declare-fun mapRes!31287 () Bool)

(assert (=> mapIsEmpty!31287 mapRes!31287))

(declare-fun b!923921 () Bool)

(declare-fun res!622964 () Bool)

(assert (=> b!923921 (=> (not res!622964) (not e!518476))))

(declare-datatypes ((List!18832 0))(
  ( (Nil!18829) (Cons!18828 (h!19974 (_ BitVec 64)) (t!26749 List!18832)) )
))
(declare-fun arrayNoDuplicates!0 (array!55360 (_ BitVec 32) List!18832) Bool)

(assert (=> b!923921 (= res!622964 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18829))))

(declare-fun b!923922 () Bool)

(declare-fun e!518480 () Bool)

(assert (=> b!923922 (= e!518480 false)))

(declare-datatypes ((V!31215 0))(
  ( (V!31216 (val!9894 Int)) )
))
(declare-fun lt!415330 () V!31215)

(declare-datatypes ((tuple2!12996 0))(
  ( (tuple2!12997 (_1!6508 (_ BitVec 64)) (_2!6508 V!31215)) )
))
(declare-datatypes ((List!18833 0))(
  ( (Nil!18830) (Cons!18829 (h!19975 tuple2!12996) (t!26750 List!18833)) )
))
(declare-datatypes ((ListLongMap!11707 0))(
  ( (ListLongMap!11708 (toList!5869 List!18833)) )
))
(declare-fun lt!415319 () ListLongMap!11707)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!672 (ListLongMap!11707 (_ BitVec 64)) V!31215)

(assert (=> b!923922 (= lt!415330 (apply!672 lt!415319 k!1099))))

(declare-fun b!923923 () Bool)

(declare-fun e!518474 () Bool)

(declare-fun arrayContainsKey!0 (array!55360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923923 (= e!518474 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!923924 () Bool)

(declare-fun res!622960 () Bool)

(assert (=> b!923924 (=> (not res!622960) (not e!518476))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55360 (_ BitVec 32)) Bool)

(assert (=> b!923924 (= res!622960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923925 () Bool)

(declare-fun lt!415332 () ListLongMap!11707)

(declare-fun lt!415329 () V!31215)

(assert (=> b!923925 (= (apply!672 lt!415332 k!1099) lt!415329)))

(declare-fun lt!415325 () (_ BitVec 64))

(declare-fun lt!415322 () ListLongMap!11707)

(declare-fun lt!415327 () Unit!31191)

(declare-fun lt!415321 () V!31215)

(declare-fun addApplyDifferent!364 (ListLongMap!11707 (_ BitVec 64) V!31215 (_ BitVec 64)) Unit!31191)

(assert (=> b!923925 (= lt!415327 (addApplyDifferent!364 lt!415322 lt!415325 lt!415321 k!1099))))

(assert (=> b!923925 (not (= lt!415325 k!1099))))

(declare-fun lt!415318 () Unit!31191)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55360 (_ BitVec 64) (_ BitVec 32) List!18832) Unit!31191)

(assert (=> b!923925 (= lt!415318 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18829))))

(assert (=> b!923925 e!518474))

(declare-fun c!96284 () Bool)

(assert (=> b!923925 (= c!96284 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9362 0))(
  ( (ValueCellFull!9362 (v!12412 V!31215)) (EmptyCell!9362) )
))
(declare-datatypes ((array!55362 0))(
  ( (array!55363 (arr!26622 (Array (_ BitVec 32) ValueCell!9362)) (size!27082 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55362)

(declare-fun zeroValue!1173 () V!31215)

(declare-fun minValue!1173 () V!31215)

(declare-fun lt!415328 () Unit!31191)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!224 (array!55360 array!55362 (_ BitVec 32) (_ BitVec 32) V!31215 V!31215 (_ BitVec 64) (_ BitVec 32) Int) Unit!31191)

(assert (=> b!923925 (= lt!415328 (lemmaListMapContainsThenArrayContainsFrom!224 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!923925 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18829)))

(declare-fun lt!415323 () Unit!31191)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55360 (_ BitVec 32) (_ BitVec 32)) Unit!31191)

(assert (=> b!923925 (= lt!415323 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4893 (ListLongMap!11707 (_ BitVec 64)) Bool)

(assert (=> b!923925 (contains!4893 lt!415332 k!1099)))

(declare-fun lt!415320 () tuple2!12996)

(declare-fun +!2678 (ListLongMap!11707 tuple2!12996) ListLongMap!11707)

(assert (=> b!923925 (= lt!415332 (+!2678 lt!415322 lt!415320))))

(declare-fun lt!415331 () Unit!31191)

(declare-fun addStillContains!440 (ListLongMap!11707 (_ BitVec 64) V!31215 (_ BitVec 64)) Unit!31191)

(assert (=> b!923925 (= lt!415331 (addStillContains!440 lt!415322 lt!415325 lt!415321 k!1099))))

(declare-fun getCurrentListMap!3087 (array!55360 array!55362 (_ BitVec 32) (_ BitVec 32) V!31215 V!31215 (_ BitVec 32) Int) ListLongMap!11707)

(assert (=> b!923925 (= (getCurrentListMap!3087 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2678 (getCurrentListMap!3087 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415320))))

(assert (=> b!923925 (= lt!415320 (tuple2!12997 lt!415325 lt!415321))))

(declare-fun get!14017 (ValueCell!9362 V!31215) V!31215)

(declare-fun dynLambda!1517 (Int (_ BitVec 64)) V!31215)

(assert (=> b!923925 (= lt!415321 (get!14017 (select (arr!26622 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1517 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415326 () Unit!31191)

(declare-fun lemmaListMapRecursiveValidKeyArray!113 (array!55360 array!55362 (_ BitVec 32) (_ BitVec 32) V!31215 V!31215 (_ BitVec 32) Int) Unit!31191)

(assert (=> b!923925 (= lt!415326 (lemmaListMapRecursiveValidKeyArray!113 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!518484 () Unit!31191)

(assert (=> b!923925 (= e!518484 lt!415327)))

(declare-fun b!923926 () Bool)

(declare-fun e!518479 () Bool)

(declare-fun e!518475 () Bool)

(assert (=> b!923926 (= e!518479 e!518475)))

(declare-fun res!622966 () Bool)

(assert (=> b!923926 (=> (not res!622966) (not e!518475))))

(declare-fun v!791 () V!31215)

(assert (=> b!923926 (= res!622966 (and (= lt!415329 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!923926 (= lt!415329 (apply!672 lt!415322 k!1099))))

(declare-fun b!923927 () Bool)

(declare-fun Unit!31194 () Unit!31191)

(assert (=> b!923927 (= e!518484 Unit!31194)))

(declare-fun b!923928 () Bool)

(assert (=> b!923928 (= e!518476 e!518479)))

(declare-fun res!622965 () Bool)

(assert (=> b!923928 (=> (not res!622965) (not e!518479))))

(assert (=> b!923928 (= res!622965 (contains!4893 lt!415322 k!1099))))

(assert (=> b!923928 (= lt!415322 (getCurrentListMap!3087 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923929 () Bool)

(assert (=> b!923929 (= e!518474 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923930 () Bool)

(declare-fun res!622959 () Bool)

(assert (=> b!923930 (=> (not res!622959) (not e!518476))))

(assert (=> b!923930 (= res!622959 (and (= (size!27082 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27081 _keys!1487) (size!27082 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923931 () Bool)

(declare-fun e!518481 () Bool)

(assert (=> b!923931 (= e!518475 e!518481)))

(declare-fun res!622961 () Bool)

(assert (=> b!923931 (=> (not res!622961) (not e!518481))))

(assert (=> b!923931 (= res!622961 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27081 _keys!1487)))))

(declare-fun lt!415324 () Unit!31191)

(assert (=> b!923931 (= lt!415324 e!518477)))

(declare-fun c!96283 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923931 (= c!96283 (validKeyInArray!0 k!1099))))

(declare-fun res!622962 () Bool)

(assert (=> start!78994 (=> (not res!622962) (not e!518476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78994 (= res!622962 (validMask!0 mask!1881))))

(assert (=> start!78994 e!518476))

(assert (=> start!78994 true))

(declare-fun tp_is_empty!19687 () Bool)

(assert (=> start!78994 tp_is_empty!19687))

(declare-fun e!518478 () Bool)

(declare-fun array_inv!20728 (array!55362) Bool)

(assert (=> start!78994 (and (array_inv!20728 _values!1231) e!518478)))

(assert (=> start!78994 tp!59979))

(declare-fun array_inv!20729 (array!55360) Bool)

(assert (=> start!78994 (array_inv!20729 _keys!1487)))

(declare-fun b!923932 () Bool)

(assert (=> b!923932 (= e!518481 e!518480)))

(declare-fun res!622967 () Bool)

(assert (=> b!923932 (=> (not res!622967) (not e!518480))))

(assert (=> b!923932 (= res!622967 (contains!4893 lt!415319 k!1099))))

(assert (=> b!923932 (= lt!415319 (getCurrentListMap!3087 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923933 () Bool)

(declare-fun e!518473 () Bool)

(assert (=> b!923933 (= e!518478 (and e!518473 mapRes!31287))))

(declare-fun condMapEmpty!31287 () Bool)

(declare-fun mapDefault!31287 () ValueCell!9362)

