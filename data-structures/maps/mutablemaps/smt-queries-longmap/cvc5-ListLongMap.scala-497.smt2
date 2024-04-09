; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11276 () Bool)

(assert start!11276)

(declare-fun b!92745 () Bool)

(declare-fun b_free!2353 () Bool)

(declare-fun b_next!2353 () Bool)

(assert (=> b!92745 (= b_free!2353 (not b_next!2353))))

(declare-fun tp!9317 () Bool)

(declare-fun b_and!5625 () Bool)

(assert (=> b!92745 (= tp!9317 b_and!5625)))

(declare-fun b!92731 () Bool)

(declare-fun b_free!2355 () Bool)

(declare-fun b_next!2355 () Bool)

(assert (=> b!92731 (= b_free!2355 (not b_next!2355))))

(declare-fun tp!9318 () Bool)

(declare-fun b_and!5627 () Bool)

(assert (=> b!92731 (= tp!9318 b_and!5627)))

(declare-fun b!92730 () Bool)

(declare-fun res!47129 () Bool)

(declare-fun e!60491 () Bool)

(assert (=> b!92730 (=> (not res!47129) (not e!60491))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3105 0))(
  ( (V!3106 (val!1341 Int)) )
))
(declare-datatypes ((array!4156 0))(
  ( (array!4157 (arr!1976 (Array (_ BitVec 32) (_ BitVec 64))) (size!2224 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!953 0))(
  ( (ValueCellFull!953 (v!2738 V!3105)) (EmptyCell!953) )
))
(declare-datatypes ((array!4158 0))(
  ( (array!4159 (arr!1977 (Array (_ BitVec 32) ValueCell!953)) (size!2225 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!814 0))(
  ( (LongMapFixedSize!815 (defaultEntry!2421 Int) (mask!6489 (_ BitVec 32)) (extraKeys!2250 (_ BitVec 32)) (zeroValue!2308 V!3105) (minValue!2308 V!3105) (_size!456 (_ BitVec 32)) (_keys!4103 array!4156) (_values!2404 array!4158) (_vacant!456 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!618 0))(
  ( (Cell!619 (v!2739 LongMapFixedSize!814)) )
))
(declare-datatypes ((LongMap!618 0))(
  ( (LongMap!619 (underlying!320 Cell!618)) )
))
(declare-fun thiss!992 () LongMap!618)

(assert (=> b!92730 (= res!47129 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2224 (_keys!4103 (v!2739 (underlying!320 thiss!992)))))))))

(declare-fun e!60499 () Bool)

(declare-fun tp_is_empty!2593 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!814)

(declare-fun e!60498 () Bool)

(declare-fun array_inv!1185 (array!4156) Bool)

(declare-fun array_inv!1186 (array!4158) Bool)

(assert (=> b!92731 (= e!60498 (and tp!9318 tp_is_empty!2593 (array_inv!1185 (_keys!4103 newMap!16)) (array_inv!1186 (_values!2404 newMap!16)) e!60499))))

(declare-fun mapIsEmpty!3607 () Bool)

(declare-fun mapRes!3608 () Bool)

(assert (=> mapIsEmpty!3607 mapRes!3608))

(declare-fun b!92732 () Bool)

(declare-fun e!60489 () Bool)

(declare-fun e!60495 () Bool)

(assert (=> b!92732 (= e!60489 e!60495)))

(declare-fun b!92733 () Bool)

(declare-fun e!60492 () Bool)

(assert (=> b!92733 (= e!60492 tp_is_empty!2593)))

(declare-fun mapIsEmpty!3608 () Bool)

(declare-fun mapRes!3607 () Bool)

(assert (=> mapIsEmpty!3608 mapRes!3607))

(declare-fun b!92734 () Bool)

(declare-fun e!60488 () Bool)

(assert (=> b!92734 (= e!60488 tp_is_empty!2593)))

(declare-fun b!92735 () Bool)

(declare-fun e!60484 () Bool)

(assert (=> b!92735 (= e!60491 e!60484)))

(declare-fun res!47126 () Bool)

(assert (=> b!92735 (=> (not res!47126) (not e!60484))))

(declare-datatypes ((tuple2!2308 0))(
  ( (tuple2!2309 (_1!1164 (_ BitVec 64)) (_2!1164 V!3105)) )
))
(declare-datatypes ((List!1589 0))(
  ( (Nil!1586) (Cons!1585 (h!2177 tuple2!2308) (t!5455 List!1589)) )
))
(declare-datatypes ((ListLongMap!1527 0))(
  ( (ListLongMap!1528 (toList!779 List!1589)) )
))
(declare-fun lt!45557 () ListLongMap!1527)

(declare-fun lt!45558 () ListLongMap!1527)

(assert (=> b!92735 (= res!47126 (= lt!45557 lt!45558))))

(declare-fun map!1232 (LongMapFixedSize!814) ListLongMap!1527)

(assert (=> b!92735 (= lt!45558 (map!1232 newMap!16))))

(declare-fun getCurrentListMap!461 (array!4156 array!4158 (_ BitVec 32) (_ BitVec 32) V!3105 V!3105 (_ BitVec 32) Int) ListLongMap!1527)

(assert (=> b!92735 (= lt!45557 (getCurrentListMap!461 (_keys!4103 (v!2739 (underlying!320 thiss!992))) (_values!2404 (v!2739 (underlying!320 thiss!992))) (mask!6489 (v!2739 (underlying!320 thiss!992))) (extraKeys!2250 (v!2739 (underlying!320 thiss!992))) (zeroValue!2308 (v!2739 (underlying!320 thiss!992))) (minValue!2308 (v!2739 (underlying!320 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2421 (v!2739 (underlying!320 thiss!992)))))))

(declare-fun res!47124 () Bool)

(assert (=> start!11276 (=> (not res!47124) (not e!60491))))

(declare-fun valid!361 (LongMap!618) Bool)

(assert (=> start!11276 (= res!47124 (valid!361 thiss!992))))

(assert (=> start!11276 e!60491))

(declare-fun e!60481 () Bool)

(assert (=> start!11276 e!60481))

(assert (=> start!11276 true))

(assert (=> start!11276 e!60498))

(declare-fun b!92736 () Bool)

(assert (=> b!92736 (= e!60499 (and e!60488 mapRes!3608))))

(declare-fun condMapEmpty!3607 () Bool)

(declare-fun mapDefault!3607 () ValueCell!953)

