; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110632 () Bool)

(assert start!110632)

(declare-fun b_free!29431 () Bool)

(declare-fun b_next!29431 () Bool)

(assert (=> start!110632 (= b_free!29431 (not b_next!29431))))

(declare-fun tp!103615 () Bool)

(declare-fun b_and!47649 () Bool)

(assert (=> start!110632 (= tp!103615 b_and!47649)))

(declare-fun b!1308434 () Bool)

(declare-fun e!746569 () Bool)

(declare-fun e!746568 () Bool)

(declare-fun mapRes!54370 () Bool)

(assert (=> b!1308434 (= e!746569 (and e!746568 mapRes!54370))))

(declare-fun condMapEmpty!54370 () Bool)

(declare-datatypes ((V!51985 0))(
  ( (V!51986 (val!17655 Int)) )
))
(declare-datatypes ((ValueCell!16682 0))(
  ( (ValueCellFull!16682 (v!20280 V!51985)) (EmptyCell!16682) )
))
(declare-datatypes ((array!87289 0))(
  ( (array!87290 (arr!42120 (Array (_ BitVec 32) ValueCell!16682)) (size!42671 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87289)

(declare-fun mapDefault!54370 () ValueCell!16682)

