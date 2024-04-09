; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34098 () Bool)

(assert start!34098)

(declare-fun b_free!7169 () Bool)

(declare-fun b_next!7169 () Bool)

(assert (=> start!34098 (= b_free!7169 (not b_next!7169))))

(declare-fun tp!25031 () Bool)

(declare-fun b_and!14381 () Bool)

(assert (=> start!34098 (= tp!25031 b_and!14381)))

(declare-fun res!187656 () Bool)

(declare-fun e!208341 () Bool)

(assert (=> start!34098 (=> (not res!187656) (not e!208341))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34098 (= res!187656 (validMask!0 mask!2385))))

(assert (=> start!34098 e!208341))

(assert (=> start!34098 true))

(declare-fun tp_is_empty!7121 () Bool)

(assert (=> start!34098 tp_is_empty!7121))

(assert (=> start!34098 tp!25031))

(declare-datatypes ((V!10471 0))(
  ( (V!10472 (val!3605 Int)) )
))
(declare-datatypes ((ValueCell!3217 0))(
  ( (ValueCellFull!3217 (v!5770 V!10471)) (EmptyCell!3217) )
))
(declare-datatypes ((array!17811 0))(
  ( (array!17812 (arr!8426 (Array (_ BitVec 32) ValueCell!3217)) (size!8778 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17811)

(declare-fun e!208342 () Bool)

(declare-fun array_inv!6236 (array!17811) Bool)

(assert (=> start!34098 (and (array_inv!6236 _values!1525) e!208342)))

(declare-datatypes ((array!17813 0))(
  ( (array!17814 (arr!8427 (Array (_ BitVec 32) (_ BitVec 64))) (size!8779 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17813)

(declare-fun array_inv!6237 (array!17813) Bool)

(assert (=> start!34098 (array_inv!6237 _keys!1895)))

(declare-fun b!339580 () Bool)

(declare-fun e!208340 () Bool)

(declare-fun mapRes!12099 () Bool)

(assert (=> b!339580 (= e!208342 (and e!208340 mapRes!12099))))

(declare-fun condMapEmpty!12099 () Bool)

(declare-fun mapDefault!12099 () ValueCell!3217)

