; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97606 () Bool)

(assert start!97606)

(declare-fun b!1114327 () Bool)

(declare-fun e!635159 () Bool)

(assert (=> b!1114327 (= e!635159 (not true))))

(declare-datatypes ((array!72450 0))(
  ( (array!72451 (arr!34874 (Array (_ BitVec 32) (_ BitVec 64))) (size!35411 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72450)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114327 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36477 0))(
  ( (Unit!36478) )
))
(declare-fun lt!496790 () Unit!36477)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72450 (_ BitVec 64) (_ BitVec 32)) Unit!36477)

(assert (=> b!1114327 (= lt!496790 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1114328 () Bool)

(declare-fun res!743894 () Bool)

(declare-fun e!635155 () Bool)

(assert (=> b!1114328 (=> (not res!743894) (not e!635155))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72450 (_ BitVec 32)) Bool)

(assert (=> b!1114328 (= res!743894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114329 () Bool)

(declare-fun res!743893 () Bool)

(assert (=> b!1114329 (=> (not res!743893) (not e!635155))))

(declare-datatypes ((List!24434 0))(
  ( (Nil!24431) (Cons!24430 (h!25639 (_ BitVec 64)) (t!34922 List!24434)) )
))
(declare-fun arrayNoDuplicates!0 (array!72450 (_ BitVec 32) List!24434) Bool)

(assert (=> b!1114329 (= res!743893 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24431))))

(declare-fun b!1114330 () Bool)

(assert (=> b!1114330 (= e!635155 e!635159)))

(declare-fun res!743899 () Bool)

(assert (=> b!1114330 (=> (not res!743899) (not e!635159))))

(declare-fun lt!496791 () array!72450)

(assert (=> b!1114330 (= res!743899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496791 mask!1564))))

(assert (=> b!1114330 (= lt!496791 (array!72451 (store (arr!34874 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35411 _keys!1208)))))

(declare-fun b!1114331 () Bool)

(declare-fun res!743900 () Bool)

(assert (=> b!1114331 (=> (not res!743900) (not e!635155))))

(assert (=> b!1114331 (= res!743900 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35411 _keys!1208))))))

(declare-fun b!1114332 () Bool)

(declare-fun res!743901 () Bool)

