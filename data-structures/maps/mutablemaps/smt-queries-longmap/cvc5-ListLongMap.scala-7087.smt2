; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89644 () Bool)

(assert start!89644)

(declare-fun b!1027688 () Bool)

(declare-fun b_free!20575 () Bool)

(declare-fun b_next!20575 () Bool)

(assert (=> b!1027688 (= b_free!20575 (not b_next!20575))))

(declare-fun tp!72774 () Bool)

(declare-fun b_and!32851 () Bool)

(assert (=> b!1027688 (= tp!72774 b_and!32851)))

(declare-fun mapNonEmpty!37874 () Bool)

(declare-fun mapRes!37874 () Bool)

(declare-fun tp!72775 () Bool)

(declare-fun e!580082 () Bool)

(assert (=> mapNonEmpty!37874 (= mapRes!37874 (and tp!72775 e!580082))))

(declare-datatypes ((V!37267 0))(
  ( (V!37268 (val!12198 Int)) )
))
(declare-datatypes ((ValueCell!11444 0))(
  ( (ValueCellFull!11444 (v!14768 V!37267)) (EmptyCell!11444) )
))
(declare-fun mapValue!37874 () ValueCell!11444)

(declare-fun mapKey!37874 () (_ BitVec 32))

(declare-fun mapRest!37874 () (Array (_ BitVec 32) ValueCell!11444))

(declare-datatypes ((array!64626 0))(
  ( (array!64627 (arr!31117 (Array (_ BitVec 32) (_ BitVec 64))) (size!31631 (_ BitVec 32))) )
))
(declare-datatypes ((array!64628 0))(
  ( (array!64629 (arr!31118 (Array (_ BitVec 32) ValueCell!11444)) (size!31632 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5482 0))(
  ( (LongMapFixedSize!5483 (defaultEntry!6095 Int) (mask!29814 (_ BitVec 32)) (extraKeys!5827 (_ BitVec 32)) (zeroValue!5931 V!37267) (minValue!5931 V!37267) (_size!2796 (_ BitVec 32)) (_keys!11241 array!64626) (_values!6118 array!64628) (_vacant!2796 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5482)

(assert (=> mapNonEmpty!37874 (= (arr!31118 (_values!6118 thiss!1427)) (store mapRest!37874 mapKey!37874 mapValue!37874))))

(declare-fun b!1027684 () Bool)

(declare-fun e!580081 () Bool)

(declare-fun e!580078 () Bool)

(assert (=> b!1027684 (= e!580081 e!580078)))

(declare-fun res!687898 () Bool)

(assert (=> b!1027684 (=> (not res!687898) (not e!580078))))

(declare-datatypes ((SeekEntryResult!9662 0))(
  ( (MissingZero!9662 (index!41018 (_ BitVec 32))) (Found!9662 (index!41019 (_ BitVec 32))) (Intermediate!9662 (undefined!10474 Bool) (index!41020 (_ BitVec 32)) (x!91441 (_ BitVec 32))) (Undefined!9662) (MissingVacant!9662 (index!41021 (_ BitVec 32))) )
))
(declare-fun lt!452472 () SeekEntryResult!9662)

(assert (=> b!1027684 (= res!687898 (is-Found!9662 lt!452472))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64626 (_ BitVec 32)) SeekEntryResult!9662)

(assert (=> b!1027684 (= lt!452472 (seekEntry!0 key!909 (_keys!11241 thiss!1427) (mask!29814 thiss!1427)))))

(declare-fun mapIsEmpty!37874 () Bool)

(assert (=> mapIsEmpty!37874 mapRes!37874))

(declare-fun b!1027685 () Bool)

(declare-fun e!580080 () Bool)

(declare-fun e!580075 () Bool)

(assert (=> b!1027685 (= e!580080 (and e!580075 mapRes!37874))))

(declare-fun condMapEmpty!37874 () Bool)

(declare-fun mapDefault!37874 () ValueCell!11444)

