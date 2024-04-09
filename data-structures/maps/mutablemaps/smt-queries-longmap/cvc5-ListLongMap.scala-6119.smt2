; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78850 () Bool)

(assert start!78850)

(declare-fun b_free!17035 () Bool)

(declare-fun b_next!17035 () Bool)

(assert (=> start!78850 (= b_free!17035 (not b_next!17035))))

(declare-fun tp!59546 () Bool)

(declare-fun b_and!27825 () Bool)

(assert (=> start!78850 (= tp!59546 b_and!27825)))

(declare-fun b!920157 () Bool)

(declare-fun e!516481 () Bool)

(declare-fun e!516479 () Bool)

(assert (=> b!920157 (= e!516481 (not e!516479))))

(declare-fun res!620621 () Bool)

(assert (=> b!920157 (=> res!620621 e!516479)))

(declare-datatypes ((array!55078 0))(
  ( (array!55079 (arr!26480 (Array (_ BitVec 32) (_ BitVec 64))) (size!26940 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55078)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920157 (= res!620621 (or (bvsge (size!26940 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26940 _keys!1487))))))

(declare-fun e!516482 () Bool)

(assert (=> b!920157 e!516482))

(declare-fun c!95972 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!920157 (= c!95972 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31047 0))(
  ( (Unit!31048) )
))
(declare-fun lt!413095 () Unit!31047)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31023 0))(
  ( (V!31024 (val!9822 Int)) )
))
(declare-datatypes ((ValueCell!9290 0))(
  ( (ValueCellFull!9290 (v!12340 V!31023)) (EmptyCell!9290) )
))
(declare-datatypes ((array!55080 0))(
  ( (array!55081 (arr!26481 (Array (_ BitVec 32) ValueCell!9290)) (size!26941 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55080)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31023)

(declare-fun minValue!1173 () V!31023)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!166 (array!55078 array!55080 (_ BitVec 32) (_ BitVec 32) V!31023 V!31023 (_ BitVec 64) (_ BitVec 32) Int) Unit!31047)

(assert (=> b!920157 (= lt!413095 (lemmaListMapContainsThenArrayContainsFrom!166 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!18702 0))(
  ( (Nil!18699) (Cons!18698 (h!19844 (_ BitVec 64)) (t!26475 List!18702)) )
))
(declare-fun arrayNoDuplicates!0 (array!55078 (_ BitVec 32) List!18702) Bool)

(assert (=> b!920157 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18699)))

(declare-fun lt!413099 () Unit!31047)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55078 (_ BitVec 32) (_ BitVec 32)) Unit!31047)

(assert (=> b!920157 (= lt!413099 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12860 0))(
  ( (tuple2!12861 (_1!6440 (_ BitVec 64)) (_2!6440 V!31023)) )
))
(declare-datatypes ((List!18703 0))(
  ( (Nil!18700) (Cons!18699 (h!19845 tuple2!12860) (t!26476 List!18703)) )
))
(declare-datatypes ((ListLongMap!11571 0))(
  ( (ListLongMap!11572 (toList!5801 List!18703)) )
))
(declare-fun lt!413093 () ListLongMap!11571)

(declare-fun lt!413094 () tuple2!12860)

(declare-fun contains!4811 (ListLongMap!11571 (_ BitVec 64)) Bool)

(declare-fun +!2620 (ListLongMap!11571 tuple2!12860) ListLongMap!11571)

(assert (=> b!920157 (contains!4811 (+!2620 lt!413093 lt!413094) k!1099)))

(declare-fun lt!413096 () V!31023)

(declare-fun lt!413097 () (_ BitVec 64))

(declare-fun lt!413092 () Unit!31047)

(declare-fun addStillContains!382 (ListLongMap!11571 (_ BitVec 64) V!31023 (_ BitVec 64)) Unit!31047)

(assert (=> b!920157 (= lt!413092 (addStillContains!382 lt!413093 lt!413097 lt!413096 k!1099))))

