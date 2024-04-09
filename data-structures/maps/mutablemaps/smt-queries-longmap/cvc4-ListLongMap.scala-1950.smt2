; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34458 () Bool)

(assert start!34458)

(declare-fun b_free!7373 () Bool)

(declare-fun b_next!7373 () Bool)

(assert (=> start!34458 (= b_free!7373 (not b_next!7373))))

(declare-fun tp!25665 () Bool)

(declare-fun b_and!14599 () Bool)

(assert (=> start!34458 (= tp!25665 b_and!14599)))

(declare-fun b!343880 () Bool)

(declare-fun e!210840 () Bool)

(declare-fun tp_is_empty!7325 () Bool)

(assert (=> b!343880 (= e!210840 tp_is_empty!7325)))

(declare-fun b!343881 () Bool)

(declare-fun e!210841 () Bool)

(declare-fun mapRes!12426 () Bool)

(assert (=> b!343881 (= e!210841 (and e!210840 mapRes!12426))))

(declare-fun condMapEmpty!12426 () Bool)

(declare-datatypes ((V!10743 0))(
  ( (V!10744 (val!3707 Int)) )
))
(declare-datatypes ((ValueCell!3319 0))(
  ( (ValueCellFull!3319 (v!5879 V!10743)) (EmptyCell!3319) )
))
(declare-datatypes ((array!18211 0))(
  ( (array!18212 (arr!8619 (Array (_ BitVec 32) ValueCell!3319)) (size!8971 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18211)

(declare-fun mapDefault!12426 () ValueCell!3319)

