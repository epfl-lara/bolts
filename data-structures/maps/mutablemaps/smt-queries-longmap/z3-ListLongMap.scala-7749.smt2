; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97276 () Bool)

(assert start!97276)

(declare-fun b!1106644 () Bool)

(declare-fun res!738627 () Bool)

(declare-fun e!631506 () Bool)

(assert (=> b!1106644 (=> (not res!738627) (not e!631506))))

(declare-datatypes ((array!71812 0))(
  ( (array!71813 (arr!34555 (Array (_ BitVec 32) (_ BitVec 64))) (size!35092 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71812)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41755 0))(
  ( (V!41756 (val!13792 Int)) )
))
(declare-datatypes ((ValueCell!13026 0))(
  ( (ValueCellFull!13026 (v!16426 V!41755)) (EmptyCell!13026) )
))
(declare-datatypes ((array!71814 0))(
  ( (array!71815 (arr!34556 (Array (_ BitVec 32) ValueCell!13026)) (size!35093 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71814)

(assert (=> b!1106644 (= res!738627 (and (= (size!35093 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35092 _keys!1208) (size!35093 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106645 () Bool)

(declare-fun e!631511 () Bool)

(assert (=> b!1106645 (= e!631506 e!631511)))

(declare-fun res!738624 () Bool)

(assert (=> b!1106645 (=> (not res!738624) (not e!631511))))

(declare-fun lt!495476 () array!71812)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71812 (_ BitVec 32)) Bool)

(assert (=> b!1106645 (= res!738624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495476 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106645 (= lt!495476 (array!71813 (store (arr!34555 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35092 _keys!1208)))))

(declare-fun b!1106646 () Bool)

(declare-fun res!738625 () Bool)

(assert (=> b!1106646 (=> (not res!738625) (not e!631506))))

(assert (=> b!1106646 (= res!738625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106647 () Bool)

(declare-fun e!631507 () Bool)

(declare-fun tp_is_empty!27471 () Bool)

(assert (=> b!1106647 (= e!631507 tp_is_empty!27471)))

(declare-fun b!1106648 () Bool)

(declare-fun res!738621 () Bool)

(assert (=> b!1106648 (=> (not res!738621) (not e!631506))))

(assert (=> b!1106648 (= res!738621 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35092 _keys!1208))))))

(declare-fun b!1106649 () Bool)

(declare-fun e!631509 () Bool)

(assert (=> b!1106649 (= e!631509 tp_is_empty!27471)))

(declare-fun b!1106650 () Bool)

(assert (=> b!1106650 (= e!631511 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106650 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36255 0))(
  ( (Unit!36256) )
))
(declare-fun lt!495477 () Unit!36255)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71812 (_ BitVec 64) (_ BitVec 32)) Unit!36255)

(assert (=> b!1106650 (= lt!495477 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1106651 () Bool)

(declare-fun res!738623 () Bool)

(assert (=> b!1106651 (=> (not res!738623) (not e!631506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106651 (= res!738623 (validMask!0 mask!1564))))

(declare-fun b!1106652 () Bool)

(declare-fun res!738620 () Bool)

(assert (=> b!1106652 (=> (not res!738620) (not e!631506))))

(assert (=> b!1106652 (= res!738620 (= (select (arr!34555 _keys!1208) i!673) k0!934))))

(declare-fun b!1106653 () Bool)

(declare-fun res!738619 () Bool)

(assert (=> b!1106653 (=> (not res!738619) (not e!631506))))

(declare-datatypes ((List!24221 0))(
  ( (Nil!24218) (Cons!24217 (h!25426 (_ BitVec 64)) (t!34493 List!24221)) )
))
(declare-fun arrayNoDuplicates!0 (array!71812 (_ BitVec 32) List!24221) Bool)

(assert (=> b!1106653 (= res!738619 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24218))))

(declare-fun b!1106654 () Bool)

(declare-fun res!738626 () Bool)

(assert (=> b!1106654 (=> (not res!738626) (not e!631506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106654 (= res!738626 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!43024 () Bool)

(declare-fun mapRes!43024 () Bool)

(declare-fun tp!81945 () Bool)

(assert (=> mapNonEmpty!43024 (= mapRes!43024 (and tp!81945 e!631509))))

(declare-fun mapRest!43024 () (Array (_ BitVec 32) ValueCell!13026))

(declare-fun mapValue!43024 () ValueCell!13026)

(declare-fun mapKey!43024 () (_ BitVec 32))

(assert (=> mapNonEmpty!43024 (= (arr!34556 _values!996) (store mapRest!43024 mapKey!43024 mapValue!43024))))

(declare-fun b!1106655 () Bool)

(declare-fun res!738622 () Bool)

(assert (=> b!1106655 (=> (not res!738622) (not e!631511))))

(assert (=> b!1106655 (= res!738622 (arrayNoDuplicates!0 lt!495476 #b00000000000000000000000000000000 Nil!24218))))

(declare-fun mapIsEmpty!43024 () Bool)

(assert (=> mapIsEmpty!43024 mapRes!43024))

(declare-fun res!738618 () Bool)

(assert (=> start!97276 (=> (not res!738618) (not e!631506))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97276 (= res!738618 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35092 _keys!1208))))))

(assert (=> start!97276 e!631506))

(declare-fun array_inv!26456 (array!71812) Bool)

(assert (=> start!97276 (array_inv!26456 _keys!1208)))

(assert (=> start!97276 true))

(declare-fun e!631508 () Bool)

(declare-fun array_inv!26457 (array!71814) Bool)

(assert (=> start!97276 (and (array_inv!26457 _values!996) e!631508)))

(declare-fun b!1106656 () Bool)

(assert (=> b!1106656 (= e!631508 (and e!631507 mapRes!43024))))

(declare-fun condMapEmpty!43024 () Bool)

(declare-fun mapDefault!43024 () ValueCell!13026)

(assert (=> b!1106656 (= condMapEmpty!43024 (= (arr!34556 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13026)) mapDefault!43024)))))

(assert (= (and start!97276 res!738618) b!1106651))

(assert (= (and b!1106651 res!738623) b!1106644))

(assert (= (and b!1106644 res!738627) b!1106646))

(assert (= (and b!1106646 res!738625) b!1106653))

(assert (= (and b!1106653 res!738619) b!1106648))

(assert (= (and b!1106648 res!738621) b!1106654))

(assert (= (and b!1106654 res!738626) b!1106652))

(assert (= (and b!1106652 res!738620) b!1106645))

(assert (= (and b!1106645 res!738624) b!1106655))

(assert (= (and b!1106655 res!738622) b!1106650))

(assert (= (and b!1106656 condMapEmpty!43024) mapIsEmpty!43024))

(assert (= (and b!1106656 (not condMapEmpty!43024)) mapNonEmpty!43024))

(get-info :version)

(assert (= (and mapNonEmpty!43024 ((_ is ValueCellFull!13026) mapValue!43024)) b!1106649))

(assert (= (and b!1106656 ((_ is ValueCellFull!13026) mapDefault!43024)) b!1106647))

(assert (= start!97276 b!1106656))

(declare-fun m!1025757 () Bool)

(assert (=> b!1106651 m!1025757))

(declare-fun m!1025759 () Bool)

(assert (=> mapNonEmpty!43024 m!1025759))

(declare-fun m!1025761 () Bool)

(assert (=> b!1106650 m!1025761))

(declare-fun m!1025763 () Bool)

(assert (=> b!1106650 m!1025763))

(declare-fun m!1025765 () Bool)

(assert (=> b!1106654 m!1025765))

(declare-fun m!1025767 () Bool)

(assert (=> b!1106646 m!1025767))

(declare-fun m!1025769 () Bool)

(assert (=> b!1106645 m!1025769))

(declare-fun m!1025771 () Bool)

(assert (=> b!1106645 m!1025771))

(declare-fun m!1025773 () Bool)

(assert (=> start!97276 m!1025773))

(declare-fun m!1025775 () Bool)

(assert (=> start!97276 m!1025775))

(declare-fun m!1025777 () Bool)

(assert (=> b!1106653 m!1025777))

(declare-fun m!1025779 () Bool)

(assert (=> b!1106652 m!1025779))

(declare-fun m!1025781 () Bool)

(assert (=> b!1106655 m!1025781))

(check-sat (not b!1106650) (not b!1106646) (not b!1106655) (not start!97276) (not mapNonEmpty!43024) (not b!1106645) (not b!1106653) tp_is_empty!27471 (not b!1106651) (not b!1106654))
(check-sat)
