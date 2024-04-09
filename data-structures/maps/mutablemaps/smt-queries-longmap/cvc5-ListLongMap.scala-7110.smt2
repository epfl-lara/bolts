; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90142 () Bool)

(assert start!90142)

(declare-fun b!1032196 () Bool)

(declare-fun b_free!20713 () Bool)

(declare-fun b_next!20713 () Bool)

(assert (=> b!1032196 (= b_free!20713 (not b_next!20713))))

(declare-fun tp!73210 () Bool)

(declare-fun b_and!33199 () Bool)

(assert (=> b!1032196 (= tp!73210 b_and!33199)))

(declare-fun b!1032192 () Bool)

(declare-fun res!690024 () Bool)

(declare-fun e!583209 () Bool)

(assert (=> b!1032192 (=> (not res!690024) (not e!583209))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032192 (= res!690024 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38103 () Bool)

(declare-fun mapRes!38103 () Bool)

(assert (=> mapIsEmpty!38103 mapRes!38103))

(declare-fun b!1032193 () Bool)

(assert (=> b!1032193 (= e!583209 false)))

(declare-datatypes ((SeekEntryResult!9722 0))(
  ( (MissingZero!9722 (index!41258 (_ BitVec 32))) (Found!9722 (index!41259 (_ BitVec 32))) (Intermediate!9722 (undefined!10534 Bool) (index!41260 (_ BitVec 32)) (x!91965 (_ BitVec 32))) (Undefined!9722) (MissingVacant!9722 (index!41261 (_ BitVec 32))) )
))
(declare-fun lt!455991 () SeekEntryResult!9722)

(declare-datatypes ((V!37451 0))(
  ( (V!37452 (val!12267 Int)) )
))
(declare-datatypes ((ValueCell!11513 0))(
  ( (ValueCellFull!11513 (v!14845 V!37451)) (EmptyCell!11513) )
))
(declare-datatypes ((array!64914 0))(
  ( (array!64915 (arr!31255 (Array (_ BitVec 32) (_ BitVec 64))) (size!31773 (_ BitVec 32))) )
))
(declare-datatypes ((array!64916 0))(
  ( (array!64917 (arr!31256 (Array (_ BitVec 32) ValueCell!11513)) (size!31774 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5620 0))(
  ( (LongMapFixedSize!5621 (defaultEntry!6184 Int) (mask!29993 (_ BitVec 32)) (extraKeys!5916 (_ BitVec 32)) (zeroValue!6020 V!37451) (minValue!6020 V!37451) (_size!2865 (_ BitVec 32)) (_keys!11354 array!64914) (_values!6207 array!64916) (_vacant!2865 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5620)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64914 (_ BitVec 32)) SeekEntryResult!9722)

(assert (=> b!1032193 (= lt!455991 (seekEntry!0 key!909 (_keys!11354 thiss!1427) (mask!29993 thiss!1427)))))

(declare-fun res!690023 () Bool)

(assert (=> start!90142 (=> (not res!690023) (not e!583209))))

(declare-fun valid!2078 (LongMapFixedSize!5620) Bool)

(assert (=> start!90142 (= res!690023 (valid!2078 thiss!1427))))

(assert (=> start!90142 e!583209))

(declare-fun e!583210 () Bool)

(assert (=> start!90142 e!583210))

(assert (=> start!90142 true))

(declare-fun b!1032194 () Bool)

(declare-fun e!583213 () Bool)

(declare-fun e!583208 () Bool)

(assert (=> b!1032194 (= e!583213 (and e!583208 mapRes!38103))))

(declare-fun condMapEmpty!38103 () Bool)

(declare-fun mapDefault!38103 () ValueCell!11513)

