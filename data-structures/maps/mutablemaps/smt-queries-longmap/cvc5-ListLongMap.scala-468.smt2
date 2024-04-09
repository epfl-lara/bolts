; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9030 () Bool)

(assert start!9030)

(declare-fun b!63799 () Bool)

(declare-fun b_free!2005 () Bool)

(declare-fun b_next!2005 () Bool)

(assert (=> b!63799 (= b_free!2005 (not b_next!2005))))

(declare-fun tp!8153 () Bool)

(declare-fun b_and!3901 () Bool)

(assert (=> b!63799 (= tp!8153 b_and!3901)))

(declare-fun b!63789 () Bool)

(declare-fun b_free!2007 () Bool)

(declare-fun b_next!2007 () Bool)

(assert (=> b!63789 (= b_free!2007 (not b_next!2007))))

(declare-fun tp!8152 () Bool)

(declare-fun b_and!3903 () Bool)

(assert (=> b!63789 (= tp!8152 b_and!3903)))

(declare-fun b!63780 () Bool)

(declare-fun e!41830 () Bool)

(declare-fun tp_is_empty!2419 () Bool)

(assert (=> b!63780 (= e!41830 tp_is_empty!2419)))

(declare-fun b!63781 () Bool)

(declare-fun res!34849 () Bool)

(declare-fun e!41829 () Bool)

(assert (=> b!63781 (=> (not res!34849) (not e!41829))))

