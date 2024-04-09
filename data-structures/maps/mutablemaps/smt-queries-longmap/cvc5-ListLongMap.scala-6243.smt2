; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79910 () Bool)

(assert start!79910)

(declare-fun b!939383 () Bool)

(declare-fun b_free!17779 () Bool)

(declare-fun b_next!17779 () Bool)

(assert (=> b!939383 (= b_free!17779 (not b_next!17779))))

(declare-fun tp!61801 () Bool)

(declare-fun b_and!29209 () Bool)

(assert (=> b!939383 (= tp!61801 b_and!29209)))

(declare-fun b!939380 () Bool)

(declare-fun e!527669 () Bool)

(declare-fun tp_is_empty!20287 () Bool)

(assert (=> b!939380 (= e!527669 tp_is_empty!20287)))

(declare-fun b!939381 () Bool)

(declare-fun e!527670 () Bool)

(declare-fun e!527668 () Bool)

(declare-fun mapRes!32210 () Bool)

(assert (=> b!939381 (= e!527670 (and e!527668 mapRes!32210))))

(declare-fun condMapEmpty!32210 () Bool)

(declare-datatypes ((V!32015 0))(
  ( (V!32016 (val!10194 Int)) )
))
(declare-datatypes ((ValueCell!9662 0))(
  ( (ValueCellFull!9662 (v!12725 V!32015)) (EmptyCell!9662) )
))
(declare-datatypes ((array!56538 0))(
  ( (array!56539 (arr!27203 (Array (_ BitVec 32) ValueCell!9662)) (size!27663 (_ BitVec 32))) )
))
(declare-datatypes ((array!56540 0))(
  ( (array!56541 (arr!27204 (Array (_ BitVec 32) (_ BitVec 64))) (size!27664 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4474 0))(
  ( (LongMapFixedSize!4475 (defaultEntry!5528 Int) (mask!27033 (_ BitVec 32)) (extraKeys!5260 (_ BitVec 32)) (zeroValue!5364 V!32015) (minValue!5364 V!32015) (_size!2292 (_ BitVec 32)) (_keys!10372 array!56540) (_values!5551 array!56538) (_vacant!2292 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4474)

(declare-fun mapDefault!32210 () ValueCell!9662)

