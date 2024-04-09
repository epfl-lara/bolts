; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97528 () Bool)

(assert start!97528)

(declare-fun b!1112806 () Bool)

(declare-fun e!634455 () Bool)

(declare-fun e!634454 () Bool)

(assert (=> b!1112806 (= e!634455 e!634454)))

(declare-fun res!742722 () Bool)

(assert (=> b!1112806 (=> (not res!742722) (not e!634454))))

(declare-datatypes ((array!72302 0))(
  ( (array!72303 (arr!34800 (Array (_ BitVec 32) (_ BitVec 64))) (size!35337 (_ BitVec 32))) )
))
(declare-fun lt!496557 () array!72302)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72302 (_ BitVec 32)) Bool)

(assert (=> b!1112806 (= res!742722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496557 mask!1564))))

(declare-fun _keys!1208 () array!72302)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112806 (= lt!496557 (array!72303 (store (arr!34800 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35337 _keys!1208)))))

(declare-fun b!1112807 () Bool)

(declare-fun res!742723 () Bool)

(assert (=> b!1112807 (=> (not res!742723) (not e!634454))))

(declare-datatypes ((List!24407 0))(
  ( (Nil!24404) (Cons!24403 (h!25612 (_ BitVec 64)) (t!34895 List!24407)) )
))
(declare-fun arrayNoDuplicates!0 (array!72302 (_ BitVec 32) List!24407) Bool)

