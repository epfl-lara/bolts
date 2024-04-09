; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34184 () Bool)

(assert start!34184)

(declare-fun b_free!7199 () Bool)

(declare-fun b_next!7199 () Bool)

(assert (=> start!34184 (= b_free!7199 (not b_next!7199))))

(declare-fun tp!25130 () Bool)

(declare-fun b_and!14417 () Bool)

(assert (=> start!34184 (= tp!25130 b_and!14417)))

(declare-fun mapIsEmpty!12153 () Bool)

(declare-fun mapRes!12153 () Bool)

(assert (=> mapIsEmpty!12153 mapRes!12153))

(declare-fun b!340424 () Bool)

(declare-fun e!208844 () Bool)

(declare-fun e!208840 () Bool)

(assert (=> b!340424 (= e!208844 (and e!208840 mapRes!12153))))

(declare-fun condMapEmpty!12153 () Bool)

(declare-datatypes ((V!10511 0))(
  ( (V!10512 (val!3620 Int)) )
))
(declare-datatypes ((ValueCell!3232 0))(
  ( (ValueCellFull!3232 (v!5788 V!10511)) (EmptyCell!3232) )
))
(declare-datatypes ((array!17873 0))(
  ( (array!17874 (arr!8454 (Array (_ BitVec 32) ValueCell!3232)) (size!8806 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17873)

(declare-fun mapDefault!12153 () ValueCell!3232)

