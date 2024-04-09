; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111198 () Bool)

(assert start!111198)

(declare-fun b_free!29997 () Bool)

(declare-fun b_next!29997 () Bool)

(assert (=> start!111198 (= b_free!29997 (not b_next!29997))))

(declare-fun tp!105313 () Bool)

(declare-fun b_and!48215 () Bool)

(assert (=> start!111198 (= tp!105313 b_and!48215)))

(declare-fun b!1316093 () Bool)

(declare-fun res!873772 () Bool)

(declare-fun e!750814 () Bool)

(assert (=> b!1316093 (=> (not res!873772) (not e!750814))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((array!88371 0))(
  ( (array!88372 (arr!42661 (Array (_ BitVec 32) (_ BitVec 64))) (size!43212 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88371)

(assert (=> b!1316093 (= res!873772 (not (= (select (arr!42661 _keys!1628) from!2020) k0!1175)))))

(declare-fun res!873775 () Bool)

(assert (=> start!111198 (=> (not res!873775) (not e!750814))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111198 (= res!873775 (validMask!0 mask!2040))))

(assert (=> start!111198 e!750814))

(assert (=> start!111198 tp!105313))

(declare-fun array_inv!32187 (array!88371) Bool)

(assert (=> start!111198 (array_inv!32187 _keys!1628)))

(assert (=> start!111198 true))

(declare-fun tp_is_empty!35727 () Bool)

(assert (=> start!111198 tp_is_empty!35727))

(declare-datatypes ((V!52739 0))(
  ( (V!52740 (val!17938 Int)) )
))
(declare-datatypes ((ValueCell!16965 0))(
  ( (ValueCellFull!16965 (v!20563 V!52739)) (EmptyCell!16965) )
))
(declare-datatypes ((array!88373 0))(
  ( (array!88374 (arr!42662 (Array (_ BitVec 32) ValueCell!16965)) (size!43213 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88373)

(declare-fun e!750812 () Bool)

(declare-fun array_inv!32188 (array!88373) Bool)

(assert (=> start!111198 (and (array_inv!32188 _values!1354) e!750812)))

(declare-fun b!1316094 () Bool)

(assert (=> b!1316094 (= e!750814 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52739)

(declare-fun zeroValue!1296 () V!52739)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23290 0))(
  ( (tuple2!23291 (_1!11655 (_ BitVec 64)) (_2!11655 V!52739)) )
))
(declare-datatypes ((List!30459 0))(
  ( (Nil!30456) (Cons!30455 (h!31664 tuple2!23290) (t!44072 List!30459)) )
))
(declare-datatypes ((ListLongMap!20959 0))(
  ( (ListLongMap!20960 (toList!10495 List!30459)) )
))
(declare-fun contains!8581 (ListLongMap!20959 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5451 (array!88371 array!88373 (_ BitVec 32) (_ BitVec 32) V!52739 V!52739 (_ BitVec 32) Int) ListLongMap!20959)

(assert (=> b!1316094 (contains!8581 (getCurrentListMap!5451 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43338 0))(
  ( (Unit!43339) )
))
(declare-fun lt!585937 () Unit!43338)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!20 (array!88371 array!88373 (_ BitVec 32) (_ BitVec 32) V!52739 V!52739 (_ BitVec 64) (_ BitVec 32) Int) Unit!43338)

(assert (=> b!1316094 (= lt!585937 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!20 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!55219 () Bool)

(declare-fun mapRes!55219 () Bool)

(assert (=> mapIsEmpty!55219 mapRes!55219))

(declare-fun b!1316095 () Bool)

(declare-fun res!873779 () Bool)

(assert (=> b!1316095 (=> (not res!873779) (not e!750814))))

(assert (=> b!1316095 (= res!873779 (contains!8581 (getCurrentListMap!5451 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1316096 () Bool)

(declare-fun e!750811 () Bool)

(assert (=> b!1316096 (= e!750811 tp_is_empty!35727)))

(declare-fun b!1316097 () Bool)

(declare-fun res!873776 () Bool)

(assert (=> b!1316097 (=> (not res!873776) (not e!750814))))

(assert (=> b!1316097 (= res!873776 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1316098 () Bool)

(declare-fun res!873774 () Bool)

(assert (=> b!1316098 (=> (not res!873774) (not e!750814))))

(assert (=> b!1316098 (= res!873774 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43212 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1316099 () Bool)

(declare-fun res!873777 () Bool)

(assert (=> b!1316099 (=> (not res!873777) (not e!750814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316099 (= res!873777 (validKeyInArray!0 (select (arr!42661 _keys!1628) from!2020)))))

(declare-fun b!1316100 () Bool)

(declare-fun res!873771 () Bool)

(assert (=> b!1316100 (=> (not res!873771) (not e!750814))))

(assert (=> b!1316100 (= res!873771 (and (= (size!43213 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43212 _keys!1628) (size!43213 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1316101 () Bool)

(declare-fun e!750813 () Bool)

(assert (=> b!1316101 (= e!750813 tp_is_empty!35727)))

(declare-fun b!1316102 () Bool)

(assert (=> b!1316102 (= e!750812 (and e!750811 mapRes!55219))))

(declare-fun condMapEmpty!55219 () Bool)

(declare-fun mapDefault!55219 () ValueCell!16965)

(assert (=> b!1316102 (= condMapEmpty!55219 (= (arr!42662 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16965)) mapDefault!55219)))))

(declare-fun b!1316103 () Bool)

(declare-fun res!873778 () Bool)

(assert (=> b!1316103 (=> (not res!873778) (not e!750814))))

(declare-datatypes ((List!30460 0))(
  ( (Nil!30457) (Cons!30456 (h!31665 (_ BitVec 64)) (t!44073 List!30460)) )
))
(declare-fun arrayNoDuplicates!0 (array!88371 (_ BitVec 32) List!30460) Bool)

(assert (=> b!1316103 (= res!873778 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30457))))

(declare-fun b!1316104 () Bool)

(declare-fun res!873773 () Bool)

(assert (=> b!1316104 (=> (not res!873773) (not e!750814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88371 (_ BitVec 32)) Bool)

(assert (=> b!1316104 (= res!873773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55219 () Bool)

(declare-fun tp!105314 () Bool)

(assert (=> mapNonEmpty!55219 (= mapRes!55219 (and tp!105314 e!750813))))

(declare-fun mapRest!55219 () (Array (_ BitVec 32) ValueCell!16965))

(declare-fun mapKey!55219 () (_ BitVec 32))

(declare-fun mapValue!55219 () ValueCell!16965)

(assert (=> mapNonEmpty!55219 (= (arr!42662 _values!1354) (store mapRest!55219 mapKey!55219 mapValue!55219))))

(assert (= (and start!111198 res!873775) b!1316100))

(assert (= (and b!1316100 res!873771) b!1316104))

(assert (= (and b!1316104 res!873773) b!1316103))

(assert (= (and b!1316103 res!873778) b!1316098))

(assert (= (and b!1316098 res!873774) b!1316095))

(assert (= (and b!1316095 res!873779) b!1316093))

(assert (= (and b!1316093 res!873772) b!1316099))

(assert (= (and b!1316099 res!873777) b!1316097))

(assert (= (and b!1316097 res!873776) b!1316094))

(assert (= (and b!1316102 condMapEmpty!55219) mapIsEmpty!55219))

(assert (= (and b!1316102 (not condMapEmpty!55219)) mapNonEmpty!55219))

(get-info :version)

(assert (= (and mapNonEmpty!55219 ((_ is ValueCellFull!16965) mapValue!55219)) b!1316101))

(assert (= (and b!1316102 ((_ is ValueCellFull!16965) mapDefault!55219)) b!1316096))

(assert (= start!111198 b!1316102))

(declare-fun m!1204073 () Bool)

(assert (=> mapNonEmpty!55219 m!1204073))

(declare-fun m!1204075 () Bool)

(assert (=> b!1316095 m!1204075))

(assert (=> b!1316095 m!1204075))

(declare-fun m!1204077 () Bool)

(assert (=> b!1316095 m!1204077))

(declare-fun m!1204079 () Bool)

(assert (=> b!1316093 m!1204079))

(declare-fun m!1204081 () Bool)

(assert (=> start!111198 m!1204081))

(declare-fun m!1204083 () Bool)

(assert (=> start!111198 m!1204083))

(declare-fun m!1204085 () Bool)

(assert (=> start!111198 m!1204085))

(declare-fun m!1204087 () Bool)

(assert (=> b!1316104 m!1204087))

(declare-fun m!1204089 () Bool)

(assert (=> b!1316103 m!1204089))

(assert (=> b!1316099 m!1204079))

(assert (=> b!1316099 m!1204079))

(declare-fun m!1204091 () Bool)

(assert (=> b!1316099 m!1204091))

(declare-fun m!1204093 () Bool)

(assert (=> b!1316094 m!1204093))

(assert (=> b!1316094 m!1204093))

(declare-fun m!1204095 () Bool)

(assert (=> b!1316094 m!1204095))

(declare-fun m!1204097 () Bool)

(assert (=> b!1316094 m!1204097))

(check-sat (not mapNonEmpty!55219) (not b!1316094) b_and!48215 (not b!1316104) (not b!1316103) (not b!1316095) (not b_next!29997) (not start!111198) (not b!1316099) tp_is_empty!35727)
(check-sat b_and!48215 (not b_next!29997))
