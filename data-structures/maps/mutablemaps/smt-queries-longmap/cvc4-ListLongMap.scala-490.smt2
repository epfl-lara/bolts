; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11070 () Bool)

(assert start!11070)

(declare-fun b!89926 () Bool)

(declare-fun b_free!2277 () Bool)

(declare-fun b_next!2277 () Bool)

(assert (=> b!89926 (= b_free!2277 (not b_next!2277))))

(declare-fun tp!9076 () Bool)

(declare-fun b_and!5393 () Bool)

(assert (=> b!89926 (= tp!9076 b_and!5393)))

(declare-fun b!89931 () Bool)

(declare-fun b_free!2279 () Bool)

(declare-fun b_next!2279 () Bool)

(assert (=> b!89931 (= b_free!2279 (not b_next!2279))))

(declare-fun tp!9077 () Bool)

(declare-fun b_and!5395 () Bool)

(assert (=> b!89931 (= tp!9077 b_and!5395)))

(declare-fun mapNonEmpty!3479 () Bool)

(declare-fun mapRes!3480 () Bool)

(declare-fun tp!9075 () Bool)

(declare-fun e!58550 () Bool)

(assert (=> mapNonEmpty!3479 (= mapRes!3480 (and tp!9075 e!58550))))

(declare-datatypes ((V!3053 0))(
  ( (V!3054 (val!1322 Int)) )
))
(declare-datatypes ((array!4074 0))(
  ( (array!4075 (arr!1938 (Array (_ BitVec 32) (_ BitVec 64))) (size!2185 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!934 0))(
  ( (ValueCellFull!934 (v!2690 V!3053)) (EmptyCell!934) )
))
(declare-datatypes ((array!4076 0))(
  ( (array!4077 (arr!1939 (Array (_ BitVec 32) ValueCell!934)) (size!2186 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!776 0))(
  ( (LongMapFixedSize!777 (defaultEntry!2386 Int) (mask!6436 (_ BitVec 32)) (extraKeys!2217 (_ BitVec 32)) (zeroValue!2274 V!3053) (minValue!2274 V!3053) (_size!437 (_ BitVec 32)) (_keys!4066 array!4074) (_values!2369 array!4076) (_vacant!437 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!582 0))(
  ( (Cell!583 (v!2691 LongMapFixedSize!776)) )
))
(declare-datatypes ((LongMap!582 0))(
  ( (LongMap!583 (underlying!302 Cell!582)) )
))
(declare-fun thiss!992 () LongMap!582)

(declare-fun mapValue!3480 () ValueCell!934)

(declare-fun mapRest!3479 () (Array (_ BitVec 32) ValueCell!934))

(declare-fun mapKey!3480 () (_ BitVec 32))

(assert (=> mapNonEmpty!3479 (= (arr!1939 (_values!2369 (v!2691 (underlying!302 thiss!992)))) (store mapRest!3479 mapKey!3480 mapValue!3480))))

(declare-fun b!89919 () Bool)

(declare-fun e!58546 () Bool)

(declare-fun e!58557 () Bool)

(assert (=> b!89919 (= e!58546 e!58557)))

(declare-fun b!89920 () Bool)

(declare-fun e!58540 () Bool)

(assert (=> b!89920 (= e!58557 e!58540)))

(declare-fun b!89921 () Bool)

(declare-fun e!58551 () Bool)

(declare-fun tp_is_empty!2555 () Bool)

(assert (=> b!89921 (= e!58551 tp_is_empty!2555)))

(declare-fun b!89922 () Bool)

(declare-fun e!58547 () Bool)

(declare-fun e!58542 () Bool)

(assert (=> b!89922 (= e!58547 (not e!58542))))

(declare-fun res!45937 () Bool)

(assert (=> b!89922 (=> res!45937 e!58542)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!89922 (= res!45937 (not (validMask!0 (mask!6436 (v!2691 (underlying!302 thiss!992))))))))

(declare-datatypes ((tuple2!2252 0))(
  ( (tuple2!2253 (_1!1136 (_ BitVec 64)) (_2!1136 V!3053)) )
))
(declare-fun lt!43266 () tuple2!2252)

(declare-datatypes ((List!1564 0))(
  ( (Nil!1561) (Cons!1560 (h!2152 tuple2!2252) (t!5346 List!1564)) )
))
(declare-datatypes ((ListLongMap!1497 0))(
  ( (ListLongMap!1498 (toList!764 List!1564)) )
))
(declare-fun lt!43255 () ListLongMap!1497)

(declare-fun lt!43262 () tuple2!2252)

(declare-fun lt!43256 () ListLongMap!1497)

(declare-fun +!121 (ListLongMap!1497 tuple2!2252) ListLongMap!1497)

(assert (=> b!89922 (= (+!121 lt!43256 lt!43266) (+!121 (+!121 lt!43255 lt!43266) lt!43262))))

(assert (=> b!89922 (= lt!43266 (tuple2!2253 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2274 (v!2691 (underlying!302 thiss!992)))))))

(declare-fun lt!43252 () V!3053)

(declare-datatypes ((Unit!2693 0))(
  ( (Unit!2694) )
))
(declare-fun lt!43264 () Unit!2693)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!40 (ListLongMap!1497 (_ BitVec 64) V!3053 (_ BitVec 64) V!3053) Unit!2693)

(assert (=> b!89922 (= lt!43264 (addCommutativeForDiffKeys!40 lt!43255 (select (arr!1938 (_keys!4066 (v!2691 (underlying!302 thiss!992)))) from!355) lt!43252 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2274 (v!2691 (underlying!302 thiss!992)))))))

(declare-fun lt!43250 () ListLongMap!1497)

(assert (=> b!89922 (= lt!43250 lt!43256)))

(assert (=> b!89922 (= lt!43256 (+!121 lt!43255 lt!43262))))

(declare-fun lt!43260 () ListLongMap!1497)

(declare-fun lt!43257 () tuple2!2252)

(assert (=> b!89922 (= lt!43250 (+!121 lt!43260 lt!43257))))

(declare-fun lt!43258 () ListLongMap!1497)

(assert (=> b!89922 (= lt!43255 (+!121 lt!43258 lt!43257))))

(assert (=> b!89922 (= lt!43257 (tuple2!2253 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2274 (v!2691 (underlying!302 thiss!992)))))))

(assert (=> b!89922 (= lt!43260 (+!121 lt!43258 lt!43262))))

(assert (=> b!89922 (= lt!43262 (tuple2!2253 (select (arr!1938 (_keys!4066 (v!2691 (underlying!302 thiss!992)))) from!355) lt!43252))))

(declare-fun lt!43251 () Unit!2693)

(assert (=> b!89922 (= lt!43251 (addCommutativeForDiffKeys!40 lt!43258 (select (arr!1938 (_keys!4066 (v!2691 (underlying!302 thiss!992)))) from!355) lt!43252 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2274 (v!2691 (underlying!302 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!85 (array!4074 array!4076 (_ BitVec 32) (_ BitVec 32) V!3053 V!3053 (_ BitVec 32) Int) ListLongMap!1497)

(assert (=> b!89922 (= lt!43258 (getCurrentListMapNoExtraKeys!85 (_keys!4066 (v!2691 (underlying!302 thiss!992))) (_values!2369 (v!2691 (underlying!302 thiss!992))) (mask!6436 (v!2691 (underlying!302 thiss!992))) (extraKeys!2217 (v!2691 (underlying!302 thiss!992))) (zeroValue!2274 (v!2691 (underlying!302 thiss!992))) (minValue!2274 (v!2691 (underlying!302 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2386 (v!2691 (underlying!302 thiss!992)))))))

(declare-fun b!89923 () Bool)

(declare-fun res!45940 () Bool)

(assert (=> b!89923 (=> res!45940 e!58542)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4074 (_ BitVec 32)) Bool)

(assert (=> b!89923 (= res!45940 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4066 (v!2691 (underlying!302 thiss!992))) (mask!6436 (v!2691 (underlying!302 thiss!992))))))))

(declare-fun b!89924 () Bool)

(declare-fun res!45939 () Bool)

(declare-fun e!58541 () Bool)

(assert (=> b!89924 (=> (not res!45939) (not e!58541))))

(declare-fun newMap!16 () LongMapFixedSize!776)

(assert (=> b!89924 (= res!45939 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6436 newMap!16)) (_size!437 (v!2691 (underlying!302 thiss!992)))))))

(declare-fun b!89925 () Bool)

(declare-fun e!58553 () Bool)

(declare-fun e!58552 () Bool)

(assert (=> b!89925 (= e!58553 e!58552)))

(declare-fun res!45938 () Bool)

(assert (=> b!89925 (=> (not res!45938) (not e!58552))))

(assert (=> b!89925 (= res!45938 (and (not (= (select (arr!1938 (_keys!4066 (v!2691 (underlying!302 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1938 (_keys!4066 (v!2691 (underlying!302 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1232 (ValueCell!934 V!3053) V!3053)

(declare-fun dynLambda!357 (Int (_ BitVec 64)) V!3053)

(assert (=> b!89925 (= lt!43252 (get!1232 (select (arr!1939 (_values!2369 (v!2691 (underlying!302 thiss!992)))) from!355) (dynLambda!357 (defaultEntry!2386 (v!2691 (underlying!302 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!58543 () Bool)

(declare-fun array_inv!1161 (array!4074) Bool)

(declare-fun array_inv!1162 (array!4076) Bool)

(assert (=> b!89926 (= e!58540 (and tp!9076 tp_is_empty!2555 (array_inv!1161 (_keys!4066 (v!2691 (underlying!302 thiss!992)))) (array_inv!1162 (_values!2369 (v!2691 (underlying!302 thiss!992)))) e!58543))))

(declare-fun mapNonEmpty!3480 () Bool)

(declare-fun mapRes!3479 () Bool)

(declare-fun tp!9078 () Bool)

(declare-fun e!58545 () Bool)

(assert (=> mapNonEmpty!3480 (= mapRes!3479 (and tp!9078 e!58545))))

(declare-fun mapKey!3479 () (_ BitVec 32))

(declare-fun mapRest!3480 () (Array (_ BitVec 32) ValueCell!934))

(declare-fun mapValue!3479 () ValueCell!934)

(assert (=> mapNonEmpty!3480 (= (arr!1939 (_values!2369 newMap!16)) (store mapRest!3480 mapKey!3479 mapValue!3479))))

(declare-fun res!45933 () Bool)

(assert (=> start!11070 (=> (not res!45933) (not e!58541))))

(declare-fun valid!339 (LongMap!582) Bool)

(assert (=> start!11070 (= res!45933 (valid!339 thiss!992))))

(assert (=> start!11070 e!58541))

(assert (=> start!11070 e!58546))

(assert (=> start!11070 true))

(declare-fun e!58544 () Bool)

(assert (=> start!11070 e!58544))

(declare-fun b!89927 () Bool)

(declare-fun res!45936 () Bool)

(assert (=> b!89927 (=> (not res!45936) (not e!58541))))

(declare-fun valid!340 (LongMapFixedSize!776) Bool)

(assert (=> b!89927 (= res!45936 (valid!340 newMap!16))))

(declare-fun b!89928 () Bool)

(assert (=> b!89928 (= e!58543 (and e!58551 mapRes!3480))))

(declare-fun condMapEmpty!3479 () Bool)

(declare-fun mapDefault!3479 () ValueCell!934)

