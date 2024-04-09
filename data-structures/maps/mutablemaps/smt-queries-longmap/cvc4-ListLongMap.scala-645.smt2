; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16234 () Bool)

(assert start!16234)

(declare-fun b!161762 () Bool)

(declare-fun b_free!3683 () Bool)

(declare-fun b_next!3683 () Bool)

(assert (=> b!161762 (= b_free!3683 (not b_next!3683))))

(declare-fun tp!13619 () Bool)

(declare-fun b_and!10115 () Bool)

(assert (=> b!161762 (= tp!13619 b_and!10115)))

(declare-fun b!161760 () Bool)

(declare-fun e!105821 () Bool)

(declare-fun e!105819 () Bool)

(declare-fun mapRes!5915 () Bool)

(assert (=> b!161760 (= e!105821 (and e!105819 mapRes!5915))))

(declare-fun condMapEmpty!5915 () Bool)

(declare-datatypes ((V!4293 0))(
  ( (V!4294 (val!1787 Int)) )
))
(declare-datatypes ((ValueCell!1399 0))(
  ( (ValueCellFull!1399 (v!3648 V!4293)) (EmptyCell!1399) )
))
(declare-datatypes ((array!6048 0))(
  ( (array!6049 (arr!2868 (Array (_ BitVec 32) (_ BitVec 64))) (size!3152 (_ BitVec 32))) )
))
(declare-datatypes ((array!6050 0))(
  ( (array!6051 (arr!2869 (Array (_ BitVec 32) ValueCell!1399)) (size!3153 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1706 0))(
  ( (LongMapFixedSize!1707 (defaultEntry!3295 Int) (mask!7897 (_ BitVec 32)) (extraKeys!3036 (_ BitVec 32)) (zeroValue!3138 V!4293) (minValue!3138 V!4293) (_size!902 (_ BitVec 32)) (_keys!5096 array!6048) (_values!3278 array!6050) (_vacant!902 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1706)

(declare-fun mapDefault!5915 () ValueCell!1399)

