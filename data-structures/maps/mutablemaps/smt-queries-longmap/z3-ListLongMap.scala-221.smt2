; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4008 () Bool)

(assert start!4008)

(declare-fun b_free!915 () Bool)

(declare-fun b_next!915 () Bool)

(assert (=> start!4008 (= b_free!915 (not b_next!915))))

(declare-fun tp!4164 () Bool)

(declare-fun b_and!1727 () Bool)

(assert (=> start!4008 (= tp!4164 b_and!1727)))

(declare-fun b!29180 () Bool)

(declare-fun res!17454 () Bool)

(declare-fun e!18852 () Bool)

(assert (=> b!29180 (=> (not res!17454) (not e!18852))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29180 (= res!17454 (validKeyInArray!0 k0!1304))))

(declare-fun b!29181 () Bool)

(declare-fun e!18853 () Bool)

(declare-fun tp_is_empty!1269 () Bool)

(assert (=> b!29181 (= e!18853 tp_is_empty!1269)))

(declare-fun b!29182 () Bool)

(declare-fun e!18848 () Bool)

(assert (=> b!29182 (= e!18852 e!18848)))

(declare-fun res!17453 () Bool)

(assert (=> b!29182 (=> (not res!17453) (not e!18848))))

(declare-datatypes ((V!1517 0))(
  ( (V!1518 (val!661 Int)) )
))
(declare-datatypes ((tuple2!1084 0))(
  ( (tuple2!1085 (_1!552 (_ BitVec 64)) (_2!552 V!1517)) )
))
(declare-datatypes ((List!693 0))(
  ( (Nil!690) (Cons!689 (h!1256 tuple2!1084) (t!3388 List!693)) )
))
(declare-datatypes ((ListLongMap!665 0))(
  ( (ListLongMap!666 (toList!348 List!693)) )
))
(declare-fun lt!11124 () ListLongMap!665)

(declare-fun contains!285 (ListLongMap!665 (_ BitVec 64)) Bool)

