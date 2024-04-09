; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107646 () Bool)

(assert start!107646)

(declare-fun b!1273627 () Bool)

(declare-fun b_free!27745 () Bool)

(declare-fun b_next!27745 () Bool)

(assert (=> b!1273627 (= b_free!27745 (not b_next!27745))))

(declare-fun tp!97793 () Bool)

(declare-fun b_and!45811 () Bool)

(assert (=> b!1273627 (= tp!97793 b_and!45811)))

(declare-fun b!1273626 () Bool)

(declare-fun e!726764 () Bool)

(declare-fun e!726765 () Bool)

(declare-fun mapRes!51304 () Bool)

(assert (=> b!1273626 (= e!726764 (and e!726765 mapRes!51304))))

(declare-fun condMapEmpty!51304 () Bool)

(declare-datatypes ((V!49347 0))(
  ( (V!49348 (val!16632 Int)) )
))
(declare-datatypes ((ValueCell!15704 0))(
  ( (ValueCellFull!15704 (v!19267 V!49347)) (EmptyCell!15704) )
))
(declare-datatypes ((array!83451 0))(
  ( (array!83452 (arr!40243 (Array (_ BitVec 32) ValueCell!15704)) (size!40789 (_ BitVec 32))) )
))
(declare-datatypes ((array!83453 0))(
  ( (array!83454 (arr!40244 (Array (_ BitVec 32) (_ BitVec 64))) (size!40790 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6172 0))(
  ( (LongMapFixedSize!6173 (defaultEntry!6732 Int) (mask!34519 (_ BitVec 32)) (extraKeys!6411 (_ BitVec 32)) (zeroValue!6517 V!49347) (minValue!6517 V!49347) (_size!3141 (_ BitVec 32)) (_keys!12143 array!83453) (_values!6755 array!83451) (_vacant!3141 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6172)

(declare-fun mapDefault!51304 () ValueCell!15704)

