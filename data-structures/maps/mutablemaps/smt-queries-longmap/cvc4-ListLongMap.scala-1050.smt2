; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21998 () Bool)

(assert start!21998)

(declare-fun b!225629 () Bool)

(declare-fun b_free!6053 () Bool)

(declare-fun b_next!6053 () Bool)

(assert (=> b!225629 (= b_free!6053 (not b_next!6053))))

(declare-fun tp!21301 () Bool)

(declare-fun b_and!12969 () Bool)

(assert (=> b!225629 (= tp!21301 b_and!12969)))

(declare-fun b!225608 () Bool)

(declare-fun e!146438 () Bool)

(assert (=> b!225608 (= e!146438 true)))

(declare-fun lt!113663 () Bool)

(declare-datatypes ((V!7533 0))(
  ( (V!7534 (val!3002 Int)) )
))
(declare-datatypes ((ValueCell!2614 0))(
  ( (ValueCellFull!2614 (v!5018 V!7533)) (EmptyCell!2614) )
))
(declare-datatypes ((array!11072 0))(
  ( (array!11073 (arr!5255 (Array (_ BitVec 32) ValueCell!2614)) (size!5588 (_ BitVec 32))) )
))
(declare-datatypes ((array!11074 0))(
  ( (array!11075 (arr!5256 (Array (_ BitVec 32) (_ BitVec 64))) (size!5589 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3128 0))(
  ( (LongMapFixedSize!3129 (defaultEntry!4223 Int) (mask!10067 (_ BitVec 32)) (extraKeys!3960 (_ BitVec 32)) (zeroValue!4064 V!7533) (minValue!4064 V!7533) (_size!1613 (_ BitVec 32)) (_keys!6277 array!11074) (_values!4206 array!11072) (_vacant!1613 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3128)

(declare-datatypes ((List!3379 0))(
  ( (Nil!3376) (Cons!3375 (h!4023 (_ BitVec 64)) (t!8346 List!3379)) )
))
(declare-fun arrayNoDuplicates!0 (array!11074 (_ BitVec 32) List!3379) Bool)

(assert (=> b!225608 (= lt!113663 (arrayNoDuplicates!0 (_keys!6277 thiss!1504) #b00000000000000000000000000000000 Nil!3376))))

(declare-fun b!225609 () Bool)

(declare-fun res!111056 () Bool)

(assert (=> b!225609 (=> res!111056 e!146438)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225609 (= res!111056 (not (validKeyInArray!0 key!932)))))

(declare-fun b!225610 () Bool)

(declare-fun res!111057 () Bool)

(declare-fun e!146435 () Bool)

(assert (=> b!225610 (=> (not res!111057) (not e!146435))))

(assert (=> b!225610 (= res!111057 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!225611 () Bool)

(declare-fun c!37396 () Bool)

(declare-datatypes ((SeekEntryResult!882 0))(
  ( (MissingZero!882 (index!5698 (_ BitVec 32))) (Found!882 (index!5699 (_ BitVec 32))) (Intermediate!882 (undefined!1694 Bool) (index!5700 (_ BitVec 32)) (x!23198 (_ BitVec 32))) (Undefined!882) (MissingVacant!882 (index!5701 (_ BitVec 32))) )
))
(declare-fun lt!113667 () SeekEntryResult!882)

(assert (=> b!225611 (= c!37396 (is-MissingVacant!882 lt!113667))))

(declare-fun e!146434 () Bool)

(declare-fun e!146430 () Bool)

(assert (=> b!225611 (= e!146434 e!146430)))

(declare-fun res!111062 () Bool)

(assert (=> start!21998 (=> (not res!111062) (not e!146435))))

(declare-fun valid!1252 (LongMapFixedSize!3128) Bool)

(assert (=> start!21998 (= res!111062 (valid!1252 thiss!1504))))

(assert (=> start!21998 e!146435))

(declare-fun e!146427 () Bool)

(assert (=> start!21998 e!146427))

(assert (=> start!21998 true))

(declare-fun bm!20988 () Bool)

(declare-fun call!20991 () Bool)

(declare-fun arrayContainsKey!0 (array!11074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20988 (= call!20991 (arrayContainsKey!0 (_keys!6277 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225612 () Bool)

(declare-fun e!146437 () Bool)

(declare-fun e!146436 () Bool)

(declare-fun mapRes!10042 () Bool)

(assert (=> b!225612 (= e!146437 (and e!146436 mapRes!10042))))

(declare-fun condMapEmpty!10042 () Bool)

(declare-fun mapDefault!10042 () ValueCell!2614)

