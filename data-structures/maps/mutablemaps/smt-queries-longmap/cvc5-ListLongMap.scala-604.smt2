; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15778 () Bool)

(assert start!15778)

(declare-fun b!157289 () Bool)

(declare-fun b_free!3433 () Bool)

(declare-fun b_next!3433 () Bool)

(assert (=> b!157289 (= b_free!3433 (not b_next!3433))))

(declare-fun tp!12823 () Bool)

(declare-fun b_and!9865 () Bool)

(assert (=> b!157289 (= tp!12823 b_and!9865)))

(declare-fun b!157285 () Bool)

(declare-fun e!102987 () Bool)

(declare-fun e!102990 () Bool)

(declare-fun mapRes!5495 () Bool)

(assert (=> b!157285 (= e!102987 (and e!102990 mapRes!5495))))

(declare-fun condMapEmpty!5495 () Bool)

(declare-datatypes ((V!3961 0))(
  ( (V!3962 (val!1662 Int)) )
))
(declare-datatypes ((ValueCell!1274 0))(
  ( (ValueCellFull!1274 (v!3523 V!3961)) (EmptyCell!1274) )
))
(declare-datatypes ((array!5522 0))(
  ( (array!5523 (arr!2618 (Array (_ BitVec 32) (_ BitVec 64))) (size!2896 (_ BitVec 32))) )
))
(declare-datatypes ((array!5524 0))(
  ( (array!5525 (arr!2619 (Array (_ BitVec 32) ValueCell!1274)) (size!2897 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1456 0))(
  ( (LongMapFixedSize!1457 (defaultEntry!3170 Int) (mask!7647 (_ BitVec 32)) (extraKeys!2911 (_ BitVec 32)) (zeroValue!3013 V!3961) (minValue!3013 V!3961) (_size!777 (_ BitVec 32)) (_keys!4945 array!5522) (_values!3153 array!5524) (_vacant!777 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1456)

(declare-fun mapDefault!5495 () ValueCell!1274)

