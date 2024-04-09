; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21938 () Bool)

(assert start!21938)

(declare-fun b!223089 () Bool)

(declare-fun b_free!5993 () Bool)

(declare-fun b_next!5993 () Bool)

(assert (=> b!223089 (= b_free!5993 (not b_next!5993))))

(declare-fun tp!21120 () Bool)

(declare-fun b_and!12909 () Bool)

(assert (=> b!223089 (= tp!21120 b_and!12909)))

(declare-fun b!223080 () Bool)

(declare-fun res!109622 () Bool)

(declare-fun e!144961 () Bool)

(assert (=> b!223080 (=> (not res!109622) (not e!144961))))

(declare-datatypes ((V!7453 0))(
  ( (V!7454 (val!2972 Int)) )
))
(declare-datatypes ((ValueCell!2584 0))(
  ( (ValueCellFull!2584 (v!4988 V!7453)) (EmptyCell!2584) )
))
(declare-datatypes ((array!10952 0))(
  ( (array!10953 (arr!5195 (Array (_ BitVec 32) ValueCell!2584)) (size!5528 (_ BitVec 32))) )
))
(declare-datatypes ((array!10954 0))(
  ( (array!10955 (arr!5196 (Array (_ BitVec 32) (_ BitVec 64))) (size!5529 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3068 0))(
  ( (LongMapFixedSize!3069 (defaultEntry!4193 Int) (mask!10017 (_ BitVec 32)) (extraKeys!3930 (_ BitVec 32)) (zeroValue!4034 V!7453) (minValue!4034 V!7453) (_size!1583 (_ BitVec 32)) (_keys!6247 array!10954) (_values!4176 array!10952) (_vacant!1583 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3068)

(declare-datatypes ((SeekEntryResult!855 0))(
  ( (MissingZero!855 (index!5590 (_ BitVec 32))) (Found!855 (index!5591 (_ BitVec 32))) (Intermediate!855 (undefined!1667 Bool) (index!5592 (_ BitVec 32)) (x!23091 (_ BitVec 32))) (Undefined!855) (MissingVacant!855 (index!5593 (_ BitVec 32))) )
))
(declare-fun lt!112850 () SeekEntryResult!855)

(assert (=> b!223080 (= res!109622 (= (select (arr!5196 (_keys!6247 thiss!1504)) (index!5590 lt!112850)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!223081 () Bool)

(declare-fun res!109621 () Bool)

(declare-fun e!144947 () Bool)

(assert (=> b!223081 (=> (not res!109621) (not e!144947))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!223081 (= res!109621 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!223082 () Bool)

(declare-fun res!109609 () Bool)

(declare-fun e!144953 () Bool)

(assert (=> b!223082 (=> res!109609 e!144953)))

(declare-datatypes ((List!3336 0))(
  ( (Nil!3333) (Cons!3332 (h!3980 (_ BitVec 64)) (t!8303 List!3336)) )
))
(declare-fun contains!1535 (List!3336 (_ BitVec 64)) Bool)

(assert (=> b!223082 (= res!109609 (contains!1535 Nil!3333 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!223083 () Bool)

(declare-datatypes ((Unit!6697 0))(
  ( (Unit!6698) )
))
(declare-fun e!144960 () Unit!6697)

(declare-fun Unit!6699 () Unit!6697)

(assert (=> b!223083 (= e!144960 Unit!6699)))

(declare-fun lt!112846 () Unit!6697)

(declare-fun lemmaArrayContainsKeyThenInListMap!68 (array!10954 array!10952 (_ BitVec 32) (_ BitVec 32) V!7453 V!7453 (_ BitVec 64) (_ BitVec 32) Int) Unit!6697)

(assert (=> b!223083 (= lt!112846 (lemmaArrayContainsKeyThenInListMap!68 (_keys!6247 thiss!1504) (_values!4176 thiss!1504) (mask!10017 thiss!1504) (extraKeys!3930 thiss!1504) (zeroValue!4034 thiss!1504) (minValue!4034 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4193 thiss!1504)))))

(assert (=> b!223083 false))

(declare-fun b!223084 () Bool)

(declare-fun res!109611 () Bool)

(assert (=> b!223084 (=> res!109611 e!144953)))

(assert (=> b!223084 (= res!109611 (not (contains!1535 Nil!3333 key!932)))))

(declare-fun b!223085 () Bool)

(declare-fun e!144948 () Bool)

(declare-fun e!144959 () Bool)

(declare-fun mapRes!9952 () Bool)

(assert (=> b!223085 (= e!144948 (and e!144959 mapRes!9952))))

(declare-fun condMapEmpty!9952 () Bool)

(declare-fun mapDefault!9952 () ValueCell!2584)

