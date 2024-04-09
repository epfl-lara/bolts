; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9124 () Bool)

(assert start!9124)

(declare-fun b!64594 () Bool)

(declare-fun b_free!2017 () Bool)

(declare-fun b_next!2017 () Bool)

(assert (=> b!64594 (= b_free!2017 (not b_next!2017))))

(declare-fun tp!8194 () Bool)

(declare-fun b_and!3949 () Bool)

(assert (=> b!64594 (= tp!8194 b_and!3949)))

(declare-fun b!64587 () Bool)

(declare-fun b_free!2019 () Bool)

(declare-fun b_next!2019 () Bool)

(assert (=> b!64587 (= b_free!2019 (not b_next!2019))))

(declare-fun tp!8196 () Bool)

(declare-fun b_and!3951 () Bool)

(assert (=> b!64587 (= tp!8196 b_and!3951)))

(declare-fun b!64581 () Bool)

(declare-fun e!42334 () Bool)

(declare-fun tp_is_empty!2425 () Bool)

(assert (=> b!64581 (= e!42334 tp_is_empty!2425)))

(declare-fun b!64582 () Bool)

(declare-fun e!42327 () Bool)

(declare-fun e!42330 () Bool)

(assert (=> b!64582 (= e!42327 e!42330)))

(declare-fun res!35196 () Bool)

(assert (=> b!64582 (=> (not res!35196) (not e!42330))))

