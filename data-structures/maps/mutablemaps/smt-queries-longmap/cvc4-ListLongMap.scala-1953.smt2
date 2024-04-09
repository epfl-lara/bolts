; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34476 () Bool)

(assert start!34476)

(declare-fun b_free!7391 () Bool)

(declare-fun b_next!7391 () Bool)

(assert (=> start!34476 (= b_free!7391 (not b_next!7391))))

(declare-fun tp!25719 () Bool)

(declare-fun b_and!14617 () Bool)

(assert (=> start!34476 (= tp!25719 b_and!14617)))

(declare-fun res!190366 () Bool)

(declare-fun e!210977 () Bool)

(assert (=> start!34476 (=> (not res!190366) (not e!210977))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34476 (= res!190366 (validMask!0 mask!2385))))

(assert (=> start!34476 e!210977))

(assert (=> start!34476 true))

(declare-fun tp_is_empty!7343 () Bool)

(assert (=> start!34476 tp_is_empty!7343))

(assert (=> start!34476 tp!25719))

(declare-datatypes ((V!10767 0))(
  ( (V!10768 (val!3716 Int)) )
))
(declare-datatypes ((ValueCell!3328 0))(
  ( (ValueCellFull!3328 (v!5888 V!10767)) (EmptyCell!3328) )
))
(declare-datatypes ((array!18243 0))(
  ( (array!18244 (arr!8635 (Array (_ BitVec 32) ValueCell!3328)) (size!8987 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18243)

(declare-fun e!210978 () Bool)

(declare-fun array_inv!6388 (array!18243) Bool)

(assert (=> start!34476 (and (array_inv!6388 _values!1525) e!210978)))

(declare-datatypes ((array!18245 0))(
  ( (array!18246 (arr!8636 (Array (_ BitVec 32) (_ BitVec 64))) (size!8988 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18245)

(declare-fun array_inv!6389 (array!18245) Bool)

(assert (=> start!34476 (array_inv!6389 _keys!1895)))

(declare-fun b!344123 () Bool)

(declare-fun e!210975 () Bool)

(declare-fun mapRes!12453 () Bool)

(assert (=> b!344123 (= e!210978 (and e!210975 mapRes!12453))))

(declare-fun condMapEmpty!12453 () Bool)

(declare-fun mapDefault!12453 () ValueCell!3328)

