; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34330 () Bool)

(assert start!34330)

(declare-fun b_free!7297 () Bool)

(declare-fun b_next!7297 () Bool)

(assert (=> start!34330 (= b_free!7297 (not b_next!7297))))

(declare-fun tp!25431 () Bool)

(declare-fun b_and!14519 () Bool)

(assert (=> start!34330 (= tp!25431 b_and!14519)))

(declare-fun b!342384 () Bool)

(declare-datatypes ((Unit!10663 0))(
  ( (Unit!10664) )
))
(declare-fun e!209968 () Unit!10663)

(declare-fun Unit!10665 () Unit!10663)

(assert (=> b!342384 (= e!209968 Unit!10665)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10643 0))(
  ( (V!10644 (val!3669 Int)) )
))
(declare-fun zeroValue!1467 () V!10643)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3281 0))(
  ( (ValueCellFull!3281 (v!5839 V!10643)) (EmptyCell!3281) )
))
(declare-datatypes ((array!18065 0))(
  ( (array!18066 (arr!8548 (Array (_ BitVec 32) ValueCell!3281)) (size!8900 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18065)

(declare-datatypes ((array!18067 0))(
  ( (array!18068 (arr!8549 (Array (_ BitVec 32) (_ BitVec 64))) (size!8901 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18067)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10643)

(declare-fun lt!162156 () Unit!10663)

(declare-fun lemmaArrayContainsKeyThenInListMap!303 (array!18067 array!18065 (_ BitVec 32) (_ BitVec 32) V!10643 V!10643 (_ BitVec 64) (_ BitVec 32) Int) Unit!10663)

(declare-fun arrayScanForKey!0 (array!18067 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342384 (= lt!162156 (lemmaArrayContainsKeyThenInListMap!303 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342384 false))

(declare-fun b!342385 () Bool)

(declare-fun e!209971 () Bool)

(declare-fun e!209973 () Bool)

(assert (=> b!342385 (= e!209971 e!209973)))

(declare-fun res!189333 () Bool)

(assert (=> b!342385 (=> (not res!189333) (not e!209973))))

(declare-datatypes ((SeekEntryResult!3297 0))(
  ( (MissingZero!3297 (index!15367 (_ BitVec 32))) (Found!3297 (index!15368 (_ BitVec 32))) (Intermediate!3297 (undefined!4109 Bool) (index!15369 (_ BitVec 32)) (x!34098 (_ BitVec 32))) (Undefined!3297) (MissingVacant!3297 (index!15370 (_ BitVec 32))) )
))
(declare-fun lt!162155 () SeekEntryResult!3297)

(assert (=> b!342385 (= res!189333 (and (not (is-Found!3297 lt!162155)) (not (is-MissingZero!3297 lt!162155)) (is-MissingVacant!3297 lt!162155)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18067 (_ BitVec 32)) SeekEntryResult!3297)

(assert (=> b!342385 (= lt!162155 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!342386 () Bool)

(declare-fun e!209970 () Bool)

(declare-fun tp_is_empty!7249 () Bool)

(assert (=> b!342386 (= e!209970 tp_is_empty!7249)))

(declare-fun b!342387 () Bool)

(declare-fun res!189329 () Bool)

(assert (=> b!342387 (=> (not res!189329) (not e!209971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18067 (_ BitVec 32)) Bool)

(assert (=> b!342387 (= res!189329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12306 () Bool)

(declare-fun mapRes!12306 () Bool)

(declare-fun tp!25430 () Bool)

(assert (=> mapNonEmpty!12306 (= mapRes!12306 (and tp!25430 e!209970))))

(declare-fun mapRest!12306 () (Array (_ BitVec 32) ValueCell!3281))

(declare-fun mapValue!12306 () ValueCell!3281)

(declare-fun mapKey!12306 () (_ BitVec 32))

(assert (=> mapNonEmpty!12306 (= (arr!8548 _values!1525) (store mapRest!12306 mapKey!12306 mapValue!12306))))

(declare-fun res!189330 () Bool)

(assert (=> start!34330 (=> (not res!189330) (not e!209971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34330 (= res!189330 (validMask!0 mask!2385))))

(assert (=> start!34330 e!209971))

(assert (=> start!34330 true))

(assert (=> start!34330 tp_is_empty!7249))

(assert (=> start!34330 tp!25431))

(declare-fun e!209967 () Bool)

(declare-fun array_inv!6318 (array!18065) Bool)

(assert (=> start!34330 (and (array_inv!6318 _values!1525) e!209967)))

(declare-fun array_inv!6319 (array!18067) Bool)

(assert (=> start!34330 (array_inv!6319 _keys!1895)))

(declare-fun b!342388 () Bool)

(declare-fun res!189335 () Bool)

(assert (=> b!342388 (=> (not res!189335) (not e!209971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342388 (= res!189335 (validKeyInArray!0 k!1348))))

(declare-fun b!342389 () Bool)

(declare-fun res!189334 () Bool)

(assert (=> b!342389 (=> (not res!189334) (not e!209971))))

(declare-datatypes ((List!4947 0))(
  ( (Nil!4944) (Cons!4943 (h!5799 (_ BitVec 64)) (t!10067 List!4947)) )
))
(declare-fun arrayNoDuplicates!0 (array!18067 (_ BitVec 32) List!4947) Bool)

(assert (=> b!342389 (= res!189334 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4944))))

(declare-fun b!342390 () Bool)

(declare-fun Unit!10666 () Unit!10663)

(assert (=> b!342390 (= e!209968 Unit!10666)))

(declare-fun b!342391 () Bool)

(declare-fun e!209969 () Bool)

(assert (=> b!342391 (= e!209969 tp_is_empty!7249)))

(declare-fun b!342392 () Bool)

(declare-fun res!189332 () Bool)

(assert (=> b!342392 (=> (not res!189332) (not e!209971))))

(declare-datatypes ((tuple2!5306 0))(
  ( (tuple2!5307 (_1!2663 (_ BitVec 64)) (_2!2663 V!10643)) )
))
(declare-datatypes ((List!4948 0))(
  ( (Nil!4945) (Cons!4944 (h!5800 tuple2!5306) (t!10068 List!4948)) )
))
(declare-datatypes ((ListLongMap!4233 0))(
  ( (ListLongMap!4234 (toList!2132 List!4948)) )
))
(declare-fun contains!2184 (ListLongMap!4233 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1652 (array!18067 array!18065 (_ BitVec 32) (_ BitVec 32) V!10643 V!10643 (_ BitVec 32) Int) ListLongMap!4233)

(assert (=> b!342392 (= res!189332 (not (contains!2184 (getCurrentListMap!1652 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12306 () Bool)

(assert (=> mapIsEmpty!12306 mapRes!12306))

(declare-fun b!342393 () Bool)

(assert (=> b!342393 (= e!209973 false)))

(declare-fun lt!162154 () Unit!10663)

(assert (=> b!342393 (= lt!162154 e!209968)))

(declare-fun c!52748 () Bool)

(declare-fun arrayContainsKey!0 (array!18067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342393 (= c!52748 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!342394 () Bool)

(assert (=> b!342394 (= e!209967 (and e!209969 mapRes!12306))))

(declare-fun condMapEmpty!12306 () Bool)

(declare-fun mapDefault!12306 () ValueCell!3281)

