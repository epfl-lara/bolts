; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11282 () Bool)

(assert start!11282)

(declare-fun b!92935 () Bool)

(declare-fun b_free!2365 () Bool)

(declare-fun b_next!2365 () Bool)

(assert (=> b!92935 (= b_free!2365 (not b_next!2365))))

(declare-fun tp!9355 () Bool)

(declare-fun b_and!5649 () Bool)

(assert (=> b!92935 (= tp!9355 b_and!5649)))

(declare-fun b!92947 () Bool)

(declare-fun b_free!2367 () Bool)

(declare-fun b_next!2367 () Bool)

(assert (=> b!92947 (= b_free!2367 (not b_next!2367))))

(declare-fun tp!9356 () Bool)

(declare-fun b_and!5651 () Bool)

(assert (=> b!92947 (= tp!9356 b_and!5651)))

(declare-fun mapIsEmpty!3625 () Bool)

(declare-fun mapRes!3626 () Bool)

(assert (=> mapIsEmpty!3625 mapRes!3626))

(declare-fun b!92927 () Bool)

(declare-datatypes ((Unit!2790 0))(
  ( (Unit!2791) )
))
(declare-fun e!60659 () Unit!2790)

(declare-fun Unit!2792 () Unit!2790)

(assert (=> b!92927 (= e!60659 Unit!2792)))

(declare-fun b!92928 () Bool)

(declare-fun e!60668 () Bool)

(declare-fun e!60655 () Bool)

(assert (=> b!92928 (= e!60668 e!60655)))

(declare-fun b!92929 () Bool)

(declare-fun e!60657 () Bool)

(declare-fun e!60663 () Bool)

(assert (=> b!92929 (= e!60657 e!60663)))

(declare-fun res!47214 () Bool)

(assert (=> b!92929 (=> (not res!47214) (not e!60663))))

