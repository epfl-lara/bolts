; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81510 () Bool)

(assert start!81510)

(declare-fun b!952112 () Bool)

(declare-fun b_free!18287 () Bool)

(declare-fun b_next!18287 () Bool)

(assert (=> b!952112 (= b_free!18287 (not b_next!18287))))

(declare-fun tp!63481 () Bool)

(declare-fun b_and!29783 () Bool)

(assert (=> b!952112 (= tp!63481 b_and!29783)))

(declare-fun e!536233 () Bool)

(declare-fun tp_is_empty!20795 () Bool)

(declare-datatypes ((V!32691 0))(
  ( (V!32692 (val!10448 Int)) )
))
(declare-datatypes ((ValueCell!9916 0))(
  ( (ValueCellFull!9916 (v!12998 V!32691)) (EmptyCell!9916) )
))
(declare-datatypes ((array!57644 0))(
  ( (array!57645 (arr!27711 (Array (_ BitVec 32) ValueCell!9916)) (size!28191 (_ BitVec 32))) )
))
(declare-datatypes ((array!57646 0))(
  ( (array!57647 (arr!27712 (Array (_ BitVec 32) (_ BitVec 64))) (size!28192 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4982 0))(
  ( (LongMapFixedSize!4983 (defaultEntry!5820 Int) (mask!27655 (_ BitVec 32)) (extraKeys!5552 (_ BitVec 32)) (zeroValue!5656 V!32691) (minValue!5656 V!32691) (_size!2546 (_ BitVec 32)) (_keys!10768 array!57646) (_values!5843 array!57644) (_vacant!2546 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4982)

(declare-fun e!536231 () Bool)

(declare-fun array_inv!21452 (array!57646) Bool)

(declare-fun array_inv!21453 (array!57644) Bool)

(assert (=> b!952112 (= e!536233 (and tp!63481 tp_is_empty!20795 (array_inv!21452 (_keys!10768 thiss!1141)) (array_inv!21453 (_values!5843 thiss!1141)) e!536231))))

(declare-fun b!952113 () Bool)

(declare-fun e!536232 () Bool)

(declare-fun mapRes!33127 () Bool)

(assert (=> b!952113 (= e!536231 (and e!536232 mapRes!33127))))

(declare-fun condMapEmpty!33127 () Bool)

(declare-fun mapDefault!33127 () ValueCell!9916)

