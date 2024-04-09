; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21622 () Bool)

(assert start!21622)

(declare-fun b!216497 () Bool)

(declare-fun b_free!5759 () Bool)

(declare-fun b_next!5759 () Bool)

(assert (=> b!216497 (= b_free!5759 (not b_next!5759))))

(declare-fun tp!20411 () Bool)

(declare-fun b_and!12667 () Bool)

(assert (=> b!216497 (= tp!20411 b_and!12667)))

(declare-fun b!216491 () Bool)

(declare-fun e!140864 () Bool)

(declare-fun tp_is_empty!5621 () Bool)

(assert (=> b!216491 (= e!140864 tp_is_empty!5621)))

(declare-fun mapIsEmpty!9594 () Bool)

(declare-fun mapRes!9594 () Bool)

(assert (=> mapIsEmpty!9594 mapRes!9594))

(declare-fun b!216492 () Bool)

(declare-fun res!105891 () Bool)

(declare-fun e!140863 () Bool)

(assert (=> b!216492 (=> (not res!105891) (not e!140863))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216492 (= res!105891 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216493 () Bool)

(declare-fun e!140859 () Bool)

(assert (=> b!216493 (= e!140859 false)))

(declare-fun lt!111205 () Bool)

(declare-datatypes ((V!7141 0))(
  ( (V!7142 (val!2855 Int)) )
))
(declare-datatypes ((ValueCell!2467 0))(
  ( (ValueCellFull!2467 (v!4869 V!7141)) (EmptyCell!2467) )
))
(declare-datatypes ((array!10480 0))(
  ( (array!10481 (arr!4961 (Array (_ BitVec 32) ValueCell!2467)) (size!5293 (_ BitVec 32))) )
))
(declare-datatypes ((array!10482 0))(
  ( (array!10483 (arr!4962 (Array (_ BitVec 32) (_ BitVec 64))) (size!5294 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2834 0))(
  ( (LongMapFixedSize!2835 (defaultEntry!4067 Int) (mask!9804 (_ BitVec 32)) (extraKeys!3804 (_ BitVec 32)) (zeroValue!3908 V!7141) (minValue!3908 V!7141) (_size!1466 (_ BitVec 32)) (_keys!6116 array!10482) (_values!4050 array!10480) (_vacant!1466 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2834)

(declare-datatypes ((List!3171 0))(
  ( (Nil!3168) (Cons!3167 (h!3814 (_ BitVec 64)) (t!8134 List!3171)) )
))
(declare-fun arrayNoDuplicates!0 (array!10482 (_ BitVec 32) List!3171) Bool)

(assert (=> b!216493 (= lt!111205 (arrayNoDuplicates!0 (_keys!6116 thiss!1504) #b00000000000000000000000000000000 Nil!3168))))

(declare-fun b!216494 () Bool)

(declare-fun res!105894 () Bool)

(assert (=> b!216494 (=> (not res!105894) (not e!140859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10482 (_ BitVec 32)) Bool)

(assert (=> b!216494 (= res!105894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6116 thiss!1504) (mask!9804 thiss!1504)))))

(declare-fun res!105890 () Bool)

(assert (=> start!21622 (=> (not res!105890) (not e!140863))))

(declare-fun valid!1144 (LongMapFixedSize!2834) Bool)

(assert (=> start!21622 (= res!105890 (valid!1144 thiss!1504))))

(assert (=> start!21622 e!140863))

(declare-fun e!140861 () Bool)

(assert (=> start!21622 e!140861))

(assert (=> start!21622 true))

(declare-fun b!216495 () Bool)

(declare-fun e!140865 () Bool)

(assert (=> b!216495 (= e!140865 tp_is_empty!5621)))

(declare-fun b!216496 () Bool)

(declare-fun res!105889 () Bool)

(assert (=> b!216496 (=> (not res!105889) (not e!140859))))

(assert (=> b!216496 (= res!105889 (and (= (size!5293 (_values!4050 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9804 thiss!1504))) (= (size!5294 (_keys!6116 thiss!1504)) (size!5293 (_values!4050 thiss!1504))) (bvsge (mask!9804 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3804 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3804 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun e!140860 () Bool)

(declare-fun array_inv!3273 (array!10482) Bool)

(declare-fun array_inv!3274 (array!10480) Bool)

(assert (=> b!216497 (= e!140861 (and tp!20411 tp_is_empty!5621 (array_inv!3273 (_keys!6116 thiss!1504)) (array_inv!3274 (_values!4050 thiss!1504)) e!140860))))

(declare-fun b!216498 () Bool)

(declare-fun res!105888 () Bool)

(assert (=> b!216498 (=> (not res!105888) (not e!140859))))

(declare-datatypes ((tuple2!4242 0))(
  ( (tuple2!4243 (_1!2131 (_ BitVec 64)) (_2!2131 V!7141)) )
))
(declare-datatypes ((List!3172 0))(
  ( (Nil!3169) (Cons!3168 (h!3815 tuple2!4242) (t!8135 List!3172)) )
))
(declare-datatypes ((ListLongMap!3169 0))(
  ( (ListLongMap!3170 (toList!1600 List!3172)) )
))
(declare-fun contains!1435 (ListLongMap!3169 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1123 (array!10482 array!10480 (_ BitVec 32) (_ BitVec 32) V!7141 V!7141 (_ BitVec 32) Int) ListLongMap!3169)

(assert (=> b!216498 (= res!105888 (contains!1435 (getCurrentListMap!1123 (_keys!6116 thiss!1504) (_values!4050 thiss!1504) (mask!9804 thiss!1504) (extraKeys!3804 thiss!1504) (zeroValue!3908 thiss!1504) (minValue!3908 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4067 thiss!1504)) key!932))))

(declare-fun b!216499 () Bool)

(assert (=> b!216499 (= e!140860 (and e!140864 mapRes!9594))))

(declare-fun condMapEmpty!9594 () Bool)

(declare-fun mapDefault!9594 () ValueCell!2467)

