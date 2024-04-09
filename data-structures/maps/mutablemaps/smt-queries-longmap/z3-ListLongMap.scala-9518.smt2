; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113008 () Bool)

(assert start!113008)

(declare-fun b!1339020 () Bool)

(declare-fun e!762624 () Bool)

(assert (=> b!1339020 (= e!762624 false)))

(declare-fun lt!593770 () Bool)

(declare-datatypes ((array!90875 0))(
  ( (array!90876 (arr!43889 (Array (_ BitVec 32) (_ BitVec 64))) (size!44440 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90875)

(declare-datatypes ((List!31269 0))(
  ( (Nil!31266) (Cons!31265 (h!32474 (_ BitVec 64)) (t!45608 List!31269)) )
))
(declare-fun arrayNoDuplicates!0 (array!90875 (_ BitVec 32) List!31269) Bool)

(assert (=> b!1339020 (= lt!593770 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31266))))

(declare-fun res!888419 () Bool)

(assert (=> start!113008 (=> (not res!888419) (not e!762624))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113008 (= res!888419 (validMask!0 mask!1977))))

(assert (=> start!113008 e!762624))

(assert (=> start!113008 true))

(declare-datatypes ((V!54467 0))(
  ( (V!54468 (val!18586 Int)) )
))
(declare-datatypes ((ValueCell!17613 0))(
  ( (ValueCellFull!17613 (v!21232 V!54467)) (EmptyCell!17613) )
))
(declare-datatypes ((array!90877 0))(
  ( (array!90878 (arr!43890 (Array (_ BitVec 32) ValueCell!17613)) (size!44441 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90877)

(declare-fun e!762626 () Bool)

(declare-fun array_inv!33021 (array!90877) Bool)

(assert (=> start!113008 (and (array_inv!33021 _values!1303) e!762626)))

(declare-fun array_inv!33022 (array!90875) Bool)

(assert (=> start!113008 (array_inv!33022 _keys!1571)))

(declare-fun mapNonEmpty!57241 () Bool)

(declare-fun mapRes!57241 () Bool)

(declare-fun tp!108941 () Bool)

(declare-fun e!762623 () Bool)

(assert (=> mapNonEmpty!57241 (= mapRes!57241 (and tp!108941 e!762623))))

(declare-fun mapValue!57241 () ValueCell!17613)

(declare-fun mapKey!57241 () (_ BitVec 32))

(declare-fun mapRest!57241 () (Array (_ BitVec 32) ValueCell!17613))

(assert (=> mapNonEmpty!57241 (= (arr!43890 _values!1303) (store mapRest!57241 mapKey!57241 mapValue!57241))))

(declare-fun b!1339021 () Bool)

(declare-fun tp_is_empty!37023 () Bool)

(assert (=> b!1339021 (= e!762623 tp_is_empty!37023)))

(declare-fun b!1339022 () Bool)

(declare-fun res!888417 () Bool)

(assert (=> b!1339022 (=> (not res!888417) (not e!762624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90875 (_ BitVec 32)) Bool)

(assert (=> b!1339022 (= res!888417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339023 () Bool)

(declare-fun e!762625 () Bool)

(assert (=> b!1339023 (= e!762625 tp_is_empty!37023)))

(declare-fun b!1339024 () Bool)

(assert (=> b!1339024 (= e!762626 (and e!762625 mapRes!57241))))

(declare-fun condMapEmpty!57241 () Bool)

(declare-fun mapDefault!57241 () ValueCell!17613)

(assert (=> b!1339024 (= condMapEmpty!57241 (= (arr!43890 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17613)) mapDefault!57241)))))

(declare-fun mapIsEmpty!57241 () Bool)

(assert (=> mapIsEmpty!57241 mapRes!57241))

(declare-fun b!1339025 () Bool)

(declare-fun res!888418 () Bool)

(assert (=> b!1339025 (=> (not res!888418) (not e!762624))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339025 (= res!888418 (and (= (size!44441 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44440 _keys!1571) (size!44441 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113008 res!888419) b!1339025))

(assert (= (and b!1339025 res!888418) b!1339022))

(assert (= (and b!1339022 res!888417) b!1339020))

(assert (= (and b!1339024 condMapEmpty!57241) mapIsEmpty!57241))

(assert (= (and b!1339024 (not condMapEmpty!57241)) mapNonEmpty!57241))

(get-info :version)

(assert (= (and mapNonEmpty!57241 ((_ is ValueCellFull!17613) mapValue!57241)) b!1339021))

(assert (= (and b!1339024 ((_ is ValueCellFull!17613) mapDefault!57241)) b!1339023))

(assert (= start!113008 b!1339024))

(declare-fun m!1227229 () Bool)

(assert (=> b!1339020 m!1227229))

(declare-fun m!1227231 () Bool)

(assert (=> start!113008 m!1227231))

(declare-fun m!1227233 () Bool)

(assert (=> start!113008 m!1227233))

(declare-fun m!1227235 () Bool)

(assert (=> start!113008 m!1227235))

(declare-fun m!1227237 () Bool)

(assert (=> mapNonEmpty!57241 m!1227237))

(declare-fun m!1227239 () Bool)

(assert (=> b!1339022 m!1227239))

(check-sat (not b!1339022) (not start!113008) (not b!1339020) tp_is_empty!37023 (not mapNonEmpty!57241))
(check-sat)
