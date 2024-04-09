; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16720 () Bool)

(assert start!16720)

(declare-fun b!167525 () Bool)

(declare-fun b_free!4013 () Bool)

(declare-fun b_next!4013 () Bool)

(assert (=> b!167525 (= b_free!4013 (not b_next!4013))))

(declare-fun tp!14639 () Bool)

(declare-fun b_and!10445 () Bool)

(assert (=> b!167525 (= tp!14639 b_and!10445)))

(declare-fun b!167521 () Bool)

(declare-fun e!110045 () Bool)

(declare-fun e!110044 () Bool)

(declare-fun mapRes!6441 () Bool)

(assert (=> b!167521 (= e!110045 (and e!110044 mapRes!6441))))

(declare-fun condMapEmpty!6441 () Bool)

(declare-datatypes ((V!4733 0))(
  ( (V!4734 (val!1952 Int)) )
))
(declare-datatypes ((ValueCell!1564 0))(
  ( (ValueCellFull!1564 (v!3813 V!4733)) (EmptyCell!1564) )
))
(declare-datatypes ((array!6726 0))(
  ( (array!6727 (arr!3198 (Array (_ BitVec 32) (_ BitVec 64))) (size!3486 (_ BitVec 32))) )
))
(declare-datatypes ((array!6728 0))(
  ( (array!6729 (arr!3199 (Array (_ BitVec 32) ValueCell!1564)) (size!3487 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2036 0))(
  ( (LongMapFixedSize!2037 (defaultEntry!3460 Int) (mask!8209 (_ BitVec 32)) (extraKeys!3201 (_ BitVec 32)) (zeroValue!3303 V!4733) (minValue!3303 V!4733) (_size!1067 (_ BitVec 32)) (_keys!5285 array!6726) (_values!3443 array!6728) (_vacant!1067 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2036)

(declare-fun mapDefault!6441 () ValueCell!1564)

