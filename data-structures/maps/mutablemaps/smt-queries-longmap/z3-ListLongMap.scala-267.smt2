; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4400 () Bool)

(assert start!4400)

(declare-fun b_free!1191 () Bool)

(declare-fun b_next!1191 () Bool)

(assert (=> start!4400 (= b_free!1191 (not b_next!1191))))

(declare-fun tp!5007 () Bool)

(declare-fun b_and!2013 () Bool)

(assert (=> start!4400 (= tp!5007 b_and!2013)))

(declare-fun b!33961 () Bool)

(declare-fun res!20582 () Bool)

(declare-fun e!21568 () Bool)

(assert (=> b!33961 (=> (not res!20582) (not e!21568))))

(declare-datatypes ((array!2299 0))(
  ( (array!2300 (arr!1098 (Array (_ BitVec 32) (_ BitVec 64))) (size!1199 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2299)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2299 (_ BitVec 32)) Bool)

(assert (=> b!33961 (= res!20582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!33962 () Bool)

(declare-fun e!21564 () Bool)

(assert (=> b!33962 (= e!21568 e!21564)))

(declare-fun res!20585 () Bool)

(assert (=> b!33962 (=> (not res!20585) (not e!21564))))

(declare-datatypes ((V!1885 0))(
  ( (V!1886 (val!799 Int)) )
))
(declare-datatypes ((tuple2!1288 0))(
  ( (tuple2!1289 (_1!654 (_ BitVec 64)) (_2!654 V!1885)) )
))
(declare-datatypes ((List!893 0))(
  ( (Nil!890) (Cons!889 (h!1456 tuple2!1288) (t!3598 List!893)) )
))
(declare-datatypes ((ListLongMap!869 0))(
  ( (ListLongMap!870 (toList!450 List!893)) )
))
(declare-fun lt!12529 () ListLongMap!869)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!392 (ListLongMap!869 (_ BitVec 64)) Bool)

(assert (=> b!33962 (= res!20585 (not (contains!392 lt!12529 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!573 0))(
  ( (ValueCellFull!573 (v!1893 V!1885)) (EmptyCell!573) )
))
(declare-datatypes ((array!2301 0))(
  ( (array!2302 (arr!1099 (Array (_ BitVec 32) ValueCell!573)) (size!1200 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2301)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1885)

(declare-fun minValue!1443 () V!1885)

(declare-fun getCurrentListMap!271 (array!2299 array!2301 (_ BitVec 32) (_ BitVec 32) V!1885 V!1885 (_ BitVec 32) Int) ListLongMap!869)

(assert (=> b!33962 (= lt!12529 (getCurrentListMap!271 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun res!20584 () Bool)

(assert (=> start!4400 (=> (not res!20584) (not e!21568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4400 (= res!20584 (validMask!0 mask!2294))))

(assert (=> start!4400 e!21568))

(assert (=> start!4400 true))

(assert (=> start!4400 tp!5007))

(declare-fun e!21563 () Bool)

(declare-fun array_inv!731 (array!2301) Bool)

(assert (=> start!4400 (and (array_inv!731 _values!1501) e!21563)))

(declare-fun array_inv!732 (array!2299) Bool)

(assert (=> start!4400 (array_inv!732 _keys!1833)))

(declare-fun tp_is_empty!1545 () Bool)

(assert (=> start!4400 tp_is_empty!1545))

(declare-fun b!33963 () Bool)

(assert (=> b!33963 (= e!21564 (not true))))

(declare-datatypes ((SeekEntryResult!142 0))(
  ( (MissingZero!142 (index!2690 (_ BitVec 32))) (Found!142 (index!2691 (_ BitVec 32))) (Intermediate!142 (undefined!954 Bool) (index!2692 (_ BitVec 32)) (x!6870 (_ BitVec 32))) (Undefined!142) (MissingVacant!142 (index!2693 (_ BitVec 32))) )
))
(declare-fun lt!12530 () SeekEntryResult!142)

(declare-fun lt!12528 () (_ BitVec 32))

(get-info :version)

(assert (=> b!33963 (and ((_ is Found!142) lt!12530) (= (index!2691 lt!12530) lt!12528))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2299 (_ BitVec 32)) SeekEntryResult!142)

(assert (=> b!33963 (= lt!12530 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!762 0))(
  ( (Unit!763) )
))
(declare-fun lt!12527 () Unit!762)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2299 (_ BitVec 32)) Unit!762)

(assert (=> b!33963 (= lt!12527 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12528 _keys!1833 mask!2294))))

(assert (=> b!33963 (contains!392 lt!12529 (select (arr!1098 _keys!1833) lt!12528))))

(declare-fun lt!12531 () Unit!762)

(declare-fun lemmaValidKeyInArrayIsInListMap!64 (array!2299 array!2301 (_ BitVec 32) (_ BitVec 32) V!1885 V!1885 (_ BitVec 32) Int) Unit!762)

(assert (=> b!33963 (= lt!12531 (lemmaValidKeyInArrayIsInListMap!64 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12528 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2299 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33963 (= lt!12528 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1861 () Bool)

(declare-fun mapRes!1861 () Bool)

(declare-fun tp!5008 () Bool)

(declare-fun e!21566 () Bool)

(assert (=> mapNonEmpty!1861 (= mapRes!1861 (and tp!5008 e!21566))))

(declare-fun mapRest!1861 () (Array (_ BitVec 32) ValueCell!573))

(declare-fun mapKey!1861 () (_ BitVec 32))

(declare-fun mapValue!1861 () ValueCell!573)

(assert (=> mapNonEmpty!1861 (= (arr!1099 _values!1501) (store mapRest!1861 mapKey!1861 mapValue!1861))))

(declare-fun b!33964 () Bool)

(declare-fun res!20587 () Bool)

(assert (=> b!33964 (=> (not res!20587) (not e!21568))))

(assert (=> b!33964 (= res!20587 (and (= (size!1200 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1199 _keys!1833) (size!1200 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!33965 () Bool)

(assert (=> b!33965 (= e!21566 tp_is_empty!1545)))

(declare-fun b!33966 () Bool)

(declare-fun res!20586 () Bool)

(assert (=> b!33966 (=> (not res!20586) (not e!21568))))

(declare-datatypes ((List!894 0))(
  ( (Nil!891) (Cons!890 (h!1457 (_ BitVec 64)) (t!3599 List!894)) )
))
(declare-fun arrayNoDuplicates!0 (array!2299 (_ BitVec 32) List!894) Bool)

(assert (=> b!33966 (= res!20586 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!891))))

(declare-fun b!33967 () Bool)

(declare-fun res!20583 () Bool)

(assert (=> b!33967 (=> (not res!20583) (not e!21568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33967 (= res!20583 (validKeyInArray!0 k0!1304))))

(declare-fun b!33968 () Bool)

(declare-fun res!20581 () Bool)

(assert (=> b!33968 (=> (not res!20581) (not e!21564))))

(declare-fun arrayContainsKey!0 (array!2299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33968 (= res!20581 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1861 () Bool)

(assert (=> mapIsEmpty!1861 mapRes!1861))

(declare-fun b!33969 () Bool)

(declare-fun e!21565 () Bool)

(assert (=> b!33969 (= e!21565 tp_is_empty!1545)))

(declare-fun b!33970 () Bool)

(assert (=> b!33970 (= e!21563 (and e!21565 mapRes!1861))))

(declare-fun condMapEmpty!1861 () Bool)

(declare-fun mapDefault!1861 () ValueCell!573)

(assert (=> b!33970 (= condMapEmpty!1861 (= (arr!1099 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!573)) mapDefault!1861)))))

(assert (= (and start!4400 res!20584) b!33964))

(assert (= (and b!33964 res!20587) b!33961))

(assert (= (and b!33961 res!20582) b!33966))

(assert (= (and b!33966 res!20586) b!33967))

(assert (= (and b!33967 res!20583) b!33962))

(assert (= (and b!33962 res!20585) b!33968))

(assert (= (and b!33968 res!20581) b!33963))

(assert (= (and b!33970 condMapEmpty!1861) mapIsEmpty!1861))

(assert (= (and b!33970 (not condMapEmpty!1861)) mapNonEmpty!1861))

(assert (= (and mapNonEmpty!1861 ((_ is ValueCellFull!573) mapValue!1861)) b!33965))

(assert (= (and b!33970 ((_ is ValueCellFull!573) mapDefault!1861)) b!33969))

(assert (= start!4400 b!33970))

(declare-fun m!27311 () Bool)

(assert (=> b!33967 m!27311))

(declare-fun m!27313 () Bool)

(assert (=> start!4400 m!27313))

(declare-fun m!27315 () Bool)

(assert (=> start!4400 m!27315))

(declare-fun m!27317 () Bool)

(assert (=> start!4400 m!27317))

(declare-fun m!27319 () Bool)

(assert (=> b!33961 m!27319))

(declare-fun m!27321 () Bool)

(assert (=> mapNonEmpty!1861 m!27321))

(declare-fun m!27323 () Bool)

(assert (=> b!33968 m!27323))

(declare-fun m!27325 () Bool)

(assert (=> b!33963 m!27325))

(declare-fun m!27327 () Bool)

(assert (=> b!33963 m!27327))

(declare-fun m!27329 () Bool)

(assert (=> b!33963 m!27329))

(declare-fun m!27331 () Bool)

(assert (=> b!33963 m!27331))

(declare-fun m!27333 () Bool)

(assert (=> b!33963 m!27333))

(assert (=> b!33963 m!27329))

(declare-fun m!27335 () Bool)

(assert (=> b!33963 m!27335))

(declare-fun m!27337 () Bool)

(assert (=> b!33962 m!27337))

(declare-fun m!27339 () Bool)

(assert (=> b!33962 m!27339))

(declare-fun m!27341 () Bool)

(assert (=> b!33966 m!27341))

(check-sat tp_is_empty!1545 (not b!33966) (not b!33961) (not start!4400) (not mapNonEmpty!1861) (not b!33968) b_and!2013 (not b!33962) (not b!33963) (not b!33967) (not b_next!1191))
(check-sat b_and!2013 (not b_next!1191))
