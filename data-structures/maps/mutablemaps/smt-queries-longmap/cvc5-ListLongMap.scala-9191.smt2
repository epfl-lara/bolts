; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110530 () Bool)

(assert start!110530)

(declare-fun b_free!29329 () Bool)

(declare-fun b_next!29329 () Bool)

(assert (=> start!110530 (= b_free!29329 (not b_next!29329))))

(declare-fun tp!103309 () Bool)

(declare-fun b_and!47547 () Bool)

(assert (=> start!110530 (= tp!103309 b_and!47547)))

(declare-fun b!1306986 () Bool)

(declare-fun res!867672 () Bool)

(declare-fun e!745803 () Bool)

(assert (=> b!1306986 (=> (not res!867672) (not e!745803))))

(declare-datatypes ((array!87099 0))(
  ( (array!87100 (arr!42025 (Array (_ BitVec 32) (_ BitVec 64))) (size!42576 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87099)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51849 0))(
  ( (V!51850 (val!17604 Int)) )
))
(declare-datatypes ((ValueCell!16631 0))(
  ( (ValueCellFull!16631 (v!20229 V!51849)) (EmptyCell!16631) )
))
(declare-datatypes ((array!87101 0))(
  ( (array!87102 (arr!42026 (Array (_ BitVec 32) ValueCell!16631)) (size!42577 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87101)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306986 (= res!867672 (and (= (size!42577 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42576 _keys!1628) (size!42577 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306987 () Bool)

(declare-fun e!745801 () Bool)

(declare-fun tp_is_empty!35059 () Bool)

(assert (=> b!1306987 (= e!745801 tp_is_empty!35059)))

(declare-fun b!1306988 () Bool)

(declare-fun res!867671 () Bool)

(assert (=> b!1306988 (=> (not res!867671) (not e!745803))))

(declare-datatypes ((List!29998 0))(
  ( (Nil!29995) (Cons!29994 (h!31203 (_ BitVec 64)) (t!43611 List!29998)) )
))
(declare-fun arrayNoDuplicates!0 (array!87099 (_ BitVec 32) List!29998) Bool)

(assert (=> b!1306988 (= res!867671 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29995))))

(declare-fun b!1306989 () Bool)

(declare-fun res!867670 () Bool)

(assert (=> b!1306989 (=> (not res!867670) (not e!745803))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1306989 (= res!867670 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42576 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54217 () Bool)

(declare-fun mapRes!54217 () Bool)

(declare-fun tp!103310 () Bool)

(assert (=> mapNonEmpty!54217 (= mapRes!54217 (and tp!103310 e!745801))))

(declare-fun mapRest!54217 () (Array (_ BitVec 32) ValueCell!16631))

(declare-fun mapValue!54217 () ValueCell!16631)

(declare-fun mapKey!54217 () (_ BitVec 32))

(assert (=> mapNonEmpty!54217 (= (arr!42026 _values!1354) (store mapRest!54217 mapKey!54217 mapValue!54217))))

(declare-fun b!1306990 () Bool)

(declare-fun e!745802 () Bool)

(declare-fun e!745805 () Bool)

(assert (=> b!1306990 (= e!745802 (and e!745805 mapRes!54217))))

(declare-fun condMapEmpty!54217 () Bool)

(declare-fun mapDefault!54217 () ValueCell!16631)

