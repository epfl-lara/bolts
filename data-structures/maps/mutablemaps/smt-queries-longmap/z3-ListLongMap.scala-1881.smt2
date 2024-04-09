; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33730 () Bool)

(assert start!33730)

(declare-fun b_free!6957 () Bool)

(declare-fun b_next!6957 () Bool)

(assert (=> start!33730 (= b_free!6957 (not b_next!6957))))

(declare-fun tp!24374 () Bool)

(declare-fun b_and!14155 () Bool)

(assert (=> start!33730 (= tp!24374 b_and!14155)))

(declare-fun b!335092 () Bool)

(declare-fun e!205706 () Bool)

(declare-fun e!205702 () Bool)

(assert (=> b!335092 (= e!205706 e!205702)))

(declare-fun res!184951 () Bool)

(assert (=> b!335092 (=> (not res!184951) (not e!205702))))

(declare-datatypes ((V!10189 0))(
  ( (V!10190 (val!3499 Int)) )
))
(declare-datatypes ((tuple2!5080 0))(
  ( (tuple2!5081 (_1!2550 (_ BitVec 64)) (_2!2550 V!10189)) )
))
(declare-datatypes ((List!4721 0))(
  ( (Nil!4718) (Cons!4717 (h!5573 tuple2!5080) (t!9817 List!4721)) )
))
(declare-datatypes ((ListLongMap!4007 0))(
  ( (ListLongMap!4008 (toList!2019 List!4721)) )
))
(declare-fun lt!159738 () ListLongMap!4007)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun contains!2059 (ListLongMap!4007 (_ BitVec 64)) Bool)

