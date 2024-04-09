; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70624 () Bool)

(assert start!70624)

(declare-fun b_free!12907 () Bool)

(declare-fun b_next!12907 () Bool)

(assert (=> start!70624 (= b_free!12907 (not b_next!12907))))

(declare-fun tp!45457 () Bool)

(declare-fun b_and!21767 () Bool)

(assert (=> start!70624 (= tp!45457 b_and!21767)))

(declare-fun b!820039 () Bool)

(declare-fun e!455585 () Bool)

(declare-fun e!455589 () Bool)

(declare-fun mapRes!23527 () Bool)

(assert (=> b!820039 (= e!455585 (and e!455589 mapRes!23527))))

(declare-fun condMapEmpty!23527 () Bool)

(declare-datatypes ((V!24491 0))(
  ( (V!24492 (val!7356 Int)) )
))
(declare-datatypes ((ValueCell!6893 0))(
  ( (ValueCellFull!6893 (v!9782 V!24491)) (EmptyCell!6893) )
))
(declare-datatypes ((array!45396 0))(
  ( (array!45397 (arr!21747 (Array (_ BitVec 32) ValueCell!6893)) (size!22168 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45396)

(declare-fun mapDefault!23527 () ValueCell!6893)

