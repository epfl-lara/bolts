; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72384 () Bool)

(assert start!72384)

(declare-fun b_free!13541 () Bool)

(declare-fun b_next!13541 () Bool)

(assert (=> start!72384 (= b_free!13541 (not b_next!13541))))

(declare-fun tp!47722 () Bool)

(declare-fun b_and!22645 () Bool)

(assert (=> start!72384 (= tp!47722 b_and!22645)))

(declare-fun b!838211 () Bool)

(declare-fun e!467929 () Bool)

(declare-fun e!467931 () Bool)

(declare-fun mapRes!24710 () Bool)

(assert (=> b!838211 (= e!467929 (and e!467931 mapRes!24710))))

(declare-fun condMapEmpty!24710 () Bool)

(declare-datatypes ((V!25589 0))(
  ( (V!25590 (val!7751 Int)) )
))
(declare-datatypes ((ValueCell!7264 0))(
  ( (ValueCellFull!7264 (v!10172 V!25589)) (EmptyCell!7264) )
))
(declare-datatypes ((array!47068 0))(
  ( (array!47069 (arr!22561 (Array (_ BitVec 32) ValueCell!7264)) (size!23002 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47068)

(declare-fun mapDefault!24710 () ValueCell!7264)

