; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97552 () Bool)

(assert start!97552)

(declare-fun b!1113274 () Bool)

(declare-fun res!743088 () Bool)

(declare-fun e!634669 () Bool)

(assert (=> b!1113274 (=> (not res!743088) (not e!634669))))

(declare-datatypes ((array!72350 0))(
  ( (array!72351 (arr!34824 (Array (_ BitVec 32) (_ BitVec 64))) (size!35361 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72350)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72350 (_ BitVec 32)) Bool)

(assert (=> b!1113274 (= res!743088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113275 () Bool)

(declare-fun e!634672 () Bool)

(assert (=> b!1113275 (= e!634672 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113275 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36445 0))(
  ( (Unit!36446) )
))
(declare-fun lt!496629 () Unit!36445)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72350 (_ BitVec 64) (_ BitVec 32)) Unit!36445)

(assert (=> b!1113275 (= lt!496629 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1113276 () Bool)

(declare-fun res!743087 () Bool)

(assert (=> b!1113276 (=> (not res!743087) (not e!634672))))

(declare-fun lt!496628 () array!72350)

(declare-datatypes ((List!24416 0))(
  ( (Nil!24413) (Cons!24412 (h!25621 (_ BitVec 64)) (t!34904 List!24416)) )
))
(declare-fun arrayNoDuplicates!0 (array!72350 (_ BitVec 32) List!24416) Bool)

(assert (=> b!1113276 (= res!743087 (arrayNoDuplicates!0 lt!496628 #b00000000000000000000000000000000 Nil!24413))))

(declare-fun mapNonEmpty!43438 () Bool)

(declare-fun mapRes!43438 () Bool)

(declare-fun tp!82683 () Bool)

(declare-fun e!634671 () Bool)

(assert (=> mapNonEmpty!43438 (= mapRes!43438 (and tp!82683 e!634671))))

(declare-datatypes ((V!42123 0))(
  ( (V!42124 (val!13930 Int)) )
))
(declare-datatypes ((ValueCell!13164 0))(
  ( (ValueCellFull!13164 (v!16564 V!42123)) (EmptyCell!13164) )
))
(declare-fun mapValue!43438 () ValueCell!13164)

(declare-fun mapRest!43438 () (Array (_ BitVec 32) ValueCell!13164))

(declare-fun mapKey!43438 () (_ BitVec 32))

(declare-datatypes ((array!72352 0))(
  ( (array!72353 (arr!34825 (Array (_ BitVec 32) ValueCell!13164)) (size!35362 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72352)

(assert (=> mapNonEmpty!43438 (= (arr!34825 _values!996) (store mapRest!43438 mapKey!43438 mapValue!43438))))

(declare-fun b!1113277 () Bool)

(declare-fun res!743082 () Bool)

(assert (=> b!1113277 (=> (not res!743082) (not e!634669))))

(assert (=> b!1113277 (= res!743082 (= (select (arr!34824 _keys!1208) i!673) k0!934))))

(declare-fun b!1113278 () Bool)

(declare-fun res!743086 () Bool)

(assert (=> b!1113278 (=> (not res!743086) (not e!634669))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113278 (= res!743086 (and (= (size!35362 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35361 _keys!1208) (size!35362 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113279 () Bool)

(declare-fun res!743084 () Bool)

(assert (=> b!1113279 (=> (not res!743084) (not e!634669))))

(assert (=> b!1113279 (= res!743084 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35361 _keys!1208))))))

(declare-fun b!1113280 () Bool)

(declare-fun res!743085 () Bool)

(assert (=> b!1113280 (=> (not res!743085) (not e!634669))))

(assert (=> b!1113280 (= res!743085 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24413))))

(declare-fun res!743089 () Bool)

(assert (=> start!97552 (=> (not res!743089) (not e!634669))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97552 (= res!743089 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35361 _keys!1208))))))

(assert (=> start!97552 e!634669))

(declare-fun array_inv!26646 (array!72350) Bool)

(assert (=> start!97552 (array_inv!26646 _keys!1208)))

(assert (=> start!97552 true))

(declare-fun e!634670 () Bool)

(declare-fun array_inv!26647 (array!72352) Bool)

(assert (=> start!97552 (and (array_inv!26647 _values!996) e!634670)))

(declare-fun b!1113281 () Bool)

(declare-fun e!634673 () Bool)

(assert (=> b!1113281 (= e!634670 (and e!634673 mapRes!43438))))

(declare-fun condMapEmpty!43438 () Bool)

(declare-fun mapDefault!43438 () ValueCell!13164)

(assert (=> b!1113281 (= condMapEmpty!43438 (= (arr!34825 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13164)) mapDefault!43438)))))

(declare-fun mapIsEmpty!43438 () Bool)

(assert (=> mapIsEmpty!43438 mapRes!43438))

(declare-fun b!1113282 () Bool)

(declare-fun tp_is_empty!27747 () Bool)

(assert (=> b!1113282 (= e!634673 tp_is_empty!27747)))

(declare-fun b!1113283 () Bool)

(declare-fun res!743091 () Bool)

(assert (=> b!1113283 (=> (not res!743091) (not e!634669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113283 (= res!743091 (validMask!0 mask!1564))))

(declare-fun b!1113284 () Bool)

(assert (=> b!1113284 (= e!634669 e!634672)))

(declare-fun res!743090 () Bool)

(assert (=> b!1113284 (=> (not res!743090) (not e!634672))))

(assert (=> b!1113284 (= res!743090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496628 mask!1564))))

(assert (=> b!1113284 (= lt!496628 (array!72351 (store (arr!34824 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35361 _keys!1208)))))

(declare-fun b!1113285 () Bool)

(declare-fun res!743083 () Bool)

(assert (=> b!1113285 (=> (not res!743083) (not e!634669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113285 (= res!743083 (validKeyInArray!0 k0!934))))

(declare-fun b!1113286 () Bool)

(assert (=> b!1113286 (= e!634671 tp_is_empty!27747)))

(assert (= (and start!97552 res!743089) b!1113283))

(assert (= (and b!1113283 res!743091) b!1113278))

(assert (= (and b!1113278 res!743086) b!1113274))

(assert (= (and b!1113274 res!743088) b!1113280))

(assert (= (and b!1113280 res!743085) b!1113279))

(assert (= (and b!1113279 res!743084) b!1113285))

(assert (= (and b!1113285 res!743083) b!1113277))

(assert (= (and b!1113277 res!743082) b!1113284))

(assert (= (and b!1113284 res!743090) b!1113276))

(assert (= (and b!1113276 res!743087) b!1113275))

(assert (= (and b!1113281 condMapEmpty!43438) mapIsEmpty!43438))

(assert (= (and b!1113281 (not condMapEmpty!43438)) mapNonEmpty!43438))

(get-info :version)

(assert (= (and mapNonEmpty!43438 ((_ is ValueCellFull!13164) mapValue!43438)) b!1113286))

(assert (= (and b!1113281 ((_ is ValueCellFull!13164) mapDefault!43438)) b!1113282))

(assert (= start!97552 b!1113281))

(declare-fun m!1030641 () Bool)

(assert (=> b!1113285 m!1030641))

(declare-fun m!1030643 () Bool)

(assert (=> b!1113275 m!1030643))

(declare-fun m!1030645 () Bool)

(assert (=> b!1113275 m!1030645))

(declare-fun m!1030647 () Bool)

(assert (=> b!1113276 m!1030647))

(declare-fun m!1030649 () Bool)

(assert (=> b!1113284 m!1030649))

(declare-fun m!1030651 () Bool)

(assert (=> b!1113284 m!1030651))

(declare-fun m!1030653 () Bool)

(assert (=> b!1113283 m!1030653))

(declare-fun m!1030655 () Bool)

(assert (=> start!97552 m!1030655))

(declare-fun m!1030657 () Bool)

(assert (=> start!97552 m!1030657))

(declare-fun m!1030659 () Bool)

(assert (=> mapNonEmpty!43438 m!1030659))

(declare-fun m!1030661 () Bool)

(assert (=> b!1113280 m!1030661))

(declare-fun m!1030663 () Bool)

(assert (=> b!1113274 m!1030663))

(declare-fun m!1030665 () Bool)

(assert (=> b!1113277 m!1030665))

(check-sat (not b!1113275) (not b!1113274) (not b!1113283) (not b!1113280) tp_is_empty!27747 (not mapNonEmpty!43438) (not b!1113284) (not b!1113285) (not b!1113276) (not start!97552))
(check-sat)
