; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110728 () Bool)

(assert start!110728)

(declare-fun b_free!29527 () Bool)

(declare-fun b_next!29527 () Bool)

(assert (=> start!110728 (= b_free!29527 (not b_next!29527))))

(declare-fun tp!103904 () Bool)

(declare-fun b_and!47745 () Bool)

(assert (=> start!110728 (= tp!103904 b_and!47745)))

(declare-fun b!1309730 () Bool)

(declare-fun e!747288 () Bool)

(declare-fun e!747289 () Bool)

(declare-fun mapRes!54514 () Bool)

(assert (=> b!1309730 (= e!747288 (and e!747289 mapRes!54514))))

(declare-fun condMapEmpty!54514 () Bool)

(declare-datatypes ((V!52113 0))(
  ( (V!52114 (val!17703 Int)) )
))
(declare-datatypes ((ValueCell!16730 0))(
  ( (ValueCellFull!16730 (v!20328 V!52113)) (EmptyCell!16730) )
))
(declare-datatypes ((array!87471 0))(
  ( (array!87472 (arr!42211 (Array (_ BitVec 32) ValueCell!16730)) (size!42762 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87471)

(declare-fun mapDefault!54514 () ValueCell!16730)

