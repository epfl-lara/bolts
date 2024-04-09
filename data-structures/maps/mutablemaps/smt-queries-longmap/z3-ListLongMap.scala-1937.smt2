; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34326 () Bool)

(assert start!34326)

(declare-fun b_free!7293 () Bool)

(declare-fun b_next!7293 () Bool)

(assert (=> start!34326 (= b_free!7293 (not b_next!7293))))

(declare-fun tp!25418 () Bool)

(declare-fun b_and!14515 () Bool)

(assert (=> start!34326 (= tp!25418 b_and!14515)))

(declare-fun b!342312 () Bool)

(declare-fun res!189292 () Bool)

(declare-fun e!209925 () Bool)

(assert (=> b!342312 (=> (not res!189292) (not e!209925))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10637 0))(
  ( (V!10638 (val!3667 Int)) )
))
(declare-fun zeroValue!1467 () V!10637)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3279 0))(
  ( (ValueCellFull!3279 (v!5837 V!10637)) (EmptyCell!3279) )
))
(declare-datatypes ((array!18057 0))(
  ( (array!18058 (arr!8544 (Array (_ BitVec 32) ValueCell!3279)) (size!8896 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18057)

(declare-datatypes ((array!18059 0))(
  ( (array!18060 (arr!8545 (Array (_ BitVec 32) (_ BitVec 64))) (size!8897 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18059)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10637)

(declare-datatypes ((tuple2!5302 0))(
  ( (tuple2!5303 (_1!2661 (_ BitVec 64)) (_2!2661 V!10637)) )
))
(declare-datatypes ((List!4944 0))(
  ( (Nil!4941) (Cons!4940 (h!5796 tuple2!5302) (t!10064 List!4944)) )
))
(declare-datatypes ((ListLongMap!4229 0))(
  ( (ListLongMap!4230 (toList!2130 List!4944)) )
))
(declare-fun contains!2182 (ListLongMap!4229 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1650 (array!18059 array!18057 (_ BitVec 32) (_ BitVec 32) V!10637 V!10637 (_ BitVec 32) Int) ListLongMap!4229)

(assert (=> b!342312 (= res!189292 (not (contains!2182 (getCurrentListMap!1650 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!342313 () Bool)

(declare-fun e!209926 () Bool)

(assert (=> b!342313 (= e!209925 e!209926)))

(declare-fun res!189287 () Bool)

(assert (=> b!342313 (=> (not res!189287) (not e!209926))))

(declare-datatypes ((SeekEntryResult!3296 0))(
  ( (MissingZero!3296 (index!15363 (_ BitVec 32))) (Found!3296 (index!15364 (_ BitVec 32))) (Intermediate!3296 (undefined!4108 Bool) (index!15365 (_ BitVec 32)) (x!34089 (_ BitVec 32))) (Undefined!3296) (MissingVacant!3296 (index!15366 (_ BitVec 32))) )
))
(declare-fun lt!162137 () SeekEntryResult!3296)

(get-info :version)

(assert (=> b!342313 (= res!189287 (and (not ((_ is Found!3296) lt!162137)) (not ((_ is MissingZero!3296) lt!162137)) ((_ is MissingVacant!3296) lt!162137)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18059 (_ BitVec 32)) SeekEntryResult!3296)

(assert (=> b!342313 (= lt!162137 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!342314 () Bool)

(declare-fun res!189290 () Bool)

(assert (=> b!342314 (=> (not res!189290) (not e!209925))))

(assert (=> b!342314 (= res!189290 (and (= (size!8896 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8897 _keys!1895) (size!8896 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342315 () Bool)

(assert (=> b!342315 (= e!209926 false)))

(declare-datatypes ((Unit!10659 0))(
  ( (Unit!10660) )
))
(declare-fun lt!162136 () Unit!10659)

(declare-fun e!209927 () Unit!10659)

(assert (=> b!342315 (= lt!162136 e!209927)))

(declare-fun c!52742 () Bool)

(declare-fun arrayContainsKey!0 (array!18059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342315 (= c!52742 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!342316 () Bool)

(declare-fun res!189288 () Bool)

(assert (=> b!342316 (=> (not res!189288) (not e!209925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342316 (= res!189288 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!12300 () Bool)

(declare-fun mapRes!12300 () Bool)

(assert (=> mapIsEmpty!12300 mapRes!12300))

(declare-fun b!342317 () Bool)

(declare-fun e!209928 () Bool)

(declare-fun tp_is_empty!7245 () Bool)

(assert (=> b!342317 (= e!209928 tp_is_empty!7245)))

(declare-fun b!342318 () Bool)

(declare-fun Unit!10661 () Unit!10659)

(assert (=> b!342318 (= e!209927 Unit!10661)))

(declare-fun mapNonEmpty!12300 () Bool)

(declare-fun tp!25419 () Bool)

(assert (=> mapNonEmpty!12300 (= mapRes!12300 (and tp!25419 e!209928))))

(declare-fun mapKey!12300 () (_ BitVec 32))

(declare-fun mapValue!12300 () ValueCell!3279)

(declare-fun mapRest!12300 () (Array (_ BitVec 32) ValueCell!3279))

(assert (=> mapNonEmpty!12300 (= (arr!8544 _values!1525) (store mapRest!12300 mapKey!12300 mapValue!12300))))

(declare-fun b!342320 () Bool)

(declare-fun res!189291 () Bool)

(assert (=> b!342320 (=> (not res!189291) (not e!209925))))

(declare-datatypes ((List!4945 0))(
  ( (Nil!4942) (Cons!4941 (h!5797 (_ BitVec 64)) (t!10065 List!4945)) )
))
(declare-fun arrayNoDuplicates!0 (array!18059 (_ BitVec 32) List!4945) Bool)

(assert (=> b!342320 (= res!189291 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4942))))

(declare-fun b!342321 () Bool)

(declare-fun res!189293 () Bool)

(assert (=> b!342321 (=> (not res!189293) (not e!209925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18059 (_ BitVec 32)) Bool)

(assert (=> b!342321 (= res!189293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342322 () Bool)

(declare-fun e!209929 () Bool)

(declare-fun e!209931 () Bool)

(assert (=> b!342322 (= e!209929 (and e!209931 mapRes!12300))))

(declare-fun condMapEmpty!12300 () Bool)

(declare-fun mapDefault!12300 () ValueCell!3279)

(assert (=> b!342322 (= condMapEmpty!12300 (= (arr!8544 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3279)) mapDefault!12300)))))

(declare-fun b!342323 () Bool)

(assert (=> b!342323 (= e!209931 tp_is_empty!7245)))

(declare-fun b!342319 () Bool)

(declare-fun Unit!10662 () Unit!10659)

(assert (=> b!342319 (= e!209927 Unit!10662)))

(declare-fun lt!162138 () Unit!10659)

(declare-fun lemmaArrayContainsKeyThenInListMap!302 (array!18059 array!18057 (_ BitVec 32) (_ BitVec 32) V!10637 V!10637 (_ BitVec 64) (_ BitVec 32) Int) Unit!10659)

(declare-fun arrayScanForKey!0 (array!18059 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342319 (= lt!162138 (lemmaArrayContainsKeyThenInListMap!302 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342319 false))

(declare-fun res!189289 () Bool)

(assert (=> start!34326 (=> (not res!189289) (not e!209925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34326 (= res!189289 (validMask!0 mask!2385))))

(assert (=> start!34326 e!209925))

(assert (=> start!34326 true))

(assert (=> start!34326 tp_is_empty!7245))

(assert (=> start!34326 tp!25418))

(declare-fun array_inv!6316 (array!18057) Bool)

(assert (=> start!34326 (and (array_inv!6316 _values!1525) e!209929)))

(declare-fun array_inv!6317 (array!18059) Bool)

(assert (=> start!34326 (array_inv!6317 _keys!1895)))

(assert (= (and start!34326 res!189289) b!342314))

(assert (= (and b!342314 res!189290) b!342321))

(assert (= (and b!342321 res!189293) b!342320))

(assert (= (and b!342320 res!189291) b!342316))

(assert (= (and b!342316 res!189288) b!342312))

(assert (= (and b!342312 res!189292) b!342313))

(assert (= (and b!342313 res!189287) b!342315))

(assert (= (and b!342315 c!52742) b!342319))

(assert (= (and b!342315 (not c!52742)) b!342318))

(assert (= (and b!342322 condMapEmpty!12300) mapIsEmpty!12300))

(assert (= (and b!342322 (not condMapEmpty!12300)) mapNonEmpty!12300))

(assert (= (and mapNonEmpty!12300 ((_ is ValueCellFull!3279) mapValue!12300)) b!342317))

(assert (= (and b!342322 ((_ is ValueCellFull!3279) mapDefault!12300)) b!342323))

(assert (= start!34326 b!342322))

(declare-fun m!344489 () Bool)

(assert (=> b!342313 m!344489))

(declare-fun m!344491 () Bool)

(assert (=> b!342319 m!344491))

(assert (=> b!342319 m!344491))

(declare-fun m!344493 () Bool)

(assert (=> b!342319 m!344493))

(declare-fun m!344495 () Bool)

(assert (=> b!342321 m!344495))

(declare-fun m!344497 () Bool)

(assert (=> b!342316 m!344497))

(declare-fun m!344499 () Bool)

(assert (=> b!342312 m!344499))

(assert (=> b!342312 m!344499))

(declare-fun m!344501 () Bool)

(assert (=> b!342312 m!344501))

(declare-fun m!344503 () Bool)

(assert (=> b!342320 m!344503))

(declare-fun m!344505 () Bool)

(assert (=> start!34326 m!344505))

(declare-fun m!344507 () Bool)

(assert (=> start!34326 m!344507))

(declare-fun m!344509 () Bool)

(assert (=> start!34326 m!344509))

(declare-fun m!344511 () Bool)

(assert (=> mapNonEmpty!12300 m!344511))

(declare-fun m!344513 () Bool)

(assert (=> b!342315 m!344513))

(check-sat (not b!342321) (not b!342319) (not b_next!7293) tp_is_empty!7245 b_and!14515 (not start!34326) (not b!342320) (not mapNonEmpty!12300) (not b!342316) (not b!342312) (not b!342313) (not b!342315))
(check-sat b_and!14515 (not b_next!7293))
