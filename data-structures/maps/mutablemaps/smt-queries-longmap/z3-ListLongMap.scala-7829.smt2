; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97756 () Bool)

(assert start!97756)

(declare-fun b!1117252 () Bool)

(declare-fun res!746143 () Bool)

(declare-fun e!636507 () Bool)

(assert (=> b!1117252 (=> (not res!746143) (not e!636507))))

(declare-datatypes ((array!72736 0))(
  ( (array!72737 (arr!35017 (Array (_ BitVec 32) (_ BitVec 64))) (size!35554 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72736)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42395 0))(
  ( (V!42396 (val!14032 Int)) )
))
(declare-datatypes ((ValueCell!13266 0))(
  ( (ValueCellFull!13266 (v!16666 V!42395)) (EmptyCell!13266) )
))
(declare-datatypes ((array!72738 0))(
  ( (array!72739 (arr!35018 (Array (_ BitVec 32) ValueCell!13266)) (size!35555 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72738)

(assert (=> b!1117252 (= res!746143 (and (= (size!35555 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35554 _keys!1208) (size!35555 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117253 () Bool)

(declare-fun e!636504 () Bool)

(assert (=> b!1117253 (= e!636504 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117253 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36573 0))(
  ( (Unit!36574) )
))
(declare-fun lt!497240 () Unit!36573)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72736 (_ BitVec 64) (_ BitVec 32)) Unit!36573)

(assert (=> b!1117253 (= lt!497240 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1117254 () Bool)

(declare-fun res!746145 () Bool)

(assert (=> b!1117254 (=> (not res!746145) (not e!636507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72736 (_ BitVec 32)) Bool)

(assert (=> b!1117254 (= res!746145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!746144 () Bool)

(assert (=> start!97756 (=> (not res!746144) (not e!636507))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97756 (= res!746144 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35554 _keys!1208))))))

(assert (=> start!97756 e!636507))

(declare-fun array_inv!26770 (array!72736) Bool)

(assert (=> start!97756 (array_inv!26770 _keys!1208)))

(assert (=> start!97756 true))

(declare-fun e!636509 () Bool)

(declare-fun array_inv!26771 (array!72738) Bool)

(assert (=> start!97756 (and (array_inv!26771 _values!996) e!636509)))

(declare-fun b!1117255 () Bool)

(declare-fun res!746147 () Bool)

(assert (=> b!1117255 (=> (not res!746147) (not e!636507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117255 (= res!746147 (validKeyInArray!0 k0!934))))

(declare-fun b!1117256 () Bool)

(declare-fun res!746148 () Bool)

(assert (=> b!1117256 (=> (not res!746148) (not e!636507))))

(assert (=> b!1117256 (= res!746148 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35554 _keys!1208))))))

(declare-fun b!1117257 () Bool)

(assert (=> b!1117257 (= e!636507 e!636504)))

(declare-fun res!746151 () Bool)

(assert (=> b!1117257 (=> (not res!746151) (not e!636504))))

(declare-fun lt!497241 () array!72736)

(assert (=> b!1117257 (= res!746151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497241 mask!1564))))

(assert (=> b!1117257 (= lt!497241 (array!72737 (store (arr!35017 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35554 _keys!1208)))))

(declare-fun b!1117258 () Bool)

(declare-fun e!636505 () Bool)

(declare-fun tp_is_empty!27951 () Bool)

(assert (=> b!1117258 (= e!636505 tp_is_empty!27951)))

(declare-fun b!1117259 () Bool)

(declare-fun e!636506 () Bool)

(assert (=> b!1117259 (= e!636506 tp_is_empty!27951)))

(declare-fun mapNonEmpty!43744 () Bool)

(declare-fun mapRes!43744 () Bool)

(declare-fun tp!82989 () Bool)

(assert (=> mapNonEmpty!43744 (= mapRes!43744 (and tp!82989 e!636505))))

(declare-fun mapKey!43744 () (_ BitVec 32))

(declare-fun mapRest!43744 () (Array (_ BitVec 32) ValueCell!13266))

(declare-fun mapValue!43744 () ValueCell!13266)

(assert (=> mapNonEmpty!43744 (= (arr!35018 _values!996) (store mapRest!43744 mapKey!43744 mapValue!43744))))

(declare-fun b!1117260 () Bool)

(assert (=> b!1117260 (= e!636509 (and e!636506 mapRes!43744))))

(declare-fun condMapEmpty!43744 () Bool)

(declare-fun mapDefault!43744 () ValueCell!13266)

(assert (=> b!1117260 (= condMapEmpty!43744 (= (arr!35018 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13266)) mapDefault!43744)))))

(declare-fun b!1117261 () Bool)

(declare-fun res!746149 () Bool)

(assert (=> b!1117261 (=> (not res!746149) (not e!636504))))

(declare-datatypes ((List!24488 0))(
  ( (Nil!24485) (Cons!24484 (h!25693 (_ BitVec 64)) (t!34976 List!24488)) )
))
(declare-fun arrayNoDuplicates!0 (array!72736 (_ BitVec 32) List!24488) Bool)

(assert (=> b!1117261 (= res!746149 (arrayNoDuplicates!0 lt!497241 #b00000000000000000000000000000000 Nil!24485))))

(declare-fun mapIsEmpty!43744 () Bool)

(assert (=> mapIsEmpty!43744 mapRes!43744))

(declare-fun b!1117262 () Bool)

(declare-fun res!746142 () Bool)

(assert (=> b!1117262 (=> (not res!746142) (not e!636507))))

(assert (=> b!1117262 (= res!746142 (= (select (arr!35017 _keys!1208) i!673) k0!934))))

(declare-fun b!1117263 () Bool)

(declare-fun res!746150 () Bool)

(assert (=> b!1117263 (=> (not res!746150) (not e!636507))))

(assert (=> b!1117263 (= res!746150 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24485))))

(declare-fun b!1117264 () Bool)

(declare-fun res!746146 () Bool)

(assert (=> b!1117264 (=> (not res!746146) (not e!636507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117264 (= res!746146 (validMask!0 mask!1564))))

(assert (= (and start!97756 res!746144) b!1117264))

(assert (= (and b!1117264 res!746146) b!1117252))

(assert (= (and b!1117252 res!746143) b!1117254))

(assert (= (and b!1117254 res!746145) b!1117263))

(assert (= (and b!1117263 res!746150) b!1117256))

(assert (= (and b!1117256 res!746148) b!1117255))

(assert (= (and b!1117255 res!746147) b!1117262))

(assert (= (and b!1117262 res!746142) b!1117257))

(assert (= (and b!1117257 res!746151) b!1117261))

(assert (= (and b!1117261 res!746149) b!1117253))

(assert (= (and b!1117260 condMapEmpty!43744) mapIsEmpty!43744))

(assert (= (and b!1117260 (not condMapEmpty!43744)) mapNonEmpty!43744))

(get-info :version)

(assert (= (and mapNonEmpty!43744 ((_ is ValueCellFull!13266) mapValue!43744)) b!1117258))

(assert (= (and b!1117260 ((_ is ValueCellFull!13266) mapDefault!43744)) b!1117259))

(assert (= start!97756 b!1117260))

(declare-fun m!1033293 () Bool)

(assert (=> b!1117264 m!1033293))

(declare-fun m!1033295 () Bool)

(assert (=> b!1117261 m!1033295))

(declare-fun m!1033297 () Bool)

(assert (=> b!1117262 m!1033297))

(declare-fun m!1033299 () Bool)

(assert (=> b!1117255 m!1033299))

(declare-fun m!1033301 () Bool)

(assert (=> b!1117253 m!1033301))

(declare-fun m!1033303 () Bool)

(assert (=> b!1117253 m!1033303))

(declare-fun m!1033305 () Bool)

(assert (=> b!1117254 m!1033305))

(declare-fun m!1033307 () Bool)

(assert (=> mapNonEmpty!43744 m!1033307))

(declare-fun m!1033309 () Bool)

(assert (=> b!1117257 m!1033309))

(declare-fun m!1033311 () Bool)

(assert (=> b!1117257 m!1033311))

(declare-fun m!1033313 () Bool)

(assert (=> start!97756 m!1033313))

(declare-fun m!1033315 () Bool)

(assert (=> start!97756 m!1033315))

(declare-fun m!1033317 () Bool)

(assert (=> b!1117263 m!1033317))

(check-sat (not start!97756) (not b!1117263) tp_is_empty!27951 (not b!1117254) (not b!1117257) (not b!1117255) (not b!1117253) (not mapNonEmpty!43744) (not b!1117261) (not b!1117264))
(check-sat)
