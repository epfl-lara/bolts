; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97252 () Bool)

(assert start!97252)

(declare-fun b!1106176 () Bool)

(declare-fun e!631293 () Bool)

(declare-fun e!631292 () Bool)

(assert (=> b!1106176 (= e!631293 e!631292)))

(declare-fun res!738264 () Bool)

(assert (=> b!1106176 (=> (not res!738264) (not e!631292))))

(declare-datatypes ((array!71764 0))(
  ( (array!71765 (arr!34531 (Array (_ BitVec 32) (_ BitVec 64))) (size!35068 (_ BitVec 32))) )
))
(declare-fun lt!495405 () array!71764)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71764 (_ BitVec 32)) Bool)

(assert (=> b!1106176 (= res!738264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495405 mask!1564))))

(declare-fun _keys!1208 () array!71764)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106176 (= lt!495405 (array!71765 (store (arr!34531 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35068 _keys!1208)))))

(declare-fun b!1106177 () Bool)

(declare-fun res!738267 () Bool)

(assert (=> b!1106177 (=> (not res!738267) (not e!631293))))

(assert (=> b!1106177 (= res!738267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106178 () Bool)

(declare-fun e!631291 () Bool)

(declare-fun e!631295 () Bool)

(declare-fun mapRes!42988 () Bool)

(assert (=> b!1106178 (= e!631291 (and e!631295 mapRes!42988))))

(declare-fun condMapEmpty!42988 () Bool)

(declare-datatypes ((V!41723 0))(
  ( (V!41724 (val!13780 Int)) )
))
(declare-datatypes ((ValueCell!13014 0))(
  ( (ValueCellFull!13014 (v!16414 V!41723)) (EmptyCell!13014) )
))
(declare-datatypes ((array!71766 0))(
  ( (array!71767 (arr!34532 (Array (_ BitVec 32) ValueCell!13014)) (size!35069 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71766)

(declare-fun mapDefault!42988 () ValueCell!13014)

(assert (=> b!1106178 (= condMapEmpty!42988 (= (arr!34532 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13014)) mapDefault!42988)))))

(declare-fun b!1106179 () Bool)

(declare-fun res!738258 () Bool)

(assert (=> b!1106179 (=> (not res!738258) (not e!631293))))

(assert (=> b!1106179 (= res!738258 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35068 _keys!1208))))))

(declare-fun mapNonEmpty!42988 () Bool)

(declare-fun tp!81909 () Bool)

(declare-fun e!631294 () Bool)

(assert (=> mapNonEmpty!42988 (= mapRes!42988 (and tp!81909 e!631294))))

(declare-fun mapRest!42988 () (Array (_ BitVec 32) ValueCell!13014))

(declare-fun mapValue!42988 () ValueCell!13014)

(declare-fun mapKey!42988 () (_ BitVec 32))

(assert (=> mapNonEmpty!42988 (= (arr!34532 _values!996) (store mapRest!42988 mapKey!42988 mapValue!42988))))

(declare-fun b!1106180 () Bool)

(declare-fun tp_is_empty!27447 () Bool)

(assert (=> b!1106180 (= e!631294 tp_is_empty!27447)))

(declare-fun b!1106181 () Bool)

(declare-fun res!738266 () Bool)

(assert (=> b!1106181 (=> (not res!738266) (not e!631293))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1106181 (= res!738266 (and (= (size!35069 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35068 _keys!1208) (size!35069 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106182 () Bool)

(declare-fun res!738260 () Bool)

(assert (=> b!1106182 (=> (not res!738260) (not e!631293))))

(declare-datatypes ((List!24210 0))(
  ( (Nil!24207) (Cons!24206 (h!25415 (_ BitVec 64)) (t!34482 List!24210)) )
))
(declare-fun arrayNoDuplicates!0 (array!71764 (_ BitVec 32) List!24210) Bool)

(assert (=> b!1106182 (= res!738260 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24207))))

(declare-fun b!1106183 () Bool)

(assert (=> b!1106183 (= e!631292 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106183 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36237 0))(
  ( (Unit!36238) )
))
(declare-fun lt!495404 () Unit!36237)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71764 (_ BitVec 64) (_ BitVec 32)) Unit!36237)

(assert (=> b!1106183 (= lt!495404 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1106184 () Bool)

(declare-fun res!738262 () Bool)

(assert (=> b!1106184 (=> (not res!738262) (not e!631293))))

(assert (=> b!1106184 (= res!738262 (= (select (arr!34531 _keys!1208) i!673) k0!934))))

(declare-fun b!1106185 () Bool)

(declare-fun res!738261 () Bool)

(assert (=> b!1106185 (=> (not res!738261) (not e!631293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106185 (= res!738261 (validKeyInArray!0 k0!934))))

(declare-fun b!1106186 () Bool)

(declare-fun res!738265 () Bool)

(assert (=> b!1106186 (=> (not res!738265) (not e!631292))))

(assert (=> b!1106186 (= res!738265 (arrayNoDuplicates!0 lt!495405 #b00000000000000000000000000000000 Nil!24207))))

(declare-fun res!738259 () Bool)

(assert (=> start!97252 (=> (not res!738259) (not e!631293))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97252 (= res!738259 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35068 _keys!1208))))))

(assert (=> start!97252 e!631293))

(declare-fun array_inv!26436 (array!71764) Bool)

(assert (=> start!97252 (array_inv!26436 _keys!1208)))

(assert (=> start!97252 true))

(declare-fun array_inv!26437 (array!71766) Bool)

(assert (=> start!97252 (and (array_inv!26437 _values!996) e!631291)))

(declare-fun mapIsEmpty!42988 () Bool)

(assert (=> mapIsEmpty!42988 mapRes!42988))

(declare-fun b!1106187 () Bool)

(assert (=> b!1106187 (= e!631295 tp_is_empty!27447)))

(declare-fun b!1106188 () Bool)

(declare-fun res!738263 () Bool)

(assert (=> b!1106188 (=> (not res!738263) (not e!631293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106188 (= res!738263 (validMask!0 mask!1564))))

(assert (= (and start!97252 res!738259) b!1106188))

(assert (= (and b!1106188 res!738263) b!1106181))

(assert (= (and b!1106181 res!738266) b!1106177))

(assert (= (and b!1106177 res!738267) b!1106182))

(assert (= (and b!1106182 res!738260) b!1106179))

(assert (= (and b!1106179 res!738258) b!1106185))

(assert (= (and b!1106185 res!738261) b!1106184))

(assert (= (and b!1106184 res!738262) b!1106176))

(assert (= (and b!1106176 res!738264) b!1106186))

(assert (= (and b!1106186 res!738265) b!1106183))

(assert (= (and b!1106178 condMapEmpty!42988) mapIsEmpty!42988))

(assert (= (and b!1106178 (not condMapEmpty!42988)) mapNonEmpty!42988))

(get-info :version)

(assert (= (and mapNonEmpty!42988 ((_ is ValueCellFull!13014) mapValue!42988)) b!1106180))

(assert (= (and b!1106178 ((_ is ValueCellFull!13014) mapDefault!42988)) b!1106187))

(assert (= start!97252 b!1106178))

(declare-fun m!1025445 () Bool)

(assert (=> b!1106182 m!1025445))

(declare-fun m!1025447 () Bool)

(assert (=> start!97252 m!1025447))

(declare-fun m!1025449 () Bool)

(assert (=> start!97252 m!1025449))

(declare-fun m!1025451 () Bool)

(assert (=> b!1106186 m!1025451))

(declare-fun m!1025453 () Bool)

(assert (=> mapNonEmpty!42988 m!1025453))

(declare-fun m!1025455 () Bool)

(assert (=> b!1106183 m!1025455))

(declare-fun m!1025457 () Bool)

(assert (=> b!1106183 m!1025457))

(declare-fun m!1025459 () Bool)

(assert (=> b!1106177 m!1025459))

(declare-fun m!1025461 () Bool)

(assert (=> b!1106185 m!1025461))

(declare-fun m!1025463 () Bool)

(assert (=> b!1106184 m!1025463))

(declare-fun m!1025465 () Bool)

(assert (=> b!1106188 m!1025465))

(declare-fun m!1025467 () Bool)

(assert (=> b!1106176 m!1025467))

(declare-fun m!1025469 () Bool)

(assert (=> b!1106176 m!1025469))

(check-sat (not b!1106185) (not b!1106182) (not b!1106177) (not b!1106186) (not b!1106176) tp_is_empty!27447 (not b!1106183) (not mapNonEmpty!42988) (not start!97252) (not b!1106188))
(check-sat)
