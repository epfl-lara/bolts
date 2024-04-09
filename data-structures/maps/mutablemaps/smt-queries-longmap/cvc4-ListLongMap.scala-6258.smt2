; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80046 () Bool)

(assert start!80046)

(declare-fun b!940628 () Bool)

(declare-fun b_free!17873 () Bool)

(declare-fun b_next!17873 () Bool)

(assert (=> b!940628 (= b_free!17873 (not b_next!17873))))

(declare-fun tp!62095 () Bool)

(declare-fun b_and!29303 () Bool)

(assert (=> b!940628 (= tp!62095 b_and!29303)))

(declare-fun b!940626 () Bool)

(declare-fun e!528716 () Bool)

(declare-fun e!528718 () Bool)

(declare-fun mapRes!32362 () Bool)

(assert (=> b!940626 (= e!528716 (and e!528718 mapRes!32362))))

(declare-fun condMapEmpty!32362 () Bool)

(declare-datatypes ((V!32139 0))(
  ( (V!32140 (val!10241 Int)) )
))
(declare-datatypes ((ValueCell!9709 0))(
  ( (ValueCellFull!9709 (v!12772 V!32139)) (EmptyCell!9709) )
))
(declare-datatypes ((array!56732 0))(
  ( (array!56733 (arr!27297 (Array (_ BitVec 32) ValueCell!9709)) (size!27759 (_ BitVec 32))) )
))
(declare-datatypes ((array!56734 0))(
  ( (array!56735 (arr!27298 (Array (_ BitVec 32) (_ BitVec 64))) (size!27760 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4568 0))(
  ( (LongMapFixedSize!4569 (defaultEntry!5575 Int) (mask!27115 (_ BitVec 32)) (extraKeys!5307 (_ BitVec 32)) (zeroValue!5411 V!32139) (minValue!5411 V!32139) (_size!2339 (_ BitVec 32)) (_keys!10421 array!56734) (_values!5598 array!56732) (_vacant!2339 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4568)

(declare-fun mapDefault!32362 () ValueCell!9709)

