; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13840 () Bool)

(assert start!13840)

(declare-fun b!127890 () Bool)

(declare-fun b_free!2877 () Bool)

(declare-fun b_next!2877 () Bool)

(assert (=> b!127890 (= b_free!2877 (not b_next!2877))))

(declare-fun tp!11046 () Bool)

(declare-fun b_and!7921 () Bool)

(assert (=> b!127890 (= tp!11046 b_and!7921)))

(declare-fun b!127889 () Bool)

(declare-fun b_free!2879 () Bool)

(declare-fun b_next!2879 () Bool)

(assert (=> b!127889 (= b_free!2879 (not b_next!2879))))

(declare-fun tp!11047 () Bool)

(declare-fun b_and!7923 () Bool)

(assert (=> b!127889 (= tp!11047 b_and!7923)))

(declare-fun b!127881 () Bool)

(declare-fun e!83543 () Bool)

(declare-fun e!83552 () Bool)

(assert (=> b!127881 (= e!83543 e!83552)))

(declare-fun mapNonEmpty!4549 () Bool)

(declare-fun mapRes!4549 () Bool)

(declare-fun tp!11045 () Bool)

(declare-fun e!83544 () Bool)

(assert (=> mapNonEmpty!4549 (= mapRes!4549 (and tp!11045 e!83544))))

(declare-fun mapKey!4549 () (_ BitVec 32))

(declare-datatypes ((V!3453 0))(
  ( (V!3454 (val!1472 Int)) )
))
(declare-datatypes ((array!4728 0))(
  ( (array!4729 (arr!2238 (Array (_ BitVec 32) (_ BitVec 64))) (size!2503 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1084 0))(
  ( (ValueCellFull!1084 (v!3144 V!3453)) (EmptyCell!1084) )
))
(declare-datatypes ((array!4730 0))(
  ( (array!4731 (arr!2239 (Array (_ BitVec 32) ValueCell!1084)) (size!2504 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1076 0))(
  ( (LongMapFixedSize!1077 (defaultEntry!2806 Int) (mask!7074 (_ BitVec 32)) (extraKeys!2583 (_ BitVec 32)) (zeroValue!2667 V!3453) (minValue!2667 V!3453) (_size!587 (_ BitVec 32)) (_keys!4543 array!4728) (_values!2789 array!4730) (_vacant!587 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1076)

(declare-fun mapRest!4550 () (Array (_ BitVec 32) ValueCell!1084))

(declare-fun mapValue!4550 () ValueCell!1084)

(assert (=> mapNonEmpty!4549 (= (arr!2239 (_values!2789 newMap!16)) (store mapRest!4550 mapKey!4549 mapValue!4550))))

(declare-fun b!127882 () Bool)

(declare-fun e!83549 () Bool)

(declare-fun e!83542 () Bool)

(assert (=> b!127882 (= e!83549 e!83542)))

(declare-fun res!61792 () Bool)

(assert (=> b!127882 (=> (not res!61792) (not e!83542))))

(declare-datatypes ((Cell!866 0))(
  ( (Cell!867 (v!3145 LongMapFixedSize!1076)) )
))
(declare-datatypes ((LongMap!866 0))(
  ( (LongMap!867 (underlying!444 Cell!866)) )
))
(declare-fun thiss!992 () LongMap!866)

(declare-datatypes ((tuple2!2586 0))(
  ( (tuple2!2587 (_1!1303 (_ BitVec 64)) (_2!1303 V!3453)) )
))
(declare-datatypes ((List!1725 0))(
  ( (Nil!1722) (Cons!1721 (h!2324 tuple2!2586) (t!6120 List!1725)) )
))
(declare-datatypes ((ListLongMap!1695 0))(
  ( (ListLongMap!1696 (toList!863 List!1725)) )
))
(declare-fun lt!66145 () ListLongMap!1695)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!883 (ListLongMap!1695 (_ BitVec 64)) Bool)

(assert (=> b!127882 (= res!61792 (contains!883 lt!66145 (select (arr!2238 (_keys!4543 (v!3145 (underlying!444 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2588 0))(
  ( (tuple2!2589 (_1!1304 Bool) (_2!1304 LongMapFixedSize!1076)) )
))
(declare-fun lt!66146 () tuple2!2588)

(declare-fun update!187 (LongMapFixedSize!1076 (_ BitVec 64) V!3453) tuple2!2588)

(declare-fun get!1463 (ValueCell!1084 V!3453) V!3453)

(declare-fun dynLambda!420 (Int (_ BitVec 64)) V!3453)

(assert (=> b!127882 (= lt!66146 (update!187 newMap!16 (select (arr!2238 (_keys!4543 (v!3145 (underlying!444 thiss!992)))) from!355) (get!1463 (select (arr!2239 (_values!2789 (v!3145 (underlying!444 thiss!992)))) from!355) (dynLambda!420 (defaultEntry!2806 (v!3145 (underlying!444 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!127883 () Bool)

(declare-fun e!83540 () Bool)

(declare-fun e!83547 () Bool)

(assert (=> b!127883 (= e!83540 (and e!83547 mapRes!4549))))

(declare-fun condMapEmpty!4549 () Bool)

(declare-fun mapDefault!4549 () ValueCell!1084)

