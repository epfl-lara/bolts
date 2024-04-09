; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12056 () Bool)

(assert start!12056)

(declare-fun b!101652 () Bool)

(declare-fun b_free!2469 () Bool)

(declare-fun b_next!2469 () Bool)

(assert (=> b!101652 (= b_free!2469 (not b_next!2469))))

(declare-fun tp!9711 () Bool)

(declare-fun b_and!6269 () Bool)

(assert (=> b!101652 (= tp!9711 b_and!6269)))

(declare-fun b!101643 () Bool)

(declare-fun b_free!2471 () Bool)

(declare-fun b_next!2471 () Bool)

(assert (=> b!101643 (= b_free!2471 (not b_next!2471))))

(declare-fun tp!9713 () Bool)

(declare-fun b_and!6271 () Bool)

(assert (=> b!101643 (= tp!9713 b_and!6271)))

(declare-fun b!101632 () Bool)

(declare-datatypes ((Unit!3116 0))(
  ( (Unit!3117) )
))
(declare-fun e!66175 () Unit!3116)

(declare-fun Unit!3118 () Unit!3116)

(assert (=> b!101632 (= e!66175 Unit!3118)))

(declare-fun lt!51514 () Unit!3116)

(declare-datatypes ((V!3181 0))(
  ( (V!3182 (val!1370 Int)) )
))
(declare-datatypes ((array!4286 0))(
  ( (array!4287 (arr!2034 (Array (_ BitVec 32) (_ BitVec 64))) (size!2287 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!982 0))(
  ( (ValueCellFull!982 (v!2846 V!3181)) (EmptyCell!982) )
))
(declare-datatypes ((array!4288 0))(
  ( (array!4289 (arr!2035 (Array (_ BitVec 32) ValueCell!982)) (size!2288 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!872 0))(
  ( (LongMapFixedSize!873 (defaultEntry!2537 Int) (mask!6660 (_ BitVec 32)) (extraKeys!2348 (_ BitVec 32)) (zeroValue!2415 V!3181) (minValue!2415 V!3181) (_size!485 (_ BitVec 32)) (_keys!4237 array!4286) (_values!2520 array!4288) (_vacant!485 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!676 0))(
  ( (Cell!677 (v!2847 LongMapFixedSize!872)) )
))
(declare-datatypes ((LongMap!676 0))(
  ( (LongMap!677 (underlying!349 Cell!676)) )
))
(declare-fun thiss!992 () LongMap!676)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!102 (array!4286 array!4288 (_ BitVec 32) (_ BitVec 32) V!3181 V!3181 (_ BitVec 64) (_ BitVec 32) Int) Unit!3116)

(assert (=> b!101632 (= lt!51514 (lemmaListMapContainsThenArrayContainsFrom!102 (_keys!4237 (v!2847 (underlying!349 thiss!992))) (_values!2520 (v!2847 (underlying!349 thiss!992))) (mask!6660 (v!2847 (underlying!349 thiss!992))) (extraKeys!2348 (v!2847 (underlying!349 thiss!992))) (zeroValue!2415 (v!2847 (underlying!349 thiss!992))) (minValue!2415 (v!2847 (underlying!349 thiss!992))) (select (arr!2034 (_keys!4237 (v!2847 (underlying!349 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2537 (v!2847 (underlying!349 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!101632 (arrayContainsKey!0 (_keys!4237 (v!2847 (underlying!349 thiss!992))) (select (arr!2034 (_keys!4237 (v!2847 (underlying!349 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!51512 () Unit!3116)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4286 (_ BitVec 32) (_ BitVec 32)) Unit!3116)

(assert (=> b!101632 (= lt!51512 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4237 (v!2847 (underlying!349 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1622 0))(
  ( (Nil!1619) (Cons!1618 (h!2214 (_ BitVec 64)) (t!5648 List!1622)) )
))
(declare-fun arrayNoDuplicates!0 (array!4286 (_ BitVec 32) List!1622) Bool)

(assert (=> b!101632 (arrayNoDuplicates!0 (_keys!4237 (v!2847 (underlying!349 thiss!992))) from!355 Nil!1619)))

(declare-fun lt!51509 () Unit!3116)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4286 (_ BitVec 32) (_ BitVec 64) List!1622) Unit!3116)

(assert (=> b!101632 (= lt!51509 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4237 (v!2847 (underlying!349 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2034 (_keys!4237 (v!2847 (underlying!349 thiss!992)))) from!355) (Cons!1618 (select (arr!2034 (_keys!4237 (v!2847 (underlying!349 thiss!992)))) from!355) Nil!1619)))))

(assert (=> b!101632 false))

(declare-fun res!50899 () Bool)

(declare-fun e!66185 () Bool)

(assert (=> start!12056 (=> (not res!50899) (not e!66185))))

(declare-fun valid!395 (LongMap!676) Bool)

(assert (=> start!12056 (= res!50899 (valid!395 thiss!992))))

(assert (=> start!12056 e!66185))

(declare-fun e!66179 () Bool)

(assert (=> start!12056 e!66179))

(assert (=> start!12056 true))

(declare-fun e!66188 () Bool)

(assert (=> start!12056 e!66188))

(declare-fun b!101633 () Bool)

(declare-fun res!50896 () Bool)

(declare-fun e!66184 () Bool)

(assert (=> b!101633 (=> (not res!50896) (not e!66184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!101633 (= res!50896 (validMask!0 (mask!6660 (v!2847 (underlying!349 thiss!992)))))))

(declare-fun b!101634 () Bool)

(declare-fun e!66176 () Bool)

(declare-fun tp_is_empty!2651 () Bool)

(assert (=> b!101634 (= e!66176 tp_is_empty!2651)))

(declare-fun b!101635 () Bool)

(declare-fun e!66177 () Bool)

(assert (=> b!101635 (= e!66177 tp_is_empty!2651)))

(declare-fun mapNonEmpty!3827 () Bool)

(declare-fun mapRes!3828 () Bool)

(declare-fun tp!9712 () Bool)

(assert (=> mapNonEmpty!3827 (= mapRes!3828 (and tp!9712 e!66176))))

(declare-fun mapKey!3828 () (_ BitVec 32))

(declare-fun mapRest!3827 () (Array (_ BitVec 32) ValueCell!982))

(declare-fun mapValue!3827 () ValueCell!982)

(assert (=> mapNonEmpty!3827 (= (arr!2035 (_values!2520 (v!2847 (underlying!349 thiss!992)))) (store mapRest!3827 mapKey!3828 mapValue!3827))))

(declare-fun mapNonEmpty!3828 () Bool)

(declare-fun mapRes!3827 () Bool)

(declare-fun tp!9714 () Bool)

(assert (=> mapNonEmpty!3828 (= mapRes!3827 (and tp!9714 e!66177))))

(declare-fun mapRest!3828 () (Array (_ BitVec 32) ValueCell!982))

(declare-fun newMap!16 () LongMapFixedSize!872)

(declare-fun mapValue!3828 () ValueCell!982)

(declare-fun mapKey!3827 () (_ BitVec 32))

(assert (=> mapNonEmpty!3828 (= (arr!2035 (_values!2520 newMap!16)) (store mapRest!3828 mapKey!3827 mapValue!3828))))

(declare-fun b!101636 () Bool)

(declare-fun e!66174 () Bool)

(declare-fun e!66178 () Bool)

(assert (=> b!101636 (= e!66174 (and e!66178 mapRes!3827))))

(declare-fun condMapEmpty!3828 () Bool)

(declare-fun mapDefault!3828 () ValueCell!982)

