; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34822 () Bool)

(assert start!34822)

(declare-fun b_free!7599 () Bool)

(declare-fun b_next!7599 () Bool)

(assert (=> start!34822 (= b_free!7599 (not b_next!7599))))

(declare-fun tp!26364 () Bool)

(declare-fun b_and!14839 () Bool)

(assert (=> start!34822 (= tp!26364 b_and!14839)))

(declare-fun b!348240 () Bool)

(declare-fun res!192974 () Bool)

(declare-fun e!213377 () Bool)

(assert (=> b!348240 (=> (not res!192974) (not e!213377))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!11045 0))(
  ( (V!11046 (val!3820 Int)) )
))
(declare-fun zeroValue!1467 () V!11045)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3432 0))(
  ( (ValueCellFull!3432 (v!5999 V!11045)) (EmptyCell!3432) )
))
(declare-datatypes ((array!18655 0))(
  ( (array!18656 (arr!8834 (Array (_ BitVec 32) ValueCell!3432)) (size!9186 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18655)

(declare-datatypes ((array!18657 0))(
  ( (array!18658 (arr!8835 (Array (_ BitVec 32) (_ BitVec 64))) (size!9187 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18657)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11045)

(declare-datatypes ((tuple2!5514 0))(
  ( (tuple2!5515 (_1!2767 (_ BitVec 64)) (_2!2767 V!11045)) )
))
(declare-datatypes ((List!5157 0))(
  ( (Nil!5154) (Cons!5153 (h!6009 tuple2!5514) (t!10295 List!5157)) )
))
(declare-datatypes ((ListLongMap!4441 0))(
  ( (ListLongMap!4442 (toList!2236 List!5157)) )
))
(declare-fun contains!2297 (ListLongMap!4441 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1753 (array!18657 array!18655 (_ BitVec 32) (_ BitVec 32) V!11045 V!11045 (_ BitVec 32) Int) ListLongMap!4441)

(assert (=> b!348240 (= res!192974 (not (contains!2297 (getCurrentListMap!1753 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!348241 () Bool)

(declare-fun res!192978 () Bool)

(assert (=> b!348241 (=> (not res!192978) (not e!213377))))

(assert (=> b!348241 (= res!192978 (and (= (size!9186 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9187 _keys!1895) (size!9186 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348242 () Bool)

(declare-fun e!213374 () Bool)

(assert (=> b!348242 (= e!213374 false)))

(declare-fun lt!163838 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18657 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348242 (= lt!163838 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!192973 () Bool)

(assert (=> start!34822 (=> (not res!192973) (not e!213377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34822 (= res!192973 (validMask!0 mask!2385))))

(assert (=> start!34822 e!213377))

(assert (=> start!34822 true))

(declare-fun tp_is_empty!7551 () Bool)

(assert (=> start!34822 tp_is_empty!7551))

(assert (=> start!34822 tp!26364))

(declare-fun e!213373 () Bool)

(declare-fun array_inv!6524 (array!18655) Bool)

(assert (=> start!34822 (and (array_inv!6524 _values!1525) e!213373)))

(declare-fun array_inv!6525 (array!18657) Bool)

(assert (=> start!34822 (array_inv!6525 _keys!1895)))

(declare-fun mapIsEmpty!12786 () Bool)

(declare-fun mapRes!12786 () Bool)

(assert (=> mapIsEmpty!12786 mapRes!12786))

(declare-fun b!348243 () Bool)

(assert (=> b!348243 (= e!213377 e!213374)))

(declare-fun res!192972 () Bool)

(assert (=> b!348243 (=> (not res!192972) (not e!213374))))

(declare-datatypes ((SeekEntryResult!3404 0))(
  ( (MissingZero!3404 (index!15795 (_ BitVec 32))) (Found!3404 (index!15796 (_ BitVec 32))) (Intermediate!3404 (undefined!4216 Bool) (index!15797 (_ BitVec 32)) (x!34695 (_ BitVec 32))) (Undefined!3404) (MissingVacant!3404 (index!15798 (_ BitVec 32))) )
))
(declare-fun lt!163839 () SeekEntryResult!3404)

(get-info :version)

(assert (=> b!348243 (= res!192972 (and (not ((_ is Found!3404) lt!163839)) ((_ is MissingZero!3404) lt!163839)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18657 (_ BitVec 32)) SeekEntryResult!3404)

(assert (=> b!348243 (= lt!163839 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!348244 () Bool)

(declare-fun e!213372 () Bool)

(assert (=> b!348244 (= e!213373 (and e!213372 mapRes!12786))))

(declare-fun condMapEmpty!12786 () Bool)

(declare-fun mapDefault!12786 () ValueCell!3432)

(assert (=> b!348244 (= condMapEmpty!12786 (= (arr!8834 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3432)) mapDefault!12786)))))

(declare-fun b!348245 () Bool)

(declare-fun res!192979 () Bool)

(assert (=> b!348245 (=> (not res!192979) (not e!213374))))

(declare-fun arrayContainsKey!0 (array!18657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348245 (= res!192979 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12786 () Bool)

(declare-fun tp!26363 () Bool)

(declare-fun e!213375 () Bool)

(assert (=> mapNonEmpty!12786 (= mapRes!12786 (and tp!26363 e!213375))))

(declare-fun mapRest!12786 () (Array (_ BitVec 32) ValueCell!3432))

(declare-fun mapKey!12786 () (_ BitVec 32))

(declare-fun mapValue!12786 () ValueCell!3432)

(assert (=> mapNonEmpty!12786 (= (arr!8834 _values!1525) (store mapRest!12786 mapKey!12786 mapValue!12786))))

(declare-fun b!348246 () Bool)

(assert (=> b!348246 (= e!213372 tp_is_empty!7551)))

(declare-fun b!348247 () Bool)

(declare-fun res!192976 () Bool)

(assert (=> b!348247 (=> (not res!192976) (not e!213377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18657 (_ BitVec 32)) Bool)

(assert (=> b!348247 (= res!192976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348248 () Bool)

(assert (=> b!348248 (= e!213375 tp_is_empty!7551)))

(declare-fun b!348249 () Bool)

(declare-fun res!192977 () Bool)

(assert (=> b!348249 (=> (not res!192977) (not e!213377))))

(declare-datatypes ((List!5158 0))(
  ( (Nil!5155) (Cons!5154 (h!6010 (_ BitVec 64)) (t!10296 List!5158)) )
))
(declare-fun arrayNoDuplicates!0 (array!18657 (_ BitVec 32) List!5158) Bool)

(assert (=> b!348249 (= res!192977 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5155))))

(declare-fun b!348250 () Bool)

(declare-fun res!192975 () Bool)

(assert (=> b!348250 (=> (not res!192975) (not e!213377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348250 (= res!192975 (validKeyInArray!0 k0!1348))))

(assert (= (and start!34822 res!192973) b!348241))

(assert (= (and b!348241 res!192978) b!348247))

(assert (= (and b!348247 res!192976) b!348249))

(assert (= (and b!348249 res!192977) b!348250))

(assert (= (and b!348250 res!192975) b!348240))

(assert (= (and b!348240 res!192974) b!348243))

(assert (= (and b!348243 res!192972) b!348245))

(assert (= (and b!348245 res!192979) b!348242))

(assert (= (and b!348244 condMapEmpty!12786) mapIsEmpty!12786))

(assert (= (and b!348244 (not condMapEmpty!12786)) mapNonEmpty!12786))

(assert (= (and mapNonEmpty!12786 ((_ is ValueCellFull!3432) mapValue!12786)) b!348248))

(assert (= (and b!348244 ((_ is ValueCellFull!3432) mapDefault!12786)) b!348246))

(assert (= start!34822 b!348244))

(declare-fun m!349053 () Bool)

(assert (=> b!348250 m!349053))

(declare-fun m!349055 () Bool)

(assert (=> b!348243 m!349055))

(declare-fun m!349057 () Bool)

(assert (=> b!348245 m!349057))

(declare-fun m!349059 () Bool)

(assert (=> b!348247 m!349059))

(declare-fun m!349061 () Bool)

(assert (=> b!348249 m!349061))

(declare-fun m!349063 () Bool)

(assert (=> b!348240 m!349063))

(assert (=> b!348240 m!349063))

(declare-fun m!349065 () Bool)

(assert (=> b!348240 m!349065))

(declare-fun m!349067 () Bool)

(assert (=> mapNonEmpty!12786 m!349067))

(declare-fun m!349069 () Bool)

(assert (=> start!34822 m!349069))

(declare-fun m!349071 () Bool)

(assert (=> start!34822 m!349071))

(declare-fun m!349073 () Bool)

(assert (=> start!34822 m!349073))

(declare-fun m!349075 () Bool)

(assert (=> b!348242 m!349075))

(check-sat b_and!14839 (not b!348240) (not b!348245) (not start!34822) (not b!348243) (not b!348242) tp_is_empty!7551 (not b!348247) (not b_next!7599) (not b!348250) (not b!348249) (not mapNonEmpty!12786))
(check-sat b_and!14839 (not b_next!7599))
