; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21988 () Bool)

(assert start!21988)

(declare-fun b!225256 () Bool)

(declare-fun b_free!6043 () Bool)

(declare-fun b_next!6043 () Bool)

(assert (=> b!225256 (= b_free!6043 (not b_next!6043))))

(declare-fun tp!21271 () Bool)

(declare-fun b_and!12959 () Bool)

(assert (=> b!225256 (= tp!21271 b_and!12959)))

(declare-fun b!225233 () Bool)

(declare-fun res!110865 () Bool)

(declare-fun e!146212 () Bool)

(assert (=> b!225233 (=> (not res!110865) (not e!146212))))

(declare-datatypes ((V!7521 0))(
  ( (V!7522 (val!2997 Int)) )
))
(declare-datatypes ((ValueCell!2609 0))(
  ( (ValueCellFull!2609 (v!5013 V!7521)) (EmptyCell!2609) )
))
(declare-datatypes ((array!11052 0))(
  ( (array!11053 (arr!5245 (Array (_ BitVec 32) ValueCell!2609)) (size!5578 (_ BitVec 32))) )
))
(declare-datatypes ((array!11054 0))(
  ( (array!11055 (arr!5246 (Array (_ BitVec 32) (_ BitVec 64))) (size!5579 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3118 0))(
  ( (LongMapFixedSize!3119 (defaultEntry!4218 Int) (mask!10060 (_ BitVec 32)) (extraKeys!3955 (_ BitVec 32)) (zeroValue!4059 V!7521) (minValue!4059 V!7521) (_size!1608 (_ BitVec 32)) (_keys!6272 array!11054) (_values!4201 array!11052) (_vacant!1608 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3118)

(declare-datatypes ((SeekEntryResult!877 0))(
  ( (MissingZero!877 (index!5678 (_ BitVec 32))) (Found!877 (index!5679 (_ BitVec 32))) (Intermediate!877 (undefined!1689 Bool) (index!5680 (_ BitVec 32)) (x!23185 (_ BitVec 32))) (Undefined!877) (MissingVacant!877 (index!5681 (_ BitVec 32))) )
))
(declare-fun lt!113498 () SeekEntryResult!877)

(assert (=> b!225233 (= res!110865 (= (select (arr!5246 (_keys!6272 thiss!1504)) (index!5678 lt!113498)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!225234 () Bool)

(declare-fun call!20962 () Bool)

(assert (=> b!225234 (= e!146212 (not call!20962))))

(declare-fun b!225235 () Bool)

(declare-fun e!146208 () Bool)

(declare-fun e!146201 () Bool)

(declare-fun mapRes!10027 () Bool)

(assert (=> b!225235 (= e!146208 (and e!146201 mapRes!10027))))

(declare-fun condMapEmpty!10027 () Bool)

(declare-fun mapDefault!10027 () ValueCell!2609)

