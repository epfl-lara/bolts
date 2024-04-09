; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34454 () Bool)

(assert start!34454)

(declare-fun b_free!7369 () Bool)

(declare-fun b_next!7369 () Bool)

(assert (=> start!34454 (= b_free!7369 (not b_next!7369))))

(declare-fun tp!25652 () Bool)

(declare-fun b_and!14595 () Bool)

(assert (=> start!34454 (= tp!25652 b_and!14595)))

(declare-fun mapIsEmpty!12420 () Bool)

(declare-fun mapRes!12420 () Bool)

(assert (=> mapIsEmpty!12420 mapRes!12420))

(declare-fun b!343826 () Bool)

(declare-fun res!190172 () Bool)

(declare-fun e!210810 () Bool)

(assert (=> b!343826 (=> (not res!190172) (not e!210810))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343826 (= res!190172 (validKeyInArray!0 k!1348))))

(declare-fun res!190167 () Bool)

(assert (=> start!34454 (=> (not res!190167) (not e!210810))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34454 (= res!190167 (validMask!0 mask!2385))))

(assert (=> start!34454 e!210810))

(assert (=> start!34454 true))

(declare-fun tp_is_empty!7321 () Bool)

(assert (=> start!34454 tp_is_empty!7321))

(assert (=> start!34454 tp!25652))

(declare-datatypes ((V!10739 0))(
  ( (V!10740 (val!3705 Int)) )
))
(declare-datatypes ((ValueCell!3317 0))(
  ( (ValueCellFull!3317 (v!5877 V!10739)) (EmptyCell!3317) )
))
(declare-datatypes ((array!18203 0))(
  ( (array!18204 (arr!8615 (Array (_ BitVec 32) ValueCell!3317)) (size!8967 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18203)

(declare-fun e!210812 () Bool)

(declare-fun array_inv!6374 (array!18203) Bool)

(assert (=> start!34454 (and (array_inv!6374 _values!1525) e!210812)))

(declare-datatypes ((array!18205 0))(
  ( (array!18206 (arr!8616 (Array (_ BitVec 32) (_ BitVec 64))) (size!8968 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18205)

(declare-fun array_inv!6375 (array!18205) Bool)

(assert (=> start!34454 (array_inv!6375 _keys!1895)))

(declare-fun b!343827 () Bool)

(declare-fun e!210811 () Bool)

(assert (=> b!343827 (= e!210811 tp_is_empty!7321)))

(declare-fun b!343828 () Bool)

(assert (=> b!343828 (= e!210812 (and e!210811 mapRes!12420))))

(declare-fun condMapEmpty!12420 () Bool)

(declare-fun mapDefault!12420 () ValueCell!3317)

