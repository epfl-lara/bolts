; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20262 () Bool)

(assert start!20262)

(declare-fun b_free!4909 () Bool)

(declare-fun b_next!4909 () Bool)

(assert (=> start!20262 (= b_free!4909 (not b_next!4909))))

(declare-fun tp!17758 () Bool)

(declare-fun b_and!11673 () Bool)

(assert (=> start!20262 (= tp!17758 b_and!11673)))

(declare-fun b!199140 () Bool)

(declare-fun res!94606 () Bool)

(declare-fun e!130777 () Bool)

(assert (=> b!199140 (=> (not res!94606) (not e!130777))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8770 0))(
  ( (array!8771 (arr!4135 (Array (_ BitVec 32) (_ BitVec 64))) (size!4460 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8770)

(assert (=> b!199140 (= res!94606 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4460 _keys!825))))))

(declare-fun b!199141 () Bool)

(declare-fun e!130778 () Bool)

(declare-fun tp_is_empty!4765 () Bool)

(assert (=> b!199141 (= e!130778 tp_is_empty!4765)))

(declare-fun b!199142 () Bool)

(declare-fun e!130779 () Bool)

(declare-fun e!130780 () Bool)

(declare-fun mapRes!8216 () Bool)

(assert (=> b!199142 (= e!130779 (and e!130780 mapRes!8216))))

(declare-fun condMapEmpty!8216 () Bool)

(declare-datatypes ((V!6001 0))(
  ( (V!6002 (val!2427 Int)) )
))
(declare-datatypes ((ValueCell!2039 0))(
  ( (ValueCellFull!2039 (v!4393 V!6001)) (EmptyCell!2039) )
))
(declare-datatypes ((array!8772 0))(
  ( (array!8773 (arr!4136 (Array (_ BitVec 32) ValueCell!2039)) (size!4461 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8772)

(declare-fun mapDefault!8216 () ValueCell!2039)

