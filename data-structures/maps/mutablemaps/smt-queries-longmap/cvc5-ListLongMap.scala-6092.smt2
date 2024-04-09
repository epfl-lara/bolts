; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78688 () Bool)

(assert start!78688)

(declare-fun b_free!16873 () Bool)

(declare-fun b_next!16873 () Bool)

(assert (=> start!78688 (= b_free!16873 (not b_next!16873))))

(declare-fun tp!59061 () Bool)

(declare-fun b_and!27513 () Bool)

(assert (=> start!78688 (= tp!59061 b_and!27513)))

(declare-fun b!916902 () Bool)

(declare-fun e!514792 () Bool)

(declare-fun tp_is_empty!19381 () Bool)

(assert (=> b!916902 (= e!514792 tp_is_empty!19381)))

(declare-fun b!916903 () Bool)

(declare-fun e!514794 () Bool)

(assert (=> b!916903 (= e!514794 false)))

(declare-datatypes ((V!30807 0))(
  ( (V!30808 (val!9741 Int)) )
))
(declare-fun lt!411873 () V!30807)

(declare-datatypes ((tuple2!12714 0))(
  ( (tuple2!12715 (_1!6367 (_ BitVec 64)) (_2!6367 V!30807)) )
))
(declare-datatypes ((List!18570 0))(
  ( (Nil!18567) (Cons!18566 (h!19712 tuple2!12714) (t!26191 List!18570)) )
))
(declare-datatypes ((ListLongMap!11425 0))(
  ( (ListLongMap!11426 (toList!5728 List!18570)) )
))
(declare-fun lt!411872 () ListLongMap!11425)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!556 (ListLongMap!11425 (_ BitVec 64)) V!30807)

(assert (=> b!916903 (= lt!411873 (apply!556 lt!411872 k!1099))))

(declare-fun b!916904 () Bool)

(declare-fun e!514791 () Bool)

(assert (=> b!916904 (= e!514791 tp_is_empty!19381)))

(declare-fun b!916905 () Bool)

(declare-fun e!514789 () Bool)

(declare-fun mapRes!30828 () Bool)

(assert (=> b!916905 (= e!514789 (and e!514791 mapRes!30828))))

(declare-fun condMapEmpty!30828 () Bool)

(declare-datatypes ((ValueCell!9209 0))(
  ( (ValueCellFull!9209 (v!12259 V!30807)) (EmptyCell!9209) )
))
(declare-datatypes ((array!54756 0))(
  ( (array!54757 (arr!26319 (Array (_ BitVec 32) ValueCell!9209)) (size!26779 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54756)

(declare-fun mapDefault!30828 () ValueCell!9209)

