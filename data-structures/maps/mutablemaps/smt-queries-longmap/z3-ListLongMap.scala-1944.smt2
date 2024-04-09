; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34420 () Bool)

(assert start!34420)

(declare-fun b_free!7335 () Bool)

(declare-fun b_next!7335 () Bool)

(assert (=> start!34420 (= b_free!7335 (not b_next!7335))))

(declare-fun tp!25551 () Bool)

(declare-fun b_and!14561 () Bool)

(assert (=> start!34420 (= tp!25551 b_and!14561)))

(declare-fun b!343367 () Bool)

(declare-fun e!210555 () Bool)

(declare-fun e!210558 () Bool)

(declare-fun mapRes!12369 () Bool)

(assert (=> b!343367 (= e!210555 (and e!210558 mapRes!12369))))

(declare-fun condMapEmpty!12369 () Bool)

(declare-datatypes ((V!10693 0))(
  ( (V!10694 (val!3688 Int)) )
))
(declare-datatypes ((ValueCell!3300 0))(
  ( (ValueCellFull!3300 (v!5860 V!10693)) (EmptyCell!3300) )
))
(declare-datatypes ((array!18137 0))(
  ( (array!18138 (arr!8582 (Array (_ BitVec 32) ValueCell!3300)) (size!8934 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18137)

(declare-fun mapDefault!12369 () ValueCell!3300)

(assert (=> b!343367 (= condMapEmpty!12369 (= (arr!8582 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3300)) mapDefault!12369)))))

(declare-fun res!189865 () Bool)

(declare-fun e!210554 () Bool)

(assert (=> start!34420 (=> (not res!189865) (not e!210554))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34420 (= res!189865 (validMask!0 mask!2385))))

(assert (=> start!34420 e!210554))

(assert (=> start!34420 true))

(declare-fun tp_is_empty!7287 () Bool)

(assert (=> start!34420 tp_is_empty!7287))

(assert (=> start!34420 tp!25551))

(declare-fun array_inv!6344 (array!18137) Bool)

(assert (=> start!34420 (and (array_inv!6344 _values!1525) e!210555)))

(declare-datatypes ((array!18139 0))(
  ( (array!18140 (arr!8583 (Array (_ BitVec 32) (_ BitVec 64))) (size!8935 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18139)

(declare-fun array_inv!6345 (array!18139) Bool)

(assert (=> start!34420 (array_inv!6345 _keys!1895)))

(declare-fun b!343368 () Bool)

(declare-fun res!189863 () Bool)

(assert (=> b!343368 (=> (not res!189863) (not e!210554))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343368 (= res!189863 (and (= (size!8934 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8935 _keys!1895) (size!8934 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12369 () Bool)

(assert (=> mapIsEmpty!12369 mapRes!12369))

(declare-fun b!343369 () Bool)

(declare-fun res!189862 () Bool)

(assert (=> b!343369 (=> (not res!189862) (not e!210554))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10693)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10693)

(declare-datatypes ((tuple2!5330 0))(
  ( (tuple2!5331 (_1!2675 (_ BitVec 64)) (_2!2675 V!10693)) )
))
(declare-datatypes ((List!4974 0))(
  ( (Nil!4971) (Cons!4970 (h!5826 tuple2!5330) (t!10098 List!4974)) )
))
(declare-datatypes ((ListLongMap!4257 0))(
  ( (ListLongMap!4258 (toList!2144 List!4974)) )
))
(declare-fun contains!2198 (ListLongMap!4257 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1664 (array!18139 array!18137 (_ BitVec 32) (_ BitVec 32) V!10693 V!10693 (_ BitVec 32) Int) ListLongMap!4257)

(assert (=> b!343369 (= res!189862 (not (contains!2198 (getCurrentListMap!1664 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!343370 () Bool)

(assert (=> b!343370 (= e!210558 tp_is_empty!7287)))

(declare-fun mapNonEmpty!12369 () Bool)

(declare-fun tp!25550 () Bool)

(declare-fun e!210556 () Bool)

(assert (=> mapNonEmpty!12369 (= mapRes!12369 (and tp!25550 e!210556))))

(declare-fun mapValue!12369 () ValueCell!3300)

(declare-fun mapKey!12369 () (_ BitVec 32))

(declare-fun mapRest!12369 () (Array (_ BitVec 32) ValueCell!3300))

(assert (=> mapNonEmpty!12369 (= (arr!8582 _values!1525) (store mapRest!12369 mapKey!12369 mapValue!12369))))

(declare-fun b!343371 () Bool)

(assert (=> b!343371 (= e!210554 false)))

(declare-datatypes ((SeekEntryResult!3310 0))(
  ( (MissingZero!3310 (index!15419 (_ BitVec 32))) (Found!3310 (index!15420 (_ BitVec 32))) (Intermediate!3310 (undefined!4122 Bool) (index!15421 (_ BitVec 32)) (x!34179 (_ BitVec 32))) (Undefined!3310) (MissingVacant!3310 (index!15422 (_ BitVec 32))) )
))
(declare-fun lt!162537 () SeekEntryResult!3310)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18139 (_ BitVec 32)) SeekEntryResult!3310)

(assert (=> b!343371 (= lt!162537 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!343372 () Bool)

(declare-fun res!189861 () Bool)

(assert (=> b!343372 (=> (not res!189861) (not e!210554))))

(declare-datatypes ((List!4975 0))(
  ( (Nil!4972) (Cons!4971 (h!5827 (_ BitVec 64)) (t!10099 List!4975)) )
))
(declare-fun arrayNoDuplicates!0 (array!18139 (_ BitVec 32) List!4975) Bool)

(assert (=> b!343372 (= res!189861 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4972))))

(declare-fun b!343373 () Bool)

(declare-fun res!189864 () Bool)

(assert (=> b!343373 (=> (not res!189864) (not e!210554))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343373 (= res!189864 (validKeyInArray!0 k0!1348))))

(declare-fun b!343374 () Bool)

(declare-fun res!189866 () Bool)

(assert (=> b!343374 (=> (not res!189866) (not e!210554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18139 (_ BitVec 32)) Bool)

(assert (=> b!343374 (= res!189866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343375 () Bool)

(assert (=> b!343375 (= e!210556 tp_is_empty!7287)))

(assert (= (and start!34420 res!189865) b!343368))

(assert (= (and b!343368 res!189863) b!343374))

(assert (= (and b!343374 res!189866) b!343372))

(assert (= (and b!343372 res!189861) b!343373))

(assert (= (and b!343373 res!189864) b!343369))

(assert (= (and b!343369 res!189862) b!343371))

(assert (= (and b!343367 condMapEmpty!12369) mapIsEmpty!12369))

(assert (= (and b!343367 (not condMapEmpty!12369)) mapNonEmpty!12369))

(get-info :version)

(assert (= (and mapNonEmpty!12369 ((_ is ValueCellFull!3300) mapValue!12369)) b!343375))

(assert (= (and b!343367 ((_ is ValueCellFull!3300) mapDefault!12369)) b!343370))

(assert (= start!34420 b!343367))

(declare-fun m!345257 () Bool)

(assert (=> b!343374 m!345257))

(declare-fun m!345259 () Bool)

(assert (=> b!343373 m!345259))

(declare-fun m!345261 () Bool)

(assert (=> b!343372 m!345261))

(declare-fun m!345263 () Bool)

(assert (=> start!34420 m!345263))

(declare-fun m!345265 () Bool)

(assert (=> start!34420 m!345265))

(declare-fun m!345267 () Bool)

(assert (=> start!34420 m!345267))

(declare-fun m!345269 () Bool)

(assert (=> b!343369 m!345269))

(assert (=> b!343369 m!345269))

(declare-fun m!345271 () Bool)

(assert (=> b!343369 m!345271))

(declare-fun m!345273 () Bool)

(assert (=> b!343371 m!345273))

(declare-fun m!345275 () Bool)

(assert (=> mapNonEmpty!12369 m!345275))

(check-sat tp_is_empty!7287 (not mapNonEmpty!12369) (not b_next!7335) b_and!14561 (not b!343372) (not b!343374) (not b!343373) (not b!343369) (not b!343371) (not start!34420))
(check-sat b_and!14561 (not b_next!7335))
