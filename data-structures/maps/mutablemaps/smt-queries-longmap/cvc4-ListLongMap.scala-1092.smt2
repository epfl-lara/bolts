; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22364 () Bool)

(assert start!22364)

(declare-fun b!234098 () Bool)

(declare-fun b_free!6305 () Bool)

(declare-fun b_next!6305 () Bool)

(assert (=> b!234098 (= b_free!6305 (not b_next!6305))))

(declare-fun tp!22068 () Bool)

(declare-fun b_and!13235 () Bool)

(assert (=> b!234098 (= tp!22068 b_and!13235)))

(declare-fun b!234092 () Bool)

(declare-fun e!152071 () Bool)

(declare-fun tp_is_empty!6167 () Bool)

(assert (=> b!234092 (= e!152071 tp_is_empty!6167)))

(declare-fun b!234093 () Bool)

(declare-fun e!152067 () Bool)

(declare-datatypes ((V!7869 0))(
  ( (V!7870 (val!3128 Int)) )
))
(declare-datatypes ((ValueCell!2740 0))(
  ( (ValueCellFull!2740 (v!5147 V!7869)) (EmptyCell!2740) )
))
(declare-datatypes ((array!11582 0))(
  ( (array!11583 (arr!5507 (Array (_ BitVec 32) ValueCell!2740)) (size!5842 (_ BitVec 32))) )
))
(declare-datatypes ((array!11584 0))(
  ( (array!11585 (arr!5508 (Array (_ BitVec 32) (_ BitVec 64))) (size!5843 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3380 0))(
  ( (LongMapFixedSize!3381 (defaultEntry!4354 Int) (mask!10296 (_ BitVec 32)) (extraKeys!4091 (_ BitVec 32)) (zeroValue!4195 V!7869) (minValue!4195 V!7869) (_size!1739 (_ BitVec 32)) (_keys!6417 array!11584) (_values!4337 array!11582) (_vacant!1739 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3380)

(assert (=> b!234093 (= e!152067 (and (= (size!5842 (_values!4337 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10296 thiss!1504))) (= (size!5843 (_keys!6417 thiss!1504)) (size!5842 (_values!4337 thiss!1504))) (bvslt (mask!10296 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun res!114865 () Bool)

(declare-fun e!152069 () Bool)

(assert (=> start!22364 (=> (not res!114865) (not e!152069))))

(declare-fun valid!1326 (LongMapFixedSize!3380) Bool)

(assert (=> start!22364 (= res!114865 (valid!1326 thiss!1504))))

(assert (=> start!22364 e!152069))

(declare-fun e!152072 () Bool)

(assert (=> start!22364 e!152072))

(assert (=> start!22364 true))

(declare-fun b!234094 () Bool)

(declare-fun res!114863 () Bool)

(assert (=> b!234094 (=> (not res!114863) (not e!152067))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4608 0))(
  ( (tuple2!4609 (_1!2314 (_ BitVec 64)) (_2!2314 V!7869)) )
))
(declare-datatypes ((List!3542 0))(
  ( (Nil!3539) (Cons!3538 (h!4188 tuple2!4608) (t!8515 List!3542)) )
))
(declare-datatypes ((ListLongMap!3535 0))(
  ( (ListLongMap!3536 (toList!1783 List!3542)) )
))
(declare-fun contains!1649 (ListLongMap!3535 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1306 (array!11584 array!11582 (_ BitVec 32) (_ BitVec 32) V!7869 V!7869 (_ BitVec 32) Int) ListLongMap!3535)

(assert (=> b!234094 (= res!114863 (contains!1649 (getCurrentListMap!1306 (_keys!6417 thiss!1504) (_values!4337 thiss!1504) (mask!10296 thiss!1504) (extraKeys!4091 thiss!1504) (zeroValue!4195 thiss!1504) (minValue!4195 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4354 thiss!1504)) key!932))))

(declare-fun b!234095 () Bool)

(declare-fun res!114862 () Bool)

(assert (=> b!234095 (=> (not res!114862) (not e!152067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!234095 (= res!114862 (validMask!0 (mask!10296 thiss!1504)))))

(declare-fun mapIsEmpty!10431 () Bool)

(declare-fun mapRes!10431 () Bool)

(assert (=> mapIsEmpty!10431 mapRes!10431))

(declare-fun b!234096 () Bool)

(declare-fun res!114864 () Bool)

(assert (=> b!234096 (=> (not res!114864) (not e!152069))))

(assert (=> b!234096 (= res!114864 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!234097 () Bool)

(declare-fun e!152068 () Bool)

(declare-fun e!152066 () Bool)

(assert (=> b!234097 (= e!152068 (and e!152066 mapRes!10431))))

(declare-fun condMapEmpty!10431 () Bool)

(declare-fun mapDefault!10431 () ValueCell!2740)

