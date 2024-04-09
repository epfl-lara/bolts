; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97564 () Bool)

(assert start!97564)

(declare-fun mapNonEmpty!43456 () Bool)

(declare-fun mapRes!43456 () Bool)

(declare-fun tp!82701 () Bool)

(declare-fun e!634776 () Bool)

(assert (=> mapNonEmpty!43456 (= mapRes!43456 (and tp!82701 e!634776))))

(declare-datatypes ((V!42139 0))(
  ( (V!42140 (val!13936 Int)) )
))
(declare-datatypes ((ValueCell!13170 0))(
  ( (ValueCellFull!13170 (v!16570 V!42139)) (EmptyCell!13170) )
))
(declare-fun mapValue!43456 () ValueCell!13170)

(declare-fun mapKey!43456 () (_ BitVec 32))

(declare-fun mapRest!43456 () (Array (_ BitVec 32) ValueCell!13170))

(declare-datatypes ((array!72370 0))(
  ( (array!72371 (arr!34834 (Array (_ BitVec 32) ValueCell!13170)) (size!35371 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72370)

(assert (=> mapNonEmpty!43456 (= (arr!34834 _values!996) (store mapRest!43456 mapKey!43456 mapValue!43456))))

(declare-fun b!1113508 () Bool)

(declare-fun e!634777 () Bool)

(declare-fun e!634779 () Bool)

(assert (=> b!1113508 (= e!634777 (and e!634779 mapRes!43456))))

(declare-fun condMapEmpty!43456 () Bool)

(declare-fun mapDefault!43456 () ValueCell!13170)

(assert (=> b!1113508 (= condMapEmpty!43456 (= (arr!34834 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13170)) mapDefault!43456)))))

(declare-fun b!1113510 () Bool)

(declare-fun e!634781 () Bool)

(assert (=> b!1113510 (= e!634781 (not true))))

(declare-datatypes ((array!72372 0))(
  ( (array!72373 (arr!34835 (Array (_ BitVec 32) (_ BitVec 64))) (size!35372 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72372)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113510 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36451 0))(
  ( (Unit!36452) )
))
(declare-fun lt!496665 () Unit!36451)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72372 (_ BitVec 64) (_ BitVec 32)) Unit!36451)

(assert (=> b!1113510 (= lt!496665 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1113511 () Bool)

(declare-fun e!634778 () Bool)

(assert (=> b!1113511 (= e!634778 e!634781)))

(declare-fun res!743268 () Bool)

(assert (=> b!1113511 (=> (not res!743268) (not e!634781))))

(declare-fun lt!496664 () array!72372)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72372 (_ BitVec 32)) Bool)

(assert (=> b!1113511 (= res!743268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496664 mask!1564))))

(assert (=> b!1113511 (= lt!496664 (array!72373 (store (arr!34835 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35372 _keys!1208)))))

(declare-fun b!1113512 () Bool)

(declare-fun res!743267 () Bool)

(assert (=> b!1113512 (=> (not res!743267) (not e!634778))))

(declare-datatypes ((List!24419 0))(
  ( (Nil!24416) (Cons!24415 (h!25624 (_ BitVec 64)) (t!34907 List!24419)) )
))
(declare-fun arrayNoDuplicates!0 (array!72372 (_ BitVec 32) List!24419) Bool)

(assert (=> b!1113512 (= res!743267 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24416))))

(declare-fun mapIsEmpty!43456 () Bool)

(assert (=> mapIsEmpty!43456 mapRes!43456))

(declare-fun b!1113513 () Bool)

(declare-fun res!743263 () Bool)

(assert (=> b!1113513 (=> (not res!743263) (not e!634778))))

(assert (=> b!1113513 (= res!743263 (= (select (arr!34835 _keys!1208) i!673) k0!934))))

(declare-fun b!1113509 () Bool)

(declare-fun res!743271 () Bool)

(assert (=> b!1113509 (=> (not res!743271) (not e!634778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113509 (= res!743271 (validMask!0 mask!1564))))

(declare-fun res!743262 () Bool)

(assert (=> start!97564 (=> (not res!743262) (not e!634778))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97564 (= res!743262 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35372 _keys!1208))))))

(assert (=> start!97564 e!634778))

(declare-fun array_inv!26650 (array!72372) Bool)

(assert (=> start!97564 (array_inv!26650 _keys!1208)))

