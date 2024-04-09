; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79004 () Bool)

(assert start!79004)

(declare-fun b_free!17189 () Bool)

(declare-fun b_next!17189 () Bool)

(assert (=> start!79004 (= b_free!17189 (not b_next!17189))))

(declare-fun tp!60008 () Bool)

(declare-fun b_and!28133 () Bool)

(assert (=> start!79004 (= tp!60008 b_and!28133)))

(declare-fun b!924199 () Bool)

(declare-datatypes ((V!31227 0))(
  ( (V!31228 (val!9899 Int)) )
))
(declare-datatypes ((tuple2!13004 0))(
  ( (tuple2!13005 (_1!6512 (_ BitVec 64)) (_2!6512 V!31227)) )
))
(declare-datatypes ((List!18840 0))(
  ( (Nil!18837) (Cons!18836 (h!19982 tuple2!13004) (t!26767 List!18840)) )
))
(declare-datatypes ((ListLongMap!11715 0))(
  ( (ListLongMap!11716 (toList!5873 List!18840)) )
))
(declare-fun lt!415551 () ListLongMap!11715)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!415555 () V!31227)

(declare-fun apply!676 (ListLongMap!11715 (_ BitVec 64)) V!31227)

(assert (=> b!924199 (= (apply!676 lt!415551 k!1099) lt!415555)))

(declare-fun lt!415548 () V!31227)

(declare-fun lt!415543 () (_ BitVec 64))

(declare-datatypes ((Unit!31209 0))(
  ( (Unit!31210) )
))
(declare-fun lt!415553 () Unit!31209)

(declare-fun lt!415549 () ListLongMap!11715)

(declare-fun addApplyDifferent!367 (ListLongMap!11715 (_ BitVec 64) V!31227 (_ BitVec 64)) Unit!31209)

(assert (=> b!924199 (= lt!415553 (addApplyDifferent!367 lt!415549 lt!415543 lt!415548 k!1099))))