(assert (=> b!29182 (= res!17453 (not (contains!285 lt!11124 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!435 0))(
  ( (ValueCellFull!435 (v!1750 V!1517)) (EmptyCell!435) )
))
(declare-datatypes ((array!1759 0))(
  ( (array!1760 (arr!833 (Array (_ BitVec 32) ValueCell!435)) (size!934 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1759)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1761 0))(
  ( (array!1762 (arr!834 (Array (_ BitVec 32) (_ BitVec 64))) (size!935 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1761)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1517)

(declare-fun minValue!1443 () V!1517)

(declare-fun getCurrentListMap!175 (array!1761 array!1759 (_ BitVec 32) (_ BitVec 32) V!1517 V!1517 (_ BitVec 32) Int) ListLongMap!665)

(assert (=> b!29182 (= lt!11124 (getCurrentListMap!175 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29183 () Bool)

(declare-fun e!18851 () Bool)

(assert (=> b!29183 (= e!18851 tp_is_empty!1269)))

(declare-fun b!29184 () Bool)

(declare-fun res!17458 () Bool)

(assert (=> b!29184 (=> (not res!17458) (not e!18852))))

(assert (=> b!29184 (= res!17458 (and (= (size!934 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!935 _keys!1833) (size!934 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29185 () Bool)

(assert (=> b!29185 (= e!18848 (not true))))

(declare-datatypes ((SeekEntryResult!87 0))(
  ( (MissingZero!87 (index!2470 (_ BitVec 32))) (Found!87 (index!2471 (_ BitVec 32))) (Intermediate!87 (undefined!899 Bool) (index!2472 (_ BitVec 32)) (x!6397 (_ BitVec 32))) (Undefined!87) (MissingVacant!87 (index!2473 (_ BitVec 32))) )
))
(declare-fun lt!11123 () SeekEntryResult!87)

(declare-fun lt!11121 () (_ BitVec 32))

(get-info :version)

(assert (=> b!29185 (and ((_ is Found!87) lt!11123) (= (index!2471 lt!11123) lt!11121))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1761 (_ BitVec 32)) SeekEntryResult!87)

(assert (=> b!29185 (= lt!11123 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!675 0))(
  ( (Unit!676) )
))
(declare-fun lt!11122 () Unit!675)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1761 (_ BitVec 32)) Unit!675)

(assert (=> b!29185 (= lt!11122 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!11121 _keys!1833 mask!2294))))

(assert (=> b!29185 (contains!285 lt!11124 (select (arr!834 _keys!1833) lt!11121))))

(declare-fun lt!11120 () Unit!675)

(declare-fun lemmaValidKeyInArrayIsInListMap!29 (array!1761 array!1759 (_ BitVec 32) (_ BitVec 32) V!1517 V!1517 (_ BitVec 32) Int) Unit!675)

(assert (=> b!29185 (= lt!11120 (lemmaValidKeyInArrayIsInListMap!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11121 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1761 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29185 (= lt!11121 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29186 () Bool)

(declare-fun res!17452 () Bool)

(assert (=> b!29186 (=> (not res!17452) (not e!18848))))

(declare-fun arrayContainsKey!0 (array!1761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29186 (= res!17452 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29187 () Bool)

(declare-fun e!18850 () Bool)

(declare-fun mapRes!1432 () Bool)

(assert (=> b!29187 (= e!18850 (and e!18853 mapRes!1432))))

(declare-fun condMapEmpty!1432 () Bool)

(declare-fun mapDefault!1432 () ValueCell!435)

(assert (=> b!29187 (= condMapEmpty!1432 (= (arr!833 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!435)) mapDefault!1432)))))

(declare-fun b!29188 () Bool)

(declare-fun res!17456 () Bool)

(assert (=> b!29188 (=> (not res!17456) (not e!18852))))

(declare-datatypes ((List!694 0))(
  ( (Nil!691) (Cons!690 (h!1257 (_ BitVec 64)) (t!3389 List!694)) )
))
(declare-fun arrayNoDuplicates!0 (array!1761 (_ BitVec 32) List!694) Bool)

(assert (=> b!29188 (= res!17456 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!691))))

(declare-fun mapNonEmpty!1432 () Bool)

(declare-fun tp!4165 () Bool)

(assert (=> mapNonEmpty!1432 (= mapRes!1432 (and tp!4165 e!18851))))

(declare-fun mapKey!1432 () (_ BitVec 32))

(declare-fun mapRest!1432 () (Array (_ BitVec 32) ValueCell!435))

(declare-fun mapValue!1432 () ValueCell!435)

(assert (=> mapNonEmpty!1432 (= (arr!833 _values!1501) (store mapRest!1432 mapKey!1432 mapValue!1432))))

(declare-fun res!17457 () Bool)

(assert (=> start!4008 (=> (not res!17457) (not e!18852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4008 (= res!17457 (validMask!0 mask!2294))))

(assert (=> start!4008 e!18852))

(assert (=> start!4008 true))

(assert (=> start!4008 tp!4164))

(declare-fun array_inv!567 (array!1759) Bool)

(assert (=> start!4008 (and (array_inv!567 _values!1501) e!18850)))

(declare-fun array_inv!568 (array!1761) Bool)

(assert (=> start!4008 (array_inv!568 _keys!1833)))

(assert (=> start!4008 tp_is_empty!1269))

(declare-fun mapIsEmpty!1432 () Bool)

(assert (=> mapIsEmpty!1432 mapRes!1432))

(declare-fun b!29189 () Bool)

(declare-fun res!17455 () Bool)

(assert (=> b!29189 (=> (not res!17455) (not e!18852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1761 (_ BitVec 32)) Bool)

(assert (=> b!29189 (= res!17455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(assert (= (and start!4008 res!17457) b!29184))

(assert (= (and b!29184 res!17458) b!29189))

(assert (= (and b!29189 res!17455) b!29188))

(assert (= (and b!29188 res!17456) b!29180))

(assert (= (and b!29180 res!17454) b!29182))

(assert (= (and b!29182 res!17453) b!29186))

(assert (= (and b!29186 res!17452) b!29185))

(assert (= (and b!29187 condMapEmpty!1432) mapIsEmpty!1432))

(assert (= (and b!29187 (not condMapEmpty!1432)) mapNonEmpty!1432))

(assert (= (and mapNonEmpty!1432 ((_ is ValueCellFull!435) mapValue!1432)) b!29183))

(assert (= (and b!29187 ((_ is ValueCellFull!435) mapDefault!1432)) b!29181))

(assert (= start!4008 b!29187))

(declare-fun m!23369 () Bool)

(assert (=> b!29185 m!23369))

(declare-fun m!23371 () Bool)

(assert (=> b!29185 m!23371))

(declare-fun m!23373 () Bool)

(assert (=> b!29185 m!23373))

(declare-fun m!23375 () Bool)

(assert (=> b!29185 m!23375))

(assert (=> b!29185 m!23371))

(declare-fun m!23377 () Bool)

(assert (=> b!29185 m!23377))

(declare-fun m!23379 () Bool)

(assert (=> b!29185 m!23379))

(declare-fun m!23381 () Bool)

(assert (=> start!4008 m!23381))

(declare-fun m!23383 () Bool)

(assert (=> start!4008 m!23383))

(declare-fun m!23385 () Bool)

(assert (=> start!4008 m!23385))

(declare-fun m!23387 () Bool)

(assert (=> b!29186 m!23387))

(declare-fun m!23389 () Bool)

(assert (=> b!29189 m!23389))

(declare-fun m!23391 () Bool)

(assert (=> mapNonEmpty!1432 m!23391))

(declare-fun m!23393 () Bool)

(assert (=> b!29182 m!23393))

(declare-fun m!23395 () Bool)

(assert (=> b!29182 m!23395))

(declare-fun m!23397 () Bool)

(assert (=> b!29180 m!23397))

(declare-fun m!23399 () Bool)

(assert (=> b!29188 m!23399))

(check-sat (not b!29182) (not b!29180) (not b_next!915) tp_is_empty!1269 (not b!29186) (not b!29189) b_and!1727 (not start!4008) (not b!29185) (not b!29188) (not mapNonEmpty!1432))
(check-sat b_and!1727 (not b_next!915))
