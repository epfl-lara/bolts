; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111254 () Bool)

(assert start!111254)

(declare-datatypes ((array!88395 0))(
  ( (array!88396 (arr!42672 (Array (_ BitVec 32) (_ BitVec 64))) (size!43223 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88395)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52755 0))(
  ( (V!52756 (val!17944 Int)) )
))
(declare-datatypes ((ValueCell!16971 0))(
  ( (ValueCellFull!16971 (v!20571 V!52755)) (EmptyCell!16971) )
))
(declare-datatypes ((array!88397 0))(
  ( (array!88398 (arr!42673 (Array (_ BitVec 32) ValueCell!16971)) (size!43224 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88397)

(declare-fun b!1316580 () Bool)

(declare-fun e!751111 () Bool)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1316580 (= e!751111 (and (= (size!43224 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43223 _keys!1609) (size!43224 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011) (not (= (size!43223 _keys!1609) (bvadd #b00000000000000000000000000000001 mask!2019)))))))

(declare-fun b!1316581 () Bool)

(declare-fun e!751112 () Bool)

(declare-fun tp_is_empty!35739 () Bool)

(assert (=> b!1316581 (= e!751112 tp_is_empty!35739)))

(declare-fun b!1316582 () Bool)

(declare-fun e!751109 () Bool)

(assert (=> b!1316582 (= e!751109 tp_is_empty!35739)))

(declare-fun b!1316583 () Bool)

(declare-fun e!751110 () Bool)

(declare-fun mapRes!55241 () Bool)

(assert (=> b!1316583 (= e!751110 (and e!751109 mapRes!55241))))

(declare-fun condMapEmpty!55241 () Bool)

(declare-fun mapDefault!55241 () ValueCell!16971)

(assert (=> b!1316583 (= condMapEmpty!55241 (= (arr!42673 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16971)) mapDefault!55241)))))

(declare-fun mapIsEmpty!55241 () Bool)

(assert (=> mapIsEmpty!55241 mapRes!55241))

(declare-fun mapNonEmpty!55241 () Bool)

(declare-fun tp!105348 () Bool)

(assert (=> mapNonEmpty!55241 (= mapRes!55241 (and tp!105348 e!751112))))

(declare-fun mapValue!55241 () ValueCell!16971)

(declare-fun mapRest!55241 () (Array (_ BitVec 32) ValueCell!16971))

(declare-fun mapKey!55241 () (_ BitVec 32))

(assert (=> mapNonEmpty!55241 (= (arr!42673 _values!1337) (store mapRest!55241 mapKey!55241 mapValue!55241))))

(declare-fun res!874028 () Bool)

(assert (=> start!111254 (=> (not res!874028) (not e!751111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111254 (= res!874028 (validMask!0 mask!2019))))

(assert (=> start!111254 e!751111))

(assert (=> start!111254 true))

(declare-fun array_inv!32195 (array!88397) Bool)

(assert (=> start!111254 (and (array_inv!32195 _values!1337) e!751110)))

(declare-fun array_inv!32196 (array!88395) Bool)

(assert (=> start!111254 (array_inv!32196 _keys!1609)))

(assert (= (and start!111254 res!874028) b!1316580))

(assert (= (and b!1316583 condMapEmpty!55241) mapIsEmpty!55241))

(assert (= (and b!1316583 (not condMapEmpty!55241)) mapNonEmpty!55241))

(get-info :version)

(assert (= (and mapNonEmpty!55241 ((_ is ValueCellFull!16971) mapValue!55241)) b!1316581))

(assert (= (and b!1316583 ((_ is ValueCellFull!16971) mapDefault!55241)) b!1316582))

(assert (= start!111254 b!1316583))

(declare-fun m!1204759 () Bool)

(assert (=> mapNonEmpty!55241 m!1204759))

(declare-fun m!1204761 () Bool)

(assert (=> start!111254 m!1204761))

(declare-fun m!1204763 () Bool)

(assert (=> start!111254 m!1204763))

(declare-fun m!1204765 () Bool)

(assert (=> start!111254 m!1204765))

(check-sat (not start!111254) (not mapNonEmpty!55241) tp_is_empty!35739)
(check-sat)
