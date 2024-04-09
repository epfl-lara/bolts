; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90098 () Bool)

(assert start!90098)

(declare-fun b!1031500 () Bool)

(declare-fun b_free!20669 () Bool)

(declare-fun b_next!20669 () Bool)

(assert (=> b!1031500 (= b_free!20669 (not b_next!20669))))

(declare-fun tp!73079 () Bool)

(declare-fun b_and!33123 () Bool)

(assert (=> b!1031500 (= tp!73079 b_and!33123)))

(declare-fun res!689769 () Bool)

(declare-fun e!582654 () Bool)

(assert (=> start!90098 (=> (not res!689769) (not e!582654))))

(declare-datatypes ((V!37391 0))(
  ( (V!37392 (val!12245 Int)) )
))
(declare-datatypes ((ValueCell!11491 0))(
  ( (ValueCellFull!11491 (v!14823 V!37391)) (EmptyCell!11491) )
))
(declare-datatypes ((array!64826 0))(
  ( (array!64827 (arr!31211 (Array (_ BitVec 32) (_ BitVec 64))) (size!31729 (_ BitVec 32))) )
))
(declare-datatypes ((array!64828 0))(
  ( (array!64829 (arr!31212 (Array (_ BitVec 32) ValueCell!11491)) (size!31730 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5576 0))(
  ( (LongMapFixedSize!5577 (defaultEntry!6162 Int) (mask!29955 (_ BitVec 32)) (extraKeys!5894 (_ BitVec 32)) (zeroValue!5998 V!37391) (minValue!5998 V!37391) (_size!2843 (_ BitVec 32)) (_keys!11332 array!64826) (_values!6185 array!64828) (_vacant!2843 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5576)

(declare-fun valid!2062 (LongMapFixedSize!5576) Bool)

(assert (=> start!90098 (= res!689769 (valid!2062 thiss!1427))))

(assert (=> start!90098 e!582654))

(declare-fun e!582653 () Bool)

(assert (=> start!90098 e!582653))

(assert (=> start!90098 true))

(declare-fun mapIsEmpty!38037 () Bool)

(declare-fun mapRes!38037 () Bool)

(assert (=> mapIsEmpty!38037 mapRes!38037))

(declare-fun b!1031498 () Bool)

(declare-fun res!689771 () Bool)

(declare-fun e!582650 () Bool)

(assert (=> b!1031498 (=> res!689771 e!582650)))

(declare-datatypes ((Unit!33724 0))(
  ( (Unit!33725) )
))
(declare-datatypes ((tuple2!15776 0))(
  ( (tuple2!15777 (_1!7898 Unit!33724) (_2!7898 LongMapFixedSize!5576)) )
))
(declare-fun lt!455441 () tuple2!15776)

(assert (=> b!1031498 (= res!689771 (or (not (= (size!31730 (_values!6185 (_2!7898 lt!455441))) (bvadd #b00000000000000000000000000000001 (mask!29955 (_2!7898 lt!455441))))) (not (= (size!31729 (_keys!11332 (_2!7898 lt!455441))) (size!31730 (_values!6185 (_2!7898 lt!455441))))) (bvslt (mask!29955 (_2!7898 lt!455441)) #b00000000000000000000000000000000) (bvslt (extraKeys!5894 (_2!7898 lt!455441)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5894 (_2!7898 lt!455441)) #b00000000000000000000000000000011)))))

(declare-fun b!1031499 () Bool)

(declare-fun e!582652 () Bool)

(declare-fun tp_is_empty!24389 () Bool)

(assert (=> b!1031499 (= e!582652 tp_is_empty!24389)))

(declare-fun e!582655 () Bool)

(declare-fun array_inv!24003 (array!64826) Bool)

(declare-fun array_inv!24004 (array!64828) Bool)

(assert (=> b!1031500 (= e!582653 (and tp!73079 tp_is_empty!24389 (array_inv!24003 (_keys!11332 thiss!1427)) (array_inv!24004 (_values!6185 thiss!1427)) e!582655))))

(declare-fun b!1031501 () Bool)

(declare-fun e!582651 () Bool)

(assert (=> b!1031501 (= e!582654 e!582651)))

(declare-fun res!689770 () Bool)

(assert (=> b!1031501 (=> (not res!689770) (not e!582651))))

(declare-datatypes ((SeekEntryResult!9702 0))(
  ( (MissingZero!9702 (index!41178 (_ BitVec 32))) (Found!9702 (index!41179 (_ BitVec 32))) (Intermediate!9702 (undefined!10514 Bool) (index!41180 (_ BitVec 32)) (x!91851 (_ BitVec 32))) (Undefined!9702) (MissingVacant!9702 (index!41181 (_ BitVec 32))) )
))
(declare-fun lt!455447 () SeekEntryResult!9702)

(assert (=> b!1031501 (= res!689770 (is-Found!9702 lt!455447))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64826 (_ BitVec 32)) SeekEntryResult!9702)

(assert (=> b!1031501 (= lt!455447 (seekEntry!0 key!909 (_keys!11332 thiss!1427) (mask!29955 thiss!1427)))))

(declare-fun b!1031502 () Bool)

(declare-fun e!582649 () Bool)

(assert (=> b!1031502 (= e!582649 tp_is_empty!24389)))

(declare-fun b!1031503 () Bool)

(declare-fun res!689772 () Bool)

(assert (=> b!1031503 (=> res!689772 e!582650)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031503 (= res!689772 (not (validMask!0 (mask!29955 (_2!7898 lt!455441)))))))

(declare-fun b!1031504 () Bool)

(assert (=> b!1031504 (= e!582655 (and e!582649 mapRes!38037))))

(declare-fun condMapEmpty!38037 () Bool)

(declare-fun mapDefault!38037 () ValueCell!11491)

