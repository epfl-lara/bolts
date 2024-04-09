; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97258 () Bool)

(assert start!97258)

(declare-fun b!1106293 () Bool)

(declare-fun res!738354 () Bool)

(declare-fun e!631344 () Bool)

(assert (=> b!1106293 (=> (not res!738354) (not e!631344))))

(declare-datatypes ((array!71776 0))(
  ( (array!71777 (arr!34537 (Array (_ BitVec 32) (_ BitVec 64))) (size!35074 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71776)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71776 (_ BitVec 32)) Bool)

(assert (=> b!1106293 (= res!738354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106294 () Bool)

(declare-fun res!738356 () Bool)

(assert (=> b!1106294 (=> (not res!738356) (not e!631344))))

(declare-datatypes ((List!24213 0))(
  ( (Nil!24210) (Cons!24209 (h!25418 (_ BitVec 64)) (t!34485 List!24213)) )
))
(declare-fun arrayNoDuplicates!0 (array!71776 (_ BitVec 32) List!24213) Bool)

(assert (=> b!1106294 (= res!738356 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24210))))

(declare-fun b!1106295 () Bool)

(declare-fun e!631346 () Bool)

(declare-fun e!631345 () Bool)

(declare-fun mapRes!42997 () Bool)

(assert (=> b!1106295 (= e!631346 (and e!631345 mapRes!42997))))

(declare-fun condMapEmpty!42997 () Bool)

(declare-datatypes ((V!41731 0))(
  ( (V!41732 (val!13783 Int)) )
))
(declare-datatypes ((ValueCell!13017 0))(
  ( (ValueCellFull!13017 (v!16417 V!41731)) (EmptyCell!13017) )
))
(declare-datatypes ((array!71778 0))(
  ( (array!71779 (arr!34538 (Array (_ BitVec 32) ValueCell!13017)) (size!35075 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71778)

(declare-fun mapDefault!42997 () ValueCell!13017)

(assert (=> b!1106295 (= condMapEmpty!42997 (= (arr!34538 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13017)) mapDefault!42997)))))

(declare-fun b!1106296 () Bool)

(declare-fun res!738353 () Bool)

(assert (=> b!1106296 (=> (not res!738353) (not e!631344))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106296 (= res!738353 (validKeyInArray!0 k0!934))))

(declare-fun b!1106297 () Bool)

(declare-fun e!631347 () Bool)

(assert (=> b!1106297 (= e!631347 (not true))))

(declare-fun arrayContainsKey!0 (array!71776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106297 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36243 0))(
  ( (Unit!36244) )
))
(declare-fun lt!495422 () Unit!36243)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71776 (_ BitVec 64) (_ BitVec 32)) Unit!36243)

(assert (=> b!1106297 (= lt!495422 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1106298 () Bool)

(declare-fun tp_is_empty!27453 () Bool)

(assert (=> b!1106298 (= e!631345 tp_is_empty!27453)))

(declare-fun b!1106299 () Bool)

(declare-fun res!738351 () Bool)

(assert (=> b!1106299 (=> (not res!738351) (not e!631347))))

(declare-fun lt!495423 () array!71776)

(assert (=> b!1106299 (= res!738351 (arrayNoDuplicates!0 lt!495423 #b00000000000000000000000000000000 Nil!24210))))

(declare-fun b!1106300 () Bool)

(declare-fun e!631348 () Bool)

(assert (=> b!1106300 (= e!631348 tp_is_empty!27453)))

(declare-fun b!1106301 () Bool)

(declare-fun res!738357 () Bool)

(assert (=> b!1106301 (=> (not res!738357) (not e!631344))))

(assert (=> b!1106301 (= res!738357 (= (select (arr!34537 _keys!1208) i!673) k0!934))))

(declare-fun b!1106303 () Bool)

(declare-fun res!738348 () Bool)

(assert (=> b!1106303 (=> (not res!738348) (not e!631344))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1106303 (= res!738348 (and (= (size!35075 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35074 _keys!1208) (size!35075 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106302 () Bool)

(declare-fun res!738350 () Bool)

(assert (=> b!1106302 (=> (not res!738350) (not e!631344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106302 (= res!738350 (validMask!0 mask!1564))))

(declare-fun res!738355 () Bool)

(assert (=> start!97258 (=> (not res!738355) (not e!631344))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97258 (= res!738355 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35074 _keys!1208))))))

(assert (=> start!97258 e!631344))

(declare-fun array_inv!26440 (array!71776) Bool)

(assert (=> start!97258 (array_inv!26440 _keys!1208)))

(assert (=> start!97258 true))

(declare-fun array_inv!26441 (array!71778) Bool)

(assert (=> start!97258 (and (array_inv!26441 _values!996) e!631346)))

(declare-fun mapIsEmpty!42997 () Bool)

(assert (=> mapIsEmpty!42997 mapRes!42997))

(declare-fun b!1106304 () Bool)

(declare-fun res!738352 () Bool)

(assert (=> b!1106304 (=> (not res!738352) (not e!631344))))

(assert (=> b!1106304 (= res!738352 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35074 _keys!1208))))))

(declare-fun mapNonEmpty!42997 () Bool)

(declare-fun tp!81918 () Bool)

(assert (=> mapNonEmpty!42997 (= mapRes!42997 (and tp!81918 e!631348))))

(declare-fun mapValue!42997 () ValueCell!13017)

(declare-fun mapKey!42997 () (_ BitVec 32))

(declare-fun mapRest!42997 () (Array (_ BitVec 32) ValueCell!13017))

(assert (=> mapNonEmpty!42997 (= (arr!34538 _values!996) (store mapRest!42997 mapKey!42997 mapValue!42997))))

(declare-fun b!1106305 () Bool)

(assert (=> b!1106305 (= e!631344 e!631347)))

(declare-fun res!738349 () Bool)

(assert (=> b!1106305 (=> (not res!738349) (not e!631347))))

(assert (=> b!1106305 (= res!738349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495423 mask!1564))))

(assert (=> b!1106305 (= lt!495423 (array!71777 (store (arr!34537 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35074 _keys!1208)))))

(assert (= (and start!97258 res!738355) b!1106302))

(assert (= (and b!1106302 res!738350) b!1106303))

(assert (= (and b!1106303 res!738348) b!1106293))

(assert (= (and b!1106293 res!738354) b!1106294))

(assert (= (and b!1106294 res!738356) b!1106304))

(assert (= (and b!1106304 res!738352) b!1106296))

(assert (= (and b!1106296 res!738353) b!1106301))

(assert (= (and b!1106301 res!738357) b!1106305))

(assert (= (and b!1106305 res!738349) b!1106299))

(assert (= (and b!1106299 res!738351) b!1106297))

(assert (= (and b!1106295 condMapEmpty!42997) mapIsEmpty!42997))

(assert (= (and b!1106295 (not condMapEmpty!42997)) mapNonEmpty!42997))

(get-info :version)

(assert (= (and mapNonEmpty!42997 ((_ is ValueCellFull!13017) mapValue!42997)) b!1106300))

(assert (= (and b!1106295 ((_ is ValueCellFull!13017) mapDefault!42997)) b!1106298))

(assert (= start!97258 b!1106295))

(declare-fun m!1025523 () Bool)

(assert (=> b!1106293 m!1025523))

(declare-fun m!1025525 () Bool)

(assert (=> start!97258 m!1025525))

(declare-fun m!1025527 () Bool)

(assert (=> start!97258 m!1025527))

(declare-fun m!1025529 () Bool)

(assert (=> b!1106302 m!1025529))

(declare-fun m!1025531 () Bool)

(assert (=> b!1106301 m!1025531))

(declare-fun m!1025533 () Bool)

(assert (=> b!1106299 m!1025533))

(declare-fun m!1025535 () Bool)

(assert (=> b!1106297 m!1025535))

(declare-fun m!1025537 () Bool)

(assert (=> b!1106297 m!1025537))

(declare-fun m!1025539 () Bool)

(assert (=> mapNonEmpty!42997 m!1025539))

(declare-fun m!1025541 () Bool)

(assert (=> b!1106294 m!1025541))

(declare-fun m!1025543 () Bool)

(assert (=> b!1106296 m!1025543))

(declare-fun m!1025545 () Bool)

(assert (=> b!1106305 m!1025545))

(declare-fun m!1025547 () Bool)

(assert (=> b!1106305 m!1025547))

(check-sat (not b!1106293) tp_is_empty!27453 (not mapNonEmpty!42997) (not b!1106305) (not b!1106297) (not b!1106299) (not b!1106294) (not b!1106302) (not start!97258) (not b!1106296))
(check-sat)
