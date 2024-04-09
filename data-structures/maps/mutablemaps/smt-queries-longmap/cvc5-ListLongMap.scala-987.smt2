; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21312 () Bool)

(assert start!21312)

(declare-fun b!214345 () Bool)

(declare-fun b_free!5671 () Bool)

(declare-fun b_next!5671 () Bool)

(assert (=> b!214345 (= b_free!5671 (not b_next!5671))))

(declare-fun tp!20100 () Bool)

(declare-fun b_and!12579 () Bool)

(assert (=> b!214345 (= tp!20100 b_and!12579)))

(declare-fun b!214338 () Bool)

(declare-fun e!139409 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!214338 (= e!139409 (not (validKeyInArray!0 key!932)))))

(declare-fun b!214339 () Bool)

(declare-fun res!104944 () Bool)

(assert (=> b!214339 (=> (not res!104944) (not e!139409))))

(declare-datatypes ((V!7025 0))(
  ( (V!7026 (val!2811 Int)) )
))
(declare-datatypes ((ValueCell!2423 0))(
  ( (ValueCellFull!2423 (v!4825 V!7025)) (EmptyCell!2423) )
))
(declare-datatypes ((array!10276 0))(
  ( (array!10277 (arr!4873 (Array (_ BitVec 32) ValueCell!2423)) (size!5200 (_ BitVec 32))) )
))
(declare-datatypes ((array!10278 0))(
  ( (array!10279 (arr!4874 (Array (_ BitVec 32) (_ BitVec 64))) (size!5201 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2746 0))(
  ( (LongMapFixedSize!2747 (defaultEntry!4023 Int) (mask!9682 (_ BitVec 32)) (extraKeys!3760 (_ BitVec 32)) (zeroValue!3864 V!7025) (minValue!3864 V!7025) (_size!1422 (_ BitVec 32)) (_keys!6041 array!10278) (_values!4006 array!10276) (_vacant!1422 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2746)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214339 (= res!104944 (validMask!0 (mask!9682 thiss!1504)))))

(declare-fun b!214340 () Bool)

(declare-fun res!104945 () Bool)

(assert (=> b!214340 (=> (not res!104945) (not e!139409))))

(assert (=> b!214340 (= res!104945 (and (bvsge (mask!9682 thiss!1504) #b00000000000000000000000000000000) (= (size!5201 (_keys!6041 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9682 thiss!1504)))))))

(declare-fun res!104946 () Bool)

(assert (=> start!21312 (=> (not res!104946) (not e!139409))))

(declare-fun valid!1117 (LongMapFixedSize!2746) Bool)

(assert (=> start!21312 (= res!104946 (valid!1117 thiss!1504))))

(assert (=> start!21312 e!139409))

(declare-fun e!139406 () Bool)

(assert (=> start!21312 e!139406))

(assert (=> start!21312 true))

(declare-fun mapIsEmpty!9415 () Bool)

(declare-fun mapRes!9415 () Bool)

(assert (=> mapIsEmpty!9415 mapRes!9415))

(declare-fun b!214341 () Bool)

(declare-fun e!139407 () Bool)

(declare-fun e!139405 () Bool)

(assert (=> b!214341 (= e!139407 (and e!139405 mapRes!9415))))

(declare-fun condMapEmpty!9415 () Bool)

(declare-fun mapDefault!9415 () ValueCell!2423)

