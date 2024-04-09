; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41846 () Bool)

(assert start!41846)

(declare-fun b_free!11441 () Bool)

(declare-fun b_next!11441 () Bool)

(assert (=> start!41846 (= b_free!11441 (not b_next!11441))))

(declare-fun tp!40333 () Bool)

(declare-fun b_and!19839 () Bool)

(assert (=> start!41846 (= tp!40333 b_and!19839)))

(declare-fun b!466982 () Bool)

(declare-fun e!273142 () Bool)

(declare-fun tp_is_empty!12869 () Bool)

(assert (=> b!466982 (= e!273142 tp_is_empty!12869)))

(declare-fun b!466983 () Bool)

(declare-fun e!273141 () Bool)

(declare-fun e!273140 () Bool)

(declare-fun mapRes!20992 () Bool)

(assert (=> b!466983 (= e!273141 (and e!273140 mapRes!20992))))

(declare-fun condMapEmpty!20992 () Bool)

(declare-datatypes ((V!18263 0))(
  ( (V!18264 (val!6479 Int)) )
))
(declare-datatypes ((ValueCell!6091 0))(
  ( (ValueCellFull!6091 (v!8764 V!18263)) (EmptyCell!6091) )
))
(declare-datatypes ((array!29475 0))(
  ( (array!29476 (arr!14162 (Array (_ BitVec 32) ValueCell!6091)) (size!14514 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29475)

(declare-fun mapDefault!20992 () ValueCell!6091)

