; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79228 () Bool)

(assert start!79228)

(declare-fun b_free!17413 () Bool)

(declare-fun b_next!17413 () Bool)

(assert (=> start!79228 (= b_free!17413 (not b_next!17413))))

(declare-fun tp!60680 () Bool)

(declare-fun b_and!28497 () Bool)

(assert (=> start!79228 (= tp!60680 b_and!28497)))

(declare-fun mapNonEmpty!31638 () Bool)

(declare-fun mapRes!31638 () Bool)

(declare-fun tp!60681 () Bool)

(declare-fun e!522089 () Bool)

(assert (=> mapNonEmpty!31638 (= mapRes!31638 (and tp!60681 e!522089))))

(declare-datatypes ((V!31527 0))(
  ( (V!31528 (val!10011 Int)) )
))
(declare-datatypes ((ValueCell!9479 0))(
  ( (ValueCellFull!9479 (v!12529 V!31527)) (EmptyCell!9479) )
))
(declare-fun mapRest!31638 () (Array (_ BitVec 32) ValueCell!9479))

(declare-fun mapKey!31638 () (_ BitVec 32))

(declare-datatypes ((array!55812 0))(
  ( (array!55813 (arr!26847 (Array (_ BitVec 32) ValueCell!9479)) (size!27307 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55812)

(declare-fun mapValue!31638 () ValueCell!9479)

(assert (=> mapNonEmpty!31638 (= (arr!26847 _values!1231) (store mapRest!31638 mapKey!31638 mapValue!31638))))

(declare-fun b!929680 () Bool)

(declare-fun res!626184 () Bool)

(declare-fun e!522091 () Bool)

(assert (=> b!929680 (=> (not res!626184) (not e!522091))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929680 (= res!626184 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!31638 () Bool)

(assert (=> mapIsEmpty!31638 mapRes!31638))

(declare-fun b!929681 () Bool)

(declare-fun res!626183 () Bool)

(declare-fun e!522090 () Bool)

(assert (=> b!929681 (=> (not res!626183) (not e!522090))))

(declare-datatypes ((array!55814 0))(
  ( (array!55815 (arr!26848 (Array (_ BitVec 32) (_ BitVec 64))) (size!27308 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55814)

(assert (=> b!929681 (= res!626183 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27308 _keys!1487))))))

(declare-fun b!929683 () Bool)

(declare-fun res!626185 () Bool)

(assert (=> b!929683 (=> (not res!626185) (not e!522090))))

(declare-datatypes ((List!19017 0))(
  ( (Nil!19014) (Cons!19013 (h!20159 (_ BitVec 64)) (t!27082 List!19017)) )
))
(declare-fun arrayNoDuplicates!0 (array!55814 (_ BitVec 32) List!19017) Bool)

(assert (=> b!929683 (= res!626185 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19014))))

(declare-fun b!929684 () Bool)

(declare-fun e!522088 () Bool)

(declare-fun e!522092 () Bool)

(assert (=> b!929684 (= e!522088 (and e!522092 mapRes!31638))))

(declare-fun condMapEmpty!31638 () Bool)

(declare-fun mapDefault!31638 () ValueCell!9479)

