; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4458 () Bool)

(assert start!4458)

(declare-fun b_free!1221 () Bool)

(declare-fun b_next!1221 () Bool)

(assert (=> start!4458 (= b_free!1221 (not b_next!1221))))

(declare-fun tp!5101 () Bool)

(declare-fun b_and!2045 () Bool)

(assert (=> start!4458 (= tp!5101 b_and!2045)))

(declare-fun b!34560 () Bool)

(declare-fun e!21908 () Bool)

(assert (=> b!34560 (= e!21908 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!151 0))(
  ( (MissingZero!151 (index!2726 (_ BitVec 32))) (Found!151 (index!2727 (_ BitVec 32))) (Intermediate!151 (undefined!963 Bool) (index!2728 (_ BitVec 32)) (x!6929 (_ BitVec 32))) (Undefined!151) (MissingVacant!151 (index!2729 (_ BitVec 32))) )
))
(declare-fun lt!12799 () SeekEntryResult!151)

(declare-datatypes ((array!2355 0))(
  ( (array!2356 (arr!1125 (Array (_ BitVec 32) (_ BitVec 64))) (size!1226 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2355)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2355 (_ BitVec 32)) SeekEntryResult!151)

(assert (=> b!34560 (= lt!12799 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun res!20957 () Bool)

(assert (=> start!4458 (=> (not res!20957) (not e!21908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4458 (= res!20957 (validMask!0 mask!2294))))

(assert (=> start!4458 e!21908))

(assert (=> start!4458 true))

(assert (=> start!4458 tp!5101))

(declare-datatypes ((V!1925 0))(
  ( (V!1926 (val!814 Int)) )
))
(declare-datatypes ((ValueCell!588 0))(
  ( (ValueCellFull!588 (v!1909 V!1925)) (EmptyCell!588) )
))
(declare-datatypes ((array!2357 0))(
  ( (array!2358 (arr!1126 (Array (_ BitVec 32) ValueCell!588)) (size!1227 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2357)

(declare-fun e!21911 () Bool)

(declare-fun array_inv!749 (array!2357) Bool)

(assert (=> start!4458 (and (array_inv!749 _values!1501) e!21911)))

(declare-fun array_inv!750 (array!2355) Bool)

(assert (=> start!4458 (array_inv!750 _keys!1833)))

(declare-fun tp_is_empty!1575 () Bool)

(assert (=> start!4458 tp_is_empty!1575))

(declare-fun b!34561 () Bool)

(declare-fun res!20958 () Bool)

(assert (=> b!34561 (=> (not res!20958) (not e!21908))))

(declare-fun arrayContainsKey!0 (array!2355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34561 (= res!20958 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34562 () Bool)

(declare-fun res!20953 () Bool)

(assert (=> b!34562 (=> (not res!20953) (not e!21908))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!34562 (= res!20953 (and (= (size!1227 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1226 _keys!1833) (size!1227 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1909 () Bool)

(declare-fun mapRes!1909 () Bool)

(assert (=> mapIsEmpty!1909 mapRes!1909))

(declare-fun b!34563 () Bool)

(declare-fun e!21912 () Bool)

(assert (=> b!34563 (= e!21912 tp_is_empty!1575)))

(declare-fun b!34564 () Bool)

(declare-fun res!20956 () Bool)

(assert (=> b!34564 (=> (not res!20956) (not e!21908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34564 (= res!20956 (validKeyInArray!0 k0!1304))))

(declare-fun b!34565 () Bool)

(declare-fun res!20959 () Bool)

(assert (=> b!34565 (=> (not res!20959) (not e!21908))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1925)

(declare-fun minValue!1443 () V!1925)

(declare-datatypes ((tuple2!1308 0))(
  ( (tuple2!1309 (_1!664 (_ BitVec 64)) (_2!664 V!1925)) )
))
(declare-datatypes ((List!913 0))(
  ( (Nil!910) (Cons!909 (h!1476 tuple2!1308) (t!3620 List!913)) )
))
(declare-datatypes ((ListLongMap!889 0))(
  ( (ListLongMap!890 (toList!460 List!913)) )
))
(declare-fun contains!403 (ListLongMap!889 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!281 (array!2355 array!2357 (_ BitVec 32) (_ BitVec 32) V!1925 V!1925 (_ BitVec 32) Int) ListLongMap!889)

(assert (=> b!34565 (= res!20959 (not (contains!403 (getCurrentListMap!281 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!34566 () Bool)

(declare-fun res!20955 () Bool)

(assert (=> b!34566 (=> (not res!20955) (not e!21908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2355 (_ BitVec 32)) Bool)

(assert (=> b!34566 (= res!20955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34567 () Bool)

(declare-fun e!21910 () Bool)

(assert (=> b!34567 (= e!21910 tp_is_empty!1575)))

(declare-fun mapNonEmpty!1909 () Bool)

(declare-fun tp!5100 () Bool)

(assert (=> mapNonEmpty!1909 (= mapRes!1909 (and tp!5100 e!21910))))

(declare-fun mapValue!1909 () ValueCell!588)

(declare-fun mapKey!1909 () (_ BitVec 32))

(declare-fun mapRest!1909 () (Array (_ BitVec 32) ValueCell!588))

(assert (=> mapNonEmpty!1909 (= (arr!1126 _values!1501) (store mapRest!1909 mapKey!1909 mapValue!1909))))

(declare-fun b!34568 () Bool)

(declare-fun res!20954 () Bool)

(assert (=> b!34568 (=> (not res!20954) (not e!21908))))

(declare-datatypes ((List!914 0))(
  ( (Nil!911) (Cons!910 (h!1477 (_ BitVec 64)) (t!3621 List!914)) )
))
(declare-fun arrayNoDuplicates!0 (array!2355 (_ BitVec 32) List!914) Bool)

(assert (=> b!34568 (= res!20954 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!911))))

(declare-fun b!34569 () Bool)

(assert (=> b!34569 (= e!21911 (and e!21912 mapRes!1909))))

(declare-fun condMapEmpty!1909 () Bool)

(declare-fun mapDefault!1909 () ValueCell!588)

(assert (=> b!34569 (= condMapEmpty!1909 (= (arr!1126 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!588)) mapDefault!1909)))))

(assert (= (and start!4458 res!20957) b!34562))

(assert (= (and b!34562 res!20953) b!34566))

(assert (= (and b!34566 res!20955) b!34568))

(assert (= (and b!34568 res!20954) b!34564))

(assert (= (and b!34564 res!20956) b!34565))

(assert (= (and b!34565 res!20959) b!34561))

(assert (= (and b!34561 res!20958) b!34560))

(assert (= (and b!34569 condMapEmpty!1909) mapIsEmpty!1909))

(assert (= (and b!34569 (not condMapEmpty!1909)) mapNonEmpty!1909))

(get-info :version)

(assert (= (and mapNonEmpty!1909 ((_ is ValueCellFull!588) mapValue!1909)) b!34567))

(assert (= (and b!34569 ((_ is ValueCellFull!588) mapDefault!1909)) b!34563))

(assert (= start!4458 b!34569))

(declare-fun m!27867 () Bool)

(assert (=> start!4458 m!27867))

(declare-fun m!27869 () Bool)

(assert (=> start!4458 m!27869))

(declare-fun m!27871 () Bool)

(assert (=> start!4458 m!27871))

(declare-fun m!27873 () Bool)

(assert (=> mapNonEmpty!1909 m!27873))

(declare-fun m!27875 () Bool)

(assert (=> b!34560 m!27875))

(declare-fun m!27877 () Bool)

(assert (=> b!34566 m!27877))

(declare-fun m!27879 () Bool)

(assert (=> b!34568 m!27879))

(declare-fun m!27881 () Bool)

(assert (=> b!34561 m!27881))

(declare-fun m!27883 () Bool)

(assert (=> b!34565 m!27883))

(assert (=> b!34565 m!27883))

(declare-fun m!27885 () Bool)

(assert (=> b!34565 m!27885))

(declare-fun m!27887 () Bool)

(assert (=> b!34564 m!27887))

(check-sat (not b!34561) (not b!34568) (not b!34564) tp_is_empty!1575 (not b!34566) (not b!34560) (not mapNonEmpty!1909) b_and!2045 (not b_next!1221) (not start!4458) (not b!34565))
(check-sat b_and!2045 (not b_next!1221))
