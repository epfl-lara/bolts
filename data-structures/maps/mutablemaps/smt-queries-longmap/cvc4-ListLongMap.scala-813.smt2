; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19812 () Bool)

(assert start!19812)

(declare-fun b!193976 () Bool)

(declare-fun b_free!4721 () Bool)

(declare-fun b_next!4721 () Bool)

(assert (=> b!193976 (= b_free!4721 (not b_next!4721))))

(declare-fun tp!17032 () Bool)

(declare-fun b_and!11453 () Bool)

(assert (=> b!193976 (= tp!17032 b_and!11453)))

(declare-fun b!193974 () Bool)

(declare-fun res!91696 () Bool)

(declare-fun e!127648 () Bool)

(assert (=> b!193974 (=> (not res!91696) (not e!127648))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!193974 (= res!91696 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7772 () Bool)

(declare-fun mapRes!7772 () Bool)

(assert (=> mapIsEmpty!7772 mapRes!7772))

(declare-fun b!193975 () Bool)

(declare-fun e!127646 () Bool)

(declare-fun e!127647 () Bool)

(assert (=> b!193975 (= e!127646 e!127647)))

(declare-fun res!91699 () Bool)

(assert (=> b!193975 (=> (not res!91699) (not e!127647))))

(declare-datatypes ((V!5637 0))(
  ( (V!5638 (val!2291 Int)) )
))
(declare-datatypes ((tuple2!3558 0))(
  ( (tuple2!3559 (_1!1789 (_ BitVec 64)) (_2!1789 V!5637)) )
))
(declare-datatypes ((List!2470 0))(
  ( (Nil!2467) (Cons!2466 (h!3107 tuple2!3558) (t!7404 List!2470)) )
))
(declare-datatypes ((ListLongMap!2489 0))(
  ( (ListLongMap!2490 (toList!1260 List!2470)) )
))
(declare-fun lt!96740 () ListLongMap!2489)

(declare-fun contains!1379 (ListLongMap!2489 (_ BitVec 64)) Bool)

(assert (=> b!193975 (= res!91699 (contains!1379 lt!96740 key!828))))

(declare-datatypes ((ValueCell!1903 0))(
  ( (ValueCellFull!1903 (v!4249 V!5637)) (EmptyCell!1903) )
))
(declare-datatypes ((array!8236 0))(
  ( (array!8237 (arr!3876 (Array (_ BitVec 32) (_ BitVec 64))) (size!4200 (_ BitVec 32))) )
))
(declare-datatypes ((array!8238 0))(
  ( (array!8239 (arr!3877 (Array (_ BitVec 32) ValueCell!1903)) (size!4201 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2714 0))(
  ( (LongMapFixedSize!2715 (defaultEntry!3961 Int) (mask!9224 (_ BitVec 32)) (extraKeys!3698 (_ BitVec 32)) (zeroValue!3802 V!5637) (minValue!3802 V!5637) (_size!1406 (_ BitVec 32)) (_keys!5955 array!8236) (_values!3944 array!8238) (_vacant!1406 (_ BitVec 32))) )
))
(declare-fun lt!96738 () LongMapFixedSize!2714)

(declare-fun map!2029 (LongMapFixedSize!2714) ListLongMap!2489)

(assert (=> b!193975 (= lt!96740 (map!2029 lt!96738))))

(declare-fun mapNonEmpty!7772 () Bool)

(declare-fun tp!17033 () Bool)

(declare-fun e!127650 () Bool)

(assert (=> mapNonEmpty!7772 (= mapRes!7772 (and tp!17033 e!127650))))

(declare-fun mapRest!7772 () (Array (_ BitVec 32) ValueCell!1903))

(declare-fun thiss!1248 () LongMapFixedSize!2714)

(declare-fun mapValue!7772 () ValueCell!1903)

(declare-fun mapKey!7772 () (_ BitVec 32))

(assert (=> mapNonEmpty!7772 (= (arr!3877 (_values!3944 thiss!1248)) (store mapRest!7772 mapKey!7772 mapValue!7772))))

(declare-fun e!127654 () Bool)

(declare-fun e!127652 () Bool)

(declare-fun tp_is_empty!4493 () Bool)

(declare-fun array_inv!2505 (array!8236) Bool)

(declare-fun array_inv!2506 (array!8238) Bool)

(assert (=> b!193976 (= e!127652 (and tp!17032 tp_is_empty!4493 (array_inv!2505 (_keys!5955 thiss!1248)) (array_inv!2506 (_values!3944 thiss!1248)) e!127654))))

(declare-fun b!193977 () Bool)

(declare-datatypes ((Unit!5878 0))(
  ( (Unit!5879) )
))
(declare-fun e!127655 () Unit!5878)

(declare-fun Unit!5880 () Unit!5878)

(assert (=> b!193977 (= e!127655 Unit!5880)))

(declare-fun lt!96736 () Unit!5878)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!195 (array!8236 array!8238 (_ BitVec 32) (_ BitVec 32) V!5637 V!5637 (_ BitVec 64) Int) Unit!5878)

(assert (=> b!193977 (= lt!96736 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!195 (_keys!5955 thiss!1248) (_values!3944 thiss!1248) (mask!9224 thiss!1248) (extraKeys!3698 thiss!1248) (zeroValue!3802 thiss!1248) (minValue!3802 thiss!1248) key!828 (defaultEntry!3961 thiss!1248)))))

(assert (=> b!193977 false))

(declare-fun b!193978 () Bool)

(declare-fun e!127653 () Bool)

(assert (=> b!193978 (= e!127654 (and e!127653 mapRes!7772))))

(declare-fun condMapEmpty!7772 () Bool)

(declare-fun mapDefault!7772 () ValueCell!1903)

