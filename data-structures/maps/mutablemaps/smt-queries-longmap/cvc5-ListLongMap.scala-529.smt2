; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13214 () Bool)

(assert start!13214)

(declare-fun b!116349 () Bool)

(declare-fun b_free!2737 () Bool)

(declare-fun b_next!2737 () Bool)

(assert (=> b!116349 (= b_free!2737 (not b_next!2737))))

(declare-fun tp!10582 () Bool)

(declare-fun b_and!7257 () Bool)

(assert (=> b!116349 (= tp!10582 b_and!7257)))

(declare-fun b!116351 () Bool)

(declare-fun b_free!2739 () Bool)

(declare-fun b_next!2739 () Bool)

(assert (=> b!116351 (= b_free!2739 (not b_next!2739))))

(declare-fun tp!10581 () Bool)

(declare-fun b_and!7259 () Bool)

(assert (=> b!116351 (= tp!10581 b_and!7259)))

(declare-datatypes ((V!3361 0))(
  ( (V!3362 (val!1437 Int)) )
))
(declare-datatypes ((array!4574 0))(
  ( (array!4575 (arr!2168 (Array (_ BitVec 32) (_ BitVec 64))) (size!2429 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1049 0))(
  ( (ValueCellFull!1049 (v!3040 V!3361)) (EmptyCell!1049) )
))
(declare-datatypes ((array!4576 0))(
  ( (array!4577 (arr!2169 (Array (_ BitVec 32) ValueCell!1049)) (size!2430 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1006 0))(
  ( (LongMapFixedSize!1007 (defaultEntry!2714 Int) (mask!6930 (_ BitVec 32)) (extraKeys!2503 (_ BitVec 32)) (zeroValue!2581 V!3361) (minValue!2581 V!3361) (_size!552 (_ BitVec 32)) (_keys!4437 array!4574) (_values!2697 array!4576) (_vacant!552 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!800 0))(
  ( (Cell!801 (v!3041 LongMapFixedSize!1006)) )
))
(declare-datatypes ((LongMap!800 0))(
  ( (LongMap!801 (underlying!411 Cell!800)) )
))
(declare-fun thiss!992 () LongMap!800)

(declare-fun e!75966 () Bool)

(declare-fun tp_is_empty!2785 () Bool)

(declare-fun e!75974 () Bool)

(declare-fun array_inv!1315 (array!4574) Bool)

(declare-fun array_inv!1316 (array!4576) Bool)

(assert (=> b!116349 (= e!75974 (and tp!10582 tp_is_empty!2785 (array_inv!1315 (_keys!4437 (v!3041 (underlying!411 thiss!992)))) (array_inv!1316 (_values!2697 (v!3041 (underlying!411 thiss!992)))) e!75966))))

(declare-fun b!116350 () Bool)

(declare-fun e!75967 () Bool)

(assert (=> b!116350 (= e!75967 tp_is_empty!2785)))

(declare-fun mapNonEmpty!4293 () Bool)

(declare-fun mapRes!4294 () Bool)

(declare-fun tp!10580 () Bool)

(declare-fun e!75971 () Bool)

(assert (=> mapNonEmpty!4293 (= mapRes!4294 (and tp!10580 e!75971))))

(declare-fun mapKey!4294 () (_ BitVec 32))

(declare-fun mapRest!4293 () (Array (_ BitVec 32) ValueCell!1049))

(declare-fun mapValue!4294 () ValueCell!1049)

(assert (=> mapNonEmpty!4293 (= (arr!2169 (_values!2697 (v!3041 (underlying!411 thiss!992)))) (store mapRest!4293 mapKey!4294 mapValue!4294))))

(declare-fun e!75973 () Bool)

(declare-fun e!75968 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1006)

(assert (=> b!116351 (= e!75973 (and tp!10581 tp_is_empty!2785 (array_inv!1315 (_keys!4437 newMap!16)) (array_inv!1316 (_values!2697 newMap!16)) e!75968))))

(declare-fun b!116352 () Bool)

(declare-fun res!57016 () Bool)

(declare-fun e!75970 () Bool)

(assert (=> b!116352 (=> (not res!57016) (not e!75970))))

(declare-fun valid!470 (LongMapFixedSize!1006) Bool)

(assert (=> b!116352 (= res!57016 (valid!470 newMap!16))))

(declare-fun b!116353 () Bool)

(declare-fun e!75972 () Bool)

(assert (=> b!116353 (= e!75970 e!75972)))

(declare-fun res!57011 () Bool)

(assert (=> b!116353 (=> (not res!57011) (not e!75972))))

(declare-datatypes ((tuple2!2516 0))(
  ( (tuple2!2517 (_1!1268 Bool) (_2!1268 LongMapFixedSize!1006)) )
))
(declare-fun lt!60396 () tuple2!2516)

(assert (=> b!116353 (= res!57011 (_1!1268 lt!60396))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun repackFrom!13 (LongMap!800 LongMapFixedSize!1006 (_ BitVec 32)) tuple2!2516)

(assert (=> b!116353 (= lt!60396 (repackFrom!13 thiss!992 newMap!16 (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun b!116354 () Bool)

(declare-fun e!75975 () Bool)

(assert (=> b!116354 (= e!75975 e!75974)))

(declare-fun b!116355 () Bool)

(declare-fun res!57013 () Bool)

(assert (=> b!116355 (=> (not res!57013) (not e!75970))))

(declare-datatypes ((tuple2!2518 0))(
  ( (tuple2!2519 (_1!1269 (_ BitVec 64)) (_2!1269 V!3361)) )
))
(declare-datatypes ((List!1696 0))(
  ( (Nil!1693) (Cons!1692 (h!2292 tuple2!2518) (t!5970 List!1696)) )
))
(declare-datatypes ((ListLongMap!1651 0))(
  ( (ListLongMap!1652 (toList!841 List!1696)) )
))
(declare-fun getCurrentListMap!514 (array!4574 array!4576 (_ BitVec 32) (_ BitVec 32) V!3361 V!3361 (_ BitVec 32) Int) ListLongMap!1651)

(declare-fun map!1349 (LongMapFixedSize!1006) ListLongMap!1651)

(assert (=> b!116355 (= res!57013 (= (getCurrentListMap!514 (_keys!4437 (v!3041 (underlying!411 thiss!992))) (_values!2697 (v!3041 (underlying!411 thiss!992))) (mask!6930 (v!3041 (underlying!411 thiss!992))) (extraKeys!2503 (v!3041 (underlying!411 thiss!992))) (zeroValue!2581 (v!3041 (underlying!411 thiss!992))) (minValue!2581 (v!3041 (underlying!411 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2714 (v!3041 (underlying!411 thiss!992)))) (map!1349 newMap!16)))))

(declare-fun mapNonEmpty!4294 () Bool)

(declare-fun mapRes!4293 () Bool)

(declare-fun tp!10579 () Bool)

(declare-fun e!75964 () Bool)

(assert (=> mapNonEmpty!4294 (= mapRes!4293 (and tp!10579 e!75964))))

(declare-fun mapRest!4294 () (Array (_ BitVec 32) ValueCell!1049))

(declare-fun mapValue!4293 () ValueCell!1049)

(declare-fun mapKey!4293 () (_ BitVec 32))

(assert (=> mapNonEmpty!4294 (= (arr!2169 (_values!2697 newMap!16)) (store mapRest!4294 mapKey!4293 mapValue!4293))))

(declare-fun b!116356 () Bool)

(assert (=> b!116356 (= e!75966 (and e!75967 mapRes!4294))))

(declare-fun condMapEmpty!4294 () Bool)

(declare-fun mapDefault!4294 () ValueCell!1049)

