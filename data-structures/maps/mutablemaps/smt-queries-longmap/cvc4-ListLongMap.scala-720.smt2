; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16840 () Bool)

(assert start!16840)

(declare-fun b!169638 () Bool)

(declare-fun b_free!4163 () Bool)

(declare-fun b_next!4163 () Bool)

(assert (=> b!169638 (= b_free!4163 (not b_next!4163))))

(declare-fun tp!15089 () Bool)

(declare-fun b_and!10595 () Bool)

(assert (=> b!169638 (= tp!15089 b_and!10595)))

(declare-fun b!169634 () Bool)

(declare-fun e!111893 () Bool)

(declare-fun e!111895 () Bool)

(declare-fun mapRes!6666 () Bool)

(assert (=> b!169634 (= e!111893 (and e!111895 mapRes!6666))))

(declare-fun condMapEmpty!6666 () Bool)

(declare-datatypes ((V!4893 0))(
  ( (V!4894 (val!2012 Int)) )
))
(declare-datatypes ((ValueCell!1624 0))(
  ( (ValueCellFull!1624 (v!3873 V!4893)) (EmptyCell!1624) )
))
(declare-datatypes ((array!6966 0))(
  ( (array!6967 (arr!3318 (Array (_ BitVec 32) (_ BitVec 64))) (size!3606 (_ BitVec 32))) )
))
(declare-datatypes ((array!6968 0))(
  ( (array!6969 (arr!3319 (Array (_ BitVec 32) ValueCell!1624)) (size!3607 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2156 0))(
  ( (LongMapFixedSize!2157 (defaultEntry!3520 Int) (mask!8309 (_ BitVec 32)) (extraKeys!3261 (_ BitVec 32)) (zeroValue!3363 V!4893) (minValue!3363 V!4893) (_size!1127 (_ BitVec 32)) (_keys!5345 array!6966) (_values!3503 array!6968) (_vacant!1127 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2156)

(declare-fun mapDefault!6666 () ValueCell!1624)

