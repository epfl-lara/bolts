; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110542 () Bool)

(assert start!110542)

(declare-fun b_free!29341 () Bool)

(declare-fun b_next!29341 () Bool)

(assert (=> start!110542 (= b_free!29341 (not b_next!29341))))

(declare-fun tp!103345 () Bool)

(declare-fun b_and!47559 () Bool)

(assert (=> start!110542 (= tp!103345 b_and!47559)))

(declare-fun mapIsEmpty!54235 () Bool)

(declare-fun mapRes!54235 () Bool)

(assert (=> mapIsEmpty!54235 mapRes!54235))

(declare-fun b!1307130 () Bool)

(declare-fun e!745891 () Bool)

(declare-fun e!745894 () Bool)

(assert (=> b!1307130 (= e!745891 (and e!745894 mapRes!54235))))

(declare-fun condMapEmpty!54235 () Bool)

(declare-datatypes ((V!51865 0))(
  ( (V!51866 (val!17610 Int)) )
))
(declare-datatypes ((ValueCell!16637 0))(
  ( (ValueCellFull!16637 (v!20235 V!51865)) (EmptyCell!16637) )
))
(declare-datatypes ((array!87119 0))(
  ( (array!87120 (arr!42035 (Array (_ BitVec 32) ValueCell!16637)) (size!42586 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87119)

(declare-fun mapDefault!54235 () ValueCell!16637)

