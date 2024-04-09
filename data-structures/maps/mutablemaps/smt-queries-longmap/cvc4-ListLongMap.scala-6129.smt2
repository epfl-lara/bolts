; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78914 () Bool)

(assert start!78914)

(declare-fun b_free!17099 () Bool)

(declare-fun b_next!17099 () Bool)

(assert (=> start!78914 (= b_free!17099 (not b_next!17099))))

(declare-fun tp!59738 () Bool)

(declare-fun b_and!27953 () Bool)

(assert (=> start!78914 (= tp!59738 b_and!27953)))

(declare-fun b!921898 () Bool)

(declare-fun res!621810 () Bool)

(declare-fun e!517330 () Bool)

(assert (=> b!921898 (=> (not res!621810) (not e!517330))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921898 (= res!621810 (validKeyInArray!0 k!1099))))

(declare-fun b!921899 () Bool)

(declare-fun res!621815 () Bool)

(assert (=> b!921899 (=> (not res!621815) (not e!517330))))

(declare-datatypes ((V!31107 0))(
  ( (V!31108 (val!9854 Int)) )
))
(declare-fun v!791 () V!31107)

(declare-datatypes ((tuple2!12918 0))(
  ( (tuple2!12919 (_1!6469 (_ BitVec 64)) (_2!6469 V!31107)) )
))
(declare-datatypes ((List!18757 0))(
  ( (Nil!18754) (Cons!18753 (h!19899 tuple2!12918) (t!26594 List!18757)) )
))
(declare-datatypes ((ListLongMap!11629 0))(
  ( (ListLongMap!11630 (toList!5830 List!18757)) )
))
(declare-fun lt!413956 () ListLongMap!11629)

(declare-fun apply!636 (ListLongMap!11629 (_ BitVec 64)) V!31107)

(assert (=> b!921899 (= res!621815 (= (apply!636 lt!413956 k!1099) v!791))))

(declare-fun b!921900 () Bool)

(declare-fun e!517325 () Bool)

(assert (=> b!921900 (= e!517330 e!517325)))

(declare-fun res!621811 () Bool)

(assert (=> b!921900 (=> (not res!621811) (not e!517325))))

(declare-fun lt!413962 () (_ BitVec 64))

(assert (=> b!921900 (= res!621811 (validKeyInArray!0 lt!413962))))

