; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34332 () Bool)

(assert start!34332)

(declare-fun b_free!7299 () Bool)

(declare-fun b_next!7299 () Bool)

(assert (=> start!34332 (= b_free!7299 (not b_next!7299))))

(declare-fun tp!25436 () Bool)

(declare-fun b_and!14521 () Bool)

(assert (=> start!34332 (= tp!25436 b_and!14521)))

(declare-fun b!342420 () Bool)

(declare-fun e!209988 () Bool)

(declare-fun tp_is_empty!7251 () Bool)

(assert (=> b!342420 (= e!209988 tp_is_empty!7251)))

(declare-fun b!342421 () Bool)

(declare-datatypes ((Unit!10667 0))(
  ( (Unit!10668) )
))
(declare-fun e!209989 () Unit!10667)

(declare-fun Unit!10669 () Unit!10667)

(assert (=> b!342421 (= e!209989 Unit!10669)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10645 0))(
  ( (V!10646 (val!3670 Int)) )
))
(declare-fun zeroValue!1467 () V!10645)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3282 0))(
  ( (ValueCellFull!3282 (v!5840 V!10645)) (EmptyCell!3282) )
))
(declare-datatypes ((array!18069 0))(
  ( (array!18070 (arr!8550 (Array (_ BitVec 32) ValueCell!3282)) (size!8902 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18069)

(declare-datatypes ((array!18071 0))(
  ( (array!18072 (arr!8551 (Array (_ BitVec 32) (_ BitVec 64))) (size!8903 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18071)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10645)

(declare-fun lt!162164 () Unit!10667)

(declare-fun lemmaArrayContainsKeyThenInListMap!304 (array!18071 array!18069 (_ BitVec 32) (_ BitVec 32) V!10645 V!10645 (_ BitVec 64) (_ BitVec 32) Int) Unit!10667)

(declare-fun arrayScanForKey!0 (array!18071 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342421 (= lt!162164 (lemmaArrayContainsKeyThenInListMap!304 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342421 false))

(declare-fun b!342422 () Bool)

(declare-fun res!189355 () Bool)

(declare-fun e!209992 () Bool)

(assert (=> b!342422 (=> (not res!189355) (not e!209992))))

(declare-datatypes ((List!4949 0))(
  ( (Nil!4946) (Cons!4945 (h!5801 (_ BitVec 64)) (t!10069 List!4949)) )
))
(declare-fun arrayNoDuplicates!0 (array!18071 (_ BitVec 32) List!4949) Bool)

(assert (=> b!342422 (= res!189355 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4946))))

(declare-fun b!342423 () Bool)

(declare-fun res!189353 () Bool)

(assert (=> b!342423 (=> (not res!189353) (not e!209992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342423 (= res!189353 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!12309 () Bool)

(declare-fun mapRes!12309 () Bool)

(declare-fun tp!25437 () Bool)

(declare-fun e!209990 () Bool)

(assert (=> mapNonEmpty!12309 (= mapRes!12309 (and tp!25437 e!209990))))

(declare-fun mapValue!12309 () ValueCell!3282)

(declare-fun mapKey!12309 () (_ BitVec 32))

(declare-fun mapRest!12309 () (Array (_ BitVec 32) ValueCell!3282))

(assert (=> mapNonEmpty!12309 (= (arr!8550 _values!1525) (store mapRest!12309 mapKey!12309 mapValue!12309))))

(declare-fun res!189350 () Bool)

(assert (=> start!34332 (=> (not res!189350) (not e!209992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34332 (= res!189350 (validMask!0 mask!2385))))

(assert (=> start!34332 e!209992))

(assert (=> start!34332 true))

(assert (=> start!34332 tp_is_empty!7251))

(assert (=> start!34332 tp!25436))

(declare-fun e!209991 () Bool)

(declare-fun array_inv!6320 (array!18069) Bool)

(assert (=> start!34332 (and (array_inv!6320 _values!1525) e!209991)))

(declare-fun array_inv!6321 (array!18071) Bool)

(assert (=> start!34332 (array_inv!6321 _keys!1895)))

(declare-fun mapIsEmpty!12309 () Bool)

(assert (=> mapIsEmpty!12309 mapRes!12309))

(declare-fun b!342424 () Bool)

(assert (=> b!342424 (= e!209991 (and e!209988 mapRes!12309))))

(declare-fun condMapEmpty!12309 () Bool)

(declare-fun mapDefault!12309 () ValueCell!3282)

(assert (=> b!342424 (= condMapEmpty!12309 (= (arr!8550 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3282)) mapDefault!12309)))))

(declare-fun b!342425 () Bool)

(declare-fun res!189356 () Bool)

(assert (=> b!342425 (=> (not res!189356) (not e!209992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18071 (_ BitVec 32)) Bool)

(assert (=> b!342425 (= res!189356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342426 () Bool)

(declare-fun e!209993 () Bool)

(assert (=> b!342426 (= e!209993 false)))

(declare-fun lt!162163 () Unit!10667)

(assert (=> b!342426 (= lt!162163 e!209989)))

(declare-fun c!52751 () Bool)

(declare-fun arrayContainsKey!0 (array!18071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342426 (= c!52751 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!342427 () Bool)

(declare-fun res!189351 () Bool)

(assert (=> b!342427 (=> (not res!189351) (not e!209992))))

(declare-datatypes ((tuple2!5308 0))(
  ( (tuple2!5309 (_1!2664 (_ BitVec 64)) (_2!2664 V!10645)) )
))
(declare-datatypes ((List!4950 0))(
  ( (Nil!4947) (Cons!4946 (h!5802 tuple2!5308) (t!10070 List!4950)) )
))
(declare-datatypes ((ListLongMap!4235 0))(
  ( (ListLongMap!4236 (toList!2133 List!4950)) )
))
(declare-fun contains!2185 (ListLongMap!4235 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1653 (array!18071 array!18069 (_ BitVec 32) (_ BitVec 32) V!10645 V!10645 (_ BitVec 32) Int) ListLongMap!4235)

(assert (=> b!342427 (= res!189351 (not (contains!2185 (getCurrentListMap!1653 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!342428 () Bool)

(assert (=> b!342428 (= e!209992 e!209993)))

(declare-fun res!189352 () Bool)

(assert (=> b!342428 (=> (not res!189352) (not e!209993))))

(declare-datatypes ((SeekEntryResult!3298 0))(
  ( (MissingZero!3298 (index!15371 (_ BitVec 32))) (Found!3298 (index!15372 (_ BitVec 32))) (Intermediate!3298 (undefined!4110 Bool) (index!15373 (_ BitVec 32)) (x!34099 (_ BitVec 32))) (Undefined!3298) (MissingVacant!3298 (index!15374 (_ BitVec 32))) )
))
(declare-fun lt!162165 () SeekEntryResult!3298)

(get-info :version)

(assert (=> b!342428 (= res!189352 (and (not ((_ is Found!3298) lt!162165)) (not ((_ is MissingZero!3298) lt!162165)) ((_ is MissingVacant!3298) lt!162165)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18071 (_ BitVec 32)) SeekEntryResult!3298)

(assert (=> b!342428 (= lt!162165 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!342429 () Bool)

(assert (=> b!342429 (= e!209990 tp_is_empty!7251)))

(declare-fun b!342430 () Bool)

(declare-fun Unit!10670 () Unit!10667)

(assert (=> b!342430 (= e!209989 Unit!10670)))

(declare-fun b!342431 () Bool)

(declare-fun res!189354 () Bool)

(assert (=> b!342431 (=> (not res!189354) (not e!209992))))

(assert (=> b!342431 (= res!189354 (and (= (size!8902 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8903 _keys!1895) (size!8902 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!34332 res!189350) b!342431))

(assert (= (and b!342431 res!189354) b!342425))

(assert (= (and b!342425 res!189356) b!342422))

(assert (= (and b!342422 res!189355) b!342423))

(assert (= (and b!342423 res!189353) b!342427))

(assert (= (and b!342427 res!189351) b!342428))

(assert (= (and b!342428 res!189352) b!342426))

(assert (= (and b!342426 c!52751) b!342421))

(assert (= (and b!342426 (not c!52751)) b!342430))

(assert (= (and b!342424 condMapEmpty!12309) mapIsEmpty!12309))

(assert (= (and b!342424 (not condMapEmpty!12309)) mapNonEmpty!12309))

(assert (= (and mapNonEmpty!12309 ((_ is ValueCellFull!3282) mapValue!12309)) b!342429))

(assert (= (and b!342424 ((_ is ValueCellFull!3282) mapDefault!12309)) b!342420))

(assert (= start!34332 b!342424))

(declare-fun m!344567 () Bool)

(assert (=> mapNonEmpty!12309 m!344567))

(declare-fun m!344569 () Bool)

(assert (=> b!342421 m!344569))

(assert (=> b!342421 m!344569))

(declare-fun m!344571 () Bool)

(assert (=> b!342421 m!344571))

(declare-fun m!344573 () Bool)

(assert (=> b!342423 m!344573))

(declare-fun m!344575 () Bool)

(assert (=> b!342428 m!344575))

(declare-fun m!344577 () Bool)

(assert (=> b!342422 m!344577))

(declare-fun m!344579 () Bool)

(assert (=> b!342426 m!344579))

(declare-fun m!344581 () Bool)

(assert (=> start!34332 m!344581))

(declare-fun m!344583 () Bool)

(assert (=> start!34332 m!344583))

(declare-fun m!344585 () Bool)

(assert (=> start!34332 m!344585))

(declare-fun m!344587 () Bool)

(assert (=> b!342425 m!344587))

(declare-fun m!344589 () Bool)

(assert (=> b!342427 m!344589))

(assert (=> b!342427 m!344589))

(declare-fun m!344591 () Bool)

(assert (=> b!342427 m!344591))

(check-sat (not b!342421) (not b!342428) (not start!34332) (not b!342422) (not b!342426) (not b!342427) b_and!14521 tp_is_empty!7251 (not mapNonEmpty!12309) (not b!342425) (not b!342423) (not b_next!7299))
(check-sat b_and!14521 (not b_next!7299))
