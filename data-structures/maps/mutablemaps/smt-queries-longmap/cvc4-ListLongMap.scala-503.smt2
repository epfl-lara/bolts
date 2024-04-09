; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11666 () Bool)

(assert start!11666)

(declare-fun b!97566 () Bool)

(declare-fun b_free!2433 () Bool)

(declare-fun b_next!2433 () Bool)

(assert (=> b!97566 (= b_free!2433 (not b_next!2433))))

(declare-fun tp!9582 () Bool)

(declare-fun b_and!6001 () Bool)

(assert (=> b!97566 (= tp!9582 b_and!6001)))

(declare-fun b!97577 () Bool)

(declare-fun b_free!2435 () Bool)

(declare-fun b_next!2435 () Bool)

(assert (=> b!97577 (= b_free!2435 (not b_next!2435))))

(declare-fun tp!9584 () Bool)

(declare-fun b_and!6003 () Bool)

(assert (=> b!97577 (= tp!9584 b_and!6003)))

(declare-fun b!97559 () Bool)

(declare-fun e!63659 () Bool)

(declare-fun e!63644 () Bool)

(assert (=> b!97559 (= e!63659 e!63644)))

(declare-fun res!49139 () Bool)

(assert (=> b!97559 (=> (not res!49139) (not e!63644))))

