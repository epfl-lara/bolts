; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79294 () Bool)

(assert start!79294)

(declare-fun b_free!17479 () Bool)

(declare-fun b_next!17479 () Bool)

(assert (=> start!79294 (= b_free!17479 (not b_next!17479))))

(declare-fun tp!60878 () Bool)

(declare-fun b_and!28563 () Bool)

(assert (=> start!79294 (= tp!60878 b_and!28563)))

(declare-fun mapIsEmpty!31737 () Bool)

(declare-fun mapRes!31737 () Bool)

(assert (=> mapIsEmpty!31737 mapRes!31737))

(declare-fun b!930694 () Bool)

(declare-fun e!522687 () Bool)

(assert (=> b!930694 (= e!522687 false)))

(declare-datatypes ((V!31615 0))(
  ( (V!31616 (val!10044 Int)) )
))
(declare-fun lt!419261 () V!31615)

(declare-datatypes ((tuple2!13252 0))(
  ( (tuple2!13253 (_1!6636 (_ BitVec 64)) (_2!6636 V!31615)) )
))
(declare-datatypes ((List!19070 0))(
  ( (Nil!19067) (Cons!19066 (h!20212 tuple2!13252) (t!27135 List!19070)) )
))
(declare-datatypes ((ListLongMap!11963 0))(
  ( (ListLongMap!11964 (toList!5997 List!19070)) )
))
(declare-fun lt!419262 () ListLongMap!11963)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!784 (ListLongMap!11963 (_ BitVec 64)) V!31615)

(assert (=> b!930694 (= lt!419261 (apply!784 lt!419262 k!1099))))

(declare-fun b!930695 () Bool)

(declare-fun e!522683 () Bool)

(declare-fun e!522682 () Bool)

(assert (=> b!930695 (= e!522683 (and e!522682 mapRes!31737))))

(declare-fun condMapEmpty!31737 () Bool)

(declare-datatypes ((ValueCell!9512 0))(
  ( (ValueCellFull!9512 (v!12562 V!31615)) (EmptyCell!9512) )
))
(declare-datatypes ((array!55944 0))(
  ( (array!55945 (arr!26913 (Array (_ BitVec 32) ValueCell!9512)) (size!27373 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55944)

(declare-fun mapDefault!31737 () ValueCell!9512)

