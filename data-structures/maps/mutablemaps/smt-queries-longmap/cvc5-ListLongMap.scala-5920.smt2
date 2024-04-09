; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76904 () Bool)

(assert start!76904)

(declare-fun b!898690 () Bool)

(declare-fun b_free!16021 () Bool)

(declare-fun b_next!16021 () Bool)

(assert (=> b!898690 (= b_free!16021 (not b_next!16021))))

(declare-fun tp!56136 () Bool)

(declare-fun b_and!26339 () Bool)

(assert (=> b!898690 (= tp!56136 b_and!26339)))

(declare-fun mapIsEmpty!29182 () Bool)

(declare-fun mapRes!29182 () Bool)

(assert (=> mapIsEmpty!29182 mapRes!29182))

(declare-fun b!898685 () Bool)

(declare-fun e!502795 () Bool)

(declare-fun e!502792 () Bool)

(assert (=> b!898685 (= e!502795 (and e!502792 mapRes!29182))))

(declare-fun condMapEmpty!29182 () Bool)

(declare-datatypes ((array!52724 0))(
  ( (array!52725 (arr!25334 (Array (_ BitVec 32) (_ BitVec 64))) (size!25791 (_ BitVec 32))) )
))
(declare-datatypes ((V!29431 0))(
  ( (V!29432 (val!9225 Int)) )
))
(declare-datatypes ((ValueCell!8693 0))(
  ( (ValueCellFull!8693 (v!11714 V!29431)) (EmptyCell!8693) )
))
(declare-datatypes ((array!52726 0))(
  ( (array!52727 (arr!25335 (Array (_ BitVec 32) ValueCell!8693)) (size!25792 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4402 0))(
  ( (LongMapFixedSize!4403 (defaultEntry!5419 Int) (mask!26153 (_ BitVec 32)) (extraKeys!5137 (_ BitVec 32)) (zeroValue!5241 V!29431) (minValue!5241 V!29431) (_size!2256 (_ BitVec 32)) (_keys!10196 array!52724) (_values!5428 array!52726) (_vacant!2256 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4402)

(declare-fun mapDefault!29182 () ValueCell!8693)

