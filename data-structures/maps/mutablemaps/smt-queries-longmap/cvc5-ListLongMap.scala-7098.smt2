; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90070 () Bool)

(assert start!90070)

(declare-fun b!1031013 () Bool)

(declare-fun b_free!20641 () Bool)

(declare-fun b_next!20641 () Bool)

(assert (=> b!1031013 (= b_free!20641 (not b_next!20641))))

(declare-fun tp!72995 () Bool)

(declare-fun b_and!33067 () Bool)

(assert (=> b!1031013 (= tp!72995 b_and!33067)))

(declare-fun mapNonEmpty!37995 () Bool)

(declare-fun mapRes!37995 () Bool)

(declare-fun tp!72994 () Bool)

(declare-fun e!582312 () Bool)

(assert (=> mapNonEmpty!37995 (= mapRes!37995 (and tp!72994 e!582312))))

(declare-datatypes ((V!37355 0))(
  ( (V!37356 (val!12231 Int)) )
))
(declare-datatypes ((ValueCell!11477 0))(
  ( (ValueCellFull!11477 (v!14809 V!37355)) (EmptyCell!11477) )
))
(declare-fun mapValue!37995 () ValueCell!11477)

(declare-fun mapRest!37995 () (Array (_ BitVec 32) ValueCell!11477))

(declare-datatypes ((array!64770 0))(
  ( (array!64771 (arr!31183 (Array (_ BitVec 32) (_ BitVec 64))) (size!31701 (_ BitVec 32))) )
))
(declare-datatypes ((array!64772 0))(
  ( (array!64773 (arr!31184 (Array (_ BitVec 32) ValueCell!11477)) (size!31702 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5548 0))(
  ( (LongMapFixedSize!5549 (defaultEntry!6148 Int) (mask!29933 (_ BitVec 32)) (extraKeys!5880 (_ BitVec 32)) (zeroValue!5984 V!37355) (minValue!5984 V!37355) (_size!2829 (_ BitVec 32)) (_keys!11318 array!64770) (_values!6171 array!64772) (_vacant!2829 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5548)

(declare-fun mapKey!37995 () (_ BitVec 32))

(assert (=> mapNonEmpty!37995 (= (arr!31184 (_values!6171 thiss!1427)) (store mapRest!37995 mapKey!37995 mapValue!37995))))

(declare-fun mapIsEmpty!37995 () Bool)

(assert (=> mapIsEmpty!37995 mapRes!37995))

(declare-fun b!1031008 () Bool)

(declare-fun res!689477 () Bool)

(declare-fun e!582315 () Bool)

(assert (=> b!1031008 (=> res!689477 e!582315)))

(declare-datatypes ((Unit!33678 0))(
  ( (Unit!33679) )
))
(declare-datatypes ((tuple2!15730 0))(
  ( (tuple2!15731 (_1!7875 Unit!33678) (_2!7875 LongMapFixedSize!5548)) )
))
(declare-fun lt!455024 () tuple2!15730)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031008 (= res!689477 (not (validMask!0 (mask!29933 (_2!7875 lt!455024)))))))

(declare-fun b!1031009 () Bool)

(declare-fun e!582313 () Bool)

(declare-fun e!582314 () Bool)

(assert (=> b!1031009 (= e!582313 e!582314)))

(declare-fun res!689481 () Bool)

(assert (=> b!1031009 (=> (not res!689481) (not e!582314))))

(declare-datatypes ((SeekEntryResult!9690 0))(
  ( (MissingZero!9690 (index!41130 (_ BitVec 32))) (Found!9690 (index!41131 (_ BitVec 32))) (Intermediate!9690 (undefined!10502 Bool) (index!41132 (_ BitVec 32)) (x!91779 (_ BitVec 32))) (Undefined!9690) (MissingVacant!9690 (index!41133 (_ BitVec 32))) )
))
(declare-fun lt!455027 () SeekEntryResult!9690)

(assert (=> b!1031009 (= res!689481 (is-Found!9690 lt!455027))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64770 (_ BitVec 32)) SeekEntryResult!9690)

(assert (=> b!1031009 (= lt!455027 (seekEntry!0 key!909 (_keys!11318 thiss!1427) (mask!29933 thiss!1427)))))

(declare-fun b!1031010 () Bool)

(assert (=> b!1031010 (= e!582315 true)))

(declare-fun lt!455020 () Bool)

(declare-datatypes ((List!21967 0))(
  ( (Nil!21964) (Cons!21963 (h!23165 (_ BitVec 64)) (t!31110 List!21967)) )
))
(declare-fun arrayNoDuplicates!0 (array!64770 (_ BitVec 32) List!21967) Bool)

(assert (=> b!1031010 (= lt!455020 (arrayNoDuplicates!0 (_keys!11318 (_2!7875 lt!455024)) #b00000000000000000000000000000000 Nil!21964))))

(declare-fun b!1031011 () Bool)

(declare-fun tp_is_empty!24361 () Bool)

(assert (=> b!1031011 (= e!582312 tp_is_empty!24361)))

(declare-fun b!1031012 () Bool)

(declare-fun e!582316 () Bool)

(declare-fun e!582319 () Bool)

(assert (=> b!1031012 (= e!582316 (and e!582319 mapRes!37995))))

(declare-fun condMapEmpty!37995 () Bool)

(declare-fun mapDefault!37995 () ValueCell!11477)