(declare-datatypes ((V!3157 0))(
  ( (V!3158 (val!1361 Int)) )
))
(declare-datatypes ((array!4244 0))(
  ( (array!4245 (arr!2016 (Array (_ BitVec 32) (_ BitVec 64))) (size!2266 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!973 0))(
  ( (ValueCellFull!973 (v!2802 V!3157)) (EmptyCell!973) )
))
(declare-datatypes ((array!4246 0))(
  ( (array!4247 (arr!2017 (Array (_ BitVec 32) ValueCell!973)) (size!2267 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!854 0))(
  ( (LongMapFixedSize!855 (defaultEntry!2482 Int) (mask!6579 (_ BitVec 32)) (extraKeys!2303 (_ BitVec 32)) (zeroValue!2365 V!3157) (minValue!2365 V!3157) (_size!476 (_ BitVec 32)) (_keys!4172 array!4244) (_values!2465 array!4246) (_vacant!476 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2356 0))(
  ( (tuple2!2357 (_1!1188 Bool) (_2!1188 LongMapFixedSize!854)) )
))
(declare-fun lt!48824 () tuple2!2356)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!97559 (= res!49139 (and (_1!1188 lt!48824) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2969 0))(
  ( (Unit!2970) )
))
(declare-fun lt!48825 () Unit!2969)

(declare-fun e!63657 () Unit!2969)

(assert (=> b!97559 (= lt!48825 e!63657)))

(declare-datatypes ((Cell!658 0))(
  ( (Cell!659 (v!2803 LongMapFixedSize!854)) )
))
(declare-datatypes ((LongMap!658 0))(
  ( (LongMap!659 (underlying!340 Cell!658)) )
))
(declare-fun thiss!992 () LongMap!658)

(declare-datatypes ((tuple2!2358 0))(
  ( (tuple2!2359 (_1!1189 (_ BitVec 64)) (_2!1189 V!3157)) )
))
(declare-datatypes ((List!1613 0))(
  ( (Nil!1610) (Cons!1609 (h!2203 tuple2!2358) (t!5579 List!1613)) )
))
(declare-datatypes ((ListLongMap!1553 0))(
  ( (ListLongMap!1554 (toList!792 List!1613)) )
))
(declare-fun lt!48821 () ListLongMap!1553)

(declare-fun c!16501 () Bool)

(declare-fun contains!806 (ListLongMap!1553 (_ BitVec 64)) Bool)

(assert (=> b!97559 (= c!16501 (contains!806 lt!48821 (select (arr!2016 (_keys!4172 (v!2803 (underlying!340 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!854)

(declare-fun update!147 (LongMapFixedSize!854 (_ BitVec 64) V!3157) tuple2!2356)

(declare-fun get!1297 (ValueCell!973 V!3157) V!3157)

(declare-fun dynLambda!379 (Int (_ BitVec 64)) V!3157)

(assert (=> b!97559 (= lt!48824 (update!147 newMap!16 (select (arr!2016 (_keys!4172 (v!2803 (underlying!340 thiss!992)))) from!355) (get!1297 (select (arr!2017 (_values!2465 (v!2803 (underlying!340 thiss!992)))) from!355) (dynLambda!379 (defaultEntry!2482 (v!2803 (underlying!340 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!97560 () Bool)

(declare-fun e!63646 () Bool)

(declare-fun e!63654 () Bool)

(assert (=> b!97560 (= e!63646 e!63654)))

(declare-fun b!97561 () Bool)

(declare-fun e!63648 () Bool)

(declare-fun tp_is_empty!2633 () Bool)

(assert (=> b!97561 (= e!63648 tp_is_empty!2633)))

(declare-fun b!97562 () Bool)

(declare-fun e!63651 () Bool)

(assert (=> b!97562 (= e!63651 tp_is_empty!2633)))

(declare-fun b!97563 () Bool)

(declare-fun e!63656 () Bool)

(assert (=> b!97563 (= e!63656 e!63646)))

(declare-fun b!97564 () Bool)

(declare-fun res!49145 () Bool)

(declare-fun e!63653 () Bool)

(assert (=> b!97564 (=> (not res!49145) (not e!63653))))

(assert (=> b!97564 (= res!49145 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2266 (_keys!4172 (v!2803 (underlying!340 thiss!992)))))))))

(declare-fun b!97565 () Bool)

(declare-fun res!49141 () Bool)

(assert (=> b!97565 (=> (not res!49141) (not e!63653))))

(assert (=> b!97565 (= res!49141 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6579 newMap!16)) (_size!476 (v!2803 (underlying!340 thiss!992)))))))

(declare-fun e!63650 () Bool)

(declare-fun array_inv!1213 (array!4244) Bool)

(declare-fun array_inv!1214 (array!4246) Bool)

(assert (=> b!97566 (= e!63654 (and tp!9582 tp_is_empty!2633 (array_inv!1213 (_keys!4172 (v!2803 (underlying!340 thiss!992)))) (array_inv!1214 (_values!2465 (v!2803 (underlying!340 thiss!992)))) e!63650))))

(declare-fun b!97567 () Bool)

(assert (=> b!97567 (= e!63653 e!63659)))

(declare-fun res!49144 () Bool)

(assert (=> b!97567 (=> (not res!49144) (not e!63659))))

(declare-fun lt!48822 () ListLongMap!1553)

(assert (=> b!97567 (= res!49144 (and (= lt!48822 lt!48821) (not (= (select (arr!2016 (_keys!4172 (v!2803 (underlying!340 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2016 (_keys!4172 (v!2803 (underlying!340 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1256 (LongMapFixedSize!854) ListLongMap!1553)

(assert (=> b!97567 (= lt!48821 (map!1256 newMap!16))))

(declare-fun getCurrentListMap!473 (array!4244 array!4246 (_ BitVec 32) (_ BitVec 32) V!3157 V!3157 (_ BitVec 32) Int) ListLongMap!1553)

(assert (=> b!97567 (= lt!48822 (getCurrentListMap!473 (_keys!4172 (v!2803 (underlying!340 thiss!992))) (_values!2465 (v!2803 (underlying!340 thiss!992))) (mask!6579 (v!2803 (underlying!340 thiss!992))) (extraKeys!2303 (v!2803 (underlying!340 thiss!992))) (zeroValue!2365 (v!2803 (underlying!340 thiss!992))) (minValue!2365 (v!2803 (underlying!340 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2482 (v!2803 (underlying!340 thiss!992)))))))

(declare-fun b!97568 () Bool)

(declare-fun Unit!2971 () Unit!2969)

(assert (=> b!97568 (= e!63657 Unit!2971)))

(declare-fun b!97569 () Bool)

(assert (=> b!97569 (= e!63644 (and (= (size!2267 (_values!2465 (v!2803 (underlying!340 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6579 (v!2803 (underlying!340 thiss!992))))) (= (size!2266 (_keys!4172 (v!2803 (underlying!340 thiss!992)))) (size!2267 (_values!2465 (v!2803 (underlying!340 thiss!992))))) (bvsge (mask!6579 (v!2803 (underlying!340 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2303 (v!2803 (underlying!340 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!97570 () Bool)

(declare-fun e!63652 () Bool)

(assert (=> b!97570 (= e!63652 tp_is_empty!2633)))

(declare-fun mapNonEmpty!3751 () Bool)

(declare-fun mapRes!3752 () Bool)

(declare-fun tp!9583 () Bool)

(assert (=> mapNonEmpty!3751 (= mapRes!3752 (and tp!9583 e!63651))))

(declare-fun mapKey!3752 () (_ BitVec 32))

(declare-fun mapValue!3751 () ValueCell!973)

(declare-fun mapRest!3751 () (Array (_ BitVec 32) ValueCell!973))

(assert (=> mapNonEmpty!3751 (= (arr!2017 (_values!2465 newMap!16)) (store mapRest!3751 mapKey!3752 mapValue!3751))))

(declare-fun mapIsEmpty!3752 () Bool)

(assert (=> mapIsEmpty!3752 mapRes!3752))

(declare-fun b!97571 () Bool)

(declare-fun mapRes!3751 () Bool)

(assert (=> b!97571 (= e!63650 (and e!63648 mapRes!3751))))

(declare-fun condMapEmpty!3751 () Bool)

(declare-fun mapDefault!3752 () ValueCell!973)

