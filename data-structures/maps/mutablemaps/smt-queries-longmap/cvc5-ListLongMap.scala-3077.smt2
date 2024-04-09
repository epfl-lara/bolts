; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43362 () Bool)

(assert start!43362)

(declare-fun b_free!12181 () Bool)

(declare-fun b_next!12181 () Bool)

(assert (=> start!43362 (= b_free!12181 (not b_next!12181))))

(declare-fun tp!42820 () Bool)

(declare-fun b_and!20955 () Bool)

(assert (=> start!43362 (= tp!42820 b_and!20955)))

(declare-fun mapIsEmpty!22243 () Bool)

(declare-fun mapRes!22243 () Bool)

(assert (=> mapIsEmpty!22243 mapRes!22243))

(declare-fun b!480003 () Bool)

(declare-fun e!282457 () Bool)

(declare-fun e!282456 () Bool)

(assert (=> b!480003 (= e!282457 (and e!282456 mapRes!22243))))

(declare-fun condMapEmpty!22243 () Bool)

(declare-datatypes ((V!19329 0))(
  ( (V!19330 (val!6894 Int)) )
))
(declare-datatypes ((ValueCell!6485 0))(
  ( (ValueCellFull!6485 (v!9181 V!19329)) (EmptyCell!6485) )
))
(declare-datatypes ((array!31025 0))(
  ( (array!31026 (arr!14914 (Array (_ BitVec 32) ValueCell!6485)) (size!15272 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31025)

(declare-fun mapDefault!22243 () ValueCell!6485)

