; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11122 () Bool)

(assert start!11122)

(declare-fun b!90763 () Bool)

(declare-fun b_free!2313 () Bool)

(declare-fun b_next!2313 () Bool)

(assert (=> b!90763 (= b_free!2313 (not b_next!2313))))

(declare-fun tp!9188 () Bool)

(declare-fun b_and!5477 () Bool)

(assert (=> b!90763 (= tp!9188 b_and!5477)))

(declare-fun b!90780 () Bool)

(declare-fun b_free!2315 () Bool)

(declare-fun b_next!2315 () Bool)

(assert (=> b!90780 (= b_free!2315 (not b_next!2315))))

(declare-fun tp!9187 () Bool)

(declare-fun b_and!5479 () Bool)

(assert (=> b!90780 (= tp!9187 b_and!5479)))

(declare-fun e!59184 () Bool)

(declare-datatypes ((V!3077 0))(
  ( (V!3078 (val!1331 Int)) )
))
(declare-datatypes ((array!4112 0))(
  ( (array!4113 (arr!1956 (Array (_ BitVec 32) (_ BitVec 64))) (size!2203 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!943 0))(
  ( (ValueCellFull!943 (v!2709 V!3077)) (EmptyCell!943) )
))
(declare-datatypes ((array!4114 0))(
  ( (array!4115 (arr!1957 (Array (_ BitVec 32) ValueCell!943)) (size!2204 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!794 0))(
  ( (LongMapFixedSize!795 (defaultEntry!2398 Int) (mask!6454 (_ BitVec 32)) (extraKeys!2229 (_ BitVec 32)) (zeroValue!2286 V!3077) (minValue!2286 V!3077) (_size!446 (_ BitVec 32)) (_keys!4078 array!4112) (_values!2381 array!4114) (_vacant!446 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!598 0))(
  ( (Cell!599 (v!2710 LongMapFixedSize!794)) )
))
(declare-datatypes ((LongMap!598 0))(
  ( (LongMap!599 (underlying!310 Cell!598)) )
))
(declare-fun thiss!992 () LongMap!598)

(declare-fun tp_is_empty!2573 () Bool)

(declare-fun e!59182 () Bool)

(declare-fun array_inv!1173 (array!4112) Bool)

(declare-fun array_inv!1174 (array!4114) Bool)

(assert (=> b!90763 (= e!59182 (and tp!9188 tp_is_empty!2573 (array_inv!1173 (_keys!4078 (v!2710 (underlying!310 thiss!992)))) (array_inv!1174 (_values!2381 (v!2710 (underlying!310 thiss!992)))) e!59184))))

(declare-fun b!90764 () Bool)

(declare-fun e!59199 () Bool)

(assert (=> b!90764 (= e!59199 tp_is_empty!2573)))

(declare-fun b!90765 () Bool)

(declare-fun e!59187 () Bool)

(assert (=> b!90765 (= e!59187 e!59182)))

(declare-fun mapNonEmpty!3537 () Bool)

(declare-fun mapRes!3537 () Bool)

(declare-fun tp!9190 () Bool)

(declare-fun e!59186 () Bool)

(assert (=> mapNonEmpty!3537 (= mapRes!3537 (and tp!9190 e!59186))))

(declare-fun mapKey!3538 () (_ BitVec 32))

(declare-fun mapRest!3538 () (Array (_ BitVec 32) ValueCell!943))

(declare-fun mapValue!3538 () ValueCell!943)

(declare-fun newMap!16 () LongMapFixedSize!794)

(assert (=> mapNonEmpty!3537 (= (arr!1957 (_values!2381 newMap!16)) (store mapRest!3538 mapKey!3538 mapValue!3538))))

(declare-fun mapIsEmpty!3537 () Bool)

(declare-fun mapRes!3538 () Bool)

(assert (=> mapIsEmpty!3537 mapRes!3538))

(declare-fun b!90766 () Bool)

(assert (=> b!90766 (= e!59186 tp_is_empty!2573)))

(declare-fun b!90767 () Bool)

(declare-datatypes ((Unit!2719 0))(
  ( (Unit!2720) )
))
(declare-fun e!59195 () Unit!2719)

(declare-fun Unit!2721 () Unit!2719)

(assert (=> b!90767 (= e!59195 Unit!2721)))

(declare-fun b!90768 () Bool)

(declare-fun res!46262 () Bool)

(declare-fun e!59183 () Bool)

(assert (=> b!90768 (=> (not res!46262) (not e!59183))))

(assert (=> b!90768 (= res!46262 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6454 newMap!16)) (_size!446 (v!2710 (underlying!310 thiss!992)))))))

(declare-fun b!90769 () Bool)

(declare-fun e!59193 () Bool)

(assert (=> b!90769 (= e!59193 e!59187)))

(declare-fun b!90770 () Bool)

(declare-fun res!46267 () Bool)

(assert (=> b!90770 (=> (not res!46267) (not e!59183))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!90770 (= res!46267 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2203 (_keys!4078 (v!2710 (underlying!310 thiss!992)))))))))

(declare-fun b!90771 () Bool)

(declare-fun e!59185 () Bool)

(declare-fun e!59194 () Bool)

(assert (=> b!90771 (= e!59185 e!59194)))

(declare-fun res!46264 () Bool)

(assert (=> b!90771 (=> (not res!46264) (not e!59194))))

(declare-datatypes ((tuple2!2276 0))(
  ( (tuple2!2277 (_1!1148 Bool) (_2!1148 LongMapFixedSize!794)) )
))
(declare-fun lt!43994 () tuple2!2276)

