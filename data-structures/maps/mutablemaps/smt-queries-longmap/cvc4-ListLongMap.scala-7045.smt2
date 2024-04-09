; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89322 () Bool)

(assert start!89322)

(declare-fun b!1023756 () Bool)

(declare-fun b_free!20327 () Bool)

(declare-fun b_next!20327 () Bool)

(assert (=> b!1023756 (= b_free!20327 (not b_next!20327))))

(declare-fun tp!72017 () Bool)

(declare-fun b_and!32583 () Bool)

(assert (=> b!1023756 (= tp!72017 b_and!32583)))

(declare-fun mapNonEmpty!37488 () Bool)

(declare-fun mapRes!37488 () Bool)

(declare-fun tp!72016 () Bool)

(declare-fun e!576991 () Bool)

(assert (=> mapNonEmpty!37488 (= mapRes!37488 (and tp!72016 e!576991))))

(declare-fun mapKey!37488 () (_ BitVec 32))

(declare-datatypes ((V!36935 0))(
  ( (V!36936 (val!12074 Int)) )
))
(declare-datatypes ((ValueCell!11320 0))(
  ( (ValueCellFull!11320 (v!14644 V!36935)) (EmptyCell!11320) )
))
(declare-fun mapValue!37488 () ValueCell!11320)

(declare-fun mapRest!37488 () (Array (_ BitVec 32) ValueCell!11320))

(declare-datatypes ((array!64122 0))(
  ( (array!64123 (arr!30869 (Array (_ BitVec 32) (_ BitVec 64))) (size!31381 (_ BitVec 32))) )
))
(declare-datatypes ((array!64124 0))(
  ( (array!64125 (arr!30870 (Array (_ BitVec 32) ValueCell!11320)) (size!31382 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5234 0))(
  ( (LongMapFixedSize!5235 (defaultEntry!5969 Int) (mask!29595 (_ BitVec 32)) (extraKeys!5701 (_ BitVec 32)) (zeroValue!5805 V!36935) (minValue!5805 V!36935) (_size!2672 (_ BitVec 32)) (_keys!11111 array!64122) (_values!5992 array!64124) (_vacant!2672 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5234)

(assert (=> mapNonEmpty!37488 (= (arr!30870 (_values!5992 thiss!1427)) (store mapRest!37488 mapKey!37488 mapValue!37488))))

(declare-fun mapIsEmpty!37488 () Bool)

(assert (=> mapIsEmpty!37488 mapRes!37488))

(declare-fun b!1023753 () Bool)

(declare-fun e!576988 () Bool)

(declare-fun e!576987 () Bool)

(assert (=> b!1023753 (= e!576988 (and e!576987 mapRes!37488))))

(declare-fun condMapEmpty!37488 () Bool)

(declare-fun mapDefault!37488 () ValueCell!11320)