(declare-datatypes ((V!3113 0))(
  ( (V!3114 (val!1344 Int)) )
))
(declare-datatypes ((array!4168 0))(
  ( (array!4169 (arr!1982 (Array (_ BitVec 32) (_ BitVec 64))) (size!2230 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!956 0))(
  ( (ValueCellFull!956 (v!2744 V!3113)) (EmptyCell!956) )
))
(declare-datatypes ((array!4170 0))(
  ( (array!4171 (arr!1983 (Array (_ BitVec 32) ValueCell!956)) (size!2231 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!820 0))(
  ( (LongMapFixedSize!821 (defaultEntry!2424 Int) (mask!6494 (_ BitVec 32)) (extraKeys!2253 (_ BitVec 32)) (zeroValue!2311 V!3113) (minValue!2311 V!3113) (_size!459 (_ BitVec 32)) (_keys!4106 array!4168) (_values!2407 array!4170) (_vacant!459 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!624 0))(
  ( (Cell!625 (v!2745 LongMapFixedSize!820)) )
))
(declare-datatypes ((LongMap!624 0))(
  ( (LongMap!625 (underlying!323 Cell!624)) )
))
(declare-fun thiss!992 () LongMap!624)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!92929 (= res!47214 (and (not (= (select (arr!1982 (_keys!4106 (v!2745 (underlying!323 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1982 (_keys!4106 (v!2745 (underlying!323 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!45720 () V!3113)

(declare-fun get!1267 (ValueCell!956 V!3113) V!3113)

(declare-fun dynLambda!369 (Int (_ BitVec 64)) V!3113)

(assert (=> b!92929 (= lt!45720 (get!1267 (select (arr!1983 (_values!2407 (v!2745 (underlying!323 thiss!992)))) from!355) (dynLambda!369 (defaultEntry!2424 (v!2745 (underlying!323 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!3626 () Bool)

(declare-fun mapRes!3625 () Bool)

(assert (=> mapIsEmpty!3626 mapRes!3625))

(declare-fun res!47212 () Bool)

(declare-fun e!60654 () Bool)

(assert (=> start!11282 (=> (not res!47212) (not e!60654))))

(declare-fun valid!364 (LongMap!624) Bool)

(assert (=> start!11282 (= res!47212 (valid!364 thiss!992))))

(assert (=> start!11282 e!60654))

(declare-fun e!60658 () Bool)

(assert (=> start!11282 e!60658))

(assert (=> start!11282 true))

(declare-fun e!60652 () Bool)

(assert (=> start!11282 e!60652))

(declare-fun b!92930 () Bool)

(declare-fun res!47213 () Bool)

(declare-fun e!60664 () Bool)

(assert (=> b!92930 (=> res!47213 e!60664)))

(declare-datatypes ((tuple2!2314 0))(
  ( (tuple2!2315 (_1!1167 Bool) (_2!1167 LongMapFixedSize!820)) )
))
(declare-fun lt!45727 () tuple2!2314)

(declare-fun valid!365 (LongMapFixedSize!820) Bool)

(assert (=> b!92930 (= res!47213 (not (valid!365 (_2!1167 lt!45727))))))

(declare-fun b!92931 () Bool)

(declare-fun Unit!2793 () Unit!2790)

(assert (=> b!92931 (= e!60659 Unit!2793)))

(declare-fun lt!45721 () Unit!2790)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!89 (array!4168 array!4170 (_ BitVec 32) (_ BitVec 32) V!3113 V!3113 (_ BitVec 64) (_ BitVec 32) Int) Unit!2790)

(assert (=> b!92931 (= lt!45721 (lemmaListMapContainsThenArrayContainsFrom!89 (_keys!4106 (v!2745 (underlying!323 thiss!992))) (_values!2407 (v!2745 (underlying!323 thiss!992))) (mask!6494 (v!2745 (underlying!323 thiss!992))) (extraKeys!2253 (v!2745 (underlying!323 thiss!992))) (zeroValue!2311 (v!2745 (underlying!323 thiss!992))) (minValue!2311 (v!2745 (underlying!323 thiss!992))) (select (arr!1982 (_keys!4106 (v!2745 (underlying!323 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2424 (v!2745 (underlying!323 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4168 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!92931 (arrayContainsKey!0 (_keys!4106 (v!2745 (underlying!323 thiss!992))) (select (arr!1982 (_keys!4106 (v!2745 (underlying!323 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!45725 () Unit!2790)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4168 (_ BitVec 32) (_ BitVec 32)) Unit!2790)

(assert (=> b!92931 (= lt!45725 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4106 (v!2745 (underlying!323 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1592 0))(
  ( (Nil!1589) (Cons!1588 (h!2180 (_ BitVec 64)) (t!5470 List!1592)) )
))
(declare-fun arrayNoDuplicates!0 (array!4168 (_ BitVec 32) List!1592) Bool)

(assert (=> b!92931 (arrayNoDuplicates!0 (_keys!4106 (v!2745 (underlying!323 thiss!992))) from!355 Nil!1589)))

(declare-fun lt!45738 () Unit!2790)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4168 (_ BitVec 32) (_ BitVec 64) List!1592) Unit!2790)

(assert (=> b!92931 (= lt!45738 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4106 (v!2745 (underlying!323 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1982 (_keys!4106 (v!2745 (underlying!323 thiss!992)))) from!355) (Cons!1588 (select (arr!1982 (_keys!4106 (v!2745 (underlying!323 thiss!992)))) from!355) Nil!1589)))))

(assert (=> b!92931 false))

(declare-fun b!92932 () Bool)

(declare-fun e!60666 () Bool)

(declare-fun tp_is_empty!2599 () Bool)

(assert (=> b!92932 (= e!60666 tp_is_empty!2599)))

(declare-fun b!92933 () Bool)

(declare-fun e!60656 () Bool)

(declare-fun e!60667 () Bool)

(assert (=> b!92933 (= e!60656 (and e!60667 mapRes!3625))))

(declare-fun condMapEmpty!3626 () Bool)

(declare-fun mapDefault!3625 () ValueCell!956)

