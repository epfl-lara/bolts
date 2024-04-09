; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4194 () Bool)

(assert start!4194)

(declare-fun b_free!1101 () Bool)

(declare-fun b_next!1101 () Bool)

(assert (=> start!4194 (= b_free!1101 (not b_next!1101))))

(declare-fun tp!4722 () Bool)

(declare-fun b_and!1913 () Bool)

(assert (=> start!4194 (= tp!4722 b_and!1913)))

(declare-fun b!31916 () Bool)

(declare-fun res!19356 () Bool)

(declare-fun e!20341 () Bool)

(assert (=> b!31916 (=> (not res!19356) (not e!20341))))

(declare-datatypes ((V!1765 0))(
  ( (V!1766 (val!754 Int)) )
))
(declare-datatypes ((ValueCell!528 0))(
  ( (ValueCellFull!528 (v!1843 V!1765)) (EmptyCell!528) )
))
(declare-datatypes ((array!2117 0))(
  ( (array!2118 (arr!1012 (Array (_ BitVec 32) ValueCell!528)) (size!1113 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2117)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2119 0))(
  ( (array!2120 (arr!1013 (Array (_ BitVec 32) (_ BitVec 64))) (size!1114 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2119)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!31916 (= res!19356 (and (= (size!1113 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1114 _keys!1833) (size!1113 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31917 () Bool)

(declare-fun res!19352 () Bool)

(assert (=> b!31917 (=> (not res!19352) (not e!20341))))

(declare-datatypes ((List!825 0))(
  ( (Nil!822) (Cons!821 (h!1388 (_ BitVec 64)) (t!3520 List!825)) )
))
(declare-fun arrayNoDuplicates!0 (array!2119 (_ BitVec 32) List!825) Bool)

(assert (=> b!31917 (= res!19352 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!822))))

(declare-fun res!19354 () Bool)

(assert (=> start!4194 (=> (not res!19354) (not e!20341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4194 (= res!19354 (validMask!0 mask!2294))))

(assert (=> start!4194 e!20341))

(assert (=> start!4194 true))

(assert (=> start!4194 tp!4722))

(declare-fun e!20339 () Bool)

(declare-fun array_inv!675 (array!2117) Bool)

(assert (=> start!4194 (and (array_inv!675 _values!1501) e!20339)))

(declare-fun array_inv!676 (array!2119) Bool)

(assert (=> start!4194 (array_inv!676 _keys!1833)))

(declare-fun tp_is_empty!1455 () Bool)

(assert (=> start!4194 tp_is_empty!1455))

(declare-fun mapNonEmpty!1711 () Bool)

(declare-fun mapRes!1711 () Bool)

(declare-fun tp!4723 () Bool)

(declare-fun e!20337 () Bool)

(assert (=> mapNonEmpty!1711 (= mapRes!1711 (and tp!4723 e!20337))))

(declare-fun mapValue!1711 () ValueCell!528)

(declare-fun mapKey!1711 () (_ BitVec 32))

(declare-fun mapRest!1711 () (Array (_ BitVec 32) ValueCell!528))

(assert (=> mapNonEmpty!1711 (= (arr!1012 _values!1501) (store mapRest!1711 mapKey!1711 mapValue!1711))))

(declare-fun b!31918 () Bool)

(declare-fun res!19353 () Bool)

(assert (=> b!31918 (=> (not res!19353) (not e!20341))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31918 (= res!19353 (validKeyInArray!0 k0!1304))))

(declare-fun b!31919 () Bool)

(declare-fun e!20338 () Bool)

(assert (=> b!31919 (= e!20338 tp_is_empty!1455)))

(declare-fun mapIsEmpty!1711 () Bool)

(assert (=> mapIsEmpty!1711 mapRes!1711))

(declare-fun b!31920 () Bool)

(assert (=> b!31920 (= e!20337 tp_is_empty!1455)))

(declare-fun b!31921 () Bool)

(declare-fun res!19357 () Bool)

(assert (=> b!31921 (=> (not res!19357) (not e!20341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2119 (_ BitVec 32)) Bool)

(assert (=> b!31921 (= res!19357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31922 () Bool)

(declare-fun res!19351 () Bool)

(assert (=> b!31922 (=> (not res!19351) (not e!20341))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1765)

(declare-fun minValue!1443 () V!1765)

(declare-datatypes ((tuple2!1222 0))(
  ( (tuple2!1223 (_1!621 (_ BitVec 64)) (_2!621 V!1765)) )
))
(declare-datatypes ((List!826 0))(
  ( (Nil!823) (Cons!822 (h!1389 tuple2!1222) (t!3521 List!826)) )
))
(declare-datatypes ((ListLongMap!803 0))(
  ( (ListLongMap!804 (toList!417 List!826)) )
))
(declare-fun contains!354 (ListLongMap!803 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!242 (array!2119 array!2117 (_ BitVec 32) (_ BitVec 32) V!1765 V!1765 (_ BitVec 32) Int) ListLongMap!803)

(assert (=> b!31922 (= res!19351 (not (contains!354 (getCurrentListMap!242 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!31923 () Bool)

(assert (=> b!31923 (= e!20339 (and e!20338 mapRes!1711))))

(declare-fun condMapEmpty!1711 () Bool)

(declare-fun mapDefault!1711 () ValueCell!528)

(assert (=> b!31923 (= condMapEmpty!1711 (= (arr!1012 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!528)) mapDefault!1711)))))

(declare-fun b!31924 () Bool)

(declare-fun res!19355 () Bool)

(assert (=> b!31924 (=> (not res!19355) (not e!20341))))

(declare-fun arrayContainsKey!0 (array!2119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31924 (= res!19355 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!31925 () Bool)

(assert (=> b!31925 (= e!20341 false)))

(declare-fun lt!11622 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2119 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31925 (= lt!11622 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(assert (= (and start!4194 res!19354) b!31916))

(assert (= (and b!31916 res!19356) b!31921))

(assert (= (and b!31921 res!19357) b!31917))

(assert (= (and b!31917 res!19352) b!31918))

(assert (= (and b!31918 res!19353) b!31922))

(assert (= (and b!31922 res!19351) b!31924))

(assert (= (and b!31924 res!19355) b!31925))

(assert (= (and b!31923 condMapEmpty!1711) mapIsEmpty!1711))

(assert (= (and b!31923 (not condMapEmpty!1711)) mapNonEmpty!1711))

(get-info :version)

(assert (= (and mapNonEmpty!1711 ((_ is ValueCellFull!528) mapValue!1711)) b!31920))

(assert (= (and b!31923 ((_ is ValueCellFull!528) mapDefault!1711)) b!31919))

(assert (= start!4194 b!31923))

(declare-fun m!25579 () Bool)

(assert (=> b!31921 m!25579))

(declare-fun m!25581 () Bool)

(assert (=> b!31925 m!25581))

(declare-fun m!25583 () Bool)

(assert (=> start!4194 m!25583))

(declare-fun m!25585 () Bool)

(assert (=> start!4194 m!25585))

(declare-fun m!25587 () Bool)

(assert (=> start!4194 m!25587))

(declare-fun m!25589 () Bool)

(assert (=> b!31924 m!25589))

(declare-fun m!25591 () Bool)

(assert (=> mapNonEmpty!1711 m!25591))

(declare-fun m!25593 () Bool)

(assert (=> b!31918 m!25593))

(declare-fun m!25595 () Bool)

(assert (=> b!31922 m!25595))

(assert (=> b!31922 m!25595))

(declare-fun m!25597 () Bool)

(assert (=> b!31922 m!25597))

(declare-fun m!25599 () Bool)

(assert (=> b!31917 m!25599))

(check-sat (not b!31922) (not b!31924) (not b!31921) (not mapNonEmpty!1711) (not b!31918) (not start!4194) (not b_next!1101) b_and!1913 (not b!31925) (not b!31917) tp_is_empty!1455)
(check-sat b_and!1913 (not b_next!1101))
