; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34442 () Bool)

(assert start!34442)

(declare-fun b_free!7357 () Bool)

(declare-fun b_next!7357 () Bool)

(assert (=> start!34442 (= b_free!7357 (not b_next!7357))))

(declare-fun tp!25616 () Bool)

(declare-fun b_and!14583 () Bool)

(assert (=> start!34442 (= tp!25616 b_and!14583)))

(declare-fun b!343664 () Bool)

(declare-fun e!210722 () Bool)

(assert (=> b!343664 (= e!210722 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3320 0))(
  ( (MissingZero!3320 (index!15459 (_ BitVec 32))) (Found!3320 (index!15460 (_ BitVec 32))) (Intermediate!3320 (undefined!4132 Bool) (index!15461 (_ BitVec 32)) (x!34221 (_ BitVec 32))) (Undefined!3320) (MissingVacant!3320 (index!15462 (_ BitVec 32))) )
))
(declare-fun lt!162570 () SeekEntryResult!3320)

(declare-datatypes ((array!18181 0))(
  ( (array!18182 (arr!8604 (Array (_ BitVec 32) (_ BitVec 64))) (size!8956 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18181)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18181 (_ BitVec 32)) SeekEntryResult!3320)

(assert (=> b!343664 (= lt!162570 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343665 () Bool)

(declare-fun res!190059 () Bool)

(assert (=> b!343665 (=> (not res!190059) (not e!210722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343665 (= res!190059 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12402 () Bool)

(declare-fun mapRes!12402 () Bool)

(assert (=> mapIsEmpty!12402 mapRes!12402))

(declare-fun b!343666 () Bool)

(declare-fun res!190063 () Bool)

(assert (=> b!343666 (=> (not res!190063) (not e!210722))))

(declare-datatypes ((V!10723 0))(
  ( (V!10724 (val!3699 Int)) )
))
(declare-fun zeroValue!1467 () V!10723)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3311 0))(
  ( (ValueCellFull!3311 (v!5871 V!10723)) (EmptyCell!3311) )
))
(declare-datatypes ((array!18183 0))(
  ( (array!18184 (arr!8605 (Array (_ BitVec 32) ValueCell!3311)) (size!8957 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18183)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10723)

(declare-datatypes ((tuple2!5346 0))(
  ( (tuple2!5347 (_1!2683 (_ BitVec 64)) (_2!2683 V!10723)) )
))
(declare-datatypes ((List!4991 0))(
  ( (Nil!4988) (Cons!4987 (h!5843 tuple2!5346) (t!10115 List!4991)) )
))
(declare-datatypes ((ListLongMap!4273 0))(
  ( (ListLongMap!4274 (toList!2152 List!4991)) )
))
(declare-fun contains!2206 (ListLongMap!4273 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1672 (array!18181 array!18183 (_ BitVec 32) (_ BitVec 32) V!10723 V!10723 (_ BitVec 32) Int) ListLongMap!4273)

(assert (=> b!343666 (= res!190063 (not (contains!2206 (getCurrentListMap!1672 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!343667 () Bool)

(declare-fun e!210723 () Bool)

(declare-fun tp_is_empty!7309 () Bool)

(assert (=> b!343667 (= e!210723 tp_is_empty!7309)))

(declare-fun res!190062 () Bool)

(assert (=> start!34442 (=> (not res!190062) (not e!210722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34442 (= res!190062 (validMask!0 mask!2385))))

(assert (=> start!34442 e!210722))

(assert (=> start!34442 true))

(assert (=> start!34442 tp_is_empty!7309))

(assert (=> start!34442 tp!25616))

(declare-fun e!210719 () Bool)

(declare-fun array_inv!6364 (array!18183) Bool)

(assert (=> start!34442 (and (array_inv!6364 _values!1525) e!210719)))

(declare-fun array_inv!6365 (array!18181) Bool)

(assert (=> start!34442 (array_inv!6365 _keys!1895)))

(declare-fun b!343668 () Bool)

(declare-fun res!190060 () Bool)

(assert (=> b!343668 (=> (not res!190060) (not e!210722))))

(declare-datatypes ((List!4992 0))(
  ( (Nil!4989) (Cons!4988 (h!5844 (_ BitVec 64)) (t!10116 List!4992)) )
))
(declare-fun arrayNoDuplicates!0 (array!18181 (_ BitVec 32) List!4992) Bool)

(assert (=> b!343668 (= res!190060 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4989))))

(declare-fun b!343669 () Bool)

(declare-fun res!190064 () Bool)

(assert (=> b!343669 (=> (not res!190064) (not e!210722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18181 (_ BitVec 32)) Bool)

(assert (=> b!343669 (= res!190064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343670 () Bool)

(declare-fun e!210721 () Bool)

(assert (=> b!343670 (= e!210719 (and e!210721 mapRes!12402))))

(declare-fun condMapEmpty!12402 () Bool)

(declare-fun mapDefault!12402 () ValueCell!3311)

