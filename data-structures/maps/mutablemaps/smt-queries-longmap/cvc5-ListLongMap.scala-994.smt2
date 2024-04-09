; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21454 () Bool)

(assert start!21454)

(declare-fun b!215256 () Bool)

(declare-fun b_free!5713 () Bool)

(declare-fun b_next!5713 () Bool)

(assert (=> b!215256 (= b_free!5713 (not b_next!5713))))

(declare-fun tp!20249 () Bool)

(declare-fun b_and!12621 () Bool)

(assert (=> b!215256 (= tp!20249 b_and!12621)))

(declare-fun mapNonEmpty!9501 () Bool)

(declare-fun mapRes!9501 () Bool)

(declare-fun tp!20250 () Bool)

(declare-fun e!140034 () Bool)

(assert (=> mapNonEmpty!9501 (= mapRes!9501 (and tp!20250 e!140034))))

(declare-datatypes ((V!7081 0))(
  ( (V!7082 (val!2832 Int)) )
))
(declare-datatypes ((ValueCell!2444 0))(
  ( (ValueCellFull!2444 (v!4846 V!7081)) (EmptyCell!2444) )
))
(declare-fun mapRest!9501 () (Array (_ BitVec 32) ValueCell!2444))

(declare-fun mapKey!9501 () (_ BitVec 32))

(declare-datatypes ((array!10374 0))(
  ( (array!10375 (arr!4915 (Array (_ BitVec 32) ValueCell!2444)) (size!5244 (_ BitVec 32))) )
))
(declare-datatypes ((array!10376 0))(
  ( (array!10377 (arr!4916 (Array (_ BitVec 32) (_ BitVec 64))) (size!5245 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2788 0))(
  ( (LongMapFixedSize!2789 (defaultEntry!4044 Int) (mask!9738 (_ BitVec 32)) (extraKeys!3781 (_ BitVec 32)) (zeroValue!3885 V!7081) (minValue!3885 V!7081) (_size!1443 (_ BitVec 32)) (_keys!6074 array!10376) (_values!4027 array!10374) (_vacant!1443 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2788)

(declare-fun mapValue!9501 () ValueCell!2444)

(assert (=> mapNonEmpty!9501 (= (arr!4915 (_values!4027 thiss!1504)) (store mapRest!9501 mapKey!9501 mapValue!9501))))

(declare-fun tp_is_empty!5575 () Bool)

(declare-fun e!140037 () Bool)

(declare-fun e!140032 () Bool)

(declare-fun array_inv!3245 (array!10376) Bool)

(declare-fun array_inv!3246 (array!10374) Bool)

(assert (=> b!215256 (= e!140032 (and tp!20249 tp_is_empty!5575 (array_inv!3245 (_keys!6074 thiss!1504)) (array_inv!3246 (_values!4027 thiss!1504)) e!140037))))

(declare-fun b!215257 () Bool)

(declare-fun e!140033 () Bool)

(assert (=> b!215257 (= e!140033 tp_is_empty!5575)))

(declare-fun res!105327 () Bool)

(declare-fun e!140036 () Bool)

(assert (=> start!21454 (=> (not res!105327) (not e!140036))))

(declare-fun valid!1129 (LongMapFixedSize!2788) Bool)

(assert (=> start!21454 (= res!105327 (valid!1129 thiss!1504))))

(assert (=> start!21454 e!140036))

(assert (=> start!21454 e!140032))

(assert (=> start!21454 true))

(declare-fun b!215258 () Bool)

(declare-fun res!105325 () Bool)

(assert (=> b!215258 (=> (not res!105325) (not e!140036))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!215258 (= res!105325 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!9501 () Bool)

(assert (=> mapIsEmpty!9501 mapRes!9501))

(declare-fun b!215259 () Bool)

(assert (=> b!215259 (= e!140037 (and e!140033 mapRes!9501))))

(declare-fun condMapEmpty!9501 () Bool)

(declare-fun mapDefault!9501 () ValueCell!2444)

