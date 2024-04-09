; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23498 () Bool)

(assert start!23498)

(declare-fun b!246610 () Bool)

(declare-fun b_free!6571 () Bool)

(declare-fun b_next!6571 () Bool)

(assert (=> b!246610 (= b_free!6571 (not b_next!6571))))

(declare-fun tp!22954 () Bool)

(declare-fun b_and!13587 () Bool)

(assert (=> b!246610 (= tp!22954 b_and!13587)))

(declare-fun b!246602 () Bool)

(declare-fun e!159996 () Bool)

(declare-fun e!159997 () Bool)

(assert (=> b!246602 (= e!159996 e!159997)))

(declare-fun res!120925 () Bool)

(assert (=> b!246602 (=> (not res!120925) (not e!159997))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8225 0))(
  ( (V!8226 (val!3261 Int)) )
))
(declare-datatypes ((ValueCell!2873 0))(
  ( (ValueCellFull!2873 (v!5313 V!8225)) (EmptyCell!2873) )
))
(declare-datatypes ((array!12168 0))(
  ( (array!12169 (arr!5773 (Array (_ BitVec 32) ValueCell!2873)) (size!6116 (_ BitVec 32))) )
))
(declare-datatypes ((array!12170 0))(
  ( (array!12171 (arr!5774 (Array (_ BitVec 32) (_ BitVec 64))) (size!6117 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3646 0))(
  ( (LongMapFixedSize!3647 (defaultEntry!4564 Int) (mask!10692 (_ BitVec 32)) (extraKeys!4301 (_ BitVec 32)) (zeroValue!4405 V!8225) (minValue!4405 V!8225) (_size!1872 (_ BitVec 32)) (_keys!6684 array!12170) (_values!4547 array!12168) (_vacant!1872 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3646)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!246602 (= res!120925 (inRange!0 index!297 (mask!10692 thiss!1504)))))

(declare-datatypes ((Unit!7613 0))(
  ( (Unit!7614) )
))
(declare-fun lt!123556 () Unit!7613)

(declare-fun e!159984 () Unit!7613)

(assert (=> b!246602 (= lt!123556 e!159984)))

(declare-fun c!41238 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4794 0))(
  ( (tuple2!4795 (_1!2407 (_ BitVec 64)) (_2!2407 V!8225)) )
))
(declare-datatypes ((List!3700 0))(
  ( (Nil!3697) (Cons!3696 (h!4354 tuple2!4794) (t!8727 List!3700)) )
))
(declare-datatypes ((ListLongMap!3721 0))(
  ( (ListLongMap!3722 (toList!1876 List!3700)) )
))
(declare-fun contains!1782 (ListLongMap!3721 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1399 (array!12170 array!12168 (_ BitVec 32) (_ BitVec 32) V!8225 V!8225 (_ BitVec 32) Int) ListLongMap!3721)

(assert (=> b!246602 (= c!41238 (contains!1782 (getCurrentListMap!1399 (_keys!6684 thiss!1504) (_values!4547 thiss!1504) (mask!10692 thiss!1504) (extraKeys!4301 thiss!1504) (zeroValue!4405 thiss!1504) (minValue!4405 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4564 thiss!1504)) key!932))))

(declare-fun b!246603 () Bool)

(declare-fun e!159985 () Unit!7613)

(declare-fun Unit!7615 () Unit!7613)

(assert (=> b!246603 (= e!159985 Unit!7615)))

(declare-fun lt!123561 () Unit!7613)

(declare-fun lemmaArrayContainsKeyThenInListMap!180 (array!12170 array!12168 (_ BitVec 32) (_ BitVec 32) V!8225 V!8225 (_ BitVec 64) (_ BitVec 32) Int) Unit!7613)

(assert (=> b!246603 (= lt!123561 (lemmaArrayContainsKeyThenInListMap!180 (_keys!6684 thiss!1504) (_values!4547 thiss!1504) (mask!10692 thiss!1504) (extraKeys!4301 thiss!1504) (zeroValue!4405 thiss!1504) (minValue!4405 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4564 thiss!1504)))))

(assert (=> b!246603 false))

(declare-fun b!246604 () Bool)

(declare-fun e!159986 () Bool)

(declare-fun e!159983 () Bool)

(declare-fun mapRes!10919 () Bool)

(assert (=> b!246604 (= e!159986 (and e!159983 mapRes!10919))))

(declare-fun condMapEmpty!10919 () Bool)

(declare-fun mapDefault!10919 () ValueCell!2873)