(declare-datatypes ((array!55202 0))(
  ( (array!55203 (arr!26542 (Array (_ BitVec 32) (_ BitVec 64))) (size!27002 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55202)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921900 (= lt!413962 (select (arr!26542 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921901 () Bool)

(declare-fun res!621813 () Bool)

(declare-fun e!517329 () Bool)

(assert (=> b!921901 (=> (not res!621813) (not e!517329))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9322 0))(
  ( (ValueCellFull!9322 (v!12372 V!31107)) (EmptyCell!9322) )
))
(declare-datatypes ((array!55204 0))(
  ( (array!55205 (arr!26543 (Array (_ BitVec 32) ValueCell!9322)) (size!27003 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55204)

(assert (=> b!921901 (= res!621813 (and (= (size!27003 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27002 _keys!1487) (size!27003 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!621814 () Bool)

(assert (=> start!78914 (=> (not res!621814) (not e!517329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78914 (= res!621814 (validMask!0 mask!1881))))

(assert (=> start!78914 e!517329))

(assert (=> start!78914 true))

(declare-fun tp_is_empty!19607 () Bool)

(assert (=> start!78914 tp_is_empty!19607))

(declare-fun e!517326 () Bool)

(declare-fun array_inv!20664 (array!55204) Bool)

(assert (=> start!78914 (and (array_inv!20664 _values!1231) e!517326)))

(assert (=> start!78914 tp!59738))

(declare-fun array_inv!20665 (array!55202) Bool)

(assert (=> start!78914 (array_inv!20665 _keys!1487)))

(declare-fun b!921902 () Bool)

(declare-fun res!621809 () Bool)

(assert (=> b!921902 (=> (not res!621809) (not e!517329))))

(assert (=> b!921902 (= res!621809 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27002 _keys!1487))))))

(declare-fun mapIsEmpty!31167 () Bool)

(declare-fun mapRes!31167 () Bool)

(assert (=> mapIsEmpty!31167 mapRes!31167))

(declare-fun b!921903 () Bool)

(declare-fun res!621812 () Bool)

(assert (=> b!921903 (=> (not res!621812) (not e!517330))))

(assert (=> b!921903 (= res!621812 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921904 () Bool)

(declare-fun e!517331 () Bool)

(assert (=> b!921904 (= e!517331 tp_is_empty!19607)))

(declare-fun b!921905 () Bool)

(assert (=> b!921905 (= e!517329 e!517330)))

(declare-fun res!621806 () Bool)

(assert (=> b!921905 (=> (not res!621806) (not e!517330))))

(declare-fun contains!4857 (ListLongMap!11629 (_ BitVec 64)) Bool)

(assert (=> b!921905 (= res!621806 (contains!4857 lt!413956 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31107)

(declare-fun minValue!1173 () V!31107)

(declare-fun getCurrentListMap!3051 (array!55202 array!55204 (_ BitVec 32) (_ BitVec 32) V!31107 V!31107 (_ BitVec 32) Int) ListLongMap!11629)

(assert (=> b!921905 (= lt!413956 (getCurrentListMap!3051 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921906 () Bool)

(declare-fun e!517328 () Bool)

(assert (=> b!921906 (= e!517328 tp_is_empty!19607)))

(declare-fun b!921907 () Bool)

(declare-fun res!621808 () Bool)

(assert (=> b!921907 (=> (not res!621808) (not e!517329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55202 (_ BitVec 32)) Bool)

(assert (=> b!921907 (= res!621808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!921908 () Bool)

(declare-fun e!517332 () Bool)

(assert (=> b!921908 (= e!517332 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31167 () Bool)

(declare-fun tp!59739 () Bool)

(assert (=> mapNonEmpty!31167 (= mapRes!31167 (and tp!59739 e!517328))))

(declare-fun mapValue!31167 () ValueCell!9322)

(declare-fun mapRest!31167 () (Array (_ BitVec 32) ValueCell!9322))

(declare-fun mapKey!31167 () (_ BitVec 32))

(assert (=> mapNonEmpty!31167 (= (arr!26543 _values!1231) (store mapRest!31167 mapKey!31167 mapValue!31167))))

(declare-fun b!921909 () Bool)

(assert (=> b!921909 (= e!517325 (not true))))

(assert (=> b!921909 (not (= lt!413962 k!1099))))

(declare-datatypes ((Unit!31095 0))(
  ( (Unit!31096) )
))
(declare-fun lt!413961 () Unit!31095)

(declare-datatypes ((List!18758 0))(
  ( (Nil!18755) (Cons!18754 (h!19900 (_ BitVec 64)) (t!26595 List!18758)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55202 (_ BitVec 64) (_ BitVec 32) List!18758) Unit!31095)

(assert (=> b!921909 (= lt!413961 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18755))))

(assert (=> b!921909 e!517332))

(declare-fun c!96068 () Bool)

(assert (=> b!921909 (= c!96068 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!413963 () Unit!31095)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!190 (array!55202 array!55204 (_ BitVec 32) (_ BitVec 32) V!31107 V!31107 (_ BitVec 64) (_ BitVec 32) Int) Unit!31095)

(assert (=> b!921909 (= lt!413963 (lemmaListMapContainsThenArrayContainsFrom!190 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55202 (_ BitVec 32) List!18758) Bool)

(assert (=> b!921909 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18755)))

(declare-fun lt!413960 () Unit!31095)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55202 (_ BitVec 32) (_ BitVec 32)) Unit!31095)

(assert (=> b!921909 (= lt!413960 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413959 () tuple2!12918)

(declare-fun +!2644 (ListLongMap!11629 tuple2!12918) ListLongMap!11629)

(assert (=> b!921909 (contains!4857 (+!2644 lt!413956 lt!413959) k!1099)))

(declare-fun lt!413964 () V!31107)

(declare-fun lt!413958 () Unit!31095)

(declare-fun addStillContains!406 (ListLongMap!11629 (_ BitVec 64) V!31107 (_ BitVec 64)) Unit!31095)

(assert (=> b!921909 (= lt!413958 (addStillContains!406 lt!413956 lt!413962 lt!413964 k!1099))))

(assert (=> b!921909 (= (getCurrentListMap!3051 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2644 (getCurrentListMap!3051 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413959))))

(assert (=> b!921909 (= lt!413959 (tuple2!12919 lt!413962 lt!413964))))

(declare-fun get!13955 (ValueCell!9322 V!31107) V!31107)

(declare-fun dynLambda!1483 (Int (_ BitVec 64)) V!31107)

(assert (=> b!921909 (= lt!413964 (get!13955 (select (arr!26543 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1483 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413957 () Unit!31095)

(declare-fun lemmaListMapRecursiveValidKeyArray!79 (array!55202 array!55204 (_ BitVec 32) (_ BitVec 32) V!31107 V!31107 (_ BitVec 32) Int) Unit!31095)

(assert (=> b!921909 (= lt!413957 (lemmaListMapRecursiveValidKeyArray!79 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921910 () Bool)

(declare-fun res!621807 () Bool)

(assert (=> b!921910 (=> (not res!621807) (not e!517329))))

(assert (=> b!921910 (= res!621807 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18755))))

(declare-fun b!921911 () Bool)

(declare-fun arrayContainsKey!0 (array!55202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921911 (= e!517332 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!921912 () Bool)

(assert (=> b!921912 (= e!517326 (and e!517331 mapRes!31167))))

(declare-fun condMapEmpty!31167 () Bool)

(declare-fun mapDefault!31167 () ValueCell!9322)

