; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14682 () Bool)

(assert start!14682)

(declare-fun b!138974 () Bool)

(declare-fun b_free!3001 () Bool)

(declare-fun b_next!3001 () Bool)

(assert (=> b!138974 (= b_free!3001 (not b_next!3001))))

(declare-fun tp!11469 () Bool)

(declare-fun b_and!8681 () Bool)

(assert (=> b!138974 (= tp!11469 b_and!8681)))

(declare-fun b!138979 () Bool)

(declare-fun b_free!3003 () Bool)

(declare-fun b_next!3003 () Bool)

(assert (=> b!138979 (= b_free!3003 (not b_next!3003))))

(declare-fun tp!11472 () Bool)

(declare-fun b_and!8683 () Bool)

(assert (=> b!138979 (= tp!11472 b_and!8683)))

(declare-fun b!138972 () Bool)

(declare-fun e!90591 () Bool)

(declare-fun e!90585 () Bool)

(assert (=> b!138972 (= e!90591 e!90585)))

(declare-fun b!138973 () Bool)

(declare-fun e!90587 () Bool)

(declare-fun e!90598 () Bool)

(assert (=> b!138973 (= e!90587 e!90598)))

(declare-fun res!66532 () Bool)

(assert (=> b!138973 (=> (not res!66532) (not e!90598))))

