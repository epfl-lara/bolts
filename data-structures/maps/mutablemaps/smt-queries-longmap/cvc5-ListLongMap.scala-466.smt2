; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8734 () Bool)

(assert start!8734)

(declare-fun b!60558 () Bool)

(declare-fun b_free!1981 () Bool)

(declare-fun b_next!1981 () Bool)

(assert (=> b!60558 (= b_free!1981 (not b_next!1981))))

(declare-fun tp!8063 () Bool)

(declare-fun b_and!3685 () Bool)

(assert (=> b!60558 (= tp!8063 b_and!3685)))

(declare-fun b!60548 () Bool)

(declare-fun b_free!1983 () Bool)

(declare-fun b_next!1983 () Bool)

(assert (=> b!60548 (= b_free!1983 (not b_next!1983))))

(declare-fun tp!8066 () Bool)

(declare-fun b_and!3687 () Bool)

(assert (=> b!60548 (= tp!8066 b_and!3687)))

(declare-fun b!60547 () Bool)

(declare-datatypes ((Unit!1619 0))(
  ( (Unit!1620) )
))
(declare-fun e!39822 () Unit!1619)

(declare-fun Unit!1621 () Unit!1619)

(assert (=> b!60547 (= e!39822 Unit!1621)))

(declare-fun e!39823 () Bool)

(declare-fun e!39825 () Bool)

(declare-fun tp_is_empty!2407 () Bool)

