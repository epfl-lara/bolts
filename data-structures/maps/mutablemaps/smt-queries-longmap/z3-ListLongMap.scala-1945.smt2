; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34426 () Bool)

(assert start!34426)

(declare-fun b_free!7341 () Bool)

(declare-fun b_next!7341 () Bool)

(assert (=> start!34426 (= b_free!7341 (not b_next!7341))))

(declare-fun tp!25568 () Bool)

(declare-fun b_and!14567 () Bool)

(assert (=> start!34426 (= tp!25568 b_and!14567)))

(declare-fun b!343448 () Bool)

(declare-fun e!210600 () Bool)

(declare-fun tp_is_empty!7293 () Bool)

(assert (=> b!343448 (= e!210600 tp_is_empty!7293)))

(declare-fun mapIsEmpty!12378 () Bool)

(declare-fun mapRes!12378 () Bool)

(assert (=> mapIsEmpty!12378 mapRes!12378))

(declare-fun b!343449 () Bool)

(declare-fun res!189919 () Bool)

(declare-fun e!210601 () Bool)

(assert (=> b!343449 (=> (not res!189919) (not e!210601))))

(declare-datatypes ((array!18149 0))(
  ( (array!18150 (arr!8588 (Array (_ BitVec 32) (_ BitVec 64))) (size!8940 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18149)

(declare-datatypes ((List!4977 0))(
  ( (Nil!4974) (Cons!4973 (h!5829 (_ BitVec 64)) (t!10101 List!4977)) )
))
(declare-fun arrayNoDuplicates!0 (array!18149 (_ BitVec 32) List!4977) Bool)

(assert (=> b!343449 (= res!189919 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4974))))

(declare-fun b!343450 () Bool)

(declare-fun res!189917 () Bool)

(assert (=> b!343450 (=> (not res!189917) (not e!210601))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10701 0))(
  ( (V!10702 (val!3691 Int)) )
))
(declare-datatypes ((ValueCell!3303 0))(
  ( (ValueCellFull!3303 (v!5863 V!10701)) (EmptyCell!3303) )
))
(declare-datatypes ((array!18151 0))(
  ( (array!18152 (arr!8589 (Array (_ BitVec 32) ValueCell!3303)) (size!8941 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18151)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343450 (= res!189917 (and (= (size!8941 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8940 _keys!1895) (size!8941 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343451 () Bool)

(declare-fun res!189916 () Bool)

(assert (=> b!343451 (=> (not res!189916) (not e!210601))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343451 (= res!189916 (validKeyInArray!0 k0!1348))))

(declare-fun b!343452 () Bool)

(declare-fun res!189915 () Bool)

(assert (=> b!343452 (=> (not res!189915) (not e!210601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18149 (_ BitVec 32)) Bool)

(assert (=> b!343452 (= res!189915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343453 () Bool)

(declare-fun res!189920 () Bool)

(assert (=> b!343453 (=> (not res!189920) (not e!210601))))

(declare-fun zeroValue!1467 () V!10701)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10701)

(declare-datatypes ((tuple2!5332 0))(
  ( (tuple2!5333 (_1!2676 (_ BitVec 64)) (_2!2676 V!10701)) )
))
(declare-datatypes ((List!4978 0))(
  ( (Nil!4975) (Cons!4974 (h!5830 tuple2!5332) (t!10102 List!4978)) )
))
(declare-datatypes ((ListLongMap!4259 0))(
  ( (ListLongMap!4260 (toList!2145 List!4978)) )
))
(declare-fun contains!2199 (ListLongMap!4259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1665 (array!18149 array!18151 (_ BitVec 32) (_ BitVec 32) V!10701 V!10701 (_ BitVec 32) Int) ListLongMap!4259)

(assert (=> b!343453 (= res!189920 (not (contains!2199 (getCurrentListMap!1665 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!12378 () Bool)

(declare-fun tp!25569 () Bool)

(declare-fun e!210599 () Bool)

(assert (=> mapNonEmpty!12378 (= mapRes!12378 (and tp!25569 e!210599))))

(declare-fun mapValue!12378 () ValueCell!3303)

(declare-fun mapKey!12378 () (_ BitVec 32))

(declare-fun mapRest!12378 () (Array (_ BitVec 32) ValueCell!3303))

(assert (=> mapNonEmpty!12378 (= (arr!8589 _values!1525) (store mapRest!12378 mapKey!12378 mapValue!12378))))

(declare-fun b!343454 () Bool)

(assert (=> b!343454 (= e!210601 false)))

(declare-datatypes ((SeekEntryResult!3312 0))(
  ( (MissingZero!3312 (index!15427 (_ BitVec 32))) (Found!3312 (index!15428 (_ BitVec 32))) (Intermediate!3312 (undefined!4124 Bool) (index!15429 (_ BitVec 32)) (x!34189 (_ BitVec 32))) (Undefined!3312) (MissingVacant!3312 (index!15430 (_ BitVec 32))) )
))
(declare-fun lt!162546 () SeekEntryResult!3312)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18149 (_ BitVec 32)) SeekEntryResult!3312)

(assert (=> b!343454 (= lt!162546 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!189918 () Bool)

(assert (=> start!34426 (=> (not res!189918) (not e!210601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34426 (= res!189918 (validMask!0 mask!2385))))

(assert (=> start!34426 e!210601))

(assert (=> start!34426 true))

(assert (=> start!34426 tp_is_empty!7293))

(assert (=> start!34426 tp!25568))

(declare-fun e!210602 () Bool)

(declare-fun array_inv!6348 (array!18151) Bool)

(assert (=> start!34426 (and (array_inv!6348 _values!1525) e!210602)))

(declare-fun array_inv!6349 (array!18149) Bool)

(assert (=> start!34426 (array_inv!6349 _keys!1895)))

(declare-fun b!343455 () Bool)

(assert (=> b!343455 (= e!210602 (and e!210600 mapRes!12378))))

(declare-fun condMapEmpty!12378 () Bool)

(declare-fun mapDefault!12378 () ValueCell!3303)

(assert (=> b!343455 (= condMapEmpty!12378 (= (arr!8589 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3303)) mapDefault!12378)))))

(declare-fun b!343456 () Bool)

(assert (=> b!343456 (= e!210599 tp_is_empty!7293)))

(assert (= (and start!34426 res!189918) b!343450))

(assert (= (and b!343450 res!189917) b!343452))

(assert (= (and b!343452 res!189915) b!343449))

(assert (= (and b!343449 res!189919) b!343451))

(assert (= (and b!343451 res!189916) b!343453))

(assert (= (and b!343453 res!189920) b!343454))

(assert (= (and b!343455 condMapEmpty!12378) mapIsEmpty!12378))

(assert (= (and b!343455 (not condMapEmpty!12378)) mapNonEmpty!12378))

(get-info :version)

(assert (= (and mapNonEmpty!12378 ((_ is ValueCellFull!3303) mapValue!12378)) b!343456))

(assert (= (and b!343455 ((_ is ValueCellFull!3303) mapDefault!12378)) b!343448))

(assert (= start!34426 b!343455))

(declare-fun m!345317 () Bool)

(assert (=> start!34426 m!345317))

(declare-fun m!345319 () Bool)

(assert (=> start!34426 m!345319))

(declare-fun m!345321 () Bool)

(assert (=> start!34426 m!345321))

(declare-fun m!345323 () Bool)

(assert (=> b!343451 m!345323))

(declare-fun m!345325 () Bool)

(assert (=> b!343449 m!345325))

(declare-fun m!345327 () Bool)

(assert (=> b!343452 m!345327))

(declare-fun m!345329 () Bool)

(assert (=> b!343453 m!345329))

(assert (=> b!343453 m!345329))

(declare-fun m!345331 () Bool)

(assert (=> b!343453 m!345331))

(declare-fun m!345333 () Bool)

(assert (=> mapNonEmpty!12378 m!345333))

(declare-fun m!345335 () Bool)

(assert (=> b!343454 m!345335))

(check-sat (not b!343454) (not mapNonEmpty!12378) (not b!343453) (not b_next!7341) (not start!34426) (not b!343451) (not b!343452) tp_is_empty!7293 (not b!343449) b_and!14567)
(check-sat b_and!14567 (not b_next!7341))
