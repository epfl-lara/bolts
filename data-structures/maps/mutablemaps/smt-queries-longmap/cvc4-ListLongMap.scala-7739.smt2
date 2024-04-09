; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97218 () Bool)

(assert start!97218)

(declare-fun b!1105513 () Bool)

(declare-fun e!630988 () Bool)

(declare-fun tp_is_empty!27413 () Bool)

(assert (=> b!1105513 (= e!630988 tp_is_empty!27413)))

(declare-fun mapIsEmpty!42937 () Bool)

(declare-fun mapRes!42937 () Bool)

(assert (=> mapIsEmpty!42937 mapRes!42937))

(declare-fun b!1105514 () Bool)

(declare-fun res!737749 () Bool)

(declare-fun e!630985 () Bool)

(assert (=> b!1105514 (=> (not res!737749) (not e!630985))))

(declare-datatypes ((array!71698 0))(
  ( (array!71699 (arr!34498 (Array (_ BitVec 32) (_ BitVec 64))) (size!35035 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71698)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71698 (_ BitVec 32)) Bool)

(assert (=> b!1105514 (= res!737749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105515 () Bool)

(declare-fun e!630984 () Bool)

(assert (=> b!1105515 (= e!630984 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105515 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36213 0))(
  ( (Unit!36214) )
))
(declare-fun lt!495302 () Unit!36213)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71698 (_ BitVec 64) (_ BitVec 32)) Unit!36213)

(assert (=> b!1105515 (= lt!495302 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1105516 () Bool)

(declare-fun res!737754 () Bool)

(assert (=> b!1105516 (=> (not res!737754) (not e!630985))))

(assert (=> b!1105516 (= res!737754 (= (select (arr!34498 _keys!1208) i!673) k!934))))

(declare-fun b!1105517 () Bool)

(declare-fun res!737748 () Bool)

(assert (=> b!1105517 (=> (not res!737748) (not e!630985))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41677 0))(
  ( (V!41678 (val!13763 Int)) )
))
(declare-datatypes ((ValueCell!12997 0))(
  ( (ValueCellFull!12997 (v!16397 V!41677)) (EmptyCell!12997) )
))
(declare-datatypes ((array!71700 0))(
  ( (array!71701 (arr!34499 (Array (_ BitVec 32) ValueCell!12997)) (size!35036 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71700)

(assert (=> b!1105517 (= res!737748 (and (= (size!35036 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35035 _keys!1208) (size!35036 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42937 () Bool)

(declare-fun tp!81858 () Bool)

(declare-fun e!630989 () Bool)

(assert (=> mapNonEmpty!42937 (= mapRes!42937 (and tp!81858 e!630989))))

(declare-fun mapRest!42937 () (Array (_ BitVec 32) ValueCell!12997))

(declare-fun mapKey!42937 () (_ BitVec 32))

(declare-fun mapValue!42937 () ValueCell!12997)

(assert (=> mapNonEmpty!42937 (= (arr!34499 _values!996) (store mapRest!42937 mapKey!42937 mapValue!42937))))

(declare-fun b!1105518 () Bool)

(declare-fun e!630986 () Bool)

(assert (=> b!1105518 (= e!630986 (and e!630988 mapRes!42937))))

(declare-fun condMapEmpty!42937 () Bool)

(declare-fun mapDefault!42937 () ValueCell!12997)

