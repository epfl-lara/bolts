; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110588 () Bool)

(assert start!110588)

(declare-fun b_free!29387 () Bool)

(declare-fun b_next!29387 () Bool)

(assert (=> start!110588 (= b_free!29387 (not b_next!29387))))

(declare-fun tp!103483 () Bool)

(declare-fun b_and!47605 () Bool)

(assert (=> start!110588 (= tp!103483 b_and!47605)))

(declare-fun b!1307682 () Bool)

(declare-fun e!746236 () Bool)

(declare-fun tp_is_empty!35117 () Bool)

(assert (=> b!1307682 (= e!746236 tp_is_empty!35117)))

(declare-fun b!1307683 () Bool)

(declare-fun e!746239 () Bool)

(declare-fun mapRes!54304 () Bool)

(assert (=> b!1307683 (= e!746239 (and e!746236 mapRes!54304))))

(declare-fun condMapEmpty!54304 () Bool)

(declare-datatypes ((V!51925 0))(
  ( (V!51926 (val!17633 Int)) )
))
(declare-datatypes ((ValueCell!16660 0))(
  ( (ValueCellFull!16660 (v!20258 V!51925)) (EmptyCell!16660) )
))
(declare-datatypes ((array!87207 0))(
  ( (array!87208 (arr!42079 (Array (_ BitVec 32) ValueCell!16660)) (size!42630 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87207)

(declare-fun mapDefault!54304 () ValueCell!16660)

