; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70718 () Bool)

(assert start!70718)

(declare-fun b_free!12967 () Bool)

(declare-fun b_next!12967 () Bool)

(assert (=> start!70718 (= b_free!12967 (not b_next!12967))))

(declare-fun tp!45642 () Bool)

(declare-fun b_and!21847 () Bool)

(assert (=> start!70718 (= tp!45642 b_and!21847)))

(declare-fun b!820962 () Bool)

(declare-fun e!456232 () Bool)

(declare-fun e!456231 () Bool)

(declare-fun mapRes!23623 () Bool)

(assert (=> b!820962 (= e!456232 (and e!456231 mapRes!23623))))

(declare-fun condMapEmpty!23623 () Bool)

(declare-datatypes ((V!24571 0))(
  ( (V!24572 (val!7386 Int)) )
))
(declare-datatypes ((ValueCell!6923 0))(
  ( (ValueCellFull!6923 (v!9813 V!24571)) (EmptyCell!6923) )
))
(declare-datatypes ((array!45514 0))(
  ( (array!45515 (arr!21804 (Array (_ BitVec 32) ValueCell!6923)) (size!22225 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45514)

(declare-fun mapDefault!23623 () ValueCell!6923)

