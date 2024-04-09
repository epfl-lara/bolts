; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20514 () Bool)

(assert start!20514)

(declare-fun b_free!5161 () Bool)

(declare-fun b_next!5161 () Bool)

(assert (=> start!20514 (= b_free!5161 (not b_next!5161))))

(declare-fun tp!18515 () Bool)

(declare-fun b_and!11925 () Bool)

(assert (=> start!20514 (= tp!18515 b_and!11925)))

(declare-fun b!203491 () Bool)

(declare-fun e!133220 () Bool)

(declare-fun tp_is_empty!5017 () Bool)

(assert (=> b!203491 (= e!133220 tp_is_empty!5017)))

(declare-fun b!203492 () Bool)

(declare-fun res!97823 () Bool)

(declare-fun e!133223 () Bool)

(assert (=> b!203492 (=> (not res!97823) (not e!133223))))

(declare-datatypes ((array!9256 0))(
  ( (array!9257 (arr!4378 (Array (_ BitVec 32) (_ BitVec 64))) (size!4703 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9256)

(declare-datatypes ((List!2797 0))(
  ( (Nil!2794) (Cons!2793 (h!3435 (_ BitVec 64)) (t!7736 List!2797)) )
))
(declare-fun arrayNoDuplicates!0 (array!9256 (_ BitVec 32) List!2797) Bool)

(assert (=> b!203492 (= res!97823 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2794))))

(declare-fun mapIsEmpty!8594 () Bool)

(declare-fun mapRes!8594 () Bool)

(assert (=> mapIsEmpty!8594 mapRes!8594))

(declare-fun b!203493 () Bool)

(declare-fun res!97824 () Bool)

(assert (=> b!203493 (=> (not res!97824) (not e!133223))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203493 (= res!97824 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4703 _keys!825))))))

(declare-fun b!203494 () Bool)

(declare-fun e!133224 () Bool)

(assert (=> b!203494 (= e!133224 (and e!133220 mapRes!8594))))

(declare-fun condMapEmpty!8594 () Bool)

(declare-datatypes ((V!6337 0))(
  ( (V!6338 (val!2553 Int)) )
))
(declare-datatypes ((ValueCell!2165 0))(
  ( (ValueCellFull!2165 (v!4519 V!6337)) (EmptyCell!2165) )
))
(declare-datatypes ((array!9258 0))(
  ( (array!9259 (arr!4379 (Array (_ BitVec 32) ValueCell!2165)) (size!4704 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9258)

(declare-fun mapDefault!8594 () ValueCell!2165)

