; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79914 () Bool)

(assert start!79914)

(declare-fun b!939405 () Bool)

(declare-fun b_free!17783 () Bool)

(declare-fun b_next!17783 () Bool)

(assert (=> b!939405 (= b_free!17783 (not b_next!17783))))

(declare-fun tp!61814 () Bool)

(declare-fun b_and!29213 () Bool)

(assert (=> b!939405 (= tp!61814 b_and!29213)))

(declare-fun b!939404 () Bool)

(declare-fun e!527702 () Bool)

(declare-fun e!527700 () Bool)

(declare-fun mapRes!32216 () Bool)

(assert (=> b!939404 (= e!527702 (and e!527700 mapRes!32216))))

(declare-fun condMapEmpty!32216 () Bool)

(declare-datatypes ((V!32019 0))(
  ( (V!32020 (val!10196 Int)) )
))
(declare-datatypes ((ValueCell!9664 0))(
  ( (ValueCellFull!9664 (v!12727 V!32019)) (EmptyCell!9664) )
))
(declare-datatypes ((array!56546 0))(
  ( (array!56547 (arr!27207 (Array (_ BitVec 32) ValueCell!9664)) (size!27667 (_ BitVec 32))) )
))
(declare-datatypes ((array!56548 0))(
  ( (array!56549 (arr!27208 (Array (_ BitVec 32) (_ BitVec 64))) (size!27668 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4478 0))(
  ( (LongMapFixedSize!4479 (defaultEntry!5530 Int) (mask!27035 (_ BitVec 32)) (extraKeys!5262 (_ BitVec 32)) (zeroValue!5366 V!32019) (minValue!5366 V!32019) (_size!2294 (_ BitVec 32)) (_keys!10374 array!56548) (_values!5553 array!56546) (_vacant!2294 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4478)

(declare-fun mapDefault!32216 () ValueCell!9664)

