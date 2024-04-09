; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89390 () Bool)

(assert start!89390)

(declare-fun b!1024184 () Bool)

(declare-fun b_free!20353 () Bool)

(declare-fun b_next!20353 () Bool)

(assert (=> b!1024184 (= b_free!20353 (not b_next!20353))))

(declare-fun tp!72105 () Bool)

(declare-fun b_and!32617 () Bool)

(assert (=> b!1024184 (= tp!72105 b_and!32617)))

(declare-fun b!1024179 () Bool)

(declare-fun e!577314 () Bool)

(assert (=> b!1024179 (= e!577314 false)))

(declare-datatypes ((SeekEntryResult!9578 0))(
  ( (MissingZero!9578 (index!40682 (_ BitVec 32))) (Found!9578 (index!40683 (_ BitVec 32))) (Intermediate!9578 (undefined!10390 Bool) (index!40684 (_ BitVec 32)) (x!91043 (_ BitVec 32))) (Undefined!9578) (MissingVacant!9578 (index!40685 (_ BitVec 32))) )
))
(declare-fun lt!450541 () SeekEntryResult!9578)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!36971 0))(
  ( (V!36972 (val!12087 Int)) )
))
(declare-datatypes ((ValueCell!11333 0))(
  ( (ValueCellFull!11333 (v!14657 V!36971)) (EmptyCell!11333) )
))
(declare-datatypes ((array!64180 0))(
  ( (array!64181 (arr!30895 (Array (_ BitVec 32) (_ BitVec 64))) (size!31409 (_ BitVec 32))) )
))
(declare-datatypes ((array!64182 0))(
  ( (array!64183 (arr!30896 (Array (_ BitVec 32) ValueCell!11333)) (size!31410 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5260 0))(
  ( (LongMapFixedSize!5261 (defaultEntry!5982 Int) (mask!29623 (_ BitVec 32)) (extraKeys!5714 (_ BitVec 32)) (zeroValue!5818 V!36971) (minValue!5818 V!36971) (_size!2685 (_ BitVec 32)) (_keys!11126 array!64180) (_values!6005 array!64182) (_vacant!2685 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5260)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64180 (_ BitVec 32)) SeekEntryResult!9578)

(assert (=> b!1024179 (= lt!450541 (seekEntry!0 key!909 (_keys!11126 thiss!1427) (mask!29623 thiss!1427)))))

(declare-fun res!685832 () Bool)

(assert (=> start!89390 (=> (not res!685832) (not e!577314))))

(declare-fun valid!1957 (LongMapFixedSize!5260) Bool)

(assert (=> start!89390 (= res!685832 (valid!1957 thiss!1427))))

(assert (=> start!89390 e!577314))

(declare-fun e!577312 () Bool)

(assert (=> start!89390 e!577312))

(assert (=> start!89390 true))

(declare-fun b!1024180 () Bool)

(declare-fun e!577313 () Bool)

(declare-fun e!577315 () Bool)

(declare-fun mapRes!37538 () Bool)

(assert (=> b!1024180 (= e!577313 (and e!577315 mapRes!37538))))

(declare-fun condMapEmpty!37538 () Bool)

(declare-fun mapDefault!37538 () ValueCell!11333)

