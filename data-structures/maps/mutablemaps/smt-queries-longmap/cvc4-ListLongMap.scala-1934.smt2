; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34310 () Bool)

(assert start!34310)

(declare-fun b_free!7277 () Bool)

(declare-fun b_next!7277 () Bool)

(assert (=> start!34310 (= b_free!7277 (not b_next!7277))))

(declare-fun tp!25370 () Bool)

(declare-fun b_and!14499 () Bool)

(assert (=> start!34310 (= tp!25370 b_and!14499)))

(declare-fun b!342024 () Bool)

(declare-fun e!209760 () Bool)

(declare-fun e!209761 () Bool)

(declare-fun mapRes!12276 () Bool)

(assert (=> b!342024 (= e!209760 (and e!209761 mapRes!12276))))

(declare-fun condMapEmpty!12276 () Bool)

(declare-datatypes ((V!10615 0))(
  ( (V!10616 (val!3659 Int)) )
))
(declare-datatypes ((ValueCell!3271 0))(
  ( (ValueCellFull!3271 (v!5829 V!10615)) (EmptyCell!3271) )
))
(declare-datatypes ((array!18027 0))(
  ( (array!18028 (arr!8529 (Array (_ BitVec 32) ValueCell!3271)) (size!8881 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18027)

(declare-fun mapDefault!12276 () ValueCell!3271)

