; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15284 () Bool)

(assert start!15284)

(declare-fun b!147787 () Bool)

(declare-fun b_free!3177 () Bool)

(declare-fun b_next!3177 () Bool)

(assert (=> b!147787 (= b_free!3177 (not b_next!3177))))

(declare-fun tp!12037 () Bool)

(declare-fun b_and!9317 () Bool)

(assert (=> b!147787 (= tp!12037 b_and!9317)))

(declare-fun b!147781 () Bool)

(declare-fun b_free!3179 () Bool)

(declare-fun b_next!3179 () Bool)

(assert (=> b!147781 (= b_free!3179 (not b_next!3179))))

(declare-fun tp!12038 () Bool)

(declare-fun b_and!9319 () Bool)

(assert (=> b!147781 (= tp!12038 b_and!9319)))

(declare-fun b!147776 () Bool)

(declare-fun e!96568 () Bool)

(declare-fun e!96577 () Bool)

(declare-fun mapRes!5091 () Bool)

(assert (=> b!147776 (= e!96568 (and e!96577 mapRes!5091))))

(declare-fun condMapEmpty!5092 () Bool)

(declare-datatypes ((V!3653 0))(
  ( (V!3654 (val!1547 Int)) )
))
(declare-datatypes ((array!5056 0))(
  ( (array!5057 (arr!2388 (Array (_ BitVec 32) (_ BitVec 64))) (size!2664 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1159 0))(
  ( (ValueCellFull!1159 (v!3383 V!3653)) (EmptyCell!1159) )
))
(declare-datatypes ((array!5058 0))(
  ( (array!5059 (arr!2389 (Array (_ BitVec 32) ValueCell!1159)) (size!2665 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1226 0))(
  ( (LongMapFixedSize!1227 (defaultEntry!3032 Int) (mask!7418 (_ BitVec 32)) (extraKeys!2777 (_ BitVec 32)) (zeroValue!2877 V!3653) (minValue!2877 V!3653) (_size!662 (_ BitVec 32)) (_keys!4801 array!5056) (_values!3015 array!5058) (_vacant!662 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1226)

(declare-fun mapDefault!5092 () ValueCell!1159)

