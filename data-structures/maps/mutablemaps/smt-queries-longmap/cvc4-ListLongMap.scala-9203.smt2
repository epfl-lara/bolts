; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110606 () Bool)

(assert start!110606)

(declare-fun b_free!29405 () Bool)

(declare-fun b_next!29405 () Bool)

(assert (=> start!110606 (= b_free!29405 (not b_next!29405))))

(declare-fun tp!103538 () Bool)

(declare-fun b_and!47623 () Bool)

(assert (=> start!110606 (= tp!103538 b_and!47623)))

(declare-fun b!1307966 () Bool)

(declare-fun e!746375 () Bool)

(declare-fun e!746374 () Bool)

(declare-fun mapRes!54331 () Bool)

(assert (=> b!1307966 (= e!746375 (and e!746374 mapRes!54331))))

(declare-fun condMapEmpty!54331 () Bool)

(declare-datatypes ((V!51949 0))(
  ( (V!51950 (val!17642 Int)) )
))
(declare-datatypes ((ValueCell!16669 0))(
  ( (ValueCellFull!16669 (v!20267 V!51949)) (EmptyCell!16669) )
))
(declare-datatypes ((array!87241 0))(
  ( (array!87242 (arr!42096 (Array (_ BitVec 32) ValueCell!16669)) (size!42647 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87241)

(declare-fun mapDefault!54331 () ValueCell!16669)

