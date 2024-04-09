; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91018 () Bool)

(assert start!91018)

(declare-fun b!1039233 () Bool)

(declare-fun b_free!20971 () Bool)

(declare-fun b_next!20971 () Bool)

(assert (=> b!1039233 (= b_free!20971 (not b_next!20971))))

(declare-fun tp!74091 () Bool)

(declare-fun b_and!33521 () Bool)

(assert (=> b!1039233 (= tp!74091 b_and!33521)))

(declare-fun b!1039228 () Bool)

(declare-fun res!693170 () Bool)

(declare-fun e!588200 () Bool)

(assert (=> b!1039228 (=> res!693170 e!588200)))

(declare-datatypes ((V!37795 0))(
  ( (V!37796 (val!12396 Int)) )
))
(declare-datatypes ((ValueCell!11642 0))(
  ( (ValueCellFull!11642 (v!14984 V!37795)) (EmptyCell!11642) )
))
(declare-datatypes ((array!65490 0))(
  ( (array!65491 (arr!31513 (Array (_ BitVec 32) (_ BitVec 64))) (size!32045 (_ BitVec 32))) )
))
(declare-datatypes ((array!65492 0))(
  ( (array!65493 (arr!31514 (Array (_ BitVec 32) ValueCell!11642)) (size!32046 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5878 0))(
  ( (LongMapFixedSize!5879 (defaultEntry!6321 Int) (mask!30278 (_ BitVec 32)) (extraKeys!6049 (_ BitVec 32)) (zeroValue!6155 V!37795) (minValue!6155 V!37795) (_size!2994 (_ BitVec 32)) (_keys!11527 array!65490) (_values!6344 array!65492) (_vacant!2994 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5878)

(declare-datatypes ((SeekEntryResult!9781 0))(
  ( (MissingZero!9781 (index!41494 (_ BitVec 32))) (Found!9781 (index!41495 (_ BitVec 32))) (Intermediate!9781 (undefined!10593 Bool) (index!41496 (_ BitVec 32)) (x!92752 (_ BitVec 32))) (Undefined!9781) (MissingVacant!9781 (index!41497 (_ BitVec 32))) )
))
(declare-fun lt!458021 () SeekEntryResult!9781)

(assert (=> b!1039228 (= res!693170 (or (not (= (size!32045 (_keys!11527 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30278 thiss!1427)))) (bvslt (index!41495 lt!458021) #b00000000000000000000000000000000) (bvsge (index!41495 lt!458021) (size!32045 (_keys!11527 thiss!1427)))))))

(declare-fun b!1039229 () Bool)

(declare-fun e!588202 () Bool)

(declare-fun e!588206 () Bool)

(assert (=> b!1039229 (= e!588202 e!588206)))

(declare-fun res!693169 () Bool)

(assert (=> b!1039229 (=> (not res!693169) (not e!588206))))

(assert (=> b!1039229 (= res!693169 (is-Found!9781 lt!458021))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65490 (_ BitVec 32)) SeekEntryResult!9781)

(assert (=> b!1039229 (= lt!458021 (seekEntry!0 key!909 (_keys!11527 thiss!1427) (mask!30278 thiss!1427)))))

(declare-fun b!1039230 () Bool)

(declare-fun res!693165 () Bool)

(assert (=> b!1039230 (=> (not res!693165) (not e!588202))))

(assert (=> b!1039230 (= res!693165 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1039231 () Bool)

(declare-fun e!588203 () Bool)

(declare-fun e!588201 () Bool)

(declare-fun mapRes!38596 () Bool)

(assert (=> b!1039231 (= e!588203 (and e!588201 mapRes!38596))))

(declare-fun condMapEmpty!38596 () Bool)

(declare-fun mapDefault!38596 () ValueCell!11642)

