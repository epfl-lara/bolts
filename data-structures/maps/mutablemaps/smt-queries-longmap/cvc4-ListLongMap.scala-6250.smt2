; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79998 () Bool)

(assert start!79998)

(declare-fun b!939949 () Bool)

(declare-fun b_free!17825 () Bool)

(declare-fun b_next!17825 () Bool)

(assert (=> b!939949 (= b_free!17825 (not b_next!17825))))

(declare-fun tp!61951 () Bool)

(declare-fun b_and!29255 () Bool)

(assert (=> b!939949 (= tp!61951 b_and!29255)))

(declare-fun b!939946 () Bool)

(declare-fun res!632173 () Bool)

(declare-fun e!528160 () Bool)

(assert (=> b!939946 (=> (not res!632173) (not e!528160))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939946 (= res!632173 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!939947 () Bool)

(declare-fun e!528159 () Bool)

(declare-fun e!528162 () Bool)

(declare-fun mapRes!32290 () Bool)

(assert (=> b!939947 (= e!528159 (and e!528162 mapRes!32290))))

(declare-fun condMapEmpty!32290 () Bool)

(declare-datatypes ((V!32075 0))(
  ( (V!32076 (val!10217 Int)) )
))
(declare-datatypes ((ValueCell!9685 0))(
  ( (ValueCellFull!9685 (v!12748 V!32075)) (EmptyCell!9685) )
))
(declare-datatypes ((array!56636 0))(
  ( (array!56637 (arr!27249 (Array (_ BitVec 32) ValueCell!9685)) (size!27711 (_ BitVec 32))) )
))
(declare-datatypes ((array!56638 0))(
  ( (array!56639 (arr!27250 (Array (_ BitVec 32) (_ BitVec 64))) (size!27712 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4520 0))(
  ( (LongMapFixedSize!4521 (defaultEntry!5551 Int) (mask!27075 (_ BitVec 32)) (extraKeys!5283 (_ BitVec 32)) (zeroValue!5387 V!32075) (minValue!5387 V!32075) (_size!2315 (_ BitVec 32)) (_keys!10397 array!56638) (_values!5574 array!56636) (_vacant!2315 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4520)

(declare-fun mapDefault!32290 () ValueCell!9685)

