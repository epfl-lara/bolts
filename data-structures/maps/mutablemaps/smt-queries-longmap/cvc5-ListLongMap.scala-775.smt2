; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18340 () Bool)

(assert start!18340)

(declare-fun b!181912 () Bool)

(declare-fun b_free!4489 () Bool)

(declare-fun b_next!4489 () Bool)

(assert (=> b!181912 (= b_free!4489 (not b_next!4489))))

(declare-fun tp!16222 () Bool)

(declare-fun b_and!11063 () Bool)

(assert (=> b!181912 (= tp!16222 b_and!11063)))

(declare-fun b!181910 () Bool)

(declare-fun e!119812 () Bool)

(declare-fun e!119808 () Bool)

(declare-fun mapRes!7309 () Bool)

(assert (=> b!181910 (= e!119812 (and e!119808 mapRes!7309))))

(declare-fun condMapEmpty!7309 () Bool)

(declare-datatypes ((V!5329 0))(
  ( (V!5330 (val!2175 Int)) )
))
(declare-datatypes ((ValueCell!1787 0))(
  ( (ValueCellFull!1787 (v!4069 V!5329)) (EmptyCell!1787) )
))
(declare-datatypes ((array!7704 0))(
  ( (array!7705 (arr!3644 (Array (_ BitVec 32) (_ BitVec 64))) (size!3955 (_ BitVec 32))) )
))
(declare-datatypes ((array!7706 0))(
  ( (array!7707 (arr!3645 (Array (_ BitVec 32) ValueCell!1787)) (size!3956 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2482 0))(
  ( (LongMapFixedSize!2483 (defaultEntry!3725 Int) (mask!8758 (_ BitVec 32)) (extraKeys!3462 (_ BitVec 32)) (zeroValue!3566 V!5329) (minValue!3566 V!5329) (_size!1290 (_ BitVec 32)) (_keys!5632 array!7704) (_values!3708 array!7706) (_vacant!1290 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2482)

(declare-fun mapDefault!7309 () ValueCell!1787)

