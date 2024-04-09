; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16650 () Bool)

(assert start!16650)

(declare-fun b!166164 () Bool)

(declare-fun b_free!3943 () Bool)

(declare-fun b_next!3943 () Bool)

(assert (=> b!166164 (= b_free!3943 (not b_next!3943))))

(declare-fun tp!14430 () Bool)

(declare-fun b_and!10375 () Bool)

(assert (=> b!166164 (= tp!14430 b_and!10375)))

(declare-fun b!166156 () Bool)

(declare-datatypes ((Unit!5046 0))(
  ( (Unit!5047) )
))
(declare-fun e!109000 () Unit!5046)

(declare-fun lt!83237 () Unit!5046)

(assert (=> b!166156 (= e!109000 lt!83237)))

(declare-datatypes ((V!4641 0))(
  ( (V!4642 (val!1917 Int)) )
))
(declare-datatypes ((ValueCell!1529 0))(
  ( (ValueCellFull!1529 (v!3778 V!4641)) (EmptyCell!1529) )
))
(declare-datatypes ((array!6586 0))(
  ( (array!6587 (arr!3128 (Array (_ BitVec 32) (_ BitVec 64))) (size!3416 (_ BitVec 32))) )
))
(declare-datatypes ((array!6588 0))(
  ( (array!6589 (arr!3129 (Array (_ BitVec 32) ValueCell!1529)) (size!3417 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1966 0))(
  ( (LongMapFixedSize!1967 (defaultEntry!3425 Int) (mask!8152 (_ BitVec 32)) (extraKeys!3166 (_ BitVec 32)) (zeroValue!3268 V!4641) (minValue!3268 V!4641) (_size!1032 (_ BitVec 32)) (_keys!5250 array!6586) (_values!3408 array!6588) (_vacant!1032 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1966)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!84 (array!6586 array!6588 (_ BitVec 32) (_ BitVec 32) V!4641 V!4641 (_ BitVec 64) Int) Unit!5046)

(assert (=> b!166156 (= lt!83237 (lemmaInListMapThenSeekEntryOrOpenFindsIt!84 (_keys!5250 thiss!1248) (_values!3408 thiss!1248) (mask!8152 thiss!1248) (extraKeys!3166 thiss!1248) (zeroValue!3268 thiss!1248) (minValue!3268 thiss!1248) key!828 (defaultEntry!3425 thiss!1248)))))

(declare-fun res!78971 () Bool)

(declare-datatypes ((SeekEntryResult!461 0))(
  ( (MissingZero!461 (index!4012 (_ BitVec 32))) (Found!461 (index!4013 (_ BitVec 32))) (Intermediate!461 (undefined!1273 Bool) (index!4014 (_ BitVec 32)) (x!18425 (_ BitVec 32))) (Undefined!461) (MissingVacant!461 (index!4015 (_ BitVec 32))) )
))
(declare-fun lt!83240 () SeekEntryResult!461)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166156 (= res!78971 (inRange!0 (index!4013 lt!83240) (mask!8152 thiss!1248)))))

(declare-fun e!108992 () Bool)

(assert (=> b!166156 (=> (not res!78971) (not e!108992))))

(assert (=> b!166156 e!108992))

(declare-fun b!166157 () Bool)

(assert (=> b!166157 (= e!108992 (= (select (arr!3128 (_keys!5250 thiss!1248)) (index!4013 lt!83240)) key!828))))

(declare-fun b!166158 () Bool)

(declare-fun res!78969 () Bool)

(declare-fun e!108993 () Bool)

(assert (=> b!166158 (=> (not res!78969) (not e!108993))))

(assert (=> b!166158 (= res!78969 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166159 () Bool)

(declare-fun Unit!5048 () Unit!5046)

(assert (=> b!166159 (= e!109000 Unit!5048)))

(declare-fun lt!83236 () Unit!5046)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!82 (array!6586 array!6588 (_ BitVec 32) (_ BitVec 32) V!4641 V!4641 (_ BitVec 64) Int) Unit!5046)

(assert (=> b!166159 (= lt!83236 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!82 (_keys!5250 thiss!1248) (_values!3408 thiss!1248) (mask!8152 thiss!1248) (extraKeys!3166 thiss!1248) (zeroValue!3268 thiss!1248) (minValue!3268 thiss!1248) key!828 (defaultEntry!3425 thiss!1248)))))

(assert (=> b!166159 false))

(declare-fun mapNonEmpty!6336 () Bool)

(declare-fun mapRes!6336 () Bool)

(declare-fun tp!14429 () Bool)

(declare-fun e!108991 () Bool)

(assert (=> mapNonEmpty!6336 (= mapRes!6336 (and tp!14429 e!108991))))

(declare-fun mapRest!6336 () (Array (_ BitVec 32) ValueCell!1529))

(declare-fun mapKey!6336 () (_ BitVec 32))

(declare-fun mapValue!6336 () ValueCell!1529)

(assert (=> mapNonEmpty!6336 (= (arr!3129 (_values!3408 thiss!1248)) (store mapRest!6336 mapKey!6336 mapValue!6336))))

(declare-fun b!166160 () Bool)

(declare-fun e!108996 () Bool)

(assert (=> b!166160 (= e!108996 false)))

(declare-fun lt!83238 () Bool)

(declare-datatypes ((List!2103 0))(
  ( (Nil!2100) (Cons!2099 (h!2716 (_ BitVec 64)) (t!6913 List!2103)) )
))
(declare-fun arrayNoDuplicates!0 (array!6586 (_ BitVec 32) List!2103) Bool)

(assert (=> b!166160 (= lt!83238 (arrayNoDuplicates!0 (_keys!5250 thiss!1248) #b00000000000000000000000000000000 Nil!2100))))

(declare-fun b!166161 () Bool)

(declare-fun e!108999 () Bool)

(declare-fun e!108995 () Bool)

(assert (=> b!166161 (= e!108999 (and e!108995 mapRes!6336))))

(declare-fun condMapEmpty!6336 () Bool)

(declare-fun mapDefault!6336 () ValueCell!1529)

