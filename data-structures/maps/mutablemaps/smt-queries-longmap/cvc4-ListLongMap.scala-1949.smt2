; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34452 () Bool)

(assert start!34452)

(declare-fun b_free!7367 () Bool)

(declare-fun b_next!7367 () Bool)

(assert (=> start!34452 (= b_free!7367 (not b_next!7367))))

(declare-fun tp!25647 () Bool)

(declare-fun b_and!14593 () Bool)

(assert (=> start!34452 (= tp!25647 b_and!14593)))

(declare-fun mapIsEmpty!12417 () Bool)

(declare-fun mapRes!12417 () Bool)

(assert (=> mapIsEmpty!12417 mapRes!12417))

(declare-fun b!343799 () Bool)

(declare-fun e!210797 () Bool)

(declare-fun e!210798 () Bool)

(assert (=> b!343799 (= e!210797 (and e!210798 mapRes!12417))))

(declare-fun condMapEmpty!12417 () Bool)

(declare-datatypes ((V!10735 0))(
  ( (V!10736 (val!3704 Int)) )
))
(declare-datatypes ((ValueCell!3316 0))(
  ( (ValueCellFull!3316 (v!5876 V!10735)) (EmptyCell!3316) )
))
(declare-datatypes ((array!18201 0))(
  ( (array!18202 (arr!8614 (Array (_ BitVec 32) ValueCell!3316)) (size!8966 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18201)

(declare-fun mapDefault!12417 () ValueCell!3316)