(assert (=> b!1114332 (=> (not res!743901) (not e!635155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114332 (= res!743901 (validKeyInArray!0 k0!934))))

(declare-fun b!1114333 () Bool)

(declare-fun e!635158 () Bool)

(declare-fun tp_is_empty!27801 () Bool)

(assert (=> b!1114333 (= e!635158 tp_is_empty!27801)))

(declare-fun b!1114334 () Bool)

(declare-fun e!635157 () Bool)

(declare-fun mapRes!43519 () Bool)

(assert (=> b!1114334 (= e!635157 (and e!635158 mapRes!43519))))

(declare-fun condMapEmpty!43519 () Bool)

(declare-datatypes ((V!42195 0))(
  ( (V!42196 (val!13957 Int)) )
))
(declare-datatypes ((ValueCell!13191 0))(
  ( (ValueCellFull!13191 (v!16591 V!42195)) (EmptyCell!13191) )
))
(declare-datatypes ((array!72452 0))(
  ( (array!72453 (arr!34875 (Array (_ BitVec 32) ValueCell!13191)) (size!35412 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72452)

(declare-fun mapDefault!43519 () ValueCell!13191)

(assert (=> b!1114334 (= condMapEmpty!43519 (= (arr!34875 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13191)) mapDefault!43519)))))

(declare-fun b!1114335 () Bool)

(declare-fun res!743897 () Bool)

(assert (=> b!1114335 (=> (not res!743897) (not e!635155))))

(assert (=> b!1114335 (= res!743897 (= (select (arr!34874 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43519 () Bool)

(assert (=> mapIsEmpty!43519 mapRes!43519))

(declare-fun b!1114336 () Bool)

(declare-fun e!635154 () Bool)

(assert (=> b!1114336 (= e!635154 tp_is_empty!27801)))

(declare-fun res!743892 () Bool)

(assert (=> start!97606 (=> (not res!743892) (not e!635155))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97606 (= res!743892 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35411 _keys!1208))))))

(assert (=> start!97606 e!635155))

(declare-fun array_inv!26680 (array!72450) Bool)

(assert (=> start!97606 (array_inv!26680 _keys!1208)))

(assert (=> start!97606 true))

(declare-fun array_inv!26681 (array!72452) Bool)

(assert (=> start!97606 (and (array_inv!26681 _values!996) e!635157)))

(declare-fun mapNonEmpty!43519 () Bool)

(declare-fun tp!82764 () Bool)

(assert (=> mapNonEmpty!43519 (= mapRes!43519 (and tp!82764 e!635154))))

(declare-fun mapRest!43519 () (Array (_ BitVec 32) ValueCell!13191))

(declare-fun mapKey!43519 () (_ BitVec 32))

(declare-fun mapValue!43519 () ValueCell!13191)

(assert (=> mapNonEmpty!43519 (= (arr!34875 _values!996) (store mapRest!43519 mapKey!43519 mapValue!43519))))

(declare-fun b!1114337 () Bool)

(declare-fun res!743895 () Bool)

(assert (=> b!1114337 (=> (not res!743895) (not e!635155))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114337 (= res!743895 (and (= (size!35412 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35411 _keys!1208) (size!35412 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114338 () Bool)

(declare-fun res!743896 () Bool)

(assert (=> b!1114338 (=> (not res!743896) (not e!635159))))

(assert (=> b!1114338 (= res!743896 (arrayNoDuplicates!0 lt!496791 #b00000000000000000000000000000000 Nil!24431))))

(declare-fun b!1114339 () Bool)

(declare-fun res!743898 () Bool)

(assert (=> b!1114339 (=> (not res!743898) (not e!635155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114339 (= res!743898 (validMask!0 mask!1564))))

(assert (= (and start!97606 res!743892) b!1114339))

(assert (= (and b!1114339 res!743898) b!1114337))

(assert (= (and b!1114337 res!743895) b!1114328))

(assert (= (and b!1114328 res!743894) b!1114329))

(assert (= (and b!1114329 res!743893) b!1114331))

(assert (= (and b!1114331 res!743900) b!1114332))

(assert (= (and b!1114332 res!743901) b!1114335))

(assert (= (and b!1114335 res!743897) b!1114330))

(assert (= (and b!1114330 res!743899) b!1114338))

(assert (= (and b!1114338 res!743896) b!1114327))

(assert (= (and b!1114334 condMapEmpty!43519) mapIsEmpty!43519))

(assert (= (and b!1114334 (not condMapEmpty!43519)) mapNonEmpty!43519))

(get-info :version)

(assert (= (and mapNonEmpty!43519 ((_ is ValueCellFull!13191) mapValue!43519)) b!1114336))

(assert (= (and b!1114334 ((_ is ValueCellFull!13191) mapDefault!43519)) b!1114333))

(assert (= start!97606 b!1114334))

(declare-fun m!1031343 () Bool)

(assert (=> mapNonEmpty!43519 m!1031343))

(declare-fun m!1031345 () Bool)

(assert (=> b!1114338 m!1031345))

(declare-fun m!1031347 () Bool)

(assert (=> b!1114329 m!1031347))

(declare-fun m!1031349 () Bool)

(assert (=> start!97606 m!1031349))

(declare-fun m!1031351 () Bool)

(assert (=> start!97606 m!1031351))

(declare-fun m!1031353 () Bool)

(assert (=> b!1114335 m!1031353))

(declare-fun m!1031355 () Bool)

(assert (=> b!1114330 m!1031355))

(declare-fun m!1031357 () Bool)

(assert (=> b!1114330 m!1031357))

(declare-fun m!1031359 () Bool)

(assert (=> b!1114332 m!1031359))

(declare-fun m!1031361 () Bool)

(assert (=> b!1114328 m!1031361))

(declare-fun m!1031363 () Bool)

(assert (=> b!1114327 m!1031363))

(declare-fun m!1031365 () Bool)

(assert (=> b!1114327 m!1031365))

(declare-fun m!1031367 () Bool)

(assert (=> b!1114339 m!1031367))

(check-sat (not b!1114327) (not b!1114332) (not start!97606) (not b!1114339) (not b!1114328) tp_is_empty!27801 (not b!1114329) (not mapNonEmpty!43519) (not b!1114330) (not b!1114338))
(check-sat)
