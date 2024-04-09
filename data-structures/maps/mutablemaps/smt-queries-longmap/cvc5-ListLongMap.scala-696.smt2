; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16692 () Bool)

(assert start!16692)

(declare-fun b!166981 () Bool)

(declare-fun b_free!3985 () Bool)

(declare-fun b_next!3985 () Bool)

(assert (=> b!166981 (= b_free!3985 (not b_next!3985))))

(declare-fun tp!14555 () Bool)

(declare-fun b_and!10417 () Bool)

(assert (=> b!166981 (= tp!14555 b_and!10417)))

(declare-fun b!166975 () Bool)

(declare-fun res!79408 () Bool)

(declare-fun e!109625 () Bool)

(assert (=> b!166975 (=> (not res!79408) (not e!109625))))

(declare-datatypes ((V!4697 0))(
  ( (V!4698 (val!1938 Int)) )
))
(declare-datatypes ((ValueCell!1550 0))(
  ( (ValueCellFull!1550 (v!3799 V!4697)) (EmptyCell!1550) )
))
(declare-datatypes ((array!6670 0))(
  ( (array!6671 (arr!3170 (Array (_ BitVec 32) (_ BitVec 64))) (size!3458 (_ BitVec 32))) )
))
(declare-datatypes ((array!6672 0))(
  ( (array!6673 (arr!3171 (Array (_ BitVec 32) ValueCell!1550)) (size!3459 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2008 0))(
  ( (LongMapFixedSize!2009 (defaultEntry!3446 Int) (mask!8187 (_ BitVec 32)) (extraKeys!3187 (_ BitVec 32)) (zeroValue!3289 V!4697) (minValue!3289 V!4697) (_size!1053 (_ BitVec 32)) (_keys!5271 array!6670) (_values!3429 array!6672) (_vacant!1053 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2008)

(assert (=> b!166975 (= res!79408 (and (= (size!3459 (_values!3429 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8187 thiss!1248))) (= (size!3458 (_keys!5271 thiss!1248)) (size!3459 (_values!3429 thiss!1248))) (bvsge (mask!8187 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3187 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3187 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun b!166976 () Bool)

(declare-datatypes ((SeekEntryResult!479 0))(
  ( (MissingZero!479 (index!4084 (_ BitVec 32))) (Found!479 (index!4085 (_ BitVec 32))) (Intermediate!479 (undefined!1291 Bool) (index!4086 (_ BitVec 32)) (x!18499 (_ BitVec 32))) (Undefined!479) (MissingVacant!479 (index!4087 (_ BitVec 32))) )
))
(declare-fun lt!83553 () SeekEntryResult!479)

(declare-fun e!109627 () Bool)

(assert (=> b!166976 (= e!109627 (= (select (arr!3170 (_keys!5271 thiss!1248)) (index!4085 lt!83553)) key!828))))

(declare-fun b!166977 () Bool)

(declare-fun e!109626 () Bool)

(assert (=> b!166977 (= e!109626 e!109625)))

(declare-fun res!79409 () Bool)

(assert (=> b!166977 (=> (not res!79409) (not e!109625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166977 (= res!79409 (validMask!0 (mask!8187 thiss!1248)))))

(declare-datatypes ((Unit!5095 0))(
  ( (Unit!5096) )
))
(declare-fun lt!83555 () Unit!5095)

(declare-fun e!109629 () Unit!5095)

(assert (=> b!166977 (= lt!83555 e!109629)))

(declare-fun c!30240 () Bool)

(declare-datatypes ((tuple2!3122 0))(
  ( (tuple2!3123 (_1!1571 (_ BitVec 64)) (_2!1571 V!4697)) )
))
(declare-datatypes ((List!2133 0))(
  ( (Nil!2130) (Cons!2129 (h!2746 tuple2!3122) (t!6943 List!2133)) )
))
(declare-datatypes ((ListLongMap!2091 0))(
  ( (ListLongMap!2092 (toList!1061 List!2133)) )
))
(declare-fun contains!1097 (ListLongMap!2091 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!714 (array!6670 array!6672 (_ BitVec 32) (_ BitVec 32) V!4697 V!4697 (_ BitVec 32) Int) ListLongMap!2091)

(assert (=> b!166977 (= c!30240 (contains!1097 (getCurrentListMap!714 (_keys!5271 thiss!1248) (_values!3429 thiss!1248) (mask!8187 thiss!1248) (extraKeys!3187 thiss!1248) (zeroValue!3289 thiss!1248) (minValue!3289 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3446 thiss!1248)) key!828))))

(declare-fun mapIsEmpty!6399 () Bool)

(declare-fun mapRes!6399 () Bool)

(assert (=> mapIsEmpty!6399 mapRes!6399))

(declare-fun res!79412 () Bool)

(declare-fun e!109628 () Bool)

(assert (=> start!16692 (=> (not res!79412) (not e!109628))))

(declare-fun valid!871 (LongMapFixedSize!2008) Bool)

(assert (=> start!16692 (= res!79412 (valid!871 thiss!1248))))

(assert (=> start!16692 e!109628))

(declare-fun e!109623 () Bool)

(assert (=> start!16692 e!109623))

(assert (=> start!16692 true))

(declare-fun b!166978 () Bool)

(declare-fun lt!83552 () Unit!5095)

(assert (=> b!166978 (= e!109629 lt!83552)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!98 (array!6670 array!6672 (_ BitVec 32) (_ BitVec 32) V!4697 V!4697 (_ BitVec 64) Int) Unit!5095)

(assert (=> b!166978 (= lt!83552 (lemmaInListMapThenSeekEntryOrOpenFindsIt!98 (_keys!5271 thiss!1248) (_values!3429 thiss!1248) (mask!8187 thiss!1248) (extraKeys!3187 thiss!1248) (zeroValue!3289 thiss!1248) (minValue!3289 thiss!1248) key!828 (defaultEntry!3446 thiss!1248)))))

(declare-fun res!79411 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166978 (= res!79411 (inRange!0 (index!4085 lt!83553) (mask!8187 thiss!1248)))))

(assert (=> b!166978 (=> (not res!79411) (not e!109627))))

(assert (=> b!166978 e!109627))

(declare-fun b!166979 () Bool)

(declare-fun res!79407 () Bool)

(assert (=> b!166979 (=> (not res!79407) (not e!109625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6670 (_ BitVec 32)) Bool)

(assert (=> b!166979 (= res!79407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5271 thiss!1248) (mask!8187 thiss!1248)))))

(declare-fun b!166980 () Bool)

(declare-fun Unit!5097 () Unit!5095)

(assert (=> b!166980 (= e!109629 Unit!5097)))

(declare-fun lt!83554 () Unit!5095)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!97 (array!6670 array!6672 (_ BitVec 32) (_ BitVec 32) V!4697 V!4697 (_ BitVec 64) Int) Unit!5095)

(assert (=> b!166980 (= lt!83554 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!97 (_keys!5271 thiss!1248) (_values!3429 thiss!1248) (mask!8187 thiss!1248) (extraKeys!3187 thiss!1248) (zeroValue!3289 thiss!1248) (minValue!3289 thiss!1248) key!828 (defaultEntry!3446 thiss!1248)))))

(assert (=> b!166980 false))

(declare-fun tp_is_empty!3787 () Bool)

(declare-fun e!109624 () Bool)

(declare-fun array_inv!2027 (array!6670) Bool)

(declare-fun array_inv!2028 (array!6672) Bool)

(assert (=> b!166981 (= e!109623 (and tp!14555 tp_is_empty!3787 (array_inv!2027 (_keys!5271 thiss!1248)) (array_inv!2028 (_values!3429 thiss!1248)) e!109624))))

(declare-fun b!166982 () Bool)

(declare-fun e!109630 () Bool)

(assert (=> b!166982 (= e!109624 (and e!109630 mapRes!6399))))

(declare-fun condMapEmpty!6399 () Bool)

(declare-fun mapDefault!6399 () ValueCell!1550)

