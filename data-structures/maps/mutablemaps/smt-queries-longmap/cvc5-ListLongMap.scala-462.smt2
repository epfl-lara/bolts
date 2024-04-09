; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8396 () Bool)

(assert start!8396)

(declare-fun b!56729 () Bool)

(declare-fun b_free!1933 () Bool)

(declare-fun b_next!1933 () Bool)

(assert (=> b!56729 (= b_free!1933 (not b_next!1933))))

(declare-fun tp!7900 () Bool)

(declare-fun b_and!3417 () Bool)

(assert (=> b!56729 (= tp!7900 b_and!3417)))

(declare-fun b!56733 () Bool)

(declare-fun b_free!1935 () Bool)

(declare-fun b_next!1935 () Bool)

(assert (=> b!56733 (= b_free!1935 (not b_next!1935))))

(declare-fun tp!7901 () Bool)

(declare-fun b_and!3419 () Bool)

(assert (=> b!56733 (= tp!7901 b_and!3419)))

(declare-fun b!56722 () Bool)

(declare-fun e!37380 () Bool)

(declare-fun e!37384 () Bool)

(assert (=> b!56722 (= e!37380 e!37384)))

(declare-fun b!56723 () Bool)

(declare-fun res!31862 () Bool)

(declare-fun e!37383 () Bool)

(assert (=> b!56723 (=> (not res!31862) (not e!37383))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2825 0))(
  ( (V!2826 (val!1236 Int)) )
))
(declare-datatypes ((array!3688 0))(
  ( (array!3689 (arr!1766 (Array (_ BitVec 32) (_ BitVec 64))) (size!1995 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!848 0))(
  ( (ValueCellFull!848 (v!2354 V!2825)) (EmptyCell!848) )
))
(declare-datatypes ((array!3690 0))(
  ( (array!3691 (arr!1767 (Array (_ BitVec 32) ValueCell!848)) (size!1996 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!604 0))(
  ( (LongMapFixedSize!605 (defaultEntry!2016 Int) (mask!5887 (_ BitVec 32)) (extraKeys!1907 (_ BitVec 32)) (zeroValue!1934 V!2825) (minValue!1934 V!2825) (_size!351 (_ BitVec 32)) (_keys!3636 array!3688) (_values!1999 array!3690) (_vacant!351 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!414 0))(
  ( (Cell!415 (v!2355 LongMapFixedSize!604)) )
))
(declare-datatypes ((LongMap!414 0))(
  ( (LongMap!415 (underlying!218 Cell!414)) )
))
(declare-fun thiss!992 () LongMap!414)

(assert (=> b!56723 (= res!31862 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1995 (_keys!3636 (v!2355 (underlying!218 thiss!992)))))))))

(declare-fun b!56724 () Bool)

(declare-fun e!37370 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!56724 (= e!37370 (not (validMask!0 (mask!5887 (v!2355 (underlying!218 thiss!992))))))))

(declare-fun b!56725 () Bool)

(declare-fun e!37371 () Bool)

(assert (=> b!56725 (= e!37371 e!37370)))

(declare-fun res!31863 () Bool)

(assert (=> b!56725 (=> (not res!31863) (not e!37370))))

(declare-datatypes ((tuple2!2030 0))(
  ( (tuple2!2031 (_1!1025 Bool) (_2!1025 LongMapFixedSize!604)) )
))
(declare-fun lt!22352 () tuple2!2030)

(assert (=> b!56725 (= res!31863 (and (_1!1025 lt!22352) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!1472 0))(
  ( (Unit!1473) )
))
(declare-fun lt!22348 () Unit!1472)

(declare-fun e!37379 () Unit!1472)

(assert (=> b!56725 (= lt!22348 e!37379)))

(declare-datatypes ((tuple2!2032 0))(
  ( (tuple2!2033 (_1!1026 (_ BitVec 64)) (_2!1026 V!2825)) )
))
(declare-datatypes ((List!1446 0))(
  ( (Nil!1443) (Cons!1442 (h!2022 tuple2!2032) (t!4756 List!1446)) )
))
(declare-datatypes ((ListLongMap!1369 0))(
  ( (ListLongMap!1370 (toList!700 List!1446)) )
))
(declare-fun lt!22351 () ListLongMap!1369)

(declare-fun c!6973 () Bool)

(declare-fun contains!685 (ListLongMap!1369 (_ BitVec 64)) Bool)

(assert (=> b!56725 (= c!6973 (contains!685 lt!22351 (select (arr!1766 (_keys!3636 (v!2355 (underlying!218 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!604)

(declare-fun update!80 (LongMapFixedSize!604 (_ BitVec 64) V!2825) tuple2!2030)

(declare-fun get!1067 (ValueCell!848 V!2825) V!2825)

(declare-fun dynLambda!308 (Int (_ BitVec 64)) V!2825)

(assert (=> b!56725 (= lt!22352 (update!80 newMap!16 (select (arr!1766 (_keys!3636 (v!2355 (underlying!218 thiss!992)))) from!355) (get!1067 (select (arr!1767 (_values!1999 (v!2355 (underlying!218 thiss!992)))) from!355) (dynLambda!308 (defaultEntry!2016 (v!2355 (underlying!218 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!2819 () Bool)

(declare-fun mapRes!2819 () Bool)

(assert (=> mapIsEmpty!2819 mapRes!2819))

(declare-fun b!56727 () Bool)

(declare-fun e!37378 () Bool)

(declare-fun e!37373 () Bool)

(declare-fun mapRes!2820 () Bool)

(assert (=> b!56727 (= e!37378 (and e!37373 mapRes!2820))))

(declare-fun condMapEmpty!2819 () Bool)

(declare-fun mapDefault!2819 () ValueCell!848)

