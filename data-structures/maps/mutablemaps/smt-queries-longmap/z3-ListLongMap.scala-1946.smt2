; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34432 () Bool)

(assert start!34432)

(declare-fun b_free!7347 () Bool)

(declare-fun b_next!7347 () Bool)

(assert (=> start!34432 (= b_free!7347 (not b_next!7347))))

(declare-fun tp!25587 () Bool)

(declare-fun b_and!14573 () Bool)

(assert (=> start!34432 (= tp!25587 b_and!14573)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3315 0))(
  ( (MissingZero!3315 (index!15439 (_ BitVec 32))) (Found!3315 (index!15440 (_ BitVec 32))) (Intermediate!3315 (undefined!4127 Bool) (index!15441 (_ BitVec 32)) (x!34200 (_ BitVec 32))) (Undefined!3315) (MissingVacant!3315 (index!15442 (_ BitVec 32))) )
))
(declare-fun lt!162555 () SeekEntryResult!3315)

(declare-fun e!210644 () Bool)

(declare-fun b!343529 () Bool)

(declare-datatypes ((array!18161 0))(
  ( (array!18162 (arr!8594 (Array (_ BitVec 32) (_ BitVec 64))) (size!8946 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18161)

(get-info :version)

(assert (=> b!343529 (= e!210644 (and (not ((_ is Found!3315) lt!162555)) (not ((_ is MissingZero!3315) lt!162555)) (not ((_ is MissingVacant!3315) lt!162555)) ((_ is Undefined!3315) lt!162555) (not (= (size!8946 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18161 (_ BitVec 32)) SeekEntryResult!3315)

(assert (=> b!343529 (= lt!162555 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!343530 () Bool)

(declare-fun e!210646 () Bool)

(declare-fun tp_is_empty!7299 () Bool)

(assert (=> b!343530 (= e!210646 tp_is_empty!7299)))

(declare-fun b!343531 () Bool)

(declare-fun res!189970 () Bool)

(assert (=> b!343531 (=> (not res!189970) (not e!210644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343531 (= res!189970 (validKeyInArray!0 k0!1348))))

(declare-fun res!189969 () Bool)

(assert (=> start!34432 (=> (not res!189969) (not e!210644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34432 (= res!189969 (validMask!0 mask!2385))))

(assert (=> start!34432 e!210644))

(assert (=> start!34432 true))

(assert (=> start!34432 tp_is_empty!7299))

(assert (=> start!34432 tp!25587))

(declare-datatypes ((V!10709 0))(
  ( (V!10710 (val!3694 Int)) )
))
(declare-datatypes ((ValueCell!3306 0))(
  ( (ValueCellFull!3306 (v!5866 V!10709)) (EmptyCell!3306) )
))
(declare-datatypes ((array!18163 0))(
  ( (array!18164 (arr!8595 (Array (_ BitVec 32) ValueCell!3306)) (size!8947 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18163)

(declare-fun e!210647 () Bool)

(declare-fun array_inv!6354 (array!18163) Bool)

(assert (=> start!34432 (and (array_inv!6354 _values!1525) e!210647)))

(declare-fun array_inv!6355 (array!18161) Bool)

(assert (=> start!34432 (array_inv!6355 _keys!1895)))

(declare-fun b!343532 () Bool)

(declare-fun e!210648 () Bool)

(assert (=> b!343532 (= e!210648 tp_is_empty!7299)))

(declare-fun b!343533 () Bool)

(declare-fun res!189971 () Bool)

(assert (=> b!343533 (=> (not res!189971) (not e!210644))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343533 (= res!189971 (and (= (size!8947 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8946 _keys!1895) (size!8947 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343534 () Bool)

(declare-fun mapRes!12387 () Bool)

(assert (=> b!343534 (= e!210647 (and e!210648 mapRes!12387))))

(declare-fun condMapEmpty!12387 () Bool)

(declare-fun mapDefault!12387 () ValueCell!3306)

(assert (=> b!343534 (= condMapEmpty!12387 (= (arr!8595 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3306)) mapDefault!12387)))))

(declare-fun b!343535 () Bool)

(declare-fun res!189973 () Bool)

(assert (=> b!343535 (=> (not res!189973) (not e!210644))))

(declare-fun zeroValue!1467 () V!10709)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10709)

(declare-datatypes ((tuple2!5338 0))(
  ( (tuple2!5339 (_1!2679 (_ BitVec 64)) (_2!2679 V!10709)) )
))
(declare-datatypes ((List!4983 0))(
  ( (Nil!4980) (Cons!4979 (h!5835 tuple2!5338) (t!10107 List!4983)) )
))
(declare-datatypes ((ListLongMap!4265 0))(
  ( (ListLongMap!4266 (toList!2148 List!4983)) )
))
(declare-fun contains!2202 (ListLongMap!4265 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1668 (array!18161 array!18163 (_ BitVec 32) (_ BitVec 32) V!10709 V!10709 (_ BitVec 32) Int) ListLongMap!4265)

(assert (=> b!343535 (= res!189973 (not (contains!2202 (getCurrentListMap!1668 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!12387 () Bool)

(declare-fun tp!25586 () Bool)

(assert (=> mapNonEmpty!12387 (= mapRes!12387 (and tp!25586 e!210646))))

(declare-fun mapKey!12387 () (_ BitVec 32))

(declare-fun mapValue!12387 () ValueCell!3306)

(declare-fun mapRest!12387 () (Array (_ BitVec 32) ValueCell!3306))

(assert (=> mapNonEmpty!12387 (= (arr!8595 _values!1525) (store mapRest!12387 mapKey!12387 mapValue!12387))))

(declare-fun b!343536 () Bool)

(declare-fun res!189974 () Bool)

(assert (=> b!343536 (=> (not res!189974) (not e!210644))))

(declare-datatypes ((List!4984 0))(
  ( (Nil!4981) (Cons!4980 (h!5836 (_ BitVec 64)) (t!10108 List!4984)) )
))
(declare-fun arrayNoDuplicates!0 (array!18161 (_ BitVec 32) List!4984) Bool)

(assert (=> b!343536 (= res!189974 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4981))))

(declare-fun b!343537 () Bool)

(declare-fun res!189972 () Bool)

(assert (=> b!343537 (=> (not res!189972) (not e!210644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18161 (_ BitVec 32)) Bool)

(assert (=> b!343537 (= res!189972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12387 () Bool)

(assert (=> mapIsEmpty!12387 mapRes!12387))

(assert (= (and start!34432 res!189969) b!343533))

(assert (= (and b!343533 res!189971) b!343537))

(assert (= (and b!343537 res!189972) b!343536))

(assert (= (and b!343536 res!189974) b!343531))

(assert (= (and b!343531 res!189970) b!343535))

(assert (= (and b!343535 res!189973) b!343529))

(assert (= (and b!343534 condMapEmpty!12387) mapIsEmpty!12387))

(assert (= (and b!343534 (not condMapEmpty!12387)) mapNonEmpty!12387))

(assert (= (and mapNonEmpty!12387 ((_ is ValueCellFull!3306) mapValue!12387)) b!343530))

(assert (= (and b!343534 ((_ is ValueCellFull!3306) mapDefault!12387)) b!343532))

(assert (= start!34432 b!343534))

(declare-fun m!345377 () Bool)

(assert (=> b!343537 m!345377))

(declare-fun m!345379 () Bool)

(assert (=> b!343535 m!345379))

(assert (=> b!343535 m!345379))

(declare-fun m!345381 () Bool)

(assert (=> b!343535 m!345381))

(declare-fun m!345383 () Bool)

(assert (=> start!34432 m!345383))

(declare-fun m!345385 () Bool)

(assert (=> start!34432 m!345385))

(declare-fun m!345387 () Bool)

(assert (=> start!34432 m!345387))

(declare-fun m!345389 () Bool)

(assert (=> b!343531 m!345389))

(declare-fun m!345391 () Bool)

(assert (=> b!343529 m!345391))

(declare-fun m!345393 () Bool)

(assert (=> b!343536 m!345393))

(declare-fun m!345395 () Bool)

(assert (=> mapNonEmpty!12387 m!345395))

(check-sat (not b!343537) tp_is_empty!7299 (not start!34432) (not b!343536) (not mapNonEmpty!12387) (not b!343535) (not b!343529) (not b!343531) (not b_next!7347) b_and!14573)
(check-sat b_and!14573 (not b_next!7347))
