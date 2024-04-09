; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35002 () Bool)

(assert start!35002)

(declare-fun b_free!7683 () Bool)

(declare-fun b_next!7683 () Bool)

(assert (=> start!35002 (= b_free!7683 (not b_next!7683))))

(declare-fun tp!26627 () Bool)

(declare-fun b_and!14931 () Bool)

(assert (=> start!35002 (= tp!26627 b_and!14931)))

(declare-fun b!350310 () Bool)

(declare-fun res!194211 () Bool)

(declare-fun e!214594 () Bool)

(assert (=> b!350310 (=> (not res!194211) (not e!214594))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350310 (= res!194211 (validKeyInArray!0 k0!1348))))

(declare-fun b!350311 () Bool)

(declare-fun e!214590 () Bool)

(declare-fun tp_is_empty!7635 () Bool)

(assert (=> b!350311 (= e!214590 tp_is_empty!7635)))

(declare-fun b!350312 () Bool)

(declare-fun res!194209 () Bool)

(declare-fun e!214593 () Bool)

(assert (=> b!350312 (=> (not res!194209) (not e!214593))))

(declare-datatypes ((array!18825 0))(
  ( (array!18826 (arr!8915 (Array (_ BitVec 32) (_ BitVec 64))) (size!9267 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18825)

(declare-fun arrayContainsKey!0 (array!18825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350312 (= res!194209 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350313 () Bool)

(declare-fun e!214589 () Bool)

(assert (=> b!350313 (= e!214589 tp_is_empty!7635)))

(declare-fun b!350314 () Bool)

(declare-fun res!194205 () Bool)

(assert (=> b!350314 (=> (not res!194205) (not e!214594))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11157 0))(
  ( (V!11158 (val!3862 Int)) )
))
(declare-datatypes ((ValueCell!3474 0))(
  ( (ValueCellFull!3474 (v!6045 V!11157)) (EmptyCell!3474) )
))
(declare-datatypes ((array!18827 0))(
  ( (array!18828 (arr!8916 (Array (_ BitVec 32) ValueCell!3474)) (size!9268 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18827)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!350314 (= res!194205 (and (= (size!9268 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9267 _keys!1895) (size!9268 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350315 () Bool)

(declare-fun res!194210 () Bool)

(assert (=> b!350315 (=> (not res!194210) (not e!214594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18825 (_ BitVec 32)) Bool)

(assert (=> b!350315 (= res!194210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350317 () Bool)

(declare-fun res!194204 () Bool)

(assert (=> b!350317 (=> (not res!194204) (not e!214594))))

(declare-datatypes ((List!5211 0))(
  ( (Nil!5208) (Cons!5207 (h!6063 (_ BitVec 64)) (t!10357 List!5211)) )
))
(declare-fun arrayNoDuplicates!0 (array!18825 (_ BitVec 32) List!5211) Bool)

(assert (=> b!350317 (= res!194204 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5208))))

(declare-fun mapNonEmpty!12924 () Bool)

(declare-fun mapRes!12924 () Bool)

(declare-fun tp!26628 () Bool)

(assert (=> mapNonEmpty!12924 (= mapRes!12924 (and tp!26628 e!214590))))

(declare-fun mapValue!12924 () ValueCell!3474)

(declare-fun mapKey!12924 () (_ BitVec 32))

(declare-fun mapRest!12924 () (Array (_ BitVec 32) ValueCell!3474))

(assert (=> mapNonEmpty!12924 (= (arr!8916 _values!1525) (store mapRest!12924 mapKey!12924 mapValue!12924))))

(declare-fun b!350318 () Bool)

(assert (=> b!350318 (= e!214593 false)))

(declare-fun lt!164555 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18825 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350318 (= lt!164555 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350319 () Bool)

(declare-fun e!214591 () Bool)

(assert (=> b!350319 (= e!214591 (and e!214589 mapRes!12924))))

(declare-fun condMapEmpty!12924 () Bool)

(declare-fun mapDefault!12924 () ValueCell!3474)

(assert (=> b!350319 (= condMapEmpty!12924 (= (arr!8916 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3474)) mapDefault!12924)))))

(declare-fun mapIsEmpty!12924 () Bool)

(assert (=> mapIsEmpty!12924 mapRes!12924))

(declare-fun b!350320 () Bool)

(declare-fun res!194207 () Bool)

(assert (=> b!350320 (=> (not res!194207) (not e!214594))))

(declare-fun zeroValue!1467 () V!11157)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11157)

(declare-datatypes ((tuple2!5572 0))(
  ( (tuple2!5573 (_1!2796 (_ BitVec 64)) (_2!2796 V!11157)) )
))
(declare-datatypes ((List!5212 0))(
  ( (Nil!5209) (Cons!5208 (h!6064 tuple2!5572) (t!10358 List!5212)) )
))
(declare-datatypes ((ListLongMap!4499 0))(
  ( (ListLongMap!4500 (toList!2265 List!5212)) )
))
(declare-fun contains!2330 (ListLongMap!4499 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1782 (array!18825 array!18827 (_ BitVec 32) (_ BitVec 32) V!11157 V!11157 (_ BitVec 32) Int) ListLongMap!4499)

(assert (=> b!350320 (= res!194207 (not (contains!2330 (getCurrentListMap!1782 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!350316 () Bool)

(assert (=> b!350316 (= e!214594 e!214593)))

(declare-fun res!194206 () Bool)

(assert (=> b!350316 (=> (not res!194206) (not e!214593))))

(declare-datatypes ((SeekEntryResult!3433 0))(
  ( (MissingZero!3433 (index!15911 (_ BitVec 32))) (Found!3433 (index!15912 (_ BitVec 32))) (Intermediate!3433 (undefined!4245 Bool) (index!15913 (_ BitVec 32)) (x!34876 (_ BitVec 32))) (Undefined!3433) (MissingVacant!3433 (index!15914 (_ BitVec 32))) )
))
(declare-fun lt!164556 () SeekEntryResult!3433)

(get-info :version)

(assert (=> b!350316 (= res!194206 (and (not ((_ is Found!3433) lt!164556)) (not ((_ is MissingZero!3433) lt!164556)) ((_ is MissingVacant!3433) lt!164556)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18825 (_ BitVec 32)) SeekEntryResult!3433)

(assert (=> b!350316 (= lt!164556 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!194208 () Bool)

(assert (=> start!35002 (=> (not res!194208) (not e!214594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35002 (= res!194208 (validMask!0 mask!2385))))

(assert (=> start!35002 e!214594))

(assert (=> start!35002 true))

(assert (=> start!35002 tp_is_empty!7635))

(assert (=> start!35002 tp!26627))

(declare-fun array_inv!6570 (array!18827) Bool)

(assert (=> start!35002 (and (array_inv!6570 _values!1525) e!214591)))

(declare-fun array_inv!6571 (array!18825) Bool)

(assert (=> start!35002 (array_inv!6571 _keys!1895)))

(assert (= (and start!35002 res!194208) b!350314))

(assert (= (and b!350314 res!194205) b!350315))

(assert (= (and b!350315 res!194210) b!350317))

(assert (= (and b!350317 res!194204) b!350310))

(assert (= (and b!350310 res!194211) b!350320))

(assert (= (and b!350320 res!194207) b!350316))

(assert (= (and b!350316 res!194206) b!350312))

(assert (= (and b!350312 res!194209) b!350318))

(assert (= (and b!350319 condMapEmpty!12924) mapIsEmpty!12924))

(assert (= (and b!350319 (not condMapEmpty!12924)) mapNonEmpty!12924))

(assert (= (and mapNonEmpty!12924 ((_ is ValueCellFull!3474) mapValue!12924)) b!350311))

(assert (= (and b!350319 ((_ is ValueCellFull!3474) mapDefault!12924)) b!350313))

(assert (= start!35002 b!350319))

(declare-fun m!350529 () Bool)

(assert (=> b!350320 m!350529))

(assert (=> b!350320 m!350529))

(declare-fun m!350531 () Bool)

(assert (=> b!350320 m!350531))

(declare-fun m!350533 () Bool)

(assert (=> b!350315 m!350533))

(declare-fun m!350535 () Bool)

(assert (=> b!350317 m!350535))

(declare-fun m!350537 () Bool)

(assert (=> mapNonEmpty!12924 m!350537))

(declare-fun m!350539 () Bool)

(assert (=> start!35002 m!350539))

(declare-fun m!350541 () Bool)

(assert (=> start!35002 m!350541))

(declare-fun m!350543 () Bool)

(assert (=> start!35002 m!350543))

(declare-fun m!350545 () Bool)

(assert (=> b!350312 m!350545))

(declare-fun m!350547 () Bool)

(assert (=> b!350310 m!350547))

(declare-fun m!350549 () Bool)

(assert (=> b!350318 m!350549))

(declare-fun m!350551 () Bool)

(assert (=> b!350316 m!350551))

(check-sat (not b!350315) (not start!35002) (not b!350310) (not b!350318) (not mapNonEmpty!12924) (not b!350316) (not b!350320) (not b!350312) (not b_next!7683) tp_is_empty!7635 b_and!14931 (not b!350317))
(check-sat b_and!14931 (not b_next!7683))
