; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70770 () Bool)

(assert start!70770)

(declare-fun b_free!13019 () Bool)

(declare-fun b_next!13019 () Bool)

(assert (=> start!70770 (= b_free!13019 (not b_next!13019))))

(declare-fun tp!45798 () Bool)

(declare-fun b_and!21899 () Bool)

(assert (=> start!70770 (= tp!45798 b_and!21899)))

(declare-fun b!821586 () Bool)

(declare-fun e!456699 () Bool)

(declare-fun e!456695 () Bool)

(declare-fun mapRes!23701 () Bool)

(assert (=> b!821586 (= e!456699 (and e!456695 mapRes!23701))))

(declare-fun condMapEmpty!23701 () Bool)

(declare-datatypes ((V!24639 0))(
  ( (V!24640 (val!7412 Int)) )
))
(declare-datatypes ((ValueCell!6949 0))(
  ( (ValueCellFull!6949 (v!9839 V!24639)) (EmptyCell!6949) )
))
(declare-datatypes ((array!45612 0))(
  ( (array!45613 (arr!21853 (Array (_ BitVec 32) ValueCell!6949)) (size!22274 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45612)

(declare-fun mapDefault!23701 () ValueCell!6949)

