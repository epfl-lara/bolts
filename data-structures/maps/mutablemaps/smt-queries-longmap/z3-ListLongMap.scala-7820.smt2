; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97702 () Bool)

(assert start!97702)

(declare-fun b!1116199 () Bool)

(declare-fun res!745334 () Bool)

(declare-fun e!636020 () Bool)

(assert (=> b!1116199 (=> (not res!745334) (not e!636020))))

(declare-datatypes ((array!72634 0))(
  ( (array!72635 (arr!34966 (Array (_ BitVec 32) (_ BitVec 64))) (size!35503 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72634)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72634 (_ BitVec 32)) Bool)

(assert (=> b!1116199 (= res!745334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43663 () Bool)

(declare-fun mapRes!43663 () Bool)

(assert (=> mapIsEmpty!43663 mapRes!43663))

(declare-fun b!1116200 () Bool)

(declare-fun res!745336 () Bool)

(assert (=> b!1116200 (=> (not res!745336) (not e!636020))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42323 0))(
  ( (V!42324 (val!14005 Int)) )
))
(declare-datatypes ((ValueCell!13239 0))(
  ( (ValueCellFull!13239 (v!16639 V!42323)) (EmptyCell!13239) )
))
(declare-datatypes ((array!72636 0))(
  ( (array!72637 (arr!34967 (Array (_ BitVec 32) ValueCell!13239)) (size!35504 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72636)

(assert (=> b!1116200 (= res!745336 (and (= (size!35504 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35503 _keys!1208) (size!35504 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116201 () Bool)

(declare-fun res!745335 () Bool)

(assert (=> b!1116201 (=> (not res!745335) (not e!636020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116201 (= res!745335 (validMask!0 mask!1564))))

(declare-fun b!1116202 () Bool)

(declare-fun e!636019 () Bool)

(assert (=> b!1116202 (= e!636019 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116202 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36535 0))(
  ( (Unit!36536) )
))
(declare-fun lt!497079 () Unit!36535)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72634 (_ BitVec 64) (_ BitVec 32)) Unit!36535)

(assert (=> b!1116202 (= lt!497079 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1116203 () Bool)

(declare-fun res!745332 () Bool)

(assert (=> b!1116203 (=> (not res!745332) (not e!636020))))

(assert (=> b!1116203 (= res!745332 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35503 _keys!1208))))))

(declare-fun res!745340 () Bool)

(assert (=> start!97702 (=> (not res!745340) (not e!636020))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97702 (= res!745340 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35503 _keys!1208))))))

(assert (=> start!97702 e!636020))

(declare-fun array_inv!26736 (array!72634) Bool)

(assert (=> start!97702 (array_inv!26736 _keys!1208)))

(assert (=> start!97702 true))

(declare-fun e!636022 () Bool)

(declare-fun array_inv!26737 (array!72636) Bool)

(assert (=> start!97702 (and (array_inv!26737 _values!996) e!636022)))

(declare-fun b!1116204 () Bool)

(declare-fun res!745341 () Bool)

(assert (=> b!1116204 (=> (not res!745341) (not e!636020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116204 (= res!745341 (validKeyInArray!0 k0!934))))

(declare-fun b!1116205 () Bool)

(declare-fun res!745339 () Bool)

(assert (=> b!1116205 (=> (not res!745339) (not e!636020))))

(declare-datatypes ((List!24470 0))(
  ( (Nil!24467) (Cons!24466 (h!25675 (_ BitVec 64)) (t!34958 List!24470)) )
))
(declare-fun arrayNoDuplicates!0 (array!72634 (_ BitVec 32) List!24470) Bool)

(assert (=> b!1116205 (= res!745339 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24467))))

(declare-fun b!1116206 () Bool)

(declare-fun e!636023 () Bool)

(assert (=> b!1116206 (= e!636022 (and e!636023 mapRes!43663))))

(declare-fun condMapEmpty!43663 () Bool)

(declare-fun mapDefault!43663 () ValueCell!13239)

(assert (=> b!1116206 (= condMapEmpty!43663 (= (arr!34967 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13239)) mapDefault!43663)))))

(declare-fun mapNonEmpty!43663 () Bool)

(declare-fun tp!82908 () Bool)

(declare-fun e!636018 () Bool)

(assert (=> mapNonEmpty!43663 (= mapRes!43663 (and tp!82908 e!636018))))

(declare-fun mapRest!43663 () (Array (_ BitVec 32) ValueCell!13239))

(declare-fun mapKey!43663 () (_ BitVec 32))

(declare-fun mapValue!43663 () ValueCell!13239)

(assert (=> mapNonEmpty!43663 (= (arr!34967 _values!996) (store mapRest!43663 mapKey!43663 mapValue!43663))))

(declare-fun b!1116207 () Bool)

(declare-fun tp_is_empty!27897 () Bool)

(assert (=> b!1116207 (= e!636023 tp_is_empty!27897)))

(declare-fun b!1116208 () Bool)

(declare-fun res!745338 () Bool)

(assert (=> b!1116208 (=> (not res!745338) (not e!636019))))

(declare-fun lt!497078 () array!72634)

(assert (=> b!1116208 (= res!745338 (arrayNoDuplicates!0 lt!497078 #b00000000000000000000000000000000 Nil!24467))))

(declare-fun b!1116209 () Bool)

(declare-fun res!745333 () Bool)

(assert (=> b!1116209 (=> (not res!745333) (not e!636020))))

(assert (=> b!1116209 (= res!745333 (= (select (arr!34966 _keys!1208) i!673) k0!934))))

(declare-fun b!1116210 () Bool)

(assert (=> b!1116210 (= e!636020 e!636019)))

(declare-fun res!745337 () Bool)

(assert (=> b!1116210 (=> (not res!745337) (not e!636019))))

(assert (=> b!1116210 (= res!745337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497078 mask!1564))))

(assert (=> b!1116210 (= lt!497078 (array!72635 (store (arr!34966 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35503 _keys!1208)))))

(declare-fun b!1116211 () Bool)

(assert (=> b!1116211 (= e!636018 tp_is_empty!27897)))

(assert (= (and start!97702 res!745340) b!1116201))

(assert (= (and b!1116201 res!745335) b!1116200))

(assert (= (and b!1116200 res!745336) b!1116199))

(assert (= (and b!1116199 res!745334) b!1116205))

(assert (= (and b!1116205 res!745339) b!1116203))

(assert (= (and b!1116203 res!745332) b!1116204))

(assert (= (and b!1116204 res!745341) b!1116209))

(assert (= (and b!1116209 res!745333) b!1116210))

(assert (= (and b!1116210 res!745337) b!1116208))

(assert (= (and b!1116208 res!745338) b!1116202))

(assert (= (and b!1116206 condMapEmpty!43663) mapIsEmpty!43663))

(assert (= (and b!1116206 (not condMapEmpty!43663)) mapNonEmpty!43663))

(get-info :version)

(assert (= (and mapNonEmpty!43663 ((_ is ValueCellFull!13239) mapValue!43663)) b!1116211))

(assert (= (and b!1116206 ((_ is ValueCellFull!13239) mapDefault!43663)) b!1116207))

(assert (= start!97702 b!1116206))

(declare-fun m!1032591 () Bool)

(assert (=> start!97702 m!1032591))

(declare-fun m!1032593 () Bool)

(assert (=> start!97702 m!1032593))

(declare-fun m!1032595 () Bool)

(assert (=> b!1116208 m!1032595))

(declare-fun m!1032597 () Bool)

(assert (=> b!1116199 m!1032597))

(declare-fun m!1032599 () Bool)

(assert (=> b!1116209 m!1032599))

(declare-fun m!1032601 () Bool)

(assert (=> b!1116201 m!1032601))

(declare-fun m!1032603 () Bool)

(assert (=> b!1116210 m!1032603))

(declare-fun m!1032605 () Bool)

(assert (=> b!1116210 m!1032605))

(declare-fun m!1032607 () Bool)

(assert (=> b!1116204 m!1032607))

(declare-fun m!1032609 () Bool)

(assert (=> mapNonEmpty!43663 m!1032609))

(declare-fun m!1032611 () Bool)

(assert (=> b!1116202 m!1032611))

(declare-fun m!1032613 () Bool)

(assert (=> b!1116202 m!1032613))

(declare-fun m!1032615 () Bool)

(assert (=> b!1116205 m!1032615))

(check-sat (not b!1116201) tp_is_empty!27897 (not b!1116199) (not b!1116204) (not mapNonEmpty!43663) (not b!1116210) (not start!97702) (not b!1116205) (not b!1116208) (not b!1116202))
(check-sat)
