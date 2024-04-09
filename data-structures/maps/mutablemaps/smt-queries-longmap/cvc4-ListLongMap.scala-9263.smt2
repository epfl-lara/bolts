; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110966 () Bool)

(assert start!110966)

(declare-fun b_free!29765 () Bool)

(declare-fun b_next!29765 () Bool)

(assert (=> start!110966 (= b_free!29765 (not b_next!29765))))

(declare-fun tp!104617 () Bool)

(declare-fun b_and!47983 () Bool)

(assert (=> start!110966 (= tp!104617 b_and!47983)))

(declare-fun b!1313217 () Bool)

(declare-fun e!749074 () Bool)

(declare-fun e!749075 () Bool)

(declare-fun mapRes!54871 () Bool)

(assert (=> b!1313217 (= e!749074 (and e!749075 mapRes!54871))))

(declare-fun condMapEmpty!54871 () Bool)

(declare-datatypes ((V!52429 0))(
  ( (V!52430 (val!17822 Int)) )
))
(declare-datatypes ((ValueCell!16849 0))(
  ( (ValueCellFull!16849 (v!20447 V!52429)) (EmptyCell!16849) )
))
(declare-datatypes ((array!87937 0))(
  ( (array!87938 (arr!42444 (Array (_ BitVec 32) ValueCell!16849)) (size!42995 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87937)

(declare-fun mapDefault!54871 () ValueCell!16849)

