; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20472 () Bool)

(assert start!20472)

(declare-fun b_free!5119 () Bool)

(declare-fun b_next!5119 () Bool)

(assert (=> start!20472 (= b_free!5119 (not b_next!5119))))

(declare-fun tp!18389 () Bool)

(declare-fun b_and!11883 () Bool)

(assert (=> start!20472 (= tp!18389 b_and!11883)))

(declare-fun b!202735 () Bool)

(declare-fun res!97254 () Bool)

(declare-fun e!132780 () Bool)

(assert (=> b!202735 (=> (not res!97254) (not e!132780))))

(declare-datatypes ((array!9174 0))(
  ( (array!9175 (arr!4337 (Array (_ BitVec 32) (_ BitVec 64))) (size!4662 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9174)

(declare-datatypes ((List!2765 0))(
  ( (Nil!2762) (Cons!2761 (h!3403 (_ BitVec 64)) (t!7704 List!2765)) )
))
(declare-fun arrayNoDuplicates!0 (array!9174 (_ BitVec 32) List!2765) Bool)

(assert (=> b!202735 (= res!97254 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2762))))

(declare-fun b!202736 () Bool)

(declare-fun e!132784 () Bool)

(declare-fun e!132782 () Bool)

(declare-fun mapRes!8531 () Bool)

(assert (=> b!202736 (= e!132784 (and e!132782 mapRes!8531))))

(declare-fun condMapEmpty!8531 () Bool)

(declare-datatypes ((V!6281 0))(
  ( (V!6282 (val!2532 Int)) )
))
(declare-datatypes ((ValueCell!2144 0))(
  ( (ValueCellFull!2144 (v!4498 V!6281)) (EmptyCell!2144) )
))
(declare-datatypes ((array!9176 0))(
  ( (array!9177 (arr!4338 (Array (_ BitVec 32) ValueCell!2144)) (size!4663 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9176)

(declare-fun mapDefault!8531 () ValueCell!2144)

