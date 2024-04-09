; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18008 () Bool)

(assert start!18008)

(declare-fun b!179171 () Bool)

(declare-fun b_free!4421 () Bool)

(declare-fun b_next!4421 () Bool)

(assert (=> b!179171 (= b_free!4421 (not b_next!4421))))

(declare-fun tp!15984 () Bool)

(declare-fun b_and!10967 () Bool)

(assert (=> b!179171 (= tp!15984 b_and!10967)))

(declare-fun mapIsEmpty!7174 () Bool)

(declare-fun mapRes!7174 () Bool)

(assert (=> mapIsEmpty!7174 mapRes!7174))

(declare-fun b!179168 () Bool)

(declare-fun e!118064 () Bool)

(declare-datatypes ((V!5237 0))(
  ( (V!5238 (val!2141 Int)) )
))
(declare-datatypes ((ValueCell!1753 0))(
  ( (ValueCellFull!1753 (v!4023 V!5237)) (EmptyCell!1753) )
))
(declare-datatypes ((array!7548 0))(
  ( (array!7549 (arr!3576 (Array (_ BitVec 32) (_ BitVec 64))) (size!3884 (_ BitVec 32))) )
))
(declare-datatypes ((array!7550 0))(
  ( (array!7551 (arr!3577 (Array (_ BitVec 32) ValueCell!1753)) (size!3885 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2414 0))(
  ( (LongMapFixedSize!2415 (defaultEntry!3680 Int) (mask!8656 (_ BitVec 32)) (extraKeys!3417 (_ BitVec 32)) (zeroValue!3521 V!5237) (minValue!3521 V!5237) (_size!1256 (_ BitVec 32)) (_keys!5565 array!7548) (_values!3663 array!7550) (_vacant!1256 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2414)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7548 (_ BitVec 32)) Bool)

(assert (=> b!179168 (= e!118064 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5565 thiss!1248) (mask!8656 thiss!1248))))))

(declare-fun b!179169 () Bool)

(declare-fun res!84878 () Bool)

(assert (=> b!179169 (=> (not res!84878) (not e!118064))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3324 0))(
  ( (tuple2!3325 (_1!1672 (_ BitVec 64)) (_2!1672 V!5237)) )
))
(declare-datatypes ((List!2291 0))(
  ( (Nil!2288) (Cons!2287 (h!2912 tuple2!3324) (t!7141 List!2291)) )
))
(declare-datatypes ((ListLongMap!2265 0))(
  ( (ListLongMap!2266 (toList!1148 List!2291)) )
))
(declare-fun contains!1216 (ListLongMap!2265 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!795 (array!7548 array!7550 (_ BitVec 32) (_ BitVec 32) V!5237 V!5237 (_ BitVec 32) Int) ListLongMap!2265)

(assert (=> b!179169 (= res!84878 (not (contains!1216 (getCurrentListMap!795 (_keys!5565 thiss!1248) (_values!3663 thiss!1248) (mask!8656 thiss!1248) (extraKeys!3417 thiss!1248) (zeroValue!3521 thiss!1248) (minValue!3521 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3680 thiss!1248)) key!828)))))

(declare-fun b!179170 () Bool)

(declare-fun e!118061 () Bool)

(declare-fun tp_is_empty!4193 () Bool)

(assert (=> b!179170 (= e!118061 tp_is_empty!4193)))

(declare-fun e!118062 () Bool)

(declare-fun e!118065 () Bool)

(declare-fun array_inv!2293 (array!7548) Bool)

(declare-fun array_inv!2294 (array!7550) Bool)

(assert (=> b!179171 (= e!118065 (and tp!15984 tp_is_empty!4193 (array_inv!2293 (_keys!5565 thiss!1248)) (array_inv!2294 (_values!3663 thiss!1248)) e!118062))))

(declare-fun b!179172 () Bool)

(declare-fun res!84877 () Bool)

(assert (=> b!179172 (=> (not res!84877) (not e!118064))))

(assert (=> b!179172 (= res!84877 (not (= key!828 (bvneg key!828))))))

(declare-fun b!179173 () Bool)

(declare-fun e!118060 () Bool)

(assert (=> b!179173 (= e!118060 tp_is_empty!4193)))

(declare-fun mapNonEmpty!7174 () Bool)

(declare-fun tp!15985 () Bool)

(assert (=> mapNonEmpty!7174 (= mapRes!7174 (and tp!15985 e!118061))))

(declare-fun mapKey!7174 () (_ BitVec 32))

(declare-fun mapValue!7174 () ValueCell!1753)

(declare-fun mapRest!7174 () (Array (_ BitVec 32) ValueCell!1753))

(assert (=> mapNonEmpty!7174 (= (arr!3577 (_values!3663 thiss!1248)) (store mapRest!7174 mapKey!7174 mapValue!7174))))

(declare-fun b!179174 () Bool)

(assert (=> b!179174 (= e!118062 (and e!118060 mapRes!7174))))

(declare-fun condMapEmpty!7174 () Bool)

(declare-fun mapDefault!7174 () ValueCell!1753)

