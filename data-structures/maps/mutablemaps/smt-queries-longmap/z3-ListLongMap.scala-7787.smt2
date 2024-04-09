; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97504 () Bool)

(assert start!97504)

(declare-fun b!1112338 () Bool)

(declare-fun res!742364 () Bool)

(declare-fun e!634240 () Bool)

(assert (=> b!1112338 (=> (not res!742364) (not e!634240))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112338 (= res!742364 (validMask!0 mask!1564))))

(declare-fun res!742365 () Bool)

(assert (=> start!97504 (=> (not res!742365) (not e!634240))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72256 0))(
  ( (array!72257 (arr!34777 (Array (_ BitVec 32) (_ BitVec 64))) (size!35314 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72256)

(assert (=> start!97504 (= res!742365 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35314 _keys!1208))))))

(assert (=> start!97504 e!634240))

(declare-fun array_inv!26616 (array!72256) Bool)

(assert (=> start!97504 (array_inv!26616 _keys!1208)))

(assert (=> start!97504 true))

(declare-datatypes ((V!42059 0))(
  ( (V!42060 (val!13906 Int)) )
))
(declare-datatypes ((ValueCell!13140 0))(
  ( (ValueCellFull!13140 (v!16540 V!42059)) (EmptyCell!13140) )
))
(declare-datatypes ((array!72258 0))(
  ( (array!72259 (arr!34778 (Array (_ BitVec 32) ValueCell!13140)) (size!35315 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72258)

(declare-fun e!634241 () Bool)

(declare-fun array_inv!26617 (array!72258) Bool)

(assert (=> start!97504 (and (array_inv!26617 _values!996) e!634241)))

(declare-fun b!1112339 () Bool)

(declare-fun e!634239 () Bool)

(declare-fun mapRes!43366 () Bool)

(assert (=> b!1112339 (= e!634241 (and e!634239 mapRes!43366))))

(declare-fun condMapEmpty!43366 () Bool)

(declare-fun mapDefault!43366 () ValueCell!13140)

(assert (=> b!1112339 (= condMapEmpty!43366 (= (arr!34778 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13140)) mapDefault!43366)))))

(declare-fun b!1112340 () Bool)

(declare-fun res!742370 () Bool)

(declare-fun e!634236 () Bool)

(assert (=> b!1112340 (=> (not res!742370) (not e!634236))))

(declare-fun lt!496485 () array!72256)

(declare-datatypes ((List!24397 0))(
  ( (Nil!24394) (Cons!24393 (h!25602 (_ BitVec 64)) (t!34885 List!24397)) )
))
(declare-fun arrayNoDuplicates!0 (array!72256 (_ BitVec 32) List!24397) Bool)

(assert (=> b!1112340 (= res!742370 (arrayNoDuplicates!0 lt!496485 #b00000000000000000000000000000000 Nil!24394))))

(declare-fun b!1112341 () Bool)

(declare-fun res!742368 () Bool)

(assert (=> b!1112341 (=> (not res!742368) (not e!634240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72256 (_ BitVec 32)) Bool)

(assert (=> b!1112341 (= res!742368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112342 () Bool)

(declare-fun res!742367 () Bool)

(assert (=> b!1112342 (=> (not res!742367) (not e!634240))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112342 (= res!742367 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35314 _keys!1208))))))

(declare-fun mapNonEmpty!43366 () Bool)

(declare-fun tp!82611 () Bool)

(declare-fun e!634237 () Bool)

(assert (=> mapNonEmpty!43366 (= mapRes!43366 (and tp!82611 e!634237))))

(declare-fun mapValue!43366 () ValueCell!13140)

(declare-fun mapRest!43366 () (Array (_ BitVec 32) ValueCell!13140))

(declare-fun mapKey!43366 () (_ BitVec 32))

(assert (=> mapNonEmpty!43366 (= (arr!34778 _values!996) (store mapRest!43366 mapKey!43366 mapValue!43366))))

(declare-fun b!1112343 () Bool)

(declare-fun tp_is_empty!27699 () Bool)

(assert (=> b!1112343 (= e!634237 tp_is_empty!27699)))

(declare-fun b!1112344 () Bool)

(declare-fun res!742366 () Bool)

(assert (=> b!1112344 (=> (not res!742366) (not e!634240))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1112344 (= res!742366 (= (select (arr!34777 _keys!1208) i!673) k0!934))))

(declare-fun b!1112345 () Bool)

(assert (=> b!1112345 (= e!634239 tp_is_empty!27699)))

(declare-fun b!1112346 () Bool)

(assert (=> b!1112346 (= e!634236 (not true))))

(declare-fun arrayContainsKey!0 (array!72256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112346 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36413 0))(
  ( (Unit!36414) )
))
(declare-fun lt!496484 () Unit!36413)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72256 (_ BitVec 64) (_ BitVec 32)) Unit!36413)

(assert (=> b!1112346 (= lt!496484 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1112347 () Bool)

(assert (=> b!1112347 (= e!634240 e!634236)))

(declare-fun res!742362 () Bool)

(assert (=> b!1112347 (=> (not res!742362) (not e!634236))))

(assert (=> b!1112347 (= res!742362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496485 mask!1564))))

(assert (=> b!1112347 (= lt!496485 (array!72257 (store (arr!34777 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35314 _keys!1208)))))

(declare-fun b!1112348 () Bool)

(declare-fun res!742363 () Bool)

(assert (=> b!1112348 (=> (not res!742363) (not e!634240))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1112348 (= res!742363 (and (= (size!35315 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35314 _keys!1208) (size!35315 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43366 () Bool)

(assert (=> mapIsEmpty!43366 mapRes!43366))

(declare-fun b!1112349 () Bool)

(declare-fun res!742371 () Bool)

(assert (=> b!1112349 (=> (not res!742371) (not e!634240))))

(assert (=> b!1112349 (= res!742371 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24394))))

(declare-fun b!1112350 () Bool)

(declare-fun res!742369 () Bool)

(assert (=> b!1112350 (=> (not res!742369) (not e!634240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112350 (= res!742369 (validKeyInArray!0 k0!934))))

(assert (= (and start!97504 res!742365) b!1112338))

(assert (= (and b!1112338 res!742364) b!1112348))

(assert (= (and b!1112348 res!742363) b!1112341))

(assert (= (and b!1112341 res!742368) b!1112349))

(assert (= (and b!1112349 res!742371) b!1112342))

(assert (= (and b!1112342 res!742367) b!1112350))

(assert (= (and b!1112350 res!742369) b!1112344))

(assert (= (and b!1112344 res!742366) b!1112347))

(assert (= (and b!1112347 res!742362) b!1112340))

(assert (= (and b!1112340 res!742370) b!1112346))

(assert (= (and b!1112339 condMapEmpty!43366) mapIsEmpty!43366))

(assert (= (and b!1112339 (not condMapEmpty!43366)) mapNonEmpty!43366))

(get-info :version)

(assert (= (and mapNonEmpty!43366 ((_ is ValueCellFull!13140) mapValue!43366)) b!1112343))

(assert (= (and b!1112339 ((_ is ValueCellFull!13140) mapDefault!43366)) b!1112345))

(assert (= start!97504 b!1112339))

(declare-fun m!1030017 () Bool)

(assert (=> mapNonEmpty!43366 m!1030017))

(declare-fun m!1030019 () Bool)

(assert (=> b!1112338 m!1030019))

(declare-fun m!1030021 () Bool)

(assert (=> b!1112350 m!1030021))

(declare-fun m!1030023 () Bool)

(assert (=> b!1112341 m!1030023))

(declare-fun m!1030025 () Bool)

(assert (=> b!1112340 m!1030025))

(declare-fun m!1030027 () Bool)

(assert (=> b!1112346 m!1030027))

(declare-fun m!1030029 () Bool)

(assert (=> b!1112346 m!1030029))

(declare-fun m!1030031 () Bool)

(assert (=> b!1112344 m!1030031))

(declare-fun m!1030033 () Bool)

(assert (=> b!1112349 m!1030033))

(declare-fun m!1030035 () Bool)

(assert (=> start!97504 m!1030035))

(declare-fun m!1030037 () Bool)

(assert (=> start!97504 m!1030037))

(declare-fun m!1030039 () Bool)

(assert (=> b!1112347 m!1030039))

(declare-fun m!1030041 () Bool)

(assert (=> b!1112347 m!1030041))

(check-sat (not b!1112347) (not b!1112346) (not start!97504) (not mapNonEmpty!43366) (not b!1112341) tp_is_empty!27699 (not b!1112338) (not b!1112350) (not b!1112340) (not b!1112349))
(check-sat)
