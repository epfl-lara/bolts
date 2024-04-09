; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78932 () Bool)

(assert start!78932)

(declare-fun b_free!17117 () Bool)

(declare-fun b_next!17117 () Bool)

(assert (=> start!78932 (= b_free!17117 (not b_next!17117))))

(declare-fun tp!59792 () Bool)

(declare-fun b_and!27989 () Bool)

(assert (=> start!78932 (= tp!59792 b_and!27989)))

(declare-fun b!922321 () Bool)

(declare-fun res!622080 () Bool)

(declare-fun e!517547 () Bool)

(assert (=> b!922321 (=> (not res!622080) (not e!517547))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31131 0))(
  ( (V!31132 (val!9863 Int)) )
))
(declare-fun v!791 () V!31131)

(declare-datatypes ((tuple2!12934 0))(
  ( (tuple2!12935 (_1!6477 (_ BitVec 64)) (_2!6477 V!31131)) )
))
(declare-datatypes ((List!18772 0))(
  ( (Nil!18769) (Cons!18768 (h!19914 tuple2!12934) (t!26627 List!18772)) )
))
(declare-datatypes ((ListLongMap!11645 0))(
  ( (ListLongMap!11646 (toList!5838 List!18772)) )
))
(declare-fun lt!414205 () ListLongMap!11645)

(declare-fun apply!643 (ListLongMap!11645 (_ BitVec 64)) V!31131)

(assert (=> b!922321 (= res!622080 (= (apply!643 lt!414205 k!1099) v!791))))

(declare-fun b!922322 () Bool)

(declare-fun e!517543 () Bool)

(declare-fun e!517546 () Bool)

(declare-fun mapRes!31194 () Bool)

(assert (=> b!922322 (= e!517543 (and e!517546 mapRes!31194))))

(declare-fun condMapEmpty!31194 () Bool)

(declare-datatypes ((ValueCell!9331 0))(
  ( (ValueCellFull!9331 (v!12381 V!31131)) (EmptyCell!9331) )
))
(declare-datatypes ((array!55238 0))(
  ( (array!55239 (arr!26560 (Array (_ BitVec 32) ValueCell!9331)) (size!27020 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55238)

(declare-fun mapDefault!31194 () ValueCell!9331)

