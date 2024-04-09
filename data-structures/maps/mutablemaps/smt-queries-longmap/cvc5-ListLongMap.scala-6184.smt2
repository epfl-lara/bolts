; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79240 () Bool)

(assert start!79240)

(declare-fun b_free!17425 () Bool)

(declare-fun b_next!17425 () Bool)

(assert (=> start!79240 (= b_free!17425 (not b_next!17425))))

(declare-fun tp!60717 () Bool)

(declare-fun b_and!28509 () Bool)

(assert (=> start!79240 (= tp!60717 b_and!28509)))

(declare-fun b!929878 () Bool)

(declare-fun e!522200 () Bool)

(assert (=> b!929878 (= e!522200 false)))

(declare-fun lt!419118 () Bool)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31543 0))(
  ( (V!31544 (val!10017 Int)) )
))
(declare-datatypes ((ValueCell!9485 0))(
  ( (ValueCellFull!9485 (v!12535 V!31543)) (EmptyCell!9485) )
))
(declare-datatypes ((array!55836 0))(
  ( (array!55837 (arr!26859 (Array (_ BitVec 32) ValueCell!9485)) (size!27319 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55836)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!55838 0))(
  ( (array!55839 (arr!26860 (Array (_ BitVec 32) (_ BitVec 64))) (size!27320 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55838)

(declare-fun zeroValue!1173 () V!31543)

(declare-fun minValue!1173 () V!31543)

(declare-datatypes ((tuple2!13204 0))(
  ( (tuple2!13205 (_1!6612 (_ BitVec 64)) (_2!6612 V!31543)) )
))
(declare-datatypes ((List!19027 0))(
  ( (Nil!19024) (Cons!19023 (h!20169 tuple2!13204) (t!27092 List!19027)) )
))
(declare-datatypes ((ListLongMap!11915 0))(
  ( (ListLongMap!11916 (toList!5973 List!19027)) )
))
(declare-fun contains!4987 (ListLongMap!11915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3181 (array!55838 array!55836 (_ BitVec 32) (_ BitVec 32) V!31543 V!31543 (_ BitVec 32) Int) ListLongMap!11915)

(assert (=> b!929878 (= lt!419118 (contains!4987 (getCurrentListMap!3181 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k!1099))))

(declare-fun b!929879 () Bool)

(declare-fun e!522198 () Bool)

(declare-fun e!522199 () Bool)

(declare-fun mapRes!31656 () Bool)

(assert (=> b!929879 (= e!522198 (and e!522199 mapRes!31656))))

(declare-fun condMapEmpty!31656 () Bool)

(declare-fun mapDefault!31656 () ValueCell!9485)

