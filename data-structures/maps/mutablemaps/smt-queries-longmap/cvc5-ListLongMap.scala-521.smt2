; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13128 () Bool)

(assert start!13128)

(declare-fun b!114930 () Bool)

(declare-fun b_free!2641 () Bool)

(declare-fun b_next!2641 () Bool)

(assert (=> b!114930 (= b_free!2641 (not b_next!2641))))

(declare-fun tp!10286 () Bool)

(declare-fun b_and!7109 () Bool)

(assert (=> b!114930 (= tp!10286 b_and!7109)))

(declare-fun b!114923 () Bool)

(declare-fun b_free!2643 () Bool)

(declare-fun b_next!2643 () Bool)

(assert (=> b!114923 (= b_free!2643 (not b_next!2643))))

(declare-fun tp!10288 () Bool)

(declare-fun b_and!7111 () Bool)

(assert (=> b!114923 (= tp!10288 b_and!7111)))

(declare-fun b!114920 () Bool)

(declare-datatypes ((Unit!3593 0))(
  ( (Unit!3594) )
))
(declare-fun e!74789 () Unit!3593)

(declare-fun Unit!3595 () Unit!3593)

(assert (=> b!114920 (= e!74789 Unit!3595)))

(declare-fun lt!59934 () Unit!3593)

(declare-datatypes ((V!3297 0))(
  ( (V!3298 (val!1413 Int)) )
))
(declare-datatypes ((array!4476 0))(
  ( (array!4477 (arr!2120 (Array (_ BitVec 32) (_ BitVec 64))) (size!2380 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1025 0))(
  ( (ValueCellFull!1025 (v!2993 V!3297)) (EmptyCell!1025) )
))
(declare-datatypes ((array!4478 0))(
  ( (array!4479 (arr!2121 (Array (_ BitVec 32) ValueCell!1025)) (size!2381 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!958 0))(
  ( (LongMapFixedSize!959 (defaultEntry!2688 Int) (mask!6886 (_ BitVec 32)) (extraKeys!2477 (_ BitVec 32)) (zeroValue!2555 V!3297) (minValue!2555 V!3297) (_size!528 (_ BitVec 32)) (_keys!4410 array!4476) (_values!2671 array!4478) (_vacant!528 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!756 0))(
  ( (Cell!757 (v!2994 LongMapFixedSize!958)) )
))
(declare-datatypes ((LongMap!756 0))(
  ( (LongMap!757 (underlying!389 Cell!756)) )
))
(declare-fun thiss!992 () LongMap!756)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!127 (array!4476 array!4478 (_ BitVec 32) (_ BitVec 32) V!3297 V!3297 (_ BitVec 64) (_ BitVec 32) Int) Unit!3593)

(assert (=> b!114920 (= lt!59934 (lemmaListMapContainsThenArrayContainsFrom!127 (_keys!4410 (v!2994 (underlying!389 thiss!992))) (_values!2671 (v!2994 (underlying!389 thiss!992))) (mask!6886 (v!2994 (underlying!389 thiss!992))) (extraKeys!2477 (v!2994 (underlying!389 thiss!992))) (zeroValue!2555 (v!2994 (underlying!389 thiss!992))) (minValue!2555 (v!2994 (underlying!389 thiss!992))) (select (arr!2120 (_keys!4410 (v!2994 (underlying!389 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2688 (v!2994 (underlying!389 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!114920 (arrayContainsKey!0 (_keys!4410 (v!2994 (underlying!389 thiss!992))) (select (arr!2120 (_keys!4410 (v!2994 (underlying!389 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!59939 () Unit!3593)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4476 (_ BitVec 32) (_ BitVec 32)) Unit!3593)

(assert (=> b!114920 (= lt!59939 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4410 (v!2994 (underlying!389 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1676 0))(
  ( (Nil!1673) (Cons!1672 (h!2272 (_ BitVec 64)) (t!5922 List!1676)) )
))
(declare-fun arrayNoDuplicates!0 (array!4476 (_ BitVec 32) List!1676) Bool)

(assert (=> b!114920 (arrayNoDuplicates!0 (_keys!4410 (v!2994 (underlying!389 thiss!992))) from!355 Nil!1673)))

(declare-fun lt!59935 () Unit!3593)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4476 (_ BitVec 32) (_ BitVec 64) List!1676) Unit!3593)

(assert (=> b!114920 (= lt!59935 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4410 (v!2994 (underlying!389 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2120 (_keys!4410 (v!2994 (underlying!389 thiss!992)))) from!355) (Cons!1672 (select (arr!2120 (_keys!4410 (v!2994 (underlying!389 thiss!992)))) from!355) Nil!1673)))))

(assert (=> b!114920 false))

(declare-fun b!114921 () Bool)

(declare-fun res!56512 () Bool)

(declare-fun e!74790 () Bool)

(assert (=> b!114921 (=> (not res!56512) (not e!74790))))

(declare-fun newMap!16 () LongMapFixedSize!958)

(declare-fun valid!444 (LongMapFixedSize!958) Bool)

(assert (=> b!114921 (= res!56512 (valid!444 newMap!16))))

(declare-fun b!114922 () Bool)

(declare-fun res!56510 () Bool)

(assert (=> b!114922 (=> (not res!56510) (not e!74790))))

(assert (=> b!114922 (= res!56510 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2380 (_keys!4410 (v!2994 (underlying!389 thiss!992)))))))))

(declare-fun mapNonEmpty!4143 () Bool)

(declare-fun mapRes!4144 () Bool)

(declare-fun tp!10285 () Bool)

(declare-fun e!74793 () Bool)

(assert (=> mapNonEmpty!4143 (= mapRes!4144 (and tp!10285 e!74793))))

(declare-fun mapValue!4144 () ValueCell!1025)

(declare-fun mapRest!4143 () (Array (_ BitVec 32) ValueCell!1025))

(declare-fun mapKey!4144 () (_ BitVec 32))

(assert (=> mapNonEmpty!4143 (= (arr!2121 (_values!2671 newMap!16)) (store mapRest!4143 mapKey!4144 mapValue!4144))))

(declare-fun e!74801 () Bool)

(declare-fun tp_is_empty!2737 () Bool)

(declare-fun e!74798 () Bool)

(declare-fun array_inv!1279 (array!4476) Bool)

(declare-fun array_inv!1280 (array!4478) Bool)

(assert (=> b!114923 (= e!74801 (and tp!10288 tp_is_empty!2737 (array_inv!1279 (_keys!4410 newMap!16)) (array_inv!1280 (_values!2671 newMap!16)) e!74798))))

(declare-fun b!114924 () Bool)

(assert (=> b!114924 (= e!74793 tp_is_empty!2737)))

(declare-fun b!114925 () Bool)

(declare-fun e!74802 () Bool)

(declare-fun e!74794 () Bool)

(declare-fun mapRes!4143 () Bool)

(assert (=> b!114925 (= e!74802 (and e!74794 mapRes!4143))))

(declare-fun condMapEmpty!4143 () Bool)

(declare-fun mapDefault!4143 () ValueCell!1025)

