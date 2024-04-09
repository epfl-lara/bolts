; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75398 () Bool)

(assert start!75398)

(declare-fun b!887445 () Bool)

(declare-fun b_free!15521 () Bool)

(declare-fun b_next!15521 () Bool)

(assert (=> b!887445 (= b_free!15521 (not b_next!15521))))

(declare-fun tp!54502 () Bool)

(declare-fun b_and!25763 () Bool)

(assert (=> b!887445 (= tp!54502 b_and!25763)))

(declare-fun b!887440 () Bool)

(declare-fun e!494278 () Bool)

(declare-fun e!494279 () Bool)

(assert (=> b!887440 (= e!494278 e!494279)))

(declare-fun b!887441 () Bool)

(declare-fun e!494276 () Bool)

(declare-fun e!494277 () Bool)

(assert (=> b!887441 (= e!494276 e!494277)))

(declare-fun c!93627 () Bool)

(declare-datatypes ((V!28763 0))(
  ( (V!28764 (val!8975 Int)) )
))
(declare-datatypes ((ValueCell!8443 0))(
  ( (ValueCellFull!8443 (v!11429 V!28763)) (EmptyCell!8443) )
))
(declare-datatypes ((array!51646 0))(
  ( (array!51647 (arr!24834 (Array (_ BitVec 32) ValueCell!8443)) (size!25275 (_ BitVec 32))) )
))
(declare-datatypes ((array!51648 0))(
  ( (array!51649 (arr!24835 (Array (_ BitVec 32) (_ BitVec 64))) (size!25276 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3902 0))(
  ( (LongMapFixedSize!3903 (defaultEntry!5142 Int) (mask!25535 (_ BitVec 32)) (extraKeys!4836 (_ BitVec 32)) (zeroValue!4940 V!28763) (minValue!4940 V!28763) (_size!2006 (_ BitVec 32)) (_keys!9815 array!51648) (_values!5127 array!51646) (_vacant!2006 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1056 0))(
  ( (Cell!1057 (v!11430 LongMapFixedSize!3902)) )
))
(declare-datatypes ((LongMap!1056 0))(
  ( (LongMap!1057 (underlying!539 Cell!1056)) )
))
(declare-fun thiss!833 () LongMap!1056)

(declare-fun key!673 () (_ BitVec 64))

(declare-fun contains!4305 (LongMap!1056 (_ BitVec 64)) Bool)

(assert (=> b!887441 (= c!93627 (contains!4305 thiss!833 key!673))))

(declare-fun lt!401362 () V!28763)

(declare-fun apply!395 (LongMapFixedSize!3902 (_ BitVec 64)) V!28763)

(assert (=> b!887441 (= lt!401362 (apply!395 (v!11430 (underlying!539 thiss!833)) key!673))))

(declare-fun b!887442 () Bool)

(declare-fun e!494274 () Bool)

(declare-fun tp_is_empty!17849 () Bool)

(assert (=> b!887442 (= e!494274 tp_is_empty!17849)))

(declare-fun res!602184 () Bool)

(assert (=> start!75398 (=> (not res!602184) (not e!494276))))

(declare-fun valid!1510 (LongMap!1056) Bool)

(assert (=> start!75398 (= res!602184 (valid!1510 thiss!833))))

(assert (=> start!75398 e!494276))

(assert (=> start!75398 e!494278))

(assert (=> start!75398 true))

(declare-fun b!887443 () Bool)

(declare-datatypes ((Option!440 0))(
  ( (Some!439 (v!11431 V!28763)) (None!438) )
))
(declare-fun get!13130 (Option!440) V!28763)

(declare-datatypes ((tuple2!11948 0))(
  ( (tuple2!11949 (_1!5984 (_ BitVec 64)) (_2!5984 V!28763)) )
))
(declare-datatypes ((List!17766 0))(
  ( (Nil!17763) (Cons!17762 (h!18893 tuple2!11948) (t!25067 List!17766)) )
))
(declare-fun getValueByKey!434 (List!17766 (_ BitVec 64)) Option!440)

(declare-datatypes ((ListLongMap!10659 0))(
  ( (ListLongMap!10660 (toList!5345 List!17766)) )
))
(declare-fun map!12087 (LongMap!1056) ListLongMap!10659)

(assert (=> b!887443 (= e!494277 (not (= lt!401362 (get!13130 (getValueByKey!434 (toList!5345 (map!12087 thiss!833)) key!673)))))))

(declare-fun mapNonEmpty!28297 () Bool)

(declare-fun mapRes!28297 () Bool)

(declare-fun tp!54501 () Bool)

(declare-fun e!494281 () Bool)

(assert (=> mapNonEmpty!28297 (= mapRes!28297 (and tp!54501 e!494281))))

(declare-fun mapKey!28297 () (_ BitVec 32))

(declare-fun mapValue!28297 () ValueCell!8443)

(declare-fun mapRest!28297 () (Array (_ BitVec 32) ValueCell!8443))

(assert (=> mapNonEmpty!28297 (= (arr!24834 (_values!5127 (v!11430 (underlying!539 thiss!833)))) (store mapRest!28297 mapKey!28297 mapValue!28297))))

(declare-fun b!887444 () Bool)

(declare-fun e!494280 () Bool)

(assert (=> b!887444 (= e!494279 e!494280)))

(declare-fun e!494273 () Bool)

(declare-fun array_inv!19522 (array!51648) Bool)

(declare-fun array_inv!19523 (array!51646) Bool)

(assert (=> b!887445 (= e!494280 (and tp!54502 tp_is_empty!17849 (array_inv!19522 (_keys!9815 (v!11430 (underlying!539 thiss!833)))) (array_inv!19523 (_values!5127 (v!11430 (underlying!539 thiss!833)))) e!494273))))

(declare-fun mapIsEmpty!28297 () Bool)

(assert (=> mapIsEmpty!28297 mapRes!28297))

(declare-fun b!887446 () Bool)

(declare-fun dynLambda!1284 (Int (_ BitVec 64)) V!28763)

(assert (=> b!887446 (= e!494277 (not (= lt!401362 (dynLambda!1284 (defaultEntry!5142 (v!11430 (underlying!539 thiss!833))) key!673))))))

(declare-fun b!887447 () Bool)

(assert (=> b!887447 (= e!494281 tp_is_empty!17849)))

(declare-fun b!887448 () Bool)

(assert (=> b!887448 (= e!494273 (and e!494274 mapRes!28297))))

(declare-fun condMapEmpty!28297 () Bool)

(declare-fun mapDefault!28297 () ValueCell!8443)

