; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97228 () Bool)

(assert start!97228)

(declare-fun b!1105708 () Bool)

(declare-fun res!737902 () Bool)

(declare-fun e!631078 () Bool)

(assert (=> b!1105708 (=> (not res!737902) (not e!631078))))

(declare-datatypes ((array!71718 0))(
  ( (array!71719 (arr!34508 (Array (_ BitVec 32) (_ BitVec 64))) (size!35045 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71718)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71718 (_ BitVec 32)) Bool)

(assert (=> b!1105708 (= res!737902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105709 () Bool)

(declare-fun res!737898 () Bool)

(declare-fun e!631075 () Bool)

(assert (=> b!1105709 (=> (not res!737898) (not e!631075))))

(declare-fun lt!495332 () array!71718)

(declare-datatypes ((List!24199 0))(
  ( (Nil!24196) (Cons!24195 (h!25404 (_ BitVec 64)) (t!34471 List!24199)) )
))
(declare-fun arrayNoDuplicates!0 (array!71718 (_ BitVec 32) List!24199) Bool)

(assert (=> b!1105709 (= res!737898 (arrayNoDuplicates!0 lt!495332 #b00000000000000000000000000000000 Nil!24196))))

(declare-fun b!1105710 () Bool)

(declare-fun res!737901 () Bool)

(assert (=> b!1105710 (=> (not res!737901) (not e!631078))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41691 0))(
  ( (V!41692 (val!13768 Int)) )
))
(declare-datatypes ((ValueCell!13002 0))(
  ( (ValueCellFull!13002 (v!16402 V!41691)) (EmptyCell!13002) )
))
(declare-datatypes ((array!71720 0))(
  ( (array!71721 (arr!34509 (Array (_ BitVec 32) ValueCell!13002)) (size!35046 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71720)

(assert (=> b!1105710 (= res!737901 (and (= (size!35046 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35045 _keys!1208) (size!35046 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42952 () Bool)

(declare-fun mapRes!42952 () Bool)

(declare-fun tp!81873 () Bool)

(declare-fun e!631077 () Bool)

(assert (=> mapNonEmpty!42952 (= mapRes!42952 (and tp!81873 e!631077))))

(declare-fun mapValue!42952 () ValueCell!13002)

(declare-fun mapRest!42952 () (Array (_ BitVec 32) ValueCell!13002))

(declare-fun mapKey!42952 () (_ BitVec 32))

(assert (=> mapNonEmpty!42952 (= (arr!34509 _values!996) (store mapRest!42952 mapKey!42952 mapValue!42952))))

(declare-fun b!1105711 () Bool)

(declare-fun tp_is_empty!27423 () Bool)

(assert (=> b!1105711 (= e!631077 tp_is_empty!27423)))

(declare-fun b!1105712 () Bool)

(assert (=> b!1105712 (= e!631078 e!631075)))

(declare-fun res!737906 () Bool)

(assert (=> b!1105712 (=> (not res!737906) (not e!631075))))

(assert (=> b!1105712 (= res!737906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495332 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105712 (= lt!495332 (array!71719 (store (arr!34508 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35045 _keys!1208)))))

(declare-fun b!1105713 () Bool)

(declare-fun res!737899 () Bool)

(assert (=> b!1105713 (=> (not res!737899) (not e!631078))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1105713 (= res!737899 (= (select (arr!34508 _keys!1208) i!673) k0!934))))

(declare-fun res!737903 () Bool)

(assert (=> start!97228 (=> (not res!737903) (not e!631078))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97228 (= res!737903 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35045 _keys!1208))))))

(assert (=> start!97228 e!631078))

(declare-fun array_inv!26418 (array!71718) Bool)

(assert (=> start!97228 (array_inv!26418 _keys!1208)))

(assert (=> start!97228 true))

(declare-fun e!631074 () Bool)

(declare-fun array_inv!26419 (array!71720) Bool)

(assert (=> start!97228 (and (array_inv!26419 _values!996) e!631074)))

(declare-fun mapIsEmpty!42952 () Bool)

(assert (=> mapIsEmpty!42952 mapRes!42952))

(declare-fun b!1105714 () Bool)

(declare-fun res!737904 () Bool)

(assert (=> b!1105714 (=> (not res!737904) (not e!631078))))

(assert (=> b!1105714 (= res!737904 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24196))))

(declare-fun b!1105715 () Bool)

(declare-fun e!631076 () Bool)

(assert (=> b!1105715 (= e!631074 (and e!631076 mapRes!42952))))

(declare-fun condMapEmpty!42952 () Bool)

(declare-fun mapDefault!42952 () ValueCell!13002)

(assert (=> b!1105715 (= condMapEmpty!42952 (= (arr!34509 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13002)) mapDefault!42952)))))

(declare-fun b!1105716 () Bool)

(declare-fun res!737907 () Bool)

(assert (=> b!1105716 (=> (not res!737907) (not e!631078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105716 (= res!737907 (validKeyInArray!0 k0!934))))

(declare-fun b!1105717 () Bool)

(assert (=> b!1105717 (= e!631076 tp_is_empty!27423)))

(declare-fun b!1105718 () Bool)

(declare-fun res!737905 () Bool)

(assert (=> b!1105718 (=> (not res!737905) (not e!631078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105718 (= res!737905 (validMask!0 mask!1564))))

(declare-fun b!1105719 () Bool)

(assert (=> b!1105719 (= e!631075 (not true))))

(declare-fun arrayContainsKey!0 (array!71718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105719 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36219 0))(
  ( (Unit!36220) )
))
(declare-fun lt!495333 () Unit!36219)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71718 (_ BitVec 64) (_ BitVec 32)) Unit!36219)

(assert (=> b!1105719 (= lt!495333 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1105720 () Bool)

(declare-fun res!737900 () Bool)

(assert (=> b!1105720 (=> (not res!737900) (not e!631078))))

(assert (=> b!1105720 (= res!737900 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35045 _keys!1208))))))

(assert (= (and start!97228 res!737903) b!1105718))

(assert (= (and b!1105718 res!737905) b!1105710))

(assert (= (and b!1105710 res!737901) b!1105708))

(assert (= (and b!1105708 res!737902) b!1105714))

(assert (= (and b!1105714 res!737904) b!1105720))

(assert (= (and b!1105720 res!737900) b!1105716))

(assert (= (and b!1105716 res!737907) b!1105713))

(assert (= (and b!1105713 res!737899) b!1105712))

(assert (= (and b!1105712 res!737906) b!1105709))

(assert (= (and b!1105709 res!737898) b!1105719))

(assert (= (and b!1105715 condMapEmpty!42952) mapIsEmpty!42952))

(assert (= (and b!1105715 (not condMapEmpty!42952)) mapNonEmpty!42952))

(get-info :version)

(assert (= (and mapNonEmpty!42952 ((_ is ValueCellFull!13002) mapValue!42952)) b!1105711))

(assert (= (and b!1105715 ((_ is ValueCellFull!13002) mapDefault!42952)) b!1105717))

(assert (= start!97228 b!1105715))

(declare-fun m!1025133 () Bool)

(assert (=> b!1105716 m!1025133))

(declare-fun m!1025135 () Bool)

(assert (=> b!1105713 m!1025135))

(declare-fun m!1025137 () Bool)

(assert (=> mapNonEmpty!42952 m!1025137))

(declare-fun m!1025139 () Bool)

(assert (=> b!1105718 m!1025139))

(declare-fun m!1025141 () Bool)

(assert (=> b!1105714 m!1025141))

(declare-fun m!1025143 () Bool)

(assert (=> b!1105708 m!1025143))

(declare-fun m!1025145 () Bool)

(assert (=> b!1105712 m!1025145))

(declare-fun m!1025147 () Bool)

(assert (=> b!1105712 m!1025147))

(declare-fun m!1025149 () Bool)

(assert (=> b!1105709 m!1025149))

(declare-fun m!1025151 () Bool)

(assert (=> start!97228 m!1025151))

(declare-fun m!1025153 () Bool)

(assert (=> start!97228 m!1025153))

(declare-fun m!1025155 () Bool)

(assert (=> b!1105719 m!1025155))

(declare-fun m!1025157 () Bool)

(assert (=> b!1105719 m!1025157))

(check-sat (not b!1105709) (not b!1105718) (not b!1105708) (not b!1105712) (not start!97228) (not mapNonEmpty!42952) (not b!1105719) (not b!1105716) (not b!1105714) tp_is_empty!27423)
(check-sat)
