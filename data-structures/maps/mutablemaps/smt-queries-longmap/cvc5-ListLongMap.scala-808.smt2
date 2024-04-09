; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19594 () Bool)

(assert start!19594)

(declare-fun b!192056 () Bool)

(declare-fun b_free!4687 () Bool)

(declare-fun b_next!4687 () Bool)

(assert (=> b!192056 (= b_free!4687 (not b_next!4687))))

(declare-fun tp!16914 () Bool)

(declare-fun b_and!11391 () Bool)

(assert (=> b!192056 (= tp!16914 b_and!11391)))

(declare-fun res!90770 () Bool)

(declare-fun e!126381 () Bool)

(assert (=> start!19594 (=> (not res!90770) (not e!126381))))

(declare-datatypes ((V!5593 0))(
  ( (V!5594 (val!2274 Int)) )
))
(declare-datatypes ((ValueCell!1886 0))(
  ( (ValueCellFull!1886 (v!4215 V!5593)) (EmptyCell!1886) )
))
(declare-datatypes ((array!8158 0))(
  ( (array!8159 (arr!3842 (Array (_ BitVec 32) (_ BitVec 64))) (size!4165 (_ BitVec 32))) )
))
(declare-datatypes ((array!8160 0))(
  ( (array!8161 (arr!3843 (Array (_ BitVec 32) ValueCell!1886)) (size!4166 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2680 0))(
  ( (LongMapFixedSize!2681 (defaultEntry!3920 Int) (mask!9150 (_ BitVec 32)) (extraKeys!3657 (_ BitVec 32)) (zeroValue!3761 V!5593) (minValue!3761 V!5593) (_size!1389 (_ BitVec 32)) (_keys!5902 array!8158) (_values!3903 array!8160) (_vacant!1389 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2680)

(declare-fun valid!1092 (LongMapFixedSize!2680) Bool)

(assert (=> start!19594 (= res!90770 (valid!1092 thiss!1248))))

(assert (=> start!19594 e!126381))

(declare-fun e!126388 () Bool)

(assert (=> start!19594 e!126388))

(assert (=> start!19594 true))

(declare-fun tp_is_empty!4459 () Bool)

(assert (=> start!19594 tp_is_empty!4459))

(declare-fun b!192053 () Bool)

(declare-fun e!126382 () Bool)

(declare-fun e!126380 () Bool)

(declare-fun mapRes!7705 () Bool)

(assert (=> b!192053 (= e!126382 (and e!126380 mapRes!7705))))

(declare-fun condMapEmpty!7705 () Bool)

(declare-fun mapDefault!7705 () ValueCell!1886)

