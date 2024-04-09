; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111046 () Bool)

(assert start!111046)

(declare-fun b_free!29845 () Bool)

(declare-fun b_next!29845 () Bool)

(assert (=> start!111046 (= b_free!29845 (not b_next!29845))))

(declare-fun tp!104858 () Bool)

(declare-fun b_and!48063 () Bool)

(assert (=> start!111046 (= tp!104858 b_and!48063)))

(declare-fun b!1314213 () Bool)

(declare-fun e!749675 () Bool)

(declare-fun e!749673 () Bool)

(declare-fun mapRes!54991 () Bool)

(assert (=> b!1314213 (= e!749675 (and e!749673 mapRes!54991))))

(declare-fun condMapEmpty!54991 () Bool)

(declare-datatypes ((V!52537 0))(
  ( (V!52538 (val!17862 Int)) )
))
(declare-datatypes ((ValueCell!16889 0))(
  ( (ValueCellFull!16889 (v!20487 V!52537)) (EmptyCell!16889) )
))
(declare-datatypes ((array!88087 0))(
  ( (array!88088 (arr!42519 (Array (_ BitVec 32) ValueCell!16889)) (size!43070 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88087)

(declare-fun mapDefault!54991 () ValueCell!16889)

