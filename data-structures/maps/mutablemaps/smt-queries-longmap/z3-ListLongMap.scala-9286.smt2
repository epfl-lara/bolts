; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111102 () Bool)

(assert start!111102)

(declare-fun b_free!29901 () Bool)

(declare-fun b_next!29901 () Bool)

(assert (=> start!111102 (= b_free!29901 (not b_next!29901))))

(declare-fun tp!105025 () Bool)

(declare-fun b_and!48119 () Bool)

(assert (=> start!111102 (= tp!105025 b_and!48119)))

(declare-fun b!1314885 () Bool)

(declare-fun res!872996 () Bool)

(declare-fun e!750092 () Bool)

(assert (=> b!1314885 (=> (not res!872996) (not e!750092))))

(declare-datatypes ((array!88191 0))(
  ( (array!88192 (arr!42571 (Array (_ BitVec 32) (_ BitVec 64))) (size!43122 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88191)

(declare-datatypes ((List!30399 0))(
  ( (Nil!30396) (Cons!30395 (h!31604 (_ BitVec 64)) (t!44012 List!30399)) )
))
(declare-fun arrayNoDuplicates!0 (array!88191 (_ BitVec 32) List!30399) Bool)

(assert (=> b!1314885 (= res!872996 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30396))))

(declare-fun mapNonEmpty!55075 () Bool)

(declare-fun mapRes!55075 () Bool)

(declare-fun tp!105026 () Bool)

(declare-fun e!750093 () Bool)

(assert (=> mapNonEmpty!55075 (= mapRes!55075 (and tp!105026 e!750093))))

(declare-datatypes ((V!52611 0))(
  ( (V!52612 (val!17890 Int)) )
))
(declare-datatypes ((ValueCell!16917 0))(
  ( (ValueCellFull!16917 (v!20515 V!52611)) (EmptyCell!16917) )
))
(declare-datatypes ((array!88193 0))(
  ( (array!88194 (arr!42572 (Array (_ BitVec 32) ValueCell!16917)) (size!43123 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88193)

(declare-fun mapValue!55075 () ValueCell!16917)

(declare-fun mapRest!55075 () (Array (_ BitVec 32) ValueCell!16917))

(declare-fun mapKey!55075 () (_ BitVec 32))

(assert (=> mapNonEmpty!55075 (= (arr!42572 _values!1354) (store mapRest!55075 mapKey!55075 mapValue!55075))))

(declare-fun b!1314886 () Bool)

(declare-fun res!872998 () Bool)

(assert (=> b!1314886 (=> (not res!872998) (not e!750092))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314886 (= res!872998 (and (= (size!43123 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43122 _keys!1628) (size!43123 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314887 () Bool)

(assert (=> b!1314887 (= e!750092 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52611)

(declare-fun zeroValue!1296 () V!52611)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585793 () Bool)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((tuple2!23234 0))(
  ( (tuple2!23235 (_1!11627 (_ BitVec 64)) (_2!11627 V!52611)) )
))
(declare-datatypes ((List!30400 0))(
  ( (Nil!30397) (Cons!30396 (h!31605 tuple2!23234) (t!44013 List!30400)) )
))
(declare-datatypes ((ListLongMap!20903 0))(
  ( (ListLongMap!20904 (toList!10467 List!30400)) )
))
(declare-fun contains!8553 (ListLongMap!20903 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5423 (array!88191 array!88193 (_ BitVec 32) (_ BitVec 32) V!52611 V!52611 (_ BitVec 32) Int) ListLongMap!20903)

(assert (=> b!1314887 (= lt!585793 (contains!8553 (getCurrentListMap!5423 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314888 () Bool)

(declare-fun e!750094 () Bool)

(declare-fun tp_is_empty!35631 () Bool)

(assert (=> b!1314888 (= e!750094 tp_is_empty!35631)))

(declare-fun res!872997 () Bool)

(assert (=> start!111102 (=> (not res!872997) (not e!750092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111102 (= res!872997 (validMask!0 mask!2040))))

(assert (=> start!111102 e!750092))

(assert (=> start!111102 tp!105025))

(declare-fun array_inv!32127 (array!88191) Bool)

(assert (=> start!111102 (array_inv!32127 _keys!1628)))

(assert (=> start!111102 true))

(assert (=> start!111102 tp_is_empty!35631))

(declare-fun e!750091 () Bool)

(declare-fun array_inv!32128 (array!88193) Bool)

(assert (=> start!111102 (and (array_inv!32128 _values!1354) e!750091)))

(declare-fun b!1314889 () Bool)

(assert (=> b!1314889 (= e!750091 (and e!750094 mapRes!55075))))

(declare-fun condMapEmpty!55075 () Bool)

(declare-fun mapDefault!55075 () ValueCell!16917)

(assert (=> b!1314889 (= condMapEmpty!55075 (= (arr!42572 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16917)) mapDefault!55075)))))

(declare-fun b!1314890 () Bool)

(declare-fun res!872999 () Bool)

(assert (=> b!1314890 (=> (not res!872999) (not e!750092))))

(assert (=> b!1314890 (= res!872999 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43122 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314891 () Bool)

(declare-fun res!872995 () Bool)

(assert (=> b!1314891 (=> (not res!872995) (not e!750092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88191 (_ BitVec 32)) Bool)

(assert (=> b!1314891 (= res!872995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314892 () Bool)

(assert (=> b!1314892 (= e!750093 tp_is_empty!35631)))

(declare-fun mapIsEmpty!55075 () Bool)

(assert (=> mapIsEmpty!55075 mapRes!55075))

(assert (= (and start!111102 res!872997) b!1314886))

(assert (= (and b!1314886 res!872998) b!1314891))

(assert (= (and b!1314891 res!872995) b!1314885))

(assert (= (and b!1314885 res!872996) b!1314890))

(assert (= (and b!1314890 res!872999) b!1314887))

(assert (= (and b!1314889 condMapEmpty!55075) mapIsEmpty!55075))

(assert (= (and b!1314889 (not condMapEmpty!55075)) mapNonEmpty!55075))

(get-info :version)

(assert (= (and mapNonEmpty!55075 ((_ is ValueCellFull!16917) mapValue!55075)) b!1314892))

(assert (= (and b!1314889 ((_ is ValueCellFull!16917) mapDefault!55075)) b!1314888))

(assert (= start!111102 b!1314889))

(declare-fun m!1203265 () Bool)

(assert (=> b!1314885 m!1203265))

(declare-fun m!1203267 () Bool)

(assert (=> mapNonEmpty!55075 m!1203267))

(declare-fun m!1203269 () Bool)

(assert (=> start!111102 m!1203269))

(declare-fun m!1203271 () Bool)

(assert (=> start!111102 m!1203271))

(declare-fun m!1203273 () Bool)

(assert (=> start!111102 m!1203273))

(declare-fun m!1203275 () Bool)

(assert (=> b!1314891 m!1203275))

(declare-fun m!1203277 () Bool)

(assert (=> b!1314887 m!1203277))

(assert (=> b!1314887 m!1203277))

(declare-fun m!1203279 () Bool)

(assert (=> b!1314887 m!1203279))

(check-sat (not b!1314891) (not start!111102) (not b!1314887) tp_is_empty!35631 (not mapNonEmpty!55075) b_and!48119 (not b_next!29901) (not b!1314885))
(check-sat b_and!48119 (not b_next!29901))
