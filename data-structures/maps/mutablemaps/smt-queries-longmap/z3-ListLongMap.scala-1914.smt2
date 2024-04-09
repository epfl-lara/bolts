; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34084 () Bool)

(assert start!34084)

(declare-fun b_free!7155 () Bool)

(declare-fun b_next!7155 () Bool)

(assert (=> start!34084 (= b_free!7155 (not b_next!7155))))

(declare-fun tp!24989 () Bool)

(declare-fun b_and!14367 () Bool)

(assert (=> start!34084 (= tp!24989 b_and!14367)))

(declare-fun b!339379 () Bool)

(declare-datatypes ((Unit!10582 0))(
  ( (Unit!10583) )
))
(declare-fun e!208230 () Unit!10582)

(declare-fun Unit!10584 () Unit!10582)

(assert (=> b!339379 (= e!208230 Unit!10584)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10453 0))(
  ( (V!10454 (val!3598 Int)) )
))
(declare-fun zeroValue!1467 () V!10453)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3210 0))(
  ( (ValueCellFull!3210 (v!5763 V!10453)) (EmptyCell!3210) )
))
(declare-datatypes ((array!17785 0))(
  ( (array!17786 (arr!8413 (Array (_ BitVec 32) ValueCell!3210)) (size!8765 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17785)

(declare-datatypes ((array!17787 0))(
  ( (array!17788 (arr!8414 (Array (_ BitVec 32) (_ BitVec 64))) (size!8766 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17787)

(declare-fun lt!161203 () Unit!10582)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10453)

(declare-fun lemmaArrayContainsKeyThenInListMap!287 (array!17787 array!17785 (_ BitVec 32) (_ BitVec 32) V!10453 V!10453 (_ BitVec 64) (_ BitVec 32) Int) Unit!10582)

(declare-fun arrayScanForKey!0 (array!17787 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!339379 (= lt!161203 (lemmaArrayContainsKeyThenInListMap!287 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!339379 false))

(declare-fun b!339380 () Bool)

(declare-fun e!208232 () Bool)

(declare-fun e!208233 () Bool)

(declare-fun mapRes!12078 () Bool)

(assert (=> b!339380 (= e!208232 (and e!208233 mapRes!12078))))

(declare-fun condMapEmpty!12078 () Bool)

(declare-fun mapDefault!12078 () ValueCell!3210)

(assert (=> b!339380 (= condMapEmpty!12078 (= (arr!8413 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3210)) mapDefault!12078)))))

(declare-fun b!339381 () Bool)

(declare-fun res!187525 () Bool)

(declare-fun e!208227 () Bool)

(assert (=> b!339381 (=> (not res!187525) (not e!208227))))

(assert (=> b!339381 (= res!187525 (and (= (size!8765 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8766 _keys!1895) (size!8765 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339382 () Bool)

(declare-fun res!187528 () Bool)

(assert (=> b!339382 (=> (not res!187528) (not e!208227))))

(declare-datatypes ((List!4857 0))(
  ( (Nil!4854) (Cons!4853 (h!5709 (_ BitVec 64)) (t!9967 List!4857)) )
))
(declare-fun arrayNoDuplicates!0 (array!17787 (_ BitVec 32) List!4857) Bool)

(assert (=> b!339382 (= res!187528 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4854))))

(declare-fun res!187524 () Bool)

(assert (=> start!34084 (=> (not res!187524) (not e!208227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34084 (= res!187524 (validMask!0 mask!2385))))

(assert (=> start!34084 e!208227))

(assert (=> start!34084 true))

(declare-fun tp_is_empty!7107 () Bool)

(assert (=> start!34084 tp_is_empty!7107))

(assert (=> start!34084 tp!24989))

(declare-fun array_inv!6228 (array!17785) Bool)

(assert (=> start!34084 (and (array_inv!6228 _values!1525) e!208232)))

(declare-fun array_inv!6229 (array!17787) Bool)

(assert (=> start!34084 (array_inv!6229 _keys!1895)))

(declare-fun b!339383 () Bool)

(declare-fun e!208228 () Bool)

(assert (=> b!339383 (= e!208228 tp_is_empty!7107)))

(declare-fun b!339384 () Bool)

(declare-fun res!187526 () Bool)

(assert (=> b!339384 (=> (not res!187526) (not e!208227))))

(declare-datatypes ((tuple2!5216 0))(
  ( (tuple2!5217 (_1!2618 (_ BitVec 64)) (_2!2618 V!10453)) )
))
(declare-datatypes ((List!4858 0))(
  ( (Nil!4855) (Cons!4854 (h!5710 tuple2!5216) (t!9968 List!4858)) )
))
(declare-datatypes ((ListLongMap!4143 0))(
  ( (ListLongMap!4144 (toList!2087 List!4858)) )
))
(declare-fun contains!2134 (ListLongMap!4143 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1607 (array!17787 array!17785 (_ BitVec 32) (_ BitVec 32) V!10453 V!10453 (_ BitVec 32) Int) ListLongMap!4143)

(assert (=> b!339384 (= res!187526 (not (contains!2134 (getCurrentListMap!1607 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!339385 () Bool)

(declare-fun res!187529 () Bool)

(assert (=> b!339385 (=> (not res!187529) (not e!208227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17787 (_ BitVec 32)) Bool)

(assert (=> b!339385 (= res!187529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339386 () Bool)

(assert (=> b!339386 (= e!208233 tp_is_empty!7107)))

(declare-fun b!339387 () Bool)

(declare-fun Unit!10585 () Unit!10582)

(assert (=> b!339387 (= e!208230 Unit!10585)))

(declare-fun b!339388 () Bool)

(declare-fun e!208231 () Bool)

(assert (=> b!339388 (= e!208227 e!208231)))

(declare-fun res!187527 () Bool)

(assert (=> b!339388 (=> (not res!187527) (not e!208231))))

(declare-datatypes ((SeekEntryResult!3256 0))(
  ( (MissingZero!3256 (index!15203 (_ BitVec 32))) (Found!3256 (index!15204 (_ BitVec 32))) (Intermediate!3256 (undefined!4068 Bool) (index!15205 (_ BitVec 32)) (x!33815 (_ BitVec 32))) (Undefined!3256) (MissingVacant!3256 (index!15206 (_ BitVec 32))) )
))
(declare-fun lt!161204 () SeekEntryResult!3256)

(get-info :version)

(assert (=> b!339388 (= res!187527 (and (not ((_ is Found!3256) lt!161204)) ((_ is MissingZero!3256) lt!161204)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17787 (_ BitVec 32)) SeekEntryResult!3256)

(assert (=> b!339388 (= lt!161204 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12078 () Bool)

(assert (=> mapIsEmpty!12078 mapRes!12078))

(declare-fun b!339389 () Bool)

(declare-fun res!187523 () Bool)

(assert (=> b!339389 (=> (not res!187523) (not e!208227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339389 (= res!187523 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!12078 () Bool)

(declare-fun tp!24990 () Bool)

(assert (=> mapNonEmpty!12078 (= mapRes!12078 (and tp!24990 e!208228))))

(declare-fun mapValue!12078 () ValueCell!3210)

(declare-fun mapRest!12078 () (Array (_ BitVec 32) ValueCell!3210))

(declare-fun mapKey!12078 () (_ BitVec 32))

(assert (=> mapNonEmpty!12078 (= (arr!8413 _values!1525) (store mapRest!12078 mapKey!12078 mapValue!12078))))

(declare-fun b!339390 () Bool)

(assert (=> b!339390 (= e!208231 false)))

(declare-fun lt!161205 () Unit!10582)

(assert (=> b!339390 (= lt!161205 e!208230)))

(declare-fun c!52493 () Bool)

(declare-fun arrayContainsKey!0 (array!17787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339390 (= c!52493 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(assert (= (and start!34084 res!187524) b!339381))

(assert (= (and b!339381 res!187525) b!339385))

(assert (= (and b!339385 res!187529) b!339382))

(assert (= (and b!339382 res!187528) b!339389))

(assert (= (and b!339389 res!187523) b!339384))

(assert (= (and b!339384 res!187526) b!339388))

(assert (= (and b!339388 res!187527) b!339390))

(assert (= (and b!339390 c!52493) b!339379))

(assert (= (and b!339390 (not c!52493)) b!339387))

(assert (= (and b!339380 condMapEmpty!12078) mapIsEmpty!12078))

(assert (= (and b!339380 (not condMapEmpty!12078)) mapNonEmpty!12078))

(assert (= (and mapNonEmpty!12078 ((_ is ValueCellFull!3210) mapValue!12078)) b!339383))

(assert (= (and b!339380 ((_ is ValueCellFull!3210) mapDefault!12078)) b!339386))

(assert (= start!34084 b!339380))

(declare-fun m!342357 () Bool)

(assert (=> start!34084 m!342357))

(declare-fun m!342359 () Bool)

(assert (=> start!34084 m!342359))

(declare-fun m!342361 () Bool)

(assert (=> start!34084 m!342361))

(declare-fun m!342363 () Bool)

(assert (=> b!339385 m!342363))

(declare-fun m!342365 () Bool)

(assert (=> b!339390 m!342365))

(declare-fun m!342367 () Bool)

(assert (=> mapNonEmpty!12078 m!342367))

(declare-fun m!342369 () Bool)

(assert (=> b!339384 m!342369))

(assert (=> b!339384 m!342369))

(declare-fun m!342371 () Bool)

(assert (=> b!339384 m!342371))

(declare-fun m!342373 () Bool)

(assert (=> b!339379 m!342373))

(assert (=> b!339379 m!342373))

(declare-fun m!342375 () Bool)

(assert (=> b!339379 m!342375))

(declare-fun m!342377 () Bool)

(assert (=> b!339389 m!342377))

(declare-fun m!342379 () Bool)

(assert (=> b!339382 m!342379))

(declare-fun m!342381 () Bool)

(assert (=> b!339388 m!342381))

(check-sat (not b!339388) (not b!339384) (not start!34084) (not b!339389) (not b!339390) tp_is_empty!7107 (not b!339385) (not b!339382) (not b_next!7155) b_and!14367 (not b!339379) (not mapNonEmpty!12078))
(check-sat b_and!14367 (not b_next!7155))
