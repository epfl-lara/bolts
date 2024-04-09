; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18820 () Bool)

(assert start!18820)

(declare-fun b!185839 () Bool)

(declare-fun b_free!4583 () Bool)

(declare-fun b_next!4583 () Bool)

(assert (=> b!185839 (= b_free!4583 (not b_next!4583))))

(declare-fun tp!16548 () Bool)

(declare-fun b_and!11203 () Bool)

(assert (=> b!185839 (= tp!16548 b_and!11203)))

(declare-fun b!185835 () Bool)

(declare-fun res!87944 () Bool)

(declare-fun e!122295 () Bool)

(assert (=> b!185835 (=> (not res!87944) (not e!122295))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!185835 (= res!87944 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185836 () Bool)

(declare-fun e!122296 () Bool)

(declare-fun tp_is_empty!4355 () Bool)

(assert (=> b!185836 (= e!122296 tp_is_empty!4355)))

(declare-fun res!87941 () Bool)

(assert (=> start!18820 (=> (not res!87941) (not e!122295))))

(declare-datatypes ((V!5453 0))(
  ( (V!5454 (val!2222 Int)) )
))
(declare-datatypes ((ValueCell!1834 0))(
  ( (ValueCellFull!1834 (v!4129 V!5453)) (EmptyCell!1834) )
))
(declare-datatypes ((array!7918 0))(
  ( (array!7919 (arr!3738 (Array (_ BitVec 32) (_ BitVec 64))) (size!4054 (_ BitVec 32))) )
))
(declare-datatypes ((array!7920 0))(
  ( (array!7921 (arr!3739 (Array (_ BitVec 32) ValueCell!1834)) (size!4055 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2576 0))(
  ( (LongMapFixedSize!2577 (defaultEntry!3790 Int) (mask!8905 (_ BitVec 32)) (extraKeys!3527 (_ BitVec 32)) (zeroValue!3631 V!5453) (minValue!3631 V!5453) (_size!1337 (_ BitVec 32)) (_keys!5731 array!7918) (_values!3773 array!7920) (_vacant!1337 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2576)

(declare-fun valid!1054 (LongMapFixedSize!2576) Bool)

(assert (=> start!18820 (= res!87941 (valid!1054 thiss!1248))))

(assert (=> start!18820 e!122295))

(declare-fun e!122297 () Bool)

(assert (=> start!18820 e!122297))

(assert (=> start!18820 true))

(declare-fun b!185837 () Bool)

(declare-fun e!122300 () Bool)

(declare-fun mapRes!7494 () Bool)

(assert (=> b!185837 (= e!122300 (and e!122296 mapRes!7494))))

(declare-fun condMapEmpty!7494 () Bool)

(declare-fun mapDefault!7494 () ValueCell!1834)

