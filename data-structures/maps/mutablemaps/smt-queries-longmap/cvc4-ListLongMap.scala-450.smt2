; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8328 () Bool)

(assert start!8328)

(declare-fun b!54674 () Bool)

(declare-fun b_free!1797 () Bool)

(declare-fun b_next!1797 () Bool)

(assert (=> b!54674 (= b_free!1797 (not b_next!1797))))

(declare-fun tp!7494 () Bool)

(declare-fun b_and!3145 () Bool)

(assert (=> b!54674 (= tp!7494 b_and!3145)))

(declare-fun b!54676 () Bool)

(declare-fun b_free!1799 () Bool)

(declare-fun b_next!1799 () Bool)

(assert (=> b!54676 (= b_free!1799 (not b_next!1799))))

(declare-fun tp!7491 () Bool)

(declare-fun b_and!3147 () Bool)

(assert (=> b!54676 (= tp!7491 b_and!3147)))

(declare-fun b!54666 () Bool)

(declare-fun e!35740 () Bool)

(declare-fun e!35747 () Bool)

(assert (=> b!54666 (= e!35740 e!35747)))

(declare-fun res!30898 () Bool)

(assert (=> b!54666 (=> (not res!30898) (not e!35747))))

(declare-datatypes ((V!2733 0))(
  ( (V!2734 (val!1202 Int)) )
))
(declare-datatypes ((array!3552 0))(
  ( (array!3553 (arr!1698 (Array (_ BitVec 32) (_ BitVec 64))) (size!1927 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!814 0))(
  ( (ValueCellFull!814 (v!2286 V!2733)) (EmptyCell!814) )
))
(declare-datatypes ((array!3554 0))(
  ( (array!3555 (arr!1699 (Array (_ BitVec 32) ValueCell!814)) (size!1928 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!536 0))(
  ( (LongMapFixedSize!537 (defaultEntry!1982 Int) (mask!5829 (_ BitVec 32)) (extraKeys!1873 (_ BitVec 32)) (zeroValue!1900 V!2733) (minValue!1900 V!2733) (_size!317 (_ BitVec 32)) (_keys!3602 array!3552) (_values!1965 array!3554) (_vacant!317 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!346 0))(
  ( (Cell!347 (v!2287 LongMapFixedSize!536)) )
))
(declare-datatypes ((LongMap!346 0))(
  ( (LongMap!347 (underlying!184 Cell!346)) )
))
(declare-fun thiss!992 () LongMap!346)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1944 0))(
  ( (tuple2!1945 (_1!982 (_ BitVec 64)) (_2!982 V!2733)) )
))
(declare-datatypes ((List!1399 0))(
  ( (Nil!1396) (Cons!1395 (h!1975 tuple2!1944) (t!4573 List!1399)) )
))
(declare-datatypes ((ListLongMap!1323 0))(
  ( (ListLongMap!1324 (toList!677 List!1399)) )
))
(declare-fun lt!21708 () ListLongMap!1323)

(declare-fun contains!648 (ListLongMap!1323 (_ BitVec 64)) Bool)

(assert (=> b!54666 (= res!30898 (contains!648 lt!21708 (select (arr!1698 (_keys!3602 (v!2287 (underlying!184 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1946 0))(
  ( (tuple2!1947 (_1!983 Bool) (_2!983 LongMapFixedSize!536)) )
))
(declare-fun lt!21709 () tuple2!1946)

(declare-fun newMap!16 () LongMapFixedSize!536)

(declare-fun update!60 (LongMapFixedSize!536 (_ BitVec 64) V!2733) tuple2!1946)

(declare-fun get!1023 (ValueCell!814 V!2733) V!2733)

(declare-fun dynLambda!288 (Int (_ BitVec 64)) V!2733)

(assert (=> b!54666 (= lt!21709 (update!60 newMap!16 (select (arr!1698 (_keys!3602 (v!2287 (underlying!184 thiss!992)))) from!355) (get!1023 (select (arr!1699 (_values!1965 (v!2287 (underlying!184 thiss!992)))) from!355) (dynLambda!288 (defaultEntry!1982 (v!2287 (underlying!184 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!54667 () Bool)

(declare-fun e!35744 () Bool)

(declare-fun tp_is_empty!2315 () Bool)

(assert (=> b!54667 (= e!35744 tp_is_empty!2315)))

(declare-fun mapNonEmpty!2615 () Bool)

(declare-fun mapRes!2615 () Bool)

(declare-fun tp!7493 () Bool)

(assert (=> mapNonEmpty!2615 (= mapRes!2615 (and tp!7493 e!35744))))

(declare-fun mapRest!2616 () (Array (_ BitVec 32) ValueCell!814))

(declare-fun mapValue!2616 () ValueCell!814)

(declare-fun mapKey!2615 () (_ BitVec 32))

(assert (=> mapNonEmpty!2615 (= (arr!1699 (_values!1965 newMap!16)) (store mapRest!2616 mapKey!2615 mapValue!2616))))

(declare-fun b!54668 () Bool)

(declare-fun e!35743 () Bool)

(assert (=> b!54668 (= e!35743 tp_is_empty!2315)))

(declare-fun b!54669 () Bool)

(declare-fun e!35739 () Bool)

(declare-fun e!35746 () Bool)

(declare-fun mapRes!2616 () Bool)

(assert (=> b!54669 (= e!35739 (and e!35746 mapRes!2616))))

(declare-fun condMapEmpty!2615 () Bool)

(declare-fun mapDefault!2615 () ValueCell!814)

