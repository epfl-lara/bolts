; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16072 () Bool)

(assert start!16072)

(declare-fun b!159355 () Bool)

(declare-fun b_free!3521 () Bool)

(declare-fun b_next!3521 () Bool)

(assert (=> b!159355 (= b_free!3521 (not b_next!3521))))

(declare-fun tp!13133 () Bool)

(declare-fun b_and!9953 () Bool)

(assert (=> b!159355 (= tp!13133 b_and!9953)))

(declare-fun b!159352 () Bool)

(declare-fun e!104318 () Bool)

(declare-fun e!104317 () Bool)

(declare-fun mapRes!5672 () Bool)

(assert (=> b!159352 (= e!104318 (and e!104317 mapRes!5672))))

(declare-fun condMapEmpty!5672 () Bool)

(declare-datatypes ((V!4077 0))(
  ( (V!4078 (val!1706 Int)) )
))
(declare-datatypes ((ValueCell!1318 0))(
  ( (ValueCellFull!1318 (v!3567 V!4077)) (EmptyCell!1318) )
))
(declare-datatypes ((array!5724 0))(
  ( (array!5725 (arr!2706 (Array (_ BitVec 32) (_ BitVec 64))) (size!2990 (_ BitVec 32))) )
))
(declare-datatypes ((array!5726 0))(
  ( (array!5727 (arr!2707 (Array (_ BitVec 32) ValueCell!1318)) (size!2991 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1544 0))(
  ( (LongMapFixedSize!1545 (defaultEntry!3214 Int) (mask!7762 (_ BitVec 32)) (extraKeys!2955 (_ BitVec 32)) (zeroValue!3057 V!4077) (minValue!3057 V!4077) (_size!821 (_ BitVec 32)) (_keys!5015 array!5724) (_values!3197 array!5726) (_vacant!821 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1544)

(declare-fun mapDefault!5672 () ValueCell!1318)

