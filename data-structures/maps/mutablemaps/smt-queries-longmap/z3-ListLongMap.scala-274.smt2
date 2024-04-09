; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4470 () Bool)

(assert start!4470)

(declare-fun b_free!1233 () Bool)

(declare-fun b_next!1233 () Bool)

(assert (=> start!4470 (= b_free!1233 (not b_next!1233))))

(declare-fun tp!5137 () Bool)

(declare-fun b_and!2057 () Bool)

(assert (=> start!4470 (= tp!5137 b_and!2057)))

(declare-fun b!34740 () Bool)

(declare-fun e!22000 () Bool)

(declare-fun e!22002 () Bool)

(declare-fun mapRes!1927 () Bool)

(assert (=> b!34740 (= e!22000 (and e!22002 mapRes!1927))))

(declare-fun condMapEmpty!1927 () Bool)

(declare-datatypes ((V!1941 0))(
  ( (V!1942 (val!820 Int)) )
))
(declare-datatypes ((ValueCell!594 0))(
  ( (ValueCellFull!594 (v!1915 V!1941)) (EmptyCell!594) )
))
(declare-datatypes ((array!2379 0))(
  ( (array!2380 (arr!1137 (Array (_ BitVec 32) ValueCell!594)) (size!1238 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2379)

(declare-fun mapDefault!1927 () ValueCell!594)

(assert (=> b!34740 (= condMapEmpty!1927 (= (arr!1137 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!594)) mapDefault!1927)))))

(declare-fun b!34741 () Bool)

(declare-fun res!21084 () Bool)

(declare-fun e!21999 () Bool)

(assert (=> b!34741 (=> (not res!21084) (not e!21999))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34741 (= res!21084 (validKeyInArray!0 k0!1304))))

(declare-fun b!34742 () Bool)

(declare-fun res!21081 () Bool)

(assert (=> b!34742 (=> (not res!21081) (not e!21999))))

(declare-datatypes ((array!2381 0))(
  ( (array!2382 (arr!1138 (Array (_ BitVec 32) (_ BitVec 64))) (size!1239 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2381)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2381 (_ BitVec 32)) Bool)

(assert (=> b!34742 (= res!21081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34743 () Bool)

(declare-fun res!21083 () Bool)

(assert (=> b!34743 (=> (not res!21083) (not e!21999))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!34743 (= res!21083 (and (= (size!1238 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1239 _keys!1833) (size!1238 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34744 () Bool)

(declare-fun res!21082 () Bool)

(assert (=> b!34744 (=> (not res!21082) (not e!21999))))

(declare-fun arrayContainsKey!0 (array!2381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34744 (= res!21082 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34745 () Bool)

(declare-fun e!22001 () Bool)

(declare-fun tp_is_empty!1587 () Bool)

(assert (=> b!34745 (= e!22001 tp_is_empty!1587)))

(declare-fun res!21080 () Bool)

(assert (=> start!4470 (=> (not res!21080) (not e!21999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4470 (= res!21080 (validMask!0 mask!2294))))

(assert (=> start!4470 e!21999))

(assert (=> start!4470 true))

(assert (=> start!4470 tp!5137))

(declare-fun array_inv!755 (array!2379) Bool)

(assert (=> start!4470 (and (array_inv!755 _values!1501) e!22000)))

(declare-fun array_inv!756 (array!2381) Bool)

(assert (=> start!4470 (array_inv!756 _keys!1833)))

(assert (=> start!4470 tp_is_empty!1587))

(declare-fun mapNonEmpty!1927 () Bool)

(declare-fun tp!5136 () Bool)

(assert (=> mapNonEmpty!1927 (= mapRes!1927 (and tp!5136 e!22001))))

(declare-fun mapKey!1927 () (_ BitVec 32))

(declare-fun mapRest!1927 () (Array (_ BitVec 32) ValueCell!594))

(declare-fun mapValue!1927 () ValueCell!594)

(assert (=> mapNonEmpty!1927 (= (arr!1137 _values!1501) (store mapRest!1927 mapKey!1927 mapValue!1927))))

(declare-fun mapIsEmpty!1927 () Bool)

(assert (=> mapIsEmpty!1927 mapRes!1927))

(declare-fun b!34746 () Bool)

(assert (=> b!34746 (= e!22002 tp_is_empty!1587)))

(declare-fun b!34747 () Bool)

(assert (=> b!34747 (= e!21999 false)))

(declare-datatypes ((SeekEntryResult!156 0))(
  ( (MissingZero!156 (index!2746 (_ BitVec 32))) (Found!156 (index!2747 (_ BitVec 32))) (Intermediate!156 (undefined!968 Bool) (index!2748 (_ BitVec 32)) (x!6950 (_ BitVec 32))) (Undefined!156) (MissingVacant!156 (index!2749 (_ BitVec 32))) )
))
(declare-fun lt!12817 () SeekEntryResult!156)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2381 (_ BitVec 32)) SeekEntryResult!156)

(assert (=> b!34747 (= lt!12817 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!34748 () Bool)

(declare-fun res!21085 () Bool)

(assert (=> b!34748 (=> (not res!21085) (not e!21999))))

(declare-datatypes ((List!921 0))(
  ( (Nil!918) (Cons!917 (h!1484 (_ BitVec 64)) (t!3628 List!921)) )
))
(declare-fun arrayNoDuplicates!0 (array!2381 (_ BitVec 32) List!921) Bool)

(assert (=> b!34748 (= res!21085 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!918))))

(declare-fun b!34749 () Bool)

(declare-fun res!21079 () Bool)

(assert (=> b!34749 (=> (not res!21079) (not e!21999))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1941)

(declare-fun minValue!1443 () V!1941)

(declare-datatypes ((tuple2!1316 0))(
  ( (tuple2!1317 (_1!668 (_ BitVec 64)) (_2!668 V!1941)) )
))
(declare-datatypes ((List!922 0))(
  ( (Nil!919) (Cons!918 (h!1485 tuple2!1316) (t!3629 List!922)) )
))
(declare-datatypes ((ListLongMap!897 0))(
  ( (ListLongMap!898 (toList!464 List!922)) )
))
(declare-fun contains!407 (ListLongMap!897 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!285 (array!2381 array!2379 (_ BitVec 32) (_ BitVec 32) V!1941 V!1941 (_ BitVec 32) Int) ListLongMap!897)

(assert (=> b!34749 (= res!21079 (not (contains!407 (getCurrentListMap!285 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(assert (= (and start!4470 res!21080) b!34743))

(assert (= (and b!34743 res!21083) b!34742))

(assert (= (and b!34742 res!21081) b!34748))

(assert (= (and b!34748 res!21085) b!34741))

(assert (= (and b!34741 res!21084) b!34749))

(assert (= (and b!34749 res!21079) b!34744))

(assert (= (and b!34744 res!21082) b!34747))

(assert (= (and b!34740 condMapEmpty!1927) mapIsEmpty!1927))

(assert (= (and b!34740 (not condMapEmpty!1927)) mapNonEmpty!1927))

(get-info :version)

(assert (= (and mapNonEmpty!1927 ((_ is ValueCellFull!594) mapValue!1927)) b!34745))

(assert (= (and b!34740 ((_ is ValueCellFull!594) mapDefault!1927)) b!34746))

(assert (= start!4470 b!34740))

(declare-fun m!27999 () Bool)

(assert (=> b!34747 m!27999))

(declare-fun m!28001 () Bool)

(assert (=> b!34742 m!28001))

(declare-fun m!28003 () Bool)

(assert (=> b!34749 m!28003))

(assert (=> b!34749 m!28003))

(declare-fun m!28005 () Bool)

(assert (=> b!34749 m!28005))

(declare-fun m!28007 () Bool)

(assert (=> b!34748 m!28007))

(declare-fun m!28009 () Bool)

(assert (=> mapNonEmpty!1927 m!28009))

(declare-fun m!28011 () Bool)

(assert (=> b!34741 m!28011))

(declare-fun m!28013 () Bool)

(assert (=> start!4470 m!28013))

(declare-fun m!28015 () Bool)

(assert (=> start!4470 m!28015))

(declare-fun m!28017 () Bool)

(assert (=> start!4470 m!28017))

(declare-fun m!28019 () Bool)

(assert (=> b!34744 m!28019))

(check-sat b_and!2057 (not b!34741) (not start!4470) tp_is_empty!1587 (not b!34748) (not b_next!1233) (not b!34749) (not b!34742) (not b!34747) (not b!34744) (not mapNonEmpty!1927))
(check-sat b_and!2057 (not b_next!1233))
