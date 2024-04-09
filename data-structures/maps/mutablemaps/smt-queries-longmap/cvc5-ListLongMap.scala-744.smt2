; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17278 () Bool)

(assert start!17278)

(declare-fun b!173102 () Bool)

(declare-fun b_free!4303 () Bool)

(declare-fun b_next!4303 () Bool)

(assert (=> b!173102 (= b_free!4303 (not b_next!4303))))

(declare-fun tp!15570 () Bool)

(declare-fun b_and!10761 () Bool)

(assert (=> b!173102 (= tp!15570 b_and!10761)))

(declare-fun b!173098 () Bool)

(declare-fun e!114349 () Bool)

(declare-datatypes ((V!5081 0))(
  ( (V!5082 (val!2082 Int)) )
))
(declare-datatypes ((ValueCell!1694 0))(
  ( (ValueCellFull!1694 (v!3946 V!5081)) (EmptyCell!1694) )
))
(declare-datatypes ((array!7278 0))(
  ( (array!7279 (arr!3458 (Array (_ BitVec 32) (_ BitVec 64))) (size!3757 (_ BitVec 32))) )
))
(declare-datatypes ((array!7280 0))(
  ( (array!7281 (arr!3459 (Array (_ BitVec 32) ValueCell!1694)) (size!3758 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2296 0))(
  ( (LongMapFixedSize!2297 (defaultEntry!3594 Int) (mask!8462 (_ BitVec 32)) (extraKeys!3333 (_ BitVec 32)) (zeroValue!3435 V!5081) (minValue!3437 V!5081) (_size!1197 (_ BitVec 32)) (_keys!5434 array!7278) (_values!3577 array!7280) (_vacant!1197 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2296)

(declare-datatypes ((List!2223 0))(
  ( (Nil!2220) (Cons!2219 (h!2836 (_ BitVec 64)) (t!7038 List!2223)) )
))
(declare-fun arrayNoDuplicates!0 (array!7278 (_ BitVec 32) List!2223) Bool)

(assert (=> b!173098 (= e!114349 (not (arrayNoDuplicates!0 (_keys!5434 thiss!1248) #b00000000000000000000000000000000 Nil!2220)))))

(declare-fun b!173099 () Bool)

(declare-fun e!114344 () Bool)

(declare-fun e!114346 () Bool)

(declare-fun mapRes!6936 () Bool)

(assert (=> b!173099 (= e!114344 (and e!114346 mapRes!6936))))

(declare-fun condMapEmpty!6936 () Bool)

(declare-fun mapDefault!6936 () ValueCell!1694)

