; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34702 () Bool)

(assert start!34702)

(declare-fun b_free!7501 () Bool)

(declare-fun b_next!7501 () Bool)

(assert (=> start!34702 (= b_free!7501 (not b_next!7501))))

(declare-fun tp!26066 () Bool)

(declare-fun b_and!14739 () Bool)

(assert (=> start!34702 (= tp!26066 b_and!14739)))

(declare-fun b!346479 () Bool)

(declare-fun e!212356 () Bool)

(declare-fun e!212358 () Bool)

(declare-fun mapRes!12636 () Bool)

(assert (=> b!346479 (= e!212356 (and e!212358 mapRes!12636))))

(declare-fun condMapEmpty!12636 () Bool)

(declare-datatypes ((V!10915 0))(
  ( (V!10916 (val!3771 Int)) )
))
(declare-datatypes ((ValueCell!3383 0))(
  ( (ValueCellFull!3383 (v!5949 V!10915)) (EmptyCell!3383) )
))
(declare-datatypes ((array!18465 0))(
  ( (array!18466 (arr!8740 (Array (_ BitVec 32) ValueCell!3383)) (size!9092 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18465)

(declare-fun mapDefault!12636 () ValueCell!3383)

