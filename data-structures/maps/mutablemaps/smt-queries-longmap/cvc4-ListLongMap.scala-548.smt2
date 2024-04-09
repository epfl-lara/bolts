; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14590 () Bool)

(assert start!14590)

(declare-fun b!138019 () Bool)

(declare-fun b_free!2973 () Bool)

(declare-fun b_next!2973 () Bool)

(assert (=> b!138019 (= b_free!2973 (not b_next!2973))))

(declare-fun tp!11379 () Bool)

(declare-fun b_and!8601 () Bool)

(assert (=> b!138019 (= tp!11379 b_and!8601)))

(declare-fun b!138022 () Bool)

(declare-fun b_free!2975 () Bool)

(declare-fun b_next!2975 () Bool)

(assert (=> b!138022 (= b_free!2975 (not b_next!2975))))

(declare-fun tp!11381 () Bool)

(declare-fun b_and!8603 () Bool)

(assert (=> b!138022 (= tp!11381 b_and!8603)))

(declare-fun b!138016 () Bool)

(declare-fun e!89922 () Bool)

(declare-fun tp_is_empty!2903 () Bool)

(assert (=> b!138016 (= e!89922 tp_is_empty!2903)))

(declare-fun b!138017 () Bool)

(declare-fun e!89921 () Bool)

(declare-fun e!89916 () Bool)

(assert (=> b!138017 (= e!89921 e!89916)))

(declare-fun res!66128 () Bool)

(assert (=> b!138017 (=> (not res!66128) (not e!89916))))

(declare-datatypes ((V!3517 0))(
  ( (V!3518 (val!1496 Int)) )
))
(declare-datatypes ((array!4836 0))(
  ( (array!4837 (arr!2286 (Array (_ BitVec 32) (_ BitVec 64))) (size!2557 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1108 0))(
  ( (ValueCellFull!1108 (v!3243 V!3517)) (EmptyCell!1108) )
))
(declare-datatypes ((array!4838 0))(
  ( (array!4839 (arr!2287 (Array (_ BitVec 32) ValueCell!1108)) (size!2558 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1124 0))(
  ( (LongMapFixedSize!1125 (defaultEntry!2914 Int) (mask!7240 (_ BitVec 32)) (extraKeys!2671 (_ BitVec 32)) (zeroValue!2765 V!3517) (minValue!2765 V!3517) (_size!611 (_ BitVec 32)) (_keys!4671 array!4836) (_values!2897 array!4838) (_vacant!611 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!912 0))(
  ( (Cell!913 (v!3244 LongMapFixedSize!1124)) )
))
(declare-datatypes ((LongMap!912 0))(
  ( (LongMap!913 (underlying!467 Cell!912)) )
))
(declare-fun thiss!992 () LongMap!912)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2638 0))(
  ( (tuple2!2639 (_1!1329 (_ BitVec 64)) (_2!1329 V!3517)) )
))
(declare-datatypes ((List!1746 0))(
  ( (Nil!1743) (Cons!1742 (h!2349 tuple2!2638) (t!6282 List!1746)) )
))
(declare-datatypes ((ListLongMap!1723 0))(
  ( (ListLongMap!1724 (toList!877 List!1746)) )
))
(declare-fun lt!72242 () ListLongMap!1723)

(declare-fun contains!907 (ListLongMap!1723 (_ BitVec 64)) Bool)

(assert (=> b!138017 (= res!66128 (contains!907 lt!72242 (select (arr!2286 (_keys!4671 (v!3244 (underlying!467 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2640 0))(
  ( (tuple2!2641 (_1!1330 Bool) (_2!1330 LongMapFixedSize!1124)) )
))
(declare-fun lt!72240 () tuple2!2640)

(declare-fun newMap!16 () LongMapFixedSize!1124)

(declare-fun update!199 (LongMapFixedSize!1124 (_ BitVec 64) V!3517) tuple2!2640)

(declare-fun get!1509 (ValueCell!1108 V!3517) V!3517)

(declare-fun dynLambda!432 (Int (_ BitVec 64)) V!3517)

(assert (=> b!138017 (= lt!72240 (update!199 newMap!16 (select (arr!2286 (_keys!4671 (v!3244 (underlying!467 thiss!992)))) from!355) (get!1509 (select (arr!2287 (_values!2897 (v!3244 (underlying!467 thiss!992)))) from!355) (dynLambda!432 (defaultEntry!2914 (v!3244 (underlying!467 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!4739 () Bool)

(declare-fun mapRes!4739 () Bool)

(assert (=> mapIsEmpty!4739 mapRes!4739))

(declare-fun res!66129 () Bool)

(declare-fun e!89920 () Bool)

(assert (=> start!14590 (=> (not res!66129) (not e!89920))))

(declare-fun valid!536 (LongMap!912) Bool)

(assert (=> start!14590 (= res!66129 (valid!536 thiss!992))))

(assert (=> start!14590 e!89920))

(declare-fun e!89923 () Bool)

(assert (=> start!14590 e!89923))

(assert (=> start!14590 true))

(declare-fun e!89915 () Bool)

(assert (=> start!14590 e!89915))

(declare-fun b!138018 () Bool)

(declare-fun res!66126 () Bool)

(assert (=> b!138018 (=> (not res!66126) (not e!89920))))

(assert (=> b!138018 (= res!66126 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2557 (_keys!4671 (v!3244 (underlying!467 thiss!992)))))))))

(declare-fun e!89912 () Bool)

(declare-fun e!89918 () Bool)

(declare-fun array_inv!1411 (array!4836) Bool)

(declare-fun array_inv!1412 (array!4838) Bool)

(assert (=> b!138019 (= e!89912 (and tp!11379 tp_is_empty!2903 (array_inv!1411 (_keys!4671 (v!3244 (underlying!467 thiss!992)))) (array_inv!1412 (_values!2897 (v!3244 (underlying!467 thiss!992)))) e!89918))))

(declare-fun b!138020 () Bool)

(declare-fun e!89910 () Bool)

(assert (=> b!138020 (= e!89910 tp_is_empty!2903)))

(declare-fun mapIsEmpty!4740 () Bool)

(declare-fun mapRes!4740 () Bool)

(assert (=> mapIsEmpty!4740 mapRes!4740))

(declare-fun b!138021 () Bool)

(declare-fun res!66130 () Bool)

(assert (=> b!138021 (=> (not res!66130) (not e!89920))))

(declare-fun valid!537 (LongMapFixedSize!1124) Bool)

(assert (=> b!138021 (= res!66130 (valid!537 newMap!16))))

(declare-fun e!89919 () Bool)

(assert (=> b!138022 (= e!89915 (and tp!11381 tp_is_empty!2903 (array_inv!1411 (_keys!4671 newMap!16)) (array_inv!1412 (_values!2897 newMap!16)) e!89919))))

(declare-fun b!138023 () Bool)

(declare-fun e!89924 () Bool)

(assert (=> b!138023 (= e!89924 e!89912)))

(declare-fun b!138024 () Bool)

(declare-fun e!89917 () Bool)

(assert (=> b!138024 (= e!89918 (and e!89917 mapRes!4739))))

(declare-fun condMapEmpty!4739 () Bool)

(declare-fun mapDefault!4739 () ValueCell!1108)