(assert (=> b!335092 (= res!184951 (not (contains!2059 lt!159738 k0!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10189)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3111 0))(
  ( (ValueCellFull!3111 (v!5657 V!10189)) (EmptyCell!3111) )
))
(declare-datatypes ((array!17399 0))(
  ( (array!17400 (arr!8227 (Array (_ BitVec 32) ValueCell!3111)) (size!8579 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17399)

(declare-datatypes ((array!17401 0))(
  ( (array!17402 (arr!8228 (Array (_ BitVec 32) (_ BitVec 64))) (size!8580 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17401)

(declare-fun minValue!1467 () V!10189)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun getCurrentListMap!1541 (array!17401 array!17399 (_ BitVec 32) (_ BitVec 32) V!10189 V!10189 (_ BitVec 32) Int) ListLongMap!4007)

(assert (=> b!335092 (= lt!159738 (getCurrentListMap!1541 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335093 () Bool)

(declare-fun e!205707 () Bool)

(declare-fun e!205703 () Bool)

(declare-fun mapRes!11760 () Bool)

(assert (=> b!335093 (= e!205707 (and e!205703 mapRes!11760))))

(declare-fun condMapEmpty!11760 () Bool)

(declare-fun mapDefault!11760 () ValueCell!3111)

(assert (=> b!335093 (= condMapEmpty!11760 (= (arr!8227 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3111)) mapDefault!11760)))))

(declare-fun mapNonEmpty!11760 () Bool)

(declare-fun tp!24375 () Bool)

(declare-fun e!205705 () Bool)

(assert (=> mapNonEmpty!11760 (= mapRes!11760 (and tp!24375 e!205705))))

(declare-fun mapValue!11760 () ValueCell!3111)

(declare-fun mapRest!11760 () (Array (_ BitVec 32) ValueCell!3111))

(declare-fun mapKey!11760 () (_ BitVec 32))

(assert (=> mapNonEmpty!11760 (= (arr!8227 _values!1525) (store mapRest!11760 mapKey!11760 mapValue!11760))))

(declare-fun b!335094 () Bool)

(declare-fun res!184958 () Bool)

(assert (=> b!335094 (=> (not res!184958) (not e!205706))))

(declare-datatypes ((List!4722 0))(
  ( (Nil!4719) (Cons!4718 (h!5574 (_ BitVec 64)) (t!9818 List!4722)) )
))
(declare-fun arrayNoDuplicates!0 (array!17401 (_ BitVec 32) List!4722) Bool)

(assert (=> b!335094 (= res!184958 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4719))))

(declare-fun b!335095 () Bool)

(declare-fun res!184956 () Bool)

(assert (=> b!335095 (=> (not res!184956) (not e!205706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17401 (_ BitVec 32)) Bool)

(assert (=> b!335095 (= res!184956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335096 () Bool)

(declare-fun res!184952 () Bool)

(assert (=> b!335096 (=> (not res!184952) (not e!205706))))

(assert (=> b!335096 (= res!184952 (and (= (size!8579 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8580 _keys!1895) (size!8579 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11760 () Bool)

(assert (=> mapIsEmpty!11760 mapRes!11760))

(declare-fun b!335097 () Bool)

(declare-fun e!205701 () Bool)

(assert (=> b!335097 (= e!205702 e!205701)))

(declare-fun res!184957 () Bool)

(assert (=> b!335097 (=> (not res!184957) (not e!205701))))

(declare-datatypes ((SeekEntryResult!3189 0))(
  ( (MissingZero!3189 (index!14935 (_ BitVec 32))) (Found!3189 (index!14936 (_ BitVec 32))) (Intermediate!3189 (undefined!4001 Bool) (index!14937 (_ BitVec 32)) (x!33414 (_ BitVec 32))) (Undefined!3189) (MissingVacant!3189 (index!14938 (_ BitVec 32))) )
))
(declare-fun lt!159741 () SeekEntryResult!3189)

(get-info :version)

(assert (=> b!335097 (= res!184957 (and ((_ is Found!3189) lt!159741) (= (select (arr!8228 _keys!1895) (index!14936 lt!159741)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17401 (_ BitVec 32)) SeekEntryResult!3189)

(assert (=> b!335097 (= lt!159741 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335098 () Bool)

(declare-fun res!184953 () Bool)

(assert (=> b!335098 (=> (not res!184953) (not e!205701))))

(declare-fun arrayContainsKey!0 (array!17401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335098 (= res!184953 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14936 lt!159741)))))

(declare-fun b!335099 () Bool)

(declare-fun tp_is_empty!6909 () Bool)

(assert (=> b!335099 (= e!205705 tp_is_empty!6909)))

(declare-fun b!335100 () Bool)

(assert (=> b!335100 (= e!205701 (not true))))

(assert (=> b!335100 (contains!2059 lt!159738 (select (arr!8228 _keys!1895) (index!14936 lt!159741)))))

(declare-datatypes ((Unit!10422 0))(
  ( (Unit!10423) )
))
(declare-fun lt!159739 () Unit!10422)

(declare-fun lemmaValidKeyInArrayIsInListMap!157 (array!17401 array!17399 (_ BitVec 32) (_ BitVec 32) V!10189 V!10189 (_ BitVec 32) Int) Unit!10422)

(assert (=> b!335100 (= lt!159739 (lemmaValidKeyInArrayIsInListMap!157 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14936 lt!159741) defaultEntry!1528))))

(assert (=> b!335100 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159740 () Unit!10422)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17401 (_ BitVec 64) (_ BitVec 32)) Unit!10422)

(assert (=> b!335100 (= lt!159740 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14936 lt!159741)))))

(declare-fun res!184954 () Bool)

(assert (=> start!33730 (=> (not res!184954) (not e!205706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33730 (= res!184954 (validMask!0 mask!2385))))

(assert (=> start!33730 e!205706))

(assert (=> start!33730 true))

(assert (=> start!33730 tp_is_empty!6909))

(assert (=> start!33730 tp!24374))

(declare-fun array_inv!6100 (array!17399) Bool)

(assert (=> start!33730 (and (array_inv!6100 _values!1525) e!205707)))

(declare-fun array_inv!6101 (array!17401) Bool)

(assert (=> start!33730 (array_inv!6101 _keys!1895)))

(declare-fun b!335101 () Bool)

(declare-fun res!184955 () Bool)

(assert (=> b!335101 (=> (not res!184955) (not e!205706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335101 (= res!184955 (validKeyInArray!0 k0!1348))))

(declare-fun b!335102 () Bool)

(assert (=> b!335102 (= e!205703 tp_is_empty!6909)))

(assert (= (and start!33730 res!184954) b!335096))

(assert (= (and b!335096 res!184952) b!335095))

(assert (= (and b!335095 res!184956) b!335094))

(assert (= (and b!335094 res!184958) b!335101))

(assert (= (and b!335101 res!184955) b!335092))

(assert (= (and b!335092 res!184951) b!335097))

(assert (= (and b!335097 res!184957) b!335098))

(assert (= (and b!335098 res!184953) b!335100))

(assert (= (and b!335093 condMapEmpty!11760) mapIsEmpty!11760))

(assert (= (and b!335093 (not condMapEmpty!11760)) mapNonEmpty!11760))

(assert (= (and mapNonEmpty!11760 ((_ is ValueCellFull!3111) mapValue!11760)) b!335099))

(assert (= (and b!335093 ((_ is ValueCellFull!3111) mapDefault!11760)) b!335102))

(assert (= start!33730 b!335093))

(declare-fun m!339133 () Bool)

(assert (=> b!335095 m!339133))

(declare-fun m!339135 () Bool)

(assert (=> b!335094 m!339135))

(declare-fun m!339137 () Bool)

(assert (=> b!335092 m!339137))

(declare-fun m!339139 () Bool)

(assert (=> b!335092 m!339139))

(declare-fun m!339141 () Bool)

(assert (=> b!335097 m!339141))

(declare-fun m!339143 () Bool)

(assert (=> b!335097 m!339143))

(declare-fun m!339145 () Bool)

(assert (=> b!335098 m!339145))

(declare-fun m!339147 () Bool)

(assert (=> b!335101 m!339147))

(declare-fun m!339149 () Bool)

(assert (=> mapNonEmpty!11760 m!339149))

(declare-fun m!339151 () Bool)

(assert (=> b!335100 m!339151))

(declare-fun m!339153 () Bool)

(assert (=> b!335100 m!339153))

(assert (=> b!335100 m!339141))

(declare-fun m!339155 () Bool)

(assert (=> b!335100 m!339155))

(declare-fun m!339157 () Bool)

(assert (=> b!335100 m!339157))

(assert (=> b!335100 m!339141))

(declare-fun m!339159 () Bool)

(assert (=> start!33730 m!339159))

(declare-fun m!339161 () Bool)

(assert (=> start!33730 m!339161))

(declare-fun m!339163 () Bool)

(assert (=> start!33730 m!339163))

(check-sat (not b!335094) (not b!335100) (not b!335098) (not b!335097) (not b_next!6957) (not mapNonEmpty!11760) (not b!335101) (not start!33730) tp_is_empty!6909 (not b!335092) b_and!14155 (not b!335095))
(check-sat b_and!14155 (not b_next!6957))
