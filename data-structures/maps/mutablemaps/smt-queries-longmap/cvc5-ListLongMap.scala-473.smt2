; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9272 () Bool)

(assert start!9272)

(declare-fun b!66266 () Bool)

(declare-fun b_free!2065 () Bool)

(declare-fun b_next!2065 () Bool)

(assert (=> b!66266 (= b_free!2065 (not b_next!2065))))

(declare-fun tp!8349 () Bool)

(declare-fun b_and!4085 () Bool)

(assert (=> b!66266 (= tp!8349 b_and!4085)))

(declare-fun b!66259 () Bool)

(declare-fun b_free!2067 () Bool)

(declare-fun b_next!2067 () Bool)

(assert (=> b!66259 (= b_free!2067 (not b_next!2067))))

(declare-fun tp!8348 () Bool)

(declare-fun b_and!4087 () Bool)

(assert (=> b!66259 (= tp!8348 b_and!4087)))

(declare-fun b!66255 () Bool)

(declare-fun e!43467 () Bool)

(declare-fun e!43475 () Bool)

(assert (=> b!66255 (= e!43467 e!43475)))

(declare-fun b!66256 () Bool)

(declare-fun e!43480 () Bool)

(declare-fun tp_is_empty!2449 () Bool)

(assert (=> b!66256 (= e!43480 tp_is_empty!2449)))

(declare-fun b!66257 () Bool)

(declare-datatypes ((Unit!1833 0))(
  ( (Unit!1834) )
))
(declare-fun e!43470 () Unit!1833)

(declare-fun Unit!1835 () Unit!1833)

(assert (=> b!66257 (= e!43470 Unit!1835)))

(declare-fun lt!28469 () Unit!1833)

(declare-datatypes ((V!2913 0))(
  ( (V!2914 (val!1269 Int)) )
))
(declare-datatypes ((array!3836 0))(
  ( (array!3837 (arr!1832 (Array (_ BitVec 32) (_ BitVec 64))) (size!2067 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!881 0))(
  ( (ValueCellFull!881 (v!2476 V!2913)) (EmptyCell!881) )
))
(declare-datatypes ((array!3838 0))(
  ( (array!3839 (arr!1833 (Array (_ BitVec 32) ValueCell!881)) (size!2068 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!670 0))(
  ( (LongMapFixedSize!671 (defaultEntry!2146 Int) (mask!6081 (_ BitVec 32)) (extraKeys!2017 (_ BitVec 32)) (zeroValue!2054 V!2913) (minValue!2054 V!2913) (_size!384 (_ BitVec 32)) (_keys!3786 array!3836) (_values!2129 array!3838) (_vacant!384 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!480 0))(
  ( (Cell!481 (v!2477 LongMapFixedSize!670)) )
))
(declare-datatypes ((LongMap!480 0))(
  ( (LongMap!481 (underlying!251 Cell!480)) )
))
(declare-fun thiss!992 () LongMap!480)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!45 (array!3836 array!3838 (_ BitVec 32) (_ BitVec 32) V!2913 V!2913 (_ BitVec 64) (_ BitVec 32) Int) Unit!1833)

(assert (=> b!66257 (= lt!28469 (lemmaListMapContainsThenArrayContainsFrom!45 (_keys!3786 (v!2477 (underlying!251 thiss!992))) (_values!2129 (v!2477 (underlying!251 thiss!992))) (mask!6081 (v!2477 (underlying!251 thiss!992))) (extraKeys!2017 (v!2477 (underlying!251 thiss!992))) (zeroValue!2054 (v!2477 (underlying!251 thiss!992))) (minValue!2054 (v!2477 (underlying!251 thiss!992))) (select (arr!1832 (_keys!3786 (v!2477 (underlying!251 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2146 (v!2477 (underlying!251 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!66257 (arrayContainsKey!0 (_keys!3786 (v!2477 (underlying!251 thiss!992))) (select (arr!1832 (_keys!3786 (v!2477 (underlying!251 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!28475 () Unit!1833)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3836 (_ BitVec 32) (_ BitVec 32)) Unit!1833)

(assert (=> b!66257 (= lt!28475 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3786 (v!2477 (underlying!251 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1489 0))(
  ( (Nil!1486) (Cons!1485 (h!2069 (_ BitVec 64)) (t!4971 List!1489)) )
))
(declare-fun arrayNoDuplicates!0 (array!3836 (_ BitVec 32) List!1489) Bool)

(assert (=> b!66257 (arrayNoDuplicates!0 (_keys!3786 (v!2477 (underlying!251 thiss!992))) from!355 Nil!1486)))

(declare-fun lt!28467 () Unit!1833)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3836 (_ BitVec 32) (_ BitVec 64) List!1489) Unit!1833)

(assert (=> b!66257 (= lt!28467 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3786 (v!2477 (underlying!251 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1832 (_keys!3786 (v!2477 (underlying!251 thiss!992)))) from!355) (Cons!1485 (select (arr!1832 (_keys!3786 (v!2477 (underlying!251 thiss!992)))) from!355) Nil!1486)))))

(assert (=> b!66257 false))

(declare-fun b!66258 () Bool)

(declare-fun e!43481 () Bool)

(declare-fun e!43466 () Bool)

(declare-fun mapRes!3070 () Bool)

(assert (=> b!66258 (= e!43481 (and e!43466 mapRes!3070))))

(declare-fun condMapEmpty!3069 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!670)

(declare-fun mapDefault!3069 () ValueCell!881)