(declare-datatypes ((V!2881 0))(
  ( (V!2882 (val!1257 Int)) )
))
(declare-datatypes ((array!3784 0))(
  ( (array!3785 (arr!1808 (Array (_ BitVec 32) (_ BitVec 64))) (size!2042 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!869 0))(
  ( (ValueCellFull!869 (v!2444 V!2881)) (EmptyCell!869) )
))
(declare-datatypes ((array!3786 0))(
  ( (array!3787 (arr!1809 (Array (_ BitVec 32) ValueCell!869)) (size!2043 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!646 0))(
  ( (LongMapFixedSize!647 (defaultEntry!2121 Int) (mask!6043 (_ BitVec 32)) (extraKeys!1994 (_ BitVec 32)) (zeroValue!2030 V!2881) (minValue!2030 V!2881) (_size!372 (_ BitVec 32)) (_keys!3759 array!3784) (_values!2104 array!3786) (_vacant!372 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2082 0))(
  ( (tuple2!2083 (_1!1051 Bool) (_2!1051 LongMapFixedSize!646)) )
))
(declare-fun lt!27425 () tuple2!2082)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!64582 (= res!35196 (and (_1!1051 lt!27425) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!1780 0))(
  ( (Unit!1781) )
))
(declare-fun lt!27427 () Unit!1780)

(declare-fun e!42340 () Unit!1780)

(assert (=> b!64582 (= lt!27427 e!42340)))

(declare-fun c!8845 () Bool)

(declare-datatypes ((Cell!456 0))(
  ( (Cell!457 (v!2445 LongMapFixedSize!646)) )
))
(declare-datatypes ((LongMap!456 0))(
  ( (LongMap!457 (underlying!239 Cell!456)) )
))
(declare-fun thiss!992 () LongMap!456)

(declare-datatypes ((tuple2!2084 0))(
  ( (tuple2!2085 (_1!1052 (_ BitVec 64)) (_2!1052 V!2881)) )
))
(declare-datatypes ((List!1473 0))(
  ( (Nil!1470) (Cons!1469 (h!2053 tuple2!2084) (t!4903 List!1473)) )
))
(declare-datatypes ((ListLongMap!1399 0))(
  ( (ListLongMap!1400 (toList!715 List!1473)) )
))
(declare-fun lt!27428 () ListLongMap!1399)

(declare-fun contains!707 (ListLongMap!1399 (_ BitVec 64)) Bool)

(assert (=> b!64582 (= c!8845 (contains!707 lt!27428 (select (arr!1808 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!646)

(declare-fun update!91 (LongMapFixedSize!646 (_ BitVec 64) V!2881) tuple2!2082)

(declare-fun get!1109 (ValueCell!869 V!2881) V!2881)

(declare-fun dynLambda!319 (Int (_ BitVec 64)) V!2881)

(assert (=> b!64582 (= lt!27425 (update!91 newMap!16 (select (arr!1808 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) from!355) (get!1109 (select (arr!1809 (_values!2104 (v!2445 (underlying!239 thiss!992)))) from!355) (dynLambda!319 (defaultEntry!2121 (v!2445 (underlying!239 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!64584 () Bool)

(declare-fun Unit!1782 () Unit!1780)

(assert (=> b!64584 (= e!42340 Unit!1782)))

(declare-fun lt!27426 () Unit!1780)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!37 (array!3784 array!3786 (_ BitVec 32) (_ BitVec 32) V!2881 V!2881 (_ BitVec 64) (_ BitVec 32) Int) Unit!1780)

(assert (=> b!64584 (= lt!27426 (lemmaListMapContainsThenArrayContainsFrom!37 (_keys!3759 (v!2445 (underlying!239 thiss!992))) (_values!2104 (v!2445 (underlying!239 thiss!992))) (mask!6043 (v!2445 (underlying!239 thiss!992))) (extraKeys!1994 (v!2445 (underlying!239 thiss!992))) (zeroValue!2030 (v!2445 (underlying!239 thiss!992))) (minValue!2030 (v!2445 (underlying!239 thiss!992))) (select (arr!1808 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2121 (v!2445 (underlying!239 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!64584 (arrayContainsKey!0 (_keys!3759 (v!2445 (underlying!239 thiss!992))) (select (arr!1808 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!27429 () Unit!1780)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3784 (_ BitVec 32) (_ BitVec 32)) Unit!1780)

(assert (=> b!64584 (= lt!27429 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3759 (v!2445 (underlying!239 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1474 0))(
  ( (Nil!1471) (Cons!1470 (h!2054 (_ BitVec 64)) (t!4904 List!1474)) )
))
(declare-fun arrayNoDuplicates!0 (array!3784 (_ BitVec 32) List!1474) Bool)

(assert (=> b!64584 (arrayNoDuplicates!0 (_keys!3759 (v!2445 (underlying!239 thiss!992))) from!355 Nil!1471)))

(declare-fun lt!27430 () Unit!1780)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3784 (_ BitVec 32) (_ BitVec 64) List!1474) Unit!1780)

(assert (=> b!64584 (= lt!27430 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3759 (v!2445 (underlying!239 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1808 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) from!355) (Cons!1470 (select (arr!1808 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) from!355) Nil!1471)))))

(assert (=> b!64584 false))

(declare-fun b!64585 () Bool)

(declare-fun e!42339 () Bool)

(declare-fun e!42329 () Bool)

(assert (=> b!64585 (= e!42339 e!42329)))

(declare-fun mapIsEmpty!2987 () Bool)

(declare-fun mapRes!2988 () Bool)

(assert (=> mapIsEmpty!2987 mapRes!2988))

(declare-fun b!64586 () Bool)

(declare-fun Unit!1783 () Unit!1780)

(assert (=> b!64586 (= e!42340 Unit!1783)))

(declare-fun e!42328 () Bool)

(declare-fun e!42335 () Bool)

(declare-fun array_inv!1069 (array!3784) Bool)

(declare-fun array_inv!1070 (array!3786) Bool)

(assert (=> b!64587 (= e!42335 (and tp!8196 tp_is_empty!2425 (array_inv!1069 (_keys!3759 newMap!16)) (array_inv!1070 (_values!2104 newMap!16)) e!42328))))

(declare-fun b!64588 () Bool)

(declare-fun e!42336 () Bool)

(assert (=> b!64588 (= e!42336 e!42339)))

(declare-fun b!64589 () Bool)

(declare-fun res!35190 () Bool)

(assert (=> b!64589 (=> (not res!35190) (not e!42330))))

(assert (=> b!64589 (= res!35190 (and (= (size!2043 (_values!2104 (v!2445 (underlying!239 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6043 (v!2445 (underlying!239 thiss!992))))) (= (size!2042 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) (size!2043 (_values!2104 (v!2445 (underlying!239 thiss!992))))) (bvsge (mask!6043 (v!2445 (underlying!239 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1994 (v!2445 (underlying!239 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1994 (v!2445 (underlying!239 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!64590 () Bool)

(assert (=> b!64590 (= e!42330 (not (arrayNoDuplicates!0 (_keys!3759 (v!2445 (underlying!239 thiss!992))) #b00000000000000000000000000000000 Nil!1471)))))

(declare-fun b!64591 () Bool)

(declare-fun e!42338 () Bool)

(assert (=> b!64591 (= e!42338 tp_is_empty!2425)))

(declare-fun b!64592 () Bool)

(declare-fun e!42326 () Bool)

(assert (=> b!64592 (= e!42326 tp_is_empty!2425)))

(declare-fun mapIsEmpty!2988 () Bool)

(declare-fun mapRes!2987 () Bool)

(assert (=> mapIsEmpty!2988 mapRes!2987))

(declare-fun b!64593 () Bool)

(declare-fun e!42325 () Bool)

(assert (=> b!64593 (= e!42325 e!42327)))

(declare-fun res!35195 () Bool)

(assert (=> b!64593 (=> (not res!35195) (not e!42327))))

(declare-fun lt!27431 () ListLongMap!1399)

(assert (=> b!64593 (= res!35195 (and (= lt!27431 lt!27428) (not (= (select (arr!1808 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1808 (_keys!3759 (v!2445 (underlying!239 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1127 (LongMapFixedSize!646) ListLongMap!1399)

(assert (=> b!64593 (= lt!27428 (map!1127 newMap!16))))

(declare-fun getCurrentListMap!411 (array!3784 array!3786 (_ BitVec 32) (_ BitVec 32) V!2881 V!2881 (_ BitVec 32) Int) ListLongMap!1399)

(assert (=> b!64593 (= lt!27431 (getCurrentListMap!411 (_keys!3759 (v!2445 (underlying!239 thiss!992))) (_values!2104 (v!2445 (underlying!239 thiss!992))) (mask!6043 (v!2445 (underlying!239 thiss!992))) (extraKeys!1994 (v!2445 (underlying!239 thiss!992))) (zeroValue!2030 (v!2445 (underlying!239 thiss!992))) (minValue!2030 (v!2445 (underlying!239 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2121 (v!2445 (underlying!239 thiss!992)))))))

(declare-fun b!64583 () Bool)

(assert (=> b!64583 (= e!42328 (and e!42326 mapRes!2988))))

(declare-fun condMapEmpty!2988 () Bool)

(declare-fun mapDefault!2988 () ValueCell!869)

