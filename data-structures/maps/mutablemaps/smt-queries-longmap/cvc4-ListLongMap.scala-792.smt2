; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18852 () Bool)

(assert start!18852)

(declare-fun b!186164 () Bool)

(declare-fun b_free!4595 () Bool)

(declare-fun b_next!4595 () Bool)

(assert (=> b!186164 (= b_free!4595 (not b_next!4595))))

(declare-fun tp!16587 () Bool)

(declare-fun b_and!11217 () Bool)

(assert (=> b!186164 (= tp!16587 b_and!11217)))

(declare-fun mapIsEmpty!7515 () Bool)

(declare-fun mapRes!7515 () Bool)

(assert (=> mapIsEmpty!7515 mapRes!7515))

(declare-fun b!186160 () Bool)

(declare-datatypes ((Unit!5610 0))(
  ( (Unit!5611) )
))
(declare-fun e!122543 () Unit!5610)

(declare-fun lt!92077 () Unit!5610)

(assert (=> b!186160 (= e!122543 lt!92077)))

(declare-datatypes ((V!5469 0))(
  ( (V!5470 (val!2228 Int)) )
))
(declare-datatypes ((ValueCell!1840 0))(
  ( (ValueCellFull!1840 (v!4136 V!5469)) (EmptyCell!1840) )
))
(declare-datatypes ((array!7944 0))(
  ( (array!7945 (arr!3750 (Array (_ BitVec 32) (_ BitVec 64))) (size!4066 (_ BitVec 32))) )
))
(declare-datatypes ((array!7946 0))(
  ( (array!7947 (arr!3751 (Array (_ BitVec 32) ValueCell!1840)) (size!4067 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2588 0))(
  ( (LongMapFixedSize!2589 (defaultEntry!3799 Int) (mask!8921 (_ BitVec 32)) (extraKeys!3536 (_ BitVec 32)) (zeroValue!3640 V!5469) (minValue!3640 V!5469) (_size!1343 (_ BitVec 32)) (_keys!5741 array!7944) (_values!3782 array!7946) (_vacant!1343 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2588)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!146 (array!7944 array!7946 (_ BitVec 32) (_ BitVec 32) V!5469 V!5469 (_ BitVec 64) Int) Unit!5610)

(assert (=> b!186160 (= lt!92077 (lemmaInListMapThenSeekEntryOrOpenFindsIt!146 (_keys!5741 thiss!1248) (_values!3782 thiss!1248) (mask!8921 thiss!1248) (extraKeys!3536 thiss!1248) (zeroValue!3640 thiss!1248) (minValue!3640 thiss!1248) key!828 (defaultEntry!3799 thiss!1248)))))

(declare-fun res!88078 () Bool)

(declare-datatypes ((SeekEntryResult!653 0))(
  ( (MissingZero!653 (index!4782 (_ BitVec 32))) (Found!653 (index!4783 (_ BitVec 32))) (Intermediate!653 (undefined!1465 Bool) (index!4784 (_ BitVec 32)) (x!20217 (_ BitVec 32))) (Undefined!653) (MissingVacant!653 (index!4785 (_ BitVec 32))) )
))
(declare-fun lt!92079 () SeekEntryResult!653)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!186160 (= res!88078 (inRange!0 (index!4783 lt!92079) (mask!8921 thiss!1248)))))

(declare-fun e!122549 () Bool)

(assert (=> b!186160 (=> (not res!88078) (not e!122549))))

(assert (=> b!186160 e!122549))

(declare-fun b!186161 () Bool)

(declare-fun res!88079 () Bool)

(declare-fun e!122547 () Bool)

(assert (=> b!186161 (=> (not res!88079) (not e!122547))))

(assert (=> b!186161 (= res!88079 (not (= key!828 (bvneg key!828))))))

(declare-fun b!186162 () Bool)

(declare-fun e!122546 () Bool)

(declare-fun tp_is_empty!4367 () Bool)

(assert (=> b!186162 (= e!122546 tp_is_empty!4367)))

(declare-fun b!186163 () Bool)

(declare-fun e!122550 () Bool)

(declare-fun e!122541 () Bool)

(assert (=> b!186163 (= e!122550 (and e!122541 mapRes!7515))))

(declare-fun condMapEmpty!7515 () Bool)

(declare-fun mapDefault!7515 () ValueCell!1840)

