; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76386 () Bool)

(assert start!76386)

(declare-fun b!895776 () Bool)

(declare-fun b_free!15929 () Bool)

(declare-fun b_next!15929 () Bool)

(assert (=> b!895776 (= b_free!15929 (not b_next!15929))))

(declare-fun tp!55806 () Bool)

(declare-fun b_and!26239 () Bool)

(assert (=> b!895776 (= tp!55806 b_and!26239)))

(declare-fun b!895771 () Bool)

(declare-fun e!500613 () Bool)

(declare-fun e!500609 () Bool)

(declare-fun mapRes!28990 () Bool)

(assert (=> b!895771 (= e!500613 (and e!500609 mapRes!28990))))

(declare-fun condMapEmpty!28990 () Bool)

(declare-datatypes ((array!52508 0))(
  ( (array!52509 (arr!25242 (Array (_ BitVec 32) (_ BitVec 64))) (size!25693 (_ BitVec 32))) )
))
(declare-datatypes ((V!29307 0))(
  ( (V!29308 (val!9179 Int)) )
))
(declare-datatypes ((ValueCell!8647 0))(
  ( (ValueCellFull!8647 (v!11666 V!29307)) (EmptyCell!8647) )
))
(declare-datatypes ((array!52510 0))(
  ( (array!52511 (arr!25243 (Array (_ BitVec 32) ValueCell!8647)) (size!25694 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4310 0))(
  ( (LongMapFixedSize!4311 (defaultEntry!5367 Int) (mask!25974 (_ BitVec 32)) (extraKeys!5063 (_ BitVec 32)) (zeroValue!5167 V!29307) (minValue!5167 V!29307) (_size!2210 (_ BitVec 32)) (_keys!10084 array!52508) (_values!5354 array!52510) (_vacant!2210 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4310)

(declare-fun mapDefault!28990 () ValueCell!8647)

