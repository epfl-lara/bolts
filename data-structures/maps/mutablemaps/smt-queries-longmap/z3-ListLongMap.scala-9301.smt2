; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111192 () Bool)

(assert start!111192)

(declare-fun b_free!29991 () Bool)

(declare-fun b_next!29991 () Bool)

(assert (=> start!111192 (= b_free!29991 (not b_next!29991))))

(declare-fun tp!105296 () Bool)

(declare-fun b_and!48209 () Bool)

(assert (=> start!111192 (= tp!105296 b_and!48209)))

(declare-fun b!1316001 () Bool)

(declare-fun e!750766 () Bool)

(declare-fun tp_is_empty!35721 () Bool)

(assert (=> b!1316001 (= e!750766 tp_is_empty!35721)))

(declare-fun mapNonEmpty!55210 () Bool)

(declare-fun mapRes!55210 () Bool)

(declare-fun tp!105295 () Bool)

(declare-fun e!750767 () Bool)

(assert (=> mapNonEmpty!55210 (= mapRes!55210 (and tp!105295 e!750767))))

(declare-datatypes ((V!52731 0))(
  ( (V!52732 (val!17935 Int)) )
))
(declare-datatypes ((ValueCell!16962 0))(
  ( (ValueCellFull!16962 (v!20560 V!52731)) (EmptyCell!16962) )
))
(declare-fun mapValue!55210 () ValueCell!16962)

(declare-datatypes ((array!88359 0))(
  ( (array!88360 (arr!42655 (Array (_ BitVec 32) ValueCell!16962)) (size!43206 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88359)

(declare-fun mapRest!55210 () (Array (_ BitVec 32) ValueCell!16962))

(declare-fun mapKey!55210 () (_ BitVec 32))

(assert (=> mapNonEmpty!55210 (= (arr!42655 _values!1354) (store mapRest!55210 mapKey!55210 mapValue!55210))))

(declare-fun b!1316002 () Bool)

(declare-fun res!873707 () Bool)

(declare-fun e!750768 () Bool)

(assert (=> b!1316002 (=> (not res!873707) (not e!750768))))

(declare-datatypes ((array!88361 0))(
  ( (array!88362 (arr!42656 (Array (_ BitVec 32) (_ BitVec 64))) (size!43207 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88361)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88361 (_ BitVec 32)) Bool)

(assert (=> b!1316002 (= res!873707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1316003 () Bool)

(assert (=> b!1316003 (= e!750768 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52731)

(declare-fun lt!585928 () Bool)

(declare-fun zeroValue!1296 () V!52731)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23284 0))(
  ( (tuple2!23285 (_1!11652 (_ BitVec 64)) (_2!11652 V!52731)) )
))
(declare-datatypes ((List!30453 0))(
  ( (Nil!30450) (Cons!30449 (h!31658 tuple2!23284) (t!44066 List!30453)) )
))
(declare-datatypes ((ListLongMap!20953 0))(
  ( (ListLongMap!20954 (toList!10492 List!30453)) )
))
(declare-fun contains!8578 (ListLongMap!20953 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5448 (array!88361 array!88359 (_ BitVec 32) (_ BitVec 32) V!52731 V!52731 (_ BitVec 32) Int) ListLongMap!20953)

(assert (=> b!1316003 (= lt!585928 (contains!8578 (getCurrentListMap!5448 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1316004 () Bool)

(declare-fun res!873709 () Bool)

(assert (=> b!1316004 (=> (not res!873709) (not e!750768))))

(assert (=> b!1316004 (= res!873709 (and (= (size!43206 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43207 _keys!1628) (size!43206 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!873708 () Bool)

(assert (=> start!111192 (=> (not res!873708) (not e!750768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111192 (= res!873708 (validMask!0 mask!2040))))

(assert (=> start!111192 e!750768))

(assert (=> start!111192 tp!105296))

(declare-fun array_inv!32181 (array!88361) Bool)

(assert (=> start!111192 (array_inv!32181 _keys!1628)))

(assert (=> start!111192 true))

(assert (=> start!111192 tp_is_empty!35721))

(declare-fun e!750770 () Bool)

(declare-fun array_inv!32182 (array!88359) Bool)

(assert (=> start!111192 (and (array_inv!32182 _values!1354) e!750770)))

(declare-fun b!1316005 () Bool)

(assert (=> b!1316005 (= e!750767 tp_is_empty!35721)))

(declare-fun mapIsEmpty!55210 () Bool)

(assert (=> mapIsEmpty!55210 mapRes!55210))

(declare-fun b!1316006 () Bool)

(assert (=> b!1316006 (= e!750770 (and e!750766 mapRes!55210))))

(declare-fun condMapEmpty!55210 () Bool)

(declare-fun mapDefault!55210 () ValueCell!16962)

(assert (=> b!1316006 (= condMapEmpty!55210 (= (arr!42655 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16962)) mapDefault!55210)))))

(declare-fun b!1316007 () Bool)

(declare-fun res!873710 () Bool)

(assert (=> b!1316007 (=> (not res!873710) (not e!750768))))

(assert (=> b!1316007 (= res!873710 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43207 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1316008 () Bool)

(declare-fun res!873706 () Bool)

(assert (=> b!1316008 (=> (not res!873706) (not e!750768))))

(declare-datatypes ((List!30454 0))(
  ( (Nil!30451) (Cons!30450 (h!31659 (_ BitVec 64)) (t!44067 List!30454)) )
))
(declare-fun arrayNoDuplicates!0 (array!88361 (_ BitVec 32) List!30454) Bool)

(assert (=> b!1316008 (= res!873706 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30451))))

(assert (= (and start!111192 res!873708) b!1316004))

(assert (= (and b!1316004 res!873709) b!1316002))

(assert (= (and b!1316002 res!873707) b!1316008))

(assert (= (and b!1316008 res!873706) b!1316007))

(assert (= (and b!1316007 res!873710) b!1316003))

(assert (= (and b!1316006 condMapEmpty!55210) mapIsEmpty!55210))

(assert (= (and b!1316006 (not condMapEmpty!55210)) mapNonEmpty!55210))

(get-info :version)

(assert (= (and mapNonEmpty!55210 ((_ is ValueCellFull!16962) mapValue!55210)) b!1316005))

(assert (= (and b!1316006 ((_ is ValueCellFull!16962) mapDefault!55210)) b!1316001))

(assert (= start!111192 b!1316006))

(declare-fun m!1204015 () Bool)

(assert (=> b!1316008 m!1204015))

(declare-fun m!1204017 () Bool)

(assert (=> mapNonEmpty!55210 m!1204017))

(declare-fun m!1204019 () Bool)

(assert (=> b!1316003 m!1204019))

(assert (=> b!1316003 m!1204019))

(declare-fun m!1204021 () Bool)

(assert (=> b!1316003 m!1204021))

(declare-fun m!1204023 () Bool)

(assert (=> b!1316002 m!1204023))

(declare-fun m!1204025 () Bool)

(assert (=> start!111192 m!1204025))

(declare-fun m!1204027 () Bool)

(assert (=> start!111192 m!1204027))

(declare-fun m!1204029 () Bool)

(assert (=> start!111192 m!1204029))

(check-sat (not start!111192) (not mapNonEmpty!55210) tp_is_empty!35721 b_and!48209 (not b!1316002) (not b!1316008) (not b_next!29991) (not b!1316003))
(check-sat b_and!48209 (not b_next!29991))
