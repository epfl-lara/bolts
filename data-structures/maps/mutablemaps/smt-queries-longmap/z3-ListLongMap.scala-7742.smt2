; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97234 () Bool)

(assert start!97234)

(declare-fun b!1105825 () Bool)

(declare-fun res!737992 () Bool)

(declare-fun e!631133 () Bool)

(assert (=> b!1105825 (=> (not res!737992) (not e!631133))))

(declare-datatypes ((array!71730 0))(
  ( (array!71731 (arr!34514 (Array (_ BitVec 32) (_ BitVec 64))) (size!35051 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71730)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71730 (_ BitVec 32)) Bool)

(assert (=> b!1105825 (= res!737992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!42961 () Bool)

(declare-fun mapRes!42961 () Bool)

(assert (=> mapIsEmpty!42961 mapRes!42961))

(declare-fun b!1105826 () Bool)

(declare-fun res!737995 () Bool)

(assert (=> b!1105826 (=> (not res!737995) (not e!631133))))

(declare-datatypes ((List!24202 0))(
  ( (Nil!24199) (Cons!24198 (h!25407 (_ BitVec 64)) (t!34474 List!24202)) )
))
(declare-fun arrayNoDuplicates!0 (array!71730 (_ BitVec 32) List!24202) Bool)

(assert (=> b!1105826 (= res!737995 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24199))))

(declare-fun b!1105827 () Bool)

(declare-fun res!737993 () Bool)

(declare-fun e!631130 () Bool)

(assert (=> b!1105827 (=> (not res!737993) (not e!631130))))

(declare-fun lt!495350 () array!71730)

(assert (=> b!1105827 (= res!737993 (arrayNoDuplicates!0 lt!495350 #b00000000000000000000000000000000 Nil!24199))))

(declare-fun b!1105828 () Bool)

(declare-fun res!737991 () Bool)

(assert (=> b!1105828 (=> (not res!737991) (not e!631133))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105828 (= res!737991 (validKeyInArray!0 k0!934))))

(declare-fun b!1105829 () Bool)

(assert (=> b!1105829 (= e!631130 (not true))))

(declare-fun arrayContainsKey!0 (array!71730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105829 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36223 0))(
  ( (Unit!36224) )
))
(declare-fun lt!495351 () Unit!36223)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71730 (_ BitVec 64) (_ BitVec 32)) Unit!36223)

(assert (=> b!1105829 (= lt!495351 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1105830 () Bool)

(declare-fun res!737990 () Bool)

(assert (=> b!1105830 (=> (not res!737990) (not e!631133))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41699 0))(
  ( (V!41700 (val!13771 Int)) )
))
(declare-datatypes ((ValueCell!13005 0))(
  ( (ValueCellFull!13005 (v!16405 V!41699)) (EmptyCell!13005) )
))
(declare-datatypes ((array!71732 0))(
  ( (array!71733 (arr!34515 (Array (_ BitVec 32) ValueCell!13005)) (size!35052 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71732)

(assert (=> b!1105830 (= res!737990 (and (= (size!35052 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35051 _keys!1208) (size!35052 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105831 () Bool)

(declare-fun res!737996 () Bool)

(assert (=> b!1105831 (=> (not res!737996) (not e!631133))))

(assert (=> b!1105831 (= res!737996 (= (select (arr!34514 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!42961 () Bool)

(declare-fun tp!81882 () Bool)

(declare-fun e!631129 () Bool)

(assert (=> mapNonEmpty!42961 (= mapRes!42961 (and tp!81882 e!631129))))

(declare-fun mapValue!42961 () ValueCell!13005)

(declare-fun mapKey!42961 () (_ BitVec 32))

(declare-fun mapRest!42961 () (Array (_ BitVec 32) ValueCell!13005))

(assert (=> mapNonEmpty!42961 (= (arr!34515 _values!996) (store mapRest!42961 mapKey!42961 mapValue!42961))))

(declare-fun res!737994 () Bool)

(assert (=> start!97234 (=> (not res!737994) (not e!631133))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97234 (= res!737994 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35051 _keys!1208))))))

(assert (=> start!97234 e!631133))

(declare-fun array_inv!26424 (array!71730) Bool)

(assert (=> start!97234 (array_inv!26424 _keys!1208)))

(assert (=> start!97234 true))

(declare-fun e!631131 () Bool)

(declare-fun array_inv!26425 (array!71732) Bool)

(assert (=> start!97234 (and (array_inv!26425 _values!996) e!631131)))

(declare-fun b!1105832 () Bool)

(assert (=> b!1105832 (= e!631133 e!631130)))

(declare-fun res!737997 () Bool)

(assert (=> b!1105832 (=> (not res!737997) (not e!631130))))

(assert (=> b!1105832 (= res!737997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495350 mask!1564))))

(assert (=> b!1105832 (= lt!495350 (array!71731 (store (arr!34514 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35051 _keys!1208)))))

(declare-fun b!1105833 () Bool)

(declare-fun tp_is_empty!27429 () Bool)

(assert (=> b!1105833 (= e!631129 tp_is_empty!27429)))

(declare-fun b!1105834 () Bool)

(declare-fun res!737988 () Bool)

(assert (=> b!1105834 (=> (not res!737988) (not e!631133))))

(assert (=> b!1105834 (= res!737988 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35051 _keys!1208))))))

(declare-fun b!1105835 () Bool)

(declare-fun e!631128 () Bool)

(assert (=> b!1105835 (= e!631128 tp_is_empty!27429)))

(declare-fun b!1105836 () Bool)

(declare-fun res!737989 () Bool)

(assert (=> b!1105836 (=> (not res!737989) (not e!631133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105836 (= res!737989 (validMask!0 mask!1564))))

(declare-fun b!1105837 () Bool)

(assert (=> b!1105837 (= e!631131 (and e!631128 mapRes!42961))))

(declare-fun condMapEmpty!42961 () Bool)

(declare-fun mapDefault!42961 () ValueCell!13005)

(assert (=> b!1105837 (= condMapEmpty!42961 (= (arr!34515 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13005)) mapDefault!42961)))))

(assert (= (and start!97234 res!737994) b!1105836))

(assert (= (and b!1105836 res!737989) b!1105830))

(assert (= (and b!1105830 res!737990) b!1105825))

(assert (= (and b!1105825 res!737992) b!1105826))

(assert (= (and b!1105826 res!737995) b!1105834))

(assert (= (and b!1105834 res!737988) b!1105828))

(assert (= (and b!1105828 res!737991) b!1105831))

(assert (= (and b!1105831 res!737996) b!1105832))

(assert (= (and b!1105832 res!737997) b!1105827))

(assert (= (and b!1105827 res!737993) b!1105829))

(assert (= (and b!1105837 condMapEmpty!42961) mapIsEmpty!42961))

(assert (= (and b!1105837 (not condMapEmpty!42961)) mapNonEmpty!42961))

(get-info :version)

(assert (= (and mapNonEmpty!42961 ((_ is ValueCellFull!13005) mapValue!42961)) b!1105833))

(assert (= (and b!1105837 ((_ is ValueCellFull!13005) mapDefault!42961)) b!1105835))

(assert (= start!97234 b!1105837))

(declare-fun m!1025211 () Bool)

(assert (=> mapNonEmpty!42961 m!1025211))

(declare-fun m!1025213 () Bool)

(assert (=> start!97234 m!1025213))

(declare-fun m!1025215 () Bool)

(assert (=> start!97234 m!1025215))

(declare-fun m!1025217 () Bool)

(assert (=> b!1105836 m!1025217))

(declare-fun m!1025219 () Bool)

(assert (=> b!1105825 m!1025219))

(declare-fun m!1025221 () Bool)

(assert (=> b!1105827 m!1025221))

(declare-fun m!1025223 () Bool)

(assert (=> b!1105829 m!1025223))

(declare-fun m!1025225 () Bool)

(assert (=> b!1105829 m!1025225))

(declare-fun m!1025227 () Bool)

(assert (=> b!1105826 m!1025227))

(declare-fun m!1025229 () Bool)

(assert (=> b!1105828 m!1025229))

(declare-fun m!1025231 () Bool)

(assert (=> b!1105832 m!1025231))

(declare-fun m!1025233 () Bool)

(assert (=> b!1105832 m!1025233))

(declare-fun m!1025235 () Bool)

(assert (=> b!1105831 m!1025235))

(check-sat (not b!1105829) (not mapNonEmpty!42961) (not b!1105836) (not start!97234) (not b!1105832) (not b!1105828) (not b!1105825) tp_is_empty!27429 (not b!1105827) (not b!1105826))
(check-sat)
