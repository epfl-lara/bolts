; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89282 () Bool)

(assert start!89282)

(declare-fun b!1023279 () Bool)

(declare-fun b_free!20287 () Bool)

(declare-fun b_next!20287 () Bool)

(assert (=> b!1023279 (= b_free!20287 (not b_next!20287))))

(declare-fun tp!71897 () Bool)

(declare-fun b_and!32527 () Bool)

(assert (=> b!1023279 (= tp!71897 b_and!32527)))

(declare-fun b!1023275 () Bool)

(declare-fun res!685426 () Bool)

(declare-fun e!576630 () Bool)

(assert (=> b!1023275 (=> (not res!685426) (not e!576630))))

(declare-datatypes ((V!36883 0))(
  ( (V!36884 (val!12054 Int)) )
))
(declare-datatypes ((ValueCell!11300 0))(
  ( (ValueCellFull!11300 (v!14624 V!36883)) (EmptyCell!11300) )
))
(declare-datatypes ((array!64042 0))(
  ( (array!64043 (arr!30829 (Array (_ BitVec 32) (_ BitVec 64))) (size!31341 (_ BitVec 32))) )
))
(declare-datatypes ((array!64044 0))(
  ( (array!64045 (arr!30830 (Array (_ BitVec 32) ValueCell!11300)) (size!31342 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5194 0))(
  ( (LongMapFixedSize!5195 (defaultEntry!5949 Int) (mask!29563 (_ BitVec 32)) (extraKeys!5681 (_ BitVec 32)) (zeroValue!5785 V!36883) (minValue!5785 V!36883) (_size!2652 (_ BitVec 32)) (_keys!11091 array!64042) (_values!5972 array!64044) (_vacant!2652 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5194)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64042 (_ BitVec 32)) Bool)

(assert (=> b!1023275 (= res!685426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11091 thiss!1427) (mask!29563 thiss!1427)))))

(declare-fun b!1023276 () Bool)

(declare-fun res!685425 () Bool)

(assert (=> b!1023276 (=> (not res!685425) (not e!576630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023276 (= res!685425 (validMask!0 (mask!29563 thiss!1427)))))

(declare-fun b!1023277 () Bool)

(declare-fun e!576626 () Bool)

(declare-fun e!576629 () Bool)

(declare-fun mapRes!37428 () Bool)

(assert (=> b!1023277 (= e!576626 (and e!576629 mapRes!37428))))

(declare-fun condMapEmpty!37428 () Bool)

(declare-fun mapDefault!37428 () ValueCell!11300)

