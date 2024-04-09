; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79094 () Bool)

(assert start!79094)

(declare-fun b_free!17279 () Bool)

(declare-fun b_next!17279 () Bool)

(assert (=> start!79094 (= b_free!17279 (not b_next!17279))))

(declare-fun tp!60279 () Bool)

(declare-fun b_and!28313 () Bool)

(assert (=> start!79094 (= tp!60279 b_and!28313)))

(declare-fun b!926915 () Bool)

(declare-fun res!624506 () Bool)

(declare-fun e!520374 () Bool)

(assert (=> b!926915 (=> (not res!624506) (not e!520374))))

(declare-datatypes ((V!31347 0))(
  ( (V!31348 (val!9944 Int)) )
))
(declare-fun v!791 () V!31347)

(declare-datatypes ((tuple2!13084 0))(
  ( (tuple2!13085 (_1!6552 (_ BitVec 64)) (_2!6552 V!31347)) )
))
(declare-datatypes ((List!18912 0))(
  ( (Nil!18909) (Cons!18908 (h!20054 tuple2!13084) (t!26929 List!18912)) )
))
(declare-datatypes ((ListLongMap!11795 0))(
  ( (ListLongMap!11796 (toList!5913 List!18912)) )
))
(declare-fun lt!417680 () ListLongMap!11795)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!710 (ListLongMap!11795 (_ BitVec 64)) V!31347)

(assert (=> b!926915 (= res!624506 (= (apply!710 lt!417680 k!1099) v!791))))

(declare-fun b!926916 () Bool)

(declare-fun e!520377 () Bool)

(declare-fun e!520378 () Bool)

(declare-fun mapRes!31437 () Bool)

(assert (=> b!926916 (= e!520377 (and e!520378 mapRes!31437))))

(declare-fun condMapEmpty!31437 () Bool)

(declare-datatypes ((ValueCell!9412 0))(
  ( (ValueCellFull!9412 (v!12462 V!31347)) (EmptyCell!9412) )
))
(declare-datatypes ((array!55554 0))(
  ( (array!55555 (arr!26718 (Array (_ BitVec 32) ValueCell!9412)) (size!27178 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55554)

(declare-fun mapDefault!31437 () ValueCell!9412)

