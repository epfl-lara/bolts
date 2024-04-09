; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35000 () Bool)

(assert start!35000)

(declare-fun b_free!7681 () Bool)

(declare-fun b_next!7681 () Bool)

(assert (=> start!35000 (= b_free!7681 (not b_next!7681))))

(declare-fun tp!26622 () Bool)

(declare-fun b_and!14929 () Bool)

(assert (=> start!35000 (= tp!26622 b_and!14929)))

(declare-fun b!350277 () Bool)

(declare-fun res!194186 () Bool)

(declare-fun e!214572 () Bool)

(assert (=> b!350277 (=> (not res!194186) (not e!214572))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11155 0))(
  ( (V!11156 (val!3861 Int)) )
))
(declare-datatypes ((ValueCell!3473 0))(
  ( (ValueCellFull!3473 (v!6044 V!11155)) (EmptyCell!3473) )
))
(declare-datatypes ((array!18821 0))(
  ( (array!18822 (arr!8913 (Array (_ BitVec 32) ValueCell!3473)) (size!9265 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18821)

(declare-datatypes ((array!18823 0))(
  ( (array!18824 (arr!8914 (Array (_ BitVec 32) (_ BitVec 64))) (size!9266 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18823)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!350277 (= res!194186 (and (= (size!9265 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9266 _keys!1895) (size!9265 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12921 () Bool)

(declare-fun mapRes!12921 () Bool)

(assert (=> mapIsEmpty!12921 mapRes!12921))

(declare-fun mapNonEmpty!12921 () Bool)

(declare-fun tp!26621 () Bool)

(declare-fun e!214574 () Bool)

(assert (=> mapNonEmpty!12921 (= mapRes!12921 (and tp!26621 e!214574))))

(declare-fun mapRest!12921 () (Array (_ BitVec 32) ValueCell!3473))

(declare-fun mapKey!12921 () (_ BitVec 32))

(declare-fun mapValue!12921 () ValueCell!3473)

(assert (=> mapNonEmpty!12921 (= (arr!8913 _values!1525) (store mapRest!12921 mapKey!12921 mapValue!12921))))

(declare-fun b!350278 () Bool)

(declare-fun res!194184 () Bool)

(assert (=> b!350278 (=> (not res!194184) (not e!214572))))

(declare-datatypes ((List!5209 0))(
  ( (Nil!5206) (Cons!5205 (h!6061 (_ BitVec 64)) (t!10355 List!5209)) )
))
(declare-fun arrayNoDuplicates!0 (array!18823 (_ BitVec 32) List!5209) Bool)

(assert (=> b!350278 (= res!194184 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5206))))

(declare-fun b!350279 () Bool)

(declare-fun res!194187 () Bool)

(declare-fun e!214573 () Bool)

(assert (=> b!350279 (=> (not res!194187) (not e!214573))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350279 (= res!194187 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!350280 () Bool)

(declare-fun e!214575 () Bool)

(declare-fun tp_is_empty!7633 () Bool)

(assert (=> b!350280 (= e!214575 tp_is_empty!7633)))

(declare-fun b!350281 () Bool)

(assert (=> b!350281 (= e!214572 e!214573)))

(declare-fun res!194180 () Bool)

(assert (=> b!350281 (=> (not res!194180) (not e!214573))))

(declare-datatypes ((SeekEntryResult!3432 0))(
  ( (MissingZero!3432 (index!15907 (_ BitVec 32))) (Found!3432 (index!15908 (_ BitVec 32))) (Intermediate!3432 (undefined!4244 Bool) (index!15909 (_ BitVec 32)) (x!34875 (_ BitVec 32))) (Undefined!3432) (MissingVacant!3432 (index!15910 (_ BitVec 32))) )
))
(declare-fun lt!164550 () SeekEntryResult!3432)

(assert (=> b!350281 (= res!194180 (and (not (is-Found!3432 lt!164550)) (not (is-MissingZero!3432 lt!164550)) (is-MissingVacant!3432 lt!164550)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18823 (_ BitVec 32)) SeekEntryResult!3432)

(assert (=> b!350281 (= lt!164550 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!194185 () Bool)

(assert (=> start!35000 (=> (not res!194185) (not e!214572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35000 (= res!194185 (validMask!0 mask!2385))))

(assert (=> start!35000 e!214572))

(assert (=> start!35000 true))

(assert (=> start!35000 tp_is_empty!7633))

(assert (=> start!35000 tp!26622))

(declare-fun e!214576 () Bool)

(declare-fun array_inv!6568 (array!18821) Bool)

(assert (=> start!35000 (and (array_inv!6568 _values!1525) e!214576)))

(declare-fun array_inv!6569 (array!18823) Bool)

(assert (=> start!35000 (array_inv!6569 _keys!1895)))

(declare-fun b!350282 () Bool)

(assert (=> b!350282 (= e!214573 false)))

(declare-fun lt!164549 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18823 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350282 (= lt!164549 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!350283 () Bool)

(assert (=> b!350283 (= e!214574 tp_is_empty!7633)))

(declare-fun b!350284 () Bool)

(declare-fun res!194182 () Bool)

(assert (=> b!350284 (=> (not res!194182) (not e!214572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18823 (_ BitVec 32)) Bool)

(assert (=> b!350284 (= res!194182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350285 () Bool)

(declare-fun res!194183 () Bool)

(assert (=> b!350285 (=> (not res!194183) (not e!214572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350285 (= res!194183 (validKeyInArray!0 k!1348))))

(declare-fun b!350286 () Bool)

(declare-fun res!194181 () Bool)

(assert (=> b!350286 (=> (not res!194181) (not e!214572))))

(declare-fun zeroValue!1467 () V!11155)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11155)

(declare-datatypes ((tuple2!5570 0))(
  ( (tuple2!5571 (_1!2795 (_ BitVec 64)) (_2!2795 V!11155)) )
))
(declare-datatypes ((List!5210 0))(
  ( (Nil!5207) (Cons!5206 (h!6062 tuple2!5570) (t!10356 List!5210)) )
))
(declare-datatypes ((ListLongMap!4497 0))(
  ( (ListLongMap!4498 (toList!2264 List!5210)) )
))
(declare-fun contains!2329 (ListLongMap!4497 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1781 (array!18823 array!18821 (_ BitVec 32) (_ BitVec 32) V!11155 V!11155 (_ BitVec 32) Int) ListLongMap!4497)

(assert (=> b!350286 (= res!194181 (not (contains!2329 (getCurrentListMap!1781 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!350287 () Bool)

(assert (=> b!350287 (= e!214576 (and e!214575 mapRes!12921))))

(declare-fun condMapEmpty!12921 () Bool)

(declare-fun mapDefault!12921 () ValueCell!3473)