(assert (=> b!924199 (not (= lt!415543 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!415554 () Unit!31209)

(declare-datatypes ((array!55378 0))(
  ( (array!55379 (arr!26630 (Array (_ BitVec 32) (_ BitVec 64))) (size!27090 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55378)

(declare-datatypes ((List!18841 0))(
  ( (Nil!18838) (Cons!18837 (h!19983 (_ BitVec 64)) (t!26768 List!18841)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55378 (_ BitVec 64) (_ BitVec 32) List!18841) Unit!31209)

(assert (=> b!924199 (= lt!415554 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18838))))

(declare-fun e!518653 () Bool)

(assert (=> b!924199 e!518653))

(declare-fun c!96327 () Bool)

(assert (=> b!924199 (= c!96327 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!415547 () Unit!31209)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9367 0))(
  ( (ValueCellFull!9367 (v!12417 V!31227)) (EmptyCell!9367) )
))
(declare-datatypes ((array!55380 0))(
  ( (array!55381 (arr!26631 (Array (_ BitVec 32) ValueCell!9367)) (size!27091 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55380)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31227)

(declare-fun minValue!1173 () V!31227)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!227 (array!55378 array!55380 (_ BitVec 32) (_ BitVec 32) V!31227 V!31227 (_ BitVec 64) (_ BitVec 32) Int) Unit!31209)

(assert (=> b!924199 (= lt!415547 (lemmaListMapContainsThenArrayContainsFrom!227 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55378 (_ BitVec 32) List!18841) Bool)

(assert (=> b!924199 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18838)))

(declare-fun lt!415556 () Unit!31209)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55378 (_ BitVec 32) (_ BitVec 32)) Unit!31209)

(assert (=> b!924199 (= lt!415556 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4897 (ListLongMap!11715 (_ BitVec 64)) Bool)

(assert (=> b!924199 (contains!4897 lt!415551 k!1099)))

(declare-fun lt!415552 () tuple2!13004)

(declare-fun +!2681 (ListLongMap!11715 tuple2!13004) ListLongMap!11715)

(assert (=> b!924199 (= lt!415551 (+!2681 lt!415549 lt!415552))))

(declare-fun lt!415546 () Unit!31209)

(declare-fun addStillContains!443 (ListLongMap!11715 (_ BitVec 64) V!31227 (_ BitVec 64)) Unit!31209)

(assert (=> b!924199 (= lt!415546 (addStillContains!443 lt!415549 lt!415543 lt!415548 k!1099))))

(declare-fun getCurrentListMap!3091 (array!55378 array!55380 (_ BitVec 32) (_ BitVec 32) V!31227 V!31227 (_ BitVec 32) Int) ListLongMap!11715)

(assert (=> b!924199 (= (getCurrentListMap!3091 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2681 (getCurrentListMap!3091 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415552))))

(assert (=> b!924199 (= lt!415552 (tuple2!13005 lt!415543 lt!415548))))

(declare-fun get!14022 (ValueCell!9367 V!31227) V!31227)

(declare-fun dynLambda!1520 (Int (_ BitVec 64)) V!31227)

(assert (=> b!924199 (= lt!415548 (get!14022 (select (arr!26631 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1520 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415545 () Unit!31209)

(declare-fun lemmaListMapRecursiveValidKeyArray!116 (array!55378 array!55380 (_ BitVec 32) (_ BitVec 32) V!31227 V!31227 (_ BitVec 32) Int) Unit!31209)

(assert (=> b!924199 (= lt!415545 (lemmaListMapRecursiveValidKeyArray!116 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!518660 () Unit!31209)

(assert (=> b!924199 (= e!518660 lt!415553)))

(declare-fun b!924200 () Bool)

(declare-fun e!518655 () Bool)

(declare-fun e!518663 () Bool)

(assert (=> b!924200 (= e!518655 e!518663)))

(declare-fun res!623098 () Bool)

(assert (=> b!924200 (=> (not res!623098) (not e!518663))))

(declare-fun lt!415544 () ListLongMap!11715)

(assert (=> b!924200 (= res!623098 (contains!4897 lt!415544 k!1099))))

(assert (=> b!924200 (= lt!415544 (getCurrentListMap!3091 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31302 () Bool)

(declare-fun mapRes!31302 () Bool)

(assert (=> mapIsEmpty!31302 mapRes!31302))

(declare-fun b!924201 () Bool)

(declare-fun e!518664 () Bool)

(declare-fun tp_is_empty!19697 () Bool)

(assert (=> b!924201 (= e!518664 tp_is_empty!19697)))

(declare-fun b!924202 () Bool)

(declare-fun e!518662 () Unit!31209)

(assert (=> b!924202 (= e!518662 e!518660)))

(assert (=> b!924202 (= lt!415543 (select (arr!26630 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96329 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924202 (= c!96329 (validKeyInArray!0 lt!415543))))

(declare-fun b!924203 () Bool)

(declare-fun res!623096 () Bool)

(declare-fun e!518658 () Bool)

(assert (=> b!924203 (=> (not res!623096) (not e!518658))))

(assert (=> b!924203 (= res!623096 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27090 _keys!1487))))))

(declare-fun b!924204 () Bool)

(declare-fun e!518654 () Bool)

(assert (=> b!924204 (= e!518654 e!518655)))

(declare-fun res!623100 () Bool)

(assert (=> b!924204 (=> (not res!623100) (not e!518655))))

(assert (=> b!924204 (= res!623100 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27090 _keys!1487)))))

(declare-fun lt!415550 () Unit!31209)

(assert (=> b!924204 (= lt!415550 e!518662)))

(declare-fun c!96328 () Bool)

(assert (=> b!924204 (= c!96328 (validKeyInArray!0 k!1099))))

(declare-fun b!924205 () Bool)

(declare-fun e!518661 () Bool)

(assert (=> b!924205 (= e!518661 e!518654)))

(declare-fun res!623102 () Bool)

(assert (=> b!924205 (=> (not res!623102) (not e!518654))))

(declare-fun v!791 () V!31227)

(assert (=> b!924205 (= res!623102 (and (= lt!415555 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!924205 (= lt!415555 (apply!676 lt!415549 k!1099))))

(declare-fun b!924206 () Bool)

(declare-fun arrayContainsKey!0 (array!55378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924206 (= e!518653 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!924207 () Bool)

(declare-fun res!623101 () Bool)

(assert (=> b!924207 (=> (not res!623101) (not e!518658))))

(assert (=> b!924207 (= res!623101 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18838))))

(declare-fun b!924208 () Bool)

(assert (=> b!924208 (= e!518658 e!518661)))

(declare-fun res!623094 () Bool)

(assert (=> b!924208 (=> (not res!623094) (not e!518661))))

(assert (=> b!924208 (= res!623094 (contains!4897 lt!415549 k!1099))))

(assert (=> b!924208 (= lt!415549 (getCurrentListMap!3091 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!31302 () Bool)

(declare-fun tp!60009 () Bool)

(declare-fun e!518656 () Bool)

(assert (=> mapNonEmpty!31302 (= mapRes!31302 (and tp!60009 e!518656))))

(declare-fun mapRest!31302 () (Array (_ BitVec 32) ValueCell!9367))

(declare-fun mapKey!31302 () (_ BitVec 32))

(declare-fun mapValue!31302 () ValueCell!9367)

(assert (=> mapNonEmpty!31302 (= (arr!26631 _values!1231) (store mapRest!31302 mapKey!31302 mapValue!31302))))

(declare-fun res!623095 () Bool)

(assert (=> start!79004 (=> (not res!623095) (not e!518658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79004 (= res!623095 (validMask!0 mask!1881))))

(assert (=> start!79004 e!518658))

(assert (=> start!79004 true))

(assert (=> start!79004 tp_is_empty!19697))

(declare-fun e!518657 () Bool)

(declare-fun array_inv!20736 (array!55380) Bool)

(assert (=> start!79004 (and (array_inv!20736 _values!1231) e!518657)))

(assert (=> start!79004 tp!60008))

(declare-fun array_inv!20737 (array!55378) Bool)

(assert (=> start!79004 (array_inv!20737 _keys!1487)))

(declare-fun b!924209 () Bool)

(assert (=> b!924209 (= e!518663 false)))

(declare-fun lt!415557 () V!31227)

(assert (=> b!924209 (= lt!415557 (apply!676 lt!415544 k!1099))))

(declare-fun b!924210 () Bool)

(assert (=> b!924210 (= e!518656 tp_is_empty!19697)))

(declare-fun b!924211 () Bool)

(declare-fun Unit!31211 () Unit!31209)

(assert (=> b!924211 (= e!518662 Unit!31211)))

(declare-fun b!924212 () Bool)

(assert (=> b!924212 (= e!518653 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!924213 () Bool)

(declare-fun res!623097 () Bool)

(assert (=> b!924213 (=> (not res!623097) (not e!518658))))

(assert (=> b!924213 (= res!623097 (and (= (size!27091 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27090 _keys!1487) (size!27091 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924214 () Bool)

(declare-fun res!623099 () Bool)

(assert (=> b!924214 (=> (not res!623099) (not e!518658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55378 (_ BitVec 32)) Bool)

(assert (=> b!924214 (= res!623099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924215 () Bool)

(assert (=> b!924215 (= e!518657 (and e!518664 mapRes!31302))))

(declare-fun condMapEmpty!31302 () Bool)

(declare-fun mapDefault!31302 () ValueCell!9367)

