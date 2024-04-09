; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110822 () Bool)

(assert start!110822)

(declare-fun b_free!29621 () Bool)

(declare-fun b_next!29621 () Bool)

(assert (=> start!110822 (= b_free!29621 (not b_next!29621))))

(declare-fun tp!104186 () Bool)

(declare-fun b_and!47839 () Bool)

(assert (=> start!110822 (= tp!104186 b_and!47839)))

(declare-fun b!1311138 () Bool)

(declare-fun res!870508 () Bool)

(declare-fun e!747993 () Bool)

(assert (=> b!1311138 (=> (not res!870508) (not e!747993))))

(declare-datatypes ((array!87653 0))(
  ( (array!87654 (arr!42302 (Array (_ BitVec 32) (_ BitVec 64))) (size!42853 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87653)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52237 0))(
  ( (V!52238 (val!17750 Int)) )
))
(declare-datatypes ((ValueCell!16777 0))(
  ( (ValueCellFull!16777 (v!20375 V!52237)) (EmptyCell!16777) )
))
(declare-datatypes ((array!87655 0))(
  ( (array!87656 (arr!42303 (Array (_ BitVec 32) ValueCell!16777)) (size!42854 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87655)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311138 (= res!870508 (and (= (size!42854 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42853 _keys!1628) (size!42854 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311139 () Bool)

(declare-fun res!870511 () Bool)

(assert (=> b!1311139 (=> (not res!870511) (not e!747993))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311139 (= res!870511 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42853 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54655 () Bool)

(declare-fun mapRes!54655 () Bool)

(declare-fun tp!104185 () Bool)

(declare-fun e!747994 () Bool)

(assert (=> mapNonEmpty!54655 (= mapRes!54655 (and tp!104185 e!747994))))

(declare-fun mapKey!54655 () (_ BitVec 32))

(declare-fun mapValue!54655 () ValueCell!16777)

(declare-fun mapRest!54655 () (Array (_ BitVec 32) ValueCell!16777))

(assert (=> mapNonEmpty!54655 (= (arr!42303 _values!1354) (store mapRest!54655 mapKey!54655 mapValue!54655))))

(declare-fun b!1311140 () Bool)

(declare-fun e!747991 () Bool)

(declare-fun e!747995 () Bool)

(assert (=> b!1311140 (= e!747991 (and e!747995 mapRes!54655))))

(declare-fun condMapEmpty!54655 () Bool)

(declare-fun mapDefault!54655 () ValueCell!16777)

