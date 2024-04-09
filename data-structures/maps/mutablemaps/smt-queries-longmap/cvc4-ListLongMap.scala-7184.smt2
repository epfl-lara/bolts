; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92024 () Bool)

(assert start!92024)

(declare-fun b!1046073 () Bool)

(declare-fun b_free!21161 () Bool)

(declare-fun b_next!21161 () Bool)

(assert (=> b!1046073 (= b_free!21161 (not b_next!21161))))

(declare-fun tp!74746 () Bool)

(declare-fun b_and!33835 () Bool)

(assert (=> b!1046073 (= tp!74746 b_and!33835)))

(declare-fun b!1046069 () Bool)

(declare-fun e!593093 () Bool)

(declare-fun e!593092 () Bool)

(assert (=> b!1046069 (= e!593093 e!593092)))

(declare-fun res!696520 () Bool)

(assert (=> b!1046069 (=> (not res!696520) (not e!593092))))

(declare-datatypes ((SeekEntryResult!9854 0))(
  ( (MissingZero!9854 (index!41786 (_ BitVec 32))) (Found!9854 (index!41787 (_ BitVec 32))) (Intermediate!9854 (undefined!10666 Bool) (index!41788 (_ BitVec 32)) (x!93455 (_ BitVec 32))) (Undefined!9854) (MissingVacant!9854 (index!41789 (_ BitVec 32))) )
))
(declare-fun lt!462046 () SeekEntryResult!9854)

(assert (=> b!1046069 (= res!696520 (is-Found!9854 lt!462046))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!38047 0))(
  ( (V!38048 (val!12491 Int)) )
))
(declare-datatypes ((ValueCell!11737 0))(
  ( (ValueCellFull!11737 (v!15089 V!38047)) (EmptyCell!11737) )
))
(declare-datatypes ((array!65924 0))(
  ( (array!65925 (arr!31703 (Array (_ BitVec 32) (_ BitVec 64))) (size!32239 (_ BitVec 32))) )
))
(declare-datatypes ((array!65926 0))(
  ( (array!65927 (arr!31704 (Array (_ BitVec 32) ValueCell!11737)) (size!32240 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6068 0))(
  ( (LongMapFixedSize!6069 (defaultEntry!6432 Int) (mask!30568 (_ BitVec 32)) (extraKeys!6160 (_ BitVec 32)) (zeroValue!6266 V!38047) (minValue!6266 V!38047) (_size!3089 (_ BitVec 32)) (_keys!11703 array!65924) (_values!6455 array!65926) (_vacant!3089 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6068)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65924 (_ BitVec 32)) SeekEntryResult!9854)

(assert (=> b!1046069 (= lt!462046 (seekEntry!0 key!909 (_keys!11703 thiss!1427) (mask!30568 thiss!1427)))))

(declare-fun b!1046070 () Bool)

(declare-fun e!593095 () Bool)

(declare-fun e!593089 () Bool)

(declare-fun mapRes!38966 () Bool)

(assert (=> b!1046070 (= e!593095 (and e!593089 mapRes!38966))))

(declare-fun condMapEmpty!38966 () Bool)

(declare-fun mapDefault!38966 () ValueCell!11737)

