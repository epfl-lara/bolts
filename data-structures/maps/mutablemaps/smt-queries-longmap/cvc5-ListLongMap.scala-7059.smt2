; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89444 () Bool)

(assert start!89444)

(declare-fun b!1025045 () Bool)

(declare-fun b_free!20407 () Bool)

(declare-fun b_next!20407 () Bool)

(assert (=> b!1025045 (= b_free!20407 (not b_next!20407))))

(declare-fun tp!72267 () Bool)

(declare-fun b_and!32671 () Bool)

(assert (=> b!1025045 (= tp!72267 b_and!32671)))

(declare-fun b!1025035 () Bool)

(declare-fun res!686369 () Bool)

(declare-fun e!577948 () Bool)

(assert (=> b!1025035 (=> res!686369 e!577948)))

(declare-datatypes ((List!21851 0))(
  ( (Nil!21848) (Cons!21847 (h!23045 (_ BitVec 64)) (t!30920 List!21851)) )
))
(declare-fun noDuplicate!1487 (List!21851) Bool)

(assert (=> b!1025035 (= res!686369 (not (noDuplicate!1487 Nil!21848)))))

(declare-fun res!686368 () Bool)

(declare-fun e!577949 () Bool)

(assert (=> start!89444 (=> (not res!686368) (not e!577949))))

(declare-datatypes ((V!37043 0))(
  ( (V!37044 (val!12114 Int)) )
))
(declare-datatypes ((ValueCell!11360 0))(
  ( (ValueCellFull!11360 (v!14684 V!37043)) (EmptyCell!11360) )
))
(declare-datatypes ((array!64288 0))(
  ( (array!64289 (arr!30949 (Array (_ BitVec 32) (_ BitVec 64))) (size!31463 (_ BitVec 32))) )
))
(declare-datatypes ((array!64290 0))(
  ( (array!64291 (arr!30950 (Array (_ BitVec 32) ValueCell!11360)) (size!31464 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5314 0))(
  ( (LongMapFixedSize!5315 (defaultEntry!6009 Int) (mask!29668 (_ BitVec 32)) (extraKeys!5741 (_ BitVec 32)) (zeroValue!5845 V!37043) (minValue!5845 V!37043) (_size!2712 (_ BitVec 32)) (_keys!11153 array!64288) (_values!6032 array!64290) (_vacant!2712 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5314)

(declare-fun valid!1974 (LongMapFixedSize!5314) Bool)

(assert (=> start!89444 (= res!686368 (valid!1974 thiss!1427))))

(assert (=> start!89444 e!577949))

(declare-fun e!577945 () Bool)

(assert (=> start!89444 e!577945))

(assert (=> start!89444 true))

(declare-fun b!1025036 () Bool)

(declare-fun e!577947 () Bool)

(assert (=> b!1025036 (= e!577949 e!577947)))

(declare-fun res!686366 () Bool)

(assert (=> b!1025036 (=> (not res!686366) (not e!577947))))

(declare-datatypes ((SeekEntryResult!9599 0))(
  ( (MissingZero!9599 (index!40766 (_ BitVec 32))) (Found!9599 (index!40767 (_ BitVec 32))) (Intermediate!9599 (undefined!10411 Bool) (index!40768 (_ BitVec 32)) (x!91136 (_ BitVec 32))) (Undefined!9599) (MissingVacant!9599 (index!40769 (_ BitVec 32))) )
))
(declare-fun lt!450771 () SeekEntryResult!9599)

(assert (=> b!1025036 (= res!686366 (is-Found!9599 lt!450771))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64288 (_ BitVec 32)) SeekEntryResult!9599)

(assert (=> b!1025036 (= lt!450771 (seekEntry!0 key!909 (_keys!11153 thiss!1427) (mask!29668 thiss!1427)))))

(declare-fun b!1025037 () Bool)

(declare-fun e!577950 () Bool)

(declare-fun e!577946 () Bool)

(declare-fun mapRes!37619 () Bool)

(assert (=> b!1025037 (= e!577950 (and e!577946 mapRes!37619))))

(declare-fun condMapEmpty!37619 () Bool)

(declare-fun mapDefault!37619 () ValueCell!11360)

