; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10152 () Bool)

(assert start!10152)

(declare-fun b!77254 () Bool)

(declare-fun b_free!2169 () Bool)

(declare-fun b_next!2169 () Bool)

(assert (=> b!77254 (= b_free!2169 (not b_next!2169))))

(declare-fun tp!8705 () Bool)

(declare-fun b_and!4733 () Bool)

(assert (=> b!77254 (= tp!8705 b_and!4733)))

(declare-fun b!77251 () Bool)

(declare-fun b_free!2171 () Bool)

(declare-fun b_next!2171 () Bool)

(assert (=> b!77251 (= b_free!2171 (not b_next!2171))))

(declare-fun tp!8703 () Bool)

(declare-fun b_and!4735 () Bool)

(assert (=> b!77251 (= tp!8703 b_and!4735)))

(declare-fun mapIsEmpty!3269 () Bool)

(declare-fun mapRes!3270 () Bool)

(assert (=> mapIsEmpty!3269 mapRes!3270))

(declare-fun b!77241 () Bool)

(declare-fun e!50486 () Bool)

(declare-fun e!50493 () Bool)

(assert (=> b!77241 (= e!50486 e!50493)))

(declare-fun res!40572 () Bool)

(assert (=> b!77241 (=> (not res!40572) (not e!50493))))

(declare-datatypes ((V!2981 0))(
  ( (V!2982 (val!1295 Int)) )
))
(declare-datatypes ((array!3952 0))(
  ( (array!3953 (arr!1884 (Array (_ BitVec 32) (_ BitVec 64))) (size!2125 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!907 0))(
  ( (ValueCellFull!907 (v!2581 V!2981)) (EmptyCell!907) )
))
(declare-datatypes ((array!3954 0))(
  ( (array!3955 (arr!1885 (Array (_ BitVec 32) ValueCell!907)) (size!2126 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!722 0))(
  ( (LongMapFixedSize!723 (defaultEntry!2264 Int) (mask!6255 (_ BitVec 32)) (extraKeys!2115 (_ BitVec 32)) (zeroValue!2162 V!2981) (minValue!2162 V!2981) (_size!410 (_ BitVec 32)) (_keys!3924 array!3952) (_values!2247 array!3954) (_vacant!410 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!530 0))(
  ( (Cell!531 (v!2582 LongMapFixedSize!722)) )
))
(declare-datatypes ((LongMap!530 0))(
  ( (LongMap!531 (underlying!276 Cell!530)) )
))
(declare-fun thiss!992 () LongMap!530)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!77241 (= res!40572 (and (not (= (select (arr!1884 (_keys!3924 (v!2582 (underlying!276 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1884 (_keys!3924 (v!2582 (underlying!276 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!35281 () V!2981)

(declare-fun get!1179 (ValueCell!907 V!2981) V!2981)

(declare-fun dynLambda!342 (Int (_ BitVec 64)) V!2981)

(assert (=> b!77241 (= lt!35281 (get!1179 (select (arr!1885 (_values!2247 (v!2582 (underlying!276 thiss!992)))) from!355) (dynLambda!342 (defaultEntry!2264 (v!2582 (underlying!276 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!77242 () Bool)

(declare-fun e!50489 () Bool)

(assert (=> b!77242 (= e!50493 e!50489)))

(declare-fun res!40571 () Bool)

(assert (=> b!77242 (=> (not res!40571) (not e!50489))))

(declare-datatypes ((tuple2!2174 0))(
  ( (tuple2!2175 (_1!1097 Bool) (_2!1097 LongMapFixedSize!722)) )
))
(declare-fun lt!35283 () tuple2!2174)

(assert (=> b!77242 (= res!40571 (and (_1!1097 lt!35283) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2243 0))(
  ( (Unit!2244) )
))
(declare-fun lt!35282 () Unit!2243)

(declare-fun e!50480 () Unit!2243)

(assert (=> b!77242 (= lt!35282 e!50480)))

(declare-fun c!11803 () Bool)

(declare-datatypes ((tuple2!2176 0))(
  ( (tuple2!2177 (_1!1098 (_ BitVec 64)) (_2!1098 V!2981)) )
))
(declare-datatypes ((List!1524 0))(
  ( (Nil!1521) (Cons!1520 (h!2108 tuple2!2176) (t!5154 List!1524)) )
))
(declare-datatypes ((ListLongMap!1455 0))(
  ( (ListLongMap!1456 (toList!743 List!1524)) )
))
(declare-fun lt!35285 () ListLongMap!1455)

(declare-fun contains!741 (ListLongMap!1455 (_ BitVec 64)) Bool)

(assert (=> b!77242 (= c!11803 (contains!741 lt!35285 (select (arr!1884 (_keys!3924 (v!2582 (underlying!276 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!722)

(declare-fun update!109 (LongMapFixedSize!722 (_ BitVec 64) V!2981) tuple2!2174)

(assert (=> b!77242 (= lt!35283 (update!109 newMap!16 (select (arr!1884 (_keys!3924 (v!2582 (underlying!276 thiss!992)))) from!355) lt!35281))))

(declare-fun b!77243 () Bool)

(declare-fun e!50478 () Bool)

(declare-fun e!50487 () Bool)

(assert (=> b!77243 (= e!50478 (and e!50487 mapRes!3270))))

(declare-fun condMapEmpty!3269 () Bool)

(declare-fun mapDefault!3269 () ValueCell!907)

