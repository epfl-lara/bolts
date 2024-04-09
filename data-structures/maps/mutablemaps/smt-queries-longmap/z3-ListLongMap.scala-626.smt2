; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16118 () Bool)

(assert start!16118)

(declare-fun b!160118 () Bool)

(declare-fun b_free!3567 () Bool)

(declare-fun b_next!3567 () Bool)

(assert (=> b!160118 (= b_free!3567 (not b_next!3567))))

(declare-fun tp!13270 () Bool)

(declare-fun b_and!9999 () Bool)

(assert (=> b!160118 (= tp!13270 b_and!9999)))

(declare-fun b!160111 () Bool)

(declare-fun res!75783 () Bool)

(declare-fun e!104730 () Bool)

(assert (=> b!160111 (=> (not res!75783) (not e!104730))))

(declare-datatypes ((V!4139 0))(
  ( (V!4140 (val!1729 Int)) )
))
(declare-datatypes ((ValueCell!1341 0))(
  ( (ValueCellFull!1341 (v!3590 V!4139)) (EmptyCell!1341) )
))
(declare-datatypes ((array!5816 0))(
  ( (array!5817 (arr!2752 (Array (_ BitVec 32) (_ BitVec 64))) (size!3036 (_ BitVec 32))) )
))
(declare-datatypes ((array!5818 0))(
  ( (array!5819 (arr!2753 (Array (_ BitVec 32) ValueCell!1341)) (size!3037 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1590 0))(
  ( (LongMapFixedSize!1591 (defaultEntry!3237 Int) (mask!7801 (_ BitVec 32)) (extraKeys!2978 (_ BitVec 32)) (zeroValue!3080 V!4139) (minValue!3080 V!4139) (_size!844 (_ BitVec 32)) (_keys!5038 array!5816) (_values!3220 array!5818) (_vacant!844 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1590)

(assert (=> b!160111 (= res!75783 (and (= (size!3037 (_values!3220 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7801 thiss!1248))) (= (size!3036 (_keys!5038 thiss!1248)) (size!3037 (_values!3220 thiss!1248))) (bvsge (mask!7801 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2978 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2978 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160112 () Bool)

(declare-fun res!75779 () Bool)

(assert (=> b!160112 (=> (not res!75779) (not e!104730))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2898 0))(
  ( (tuple2!2899 (_1!1459 (_ BitVec 64)) (_2!1459 V!4139)) )
))
(declare-datatypes ((List!1953 0))(
  ( (Nil!1950) (Cons!1949 (h!2562 tuple2!2898) (t!6763 List!1953)) )
))
(declare-datatypes ((ListLongMap!1907 0))(
  ( (ListLongMap!1908 (toList!969 List!1953)) )
))
(declare-fun contains!999 (ListLongMap!1907 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!629 (array!5816 array!5818 (_ BitVec 32) (_ BitVec 32) V!4139 V!4139 (_ BitVec 32) Int) ListLongMap!1907)

(assert (=> b!160112 (= res!75779 (contains!999 (getCurrentListMap!629 (_keys!5038 thiss!1248) (_values!3220 thiss!1248) (mask!7801 thiss!1248) (extraKeys!2978 thiss!1248) (zeroValue!3080 thiss!1248) (minValue!3080 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3237 thiss!1248)) key!828))))

(declare-fun b!160113 () Bool)

(declare-fun res!75781 () Bool)

(assert (=> b!160113 (=> (not res!75781) (not e!104730))))

(assert (=> b!160113 (= res!75781 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160115 () Bool)

(declare-fun e!104732 () Bool)

(declare-fun e!104735 () Bool)

(declare-fun mapRes!5741 () Bool)

(assert (=> b!160115 (= e!104732 (and e!104735 mapRes!5741))))

(declare-fun condMapEmpty!5741 () Bool)

(declare-fun mapDefault!5741 () ValueCell!1341)

(assert (=> b!160115 (= condMapEmpty!5741 (= (arr!2753 (_values!3220 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1341)) mapDefault!5741)))))

(declare-fun b!160116 () Bool)

(declare-fun tp_is_empty!3369 () Bool)

(assert (=> b!160116 (= e!104735 tp_is_empty!3369)))

(declare-fun b!160117 () Bool)

(declare-fun res!75784 () Bool)

(assert (=> b!160117 (=> (not res!75784) (not e!104730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160117 (= res!75784 (validMask!0 (mask!7801 thiss!1248)))))

(declare-fun e!104734 () Bool)

(declare-fun array_inv!1747 (array!5816) Bool)

(declare-fun array_inv!1748 (array!5818) Bool)

(assert (=> b!160118 (= e!104734 (and tp!13270 tp_is_empty!3369 (array_inv!1747 (_keys!5038 thiss!1248)) (array_inv!1748 (_values!3220 thiss!1248)) e!104732))))

(declare-fun mapIsEmpty!5741 () Bool)

(assert (=> mapIsEmpty!5741 mapRes!5741))

(declare-fun b!160119 () Bool)

(assert (=> b!160119 (= e!104730 false)))

(declare-fun lt!82085 () Bool)

(declare-datatypes ((List!1954 0))(
  ( (Nil!1951) (Cons!1950 (h!2563 (_ BitVec 64)) (t!6764 List!1954)) )
))
(declare-fun arrayNoDuplicates!0 (array!5816 (_ BitVec 32) List!1954) Bool)

(assert (=> b!160119 (= lt!82085 (arrayNoDuplicates!0 (_keys!5038 thiss!1248) #b00000000000000000000000000000000 Nil!1951))))

(declare-fun b!160120 () Bool)

(declare-fun e!104731 () Bool)

(assert (=> b!160120 (= e!104731 tp_is_empty!3369)))

(declare-fun b!160121 () Bool)

(declare-fun res!75785 () Bool)

(assert (=> b!160121 (=> (not res!75785) (not e!104730))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!336 0))(
  ( (MissingZero!336 (index!3512 (_ BitVec 32))) (Found!336 (index!3513 (_ BitVec 32))) (Intermediate!336 (undefined!1148 Bool) (index!3514 (_ BitVec 32)) (x!17688 (_ BitVec 32))) (Undefined!336) (MissingVacant!336 (index!3515 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5816 (_ BitVec 32)) SeekEntryResult!336)

(assert (=> b!160121 (= res!75785 ((_ is Undefined!336) (seekEntryOrOpen!0 key!828 (_keys!5038 thiss!1248) (mask!7801 thiss!1248))))))

(declare-fun mapNonEmpty!5741 () Bool)

(declare-fun tp!13271 () Bool)

(assert (=> mapNonEmpty!5741 (= mapRes!5741 (and tp!13271 e!104731))))

(declare-fun mapValue!5741 () ValueCell!1341)

(declare-fun mapRest!5741 () (Array (_ BitVec 32) ValueCell!1341))

(declare-fun mapKey!5741 () (_ BitVec 32))

(assert (=> mapNonEmpty!5741 (= (arr!2753 (_values!3220 thiss!1248)) (store mapRest!5741 mapKey!5741 mapValue!5741))))

(declare-fun res!75782 () Bool)

(assert (=> start!16118 (=> (not res!75782) (not e!104730))))

(declare-fun valid!734 (LongMapFixedSize!1590) Bool)

(assert (=> start!16118 (= res!75782 (valid!734 thiss!1248))))

(assert (=> start!16118 e!104730))

(assert (=> start!16118 e!104734))

(assert (=> start!16118 true))

(declare-fun b!160114 () Bool)

(declare-fun res!75780 () Bool)

(assert (=> b!160114 (=> (not res!75780) (not e!104730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5816 (_ BitVec 32)) Bool)

(assert (=> b!160114 (= res!75780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5038 thiss!1248) (mask!7801 thiss!1248)))))

(assert (= (and start!16118 res!75782) b!160113))

(assert (= (and b!160113 res!75781) b!160121))

(assert (= (and b!160121 res!75785) b!160112))

(assert (= (and b!160112 res!75779) b!160117))

(assert (= (and b!160117 res!75784) b!160111))

(assert (= (and b!160111 res!75783) b!160114))

(assert (= (and b!160114 res!75780) b!160119))

(assert (= (and b!160115 condMapEmpty!5741) mapIsEmpty!5741))

(assert (= (and b!160115 (not condMapEmpty!5741)) mapNonEmpty!5741))

(assert (= (and mapNonEmpty!5741 ((_ is ValueCellFull!1341) mapValue!5741)) b!160120))

(assert (= (and b!160115 ((_ is ValueCellFull!1341) mapDefault!5741)) b!160116))

(assert (= b!160118 b!160115))

(assert (= start!16118 b!160118))

(declare-fun m!192115 () Bool)

(assert (=> start!16118 m!192115))

(declare-fun m!192117 () Bool)

(assert (=> b!160121 m!192117))

(declare-fun m!192119 () Bool)

(assert (=> b!160117 m!192119))

(declare-fun m!192121 () Bool)

(assert (=> b!160114 m!192121))

(declare-fun m!192123 () Bool)

(assert (=> mapNonEmpty!5741 m!192123))

(declare-fun m!192125 () Bool)

(assert (=> b!160119 m!192125))

(declare-fun m!192127 () Bool)

(assert (=> b!160118 m!192127))

(declare-fun m!192129 () Bool)

(assert (=> b!160118 m!192129))

(declare-fun m!192131 () Bool)

(assert (=> b!160112 m!192131))

(assert (=> b!160112 m!192131))

(declare-fun m!192133 () Bool)

(assert (=> b!160112 m!192133))

(check-sat (not mapNonEmpty!5741) (not b!160121) (not b!160117) (not b!160114) tp_is_empty!3369 (not start!16118) (not b!160112) (not b!160118) b_and!9999 (not b_next!3567) (not b!160119))
(check-sat b_and!9999 (not b_next!3567))
