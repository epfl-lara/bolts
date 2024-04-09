; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34314 () Bool)

(assert start!34314)

(declare-fun b_free!7281 () Bool)

(declare-fun b_next!7281 () Bool)

(assert (=> start!34314 (= b_free!7281 (not b_next!7281))))

(declare-fun tp!25383 () Bool)

(declare-fun b_and!14503 () Bool)

(assert (=> start!34314 (= tp!25383 b_and!14503)))

(declare-fun b!342096 () Bool)

(declare-fun res!189161 () Bool)

(declare-fun e!209804 () Bool)

(assert (=> b!342096 (=> (not res!189161) (not e!209804))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((V!10621 0))(
  ( (V!10622 (val!3661 Int)) )
))
(declare-datatypes ((ValueCell!3273 0))(
  ( (ValueCellFull!3273 (v!5831 V!10621)) (EmptyCell!3273) )
))
(declare-datatypes ((array!18033 0))(
  ( (array!18034 (arr!8532 (Array (_ BitVec 32) ValueCell!3273)) (size!8884 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18033)

(declare-datatypes ((array!18035 0))(
  ( (array!18036 (arr!8533 (Array (_ BitVec 32) (_ BitVec 64))) (size!8885 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18035)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10621)

(declare-fun zeroValue!1467 () V!10621)

(declare-datatypes ((tuple2!5294 0))(
  ( (tuple2!5295 (_1!2657 (_ BitVec 64)) (_2!2657 V!10621)) )
))
(declare-datatypes ((List!4935 0))(
  ( (Nil!4932) (Cons!4931 (h!5787 tuple2!5294) (t!10055 List!4935)) )
))
(declare-datatypes ((ListLongMap!4221 0))(
  ( (ListLongMap!4222 (toList!2126 List!4935)) )
))
(declare-fun contains!2178 (ListLongMap!4221 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1646 (array!18035 array!18033 (_ BitVec 32) (_ BitVec 32) V!10621 V!10621 (_ BitVec 32) Int) ListLongMap!4221)

(assert (=> b!342096 (= res!189161 (not (contains!2178 (getCurrentListMap!1646 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!189162 () Bool)

(assert (=> start!34314 (=> (not res!189162) (not e!209804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34314 (= res!189162 (validMask!0 mask!2385))))

(assert (=> start!34314 e!209804))

(assert (=> start!34314 true))

(declare-fun tp_is_empty!7233 () Bool)

(assert (=> start!34314 tp_is_empty!7233))

(assert (=> start!34314 tp!25383))

(declare-fun e!209801 () Bool)

(declare-fun array_inv!6310 (array!18033) Bool)

(assert (=> start!34314 (and (array_inv!6310 _values!1525) e!209801)))

(declare-fun array_inv!6311 (array!18035) Bool)

(assert (=> start!34314 (array_inv!6311 _keys!1895)))

(declare-fun b!342097 () Bool)

(declare-fun res!189164 () Bool)

(assert (=> b!342097 (=> (not res!189164) (not e!209804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342097 (= res!189164 (validKeyInArray!0 k0!1348))))

(declare-fun b!342098 () Bool)

(declare-datatypes ((Unit!10643 0))(
  ( (Unit!10644) )
))
(declare-fun e!209802 () Unit!10643)

(declare-fun Unit!10645 () Unit!10643)

(assert (=> b!342098 (= e!209802 Unit!10645)))

(declare-fun lt!162073 () Unit!10643)

(declare-fun lemmaArrayContainsKeyThenInListMap!298 (array!18035 array!18033 (_ BitVec 32) (_ BitVec 32) V!10621 V!10621 (_ BitVec 64) (_ BitVec 32) Int) Unit!10643)

(declare-fun arrayScanForKey!0 (array!18035 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342098 (= lt!162073 (lemmaArrayContainsKeyThenInListMap!298 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342098 false))

(declare-fun mapNonEmpty!12282 () Bool)

(declare-fun mapRes!12282 () Bool)

(declare-fun tp!25382 () Bool)

(declare-fun e!209805 () Bool)

(assert (=> mapNonEmpty!12282 (= mapRes!12282 (and tp!25382 e!209805))))

(declare-fun mapRest!12282 () (Array (_ BitVec 32) ValueCell!3273))

(declare-fun mapKey!12282 () (_ BitVec 32))

(declare-fun mapValue!12282 () ValueCell!3273)

(assert (=> mapNonEmpty!12282 (= (arr!8532 _values!1525) (store mapRest!12282 mapKey!12282 mapValue!12282))))

(declare-fun b!342099 () Bool)

(declare-fun e!209800 () Bool)

(assert (=> b!342099 (= e!209804 e!209800)))

(declare-fun res!189166 () Bool)

(assert (=> b!342099 (=> (not res!189166) (not e!209800))))

(declare-datatypes ((SeekEntryResult!3293 0))(
  ( (MissingZero!3293 (index!15351 (_ BitVec 32))) (Found!3293 (index!15352 (_ BitVec 32))) (Intermediate!3293 (undefined!4105 Bool) (index!15353 (_ BitVec 32)) (x!34070 (_ BitVec 32))) (Undefined!3293) (MissingVacant!3293 (index!15354 (_ BitVec 32))) )
))
(declare-fun lt!162075 () SeekEntryResult!3293)

(get-info :version)

(assert (=> b!342099 (= res!189166 (and (not ((_ is Found!3293) lt!162075)) (not ((_ is MissingZero!3293) lt!162075)) ((_ is MissingVacant!3293) lt!162075)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18035 (_ BitVec 32)) SeekEntryResult!3293)

(assert (=> b!342099 (= lt!162075 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!342100 () Bool)

(declare-fun res!189167 () Bool)

(assert (=> b!342100 (=> (not res!189167) (not e!209804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18035 (_ BitVec 32)) Bool)

(assert (=> b!342100 (= res!189167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342101 () Bool)

(declare-fun Unit!10646 () Unit!10643)

(assert (=> b!342101 (= e!209802 Unit!10646)))

(declare-fun b!342102 () Bool)

(declare-fun e!209799 () Bool)

(assert (=> b!342102 (= e!209799 tp_is_empty!7233)))

(declare-fun b!342103 () Bool)

(assert (=> b!342103 (= e!209805 tp_is_empty!7233)))

(declare-fun b!342104 () Bool)

(declare-fun res!189165 () Bool)

(assert (=> b!342104 (=> (not res!189165) (not e!209804))))

(assert (=> b!342104 (= res!189165 (and (= (size!8884 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8885 _keys!1895) (size!8884 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12282 () Bool)

(assert (=> mapIsEmpty!12282 mapRes!12282))

(declare-fun b!342105 () Bool)

(assert (=> b!342105 (= e!209801 (and e!209799 mapRes!12282))))

(declare-fun condMapEmpty!12282 () Bool)

(declare-fun mapDefault!12282 () ValueCell!3273)

(assert (=> b!342105 (= condMapEmpty!12282 (= (arr!8532 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3273)) mapDefault!12282)))))

(declare-fun b!342106 () Bool)

(assert (=> b!342106 (= e!209800 false)))

(declare-fun lt!162074 () Unit!10643)

(assert (=> b!342106 (= lt!162074 e!209802)))

(declare-fun c!52724 () Bool)

(declare-fun arrayContainsKey!0 (array!18035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342106 (= c!52724 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!342107 () Bool)

(declare-fun res!189163 () Bool)

(assert (=> b!342107 (=> (not res!189163) (not e!209804))))

(declare-datatypes ((List!4936 0))(
  ( (Nil!4933) (Cons!4932 (h!5788 (_ BitVec 64)) (t!10056 List!4936)) )
))
(declare-fun arrayNoDuplicates!0 (array!18035 (_ BitVec 32) List!4936) Bool)

(assert (=> b!342107 (= res!189163 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4933))))

(assert (= (and start!34314 res!189162) b!342104))

(assert (= (and b!342104 res!189165) b!342100))

(assert (= (and b!342100 res!189167) b!342107))

(assert (= (and b!342107 res!189163) b!342097))

(assert (= (and b!342097 res!189164) b!342096))

(assert (= (and b!342096 res!189161) b!342099))

(assert (= (and b!342099 res!189166) b!342106))

(assert (= (and b!342106 c!52724) b!342098))

(assert (= (and b!342106 (not c!52724)) b!342101))

(assert (= (and b!342105 condMapEmpty!12282) mapIsEmpty!12282))

(assert (= (and b!342105 (not condMapEmpty!12282)) mapNonEmpty!12282))

(assert (= (and mapNonEmpty!12282 ((_ is ValueCellFull!3273) mapValue!12282)) b!342103))

(assert (= (and b!342105 ((_ is ValueCellFull!3273) mapDefault!12282)) b!342102))

(assert (= start!34314 b!342105))

(declare-fun m!344333 () Bool)

(assert (=> b!342097 m!344333))

(declare-fun m!344335 () Bool)

(assert (=> b!342106 m!344335))

(declare-fun m!344337 () Bool)

(assert (=> mapNonEmpty!12282 m!344337))

(declare-fun m!344339 () Bool)

(assert (=> b!342100 m!344339))

(declare-fun m!344341 () Bool)

(assert (=> start!34314 m!344341))

(declare-fun m!344343 () Bool)

(assert (=> start!34314 m!344343))

(declare-fun m!344345 () Bool)

(assert (=> start!34314 m!344345))

(declare-fun m!344347 () Bool)

(assert (=> b!342096 m!344347))

(assert (=> b!342096 m!344347))

(declare-fun m!344349 () Bool)

(assert (=> b!342096 m!344349))

(declare-fun m!344351 () Bool)

(assert (=> b!342099 m!344351))

(declare-fun m!344353 () Bool)

(assert (=> b!342098 m!344353))

(assert (=> b!342098 m!344353))

(declare-fun m!344355 () Bool)

(assert (=> b!342098 m!344355))

(declare-fun m!344357 () Bool)

(assert (=> b!342107 m!344357))

(check-sat (not b!342106) (not mapNonEmpty!12282) (not b!342100) (not b_next!7281) (not start!34314) b_and!14503 tp_is_empty!7233 (not b!342098) (not b!342097) (not b!342096) (not b!342099) (not b!342107))
(check-sat b_and!14503 (not b_next!7281))
