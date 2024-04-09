; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79220 () Bool)

(assert start!79220)

(declare-fun b_free!17405 () Bool)

(declare-fun b_next!17405 () Bool)

(assert (=> start!79220 (= b_free!17405 (not b_next!17405))))

(declare-fun tp!60656 () Bool)

(declare-fun b_and!28489 () Bool)

(assert (=> start!79220 (= tp!60656 b_and!28489)))

(declare-fun b!929548 () Bool)

(declare-fun res!626083 () Bool)

(declare-fun e!522016 () Bool)

(assert (=> b!929548 (=> (not res!626083) (not e!522016))))

(declare-datatypes ((array!55798 0))(
  ( (array!55799 (arr!26840 (Array (_ BitVec 32) (_ BitVec 64))) (size!27300 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55798)

(declare-datatypes ((List!19012 0))(
  ( (Nil!19009) (Cons!19008 (h!20154 (_ BitVec 64)) (t!27077 List!19012)) )
))
(declare-fun arrayNoDuplicates!0 (array!55798 (_ BitVec 32) List!19012) Bool)

(assert (=> b!929548 (= res!626083 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19009))))

(declare-fun b!929549 () Bool)

(declare-fun e!522018 () Bool)

(declare-fun e!522019 () Bool)

(declare-fun mapRes!31626 () Bool)

(assert (=> b!929549 (= e!522018 (and e!522019 mapRes!31626))))

(declare-fun condMapEmpty!31626 () Bool)

(declare-datatypes ((V!31515 0))(
  ( (V!31516 (val!10007 Int)) )
))
(declare-datatypes ((ValueCell!9475 0))(
  ( (ValueCellFull!9475 (v!12525 V!31515)) (EmptyCell!9475) )
))
(declare-datatypes ((array!55800 0))(
  ( (array!55801 (arr!26841 (Array (_ BitVec 32) ValueCell!9475)) (size!27301 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55800)

(declare-fun mapDefault!31626 () ValueCell!9475)

