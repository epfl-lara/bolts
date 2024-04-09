; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9234 () Bool)

(assert start!9234)

(declare-fun b!65918 () Bool)

(declare-fun b_free!2061 () Bool)

(declare-fun b_next!2061 () Bool)

(assert (=> b!65918 (= b_free!2061 (not b_next!2061))))

(declare-fun tp!8331 () Bool)

(declare-fun b_and!4065 () Bool)

(assert (=> b!65918 (= tp!8331 b_and!4065)))

(declare-fun b!65907 () Bool)

(declare-fun b_free!2063 () Bool)

(declare-fun b_next!2063 () Bool)

(assert (=> b!65907 (= b_free!2063 (not b_next!2063))))

(declare-fun tp!8332 () Bool)

(declare-fun b_and!4067 () Bool)

(assert (=> b!65907 (= tp!8332 b_and!4067)))

(declare-fun b!65902 () Bool)

(declare-datatypes ((Unit!1825 0))(
  ( (Unit!1826) )
))
(declare-fun e!43255 () Unit!1825)

(declare-fun Unit!1827 () Unit!1825)

(assert (=> b!65902 (= e!43255 Unit!1827)))

(declare-fun lt!28221 () Unit!1825)

(declare-datatypes ((V!2909 0))(
  ( (V!2910 (val!1268 Int)) )
))
(declare-datatypes ((array!3830 0))(
  ( (array!3831 (arr!1830 (Array (_ BitVec 32) (_ BitVec 64))) (size!2065 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!880 0))(
  ( (ValueCellFull!880 (v!2472 V!2909)) (EmptyCell!880) )
))
(declare-datatypes ((array!3832 0))(
  ( (array!3833 (arr!1831 (Array (_ BitVec 32) ValueCell!880)) (size!2066 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!668 0))(
  ( (LongMapFixedSize!669 (defaultEntry!2142 Int) (mask!6074 (_ BitVec 32)) (extraKeys!2013 (_ BitVec 32)) (zeroValue!2050 V!2909) (minValue!2050 V!2909) (_size!383 (_ BitVec 32)) (_keys!3782 array!3830) (_values!2125 array!3832) (_vacant!383 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!478 0))(
  ( (Cell!479 (v!2473 LongMapFixedSize!668)) )
))
(declare-datatypes ((LongMap!478 0))(
  ( (LongMap!479 (underlying!250 Cell!478)) )
))
(declare-fun thiss!992 () LongMap!478)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!44 (array!3830 array!3832 (_ BitVec 32) (_ BitVec 32) V!2909 V!2909 (_ BitVec 64) (_ BitVec 32) Int) Unit!1825)

(assert (=> b!65902 (= lt!28221 (lemmaListMapContainsThenArrayContainsFrom!44 (_keys!3782 (v!2473 (underlying!250 thiss!992))) (_values!2125 (v!2473 (underlying!250 thiss!992))) (mask!6074 (v!2473 (underlying!250 thiss!992))) (extraKeys!2013 (v!2473 (underlying!250 thiss!992))) (zeroValue!2050 (v!2473 (underlying!250 thiss!992))) (minValue!2050 (v!2473 (underlying!250 thiss!992))) (select (arr!1830 (_keys!3782 (v!2473 (underlying!250 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2142 (v!2473 (underlying!250 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!65902 (arrayContainsKey!0 (_keys!3782 (v!2473 (underlying!250 thiss!992))) (select (arr!1830 (_keys!3782 (v!2473 (underlying!250 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!28217 () Unit!1825)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3830 (_ BitVec 32) (_ BitVec 32)) Unit!1825)

(assert (=> b!65902 (= lt!28217 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3782 (v!2473 (underlying!250 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1488 0))(
  ( (Nil!1485) (Cons!1484 (h!2068 (_ BitVec 64)) (t!4966 List!1488)) )
))
(declare-fun arrayNoDuplicates!0 (array!3830 (_ BitVec 32) List!1488) Bool)

(assert (=> b!65902 (arrayNoDuplicates!0 (_keys!3782 (v!2473 (underlying!250 thiss!992))) from!355 Nil!1485)))

(declare-fun lt!28222 () Unit!1825)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3830 (_ BitVec 32) (_ BitVec 64) List!1488) Unit!1825)

(assert (=> b!65902 (= lt!28222 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3782 (v!2473 (underlying!250 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1830 (_keys!3782 (v!2473 (underlying!250 thiss!992)))) from!355) (Cons!1484 (select (arr!1830 (_keys!3782 (v!2473 (underlying!250 thiss!992)))) from!355) Nil!1485)))))

(assert (=> b!65902 false))

(declare-fun b!65903 () Bool)

(declare-fun Unit!1828 () Unit!1825)

(assert (=> b!65903 (= e!43255 Unit!1828)))

(declare-fun b!65904 () Bool)

(declare-fun res!35749 () Bool)

(declare-fun e!43243 () Bool)

(assert (=> b!65904 (=> (not res!35749) (not e!43243))))

(declare-fun newMap!16 () LongMapFixedSize!668)

(assert (=> b!65904 (= res!35749 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6074 newMap!16)) (_size!383 (v!2473 (underlying!250 thiss!992)))))))

(declare-fun b!65905 () Bool)

(declare-fun e!43247 () Bool)

(declare-fun e!43248 () Bool)

(assert (=> b!65905 (= e!43247 e!43248)))

(declare-fun b!65906 () Bool)

(declare-fun e!43250 () Bool)

(declare-fun e!43254 () Bool)

(declare-fun mapRes!3060 () Bool)

(assert (=> b!65906 (= e!43250 (and e!43254 mapRes!3060))))

(declare-fun condMapEmpty!3059 () Bool)

(declare-fun mapDefault!3059 () ValueCell!880)

