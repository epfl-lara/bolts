; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78896 () Bool)

(assert start!78896)

(declare-fun b_free!17081 () Bool)

(declare-fun b_next!17081 () Bool)

(assert (=> start!78896 (= b_free!17081 (not b_next!17081))))

(declare-fun tp!59685 () Bool)

(declare-fun b_and!27917 () Bool)

(assert (=> start!78896 (= tp!59685 b_and!27917)))

(declare-fun mapIsEmpty!31140 () Bool)

(declare-fun mapRes!31140 () Bool)

(assert (=> mapIsEmpty!31140 mapRes!31140))

(declare-fun b!921445 () Bool)

(declare-fun e!517107 () Bool)

(declare-fun e!517105 () Bool)

(assert (=> b!921445 (= e!517107 (and e!517105 mapRes!31140))))

(declare-fun condMapEmpty!31140 () Bool)

(declare-datatypes ((V!31083 0))(
  ( (V!31084 (val!9845 Int)) )
))
(declare-datatypes ((ValueCell!9313 0))(
  ( (ValueCellFull!9313 (v!12363 V!31083)) (EmptyCell!9313) )
))
(declare-datatypes ((array!55168 0))(
  ( (array!55169 (arr!26525 (Array (_ BitVec 32) ValueCell!9313)) (size!26985 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55168)

(declare-fun mapDefault!31140 () ValueCell!9313)

