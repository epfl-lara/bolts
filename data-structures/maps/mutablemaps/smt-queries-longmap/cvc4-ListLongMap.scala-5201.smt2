; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70248 () Bool)

(assert start!70248)

(declare-fun b_free!12617 () Bool)

(declare-fun b_next!12617 () Bool)

(assert (=> start!70248 (= b_free!12617 (not b_next!12617))))

(declare-fun tp!44572 () Bool)

(declare-fun b_and!21423 () Bool)

(assert (=> start!70248 (= tp!44572 b_and!21423)))

(declare-fun b!815688 () Bool)

(declare-fun e!452406 () Bool)

(declare-fun e!452405 () Bool)

(declare-fun mapRes!23077 () Bool)

(assert (=> b!815688 (= e!452406 (and e!452405 mapRes!23077))))

(declare-fun condMapEmpty!23077 () Bool)

(declare-datatypes ((V!24103 0))(
  ( (V!24104 (val!7211 Int)) )
))
(declare-datatypes ((ValueCell!6748 0))(
  ( (ValueCellFull!6748 (v!9634 V!24103)) (EmptyCell!6748) )
))
(declare-datatypes ((array!44840 0))(
  ( (array!44841 (arr!21474 (Array (_ BitVec 32) ValueCell!6748)) (size!21895 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44840)

(declare-fun mapDefault!23077 () ValueCell!6748)

