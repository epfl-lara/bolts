; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111180 () Bool)

(assert start!111180)

(declare-fun b_free!29979 () Bool)

(declare-fun b_next!29979 () Bool)

(assert (=> start!111180 (= b_free!29979 (not b_next!29979))))

(declare-fun tp!105260 () Bool)

(declare-fun b_and!48197 () Bool)

(assert (=> start!111180 (= tp!105260 b_and!48197)))

(declare-fun mapIsEmpty!55192 () Bool)

(declare-fun mapRes!55192 () Bool)

(assert (=> mapIsEmpty!55192 mapRes!55192))

(declare-fun b!1315857 () Bool)

(declare-fun res!873620 () Bool)

(declare-fun e!750680 () Bool)

(assert (=> b!1315857 (=> (not res!873620) (not e!750680))))

(declare-datatypes ((array!88337 0))(
  ( (array!88338 (arr!42644 (Array (_ BitVec 32) (_ BitVec 64))) (size!43195 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88337)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52715 0))(
  ( (V!52716 (val!17929 Int)) )
))
(declare-datatypes ((ValueCell!16956 0))(
  ( (ValueCellFull!16956 (v!20554 V!52715)) (EmptyCell!16956) )
))
(declare-datatypes ((array!88339 0))(
  ( (array!88340 (arr!42645 (Array (_ BitVec 32) ValueCell!16956)) (size!43196 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88339)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315857 (= res!873620 (and (= (size!43196 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43195 _keys!1628) (size!43196 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315858 () Bool)

(declare-fun res!873618 () Bool)

(assert (=> b!1315858 (=> (not res!873618) (not e!750680))))

(declare-datatypes ((List!30445 0))(
  ( (Nil!30442) (Cons!30441 (h!31650 (_ BitVec 64)) (t!44058 List!30445)) )
))
(declare-fun arrayNoDuplicates!0 (array!88337 (_ BitVec 32) List!30445) Bool)

(assert (=> b!1315858 (= res!873618 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30442))))

(declare-fun b!1315859 () Bool)

(assert (=> b!1315859 (= e!750680 false)))

(declare-fun lt!585910 () Bool)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52715)

(declare-fun zeroValue!1296 () V!52715)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((tuple2!23276 0))(
  ( (tuple2!23277 (_1!11648 (_ BitVec 64)) (_2!11648 V!52715)) )
))
(declare-datatypes ((List!30446 0))(
  ( (Nil!30443) (Cons!30442 (h!31651 tuple2!23276) (t!44059 List!30446)) )
))
(declare-datatypes ((ListLongMap!20945 0))(
  ( (ListLongMap!20946 (toList!10488 List!30446)) )
))
(declare-fun contains!8574 (ListLongMap!20945 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5444 (array!88337 array!88339 (_ BitVec 32) (_ BitVec 32) V!52715 V!52715 (_ BitVec 32) Int) ListLongMap!20945)

(assert (=> b!1315859 (= lt!585910 (contains!8574 (getCurrentListMap!5444 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1315860 () Bool)

(declare-fun e!750677 () Bool)

(declare-fun e!750678 () Bool)

(assert (=> b!1315860 (= e!750677 (and e!750678 mapRes!55192))))

(declare-fun condMapEmpty!55192 () Bool)

(declare-fun mapDefault!55192 () ValueCell!16956)

(assert (=> b!1315860 (= condMapEmpty!55192 (= (arr!42645 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16956)) mapDefault!55192)))))

(declare-fun b!1315861 () Bool)

(declare-fun res!873617 () Bool)

(assert (=> b!1315861 (=> (not res!873617) (not e!750680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88337 (_ BitVec 32)) Bool)

(assert (=> b!1315861 (= res!873617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55192 () Bool)

(declare-fun tp!105259 () Bool)

(declare-fun e!750676 () Bool)

(assert (=> mapNonEmpty!55192 (= mapRes!55192 (and tp!105259 e!750676))))

(declare-fun mapKey!55192 () (_ BitVec 32))

(declare-fun mapRest!55192 () (Array (_ BitVec 32) ValueCell!16956))

(declare-fun mapValue!55192 () ValueCell!16956)

(assert (=> mapNonEmpty!55192 (= (arr!42645 _values!1354) (store mapRest!55192 mapKey!55192 mapValue!55192))))

(declare-fun res!873619 () Bool)

(assert (=> start!111180 (=> (not res!873619) (not e!750680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111180 (= res!873619 (validMask!0 mask!2040))))

(assert (=> start!111180 e!750680))

(assert (=> start!111180 tp!105260))

(declare-fun array_inv!32175 (array!88337) Bool)

(assert (=> start!111180 (array_inv!32175 _keys!1628)))

(assert (=> start!111180 true))

(declare-fun tp_is_empty!35709 () Bool)

(assert (=> start!111180 tp_is_empty!35709))

(declare-fun array_inv!32176 (array!88339) Bool)

(assert (=> start!111180 (and (array_inv!32176 _values!1354) e!750677)))

(declare-fun b!1315862 () Bool)

(assert (=> b!1315862 (= e!750678 tp_is_empty!35709)))

(declare-fun b!1315863 () Bool)

(declare-fun res!873616 () Bool)

(assert (=> b!1315863 (=> (not res!873616) (not e!750680))))

(assert (=> b!1315863 (= res!873616 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43195 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315864 () Bool)

(assert (=> b!1315864 (= e!750676 tp_is_empty!35709)))

(assert (= (and start!111180 res!873619) b!1315857))

(assert (= (and b!1315857 res!873620) b!1315861))

(assert (= (and b!1315861 res!873617) b!1315858))

(assert (= (and b!1315858 res!873618) b!1315863))

(assert (= (and b!1315863 res!873616) b!1315859))

(assert (= (and b!1315860 condMapEmpty!55192) mapIsEmpty!55192))

(assert (= (and b!1315860 (not condMapEmpty!55192)) mapNonEmpty!55192))

(get-info :version)

(assert (= (and mapNonEmpty!55192 ((_ is ValueCellFull!16956) mapValue!55192)) b!1315864))

(assert (= (and b!1315860 ((_ is ValueCellFull!16956) mapDefault!55192)) b!1315862))

(assert (= start!111180 b!1315860))

(declare-fun m!1203919 () Bool)

(assert (=> b!1315859 m!1203919))

(assert (=> b!1315859 m!1203919))

(declare-fun m!1203921 () Bool)

(assert (=> b!1315859 m!1203921))

(declare-fun m!1203923 () Bool)

(assert (=> start!111180 m!1203923))

(declare-fun m!1203925 () Bool)

(assert (=> start!111180 m!1203925))

(declare-fun m!1203927 () Bool)

(assert (=> start!111180 m!1203927))

(declare-fun m!1203929 () Bool)

(assert (=> mapNonEmpty!55192 m!1203929))

(declare-fun m!1203931 () Bool)

(assert (=> b!1315861 m!1203931))

(declare-fun m!1203933 () Bool)

(assert (=> b!1315858 m!1203933))

(check-sat (not mapNonEmpty!55192) tp_is_empty!35709 (not b!1315861) (not b!1315858) (not b!1315859) (not b_next!29979) (not start!111180) b_and!48197)
(check-sat b_and!48197 (not b_next!29979))
