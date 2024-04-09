; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75772 () Bool)

(assert start!75772)

(declare-fun b!890517 () Bool)

(declare-fun b_free!15715 () Bool)

(declare-fun b_next!15715 () Bool)

(assert (=> b!890517 (= b_free!15715 (not b_next!15715))))

(declare-fun tp!55114 () Bool)

(declare-fun b_and!25973 () Bool)

(assert (=> b!890517 (= tp!55114 b_and!25973)))

(declare-fun b!890513 () Bool)

(declare-fun e!496759 () Bool)

(declare-fun tp_is_empty!18043 () Bool)

(assert (=> b!890513 (= e!496759 tp_is_empty!18043)))

(declare-fun b!890514 () Bool)

(declare-fun e!496760 () Bool)

(declare-fun e!496766 () Bool)

(assert (=> b!890514 (= e!496760 (not e!496766))))

(declare-fun res!603480 () Bool)

(assert (=> b!890514 (=> res!603480 e!496766)))

(declare-datatypes ((SeekEntryResult!8799 0))(
  ( (MissingZero!8799 (index!37566 (_ BitVec 32))) (Found!8799 (index!37567 (_ BitVec 32))) (Intermediate!8799 (undefined!9611 Bool) (index!37568 (_ BitVec 32)) (x!75656 (_ BitVec 32))) (Undefined!8799) (MissingVacant!8799 (index!37569 (_ BitVec 32))) )
))
(declare-fun lt!402326 () SeekEntryResult!8799)

(assert (=> b!890514 (= res!603480 (not (is-Found!8799 lt!402326)))))

(declare-fun e!496764 () Bool)

(assert (=> b!890514 e!496764))

(declare-fun res!603481 () Bool)

(assert (=> b!890514 (=> res!603481 e!496764)))

(assert (=> b!890514 (= res!603481 (not (is-Found!8799 lt!402326)))))

(declare-datatypes ((Unit!30283 0))(
  ( (Unit!30284) )
))
(declare-fun lt!402324 () Unit!30283)

(declare-datatypes ((array!52052 0))(
  ( (array!52053 (arr!25028 (Array (_ BitVec 32) (_ BitVec 64))) (size!25473 (_ BitVec 32))) )
))
(declare-datatypes ((V!29023 0))(
  ( (V!29024 (val!9072 Int)) )
))
(declare-datatypes ((ValueCell!8540 0))(
  ( (ValueCellFull!8540 (v!11544 V!29023)) (EmptyCell!8540) )
))
(declare-datatypes ((array!52054 0))(
  ( (array!52055 (arr!25029 (Array (_ BitVec 32) ValueCell!8540)) (size!25474 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4096 0))(
  ( (LongMapFixedSize!4097 (defaultEntry!5245 Int) (mask!25717 (_ BitVec 32)) (extraKeys!4939 (_ BitVec 32)) (zeroValue!5043 V!29023) (minValue!5043 V!29023) (_size!2103 (_ BitVec 32)) (_keys!9924 array!52052) (_values!5230 array!52054) (_vacant!2103 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4096)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!21 (array!52052 array!52054 (_ BitVec 32) (_ BitVec 32) V!29023 V!29023 (_ BitVec 64)) Unit!30283)

(assert (=> b!890514 (= lt!402324 (lemmaSeekEntryGivesInRangeIndex!21 (_keys!9924 thiss!1181) (_values!5230 thiss!1181) (mask!25717 thiss!1181) (extraKeys!4939 thiss!1181) (zeroValue!5043 thiss!1181) (minValue!5043 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52052 (_ BitVec 32)) SeekEntryResult!8799)

(assert (=> b!890514 (= lt!402326 (seekEntry!0 key!785 (_keys!9924 thiss!1181) (mask!25717 thiss!1181)))))

(declare-fun b!890515 () Bool)

(declare-fun e!496763 () Bool)

(declare-fun mapRes!28619 () Bool)

(assert (=> b!890515 (= e!496763 (and e!496759 mapRes!28619))))

(declare-fun condMapEmpty!28619 () Bool)

(declare-fun mapDefault!28619 () ValueCell!8540)

