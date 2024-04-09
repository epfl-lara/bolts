; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89238 () Bool)

(assert start!89238)

(declare-fun b!1022682 () Bool)

(declare-fun b_free!20243 () Bool)

(declare-fun b_next!20243 () Bool)

(assert (=> b!1022682 (= b_free!20243 (not b_next!20243))))

(declare-fun tp!71764 () Bool)

(declare-fun b_and!32483 () Bool)

(assert (=> b!1022682 (= tp!71764 b_and!32483)))

(declare-fun mapNonEmpty!37362 () Bool)

(declare-fun mapRes!37362 () Bool)

(declare-fun tp!71765 () Bool)

(declare-fun e!576232 () Bool)

(assert (=> mapNonEmpty!37362 (= mapRes!37362 (and tp!71765 e!576232))))

(declare-datatypes ((V!36823 0))(
  ( (V!36824 (val!12032 Int)) )
))
(declare-datatypes ((ValueCell!11278 0))(
  ( (ValueCellFull!11278 (v!14602 V!36823)) (EmptyCell!11278) )
))
(declare-fun mapValue!37362 () ValueCell!11278)

(declare-fun mapRest!37362 () (Array (_ BitVec 32) ValueCell!11278))

(declare-datatypes ((array!63954 0))(
  ( (array!63955 (arr!30785 (Array (_ BitVec 32) (_ BitVec 64))) (size!31297 (_ BitVec 32))) )
))
(declare-datatypes ((array!63956 0))(
  ( (array!63957 (arr!30786 (Array (_ BitVec 32) ValueCell!11278)) (size!31298 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5150 0))(
  ( (LongMapFixedSize!5151 (defaultEntry!5927 Int) (mask!29525 (_ BitVec 32)) (extraKeys!5659 (_ BitVec 32)) (zeroValue!5763 V!36823) (minValue!5763 V!36823) (_size!2630 (_ BitVec 32)) (_keys!11069 array!63954) (_values!5950 array!63956) (_vacant!2630 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5150)

(declare-fun mapKey!37362 () (_ BitVec 32))

(assert (=> mapNonEmpty!37362 (= (arr!30786 (_values!5950 thiss!1427)) (store mapRest!37362 mapKey!37362 mapValue!37362))))

(declare-fun b!1022681 () Bool)

(declare-fun e!576233 () Bool)

(declare-fun e!576234 () Bool)

(assert (=> b!1022681 (= e!576233 (and e!576234 mapRes!37362))))

(declare-fun condMapEmpty!37362 () Bool)

(declare-fun mapDefault!37362 () ValueCell!11278)

