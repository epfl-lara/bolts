; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15212 () Bool)

(assert start!15212)

(declare-fun b!146321 () Bool)

(declare-fun b_free!3105 () Bool)

(declare-fun b_next!3105 () Bool)

(assert (=> b!146321 (= b_free!3105 (not b_next!3105))))

(declare-fun tp!11818 () Bool)

(declare-fun b_and!9153 () Bool)

(assert (=> b!146321 (= tp!11818 b_and!9153)))

(declare-fun b!146319 () Bool)

(declare-fun b_free!3107 () Bool)

(declare-fun b_next!3107 () Bool)

(assert (=> b!146319 (= b_free!3107 (not b_next!3107))))

(declare-fun tp!11817 () Bool)

(declare-fun b_and!9155 () Bool)

(assert (=> b!146319 (= tp!11817 b_and!9155)))

(declare-fun b!146310 () Bool)

(declare-fun e!95414 () Bool)

(declare-fun e!95401 () Bool)

(assert (=> b!146310 (= e!95414 e!95401)))

(declare-fun res!69616 () Bool)

(assert (=> b!146310 (=> (not res!69616) (not e!95401))))

(declare-datatypes ((V!3605 0))(
  ( (V!3606 (val!1529 Int)) )
))
(declare-datatypes ((array!4982 0))(
  ( (array!4983 (arr!2352 (Array (_ BitVec 32) (_ BitVec 64))) (size!2628 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1141 0))(
  ( (ValueCellFull!1141 (v!3346 V!3605)) (EmptyCell!1141) )
))
(declare-datatypes ((array!4984 0))(
  ( (array!4985 (arr!2353 (Array (_ BitVec 32) ValueCell!1141)) (size!2629 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1190 0))(
  ( (LongMapFixedSize!1191 (defaultEntry!3011 Int) (mask!7385 (_ BitVec 32)) (extraKeys!2756 (_ BitVec 32)) (zeroValue!2856 V!3605) (minValue!2856 V!3605) (_size!644 (_ BitVec 32)) (_keys!4780 array!4982) (_values!2994 array!4984) (_vacant!644 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2732 0))(
  ( (tuple2!2733 (_1!1376 Bool) (_2!1376 LongMapFixedSize!1190)) )
))
(declare-fun lt!76939 () tuple2!2732)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!146310 (= res!69616 (and (_1!1376 lt!76939) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!4627 0))(
  ( (Unit!4628) )
))
(declare-fun lt!76937 () Unit!4627)

(declare-fun e!95407 () Unit!4627)

(assert (=> b!146310 (= lt!76937 e!95407)))

(declare-datatypes ((Cell!972 0))(
  ( (Cell!973 (v!3347 LongMapFixedSize!1190)) )
))
(declare-datatypes ((LongMap!972 0))(
  ( (LongMap!973 (underlying!497 Cell!972)) )
))
(declare-fun thiss!992 () LongMap!972)

(declare-fun c!27683 () Bool)

(declare-datatypes ((tuple2!2734 0))(
  ( (tuple2!2735 (_1!1377 (_ BitVec 64)) (_2!1377 V!3605)) )
))
(declare-datatypes ((List!1791 0))(
  ( (Nil!1788) (Cons!1787 (h!2395 tuple2!2734) (t!6488 List!1791)) )
))
(declare-datatypes ((ListLongMap!1773 0))(
  ( (ListLongMap!1774 (toList!902 List!1791)) )
))
(declare-fun lt!76943 () ListLongMap!1773)

(declare-fun contains!944 (ListLongMap!1773 (_ BitVec 64)) Bool)

(assert (=> b!146310 (= c!27683 (contains!944 lt!76943 (select (arr!2352 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!1190)

(declare-fun update!221 (LongMapFixedSize!1190 (_ BitVec 64) V!3605) tuple2!2732)

(declare-fun get!1572 (ValueCell!1141 V!3605) V!3605)

(declare-fun dynLambda!454 (Int (_ BitVec 64)) V!3605)

(assert (=> b!146310 (= lt!76939 (update!221 newMap!16 (select (arr!2352 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) from!355) (get!1572 (select (arr!2353 (_values!2994 (v!3347 (underlying!497 thiss!992)))) from!355) (dynLambda!454 (defaultEntry!3011 (v!3347 (underlying!497 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!4979 () Bool)

(declare-fun mapRes!4980 () Bool)

(declare-fun tp!11819 () Bool)

(declare-fun e!95412 () Bool)

(assert (=> mapNonEmpty!4979 (= mapRes!4980 (and tp!11819 e!95412))))

(declare-fun mapRest!4979 () (Array (_ BitVec 32) ValueCell!1141))

(declare-fun mapValue!4980 () ValueCell!1141)

(declare-fun mapKey!4979 () (_ BitVec 32))

(assert (=> mapNonEmpty!4979 (= (arr!2353 (_values!2994 newMap!16)) (store mapRest!4979 mapKey!4979 mapValue!4980))))

(declare-fun b!146311 () Bool)

(declare-fun e!95403 () Bool)

(declare-fun tp_is_empty!2969 () Bool)

(assert (=> b!146311 (= e!95403 tp_is_empty!2969)))

(declare-fun b!146312 () Bool)

(declare-fun e!95415 () Bool)

(declare-fun e!95405 () Bool)

(assert (=> b!146312 (= e!95415 e!95405)))

(declare-fun mapNonEmpty!4980 () Bool)

(declare-fun mapRes!4979 () Bool)

(declare-fun tp!11820 () Bool)

(declare-fun e!95409 () Bool)

(assert (=> mapNonEmpty!4980 (= mapRes!4979 (and tp!11820 e!95409))))

(declare-fun mapRest!4980 () (Array (_ BitVec 32) ValueCell!1141))

(declare-fun mapValue!4979 () ValueCell!1141)

(declare-fun mapKey!4980 () (_ BitVec 32))

(assert (=> mapNonEmpty!4980 (= (arr!2353 (_values!2994 (v!3347 (underlying!497 thiss!992)))) (store mapRest!4980 mapKey!4980 mapValue!4979))))

(declare-fun res!69620 () Bool)

(declare-fun e!95416 () Bool)

(assert (=> start!15212 (=> (not res!69620) (not e!95416))))

(declare-fun valid!579 (LongMap!972) Bool)

(assert (=> start!15212 (= res!69620 (valid!579 thiss!992))))

(assert (=> start!15212 e!95416))

(declare-fun e!95410 () Bool)

(assert (=> start!15212 e!95410))

(assert (=> start!15212 true))

(declare-fun e!95413 () Bool)

(assert (=> start!15212 e!95413))

(declare-fun b!146313 () Bool)

(declare-fun res!69617 () Bool)

(assert (=> b!146313 (=> (not res!69617) (not e!95416))))

(assert (=> b!146313 (= res!69617 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2628 (_keys!4780 (v!3347 (underlying!497 thiss!992)))))))))

(declare-fun mapIsEmpty!4979 () Bool)

(assert (=> mapIsEmpty!4979 mapRes!4980))

(declare-fun b!146314 () Bool)

(assert (=> b!146314 (= e!95416 e!95414)))

(declare-fun res!69619 () Bool)

(assert (=> b!146314 (=> (not res!69619) (not e!95414))))

(declare-fun lt!76938 () ListLongMap!1773)

(assert (=> b!146314 (= res!69619 (and (= lt!76938 lt!76943) (not (= (select (arr!2352 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2352 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1461 (LongMapFixedSize!1190) ListLongMap!1773)

(assert (=> b!146314 (= lt!76943 (map!1461 newMap!16))))

(declare-fun getCurrentListMap!566 (array!4982 array!4984 (_ BitVec 32) (_ BitVec 32) V!3605 V!3605 (_ BitVec 32) Int) ListLongMap!1773)

(assert (=> b!146314 (= lt!76938 (getCurrentListMap!566 (_keys!4780 (v!3347 (underlying!497 thiss!992))) (_values!2994 (v!3347 (underlying!497 thiss!992))) (mask!7385 (v!3347 (underlying!497 thiss!992))) (extraKeys!2756 (v!3347 (underlying!497 thiss!992))) (zeroValue!2856 (v!3347 (underlying!497 thiss!992))) (minValue!2856 (v!3347 (underlying!497 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3011 (v!3347 (underlying!497 thiss!992)))))))

(declare-fun b!146315 () Bool)

(assert (=> b!146315 (= e!95409 tp_is_empty!2969)))

(declare-fun b!146316 () Bool)

(assert (=> b!146316 (= e!95401 false)))

(declare-fun lt!76941 () ListLongMap!1773)

(declare-fun getCurrentListMapNoExtraKeys!147 (array!4982 array!4984 (_ BitVec 32) (_ BitVec 32) V!3605 V!3605 (_ BitVec 32) Int) ListLongMap!1773)

(assert (=> b!146316 (= lt!76941 (getCurrentListMapNoExtraKeys!147 (_keys!4780 (v!3347 (underlying!497 thiss!992))) (_values!2994 (v!3347 (underlying!497 thiss!992))) (mask!7385 (v!3347 (underlying!497 thiss!992))) (extraKeys!2756 (v!3347 (underlying!497 thiss!992))) (zeroValue!2856 (v!3347 (underlying!497 thiss!992))) (minValue!2856 (v!3347 (underlying!497 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3011 (v!3347 (underlying!497 thiss!992)))))))

(declare-fun b!146317 () Bool)

(declare-fun res!69618 () Bool)

(assert (=> b!146317 (=> (not res!69618) (not e!95416))))

(declare-fun valid!580 (LongMapFixedSize!1190) Bool)

(assert (=> b!146317 (= res!69618 (valid!580 newMap!16))))

(declare-fun b!146318 () Bool)

(declare-fun res!69621 () Bool)

(assert (=> b!146318 (=> (not res!69621) (not e!95416))))

(assert (=> b!146318 (= res!69621 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7385 newMap!16)) (_size!644 (v!3347 (underlying!497 thiss!992)))))))

(declare-fun e!95402 () Bool)

(declare-fun array_inv!1459 (array!4982) Bool)

(declare-fun array_inv!1460 (array!4984) Bool)

(assert (=> b!146319 (= e!95413 (and tp!11817 tp_is_empty!2969 (array_inv!1459 (_keys!4780 newMap!16)) (array_inv!1460 (_values!2994 newMap!16)) e!95402))))

(declare-fun b!146320 () Bool)

(declare-fun Unit!4629 () Unit!4627)

(assert (=> b!146320 (= e!95407 Unit!4629)))

(declare-fun lt!76942 () Unit!4627)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!155 (array!4982 array!4984 (_ BitVec 32) (_ BitVec 32) V!3605 V!3605 (_ BitVec 64) (_ BitVec 32) Int) Unit!4627)

(assert (=> b!146320 (= lt!76942 (lemmaListMapContainsThenArrayContainsFrom!155 (_keys!4780 (v!3347 (underlying!497 thiss!992))) (_values!2994 (v!3347 (underlying!497 thiss!992))) (mask!7385 (v!3347 (underlying!497 thiss!992))) (extraKeys!2756 (v!3347 (underlying!497 thiss!992))) (zeroValue!2856 (v!3347 (underlying!497 thiss!992))) (minValue!2856 (v!3347 (underlying!497 thiss!992))) (select (arr!2352 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3011 (v!3347 (underlying!497 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146320 (arrayContainsKey!0 (_keys!4780 (v!3347 (underlying!497 thiss!992))) (select (arr!2352 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!76944 () Unit!4627)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4982 (_ BitVec 32) (_ BitVec 32)) Unit!4627)

(assert (=> b!146320 (= lt!76944 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4780 (v!3347 (underlying!497 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1792 0))(
  ( (Nil!1789) (Cons!1788 (h!2396 (_ BitVec 64)) (t!6489 List!1792)) )
))
(declare-fun arrayNoDuplicates!0 (array!4982 (_ BitVec 32) List!1792) Bool)

(assert (=> b!146320 (arrayNoDuplicates!0 (_keys!4780 (v!3347 (underlying!497 thiss!992))) from!355 Nil!1789)))

(declare-fun lt!76940 () Unit!4627)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4982 (_ BitVec 32) (_ BitVec 64) List!1792) Unit!4627)

(assert (=> b!146320 (= lt!76940 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4780 (v!3347 (underlying!497 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2352 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) from!355) (Cons!1788 (select (arr!2352 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) from!355) Nil!1789)))))

(assert (=> b!146320 false))

(declare-fun mapIsEmpty!4980 () Bool)

(assert (=> mapIsEmpty!4980 mapRes!4979))

(declare-fun e!95408 () Bool)

(assert (=> b!146321 (= e!95405 (and tp!11818 tp_is_empty!2969 (array_inv!1459 (_keys!4780 (v!3347 (underlying!497 thiss!992)))) (array_inv!1460 (_values!2994 (v!3347 (underlying!497 thiss!992)))) e!95408))))

(declare-fun b!146322 () Bool)

(assert (=> b!146322 (= e!95410 e!95415)))

(declare-fun b!146323 () Bool)

(declare-fun e!95411 () Bool)

(assert (=> b!146323 (= e!95411 tp_is_empty!2969)))

(declare-fun b!146324 () Bool)

(declare-fun Unit!4630 () Unit!4627)

(assert (=> b!146324 (= e!95407 Unit!4630)))

(declare-fun b!146325 () Bool)

(assert (=> b!146325 (= e!95408 (and e!95403 mapRes!4979))))

(declare-fun condMapEmpty!4980 () Bool)

(declare-fun mapDefault!4979 () ValueCell!1141)

