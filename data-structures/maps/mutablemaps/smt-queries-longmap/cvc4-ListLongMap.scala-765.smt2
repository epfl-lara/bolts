; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18054 () Bool)

(assert start!18054)

(declare-fun b!179634 () Bool)

(declare-fun b_free!4433 () Bool)

(declare-fun b_next!4433 () Bool)

(assert (=> b!179634 (= b_free!4433 (not b_next!4433))))

(declare-fun tp!16027 () Bool)

(declare-fun b_and!10983 () Bool)

(assert (=> b!179634 (= tp!16027 b_and!10983)))

(declare-fun b!179629 () Bool)

(declare-fun res!85108 () Bool)

(declare-fun e!118326 () Bool)

(assert (=> b!179629 (=> (not res!85108) (not e!118326))))

(declare-datatypes ((V!5253 0))(
  ( (V!5254 (val!2147 Int)) )
))
(declare-datatypes ((ValueCell!1759 0))(
  ( (ValueCellFull!1759 (v!4031 V!5253)) (EmptyCell!1759) )
))
(declare-datatypes ((array!7576 0))(
  ( (array!7577 (arr!3588 (Array (_ BitVec 32) (_ BitVec 64))) (size!3896 (_ BitVec 32))) )
))
(declare-datatypes ((array!7578 0))(
  ( (array!7579 (arr!3589 (Array (_ BitVec 32) ValueCell!1759)) (size!3897 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2426 0))(
  ( (LongMapFixedSize!2427 (defaultEntry!3688 Int) (mask!8674 (_ BitVec 32)) (extraKeys!3425 (_ BitVec 32)) (zeroValue!3529 V!5253) (minValue!3529 V!5253) (_size!1262 (_ BitVec 32)) (_keys!5577 array!7576) (_values!3671 array!7578) (_vacant!1262 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2426)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179629 (= res!85108 (validMask!0 (mask!8674 thiss!1248)))))

(declare-fun b!179630 () Bool)

(declare-fun e!118325 () Bool)

(declare-fun e!118324 () Bool)

(declare-fun mapRes!7198 () Bool)

(assert (=> b!179630 (= e!118325 (and e!118324 mapRes!7198))))

(declare-fun condMapEmpty!7198 () Bool)

(declare-fun mapDefault!7198 () ValueCell!1759)

