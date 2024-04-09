; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13156 () Bool)

(assert start!13156)

(declare-fun b!115584 () Bool)

(declare-fun b_free!2697 () Bool)

(declare-fun b_next!2697 () Bool)

(assert (=> b!115584 (= b_free!2697 (not b_next!2697))))

(declare-fun tp!10454 () Bool)

(declare-fun b_and!7189 () Bool)

(assert (=> b!115584 (= tp!10454 b_and!7189)))

(declare-fun b!115582 () Bool)

(declare-fun b_free!2699 () Bool)

(declare-fun b_next!2699 () Bool)

(assert (=> b!115582 (= b_free!2699 (not b_next!2699))))

(declare-fun tp!10453 () Bool)

(declare-fun b_and!7191 () Bool)

(assert (=> b!115582 (= tp!10453 b_and!7191)))

(declare-fun mapIsEmpty!4227 () Bool)

(declare-fun mapRes!4228 () Bool)

(assert (=> mapIsEmpty!4227 mapRes!4228))

(declare-fun mapNonEmpty!4227 () Bool)

(declare-fun mapRes!4227 () Bool)

(declare-fun tp!10455 () Bool)

(declare-fun e!75379 () Bool)

(assert (=> mapNonEmpty!4227 (= mapRes!4227 (and tp!10455 e!75379))))

(declare-datatypes ((V!3333 0))(
  ( (V!3334 (val!1427 Int)) )
))
(declare-datatypes ((ValueCell!1039 0))(
  ( (ValueCellFull!1039 (v!3020 V!3333)) (EmptyCell!1039) )
))
(declare-fun mapRest!4227 () (Array (_ BitVec 32) ValueCell!1039))

(declare-fun mapValue!4227 () ValueCell!1039)

(declare-datatypes ((array!4532 0))(
  ( (array!4533 (arr!2148 (Array (_ BitVec 32) (_ BitVec 64))) (size!2408 (_ BitVec 32))) )
))
(declare-datatypes ((array!4534 0))(
  ( (array!4535 (arr!2149 (Array (_ BitVec 32) ValueCell!1039)) (size!2409 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!986 0))(
  ( (LongMapFixedSize!987 (defaultEntry!2702 Int) (mask!6908 (_ BitVec 32)) (extraKeys!2491 (_ BitVec 32)) (zeroValue!2569 V!3333) (minValue!2569 V!3333) (_size!542 (_ BitVec 32)) (_keys!4424 array!4532) (_values!2685 array!4534) (_vacant!542 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!986)

(declare-fun mapKey!4227 () (_ BitVec 32))

(assert (=> mapNonEmpty!4227 (= (arr!2149 (_values!2685 newMap!16)) (store mapRest!4227 mapKey!4227 mapValue!4227))))

(declare-fun b!115577 () Bool)

(declare-fun e!75372 () Bool)

(assert (=> b!115577 (= e!75372 false)))

(declare-datatypes ((tuple2!2498 0))(
  ( (tuple2!2499 (_1!1259 (_ BitVec 64)) (_2!1259 V!3333)) )
))
(declare-datatypes ((List!1688 0))(
  ( (Nil!1685) (Cons!1684 (h!2284 tuple2!2498) (t!5954 List!1688)) )
))
(declare-datatypes ((ListLongMap!1637 0))(
  ( (ListLongMap!1638 (toList!834 List!1688)) )
))
(declare-fun lt!60081 () ListLongMap!1637)

(declare-fun map!1334 (LongMapFixedSize!986) ListLongMap!1637)

(assert (=> b!115577 (= lt!60081 (map!1334 newMap!16))))

(declare-fun lt!60080 () ListLongMap!1637)

(declare-datatypes ((Cell!782 0))(
  ( (Cell!783 (v!3021 LongMapFixedSize!986)) )
))
(declare-datatypes ((LongMap!782 0))(
  ( (LongMap!783 (underlying!402 Cell!782)) )
))
(declare-fun thiss!992 () LongMap!782)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!507 (array!4532 array!4534 (_ BitVec 32) (_ BitVec 32) V!3333 V!3333 (_ BitVec 32) Int) ListLongMap!1637)

(assert (=> b!115577 (= lt!60080 (getCurrentListMap!507 (_keys!4424 (v!3021 (underlying!402 thiss!992))) (_values!2685 (v!3021 (underlying!402 thiss!992))) (mask!6908 (v!3021 (underlying!402 thiss!992))) (extraKeys!2491 (v!3021 (underlying!402 thiss!992))) (zeroValue!2569 (v!3021 (underlying!402 thiss!992))) (minValue!2569 (v!3021 (underlying!402 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2702 (v!3021 (underlying!402 thiss!992)))))))

(declare-fun b!115578 () Bool)

(declare-fun e!75373 () Bool)

(declare-fun e!75367 () Bool)

(assert (=> b!115578 (= e!75373 (and e!75367 mapRes!4227))))

(declare-fun condMapEmpty!4228 () Bool)

(declare-fun mapDefault!4228 () ValueCell!1039)

