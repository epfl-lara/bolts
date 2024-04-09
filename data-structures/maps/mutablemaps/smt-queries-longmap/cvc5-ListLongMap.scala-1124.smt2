; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23068 () Bool)

(assert start!23068)

(declare-fun b!241588 () Bool)

(declare-fun b_free!6493 () Bool)

(declare-fun b_next!6493 () Bool)

(assert (=> b!241588 (= b_free!6493 (not b_next!6493))))

(declare-fun tp!22686 () Bool)

(declare-fun b_and!13483 () Bool)

(assert (=> b!241588 (= tp!22686 b_and!13483)))

(declare-datatypes ((V!8121 0))(
  ( (V!8122 (val!3222 Int)) )
))
(declare-datatypes ((ValueCell!2834 0))(
  ( (ValueCellFull!2834 (v!5257 V!8121)) (EmptyCell!2834) )
))
(declare-datatypes ((array!11990 0))(
  ( (array!11991 (arr!5695 (Array (_ BitVec 32) ValueCell!2834)) (size!6037 (_ BitVec 32))) )
))
(declare-datatypes ((array!11992 0))(
  ( (array!11993 (arr!5696 (Array (_ BitVec 32) (_ BitVec 64))) (size!6038 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3568 0))(
  ( (LongMapFixedSize!3569 (defaultEntry!4477 Int) (mask!10550 (_ BitVec 32)) (extraKeys!4214 (_ BitVec 32)) (zeroValue!4318 V!8121) (minValue!4318 V!8121) (_size!1833 (_ BitVec 32)) (_keys!6583 array!11992) (_values!4460 array!11990) (_vacant!1833 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3568)

(declare-fun e!156808 () Bool)

(declare-fun tp_is_empty!6355 () Bool)

(declare-fun e!156797 () Bool)

(declare-fun array_inv!3761 (array!11992) Bool)

(declare-fun array_inv!3762 (array!11990) Bool)

(assert (=> b!241588 (= e!156808 (and tp!22686 tp_is_empty!6355 (array_inv!3761 (_keys!6583 thiss!1504)) (array_inv!3762 (_values!4460 thiss!1504)) e!156797))))

(declare-fun b!241589 () Bool)

(declare-fun res!118432 () Bool)

(declare-fun e!156809 () Bool)

(assert (=> b!241589 (=> (not res!118432) (not e!156809))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!241589 (= res!118432 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!241590 () Bool)

(declare-fun c!40269 () Bool)

(declare-datatypes ((SeekEntryResult!1068 0))(
  ( (MissingZero!1068 (index!6442 (_ BitVec 32))) (Found!1068 (index!6443 (_ BitVec 32))) (Intermediate!1068 (undefined!1880 Bool) (index!6444 (_ BitVec 32)) (x!24238 (_ BitVec 32))) (Undefined!1068) (MissingVacant!1068 (index!6445 (_ BitVec 32))) )
))
(declare-fun lt!121446 () SeekEntryResult!1068)

(assert (=> b!241590 (= c!40269 (is-MissingVacant!1068 lt!121446))))

(declare-fun e!156810 () Bool)

(declare-fun e!156806 () Bool)

(assert (=> b!241590 (= e!156810 e!156806)))

(declare-fun b!241591 () Bool)

(declare-fun e!156807 () Bool)

(assert (=> b!241591 (= e!156807 tp_is_empty!6355)))

(declare-fun b!241592 () Bool)

(declare-fun mapRes!10768 () Bool)

(assert (=> b!241592 (= e!156797 (and e!156807 mapRes!10768))))

(declare-fun condMapEmpty!10768 () Bool)

(declare-fun mapDefault!10768 () ValueCell!2834)

