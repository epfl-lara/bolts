; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17816 () Bool)

(assert start!17816)

(declare-fun b!177763 () Bool)

(declare-fun b_free!4393 () Bool)

(declare-fun b_next!4393 () Bool)

(assert (=> b!177763 (= b_free!4393 (not b_next!4393))))

(declare-fun tp!15886 () Bool)

(declare-fun b_and!10919 () Bool)

(assert (=> b!177763 (= tp!15886 b_and!10919)))

(declare-fun b!177757 () Bool)

(declare-fun e!117213 () Bool)

(declare-fun tp_is_empty!4165 () Bool)

(assert (=> b!177757 (= e!117213 tp_is_empty!4165)))

(declare-fun b!177758 () Bool)

(declare-fun e!117212 () Bool)

(declare-fun e!117211 () Bool)

(declare-fun mapRes!7117 () Bool)

(assert (=> b!177758 (= e!117212 (and e!117211 mapRes!7117))))

(declare-fun condMapEmpty!7117 () Bool)

(declare-datatypes ((V!5201 0))(
  ( (V!5202 (val!2127 Int)) )
))
(declare-datatypes ((ValueCell!1739 0))(
  ( (ValueCellFull!1739 (v!4005 V!5201)) (EmptyCell!1739) )
))
(declare-datatypes ((array!7484 0))(
  ( (array!7485 (arr!3548 (Array (_ BitVec 32) (_ BitVec 64))) (size!3853 (_ BitVec 32))) )
))
(declare-datatypes ((array!7486 0))(
  ( (array!7487 (arr!3549 (Array (_ BitVec 32) ValueCell!1739)) (size!3854 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2386 0))(
  ( (LongMapFixedSize!2387 (defaultEntry!3659 Int) (mask!8607 (_ BitVec 32)) (extraKeys!3396 (_ BitVec 32)) (zeroValue!3500 V!5201) (minValue!3500 V!5201) (_size!1242 (_ BitVec 32)) (_keys!5531 array!7484) (_values!3642 array!7486) (_vacant!1242 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2386)

(declare-fun mapDefault!7117 () ValueCell!1739)

