; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79076 () Bool)

(assert start!79076)

(declare-fun b_free!17261 () Bool)

(declare-fun b_next!17261 () Bool)

(assert (=> start!79076 (= b_free!17261 (not b_next!17261))))

(declare-fun tp!60225 () Bool)

(declare-fun b_and!28277 () Bool)

(assert (=> start!79076 (= tp!60225 b_and!28277)))

(declare-fun b!926357 () Bool)

(declare-fun res!624209 () Bool)

(declare-fun e!520030 () Bool)

(assert (=> b!926357 (=> (not res!624209) (not e!520030))))

(declare-datatypes ((array!55518 0))(
  ( (array!55519 (arr!26700 (Array (_ BitVec 32) (_ BitVec 64))) (size!27160 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55518)

(declare-datatypes ((List!18898 0))(
  ( (Nil!18895) (Cons!18894 (h!20040 (_ BitVec 64)) (t!26897 List!18898)) )
))
(declare-fun arrayNoDuplicates!0 (array!55518 (_ BitVec 32) List!18898) Bool)

(assert (=> b!926357 (= res!624209 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18895))))

(declare-fun b!926358 () Bool)

(declare-datatypes ((Unit!31320 0))(
  ( (Unit!31321) )
))
(declare-fun e!520027 () Unit!31320)

(declare-fun Unit!31322 () Unit!31320)

(assert (=> b!926358 (= e!520027 Unit!31322)))

(declare-fun b!926359 () Bool)

(declare-fun e!520021 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!926359 (= e!520021 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!926360 () Bool)

(declare-fun e!520023 () Unit!31320)

(declare-fun Unit!31323 () Unit!31320)

(assert (=> b!926360 (= e!520023 Unit!31323)))

(declare-fun b!926361 () Bool)

(assert (=> b!926361 (= e!520027 e!520023)))

(declare-fun lt!417247 () (_ BitVec 64))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!926361 (= lt!417247 (select (arr!26700 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96651 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926361 (= c!96651 (validKeyInArray!0 lt!417247))))

(declare-fun b!926362 () Bool)

(declare-fun res!624217 () Bool)

(assert (=> b!926362 (=> (not res!624217) (not e!520030))))

(assert (=> b!926362 (= res!624217 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27160 _keys!1487))))))

(declare-fun b!926363 () Bool)

(declare-fun e!520031 () Bool)

(assert (=> b!926363 (= e!520031 (not true))))

(declare-fun e!520022 () Bool)

(assert (=> b!926363 e!520022))

(declare-fun res!624214 () Bool)

(assert (=> b!926363 (=> (not res!624214) (not e!520022))))

(declare-datatypes ((V!31323 0))(
  ( (V!31324 (val!9935 Int)) )
))
(declare-datatypes ((tuple2!13066 0))(
  ( (tuple2!13067 (_1!6543 (_ BitVec 64)) (_2!6543 V!31323)) )
))
(declare-datatypes ((List!18899 0))(
  ( (Nil!18896) (Cons!18895 (h!20041 tuple2!13066) (t!26898 List!18899)) )
))
(declare-datatypes ((ListLongMap!11777 0))(
  ( (ListLongMap!11778 (toList!5904 List!18899)) )
))
(declare-fun lt!417241 () ListLongMap!11777)

(declare-fun contains!4925 (ListLongMap!11777 (_ BitVec 64)) Bool)

(assert (=> b!926363 (= res!624214 (contains!4925 lt!417241 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9403 0))(
  ( (ValueCellFull!9403 (v!12453 V!31323)) (EmptyCell!9403) )
))
(declare-datatypes ((array!55520 0))(
  ( (array!55521 (arr!26701 (Array (_ BitVec 32) ValueCell!9403)) (size!27161 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55520)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31323)

(declare-fun minValue!1173 () V!31323)

(declare-fun getCurrentListMap!3119 (array!55518 array!55520 (_ BitVec 32) (_ BitVec 32) V!31323 V!31323 (_ BitVec 32) Int) ListLongMap!11777)

(assert (=> b!926363 (= lt!417241 (getCurrentListMap!3119 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31323)

(declare-fun lt!417234 () Unit!31320)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!85 (array!55518 array!55520 (_ BitVec 32) (_ BitVec 32) V!31323 V!31323 (_ BitVec 64) V!31323 (_ BitVec 32) Int) Unit!31320)

(assert (=> b!926363 (= lt!417234 (lemmaListMapApplyFromThenApplyFromZero!85 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926364 () Bool)

(declare-fun e!520029 () Bool)

(assert (=> b!926364 (= e!520030 e!520029)))

(declare-fun res!624218 () Bool)

(assert (=> b!926364 (=> (not res!624218) (not e!520029))))

(declare-fun lt!417243 () ListLongMap!11777)

(assert (=> b!926364 (= res!624218 (contains!4925 lt!417243 k!1099))))

(assert (=> b!926364 (= lt!417243 (getCurrentListMap!3119 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926365 () Bool)

(declare-fun e!520020 () Bool)

(declare-fun e!520026 () Bool)

(declare-fun mapRes!31410 () Bool)

(assert (=> b!926365 (= e!520020 (and e!520026 mapRes!31410))))

(declare-fun condMapEmpty!31410 () Bool)

(declare-fun mapDefault!31410 () ValueCell!9403)

