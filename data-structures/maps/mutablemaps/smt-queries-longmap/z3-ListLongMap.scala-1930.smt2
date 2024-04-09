; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34236 () Bool)

(assert start!34236)

(declare-fun b_free!7251 () Bool)

(declare-fun b_next!7251 () Bool)

(assert (=> start!34236 (= b_free!7251 (not b_next!7251))))

(declare-fun tp!25287 () Bool)

(declare-fun b_and!14469 () Bool)

(assert (=> start!34236 (= tp!25287 b_and!14469)))

(declare-fun mapNonEmpty!12231 () Bool)

(declare-fun mapRes!12231 () Bool)

(declare-fun tp!25286 () Bool)

(declare-fun e!209309 () Bool)

(assert (=> mapNonEmpty!12231 (= mapRes!12231 (and tp!25286 e!209309))))

(declare-datatypes ((V!10581 0))(
  ( (V!10582 (val!3646 Int)) )
))
(declare-datatypes ((ValueCell!3258 0))(
  ( (ValueCellFull!3258 (v!5814 V!10581)) (EmptyCell!3258) )
))
(declare-fun mapValue!12231 () ValueCell!3258)

(declare-datatypes ((array!17971 0))(
  ( (array!17972 (arr!8503 (Array (_ BitVec 32) ValueCell!3258)) (size!8855 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17971)

(declare-fun mapKey!12231 () (_ BitVec 32))

(declare-fun mapRest!12231 () (Array (_ BitVec 32) ValueCell!3258))

(assert (=> mapNonEmpty!12231 (= (arr!8503 _values!1525) (store mapRest!12231 mapKey!12231 mapValue!12231))))

(declare-fun b!341282 () Bool)

(declare-fun e!209311 () Bool)

(declare-fun e!209308 () Bool)

(assert (=> b!341282 (= e!209311 (and e!209308 mapRes!12231))))

(declare-fun condMapEmpty!12231 () Bool)

(declare-fun mapDefault!12231 () ValueCell!3258)

(assert (=> b!341282 (= condMapEmpty!12231 (= (arr!8503 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3258)) mapDefault!12231)))))

(declare-fun b!341283 () Bool)

(declare-fun res!188747 () Bool)

(declare-fun e!209312 () Bool)

(assert (=> b!341283 (=> (not res!188747) (not e!209312))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!17973 0))(
  ( (array!17974 (arr!8504 (Array (_ BitVec 32) (_ BitVec 64))) (size!8856 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17973)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!341283 (= res!188747 (and (= (size!8855 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8856 _keys!1895) (size!8855 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341284 () Bool)

(declare-fun e!209310 () Bool)

(assert (=> b!341284 (= e!209310 false)))

(declare-fun lt!161738 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17973 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341284 (= lt!161738 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!341285 () Bool)

(declare-fun res!188745 () Bool)

(assert (=> b!341285 (=> (not res!188745) (not e!209310))))

(declare-fun arrayContainsKey!0 (array!17973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341285 (= res!188745 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!188746 () Bool)

(assert (=> start!34236 (=> (not res!188746) (not e!209312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34236 (= res!188746 (validMask!0 mask!2385))))

(assert (=> start!34236 e!209312))

(assert (=> start!34236 true))

(declare-fun tp_is_empty!7203 () Bool)

(assert (=> start!34236 tp_is_empty!7203))

(assert (=> start!34236 tp!25287))

(declare-fun array_inv!6290 (array!17971) Bool)

(assert (=> start!34236 (and (array_inv!6290 _values!1525) e!209311)))

(declare-fun array_inv!6291 (array!17973) Bool)

(assert (=> start!34236 (array_inv!6291 _keys!1895)))

(declare-fun mapIsEmpty!12231 () Bool)

(assert (=> mapIsEmpty!12231 mapRes!12231))

(declare-fun b!341286 () Bool)

(assert (=> b!341286 (= e!209312 e!209310)))

(declare-fun res!188743 () Bool)

(assert (=> b!341286 (=> (not res!188743) (not e!209310))))

(declare-datatypes ((SeekEntryResult!3282 0))(
  ( (MissingZero!3282 (index!15307 (_ BitVec 32))) (Found!3282 (index!15308 (_ BitVec 32))) (Intermediate!3282 (undefined!4094 Bool) (index!15309 (_ BitVec 32)) (x!33999 (_ BitVec 32))) (Undefined!3282) (MissingVacant!3282 (index!15310 (_ BitVec 32))) )
))
(declare-fun lt!161739 () SeekEntryResult!3282)

(get-info :version)

(assert (=> b!341286 (= res!188743 (and (not ((_ is Found!3282) lt!161739)) (not ((_ is MissingZero!3282) lt!161739)) ((_ is MissingVacant!3282) lt!161739)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17973 (_ BitVec 32)) SeekEntryResult!3282)

(assert (=> b!341286 (= lt!161739 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!341287 () Bool)

(declare-fun res!188742 () Bool)

(assert (=> b!341287 (=> (not res!188742) (not e!209312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17973 (_ BitVec 32)) Bool)

(assert (=> b!341287 (= res!188742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341288 () Bool)

(declare-fun res!188740 () Bool)

(assert (=> b!341288 (=> (not res!188740) (not e!209312))))

(declare-datatypes ((List!4914 0))(
  ( (Nil!4911) (Cons!4910 (h!5766 (_ BitVec 64)) (t!10030 List!4914)) )
))
(declare-fun arrayNoDuplicates!0 (array!17973 (_ BitVec 32) List!4914) Bool)

(assert (=> b!341288 (= res!188740 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4911))))

(declare-fun b!341289 () Bool)

(assert (=> b!341289 (= e!209309 tp_is_empty!7203)))

(declare-fun b!341290 () Bool)

(declare-fun res!188744 () Bool)

(assert (=> b!341290 (=> (not res!188744) (not e!209312))))

(declare-fun zeroValue!1467 () V!10581)

(declare-fun minValue!1467 () V!10581)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5272 0))(
  ( (tuple2!5273 (_1!2646 (_ BitVec 64)) (_2!2646 V!10581)) )
))
(declare-datatypes ((List!4915 0))(
  ( (Nil!4912) (Cons!4911 (h!5767 tuple2!5272) (t!10031 List!4915)) )
))
(declare-datatypes ((ListLongMap!4199 0))(
  ( (ListLongMap!4200 (toList!2115 List!4915)) )
))
(declare-fun contains!2165 (ListLongMap!4199 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1635 (array!17973 array!17971 (_ BitVec 32) (_ BitVec 32) V!10581 V!10581 (_ BitVec 32) Int) ListLongMap!4199)

(assert (=> b!341290 (= res!188744 (not (contains!2165 (getCurrentListMap!1635 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!341291 () Bool)

(declare-fun res!188741 () Bool)

(assert (=> b!341291 (=> (not res!188741) (not e!209312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341291 (= res!188741 (validKeyInArray!0 k0!1348))))

(declare-fun b!341292 () Bool)

(assert (=> b!341292 (= e!209308 tp_is_empty!7203)))

(assert (= (and start!34236 res!188746) b!341283))

(assert (= (and b!341283 res!188747) b!341287))

(assert (= (and b!341287 res!188742) b!341288))

(assert (= (and b!341288 res!188740) b!341291))

(assert (= (and b!341291 res!188741) b!341290))

(assert (= (and b!341290 res!188744) b!341286))

(assert (= (and b!341286 res!188743) b!341285))

(assert (= (and b!341285 res!188745) b!341284))

(assert (= (and b!341282 condMapEmpty!12231) mapIsEmpty!12231))

(assert (= (and b!341282 (not condMapEmpty!12231)) mapNonEmpty!12231))

(assert (= (and mapNonEmpty!12231 ((_ is ValueCellFull!3258) mapValue!12231)) b!341289))

(assert (= (and b!341282 ((_ is ValueCellFull!3258) mapDefault!12231)) b!341292))

(assert (= start!34236 b!341282))

(declare-fun m!343743 () Bool)

(assert (=> b!341286 m!343743))

(declare-fun m!343745 () Bool)

(assert (=> b!341290 m!343745))

(assert (=> b!341290 m!343745))

(declare-fun m!343747 () Bool)

(assert (=> b!341290 m!343747))

(declare-fun m!343749 () Bool)

(assert (=> start!34236 m!343749))

(declare-fun m!343751 () Bool)

(assert (=> start!34236 m!343751))

(declare-fun m!343753 () Bool)

(assert (=> start!34236 m!343753))

(declare-fun m!343755 () Bool)

(assert (=> b!341288 m!343755))

(declare-fun m!343757 () Bool)

(assert (=> b!341287 m!343757))

(declare-fun m!343759 () Bool)

(assert (=> mapNonEmpty!12231 m!343759))

(declare-fun m!343761 () Bool)

(assert (=> b!341284 m!343761))

(declare-fun m!343763 () Bool)

(assert (=> b!341291 m!343763))

(declare-fun m!343765 () Bool)

(assert (=> b!341285 m!343765))

(check-sat (not b_next!7251) (not b!341284) (not b!341291) (not b!341290) (not b!341285) b_and!14469 (not b!341286) (not b!341287) (not b!341288) (not mapNonEmpty!12231) tp_is_empty!7203 (not start!34236))
(check-sat b_and!14469 (not b_next!7251))