(declare-fun getCurrentListMap!3023 (array!55078 array!55080 (_ BitVec 32) (_ BitVec 32) V!31023 V!31023 (_ BitVec 32) Int) ListLongMap!11571)

(assert (=> b!920157 (= (getCurrentListMap!3023 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2620 (getCurrentListMap!3023 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413094))))

(assert (=> b!920157 (= lt!413094 (tuple2!12861 lt!413097 lt!413096))))

(declare-fun get!13911 (ValueCell!9290 V!31023) V!31023)

(declare-fun dynLambda!1459 (Int (_ BitVec 64)) V!31023)

(assert (=> b!920157 (= lt!413096 (get!13911 (select (arr!26481 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1459 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413100 () Unit!31047)

(declare-fun lemmaListMapRecursiveValidKeyArray!55 (array!55078 array!55080 (_ BitVec 32) (_ BitVec 32) V!31023 V!31023 (_ BitVec 32) Int) Unit!31047)

(assert (=> b!920157 (= lt!413100 (lemmaListMapRecursiveValidKeyArray!55 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920158 () Bool)

(assert (=> b!920158 (= e!516479 true)))

(declare-fun lt!413098 () Bool)

(declare-fun contains!4812 (List!18702 (_ BitVec 64)) Bool)

(assert (=> b!920158 (= lt!413098 (contains!4812 Nil!18699 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920159 () Bool)

(declare-fun e!516485 () Bool)

(assert (=> b!920159 (= e!516485 e!516481)))

(declare-fun res!620619 () Bool)

(assert (=> b!920159 (=> (not res!620619) (not e!516481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920159 (= res!620619 (validKeyInArray!0 lt!413097))))

(assert (=> b!920159 (= lt!413097 (select (arr!26480 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!31071 () Bool)

(declare-fun mapRes!31071 () Bool)

(assert (=> mapIsEmpty!31071 mapRes!31071))

(declare-fun b!920160 () Bool)

(declare-fun e!516486 () Bool)

(declare-fun tp_is_empty!19543 () Bool)

(assert (=> b!920160 (= e!516486 tp_is_empty!19543)))

(declare-fun b!920161 () Bool)

(declare-fun res!620617 () Bool)

(declare-fun e!516480 () Bool)

(assert (=> b!920161 (=> (not res!620617) (not e!516480))))

(assert (=> b!920161 (= res!620617 (and (= (size!26941 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26940 _keys!1487) (size!26941 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920162 () Bool)

(assert (=> b!920162 (= e!516482 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!620613 () Bool)

(assert (=> start!78850 (=> (not res!620613) (not e!516480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78850 (= res!620613 (validMask!0 mask!1881))))

(assert (=> start!78850 e!516480))

(assert (=> start!78850 true))

(assert (=> start!78850 tp_is_empty!19543))

(declare-fun e!516483 () Bool)

(declare-fun array_inv!20622 (array!55080) Bool)

(assert (=> start!78850 (and (array_inv!20622 _values!1231) e!516483)))

(assert (=> start!78850 tp!59546))

(declare-fun array_inv!20623 (array!55078) Bool)

(assert (=> start!78850 (array_inv!20623 _keys!1487)))

(declare-fun b!920163 () Bool)

(declare-fun res!620614 () Bool)

(assert (=> b!920163 (=> res!620614 e!516479)))

(assert (=> b!920163 (= res!620614 (contains!4812 Nil!18699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920164 () Bool)

(declare-fun res!620609 () Bool)

(assert (=> b!920164 (=> (not res!620609) (not e!516480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55078 (_ BitVec 32)) Bool)

(assert (=> b!920164 (= res!620609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920165 () Bool)

(declare-fun e!516478 () Bool)

(assert (=> b!920165 (= e!516483 (and e!516478 mapRes!31071))))

(declare-fun condMapEmpty!31071 () Bool)

(declare-fun mapDefault!31071 () ValueCell!9290)

