; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89532 () Bool)

(assert start!89532)

(declare-fun b!1026325 () Bool)

(declare-fun b_free!20495 () Bool)

(declare-fun b_next!20495 () Bool)

(assert (=> b!1026325 (= b_free!20495 (not b_next!20495))))

(declare-fun tp!72532 () Bool)

(declare-fun b_and!32759 () Bool)

(assert (=> b!1026325 (= tp!72532 b_and!32759)))

(declare-fun b!1026317 () Bool)

(declare-fun e!579007 () Bool)

(declare-fun tp_is_empty!24215 () Bool)

(assert (=> b!1026317 (= e!579007 tp_is_empty!24215)))

(declare-fun b!1026318 () Bool)

(declare-fun res!687120 () Bool)

(declare-fun e!579008 () Bool)

(assert (=> b!1026318 (=> res!687120 e!579008)))

(declare-datatypes ((V!37159 0))(
  ( (V!37160 (val!12158 Int)) )
))
(declare-datatypes ((ValueCell!11404 0))(
  ( (ValueCellFull!11404 (v!14728 V!37159)) (EmptyCell!11404) )
))
(declare-datatypes ((array!64464 0))(
  ( (array!64465 (arr!31037 (Array (_ BitVec 32) (_ BitVec 64))) (size!31551 (_ BitVec 32))) )
))
(declare-datatypes ((array!64466 0))(
  ( (array!64467 (arr!31038 (Array (_ BitVec 32) ValueCell!11404)) (size!31552 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5402 0))(
  ( (LongMapFixedSize!5403 (defaultEntry!6053 Int) (mask!29740 (_ BitVec 32)) (extraKeys!5785 (_ BitVec 32)) (zeroValue!5889 V!37159) (minValue!5889 V!37159) (_size!2756 (_ BitVec 32)) (_keys!11197 array!64464) (_values!6076 array!64466) (_vacant!2756 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5402)

(assert (=> b!1026318 (= res!687120 (or (not (= (size!31552 (_values!6076 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29740 thiss!1427)))) (not (= (size!31551 (_keys!11197 thiss!1427)) (size!31552 (_values!6076 thiss!1427)))) (bvslt (mask!29740 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5785 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5785 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026319 () Bool)

(declare-fun e!579006 () Bool)

(declare-fun e!579004 () Bool)

(assert (=> b!1026319 (= e!579006 e!579004)))

(declare-fun res!687122 () Bool)

(assert (=> b!1026319 (=> (not res!687122) (not e!579004))))

(declare-datatypes ((SeekEntryResult!9633 0))(
  ( (MissingZero!9633 (index!40902 (_ BitVec 32))) (Found!9633 (index!40903 (_ BitVec 32))) (Intermediate!9633 (undefined!10445 Bool) (index!40904 (_ BitVec 32)) (x!91282 (_ BitVec 32))) (Undefined!9633) (MissingVacant!9633 (index!40905 (_ BitVec 32))) )
))
(declare-fun lt!451489 () SeekEntryResult!9633)

(assert (=> b!1026319 (= res!687122 (is-Found!9633 lt!451489))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64464 (_ BitVec 32)) SeekEntryResult!9633)

(assert (=> b!1026319 (= lt!451489 (seekEntry!0 key!909 (_keys!11197 thiss!1427) (mask!29740 thiss!1427)))))

(declare-fun b!1026320 () Bool)

(declare-fun e!579002 () Bool)

(declare-fun mapRes!37751 () Bool)

(assert (=> b!1026320 (= e!579002 (and e!579007 mapRes!37751))))

(declare-fun condMapEmpty!37751 () Bool)

(declare-fun mapDefault!37751 () ValueCell!11404)

