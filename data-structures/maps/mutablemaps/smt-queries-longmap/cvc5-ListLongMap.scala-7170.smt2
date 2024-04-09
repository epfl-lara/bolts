; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91616 () Bool)

(assert start!91616)

(declare-fun b!1042802 () Bool)

(declare-fun b_free!21073 () Bool)

(declare-fun b_next!21073 () Bool)

(assert (=> b!1042802 (= b_free!21073 (not b_next!21073))))

(declare-fun tp!74452 () Bool)

(declare-fun b_and!33623 () Bool)

(assert (=> b!1042802 (= tp!74452 b_and!33623)))

(declare-fun b!1042800 () Bool)

(declare-fun res!694877 () Bool)

(declare-fun e!590802 () Bool)

(assert (=> b!1042800 (=> (not res!694877) (not e!590802))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1042800 (= res!694877 (not (= key!909 (bvneg key!909))))))

(declare-fun res!694883 () Bool)

(assert (=> start!91616 (=> (not res!694883) (not e!590802))))

(declare-datatypes ((V!37931 0))(
  ( (V!37932 (val!12447 Int)) )
))
(declare-datatypes ((ValueCell!11693 0))(
  ( (ValueCellFull!11693 (v!15039 V!37931)) (EmptyCell!11693) )
))
(declare-datatypes ((array!65728 0))(
  ( (array!65729 (arr!31615 (Array (_ BitVec 32) (_ BitVec 64))) (size!32151 (_ BitVec 32))) )
))
(declare-datatypes ((array!65730 0))(
  ( (array!65731 (arr!31616 (Array (_ BitVec 32) ValueCell!11693)) (size!32152 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5980 0))(
  ( (LongMapFixedSize!5981 (defaultEntry!6372 Int) (mask!30442 (_ BitVec 32)) (extraKeys!6100 (_ BitVec 32)) (zeroValue!6206 V!37931) (minValue!6206 V!37931) (_size!3045 (_ BitVec 32)) (_keys!11623 array!65728) (_values!6395 array!65730) (_vacant!3045 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5980)

(declare-fun valid!2198 (LongMapFixedSize!5980) Bool)

(assert (=> start!91616 (= res!694883 (valid!2198 thiss!1427))))

(assert (=> start!91616 e!590802))

(declare-fun e!590804 () Bool)

(assert (=> start!91616 e!590804))

(assert (=> start!91616 true))

(declare-fun b!1042801 () Bool)

(declare-fun res!694882 () Bool)

(declare-fun e!590809 () Bool)

(assert (=> b!1042801 (=> res!694882 e!590809)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65728 (_ BitVec 32)) Bool)

(assert (=> b!1042801 (= res!694882 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11623 thiss!1427) (mask!30442 thiss!1427))))))

(declare-fun e!590803 () Bool)

(declare-fun tp_is_empty!24793 () Bool)

(declare-fun array_inv!24271 (array!65728) Bool)

(declare-fun array_inv!24272 (array!65730) Bool)

(assert (=> b!1042802 (= e!590804 (and tp!74452 tp_is_empty!24793 (array_inv!24271 (_keys!11623 thiss!1427)) (array_inv!24272 (_values!6395 thiss!1427)) e!590803))))

(declare-fun b!1042803 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1042803 (= e!590809 (validKeyInArray!0 key!909))))

(declare-fun b!1042804 () Bool)

(declare-fun res!694880 () Bool)

(assert (=> b!1042804 (=> res!694880 e!590809)))

(declare-datatypes ((List!22106 0))(
  ( (Nil!22103) (Cons!22102 (h!23310 (_ BitVec 64)) (t!31327 List!22106)) )
))
(declare-fun arrayNoDuplicates!0 (array!65728 (_ BitVec 32) List!22106) Bool)

(assert (=> b!1042804 (= res!694880 (not (arrayNoDuplicates!0 (_keys!11623 thiss!1427) #b00000000000000000000000000000000 Nil!22103)))))

(declare-fun b!1042805 () Bool)

(declare-fun res!694878 () Bool)

(assert (=> b!1042805 (=> res!694878 e!590809)))

(declare-datatypes ((SeekEntryResult!9822 0))(
  ( (MissingZero!9822 (index!41658 (_ BitVec 32))) (Found!9822 (index!41659 (_ BitVec 32))) (Intermediate!9822 (undefined!10634 Bool) (index!41660 (_ BitVec 32)) (x!93101 (_ BitVec 32))) (Undefined!9822) (MissingVacant!9822 (index!41661 (_ BitVec 32))) )
))
(declare-fun lt!459634 () SeekEntryResult!9822)

(assert (=> b!1042805 (= res!694878 (or (bvslt (index!41659 lt!459634) #b00000000000000000000000000000000) (bvsge (index!41659 lt!459634) (size!32151 (_keys!11623 thiss!1427)))))))

(declare-fun b!1042806 () Bool)

(declare-fun e!590805 () Bool)

(assert (=> b!1042806 (= e!590805 tp_is_empty!24793)))

(declare-fun b!1042807 () Bool)

(declare-fun e!590807 () Bool)

(declare-fun mapRes!38804 () Bool)

(assert (=> b!1042807 (= e!590803 (and e!590807 mapRes!38804))))

(declare-fun condMapEmpty!38804 () Bool)

(declare-fun mapDefault!38804 () ValueCell!11693)

