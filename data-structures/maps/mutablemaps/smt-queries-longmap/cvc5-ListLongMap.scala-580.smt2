; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15634 () Bool)

(assert start!15634)

(declare-fun b!155582 () Bool)

(declare-fun b_free!3289 () Bool)

(declare-fun b_next!3289 () Bool)

(assert (=> b!155582 (= b_free!3289 (not b_next!3289))))

(declare-fun tp!12392 () Bool)

(declare-fun b_and!9721 () Bool)

(assert (=> b!155582 (= tp!12392 b_and!9721)))

(declare-fun b!155581 () Bool)

(declare-fun e!101659 () Bool)

(declare-fun e!101660 () Bool)

(declare-fun mapRes!5279 () Bool)

(assert (=> b!155581 (= e!101659 (and e!101660 mapRes!5279))))

(declare-fun condMapEmpty!5279 () Bool)

(declare-datatypes ((V!3769 0))(
  ( (V!3770 (val!1590 Int)) )
))
(declare-datatypes ((ValueCell!1202 0))(
  ( (ValueCellFull!1202 (v!3451 V!3769)) (EmptyCell!1202) )
))
(declare-datatypes ((array!5234 0))(
  ( (array!5235 (arr!2474 (Array (_ BitVec 32) (_ BitVec 64))) (size!2752 (_ BitVec 32))) )
))
(declare-datatypes ((array!5236 0))(
  ( (array!5237 (arr!2475 (Array (_ BitVec 32) ValueCell!1202)) (size!2753 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1312 0))(
  ( (LongMapFixedSize!1313 (defaultEntry!3098 Int) (mask!7527 (_ BitVec 32)) (extraKeys!2839 (_ BitVec 32)) (zeroValue!2941 V!3769) (minValue!2941 V!3769) (_size!705 (_ BitVec 32)) (_keys!4873 array!5234) (_values!3081 array!5236) (_vacant!705 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1312)

(declare-fun mapDefault!5279 () ValueCell!1202)

