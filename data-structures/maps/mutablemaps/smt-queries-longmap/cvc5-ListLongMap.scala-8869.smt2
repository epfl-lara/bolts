; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107678 () Bool)

(assert start!107678)

(declare-fun b!1273832 () Bool)

(declare-fun b_free!27757 () Bool)

(declare-fun b_next!27757 () Bool)

(assert (=> b!1273832 (= b_free!27757 (not b_next!27757))))

(declare-fun tp!97834 () Bool)

(declare-fun b_and!45823 () Bool)

(assert (=> b!1273832 (= tp!97834 b_and!45823)))

(declare-fun b!1273828 () Bool)

(declare-fun e!726914 () Bool)

(declare-fun e!726912 () Bool)

(declare-fun mapRes!51328 () Bool)

(assert (=> b!1273828 (= e!726914 (and e!726912 mapRes!51328))))

(declare-fun condMapEmpty!51328 () Bool)

(declare-datatypes ((V!49363 0))(
  ( (V!49364 (val!16638 Int)) )
))
(declare-datatypes ((ValueCell!15710 0))(
  ( (ValueCellFull!15710 (v!19273 V!49363)) (EmptyCell!15710) )
))
(declare-datatypes ((array!83479 0))(
  ( (array!83480 (arr!40255 (Array (_ BitVec 32) ValueCell!15710)) (size!40803 (_ BitVec 32))) )
))
(declare-datatypes ((array!83481 0))(
  ( (array!83482 (arr!40256 (Array (_ BitVec 32) (_ BitVec 64))) (size!40804 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6184 0))(
  ( (LongMapFixedSize!6185 (defaultEntry!6738 Int) (mask!34531 (_ BitVec 32)) (extraKeys!6417 (_ BitVec 32)) (zeroValue!6523 V!49363) (minValue!6523 V!49363) (_size!3147 (_ BitVec 32)) (_keys!12150 array!83481) (_values!6761 array!83479) (_vacant!3147 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6184)

(declare-fun mapDefault!51328 () ValueCell!15710)