(declare-datatypes ((V!3537 0))(
  ( (V!3538 (val!1503 Int)) )
))
(declare-datatypes ((array!4866 0))(
  ( (array!4867 (arr!2300 (Array (_ BitVec 32) (_ BitVec 64))) (size!2572 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1115 0))(
  ( (ValueCellFull!1115 (v!3263 V!3537)) (EmptyCell!1115) )
))
(declare-datatypes ((array!4868 0))(
  ( (array!4869 (arr!2301 (Array (_ BitVec 32) ValueCell!1115)) (size!2573 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1138 0))(
  ( (LongMapFixedSize!1139 (defaultEntry!2931 Int) (mask!7267 (_ BitVec 32)) (extraKeys!2686 (_ BitVec 32)) (zeroValue!2781 V!3537) (minValue!2781 V!3537) (_size!618 (_ BitVec 32)) (_keys!4690 array!4866) (_values!2914 array!4868) (_vacant!618 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!926 0))(
  ( (Cell!927 (v!3264 LongMapFixedSize!1138)) )
))
(declare-datatypes ((LongMap!926 0))(
  ( (LongMap!927 (underlying!474 Cell!926)) )
))
(declare-fun thiss!992 () LongMap!926)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2658 0))(
  ( (tuple2!2659 (_1!1339 (_ BitVec 64)) (_2!1339 V!3537)) )
))
(declare-datatypes ((List!1753 0))(
  ( (Nil!1750) (Cons!1749 (h!2356 tuple2!2658) (t!6321 List!1753)) )
))
(declare-datatypes ((ListLongMap!1733 0))(
  ( (ListLongMap!1734 (toList!882 List!1753)) )
))
(declare-fun lt!72791 () ListLongMap!1733)

(declare-fun lt!72794 () ListLongMap!1733)

(assert (=> b!138973 (= res!66532 (and (= lt!72791 lt!72794) (not (= (select (arr!2300 (_keys!4690 (v!3264 (underlying!474 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2300 (_keys!4690 (v!3264 (underlying!474 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1138)

(declare-fun map!1429 (LongMapFixedSize!1138) ListLongMap!1733)

(assert (=> b!138973 (= lt!72794 (map!1429 newMap!16))))

(declare-fun getCurrentListMap!550 (array!4866 array!4868 (_ BitVec 32) (_ BitVec 32) V!3537 V!3537 (_ BitVec 32) Int) ListLongMap!1733)

(assert (=> b!138973 (= lt!72791 (getCurrentListMap!550 (_keys!4690 (v!3264 (underlying!474 thiss!992))) (_values!2914 (v!3264 (underlying!474 thiss!992))) (mask!7267 (v!3264 (underlying!474 thiss!992))) (extraKeys!2686 (v!3264 (underlying!474 thiss!992))) (zeroValue!2781 (v!3264 (underlying!474 thiss!992))) (minValue!2781 (v!3264 (underlying!474 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2931 (v!3264 (underlying!474 thiss!992)))))))

(declare-fun e!90590 () Bool)

(declare-fun tp_is_empty!2917 () Bool)

(declare-fun array_inv!1421 (array!4866) Bool)

(declare-fun array_inv!1422 (array!4868) Bool)

(assert (=> b!138974 (= e!90585 (and tp!11469 tp_is_empty!2917 (array_inv!1421 (_keys!4690 (v!3264 (underlying!474 thiss!992)))) (array_inv!1422 (_values!2914 (v!3264 (underlying!474 thiss!992)))) e!90590))))

(declare-fun b!138975 () Bool)

(declare-fun e!90592 () Bool)

(assert (=> b!138975 (= e!90592 tp_is_empty!2917)))

(declare-fun mapIsEmpty!4787 () Bool)

(declare-fun mapRes!4787 () Bool)

(assert (=> mapIsEmpty!4787 mapRes!4787))

(declare-fun res!66528 () Bool)

(assert (=> start!14682 (=> (not res!66528) (not e!90587))))

(declare-fun valid!546 (LongMap!926) Bool)

(assert (=> start!14682 (= res!66528 (valid!546 thiss!992))))

(assert (=> start!14682 e!90587))

(declare-fun e!90589 () Bool)

(assert (=> start!14682 e!90589))

(assert (=> start!14682 true))

(declare-fun e!90588 () Bool)

(assert (=> start!14682 e!90588))

(declare-fun mapIsEmpty!4788 () Bool)

(declare-fun mapRes!4788 () Bool)

(assert (=> mapIsEmpty!4788 mapRes!4788))

(declare-fun mapNonEmpty!4787 () Bool)

(declare-fun tp!11470 () Bool)

(declare-fun e!90586 () Bool)

(assert (=> mapNonEmpty!4787 (= mapRes!4788 (and tp!11470 e!90586))))

(declare-fun mapKey!4788 () (_ BitVec 32))

(declare-fun mapRest!4787 () (Array (_ BitVec 32) ValueCell!1115))

(declare-fun mapValue!4787 () ValueCell!1115)

(assert (=> mapNonEmpty!4787 (= (arr!2301 (_values!2914 (v!3264 (underlying!474 thiss!992)))) (store mapRest!4787 mapKey!4788 mapValue!4787))))

(declare-fun b!138976 () Bool)

(declare-fun res!66527 () Bool)

(assert (=> b!138976 (=> (not res!66527) (not e!90587))))

(declare-fun valid!547 (LongMapFixedSize!1138) Bool)

(assert (=> b!138976 (= res!66527 (valid!547 newMap!16))))

(declare-fun b!138977 () Bool)

(declare-fun e!90594 () Bool)

(assert (=> b!138977 (= e!90598 e!90594)))

(declare-fun res!66530 () Bool)

(assert (=> b!138977 (=> (not res!66530) (not e!90594))))

(declare-fun contains!914 (ListLongMap!1733 (_ BitVec 64)) Bool)

(assert (=> b!138977 (= res!66530 (contains!914 lt!72794 (select (arr!2300 (_keys!4690 (v!3264 (underlying!474 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2660 0))(
  ( (tuple2!2661 (_1!1340 Bool) (_2!1340 LongMapFixedSize!1138)) )
))
(declare-fun lt!72793 () tuple2!2660)

(declare-fun update!204 (LongMapFixedSize!1138 (_ BitVec 64) V!3537) tuple2!2660)

(declare-fun get!1523 (ValueCell!1115 V!3537) V!3537)

(declare-fun dynLambda!437 (Int (_ BitVec 64)) V!3537)

(assert (=> b!138977 (= lt!72793 (update!204 newMap!16 (select (arr!2300 (_keys!4690 (v!3264 (underlying!474 thiss!992)))) from!355) (get!1523 (select (arr!2301 (_values!2914 (v!3264 (underlying!474 thiss!992)))) from!355) (dynLambda!437 (defaultEntry!2931 (v!3264 (underlying!474 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!138978 () Bool)

(assert (=> b!138978 (= e!90586 tp_is_empty!2917)))

(declare-fun e!90597 () Bool)

(assert (=> b!138979 (= e!90588 (and tp!11472 tp_is_empty!2917 (array_inv!1421 (_keys!4690 newMap!16)) (array_inv!1422 (_values!2914 newMap!16)) e!90597))))

(declare-fun b!138980 () Bool)

(declare-fun e!90584 () Bool)

(assert (=> b!138980 (= e!90597 (and e!90584 mapRes!4787))))

(declare-fun condMapEmpty!4788 () Bool)

(declare-fun mapDefault!4788 () ValueCell!1115)

