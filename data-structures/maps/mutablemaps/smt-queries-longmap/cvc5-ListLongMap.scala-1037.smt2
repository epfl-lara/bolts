; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21916 () Bool)

(assert start!21916)

(declare-fun b!222131 () Bool)

(declare-fun b_free!5971 () Bool)

(declare-fun b_next!5971 () Bool)

(assert (=> b!222131 (= b_free!5971 (not b_next!5971))))

(declare-fun tp!21055 () Bool)

(declare-fun b_and!12887 () Bool)

(assert (=> b!222131 (= tp!21055 b_and!12887)))

(declare-fun b!222116 () Bool)

(declare-datatypes ((Unit!6650 0))(
  ( (Unit!6651) )
))
(declare-fun e!144364 () Unit!6650)

(declare-fun Unit!6652 () Unit!6650)

(assert (=> b!222116 (= e!144364 Unit!6652)))

(declare-fun lt!112606 () Unit!6650)

(declare-datatypes ((V!7425 0))(
  ( (V!7426 (val!2961 Int)) )
))
(declare-datatypes ((ValueCell!2573 0))(
  ( (ValueCellFull!2573 (v!4977 V!7425)) (EmptyCell!2573) )
))
(declare-datatypes ((array!10908 0))(
  ( (array!10909 (arr!5173 (Array (_ BitVec 32) ValueCell!2573)) (size!5506 (_ BitVec 32))) )
))
(declare-datatypes ((array!10910 0))(
  ( (array!10911 (arr!5174 (Array (_ BitVec 32) (_ BitVec 64))) (size!5507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3046 0))(
  ( (LongMapFixedSize!3047 (defaultEntry!4182 Int) (mask!10000 (_ BitVec 32)) (extraKeys!3919 (_ BitVec 32)) (zeroValue!4023 V!7425) (minValue!4023 V!7425) (_size!1572 (_ BitVec 32)) (_keys!6236 array!10910) (_values!4165 array!10908) (_vacant!1572 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3046)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!58 (array!10910 array!10908 (_ BitVec 32) (_ BitVec 32) V!7425 V!7425 (_ BitVec 64) (_ BitVec 32) Int) Unit!6650)

(assert (=> b!222116 (= lt!112606 (lemmaArrayContainsKeyThenInListMap!58 (_keys!6236 thiss!1504) (_values!4165 thiss!1504) (mask!10000 thiss!1504) (extraKeys!3919 thiss!1504) (zeroValue!4023 thiss!1504) (minValue!4023 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4182 thiss!1504)))))

(assert (=> b!222116 false))

(declare-fun b!222118 () Bool)

(declare-fun e!144358 () Bool)

(declare-fun e!144353 () Bool)

(assert (=> b!222118 (= e!144358 e!144353)))

(declare-fun res!109050 () Bool)

(declare-fun call!20746 () Bool)

(assert (=> b!222118 (= res!109050 call!20746)))

(assert (=> b!222118 (=> (not res!109050) (not e!144353))))

(declare-fun b!222119 () Bool)

(declare-fun call!20745 () Bool)

(assert (=> b!222119 (= e!144353 (not call!20745))))

(declare-fun bm!20742 () Bool)

(declare-fun c!36904 () Bool)

(declare-datatypes ((SeekEntryResult!844 0))(
  ( (MissingZero!844 (index!5546 (_ BitVec 32))) (Found!844 (index!5547 (_ BitVec 32))) (Intermediate!844 (undefined!1656 Bool) (index!5548 (_ BitVec 32)) (x!23056 (_ BitVec 32))) (Undefined!844) (MissingVacant!844 (index!5549 (_ BitVec 32))) )
))
(declare-fun lt!112608 () SeekEntryResult!844)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20742 (= call!20746 (inRange!0 (ite c!36904 (index!5546 lt!112608) (index!5549 lt!112608)) (mask!10000 thiss!1504)))))

(declare-fun b!222120 () Bool)

(assert (=> b!222120 (= e!144358 (is-Undefined!844 lt!112608))))

(declare-fun b!222121 () Bool)

(declare-fun e!144370 () Bool)

(declare-datatypes ((List!3320 0))(
  ( (Nil!3317) (Cons!3316 (h!3964 (_ BitVec 64)) (t!8287 List!3320)) )
))
(declare-fun contains!1519 (List!3320 (_ BitVec 64)) Bool)

(assert (=> b!222121 (= e!144370 (not (contains!1519 Nil!3317 key!932)))))

(declare-fun b!222122 () Bool)

(declare-fun e!144356 () Bool)

(declare-fun tp_is_empty!5833 () Bool)

(assert (=> b!222122 (= e!144356 tp_is_empty!5833)))

(declare-fun b!222123 () Bool)

(declare-fun e!144355 () Bool)

(declare-fun mapRes!9919 () Bool)

(assert (=> b!222123 (= e!144355 (and e!144356 mapRes!9919))))

(declare-fun condMapEmpty!9919 () Bool)

(declare-fun mapDefault!9919 () ValueCell!2573)

