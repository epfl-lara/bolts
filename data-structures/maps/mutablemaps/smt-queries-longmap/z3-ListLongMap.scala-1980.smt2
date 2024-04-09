; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34774 () Bool)

(assert start!34774)

(declare-fun b_free!7551 () Bool)

(declare-fun b_next!7551 () Bool)

(assert (=> start!34774 (= b_free!7551 (not b_next!7551))))

(declare-fun tp!26219 () Bool)

(declare-fun b_and!14791 () Bool)

(assert (=> start!34774 (= tp!26219 b_and!14791)))

(declare-fun b!347444 () Bool)

(declare-fun res!192396 () Bool)

(declare-fun e!212901 () Bool)

(assert (=> b!347444 (=> (not res!192396) (not e!212901))))

(declare-datatypes ((array!18563 0))(
  ( (array!18564 (arr!8788 (Array (_ BitVec 32) (_ BitVec 64))) (size!9140 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18563)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18563 (_ BitVec 32)) Bool)

(assert (=> b!347444 (= res!192396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347445 () Bool)

(declare-fun res!192393 () Bool)

(assert (=> b!347445 (=> (not res!192393) (not e!212901))))

(declare-datatypes ((V!10981 0))(
  ( (V!10982 (val!3796 Int)) )
))
(declare-datatypes ((ValueCell!3408 0))(
  ( (ValueCellFull!3408 (v!5975 V!10981)) (EmptyCell!3408) )
))
(declare-datatypes ((array!18565 0))(
  ( (array!18566 (arr!8789 (Array (_ BitVec 32) ValueCell!3408)) (size!9141 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18565)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!347445 (= res!192393 (and (= (size!9141 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9140 _keys!1895) (size!9141 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347446 () Bool)

(declare-fun res!192395 () Bool)

(assert (=> b!347446 (=> (not res!192395) (not e!212901))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347446 (= res!192395 (validKeyInArray!0 k0!1348))))

(declare-fun b!347447 () Bool)

(declare-fun e!212905 () Bool)

(assert (=> b!347447 (= e!212901 e!212905)))

(declare-fun res!192400 () Bool)

(assert (=> b!347447 (=> (not res!192400) (not e!212905))))

(declare-datatypes ((SeekEntryResult!3386 0))(
  ( (MissingZero!3386 (index!15723 (_ BitVec 32))) (Found!3386 (index!15724 (_ BitVec 32))) (Intermediate!3386 (undefined!4198 Bool) (index!15725 (_ BitVec 32)) (x!34613 (_ BitVec 32))) (Undefined!3386) (MissingVacant!3386 (index!15726 (_ BitVec 32))) )
))
(declare-fun lt!163622 () SeekEntryResult!3386)

(get-info :version)

(assert (=> b!347447 (= res!192400 (and ((_ is Found!3386) lt!163622) (= (select (arr!8788 _keys!1895) (index!15724 lt!163622)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18563 (_ BitVec 32)) SeekEntryResult!3386)

(assert (=> b!347447 (= lt!163622 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!347448 () Bool)

(declare-fun res!192397 () Bool)

(assert (=> b!347448 (=> (not res!192397) (not e!212901))))

(declare-fun zeroValue!1467 () V!10981)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10981)

(declare-datatypes ((tuple2!5480 0))(
  ( (tuple2!5481 (_1!2750 (_ BitVec 64)) (_2!2750 V!10981)) )
))
(declare-datatypes ((List!5124 0))(
  ( (Nil!5121) (Cons!5120 (h!5976 tuple2!5480) (t!10262 List!5124)) )
))
(declare-datatypes ((ListLongMap!4407 0))(
  ( (ListLongMap!4408 (toList!2219 List!5124)) )
))
(declare-fun contains!2280 (ListLongMap!4407 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1739 (array!18563 array!18565 (_ BitVec 32) (_ BitVec 32) V!10981 V!10981 (_ BitVec 32) Int) ListLongMap!4407)

(assert (=> b!347448 (= res!192397 (not (contains!2280 (getCurrentListMap!1739 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!347449 () Bool)

(declare-fun res!192398 () Bool)

(assert (=> b!347449 (=> (not res!192398) (not e!212901))))

(declare-datatypes ((List!5125 0))(
  ( (Nil!5122) (Cons!5121 (h!5977 (_ BitVec 64)) (t!10263 List!5125)) )
))
(declare-fun arrayNoDuplicates!0 (array!18563 (_ BitVec 32) List!5125) Bool)

(assert (=> b!347449 (= res!192398 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5122))))

(declare-fun b!347450 () Bool)

(declare-fun res!192394 () Bool)

(assert (=> b!347450 (=> (not res!192394) (not e!212905))))

(declare-fun arrayContainsKey!0 (array!18563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347450 (= res!192394 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15724 lt!163622)))))

(declare-fun b!347451 () Bool)

(declare-fun e!212903 () Bool)

(assert (=> b!347451 (= e!212905 (not e!212903))))

(declare-fun res!192399 () Bool)

(assert (=> b!347451 (=> res!192399 e!212903)))

(assert (=> b!347451 (= res!192399 (or (bvslt (index!15724 lt!163622) #b00000000000000000000000000000000) (bvsge (index!15724 lt!163622) (size!9140 _keys!1895))))))

(assert (=> b!347451 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10786 0))(
  ( (Unit!10787) )
))
(declare-fun lt!163623 () Unit!10786)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18563 (_ BitVec 64) (_ BitVec 32)) Unit!10786)

(assert (=> b!347451 (= lt!163623 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15724 lt!163622)))))

(declare-fun b!347452 () Bool)

(declare-fun e!212906 () Bool)

(declare-fun e!212900 () Bool)

(declare-fun mapRes!12714 () Bool)

(assert (=> b!347452 (= e!212906 (and e!212900 mapRes!12714))))

(declare-fun condMapEmpty!12714 () Bool)

(declare-fun mapDefault!12714 () ValueCell!3408)

(assert (=> b!347452 (= condMapEmpty!12714 (= (arr!8789 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3408)) mapDefault!12714)))))

(declare-fun mapIsEmpty!12714 () Bool)

(assert (=> mapIsEmpty!12714 mapRes!12714))

(declare-fun b!347453 () Bool)

(assert (=> b!347453 (= e!212903 (validKeyInArray!0 (select (arr!8788 _keys!1895) (index!15724 lt!163622))))))

(declare-fun b!347454 () Bool)

(declare-fun e!212904 () Bool)

(declare-fun tp_is_empty!7503 () Bool)

(assert (=> b!347454 (= e!212904 tp_is_empty!7503)))

(declare-fun res!192392 () Bool)

(assert (=> start!34774 (=> (not res!192392) (not e!212901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34774 (= res!192392 (validMask!0 mask!2385))))

(assert (=> start!34774 e!212901))

(assert (=> start!34774 true))

(assert (=> start!34774 tp_is_empty!7503))

(assert (=> start!34774 tp!26219))

(declare-fun array_inv!6494 (array!18565) Bool)

(assert (=> start!34774 (and (array_inv!6494 _values!1525) e!212906)))

(declare-fun array_inv!6495 (array!18563) Bool)

(assert (=> start!34774 (array_inv!6495 _keys!1895)))

(declare-fun mapNonEmpty!12714 () Bool)

(declare-fun tp!26220 () Bool)

(assert (=> mapNonEmpty!12714 (= mapRes!12714 (and tp!26220 e!212904))))

(declare-fun mapKey!12714 () (_ BitVec 32))

(declare-fun mapRest!12714 () (Array (_ BitVec 32) ValueCell!3408))

(declare-fun mapValue!12714 () ValueCell!3408)

(assert (=> mapNonEmpty!12714 (= (arr!8789 _values!1525) (store mapRest!12714 mapKey!12714 mapValue!12714))))

(declare-fun b!347455 () Bool)

(assert (=> b!347455 (= e!212900 tp_is_empty!7503)))

(assert (= (and start!34774 res!192392) b!347445))

(assert (= (and b!347445 res!192393) b!347444))

(assert (= (and b!347444 res!192396) b!347449))

(assert (= (and b!347449 res!192398) b!347446))

(assert (= (and b!347446 res!192395) b!347448))

(assert (= (and b!347448 res!192397) b!347447))

(assert (= (and b!347447 res!192400) b!347450))

(assert (= (and b!347450 res!192394) b!347451))

(assert (= (and b!347451 (not res!192399)) b!347453))

(assert (= (and b!347452 condMapEmpty!12714) mapIsEmpty!12714))

(assert (= (and b!347452 (not condMapEmpty!12714)) mapNonEmpty!12714))

(assert (= (and mapNonEmpty!12714 ((_ is ValueCellFull!3408) mapValue!12714)) b!347454))

(assert (= (and b!347452 ((_ is ValueCellFull!3408) mapDefault!12714)) b!347455))

(assert (= start!34774 b!347452))

(declare-fun m!348369 () Bool)

(assert (=> b!347444 m!348369))

(declare-fun m!348371 () Bool)

(assert (=> start!34774 m!348371))

(declare-fun m!348373 () Bool)

(assert (=> start!34774 m!348373))

(declare-fun m!348375 () Bool)

(assert (=> start!34774 m!348375))

(declare-fun m!348377 () Bool)

(assert (=> b!347449 m!348377))

(declare-fun m!348379 () Bool)

(assert (=> b!347451 m!348379))

(declare-fun m!348381 () Bool)

(assert (=> b!347451 m!348381))

(declare-fun m!348383 () Bool)

(assert (=> b!347446 m!348383))

(declare-fun m!348385 () Bool)

(assert (=> mapNonEmpty!12714 m!348385))

(declare-fun m!348387 () Bool)

(assert (=> b!347447 m!348387))

(declare-fun m!348389 () Bool)

(assert (=> b!347447 m!348389))

(assert (=> b!347453 m!348387))

(assert (=> b!347453 m!348387))

(declare-fun m!348391 () Bool)

(assert (=> b!347453 m!348391))

(declare-fun m!348393 () Bool)

(assert (=> b!347448 m!348393))

(assert (=> b!347448 m!348393))

(declare-fun m!348395 () Bool)

(assert (=> b!347448 m!348395))

(declare-fun m!348397 () Bool)

(assert (=> b!347450 m!348397))

(check-sat (not b_next!7551) (not b!347448) (not start!34774) (not b!347449) (not b!347446) b_and!14791 (not b!347453) (not mapNonEmpty!12714) (not b!347451) (not b!347444) tp_is_empty!7503 (not b!347447) (not b!347450))
(check-sat b_and!14791 (not b_next!7551))
