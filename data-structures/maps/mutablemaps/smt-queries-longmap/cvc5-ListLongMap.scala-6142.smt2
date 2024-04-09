; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78988 () Bool)

(assert start!78988)

(declare-fun b_free!17173 () Bool)

(declare-fun b_next!17173 () Bool)

(assert (=> start!78988 (= b_free!17173 (not b_next!17173))))

(declare-fun tp!59960 () Bool)

(declare-fun b_and!28101 () Bool)

(assert (=> start!78988 (= tp!59960 b_and!28101)))

(declare-fun b!923751 () Bool)

(declare-datatypes ((Unit!31180 0))(
  ( (Unit!31181) )
))
(declare-fun e!518366 () Unit!31180)

(declare-fun Unit!31182 () Unit!31180)

(assert (=> b!923751 (= e!518366 Unit!31182)))

(declare-fun b!923753 () Bool)

(declare-fun e!518365 () Bool)

(assert (=> b!923753 (= e!518365 false)))

(declare-datatypes ((V!31207 0))(
  ( (V!31208 (val!9891 Int)) )
))
(declare-fun lt!415195 () V!31207)

(declare-datatypes ((tuple2!12990 0))(
  ( (tuple2!12991 (_1!6505 (_ BitVec 64)) (_2!6505 V!31207)) )
))
(declare-datatypes ((List!18826 0))(
  ( (Nil!18823) (Cons!18822 (h!19968 tuple2!12990) (t!26737 List!18826)) )
))
(declare-datatypes ((ListLongMap!11701 0))(
  ( (ListLongMap!11702 (toList!5866 List!18826)) )
))
(declare-fun lt!415191 () ListLongMap!11701)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!669 (ListLongMap!11701 (_ BitVec 64)) V!31207)

(assert (=> b!923753 (= lt!415195 (apply!669 lt!415191 k!1099))))

(declare-fun b!923754 () Bool)

(declare-fun e!518375 () Bool)

(declare-fun tp_is_empty!19681 () Bool)

(assert (=> b!923754 (= e!518375 tp_is_empty!19681)))

(declare-fun b!923755 () Bool)

(declare-fun e!518367 () Unit!31180)

(assert (=> b!923755 (= e!518366 e!518367)))

(declare-fun lt!415196 () (_ BitVec 64))

