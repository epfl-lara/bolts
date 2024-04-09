; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90104 () Bool)

(assert start!90104)

(declare-fun b!1031613 () Bool)

(declare-fun b_free!20675 () Bool)

(declare-fun b_next!20675 () Bool)

(assert (=> b!1031613 (= b_free!20675 (not b_next!20675))))

(declare-fun tp!73097 () Bool)

(declare-fun b_and!33135 () Bool)

(assert (=> b!1031613 (= tp!73097 b_and!33135)))

(declare-fun b!1031603 () Bool)

(declare-fun res!689837 () Bool)

(declare-fun e!582726 () Bool)

(assert (=> b!1031603 (=> res!689837 e!582726)))

(declare-datatypes ((V!37399 0))(
  ( (V!37400 (val!12248 Int)) )
))
(declare-datatypes ((ValueCell!11494 0))(
  ( (ValueCellFull!11494 (v!14826 V!37399)) (EmptyCell!11494) )
))
(declare-datatypes ((Unit!33734 0))(
  ( (Unit!33735) )
))
(declare-datatypes ((array!64838 0))(
  ( (array!64839 (arr!31217 (Array (_ BitVec 32) (_ BitVec 64))) (size!31735 (_ BitVec 32))) )
))
(declare-datatypes ((array!64840 0))(
  ( (array!64841 (arr!31218 (Array (_ BitVec 32) ValueCell!11494)) (size!31736 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5582 0))(
  ( (LongMapFixedSize!5583 (defaultEntry!6165 Int) (mask!29960 (_ BitVec 32)) (extraKeys!5897 (_ BitVec 32)) (zeroValue!6001 V!37399) (minValue!6001 V!37399) (_size!2846 (_ BitVec 32)) (_keys!11335 array!64838) (_values!6188 array!64840) (_vacant!2846 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15786 0))(
  ( (tuple2!15787 (_1!7903 Unit!33734) (_2!7903 LongMapFixedSize!5582)) )
))
(declare-fun lt!455538 () tuple2!15786)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64838 (_ BitVec 32)) Bool)

(assert (=> b!1031603 (= res!689837 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11335 (_2!7903 lt!455538)) (mask!29960 (_2!7903 lt!455538)))))))

(declare-fun b!1031604 () Bool)

(declare-fun res!689835 () Bool)

(declare-fun e!582723 () Bool)

(assert (=> b!1031604 (=> (not res!689835) (not e!582723))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1031604 (= res!689835 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1031605 () Bool)

(declare-fun e!582725 () Bool)

(declare-fun e!582720 () Bool)

(declare-fun mapRes!38046 () Bool)

(assert (=> b!1031605 (= e!582725 (and e!582720 mapRes!38046))))

(declare-fun condMapEmpty!38046 () Bool)

(declare-fun thiss!1427 () LongMapFixedSize!5582)

(declare-fun mapDefault!38046 () ValueCell!11494)

