; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80122 () Bool)

(assert start!80122)

(declare-fun b!941340 () Bool)

(declare-fun b_free!17915 () Bool)

(declare-fun b_next!17915 () Bool)

(assert (=> b!941340 (= b_free!17915 (not b_next!17915))))

(declare-fun tp!62227 () Bool)

(declare-fun b_and!29345 () Bool)

(assert (=> b!941340 (= tp!62227 b_and!29345)))

(declare-fun b!941336 () Bool)

(declare-fun e!529253 () Bool)

(declare-fun e!529252 () Bool)

(declare-fun mapRes!32432 () Bool)

(assert (=> b!941336 (= e!529253 (and e!529252 mapRes!32432))))

(declare-fun condMapEmpty!32432 () Bool)

(declare-datatypes ((V!32195 0))(
  ( (V!32196 (val!10262 Int)) )
))
(declare-datatypes ((ValueCell!9730 0))(
  ( (ValueCellFull!9730 (v!12793 V!32195)) (EmptyCell!9730) )
))
(declare-datatypes ((array!56820 0))(
  ( (array!56821 (arr!27339 (Array (_ BitVec 32) ValueCell!9730)) (size!27802 (_ BitVec 32))) )
))
(declare-datatypes ((array!56822 0))(
  ( (array!56823 (arr!27340 (Array (_ BitVec 32) (_ BitVec 64))) (size!27803 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4610 0))(
  ( (LongMapFixedSize!4611 (defaultEntry!5596 Int) (mask!27158 (_ BitVec 32)) (extraKeys!5328 (_ BitVec 32)) (zeroValue!5432 V!32195) (minValue!5432 V!32195) (_size!2360 (_ BitVec 32)) (_keys!10447 array!56822) (_values!5619 array!56820) (_vacant!2360 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4610)

(declare-fun mapDefault!32432 () ValueCell!9730)

