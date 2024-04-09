; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110918 () Bool)

(assert start!110918)

(declare-fun b_free!29717 () Bool)

(declare-fun b_next!29717 () Bool)

(assert (=> start!110918 (= b_free!29717 (not b_next!29717))))

(declare-fun tp!104473 () Bool)

(declare-fun b_and!47935 () Bool)

(assert (=> start!110918 (= tp!104473 b_and!47935)))

(declare-fun b!1312614 () Bool)

(declare-fun e!748714 () Bool)

(declare-fun e!748712 () Bool)

(declare-fun mapRes!54799 () Bool)

(assert (=> b!1312614 (= e!748714 (and e!748712 mapRes!54799))))

(declare-fun condMapEmpty!54799 () Bool)

(declare-datatypes ((V!52365 0))(
  ( (V!52366 (val!17798 Int)) )
))
(declare-datatypes ((ValueCell!16825 0))(
  ( (ValueCellFull!16825 (v!20423 V!52365)) (EmptyCell!16825) )
))
(declare-datatypes ((array!87845 0))(
  ( (array!87846 (arr!42398 (Array (_ BitVec 32) ValueCell!16825)) (size!42949 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87845)

(declare-fun mapDefault!54799 () ValueCell!16825)

