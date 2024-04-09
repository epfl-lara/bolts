; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10520 () Bool)

(assert start!10520)

(declare-fun b!82597 () Bool)

(declare-fun b_free!2209 () Bool)

(declare-fun b_next!2209 () Bool)

(assert (=> b!82597 (= b_free!2209 (not b_next!2209))))

(declare-fun tp!8846 () Bool)

(declare-fun b_and!5005 () Bool)

(assert (=> b!82597 (= tp!8846 b_and!5005)))

(declare-fun b!82590 () Bool)

(declare-fun b_free!2211 () Bool)

(declare-fun b_next!2211 () Bool)

(assert (=> b!82590 (= b_free!2211 (not b_next!2211))))

(declare-fun tp!8844 () Bool)

(declare-fun b_and!5007 () Bool)

(assert (=> b!82590 (= tp!8844 b_and!5007)))

(declare-fun b!82581 () Bool)

(declare-fun e!53892 () Bool)

(declare-fun tp_is_empty!2521 () Bool)

(assert (=> b!82581 (= e!53892 tp_is_empty!2521)))

(declare-fun b!82582 () Bool)

(declare-fun e!53893 () Bool)

(declare-fun e!53888 () Bool)

(assert (=> b!82582 (= e!53893 e!53888)))

(declare-fun res!42810 () Bool)

(assert (=> b!82582 (=> (not res!42810) (not e!53888))))

