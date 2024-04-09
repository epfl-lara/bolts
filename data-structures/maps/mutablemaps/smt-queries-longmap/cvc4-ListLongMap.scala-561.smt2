; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15224 () Bool)

(assert start!15224)

(declare-fun b!146687 () Bool)

(declare-fun b_free!3129 () Bool)

(declare-fun b_next!3129 () Bool)

(assert (=> b!146687 (= b_free!3129 (not b_next!3129))))

(declare-fun tp!11892 () Bool)

(declare-fun b_and!9201 () Bool)

(assert (=> b!146687 (= tp!11892 b_and!9201)))

(declare-fun b!146678 () Bool)

(declare-fun b_free!3131 () Bool)

(declare-fun b_next!3131 () Bool)

(assert (=> b!146678 (= b_free!3131 (not b_next!3131))))

(declare-fun tp!11891 () Bool)

(declare-fun b_and!9203 () Bool)

(assert (=> b!146678 (= tp!11891 b_and!9203)))

(declare-fun b!146671 () Bool)

(declare-datatypes ((Unit!4645 0))(
  ( (Unit!4646) )
))
(declare-fun e!95717 () Unit!4645)

(declare-fun Unit!4647 () Unit!4645)

(assert (=> b!146671 (= e!95717 Unit!4647)))

(declare-fun lt!77213 () Unit!4645)

(declare-datatypes ((V!3621 0))(
  ( (V!3622 (val!1535 Int)) )
))
(declare-datatypes ((array!5006 0))(
  ( (array!5007 (arr!2364 (Array (_ BitVec 32) (_ BitVec 64))) (size!2640 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1147 0))(
  ( (ValueCellFull!1147 (v!3358 V!3621)) (EmptyCell!1147) )
))
(declare-datatypes ((array!5008 0))(
  ( (array!5009 (arr!2365 (Array (_ BitVec 32) ValueCell!1147)) (size!2641 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1202 0))(
  ( (LongMapFixedSize!1203 (defaultEntry!3017 Int) (mask!7395 (_ BitVec 32)) (extraKeys!2762 (_ BitVec 32)) (zeroValue!2862 V!3621) (minValue!2862 V!3621) (_size!650 (_ BitVec 32)) (_keys!4786 array!5006) (_values!3000 array!5008) (_vacant!650 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!984 0))(
  ( (Cell!985 (v!3359 LongMapFixedSize!1202)) )
))
(declare-datatypes ((LongMap!984 0))(
  ( (LongMap!985 (underlying!503 Cell!984)) )
))
(declare-fun thiss!992 () LongMap!984)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!158 (array!5006 array!5008 (_ BitVec 32) (_ BitVec 32) V!3621 V!3621 (_ BitVec 64) (_ BitVec 32) Int) Unit!4645)

(assert (=> b!146671 (= lt!77213 (lemmaListMapContainsThenArrayContainsFrom!158 (_keys!4786 (v!3359 (underlying!503 thiss!992))) (_values!3000 (v!3359 (underlying!503 thiss!992))) (mask!7395 (v!3359 (underlying!503 thiss!992))) (extraKeys!2762 (v!3359 (underlying!503 thiss!992))) (zeroValue!2862 (v!3359 (underlying!503 thiss!992))) (minValue!2862 (v!3359 (underlying!503 thiss!992))) (select (arr!2364 (_keys!4786 (v!3359 (underlying!503 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3017 (v!3359 (underlying!503 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!5006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146671 (arrayContainsKey!0 (_keys!4786 (v!3359 (underlying!503 thiss!992))) (select (arr!2364 (_keys!4786 (v!3359 (underlying!503 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!77210 () Unit!4645)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!5006 (_ BitVec 32) (_ BitVec 32)) Unit!4645)

(assert (=> b!146671 (= lt!77210 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4786 (v!3359 (underlying!503 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1800 0))(
  ( (Nil!1797) (Cons!1796 (h!2404 (_ BitVec 64)) (t!6521 List!1800)) )
))
(declare-fun arrayNoDuplicates!0 (array!5006 (_ BitVec 32) List!1800) Bool)

(assert (=> b!146671 (arrayNoDuplicates!0 (_keys!4786 (v!3359 (underlying!503 thiss!992))) from!355 Nil!1797)))

(declare-fun lt!77214 () Unit!4645)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!5006 (_ BitVec 32) (_ BitVec 64) List!1800) Unit!4645)

(assert (=> b!146671 (= lt!77214 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4786 (v!3359 (underlying!503 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2364 (_keys!4786 (v!3359 (underlying!503 thiss!992)))) from!355) (Cons!1796 (select (arr!2364 (_keys!4786 (v!3359 (underlying!503 thiss!992)))) from!355) Nil!1797)))))

(assert (=> b!146671 false))

(declare-fun b!146672 () Bool)

(declare-fun e!95719 () Bool)

(declare-fun e!95723 () Bool)

(declare-fun mapRes!5016 () Bool)

(assert (=> b!146672 (= e!95719 (and e!95723 mapRes!5016))))

(declare-fun condMapEmpty!5015 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1202)

(declare-fun mapDefault!5015 () ValueCell!1147)

