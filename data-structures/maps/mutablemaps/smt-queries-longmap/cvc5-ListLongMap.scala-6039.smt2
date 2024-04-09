; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78162 () Bool)

(assert start!78162)

(declare-fun b_free!16645 () Bool)

(declare-fun b_next!16645 () Bool)

(assert (=> start!78162 (= b_free!16645 (not b_next!16645))))

(declare-fun tp!58209 () Bool)

(declare-fun b_and!27237 () Bool)

(assert (=> start!78162 (= tp!58209 b_and!27237)))

(declare-fun b!911764 () Bool)

(declare-fun res!615210 () Bool)

(declare-fun e!511443 () Bool)

(assert (=> b!911764 (=> (not res!615210) (not e!511443))))

(declare-datatypes ((array!54134 0))(
  ( (array!54135 (arr!26018 (Array (_ BitVec 32) (_ BitVec 64))) (size!26478 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54134)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54134 (_ BitVec 32)) Bool)

(assert (=> b!911764 (= res!615210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!615208 () Bool)

(assert (=> start!78162 (=> (not res!615208) (not e!511443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78162 (= res!615208 (validMask!0 mask!1756))))

(assert (=> start!78162 e!511443))

(declare-datatypes ((V!30383 0))(
  ( (V!30384 (val!9582 Int)) )
))
(declare-datatypes ((ValueCell!9050 0))(
  ( (ValueCellFull!9050 (v!12092 V!30383)) (EmptyCell!9050) )
))
(declare-datatypes ((array!54136 0))(
  ( (array!54137 (arr!26019 (Array (_ BitVec 32) ValueCell!9050)) (size!26479 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54136)

(declare-fun e!511441 () Bool)

(declare-fun array_inv!20316 (array!54136) Bool)

(assert (=> start!78162 (and (array_inv!20316 _values!1152) e!511441)))

(assert (=> start!78162 tp!58209))

(assert (=> start!78162 true))

(declare-fun tp_is_empty!19063 () Bool)

(assert (=> start!78162 tp_is_empty!19063))

(declare-fun array_inv!20317 (array!54134) Bool)

(assert (=> start!78162 (array_inv!20317 _keys!1386)))

(declare-fun b!911765 () Bool)

(declare-fun e!511444 () Bool)

(declare-fun mapRes!30319 () Bool)

(assert (=> b!911765 (= e!511441 (and e!511444 mapRes!30319))))

(declare-fun condMapEmpty!30319 () Bool)

(declare-fun mapDefault!30319 () ValueCell!9050)

