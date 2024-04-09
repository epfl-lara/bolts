; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78856 () Bool)

(assert start!78856)

(declare-fun b_free!17041 () Bool)

(declare-fun b_next!17041 () Bool)

(assert (=> start!78856 (= b_free!17041 (not b_next!17041))))

(declare-fun tp!59564 () Bool)

(declare-fun b_and!27837 () Bool)

(assert (=> start!78856 (= tp!59564 b_and!27837)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!920325 () Bool)

(declare-fun e!516567 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!55090 0))(
  ( (array!55091 (arr!26486 (Array (_ BitVec 32) (_ BitVec 64))) (size!26946 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55090)

(declare-fun arrayContainsKey!0 (array!55090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920325 (= e!516567 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!920326 () Bool)

(declare-fun res!620730 () Bool)

(declare-fun e!516565 () Bool)

(assert (=> b!920326 (=> (not res!620730) (not e!516565))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31031 0))(
  ( (V!31032 (val!9825 Int)) )
))
(declare-datatypes ((ValueCell!9293 0))(
  ( (ValueCellFull!9293 (v!12343 V!31031)) (EmptyCell!9293) )
))
(declare-datatypes ((array!55092 0))(
  ( (array!55093 (arr!26487 (Array (_ BitVec 32) ValueCell!9293)) (size!26947 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55092)

(assert (=> b!920326 (= res!620730 (and (= (size!26947 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26946 _keys!1487) (size!26947 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920327 () Bool)

(declare-fun res!620735 () Bool)

(assert (=> b!920327 (=> (not res!620735) (not e!516565))))

(declare-datatypes ((List!18708 0))(
  ( (Nil!18705) (Cons!18704 (h!19850 (_ BitVec 64)) (t!26487 List!18708)) )
))
(declare-fun arrayNoDuplicates!0 (array!55090 (_ BitVec 32) List!18708) Bool)

(assert (=> b!920327 (= res!620735 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18705))))

(declare-fun b!920328 () Bool)

(declare-fun e!516563 () Bool)

(declare-fun tp_is_empty!19549 () Bool)

(assert (=> b!920328 (= e!516563 tp_is_empty!19549)))

(declare-fun b!920329 () Bool)

(declare-fun e!516560 () Bool)

(declare-fun e!516562 () Bool)

(assert (=> b!920329 (= e!516560 e!516562)))

(declare-fun res!620727 () Bool)

(assert (=> b!920329 (=> (not res!620727) (not e!516562))))

(declare-fun lt!413173 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920329 (= res!620727 (validKeyInArray!0 lt!413173))))

(assert (=> b!920329 (= lt!413173 (select (arr!26486 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920330 () Bool)

(declare-fun e!516566 () Bool)

(assert (=> b!920330 (= e!516562 (not e!516566))))

(declare-fun res!620737 () Bool)

(assert (=> b!920330 (=> res!620737 e!516566)))

(assert (=> b!920330 (= res!620737 (or (bvsge (size!26946 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26946 _keys!1487))))))

(assert (=> b!920330 e!516567))

(declare-fun c!95981 () Bool)

(assert (=> b!920330 (= c!95981 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((Unit!31053 0))(
  ( (Unit!31054) )
))
(declare-fun lt!413177 () Unit!31053)

(declare-fun zeroValue!1173 () V!31031)

(declare-fun minValue!1173 () V!31031)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!169 (array!55090 array!55092 (_ BitVec 32) (_ BitVec 32) V!31031 V!31031 (_ BitVec 64) (_ BitVec 32) Int) Unit!31053)

(assert (=> b!920330 (= lt!413177 (lemmaListMapContainsThenArrayContainsFrom!169 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!920330 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18705)))

(declare-fun lt!413181 () Unit!31053)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55090 (_ BitVec 32) (_ BitVec 32)) Unit!31053)

(assert (=> b!920330 (= lt!413181 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12866 0))(
  ( (tuple2!12867 (_1!6443 (_ BitVec 64)) (_2!6443 V!31031)) )
))
(declare-datatypes ((List!18709 0))(
  ( (Nil!18706) (Cons!18705 (h!19851 tuple2!12866) (t!26488 List!18709)) )
))
(declare-datatypes ((ListLongMap!11577 0))(
  ( (ListLongMap!11578 (toList!5804 List!18709)) )
))
(declare-fun lt!413176 () ListLongMap!11577)

(declare-fun lt!413180 () tuple2!12866)

(declare-fun contains!4817 (ListLongMap!11577 (_ BitVec 64)) Bool)

(declare-fun +!2623 (ListLongMap!11577 tuple2!12866) ListLongMap!11577)

(assert (=> b!920330 (contains!4817 (+!2623 lt!413176 lt!413180) k!1099)))

(declare-fun lt!413175 () Unit!31053)

(declare-fun lt!413178 () V!31031)

(declare-fun addStillContains!385 (ListLongMap!11577 (_ BitVec 64) V!31031 (_ BitVec 64)) Unit!31053)

(assert (=> b!920330 (= lt!413175 (addStillContains!385 lt!413176 lt!413173 lt!413178 k!1099))))

(declare-fun getCurrentListMap!3026 (array!55090 array!55092 (_ BitVec 32) (_ BitVec 32) V!31031 V!31031 (_ BitVec 32) Int) ListLongMap!11577)

(assert (=> b!920330 (= (getCurrentListMap!3026 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2623 (getCurrentListMap!3026 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413180))))

(assert (=> b!920330 (= lt!413180 (tuple2!12867 lt!413173 lt!413178))))

(declare-fun get!13916 (ValueCell!9293 V!31031) V!31031)

(declare-fun dynLambda!1462 (Int (_ BitVec 64)) V!31031)

(assert (=> b!920330 (= lt!413178 (get!13916 (select (arr!26487 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1462 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413174 () Unit!31053)

(declare-fun lemmaListMapRecursiveValidKeyArray!58 (array!55090 array!55092 (_ BitVec 32) (_ BitVec 32) V!31031 V!31031 (_ BitVec 32) Int) Unit!31053)

(assert (=> b!920330 (= lt!413174 (lemmaListMapRecursiveValidKeyArray!58 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31080 () Bool)

(declare-fun mapRes!31080 () Bool)

(assert (=> mapIsEmpty!31080 mapRes!31080))

(declare-fun mapNonEmpty!31080 () Bool)

(declare-fun tp!59565 () Bool)

(declare-fun e!516564 () Bool)

(assert (=> mapNonEmpty!31080 (= mapRes!31080 (and tp!59565 e!516564))))

(declare-fun mapRest!31080 () (Array (_ BitVec 32) ValueCell!9293))

(declare-fun mapKey!31080 () (_ BitVec 32))

(declare-fun mapValue!31080 () ValueCell!9293)

(assert (=> mapNonEmpty!31080 (= (arr!26487 _values!1231) (store mapRest!31080 mapKey!31080 mapValue!31080))))

(declare-fun b!920331 () Bool)

(declare-fun res!620728 () Bool)

(assert (=> b!920331 (=> res!620728 e!516566)))

(declare-fun noDuplicate!1336 (List!18708) Bool)

(assert (=> b!920331 (= res!620728 (not (noDuplicate!1336 Nil!18705)))))

(declare-fun b!920332 () Bool)

(assert (=> b!920332 (= e!516564 tp_is_empty!19549)))

(declare-fun b!920333 () Bool)

(declare-fun e!516561 () Bool)

(assert (=> b!920333 (= e!516561 (and e!516563 mapRes!31080))))

(declare-fun condMapEmpty!31080 () Bool)

(declare-fun mapDefault!31080 () ValueCell!9293)

