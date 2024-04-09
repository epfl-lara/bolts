; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109698 () Bool)

(assert start!109698)

(declare-fun b_free!29131 () Bool)

(declare-fun b_next!29131 () Bool)

(assert (=> start!109698 (= b_free!29131 (not b_next!29131))))

(declare-fun tp!102515 () Bool)

(declare-fun b_and!47235 () Bool)

(assert (=> start!109698 (= tp!102515 b_and!47235)))

(declare-fun b!1298885 () Bool)

(declare-fun e!741036 () Bool)

(declare-fun e!741039 () Bool)

(declare-fun mapRes!53720 () Bool)

(assert (=> b!1298885 (= e!741036 (and e!741039 mapRes!53720))))

(declare-fun condMapEmpty!53720 () Bool)

(declare-datatypes ((V!51465 0))(
  ( (V!51466 (val!17460 Int)) )
))
(declare-datatypes ((ValueCell!16487 0))(
  ( (ValueCellFull!16487 (v!20062 V!51465)) (EmptyCell!16487) )
))
(declare-datatypes ((array!86513 0))(
  ( (array!86514 (arr!41752 (Array (_ BitVec 32) ValueCell!16487)) (size!42303 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86513)

(declare-fun mapDefault!53720 () ValueCell!16487)