(declare-datatypes ((array!55348 0))(
  ( (array!55349 (arr!26615 (Array (_ BitVec 32) (_ BitVec 64))) (size!27075 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55348)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!923755 (= lt!415196 (select (arr!26615 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96255 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923755 (= c!96255 (validKeyInArray!0 lt!415196))))

(declare-fun b!923756 () Bool)

(declare-fun res!622879 () Bool)

(declare-fun e!518370 () Bool)

(assert (=> b!923756 (=> (not res!622879) (not e!518370))))

(declare-datatypes ((List!18827 0))(
  ( (Nil!18824) (Cons!18823 (h!19969 (_ BitVec 64)) (t!26738 List!18827)) )
))
(declare-fun arrayNoDuplicates!0 (array!55348 (_ BitVec 32) List!18827) Bool)

(assert (=> b!923756 (= res!622879 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18824))))

(declare-fun b!923757 () Bool)

(declare-fun res!622880 () Bool)

(assert (=> b!923757 (=> (not res!622880) (not e!518370))))

(assert (=> b!923757 (= res!622880 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27075 _keys!1487))))))

(declare-fun b!923758 () Bool)

(declare-fun res!622886 () Bool)

(assert (=> b!923758 (=> (not res!622886) (not e!518370))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9359 0))(
  ( (ValueCellFull!9359 (v!12409 V!31207)) (EmptyCell!9359) )
))
(declare-datatypes ((array!55350 0))(
  ( (array!55351 (arr!26616 (Array (_ BitVec 32) ValueCell!9359)) (size!27076 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55350)

(assert (=> b!923758 (= res!622886 (and (= (size!27076 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27075 _keys!1487) (size!27076 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923759 () Bool)

(declare-fun res!622882 () Bool)

(assert (=> b!923759 (=> (not res!622882) (not e!518370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55348 (_ BitVec 32)) Bool)

(assert (=> b!923759 (= res!622882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923760 () Bool)

(declare-fun e!518371 () Bool)

(assert (=> b!923760 (= e!518371 e!518365)))

(declare-fun res!622878 () Bool)

(assert (=> b!923760 (=> (not res!622878) (not e!518365))))

(declare-fun contains!4890 (ListLongMap!11701 (_ BitVec 64)) Bool)

(assert (=> b!923760 (= res!622878 (contains!4890 lt!415191 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31207)

(declare-fun minValue!1173 () V!31207)

(declare-fun getCurrentListMap!3084 (array!55348 array!55350 (_ BitVec 32) (_ BitVec 32) V!31207 V!31207 (_ BitVec 32) Int) ListLongMap!11701)

(assert (=> b!923760 (= lt!415191 (getCurrentListMap!3084 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923761 () Bool)

(declare-fun e!518372 () Bool)

(assert (=> b!923761 (= e!518372 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923762 () Bool)

(declare-fun lt!415188 () ListLongMap!11701)

(declare-fun lt!415185 () V!31207)

(assert (=> b!923762 (= (apply!669 lt!415188 k!1099) lt!415185)))

(declare-fun lt!415192 () V!31207)

(declare-fun lt!415186 () Unit!31180)

(declare-fun lt!415184 () ListLongMap!11701)

(declare-fun addApplyDifferent!361 (ListLongMap!11701 (_ BitVec 64) V!31207 (_ BitVec 64)) Unit!31180)

(assert (=> b!923762 (= lt!415186 (addApplyDifferent!361 lt!415184 lt!415196 lt!415192 k!1099))))

(assert (=> b!923762 (not (= lt!415196 k!1099))))

(declare-fun lt!415183 () Unit!31180)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55348 (_ BitVec 64) (_ BitVec 32) List!18827) Unit!31180)

(assert (=> b!923762 (= lt!415183 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18824))))

(assert (=> b!923762 e!518372))

(declare-fun c!96257 () Bool)

(assert (=> b!923762 (= c!96257 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415190 () Unit!31180)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!221 (array!55348 array!55350 (_ BitVec 32) (_ BitVec 32) V!31207 V!31207 (_ BitVec 64) (_ BitVec 32) Int) Unit!31180)

(assert (=> b!923762 (= lt!415190 (lemmaListMapContainsThenArrayContainsFrom!221 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!923762 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18824)))

(declare-fun lt!415187 () Unit!31180)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55348 (_ BitVec 32) (_ BitVec 32)) Unit!31180)

(assert (=> b!923762 (= lt!415187 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!923762 (contains!4890 lt!415188 k!1099)))

(declare-fun lt!415189 () tuple2!12990)

(declare-fun +!2675 (ListLongMap!11701 tuple2!12990) ListLongMap!11701)

(assert (=> b!923762 (= lt!415188 (+!2675 lt!415184 lt!415189))))

(declare-fun lt!415197 () Unit!31180)

(declare-fun addStillContains!437 (ListLongMap!11701 (_ BitVec 64) V!31207 (_ BitVec 64)) Unit!31180)

(assert (=> b!923762 (= lt!415197 (addStillContains!437 lt!415184 lt!415196 lt!415192 k!1099))))

(assert (=> b!923762 (= (getCurrentListMap!3084 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2675 (getCurrentListMap!3084 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415189))))

(assert (=> b!923762 (= lt!415189 (tuple2!12991 lt!415196 lt!415192))))

(declare-fun get!14012 (ValueCell!9359 V!31207) V!31207)

(declare-fun dynLambda!1514 (Int (_ BitVec 64)) V!31207)

(assert (=> b!923762 (= lt!415192 (get!14012 (select (arr!26616 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1514 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415194 () Unit!31180)

(declare-fun lemmaListMapRecursiveValidKeyArray!110 (array!55348 array!55350 (_ BitVec 32) (_ BitVec 32) V!31207 V!31207 (_ BitVec 32) Int) Unit!31180)

(assert (=> b!923762 (= lt!415194 (lemmaListMapRecursiveValidKeyArray!110 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923762 (= e!518367 lt!415186)))

(declare-fun b!923752 () Bool)

(declare-fun e!518368 () Bool)

(declare-fun e!518374 () Bool)

(assert (=> b!923752 (= e!518368 e!518374)))

(declare-fun res!622881 () Bool)

(assert (=> b!923752 (=> (not res!622881) (not e!518374))))

(declare-fun v!791 () V!31207)

(assert (=> b!923752 (= res!622881 (and (= lt!415185 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!923752 (= lt!415185 (apply!669 lt!415184 k!1099))))

(declare-fun res!622883 () Bool)

(assert (=> start!78988 (=> (not res!622883) (not e!518370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78988 (= res!622883 (validMask!0 mask!1881))))

(assert (=> start!78988 e!518370))

(assert (=> start!78988 true))

(assert (=> start!78988 tp_is_empty!19681))

(declare-fun e!518373 () Bool)

(declare-fun array_inv!20724 (array!55350) Bool)

(assert (=> start!78988 (and (array_inv!20724 _values!1231) e!518373)))

(assert (=> start!78988 tp!59960))

(declare-fun array_inv!20725 (array!55348) Bool)

(assert (=> start!78988 (array_inv!20725 _keys!1487)))

(declare-fun b!923763 () Bool)

(assert (=> b!923763 (= e!518374 e!518371)))

(declare-fun res!622884 () Bool)

(assert (=> b!923763 (=> (not res!622884) (not e!518371))))

(assert (=> b!923763 (= res!622884 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27075 _keys!1487)))))

(declare-fun lt!415193 () Unit!31180)

(assert (=> b!923763 (= lt!415193 e!518366)))

(declare-fun c!96256 () Bool)

(assert (=> b!923763 (= c!96256 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!31278 () Bool)

(declare-fun mapRes!31278 () Bool)

(declare-fun tp!59961 () Bool)

(assert (=> mapNonEmpty!31278 (= mapRes!31278 (and tp!59961 e!518375))))

(declare-fun mapValue!31278 () ValueCell!9359)

(declare-fun mapKey!31278 () (_ BitVec 32))

(declare-fun mapRest!31278 () (Array (_ BitVec 32) ValueCell!9359))

(assert (=> mapNonEmpty!31278 (= (arr!26616 _values!1231) (store mapRest!31278 mapKey!31278 mapValue!31278))))

(declare-fun b!923764 () Bool)

(assert (=> b!923764 (= e!518370 e!518368)))

(declare-fun res!622885 () Bool)

(assert (=> b!923764 (=> (not res!622885) (not e!518368))))

(assert (=> b!923764 (= res!622885 (contains!4890 lt!415184 k!1099))))

(assert (=> b!923764 (= lt!415184 (getCurrentListMap!3084 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923765 () Bool)

(declare-fun Unit!31183 () Unit!31180)

(assert (=> b!923765 (= e!518367 Unit!31183)))

(declare-fun mapIsEmpty!31278 () Bool)

(assert (=> mapIsEmpty!31278 mapRes!31278))

(declare-fun b!923766 () Bool)

(declare-fun arrayContainsKey!0 (array!55348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923766 (= e!518372 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!923767 () Bool)

(declare-fun e!518376 () Bool)

(assert (=> b!923767 (= e!518373 (and e!518376 mapRes!31278))))

(declare-fun condMapEmpty!31278 () Bool)

(declare-fun mapDefault!31278 () ValueCell!9359)

