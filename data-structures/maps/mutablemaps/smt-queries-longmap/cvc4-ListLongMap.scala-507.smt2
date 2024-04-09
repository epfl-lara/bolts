; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12150 () Bool)

(assert start!12150)

(declare-fun b!102484 () Bool)

(declare-fun b_free!2481 () Bool)

(declare-fun b_next!2481 () Bool)

(assert (=> b!102484 (= b_free!2481 (not b_next!2481))))

(declare-fun tp!9753 () Bool)

(declare-fun b_and!6321 () Bool)

(assert (=> b!102484 (= tp!9753 b_and!6321)))

(declare-fun b!102477 () Bool)

(declare-fun b_free!2483 () Bool)

(declare-fun b_next!2483 () Bool)

(assert (=> b!102477 (= b_free!2483 (not b_next!2483))))

(declare-fun tp!9755 () Bool)

(declare-fun b_and!6323 () Bool)

(assert (=> b!102477 (= tp!9755 b_and!6323)))

(declare-fun b!102475 () Bool)

(declare-datatypes ((Unit!3141 0))(
  ( (Unit!3142) )
))
(declare-fun e!66710 () Unit!3141)

(declare-fun Unit!3143 () Unit!3141)

(assert (=> b!102475 (= e!66710 Unit!3143)))

(declare-fun lt!52083 () Unit!3141)

(declare-datatypes ((V!3189 0))(
  ( (V!3190 (val!1373 Int)) )
))
(declare-datatypes ((array!4300 0))(
  ( (array!4301 (arr!2040 (Array (_ BitVec 32) (_ BitVec 64))) (size!2294 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!985 0))(
  ( (ValueCellFull!985 (v!2858 V!3189)) (EmptyCell!985) )
))
(declare-datatypes ((array!4302 0))(
  ( (array!4303 (arr!2041 (Array (_ BitVec 32) ValueCell!985)) (size!2295 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!878 0))(
  ( (LongMapFixedSize!879 (defaultEntry!2550 Int) (mask!6679 (_ BitVec 32)) (extraKeys!2359 (_ BitVec 32)) (zeroValue!2427 V!3189) (minValue!2427 V!3189) (_size!488 (_ BitVec 32)) (_keys!4252 array!4300) (_values!2533 array!4302) (_vacant!488 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!682 0))(
  ( (Cell!683 (v!2859 LongMapFixedSize!878)) )
))
(declare-datatypes ((LongMap!682 0))(
  ( (LongMap!683 (underlying!352 Cell!682)) )
))
(declare-fun thiss!992 () LongMap!682)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!104 (array!4300 array!4302 (_ BitVec 32) (_ BitVec 32) V!3189 V!3189 (_ BitVec 64) (_ BitVec 32) Int) Unit!3141)

(assert (=> b!102475 (= lt!52083 (lemmaListMapContainsThenArrayContainsFrom!104 (_keys!4252 (v!2859 (underlying!352 thiss!992))) (_values!2533 (v!2859 (underlying!352 thiss!992))) (mask!6679 (v!2859 (underlying!352 thiss!992))) (extraKeys!2359 (v!2859 (underlying!352 thiss!992))) (zeroValue!2427 (v!2859 (underlying!352 thiss!992))) (minValue!2427 (v!2859 (underlying!352 thiss!992))) (select (arr!2040 (_keys!4252 (v!2859 (underlying!352 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2550 (v!2859 (underlying!352 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!102475 (arrayContainsKey!0 (_keys!4252 (v!2859 (underlying!352 thiss!992))) (select (arr!2040 (_keys!4252 (v!2859 (underlying!352 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!52084 () Unit!3141)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4300 (_ BitVec 32) (_ BitVec 32)) Unit!3141)

(assert (=> b!102475 (= lt!52084 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4252 (v!2859 (underlying!352 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1625 0))(
  ( (Nil!1622) (Cons!1621 (h!2217 (_ BitVec 64)) (t!5667 List!1625)) )
))
(declare-fun arrayNoDuplicates!0 (array!4300 (_ BitVec 32) List!1625) Bool)

(assert (=> b!102475 (arrayNoDuplicates!0 (_keys!4252 (v!2859 (underlying!352 thiss!992))) from!355 Nil!1622)))

(declare-fun lt!52080 () Unit!3141)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4300 (_ BitVec 32) (_ BitVec 64) List!1625) Unit!3141)

(assert (=> b!102475 (= lt!52080 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4252 (v!2859 (underlying!352 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2040 (_keys!4252 (v!2859 (underlying!352 thiss!992)))) from!355) (Cons!1621 (select (arr!2040 (_keys!4252 (v!2859 (underlying!352 thiss!992)))) from!355) Nil!1622)))))

(assert (=> b!102475 false))

(declare-fun mapIsEmpty!3851 () Bool)

(declare-fun mapRes!3852 () Bool)

(assert (=> mapIsEmpty!3851 mapRes!3852))

(declare-fun b!102476 () Bool)

(declare-fun e!66701 () Bool)

(declare-fun e!66714 () Bool)

(assert (=> b!102476 (= e!66701 (and e!66714 mapRes!3852))))

(declare-fun condMapEmpty!3852 () Bool)

(declare-fun mapDefault!3852 () ValueCell!985)

