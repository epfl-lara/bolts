; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75930 () Bool)

(assert start!75930)

(declare-fun b!892902 () Bool)

(declare-fun b_free!15837 () Bool)

(declare-fun b_next!15837 () Bool)

(assert (=> b!892902 (= b_free!15837 (not b_next!15837))))

(declare-fun tp!55483 () Bool)

(declare-fun b_and!26117 () Bool)

(assert (=> b!892902 (= tp!55483 b_and!26117)))

(declare-fun b!892901 () Bool)

(declare-fun res!604880 () Bool)

(declare-fun e!498601 () Bool)

(assert (=> b!892901 (=> (not res!604880) (not e!498601))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892901 (= res!604880 (not (= key!785 (bvneg key!785))))))

(declare-fun tp_is_empty!18165 () Bool)

(declare-fun e!498602 () Bool)

(declare-fun e!498599 () Bool)

(declare-datatypes ((array!52298 0))(
  ( (array!52299 (arr!25150 (Array (_ BitVec 32) (_ BitVec 64))) (size!25595 (_ BitVec 32))) )
))
(declare-datatypes ((V!29185 0))(
  ( (V!29186 (val!9133 Int)) )
))
(declare-datatypes ((ValueCell!8601 0))(
  ( (ValueCellFull!8601 (v!11608 V!29185)) (EmptyCell!8601) )
))
(declare-datatypes ((array!52300 0))(
  ( (array!52301 (arr!25151 (Array (_ BitVec 32) ValueCell!8601)) (size!25596 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4218 0))(
  ( (LongMapFixedSize!4219 (defaultEntry!5309 Int) (mask!25824 (_ BitVec 32)) (extraKeys!5004 (_ BitVec 32)) (zeroValue!5108 V!29185) (minValue!5108 V!29185) (_size!2164 (_ BitVec 32)) (_keys!9990 array!52298) (_values!5295 array!52300) (_vacant!2164 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4218)

(declare-fun array_inv!19730 (array!52298) Bool)

(declare-fun array_inv!19731 (array!52300) Bool)

(assert (=> b!892902 (= e!498599 (and tp!55483 tp_is_empty!18165 (array_inv!19730 (_keys!9990 thiss!1181)) (array_inv!19731 (_values!5295 thiss!1181)) e!498602))))

(declare-fun b!892903 () Bool)

(declare-fun e!498605 () Bool)

(assert (=> b!892903 (= e!498605 tp_is_empty!18165)))

(declare-fun mapIsEmpty!28805 () Bool)

(declare-fun mapRes!28805 () Bool)

(assert (=> mapIsEmpty!28805 mapRes!28805))

(declare-fun res!604879 () Bool)

(assert (=> start!75930 (=> (not res!604879) (not e!498601))))

(declare-fun valid!1620 (LongMapFixedSize!4218) Bool)

(assert (=> start!75930 (= res!604879 (valid!1620 thiss!1181))))

(assert (=> start!75930 e!498601))

(assert (=> start!75930 e!498599))

(assert (=> start!75930 true))

(declare-fun b!892904 () Bool)

(assert (=> b!892904 (= e!498602 (and e!498605 mapRes!28805))))

(declare-fun condMapEmpty!28805 () Bool)

(declare-fun mapDefault!28805 () ValueCell!8601)

(assert (=> b!892904 (= condMapEmpty!28805 (= (arr!25151 (_values!5295 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8601)) mapDefault!28805)))))

(declare-fun b!892905 () Bool)

(declare-fun e!498600 () Bool)

(declare-datatypes ((SeekEntryResult!8850 0))(
  ( (MissingZero!8850 (index!37770 (_ BitVec 32))) (Found!8850 (index!37771 (_ BitVec 32))) (Intermediate!8850 (undefined!9662 Bool) (index!37772 (_ BitVec 32)) (x!75895 (_ BitVec 32))) (Undefined!8850) (MissingVacant!8850 (index!37773 (_ BitVec 32))) )
))
(declare-fun lt!403458 () SeekEntryResult!8850)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892905 (= e!498600 (inRange!0 (index!37771 lt!403458) (mask!25824 thiss!1181)))))

(declare-fun b!892906 () Bool)

(declare-fun e!498603 () Bool)

(assert (=> b!892906 (= e!498603 tp_is_empty!18165)))

(declare-fun b!892907 () Bool)

(assert (=> b!892907 (= e!498601 (not true))))

(assert (=> b!892907 e!498600))

(declare-fun res!604881 () Bool)

(assert (=> b!892907 (=> res!604881 e!498600)))

(get-info :version)

(assert (=> b!892907 (= res!604881 (not ((_ is Found!8850) lt!403458)))))

(declare-datatypes ((Unit!30385 0))(
  ( (Unit!30386) )
))
(declare-fun lt!403457 () Unit!30385)

(declare-fun lemmaSeekEntryGivesInRangeIndex!64 (array!52298 array!52300 (_ BitVec 32) (_ BitVec 32) V!29185 V!29185 (_ BitVec 64)) Unit!30385)

(assert (=> b!892907 (= lt!403457 (lemmaSeekEntryGivesInRangeIndex!64 (_keys!9990 thiss!1181) (_values!5295 thiss!1181) (mask!25824 thiss!1181) (extraKeys!5004 thiss!1181) (zeroValue!5108 thiss!1181) (minValue!5108 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52298 (_ BitVec 32)) SeekEntryResult!8850)

(assert (=> b!892907 (= lt!403458 (seekEntry!0 key!785 (_keys!9990 thiss!1181) (mask!25824 thiss!1181)))))

(declare-fun mapNonEmpty!28805 () Bool)

(declare-fun tp!55484 () Bool)

(assert (=> mapNonEmpty!28805 (= mapRes!28805 (and tp!55484 e!498603))))

(declare-fun mapRest!28805 () (Array (_ BitVec 32) ValueCell!8601))

(declare-fun mapKey!28805 () (_ BitVec 32))

(declare-fun mapValue!28805 () ValueCell!8601)

(assert (=> mapNonEmpty!28805 (= (arr!25151 (_values!5295 thiss!1181)) (store mapRest!28805 mapKey!28805 mapValue!28805))))

(assert (= (and start!75930 res!604879) b!892901))

(assert (= (and b!892901 res!604880) b!892907))

(assert (= (and b!892907 (not res!604881)) b!892905))

(assert (= (and b!892904 condMapEmpty!28805) mapIsEmpty!28805))

(assert (= (and b!892904 (not condMapEmpty!28805)) mapNonEmpty!28805))

(assert (= (and mapNonEmpty!28805 ((_ is ValueCellFull!8601) mapValue!28805)) b!892906))

(assert (= (and b!892904 ((_ is ValueCellFull!8601) mapDefault!28805)) b!892903))

(assert (= b!892902 b!892904))

(assert (= start!75930 b!892902))

(declare-fun m!831161 () Bool)

(assert (=> b!892907 m!831161))

(declare-fun m!831163 () Bool)

(assert (=> b!892907 m!831163))

(declare-fun m!831165 () Bool)

(assert (=> mapNonEmpty!28805 m!831165))

(declare-fun m!831167 () Bool)

(assert (=> start!75930 m!831167))

(declare-fun m!831169 () Bool)

(assert (=> b!892902 m!831169))

(declare-fun m!831171 () Bool)

(assert (=> b!892902 m!831171))

(declare-fun m!831173 () Bool)

(assert (=> b!892905 m!831173))

(check-sat b_and!26117 tp_is_empty!18165 (not b!892905) (not b!892902) (not b!892907) (not b_next!15837) (not mapNonEmpty!28805) (not start!75930))
(check-sat b_and!26117 (not b_next!15837))
