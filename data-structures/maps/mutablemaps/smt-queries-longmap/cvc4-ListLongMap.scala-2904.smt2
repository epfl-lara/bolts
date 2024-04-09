; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41578 () Bool)

(assert start!41578)

(declare-fun b_free!11237 () Bool)

(declare-fun b_next!11237 () Bool)

(assert (=> start!41578 (= b_free!11237 (not b_next!11237))))

(declare-fun tp!39709 () Bool)

(declare-fun b_and!19595 () Bool)

(assert (=> start!41578 (= tp!39709 b_and!19595)))

(declare-fun b!464140 () Bool)

(declare-fun e!271117 () Bool)

(declare-fun tp_is_empty!12665 () Bool)

(assert (=> b!464140 (= e!271117 tp_is_empty!12665)))

(declare-fun mapIsEmpty!20674 () Bool)

(declare-fun mapRes!20674 () Bool)

(assert (=> mapIsEmpty!20674 mapRes!20674))

(declare-fun b!464141 () Bool)

(declare-fun e!271116 () Bool)

(declare-fun e!271119 () Bool)

(assert (=> b!464141 (= e!271116 (and e!271119 mapRes!20674))))

(declare-fun condMapEmpty!20674 () Bool)

(declare-datatypes ((V!17991 0))(
  ( (V!17992 (val!6377 Int)) )
))
(declare-datatypes ((ValueCell!5989 0))(
  ( (ValueCellFull!5989 (v!8660 V!17991)) (EmptyCell!5989) )
))
(declare-datatypes ((array!29081 0))(
  ( (array!29082 (arr!13969 (Array (_ BitVec 32) ValueCell!5989)) (size!14321 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29081)

(declare-fun mapDefault!20674 () ValueCell!5989)

