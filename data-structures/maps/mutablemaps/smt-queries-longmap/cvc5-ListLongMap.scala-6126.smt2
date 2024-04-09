; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78892 () Bool)

(assert start!78892)

(declare-fun b_free!17077 () Bool)

(declare-fun b_next!17077 () Bool)

(assert (=> start!78892 (= b_free!17077 (not b_next!17077))))

(declare-fun tp!59673 () Bool)

(declare-fun b_and!27909 () Bool)

(assert (=> start!78892 (= tp!59673 b_and!27909)))

(declare-fun b!921333 () Bool)

(declare-fun e!517053 () Bool)

(declare-fun tp_is_empty!19585 () Bool)

(assert (=> b!921333 (= e!517053 tp_is_empty!19585)))

(declare-fun b!921334 () Bool)

(declare-fun e!517049 () Bool)

(declare-fun e!517046 () Bool)

(assert (=> b!921334 (= e!517049 e!517046)))

(declare-fun res!621436 () Bool)

(assert (=> b!921334 (=> (not res!621436) (not e!517046))))

(declare-fun lt!413665 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921334 (= res!621436 (validKeyInArray!0 lt!413665))))

(declare-datatypes ((array!55160 0))(
  ( (array!55161 (arr!26521 (Array (_ BitVec 32) (_ BitVec 64))) (size!26981 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55160)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921334 (= lt!413665 (select (arr!26521 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921335 () Bool)

(declare-fun e!517047 () Bool)

(assert (=> b!921335 (= e!517047 true)))

(declare-fun lt!413662 () Bool)

(declare-datatypes ((List!18740 0))(
  ( (Nil!18737) (Cons!18736 (h!19882 (_ BitVec 64)) (t!26555 List!18740)) )
))
(declare-fun contains!4846 (List!18740 (_ BitVec 64)) Bool)

(assert (=> b!921335 (= lt!413662 (contains!4846 Nil!18737 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921336 () Bool)

(declare-fun e!517048 () Bool)

(assert (=> b!921336 (= e!517048 tp_is_empty!19585)))

(declare-fun b!921337 () Bool)

(declare-fun e!517051 () Bool)

(declare-fun mapRes!31134 () Bool)

(assert (=> b!921337 (= e!517051 (and e!517053 mapRes!31134))))

(declare-fun condMapEmpty!31134 () Bool)

(declare-datatypes ((V!31079 0))(
  ( (V!31080 (val!9843 Int)) )
))
(declare-datatypes ((ValueCell!9311 0))(
  ( (ValueCellFull!9311 (v!12361 V!31079)) (EmptyCell!9311) )
))
(declare-datatypes ((array!55162 0))(
  ( (array!55163 (arr!26522 (Array (_ BitVec 32) ValueCell!9311)) (size!26982 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55162)

(declare-fun mapDefault!31134 () ValueCell!9311)

