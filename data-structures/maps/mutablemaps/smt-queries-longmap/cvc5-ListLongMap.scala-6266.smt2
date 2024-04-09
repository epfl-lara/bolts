; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80148 () Bool)

(assert start!80148)

(declare-fun b!941500 () Bool)

(declare-fun b_free!17917 () Bool)

(declare-fun b_next!17917 () Bool)

(assert (=> b!941500 (= b_free!17917 (not b_next!17917))))

(declare-fun tp!62238 () Bool)

(declare-fun b_and!29347 () Bool)

(assert (=> b!941500 (= tp!62238 b_and!29347)))

(declare-fun b!941493 () Bool)

(declare-fun e!529340 () Bool)

(declare-fun e!529342 () Bool)

(declare-fun mapRes!32439 () Bool)

(assert (=> b!941493 (= e!529340 (and e!529342 mapRes!32439))))

(declare-fun condMapEmpty!32439 () Bool)

(declare-datatypes ((V!32199 0))(
  ( (V!32200 (val!10263 Int)) )
))
(declare-datatypes ((ValueCell!9731 0))(
  ( (ValueCellFull!9731 (v!12794 V!32199)) (EmptyCell!9731) )
))
(declare-datatypes ((array!56826 0))(
  ( (array!56827 (arr!27341 (Array (_ BitVec 32) ValueCell!9731)) (size!27805 (_ BitVec 32))) )
))
(declare-datatypes ((array!56828 0))(
  ( (array!56829 (arr!27342 (Array (_ BitVec 32) (_ BitVec 64))) (size!27806 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4612 0))(
  ( (LongMapFixedSize!4613 (defaultEntry!5597 Int) (mask!27167 (_ BitVec 32)) (extraKeys!5329 (_ BitVec 32)) (zeroValue!5433 V!32199) (minValue!5433 V!32199) (_size!2361 (_ BitVec 32)) (_keys!10452 array!56828) (_values!5620 array!56826) (_vacant!2361 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4612)

(declare-fun mapDefault!32439 () ValueCell!9731)

