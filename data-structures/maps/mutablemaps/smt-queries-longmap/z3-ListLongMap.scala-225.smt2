; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4032 () Bool)

(assert start!4032)

(declare-fun b_free!939 () Bool)

(declare-fun b_next!939 () Bool)

(assert (=> start!4032 (= b_free!939 (not b_next!939))))

(declare-fun tp!4237 () Bool)

(declare-fun b_and!1751 () Bool)

(assert (=> start!4032 (= tp!4237 b_and!1751)))

(declare-fun b!29540 () Bool)

(declare-fun res!17704 () Bool)

(declare-fun e!19066 () Bool)

(assert (=> b!29540 (=> (not res!17704) (not e!19066))))

(declare-datatypes ((array!1807 0))(
  ( (array!1808 (arr!857 (Array (_ BitVec 32) (_ BitVec 64))) (size!958 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1807)

(declare-datatypes ((List!710 0))(
  ( (Nil!707) (Cons!706 (h!1273 (_ BitVec 64)) (t!3405 List!710)) )
))
(declare-fun arrayNoDuplicates!0 (array!1807 (_ BitVec 32) List!710) Bool)

(assert (=> b!29540 (= res!17704 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!707))))

(declare-fun b!29541 () Bool)

(declare-fun e!19067 () Bool)

(declare-fun e!19069 () Bool)

(declare-fun mapRes!1468 () Bool)

(assert (=> b!29541 (= e!19067 (and e!19069 mapRes!1468))))

(declare-fun condMapEmpty!1468 () Bool)

(declare-datatypes ((V!1549 0))(
  ( (V!1550 (val!673 Int)) )
))
(declare-datatypes ((ValueCell!447 0))(
  ( (ValueCellFull!447 (v!1762 V!1549)) (EmptyCell!447) )
))
(declare-datatypes ((array!1809 0))(
  ( (array!1810 (arr!858 (Array (_ BitVec 32) ValueCell!447)) (size!959 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1809)

(declare-fun mapDefault!1468 () ValueCell!447)

(assert (=> b!29541 (= condMapEmpty!1468 (= (arr!858 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!447)) mapDefault!1468)))))

(declare-fun b!29542 () Bool)

(declare-fun res!17707 () Bool)

(assert (=> b!29542 (=> (not res!17707) (not e!19066))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1807 (_ BitVec 32)) Bool)

(assert (=> b!29542 (= res!17707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29543 () Bool)

(declare-fun res!17709 () Bool)

(declare-fun e!19064 () Bool)

(assert (=> b!29543 (=> (not res!17709) (not e!19064))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29543 (= res!17709 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29544 () Bool)

(assert (=> b!29544 (= e!19066 e!19064)))

(declare-fun res!17708 () Bool)

(assert (=> b!29544 (=> (not res!17708) (not e!19064))))

(declare-datatypes ((tuple2!1104 0))(
  ( (tuple2!1105 (_1!562 (_ BitVec 64)) (_2!562 V!1549)) )
))
(declare-datatypes ((List!711 0))(
  ( (Nil!708) (Cons!707 (h!1274 tuple2!1104) (t!3406 List!711)) )
))
(declare-datatypes ((ListLongMap!685 0))(
  ( (ListLongMap!686 (toList!358 List!711)) )
))
(declare-fun lt!11323 () ListLongMap!685)

(declare-fun contains!295 (ListLongMap!685 (_ BitVec 64)) Bool)

(assert (=> b!29544 (= res!17708 (not (contains!295 lt!11323 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1549)

(declare-fun minValue!1443 () V!1549)

(declare-fun getCurrentListMap!185 (array!1807 array!1809 (_ BitVec 32) (_ BitVec 32) V!1549 V!1549 (_ BitVec 32) Int) ListLongMap!685)

(assert (=> b!29544 (= lt!11323 (getCurrentListMap!185 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29545 () Bool)

(declare-fun tp_is_empty!1293 () Bool)

(assert (=> b!29545 (= e!19069 tp_is_empty!1293)))

(declare-fun mapNonEmpty!1468 () Bool)

(declare-fun tp!4236 () Bool)

(declare-fun e!19065 () Bool)

(assert (=> mapNonEmpty!1468 (= mapRes!1468 (and tp!4236 e!19065))))

(declare-fun mapValue!1468 () ValueCell!447)

(declare-fun mapRest!1468 () (Array (_ BitVec 32) ValueCell!447))

(declare-fun mapKey!1468 () (_ BitVec 32))

(assert (=> mapNonEmpty!1468 (= (arr!858 _values!1501) (store mapRest!1468 mapKey!1468 mapValue!1468))))

(declare-fun res!17705 () Bool)

(assert (=> start!4032 (=> (not res!17705) (not e!19066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4032 (= res!17705 (validMask!0 mask!2294))))

(assert (=> start!4032 e!19066))

(assert (=> start!4032 true))

(assert (=> start!4032 tp!4237))

(declare-fun array_inv!581 (array!1809) Bool)

(assert (=> start!4032 (and (array_inv!581 _values!1501) e!19067)))

(declare-fun array_inv!582 (array!1807) Bool)

(assert (=> start!4032 (array_inv!582 _keys!1833)))

(assert (=> start!4032 tp_is_empty!1293))

(declare-fun b!29546 () Bool)

(declare-fun res!17706 () Bool)

(assert (=> b!29546 (=> (not res!17706) (not e!19066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29546 (= res!17706 (validKeyInArray!0 k0!1304))))

(declare-fun b!29547 () Bool)

(assert (=> b!29547 (= e!19064 (not true))))

(declare-fun lt!11324 () (_ BitVec 32))

(assert (=> b!29547 (arrayForallSeekEntryOrOpenFound!0 lt!11324 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!689 0))(
  ( (Unit!690) )
))
(declare-fun lt!11327 () Unit!689)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!1807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!689)

(assert (=> b!29547 (= lt!11327 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!11324))))

(declare-datatypes ((SeekEntryResult!94 0))(
  ( (MissingZero!94 (index!2498 (_ BitVec 32))) (Found!94 (index!2499 (_ BitVec 32))) (Intermediate!94 (undefined!906 Bool) (index!2500 (_ BitVec 32)) (x!6436 (_ BitVec 32))) (Undefined!94) (MissingVacant!94 (index!2501 (_ BitVec 32))) )
))
(declare-fun lt!11325 () SeekEntryResult!94)

(get-info :version)

(assert (=> b!29547 (and ((_ is Found!94) lt!11325) (= (index!2499 lt!11325) lt!11324))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1807 (_ BitVec 32)) SeekEntryResult!94)

(assert (=> b!29547 (= lt!11325 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun lt!11328 () Unit!689)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1807 (_ BitVec 32)) Unit!689)

(assert (=> b!29547 (= lt!11328 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!11324 _keys!1833 mask!2294))))

(assert (=> b!29547 (contains!295 lt!11323 (select (arr!857 _keys!1833) lt!11324))))

(declare-fun lt!11326 () Unit!689)

(declare-fun lemmaValidKeyInArrayIsInListMap!36 (array!1807 array!1809 (_ BitVec 32) (_ BitVec 32) V!1549 V!1549 (_ BitVec 32) Int) Unit!689)

(assert (=> b!29547 (= lt!11326 (lemmaValidKeyInArrayIsInListMap!36 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11324 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1807 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29547 (= lt!11324 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29548 () Bool)

(declare-fun res!17710 () Bool)

(assert (=> b!29548 (=> (not res!17710) (not e!19066))))

(assert (=> b!29548 (= res!17710 (and (= (size!959 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!958 _keys!1833) (size!959 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1468 () Bool)

(assert (=> mapIsEmpty!1468 mapRes!1468))

(declare-fun b!29549 () Bool)

(assert (=> b!29549 (= e!19065 tp_is_empty!1293)))

(assert (= (and start!4032 res!17705) b!29548))

(assert (= (and b!29548 res!17710) b!29542))

(assert (= (and b!29542 res!17707) b!29540))

(assert (= (and b!29540 res!17704) b!29546))

(assert (= (and b!29546 res!17706) b!29544))

(assert (= (and b!29544 res!17708) b!29543))

(assert (= (and b!29543 res!17709) b!29547))

(assert (= (and b!29541 condMapEmpty!1468) mapIsEmpty!1468))

(assert (= (and b!29541 (not condMapEmpty!1468)) mapNonEmpty!1468))

(assert (= (and mapNonEmpty!1468 ((_ is ValueCellFull!447) mapValue!1468)) b!29549))

(assert (= (and b!29541 ((_ is ValueCellFull!447) mapDefault!1468)) b!29545))

(assert (= start!4032 b!29541))

(declare-fun m!23781 () Bool)

(assert (=> b!29546 m!23781))

(declare-fun m!23783 () Bool)

(assert (=> start!4032 m!23783))

(declare-fun m!23785 () Bool)

(assert (=> start!4032 m!23785))

(declare-fun m!23787 () Bool)

(assert (=> start!4032 m!23787))

(declare-fun m!23789 () Bool)

(assert (=> b!29547 m!23789))

(declare-fun m!23791 () Bool)

(assert (=> b!29547 m!23791))

(declare-fun m!23793 () Bool)

(assert (=> b!29547 m!23793))

(declare-fun m!23795 () Bool)

(assert (=> b!29547 m!23795))

(declare-fun m!23797 () Bool)

(assert (=> b!29547 m!23797))

(declare-fun m!23799 () Bool)

(assert (=> b!29547 m!23799))

(assert (=> b!29547 m!23797))

(declare-fun m!23801 () Bool)

(assert (=> b!29547 m!23801))

(declare-fun m!23803 () Bool)

(assert (=> b!29547 m!23803))

(declare-fun m!23805 () Bool)

(assert (=> b!29542 m!23805))

(declare-fun m!23807 () Bool)

(assert (=> b!29544 m!23807))

(declare-fun m!23809 () Bool)

(assert (=> b!29544 m!23809))

(declare-fun m!23811 () Bool)

(assert (=> mapNonEmpty!1468 m!23811))

(declare-fun m!23813 () Bool)

(assert (=> b!29543 m!23813))

(declare-fun m!23815 () Bool)

(assert (=> b!29540 m!23815))

(check-sat (not b!29546) (not start!4032) (not b!29547) (not b!29543) (not b_next!939) (not b!29542) (not b!29540) b_and!1751 (not mapNonEmpty!1468) (not b!29544) tp_is_empty!1293)
(check-sat b_and!1751 (not b_next!939))
