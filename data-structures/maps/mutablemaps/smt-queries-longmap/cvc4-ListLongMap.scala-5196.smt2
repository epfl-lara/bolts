; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70204 () Bool)

(assert start!70204)

(declare-fun b_free!12587 () Bool)

(declare-fun b_next!12587 () Bool)

(assert (=> start!70204 (= b_free!12587 (not b_next!12587))))

(declare-fun tp!44478 () Bool)

(declare-fun b_and!21385 () Bool)

(assert (=> start!70204 (= tp!44478 b_and!21385)))

(declare-fun mapIsEmpty!23029 () Bool)

(declare-fun mapRes!23029 () Bool)

(assert (=> mapIsEmpty!23029 mapRes!23029))

(declare-fun b!815244 () Bool)

(declare-fun e!452081 () Bool)

(declare-fun e!452082 () Bool)

(assert (=> b!815244 (= e!452081 (and e!452082 mapRes!23029))))

(declare-fun condMapEmpty!23029 () Bool)

(declare-datatypes ((V!24063 0))(
  ( (V!24064 (val!7196 Int)) )
))
(declare-datatypes ((ValueCell!6733 0))(
  ( (ValueCellFull!6733 (v!9619 V!24063)) (EmptyCell!6733) )
))
(declare-datatypes ((array!44782 0))(
  ( (array!44783 (arr!21446 (Array (_ BitVec 32) ValueCell!6733)) (size!21867 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44782)

(declare-fun mapDefault!23029 () ValueCell!6733)

