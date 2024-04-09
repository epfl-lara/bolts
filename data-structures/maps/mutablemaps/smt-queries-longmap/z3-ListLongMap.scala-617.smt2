; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16064 () Bool)

(assert start!16064)

(declare-fun b!159229 () Bool)

(declare-fun b_free!3513 () Bool)

(declare-fun b_next!3513 () Bool)

(assert (=> b!159229 (= b_free!3513 (not b_next!3513))))

(declare-fun tp!13109 () Bool)

(declare-fun b_and!9945 () Bool)

(assert (=> b!159229 (= tp!13109 b_and!9945)))

(declare-fun b!159220 () Bool)

(declare-fun e!104247 () Bool)

(assert (=> b!159220 (= e!104247 false)))

(declare-fun lt!82004 () Bool)

(declare-datatypes ((V!4067 0))(
  ( (V!4068 (val!1702 Int)) )
))
(declare-datatypes ((ValueCell!1314 0))(
  ( (ValueCellFull!1314 (v!3563 V!4067)) (EmptyCell!1314) )
))
(declare-datatypes ((array!5708 0))(
  ( (array!5709 (arr!2698 (Array (_ BitVec 32) (_ BitVec 64))) (size!2982 (_ BitVec 32))) )
))
(declare-datatypes ((array!5710 0))(
  ( (array!5711 (arr!2699 (Array (_ BitVec 32) ValueCell!1314)) (size!2983 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1536 0))(
  ( (LongMapFixedSize!1537 (defaultEntry!3210 Int) (mask!7756 (_ BitVec 32)) (extraKeys!2951 (_ BitVec 32)) (zeroValue!3053 V!4067) (minValue!3053 V!4067) (_size!817 (_ BitVec 32)) (_keys!5011 array!5708) (_values!3193 array!5710) (_vacant!817 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1536)

(declare-datatypes ((List!1914 0))(
  ( (Nil!1911) (Cons!1910 (h!2523 (_ BitVec 64)) (t!6724 List!1914)) )
))
(declare-fun arrayNoDuplicates!0 (array!5708 (_ BitVec 32) List!1914) Bool)

(assert (=> b!159220 (= lt!82004 (arrayNoDuplicates!0 (_keys!5011 thiss!1248) #b00000000000000000000000000000000 Nil!1911))))

(declare-fun b!159221 () Bool)

(declare-fun res!75213 () Bool)

(assert (=> b!159221 (=> (not res!75213) (not e!104247))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!320 0))(
  ( (MissingZero!320 (index!3448 (_ BitVec 32))) (Found!320 (index!3449 (_ BitVec 32))) (Intermediate!320 (undefined!1132 Bool) (index!3450 (_ BitVec 32)) (x!17600 (_ BitVec 32))) (Undefined!320) (MissingVacant!320 (index!3451 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5708 (_ BitVec 32)) SeekEntryResult!320)

(assert (=> b!159221 (= res!75213 ((_ is Undefined!320) (seekEntryOrOpen!0 key!828 (_keys!5011 thiss!1248) (mask!7756 thiss!1248))))))

(declare-fun b!159222 () Bool)

(declare-fun res!75216 () Bool)

(assert (=> b!159222 (=> (not res!75216) (not e!104247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159222 (= res!75216 (validMask!0 (mask!7756 thiss!1248)))))

(declare-fun b!159223 () Bool)

(declare-fun res!75218 () Bool)

(assert (=> b!159223 (=> (not res!75218) (not e!104247))))

(assert (=> b!159223 (= res!75218 (and (= (size!2983 (_values!3193 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7756 thiss!1248))) (= (size!2982 (_keys!5011 thiss!1248)) (size!2983 (_values!3193 thiss!1248))) (bvsge (mask!7756 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2951 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2951 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159224 () Bool)

(declare-fun e!104249 () Bool)

(declare-fun tp_is_empty!3315 () Bool)

(assert (=> b!159224 (= e!104249 tp_is_empty!3315)))

(declare-fun b!159225 () Bool)

(declare-fun e!104244 () Bool)

(declare-fun mapRes!5660 () Bool)

(assert (=> b!159225 (= e!104244 (and e!104249 mapRes!5660))))

(declare-fun condMapEmpty!5660 () Bool)

(declare-fun mapDefault!5660 () ValueCell!1314)

(assert (=> b!159225 (= condMapEmpty!5660 (= (arr!2699 (_values!3193 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1314)) mapDefault!5660)))))

(declare-fun mapNonEmpty!5660 () Bool)

(declare-fun tp!13108 () Bool)

(declare-fun e!104245 () Bool)

(assert (=> mapNonEmpty!5660 (= mapRes!5660 (and tp!13108 e!104245))))

(declare-fun mapRest!5660 () (Array (_ BitVec 32) ValueCell!1314))

(declare-fun mapKey!5660 () (_ BitVec 32))

(declare-fun mapValue!5660 () ValueCell!1314)

(assert (=> mapNonEmpty!5660 (= (arr!2699 (_values!3193 thiss!1248)) (store mapRest!5660 mapKey!5660 mapValue!5660))))

(declare-fun b!159226 () Bool)

(declare-fun res!75212 () Bool)

(assert (=> b!159226 (=> (not res!75212) (not e!104247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5708 (_ BitVec 32)) Bool)

(assert (=> b!159226 (= res!75212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5011 thiss!1248) (mask!7756 thiss!1248)))))

(declare-fun b!159227 () Bool)

(declare-fun res!75214 () Bool)

(assert (=> b!159227 (=> (not res!75214) (not e!104247))))

(declare-datatypes ((tuple2!2860 0))(
  ( (tuple2!2861 (_1!1440 (_ BitVec 64)) (_2!1440 V!4067)) )
))
(declare-datatypes ((List!1915 0))(
  ( (Nil!1912) (Cons!1911 (h!2524 tuple2!2860) (t!6725 List!1915)) )
))
(declare-datatypes ((ListLongMap!1869 0))(
  ( (ListLongMap!1870 (toList!950 List!1915)) )
))
(declare-fun contains!980 (ListLongMap!1869 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!610 (array!5708 array!5710 (_ BitVec 32) (_ BitVec 32) V!4067 V!4067 (_ BitVec 32) Int) ListLongMap!1869)

(assert (=> b!159227 (= res!75214 (contains!980 (getCurrentListMap!610 (_keys!5011 thiss!1248) (_values!3193 thiss!1248) (mask!7756 thiss!1248) (extraKeys!2951 thiss!1248) (zeroValue!3053 thiss!1248) (minValue!3053 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3210 thiss!1248)) key!828))))

(declare-fun res!75217 () Bool)

(assert (=> start!16064 (=> (not res!75217) (not e!104247))))

(declare-fun valid!717 (LongMapFixedSize!1536) Bool)

(assert (=> start!16064 (= res!75217 (valid!717 thiss!1248))))

(assert (=> start!16064 e!104247))

(declare-fun e!104248 () Bool)

(assert (=> start!16064 e!104248))

(assert (=> start!16064 true))

(declare-fun b!159228 () Bool)

(assert (=> b!159228 (= e!104245 tp_is_empty!3315)))

(declare-fun mapIsEmpty!5660 () Bool)

(assert (=> mapIsEmpty!5660 mapRes!5660))

(declare-fun array_inv!1709 (array!5708) Bool)

(declare-fun array_inv!1710 (array!5710) Bool)

(assert (=> b!159229 (= e!104248 (and tp!13109 tp_is_empty!3315 (array_inv!1709 (_keys!5011 thiss!1248)) (array_inv!1710 (_values!3193 thiss!1248)) e!104244))))

(declare-fun b!159230 () Bool)

(declare-fun res!75215 () Bool)

(assert (=> b!159230 (=> (not res!75215) (not e!104247))))

(assert (=> b!159230 (= res!75215 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16064 res!75217) b!159230))

(assert (= (and b!159230 res!75215) b!159221))

(assert (= (and b!159221 res!75213) b!159227))

(assert (= (and b!159227 res!75214) b!159222))

(assert (= (and b!159222 res!75216) b!159223))

(assert (= (and b!159223 res!75218) b!159226))

(assert (= (and b!159226 res!75212) b!159220))

(assert (= (and b!159225 condMapEmpty!5660) mapIsEmpty!5660))

(assert (= (and b!159225 (not condMapEmpty!5660)) mapNonEmpty!5660))

(assert (= (and mapNonEmpty!5660 ((_ is ValueCellFull!1314) mapValue!5660)) b!159228))

(assert (= (and b!159225 ((_ is ValueCellFull!1314) mapDefault!5660)) b!159224))

(assert (= b!159229 b!159225))

(assert (= start!16064 b!159229))

(declare-fun m!191575 () Bool)

(assert (=> b!159220 m!191575))

(declare-fun m!191577 () Bool)

(assert (=> start!16064 m!191577))

(declare-fun m!191579 () Bool)

(assert (=> b!159222 m!191579))

(declare-fun m!191581 () Bool)

(assert (=> mapNonEmpty!5660 m!191581))

(declare-fun m!191583 () Bool)

(assert (=> b!159221 m!191583))

(declare-fun m!191585 () Bool)

(assert (=> b!159226 m!191585))

(declare-fun m!191587 () Bool)

(assert (=> b!159229 m!191587))

(declare-fun m!191589 () Bool)

(assert (=> b!159229 m!191589))

(declare-fun m!191591 () Bool)

(assert (=> b!159227 m!191591))

(assert (=> b!159227 m!191591))

(declare-fun m!191593 () Bool)

(assert (=> b!159227 m!191593))

(check-sat (not b!159222) tp_is_empty!3315 (not mapNonEmpty!5660) (not b_next!3513) b_and!9945 (not b!159227) (not b!159229) (not b!159226) (not b!159221) (not b!159220) (not start!16064))
(check-sat b_and!9945 (not b_next!3513))
