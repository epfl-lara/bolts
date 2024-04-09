; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71020 () Bool)

(assert start!71020)

(declare-fun b_free!13199 () Bool)

(declare-fun b_next!13199 () Bool)

(assert (=> start!71020 (= b_free!13199 (not b_next!13199))))

(declare-fun tp!46351 () Bool)

(declare-fun b_and!22121 () Bool)

(assert (=> start!71020 (= tp!46351 b_and!22121)))

(declare-fun b!824269 () Bool)

(declare-fun e!458620 () Bool)

(declare-fun e!458622 () Bool)

(declare-fun mapRes!23983 () Bool)

(assert (=> b!824269 (= e!458620 (and e!458622 mapRes!23983))))

(declare-fun condMapEmpty!23983 () Bool)

(declare-datatypes ((V!24879 0))(
  ( (V!24880 (val!7502 Int)) )
))
(declare-datatypes ((ValueCell!7039 0))(
  ( (ValueCellFull!7039 (v!9931 V!24879)) (EmptyCell!7039) )
))
(declare-datatypes ((array!45966 0))(
  ( (array!45967 (arr!22026 (Array (_ BitVec 32) ValueCell!7039)) (size!22447 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45966)

(declare-fun mapDefault!23983 () ValueCell!7039)

