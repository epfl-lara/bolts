; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70582 () Bool)

(assert start!70582)

(declare-fun b_free!12865 () Bool)

(declare-fun b_next!12865 () Bool)

(assert (=> start!70582 (= b_free!12865 (not b_next!12865))))

(declare-fun tp!45331 () Bool)

(declare-fun b_and!21725 () Bool)

(assert (=> start!70582 (= tp!45331 b_and!21725)))

(declare-fun b!819470 () Bool)

(declare-fun e!455141 () Bool)

(declare-fun e!455147 () Bool)

(declare-fun mapRes!23464 () Bool)

(assert (=> b!819470 (= e!455141 (and e!455147 mapRes!23464))))

(declare-fun condMapEmpty!23464 () Bool)

(declare-datatypes ((V!24435 0))(
  ( (V!24436 (val!7335 Int)) )
))
(declare-datatypes ((ValueCell!6872 0))(
  ( (ValueCellFull!6872 (v!9761 V!24435)) (EmptyCell!6872) )
))
(declare-datatypes ((array!45320 0))(
  ( (array!45321 (arr!21709 (Array (_ BitVec 32) ValueCell!6872)) (size!22130 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45320)

(declare-fun mapDefault!23464 () ValueCell!6872)

