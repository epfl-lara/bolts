; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80542 () Bool)

(assert start!80542)

(declare-fun b!945355 () Bool)

(declare-fun b_free!18101 () Bool)

(declare-fun b_next!18101 () Bool)

(assert (=> b!945355 (= b_free!18101 (not b_next!18101))))

(declare-fun tp!62821 () Bool)

(declare-fun b_and!29541 () Bool)

(assert (=> b!945355 (= tp!62821 b_and!29541)))

(declare-fun b!945352 () Bool)

(declare-fun e!531764 () Bool)

(declare-fun e!531763 () Bool)

(declare-fun mapRes!32747 () Bool)

(assert (=> b!945352 (= e!531764 (and e!531763 mapRes!32747))))

(declare-fun condMapEmpty!32747 () Bool)

(declare-datatypes ((V!32443 0))(
  ( (V!32444 (val!10355 Int)) )
))
(declare-datatypes ((ValueCell!9823 0))(
  ( (ValueCellFull!9823 (v!12889 V!32443)) (EmptyCell!9823) )
))
(declare-datatypes ((array!57212 0))(
  ( (array!57213 (arr!27525 (Array (_ BitVec 32) ValueCell!9823)) (size!27994 (_ BitVec 32))) )
))
(declare-datatypes ((array!57214 0))(
  ( (array!57215 (arr!27526 (Array (_ BitVec 32) (_ BitVec 64))) (size!27995 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4796 0))(
  ( (LongMapFixedSize!4797 (defaultEntry!5695 Int) (mask!27356 (_ BitVec 32)) (extraKeys!5427 (_ BitVec 32)) (zeroValue!5531 V!32443) (minValue!5531 V!32443) (_size!2453 (_ BitVec 32)) (_keys!10571 array!57214) (_values!5718 array!57212) (_vacant!2453 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4796)

(declare-fun mapDefault!32747 () ValueCell!9823)

