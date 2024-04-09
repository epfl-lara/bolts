; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16746 () Bool)

(assert start!16746)

(declare-fun b!168035 () Bool)

(declare-fun b_free!4039 () Bool)

(declare-fun b_next!4039 () Bool)

(assert (=> b!168035 (= b_free!4039 (not b_next!4039))))

(declare-fun tp!14718 () Bool)

(declare-fun b_and!10471 () Bool)

(assert (=> b!168035 (= tp!14718 b_and!10471)))

(declare-fun b!168028 () Bool)

(declare-fun res!79974 () Bool)

(declare-fun e!110439 () Bool)

(assert (=> b!168028 (=> res!79974 e!110439)))

(declare-datatypes ((V!4769 0))(
  ( (V!4770 (val!1965 Int)) )
))
(declare-datatypes ((ValueCell!1577 0))(
  ( (ValueCellFull!1577 (v!3826 V!4769)) (EmptyCell!1577) )
))
(declare-datatypes ((array!6778 0))(
  ( (array!6779 (arr!3224 (Array (_ BitVec 32) (_ BitVec 64))) (size!3512 (_ BitVec 32))) )
))
(declare-datatypes ((array!6780 0))(
  ( (array!6781 (arr!3225 (Array (_ BitVec 32) ValueCell!1577)) (size!3513 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2062 0))(
  ( (LongMapFixedSize!2063 (defaultEntry!3473 Int) (mask!8232 (_ BitVec 32)) (extraKeys!3214 (_ BitVec 32)) (zeroValue!3316 V!4769) (minValue!3316 V!4769) (_size!1080 (_ BitVec 32)) (_keys!5298 array!6778) (_values!3456 array!6780) (_vacant!1080 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2062)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6778 (_ BitVec 32)) Bool)

(assert (=> b!168028 (= res!79974 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5298 thiss!1248) (mask!8232 thiss!1248))))))

(declare-fun b!168029 () Bool)

(assert (=> b!168029 (= e!110439 true)))

(declare-fun lt!84054 () Bool)

(declare-datatypes ((List!2167 0))(
  ( (Nil!2164) (Cons!2163 (h!2780 (_ BitVec 64)) (t!6977 List!2167)) )
))
(declare-fun arrayNoDuplicates!0 (array!6778 (_ BitVec 32) List!2167) Bool)

(assert (=> b!168029 (= lt!84054 (arrayNoDuplicates!0 (_keys!5298 thiss!1248) #b00000000000000000000000000000000 Nil!2164))))

(declare-fun b!168030 () Bool)

(declare-fun e!110437 () Bool)

(declare-fun e!110434 () Bool)

(assert (=> b!168030 (= e!110437 e!110434)))

(declare-fun res!79976 () Bool)

(assert (=> b!168030 (=> (not res!79976) (not e!110434))))

(declare-datatypes ((SeekEntryResult!502 0))(
  ( (MissingZero!502 (index!4176 (_ BitVec 32))) (Found!502 (index!4177 (_ BitVec 32))) (Intermediate!502 (undefined!1314 Bool) (index!4178 (_ BitVec 32)) (x!18594 (_ BitVec 32))) (Undefined!502) (MissingVacant!502 (index!4179 (_ BitVec 32))) )
))
(declare-fun lt!84056 () SeekEntryResult!502)

(assert (=> b!168030 (= res!79976 (and (not (is-Undefined!502 lt!84056)) (not (is-MissingVacant!502 lt!84056)) (not (is-MissingZero!502 lt!84056)) (is-Found!502 lt!84056)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6778 (_ BitVec 32)) SeekEntryResult!502)

(assert (=> b!168030 (= lt!84056 (seekEntryOrOpen!0 key!828 (_keys!5298 thiss!1248) (mask!8232 thiss!1248)))))

(declare-fun e!110435 () Bool)

(declare-fun b!168031 () Bool)

(assert (=> b!168031 (= e!110435 (= (select (arr!3224 (_keys!5298 thiss!1248)) (index!4177 lt!84056)) key!828))))

(declare-fun b!168032 () Bool)

(declare-datatypes ((Unit!5157 0))(
  ( (Unit!5158) )
))
(declare-fun e!110432 () Unit!5157)

(declare-fun Unit!5159 () Unit!5157)

(assert (=> b!168032 (= e!110432 Unit!5159)))

(declare-fun lt!84052 () Unit!5157)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!115 (array!6778 array!6780 (_ BitVec 32) (_ BitVec 32) V!4769 V!4769 (_ BitVec 64) Int) Unit!5157)

(assert (=> b!168032 (= lt!84052 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!115 (_keys!5298 thiss!1248) (_values!3456 thiss!1248) (mask!8232 thiss!1248) (extraKeys!3214 thiss!1248) (zeroValue!3316 thiss!1248) (minValue!3316 thiss!1248) key!828 (defaultEntry!3473 thiss!1248)))))

(assert (=> b!168032 false))

(declare-fun b!168033 () Bool)

(declare-fun e!110431 () Bool)

(declare-fun e!110438 () Bool)

(declare-fun mapRes!6480 () Bool)

(assert (=> b!168033 (= e!110431 (and e!110438 mapRes!6480))))

(declare-fun condMapEmpty!6480 () Bool)

(declare-fun mapDefault!6480 () ValueCell!1577)

