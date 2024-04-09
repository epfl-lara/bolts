; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80336 () Bool)

(assert start!80336)

(declare-fun b!943343 () Bool)

(declare-fun b_free!18007 () Bool)

(declare-fun b_next!18007 () Bool)

(assert (=> b!943343 (= b_free!18007 (not b_next!18007))))

(declare-fun tp!62528 () Bool)

(declare-fun b_and!29437 () Bool)

(assert (=> b!943343 (= tp!62528 b_and!29437)))

(declare-fun b!943342 () Bool)

(declare-fun e!530423 () Bool)

(declare-fun e!530425 () Bool)

(declare-fun mapRes!32594 () Bool)

(assert (=> b!943342 (= e!530423 (and e!530425 mapRes!32594))))

(declare-fun condMapEmpty!32594 () Bool)

(declare-datatypes ((V!32319 0))(
  ( (V!32320 (val!10308 Int)) )
))
(declare-datatypes ((ValueCell!9776 0))(
  ( (ValueCellFull!9776 (v!12839 V!32319)) (EmptyCell!9776) )
))
(declare-datatypes ((array!57018 0))(
  ( (array!57019 (arr!27431 (Array (_ BitVec 32) ValueCell!9776)) (size!27897 (_ BitVec 32))) )
))
(declare-datatypes ((array!57020 0))(
  ( (array!57021 (arr!27432 (Array (_ BitVec 32) (_ BitVec 64))) (size!27898 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4702 0))(
  ( (LongMapFixedSize!4703 (defaultEntry!5642 Int) (mask!27265 (_ BitVec 32)) (extraKeys!5374 (_ BitVec 32)) (zeroValue!5478 V!32319) (minValue!5478 V!32319) (_size!2406 (_ BitVec 32)) (_keys!10512 array!57020) (_values!5665 array!57018) (_vacant!2406 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4702)

(declare-fun mapDefault!32594 () ValueCell!9776)

