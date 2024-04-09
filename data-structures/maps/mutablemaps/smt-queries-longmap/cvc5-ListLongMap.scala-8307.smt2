; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101226 () Bool)

(assert start!101226)

(declare-fun b_free!26113 () Bool)

(declare-fun b_next!26113 () Bool)

(assert (=> start!101226 (= b_free!26113 (not b_next!26113))))

(declare-fun tp!91362 () Bool)

(declare-fun b_and!43353 () Bool)

(assert (=> start!101226 (= tp!91362 b_and!43353)))

(declare-fun b!1214684 () Bool)

(declare-fun res!806538 () Bool)

(declare-fun e!689814 () Bool)

(assert (=> b!1214684 (=> (not res!806538) (not e!689814))))

(declare-datatypes ((array!78392 0))(
  ( (array!78393 (arr!37827 (Array (_ BitVec 32) (_ BitVec 64))) (size!38364 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78392)

(declare-datatypes ((List!26838 0))(
  ( (Nil!26835) (Cons!26834 (h!28043 (_ BitVec 64)) (t!39938 List!26838)) )
))
(declare-fun arrayNoDuplicates!0 (array!78392 (_ BitVec 32) List!26838) Bool)

(assert (=> b!1214684 (= res!806538 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26835))))

(declare-fun mapIsEmpty!48100 () Bool)

(declare-fun mapRes!48100 () Bool)

(assert (=> mapIsEmpty!48100 mapRes!48100))

(declare-fun b!1214685 () Bool)

(declare-fun e!689819 () Bool)

(declare-fun tp_is_empty!30817 () Bool)

(assert (=> b!1214685 (= e!689819 tp_is_empty!30817)))

(declare-fun b!1214686 () Bool)

(declare-fun e!689817 () Bool)

(assert (=> b!1214686 (= e!689817 (and e!689819 mapRes!48100))))

(declare-fun condMapEmpty!48100 () Bool)

(declare-datatypes ((V!46217 0))(
  ( (V!46218 (val!15465 Int)) )
))
(declare-datatypes ((ValueCell!14699 0))(
  ( (ValueCellFull!14699 (v!18119 V!46217)) (EmptyCell!14699) )
))
(declare-datatypes ((array!78394 0))(
  ( (array!78395 (arr!37828 (Array (_ BitVec 32) ValueCell!14699)) (size!38365 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78394)

(declare-fun mapDefault!48100 () ValueCell!14699)

