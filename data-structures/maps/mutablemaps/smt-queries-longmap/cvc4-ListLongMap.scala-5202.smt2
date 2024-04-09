; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70254 () Bool)

(assert start!70254)

(declare-fun b_free!12623 () Bool)

(declare-fun b_next!12623 () Bool)

(assert (=> start!70254 (= b_free!12623 (not b_next!12623))))

(declare-fun tp!44590 () Bool)

(declare-fun b_and!21429 () Bool)

(assert (=> start!70254 (= tp!44590 b_and!21429)))

(declare-fun mapIsEmpty!23086 () Bool)

(declare-fun mapRes!23086 () Bool)

(assert (=> mapIsEmpty!23086 mapRes!23086))

(declare-fun b!815760 () Bool)

(declare-fun e!452460 () Bool)

(declare-fun e!452462 () Bool)

(assert (=> b!815760 (= e!452460 (and e!452462 mapRes!23086))))

(declare-fun condMapEmpty!23086 () Bool)

(declare-datatypes ((V!24111 0))(
  ( (V!24112 (val!7214 Int)) )
))
(declare-datatypes ((ValueCell!6751 0))(
  ( (ValueCellFull!6751 (v!9637 V!24111)) (EmptyCell!6751) )
))
(declare-datatypes ((array!44850 0))(
  ( (array!44851 (arr!21479 (Array (_ BitVec 32) ValueCell!6751)) (size!21900 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44850)

(declare-fun mapDefault!23086 () ValueCell!6751)

