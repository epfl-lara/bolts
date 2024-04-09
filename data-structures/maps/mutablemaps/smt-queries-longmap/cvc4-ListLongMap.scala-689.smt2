; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16654 () Bool)

(assert start!16654)

(declare-fun b!166243 () Bool)

(declare-fun b_free!3947 () Bool)

(declare-fun b_next!3947 () Bool)

(assert (=> b!166243 (= b_free!3947 (not b_next!3947))))

(declare-fun tp!14442 () Bool)

(declare-fun b_and!10379 () Bool)

(assert (=> b!166243 (= tp!14442 b_and!10379)))

(declare-fun b!166234 () Bool)

(declare-fun res!79011 () Bool)

(declare-fun e!109053 () Bool)

(assert (=> b!166234 (=> (not res!79011) (not e!109053))))

(declare-datatypes ((V!4645 0))(
  ( (V!4646 (val!1919 Int)) )
))
(declare-datatypes ((ValueCell!1531 0))(
  ( (ValueCellFull!1531 (v!3780 V!4645)) (EmptyCell!1531) )
))
(declare-datatypes ((array!6594 0))(
  ( (array!6595 (arr!3132 (Array (_ BitVec 32) (_ BitVec 64))) (size!3420 (_ BitVec 32))) )
))
(declare-datatypes ((array!6596 0))(
  ( (array!6597 (arr!3133 (Array (_ BitVec 32) ValueCell!1531)) (size!3421 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1970 0))(
  ( (LongMapFixedSize!1971 (defaultEntry!3427 Int) (mask!8154 (_ BitVec 32)) (extraKeys!3168 (_ BitVec 32)) (zeroValue!3270 V!4645) (minValue!3270 V!4645) (_size!1034 (_ BitVec 32)) (_keys!5252 array!6594) (_values!3410 array!6596) (_vacant!1034 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1970)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6594 (_ BitVec 32)) Bool)

(assert (=> b!166234 (= res!79011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5252 thiss!1248) (mask!8154 thiss!1248)))))

(declare-fun b!166235 () Bool)

(declare-fun e!109056 () Bool)

(declare-fun e!109054 () Bool)

(declare-fun mapRes!6342 () Bool)

(assert (=> b!166235 (= e!109056 (and e!109054 mapRes!6342))))

(declare-fun condMapEmpty!6342 () Bool)

(declare-fun mapDefault!6342 () ValueCell!1531)

