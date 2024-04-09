; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21872 () Bool)

(assert start!21872)

(declare-fun b!220562 () Bool)

(declare-fun b_free!5927 () Bool)

(declare-fun b_next!5927 () Bool)

(assert (=> b!220562 (= b_free!5927 (not b_next!5927))))

(declare-fun tp!20922 () Bool)

(declare-fun b_and!12843 () Bool)

(assert (=> b!220562 (= tp!20922 b_and!12843)))

(declare-fun b!220544 () Bool)

(declare-fun e!143396 () Bool)

(declare-fun call!20613 () Bool)

(assert (=> b!220544 (= e!143396 (not call!20613))))

(declare-fun b!220545 () Bool)

(declare-datatypes ((Unit!6576 0))(
  ( (Unit!6577) )
))
(declare-fun e!143403 () Unit!6576)

(declare-fun Unit!6578 () Unit!6576)

(assert (=> b!220545 (= e!143403 Unit!6578)))

(declare-fun lt!112238 () Unit!6576)

(declare-datatypes ((V!7365 0))(
  ( (V!7366 (val!2939 Int)) )
))
(declare-datatypes ((ValueCell!2551 0))(
  ( (ValueCellFull!2551 (v!4955 V!7365)) (EmptyCell!2551) )
))
(declare-datatypes ((array!10820 0))(
  ( (array!10821 (arr!5129 (Array (_ BitVec 32) ValueCell!2551)) (size!5462 (_ BitVec 32))) )
))
(declare-datatypes ((array!10822 0))(
  ( (array!10823 (arr!5130 (Array (_ BitVec 32) (_ BitVec 64))) (size!5463 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3002 0))(
  ( (LongMapFixedSize!3003 (defaultEntry!4160 Int) (mask!9962 (_ BitVec 32)) (extraKeys!3897 (_ BitVec 32)) (zeroValue!4001 V!7365) (minValue!4001 V!7365) (_size!1550 (_ BitVec 32)) (_keys!6214 array!10822) (_values!4143 array!10820) (_vacant!1550 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3002)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!205 (array!10822 array!10820 (_ BitVec 32) (_ BitVec 32) V!7365 V!7365 (_ BitVec 64) Int) Unit!6576)

(assert (=> b!220545 (= lt!112238 (lemmaInListMapThenSeekEntryOrOpenFindsIt!205 (_keys!6214 thiss!1504) (_values!4143 thiss!1504) (mask!9962 thiss!1504) (extraKeys!3897 thiss!1504) (zeroValue!4001 thiss!1504) (minValue!4001 thiss!1504) key!932 (defaultEntry!4160 thiss!1504)))))

(assert (=> b!220545 false))

(declare-fun b!220546 () Bool)

(declare-fun e!143407 () Bool)

(declare-fun e!143398 () Bool)

(declare-fun mapRes!9853 () Bool)

(assert (=> b!220546 (= e!143407 (and e!143398 mapRes!9853))))

(declare-fun condMapEmpty!9853 () Bool)

(declare-fun mapDefault!9853 () ValueCell!2551)

