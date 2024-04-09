; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21962 () Bool)

(assert start!21962)

(declare-fun b!224258 () Bool)

(declare-fun b_free!6017 () Bool)

(declare-fun b_next!6017 () Bool)

(assert (=> b!224258 (= b_free!6017 (not b_next!6017))))

(declare-fun tp!21193 () Bool)

(declare-fun b_and!12933 () Bool)

(assert (=> b!224258 (= tp!21193 b_and!12933)))

(declare-fun res!110332 () Bool)

(declare-fun e!145600 () Bool)

(assert (=> start!21962 (=> (not res!110332) (not e!145600))))

(declare-datatypes ((V!7485 0))(
  ( (V!7486 (val!2984 Int)) )
))
(declare-datatypes ((ValueCell!2596 0))(
  ( (ValueCellFull!2596 (v!5000 V!7485)) (EmptyCell!2596) )
))
(declare-datatypes ((array!11000 0))(
  ( (array!11001 (arr!5219 (Array (_ BitVec 32) ValueCell!2596)) (size!5552 (_ BitVec 32))) )
))
(declare-datatypes ((array!11002 0))(
  ( (array!11003 (arr!5220 (Array (_ BitVec 32) (_ BitVec 64))) (size!5553 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3092 0))(
  ( (LongMapFixedSize!3093 (defaultEntry!4205 Int) (mask!10037 (_ BitVec 32)) (extraKeys!3942 (_ BitVec 32)) (zeroValue!4046 V!7485) (minValue!4046 V!7485) (_size!1595 (_ BitVec 32)) (_keys!6259 array!11002) (_values!4188 array!11000) (_vacant!1595 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3092)

(declare-fun valid!1238 (LongMapFixedSize!3092) Bool)

(assert (=> start!21962 (= res!110332 (valid!1238 thiss!1504))))

(assert (=> start!21962 e!145600))

(declare-fun e!145598 () Bool)

(assert (=> start!21962 e!145598))

(assert (=> start!21962 true))

(declare-fun b!224233 () Bool)

(declare-fun e!145604 () Bool)

(declare-fun e!145611 () Bool)

(declare-fun mapRes!9988 () Bool)

(assert (=> b!224233 (= e!145604 (and e!145611 mapRes!9988))))

(declare-fun condMapEmpty!9988 () Bool)

(declare-fun mapDefault!9988 () ValueCell!2596)

