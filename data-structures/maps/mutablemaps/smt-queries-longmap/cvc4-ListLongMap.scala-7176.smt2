; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91772 () Bool)

(assert start!91772)

(declare-fun b!1044005 () Bool)

(declare-fun b_free!21113 () Bool)

(declare-fun b_next!21113 () Bool)

(assert (=> b!1044005 (= b_free!21113 (not b_next!21113))))

(declare-fun tp!74584 () Bool)

(declare-fun b_and!33691 () Bool)

(assert (=> b!1044005 (= tp!74584 b_and!33691)))

(declare-fun b!1043999 () Bool)

(declare-fun res!695503 () Bool)

(declare-fun e!591665 () Bool)

(assert (=> b!1043999 (=> (not res!695503) (not e!591665))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1043999 (= res!695503 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1044000 () Bool)

(declare-fun e!591664 () Bool)

(declare-fun tp_is_empty!24833 () Bool)

(assert (=> b!1044000 (= e!591664 tp_is_empty!24833)))

(declare-fun b!1044001 () Bool)

(declare-fun e!591663 () Bool)

(assert (=> b!1044001 (= e!591665 e!591663)))

(declare-fun res!695502 () Bool)

(assert (=> b!1044001 (=> (not res!695502) (not e!591663))))

(declare-datatypes ((SeekEntryResult!9837 0))(
  ( (MissingZero!9837 (index!41718 (_ BitVec 32))) (Found!9837 (index!41719 (_ BitVec 32))) (Intermediate!9837 (undefined!10649 Bool) (index!41720 (_ BitVec 32)) (x!93218 (_ BitVec 32))) (Undefined!9837) (MissingVacant!9837 (index!41721 (_ BitVec 32))) )
))
(declare-fun lt!460398 () SeekEntryResult!9837)

(assert (=> b!1044001 (= res!695502 (is-Found!9837 lt!460398))))

(declare-datatypes ((V!37983 0))(
  ( (V!37984 (val!12467 Int)) )
))
(declare-datatypes ((ValueCell!11713 0))(
  ( (ValueCellFull!11713 (v!15059 V!37983)) (EmptyCell!11713) )
))
(declare-datatypes ((array!65816 0))(
  ( (array!65817 (arr!31655 (Array (_ BitVec 32) (_ BitVec 64))) (size!32191 (_ BitVec 32))) )
))
(declare-datatypes ((array!65818 0))(
  ( (array!65819 (arr!31656 (Array (_ BitVec 32) ValueCell!11713)) (size!32192 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6020 0))(
  ( (LongMapFixedSize!6021 (defaultEntry!6396 Int) (mask!30492 (_ BitVec 32)) (extraKeys!6124 (_ BitVec 32)) (zeroValue!6230 V!37983) (minValue!6230 V!37983) (_size!3065 (_ BitVec 32)) (_keys!11655 array!65816) (_values!6419 array!65818) (_vacant!3065 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6020)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65816 (_ BitVec 32)) SeekEntryResult!9837)

(assert (=> b!1044001 (= lt!460398 (seekEntry!0 key!909 (_keys!11655 thiss!1427) (mask!30492 thiss!1427)))))

(declare-fun mapNonEmpty!38876 () Bool)

(declare-fun mapRes!38876 () Bool)

(declare-fun tp!74583 () Bool)

(declare-fun e!591667 () Bool)

(assert (=> mapNonEmpty!38876 (= mapRes!38876 (and tp!74583 e!591667))))

(declare-fun mapRest!38876 () (Array (_ BitVec 32) ValueCell!11713))

(declare-fun mapKey!38876 () (_ BitVec 32))

(declare-fun mapValue!38876 () ValueCell!11713)

(assert (=> mapNonEmpty!38876 (= (arr!31656 (_values!6419 thiss!1427)) (store mapRest!38876 mapKey!38876 mapValue!38876))))

(declare-fun res!695500 () Bool)

(assert (=> start!91772 (=> (not res!695500) (not e!591665))))

(declare-fun valid!2214 (LongMapFixedSize!6020) Bool)

(assert (=> start!91772 (= res!695500 (valid!2214 thiss!1427))))

(assert (=> start!91772 e!591665))

(declare-fun e!591666 () Bool)

(assert (=> start!91772 e!591666))

(assert (=> start!91772 true))

(declare-fun mapIsEmpty!38876 () Bool)

(assert (=> mapIsEmpty!38876 mapRes!38876))

(declare-fun b!1044002 () Bool)

(declare-fun e!591660 () Bool)

(assert (=> b!1044002 (= e!591660 (and e!591664 mapRes!38876))))

(declare-fun condMapEmpty!38876 () Bool)

(declare-fun mapDefault!38876 () ValueCell!11713)

