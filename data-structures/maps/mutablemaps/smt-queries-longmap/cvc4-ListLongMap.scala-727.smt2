; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16970 () Bool)

(assert start!16970)

(declare-fun b!170444 () Bool)

(declare-fun b_free!4205 () Bool)

(declare-fun b_next!4205 () Bool)

(assert (=> b!170444 (= b_free!4205 (not b_next!4205))))

(declare-fun tp!15238 () Bool)

(declare-fun b_and!10637 () Bool)

(assert (=> b!170444 (= tp!15238 b_and!10637)))

(declare-fun mapIsEmpty!6752 () Bool)

(declare-fun mapRes!6752 () Bool)

(assert (=> mapIsEmpty!6752 mapRes!6752))

(declare-fun b!170441 () Bool)

(declare-fun e!112483 () Bool)

(declare-fun e!112486 () Bool)

(assert (=> b!170441 (= e!112483 (and e!112486 mapRes!6752))))

(declare-fun condMapEmpty!6752 () Bool)

(declare-datatypes ((V!4949 0))(
  ( (V!4950 (val!2033 Int)) )
))
(declare-datatypes ((ValueCell!1645 0))(
  ( (ValueCellFull!1645 (v!3894 V!4949)) (EmptyCell!1645) )
))
(declare-datatypes ((array!7062 0))(
  ( (array!7063 (arr!3360 (Array (_ BitVec 32) (_ BitVec 64))) (size!3653 (_ BitVec 32))) )
))
(declare-datatypes ((array!7064 0))(
  ( (array!7065 (arr!3361 (Array (_ BitVec 32) ValueCell!1645)) (size!3654 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2198 0))(
  ( (LongMapFixedSize!2199 (defaultEntry!3541 Int) (mask!8355 (_ BitVec 32)) (extraKeys!3282 (_ BitVec 32)) (zeroValue!3384 V!4949) (minValue!3384 V!4949) (_size!1148 (_ BitVec 32)) (_keys!5371 array!7062) (_values!3524 array!7064) (_vacant!1148 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2198)

(declare-fun mapDefault!6752 () ValueCell!1645)

