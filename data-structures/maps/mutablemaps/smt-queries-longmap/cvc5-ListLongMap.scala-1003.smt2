; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21630 () Bool)

(assert start!21630)

(declare-fun b!216630 () Bool)

(declare-fun b_free!5767 () Bool)

(declare-fun b_next!5767 () Bool)

(assert (=> b!216630 (= b_free!5767 (not b_next!5767))))

(declare-fun tp!20435 () Bool)

(declare-fun b_and!12675 () Bool)

(assert (=> b!216630 (= tp!20435 b_and!12675)))

(declare-fun b!216623 () Bool)

(declare-fun e!140945 () Bool)

(assert (=> b!216623 (= e!140945 false)))

(declare-fun lt!111229 () Bool)

(declare-datatypes ((V!7153 0))(
  ( (V!7154 (val!2859 Int)) )
))
(declare-datatypes ((ValueCell!2471 0))(
  ( (ValueCellFull!2471 (v!4873 V!7153)) (EmptyCell!2471) )
))
(declare-datatypes ((array!10496 0))(
  ( (array!10497 (arr!4969 (Array (_ BitVec 32) ValueCell!2471)) (size!5301 (_ BitVec 32))) )
))
(declare-datatypes ((array!10498 0))(
  ( (array!10499 (arr!4970 (Array (_ BitVec 32) (_ BitVec 64))) (size!5302 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2842 0))(
  ( (LongMapFixedSize!2843 (defaultEntry!4071 Int) (mask!9812 (_ BitVec 32)) (extraKeys!3808 (_ BitVec 32)) (zeroValue!3912 V!7153) (minValue!3912 V!7153) (_size!1470 (_ BitVec 32)) (_keys!6120 array!10498) (_values!4054 array!10496) (_vacant!1470 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2842)

(declare-datatypes ((List!3177 0))(
  ( (Nil!3174) (Cons!3173 (h!3820 (_ BitVec 64)) (t!8140 List!3177)) )
))
(declare-fun arrayNoDuplicates!0 (array!10498 (_ BitVec 32) List!3177) Bool)

(assert (=> b!216623 (= lt!111229 (arrayNoDuplicates!0 (_keys!6120 thiss!1504) #b00000000000000000000000000000000 Nil!3174))))

(declare-fun b!216624 () Bool)

(declare-fun res!105977 () Bool)

(assert (=> b!216624 (=> (not res!105977) (not e!140945))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4248 0))(
  ( (tuple2!4249 (_1!2134 (_ BitVec 64)) (_2!2134 V!7153)) )
))
(declare-datatypes ((List!3178 0))(
  ( (Nil!3175) (Cons!3174 (h!3821 tuple2!4248) (t!8141 List!3178)) )
))
(declare-datatypes ((ListLongMap!3175 0))(
  ( (ListLongMap!3176 (toList!1603 List!3178)) )
))
(declare-fun contains!1438 (ListLongMap!3175 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1126 (array!10498 array!10496 (_ BitVec 32) (_ BitVec 32) V!7153 V!7153 (_ BitVec 32) Int) ListLongMap!3175)

(assert (=> b!216624 (= res!105977 (contains!1438 (getCurrentListMap!1126 (_keys!6120 thiss!1504) (_values!4054 thiss!1504) (mask!9812 thiss!1504) (extraKeys!3808 thiss!1504) (zeroValue!3912 thiss!1504) (minValue!3912 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4071 thiss!1504)) key!932))))

(declare-fun b!216625 () Bool)

(declare-fun e!140948 () Bool)

(declare-fun tp_is_empty!5629 () Bool)

(assert (=> b!216625 (= e!140948 tp_is_empty!5629)))

(declare-fun res!105975 () Bool)

(declare-fun e!140946 () Bool)

(assert (=> start!21630 (=> (not res!105975) (not e!140946))))

(declare-fun valid!1147 (LongMapFixedSize!2842) Bool)

(assert (=> start!21630 (= res!105975 (valid!1147 thiss!1504))))

(assert (=> start!21630 e!140946))

(declare-fun e!140943 () Bool)

(assert (=> start!21630 e!140943))

(assert (=> start!21630 true))

(declare-fun b!216626 () Bool)

(declare-fun res!105974 () Bool)

(assert (=> b!216626 (=> (not res!105974) (not e!140945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216626 (= res!105974 (validMask!0 (mask!9812 thiss!1504)))))

(declare-fun b!216627 () Bool)

(declare-fun e!140949 () Bool)

(declare-fun mapRes!9606 () Bool)

(assert (=> b!216627 (= e!140949 (and e!140948 mapRes!9606))))

(declare-fun condMapEmpty!9606 () Bool)

(declare-fun mapDefault!9606 () ValueCell!2471)