(assert (=> b!90771 (= res!46264 (and (_1!1148 lt!43994) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!43984 () Unit!2719)

(assert (=> b!90771 (= lt!43984 e!59195)))

(declare-fun c!15067 () Bool)

(declare-datatypes ((tuple2!2278 0))(
  ( (tuple2!2279 (_1!1149 (_ BitVec 64)) (_2!1149 V!3077)) )
))
(declare-datatypes ((List!1576 0))(
  ( (Nil!1573) (Cons!1572 (h!2164 tuple2!2278) (t!5394 List!1576)) )
))
(declare-datatypes ((ListLongMap!1511 0))(
  ( (ListLongMap!1512 (toList!771 List!1576)) )
))
(declare-fun lt!43992 () ListLongMap!1511)

(declare-fun contains!779 (ListLongMap!1511 (_ BitVec 64)) Bool)

(assert (=> b!90771 (= c!15067 (contains!779 lt!43992 (select (arr!1956 (_keys!4078 (v!2710 (underlying!310 thiss!992)))) from!355)))))

(declare-fun lt!43989 () V!3077)

(declare-fun update!131 (LongMapFixedSize!794 (_ BitVec 64) V!3077) tuple2!2276)

(assert (=> b!90771 (= lt!43994 (update!131 newMap!16 (select (arr!1956 (_keys!4078 (v!2710 (underlying!310 thiss!992)))) from!355) lt!43989))))

(declare-fun b!90772 () Bool)

(declare-fun e!59191 () Bool)

(assert (=> b!90772 (= e!59191 tp_is_empty!2573)))

(declare-fun b!90773 () Bool)

(declare-fun e!59189 () Bool)

(assert (=> b!90773 (= e!59189 e!59185)))

(declare-fun res!46265 () Bool)

(assert (=> b!90773 (=> (not res!46265) (not e!59185))))

(assert (=> b!90773 (= res!46265 (and (not (= (select (arr!1956 (_keys!4078 (v!2710 (underlying!310 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1956 (_keys!4078 (v!2710 (underlying!310 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1245 (ValueCell!943 V!3077) V!3077)

(declare-fun dynLambda!362 (Int (_ BitVec 64)) V!3077)

(assert (=> b!90773 (= lt!43989 (get!1245 (select (arr!1957 (_values!2381 (v!2710 (underlying!310 thiss!992)))) from!355) (dynLambda!362 (defaultEntry!2398 (v!2710 (underlying!310 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!90774 () Bool)

(declare-fun e!59197 () Bool)

(assert (=> b!90774 (= e!59197 (bvslt (bvsub from!355 #b00000000000000000000000000000001) (size!2203 (_keys!4078 (v!2710 (underlying!310 thiss!992))))))))

(declare-fun res!46268 () Bool)

(assert (=> start!11122 (=> (not res!46268) (not e!59183))))

(declare-fun valid!351 (LongMap!598) Bool)

(assert (=> start!11122 (= res!46268 (valid!351 thiss!992))))

(assert (=> start!11122 e!59183))

(assert (=> start!11122 e!59193))

(assert (=> start!11122 true))

(declare-fun e!59198 () Bool)

(assert (=> start!11122 e!59198))

(declare-fun b!90775 () Bool)

(assert (=> b!90775 (= e!59183 e!59189)))

(declare-fun res!46269 () Bool)

(assert (=> b!90775 (=> (not res!46269) (not e!59189))))

(declare-fun lt!43995 () ListLongMap!1511)

(assert (=> b!90775 (= res!46269 (= lt!43995 lt!43992))))

(declare-fun map!1217 (LongMapFixedSize!794) ListLongMap!1511)

(assert (=> b!90775 (= lt!43992 (map!1217 newMap!16))))

(declare-fun getCurrentListMap!453 (array!4112 array!4114 (_ BitVec 32) (_ BitVec 32) V!3077 V!3077 (_ BitVec 32) Int) ListLongMap!1511)

(assert (=> b!90775 (= lt!43995 (getCurrentListMap!453 (_keys!4078 (v!2710 (underlying!310 thiss!992))) (_values!2381 (v!2710 (underlying!310 thiss!992))) (mask!6454 (v!2710 (underlying!310 thiss!992))) (extraKeys!2229 (v!2710 (underlying!310 thiss!992))) (zeroValue!2286 (v!2710 (underlying!310 thiss!992))) (minValue!2286 (v!2710 (underlying!310 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2398 (v!2710 (underlying!310 thiss!992)))))))

(declare-fun b!90776 () Bool)

(declare-fun e!59188 () Bool)

(assert (=> b!90776 (= e!59188 tp_is_empty!2573)))

(declare-fun mapNonEmpty!3538 () Bool)

(declare-fun tp!9189 () Bool)

(assert (=> mapNonEmpty!3538 (= mapRes!3538 (and tp!9189 e!59191))))

(declare-fun mapRest!3537 () (Array (_ BitVec 32) ValueCell!943))

(declare-fun mapValue!3537 () ValueCell!943)

(declare-fun mapKey!3537 () (_ BitVec 32))

(assert (=> mapNonEmpty!3538 (= (arr!1957 (_values!2381 (v!2710 (underlying!310 thiss!992)))) (store mapRest!3537 mapKey!3537 mapValue!3537))))

(declare-fun b!90777 () Bool)

(assert (=> b!90777 (= e!59184 (and e!59188 mapRes!3538))))

(declare-fun condMapEmpty!3538 () Bool)

(declare-fun mapDefault!3537 () ValueCell!943)

