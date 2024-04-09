; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40350 () Bool)

(assert start!40350)

(declare-fun b!443042 () Bool)

(declare-fun e!260697 () Bool)

(declare-fun tp_is_empty!11741 () Bool)

(assert (=> b!443042 (= e!260697 tp_is_empty!11741)))

(declare-fun b!443043 () Bool)

(declare-fun res!262582 () Bool)

(declare-fun e!260694 () Bool)

(assert (=> b!443043 (=> (not res!262582) (not e!260694))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27261 0))(
  ( (array!27262 (arr!13076 (Array (_ BitVec 32) (_ BitVec 64))) (size!13428 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27261)

(assert (=> b!443043 (= res!262582 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13428 _keys!709))))))

(declare-fun b!443045 () Bool)

(declare-fun e!260699 () Bool)

(declare-fun e!260696 () Bool)

(declare-fun mapRes!19236 () Bool)

(assert (=> b!443045 (= e!260699 (and e!260696 mapRes!19236))))

(declare-fun condMapEmpty!19236 () Bool)

(declare-datatypes ((V!16759 0))(
  ( (V!16760 (val!5915 Int)) )
))
(declare-datatypes ((ValueCell!5527 0))(
  ( (ValueCellFull!5527 (v!8162 V!16759)) (EmptyCell!5527) )
))
(declare-datatypes ((array!27263 0))(
  ( (array!27264 (arr!13077 (Array (_ BitVec 32) ValueCell!5527)) (size!13429 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27263)

(declare-fun mapDefault!19236 () ValueCell!5527)

