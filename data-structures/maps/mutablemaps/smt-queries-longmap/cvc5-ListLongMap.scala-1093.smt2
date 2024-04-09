; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22380 () Bool)

(assert start!22380)

(declare-fun b!234228 () Bool)

(declare-fun b_free!6307 () Bool)

(declare-fun b_next!6307 () Bool)

(assert (=> b!234228 (= b_free!6307 (not b_next!6307))))

(declare-fun tp!22076 () Bool)

(declare-fun b_and!13239 () Bool)

(assert (=> b!234228 (= tp!22076 b_and!13239)))

(declare-datatypes ((V!7873 0))(
  ( (V!7874 (val!3129 Int)) )
))
(declare-datatypes ((ValueCell!2741 0))(
  ( (ValueCellFull!2741 (v!5149 V!7873)) (EmptyCell!2741) )
))
(declare-datatypes ((array!11588 0))(
  ( (array!11589 (arr!5509 (Array (_ BitVec 32) ValueCell!2741)) (size!5844 (_ BitVec 32))) )
))
(declare-datatypes ((array!11590 0))(
  ( (array!11591 (arr!5510 (Array (_ BitVec 32) (_ BitVec 64))) (size!5845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3382 0))(
  ( (LongMapFixedSize!3383 (defaultEntry!4356 Int) (mask!10302 (_ BitVec 32)) (extraKeys!4093 (_ BitVec 32)) (zeroValue!4197 V!7873) (minValue!4197 V!7873) (_size!1740 (_ BitVec 32)) (_keys!6420 array!11590) (_values!4339 array!11588) (_vacant!1740 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3382)

(declare-fun tp_is_empty!6169 () Bool)

(declare-fun e!152153 () Bool)

(declare-fun e!152156 () Bool)

(declare-fun array_inv!3621 (array!11590) Bool)

(declare-fun array_inv!3622 (array!11588) Bool)

(assert (=> b!234228 (= e!152153 (and tp!22076 tp_is_empty!6169 (array_inv!3621 (_keys!6420 thiss!1504)) (array_inv!3622 (_values!4339 thiss!1504)) e!152156))))

(declare-fun b!234229 () Bool)

(declare-fun e!152152 () Bool)

(assert (=> b!234229 (= e!152152 tp_is_empty!6169)))

(declare-fun res!114920 () Bool)

(declare-fun e!152151 () Bool)

(assert (=> start!22380 (=> (not res!114920) (not e!152151))))

(declare-fun valid!1327 (LongMapFixedSize!3382) Bool)

(assert (=> start!22380 (= res!114920 (valid!1327 thiss!1504))))

(assert (=> start!22380 e!152151))

(assert (=> start!22380 e!152153))

(assert (=> start!22380 true))

(declare-fun b!234230 () Bool)

(declare-fun e!152150 () Bool)

(assert (=> b!234230 (= e!152150 (and (= (size!5844 (_values!4339 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10302 thiss!1504))) (= (size!5845 (_keys!6420 thiss!1504)) (size!5844 (_values!4339 thiss!1504))) (bvsge (mask!10302 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4093 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!234231 () Bool)

(declare-fun e!152154 () Bool)

(assert (=> b!234231 (= e!152154 tp_is_empty!6169)))

(declare-fun b!234232 () Bool)

(declare-fun mapRes!10437 () Bool)

(assert (=> b!234232 (= e!152156 (and e!152154 mapRes!10437))))

(declare-fun condMapEmpty!10437 () Bool)

(declare-fun mapDefault!10437 () ValueCell!2741)

