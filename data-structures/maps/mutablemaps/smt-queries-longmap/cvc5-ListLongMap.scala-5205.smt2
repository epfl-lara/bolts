; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70268 () Bool)

(assert start!70268)

(declare-fun b_free!12637 () Bool)

(declare-fun b_next!12637 () Bool)

(assert (=> start!70268 (= b_free!12637 (not b_next!12637))))

(declare-fun tp!44631 () Bool)

(declare-fun b_and!21443 () Bool)

(assert (=> start!70268 (= tp!44631 b_and!21443)))

(declare-fun b!815930 () Bool)

(declare-fun e!452588 () Bool)

(declare-fun e!452586 () Bool)

(declare-fun mapRes!23107 () Bool)

(assert (=> b!815930 (= e!452588 (and e!452586 mapRes!23107))))

(declare-fun condMapEmpty!23107 () Bool)

(declare-datatypes ((V!24131 0))(
  ( (V!24132 (val!7221 Int)) )
))
(declare-datatypes ((ValueCell!6758 0))(
  ( (ValueCellFull!6758 (v!9644 V!24131)) (EmptyCell!6758) )
))
(declare-datatypes ((array!44876 0))(
  ( (array!44877 (arr!21492 (Array (_ BitVec 32) ValueCell!6758)) (size!21913 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44876)

(declare-fun mapDefault!23107 () ValueCell!6758)

