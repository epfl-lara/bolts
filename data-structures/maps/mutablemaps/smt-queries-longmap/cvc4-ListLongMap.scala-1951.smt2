; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34464 () Bool)

(assert start!34464)

(declare-fun b_free!7379 () Bool)

(declare-fun b_next!7379 () Bool)

(assert (=> start!34464 (= b_free!7379 (not b_next!7379))))

(declare-fun tp!25682 () Bool)

(declare-fun b_and!14605 () Bool)

(assert (=> start!34464 (= tp!25682 b_and!14605)))

(declare-fun b!343961 () Bool)

(declare-fun e!210888 () Bool)

(declare-fun e!210885 () Bool)

(declare-fun mapRes!12435 () Bool)

(assert (=> b!343961 (= e!210888 (and e!210885 mapRes!12435))))

(declare-fun condMapEmpty!12435 () Bool)

(declare-datatypes ((V!10751 0))(
  ( (V!10752 (val!3710 Int)) )
))
(declare-datatypes ((ValueCell!3322 0))(
  ( (ValueCellFull!3322 (v!5882 V!10751)) (EmptyCell!3322) )
))
(declare-datatypes ((array!18221 0))(
  ( (array!18222 (arr!8624 (Array (_ BitVec 32) ValueCell!3322)) (size!8976 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18221)

(declare-fun mapDefault!12435 () ValueCell!3322)

