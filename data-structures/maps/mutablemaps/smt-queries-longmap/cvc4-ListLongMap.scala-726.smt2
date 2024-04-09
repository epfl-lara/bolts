; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16964 () Bool)

(assert start!16964)

(declare-fun b!170379 () Bool)

(declare-fun b_free!4199 () Bool)

(declare-fun b_next!4199 () Bool)

(assert (=> b!170379 (= b_free!4199 (not b_next!4199))))

(declare-fun tp!15221 () Bool)

(declare-fun b_and!10631 () Bool)

(assert (=> b!170379 (= tp!15221 b_and!10631)))

(declare-fun res!81010 () Bool)

(declare-fun e!112433 () Bool)

(assert (=> start!16964 (=> (not res!81010) (not e!112433))))

(declare-datatypes ((V!4941 0))(
  ( (V!4942 (val!2030 Int)) )
))
(declare-datatypes ((ValueCell!1642 0))(
  ( (ValueCellFull!1642 (v!3891 V!4941)) (EmptyCell!1642) )
))
(declare-datatypes ((array!7050 0))(
  ( (array!7051 (arr!3354 (Array (_ BitVec 32) (_ BitVec 64))) (size!3647 (_ BitVec 32))) )
))
(declare-datatypes ((array!7052 0))(
  ( (array!7053 (arr!3355 (Array (_ BitVec 32) ValueCell!1642)) (size!3648 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2192 0))(
  ( (LongMapFixedSize!2193 (defaultEntry!3538 Int) (mask!8350 (_ BitVec 32)) (extraKeys!3279 (_ BitVec 32)) (zeroValue!3381 V!4941) (minValue!3381 V!4941) (_size!1145 (_ BitVec 32)) (_keys!5368 array!7050) (_values!3521 array!7052) (_vacant!1145 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2192)

(declare-fun valid!930 (LongMapFixedSize!2192) Bool)

(assert (=> start!16964 (= res!81010 (valid!930 thiss!1248))))

(assert (=> start!16964 e!112433))

(declare-fun e!112429 () Bool)

(assert (=> start!16964 e!112429))

(assert (=> start!16964 true))

(declare-fun b!170378 () Bool)

(declare-fun e!112432 () Bool)

(declare-fun tp_is_empty!3971 () Bool)

(assert (=> b!170378 (= e!112432 tp_is_empty!3971)))

(declare-fun e!112431 () Bool)

(declare-fun array_inv!2137 (array!7050) Bool)

(declare-fun array_inv!2138 (array!7052) Bool)

(assert (=> b!170379 (= e!112429 (and tp!15221 tp_is_empty!3971 (array_inv!2137 (_keys!5368 thiss!1248)) (array_inv!2138 (_values!3521 thiss!1248)) e!112431))))

(declare-fun b!170380 () Bool)

(declare-fun e!112428 () Bool)

(declare-fun mapRes!6743 () Bool)

(assert (=> b!170380 (= e!112431 (and e!112428 mapRes!6743))))

(declare-fun condMapEmpty!6743 () Bool)

(declare-fun mapDefault!6743 () ValueCell!1642)

