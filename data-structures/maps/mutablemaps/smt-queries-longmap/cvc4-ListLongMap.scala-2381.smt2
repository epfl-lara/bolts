; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37760 () Bool)

(assert start!37760)

(declare-fun b_free!8855 () Bool)

(declare-fun b_next!8855 () Bool)

(assert (=> start!37760 (= b_free!8855 (not b_next!8855))))

(declare-fun tp!31316 () Bool)

(declare-fun b_and!16115 () Bool)

(assert (=> start!37760 (= tp!31316 b_and!16115)))

(declare-fun b!387182 () Bool)

(declare-fun res!221290 () Bool)

(declare-fun e!234755 () Bool)

(assert (=> b!387182 (=> (not res!221290) (not e!234755))))

(declare-datatypes ((array!22923 0))(
  ( (array!22924 (arr!10927 (Array (_ BitVec 32) (_ BitVec 64))) (size!11279 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22923)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22923 (_ BitVec 32)) Bool)

(assert (=> b!387182 (= res!221290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387183 () Bool)

(declare-fun e!234759 () Bool)

(declare-fun tp_is_empty!9527 () Bool)

(assert (=> b!387183 (= e!234759 tp_is_empty!9527)))

(declare-fun b!387184 () Bool)

(declare-fun e!234754 () Bool)

(declare-fun e!234756 () Bool)

(declare-fun mapRes!15855 () Bool)

(assert (=> b!387184 (= e!234754 (and e!234756 mapRes!15855))))

(declare-fun condMapEmpty!15855 () Bool)

(declare-datatypes ((V!13807 0))(
  ( (V!13808 (val!4808 Int)) )
))
(declare-datatypes ((ValueCell!4420 0))(
  ( (ValueCellFull!4420 (v!7001 V!13807)) (EmptyCell!4420) )
))
(declare-datatypes ((array!22925 0))(
  ( (array!22926 (arr!10928 (Array (_ BitVec 32) ValueCell!4420)) (size!11280 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22925)

(declare-fun mapDefault!15855 () ValueCell!4420)

