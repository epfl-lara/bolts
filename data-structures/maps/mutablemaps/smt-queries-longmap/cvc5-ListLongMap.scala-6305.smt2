; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80760 () Bool)

(assert start!80760)

(declare-fun b!946649 () Bool)

(declare-fun b_free!18151 () Bool)

(declare-fun b_next!18151 () Bool)

(assert (=> b!946649 (= b_free!18151 (not b_next!18151))))

(declare-fun tp!63002 () Bool)

(declare-fun b_and!29591 () Bool)

(assert (=> b!946649 (= tp!63002 b_and!29591)))

(declare-fun b!946645 () Bool)

(declare-fun e!532736 () Bool)

(declare-fun e!532734 () Bool)

(declare-fun mapRes!32853 () Bool)

(assert (=> b!946645 (= e!532736 (and e!532734 mapRes!32853))))

(declare-fun condMapEmpty!32853 () Bool)

(declare-datatypes ((V!32511 0))(
  ( (V!32512 (val!10380 Int)) )
))
(declare-datatypes ((ValueCell!9848 0))(
  ( (ValueCellFull!9848 (v!12914 V!32511)) (EmptyCell!9848) )
))
(declare-datatypes ((array!57330 0))(
  ( (array!57331 (arr!27575 (Array (_ BitVec 32) ValueCell!9848)) (size!28048 (_ BitVec 32))) )
))
(declare-datatypes ((array!57332 0))(
  ( (array!57333 (arr!27576 (Array (_ BitVec 32) (_ BitVec 64))) (size!28049 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4846 0))(
  ( (LongMapFixedSize!4847 (defaultEntry!5720 Int) (mask!27430 (_ BitVec 32)) (extraKeys!5452 (_ BitVec 32)) (zeroValue!5556 V!32511) (minValue!5556 V!32511) (_size!2478 (_ BitVec 32)) (_keys!10617 array!57332) (_values!5743 array!57330) (_vacant!2478 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4846)

(declare-fun mapDefault!32853 () ValueCell!9848)