(declare-datatypes ((V!3009 0))(
  ( (V!3010 (val!1305 Int)) )
))
(declare-datatypes ((array!3998 0))(
  ( (array!3999 (arr!1904 (Array (_ BitVec 32) (_ BitVec 64))) (size!2147 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!917 0))(
  ( (ValueCellFull!917 (v!2623 V!3009)) (EmptyCell!917) )
))
(declare-datatypes ((array!4000 0))(
  ( (array!4001 (arr!1905 (Array (_ BitVec 32) ValueCell!917)) (size!2148 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!742 0))(
  ( (LongMapFixedSize!743 (defaultEntry!2313 Int) (mask!6329 (_ BitVec 32)) (extraKeys!2156 (_ BitVec 32)) (zeroValue!2207 V!3009) (minValue!2207 V!3009) (_size!420 (_ BitVec 32)) (_keys!3981 array!3998) (_values!2296 array!4000) (_vacant!420 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2208 0))(
  ( (tuple2!2209 (_1!1114 Bool) (_2!1114 LongMapFixedSize!742)) )
))
(declare-fun lt!38536 () tuple2!2208)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!82582 (= res!42810 (and (_1!1114 lt!38536) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2434 0))(
  ( (Unit!2435) )
))
(declare-fun lt!38546 () Unit!2434)

(declare-fun e!53878 () Unit!2434)

(assert (=> b!82582 (= lt!38546 e!53878)))

(declare-datatypes ((tuple2!2210 0))(
  ( (tuple2!2211 (_1!1115 (_ BitVec 64)) (_2!1115 V!3009)) )
))
(declare-datatypes ((List!1542 0))(
  ( (Nil!1539) (Cons!1538 (h!2128 tuple2!2210) (t!5230 List!1542)) )
))
(declare-datatypes ((ListLongMap!1475 0))(
  ( (ListLongMap!1476 (toList!753 List!1542)) )
))
(declare-fun lt!38534 () ListLongMap!1475)

(declare-datatypes ((Cell!550 0))(
  ( (Cell!551 (v!2624 LongMapFixedSize!742)) )
))
(declare-datatypes ((LongMap!550 0))(
  ( (LongMap!551 (underlying!286 Cell!550)) )
))
(declare-fun thiss!992 () LongMap!550)

(declare-fun c!13165 () Bool)

(declare-fun contains!754 (ListLongMap!1475 (_ BitVec 64)) Bool)

(assert (=> b!82582 (= c!13165 (contains!754 lt!38534 (select (arr!1904 (_keys!3981 (v!2624 (underlying!286 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!742)

(declare-fun lt!38530 () V!3009)

(declare-fun update!116 (LongMapFixedSize!742 (_ BitVec 64) V!3009) tuple2!2208)

(assert (=> b!82582 (= lt!38536 (update!116 newMap!16 (select (arr!1904 (_keys!3981 (v!2624 (underlying!286 thiss!992)))) from!355) lt!38530))))

(declare-fun b!82583 () Bool)

(declare-fun res!42811 () Bool)

(declare-fun e!53891 () Bool)

(assert (=> b!82583 (=> (not res!42811) (not e!53891))))

(assert (=> b!82583 (= res!42811 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2147 (_keys!3981 (v!2624 (underlying!286 thiss!992)))))))))

(declare-fun b!82584 () Bool)

(declare-fun e!53886 () Bool)

(assert (=> b!82584 (= e!53891 e!53886)))

(declare-fun res!42812 () Bool)

(assert (=> b!82584 (=> (not res!42812) (not e!53886))))

(declare-fun lt!38529 () ListLongMap!1475)

(assert (=> b!82584 (= res!42812 (= lt!38529 lt!38534))))

(declare-fun map!1186 (LongMapFixedSize!742) ListLongMap!1475)

(assert (=> b!82584 (= lt!38534 (map!1186 newMap!16))))

(declare-fun getCurrentListMap!438 (array!3998 array!4000 (_ BitVec 32) (_ BitVec 32) V!3009 V!3009 (_ BitVec 32) Int) ListLongMap!1475)

(assert (=> b!82584 (= lt!38529 (getCurrentListMap!438 (_keys!3981 (v!2624 (underlying!286 thiss!992))) (_values!2296 (v!2624 (underlying!286 thiss!992))) (mask!6329 (v!2624 (underlying!286 thiss!992))) (extraKeys!2156 (v!2624 (underlying!286 thiss!992))) (zeroValue!2207 (v!2624 (underlying!286 thiss!992))) (minValue!2207 (v!2624 (underlying!286 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2313 (v!2624 (underlying!286 thiss!992)))))))

(declare-fun res!42809 () Bool)

(assert (=> start!10520 (=> (not res!42809) (not e!53891))))

(declare-fun valid!319 (LongMap!550) Bool)

(assert (=> start!10520 (= res!42809 (valid!319 thiss!992))))

(assert (=> start!10520 e!53891))

(declare-fun e!53876 () Bool)

(assert (=> start!10520 e!53876))

(assert (=> start!10520 true))

(declare-fun e!53885 () Bool)

(assert (=> start!10520 e!53885))

(declare-fun b!82585 () Bool)

(assert (=> b!82585 (= e!53886 e!53893)))

(declare-fun res!42808 () Bool)

(assert (=> b!82585 (=> (not res!42808) (not e!53893))))

(assert (=> b!82585 (= res!42808 (and (not (= (select (arr!1904 (_keys!3981 (v!2624 (underlying!286 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1904 (_keys!3981 (v!2624 (underlying!286 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1201 (ValueCell!917 V!3009) V!3009)

(declare-fun dynLambda!348 (Int (_ BitVec 64)) V!3009)

(assert (=> b!82585 (= lt!38530 (get!1201 (select (arr!1905 (_values!2296 (v!2624 (underlying!286 thiss!992)))) from!355) (dynLambda!348 (defaultEntry!2313 (v!2624 (underlying!286 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!82586 () Bool)

(declare-fun e!53880 () Bool)

(assert (=> b!82586 (= e!53880 tp_is_empty!2521)))

(declare-fun mapIsEmpty!3349 () Bool)

(declare-fun mapRes!3349 () Bool)

(assert (=> mapIsEmpty!3349 mapRes!3349))

(declare-fun b!82587 () Bool)

(declare-fun e!53881 () Bool)

(declare-fun e!53883 () Bool)

(assert (=> b!82587 (= e!53881 e!53883)))

(declare-fun mapNonEmpty!3349 () Bool)

(declare-fun tp!8845 () Bool)

(declare-fun e!53879 () Bool)

(assert (=> mapNonEmpty!3349 (= mapRes!3349 (and tp!8845 e!53879))))

(declare-fun mapKey!3349 () (_ BitVec 32))

(declare-fun mapValue!3349 () ValueCell!917)

(declare-fun mapRest!3350 () (Array (_ BitVec 32) ValueCell!917))

(assert (=> mapNonEmpty!3349 (= (arr!1905 (_values!2296 newMap!16)) (store mapRest!3350 mapKey!3349 mapValue!3349))))

(declare-fun b!82588 () Bool)

(declare-fun Unit!2436 () Unit!2434)

(assert (=> b!82588 (= e!53878 Unit!2436)))

(declare-fun b!82589 () Bool)

(declare-fun e!53889 () Bool)

(assert (=> b!82589 (= e!53889 (and e!53880 mapRes!3349))))

(declare-fun condMapEmpty!3349 () Bool)

(declare-fun mapDefault!3350 () ValueCell!917)

