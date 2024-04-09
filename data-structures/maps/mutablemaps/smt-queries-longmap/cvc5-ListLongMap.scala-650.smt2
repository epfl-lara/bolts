; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16260 () Bool)

(assert start!16260)

(declare-fun b!162074 () Bool)

(declare-fun b_free!3709 () Bool)

(declare-fun b_next!3709 () Bool)

(assert (=> b!162074 (= b_free!3709 (not b_next!3709))))

(declare-fun tp!13697 () Bool)

(declare-fun b_and!10141 () Bool)

(assert (=> b!162074 (= tp!13697 b_and!10141)))

(declare-fun b!162068 () Bool)

(declare-fun e!106113 () Bool)

(declare-fun tp_is_empty!3511 () Bool)

(assert (=> b!162068 (= e!106113 tp_is_empty!3511)))

(declare-fun b!162069 () Bool)

(declare-fun res!76795 () Bool)

(declare-fun e!106109 () Bool)

(assert (=> b!162069 (=> (not res!76795) (not e!106109))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162069 (= res!76795 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162070 () Bool)

(declare-fun e!106112 () Bool)

(assert (=> b!162070 (= e!106109 e!106112)))

(declare-fun res!76794 () Bool)

(assert (=> b!162070 (=> (not res!76794) (not e!106112))))

(declare-datatypes ((SeekEntryResult!381 0))(
  ( (MissingZero!381 (index!3692 (_ BitVec 32))) (Found!381 (index!3693 (_ BitVec 32))) (Intermediate!381 (undefined!1193 Bool) (index!3694 (_ BitVec 32)) (x!17925 (_ BitVec 32))) (Undefined!381) (MissingVacant!381 (index!3695 (_ BitVec 32))) )
))
(declare-fun lt!82400 () SeekEntryResult!381)

(assert (=> b!162070 (= res!76794 (and (not (is-Undefined!381 lt!82400)) (is-MissingVacant!381 lt!82400)))))

(declare-datatypes ((V!4329 0))(
  ( (V!4330 (val!1800 Int)) )
))
(declare-datatypes ((ValueCell!1412 0))(
  ( (ValueCellFull!1412 (v!3661 V!4329)) (EmptyCell!1412) )
))
(declare-datatypes ((array!6100 0))(
  ( (array!6101 (arr!2894 (Array (_ BitVec 32) (_ BitVec 64))) (size!3178 (_ BitVec 32))) )
))
(declare-datatypes ((array!6102 0))(
  ( (array!6103 (arr!2895 (Array (_ BitVec 32) ValueCell!1412)) (size!3179 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1732 0))(
  ( (LongMapFixedSize!1733 (defaultEntry!3308 Int) (mask!7920 (_ BitVec 32)) (extraKeys!3049 (_ BitVec 32)) (zeroValue!3151 V!4329) (minValue!3151 V!4329) (_size!915 (_ BitVec 32)) (_keys!5109 array!6100) (_values!3291 array!6102) (_vacant!915 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1732)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6100 (_ BitVec 32)) SeekEntryResult!381)

(assert (=> b!162070 (= lt!82400 (seekEntryOrOpen!0 key!828 (_keys!5109 thiss!1248) (mask!7920 thiss!1248)))))

(declare-fun b!162071 () Bool)

(declare-fun e!106114 () Bool)

(assert (=> b!162071 (= e!106114 tp_is_empty!3511)))

(declare-fun b!162072 () Bool)

(assert (=> b!162072 (= e!106112 false)))

(declare-fun lt!82399 () Bool)

(declare-fun v!309 () V!4329)

(declare-fun valid!778 (LongMapFixedSize!1732) Bool)

(declare-datatypes ((tuple2!2982 0))(
  ( (tuple2!2983 (_1!1501 Bool) (_2!1501 LongMapFixedSize!1732)) )
))
(declare-fun updateHelperNewKey!79 (LongMapFixedSize!1732 (_ BitVec 64) V!4329 (_ BitVec 32)) tuple2!2982)

(assert (=> b!162072 (= lt!82399 (valid!778 (_2!1501 (updateHelperNewKey!79 thiss!1248 key!828 v!309 (index!3695 lt!82400)))))))

(declare-fun b!162073 () Bool)

(declare-fun e!106110 () Bool)

(declare-fun mapRes!5954 () Bool)

(assert (=> b!162073 (= e!106110 (and e!106113 mapRes!5954))))

(declare-fun condMapEmpty!5954 () Bool)

(declare-fun mapDefault!5954 () ValueCell!1412)

