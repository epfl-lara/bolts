; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14718 () Bool)

(assert start!14718)

(declare-fun b!139474 () Bool)

(declare-fun b_free!3021 () Bool)

(declare-fun b_next!3021 () Bool)

(assert (=> b!139474 (= b_free!3021 (not b_next!3021))))

(declare-fun tp!11533 () Bool)

(declare-fun b_and!8725 () Bool)

(assert (=> b!139474 (= tp!11533 b_and!8725)))

(declare-fun b!139471 () Bool)

(declare-fun b_free!3023 () Bool)

(declare-fun b_next!3023 () Bool)

(assert (=> b!139471 (= b_free!3023 (not b_next!3023))))

(declare-fun tp!11536 () Bool)

(declare-fun b_and!8727 () Bool)

(assert (=> b!139471 (= tp!11536 b_and!8727)))

(declare-fun mapNonEmpty!4821 () Bool)

(declare-fun mapRes!4821 () Bool)

(declare-fun tp!11535 () Bool)

(declare-fun e!90959 () Bool)

(assert (=> mapNonEmpty!4821 (= mapRes!4821 (and tp!11535 e!90959))))

(declare-fun mapKey!4821 () (_ BitVec 32))

(declare-datatypes ((V!3549 0))(
  ( (V!3550 (val!1508 Int)) )
))
(declare-datatypes ((array!4888 0))(
  ( (array!4889 (arr!2310 (Array (_ BitVec 32) (_ BitVec 64))) (size!2582 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1120 0))(
  ( (ValueCellFull!1120 (v!3275 V!3549)) (EmptyCell!1120) )
))
(declare-datatypes ((array!4890 0))(
  ( (array!4891 (arr!2311 (Array (_ BitVec 32) ValueCell!1120)) (size!2583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1148 0))(
  ( (LongMapFixedSize!1149 (defaultEntry!2938 Int) (mask!7276 (_ BitVec 32)) (extraKeys!2693 (_ BitVec 32)) (zeroValue!2788 V!3549) (minValue!2788 V!3549) (_size!623 (_ BitVec 32)) (_keys!4697 array!4888) (_values!2921 array!4890) (_vacant!623 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!936 0))(
  ( (Cell!937 (v!3276 LongMapFixedSize!1148)) )
))
(declare-datatypes ((LongMap!936 0))(
  ( (LongMap!937 (underlying!479 Cell!936)) )
))
(declare-fun thiss!992 () LongMap!936)

(declare-fun mapRest!4822 () (Array (_ BitVec 32) ValueCell!1120))

(declare-fun mapValue!4821 () ValueCell!1120)

(assert (=> mapNonEmpty!4821 (= (arr!2311 (_values!2921 (v!3276 (underlying!479 thiss!992)))) (store mapRest!4822 mapKey!4821 mapValue!4821))))

(declare-fun b!139466 () Bool)

(declare-fun e!90964 () Bool)

(declare-fun e!90953 () Bool)

(assert (=> b!139466 (= e!90964 e!90953)))

(declare-fun res!66715 () Bool)

(assert (=> b!139466 (=> (not res!66715) (not e!90953))))

(declare-datatypes ((tuple2!2678 0))(
  ( (tuple2!2679 (_1!1349 (_ BitVec 64)) (_2!1349 V!3549)) )
))
(declare-datatypes ((List!1761 0))(
  ( (Nil!1758) (Cons!1757 (h!2364 tuple2!2678) (t!6349 List!1761)) )
))
(declare-datatypes ((ListLongMap!1743 0))(
  ( (ListLongMap!1744 (toList!887 List!1761)) )
))
(declare-fun lt!73035 () ListLongMap!1743)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!920 (ListLongMap!1743 (_ BitVec 64)) Bool)

(assert (=> b!139466 (= res!66715 (contains!920 lt!73035 (select (arr!2310 (_keys!4697 (v!3276 (underlying!479 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2680 0))(
  ( (tuple2!2681 (_1!1350 Bool) (_2!1350 LongMapFixedSize!1148)) )
))
(declare-fun lt!73031 () tuple2!2680)

(declare-fun newMap!16 () LongMapFixedSize!1148)

(declare-fun update!209 (LongMapFixedSize!1148 (_ BitVec 64) V!3549) tuple2!2680)

(declare-fun get!1532 (ValueCell!1120 V!3549) V!3549)

(declare-fun dynLambda!442 (Int (_ BitVec 64)) V!3549)

(assert (=> b!139466 (= lt!73031 (update!209 newMap!16 (select (arr!2310 (_keys!4697 (v!3276 (underlying!479 thiss!992)))) from!355) (get!1532 (select (arr!2311 (_values!2921 (v!3276 (underlying!479 thiss!992)))) from!355) (dynLambda!442 (defaultEntry!2938 (v!3276 (underlying!479 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!139467 () Bool)

(declare-fun e!90960 () Bool)

(declare-fun tp_is_empty!2927 () Bool)

(assert (=> b!139467 (= e!90960 tp_is_empty!2927)))

(declare-fun mapIsEmpty!4821 () Bool)

(assert (=> mapIsEmpty!4821 mapRes!4821))

(declare-fun b!139468 () Bool)

(declare-fun e!90961 () Bool)

(declare-fun e!90963 () Bool)

(assert (=> b!139468 (= e!90961 e!90963)))

(declare-fun b!139469 () Bool)

(declare-fun e!90965 () Bool)

(assert (=> b!139469 (= e!90965 e!90964)))

(declare-fun res!66718 () Bool)

(assert (=> b!139469 (=> (not res!66718) (not e!90964))))

(declare-fun lt!73032 () ListLongMap!1743)

(assert (=> b!139469 (= res!66718 (and (= lt!73032 lt!73035) (not (= (select (arr!2310 (_keys!4697 (v!3276 (underlying!479 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2310 (_keys!4697 (v!3276 (underlying!479 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1434 (LongMapFixedSize!1148) ListLongMap!1743)

(assert (=> b!139469 (= lt!73035 (map!1434 newMap!16))))

(declare-fun getCurrentListMap!553 (array!4888 array!4890 (_ BitVec 32) (_ BitVec 32) V!3549 V!3549 (_ BitVec 32) Int) ListLongMap!1743)

(assert (=> b!139469 (= lt!73032 (getCurrentListMap!553 (_keys!4697 (v!3276 (underlying!479 thiss!992))) (_values!2921 (v!3276 (underlying!479 thiss!992))) (mask!7276 (v!3276 (underlying!479 thiss!992))) (extraKeys!2693 (v!3276 (underlying!479 thiss!992))) (zeroValue!2788 (v!3276 (underlying!479 thiss!992))) (minValue!2788 (v!3276 (underlying!479 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2938 (v!3276 (underlying!479 thiss!992)))))))

(declare-fun b!139470 () Bool)

(declare-fun e!90954 () Bool)

(assert (=> b!139470 (= e!90954 (and e!90960 mapRes!4821))))

(declare-fun condMapEmpty!4822 () Bool)

(declare-fun mapDefault!4822 () ValueCell!1120)

