; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89252 () Bool)

(assert start!89252)

(declare-fun b!1022875 () Bool)

(declare-fun b_free!20257 () Bool)

(declare-fun b_next!20257 () Bool)

(assert (=> b!1022875 (= b_free!20257 (not b_next!20257))))

(declare-fun tp!71806 () Bool)

(declare-fun b_and!32497 () Bool)

(assert (=> b!1022875 (= tp!71806 b_and!32497)))

(declare-fun mapNonEmpty!37383 () Bool)

(declare-fun mapRes!37383 () Bool)

(declare-fun tp!71807 () Bool)

(declare-fun e!576360 () Bool)

(assert (=> mapNonEmpty!37383 (= mapRes!37383 (and tp!71807 e!576360))))

(declare-datatypes ((V!36843 0))(
  ( (V!36844 (val!12039 Int)) )
))
(declare-datatypes ((ValueCell!11285 0))(
  ( (ValueCellFull!11285 (v!14609 V!36843)) (EmptyCell!11285) )
))
(declare-fun mapRest!37383 () (Array (_ BitVec 32) ValueCell!11285))

(declare-fun mapKey!37383 () (_ BitVec 32))

(declare-datatypes ((array!63982 0))(
  ( (array!63983 (arr!30799 (Array (_ BitVec 32) (_ BitVec 64))) (size!31311 (_ BitVec 32))) )
))
(declare-datatypes ((array!63984 0))(
  ( (array!63985 (arr!30800 (Array (_ BitVec 32) ValueCell!11285)) (size!31312 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5164 0))(
  ( (LongMapFixedSize!5165 (defaultEntry!5934 Int) (mask!29538 (_ BitVec 32)) (extraKeys!5666 (_ BitVec 32)) (zeroValue!5770 V!36843) (minValue!5770 V!36843) (_size!2637 (_ BitVec 32)) (_keys!11076 array!63982) (_values!5957 array!63984) (_vacant!2637 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5164)

(declare-fun mapValue!37383 () ValueCell!11285)

(assert (=> mapNonEmpty!37383 (= (arr!30800 (_values!5957 thiss!1427)) (store mapRest!37383 mapKey!37383 mapValue!37383))))

(declare-fun b!1022870 () Bool)

(declare-fun res!685202 () Bool)

(declare-fun e!576358 () Bool)

(assert (=> b!1022870 (=> (not res!685202) (not e!576358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022870 (= res!685202 (validMask!0 (mask!29538 thiss!1427)))))

(declare-fun b!1022871 () Bool)

(declare-fun res!685201 () Bool)

(assert (=> b!1022871 (=> (not res!685201) (not e!576358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63982 (_ BitVec 32)) Bool)

(assert (=> b!1022871 (= res!685201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11076 thiss!1427) (mask!29538 thiss!1427)))))

(declare-fun b!1022872 () Bool)

(declare-fun e!576357 () Bool)

(declare-fun e!576361 () Bool)

(assert (=> b!1022872 (= e!576357 (and e!576361 mapRes!37383))))

(declare-fun condMapEmpty!37383 () Bool)

(declare-fun mapDefault!37383 () ValueCell!11285)

