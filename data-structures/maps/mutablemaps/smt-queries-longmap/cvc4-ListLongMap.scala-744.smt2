; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17282 () Bool)

(assert start!17282)

(declare-fun b!173153 () Bool)

(declare-fun b_free!4307 () Bool)

(declare-fun b_next!4307 () Bool)

(assert (=> b!173153 (= b_free!4307 (not b_next!4307))))

(declare-fun tp!15582 () Bool)

(declare-fun b_and!10765 () Bool)

(assert (=> b!173153 (= tp!15582 b_and!10765)))

(declare-fun b!173152 () Bool)

(declare-fun res!82231 () Bool)

(declare-fun e!114384 () Bool)

(assert (=> b!173152 (=> (not res!82231) (not e!114384))))

(declare-datatypes ((V!5085 0))(
  ( (V!5086 (val!2084 Int)) )
))
(declare-datatypes ((ValueCell!1696 0))(
  ( (ValueCellFull!1696 (v!3948 V!5085)) (EmptyCell!1696) )
))
(declare-datatypes ((array!7286 0))(
  ( (array!7287 (arr!3462 (Array (_ BitVec 32) (_ BitVec 64))) (size!3761 (_ BitVec 32))) )
))
(declare-datatypes ((array!7288 0))(
  ( (array!7289 (arr!3463 (Array (_ BitVec 32) ValueCell!1696)) (size!3762 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2300 0))(
  ( (LongMapFixedSize!2301 (defaultEntry!3596 Int) (mask!8464 (_ BitVec 32)) (extraKeys!3335 (_ BitVec 32)) (zeroValue!3437 V!5085) (minValue!3439 V!5085) (_size!1199 (_ BitVec 32)) (_keys!5436 array!7286) (_values!3579 array!7288) (_vacant!1199 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2300)

(assert (=> b!173152 (= res!82231 (and (= (size!3762 (_values!3579 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8464 thiss!1248))) (= (size!3761 (_keys!5436 thiss!1248)) (size!3762 (_values!3579 thiss!1248))) (bvsge (mask!8464 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3335 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3335 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3335 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3335 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!3335 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!3335 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!3335 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!114382 () Bool)

(declare-fun e!114381 () Bool)

(declare-fun tp_is_empty!4079 () Bool)

(declare-fun array_inv!2207 (array!7286) Bool)

(declare-fun array_inv!2208 (array!7288) Bool)

(assert (=> b!173153 (= e!114382 (and tp!15582 tp_is_empty!4079 (array_inv!2207 (_keys!5436 thiss!1248)) (array_inv!2208 (_values!3579 thiss!1248)) e!114381))))

(declare-fun b!173154 () Bool)

(declare-fun e!114385 () Bool)

(assert (=> b!173154 (= e!114385 tp_is_empty!4079)))

(declare-fun res!82230 () Bool)

(assert (=> start!17282 (=> (not res!82230) (not e!114384))))

(declare-fun valid!964 (LongMapFixedSize!2300) Bool)

(assert (=> start!17282 (= res!82230 (valid!964 thiss!1248))))

(assert (=> start!17282 e!114384))

(assert (=> start!17282 e!114382))

(assert (=> start!17282 true))

(declare-fun b!173155 () Bool)

(declare-fun res!82232 () Bool)

(assert (=> b!173155 (=> (not res!82232) (not e!114384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7286 (_ BitVec 32)) Bool)

(assert (=> b!173155 (= res!82232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5436 thiss!1248) (mask!8464 thiss!1248)))))

(declare-fun b!173156 () Bool)

(declare-fun e!114383 () Bool)

(declare-fun mapRes!6942 () Bool)

(assert (=> b!173156 (= e!114381 (and e!114383 mapRes!6942))))

(declare-fun condMapEmpty!6942 () Bool)

(declare-fun mapDefault!6942 () ValueCell!1696)

