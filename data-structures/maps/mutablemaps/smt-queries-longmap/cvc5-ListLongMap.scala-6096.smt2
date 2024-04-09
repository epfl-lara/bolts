; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78712 () Bool)

(assert start!78712)

(declare-fun b_free!16897 () Bool)

(declare-fun b_next!16897 () Bool)

(assert (=> start!78712 (= b_free!16897 (not b_next!16897))))

(declare-fun tp!59133 () Bool)

(declare-fun b_and!27549 () Bool)

(assert (=> start!78712 (= tp!59133 b_and!27549)))

(declare-fun b!917318 () Bool)

(declare-fun res!618538 () Bool)

(declare-fun e!515025 () Bool)

(assert (=> b!917318 (=> (not res!618538) (not e!515025))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917318 (= res!618538 (validKeyInArray!0 k!1099))))

(declare-fun b!917319 () Bool)

(declare-fun e!515029 () Bool)

(assert (=> b!917319 (= e!515029 e!515025)))

(declare-fun res!618534 () Bool)

(assert (=> b!917319 (=> (not res!618534) (not e!515025))))

(declare-datatypes ((V!30839 0))(
  ( (V!30840 (val!9753 Int)) )
))
(declare-datatypes ((tuple2!12736 0))(
  ( (tuple2!12737 (_1!6378 (_ BitVec 64)) (_2!6378 V!30839)) )
))
(declare-datatypes ((List!18588 0))(
  ( (Nil!18585) (Cons!18584 (h!19730 tuple2!12736) (t!26223 List!18588)) )
))
(declare-datatypes ((ListLongMap!11447 0))(
  ( (ListLongMap!11448 (toList!5739 List!18588)) )
))
(declare-fun lt!411966 () ListLongMap!11447)

(declare-fun contains!4755 (ListLongMap!11447 (_ BitVec 64)) Bool)

(assert (=> b!917319 (= res!618534 (contains!4755 lt!411966 k!1099))))

(declare-datatypes ((array!54802 0))(
  ( (array!54803 (arr!26342 (Array (_ BitVec 32) (_ BitVec 64))) (size!26802 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54802)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9221 0))(
  ( (ValueCellFull!9221 (v!12271 V!30839)) (EmptyCell!9221) )
))
(declare-datatypes ((array!54804 0))(
  ( (array!54805 (arr!26343 (Array (_ BitVec 32) ValueCell!9221)) (size!26803 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54804)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30839)

(declare-fun minValue!1173 () V!30839)

(declare-fun getCurrentListMap!2965 (array!54802 array!54804 (_ BitVec 32) (_ BitVec 32) V!30839 V!30839 (_ BitVec 32) Int) ListLongMap!11447)

(assert (=> b!917319 (= lt!411966 (getCurrentListMap!2965 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917320 () Bool)

(declare-fun e!515028 () Bool)

(assert (=> b!917320 (= e!515028 (not true))))

(declare-fun lt!411965 () (_ BitVec 64))

(declare-fun +!2571 (ListLongMap!11447 tuple2!12736) ListLongMap!11447)

(declare-fun get!13816 (ValueCell!9221 V!30839) V!30839)

(declare-fun dynLambda!1410 (Int (_ BitVec 64)) V!30839)

(assert (=> b!917320 (= (getCurrentListMap!2965 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2571 (getCurrentListMap!2965 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12737 lt!411965 (get!13816 (select (arr!26343 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1410 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30949 0))(
  ( (Unit!30950) )
))
(declare-fun lt!411964 () Unit!30949)

(declare-fun lemmaListMapRecursiveValidKeyArray!6 (array!54802 array!54804 (_ BitVec 32) (_ BitVec 32) V!30839 V!30839 (_ BitVec 32) Int) Unit!30949)

(assert (=> b!917320 (= lt!411964 (lemmaListMapRecursiveValidKeyArray!6 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917321 () Bool)

(declare-fun e!515027 () Bool)

(declare-fun tp_is_empty!19405 () Bool)

(assert (=> b!917321 (= e!515027 tp_is_empty!19405)))

(declare-fun mapIsEmpty!30864 () Bool)

(declare-fun mapRes!30864 () Bool)

(assert (=> mapIsEmpty!30864 mapRes!30864))

(declare-fun res!618542 () Bool)

(assert (=> start!78712 (=> (not res!618542) (not e!515029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78712 (= res!618542 (validMask!0 mask!1881))))

(assert (=> start!78712 e!515029))

(assert (=> start!78712 true))

(assert (=> start!78712 tp_is_empty!19405))

(declare-fun e!515031 () Bool)

(declare-fun array_inv!20530 (array!54804) Bool)

(assert (=> start!78712 (and (array_inv!20530 _values!1231) e!515031)))

(assert (=> start!78712 tp!59133))

(declare-fun array_inv!20531 (array!54802) Bool)

(assert (=> start!78712 (array_inv!20531 _keys!1487)))

(declare-fun b!917322 () Bool)

(declare-fun e!515026 () Bool)

(assert (=> b!917322 (= e!515031 (and e!515026 mapRes!30864))))

(declare-fun condMapEmpty!30864 () Bool)

(declare-fun mapDefault!30864 () ValueCell!9221)