(declare-datatypes ((V!2873 0))(
  ( (V!2874 (val!1254 Int)) )
))
(declare-datatypes ((array!3770 0))(
  ( (array!3771 (arr!1802 (Array (_ BitVec 32) (_ BitVec 64))) (size!2035 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!866 0))(
  ( (ValueCellFull!866 (v!2432 V!2873)) (EmptyCell!866) )
))
(declare-datatypes ((array!3772 0))(
  ( (array!3773 (arr!1803 (Array (_ BitVec 32) ValueCell!866)) (size!2036 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!640 0))(
  ( (LongMapFixedSize!641 (defaultEntry!2108 Int) (mask!6024 (_ BitVec 32)) (extraKeys!1983 (_ BitVec 32)) (zeroValue!2018 V!2873) (minValue!2018 V!2873) (_size!369 (_ BitVec 32)) (_keys!3744 array!3770) (_values!2091 array!3772) (_vacant!369 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!450 0))(
  ( (Cell!451 (v!2433 LongMapFixedSize!640)) )
))
(declare-datatypes ((LongMap!450 0))(
  ( (LongMap!451 (underlying!236 Cell!450)) )
))
(declare-fun thiss!992 () LongMap!450)

(assert (=> b!63781 (= res!34849 (and (= (size!2036 (_values!2091 (v!2433 (underlying!236 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6024 (v!2433 (underlying!236 thiss!992))))) (= (size!2035 (_keys!3744 (v!2433 (underlying!236 thiss!992)))) (size!2036 (_values!2091 (v!2433 (underlying!236 thiss!992))))) (bvsge (mask!6024 (v!2433 (underlying!236 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1983 (v!2433 (underlying!236 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1983 (v!2433 (underlying!236 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!63782 () Bool)

(declare-fun e!41833 () Bool)

(assert (=> b!63782 (= e!41833 tp_is_empty!2419)))

(declare-fun res!34846 () Bool)

(declare-fun e!41824 () Bool)

(assert (=> start!9030 (=> (not res!34846) (not e!41824))))

(declare-fun valid!265 (LongMap!450) Bool)

(assert (=> start!9030 (= res!34846 (valid!265 thiss!992))))

(assert (=> start!9030 e!41824))

(declare-fun e!41823 () Bool)

(assert (=> start!9030 e!41823))

(assert (=> start!9030 true))

(declare-fun e!41826 () Bool)

(assert (=> start!9030 e!41826))

(declare-fun b!63783 () Bool)

(declare-datatypes ((Unit!1751 0))(
  ( (Unit!1752) )
))
(declare-fun e!41828 () Unit!1751)

(declare-fun Unit!1753 () Unit!1751)

(assert (=> b!63783 (= e!41828 Unit!1753)))

(declare-fun lt!26880 () Unit!1751)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!34 (array!3770 array!3772 (_ BitVec 32) (_ BitVec 32) V!2873 V!2873 (_ BitVec 64) (_ BitVec 32) Int) Unit!1751)

(assert (=> b!63783 (= lt!26880 (lemmaListMapContainsThenArrayContainsFrom!34 (_keys!3744 (v!2433 (underlying!236 thiss!992))) (_values!2091 (v!2433 (underlying!236 thiss!992))) (mask!6024 (v!2433 (underlying!236 thiss!992))) (extraKeys!1983 (v!2433 (underlying!236 thiss!992))) (zeroValue!2018 (v!2433 (underlying!236 thiss!992))) (minValue!2018 (v!2433 (underlying!236 thiss!992))) (select (arr!1802 (_keys!3744 (v!2433 (underlying!236 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2108 (v!2433 (underlying!236 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!63783 (arrayContainsKey!0 (_keys!3744 (v!2433 (underlying!236 thiss!992))) (select (arr!1802 (_keys!3744 (v!2433 (underlying!236 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!26878 () Unit!1751)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3770 (_ BitVec 32) (_ BitVec 32)) Unit!1751)

(assert (=> b!63783 (= lt!26878 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3744 (v!2433 (underlying!236 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1467 0))(
  ( (Nil!1464) (Cons!1463 (h!2047 (_ BitVec 64)) (t!4881 List!1467)) )
))
(declare-fun arrayNoDuplicates!0 (array!3770 (_ BitVec 32) List!1467) Bool)

(assert (=> b!63783 (arrayNoDuplicates!0 (_keys!3744 (v!2433 (underlying!236 thiss!992))) from!355 Nil!1464)))

(declare-fun lt!26884 () Unit!1751)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3770 (_ BitVec 32) (_ BitVec 64) List!1467) Unit!1751)

(assert (=> b!63783 (= lt!26884 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3744 (v!2433 (underlying!236 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1802 (_keys!3744 (v!2433 (underlying!236 thiss!992)))) from!355) (Cons!1463 (select (arr!1802 (_keys!3744 (v!2433 (underlying!236 thiss!992)))) from!355) Nil!1464)))))

(assert (=> b!63783 false))

(declare-fun b!63784 () Bool)

(declare-fun e!41835 () Bool)

(assert (=> b!63784 (= e!41823 e!41835)))

(declare-fun b!63785 () Bool)

(declare-fun e!41821 () Bool)

(assert (=> b!63785 (= e!41824 e!41821)))

(declare-fun res!34848 () Bool)

(assert (=> b!63785 (=> (not res!34848) (not e!41821))))

(declare-datatypes ((tuple2!2074 0))(
  ( (tuple2!2075 (_1!1047 (_ BitVec 64)) (_2!1047 V!2873)) )
))
(declare-datatypes ((List!1468 0))(
  ( (Nil!1465) (Cons!1464 (h!2048 tuple2!2074) (t!4882 List!1468)) )
))
(declare-datatypes ((ListLongMap!1393 0))(
  ( (ListLongMap!1394 (toList!712 List!1468)) )
))
(declare-fun lt!26881 () ListLongMap!1393)

(declare-fun lt!26882 () ListLongMap!1393)

(assert (=> b!63785 (= res!34848 (and (= lt!26881 lt!26882) (not (= (select (arr!1802 (_keys!3744 (v!2433 (underlying!236 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1802 (_keys!3744 (v!2433 (underlying!236 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!640)

(declare-fun map!1122 (LongMapFixedSize!640) ListLongMap!1393)

(assert (=> b!63785 (= lt!26882 (map!1122 newMap!16))))

(declare-fun getCurrentListMap!408 (array!3770 array!3772 (_ BitVec 32) (_ BitVec 32) V!2873 V!2873 (_ BitVec 32) Int) ListLongMap!1393)

(assert (=> b!63785 (= lt!26881 (getCurrentListMap!408 (_keys!3744 (v!2433 (underlying!236 thiss!992))) (_values!2091 (v!2433 (underlying!236 thiss!992))) (mask!6024 (v!2433 (underlying!236 thiss!992))) (extraKeys!1983 (v!2433 (underlying!236 thiss!992))) (zeroValue!2018 (v!2433 (underlying!236 thiss!992))) (minValue!2018 (v!2433 (underlying!236 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2108 (v!2433 (underlying!236 thiss!992)))))))

(declare-fun b!63786 () Bool)

(declare-fun Unit!1754 () Unit!1751)

(assert (=> b!63786 (= e!41828 Unit!1754)))

(declare-fun b!63787 () Bool)

(declare-fun e!41825 () Bool)

(declare-fun mapRes!2963 () Bool)

(assert (=> b!63787 (= e!41825 (and e!41833 mapRes!2963))))

(declare-fun condMapEmpty!2964 () Bool)

(declare-fun mapDefault!2964 () ValueCell!866)

