; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110700 () Bool)

(assert start!110700)

(declare-fun b_free!29499 () Bool)

(declare-fun b_next!29499 () Bool)

(assert (=> start!110700 (= b_free!29499 (not b_next!29499))))

(declare-fun tp!103820 () Bool)

(declare-fun b_and!47717 () Bool)

(assert (=> start!110700 (= tp!103820 b_and!47717)))

(declare-fun b!1309350 () Bool)

(declare-fun res!869272 () Bool)

(declare-fun e!747077 () Bool)

(assert (=> b!1309350 (=> (not res!869272) (not e!747077))))

(declare-datatypes ((array!87419 0))(
  ( (array!87420 (arr!42185 (Array (_ BitVec 32) (_ BitVec 64))) (size!42736 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87419)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309350 (= res!869272 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42736 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54472 () Bool)

(declare-fun mapRes!54472 () Bool)

(declare-fun tp!103819 () Bool)

(declare-fun e!747079 () Bool)

(assert (=> mapNonEmpty!54472 (= mapRes!54472 (and tp!103819 e!747079))))

(declare-fun mapKey!54472 () (_ BitVec 32))

(declare-datatypes ((V!52075 0))(
  ( (V!52076 (val!17689 Int)) )
))
(declare-datatypes ((ValueCell!16716 0))(
  ( (ValueCellFull!16716 (v!20314 V!52075)) (EmptyCell!16716) )
))
(declare-datatypes ((array!87421 0))(
  ( (array!87422 (arr!42186 (Array (_ BitVec 32) ValueCell!16716)) (size!42737 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87421)

(declare-fun mapRest!54472 () (Array (_ BitVec 32) ValueCell!16716))

(declare-fun mapValue!54472 () ValueCell!16716)

(assert (=> mapNonEmpty!54472 (= (arr!42186 _values!1354) (store mapRest!54472 mapKey!54472 mapValue!54472))))

(declare-fun b!1309351 () Bool)

(declare-fun e!747080 () Bool)

(declare-fun e!747076 () Bool)

(assert (=> b!1309351 (= e!747080 (and e!747076 mapRes!54472))))

(declare-fun condMapEmpty!54472 () Bool)

(declare-fun mapDefault!54472 () ValueCell!16716)

(assert (=> b!1309351 (= condMapEmpty!54472 (= (arr!42186 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16716)) mapDefault!54472)))))

(declare-fun b!1309352 () Bool)

(declare-fun res!869270 () Bool)

(assert (=> b!1309352 (=> (not res!869270) (not e!747077))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309352 (= res!869270 (and (= (size!42737 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42736 _keys!1628) (size!42737 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309353 () Bool)

(declare-fun tp_is_empty!35229 () Bool)

(assert (=> b!1309353 (= e!747076 tp_is_empty!35229)))

(declare-fun b!1309354 () Bool)

(declare-fun res!869269 () Bool)

(assert (=> b!1309354 (=> (not res!869269) (not e!747077))))

(declare-datatypes ((List!30117 0))(
  ( (Nil!30114) (Cons!30113 (h!31322 (_ BitVec 64)) (t!43730 List!30117)) )
))
(declare-fun arrayNoDuplicates!0 (array!87419 (_ BitVec 32) List!30117) Bool)

(assert (=> b!1309354 (= res!869269 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30114))))

(declare-fun res!869271 () Bool)

(assert (=> start!110700 (=> (not res!869271) (not e!747077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110700 (= res!869271 (validMask!0 mask!2040))))

(assert (=> start!110700 e!747077))

(assert (=> start!110700 tp!103820))

(declare-fun array_inv!31879 (array!87419) Bool)

(assert (=> start!110700 (array_inv!31879 _keys!1628)))

(assert (=> start!110700 true))

(assert (=> start!110700 tp_is_empty!35229))

(declare-fun array_inv!31880 (array!87421) Bool)

(assert (=> start!110700 (and (array_inv!31880 _values!1354) e!747080)))

(declare-fun b!1309355 () Bool)

(declare-fun res!869273 () Bool)

(assert (=> b!1309355 (=> (not res!869273) (not e!747077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87419 (_ BitVec 32)) Bool)

(assert (=> b!1309355 (= res!869273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54472 () Bool)

(assert (=> mapIsEmpty!54472 mapRes!54472))

(declare-fun b!1309356 () Bool)

(assert (=> b!1309356 (= e!747077 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585199 () Bool)

(declare-fun minValue!1296 () V!52075)

(declare-fun zeroValue!1296 () V!52075)

(declare-datatypes ((tuple2!22948 0))(
  ( (tuple2!22949 (_1!11484 (_ BitVec 64)) (_2!11484 V!52075)) )
))
(declare-datatypes ((List!30118 0))(
  ( (Nil!30115) (Cons!30114 (h!31323 tuple2!22948) (t!43731 List!30118)) )
))
(declare-datatypes ((ListLongMap!20617 0))(
  ( (ListLongMap!20618 (toList!10324 List!30118)) )
))
(declare-fun contains!8410 (ListLongMap!20617 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5280 (array!87419 array!87421 (_ BitVec 32) (_ BitVec 32) V!52075 V!52075 (_ BitVec 32) Int) ListLongMap!20617)

(assert (=> b!1309356 (= lt!585199 (contains!8410 (getCurrentListMap!5280 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309357 () Bool)

(assert (=> b!1309357 (= e!747079 tp_is_empty!35229)))

(assert (= (and start!110700 res!869271) b!1309352))

(assert (= (and b!1309352 res!869270) b!1309355))

(assert (= (and b!1309355 res!869273) b!1309354))

(assert (= (and b!1309354 res!869269) b!1309350))

(assert (= (and b!1309350 res!869272) b!1309356))

(assert (= (and b!1309351 condMapEmpty!54472) mapIsEmpty!54472))

(assert (= (and b!1309351 (not condMapEmpty!54472)) mapNonEmpty!54472))

(get-info :version)

(assert (= (and mapNonEmpty!54472 ((_ is ValueCellFull!16716) mapValue!54472)) b!1309357))

(assert (= (and b!1309351 ((_ is ValueCellFull!16716) mapDefault!54472)) b!1309353))

(assert (= start!110700 b!1309351))

(declare-fun m!1199467 () Bool)

(assert (=> b!1309355 m!1199467))

(declare-fun m!1199469 () Bool)

(assert (=> start!110700 m!1199469))

(declare-fun m!1199471 () Bool)

(assert (=> start!110700 m!1199471))

(declare-fun m!1199473 () Bool)

(assert (=> start!110700 m!1199473))

(declare-fun m!1199475 () Bool)

(assert (=> b!1309354 m!1199475))

(declare-fun m!1199477 () Bool)

(assert (=> b!1309356 m!1199477))

(assert (=> b!1309356 m!1199477))

(declare-fun m!1199479 () Bool)

(assert (=> b!1309356 m!1199479))

(declare-fun m!1199481 () Bool)

(assert (=> mapNonEmpty!54472 m!1199481))

(check-sat (not b_next!29499) (not b!1309356) b_and!47717 (not b!1309354) (not start!110700) tp_is_empty!35229 (not b!1309355) (not mapNonEmpty!54472))
(check-sat b_and!47717 (not b_next!29499))
