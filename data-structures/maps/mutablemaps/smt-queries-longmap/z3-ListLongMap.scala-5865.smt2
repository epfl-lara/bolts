; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75750 () Bool)

(assert start!75750)

(declare-fun b!890154 () Bool)

(declare-fun b_free!15693 () Bool)

(declare-fun b_next!15693 () Bool)

(assert (=> b!890154 (= b_free!15693 (not b_next!15693))))

(declare-fun tp!55048 () Bool)

(declare-fun b_and!25951 () Bool)

(assert (=> b!890154 (= tp!55048 b_and!25951)))

(declare-fun b!890150 () Bool)

(declare-fun res!603246 () Bool)

(declare-fun e!496465 () Bool)

(assert (=> b!890150 (=> res!603246 e!496465)))

(declare-datatypes ((array!52008 0))(
  ( (array!52009 (arr!25006 (Array (_ BitVec 32) (_ BitVec 64))) (size!25451 (_ BitVec 32))) )
))
(declare-datatypes ((V!28993 0))(
  ( (V!28994 (val!9061 Int)) )
))
(declare-datatypes ((ValueCell!8529 0))(
  ( (ValueCellFull!8529 (v!11533 V!28993)) (EmptyCell!8529) )
))
(declare-datatypes ((array!52010 0))(
  ( (array!52011 (arr!25007 (Array (_ BitVec 32) ValueCell!8529)) (size!25452 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4074 0))(
  ( (LongMapFixedSize!4075 (defaultEntry!5234 Int) (mask!25698 (_ BitVec 32)) (extraKeys!4928 (_ BitVec 32)) (zeroValue!5032 V!28993) (minValue!5032 V!28993) (_size!2092 (_ BitVec 32)) (_keys!9913 array!52008) (_values!5219 array!52010) (_vacant!2092 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4074)

(assert (=> b!890150 (= res!603246 (or (not (= (size!25452 (_values!5219 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25698 thiss!1181)))) (not (= (size!25451 (_keys!9913 thiss!1181)) (size!25452 (_values!5219 thiss!1181)))) (bvslt (mask!25698 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4928 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4928 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890151 () Bool)

(assert (=> b!890151 (= e!496465 true)))

(declare-fun lt!402193 () Bool)

(declare-datatypes ((List!17800 0))(
  ( (Nil!17797) (Cons!17796 (h!18927 (_ BitVec 64)) (t!25107 List!17800)) )
))
(declare-fun arrayNoDuplicates!0 (array!52008 (_ BitVec 32) List!17800) Bool)

(assert (=> b!890151 (= lt!402193 (arrayNoDuplicates!0 (_keys!9913 thiss!1181) #b00000000000000000000000000000000 Nil!17797))))

(declare-fun b!890152 () Bool)

(declare-fun e!496461 () Bool)

(declare-fun e!496462 () Bool)

(assert (=> b!890152 (= e!496461 (not e!496462))))

(declare-fun res!603248 () Bool)

(assert (=> b!890152 (=> res!603248 e!496462)))

(declare-datatypes ((SeekEntryResult!8789 0))(
  ( (MissingZero!8789 (index!37526 (_ BitVec 32))) (Found!8789 (index!37527 (_ BitVec 32))) (Intermediate!8789 (undefined!9601 Bool) (index!37528 (_ BitVec 32)) (x!75614 (_ BitVec 32))) (Undefined!8789) (MissingVacant!8789 (index!37529 (_ BitVec 32))) )
))
(declare-fun lt!402195 () SeekEntryResult!8789)

(get-info :version)

(assert (=> b!890152 (= res!603248 (not ((_ is Found!8789) lt!402195)))))

(declare-fun e!496464 () Bool)

(assert (=> b!890152 e!496464))

(declare-fun res!603250 () Bool)

(assert (=> b!890152 (=> res!603250 e!496464)))

(assert (=> b!890152 (= res!603250 (not ((_ is Found!8789) lt!402195)))))

(declare-datatypes ((Unit!30263 0))(
  ( (Unit!30264) )
))
(declare-fun lt!402192 () Unit!30263)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!11 (array!52008 array!52010 (_ BitVec 32) (_ BitVec 32) V!28993 V!28993 (_ BitVec 64)) Unit!30263)

(assert (=> b!890152 (= lt!402192 (lemmaSeekEntryGivesInRangeIndex!11 (_keys!9913 thiss!1181) (_values!5219 thiss!1181) (mask!25698 thiss!1181) (extraKeys!4928 thiss!1181) (zeroValue!5032 thiss!1181) (minValue!5032 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52008 (_ BitVec 32)) SeekEntryResult!8789)

(assert (=> b!890152 (= lt!402195 (seekEntry!0 key!785 (_keys!9913 thiss!1181) (mask!25698 thiss!1181)))))

(declare-fun b!890153 () Bool)

(declare-fun e!496466 () Bool)

(declare-fun tp_is_empty!18021 () Bool)

(assert (=> b!890153 (= e!496466 tp_is_empty!18021)))

(declare-fun e!496469 () Bool)

(declare-fun e!496468 () Bool)

(declare-fun array_inv!19634 (array!52008) Bool)

(declare-fun array_inv!19635 (array!52010) Bool)

(assert (=> b!890154 (= e!496468 (and tp!55048 tp_is_empty!18021 (array_inv!19634 (_keys!9913 thiss!1181)) (array_inv!19635 (_values!5219 thiss!1181)) e!496469))))

(declare-fun b!890155 () Bool)

(declare-fun e!496467 () Bool)

(assert (=> b!890155 (= e!496467 tp_is_empty!18021)))

(declare-fun b!890156 () Bool)

(declare-fun res!603249 () Bool)

(assert (=> b!890156 (=> (not res!603249) (not e!496461))))

(assert (=> b!890156 (= res!603249 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890157 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890157 (= e!496464 (inRange!0 (index!37527 lt!402195) (mask!25698 thiss!1181)))))

(declare-fun b!890158 () Bool)

(declare-fun res!603251 () Bool)

(assert (=> b!890158 (=> res!603251 e!496465)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52008 (_ BitVec 32)) Bool)

(assert (=> b!890158 (= res!603251 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9913 thiss!1181) (mask!25698 thiss!1181))))))

(declare-fun mapNonEmpty!28586 () Bool)

(declare-fun mapRes!28586 () Bool)

(declare-fun tp!55049 () Bool)

(assert (=> mapNonEmpty!28586 (= mapRes!28586 (and tp!55049 e!496466))))

(declare-fun mapValue!28586 () ValueCell!8529)

(declare-fun mapRest!28586 () (Array (_ BitVec 32) ValueCell!8529))

(declare-fun mapKey!28586 () (_ BitVec 32))

(assert (=> mapNonEmpty!28586 (= (arr!25007 (_values!5219 thiss!1181)) (store mapRest!28586 mapKey!28586 mapValue!28586))))

(declare-fun res!603252 () Bool)

(assert (=> start!75750 (=> (not res!603252) (not e!496461))))

(declare-fun valid!1572 (LongMapFixedSize!4074) Bool)

(assert (=> start!75750 (= res!603252 (valid!1572 thiss!1181))))

(assert (=> start!75750 e!496461))

(assert (=> start!75750 e!496468))

(assert (=> start!75750 true))

(declare-fun b!890159 () Bool)

(assert (=> b!890159 (= e!496462 e!496465)))

(declare-fun res!603247 () Bool)

(assert (=> b!890159 (=> res!603247 e!496465)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890159 (= res!603247 (not (validMask!0 (mask!25698 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890159 (arrayContainsKey!0 (_keys!9913 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402194 () Unit!30263)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52008 (_ BitVec 64) (_ BitVec 32)) Unit!30263)

(assert (=> b!890159 (= lt!402194 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9913 thiss!1181) key!785 (index!37527 lt!402195)))))

(declare-fun b!890160 () Bool)

(assert (=> b!890160 (= e!496469 (and e!496467 mapRes!28586))))

(declare-fun condMapEmpty!28586 () Bool)

(declare-fun mapDefault!28586 () ValueCell!8529)

(assert (=> b!890160 (= condMapEmpty!28586 (= (arr!25007 (_values!5219 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8529)) mapDefault!28586)))))

(declare-fun mapIsEmpty!28586 () Bool)

(assert (=> mapIsEmpty!28586 mapRes!28586))

(assert (= (and start!75750 res!603252) b!890156))

(assert (= (and b!890156 res!603249) b!890152))

(assert (= (and b!890152 (not res!603250)) b!890157))

(assert (= (and b!890152 (not res!603248)) b!890159))

(assert (= (and b!890159 (not res!603247)) b!890150))

(assert (= (and b!890150 (not res!603246)) b!890158))

(assert (= (and b!890158 (not res!603251)) b!890151))

(assert (= (and b!890160 condMapEmpty!28586) mapIsEmpty!28586))

(assert (= (and b!890160 (not condMapEmpty!28586)) mapNonEmpty!28586))

(assert (= (and mapNonEmpty!28586 ((_ is ValueCellFull!8529) mapValue!28586)) b!890153))

(assert (= (and b!890160 ((_ is ValueCellFull!8529) mapDefault!28586)) b!890155))

(assert (= b!890154 b!890160))

(assert (= start!75750 b!890154))

(declare-fun m!828841 () Bool)

(assert (=> b!890157 m!828841))

(declare-fun m!828843 () Bool)

(assert (=> b!890151 m!828843))

(declare-fun m!828845 () Bool)

(assert (=> mapNonEmpty!28586 m!828845))

(declare-fun m!828847 () Bool)

(assert (=> b!890159 m!828847))

(declare-fun m!828849 () Bool)

(assert (=> b!890159 m!828849))

(declare-fun m!828851 () Bool)

(assert (=> b!890159 m!828851))

(declare-fun m!828853 () Bool)

(assert (=> b!890158 m!828853))

(declare-fun m!828855 () Bool)

(assert (=> b!890154 m!828855))

(declare-fun m!828857 () Bool)

(assert (=> b!890154 m!828857))

(declare-fun m!828859 () Bool)

(assert (=> start!75750 m!828859))

(declare-fun m!828861 () Bool)

(assert (=> b!890152 m!828861))

(declare-fun m!828863 () Bool)

(assert (=> b!890152 m!828863))

(check-sat (not b!890159) (not b!890154) (not b!890157) b_and!25951 (not start!75750) (not b_next!15693) (not mapNonEmpty!28586) tp_is_empty!18021 (not b!890152) (not b!890151) (not b!890158))
(check-sat b_and!25951 (not b_next!15693))
