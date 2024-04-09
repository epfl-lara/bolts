; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21294 () Bool)

(assert start!21294)

(declare-fun b!214249 () Bool)

(declare-fun b_free!5669 () Bool)

(declare-fun b_next!5669 () Bool)

(assert (=> b!214249 (= b_free!5669 (not b_next!5669))))

(declare-fun tp!20090 () Bool)

(declare-fun b_and!12577 () Bool)

(assert (=> b!214249 (= tp!20090 b_and!12577)))

(declare-fun res!104898 () Bool)

(declare-fun e!139349 () Bool)

(assert (=> start!21294 (=> (not res!104898) (not e!139349))))

(declare-datatypes ((V!7021 0))(
  ( (V!7022 (val!2810 Int)) )
))
(declare-datatypes ((ValueCell!2422 0))(
  ( (ValueCellFull!2422 (v!4824 V!7021)) (EmptyCell!2422) )
))
(declare-datatypes ((array!10270 0))(
  ( (array!10271 (arr!4871 (Array (_ BitVec 32) ValueCell!2422)) (size!5197 (_ BitVec 32))) )
))
(declare-datatypes ((array!10272 0))(
  ( (array!10273 (arr!4872 (Array (_ BitVec 32) (_ BitVec 64))) (size!5198 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2744 0))(
  ( (LongMapFixedSize!2745 (defaultEntry!4022 Int) (mask!9677 (_ BitVec 32)) (extraKeys!3759 (_ BitVec 32)) (zeroValue!3863 V!7021) (minValue!3863 V!7021) (_size!1421 (_ BitVec 32)) (_keys!6039 array!10272) (_values!4005 array!10270) (_vacant!1421 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2744)

(declare-fun valid!1116 (LongMapFixedSize!2744) Bool)

(assert (=> start!21294 (= res!104898 (valid!1116 thiss!1504))))

(assert (=> start!21294 e!139349))

(declare-fun e!139348 () Bool)

(assert (=> start!21294 e!139348))

(assert (=> start!21294 true))

(declare-fun b!214245 () Bool)

(assert (=> b!214245 (= e!139349 (and (bvsge (mask!9677 thiss!1504) #b00000000000000000000000000000000) (not (= (size!5198 (_keys!6039 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9677 thiss!1504))))))))

(declare-fun b!214246 () Bool)

(declare-fun e!139350 () Bool)

(declare-fun e!139346 () Bool)

(declare-fun mapRes!9408 () Bool)

(assert (=> b!214246 (= e!139350 (and e!139346 mapRes!9408))))

(declare-fun condMapEmpty!9408 () Bool)

(declare-fun mapDefault!9408 () ValueCell!2422)

