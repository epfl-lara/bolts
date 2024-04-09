; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79232 () Bool)

(assert start!79232)

(declare-fun b_free!17417 () Bool)

(declare-fun b_next!17417 () Bool)

(assert (=> start!79232 (= b_free!17417 (not b_next!17417))))

(declare-fun tp!60692 () Bool)

(declare-fun b_and!28501 () Bool)

(assert (=> start!79232 (= tp!60692 b_and!28501)))

(declare-fun b!929746 () Bool)

(declare-fun res!626228 () Bool)

(declare-fun e!522125 () Bool)

(assert (=> b!929746 (=> (not res!626228) (not e!522125))))

(declare-datatypes ((array!55820 0))(
  ( (array!55821 (arr!26851 (Array (_ BitVec 32) (_ BitVec 64))) (size!27311 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55820)

(declare-datatypes ((List!19020 0))(
  ( (Nil!19017) (Cons!19016 (h!20162 (_ BitVec 64)) (t!27085 List!19020)) )
))
(declare-fun arrayNoDuplicates!0 (array!55820 (_ BitVec 32) List!19020) Bool)

(assert (=> b!929746 (= res!626228 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19017))))

(declare-fun b!929747 () Bool)

(declare-fun res!626227 () Bool)

(assert (=> b!929747 (=> (not res!626227) (not e!522125))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929747 (= res!626227 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27311 _keys!1487))))))

(declare-fun b!929748 () Bool)

(declare-fun res!626231 () Bool)

(declare-fun e!522124 () Bool)

(assert (=> b!929748 (=> (not res!626231) (not e!522124))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31531 0))(
  ( (V!31532 (val!10013 Int)) )
))
(declare-fun v!791 () V!31531)

(declare-datatypes ((tuple2!13198 0))(
  ( (tuple2!13199 (_1!6609 (_ BitVec 64)) (_2!6609 V!31531)) )
))
(declare-datatypes ((List!19021 0))(
  ( (Nil!19018) (Cons!19017 (h!20163 tuple2!13198) (t!27086 List!19021)) )
))
(declare-datatypes ((ListLongMap!11909 0))(
  ( (ListLongMap!11910 (toList!5970 List!19021)) )
))
(declare-fun lt!419093 () ListLongMap!11909)

(declare-fun apply!761 (ListLongMap!11909 (_ BitVec 64)) V!31531)

(assert (=> b!929748 (= res!626231 (= (apply!761 lt!419093 k!1099) v!791))))

(declare-fun b!929749 () Bool)

(declare-fun e!522126 () Bool)

(declare-fun e!522128 () Bool)

(declare-fun mapRes!31644 () Bool)

(assert (=> b!929749 (= e!522126 (and e!522128 mapRes!31644))))

(declare-fun condMapEmpty!31644 () Bool)

(declare-datatypes ((ValueCell!9481 0))(
  ( (ValueCellFull!9481 (v!12531 V!31531)) (EmptyCell!9481) )
))
(declare-datatypes ((array!55822 0))(
  ( (array!55823 (arr!26852 (Array (_ BitVec 32) ValueCell!9481)) (size!27312 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55822)

(declare-fun mapDefault!31644 () ValueCell!9481)

