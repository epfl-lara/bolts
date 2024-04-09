; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19486 () Bool)

(assert start!19486)

(declare-fun b!191201 () Bool)

(declare-fun b_free!4675 () Bool)

(declare-fun b_next!4675 () Bool)

(assert (=> b!191201 (= b_free!4675 (not b_next!4675))))

(declare-fun tp!16871 () Bool)

(declare-fun b_and!11363 () Bool)

(assert (=> b!191201 (= tp!16871 b_and!11363)))

(declare-fun b!191193 () Bool)

(declare-fun e!125816 () Bool)

(declare-fun tp_is_empty!4447 () Bool)

(assert (=> b!191193 (= e!125816 tp_is_empty!4447)))

(declare-fun res!90385 () Bool)

(declare-fun e!125823 () Bool)

(assert (=> start!19486 (=> (not res!90385) (not e!125823))))

(declare-datatypes ((V!5577 0))(
  ( (V!5578 (val!2268 Int)) )
))
(declare-datatypes ((ValueCell!1880 0))(
  ( (ValueCellFull!1880 (v!4201 V!5577)) (EmptyCell!1880) )
))
(declare-datatypes ((array!8130 0))(
  ( (array!8131 (arr!3830 (Array (_ BitVec 32) (_ BitVec 64))) (size!4152 (_ BitVec 32))) )
))
(declare-datatypes ((array!8132 0))(
  ( (array!8133 (arr!3831 (Array (_ BitVec 32) ValueCell!1880)) (size!4153 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2668 0))(
  ( (LongMapFixedSize!2669 (defaultEntry!3902 Int) (mask!9118 (_ BitVec 32)) (extraKeys!3639 (_ BitVec 32)) (zeroValue!3743 V!5577) (minValue!3743 V!5577) (_size!1383 (_ BitVec 32)) (_keys!5879 array!8130) (_values!3885 array!8132) (_vacant!1383 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2668)

(declare-fun valid!1087 (LongMapFixedSize!2668) Bool)

(assert (=> start!19486 (= res!90385 (valid!1087 thiss!1248))))

(assert (=> start!19486 e!125823))

(declare-fun e!125819 () Bool)

(assert (=> start!19486 e!125819))

(assert (=> start!19486 true))

(assert (=> start!19486 tp_is_empty!4447))

(declare-fun b!191194 () Bool)

(declare-fun res!90383 () Bool)

(assert (=> b!191194 (=> (not res!90383) (not e!125823))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!191194 (= res!90383 (not (= key!828 (bvneg key!828))))))

(declare-fun b!191195 () Bool)

(declare-fun e!125817 () Bool)

(assert (=> b!191195 (= e!125817 (or (not (= (size!4153 (_values!3885 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9118 thiss!1248)))) (not (= (size!4152 (_keys!5879 thiss!1248)) (size!4153 (_values!3885 thiss!1248)))) (bvsge (mask!9118 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!191196 () Bool)

(declare-fun e!125820 () Bool)

(assert (=> b!191196 (= e!125820 (not e!125817))))

(declare-fun res!90381 () Bool)

(assert (=> b!191196 (=> res!90381 e!125817)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!191196 (= res!90381 (not (validMask!0 (mask!9118 thiss!1248))))))

(declare-datatypes ((SeekEntryResult!686 0))(
  ( (MissingZero!686 (index!4914 (_ BitVec 32))) (Found!686 (index!4915 (_ BitVec 32))) (Intermediate!686 (undefined!1498 Bool) (index!4916 (_ BitVec 32)) (x!20540 (_ BitVec 32))) (Undefined!686) (MissingVacant!686 (index!4917 (_ BitVec 32))) )
))
(declare-fun lt!94920 () SeekEntryResult!686)

(declare-fun v!309 () V!5577)

(declare-datatypes ((tuple2!3522 0))(
  ( (tuple2!3523 (_1!1771 (_ BitVec 64)) (_2!1771 V!5577)) )
))
(declare-datatypes ((List!2441 0))(
  ( (Nil!2438) (Cons!2437 (h!3076 tuple2!3522) (t!7361 List!2441)) )
))
(declare-datatypes ((ListLongMap!2453 0))(
  ( (ListLongMap!2454 (toList!1242 List!2441)) )
))
(declare-fun lt!94925 () ListLongMap!2453)

(declare-fun +!300 (ListLongMap!2453 tuple2!3522) ListLongMap!2453)

(declare-fun getCurrentListMap!885 (array!8130 array!8132 (_ BitVec 32) (_ BitVec 32) V!5577 V!5577 (_ BitVec 32) Int) ListLongMap!2453)

(assert (=> b!191196 (= (+!300 lt!94925 (tuple2!3523 key!828 v!309)) (getCurrentListMap!885 (_keys!5879 thiss!1248) (array!8133 (store (arr!3831 (_values!3885 thiss!1248)) (index!4915 lt!94920) (ValueCellFull!1880 v!309)) (size!4153 (_values!3885 thiss!1248))) (mask!9118 thiss!1248) (extraKeys!3639 thiss!1248) (zeroValue!3743 thiss!1248) (minValue!3743 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3902 thiss!1248)))))

(declare-datatypes ((Unit!5779 0))(
  ( (Unit!5780) )
))
(declare-fun lt!94921 () Unit!5779)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!106 (array!8130 array!8132 (_ BitVec 32) (_ BitVec 32) V!5577 V!5577 (_ BitVec 32) (_ BitVec 64) V!5577 Int) Unit!5779)

(assert (=> b!191196 (= lt!94921 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!106 (_keys!5879 thiss!1248) (_values!3885 thiss!1248) (mask!9118 thiss!1248) (extraKeys!3639 thiss!1248) (zeroValue!3743 thiss!1248) (minValue!3743 thiss!1248) (index!4915 lt!94920) key!828 v!309 (defaultEntry!3902 thiss!1248)))))

(declare-fun lt!94922 () Unit!5779)

(declare-fun e!125822 () Unit!5779)

(assert (=> b!191196 (= lt!94922 e!125822)))

(declare-fun c!34408 () Bool)

(declare-fun contains!1349 (ListLongMap!2453 (_ BitVec 64)) Bool)

(assert (=> b!191196 (= c!34408 (contains!1349 lt!94925 key!828))))

(assert (=> b!191196 (= lt!94925 (getCurrentListMap!885 (_keys!5879 thiss!1248) (_values!3885 thiss!1248) (mask!9118 thiss!1248) (extraKeys!3639 thiss!1248) (zeroValue!3743 thiss!1248) (minValue!3743 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3902 thiss!1248)))))

(declare-fun b!191197 () Bool)

(assert (=> b!191197 (= e!125823 e!125820)))

(declare-fun res!90382 () Bool)

(assert (=> b!191197 (=> (not res!90382) (not e!125820))))

(assert (=> b!191197 (= res!90382 (and (not (is-Undefined!686 lt!94920)) (not (is-MissingVacant!686 lt!94920)) (not (is-MissingZero!686 lt!94920)) (is-Found!686 lt!94920)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8130 (_ BitVec 32)) SeekEntryResult!686)

(assert (=> b!191197 (= lt!94920 (seekEntryOrOpen!0 key!828 (_keys!5879 thiss!1248) (mask!9118 thiss!1248)))))

(declare-fun mapNonEmpty!7680 () Bool)

(declare-fun mapRes!7680 () Bool)

(declare-fun tp!16872 () Bool)

(declare-fun e!125815 () Bool)

(assert (=> mapNonEmpty!7680 (= mapRes!7680 (and tp!16872 e!125815))))

(declare-fun mapKey!7680 () (_ BitVec 32))

(declare-fun mapValue!7680 () ValueCell!1880)

(declare-fun mapRest!7680 () (Array (_ BitVec 32) ValueCell!1880))

(assert (=> mapNonEmpty!7680 (= (arr!3831 (_values!3885 thiss!1248)) (store mapRest!7680 mapKey!7680 mapValue!7680))))

(declare-fun b!191198 () Bool)

(declare-fun e!125818 () Bool)

(assert (=> b!191198 (= e!125818 (and e!125816 mapRes!7680))))

(declare-fun condMapEmpty!7680 () Bool)

(declare-fun mapDefault!7680 () ValueCell!1880)

