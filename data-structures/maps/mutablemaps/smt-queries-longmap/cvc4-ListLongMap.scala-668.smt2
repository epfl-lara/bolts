; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16514 () Bool)

(assert start!16514)

(declare-fun b!164082 () Bool)

(declare-fun b_free!3821 () Bool)

(declare-fun b_next!3821 () Bool)

(assert (=> b!164082 (= b_free!3821 (not b_next!3821))))

(declare-fun tp!14061 () Bool)

(declare-fun b_and!10253 () Bool)

(assert (=> b!164082 (= tp!14061 b_and!10253)))

(declare-fun b!164077 () Bool)

(declare-fun e!107671 () Bool)

(declare-fun e!107667 () Bool)

(declare-fun mapRes!6150 () Bool)

(assert (=> b!164077 (= e!107671 (and e!107667 mapRes!6150))))

(declare-fun condMapEmpty!6150 () Bool)

(declare-datatypes ((V!4477 0))(
  ( (V!4478 (val!1856 Int)) )
))
(declare-datatypes ((ValueCell!1468 0))(
  ( (ValueCellFull!1468 (v!3717 V!4477)) (EmptyCell!1468) )
))
(declare-datatypes ((array!6340 0))(
  ( (array!6341 (arr!3006 (Array (_ BitVec 32) (_ BitVec 64))) (size!3294 (_ BitVec 32))) )
))
(declare-datatypes ((array!6342 0))(
  ( (array!6343 (arr!3007 (Array (_ BitVec 32) ValueCell!1468)) (size!3295 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1844 0))(
  ( (LongMapFixedSize!1845 (defaultEntry!3364 Int) (mask!8046 (_ BitVec 32)) (extraKeys!3105 (_ BitVec 32)) (zeroValue!3207 V!4477) (minValue!3207 V!4477) (_size!971 (_ BitVec 32)) (_keys!5187 array!6340) (_values!3347 array!6342) (_vacant!971 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1844)

(declare-fun mapDefault!6150 () ValueCell!1468)