(assert (=> start!97564 true))

(declare-fun array_inv!26651 (array!72370) Bool)

(assert (=> start!97564 (and (array_inv!26651 _values!996) e!634777)))

(declare-fun b!1113514 () Bool)

(declare-fun res!743266 () Bool)

(assert (=> b!1113514 (=> (not res!743266) (not e!634778))))

(assert (=> b!1113514 (= res!743266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113515 () Bool)

(declare-fun tp_is_empty!27759 () Bool)

(assert (=> b!1113515 (= e!634776 tp_is_empty!27759)))

(declare-fun b!1113516 () Bool)

(assert (=> b!1113516 (= e!634779 tp_is_empty!27759)))

(declare-fun b!1113517 () Bool)

(declare-fun res!743265 () Bool)

(assert (=> b!1113517 (=> (not res!743265) (not e!634778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113517 (= res!743265 (validKeyInArray!0 k0!934))))

(declare-fun b!1113518 () Bool)

(declare-fun res!743270 () Bool)

(assert (=> b!1113518 (=> (not res!743270) (not e!634778))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113518 (= res!743270 (and (= (size!35371 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35372 _keys!1208) (size!35371 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113519 () Bool)

(declare-fun res!743269 () Bool)

(assert (=> b!1113519 (=> (not res!743269) (not e!634781))))

(assert (=> b!1113519 (= res!743269 (arrayNoDuplicates!0 lt!496664 #b00000000000000000000000000000000 Nil!24416))))

(declare-fun b!1113520 () Bool)

(declare-fun res!743264 () Bool)

(assert (=> b!1113520 (=> (not res!743264) (not e!634778))))

(assert (=> b!1113520 (= res!743264 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35372 _keys!1208))))))

(assert (= (and start!97564 res!743262) b!1113509))

(assert (= (and b!1113509 res!743271) b!1113518))

(assert (= (and b!1113518 res!743270) b!1113514))

(assert (= (and b!1113514 res!743266) b!1113512))

(assert (= (and b!1113512 res!743267) b!1113520))

(assert (= (and b!1113520 res!743264) b!1113517))

(assert (= (and b!1113517 res!743265) b!1113513))

(assert (= (and b!1113513 res!743263) b!1113511))

(assert (= (and b!1113511 res!743268) b!1113519))

(assert (= (and b!1113519 res!743269) b!1113510))

(assert (= (and b!1113508 condMapEmpty!43456) mapIsEmpty!43456))

(assert (= (and b!1113508 (not condMapEmpty!43456)) mapNonEmpty!43456))

(get-info :version)

(assert (= (and mapNonEmpty!43456 ((_ is ValueCellFull!13170) mapValue!43456)) b!1113515))

(assert (= (and b!1113508 ((_ is ValueCellFull!13170) mapDefault!43456)) b!1113516))

(assert (= start!97564 b!1113508))

(declare-fun m!1030797 () Bool)

(assert (=> b!1113519 m!1030797))

(declare-fun m!1030799 () Bool)

(assert (=> b!1113512 m!1030799))

(declare-fun m!1030801 () Bool)

(assert (=> b!1113513 m!1030801))

(declare-fun m!1030803 () Bool)

(assert (=> b!1113511 m!1030803))

(declare-fun m!1030805 () Bool)

(assert (=> b!1113511 m!1030805))

(declare-fun m!1030807 () Bool)

(assert (=> b!1113514 m!1030807))

(declare-fun m!1030809 () Bool)

(assert (=> b!1113509 m!1030809))

(declare-fun m!1030811 () Bool)

(assert (=> mapNonEmpty!43456 m!1030811))

(declare-fun m!1030813 () Bool)

(assert (=> start!97564 m!1030813))

(declare-fun m!1030815 () Bool)

(assert (=> start!97564 m!1030815))

(declare-fun m!1030817 () Bool)

(assert (=> b!1113510 m!1030817))

(declare-fun m!1030819 () Bool)

(assert (=> b!1113510 m!1030819))

(declare-fun m!1030821 () Bool)

(assert (=> b!1113517 m!1030821))

(check-sat (not b!1113512) (not b!1113517) (not b!1113511) (not start!97564) (not b!1113519) (not b!1113514) tp_is_empty!27759 (not b!1113509) (not b!1113510) (not mapNonEmpty!43456))
(check-sat)
