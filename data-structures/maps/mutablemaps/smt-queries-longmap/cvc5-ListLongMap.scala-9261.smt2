; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110950 () Bool)

(assert start!110950)

(declare-fun b_free!29749 () Bool)

(declare-fun b_next!29749 () Bool)

(assert (=> start!110950 (= b_free!29749 (not b_next!29749))))

(declare-fun tp!104570 () Bool)

(declare-fun b_and!47967 () Bool)

(assert (=> start!110950 (= tp!104570 b_and!47967)))

(declare-fun b!1313004 () Bool)

(declare-fun e!748951 () Bool)

(declare-fun e!748953 () Bool)

(declare-fun mapRes!54847 () Bool)

(assert (=> b!1313004 (= e!748951 (and e!748953 mapRes!54847))))

(declare-fun condMapEmpty!54847 () Bool)

(declare-datatypes ((V!52409 0))(
  ( (V!52410 (val!17814 Int)) )
))
(declare-datatypes ((ValueCell!16841 0))(
  ( (ValueCellFull!16841 (v!20439 V!52409)) (EmptyCell!16841) )
))
(declare-datatypes ((array!87907 0))(
  ( (array!87908 (arr!42429 (Array (_ BitVec 32) ValueCell!16841)) (size!42980 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87907)

(declare-fun mapDefault!54847 () ValueCell!16841)

