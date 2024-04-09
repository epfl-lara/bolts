; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34090 () Bool)

(assert start!34090)

(declare-fun b_free!7161 () Bool)

(declare-fun b_next!7161 () Bool)

(assert (=> start!34090 (= b_free!7161 (not b_next!7161))))

(declare-fun tp!25007 () Bool)

(declare-fun b_and!14373 () Bool)

(assert (=> start!34090 (= tp!25007 b_and!14373)))

(declare-fun b!339472 () Bool)

(declare-fun res!187581 () Bool)

(declare-fun e!208283 () Bool)

(assert (=> b!339472 (=> (not res!187581) (not e!208283))))

(declare-datatypes ((array!17797 0))(
  ( (array!17798 (arr!8419 (Array (_ BitVec 32) (_ BitVec 64))) (size!8771 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17797)

(declare-datatypes ((List!4861 0))(
  ( (Nil!4858) (Cons!4857 (h!5713 (_ BitVec 64)) (t!9971 List!4861)) )
))
(declare-fun arrayNoDuplicates!0 (array!17797 (_ BitVec 32) List!4861) Bool)

(assert (=> b!339472 (= res!187581 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4858))))

(declare-fun b!339473 () Bool)

(declare-fun res!187583 () Bool)

(assert (=> b!339473 (=> (not res!187583) (not e!208283))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339473 (= res!187583 (validKeyInArray!0 k0!1348))))

(declare-fun b!339474 () Bool)

(declare-fun e!208282 () Bool)

(declare-fun tp_is_empty!7113 () Bool)

(assert (=> b!339474 (= e!208282 tp_is_empty!7113)))

(declare-fun b!339475 () Bool)

(declare-fun res!187586 () Bool)

(assert (=> b!339475 (=> (not res!187586) (not e!208283))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10461 0))(
  ( (V!10462 (val!3601 Int)) )
))
(declare-fun zeroValue!1467 () V!10461)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10461)

(declare-datatypes ((ValueCell!3213 0))(
  ( (ValueCellFull!3213 (v!5766 V!10461)) (EmptyCell!3213) )
))
(declare-datatypes ((array!17799 0))(
  ( (array!17800 (arr!8420 (Array (_ BitVec 32) ValueCell!3213)) (size!8772 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17799)

(declare-datatypes ((tuple2!5218 0))(
  ( (tuple2!5219 (_1!2619 (_ BitVec 64)) (_2!2619 V!10461)) )
))
(declare-datatypes ((List!4862 0))(
  ( (Nil!4859) (Cons!4858 (h!5714 tuple2!5218) (t!9972 List!4862)) )
))
(declare-datatypes ((ListLongMap!4145 0))(
  ( (ListLongMap!4146 (toList!2088 List!4862)) )
))
(declare-fun contains!2135 (ListLongMap!4145 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1608 (array!17797 array!17799 (_ BitVec 32) (_ BitVec 32) V!10461 V!10461 (_ BitVec 32) Int) ListLongMap!4145)

(assert (=> b!339475 (= res!187586 (not (contains!2135 (getCurrentListMap!1608 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!339476 () Bool)

(declare-fun e!208281 () Bool)

(declare-fun mapRes!12087 () Bool)

(assert (=> b!339476 (= e!208281 (and e!208282 mapRes!12087))))

(declare-fun condMapEmpty!12087 () Bool)

(declare-fun mapDefault!12087 () ValueCell!3213)

(assert (=> b!339476 (= condMapEmpty!12087 (= (arr!8420 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3213)) mapDefault!12087)))))

(declare-fun b!339477 () Bool)

(declare-fun res!187582 () Bool)

(assert (=> b!339477 (=> (not res!187582) (not e!208283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17797 (_ BitVec 32)) Bool)

(assert (=> b!339477 (= res!187582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12087 () Bool)

(assert (=> mapIsEmpty!12087 mapRes!12087))

(declare-fun b!339479 () Bool)

(assert (=> b!339479 (= e!208283 false)))

(declare-datatypes ((SeekEntryResult!3257 0))(
  ( (MissingZero!3257 (index!15207 (_ BitVec 32))) (Found!3257 (index!15208 (_ BitVec 32))) (Intermediate!3257 (undefined!4069 Bool) (index!15209 (_ BitVec 32)) (x!33824 (_ BitVec 32))) (Undefined!3257) (MissingVacant!3257 (index!15210 (_ BitVec 32))) )
))
(declare-fun lt!161220 () SeekEntryResult!3257)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17797 (_ BitVec 32)) SeekEntryResult!3257)

(assert (=> b!339479 (= lt!161220 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!339480 () Bool)

(declare-fun e!208280 () Bool)

(assert (=> b!339480 (= e!208280 tp_is_empty!7113)))

(declare-fun mapNonEmpty!12087 () Bool)

(declare-fun tp!25008 () Bool)

(assert (=> mapNonEmpty!12087 (= mapRes!12087 (and tp!25008 e!208280))))

(declare-fun mapValue!12087 () ValueCell!3213)

(declare-fun mapRest!12087 () (Array (_ BitVec 32) ValueCell!3213))

(declare-fun mapKey!12087 () (_ BitVec 32))

(assert (=> mapNonEmpty!12087 (= (arr!8420 _values!1525) (store mapRest!12087 mapKey!12087 mapValue!12087))))

(declare-fun b!339478 () Bool)

(declare-fun res!187584 () Bool)

(assert (=> b!339478 (=> (not res!187584) (not e!208283))))

(assert (=> b!339478 (= res!187584 (and (= (size!8772 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8771 _keys!1895) (size!8772 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!187585 () Bool)

(assert (=> start!34090 (=> (not res!187585) (not e!208283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34090 (= res!187585 (validMask!0 mask!2385))))

(assert (=> start!34090 e!208283))

(assert (=> start!34090 true))

(assert (=> start!34090 tp_is_empty!7113))

(assert (=> start!34090 tp!25007))

(declare-fun array_inv!6232 (array!17799) Bool)

(assert (=> start!34090 (and (array_inv!6232 _values!1525) e!208281)))

(declare-fun array_inv!6233 (array!17797) Bool)

(assert (=> start!34090 (array_inv!6233 _keys!1895)))

(assert (= (and start!34090 res!187585) b!339478))

(assert (= (and b!339478 res!187584) b!339477))

(assert (= (and b!339477 res!187582) b!339472))

(assert (= (and b!339472 res!187581) b!339473))

(assert (= (and b!339473 res!187583) b!339475))

(assert (= (and b!339475 res!187586) b!339479))

(assert (= (and b!339476 condMapEmpty!12087) mapIsEmpty!12087))

(assert (= (and b!339476 (not condMapEmpty!12087)) mapNonEmpty!12087))

(get-info :version)

(assert (= (and mapNonEmpty!12087 ((_ is ValueCellFull!3213) mapValue!12087)) b!339480))

(assert (= (and b!339476 ((_ is ValueCellFull!3213) mapDefault!12087)) b!339474))

(assert (= start!34090 b!339476))

(declare-fun m!342429 () Bool)

(assert (=> start!34090 m!342429))

(declare-fun m!342431 () Bool)

(assert (=> start!34090 m!342431))

(declare-fun m!342433 () Bool)

(assert (=> start!34090 m!342433))

(declare-fun m!342435 () Bool)

(assert (=> b!339473 m!342435))

(declare-fun m!342437 () Bool)

(assert (=> b!339475 m!342437))

(assert (=> b!339475 m!342437))

(declare-fun m!342439 () Bool)

(assert (=> b!339475 m!342439))

(declare-fun m!342441 () Bool)

(assert (=> b!339479 m!342441))

(declare-fun m!342443 () Bool)

(assert (=> mapNonEmpty!12087 m!342443))

(declare-fun m!342445 () Bool)

(assert (=> b!339472 m!342445))

(declare-fun m!342447 () Bool)

(assert (=> b!339477 m!342447))

(check-sat tp_is_empty!7113 (not b!339475) (not b!339477) (not b!339472) (not b_next!7161) (not b!339473) (not mapNonEmpty!12087) (not start!34090) b_and!14373 (not b!339479))
(check-sat b_and!14373 (not b_next!7161))
