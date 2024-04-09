; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133666 () Bool)

(assert start!133666)

(declare-fun b_free!32051 () Bool)

(declare-fun b_next!32051 () Bool)

(assert (=> start!133666 (= b_free!32051 (not b_next!32051))))

(declare-fun tp!113277 () Bool)

(declare-fun b_and!51623 () Bool)

(assert (=> start!133666 (= tp!113277 b_and!51623)))

(declare-fun b!1562397 () Bool)

(declare-fun e!870669 () Bool)

(declare-fun tp_is_empty!38717 () Bool)

(assert (=> b!1562397 (= e!870669 tp_is_empty!38717)))

(declare-fun b!1562398 () Bool)

(declare-fun e!870671 () Bool)

(declare-fun e!870670 () Bool)

(declare-fun mapRes!59451 () Bool)

(assert (=> b!1562398 (= e!870671 (and e!870670 mapRes!59451))))

(declare-fun condMapEmpty!59451 () Bool)

(declare-datatypes ((V!59829 0))(
  ( (V!59830 (val!19442 Int)) )
))
(declare-datatypes ((ValueCell!18328 0))(
  ( (ValueCellFull!18328 (v!22191 V!59829)) (EmptyCell!18328) )
))
(declare-datatypes ((array!104101 0))(
  ( (array!104102 (arr!50238 (Array (_ BitVec 32) ValueCell!18328)) (size!50789 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104101)

(declare-fun mapDefault!59451 () ValueCell!18328)

