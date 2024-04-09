; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79728 () Bool)

(assert start!79728)

(declare-fun b_free!17749 () Bool)

(declare-fun b_next!17749 () Bool)

(assert (=> start!79728 (= b_free!17749 (not b_next!17749))))

(declare-fun tp!61703 () Bool)

(declare-fun b_and!29107 () Bool)

(assert (=> start!79728 (= tp!61703 b_and!29107)))

(declare-fun b!937540 () Bool)

(declare-fun e!526512 () Bool)

(declare-fun e!526515 () Bool)

(assert (=> b!937540 (= e!526512 e!526515)))

(declare-fun res!631077 () Bool)

(assert (=> b!937540 (=> (not res!631077) (not e!526515))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31975 0))(
  ( (V!31976 (val!10179 Int)) )
))
(declare-fun v!791 () V!31975)

(declare-fun lt!423144 () V!31975)

(assert (=> b!937540 (= res!631077 (and (= lt!423144 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13482 0))(
  ( (tuple2!13483 (_1!6751 (_ BitVec 64)) (_2!6751 V!31975)) )
))
(declare-datatypes ((List!19290 0))(
  ( (Nil!19287) (Cons!19286 (h!20432 tuple2!13482) (t!27591 List!19290)) )
))
(declare-datatypes ((ListLongMap!12193 0))(
  ( (ListLongMap!12194 (toList!6112 List!19290)) )
))
(declare-fun lt!423146 () ListLongMap!12193)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!890 (ListLongMap!12193 (_ BitVec 64)) V!31975)

(assert (=> b!937540 (= lt!423144 (apply!890 lt!423146 k!1099))))

(declare-fun b!937541 () Bool)

(declare-datatypes ((Unit!31673 0))(
  ( (Unit!31674) )
))
(declare-fun e!526513 () Unit!31673)

(declare-fun Unit!31675 () Unit!31673)

(assert (=> b!937541 (= e!526513 Unit!31675)))

(declare-fun b!937542 () Bool)

(declare-fun e!526514 () Bool)

(assert (=> b!937542 (= e!526514 e!526512)))

(declare-fun res!631078 () Bool)

(assert (=> b!937542 (=> (not res!631078) (not e!526512))))

(declare-fun contains!5122 (ListLongMap!12193 (_ BitVec 64)) Bool)

(assert (=> b!937542 (= res!631078 (contains!5122 lt!423146 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9647 0))(
  ( (ValueCellFull!9647 (v!12704 V!31975)) (EmptyCell!9647) )
))
(declare-datatypes ((array!56478 0))(
  ( (array!56479 (arr!27175 (Array (_ BitVec 32) ValueCell!9647)) (size!27635 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56478)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((array!56480 0))(
  ( (array!56481 (arr!27176 (Array (_ BitVec 32) (_ BitVec 64))) (size!27636 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56480)

(declare-fun zeroValue!1173 () V!31975)

(declare-fun minValue!1173 () V!31975)

(declare-fun getCurrentListMap!3301 (array!56480 array!56478 (_ BitVec 32) (_ BitVec 32) V!31975 V!31975 (_ BitVec 32) Int) ListLongMap!12193)

(assert (=> b!937542 (= lt!423146 (getCurrentListMap!3301 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!937543 () Bool)

(declare-fun res!631072 () Bool)

(assert (=> b!937543 (=> (not res!631072) (not e!526514))))

(assert (=> b!937543 (= res!631072 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27636 _keys!1487))))))

(declare-fun b!937544 () Bool)

(declare-fun e!526508 () Unit!31673)

(assert (=> b!937544 (= e!526513 e!526508)))

(declare-fun lt!423143 () (_ BitVec 64))

(assert (=> b!937544 (= lt!423143 (select (arr!27176 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97541 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937544 (= c!97541 (validKeyInArray!0 lt!423143))))

(declare-fun b!937545 () Bool)

(declare-fun e!526510 () Bool)

(declare-fun e!526509 () Bool)

(declare-fun mapRes!32157 () Bool)

(assert (=> b!937545 (= e!526510 (and e!526509 mapRes!32157))))

(declare-fun condMapEmpty!32157 () Bool)

(declare-fun mapDefault!32157 () ValueCell!9647)

