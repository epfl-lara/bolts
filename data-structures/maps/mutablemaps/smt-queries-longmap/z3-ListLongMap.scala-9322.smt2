; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111406 () Bool)

(assert start!111406)

(declare-fun b_free!30027 () Bool)

(declare-fun b_next!30027 () Bool)

(assert (=> start!111406 (= b_free!30027 (not b_next!30027))))

(declare-fun tp!105557 () Bool)

(declare-fun b_and!48257 () Bool)

(assert (=> start!111406 (= tp!105557 b_and!48257)))

(declare-fun b!1317744 () Bool)

(declare-fun res!874641 () Bool)

(declare-fun e!752013 () Bool)

(assert (=> b!1317744 (=> (not res!874641) (not e!752013))))

(declare-datatypes ((array!88599 0))(
  ( (array!88600 (arr!42769 (Array (_ BitVec 32) (_ BitVec 64))) (size!43320 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88599)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1317744 (= res!874641 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43320 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55418 () Bool)

(declare-fun mapRes!55418 () Bool)

(assert (=> mapIsEmpty!55418 mapRes!55418))

(declare-fun mapNonEmpty!55418 () Bool)

(declare-fun tp!105558 () Bool)

(declare-fun e!752017 () Bool)

(assert (=> mapNonEmpty!55418 (= mapRes!55418 (and tp!105558 e!752017))))

(declare-datatypes ((V!52899 0))(
  ( (V!52900 (val!17998 Int)) )
))
(declare-datatypes ((ValueCell!17025 0))(
  ( (ValueCellFull!17025 (v!20626 V!52899)) (EmptyCell!17025) )
))
(declare-datatypes ((array!88601 0))(
  ( (array!88602 (arr!42770 (Array (_ BitVec 32) ValueCell!17025)) (size!43321 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88601)

(declare-fun mapValue!55418 () ValueCell!17025)

(declare-fun mapRest!55418 () (Array (_ BitVec 32) ValueCell!17025))

(declare-fun mapKey!55418 () (_ BitVec 32))

(assert (=> mapNonEmpty!55418 (= (arr!42770 _values!1337) (store mapRest!55418 mapKey!55418 mapValue!55418))))

(declare-fun b!1317743 () Bool)

(assert (=> b!1317743 (= e!752013 false)))

(declare-fun zeroValue!1279 () V!52899)

(declare-fun minValue!1279 () V!52899)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun lt!586348 () Bool)

(declare-datatypes ((tuple2!23314 0))(
  ( (tuple2!23315 (_1!11667 (_ BitVec 64)) (_2!11667 V!52899)) )
))
(declare-datatypes ((List!30502 0))(
  ( (Nil!30499) (Cons!30498 (h!31707 tuple2!23314) (t!44117 List!30502)) )
))
(declare-datatypes ((ListLongMap!20983 0))(
  ( (ListLongMap!20984 (toList!10507 List!30502)) )
))
(declare-fun contains!8598 (ListLongMap!20983 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5463 (array!88599 array!88601 (_ BitVec 32) (_ BitVec 32) V!52899 V!52899 (_ BitVec 32) Int) ListLongMap!20983)

(assert (=> b!1317743 (= lt!586348 (contains!8598 (getCurrentListMap!5463 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun res!874644 () Bool)

(assert (=> start!111406 (=> (not res!874644) (not e!752013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111406 (= res!874644 (validMask!0 mask!2019))))

(assert (=> start!111406 e!752013))

(declare-fun array_inv!32253 (array!88599) Bool)

(assert (=> start!111406 (array_inv!32253 _keys!1609)))

(assert (=> start!111406 true))

(declare-fun tp_is_empty!35847 () Bool)

(assert (=> start!111406 tp_is_empty!35847))

(declare-fun e!752014 () Bool)

(declare-fun array_inv!32254 (array!88601) Bool)

(assert (=> start!111406 (and (array_inv!32254 _values!1337) e!752014)))

(assert (=> start!111406 tp!105557))

(declare-fun b!1317745 () Bool)

(declare-fun res!874642 () Bool)

(assert (=> b!1317745 (=> (not res!874642) (not e!752013))))

(declare-datatypes ((List!30503 0))(
  ( (Nil!30500) (Cons!30499 (h!31708 (_ BitVec 64)) (t!44118 List!30503)) )
))
(declare-fun arrayNoDuplicates!0 (array!88599 (_ BitVec 32) List!30503) Bool)

(assert (=> b!1317745 (= res!874642 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30500))))

(declare-fun b!1317746 () Bool)

(declare-fun e!752016 () Bool)

(assert (=> b!1317746 (= e!752016 tp_is_empty!35847)))

(declare-fun b!1317747 () Bool)

(declare-fun res!874643 () Bool)

(assert (=> b!1317747 (=> (not res!874643) (not e!752013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88599 (_ BitVec 32)) Bool)

(assert (=> b!1317747 (= res!874643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317748 () Bool)

(declare-fun res!874645 () Bool)

(assert (=> b!1317748 (=> (not res!874645) (not e!752013))))

(assert (=> b!1317748 (= res!874645 (and (= (size!43321 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43320 _keys!1609) (size!43321 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317749 () Bool)

(assert (=> b!1317749 (= e!752017 tp_is_empty!35847)))

(declare-fun b!1317750 () Bool)

(assert (=> b!1317750 (= e!752014 (and e!752016 mapRes!55418))))

(declare-fun condMapEmpty!55418 () Bool)

(declare-fun mapDefault!55418 () ValueCell!17025)

(assert (=> b!1317750 (= condMapEmpty!55418 (= (arr!42770 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17025)) mapDefault!55418)))))

(assert (= (and start!111406 res!874644) b!1317748))

(assert (= (and b!1317748 res!874645) b!1317747))

(assert (= (and b!1317747 res!874643) b!1317745))

(assert (= (and b!1317745 res!874642) b!1317744))

(assert (= (and b!1317744 res!874641) b!1317743))

(assert (= (and b!1317750 condMapEmpty!55418) mapIsEmpty!55418))

(assert (= (and b!1317750 (not condMapEmpty!55418)) mapNonEmpty!55418))

(get-info :version)

(assert (= (and mapNonEmpty!55418 ((_ is ValueCellFull!17025) mapValue!55418)) b!1317749))

(assert (= (and b!1317750 ((_ is ValueCellFull!17025) mapDefault!55418)) b!1317746))

(assert (= start!111406 b!1317750))

(declare-fun m!1205503 () Bool)

(assert (=> b!1317743 m!1205503))

(assert (=> b!1317743 m!1205503))

(declare-fun m!1205505 () Bool)

(assert (=> b!1317743 m!1205505))

(declare-fun m!1205507 () Bool)

(assert (=> mapNonEmpty!55418 m!1205507))

(declare-fun m!1205509 () Bool)

(assert (=> start!111406 m!1205509))

(declare-fun m!1205511 () Bool)

(assert (=> start!111406 m!1205511))

(declare-fun m!1205513 () Bool)

(assert (=> start!111406 m!1205513))

(declare-fun m!1205515 () Bool)

(assert (=> b!1317745 m!1205515))

(declare-fun m!1205517 () Bool)

(assert (=> b!1317747 m!1205517))

(check-sat tp_is_empty!35847 (not b_next!30027) (not mapNonEmpty!55418) (not b!1317747) b_and!48257 (not b!1317745) (not start!111406) (not b!1317743))
(check-sat b_and!48257 (not b_next!30027))
