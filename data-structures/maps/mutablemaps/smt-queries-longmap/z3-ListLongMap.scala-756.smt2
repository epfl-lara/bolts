; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17736 () Bool)

(assert start!17736)

(declare-fun b!177144 () Bool)

(declare-fun b_free!4377 () Bool)

(declare-fun b_next!4377 () Bool)

(assert (=> b!177144 (= b_free!4377 (not b_next!4377))))

(declare-fun tp!15830 () Bool)

(declare-fun b_and!10895 () Bool)

(assert (=> b!177144 (= tp!15830 b_and!10895)))

(declare-fun b!177140 () Bool)

(declare-fun e!116823 () Bool)

(declare-fun tp_is_empty!4149 () Bool)

(assert (=> b!177140 (= e!116823 tp_is_empty!4149)))

(declare-fun mapIsEmpty!7086 () Bool)

(declare-fun mapRes!7086 () Bool)

(assert (=> mapIsEmpty!7086 mapRes!7086))

(declare-fun res!83985 () Bool)

(declare-fun e!116826 () Bool)

(assert (=> start!17736 (=> (not res!83985) (not e!116826))))

(declare-datatypes ((V!5179 0))(
  ( (V!5180 (val!2119 Int)) )
))
(declare-datatypes ((ValueCell!1731 0))(
  ( (ValueCellFull!1731 (v!3995 V!5179)) (EmptyCell!1731) )
))
(declare-datatypes ((array!7448 0))(
  ( (array!7449 (arr!3532 (Array (_ BitVec 32) (_ BitVec 64))) (size!3836 (_ BitVec 32))) )
))
(declare-datatypes ((array!7450 0))(
  ( (array!7451 (arr!3533 (Array (_ BitVec 32) ValueCell!1731)) (size!3837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2370 0))(
  ( (LongMapFixedSize!2371 (defaultEntry!3648 Int) (mask!8582 (_ BitVec 32)) (extraKeys!3385 (_ BitVec 32)) (zeroValue!3489 V!5179) (minValue!3489 V!5179) (_size!1234 (_ BitVec 32)) (_keys!5515 array!7448) (_values!3631 array!7450) (_vacant!1234 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2370)

(declare-fun valid!986 (LongMapFixedSize!2370) Bool)

(assert (=> start!17736 (= res!83985 (valid!986 thiss!1248))))

(assert (=> start!17736 e!116826))

(declare-fun e!116824 () Bool)

(assert (=> start!17736 e!116824))

(assert (=> start!17736 true))

(declare-fun b!177141 () Bool)

(declare-fun res!83984 () Bool)

(assert (=> b!177141 (=> (not res!83984) (not e!116826))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3296 0))(
  ( (tuple2!3297 (_1!1658 (_ BitVec 64)) (_2!1658 V!5179)) )
))
(declare-datatypes ((List!2271 0))(
  ( (Nil!2268) (Cons!2267 (h!2888 tuple2!3296) (t!7109 List!2271)) )
))
(declare-datatypes ((ListLongMap!2237 0))(
  ( (ListLongMap!2238 (toList!1134 List!2271)) )
))
(declare-fun contains!1194 (ListLongMap!2237 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!781 (array!7448 array!7450 (_ BitVec 32) (_ BitVec 32) V!5179 V!5179 (_ BitVec 32) Int) ListLongMap!2237)

(assert (=> b!177141 (= res!83984 (contains!1194 (getCurrentListMap!781 (_keys!5515 thiss!1248) (_values!3631 thiss!1248) (mask!8582 thiss!1248) (extraKeys!3385 thiss!1248) (zeroValue!3489 thiss!1248) (minValue!3489 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3648 thiss!1248)) key!828))))

(declare-fun b!177142 () Bool)

(declare-fun e!116827 () Bool)

(assert (=> b!177142 (= e!116827 tp_is_empty!4149)))

(declare-fun b!177143 () Bool)

(assert (=> b!177143 (= e!116826 (not true))))

(assert (=> b!177143 false))

(declare-datatypes ((Unit!5413 0))(
  ( (Unit!5414) )
))
(declare-fun lt!87604 () Unit!5413)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!137 (array!7448 array!7450 (_ BitVec 32) (_ BitVec 32) V!5179 V!5179 (_ BitVec 64) Int) Unit!5413)

(assert (=> b!177143 (= lt!87604 (lemmaInListMapThenSeekEntryOrOpenFindsIt!137 (_keys!5515 thiss!1248) (_values!3631 thiss!1248) (mask!8582 thiss!1248) (extraKeys!3385 thiss!1248) (zeroValue!3489 thiss!1248) (minValue!3489 thiss!1248) key!828 (defaultEntry!3648 thiss!1248)))))

(declare-fun e!116822 () Bool)

(declare-fun array_inv!2255 (array!7448) Bool)

(declare-fun array_inv!2256 (array!7450) Bool)

(assert (=> b!177144 (= e!116824 (and tp!15830 tp_is_empty!4149 (array_inv!2255 (_keys!5515 thiss!1248)) (array_inv!2256 (_values!3631 thiss!1248)) e!116822))))

(declare-fun mapNonEmpty!7086 () Bool)

(declare-fun tp!15831 () Bool)

(assert (=> mapNonEmpty!7086 (= mapRes!7086 (and tp!15831 e!116827))))

(declare-fun mapKey!7086 () (_ BitVec 32))

(declare-fun mapRest!7086 () (Array (_ BitVec 32) ValueCell!1731))

(declare-fun mapValue!7086 () ValueCell!1731)

(assert (=> mapNonEmpty!7086 (= (arr!3533 (_values!3631 thiss!1248)) (store mapRest!7086 mapKey!7086 mapValue!7086))))

(declare-fun b!177145 () Bool)

(declare-fun res!83986 () Bool)

(assert (=> b!177145 (=> (not res!83986) (not e!116826))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!574 0))(
  ( (MissingZero!574 (index!4464 (_ BitVec 32))) (Found!574 (index!4465 (_ BitVec 32))) (Intermediate!574 (undefined!1386 Bool) (index!4466 (_ BitVec 32)) (x!19446 (_ BitVec 32))) (Undefined!574) (MissingVacant!574 (index!4467 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7448 (_ BitVec 32)) SeekEntryResult!574)

(assert (=> b!177145 (= res!83986 ((_ is Undefined!574) (seekEntryOrOpen!0 key!828 (_keys!5515 thiss!1248) (mask!8582 thiss!1248))))))

(declare-fun b!177146 () Bool)

(declare-fun res!83987 () Bool)

(assert (=> b!177146 (=> (not res!83987) (not e!116826))))

(assert (=> b!177146 (= res!83987 (not (= key!828 (bvneg key!828))))))

(declare-fun b!177147 () Bool)

(assert (=> b!177147 (= e!116822 (and e!116823 mapRes!7086))))

(declare-fun condMapEmpty!7086 () Bool)

(declare-fun mapDefault!7086 () ValueCell!1731)

(assert (=> b!177147 (= condMapEmpty!7086 (= (arr!3533 (_values!3631 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1731)) mapDefault!7086)))))

(assert (= (and start!17736 res!83985) b!177146))

(assert (= (and b!177146 res!83987) b!177145))

(assert (= (and b!177145 res!83986) b!177141))

(assert (= (and b!177141 res!83984) b!177143))

(assert (= (and b!177147 condMapEmpty!7086) mapIsEmpty!7086))

(assert (= (and b!177147 (not condMapEmpty!7086)) mapNonEmpty!7086))

(assert (= (and mapNonEmpty!7086 ((_ is ValueCellFull!1731) mapValue!7086)) b!177142))

(assert (= (and b!177147 ((_ is ValueCellFull!1731) mapDefault!7086)) b!177140))

(assert (= b!177144 b!177147))

(assert (= start!17736 b!177144))

(declare-fun m!205739 () Bool)

(assert (=> start!17736 m!205739))

(declare-fun m!205741 () Bool)

(assert (=> b!177141 m!205741))

(assert (=> b!177141 m!205741))

(declare-fun m!205743 () Bool)

(assert (=> b!177141 m!205743))

(declare-fun m!205745 () Bool)

(assert (=> b!177144 m!205745))

(declare-fun m!205747 () Bool)

(assert (=> b!177144 m!205747))

(declare-fun m!205749 () Bool)

(assert (=> b!177143 m!205749))

(declare-fun m!205751 () Bool)

(assert (=> b!177145 m!205751))

(declare-fun m!205753 () Bool)

(assert (=> mapNonEmpty!7086 m!205753))

(check-sat (not b!177143) (not b!177141) (not start!17736) tp_is_empty!4149 (not mapNonEmpty!7086) (not b_next!4377) (not b!177144) (not b!177145) b_and!10895)
(check-sat b_and!10895 (not b_next!4377))