(declare-datatypes ((V!2857 0))(
  ( (V!2858 (val!1248 Int)) )
))
(declare-datatypes ((array!3742 0))(
  ( (array!3743 (arr!1790 (Array (_ BitVec 32) (_ BitVec 64))) (size!2021 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!860 0))(
  ( (ValueCellFull!860 (v!2400 V!2857)) (EmptyCell!860) )
))
(declare-datatypes ((array!3744 0))(
  ( (array!3745 (arr!1791 (Array (_ BitVec 32) ValueCell!860)) (size!2022 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!628 0))(
  ( (LongMapFixedSize!629 (defaultEntry!2066 Int) (mask!5962 (_ BitVec 32)) (extraKeys!1949 (_ BitVec 32)) (zeroValue!1980 V!2857) (minValue!1980 V!2857) (_size!363 (_ BitVec 32)) (_keys!3694 array!3742) (_values!2049 array!3744) (_vacant!363 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!628)

(declare-fun array_inv!1055 (array!3742) Bool)

(declare-fun array_inv!1056 (array!3744) Bool)

(assert (=> b!60548 (= e!39823 (and tp!8066 tp_is_empty!2407 (array_inv!1055 (_keys!3694 newMap!16)) (array_inv!1056 (_values!2049 newMap!16)) e!39825))))

(declare-fun mapNonEmpty!2911 () Bool)

(declare-fun mapRes!2911 () Bool)

(declare-fun tp!8064 () Bool)

(declare-fun e!39817 () Bool)

(assert (=> mapNonEmpty!2911 (= mapRes!2911 (and tp!8064 e!39817))))

(declare-fun mapRest!2912 () (Array (_ BitVec 32) ValueCell!860))

(declare-fun mapKey!2911 () (_ BitVec 32))

(declare-fun mapValue!2912 () ValueCell!860)

(assert (=> mapNonEmpty!2911 (= (arr!1791 (_values!2049 newMap!16)) (store mapRest!2912 mapKey!2911 mapValue!2912))))

(declare-fun b!60549 () Bool)

(declare-fun e!39818 () Bool)

(declare-fun e!39820 () Bool)

(assert (=> b!60549 (= e!39818 e!39820)))

(declare-fun b!60550 () Bool)

(declare-fun e!39826 () Bool)

(assert (=> b!60550 (= e!39820 e!39826)))

(declare-fun res!33460 () Bool)

(declare-fun e!39819 () Bool)

(assert (=> start!8734 (=> (not res!33460) (not e!39819))))

(declare-datatypes ((Cell!438 0))(
  ( (Cell!439 (v!2401 LongMapFixedSize!628)) )
))
(declare-datatypes ((LongMap!438 0))(
  ( (LongMap!439 (underlying!230 Cell!438)) )
))
(declare-fun thiss!992 () LongMap!438)

(declare-fun valid!257 (LongMap!438) Bool)

(assert (=> start!8734 (= res!33460 (valid!257 thiss!992))))

(assert (=> start!8734 e!39819))

(assert (=> start!8734 e!39818))

(assert (=> start!8734 true))

(assert (=> start!8734 e!39823))

(declare-fun b!60551 () Bool)

(declare-fun res!33462 () Bool)

(assert (=> b!60551 (=> (not res!33462) (not e!39819))))

(declare-fun valid!258 (LongMapFixedSize!628) Bool)

(assert (=> b!60551 (= res!33462 (valid!258 newMap!16))))

(declare-fun mapIsEmpty!2911 () Bool)

(declare-fun mapRes!2912 () Bool)

(assert (=> mapIsEmpty!2911 mapRes!2912))

(declare-fun b!60552 () Bool)

(declare-fun e!39811 () Bool)

(declare-fun e!39813 () Bool)

(assert (=> b!60552 (= e!39811 e!39813)))

(declare-fun res!33464 () Bool)

(assert (=> b!60552 (=> (not res!33464) (not e!39813))))

(declare-datatypes ((tuple2!2056 0))(
  ( (tuple2!2057 (_1!1038 Bool) (_2!1038 LongMapFixedSize!628)) )
))
(declare-fun lt!24763 () tuple2!2056)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!60552 (= res!33464 (and (_1!1038 lt!24763) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!24758 () Unit!1619)

(assert (=> b!60552 (= lt!24758 e!39822)))

(declare-datatypes ((tuple2!2058 0))(
  ( (tuple2!2059 (_1!1039 (_ BitVec 64)) (_2!1039 V!2857)) )
))
(declare-datatypes ((List!1458 0))(
  ( (Nil!1455) (Cons!1454 (h!2036 tuple2!2058) (t!4832 List!1458)) )
))
(declare-datatypes ((ListLongMap!1383 0))(
  ( (ListLongMap!1384 (toList!707 List!1458)) )
))
(declare-fun lt!24762 () ListLongMap!1383)

(declare-fun c!7868 () Bool)

(declare-fun contains!696 (ListLongMap!1383 (_ BitVec 64)) Bool)

(assert (=> b!60552 (= c!7868 (contains!696 lt!24762 (select (arr!1790 (_keys!3694 (v!2401 (underlying!230 thiss!992)))) from!355)))))

(declare-fun update!86 (LongMapFixedSize!628 (_ BitVec 64) V!2857) tuple2!2056)

(declare-fun get!1089 (ValueCell!860 V!2857) V!2857)

(declare-fun dynLambda!314 (Int (_ BitVec 64)) V!2857)

(assert (=> b!60552 (= lt!24763 (update!86 newMap!16 (select (arr!1790 (_keys!3694 (v!2401 (underlying!230 thiss!992)))) from!355) (get!1089 (select (arr!1791 (_values!2049 (v!2401 (underlying!230 thiss!992)))) from!355) (dynLambda!314 (defaultEntry!2066 (v!2401 (underlying!230 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!60553 () Bool)

(assert (=> b!60553 (= e!39819 e!39811)))

(declare-fun res!33461 () Bool)

(assert (=> b!60553 (=> (not res!33461) (not e!39811))))

(declare-fun lt!24764 () ListLongMap!1383)

(assert (=> b!60553 (= res!33461 (and (= lt!24764 lt!24762) (not (= (select (arr!1790 (_keys!3694 (v!2401 (underlying!230 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1790 (_keys!3694 (v!2401 (underlying!230 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1114 (LongMapFixedSize!628) ListLongMap!1383)

(assert (=> b!60553 (= lt!24762 (map!1114 newMap!16))))

(declare-fun getCurrentListMap!404 (array!3742 array!3744 (_ BitVec 32) (_ BitVec 32) V!2857 V!2857 (_ BitVec 32) Int) ListLongMap!1383)

(assert (=> b!60553 (= lt!24764 (getCurrentListMap!404 (_keys!3694 (v!2401 (underlying!230 thiss!992))) (_values!2049 (v!2401 (underlying!230 thiss!992))) (mask!5962 (v!2401 (underlying!230 thiss!992))) (extraKeys!1949 (v!2401 (underlying!230 thiss!992))) (zeroValue!1980 (v!2401 (underlying!230 thiss!992))) (minValue!1980 (v!2401 (underlying!230 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2066 (v!2401 (underlying!230 thiss!992)))))))

(declare-fun b!60554 () Bool)

(declare-fun res!33463 () Bool)

(assert (=> b!60554 (=> (not res!33463) (not e!39819))))

(assert (=> b!60554 (= res!33463 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5962 newMap!16)) (_size!363 (v!2401 (underlying!230 thiss!992)))))))

(declare-fun b!60555 () Bool)

(declare-fun res!33458 () Bool)

(assert (=> b!60555 (=> (not res!33458) (not e!39813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!60555 (= res!33458 (validMask!0 (mask!5962 (v!2401 (underlying!230 thiss!992)))))))

(declare-fun b!60556 () Bool)

(declare-fun e!39815 () Bool)

(assert (=> b!60556 (= e!39815 tp_is_empty!2407)))

(declare-fun b!60557 () Bool)

(declare-fun res!33459 () Bool)

(assert (=> b!60557 (=> (not res!33459) (not e!39819))))

(assert (=> b!60557 (= res!33459 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2021 (_keys!3694 (v!2401 (underlying!230 thiss!992)))))))))

(declare-fun e!39814 () Bool)

(assert (=> b!60558 (= e!39826 (and tp!8063 tp_is_empty!2407 (array_inv!1055 (_keys!3694 (v!2401 (underlying!230 thiss!992)))) (array_inv!1056 (_values!2049 (v!2401 (underlying!230 thiss!992)))) e!39814))))

(declare-fun b!60559 () Bool)

(declare-fun e!39812 () Bool)

(assert (=> b!60559 (= e!39825 (and e!39812 mapRes!2911))))

(declare-fun condMapEmpty!2912 () Bool)

(declare-fun mapDefault!2912 () ValueCell!860)

