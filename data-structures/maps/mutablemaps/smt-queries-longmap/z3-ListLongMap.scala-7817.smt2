; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97684 () Bool)

(assert start!97684)

(declare-fun b!1115848 () Bool)

(declare-fun e!635857 () Bool)

(declare-fun tp_is_empty!27879 () Bool)

(assert (=> b!1115848 (= e!635857 tp_is_empty!27879)))

(declare-fun b!1115849 () Bool)

(declare-fun res!745064 () Bool)

(declare-fun e!635860 () Bool)

(assert (=> b!1115849 (=> (not res!745064) (not e!635860))))

(declare-datatypes ((array!72598 0))(
  ( (array!72599 (arr!34948 (Array (_ BitVec 32) (_ BitVec 64))) (size!35485 (_ BitVec 32))) )
))
(declare-fun lt!497024 () array!72598)

(declare-datatypes ((List!24462 0))(
  ( (Nil!24459) (Cons!24458 (h!25667 (_ BitVec 64)) (t!34950 List!24462)) )
))
(declare-fun arrayNoDuplicates!0 (array!72598 (_ BitVec 32) List!24462) Bool)

(assert (=> b!1115849 (= res!745064 (arrayNoDuplicates!0 lt!497024 #b00000000000000000000000000000000 Nil!24459))))

(declare-fun b!1115851 () Bool)

(declare-fun e!635856 () Bool)

(declare-fun mapRes!43636 () Bool)

(assert (=> b!1115851 (= e!635856 (and e!635857 mapRes!43636))))

(declare-fun condMapEmpty!43636 () Bool)

(declare-datatypes ((V!42299 0))(
  ( (V!42300 (val!13996 Int)) )
))
(declare-datatypes ((ValueCell!13230 0))(
  ( (ValueCellFull!13230 (v!16630 V!42299)) (EmptyCell!13230) )
))
(declare-datatypes ((array!72600 0))(
  ( (array!72601 (arr!34949 (Array (_ BitVec 32) ValueCell!13230)) (size!35486 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72600)

(declare-fun mapDefault!43636 () ValueCell!13230)

(assert (=> b!1115851 (= condMapEmpty!43636 (= (arr!34949 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13230)) mapDefault!43636)))))

(declare-fun b!1115852 () Bool)

(declare-fun res!745070 () Bool)

(declare-fun e!635861 () Bool)

(assert (=> b!1115852 (=> (not res!745070) (not e!635861))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115852 (= res!745070 (validKeyInArray!0 k0!934))))

(declare-fun b!1115853 () Bool)

(declare-fun e!635858 () Bool)

(assert (=> b!1115853 (= e!635858 tp_is_empty!27879)))

(declare-fun mapIsEmpty!43636 () Bool)

(assert (=> mapIsEmpty!43636 mapRes!43636))

(declare-fun b!1115854 () Bool)

(assert (=> b!1115854 (= e!635861 e!635860)))

(declare-fun res!745071 () Bool)

(assert (=> b!1115854 (=> (not res!745071) (not e!635860))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72598 (_ BitVec 32)) Bool)

(assert (=> b!1115854 (= res!745071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497024 mask!1564))))

(declare-fun _keys!1208 () array!72598)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115854 (= lt!497024 (array!72599 (store (arr!34948 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35485 _keys!1208)))))

(declare-fun b!1115855 () Bool)

(declare-fun res!745063 () Bool)

(assert (=> b!1115855 (=> (not res!745063) (not e!635861))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115855 (= res!745063 (and (= (size!35486 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35485 _keys!1208) (size!35486 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115856 () Bool)

(declare-fun res!745066 () Bool)

(assert (=> b!1115856 (=> (not res!745066) (not e!635861))))

(assert (=> b!1115856 (= res!745066 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24459))))

(declare-fun b!1115857 () Bool)

(declare-fun res!745062 () Bool)

(assert (=> b!1115857 (=> (not res!745062) (not e!635861))))

(assert (=> b!1115857 (= res!745062 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35485 _keys!1208))))))

(declare-fun b!1115858 () Bool)

(declare-fun res!745069 () Bool)

(assert (=> b!1115858 (=> (not res!745069) (not e!635861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115858 (= res!745069 (validMask!0 mask!1564))))

(declare-fun b!1115859 () Bool)

(declare-fun res!745068 () Bool)

(assert (=> b!1115859 (=> (not res!745068) (not e!635861))))

(assert (=> b!1115859 (= res!745068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115850 () Bool)

(assert (=> b!1115850 (= e!635860 (not true))))

(declare-fun arrayContainsKey!0 (array!72598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115850 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36519 0))(
  ( (Unit!36520) )
))
(declare-fun lt!497025 () Unit!36519)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72598 (_ BitVec 64) (_ BitVec 32)) Unit!36519)

(assert (=> b!1115850 (= lt!497025 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!745065 () Bool)

(assert (=> start!97684 (=> (not res!745065) (not e!635861))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97684 (= res!745065 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35485 _keys!1208))))))

(assert (=> start!97684 e!635861))

(declare-fun array_inv!26720 (array!72598) Bool)

(assert (=> start!97684 (array_inv!26720 _keys!1208)))

(assert (=> start!97684 true))

(declare-fun array_inv!26721 (array!72600) Bool)

(assert (=> start!97684 (and (array_inv!26721 _values!996) e!635856)))

(declare-fun b!1115860 () Bool)

(declare-fun res!745067 () Bool)

(assert (=> b!1115860 (=> (not res!745067) (not e!635861))))

(assert (=> b!1115860 (= res!745067 (= (select (arr!34948 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!43636 () Bool)

(declare-fun tp!82881 () Bool)

(assert (=> mapNonEmpty!43636 (= mapRes!43636 (and tp!82881 e!635858))))

(declare-fun mapRest!43636 () (Array (_ BitVec 32) ValueCell!13230))

(declare-fun mapKey!43636 () (_ BitVec 32))

(declare-fun mapValue!43636 () ValueCell!13230)

(assert (=> mapNonEmpty!43636 (= (arr!34949 _values!996) (store mapRest!43636 mapKey!43636 mapValue!43636))))

(assert (= (and start!97684 res!745065) b!1115858))

(assert (= (and b!1115858 res!745069) b!1115855))

(assert (= (and b!1115855 res!745063) b!1115859))

(assert (= (and b!1115859 res!745068) b!1115856))

(assert (= (and b!1115856 res!745066) b!1115857))

(assert (= (and b!1115857 res!745062) b!1115852))

(assert (= (and b!1115852 res!745070) b!1115860))

(assert (= (and b!1115860 res!745067) b!1115854))

(assert (= (and b!1115854 res!745071) b!1115849))

(assert (= (and b!1115849 res!745064) b!1115850))

(assert (= (and b!1115851 condMapEmpty!43636) mapIsEmpty!43636))

(assert (= (and b!1115851 (not condMapEmpty!43636)) mapNonEmpty!43636))

(get-info :version)

(assert (= (and mapNonEmpty!43636 ((_ is ValueCellFull!13230) mapValue!43636)) b!1115853))

(assert (= (and b!1115851 ((_ is ValueCellFull!13230) mapDefault!43636)) b!1115848))

(assert (= start!97684 b!1115851))

(declare-fun m!1032357 () Bool)

(assert (=> start!97684 m!1032357))

(declare-fun m!1032359 () Bool)

(assert (=> start!97684 m!1032359))

(declare-fun m!1032361 () Bool)

(assert (=> b!1115852 m!1032361))

(declare-fun m!1032363 () Bool)

(assert (=> b!1115860 m!1032363))

(declare-fun m!1032365 () Bool)

(assert (=> b!1115856 m!1032365))

(declare-fun m!1032367 () Bool)

(assert (=> b!1115854 m!1032367))

(declare-fun m!1032369 () Bool)

(assert (=> b!1115854 m!1032369))

(declare-fun m!1032371 () Bool)

(assert (=> b!1115849 m!1032371))

(declare-fun m!1032373 () Bool)

(assert (=> mapNonEmpty!43636 m!1032373))

(declare-fun m!1032375 () Bool)

(assert (=> b!1115850 m!1032375))

(declare-fun m!1032377 () Bool)

(assert (=> b!1115850 m!1032377))

(declare-fun m!1032379 () Bool)

(assert (=> b!1115858 m!1032379))

(declare-fun m!1032381 () Bool)

(assert (=> b!1115859 m!1032381))

(check-sat (not b!1115849) (not b!1115858) (not b!1115856) (not b!1115852) (not mapNonEmpty!43636) (not b!1115854) (not start!97684) (not b!1115850) tp_is_empty!27879 (not b!1115859))
(check-sat)