(assert (=> b!1112807 (= res!742723 (arrayNoDuplicates!0 lt!496557 #b00000000000000000000000000000000 Nil!24404))))

(declare-fun b!1112808 () Bool)

(declare-fun res!742725 () Bool)

(assert (=> b!1112808 (=> (not res!742725) (not e!634455))))

(assert (=> b!1112808 (= res!742725 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35337 _keys!1208))))))

(declare-fun b!1112809 () Bool)

(declare-fun res!742726 () Bool)

(assert (=> b!1112809 (=> (not res!742726) (not e!634455))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1112809 (= res!742726 (= (select (arr!34800 _keys!1208) i!673) k0!934))))

(declare-fun b!1112810 () Bool)

(declare-fun e!634456 () Bool)

(declare-fun tp_is_empty!27723 () Bool)

(assert (=> b!1112810 (= e!634456 tp_is_empty!27723)))

(declare-fun b!1112811 () Bool)

(declare-fun res!742729 () Bool)

(assert (=> b!1112811 (=> (not res!742729) (not e!634455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112811 (= res!742729 (validKeyInArray!0 k0!934))))

(declare-fun b!1112812 () Bool)

(declare-fun res!742728 () Bool)

(assert (=> b!1112812 (=> (not res!742728) (not e!634455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112812 (= res!742728 (validMask!0 mask!1564))))

(declare-fun b!1112813 () Bool)

(declare-fun e!634453 () Bool)

(declare-fun mapRes!43402 () Bool)

(assert (=> b!1112813 (= e!634453 (and e!634456 mapRes!43402))))

(declare-fun condMapEmpty!43402 () Bool)

(declare-datatypes ((V!42091 0))(
  ( (V!42092 (val!13918 Int)) )
))
(declare-datatypes ((ValueCell!13152 0))(
  ( (ValueCellFull!13152 (v!16552 V!42091)) (EmptyCell!13152) )
))
(declare-datatypes ((array!72304 0))(
  ( (array!72305 (arr!34801 (Array (_ BitVec 32) ValueCell!13152)) (size!35338 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72304)

(declare-fun mapDefault!43402 () ValueCell!13152)

(assert (=> b!1112813 (= condMapEmpty!43402 (= (arr!34801 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13152)) mapDefault!43402)))))

(declare-fun b!1112814 () Bool)

(declare-fun e!634452 () Bool)

(assert (=> b!1112814 (= e!634452 tp_is_empty!27723)))

(declare-fun b!1112815 () Bool)

(declare-fun res!742731 () Bool)

(assert (=> b!1112815 (=> (not res!742731) (not e!634455))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1112815 (= res!742731 (and (= (size!35338 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35337 _keys!1208) (size!35338 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112816 () Bool)

(declare-fun res!742730 () Bool)

(assert (=> b!1112816 (=> (not res!742730) (not e!634455))))

(assert (=> b!1112816 (= res!742730 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24404))))

(declare-fun b!1112817 () Bool)

(declare-fun res!742724 () Bool)

(assert (=> b!1112817 (=> (not res!742724) (not e!634455))))

(assert (=> b!1112817 (= res!742724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43402 () Bool)

(declare-fun tp!82647 () Bool)

(assert (=> mapNonEmpty!43402 (= mapRes!43402 (and tp!82647 e!634452))))

(declare-fun mapValue!43402 () ValueCell!13152)

(declare-fun mapKey!43402 () (_ BitVec 32))

(declare-fun mapRest!43402 () (Array (_ BitVec 32) ValueCell!13152))

(assert (=> mapNonEmpty!43402 (= (arr!34801 _values!996) (store mapRest!43402 mapKey!43402 mapValue!43402))))

(declare-fun b!1112818 () Bool)

(assert (=> b!1112818 (= e!634454 (not true))))

(declare-fun arrayContainsKey!0 (array!72302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112818 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36429 0))(
  ( (Unit!36430) )
))
(declare-fun lt!496556 () Unit!36429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72302 (_ BitVec 64) (_ BitVec 32)) Unit!36429)

(assert (=> b!1112818 (= lt!496556 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!742727 () Bool)

(assert (=> start!97528 (=> (not res!742727) (not e!634455))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97528 (= res!742727 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35337 _keys!1208))))))

(assert (=> start!97528 e!634455))

(declare-fun array_inv!26632 (array!72302) Bool)

(assert (=> start!97528 (array_inv!26632 _keys!1208)))

(assert (=> start!97528 true))

(declare-fun array_inv!26633 (array!72304) Bool)

(assert (=> start!97528 (and (array_inv!26633 _values!996) e!634453)))

(declare-fun mapIsEmpty!43402 () Bool)

(assert (=> mapIsEmpty!43402 mapRes!43402))

(assert (= (and start!97528 res!742727) b!1112812))

(assert (= (and b!1112812 res!742728) b!1112815))

(assert (= (and b!1112815 res!742731) b!1112817))

(assert (= (and b!1112817 res!742724) b!1112816))

(assert (= (and b!1112816 res!742730) b!1112808))

(assert (= (and b!1112808 res!742725) b!1112811))

(assert (= (and b!1112811 res!742729) b!1112809))

(assert (= (and b!1112809 res!742726) b!1112806))

(assert (= (and b!1112806 res!742722) b!1112807))

(assert (= (and b!1112807 res!742723) b!1112818))

(assert (= (and b!1112813 condMapEmpty!43402) mapIsEmpty!43402))

(assert (= (and b!1112813 (not condMapEmpty!43402)) mapNonEmpty!43402))

(get-info :version)

(assert (= (and mapNonEmpty!43402 ((_ is ValueCellFull!13152) mapValue!43402)) b!1112814))

(assert (= (and b!1112813 ((_ is ValueCellFull!13152) mapDefault!43402)) b!1112810))

(assert (= start!97528 b!1112813))

(declare-fun m!1030329 () Bool)

(assert (=> b!1112817 m!1030329))

(declare-fun m!1030331 () Bool)

(assert (=> mapNonEmpty!43402 m!1030331))

(declare-fun m!1030333 () Bool)

(assert (=> b!1112818 m!1030333))

(declare-fun m!1030335 () Bool)

(assert (=> b!1112818 m!1030335))

(declare-fun m!1030337 () Bool)

(assert (=> b!1112812 m!1030337))

(declare-fun m!1030339 () Bool)

(assert (=> start!97528 m!1030339))

(declare-fun m!1030341 () Bool)

(assert (=> start!97528 m!1030341))

(declare-fun m!1030343 () Bool)

(assert (=> b!1112809 m!1030343))

(declare-fun m!1030345 () Bool)

(assert (=> b!1112816 m!1030345))

(declare-fun m!1030347 () Bool)

(assert (=> b!1112807 m!1030347))

(declare-fun m!1030349 () Bool)

(assert (=> b!1112811 m!1030349))

(declare-fun m!1030351 () Bool)

(assert (=> b!1112806 m!1030351))

(declare-fun m!1030353 () Bool)

(assert (=> b!1112806 m!1030353))

(check-sat (not b!1112817) (not b!1112811) (not start!97528) (not mapNonEmpty!43402) (not b!1112816) (not b!1112818) (not b!1112807) tp_is_empty!27723 (not b!1112812) (not b!1112806))
(check-sat)
