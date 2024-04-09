; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8318 () Bool)

(assert start!8318)

(declare-fun b!54373 () Bool)

(declare-fun b_free!1777 () Bool)

(declare-fun b_next!1777 () Bool)

(assert (=> b!54373 (= b_free!1777 (not b_next!1777))))

(declare-fun tp!7433 () Bool)

(declare-fun b_and!3105 () Bool)

(assert (=> b!54373 (= tp!7433 b_and!3105)))

(declare-fun b!54389 () Bool)

(declare-fun b_free!1779 () Bool)

(declare-fun b_next!1779 () Bool)

(assert (=> b!54389 (= b_free!1779 (not b_next!1779))))

(declare-fun tp!7434 () Bool)

(declare-fun b_and!3107 () Bool)

(assert (=> b!54389 (= tp!7434 b_and!3107)))

(declare-datatypes ((V!2721 0))(
  ( (V!2722 (val!1197 Int)) )
))
(declare-datatypes ((array!3532 0))(
  ( (array!3533 (arr!1688 (Array (_ BitVec 32) (_ BitVec 64))) (size!1917 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!809 0))(
  ( (ValueCellFull!809 (v!2276 V!2721)) (EmptyCell!809) )
))
(declare-datatypes ((array!3534 0))(
  ( (array!3535 (arr!1689 (Array (_ BitVec 32) ValueCell!809)) (size!1918 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!526 0))(
  ( (LongMapFixedSize!527 (defaultEntry!1977 Int) (mask!5822 (_ BitVec 32)) (extraKeys!1868 (_ BitVec 32)) (zeroValue!1895 V!2721) (minValue!1895 V!2721) (_size!312 (_ BitVec 32)) (_keys!3597 array!3532) (_values!1960 array!3534) (_vacant!312 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!336 0))(
  ( (Cell!337 (v!2277 LongMapFixedSize!526)) )
))
(declare-datatypes ((LongMap!336 0))(
  ( (LongMap!337 (underlying!179 Cell!336)) )
))
(declare-fun thiss!992 () LongMap!336)

(declare-fun e!35513 () Bool)

(declare-fun tp_is_empty!2305 () Bool)

(declare-fun e!35512 () Bool)

(declare-fun array_inv!991 (array!3532) Bool)

(declare-fun array_inv!992 (array!3534) Bool)

(assert (=> b!54373 (= e!35513 (and tp!7433 tp_is_empty!2305 (array_inv!991 (_keys!3597 (v!2277 (underlying!179 thiss!992)))) (array_inv!992 (_values!1960 (v!2277 (underlying!179 thiss!992)))) e!35512))))

(declare-fun b!54374 () Bool)

(declare-fun e!35510 () Bool)

(assert (=> b!54374 (= e!35510 tp_is_empty!2305)))

(declare-fun b!54375 () Bool)

(declare-fun e!35518 () Bool)

(declare-fun e!35516 () Bool)

(assert (=> b!54375 (= e!35518 e!35516)))

(declare-fun res!30769 () Bool)

(assert (=> b!54375 (=> (not res!30769) (not e!35516))))

(declare-datatypes ((tuple2!1928 0))(
  ( (tuple2!1929 (_1!974 (_ BitVec 64)) (_2!974 V!2721)) )
))
(declare-datatypes ((List!1393 0))(
  ( (Nil!1390) (Cons!1389 (h!1969 tuple2!1928) (t!4547 List!1393)) )
))
(declare-datatypes ((ListLongMap!1315 0))(
  ( (ListLongMap!1316 (toList!673 List!1393)) )
))
(declare-fun lt!21642 () ListLongMap!1315)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!644 (ListLongMap!1315 (_ BitVec 64)) Bool)

(assert (=> b!54375 (= res!30769 (contains!644 lt!21642 (select (arr!1688 (_keys!3597 (v!2277 (underlying!179 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1930 0))(
  ( (tuple2!1931 (_1!975 Bool) (_2!975 LongMapFixedSize!526)) )
))
(declare-fun lt!21640 () tuple2!1930)

(declare-fun newMap!16 () LongMapFixedSize!526)

(declare-fun update!56 (LongMapFixedSize!526 (_ BitVec 64) V!2721) tuple2!1930)

(declare-fun get!1017 (ValueCell!809 V!2721) V!2721)

(declare-fun dynLambda!284 (Int (_ BitVec 64)) V!2721)

(assert (=> b!54375 (= lt!21640 (update!56 newMap!16 (select (arr!1688 (_keys!3597 (v!2277 (underlying!179 thiss!992)))) from!355) (get!1017 (select (arr!1689 (_values!1960 (v!2277 (underlying!179 thiss!992)))) from!355) (dynLambda!284 (defaultEntry!1977 (v!2277 (underlying!179 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!54376 () Bool)

(declare-fun res!30765 () Bool)

(declare-fun e!35515 () Bool)

(assert (=> b!54376 (=> (not res!30765) (not e!35515))))

(declare-fun valid!202 (LongMapFixedSize!526) Bool)

(assert (=> b!54376 (= res!30765 (valid!202 newMap!16))))

(declare-fun mapNonEmpty!2585 () Bool)

(declare-fun mapRes!2586 () Bool)

(declare-fun tp!7432 () Bool)

(assert (=> mapNonEmpty!2585 (= mapRes!2586 (and tp!7432 e!35510))))

(declare-fun mapValue!2585 () ValueCell!809)

(declare-fun mapKey!2585 () (_ BitVec 32))

(declare-fun mapRest!2586 () (Array (_ BitVec 32) ValueCell!809))

(assert (=> mapNonEmpty!2585 (= (arr!1689 (_values!1960 newMap!16)) (store mapRest!2586 mapKey!2585 mapValue!2585))))

(declare-fun b!54377 () Bool)

(declare-fun res!30767 () Bool)

(assert (=> b!54377 (=> (not res!30767) (not e!35515))))

(assert (=> b!54377 (= res!30767 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1917 (_keys!3597 (v!2277 (underlying!179 thiss!992)))))))))

(declare-fun mapIsEmpty!2585 () Bool)

(declare-fun mapRes!2585 () Bool)

(assert (=> mapIsEmpty!2585 mapRes!2585))

(declare-fun b!54378 () Bool)

(assert (=> b!54378 (= e!35516 false)))

(declare-fun lt!21643 () Bool)

(declare-fun lt!21641 () ListLongMap!1315)

(assert (=> b!54378 (= lt!21643 (contains!644 lt!21641 (select (arr!1688 (_keys!3597 (v!2277 (underlying!179 thiss!992)))) from!355)))))

(declare-fun b!54379 () Bool)

(declare-fun e!35514 () Bool)

(assert (=> b!54379 (= e!35512 (and e!35514 mapRes!2585))))

(declare-fun condMapEmpty!2585 () Bool)

(declare-fun mapDefault!2585 () ValueCell!809)

