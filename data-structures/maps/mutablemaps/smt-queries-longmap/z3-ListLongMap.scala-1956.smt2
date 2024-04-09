; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34492 () Bool)

(assert start!34492)

(declare-fun b_free!7407 () Bool)

(declare-fun b_next!7407 () Bool)

(assert (=> start!34492 (= b_free!7407 (not b_next!7407))))

(declare-fun tp!25766 () Bool)

(declare-fun b_and!14633 () Bool)

(assert (=> start!34492 (= tp!25766 b_and!14633)))

(declare-fun b!344339 () Bool)

(declare-fun res!190514 () Bool)

(declare-fun e!211095 () Bool)

(assert (=> b!344339 (=> (not res!190514) (not e!211095))))

(declare-datatypes ((array!18273 0))(
  ( (array!18274 (arr!8650 (Array (_ BitVec 32) (_ BitVec 64))) (size!9002 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18273)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18273 (_ BitVec 32)) Bool)

(assert (=> b!344339 (= res!190514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344340 () Bool)

(declare-fun e!211098 () Bool)

(declare-fun e!211096 () Bool)

(declare-fun mapRes!12477 () Bool)

(assert (=> b!344340 (= e!211098 (and e!211096 mapRes!12477))))

(declare-fun condMapEmpty!12477 () Bool)

(declare-datatypes ((V!10789 0))(
  ( (V!10790 (val!3724 Int)) )
))
(declare-datatypes ((ValueCell!3336 0))(
  ( (ValueCellFull!3336 (v!5896 V!10789)) (EmptyCell!3336) )
))
(declare-datatypes ((array!18275 0))(
  ( (array!18276 (arr!8651 (Array (_ BitVec 32) ValueCell!3336)) (size!9003 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18275)

(declare-fun mapDefault!12477 () ValueCell!3336)

(assert (=> b!344340 (= condMapEmpty!12477 (= (arr!8651 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3336)) mapDefault!12477)))))

(declare-fun b!344341 () Bool)

(declare-fun res!190510 () Bool)

(assert (=> b!344341 (=> (not res!190510) (not e!211095))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344341 (= res!190510 (validKeyInArray!0 k0!1348))))

(declare-fun res!190509 () Bool)

(assert (=> start!34492 (=> (not res!190509) (not e!211095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34492 (= res!190509 (validMask!0 mask!2385))))

(assert (=> start!34492 e!211095))

(assert (=> start!34492 true))

(declare-fun tp_is_empty!7359 () Bool)

(assert (=> start!34492 tp_is_empty!7359))

(assert (=> start!34492 tp!25766))

(declare-fun array_inv!6400 (array!18275) Bool)

(assert (=> start!34492 (and (array_inv!6400 _values!1525) e!211098)))

(declare-fun array_inv!6401 (array!18273) Bool)

(assert (=> start!34492 (array_inv!6401 _keys!1895)))

(declare-fun b!344342 () Bool)

(declare-fun e!211097 () Bool)

(assert (=> b!344342 (= e!211097 tp_is_empty!7359)))

(declare-fun b!344343 () Bool)

(assert (=> b!344343 (= e!211096 tp_is_empty!7359)))

(declare-fun b!344344 () Bool)

(declare-fun res!190513 () Bool)

(assert (=> b!344344 (=> (not res!190513) (not e!211095))))

(declare-datatypes ((List!5023 0))(
  ( (Nil!5020) (Cons!5019 (h!5875 (_ BitVec 64)) (t!10147 List!5023)) )
))
(declare-fun arrayNoDuplicates!0 (array!18273 (_ BitVec 32) List!5023) Bool)

(assert (=> b!344344 (= res!190513 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5020))))

(declare-fun mapIsEmpty!12477 () Bool)

(assert (=> mapIsEmpty!12477 mapRes!12477))

(declare-fun b!344345 () Bool)

(declare-datatypes ((SeekEntryResult!3335 0))(
  ( (MissingZero!3335 (index!15519 (_ BitVec 32))) (Found!3335 (index!15520 (_ BitVec 32))) (Intermediate!3335 (undefined!4147 Bool) (index!15521 (_ BitVec 32)) (x!34300 (_ BitVec 32))) (Undefined!3335) (MissingVacant!3335 (index!15522 (_ BitVec 32))) )
))
(declare-fun lt!162645 () SeekEntryResult!3335)

(get-info :version)

(assert (=> b!344345 (= e!211095 (and (not ((_ is Found!3335) lt!162645)) (not ((_ is MissingZero!3335) lt!162645)) (not ((_ is MissingVacant!3335) lt!162645)) (not ((_ is Undefined!3335) lt!162645)) (not (= (size!9002 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18273 (_ BitVec 32)) SeekEntryResult!3335)

(assert (=> b!344345 (= lt!162645 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12477 () Bool)

(declare-fun tp!25767 () Bool)

(assert (=> mapNonEmpty!12477 (= mapRes!12477 (and tp!25767 e!211097))))

(declare-fun mapRest!12477 () (Array (_ BitVec 32) ValueCell!3336))

(declare-fun mapKey!12477 () (_ BitVec 32))

(declare-fun mapValue!12477 () ValueCell!3336)

(assert (=> mapNonEmpty!12477 (= (arr!8651 _values!1525) (store mapRest!12477 mapKey!12477 mapValue!12477))))

(declare-fun b!344346 () Bool)

(declare-fun res!190511 () Bool)

(assert (=> b!344346 (=> (not res!190511) (not e!211095))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344346 (= res!190511 (and (= (size!9003 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9002 _keys!1895) (size!9003 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344347 () Bool)

(declare-fun res!190512 () Bool)

(assert (=> b!344347 (=> (not res!190512) (not e!211095))))

(declare-fun zeroValue!1467 () V!10789)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10789)

(declare-datatypes ((tuple2!5378 0))(
  ( (tuple2!5379 (_1!2699 (_ BitVec 64)) (_2!2699 V!10789)) )
))
(declare-datatypes ((List!5024 0))(
  ( (Nil!5021) (Cons!5020 (h!5876 tuple2!5378) (t!10148 List!5024)) )
))
(declare-datatypes ((ListLongMap!4305 0))(
  ( (ListLongMap!4306 (toList!2168 List!5024)) )
))
(declare-fun contains!2222 (ListLongMap!4305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1688 (array!18273 array!18275 (_ BitVec 32) (_ BitVec 32) V!10789 V!10789 (_ BitVec 32) Int) ListLongMap!4305)

(assert (=> b!344347 (= res!190512 (not (contains!2222 (getCurrentListMap!1688 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34492 res!190509) b!344346))

(assert (= (and b!344346 res!190511) b!344339))

(assert (= (and b!344339 res!190514) b!344344))

(assert (= (and b!344344 res!190513) b!344341))

(assert (= (and b!344341 res!190510) b!344347))

(assert (= (and b!344347 res!190512) b!344345))

(assert (= (and b!344340 condMapEmpty!12477) mapIsEmpty!12477))

(assert (= (and b!344340 (not condMapEmpty!12477)) mapNonEmpty!12477))

(assert (= (and mapNonEmpty!12477 ((_ is ValueCellFull!3336) mapValue!12477)) b!344342))

(assert (= (and b!344340 ((_ is ValueCellFull!3336) mapDefault!12477)) b!344343))

(assert (= start!34492 b!344340))

(declare-fun m!345977 () Bool)

(assert (=> b!344345 m!345977))

(declare-fun m!345979 () Bool)

(assert (=> b!344341 m!345979))

(declare-fun m!345981 () Bool)

(assert (=> start!34492 m!345981))

(declare-fun m!345983 () Bool)

(assert (=> start!34492 m!345983))

(declare-fun m!345985 () Bool)

(assert (=> start!34492 m!345985))

(declare-fun m!345987 () Bool)

(assert (=> b!344339 m!345987))

(declare-fun m!345989 () Bool)

(assert (=> mapNonEmpty!12477 m!345989))

(declare-fun m!345991 () Bool)

(assert (=> b!344344 m!345991))

(declare-fun m!345993 () Bool)

(assert (=> b!344347 m!345993))

(assert (=> b!344347 m!345993))

(declare-fun m!345995 () Bool)

(assert (=> b!344347 m!345995))

(check-sat (not b!344341) (not start!34492) (not b!344339) b_and!14633 (not mapNonEmpty!12477) (not b_next!7407) (not b!344347) tp_is_empty!7359 (not b!344345) (not b!344344))
(check-sat b_and!14633 (not b_next!7407))
