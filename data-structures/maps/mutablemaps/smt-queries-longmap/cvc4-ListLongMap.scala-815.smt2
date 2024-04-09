; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19944 () Bool)

(assert start!19944)

(declare-fun b!195598 () Bool)

(declare-fun b_free!4737 () Bool)

(declare-fun b_next!4737 () Bool)

(assert (=> b!195598 (= b_free!4737 (not b_next!4737))))

(declare-fun tp!17094 () Bool)

(declare-fun b_and!11501 () Bool)

(assert (=> b!195598 (= tp!17094 b_and!11501)))

(declare-fun b!195592 () Bool)

(declare-fun b_free!4739 () Bool)

(declare-fun b_next!4739 () Bool)

(assert (=> b!195592 (= b_free!4739 (not b_next!4739))))

(declare-fun tp!17092 () Bool)

(declare-fun b_and!11503 () Bool)

(assert (=> b!195592 (= tp!17092 b_and!11503)))

(declare-fun b!195585 () Bool)

(declare-fun e!128696 () Bool)

(declare-fun e!128693 () Bool)

(assert (=> b!195585 (= e!128696 e!128693)))

(declare-fun c!35392 () Bool)

(declare-datatypes ((V!5653 0))(
  ( (V!5654 (val!2297 Int)) )
))
(declare-datatypes ((ValueCell!1909 0))(
  ( (ValueCellFull!1909 (v!4261 V!5653)) (EmptyCell!1909) )
))
(declare-datatypes ((array!8264 0))(
  ( (array!8265 (arr!3888 (Array (_ BitVec 32) (_ BitVec 64))) (size!4213 (_ BitVec 32))) )
))
(declare-datatypes ((array!8266 0))(
  ( (array!8267 (arr!3889 (Array (_ BitVec 32) ValueCell!1909)) (size!4214 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2726 0))(
  ( (LongMapFixedSize!2727 (defaultEntry!3977 Int) (mask!9253 (_ BitVec 32)) (extraKeys!3714 (_ BitVec 32)) (zeroValue!3818 V!5653) (minValue!3818 V!5653) (_size!1412 (_ BitVec 32)) (_keys!5976 array!8264) (_values!3960 array!8266) (_vacant!1412 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3564 0))(
  ( (tuple2!3565 (_1!1792 Bool) (_2!1792 LongMapFixedSize!2726)) )
))
(declare-fun lt!97513 () tuple2!3564)

(assert (=> b!195585 (= c!35392 (_1!1792 lt!97513))))

(declare-fun b!195586 () Bool)

(declare-fun e!128697 () Bool)

(assert (=> b!195586 (= e!128697 e!128696)))

(declare-fun res!92325 () Bool)

(assert (=> b!195586 (=> res!92325 e!128696)))

(declare-fun valid!1109 (LongMapFixedSize!2726) Bool)

(assert (=> b!195586 (= res!92325 (not (valid!1109 (_2!1792 lt!97513))))))

(declare-fun err!107 () tuple2!3564)

(assert (=> b!195586 (= lt!97513 err!107)))

(assert (=> b!195586 true))

(declare-fun e!128698 () Bool)

(assert (=> b!195586 e!128698))

(declare-fun mapNonEmpty!7806 () Bool)

(declare-fun mapRes!7807 () Bool)

(declare-fun tp!17093 () Bool)

(declare-fun e!128699 () Bool)

(assert (=> mapNonEmpty!7806 (= mapRes!7807 (and tp!17093 e!128699))))

(declare-fun mapValue!7806 () ValueCell!1909)

(declare-fun mapRest!7806 () (Array (_ BitVec 32) ValueCell!1909))

(declare-fun thiss!1248 () LongMapFixedSize!2726)

(declare-fun mapKey!7806 () (_ BitVec 32))

(assert (=> mapNonEmpty!7806 (= (arr!3889 (_values!3960 thiss!1248)) (store mapRest!7806 mapKey!7806 mapValue!7806))))

(declare-fun b!195587 () Bool)

(declare-fun e!128705 () Bool)

(declare-fun e!128692 () Bool)

(assert (=> b!195587 (= e!128705 (and e!128692 mapRes!7807))))

(declare-fun condMapEmpty!7806 () Bool)

(declare-fun mapDefault!7807 () ValueCell!1909)

