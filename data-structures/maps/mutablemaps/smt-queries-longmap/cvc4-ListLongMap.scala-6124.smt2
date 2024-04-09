; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78884 () Bool)

(assert start!78884)

(declare-fun b_free!17069 () Bool)

(declare-fun b_next!17069 () Bool)

(assert (=> start!78884 (= b_free!17069 (not b_next!17069))))

(declare-fun tp!59648 () Bool)

(declare-fun b_and!27893 () Bool)

(assert (=> start!78884 (= tp!59648 b_and!27893)))

(declare-fun res!621272 () Bool)

(declare-fun e!516939 () Bool)

(assert (=> start!78884 (=> (not res!621272) (not e!516939))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78884 (= res!621272 (validMask!0 mask!1881))))

(assert (=> start!78884 e!516939))

(assert (=> start!78884 true))

(declare-fun tp_is_empty!19577 () Bool)

(assert (=> start!78884 tp_is_empty!19577))

(declare-datatypes ((V!31067 0))(
  ( (V!31068 (val!9839 Int)) )
))
(declare-datatypes ((ValueCell!9307 0))(
  ( (ValueCellFull!9307 (v!12357 V!31067)) (EmptyCell!9307) )
))
(declare-datatypes ((array!55146 0))(
  ( (array!55147 (arr!26514 (Array (_ BitVec 32) ValueCell!9307)) (size!26974 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55146)

(declare-fun e!516937 () Bool)

(declare-fun array_inv!20646 (array!55146) Bool)

(assert (=> start!78884 (and (array_inv!20646 _values!1231) e!516937)))

(assert (=> start!78884 tp!59648))

(declare-datatypes ((array!55148 0))(
  ( (array!55149 (arr!26515 (Array (_ BitVec 32) (_ BitVec 64))) (size!26975 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55148)

(declare-fun array_inv!20647 (array!55148) Bool)

(assert (=> start!78884 (array_inv!20647 _keys!1487)))

(declare-fun b!921109 () Bool)

(declare-fun e!516938 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!921109 (= e!516938 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!921110 () Bool)

(declare-fun arrayContainsKey!0 (array!55148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921110 (= e!516938 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!921111 () Bool)

(declare-fun res!621279 () Bool)

(assert (=> b!921111 (=> (not res!621279) (not e!516939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55148 (_ BitVec 32)) Bool)

(assert (=> b!921111 (= res!621279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31122 () Bool)

(declare-fun mapRes!31122 () Bool)

(declare-fun tp!59649 () Bool)

(declare-fun e!516942 () Bool)

(assert (=> mapNonEmpty!31122 (= mapRes!31122 (and tp!59649 e!516942))))

(declare-fun mapValue!31122 () ValueCell!9307)

(declare-fun mapKey!31122 () (_ BitVec 32))

(declare-fun mapRest!31122 () (Array (_ BitVec 32) ValueCell!9307))

(assert (=> mapNonEmpty!31122 (= (arr!26514 _values!1231) (store mapRest!31122 mapKey!31122 mapValue!31122))))

(declare-fun b!921112 () Bool)

(declare-fun e!516941 () Bool)

(assert (=> b!921112 (= e!516941 tp_is_empty!19577)))

(declare-fun b!921113 () Bool)

(declare-fun res!621283 () Bool)

(declare-fun e!516944 () Bool)

(assert (=> b!921113 (=> (not res!621283) (not e!516944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921113 (= res!621283 (validKeyInArray!0 k!1099))))

(declare-fun mapIsEmpty!31122 () Bool)

(assert (=> mapIsEmpty!31122 mapRes!31122))

(declare-fun b!921114 () Bool)

(assert (=> b!921114 (= e!516942 tp_is_empty!19577)))

(declare-fun b!921115 () Bool)

(declare-fun res!621281 () Bool)

(assert (=> b!921115 (=> (not res!621281) (not e!516939))))

(assert (=> b!921115 (= res!621281 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26975 _keys!1487))))))

(declare-fun b!921116 () Bool)

(declare-fun res!621280 () Bool)

(assert (=> b!921116 (=> (not res!621280) (not e!516939))))

(declare-datatypes ((List!18735 0))(
  ( (Nil!18732) (Cons!18731 (h!19877 (_ BitVec 64)) (t!26542 List!18735)) )
))
(declare-fun arrayNoDuplicates!0 (array!55148 (_ BitVec 32) List!18735) Bool)

(assert (=> b!921116 (= res!621280 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18732))))

(declare-fun b!921117 () Bool)

(declare-fun e!516940 () Bool)

(declare-fun e!516945 () Bool)

(assert (=> b!921117 (= e!516940 (not e!516945))))

(declare-fun res!621284 () Bool)

(assert (=> b!921117 (=> res!621284 e!516945)))

(assert (=> b!921117 (= res!621284 (or (bvsge (size!26975 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26975 _keys!1487))))))

(assert (=> b!921117 e!516938))

(declare-fun c!96023 () Bool)

(assert (=> b!921117 (= c!96023 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31077 0))(
  ( (Unit!31078) )
))
(declare-fun lt!413556 () Unit!31077)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31067)

(declare-fun minValue!1173 () V!31067)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!181 (array!55148 array!55146 (_ BitVec 32) (_ BitVec 32) V!31067 V!31067 (_ BitVec 64) (_ BitVec 32) Int) Unit!31077)

(assert (=> b!921117 (= lt!413556 (lemmaListMapContainsThenArrayContainsFrom!181 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!921117 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18732)))

(declare-fun lt!413552 () Unit!31077)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55148 (_ BitVec 32) (_ BitVec 32)) Unit!31077)

(assert (=> b!921117 (= lt!413552 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12894 0))(
  ( (tuple2!12895 (_1!6457 (_ BitVec 64)) (_2!6457 V!31067)) )
))
(declare-datatypes ((List!18736 0))(
  ( (Nil!18733) (Cons!18732 (h!19878 tuple2!12894) (t!26543 List!18736)) )
))
(declare-datatypes ((ListLongMap!11605 0))(
  ( (ListLongMap!11606 (toList!5818 List!18736)) )
))
(declare-fun lt!413557 () ListLongMap!11605)

(declare-fun lt!413553 () tuple2!12894)

(declare-fun contains!4841 (ListLongMap!11605 (_ BitVec 64)) Bool)

(declare-fun +!2635 (ListLongMap!11605 tuple2!12894) ListLongMap!11605)

(assert (=> b!921117 (contains!4841 (+!2635 lt!413557 lt!413553) k!1099)))

(declare-fun lt!413554 () Unit!31077)

(declare-fun lt!413558 () (_ BitVec 64))

(declare-fun lt!413555 () V!31067)

(declare-fun addStillContains!397 (ListLongMap!11605 (_ BitVec 64) V!31067 (_ BitVec 64)) Unit!31077)

(assert (=> b!921117 (= lt!413554 (addStillContains!397 lt!413557 lt!413558 lt!413555 k!1099))))

(declare-fun getCurrentListMap!3040 (array!55148 array!55146 (_ BitVec 32) (_ BitVec 32) V!31067 V!31067 (_ BitVec 32) Int) ListLongMap!11605)

(assert (=> b!921117 (= (getCurrentListMap!3040 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2635 (getCurrentListMap!3040 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413553))))

(assert (=> b!921117 (= lt!413553 (tuple2!12895 lt!413558 lt!413555))))

(declare-fun get!13936 (ValueCell!9307 V!31067) V!31067)

(declare-fun dynLambda!1474 (Int (_ BitVec 64)) V!31067)

(assert (=> b!921117 (= lt!413555 (get!13936 (select (arr!26514 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1474 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413559 () Unit!31077)

(declare-fun lemmaListMapRecursiveValidKeyArray!70 (array!55148 array!55146 (_ BitVec 32) (_ BitVec 32) V!31067 V!31067 (_ BitVec 32) Int) Unit!31077)

(assert (=> b!921117 (= lt!413559 (lemmaListMapRecursiveValidKeyArray!70 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921118 () Bool)

(assert (=> b!921118 (= e!516945 true)))

(declare-fun lt!413551 () Bool)

(declare-fun contains!4842 (List!18735 (_ BitVec 64)) Bool)

(assert (=> b!921118 (= lt!413551 (contains!4842 Nil!18732 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921119 () Bool)

(assert (=> b!921119 (= e!516944 e!516940)))

(declare-fun res!621282 () Bool)

(assert (=> b!921119 (=> (not res!621282) (not e!516940))))

(assert (=> b!921119 (= res!621282 (validKeyInArray!0 lt!413558))))

(assert (=> b!921119 (= lt!413558 (select (arr!26515 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921120 () Bool)

(declare-fun res!621275 () Bool)

(assert (=> b!921120 (=> res!621275 e!516945)))

(declare-fun noDuplicate!1346 (List!18735) Bool)

(assert (=> b!921120 (= res!621275 (not (noDuplicate!1346 Nil!18732)))))

(declare-fun b!921121 () Bool)

(declare-fun res!621276 () Bool)

(assert (=> b!921121 (=> (not res!621276) (not e!516944))))

(declare-fun v!791 () V!31067)

(declare-fun apply!627 (ListLongMap!11605 (_ BitVec 64)) V!31067)

(assert (=> b!921121 (= res!621276 (= (apply!627 lt!413557 k!1099) v!791))))

(declare-fun b!921122 () Bool)

(assert (=> b!921122 (= e!516939 e!516944)))

(declare-fun res!621273 () Bool)

(assert (=> b!921122 (=> (not res!621273) (not e!516944))))

(assert (=> b!921122 (= res!621273 (contains!4841 lt!413557 k!1099))))

(assert (=> b!921122 (= lt!413557 (getCurrentListMap!3040 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921123 () Bool)

(declare-fun res!621274 () Bool)

(assert (=> b!921123 (=> (not res!621274) (not e!516944))))

(assert (=> b!921123 (= res!621274 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921124 () Bool)

(declare-fun res!621278 () Bool)

(assert (=> b!921124 (=> res!621278 e!516945)))

(assert (=> b!921124 (= res!621278 (contains!4842 Nil!18732 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921125 () Bool)

(assert (=> b!921125 (= e!516937 (and e!516941 mapRes!31122))))

(declare-fun condMapEmpty!31122 () Bool)

(declare-fun mapDefault!31122 () ValueCell!9307)

