; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23194 () Bool)

(assert start!23194)

(declare-fun b!243212 () Bool)

(declare-fun b_free!6521 () Bool)

(declare-fun b_next!6521 () Bool)

(assert (=> b!243212 (= b_free!6521 (not b_next!6521))))

(declare-fun tp!22783 () Bool)

(declare-fun b_and!13519 () Bool)

(assert (=> b!243212 (= tp!22783 b_and!13519)))

(declare-fun b!243207 () Bool)

(declare-datatypes ((Unit!7505 0))(
  ( (Unit!7506) )
))
(declare-fun e!157847 () Unit!7505)

(declare-fun Unit!7507 () Unit!7505)

(assert (=> b!243207 (= e!157847 Unit!7507)))

(declare-fun lt!122110 () Unit!7505)

(declare-datatypes ((V!8157 0))(
  ( (V!8158 (val!3236 Int)) )
))
(declare-datatypes ((ValueCell!2848 0))(
  ( (ValueCellFull!2848 (v!5277 V!8157)) (EmptyCell!2848) )
))
(declare-datatypes ((array!12054 0))(
  ( (array!12055 (arr!5723 (Array (_ BitVec 32) ValueCell!2848)) (size!6065 (_ BitVec 32))) )
))
(declare-datatypes ((array!12056 0))(
  ( (array!12057 (arr!5724 (Array (_ BitVec 32) (_ BitVec 64))) (size!6066 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3596 0))(
  ( (LongMapFixedSize!3597 (defaultEntry!4507 Int) (mask!10596 (_ BitVec 32)) (extraKeys!4244 (_ BitVec 32)) (zeroValue!4348 V!8157) (minValue!4348 V!8157) (_size!1847 (_ BitVec 32)) (_keys!6617 array!12056) (_values!4490 array!12054) (_vacant!1847 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3596)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!165 (array!12056 array!12054 (_ BitVec 32) (_ BitVec 32) V!8157 V!8157 (_ BitVec 64) (_ BitVec 32) Int) Unit!7505)

(assert (=> b!243207 (= lt!122110 (lemmaArrayContainsKeyThenInListMap!165 (_keys!6617 thiss!1504) (_values!4490 thiss!1504) (mask!10596 thiss!1504) (extraKeys!4244 thiss!1504) (zeroValue!4348 thiss!1504) (minValue!4348 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4507 thiss!1504)))))

(assert (=> b!243207 false))

(declare-fun b!243208 () Bool)

(declare-fun e!157856 () Bool)

(declare-fun call!22675 () Bool)

(assert (=> b!243208 (= e!157856 (not call!22675))))

(declare-fun b!243209 () Bool)

(declare-fun e!157846 () Bool)

(declare-datatypes ((List!3665 0))(
  ( (Nil!3662) (Cons!3661 (h!4318 (_ BitVec 64)) (t!8678 List!3665)) )
))
(declare-fun contains!1752 (List!3665 (_ BitVec 64)) Bool)

(assert (=> b!243209 (= e!157846 (not (contains!1752 Nil!3662 key!932)))))

(declare-fun b!243210 () Bool)

(declare-fun res!119222 () Bool)

(declare-fun e!157858 () Bool)

(assert (=> b!243210 (=> (not res!119222) (not e!157858))))

(declare-fun noDuplicate!95 (List!3665) Bool)

(assert (=> b!243210 (= res!119222 (noDuplicate!95 Nil!3662))))

(declare-fun b!243211 () Bool)

(declare-fun res!119224 () Bool)

(assert (=> b!243211 (=> (not res!119224) (not e!157858))))

(declare-fun e!157843 () Bool)

(assert (=> b!243211 (= res!119224 e!157843)))

(declare-fun res!119217 () Bool)

(assert (=> b!243211 (=> res!119217 e!157843)))

(declare-fun e!157844 () Bool)

(assert (=> b!243211 (= res!119217 e!157844)))

(declare-fun res!119226 () Bool)

(assert (=> b!243211 (=> (not res!119226) (not e!157844))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!243211 (= res!119226 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun tp_is_empty!6383 () Bool)

(declare-fun e!157845 () Bool)

(declare-fun e!157853 () Bool)

(declare-fun array_inv!3777 (array!12056) Bool)

(declare-fun array_inv!3778 (array!12054) Bool)

(assert (=> b!243212 (= e!157845 (and tp!22783 tp_is_empty!6383 (array_inv!3777 (_keys!6617 thiss!1504)) (array_inv!3778 (_values!4490 thiss!1504)) e!157853))))

(declare-fun b!243213 () Bool)

(declare-fun e!157855 () Bool)

(assert (=> b!243213 (= e!157855 tp_is_empty!6383)))

(declare-fun b!243214 () Bool)

(declare-fun e!157860 () Bool)

(declare-fun e!157857 () Bool)

(assert (=> b!243214 (= e!157860 e!157857)))

(declare-fun res!119214 () Bool)

(declare-fun call!22674 () Bool)

(assert (=> b!243214 (= res!119214 call!22674)))

(assert (=> b!243214 (=> (not res!119214) (not e!157857))))

(declare-fun b!243215 () Bool)

(declare-fun e!157849 () Bool)

(assert (=> b!243215 (= e!157849 tp_is_empty!6383)))

(declare-fun b!243216 () Bool)

(declare-fun res!119219 () Bool)

(declare-datatypes ((SeekEntryResult!1081 0))(
  ( (MissingZero!1081 (index!6494 (_ BitVec 32))) (Found!1081 (index!6495 (_ BitVec 32))) (Intermediate!1081 (undefined!1893 Bool) (index!6496 (_ BitVec 32)) (x!24323 (_ BitVec 32))) (Undefined!1081) (MissingVacant!1081 (index!6497 (_ BitVec 32))) )
))
(declare-fun lt!122112 () SeekEntryResult!1081)

(assert (=> b!243216 (= res!119219 (= (select (arr!5724 (_keys!6617 thiss!1504)) (index!6497 lt!122112)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!243216 (=> (not res!119219) (not e!157857))))

(declare-fun b!243217 () Bool)

(assert (=> b!243217 (= e!157860 (is-Undefined!1081 lt!122112))))

(declare-fun b!243218 () Bool)

(assert (=> b!243218 (= e!157857 (not call!22675))))

(declare-fun b!243219 () Bool)

(declare-fun mapRes!10822 () Bool)

(assert (=> b!243219 (= e!157853 (and e!157855 mapRes!10822))))

(declare-fun condMapEmpty!10822 () Bool)

(declare-fun mapDefault!10822 () ValueCell!2848)

