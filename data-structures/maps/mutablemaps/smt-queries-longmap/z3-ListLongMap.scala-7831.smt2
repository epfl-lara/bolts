; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97768 () Bool)

(assert start!97768)

(declare-fun b!1117486 () Bool)

(declare-fun res!746328 () Bool)

(declare-fun e!636615 () Bool)

(assert (=> b!1117486 (=> (not res!746328) (not e!636615))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42411 0))(
  ( (V!42412 (val!14038 Int)) )
))
(declare-datatypes ((ValueCell!13272 0))(
  ( (ValueCellFull!13272 (v!16672 V!42411)) (EmptyCell!13272) )
))
(declare-datatypes ((array!72760 0))(
  ( (array!72761 (arr!35029 (Array (_ BitVec 32) ValueCell!13272)) (size!35566 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72760)

(declare-datatypes ((array!72762 0))(
  ( (array!72763 (arr!35030 (Array (_ BitVec 32) (_ BitVec 64))) (size!35567 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72762)

(assert (=> b!1117486 (= res!746328 (and (= (size!35566 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35567 _keys!1208) (size!35566 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117487 () Bool)

(declare-fun res!746325 () Bool)

(assert (=> b!1117487 (=> (not res!746325) (not e!636615))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1117487 (= res!746325 (= (select (arr!35030 _keys!1208) i!673) k0!934))))

(declare-fun b!1117488 () Bool)

(declare-fun e!636617 () Bool)

(declare-fun e!636612 () Bool)

(declare-fun mapRes!43762 () Bool)

(assert (=> b!1117488 (= e!636617 (and e!636612 mapRes!43762))))

(declare-fun condMapEmpty!43762 () Bool)

(declare-fun mapDefault!43762 () ValueCell!13272)

(assert (=> b!1117488 (= condMapEmpty!43762 (= (arr!35029 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13272)) mapDefault!43762)))))

(declare-fun b!1117489 () Bool)

(declare-fun e!636616 () Bool)

(declare-fun tp_is_empty!27963 () Bool)

(assert (=> b!1117489 (= e!636616 tp_is_empty!27963)))

(declare-fun b!1117490 () Bool)

(declare-fun e!636614 () Bool)

(assert (=> b!1117490 (= e!636614 (not true))))

(declare-fun arrayContainsKey!0 (array!72762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117490 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36585 0))(
  ( (Unit!36586) )
))
(declare-fun lt!497277 () Unit!36585)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72762 (_ BitVec 64) (_ BitVec 32)) Unit!36585)

(assert (=> b!1117490 (= lt!497277 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1117491 () Bool)

(declare-fun res!746330 () Bool)

(assert (=> b!1117491 (=> (not res!746330) (not e!636615))))

(declare-datatypes ((List!24494 0))(
  ( (Nil!24491) (Cons!24490 (h!25699 (_ BitVec 64)) (t!34982 List!24494)) )
))
(declare-fun arrayNoDuplicates!0 (array!72762 (_ BitVec 32) List!24494) Bool)

(assert (=> b!1117491 (= res!746330 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24491))))

(declare-fun b!1117493 () Bool)

(declare-fun res!746323 () Bool)

(assert (=> b!1117493 (=> (not res!746323) (not e!636615))))

(assert (=> b!1117493 (= res!746323 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35567 _keys!1208))))))

(declare-fun b!1117494 () Bool)

(assert (=> b!1117494 (= e!636615 e!636614)))

(declare-fun res!746327 () Bool)

(assert (=> b!1117494 (=> (not res!746327) (not e!636614))))

(declare-fun lt!497276 () array!72762)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72762 (_ BitVec 32)) Bool)

(assert (=> b!1117494 (= res!746327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497276 mask!1564))))

(assert (=> b!1117494 (= lt!497276 (array!72763 (store (arr!35030 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35567 _keys!1208)))))

(declare-fun mapNonEmpty!43762 () Bool)

(declare-fun tp!83007 () Bool)

(assert (=> mapNonEmpty!43762 (= mapRes!43762 (and tp!83007 e!636616))))

(declare-fun mapKey!43762 () (_ BitVec 32))

(declare-fun mapRest!43762 () (Array (_ BitVec 32) ValueCell!13272))

(declare-fun mapValue!43762 () ValueCell!13272)

(assert (=> mapNonEmpty!43762 (= (arr!35029 _values!996) (store mapRest!43762 mapKey!43762 mapValue!43762))))

(declare-fun b!1117495 () Bool)

(declare-fun res!746322 () Bool)

(assert (=> b!1117495 (=> (not res!746322) (not e!636615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117495 (= res!746322 (validMask!0 mask!1564))))

(declare-fun b!1117496 () Bool)

(assert (=> b!1117496 (= e!636612 tp_is_empty!27963)))

(declare-fun b!1117497 () Bool)

(declare-fun res!746324 () Bool)

(assert (=> b!1117497 (=> (not res!746324) (not e!636615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117497 (= res!746324 (validKeyInArray!0 k0!934))))

(declare-fun b!1117498 () Bool)

(declare-fun res!746331 () Bool)

(assert (=> b!1117498 (=> (not res!746331) (not e!636614))))

(assert (=> b!1117498 (= res!746331 (arrayNoDuplicates!0 lt!497276 #b00000000000000000000000000000000 Nil!24491))))

(declare-fun mapIsEmpty!43762 () Bool)

(assert (=> mapIsEmpty!43762 mapRes!43762))

(declare-fun res!746326 () Bool)

(assert (=> start!97768 (=> (not res!746326) (not e!636615))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97768 (= res!746326 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35567 _keys!1208))))))

(assert (=> start!97768 e!636615))

(declare-fun array_inv!26782 (array!72762) Bool)

(assert (=> start!97768 (array_inv!26782 _keys!1208)))

(assert (=> start!97768 true))

(declare-fun array_inv!26783 (array!72760) Bool)

(assert (=> start!97768 (and (array_inv!26783 _values!996) e!636617)))

(declare-fun b!1117492 () Bool)

(declare-fun res!746329 () Bool)

(assert (=> b!1117492 (=> (not res!746329) (not e!636615))))

(assert (=> b!1117492 (= res!746329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97768 res!746326) b!1117495))

(assert (= (and b!1117495 res!746322) b!1117486))

(assert (= (and b!1117486 res!746328) b!1117492))

(assert (= (and b!1117492 res!746329) b!1117491))

(assert (= (and b!1117491 res!746330) b!1117493))

(assert (= (and b!1117493 res!746323) b!1117497))

(assert (= (and b!1117497 res!746324) b!1117487))

(assert (= (and b!1117487 res!746325) b!1117494))

(assert (= (and b!1117494 res!746327) b!1117498))

(assert (= (and b!1117498 res!746331) b!1117490))

(assert (= (and b!1117488 condMapEmpty!43762) mapIsEmpty!43762))

(assert (= (and b!1117488 (not condMapEmpty!43762)) mapNonEmpty!43762))

(get-info :version)

(assert (= (and mapNonEmpty!43762 ((_ is ValueCellFull!13272) mapValue!43762)) b!1117489))

(assert (= (and b!1117488 ((_ is ValueCellFull!13272) mapDefault!43762)) b!1117496))

(assert (= start!97768 b!1117488))

(declare-fun m!1033449 () Bool)

(assert (=> b!1117487 m!1033449))

(declare-fun m!1033451 () Bool)

(assert (=> b!1117498 m!1033451))

(declare-fun m!1033453 () Bool)

(assert (=> b!1117495 m!1033453))

(declare-fun m!1033455 () Bool)

(assert (=> b!1117491 m!1033455))

(declare-fun m!1033457 () Bool)

(assert (=> b!1117492 m!1033457))

(declare-fun m!1033459 () Bool)

(assert (=> b!1117497 m!1033459))

(declare-fun m!1033461 () Bool)

(assert (=> b!1117490 m!1033461))

(declare-fun m!1033463 () Bool)

(assert (=> b!1117490 m!1033463))

(declare-fun m!1033465 () Bool)

(assert (=> mapNonEmpty!43762 m!1033465))

(declare-fun m!1033467 () Bool)

(assert (=> start!97768 m!1033467))

(declare-fun m!1033469 () Bool)

(assert (=> start!97768 m!1033469))

(declare-fun m!1033471 () Bool)

(assert (=> b!1117494 m!1033471))

(declare-fun m!1033473 () Bool)

(assert (=> b!1117494 m!1033473))

(check-sat (not b!1117492) (not mapNonEmpty!43762) (not start!97768) (not b!1117491) tp_is_empty!27963 (not b!1117494) (not b!1117490) (not b!1117498) (not b!1117497) (not b!1117495))
(check-sat)
