; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22862 () Bool)

(assert start!22862)

(declare-fun b!238013 () Bool)

(declare-fun b_free!6391 () Bool)

(declare-fun b_next!6391 () Bool)

(assert (=> b!238013 (= b_free!6391 (not b_next!6391))))

(declare-fun tp!22371 () Bool)

(declare-fun b_and!13371 () Bool)

(assert (=> b!238013 (= tp!22371 b_and!13371)))

(declare-fun b!238009 () Bool)

(declare-fun res!116642 () Bool)

(declare-fun e!154557 () Bool)

(assert (=> b!238009 (=> (not res!116642) (not e!154557))))

(declare-datatypes ((V!7985 0))(
  ( (V!7986 (val!3171 Int)) )
))
(declare-datatypes ((ValueCell!2783 0))(
  ( (ValueCellFull!2783 (v!5203 V!7985)) (EmptyCell!2783) )
))
(declare-datatypes ((array!11780 0))(
  ( (array!11781 (arr!5593 (Array (_ BitVec 32) ValueCell!2783)) (size!5934 (_ BitVec 32))) )
))
(declare-datatypes ((array!11782 0))(
  ( (array!11783 (arr!5594 (Array (_ BitVec 32) (_ BitVec 64))) (size!5935 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3466 0))(
  ( (LongMapFixedSize!3467 (defaultEntry!4416 Int) (mask!10442 (_ BitVec 32)) (extraKeys!4153 (_ BitVec 32)) (zeroValue!4257 V!7985) (minValue!4257 V!7985) (_size!1782 (_ BitVec 32)) (_keys!6514 array!11782) (_values!4399 array!11780) (_vacant!1782 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3466)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4670 0))(
  ( (tuple2!4671 (_1!2345 (_ BitVec 64)) (_2!2345 V!7985)) )
))
(declare-datatypes ((List!3592 0))(
  ( (Nil!3589) (Cons!3588 (h!4244 tuple2!4670) (t!8591 List!3592)) )
))
(declare-datatypes ((ListLongMap!3597 0))(
  ( (ListLongMap!3598 (toList!1814 List!3592)) )
))
(declare-fun contains!1694 (ListLongMap!3597 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1337 (array!11782 array!11780 (_ BitVec 32) (_ BitVec 32) V!7985 V!7985 (_ BitVec 32) Int) ListLongMap!3597)

(assert (=> b!238009 (= res!116642 (not (contains!1694 (getCurrentListMap!1337 (_keys!6514 thiss!1504) (_values!4399 thiss!1504) (mask!10442 thiss!1504) (extraKeys!4153 thiss!1504) (zeroValue!4257 thiss!1504) (minValue!4257 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4416 thiss!1504)) key!932)))))

(declare-fun b!238010 () Bool)

(declare-fun res!116644 () Bool)

(assert (=> b!238010 (=> (not res!116644) (not e!154557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11782 (_ BitVec 32)) Bool)

(assert (=> b!238010 (= res!116644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6514 thiss!1504) (mask!10442 thiss!1504)))))

(declare-fun b!238011 () Bool)

(declare-fun res!116641 () Bool)

(assert (=> b!238011 (=> (not res!116641) (not e!154557))))

(assert (=> b!238011 (= res!116641 (and (= (size!5934 (_values!4399 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10442 thiss!1504))) (= (size!5935 (_keys!6514 thiss!1504)) (size!5934 (_values!4399 thiss!1504))) (bvsge (mask!10442 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4153 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4153 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!238012 () Bool)

(declare-fun e!154556 () Bool)

(declare-fun tp_is_empty!6253 () Bool)

(assert (=> b!238012 (= e!154556 tp_is_empty!6253)))

(declare-fun e!154554 () Bool)

(declare-fun e!154553 () Bool)

(declare-fun array_inv!3685 (array!11782) Bool)

(declare-fun array_inv!3686 (array!11780) Bool)

(assert (=> b!238013 (= e!154554 (and tp!22371 tp_is_empty!6253 (array_inv!3685 (_keys!6514 thiss!1504)) (array_inv!3686 (_values!4399 thiss!1504)) e!154553))))

(declare-fun mapNonEmpty!10605 () Bool)

(declare-fun mapRes!10605 () Bool)

(declare-fun tp!22370 () Bool)

(declare-fun e!154555 () Bool)

(assert (=> mapNonEmpty!10605 (= mapRes!10605 (and tp!22370 e!154555))))

(declare-fun mapRest!10605 () (Array (_ BitVec 32) ValueCell!2783))

(declare-fun mapKey!10605 () (_ BitVec 32))

(declare-fun mapValue!10605 () ValueCell!2783)

(assert (=> mapNonEmpty!10605 (= (arr!5593 (_values!4399 thiss!1504)) (store mapRest!10605 mapKey!10605 mapValue!10605))))

(declare-fun res!116645 () Bool)

(declare-fun e!154558 () Bool)

(assert (=> start!22862 (=> (not res!116645) (not e!154558))))

(declare-fun valid!1360 (LongMapFixedSize!3466) Bool)

(assert (=> start!22862 (= res!116645 (valid!1360 thiss!1504))))

(assert (=> start!22862 e!154558))

(assert (=> start!22862 e!154554))

(assert (=> start!22862 true))

(declare-fun b!238014 () Bool)

(assert (=> b!238014 (= e!154553 (and e!154556 mapRes!10605))))

(declare-fun condMapEmpty!10605 () Bool)

(declare-fun mapDefault!10605 () ValueCell!2783)

