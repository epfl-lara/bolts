; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21316 () Bool)

(assert start!21316)

(declare-fun b!214389 () Bool)

(declare-fun b_free!5675 () Bool)

(declare-fun b_next!5675 () Bool)

(assert (=> b!214389 (= b_free!5675 (not b_next!5675))))

(declare-fun tp!20113 () Bool)

(declare-fun b_and!12583 () Bool)

(assert (=> b!214389 (= tp!20113 b_and!12583)))

(declare-fun b!214386 () Bool)

(declare-fun res!104970 () Bool)

(declare-fun e!139441 () Bool)

(assert (=> b!214386 (=> (not res!104970) (not e!139441))))

(declare-datatypes ((V!7029 0))(
  ( (V!7030 (val!2813 Int)) )
))
(declare-datatypes ((ValueCell!2425 0))(
  ( (ValueCellFull!2425 (v!4827 V!7029)) (EmptyCell!2425) )
))
(declare-datatypes ((array!10284 0))(
  ( (array!10285 (arr!4877 (Array (_ BitVec 32) ValueCell!2425)) (size!5204 (_ BitVec 32))) )
))
(declare-datatypes ((array!10286 0))(
  ( (array!10287 (arr!4878 (Array (_ BitVec 32) (_ BitVec 64))) (size!5205 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2750 0))(
  ( (LongMapFixedSize!2751 (defaultEntry!4025 Int) (mask!9684 (_ BitVec 32)) (extraKeys!3762 (_ BitVec 32)) (zeroValue!3866 V!7029) (minValue!3866 V!7029) (_size!1424 (_ BitVec 32)) (_keys!6043 array!10286) (_values!4008 array!10284) (_vacant!1424 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2750)

(assert (=> b!214386 (= res!104970 (and (bvsge (mask!9684 thiss!1504) #b00000000000000000000000000000000) (= (size!5205 (_keys!6043 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9684 thiss!1504)))))))

(declare-fun b!214387 () Bool)

(declare-fun res!104969 () Bool)

(assert (=> b!214387 (=> (not res!104969) (not e!139441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214387 (= res!104969 (validMask!0 (mask!9684 thiss!1504)))))

(declare-fun b!214388 () Bool)

(declare-fun e!139440 () Bool)

(declare-fun tp_is_empty!5537 () Bool)

(assert (=> b!214388 (= e!139440 tp_is_empty!5537)))

(declare-fun e!139444 () Bool)

(declare-fun e!139442 () Bool)

(declare-fun array_inv!3215 (array!10286) Bool)

(declare-fun array_inv!3216 (array!10284) Bool)

(assert (=> b!214389 (= e!139444 (and tp!20113 tp_is_empty!5537 (array_inv!3215 (_keys!6043 thiss!1504)) (array_inv!3216 (_values!4008 thiss!1504)) e!139442))))

(declare-fun b!214390 () Bool)

(declare-fun e!139445 () Bool)

(assert (=> b!214390 (= e!139445 tp_is_empty!5537)))

(declare-fun b!214391 () Bool)

(declare-fun mapRes!9421 () Bool)

(assert (=> b!214391 (= e!139442 (and e!139440 mapRes!9421))))

(declare-fun condMapEmpty!9421 () Bool)

(declare-fun mapDefault!9421 () ValueCell!2425)

