; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110880 () Bool)

(assert start!110880)

(declare-fun b_free!29679 () Bool)

(declare-fun b_next!29679 () Bool)

(assert (=> start!110880 (= b_free!29679 (not b_next!29679))))

(declare-fun tp!104360 () Bool)

(declare-fun b_and!47897 () Bool)

(assert (=> start!110880 (= tp!104360 b_and!47897)))

(declare-fun b!1312034 () Bool)

(declare-fun e!748426 () Bool)

(declare-fun tp_is_empty!35409 () Bool)

(assert (=> b!1312034 (= e!748426 tp_is_empty!35409)))

(declare-fun b!1312035 () Bool)

(declare-fun e!748429 () Bool)

(assert (=> b!1312035 (= e!748429 tp_is_empty!35409)))

(declare-fun b!1312036 () Bool)

(declare-fun res!871146 () Bool)

(declare-fun e!748427 () Bool)

(assert (=> b!1312036 (=> (not res!871146) (not e!748427))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312036 (= res!871146 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1312037 () Bool)

(declare-fun res!871148 () Bool)

(assert (=> b!1312037 (=> (not res!871148) (not e!748427))))

(declare-datatypes ((array!87769 0))(
  ( (array!87770 (arr!42360 (Array (_ BitVec 32) (_ BitVec 64))) (size!42911 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87769)

(declare-datatypes ((List!30250 0))(
  ( (Nil!30247) (Cons!30246 (h!31455 (_ BitVec 64)) (t!43863 List!30250)) )
))
(declare-fun arrayNoDuplicates!0 (array!87769 (_ BitVec 32) List!30250) Bool)

(assert (=> b!1312037 (= res!871148 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30247))))

(declare-fun b!1312038 () Bool)

(declare-fun res!871147 () Bool)

(assert (=> b!1312038 (=> (not res!871147) (not e!748427))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87769 (_ BitVec 32)) Bool)

(assert (=> b!1312038 (= res!871147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54742 () Bool)

(declare-fun mapRes!54742 () Bool)

(assert (=> mapIsEmpty!54742 mapRes!54742))

(declare-fun b!1312039 () Bool)

(assert (=> b!1312039 (= e!748427 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52315 0))(
  ( (V!52316 (val!17779 Int)) )
))
(declare-fun minValue!1296 () V!52315)

(declare-datatypes ((ValueCell!16806 0))(
  ( (ValueCellFull!16806 (v!20404 V!52315)) (EmptyCell!16806) )
))
(declare-datatypes ((array!87771 0))(
  ( (array!87772 (arr!42361 (Array (_ BitVec 32) ValueCell!16806)) (size!42912 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87771)

(declare-fun zeroValue!1296 () V!52315)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23090 0))(
  ( (tuple2!23091 (_1!11555 (_ BitVec 64)) (_2!11555 V!52315)) )
))
(declare-datatypes ((List!30251 0))(
  ( (Nil!30248) (Cons!30247 (h!31456 tuple2!23090) (t!43864 List!30251)) )
))
(declare-datatypes ((ListLongMap!20759 0))(
  ( (ListLongMap!20760 (toList!10395 List!30251)) )
))
(declare-fun contains!8481 (ListLongMap!20759 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5351 (array!87769 array!87771 (_ BitVec 32) (_ BitVec 32) V!52315 V!52315 (_ BitVec 32) Int) ListLongMap!20759)

(assert (=> b!1312039 (contains!8481 (getCurrentListMap!5351 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43316 0))(
  ( (Unit!43317) )
))
(declare-fun lt!585469 () Unit!43316)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!11 (array!87769 array!87771 (_ BitVec 32) (_ BitVec 32) V!52315 V!52315 (_ BitVec 64) (_ BitVec 32) Int) Unit!43316)

(assert (=> b!1312039 (= lt!585469 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!11 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1312040 () Bool)

(declare-fun res!871143 () Bool)

(assert (=> b!1312040 (=> (not res!871143) (not e!748427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1312040 (= res!871143 (validKeyInArray!0 (select (arr!42360 _keys!1628) from!2020)))))

(declare-fun res!871150 () Bool)

(assert (=> start!110880 (=> (not res!871150) (not e!748427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110880 (= res!871150 (validMask!0 mask!2040))))

(assert (=> start!110880 e!748427))

(assert (=> start!110880 tp!104360))

(declare-fun array_inv!31991 (array!87769) Bool)

(assert (=> start!110880 (array_inv!31991 _keys!1628)))

(assert (=> start!110880 true))

(assert (=> start!110880 tp_is_empty!35409))

(declare-fun e!748430 () Bool)

(declare-fun array_inv!31992 (array!87771) Bool)

(assert (=> start!110880 (and (array_inv!31992 _values!1354) e!748430)))

(declare-fun b!1312041 () Bool)

(declare-fun res!871149 () Bool)

(assert (=> b!1312041 (=> (not res!871149) (not e!748427))))

(assert (=> b!1312041 (= res!871149 (not (= (select (arr!42360 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1312042 () Bool)

(declare-fun res!871151 () Bool)

(assert (=> b!1312042 (=> (not res!871151) (not e!748427))))

(assert (=> b!1312042 (= res!871151 (and (= (size!42912 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42911 _keys!1628) (size!42912 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54742 () Bool)

(declare-fun tp!104359 () Bool)

(assert (=> mapNonEmpty!54742 (= mapRes!54742 (and tp!104359 e!748429))))

(declare-fun mapKey!54742 () (_ BitVec 32))

(declare-fun mapRest!54742 () (Array (_ BitVec 32) ValueCell!16806))

(declare-fun mapValue!54742 () ValueCell!16806)

(assert (=> mapNonEmpty!54742 (= (arr!42361 _values!1354) (store mapRest!54742 mapKey!54742 mapValue!54742))))

(declare-fun b!1312043 () Bool)

(assert (=> b!1312043 (= e!748430 (and e!748426 mapRes!54742))))

(declare-fun condMapEmpty!54742 () Bool)

(declare-fun mapDefault!54742 () ValueCell!16806)

(assert (=> b!1312043 (= condMapEmpty!54742 (= (arr!42361 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16806)) mapDefault!54742)))))

(declare-fun b!1312044 () Bool)

(declare-fun res!871144 () Bool)

(assert (=> b!1312044 (=> (not res!871144) (not e!748427))))

(assert (=> b!1312044 (= res!871144 (contains!8481 (getCurrentListMap!5351 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312045 () Bool)

(declare-fun res!871145 () Bool)

(assert (=> b!1312045 (=> (not res!871145) (not e!748427))))

(assert (=> b!1312045 (= res!871145 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42911 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!110880 res!871150) b!1312042))

(assert (= (and b!1312042 res!871151) b!1312038))

(assert (= (and b!1312038 res!871147) b!1312037))

(assert (= (and b!1312037 res!871148) b!1312045))

(assert (= (and b!1312045 res!871145) b!1312044))

(assert (= (and b!1312044 res!871144) b!1312041))

(assert (= (and b!1312041 res!871149) b!1312040))

(assert (= (and b!1312040 res!871143) b!1312036))

(assert (= (and b!1312036 res!871146) b!1312039))

(assert (= (and b!1312043 condMapEmpty!54742) mapIsEmpty!54742))

(assert (= (and b!1312043 (not condMapEmpty!54742)) mapNonEmpty!54742))

(get-info :version)

(assert (= (and mapNonEmpty!54742 ((_ is ValueCellFull!16806) mapValue!54742)) b!1312035))

(assert (= (and b!1312043 ((_ is ValueCellFull!16806) mapDefault!54742)) b!1312034))

(assert (= start!110880 b!1312043))

(declare-fun m!1201337 () Bool)

(assert (=> b!1312040 m!1201337))

(assert (=> b!1312040 m!1201337))

(declare-fun m!1201339 () Bool)

(assert (=> b!1312040 m!1201339))

(assert (=> b!1312041 m!1201337))

(declare-fun m!1201341 () Bool)

(assert (=> start!110880 m!1201341))

(declare-fun m!1201343 () Bool)

(assert (=> start!110880 m!1201343))

(declare-fun m!1201345 () Bool)

(assert (=> start!110880 m!1201345))

(declare-fun m!1201347 () Bool)

(assert (=> mapNonEmpty!54742 m!1201347))

(declare-fun m!1201349 () Bool)

(assert (=> b!1312038 m!1201349))

(declare-fun m!1201351 () Bool)

(assert (=> b!1312044 m!1201351))

(assert (=> b!1312044 m!1201351))

(declare-fun m!1201353 () Bool)

(assert (=> b!1312044 m!1201353))

(declare-fun m!1201355 () Bool)

(assert (=> b!1312039 m!1201355))

(assert (=> b!1312039 m!1201355))

(declare-fun m!1201357 () Bool)

(assert (=> b!1312039 m!1201357))

(declare-fun m!1201359 () Bool)

(assert (=> b!1312039 m!1201359))

(declare-fun m!1201361 () Bool)

(assert (=> b!1312037 m!1201361))

(check-sat (not start!110880) (not b_next!29679) (not b!1312039) (not b!1312037) (not b!1312040) (not mapNonEmpty!54742) (not b!1312038) tp_is_empty!35409 (not b!1312044) b_and!47897)
(check-sat b_and!47897 (not b_next!29679))
