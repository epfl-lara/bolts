; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33742 () Bool)

(assert start!33742)

(declare-fun b_free!6969 () Bool)

(declare-fun b_next!6969 () Bool)

(assert (=> start!33742 (= b_free!6969 (not b_next!6969))))

(declare-fun tp!24411 () Bool)

(declare-fun b_and!14167 () Bool)

(assert (=> start!33742 (= tp!24411 b_and!14167)))

(declare-fun b!335290 () Bool)

(declare-fun e!205830 () Bool)

(declare-fun e!205833 () Bool)

(assert (=> b!335290 (= e!205830 e!205833)))

(declare-fun res!185102 () Bool)

(assert (=> b!335290 (=> (not res!185102) (not e!205833))))

(declare-datatypes ((SeekEntryResult!3195 0))(
  ( (MissingZero!3195 (index!14959 (_ BitVec 32))) (Found!3195 (index!14960 (_ BitVec 32))) (Intermediate!3195 (undefined!4007 Bool) (index!14961 (_ BitVec 32)) (x!33436 (_ BitVec 32))) (Undefined!3195) (MissingVacant!3195 (index!14962 (_ BitVec 32))) )
))
(declare-fun lt!159810 () SeekEntryResult!3195)

(declare-datatypes ((array!17423 0))(
  ( (array!17424 (arr!8239 (Array (_ BitVec 32) (_ BitVec 64))) (size!8591 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17423)

(declare-fun k0!1348 () (_ BitVec 64))

(get-info :version)

(assert (=> b!335290 (= res!185102 (and ((_ is Found!3195) lt!159810) (= (select (arr!8239 _keys!1895) (index!14960 lt!159810)) k0!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17423 (_ BitVec 32)) SeekEntryResult!3195)

(assert (=> b!335290 (= lt!159810 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335291 () Bool)

(declare-fun e!205831 () Bool)

(declare-fun tp_is_empty!6921 () Bool)

(assert (=> b!335291 (= e!205831 tp_is_empty!6921)))

(declare-fun b!335292 () Bool)

(declare-fun res!185100 () Bool)

(declare-fun e!205827 () Bool)

(assert (=> b!335292 (=> (not res!185100) (not e!205827))))

(declare-datatypes ((V!10205 0))(
  ( (V!10206 (val!3505 Int)) )
))
(declare-datatypes ((ValueCell!3117 0))(
  ( (ValueCellFull!3117 (v!5663 V!10205)) (EmptyCell!3117) )
))
(declare-datatypes ((array!17425 0))(
  ( (array!17426 (arr!8240 (Array (_ BitVec 32) ValueCell!3117)) (size!8592 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17425)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335292 (= res!185100 (and (= (size!8592 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8591 _keys!1895) (size!8592 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335293 () Bool)

(assert (=> b!335293 (= e!205833 (not true))))

(declare-datatypes ((tuple2!5092 0))(
  ( (tuple2!5093 (_1!2556 (_ BitVec 64)) (_2!2556 V!10205)) )
))
(declare-datatypes ((List!4732 0))(
  ( (Nil!4729) (Cons!4728 (h!5584 tuple2!5092) (t!9828 List!4732)) )
))
(declare-datatypes ((ListLongMap!4019 0))(
  ( (ListLongMap!4020 (toList!2025 List!4732)) )
))
(declare-fun lt!159812 () ListLongMap!4019)

(declare-fun contains!2065 (ListLongMap!4019 (_ BitVec 64)) Bool)

(assert (=> b!335293 (contains!2065 lt!159812 (select (arr!8239 _keys!1895) (index!14960 lt!159810)))))

(declare-datatypes ((Unit!10430 0))(
  ( (Unit!10431) )
))
(declare-fun lt!159811 () Unit!10430)

(declare-fun zeroValue!1467 () V!10205)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10205)

(declare-fun lemmaValidKeyInArrayIsInListMap!161 (array!17423 array!17425 (_ BitVec 32) (_ BitVec 32) V!10205 V!10205 (_ BitVec 32) Int) Unit!10430)

(assert (=> b!335293 (= lt!159811 (lemmaValidKeyInArrayIsInListMap!161 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14960 lt!159810) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!17423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335293 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159813 () Unit!10430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17423 (_ BitVec 64) (_ BitVec 32)) Unit!10430)

(assert (=> b!335293 (= lt!159813 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14960 lt!159810)))))

(declare-fun mapIsEmpty!11778 () Bool)

(declare-fun mapRes!11778 () Bool)

(assert (=> mapIsEmpty!11778 mapRes!11778))

(declare-fun b!335294 () Bool)

(declare-fun e!205829 () Bool)

(assert (=> b!335294 (= e!205829 (and e!205831 mapRes!11778))))

(declare-fun condMapEmpty!11778 () Bool)

(declare-fun mapDefault!11778 () ValueCell!3117)

(assert (=> b!335294 (= condMapEmpty!11778 (= (arr!8240 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3117)) mapDefault!11778)))))

(declare-fun mapNonEmpty!11778 () Bool)

(declare-fun tp!24410 () Bool)

(declare-fun e!205828 () Bool)

(assert (=> mapNonEmpty!11778 (= mapRes!11778 (and tp!24410 e!205828))))

(declare-fun mapValue!11778 () ValueCell!3117)

(declare-fun mapRest!11778 () (Array (_ BitVec 32) ValueCell!3117))

(declare-fun mapKey!11778 () (_ BitVec 32))

(assert (=> mapNonEmpty!11778 (= (arr!8240 _values!1525) (store mapRest!11778 mapKey!11778 mapValue!11778))))

(declare-fun b!335295 () Bool)

(assert (=> b!335295 (= e!205827 e!205830)))

(declare-fun res!185098 () Bool)

(assert (=> b!335295 (=> (not res!185098) (not e!205830))))

(assert (=> b!335295 (= res!185098 (not (contains!2065 lt!159812 k0!1348)))))

(declare-fun getCurrentListMap!1546 (array!17423 array!17425 (_ BitVec 32) (_ BitVec 32) V!10205 V!10205 (_ BitVec 32) Int) ListLongMap!4019)

(assert (=> b!335295 (= lt!159812 (getCurrentListMap!1546 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335296 () Bool)

(declare-fun res!185095 () Bool)

(assert (=> b!335296 (=> (not res!185095) (not e!205827))))

(declare-datatypes ((List!4733 0))(
  ( (Nil!4730) (Cons!4729 (h!5585 (_ BitVec 64)) (t!9829 List!4733)) )
))
(declare-fun arrayNoDuplicates!0 (array!17423 (_ BitVec 32) List!4733) Bool)

(assert (=> b!335296 (= res!185095 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4730))))

(declare-fun res!185101 () Bool)

(assert (=> start!33742 (=> (not res!185101) (not e!205827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33742 (= res!185101 (validMask!0 mask!2385))))

(assert (=> start!33742 e!205827))

(assert (=> start!33742 true))

(assert (=> start!33742 tp_is_empty!6921))

(assert (=> start!33742 tp!24411))

(declare-fun array_inv!6110 (array!17425) Bool)

(assert (=> start!33742 (and (array_inv!6110 _values!1525) e!205829)))

(declare-fun array_inv!6111 (array!17423) Bool)

(assert (=> start!33742 (array_inv!6111 _keys!1895)))

(declare-fun b!335297 () Bool)

(assert (=> b!335297 (= e!205828 tp_is_empty!6921)))

(declare-fun b!335298 () Bool)

(declare-fun res!185097 () Bool)

(assert (=> b!335298 (=> (not res!185097) (not e!205833))))

(assert (=> b!335298 (= res!185097 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14960 lt!159810)))))

(declare-fun b!335299 () Bool)

(declare-fun res!185096 () Bool)

(assert (=> b!335299 (=> (not res!185096) (not e!205827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335299 (= res!185096 (validKeyInArray!0 k0!1348))))

(declare-fun b!335300 () Bool)

(declare-fun res!185099 () Bool)

(assert (=> b!335300 (=> (not res!185099) (not e!205827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17423 (_ BitVec 32)) Bool)

(assert (=> b!335300 (= res!185099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!33742 res!185101) b!335292))

(assert (= (and b!335292 res!185100) b!335300))

(assert (= (and b!335300 res!185099) b!335296))

(assert (= (and b!335296 res!185095) b!335299))

(assert (= (and b!335299 res!185096) b!335295))

(assert (= (and b!335295 res!185098) b!335290))

(assert (= (and b!335290 res!185102) b!335298))

(assert (= (and b!335298 res!185097) b!335293))

(assert (= (and b!335294 condMapEmpty!11778) mapIsEmpty!11778))

(assert (= (and b!335294 (not condMapEmpty!11778)) mapNonEmpty!11778))

(assert (= (and mapNonEmpty!11778 ((_ is ValueCellFull!3117) mapValue!11778)) b!335297))

(assert (= (and b!335294 ((_ is ValueCellFull!3117) mapDefault!11778)) b!335291))

(assert (= start!33742 b!335294))

(declare-fun m!339325 () Bool)

(assert (=> b!335290 m!339325))

(declare-fun m!339327 () Bool)

(assert (=> b!335290 m!339327))

(declare-fun m!339329 () Bool)

(assert (=> b!335298 m!339329))

(declare-fun m!339331 () Bool)

(assert (=> start!33742 m!339331))

(declare-fun m!339333 () Bool)

(assert (=> start!33742 m!339333))

(declare-fun m!339335 () Bool)

(assert (=> start!33742 m!339335))

(declare-fun m!339337 () Bool)

(assert (=> b!335293 m!339337))

(assert (=> b!335293 m!339325))

(assert (=> b!335293 m!339325))

(declare-fun m!339339 () Bool)

(assert (=> b!335293 m!339339))

(declare-fun m!339341 () Bool)

(assert (=> b!335293 m!339341))

(declare-fun m!339343 () Bool)

(assert (=> b!335293 m!339343))

(declare-fun m!339345 () Bool)

(assert (=> mapNonEmpty!11778 m!339345))

(declare-fun m!339347 () Bool)

(assert (=> b!335299 m!339347))

(declare-fun m!339349 () Bool)

(assert (=> b!335296 m!339349))

(declare-fun m!339351 () Bool)

(assert (=> b!335295 m!339351))

(declare-fun m!339353 () Bool)

(assert (=> b!335295 m!339353))

(declare-fun m!339355 () Bool)

(assert (=> b!335300 m!339355))

(check-sat (not b!335295) (not b!335296) (not b!335290) (not b_next!6969) (not mapNonEmpty!11778) (not b!335298) tp_is_empty!6921 (not b!335293) b_and!14167 (not start!33742) (not b!335300) (not b!335299))
(check-sat b_and!14167 (not b_next!6969))
