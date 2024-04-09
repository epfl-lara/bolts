; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3900 () Bool)

(assert start!3900)

(declare-fun b_free!807 () Bool)

(declare-fun b_next!807 () Bool)

(assert (=> start!3900 (= b_free!807 (not b_next!807))))

(declare-fun tp!3841 () Bool)

(declare-fun b_and!1619 () Bool)

(assert (=> start!3900 (= tp!3841 b_and!1619)))

(declare-fun b!27515 () Bool)

(declare-fun e!17918 () Bool)

(declare-fun tp_is_empty!1161 () Bool)

(assert (=> b!27515 (= e!17918 tp_is_empty!1161)))

(declare-fun b!27516 () Bool)

(declare-fun res!16279 () Bool)

(declare-fun e!17920 () Bool)

(assert (=> b!27516 (=> (not res!16279) (not e!17920))))

(declare-datatypes ((V!1373 0))(
  ( (V!1374 (val!607 Int)) )
))
(declare-datatypes ((ValueCell!381 0))(
  ( (ValueCellFull!381 (v!1696 V!1373)) (EmptyCell!381) )
))
(declare-datatypes ((array!1553 0))(
  ( (array!1554 (arr!730 (Array (_ BitVec 32) ValueCell!381)) (size!831 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1553)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1555 0))(
  ( (array!1556 (arr!731 (Array (_ BitVec 32) (_ BitVec 64))) (size!832 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1555)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!27516 (= res!16279 (and (= (size!831 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!832 _keys!1833) (size!831 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!16273 () Bool)

(assert (=> start!3900 (=> (not res!16273) (not e!17920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3900 (= res!16273 (validMask!0 mask!2294))))

(assert (=> start!3900 e!17920))

(assert (=> start!3900 true))

(assert (=> start!3900 tp!3841))

(declare-fun e!17919 () Bool)

(declare-fun array_inv!503 (array!1553) Bool)

(assert (=> start!3900 (and (array_inv!503 _values!1501) e!17919)))

(declare-fun array_inv!504 (array!1555) Bool)

(assert (=> start!3900 (array_inv!504 _keys!1833)))

(assert (=> start!3900 tp_is_empty!1161))

(declare-fun b!27517 () Bool)

(declare-fun res!16275 () Bool)

(assert (=> b!27517 (=> (not res!16275) (not e!17920))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27517 (= res!16275 (validKeyInArray!0 k0!1304))))

(declare-fun mapNonEmpty!1270 () Bool)

(declare-fun mapRes!1270 () Bool)

(declare-fun tp!3840 () Bool)

(assert (=> mapNonEmpty!1270 (= mapRes!1270 (and tp!3840 e!17918))))

(declare-fun mapKey!1270 () (_ BitVec 32))

(declare-fun mapValue!1270 () ValueCell!381)

(declare-fun mapRest!1270 () (Array (_ BitVec 32) ValueCell!381))

(assert (=> mapNonEmpty!1270 (= (arr!730 _values!1501) (store mapRest!1270 mapKey!1270 mapValue!1270))))

(declare-fun b!27518 () Bool)

(declare-fun res!16277 () Bool)

(assert (=> b!27518 (=> (not res!16277) (not e!17920))))

(declare-datatypes ((List!618 0))(
  ( (Nil!615) (Cons!614 (h!1181 (_ BitVec 64)) (t!3313 List!618)) )
))
(declare-fun arrayNoDuplicates!0 (array!1555 (_ BitVec 32) List!618) Bool)

(assert (=> b!27518 (= res!16277 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!615))))

(declare-fun b!27519 () Bool)

(declare-fun res!16276 () Bool)

(assert (=> b!27519 (=> (not res!16276) (not e!17920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1555 (_ BitVec 32)) Bool)

(assert (=> b!27519 (= res!16276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27520 () Bool)

(assert (=> b!27520 (= e!17920 false)))

(declare-fun lt!10695 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1555 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27520 (= lt!10695 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27521 () Bool)

(declare-fun res!16278 () Bool)

(assert (=> b!27521 (=> (not res!16278) (not e!17920))))

(declare-fun arrayContainsKey!0 (array!1555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27521 (= res!16278 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27522 () Bool)

(declare-fun e!17917 () Bool)

(assert (=> b!27522 (= e!17917 tp_is_empty!1161)))

(declare-fun b!27523 () Bool)

(assert (=> b!27523 (= e!17919 (and e!17917 mapRes!1270))))

(declare-fun condMapEmpty!1270 () Bool)

(declare-fun mapDefault!1270 () ValueCell!381)

(assert (=> b!27523 (= condMapEmpty!1270 (= (arr!730 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!381)) mapDefault!1270)))))

(declare-fun mapIsEmpty!1270 () Bool)

(assert (=> mapIsEmpty!1270 mapRes!1270))

(declare-fun b!27524 () Bool)

(declare-fun res!16274 () Bool)

(assert (=> b!27524 (=> (not res!16274) (not e!17920))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1373)

(declare-fun minValue!1443 () V!1373)

(declare-datatypes ((tuple2!1000 0))(
  ( (tuple2!1001 (_1!510 (_ BitVec 64)) (_2!510 V!1373)) )
))
(declare-datatypes ((List!619 0))(
  ( (Nil!616) (Cons!615 (h!1182 tuple2!1000) (t!3314 List!619)) )
))
(declare-datatypes ((ListLongMap!581 0))(
  ( (ListLongMap!582 (toList!306 List!619)) )
))
(declare-fun contains!243 (ListLongMap!581 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!134 (array!1555 array!1553 (_ BitVec 32) (_ BitVec 32) V!1373 V!1373 (_ BitVec 32) Int) ListLongMap!581)

(assert (=> b!27524 (= res!16274 (not (contains!243 (getCurrentListMap!134 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(assert (= (and start!3900 res!16273) b!27516))

(assert (= (and b!27516 res!16279) b!27519))

(assert (= (and b!27519 res!16276) b!27518))

(assert (= (and b!27518 res!16277) b!27517))

(assert (= (and b!27517 res!16275) b!27524))

(assert (= (and b!27524 res!16274) b!27521))

(assert (= (and b!27521 res!16278) b!27520))

(assert (= (and b!27523 condMapEmpty!1270) mapIsEmpty!1270))

(assert (= (and b!27523 (not condMapEmpty!1270)) mapNonEmpty!1270))

(get-info :version)

(assert (= (and mapNonEmpty!1270 ((_ is ValueCellFull!381) mapValue!1270)) b!27515))

(assert (= (and b!27523 ((_ is ValueCellFull!381) mapDefault!1270)) b!27522))

(assert (= start!3900 b!27523))

(declare-fun m!21961 () Bool)

(assert (=> b!27520 m!21961))

(declare-fun m!21963 () Bool)

(assert (=> b!27524 m!21963))

(assert (=> b!27524 m!21963))

(declare-fun m!21965 () Bool)

(assert (=> b!27524 m!21965))

(declare-fun m!21967 () Bool)

(assert (=> mapNonEmpty!1270 m!21967))

(declare-fun m!21969 () Bool)

(assert (=> b!27521 m!21969))

(declare-fun m!21971 () Bool)

(assert (=> b!27518 m!21971))

(declare-fun m!21973 () Bool)

(assert (=> b!27519 m!21973))

(declare-fun m!21975 () Bool)

(assert (=> start!3900 m!21975))

(declare-fun m!21977 () Bool)

(assert (=> start!3900 m!21977))

(declare-fun m!21979 () Bool)

(assert (=> start!3900 m!21979))

(declare-fun m!21981 () Bool)

(assert (=> b!27517 m!21981))

(check-sat (not b_next!807) b_and!1619 (not b!27524) (not b!27520) (not b!27519) tp_is_empty!1161 (not start!3900) (not b!27518) (not b!27521) (not b!27517) (not mapNonEmpty!1270))
(check-sat b_and!1619 (not b_next!807))
