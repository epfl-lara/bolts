; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107408 () Bool)

(assert start!107408)

(declare-fun b!1272280 () Bool)

(declare-fun b_free!27665 () Bool)

(declare-fun b_next!27665 () Bool)

(assert (=> b!1272280 (= b_free!27665 (not b_next!27665))))

(declare-fun tp!97507 () Bool)

(declare-fun b_and!45731 () Bool)

(assert (=> b!1272280 (= tp!97507 b_and!45731)))

(declare-fun res!846390 () Bool)

(declare-fun e!725703 () Bool)

(assert (=> start!107408 (=> (not res!846390) (not e!725703))))

(declare-datatypes ((V!49239 0))(
  ( (V!49240 (val!16592 Int)) )
))
(declare-datatypes ((ValueCell!15664 0))(
  ( (ValueCellFull!15664 (v!19227 V!49239)) (EmptyCell!15664) )
))
(declare-datatypes ((array!83265 0))(
  ( (array!83266 (arr!40163 (Array (_ BitVec 32) ValueCell!15664)) (size!40700 (_ BitVec 32))) )
))
(declare-datatypes ((array!83267 0))(
  ( (array!83268 (arr!40164 (Array (_ BitVec 32) (_ BitVec 64))) (size!40701 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6092 0))(
  ( (LongMapFixedSize!6093 (defaultEntry!6692 Int) (mask!34431 (_ BitVec 32)) (extraKeys!6371 (_ BitVec 32)) (zeroValue!6477 V!49239) (minValue!6477 V!49239) (_size!3101 (_ BitVec 32)) (_keys!12095 array!83267) (_values!6715 array!83265) (_vacant!3101 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6092)

(declare-fun valid!2241 (LongMapFixedSize!6092) Bool)

(assert (=> start!107408 (= res!846390 (valid!2241 thiss!1559))))

(assert (=> start!107408 e!725703))

(declare-fun e!725706 () Bool)

(assert (=> start!107408 e!725706))

(declare-fun b!1272279 () Bool)

(declare-fun e!725704 () Bool)

(declare-fun e!725705 () Bool)

(declare-fun mapRes!51139 () Bool)

(assert (=> b!1272279 (= e!725704 (and e!725705 mapRes!51139))))

(declare-fun condMapEmpty!51139 () Bool)

(declare-fun mapDefault!51139 () ValueCell!15664)

