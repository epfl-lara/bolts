; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22786 () Bool)

(assert start!22786)

(declare-fun b!237439 () Bool)

(declare-fun b_free!6381 () Bool)

(declare-fun b_next!6381 () Bool)

(assert (=> b!237439 (= b_free!6381 (not b_next!6381))))

(declare-fun tp!22334 () Bool)

(declare-fun b_and!13353 () Bool)

(assert (=> b!237439 (= tp!22334 b_and!13353)))

(declare-fun b!237435 () Bool)

(declare-fun e!154200 () Bool)

(declare-datatypes ((V!7971 0))(
  ( (V!7972 (val!3166 Int)) )
))
(declare-datatypes ((ValueCell!2778 0))(
  ( (ValueCellFull!2778 (v!5196 V!7971)) (EmptyCell!2778) )
))
(declare-datatypes ((array!11756 0))(
  ( (array!11757 (arr!5583 (Array (_ BitVec 32) ValueCell!2778)) (size!5923 (_ BitVec 32))) )
))
(declare-datatypes ((array!11758 0))(
  ( (array!11759 (arr!5584 (Array (_ BitVec 32) (_ BitVec 64))) (size!5924 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3456 0))(
  ( (LongMapFixedSize!3457 (defaultEntry!4408 Int) (mask!10421 (_ BitVec 32)) (extraKeys!4145 (_ BitVec 32)) (zeroValue!4249 V!7971) (minValue!4249 V!7971) (_size!1777 (_ BitVec 32)) (_keys!6500 array!11758) (_values!4391 array!11756) (_vacant!1777 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3456)

(assert (=> b!237435 (= e!154200 (and (= (size!5923 (_values!4391 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10421 thiss!1504))) (= (size!5924 (_keys!6500 thiss!1504)) (size!5923 (_values!4391 thiss!1504))) (bvsge (mask!10421 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4145 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4145 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!10583 () Bool)

(declare-fun mapRes!10583 () Bool)

(assert (=> mapIsEmpty!10583 mapRes!10583))

(declare-fun b!237436 () Bool)

(declare-fun res!116385 () Bool)

(assert (=> b!237436 (=> (not res!116385) (not e!154200))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4662 0))(
  ( (tuple2!4663 (_1!2341 (_ BitVec 64)) (_2!2341 V!7971)) )
))
(declare-datatypes ((List!3586 0))(
  ( (Nil!3583) (Cons!3582 (h!4237 tuple2!4662) (t!8581 List!3586)) )
))
(declare-datatypes ((ListLongMap!3589 0))(
  ( (ListLongMap!3590 (toList!1810 List!3586)) )
))
(declare-fun contains!1688 (ListLongMap!3589 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1333 (array!11758 array!11756 (_ BitVec 32) (_ BitVec 32) V!7971 V!7971 (_ BitVec 32) Int) ListLongMap!3589)

(assert (=> b!237436 (= res!116385 (not (contains!1688 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)) key!932)))))

(declare-fun b!237437 () Bool)

(declare-fun res!116387 () Bool)

(assert (=> b!237437 (=> (not res!116387) (not e!154200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!237437 (= res!116387 (validMask!0 (mask!10421 thiss!1504)))))

(declare-fun e!154201 () Bool)

(declare-fun tp_is_empty!6243 () Bool)

(declare-fun e!154198 () Bool)

(declare-fun array_inv!3677 (array!11758) Bool)

(declare-fun array_inv!3678 (array!11756) Bool)

(assert (=> b!237439 (= e!154198 (and tp!22334 tp_is_empty!6243 (array_inv!3677 (_keys!6500 thiss!1504)) (array_inv!3678 (_values!4391 thiss!1504)) e!154201))))

(declare-fun b!237440 () Bool)

(declare-fun res!116384 () Bool)

(declare-fun e!154203 () Bool)

(assert (=> b!237440 (=> (not res!116384) (not e!154203))))

(assert (=> b!237440 (= res!116384 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!237441 () Bool)

(declare-fun e!154199 () Bool)

(assert (=> b!237441 (= e!154199 tp_is_empty!6243)))

(declare-fun b!237442 () Bool)

(assert (=> b!237442 (= e!154201 (and e!154199 mapRes!10583))))

(declare-fun condMapEmpty!10583 () Bool)

(declare-fun mapDefault!10583 () ValueCell!2778)

(assert (=> b!237442 (= condMapEmpty!10583 (= (arr!5583 (_values!4391 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2778)) mapDefault!10583)))))

(declare-fun b!237443 () Bool)

(assert (=> b!237443 (= e!154203 e!154200)))

(declare-fun res!116386 () Bool)

(assert (=> b!237443 (=> (not res!116386) (not e!154200))))

(declare-datatypes ((SeekEntryResult!1019 0))(
  ( (MissingZero!1019 (index!6246 (_ BitVec 32))) (Found!1019 (index!6247 (_ BitVec 32))) (Intermediate!1019 (undefined!1831 Bool) (index!6248 (_ BitVec 32)) (x!23971 (_ BitVec 32))) (Undefined!1019) (MissingVacant!1019 (index!6249 (_ BitVec 32))) )
))
(declare-fun lt!120110 () SeekEntryResult!1019)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!237443 (= res!116386 (or (= lt!120110 (MissingZero!1019 index!297)) (= lt!120110 (MissingVacant!1019 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11758 (_ BitVec 32)) SeekEntryResult!1019)

(assert (=> b!237443 (= lt!120110 (seekEntryOrOpen!0 key!932 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)))))

(declare-fun mapNonEmpty!10583 () Bool)

(declare-fun tp!22333 () Bool)

(declare-fun e!154197 () Bool)

(assert (=> mapNonEmpty!10583 (= mapRes!10583 (and tp!22333 e!154197))))

(declare-fun mapRest!10583 () (Array (_ BitVec 32) ValueCell!2778))

(declare-fun mapKey!10583 () (_ BitVec 32))

(declare-fun mapValue!10583 () ValueCell!2778)

(assert (=> mapNonEmpty!10583 (= (arr!5583 (_values!4391 thiss!1504)) (store mapRest!10583 mapKey!10583 mapValue!10583))))

(declare-fun b!237438 () Bool)

(assert (=> b!237438 (= e!154197 tp_is_empty!6243)))

(declare-fun res!116388 () Bool)

(assert (=> start!22786 (=> (not res!116388) (not e!154203))))

(declare-fun valid!1356 (LongMapFixedSize!3456) Bool)

(assert (=> start!22786 (= res!116388 (valid!1356 thiss!1504))))

(assert (=> start!22786 e!154203))

(assert (=> start!22786 e!154198))

(assert (=> start!22786 true))

(assert (= (and start!22786 res!116388) b!237440))

(assert (= (and b!237440 res!116384) b!237443))

(assert (= (and b!237443 res!116386) b!237436))

(assert (= (and b!237436 res!116385) b!237437))

(assert (= (and b!237437 res!116387) b!237435))

(assert (= (and b!237442 condMapEmpty!10583) mapIsEmpty!10583))

(assert (= (and b!237442 (not condMapEmpty!10583)) mapNonEmpty!10583))

(get-info :version)

(assert (= (and mapNonEmpty!10583 ((_ is ValueCellFull!2778) mapValue!10583)) b!237438))

(assert (= (and b!237442 ((_ is ValueCellFull!2778) mapDefault!10583)) b!237441))

(assert (= b!237439 b!237442))

(assert (= start!22786 b!237439))

(declare-fun m!258215 () Bool)

(assert (=> b!237443 m!258215))

(declare-fun m!258217 () Bool)

(assert (=> mapNonEmpty!10583 m!258217))

(declare-fun m!258219 () Bool)

(assert (=> b!237439 m!258219))

(declare-fun m!258221 () Bool)

(assert (=> b!237439 m!258221))

(declare-fun m!258223 () Bool)

(assert (=> b!237436 m!258223))

(assert (=> b!237436 m!258223))

(declare-fun m!258225 () Bool)

(assert (=> b!237436 m!258225))

(declare-fun m!258227 () Bool)

(assert (=> start!22786 m!258227))

(declare-fun m!258229 () Bool)

(assert (=> b!237437 m!258229))

(check-sat (not start!22786) (not b_next!6381) (not b!237437) tp_is_empty!6243 (not mapNonEmpty!10583) (not b!237443) (not b!237436) b_and!13353 (not b!237439))
(check-sat b_and!13353 (not b_next!6381))
(get-model)

(declare-fun d!59537 () Bool)

(assert (=> d!59537 (= (validMask!0 (mask!10421 thiss!1504)) (and (or (= (mask!10421 thiss!1504) #b00000000000000000000000000000111) (= (mask!10421 thiss!1504) #b00000000000000000000000000001111) (= (mask!10421 thiss!1504) #b00000000000000000000000000011111) (= (mask!10421 thiss!1504) #b00000000000000000000000000111111) (= (mask!10421 thiss!1504) #b00000000000000000000000001111111) (= (mask!10421 thiss!1504) #b00000000000000000000000011111111) (= (mask!10421 thiss!1504) #b00000000000000000000000111111111) (= (mask!10421 thiss!1504) #b00000000000000000000001111111111) (= (mask!10421 thiss!1504) #b00000000000000000000011111111111) (= (mask!10421 thiss!1504) #b00000000000000000000111111111111) (= (mask!10421 thiss!1504) #b00000000000000000001111111111111) (= (mask!10421 thiss!1504) #b00000000000000000011111111111111) (= (mask!10421 thiss!1504) #b00000000000000000111111111111111) (= (mask!10421 thiss!1504) #b00000000000000001111111111111111) (= (mask!10421 thiss!1504) #b00000000000000011111111111111111) (= (mask!10421 thiss!1504) #b00000000000000111111111111111111) (= (mask!10421 thiss!1504) #b00000000000001111111111111111111) (= (mask!10421 thiss!1504) #b00000000000011111111111111111111) (= (mask!10421 thiss!1504) #b00000000000111111111111111111111) (= (mask!10421 thiss!1504) #b00000000001111111111111111111111) (= (mask!10421 thiss!1504) #b00000000011111111111111111111111) (= (mask!10421 thiss!1504) #b00000000111111111111111111111111) (= (mask!10421 thiss!1504) #b00000001111111111111111111111111) (= (mask!10421 thiss!1504) #b00000011111111111111111111111111) (= (mask!10421 thiss!1504) #b00000111111111111111111111111111) (= (mask!10421 thiss!1504) #b00001111111111111111111111111111) (= (mask!10421 thiss!1504) #b00011111111111111111111111111111) (= (mask!10421 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10421 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!237437 d!59537))

(declare-fun b!237483 () Bool)

(declare-fun e!154232 () SeekEntryResult!1019)

(assert (=> b!237483 (= e!154232 Undefined!1019)))

(declare-fun b!237484 () Bool)

(declare-fun e!154233 () SeekEntryResult!1019)

(declare-fun lt!120120 () SeekEntryResult!1019)

(assert (=> b!237484 (= e!154233 (MissingZero!1019 (index!6248 lt!120120)))))

(declare-fun b!237485 () Bool)

(declare-fun e!154231 () SeekEntryResult!1019)

(assert (=> b!237485 (= e!154231 (Found!1019 (index!6248 lt!120120)))))

(declare-fun b!237486 () Bool)

(assert (=> b!237486 (= e!154232 e!154231)))

(declare-fun lt!120121 () (_ BitVec 64))

(assert (=> b!237486 (= lt!120121 (select (arr!5584 (_keys!6500 thiss!1504)) (index!6248 lt!120120)))))

(declare-fun c!39583 () Bool)

(assert (=> b!237486 (= c!39583 (= lt!120121 key!932))))

(declare-fun d!59539 () Bool)

(declare-fun lt!120122 () SeekEntryResult!1019)

(assert (=> d!59539 (and (or ((_ is Undefined!1019) lt!120122) (not ((_ is Found!1019) lt!120122)) (and (bvsge (index!6247 lt!120122) #b00000000000000000000000000000000) (bvslt (index!6247 lt!120122) (size!5924 (_keys!6500 thiss!1504))))) (or ((_ is Undefined!1019) lt!120122) ((_ is Found!1019) lt!120122) (not ((_ is MissingZero!1019) lt!120122)) (and (bvsge (index!6246 lt!120122) #b00000000000000000000000000000000) (bvslt (index!6246 lt!120122) (size!5924 (_keys!6500 thiss!1504))))) (or ((_ is Undefined!1019) lt!120122) ((_ is Found!1019) lt!120122) ((_ is MissingZero!1019) lt!120122) (not ((_ is MissingVacant!1019) lt!120122)) (and (bvsge (index!6249 lt!120122) #b00000000000000000000000000000000) (bvslt (index!6249 lt!120122) (size!5924 (_keys!6500 thiss!1504))))) (or ((_ is Undefined!1019) lt!120122) (ite ((_ is Found!1019) lt!120122) (= (select (arr!5584 (_keys!6500 thiss!1504)) (index!6247 lt!120122)) key!932) (ite ((_ is MissingZero!1019) lt!120122) (= (select (arr!5584 (_keys!6500 thiss!1504)) (index!6246 lt!120122)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1019) lt!120122) (= (select (arr!5584 (_keys!6500 thiss!1504)) (index!6249 lt!120122)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59539 (= lt!120122 e!154232)))

(declare-fun c!39585 () Bool)

(assert (=> d!59539 (= c!39585 (and ((_ is Intermediate!1019) lt!120120) (undefined!1831 lt!120120)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11758 (_ BitVec 32)) SeekEntryResult!1019)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59539 (= lt!120120 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10421 thiss!1504)) key!932 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)))))

(assert (=> d!59539 (validMask!0 (mask!10421 thiss!1504))))

(assert (=> d!59539 (= (seekEntryOrOpen!0 key!932 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)) lt!120122)))

(declare-fun b!237487 () Bool)

(declare-fun c!39584 () Bool)

(assert (=> b!237487 (= c!39584 (= lt!120121 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237487 (= e!154231 e!154233)))

(declare-fun b!237488 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11758 (_ BitVec 32)) SeekEntryResult!1019)

(assert (=> b!237488 (= e!154233 (seekKeyOrZeroReturnVacant!0 (x!23971 lt!120120) (index!6248 lt!120120) (index!6248 lt!120120) key!932 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)))))

(assert (= (and d!59539 c!39585) b!237483))

(assert (= (and d!59539 (not c!39585)) b!237486))

(assert (= (and b!237486 c!39583) b!237485))

(assert (= (and b!237486 (not c!39583)) b!237487))

(assert (= (and b!237487 c!39584) b!237484))

(assert (= (and b!237487 (not c!39584)) b!237488))

(declare-fun m!258247 () Bool)

(assert (=> b!237486 m!258247))

(declare-fun m!258249 () Bool)

(assert (=> d!59539 m!258249))

(assert (=> d!59539 m!258249))

(declare-fun m!258251 () Bool)

(assert (=> d!59539 m!258251))

(declare-fun m!258253 () Bool)

(assert (=> d!59539 m!258253))

(assert (=> d!59539 m!258229))

(declare-fun m!258255 () Bool)

(assert (=> d!59539 m!258255))

(declare-fun m!258257 () Bool)

(assert (=> d!59539 m!258257))

(declare-fun m!258259 () Bool)

(assert (=> b!237488 m!258259))

(assert (=> b!237443 d!59539))

(declare-fun d!59541 () Bool)

(assert (=> d!59541 (= (array_inv!3677 (_keys!6500 thiss!1504)) (bvsge (size!5924 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237439 d!59541))

(declare-fun d!59543 () Bool)

(assert (=> d!59543 (= (array_inv!3678 (_values!4391 thiss!1504)) (bvsge (size!5923 (_values!4391 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237439 d!59543))

(declare-fun d!59545 () Bool)

(declare-fun e!154238 () Bool)

(assert (=> d!59545 e!154238))

(declare-fun res!116406 () Bool)

(assert (=> d!59545 (=> res!116406 e!154238)))

(declare-fun lt!120133 () Bool)

(assert (=> d!59545 (= res!116406 (not lt!120133))))

(declare-fun lt!120132 () Bool)

(assert (=> d!59545 (= lt!120133 lt!120132)))

(declare-datatypes ((Unit!7297 0))(
  ( (Unit!7298) )
))
(declare-fun lt!120131 () Unit!7297)

(declare-fun e!154239 () Unit!7297)

(assert (=> d!59545 (= lt!120131 e!154239)))

(declare-fun c!39588 () Bool)

(assert (=> d!59545 (= c!39588 lt!120132)))

(declare-fun containsKey!266 (List!3586 (_ BitVec 64)) Bool)

(assert (=> d!59545 (= lt!120132 (containsKey!266 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932))))

(assert (=> d!59545 (= (contains!1688 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)) key!932) lt!120133)))

(declare-fun b!237495 () Bool)

(declare-fun lt!120134 () Unit!7297)

(assert (=> b!237495 (= e!154239 lt!120134)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!215 (List!3586 (_ BitVec 64)) Unit!7297)

(assert (=> b!237495 (= lt!120134 (lemmaContainsKeyImpliesGetValueByKeyDefined!215 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932))))

(declare-datatypes ((Option!280 0))(
  ( (Some!279 (v!5198 V!7971)) (None!278) )
))
(declare-fun isDefined!216 (Option!280) Bool)

(declare-fun getValueByKey!274 (List!3586 (_ BitVec 64)) Option!280)

(assert (=> b!237495 (isDefined!216 (getValueByKey!274 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932))))

(declare-fun b!237496 () Bool)

(declare-fun Unit!7299 () Unit!7297)

(assert (=> b!237496 (= e!154239 Unit!7299)))

(declare-fun b!237497 () Bool)

(assert (=> b!237497 (= e!154238 (isDefined!216 (getValueByKey!274 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932)))))

(assert (= (and d!59545 c!39588) b!237495))

(assert (= (and d!59545 (not c!39588)) b!237496))

(assert (= (and d!59545 (not res!116406)) b!237497))

(declare-fun m!258261 () Bool)

(assert (=> d!59545 m!258261))

(declare-fun m!258263 () Bool)

(assert (=> b!237495 m!258263))

(declare-fun m!258265 () Bool)

(assert (=> b!237495 m!258265))

(assert (=> b!237495 m!258265))

(declare-fun m!258267 () Bool)

(assert (=> b!237495 m!258267))

(assert (=> b!237497 m!258265))

(assert (=> b!237497 m!258265))

(assert (=> b!237497 m!258267))

(assert (=> b!237436 d!59545))

(declare-fun b!237540 () Bool)

(declare-fun e!154274 () Bool)

(declare-fun lt!120185 () ListLongMap!3589)

(declare-fun apply!217 (ListLongMap!3589 (_ BitVec 64)) V!7971)

(assert (=> b!237540 (= e!154274 (= (apply!217 lt!120185 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4249 thiss!1504)))))

(declare-fun b!237541 () Bool)

(declare-fun e!154272 () Unit!7297)

(declare-fun lt!120198 () Unit!7297)

(assert (=> b!237541 (= e!154272 lt!120198)))

(declare-fun lt!120195 () ListLongMap!3589)

(declare-fun getCurrentListMapNoExtraKeys!536 (array!11758 array!11756 (_ BitVec 32) (_ BitVec 32) V!7971 V!7971 (_ BitVec 32) Int) ListLongMap!3589)

(assert (=> b!237541 (= lt!120195 (getCurrentListMapNoExtraKeys!536 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))))

(declare-fun lt!120197 () (_ BitVec 64))

(assert (=> b!237541 (= lt!120197 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120182 () (_ BitVec 64))

(assert (=> b!237541 (= lt!120182 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120186 () Unit!7297)

(declare-fun addStillContains!193 (ListLongMap!3589 (_ BitVec 64) V!7971 (_ BitVec 64)) Unit!7297)

(assert (=> b!237541 (= lt!120186 (addStillContains!193 lt!120195 lt!120197 (zeroValue!4249 thiss!1504) lt!120182))))

(declare-fun +!639 (ListLongMap!3589 tuple2!4662) ListLongMap!3589)

(assert (=> b!237541 (contains!1688 (+!639 lt!120195 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504))) lt!120182)))

(declare-fun lt!120181 () Unit!7297)

(assert (=> b!237541 (= lt!120181 lt!120186)))

(declare-fun lt!120187 () ListLongMap!3589)

(assert (=> b!237541 (= lt!120187 (getCurrentListMapNoExtraKeys!536 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))))

(declare-fun lt!120179 () (_ BitVec 64))

(assert (=> b!237541 (= lt!120179 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120188 () (_ BitVec 64))

(assert (=> b!237541 (= lt!120188 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120180 () Unit!7297)

(declare-fun addApplyDifferent!193 (ListLongMap!3589 (_ BitVec 64) V!7971 (_ BitVec 64)) Unit!7297)

(assert (=> b!237541 (= lt!120180 (addApplyDifferent!193 lt!120187 lt!120179 (minValue!4249 thiss!1504) lt!120188))))

(assert (=> b!237541 (= (apply!217 (+!639 lt!120187 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504))) lt!120188) (apply!217 lt!120187 lt!120188))))

(declare-fun lt!120184 () Unit!7297)

(assert (=> b!237541 (= lt!120184 lt!120180)))

(declare-fun lt!120194 () ListLongMap!3589)

(assert (=> b!237541 (= lt!120194 (getCurrentListMapNoExtraKeys!536 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))))

(declare-fun lt!120196 () (_ BitVec 64))

(assert (=> b!237541 (= lt!120196 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120192 () (_ BitVec 64))

(assert (=> b!237541 (= lt!120192 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120189 () Unit!7297)

(assert (=> b!237541 (= lt!120189 (addApplyDifferent!193 lt!120194 lt!120196 (zeroValue!4249 thiss!1504) lt!120192))))

(assert (=> b!237541 (= (apply!217 (+!639 lt!120194 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504))) lt!120192) (apply!217 lt!120194 lt!120192))))

(declare-fun lt!120200 () Unit!7297)

(assert (=> b!237541 (= lt!120200 lt!120189)))

(declare-fun lt!120191 () ListLongMap!3589)

(assert (=> b!237541 (= lt!120191 (getCurrentListMapNoExtraKeys!536 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))))

(declare-fun lt!120193 () (_ BitVec 64))

(assert (=> b!237541 (= lt!120193 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120190 () (_ BitVec 64))

(assert (=> b!237541 (= lt!120190 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237541 (= lt!120198 (addApplyDifferent!193 lt!120191 lt!120193 (minValue!4249 thiss!1504) lt!120190))))

(assert (=> b!237541 (= (apply!217 (+!639 lt!120191 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504))) lt!120190) (apply!217 lt!120191 lt!120190))))

(declare-fun b!237542 () Bool)

(declare-fun e!154268 () ListLongMap!3589)

(declare-fun call!22088 () ListLongMap!3589)

(assert (=> b!237542 (= e!154268 call!22088)))

(declare-fun b!237543 () Bool)

(declare-fun e!154275 () ListLongMap!3589)

(assert (=> b!237543 (= e!154275 e!154268)))

(declare-fun c!39606 () Bool)

(assert (=> b!237543 (= c!39606 (and (not (= (bvand (extraKeys!4145 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4145 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!237544 () Bool)

(declare-fun res!116432 () Bool)

(declare-fun e!154267 () Bool)

(assert (=> b!237544 (=> (not res!116432) (not e!154267))))

(declare-fun e!154273 () Bool)

(assert (=> b!237544 (= res!116432 e!154273)))

(declare-fun c!39601 () Bool)

(assert (=> b!237544 (= c!39601 (not (= (bvand (extraKeys!4145 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!22081 () Bool)

(declare-fun call!22090 () Bool)

(assert (=> bm!22081 (= call!22090 (contains!1688 lt!120185 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!22082 () Bool)

(declare-fun call!22085 () ListLongMap!3589)

(declare-fun call!22087 () ListLongMap!3589)

(assert (=> bm!22082 (= call!22085 call!22087)))

(declare-fun b!237545 () Bool)

(declare-fun Unit!7300 () Unit!7297)

(assert (=> b!237545 (= e!154272 Unit!7300)))

(declare-fun b!237546 () Bool)

(declare-fun e!154277 () ListLongMap!3589)

(assert (=> b!237546 (= e!154277 call!22085)))

(declare-fun b!237547 () Bool)

(declare-fun res!116431 () Bool)

(assert (=> b!237547 (=> (not res!116431) (not e!154267))))

(declare-fun e!154269 () Bool)

(assert (=> b!237547 (= res!116431 e!154269)))

(declare-fun res!116426 () Bool)

(assert (=> b!237547 (=> res!116426 e!154269)))

(declare-fun e!154270 () Bool)

(assert (=> b!237547 (= res!116426 (not e!154270))))

(declare-fun res!116425 () Bool)

(assert (=> b!237547 (=> (not res!116425) (not e!154270))))

(assert (=> b!237547 (= res!116425 (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun b!237548 () Bool)

(declare-fun e!154266 () Bool)

(assert (=> b!237548 (= e!154266 (= (apply!217 lt!120185 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4249 thiss!1504)))))

(declare-fun b!237549 () Bool)

(assert (=> b!237549 (= e!154273 e!154274)))

(declare-fun res!116427 () Bool)

(assert (=> b!237549 (= res!116427 call!22090)))

(assert (=> b!237549 (=> (not res!116427) (not e!154274))))

(declare-fun call!22084 () ListLongMap!3589)

(declare-fun call!22086 () ListLongMap!3589)

(declare-fun bm!22083 () Bool)

(declare-fun c!39605 () Bool)

(assert (=> bm!22083 (= call!22084 (+!639 (ite c!39605 call!22086 (ite c!39606 call!22087 call!22085)) (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))))))

(declare-fun b!237550 () Bool)

(assert (=> b!237550 (= e!154275 (+!639 call!22084 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))))

(declare-fun b!237551 () Bool)

(assert (=> b!237551 (= e!154273 (not call!22090))))

(declare-fun b!237552 () Bool)

(declare-fun e!154271 () Bool)

(assert (=> b!237552 (= e!154269 e!154271)))

(declare-fun res!116433 () Bool)

(assert (=> b!237552 (=> (not res!116433) (not e!154271))))

(assert (=> b!237552 (= res!116433 (contains!1688 lt!120185 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237552 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun b!237553 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!237553 (= e!154270 (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237554 () Bool)

(declare-fun e!154278 () Bool)

(assert (=> b!237554 (= e!154267 e!154278)))

(declare-fun c!39603 () Bool)

(assert (=> b!237554 (= c!39603 (not (= (bvand (extraKeys!4145 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!237555 () Bool)

(declare-fun c!39602 () Bool)

(assert (=> b!237555 (= c!39602 (and (not (= (bvand (extraKeys!4145 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4145 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!237555 (= e!154268 e!154277)))

(declare-fun b!237556 () Bool)

(assert (=> b!237556 (= e!154277 call!22088)))

(declare-fun bm!22084 () Bool)

(assert (=> bm!22084 (= call!22086 (getCurrentListMapNoExtraKeys!536 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))))

(declare-fun b!237557 () Bool)

(assert (=> b!237557 (= e!154278 e!154266)))

(declare-fun res!116430 () Bool)

(declare-fun call!22089 () Bool)

(assert (=> b!237557 (= res!116430 call!22089)))

(assert (=> b!237557 (=> (not res!116430) (not e!154266))))

(declare-fun d!59547 () Bool)

(assert (=> d!59547 e!154267))

(declare-fun res!116428 () Bool)

(assert (=> d!59547 (=> (not res!116428) (not e!154267))))

(assert (=> d!59547 (= res!116428 (or (bvsge #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))))

(declare-fun lt!120199 () ListLongMap!3589)

(assert (=> d!59547 (= lt!120185 lt!120199)))

(declare-fun lt!120183 () Unit!7297)

(assert (=> d!59547 (= lt!120183 e!154272)))

(declare-fun c!39604 () Bool)

(declare-fun e!154276 () Bool)

(assert (=> d!59547 (= c!39604 e!154276)))

(declare-fun res!116429 () Bool)

(assert (=> d!59547 (=> (not res!116429) (not e!154276))))

(assert (=> d!59547 (= res!116429 (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(assert (=> d!59547 (= lt!120199 e!154275)))

(assert (=> d!59547 (= c!39605 (and (not (= (bvand (extraKeys!4145 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4145 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59547 (validMask!0 (mask!10421 thiss!1504))))

(assert (=> d!59547 (= (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)) lt!120185)))

(declare-fun b!237558 () Bool)

(declare-fun get!2878 (ValueCell!2778 V!7971) V!7971)

(declare-fun dynLambda!555 (Int (_ BitVec 64)) V!7971)

(assert (=> b!237558 (= e!154271 (= (apply!217 lt!120185 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)) (get!2878 (select (arr!5583 (_values!4391 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!555 (defaultEntry!4408 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!237558 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5923 (_values!4391 thiss!1504))))))

(assert (=> b!237558 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun b!237559 () Bool)

(assert (=> b!237559 (= e!154276 (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237560 () Bool)

(assert (=> b!237560 (= e!154278 (not call!22089))))

(declare-fun bm!22085 () Bool)

(assert (=> bm!22085 (= call!22088 call!22084)))

(declare-fun bm!22086 () Bool)

(assert (=> bm!22086 (= call!22089 (contains!1688 lt!120185 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!22087 () Bool)

(assert (=> bm!22087 (= call!22087 call!22086)))

(assert (= (and d!59547 c!39605) b!237550))

(assert (= (and d!59547 (not c!39605)) b!237543))

(assert (= (and b!237543 c!39606) b!237542))

(assert (= (and b!237543 (not c!39606)) b!237555))

(assert (= (and b!237555 c!39602) b!237556))

(assert (= (and b!237555 (not c!39602)) b!237546))

(assert (= (or b!237556 b!237546) bm!22082))

(assert (= (or b!237542 bm!22082) bm!22087))

(assert (= (or b!237542 b!237556) bm!22085))

(assert (= (or b!237550 bm!22087) bm!22084))

(assert (= (or b!237550 bm!22085) bm!22083))

(assert (= (and d!59547 res!116429) b!237559))

(assert (= (and d!59547 c!39604) b!237541))

(assert (= (and d!59547 (not c!39604)) b!237545))

(assert (= (and d!59547 res!116428) b!237547))

(assert (= (and b!237547 res!116425) b!237553))

(assert (= (and b!237547 (not res!116426)) b!237552))

(assert (= (and b!237552 res!116433) b!237558))

(assert (= (and b!237547 res!116431) b!237544))

(assert (= (and b!237544 c!39601) b!237549))

(assert (= (and b!237544 (not c!39601)) b!237551))

(assert (= (and b!237549 res!116427) b!237540))

(assert (= (or b!237549 b!237551) bm!22081))

(assert (= (and b!237544 res!116432) b!237554))

(assert (= (and b!237554 c!39603) b!237557))

(assert (= (and b!237554 (not c!39603)) b!237560))

(assert (= (and b!237557 res!116430) b!237548))

(assert (= (or b!237557 b!237560) bm!22086))

(declare-fun b_lambda!7985 () Bool)

(assert (=> (not b_lambda!7985) (not b!237558)))

(declare-fun t!8584 () Bool)

(declare-fun tb!2955 () Bool)

(assert (=> (and b!237439 (= (defaultEntry!4408 thiss!1504) (defaultEntry!4408 thiss!1504)) t!8584) tb!2955))

(declare-fun result!5171 () Bool)

(assert (=> tb!2955 (= result!5171 tp_is_empty!6243)))

(assert (=> b!237558 t!8584))

(declare-fun b_and!13357 () Bool)

(assert (= b_and!13353 (and (=> t!8584 result!5171) b_and!13357)))

(declare-fun m!258269 () Bool)

(assert (=> bm!22081 m!258269))

(declare-fun m!258271 () Bool)

(assert (=> b!237541 m!258271))

(declare-fun m!258273 () Bool)

(assert (=> b!237541 m!258273))

(declare-fun m!258275 () Bool)

(assert (=> b!237541 m!258275))

(declare-fun m!258277 () Bool)

(assert (=> b!237541 m!258277))

(declare-fun m!258279 () Bool)

(assert (=> b!237541 m!258279))

(declare-fun m!258281 () Bool)

(assert (=> b!237541 m!258281))

(assert (=> b!237541 m!258271))

(declare-fun m!258283 () Bool)

(assert (=> b!237541 m!258283))

(assert (=> b!237541 m!258279))

(declare-fun m!258285 () Bool)

(assert (=> b!237541 m!258285))

(declare-fun m!258287 () Bool)

(assert (=> b!237541 m!258287))

(declare-fun m!258289 () Bool)

(assert (=> b!237541 m!258289))

(declare-fun m!258291 () Bool)

(assert (=> b!237541 m!258291))

(declare-fun m!258293 () Bool)

(assert (=> b!237541 m!258293))

(declare-fun m!258295 () Bool)

(assert (=> b!237541 m!258295))

(declare-fun m!258297 () Bool)

(assert (=> b!237541 m!258297))

(declare-fun m!258299 () Bool)

(assert (=> b!237541 m!258299))

(assert (=> b!237541 m!258297))

(declare-fun m!258301 () Bool)

(assert (=> b!237541 m!258301))

(assert (=> b!237541 m!258301))

(declare-fun m!258303 () Bool)

(assert (=> b!237541 m!258303))

(assert (=> b!237558 m!258289))

(declare-fun m!258305 () Bool)

(assert (=> b!237558 m!258305))

(declare-fun m!258307 () Bool)

(assert (=> b!237558 m!258307))

(assert (=> b!237558 m!258305))

(declare-fun m!258309 () Bool)

(assert (=> b!237558 m!258309))

(assert (=> b!237558 m!258289))

(declare-fun m!258311 () Bool)

(assert (=> b!237558 m!258311))

(assert (=> b!237558 m!258307))

(declare-fun m!258313 () Bool)

(assert (=> b!237540 m!258313))

(declare-fun m!258315 () Bool)

(assert (=> bm!22086 m!258315))

(assert (=> b!237552 m!258289))

(assert (=> b!237552 m!258289))

(declare-fun m!258317 () Bool)

(assert (=> b!237552 m!258317))

(declare-fun m!258319 () Bool)

(assert (=> b!237548 m!258319))

(assert (=> b!237559 m!258289))

(assert (=> b!237559 m!258289))

(declare-fun m!258321 () Bool)

(assert (=> b!237559 m!258321))

(declare-fun m!258323 () Bool)

(assert (=> b!237550 m!258323))

(declare-fun m!258325 () Bool)

(assert (=> bm!22083 m!258325))

(assert (=> d!59547 m!258229))

(assert (=> b!237553 m!258289))

(assert (=> b!237553 m!258289))

(assert (=> b!237553 m!258321))

(assert (=> bm!22084 m!258291))

(assert (=> b!237436 d!59547))

(declare-fun d!59549 () Bool)

(declare-fun res!116440 () Bool)

(declare-fun e!154281 () Bool)

(assert (=> d!59549 (=> (not res!116440) (not e!154281))))

(declare-fun simpleValid!239 (LongMapFixedSize!3456) Bool)

(assert (=> d!59549 (= res!116440 (simpleValid!239 thiss!1504))))

(assert (=> d!59549 (= (valid!1356 thiss!1504) e!154281)))

(declare-fun b!237569 () Bool)

(declare-fun res!116441 () Bool)

(assert (=> b!237569 (=> (not res!116441) (not e!154281))))

(declare-fun arrayCountValidKeys!0 (array!11758 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!237569 (= res!116441 (= (arrayCountValidKeys!0 (_keys!6500 thiss!1504) #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))) (_size!1777 thiss!1504)))))

(declare-fun b!237570 () Bool)

(declare-fun res!116442 () Bool)

(assert (=> b!237570 (=> (not res!116442) (not e!154281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11758 (_ BitVec 32)) Bool)

(assert (=> b!237570 (= res!116442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)))))

(declare-fun b!237571 () Bool)

(declare-datatypes ((List!3588 0))(
  ( (Nil!3585) (Cons!3584 (h!4239 (_ BitVec 64)) (t!8585 List!3588)) )
))
(declare-fun arrayNoDuplicates!0 (array!11758 (_ BitVec 32) List!3588) Bool)

(assert (=> b!237571 (= e!154281 (arrayNoDuplicates!0 (_keys!6500 thiss!1504) #b00000000000000000000000000000000 Nil!3585))))

(assert (= (and d!59549 res!116440) b!237569))

(assert (= (and b!237569 res!116441) b!237570))

(assert (= (and b!237570 res!116442) b!237571))

(declare-fun m!258327 () Bool)

(assert (=> d!59549 m!258327))

(declare-fun m!258329 () Bool)

(assert (=> b!237569 m!258329))

(declare-fun m!258331 () Bool)

(assert (=> b!237570 m!258331))

(declare-fun m!258333 () Bool)

(assert (=> b!237571 m!258333))

(assert (=> start!22786 d!59549))

(declare-fun mapNonEmpty!10589 () Bool)

(declare-fun mapRes!10589 () Bool)

(declare-fun tp!22343 () Bool)

(declare-fun e!154286 () Bool)

(assert (=> mapNonEmpty!10589 (= mapRes!10589 (and tp!22343 e!154286))))

(declare-fun mapKey!10589 () (_ BitVec 32))

(declare-fun mapRest!10589 () (Array (_ BitVec 32) ValueCell!2778))

(declare-fun mapValue!10589 () ValueCell!2778)

(assert (=> mapNonEmpty!10589 (= mapRest!10583 (store mapRest!10589 mapKey!10589 mapValue!10589))))

(declare-fun b!237579 () Bool)

(declare-fun e!154287 () Bool)

(assert (=> b!237579 (= e!154287 tp_is_empty!6243)))

(declare-fun b!237578 () Bool)

(assert (=> b!237578 (= e!154286 tp_is_empty!6243)))

(declare-fun condMapEmpty!10589 () Bool)

(declare-fun mapDefault!10589 () ValueCell!2778)

(assert (=> mapNonEmpty!10583 (= condMapEmpty!10589 (= mapRest!10583 ((as const (Array (_ BitVec 32) ValueCell!2778)) mapDefault!10589)))))

(assert (=> mapNonEmpty!10583 (= tp!22333 (and e!154287 mapRes!10589))))

(declare-fun mapIsEmpty!10589 () Bool)

(assert (=> mapIsEmpty!10589 mapRes!10589))

(assert (= (and mapNonEmpty!10583 condMapEmpty!10589) mapIsEmpty!10589))

(assert (= (and mapNonEmpty!10583 (not condMapEmpty!10589)) mapNonEmpty!10589))

(assert (= (and mapNonEmpty!10589 ((_ is ValueCellFull!2778) mapValue!10589)) b!237578))

(assert (= (and mapNonEmpty!10583 ((_ is ValueCellFull!2778) mapDefault!10589)) b!237579))

(declare-fun m!258335 () Bool)

(assert (=> mapNonEmpty!10589 m!258335))

(declare-fun b_lambda!7987 () Bool)

(assert (= b_lambda!7985 (or (and b!237439 b_free!6381) b_lambda!7987)))

(check-sat (not b!237495) (not b!237571) (not b!237553) (not b_lambda!7987) (not b!237548) (not bm!22084) (not d!59539) (not b!237540) (not b!237552) b_and!13357 (not b!237558) (not bm!22083) (not b!237488) (not bm!22086) (not b!237497) (not b_next!6381) (not b!237569) (not d!59549) (not b!237559) (not b!237541) (not b!237550) (not bm!22081) (not d!59547) tp_is_empty!6243 (not mapNonEmpty!10589) (not d!59545) (not b!237570))
(check-sat b_and!13357 (not b_next!6381))
(get-model)

(declare-fun d!59551 () Bool)

(declare-fun e!154288 () Bool)

(assert (=> d!59551 e!154288))

(declare-fun res!116443 () Bool)

(assert (=> d!59551 (=> res!116443 e!154288)))

(declare-fun lt!120203 () Bool)

(assert (=> d!59551 (= res!116443 (not lt!120203))))

(declare-fun lt!120202 () Bool)

(assert (=> d!59551 (= lt!120203 lt!120202)))

(declare-fun lt!120201 () Unit!7297)

(declare-fun e!154289 () Unit!7297)

(assert (=> d!59551 (= lt!120201 e!154289)))

(declare-fun c!39607 () Bool)

(assert (=> d!59551 (= c!39607 lt!120202)))

(assert (=> d!59551 (= lt!120202 (containsKey!266 (toList!1810 lt!120185) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59551 (= (contains!1688 lt!120185 #b0000000000000000000000000000000000000000000000000000000000000000) lt!120203)))

(declare-fun b!237580 () Bool)

(declare-fun lt!120204 () Unit!7297)

(assert (=> b!237580 (= e!154289 lt!120204)))

(assert (=> b!237580 (= lt!120204 (lemmaContainsKeyImpliesGetValueByKeyDefined!215 (toList!1810 lt!120185) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237580 (isDefined!216 (getValueByKey!274 (toList!1810 lt!120185) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!237581 () Bool)

(declare-fun Unit!7301 () Unit!7297)

(assert (=> b!237581 (= e!154289 Unit!7301)))

(declare-fun b!237582 () Bool)

(assert (=> b!237582 (= e!154288 (isDefined!216 (getValueByKey!274 (toList!1810 lt!120185) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59551 c!39607) b!237580))

(assert (= (and d!59551 (not c!39607)) b!237581))

(assert (= (and d!59551 (not res!116443)) b!237582))

(declare-fun m!258337 () Bool)

(assert (=> d!59551 m!258337))

(declare-fun m!258339 () Bool)

(assert (=> b!237580 m!258339))

(declare-fun m!258341 () Bool)

(assert (=> b!237580 m!258341))

(assert (=> b!237580 m!258341))

(declare-fun m!258343 () Bool)

(assert (=> b!237580 m!258343))

(assert (=> b!237582 m!258341))

(assert (=> b!237582 m!258341))

(assert (=> b!237582 m!258343))

(assert (=> bm!22081 d!59551))

(declare-fun d!59553 () Bool)

(declare-fun e!154290 () Bool)

(assert (=> d!59553 e!154290))

(declare-fun res!116444 () Bool)

(assert (=> d!59553 (=> res!116444 e!154290)))

(declare-fun lt!120207 () Bool)

(assert (=> d!59553 (= res!116444 (not lt!120207))))

(declare-fun lt!120206 () Bool)

(assert (=> d!59553 (= lt!120207 lt!120206)))

(declare-fun lt!120205 () Unit!7297)

(declare-fun e!154291 () Unit!7297)

(assert (=> d!59553 (= lt!120205 e!154291)))

(declare-fun c!39608 () Bool)

(assert (=> d!59553 (= c!39608 lt!120206)))

(assert (=> d!59553 (= lt!120206 (containsKey!266 (toList!1810 lt!120185) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59553 (= (contains!1688 lt!120185 #b1000000000000000000000000000000000000000000000000000000000000000) lt!120207)))

(declare-fun b!237583 () Bool)

(declare-fun lt!120208 () Unit!7297)

(assert (=> b!237583 (= e!154291 lt!120208)))

(assert (=> b!237583 (= lt!120208 (lemmaContainsKeyImpliesGetValueByKeyDefined!215 (toList!1810 lt!120185) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237583 (isDefined!216 (getValueByKey!274 (toList!1810 lt!120185) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!237584 () Bool)

(declare-fun Unit!7302 () Unit!7297)

(assert (=> b!237584 (= e!154291 Unit!7302)))

(declare-fun b!237585 () Bool)

(assert (=> b!237585 (= e!154290 (isDefined!216 (getValueByKey!274 (toList!1810 lt!120185) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59553 c!39608) b!237583))

(assert (= (and d!59553 (not c!39608)) b!237584))

(assert (= (and d!59553 (not res!116444)) b!237585))

(declare-fun m!258345 () Bool)

(assert (=> d!59553 m!258345))

(declare-fun m!258347 () Bool)

(assert (=> b!237583 m!258347))

(declare-fun m!258349 () Bool)

(assert (=> b!237583 m!258349))

(assert (=> b!237583 m!258349))

(declare-fun m!258351 () Bool)

(assert (=> b!237583 m!258351))

(assert (=> b!237585 m!258349))

(assert (=> b!237585 m!258349))

(assert (=> b!237585 m!258351))

(assert (=> bm!22086 d!59553))

(declare-fun d!59555 () Bool)

(declare-fun e!154292 () Bool)

(assert (=> d!59555 e!154292))

(declare-fun res!116445 () Bool)

(assert (=> d!59555 (=> res!116445 e!154292)))

(declare-fun lt!120211 () Bool)

(assert (=> d!59555 (= res!116445 (not lt!120211))))

(declare-fun lt!120210 () Bool)

(assert (=> d!59555 (= lt!120211 lt!120210)))

(declare-fun lt!120209 () Unit!7297)

(declare-fun e!154293 () Unit!7297)

(assert (=> d!59555 (= lt!120209 e!154293)))

(declare-fun c!39609 () Bool)

(assert (=> d!59555 (= c!39609 lt!120210)))

(assert (=> d!59555 (= lt!120210 (containsKey!266 (toList!1810 lt!120185) (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59555 (= (contains!1688 lt!120185 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)) lt!120211)))

(declare-fun b!237586 () Bool)

(declare-fun lt!120212 () Unit!7297)

(assert (=> b!237586 (= e!154293 lt!120212)))

(assert (=> b!237586 (= lt!120212 (lemmaContainsKeyImpliesGetValueByKeyDefined!215 (toList!1810 lt!120185) (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237586 (isDefined!216 (getValueByKey!274 (toList!1810 lt!120185) (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237587 () Bool)

(declare-fun Unit!7303 () Unit!7297)

(assert (=> b!237587 (= e!154293 Unit!7303)))

(declare-fun b!237588 () Bool)

(assert (=> b!237588 (= e!154292 (isDefined!216 (getValueByKey!274 (toList!1810 lt!120185) (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!59555 c!39609) b!237586))

(assert (= (and d!59555 (not c!39609)) b!237587))

(assert (= (and d!59555 (not res!116445)) b!237588))

(assert (=> d!59555 m!258289))

(declare-fun m!258353 () Bool)

(assert (=> d!59555 m!258353))

(assert (=> b!237586 m!258289))

(declare-fun m!258355 () Bool)

(assert (=> b!237586 m!258355))

(assert (=> b!237586 m!258289))

(declare-fun m!258357 () Bool)

(assert (=> b!237586 m!258357))

(assert (=> b!237586 m!258357))

(declare-fun m!258359 () Bool)

(assert (=> b!237586 m!258359))

(assert (=> b!237588 m!258289))

(assert (=> b!237588 m!258357))

(assert (=> b!237588 m!258357))

(assert (=> b!237588 m!258359))

(assert (=> b!237552 d!59555))

(declare-fun d!59557 () Bool)

(declare-fun res!116450 () Bool)

(declare-fun e!154298 () Bool)

(assert (=> d!59557 (=> res!116450 e!154298)))

(assert (=> d!59557 (= res!116450 (and ((_ is Cons!3582) (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))) (= (_1!2341 (h!4237 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))))) key!932)))))

(assert (=> d!59557 (= (containsKey!266 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932) e!154298)))

(declare-fun b!237593 () Bool)

(declare-fun e!154299 () Bool)

(assert (=> b!237593 (= e!154298 e!154299)))

(declare-fun res!116451 () Bool)

(assert (=> b!237593 (=> (not res!116451) (not e!154299))))

(assert (=> b!237593 (= res!116451 (and (or (not ((_ is Cons!3582) (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))))) (bvsle (_1!2341 (h!4237 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))))) key!932)) ((_ is Cons!3582) (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))) (bvslt (_1!2341 (h!4237 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))))) key!932)))))

(declare-fun b!237594 () Bool)

(assert (=> b!237594 (= e!154299 (containsKey!266 (t!8581 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))) key!932))))

(assert (= (and d!59557 (not res!116450)) b!237593))

(assert (= (and b!237593 res!116451) b!237594))

(declare-fun m!258361 () Bool)

(assert (=> b!237594 m!258361))

(assert (=> d!59545 d!59557))

(declare-fun b!237603 () Bool)

(declare-fun e!154304 () (_ BitVec 32))

(assert (=> b!237603 (= e!154304 #b00000000000000000000000000000000)))

(declare-fun d!59559 () Bool)

(declare-fun lt!120215 () (_ BitVec 32))

(assert (=> d!59559 (and (bvsge lt!120215 #b00000000000000000000000000000000) (bvsle lt!120215 (bvsub (size!5924 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59559 (= lt!120215 e!154304)))

(declare-fun c!39615 () Bool)

(assert (=> d!59559 (= c!39615 (bvsge #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(assert (=> d!59559 (and (bvsle #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5924 (_keys!6500 thiss!1504)) (size!5924 (_keys!6500 thiss!1504))))))

(assert (=> d!59559 (= (arrayCountValidKeys!0 (_keys!6500 thiss!1504) #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))) lt!120215)))

(declare-fun b!237604 () Bool)

(declare-fun e!154305 () (_ BitVec 32))

(assert (=> b!237604 (= e!154304 e!154305)))

(declare-fun c!39614 () Bool)

(assert (=> b!237604 (= c!39614 (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22090 () Bool)

(declare-fun call!22093 () (_ BitVec 32))

(assert (=> bm!22090 (= call!22093 (arrayCountValidKeys!0 (_keys!6500 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun b!237605 () Bool)

(assert (=> b!237605 (= e!154305 call!22093)))

(declare-fun b!237606 () Bool)

(assert (=> b!237606 (= e!154305 (bvadd #b00000000000000000000000000000001 call!22093))))

(assert (= (and d!59559 c!39615) b!237603))

(assert (= (and d!59559 (not c!39615)) b!237604))

(assert (= (and b!237604 c!39614) b!237606))

(assert (= (and b!237604 (not c!39614)) b!237605))

(assert (= (or b!237606 b!237605) bm!22090))

(assert (=> b!237604 m!258289))

(assert (=> b!237604 m!258289))

(assert (=> b!237604 m!258321))

(declare-fun m!258363 () Bool)

(assert (=> bm!22090 m!258363))

(assert (=> b!237569 d!59559))

(assert (=> d!59547 d!59537))

(declare-fun d!59561 () Bool)

(declare-fun res!116463 () Bool)

(declare-fun e!154308 () Bool)

(assert (=> d!59561 (=> (not res!116463) (not e!154308))))

(assert (=> d!59561 (= res!116463 (validMask!0 (mask!10421 thiss!1504)))))

(assert (=> d!59561 (= (simpleValid!239 thiss!1504) e!154308)))

(declare-fun b!237618 () Bool)

(assert (=> b!237618 (= e!154308 (and (bvsge (extraKeys!4145 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4145 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1777 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!237615 () Bool)

(declare-fun res!116461 () Bool)

(assert (=> b!237615 (=> (not res!116461) (not e!154308))))

(assert (=> b!237615 (= res!116461 (and (= (size!5923 (_values!4391 thiss!1504)) (bvadd (mask!10421 thiss!1504) #b00000000000000000000000000000001)) (= (size!5924 (_keys!6500 thiss!1504)) (size!5923 (_values!4391 thiss!1504))) (bvsge (_size!1777 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1777 thiss!1504) (bvadd (mask!10421 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!237617 () Bool)

(declare-fun res!116460 () Bool)

(assert (=> b!237617 (=> (not res!116460) (not e!154308))))

(declare-fun size!5927 (LongMapFixedSize!3456) (_ BitVec 32))

(assert (=> b!237617 (= res!116460 (= (size!5927 thiss!1504) (bvadd (_size!1777 thiss!1504) (bvsdiv (bvadd (extraKeys!4145 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!237616 () Bool)

(declare-fun res!116462 () Bool)

(assert (=> b!237616 (=> (not res!116462) (not e!154308))))

(assert (=> b!237616 (= res!116462 (bvsge (size!5927 thiss!1504) (_size!1777 thiss!1504)))))

(assert (= (and d!59561 res!116463) b!237615))

(assert (= (and b!237615 res!116461) b!237616))

(assert (= (and b!237616 res!116462) b!237617))

(assert (= (and b!237617 res!116460) b!237618))

(assert (=> d!59561 m!258229))

(declare-fun m!258365 () Bool)

(assert (=> b!237617 m!258365))

(assert (=> b!237616 m!258365))

(assert (=> d!59549 d!59561))

(declare-fun d!59563 () Bool)

(assert (=> d!59563 (isDefined!216 (getValueByKey!274 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932))))

(declare-fun lt!120218 () Unit!7297)

(declare-fun choose!1121 (List!3586 (_ BitVec 64)) Unit!7297)

(assert (=> d!59563 (= lt!120218 (choose!1121 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932))))

(declare-fun e!154311 () Bool)

(assert (=> d!59563 e!154311))

(declare-fun res!116466 () Bool)

(assert (=> d!59563 (=> (not res!116466) (not e!154311))))

(declare-fun isStrictlySorted!361 (List!3586) Bool)

(assert (=> d!59563 (= res!116466 (isStrictlySorted!361 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))))))

(assert (=> d!59563 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!215 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932) lt!120218)))

(declare-fun b!237621 () Bool)

(assert (=> b!237621 (= e!154311 (containsKey!266 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932))))

(assert (= (and d!59563 res!116466) b!237621))

(assert (=> d!59563 m!258265))

(assert (=> d!59563 m!258265))

(assert (=> d!59563 m!258267))

(declare-fun m!258367 () Bool)

(assert (=> d!59563 m!258367))

(declare-fun m!258369 () Bool)

(assert (=> d!59563 m!258369))

(assert (=> b!237621 m!258261))

(assert (=> b!237495 d!59563))

(declare-fun d!59565 () Bool)

(declare-fun isEmpty!523 (Option!280) Bool)

(assert (=> d!59565 (= (isDefined!216 (getValueByKey!274 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932)) (not (isEmpty!523 (getValueByKey!274 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932))))))

(declare-fun bs!8773 () Bool)

(assert (= bs!8773 d!59565))

(assert (=> bs!8773 m!258265))

(declare-fun m!258371 () Bool)

(assert (=> bs!8773 m!258371))

(assert (=> b!237495 d!59565))

(declare-fun b!237630 () Bool)

(declare-fun e!154316 () Option!280)

(assert (=> b!237630 (= e!154316 (Some!279 (_2!2341 (h!4237 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))))))))

(declare-fun d!59567 () Bool)

(declare-fun c!39620 () Bool)

(assert (=> d!59567 (= c!39620 (and ((_ is Cons!3582) (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))) (= (_1!2341 (h!4237 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))))) key!932)))))

(assert (=> d!59567 (= (getValueByKey!274 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))) key!932) e!154316)))

(declare-fun b!237631 () Bool)

(declare-fun e!154317 () Option!280)

(assert (=> b!237631 (= e!154316 e!154317)))

(declare-fun c!39621 () Bool)

(assert (=> b!237631 (= c!39621 (and ((_ is Cons!3582) (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))) (not (= (_1!2341 (h!4237 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504))))) key!932))))))

(declare-fun b!237632 () Bool)

(assert (=> b!237632 (= e!154317 (getValueByKey!274 (t!8581 (toList!1810 (getCurrentListMap!1333 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)))) key!932))))

(declare-fun b!237633 () Bool)

(assert (=> b!237633 (= e!154317 None!278)))

(assert (= (and d!59567 c!39620) b!237630))

(assert (= (and d!59567 (not c!39620)) b!237631))

(assert (= (and b!237631 c!39621) b!237632))

(assert (= (and b!237631 (not c!39621)) b!237633))

(declare-fun m!258373 () Bool)

(assert (=> b!237632 m!258373))

(assert (=> b!237495 d!59567))

(declare-fun d!59569 () Bool)

(assert (=> d!59569 (= (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!237553 d!59569))

(declare-fun d!59571 () Bool)

(declare-fun get!2879 (Option!280) V!7971)

(assert (=> d!59571 (= (apply!217 lt!120185 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2879 (getValueByKey!274 (toList!1810 lt!120185) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8774 () Bool)

(assert (= bs!8774 d!59571))

(assert (=> bs!8774 m!258349))

(assert (=> bs!8774 m!258349))

(declare-fun m!258375 () Bool)

(assert (=> bs!8774 m!258375))

(assert (=> b!237548 d!59571))

(declare-fun b!237644 () Bool)

(declare-fun e!154328 () Bool)

(declare-fun call!22096 () Bool)

(assert (=> b!237644 (= e!154328 call!22096)))

(declare-fun b!237645 () Bool)

(declare-fun e!154329 () Bool)

(declare-fun contains!1690 (List!3588 (_ BitVec 64)) Bool)

(assert (=> b!237645 (= e!154329 (contains!1690 Nil!3585 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59573 () Bool)

(declare-fun res!116473 () Bool)

(declare-fun e!154326 () Bool)

(assert (=> d!59573 (=> res!116473 e!154326)))

(assert (=> d!59573 (= res!116473 (bvsge #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(assert (=> d!59573 (= (arrayNoDuplicates!0 (_keys!6500 thiss!1504) #b00000000000000000000000000000000 Nil!3585) e!154326)))

(declare-fun b!237646 () Bool)

(declare-fun e!154327 () Bool)

(assert (=> b!237646 (= e!154327 e!154328)))

(declare-fun c!39624 () Bool)

(assert (=> b!237646 (= c!39624 (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22093 () Bool)

(assert (=> bm!22093 (= call!22096 (arrayNoDuplicates!0 (_keys!6500 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39624 (Cons!3584 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000) Nil!3585) Nil!3585)))))

(declare-fun b!237647 () Bool)

(assert (=> b!237647 (= e!154326 e!154327)))

(declare-fun res!116475 () Bool)

(assert (=> b!237647 (=> (not res!116475) (not e!154327))))

(assert (=> b!237647 (= res!116475 (not e!154329))))

(declare-fun res!116474 () Bool)

(assert (=> b!237647 (=> (not res!116474) (not e!154329))))

(assert (=> b!237647 (= res!116474 (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237648 () Bool)

(assert (=> b!237648 (= e!154328 call!22096)))

(assert (= (and d!59573 (not res!116473)) b!237647))

(assert (= (and b!237647 res!116474) b!237645))

(assert (= (and b!237647 res!116475) b!237646))

(assert (= (and b!237646 c!39624) b!237644))

(assert (= (and b!237646 (not c!39624)) b!237648))

(assert (= (or b!237644 b!237648) bm!22093))

(assert (=> b!237645 m!258289))

(assert (=> b!237645 m!258289))

(declare-fun m!258377 () Bool)

(assert (=> b!237645 m!258377))

(assert (=> b!237646 m!258289))

(assert (=> b!237646 m!258289))

(assert (=> b!237646 m!258321))

(assert (=> bm!22093 m!258289))

(declare-fun m!258379 () Bool)

(assert (=> bm!22093 m!258379))

(assert (=> b!237647 m!258289))

(assert (=> b!237647 m!258289))

(assert (=> b!237647 m!258321))

(assert (=> b!237571 d!59573))

(declare-fun b!237673 () Bool)

(assert (=> b!237673 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(assert (=> b!237673 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5923 (_values!4391 thiss!1504))))))

(declare-fun e!154344 () Bool)

(declare-fun lt!120236 () ListLongMap!3589)

(assert (=> b!237673 (= e!154344 (= (apply!217 lt!120236 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)) (get!2878 (select (arr!5583 (_values!4391 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!555 (defaultEntry!4408 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!237674 () Bool)

(declare-fun e!154345 () Bool)

(assert (=> b!237674 (= e!154345 (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237674 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!237675 () Bool)

(declare-fun lt!120234 () Unit!7297)

(declare-fun lt!120238 () Unit!7297)

(assert (=> b!237675 (= lt!120234 lt!120238)))

(declare-fun lt!120233 () ListLongMap!3589)

(declare-fun lt!120237 () (_ BitVec 64))

(declare-fun lt!120239 () (_ BitVec 64))

(declare-fun lt!120235 () V!7971)

(assert (=> b!237675 (not (contains!1688 (+!639 lt!120233 (tuple2!4663 lt!120239 lt!120235)) lt!120237))))

(declare-fun addStillNotContains!120 (ListLongMap!3589 (_ BitVec 64) V!7971 (_ BitVec 64)) Unit!7297)

(assert (=> b!237675 (= lt!120238 (addStillNotContains!120 lt!120233 lt!120239 lt!120235 lt!120237))))

(assert (=> b!237675 (= lt!120237 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!237675 (= lt!120235 (get!2878 (select (arr!5583 (_values!4391 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!555 (defaultEntry!4408 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!237675 (= lt!120239 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun call!22099 () ListLongMap!3589)

(assert (=> b!237675 (= lt!120233 call!22099)))

(declare-fun e!154346 () ListLongMap!3589)

(assert (=> b!237675 (= e!154346 (+!639 call!22099 (tuple2!4663 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000) (get!2878 (select (arr!5583 (_values!4391 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!555 (defaultEntry!4408 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!59575 () Bool)

(declare-fun e!154347 () Bool)

(assert (=> d!59575 e!154347))

(declare-fun res!116487 () Bool)

(assert (=> d!59575 (=> (not res!116487) (not e!154347))))

(assert (=> d!59575 (= res!116487 (not (contains!1688 lt!120236 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!154348 () ListLongMap!3589)

(assert (=> d!59575 (= lt!120236 e!154348)))

(declare-fun c!39633 () Bool)

(assert (=> d!59575 (= c!39633 (bvsge #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(assert (=> d!59575 (validMask!0 (mask!10421 thiss!1504))))

(assert (=> d!59575 (= (getCurrentListMapNoExtraKeys!536 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4408 thiss!1504)) lt!120236)))

(declare-fun b!237676 () Bool)

(declare-fun e!154349 () Bool)

(assert (=> b!237676 (= e!154349 e!154344)))

(assert (=> b!237676 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun res!116485 () Bool)

(assert (=> b!237676 (= res!116485 (contains!1688 lt!120236 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237676 (=> (not res!116485) (not e!154344))))

(declare-fun bm!22096 () Bool)

(assert (=> bm!22096 (= call!22099 (getCurrentListMapNoExtraKeys!536 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4408 thiss!1504)))))

(declare-fun b!237677 () Bool)

(declare-fun e!154350 () Bool)

(assert (=> b!237677 (= e!154349 e!154350)))

(declare-fun c!39634 () Bool)

(assert (=> b!237677 (= c!39634 (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun b!237678 () Bool)

(assert (=> b!237678 (= e!154348 (ListLongMap!3590 Nil!3583))))

(declare-fun b!237679 () Bool)

(assert (=> b!237679 (= e!154348 e!154346)))

(declare-fun c!39635 () Bool)

(assert (=> b!237679 (= c!39635 (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237680 () Bool)

(declare-fun res!116486 () Bool)

(assert (=> b!237680 (=> (not res!116486) (not e!154347))))

(assert (=> b!237680 (= res!116486 (not (contains!1688 lt!120236 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!237681 () Bool)

(declare-fun isEmpty!524 (ListLongMap!3589) Bool)

(assert (=> b!237681 (= e!154350 (isEmpty!524 lt!120236))))

(declare-fun b!237682 () Bool)

(assert (=> b!237682 (= e!154350 (= lt!120236 (getCurrentListMapNoExtraKeys!536 (_keys!6500 thiss!1504) (_values!4391 thiss!1504) (mask!10421 thiss!1504) (extraKeys!4145 thiss!1504) (zeroValue!4249 thiss!1504) (minValue!4249 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4408 thiss!1504))))))

(declare-fun b!237683 () Bool)

(assert (=> b!237683 (= e!154347 e!154349)))

(declare-fun c!39636 () Bool)

(assert (=> b!237683 (= c!39636 e!154345)))

(declare-fun res!116484 () Bool)

(assert (=> b!237683 (=> (not res!116484) (not e!154345))))

(assert (=> b!237683 (= res!116484 (bvslt #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun b!237684 () Bool)

(assert (=> b!237684 (= e!154346 call!22099)))

(assert (= (and d!59575 c!39633) b!237678))

(assert (= (and d!59575 (not c!39633)) b!237679))

(assert (= (and b!237679 c!39635) b!237675))

(assert (= (and b!237679 (not c!39635)) b!237684))

(assert (= (or b!237675 b!237684) bm!22096))

(assert (= (and d!59575 res!116487) b!237680))

(assert (= (and b!237680 res!116486) b!237683))

(assert (= (and b!237683 res!116484) b!237674))

(assert (= (and b!237683 c!39636) b!237676))

(assert (= (and b!237683 (not c!39636)) b!237677))

(assert (= (and b!237676 res!116485) b!237673))

(assert (= (and b!237677 c!39634) b!237682))

(assert (= (and b!237677 (not c!39634)) b!237681))

(declare-fun b_lambda!7989 () Bool)

(assert (=> (not b_lambda!7989) (not b!237673)))

(assert (=> b!237673 t!8584))

(declare-fun b_and!13359 () Bool)

(assert (= b_and!13357 (and (=> t!8584 result!5171) b_and!13359)))

(declare-fun b_lambda!7991 () Bool)

(assert (=> (not b_lambda!7991) (not b!237675)))

(assert (=> b!237675 t!8584))

(declare-fun b_and!13361 () Bool)

(assert (= b_and!13359 (and (=> t!8584 result!5171) b_and!13361)))

(declare-fun m!258381 () Bool)

(assert (=> b!237675 m!258381))

(assert (=> b!237675 m!258289))

(declare-fun m!258383 () Bool)

(assert (=> b!237675 m!258383))

(assert (=> b!237675 m!258307))

(declare-fun m!258385 () Bool)

(assert (=> b!237675 m!258385))

(assert (=> b!237675 m!258383))

(declare-fun m!258387 () Bool)

(assert (=> b!237675 m!258387))

(assert (=> b!237675 m!258307))

(assert (=> b!237675 m!258305))

(assert (=> b!237675 m!258309))

(assert (=> b!237675 m!258305))

(declare-fun m!258389 () Bool)

(assert (=> bm!22096 m!258389))

(declare-fun m!258391 () Bool)

(assert (=> d!59575 m!258391))

(assert (=> d!59575 m!258229))

(assert (=> b!237682 m!258389))

(declare-fun m!258393 () Bool)

(assert (=> b!237680 m!258393))

(assert (=> b!237676 m!258289))

(assert (=> b!237676 m!258289))

(declare-fun m!258395 () Bool)

(assert (=> b!237676 m!258395))

(assert (=> b!237674 m!258289))

(assert (=> b!237674 m!258289))

(assert (=> b!237674 m!258321))

(assert (=> b!237679 m!258289))

(assert (=> b!237679 m!258289))

(assert (=> b!237679 m!258321))

(declare-fun m!258397 () Bool)

(assert (=> b!237681 m!258397))

(assert (=> b!237673 m!258289))

(assert (=> b!237673 m!258307))

(assert (=> b!237673 m!258289))

(declare-fun m!258399 () Bool)

(assert (=> b!237673 m!258399))

(assert (=> b!237673 m!258307))

(assert (=> b!237673 m!258305))

(assert (=> b!237673 m!258309))

(assert (=> b!237673 m!258305))

(assert (=> bm!22084 d!59575))

(declare-fun b!237703 () Bool)

(declare-fun e!154362 () SeekEntryResult!1019)

(assert (=> b!237703 (= e!154362 (Intermediate!1019 false (toIndex!0 key!932 (mask!10421 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!237704 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!237704 (= e!154362 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10421 thiss!1504)) #b00000000000000000000000000000000 (mask!10421 thiss!1504)) key!932 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)))))

(declare-fun b!237705 () Bool)

(declare-fun lt!120245 () SeekEntryResult!1019)

(assert (=> b!237705 (and (bvsge (index!6248 lt!120245) #b00000000000000000000000000000000) (bvslt (index!6248 lt!120245) (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun res!116496 () Bool)

(assert (=> b!237705 (= res!116496 (= (select (arr!5584 (_keys!6500 thiss!1504)) (index!6248 lt!120245)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!154363 () Bool)

(assert (=> b!237705 (=> res!116496 e!154363)))

(declare-fun b!237706 () Bool)

(declare-fun e!154364 () SeekEntryResult!1019)

(assert (=> b!237706 (= e!154364 (Intermediate!1019 true (toIndex!0 key!932 (mask!10421 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!237707 () Bool)

(declare-fun e!154365 () Bool)

(assert (=> b!237707 (= e!154365 (bvsge (x!23971 lt!120245) #b01111111111111111111111111111110))))

(declare-fun b!237708 () Bool)

(assert (=> b!237708 (and (bvsge (index!6248 lt!120245) #b00000000000000000000000000000000) (bvslt (index!6248 lt!120245) (size!5924 (_keys!6500 thiss!1504))))))

(assert (=> b!237708 (= e!154363 (= (select (arr!5584 (_keys!6500 thiss!1504)) (index!6248 lt!120245)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!237709 () Bool)

(assert (=> b!237709 (= e!154364 e!154362)))

(declare-fun c!39645 () Bool)

(declare-fun lt!120244 () (_ BitVec 64))

(assert (=> b!237709 (= c!39645 (or (= lt!120244 key!932) (= (bvadd lt!120244 lt!120244) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!237710 () Bool)

(declare-fun e!154361 () Bool)

(assert (=> b!237710 (= e!154365 e!154361)))

(declare-fun res!116495 () Bool)

(assert (=> b!237710 (= res!116495 (and ((_ is Intermediate!1019) lt!120245) (not (undefined!1831 lt!120245)) (bvslt (x!23971 lt!120245) #b01111111111111111111111111111110) (bvsge (x!23971 lt!120245) #b00000000000000000000000000000000) (bvsge (x!23971 lt!120245) #b00000000000000000000000000000000)))))

(assert (=> b!237710 (=> (not res!116495) (not e!154361))))

(declare-fun d!59577 () Bool)

(assert (=> d!59577 e!154365))

(declare-fun c!39644 () Bool)

(assert (=> d!59577 (= c!39644 (and ((_ is Intermediate!1019) lt!120245) (undefined!1831 lt!120245)))))

(assert (=> d!59577 (= lt!120245 e!154364)))

(declare-fun c!39643 () Bool)

(assert (=> d!59577 (= c!39643 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!59577 (= lt!120244 (select (arr!5584 (_keys!6500 thiss!1504)) (toIndex!0 key!932 (mask!10421 thiss!1504))))))

(assert (=> d!59577 (validMask!0 (mask!10421 thiss!1504))))

(assert (=> d!59577 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10421 thiss!1504)) key!932 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)) lt!120245)))

(declare-fun b!237711 () Bool)

(assert (=> b!237711 (and (bvsge (index!6248 lt!120245) #b00000000000000000000000000000000) (bvslt (index!6248 lt!120245) (size!5924 (_keys!6500 thiss!1504))))))

(declare-fun res!116494 () Bool)

(assert (=> b!237711 (= res!116494 (= (select (arr!5584 (_keys!6500 thiss!1504)) (index!6248 lt!120245)) key!932))))

(assert (=> b!237711 (=> res!116494 e!154363)))

(assert (=> b!237711 (= e!154361 e!154363)))

(assert (= (and d!59577 c!39643) b!237706))

(assert (= (and d!59577 (not c!39643)) b!237709))

(assert (= (and b!237709 c!39645) b!237703))

(assert (= (and b!237709 (not c!39645)) b!237704))

(assert (= (and d!59577 c!39644) b!237707))

(assert (= (and d!59577 (not c!39644)) b!237710))

(assert (= (and b!237710 res!116495) b!237711))

(assert (= (and b!237711 (not res!116494)) b!237705))

(assert (= (and b!237705 (not res!116496)) b!237708))

(assert (=> d!59577 m!258249))

(declare-fun m!258401 () Bool)

(assert (=> d!59577 m!258401))

(assert (=> d!59577 m!258229))

(declare-fun m!258403 () Bool)

(assert (=> b!237711 m!258403))

(assert (=> b!237705 m!258403))

(assert (=> b!237708 m!258403))

(assert (=> b!237704 m!258249))

(declare-fun m!258405 () Bool)

(assert (=> b!237704 m!258405))

(assert (=> b!237704 m!258405))

(declare-fun m!258407 () Bool)

(assert (=> b!237704 m!258407))

(assert (=> d!59539 d!59577))

(declare-fun d!59579 () Bool)

(declare-fun lt!120251 () (_ BitVec 32))

(declare-fun lt!120250 () (_ BitVec 32))

(assert (=> d!59579 (= lt!120251 (bvmul (bvxor lt!120250 (bvlshr lt!120250 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!59579 (= lt!120250 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!59579 (and (bvsge (mask!10421 thiss!1504) #b00000000000000000000000000000000) (let ((res!116497 (let ((h!4240 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!23989 (bvmul (bvxor h!4240 (bvlshr h!4240 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!23989 (bvlshr x!23989 #b00000000000000000000000000001101)) (mask!10421 thiss!1504)))))) (and (bvslt res!116497 (bvadd (mask!10421 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!116497 #b00000000000000000000000000000000))))))

(assert (=> d!59579 (= (toIndex!0 key!932 (mask!10421 thiss!1504)) (bvand (bvxor lt!120251 (bvlshr lt!120251 #b00000000000000000000000000001101)) (mask!10421 thiss!1504)))))

(assert (=> d!59539 d!59579))

(assert (=> d!59539 d!59537))

(declare-fun b!237724 () Bool)

(declare-fun e!154374 () SeekEntryResult!1019)

(assert (=> b!237724 (= e!154374 (seekKeyOrZeroReturnVacant!0 (bvadd (x!23971 lt!120120) #b00000000000000000000000000000001) (nextIndex!0 (index!6248 lt!120120) (x!23971 lt!120120) (mask!10421 thiss!1504)) (index!6248 lt!120120) key!932 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)))))

(declare-fun b!237725 () Bool)

(declare-fun e!154372 () SeekEntryResult!1019)

(assert (=> b!237725 (= e!154372 Undefined!1019)))

(declare-fun b!237726 () Bool)

(declare-fun e!154373 () SeekEntryResult!1019)

(assert (=> b!237726 (= e!154372 e!154373)))

(declare-fun c!39652 () Bool)

(declare-fun lt!120256 () (_ BitVec 64))

(assert (=> b!237726 (= c!39652 (= lt!120256 key!932))))

(declare-fun b!237727 () Bool)

(declare-fun c!39653 () Bool)

(assert (=> b!237727 (= c!39653 (= lt!120256 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237727 (= e!154373 e!154374)))

(declare-fun b!237728 () Bool)

(assert (=> b!237728 (= e!154373 (Found!1019 (index!6248 lt!120120)))))

(declare-fun b!237729 () Bool)

(assert (=> b!237729 (= e!154374 (MissingVacant!1019 (index!6248 lt!120120)))))

(declare-fun d!59581 () Bool)

(declare-fun lt!120257 () SeekEntryResult!1019)

(assert (=> d!59581 (and (or ((_ is Undefined!1019) lt!120257) (not ((_ is Found!1019) lt!120257)) (and (bvsge (index!6247 lt!120257) #b00000000000000000000000000000000) (bvslt (index!6247 lt!120257) (size!5924 (_keys!6500 thiss!1504))))) (or ((_ is Undefined!1019) lt!120257) ((_ is Found!1019) lt!120257) (not ((_ is MissingVacant!1019) lt!120257)) (not (= (index!6249 lt!120257) (index!6248 lt!120120))) (and (bvsge (index!6249 lt!120257) #b00000000000000000000000000000000) (bvslt (index!6249 lt!120257) (size!5924 (_keys!6500 thiss!1504))))) (or ((_ is Undefined!1019) lt!120257) (ite ((_ is Found!1019) lt!120257) (= (select (arr!5584 (_keys!6500 thiss!1504)) (index!6247 lt!120257)) key!932) (and ((_ is MissingVacant!1019) lt!120257) (= (index!6249 lt!120257) (index!6248 lt!120120)) (= (select (arr!5584 (_keys!6500 thiss!1504)) (index!6249 lt!120257)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!59581 (= lt!120257 e!154372)))

(declare-fun c!39654 () Bool)

(assert (=> d!59581 (= c!39654 (bvsge (x!23971 lt!120120) #b01111111111111111111111111111110))))

(assert (=> d!59581 (= lt!120256 (select (arr!5584 (_keys!6500 thiss!1504)) (index!6248 lt!120120)))))

(assert (=> d!59581 (validMask!0 (mask!10421 thiss!1504))))

(assert (=> d!59581 (= (seekKeyOrZeroReturnVacant!0 (x!23971 lt!120120) (index!6248 lt!120120) (index!6248 lt!120120) key!932 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)) lt!120257)))

(assert (= (and d!59581 c!39654) b!237725))

(assert (= (and d!59581 (not c!39654)) b!237726))

(assert (= (and b!237726 c!39652) b!237728))

(assert (= (and b!237726 (not c!39652)) b!237727))

(assert (= (and b!237727 c!39653) b!237729))

(assert (= (and b!237727 (not c!39653)) b!237724))

(declare-fun m!258409 () Bool)

(assert (=> b!237724 m!258409))

(assert (=> b!237724 m!258409))

(declare-fun m!258411 () Bool)

(assert (=> b!237724 m!258411))

(declare-fun m!258413 () Bool)

(assert (=> d!59581 m!258413))

(declare-fun m!258415 () Bool)

(assert (=> d!59581 m!258415))

(assert (=> d!59581 m!258247))

(assert (=> d!59581 m!258229))

(assert (=> b!237488 d!59581))

(declare-fun d!59583 () Bool)

(declare-fun res!116503 () Bool)

(declare-fun e!154381 () Bool)

(assert (=> d!59583 (=> res!116503 e!154381)))

(assert (=> d!59583 (= res!116503 (bvsge #b00000000000000000000000000000000 (size!5924 (_keys!6500 thiss!1504))))))

(assert (=> d!59583 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6500 thiss!1504) (mask!10421 thiss!1504)) e!154381)))

(declare-fun b!237738 () Bool)

(declare-fun e!154382 () Bool)

(declare-fun call!22102 () Bool)

(assert (=> b!237738 (= e!154382 call!22102)))

(declare-fun b!237739 () Bool)

(declare-fun e!154383 () Bool)

(assert (=> b!237739 (= e!154381 e!154383)))

(declare-fun c!39657 () Bool)

(assert (=> b!237739 (= c!39657 (validKeyInArray!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22099 () Bool)

(assert (=> bm!22099 (= call!22102 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6500 thiss!1504) (mask!10421 thiss!1504)))))

(declare-fun b!237740 () Bool)

(assert (=> b!237740 (= e!154383 e!154382)))

(declare-fun lt!120266 () (_ BitVec 64))

(assert (=> b!237740 (= lt!120266 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120264 () Unit!7297)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11758 (_ BitVec 64) (_ BitVec 32)) Unit!7297)

(assert (=> b!237740 (= lt!120264 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6500 thiss!1504) lt!120266 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!237740 (arrayContainsKey!0 (_keys!6500 thiss!1504) lt!120266 #b00000000000000000000000000000000)))

(declare-fun lt!120265 () Unit!7297)

(assert (=> b!237740 (= lt!120265 lt!120264)))

(declare-fun res!116502 () Bool)

(assert (=> b!237740 (= res!116502 (= (seekEntryOrOpen!0 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000) (_keys!6500 thiss!1504) (mask!10421 thiss!1504)) (Found!1019 #b00000000000000000000000000000000)))))

(assert (=> b!237740 (=> (not res!116502) (not e!154382))))

(declare-fun b!237741 () Bool)

(assert (=> b!237741 (= e!154383 call!22102)))

(assert (= (and d!59583 (not res!116503)) b!237739))

(assert (= (and b!237739 c!39657) b!237740))

(assert (= (and b!237739 (not c!39657)) b!237741))

(assert (= (and b!237740 res!116502) b!237738))

(assert (= (or b!237738 b!237741) bm!22099))

(assert (=> b!237739 m!258289))

(assert (=> b!237739 m!258289))

(assert (=> b!237739 m!258321))

(declare-fun m!258417 () Bool)

(assert (=> bm!22099 m!258417))

(assert (=> b!237740 m!258289))

(declare-fun m!258419 () Bool)

(assert (=> b!237740 m!258419))

(declare-fun m!258421 () Bool)

(assert (=> b!237740 m!258421))

(assert (=> b!237740 m!258289))

(declare-fun m!258423 () Bool)

(assert (=> b!237740 m!258423))

(assert (=> b!237570 d!59583))

(assert (=> b!237497 d!59565))

(assert (=> b!237497 d!59567))

(declare-fun d!59585 () Bool)

(declare-fun e!154386 () Bool)

(assert (=> d!59585 e!154386))

(declare-fun res!116508 () Bool)

(assert (=> d!59585 (=> (not res!116508) (not e!154386))))

(declare-fun lt!120276 () ListLongMap!3589)

(assert (=> d!59585 (= res!116508 (contains!1688 lt!120276 (_1!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))))))

(declare-fun lt!120278 () List!3586)

(assert (=> d!59585 (= lt!120276 (ListLongMap!3590 lt!120278))))

(declare-fun lt!120277 () Unit!7297)

(declare-fun lt!120275 () Unit!7297)

(assert (=> d!59585 (= lt!120277 lt!120275)))

(assert (=> d!59585 (= (getValueByKey!274 lt!120278 (_1!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!155 (List!3586 (_ BitVec 64) V!7971) Unit!7297)

(assert (=> d!59585 (= lt!120275 (lemmaContainsTupThenGetReturnValue!155 lt!120278 (_1!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))))))

(declare-fun insertStrictlySorted!157 (List!3586 (_ BitVec 64) V!7971) List!3586)

(assert (=> d!59585 (= lt!120278 (insertStrictlySorted!157 (toList!1810 call!22084) (_1!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))))))

(assert (=> d!59585 (= (+!639 call!22084 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))) lt!120276)))

(declare-fun b!237746 () Bool)

(declare-fun res!116509 () Bool)

(assert (=> b!237746 (=> (not res!116509) (not e!154386))))

(assert (=> b!237746 (= res!116509 (= (getValueByKey!274 (toList!1810 lt!120276) (_1!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))))))

(declare-fun b!237747 () Bool)

(declare-fun contains!1691 (List!3586 tuple2!4662) Bool)

(assert (=> b!237747 (= e!154386 (contains!1691 (toList!1810 lt!120276) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))))

(assert (= (and d!59585 res!116508) b!237746))

(assert (= (and b!237746 res!116509) b!237747))

(declare-fun m!258425 () Bool)

(assert (=> d!59585 m!258425))

(declare-fun m!258427 () Bool)

(assert (=> d!59585 m!258427))

(declare-fun m!258429 () Bool)

(assert (=> d!59585 m!258429))

(declare-fun m!258431 () Bool)

(assert (=> d!59585 m!258431))

(declare-fun m!258433 () Bool)

(assert (=> b!237746 m!258433))

(declare-fun m!258435 () Bool)

(assert (=> b!237747 m!258435))

(assert (=> b!237550 d!59585))

(assert (=> b!237559 d!59569))

(declare-fun d!59587 () Bool)

(declare-fun e!154387 () Bool)

(assert (=> d!59587 e!154387))

(declare-fun res!116510 () Bool)

(assert (=> d!59587 (=> (not res!116510) (not e!154387))))

(declare-fun lt!120280 () ListLongMap!3589)

(assert (=> d!59587 (= res!116510 (contains!1688 lt!120280 (_1!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))))))

(declare-fun lt!120282 () List!3586)

(assert (=> d!59587 (= lt!120280 (ListLongMap!3590 lt!120282))))

(declare-fun lt!120281 () Unit!7297)

(declare-fun lt!120279 () Unit!7297)

(assert (=> d!59587 (= lt!120281 lt!120279)))

(assert (=> d!59587 (= (getValueByKey!274 lt!120282 (_1!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))) (Some!279 (_2!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))))))

(assert (=> d!59587 (= lt!120279 (lemmaContainsTupThenGetReturnValue!155 lt!120282 (_1!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))) (_2!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))))))

(assert (=> d!59587 (= lt!120282 (insertStrictlySorted!157 (toList!1810 (ite c!39605 call!22086 (ite c!39606 call!22087 call!22085))) (_1!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))) (_2!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))))))

(assert (=> d!59587 (= (+!639 (ite c!39605 call!22086 (ite c!39606 call!22087 call!22085)) (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))) lt!120280)))

(declare-fun b!237748 () Bool)

(declare-fun res!116511 () Bool)

(assert (=> b!237748 (=> (not res!116511) (not e!154387))))

(assert (=> b!237748 (= res!116511 (= (getValueByKey!274 (toList!1810 lt!120280) (_1!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504))))) (Some!279 (_2!2341 (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))))))))

(declare-fun b!237749 () Bool)

(assert (=> b!237749 (= e!154387 (contains!1691 (toList!1810 lt!120280) (ite (or c!39605 c!39606) (tuple2!4663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4249 thiss!1504)) (tuple2!4663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4249 thiss!1504)))))))

(assert (= (and d!59587 res!116510) b!237748))

(assert (= (and b!237748 res!116511) b!237749))

(declare-fun m!258437 () Bool)

(assert (=> d!59587 m!258437))

(declare-fun m!258439 () Bool)

(assert (=> d!59587 m!258439))

(declare-fun m!258441 () Bool)

(assert (=> d!59587 m!258441))

(declare-fun m!258443 () Bool)

(assert (=> d!59587 m!258443))

(declare-fun m!258445 () Bool)

(assert (=> b!237748 m!258445))

(declare-fun m!258447 () Bool)

(assert (=> b!237749 m!258447))

(assert (=> bm!22083 d!59587))

(declare-fun d!59589 () Bool)

(assert (=> d!59589 (= (apply!217 (+!639 lt!120191 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504))) lt!120190) (apply!217 lt!120191 lt!120190))))

(declare-fun lt!120285 () Unit!7297)

(declare-fun choose!1122 (ListLongMap!3589 (_ BitVec 64) V!7971 (_ BitVec 64)) Unit!7297)

(assert (=> d!59589 (= lt!120285 (choose!1122 lt!120191 lt!120193 (minValue!4249 thiss!1504) lt!120190))))

(declare-fun e!154390 () Bool)

(assert (=> d!59589 e!154390))

(declare-fun res!116514 () Bool)

(assert (=> d!59589 (=> (not res!116514) (not e!154390))))

(assert (=> d!59589 (= res!116514 (contains!1688 lt!120191 lt!120190))))

(assert (=> d!59589 (= (addApplyDifferent!193 lt!120191 lt!120193 (minValue!4249 thiss!1504) lt!120190) lt!120285)))

(declare-fun b!237753 () Bool)

(assert (=> b!237753 (= e!154390 (not (= lt!120190 lt!120193)))))

(assert (= (and d!59589 res!116514) b!237753))

(declare-fun m!258449 () Bool)

(assert (=> d!59589 m!258449))

(declare-fun m!258451 () Bool)

(assert (=> d!59589 m!258451))

(assert (=> d!59589 m!258271))

(assert (=> d!59589 m!258273))

(assert (=> d!59589 m!258283))

(assert (=> d!59589 m!258271))

(assert (=> b!237541 d!59589))

(declare-fun d!59591 () Bool)

(assert (=> d!59591 (= (apply!217 lt!120187 lt!120188) (get!2879 (getValueByKey!274 (toList!1810 lt!120187) lt!120188)))))

(declare-fun bs!8775 () Bool)

(assert (= bs!8775 d!59591))

(declare-fun m!258453 () Bool)

(assert (=> bs!8775 m!258453))

(assert (=> bs!8775 m!258453))

(declare-fun m!258455 () Bool)

(assert (=> bs!8775 m!258455))

(assert (=> b!237541 d!59591))

(declare-fun d!59593 () Bool)

(declare-fun e!154391 () Bool)

(assert (=> d!59593 e!154391))

(declare-fun res!116515 () Bool)

(assert (=> d!59593 (=> (not res!116515) (not e!154391))))

(declare-fun lt!120287 () ListLongMap!3589)

(assert (=> d!59593 (= res!116515 (contains!1688 lt!120287 (_1!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504)))))))

(declare-fun lt!120289 () List!3586)

(assert (=> d!59593 (= lt!120287 (ListLongMap!3590 lt!120289))))

(declare-fun lt!120288 () Unit!7297)

(declare-fun lt!120286 () Unit!7297)

(assert (=> d!59593 (= lt!120288 lt!120286)))

(assert (=> d!59593 (= (getValueByKey!274 lt!120289 (_1!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504)))))))

(assert (=> d!59593 (= lt!120286 (lemmaContainsTupThenGetReturnValue!155 lt!120289 (_1!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504)))))))

(assert (=> d!59593 (= lt!120289 (insertStrictlySorted!157 (toList!1810 lt!120187) (_1!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504)))))))

(assert (=> d!59593 (= (+!639 lt!120187 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504))) lt!120287)))

(declare-fun b!237754 () Bool)

(declare-fun res!116516 () Bool)

(assert (=> b!237754 (=> (not res!116516) (not e!154391))))

(assert (=> b!237754 (= res!116516 (= (getValueByKey!274 (toList!1810 lt!120287) (_1!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504))))))))

(declare-fun b!237755 () Bool)

(assert (=> b!237755 (= e!154391 (contains!1691 (toList!1810 lt!120287) (tuple2!4663 lt!120179 (minValue!4249 thiss!1504))))))

(assert (= (and d!59593 res!116515) b!237754))

(assert (= (and b!237754 res!116516) b!237755))

(declare-fun m!258457 () Bool)

(assert (=> d!59593 m!258457))

(declare-fun m!258459 () Bool)

(assert (=> d!59593 m!258459))

(declare-fun m!258461 () Bool)

(assert (=> d!59593 m!258461))

(declare-fun m!258463 () Bool)

(assert (=> d!59593 m!258463))

(declare-fun m!258465 () Bool)

(assert (=> b!237754 m!258465))

(declare-fun m!258467 () Bool)

(assert (=> b!237755 m!258467))

(assert (=> b!237541 d!59593))

(declare-fun d!59595 () Bool)

(assert (=> d!59595 (= (apply!217 (+!639 lt!120191 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504))) lt!120190) (get!2879 (getValueByKey!274 (toList!1810 (+!639 lt!120191 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504)))) lt!120190)))))

(declare-fun bs!8776 () Bool)

(assert (= bs!8776 d!59595))

(declare-fun m!258469 () Bool)

(assert (=> bs!8776 m!258469))

(assert (=> bs!8776 m!258469))

(declare-fun m!258471 () Bool)

(assert (=> bs!8776 m!258471))

(assert (=> b!237541 d!59595))

(declare-fun d!59597 () Bool)

(assert (=> d!59597 (= (apply!217 (+!639 lt!120194 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504))) lt!120192) (apply!217 lt!120194 lt!120192))))

(declare-fun lt!120290 () Unit!7297)

(assert (=> d!59597 (= lt!120290 (choose!1122 lt!120194 lt!120196 (zeroValue!4249 thiss!1504) lt!120192))))

(declare-fun e!154392 () Bool)

(assert (=> d!59597 e!154392))

(declare-fun res!116517 () Bool)

(assert (=> d!59597 (=> (not res!116517) (not e!154392))))

(assert (=> d!59597 (= res!116517 (contains!1688 lt!120194 lt!120192))))

(assert (=> d!59597 (= (addApplyDifferent!193 lt!120194 lt!120196 (zeroValue!4249 thiss!1504) lt!120192) lt!120290)))

(declare-fun b!237756 () Bool)

(assert (=> b!237756 (= e!154392 (not (= lt!120192 lt!120196)))))

(assert (= (and d!59597 res!116517) b!237756))

(declare-fun m!258473 () Bool)

(assert (=> d!59597 m!258473))

(declare-fun m!258475 () Bool)

(assert (=> d!59597 m!258475))

(assert (=> d!59597 m!258279))

(assert (=> d!59597 m!258285))

(assert (=> d!59597 m!258295))

(assert (=> d!59597 m!258279))

(assert (=> b!237541 d!59597))

(declare-fun d!59599 () Bool)

(declare-fun e!154393 () Bool)

(assert (=> d!59599 e!154393))

(declare-fun res!116518 () Bool)

(assert (=> d!59599 (=> res!116518 e!154393)))

(declare-fun lt!120293 () Bool)

(assert (=> d!59599 (= res!116518 (not lt!120293))))

(declare-fun lt!120292 () Bool)

(assert (=> d!59599 (= lt!120293 lt!120292)))

(declare-fun lt!120291 () Unit!7297)

(declare-fun e!154394 () Unit!7297)

(assert (=> d!59599 (= lt!120291 e!154394)))

(declare-fun c!39658 () Bool)

(assert (=> d!59599 (= c!39658 lt!120292)))

(assert (=> d!59599 (= lt!120292 (containsKey!266 (toList!1810 (+!639 lt!120195 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))) lt!120182))))

(assert (=> d!59599 (= (contains!1688 (+!639 lt!120195 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504))) lt!120182) lt!120293)))

(declare-fun b!237757 () Bool)

(declare-fun lt!120294 () Unit!7297)

(assert (=> b!237757 (= e!154394 lt!120294)))

(assert (=> b!237757 (= lt!120294 (lemmaContainsKeyImpliesGetValueByKeyDefined!215 (toList!1810 (+!639 lt!120195 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))) lt!120182))))

(assert (=> b!237757 (isDefined!216 (getValueByKey!274 (toList!1810 (+!639 lt!120195 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))) lt!120182))))

(declare-fun b!237758 () Bool)

(declare-fun Unit!7304 () Unit!7297)

(assert (=> b!237758 (= e!154394 Unit!7304)))

(declare-fun b!237759 () Bool)

(assert (=> b!237759 (= e!154393 (isDefined!216 (getValueByKey!274 (toList!1810 (+!639 lt!120195 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))) lt!120182)))))

(assert (= (and d!59599 c!39658) b!237757))

(assert (= (and d!59599 (not c!39658)) b!237758))

(assert (= (and d!59599 (not res!116518)) b!237759))

(declare-fun m!258477 () Bool)

(assert (=> d!59599 m!258477))

(declare-fun m!258479 () Bool)

(assert (=> b!237757 m!258479))

(declare-fun m!258481 () Bool)

(assert (=> b!237757 m!258481))

(assert (=> b!237757 m!258481))

(declare-fun m!258483 () Bool)

(assert (=> b!237757 m!258483))

(assert (=> b!237759 m!258481))

(assert (=> b!237759 m!258481))

(assert (=> b!237759 m!258483))

(assert (=> b!237541 d!59599))

(declare-fun d!59601 () Bool)

(declare-fun e!154395 () Bool)

(assert (=> d!59601 e!154395))

(declare-fun res!116519 () Bool)

(assert (=> d!59601 (=> (not res!116519) (not e!154395))))

(declare-fun lt!120296 () ListLongMap!3589)

(assert (=> d!59601 (= res!116519 (contains!1688 lt!120296 (_1!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504)))))))

(declare-fun lt!120298 () List!3586)

(assert (=> d!59601 (= lt!120296 (ListLongMap!3590 lt!120298))))

(declare-fun lt!120297 () Unit!7297)

(declare-fun lt!120295 () Unit!7297)

(assert (=> d!59601 (= lt!120297 lt!120295)))

(assert (=> d!59601 (= (getValueByKey!274 lt!120298 (_1!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504)))))))

(assert (=> d!59601 (= lt!120295 (lemmaContainsTupThenGetReturnValue!155 lt!120298 (_1!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504)))))))

(assert (=> d!59601 (= lt!120298 (insertStrictlySorted!157 (toList!1810 lt!120194) (_1!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504)))))))

(assert (=> d!59601 (= (+!639 lt!120194 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504))) lt!120296)))

(declare-fun b!237760 () Bool)

(declare-fun res!116520 () Bool)

(assert (=> b!237760 (=> (not res!116520) (not e!154395))))

(assert (=> b!237760 (= res!116520 (= (getValueByKey!274 (toList!1810 lt!120296) (_1!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504))))))))

(declare-fun b!237761 () Bool)

(assert (=> b!237761 (= e!154395 (contains!1691 (toList!1810 lt!120296) (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504))))))

(assert (= (and d!59601 res!116519) b!237760))

(assert (= (and b!237760 res!116520) b!237761))

(declare-fun m!258485 () Bool)

(assert (=> d!59601 m!258485))

(declare-fun m!258487 () Bool)

(assert (=> d!59601 m!258487))

(declare-fun m!258489 () Bool)

(assert (=> d!59601 m!258489))

(declare-fun m!258491 () Bool)

(assert (=> d!59601 m!258491))

(declare-fun m!258493 () Bool)

(assert (=> b!237760 m!258493))

(declare-fun m!258495 () Bool)

(assert (=> b!237761 m!258495))

(assert (=> b!237541 d!59601))

(declare-fun d!59603 () Bool)

(declare-fun e!154396 () Bool)

(assert (=> d!59603 e!154396))

(declare-fun res!116521 () Bool)

(assert (=> d!59603 (=> (not res!116521) (not e!154396))))

(declare-fun lt!120300 () ListLongMap!3589)

(assert (=> d!59603 (= res!116521 (contains!1688 lt!120300 (_1!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504)))))))

(declare-fun lt!120302 () List!3586)

(assert (=> d!59603 (= lt!120300 (ListLongMap!3590 lt!120302))))

(declare-fun lt!120301 () Unit!7297)

(declare-fun lt!120299 () Unit!7297)

(assert (=> d!59603 (= lt!120301 lt!120299)))

(assert (=> d!59603 (= (getValueByKey!274 lt!120302 (_1!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504)))))))

(assert (=> d!59603 (= lt!120299 (lemmaContainsTupThenGetReturnValue!155 lt!120302 (_1!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504)))))))

(assert (=> d!59603 (= lt!120302 (insertStrictlySorted!157 (toList!1810 lt!120191) (_1!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504)))))))

(assert (=> d!59603 (= (+!639 lt!120191 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504))) lt!120300)))

(declare-fun b!237762 () Bool)

(declare-fun res!116522 () Bool)

(assert (=> b!237762 (=> (not res!116522) (not e!154396))))

(assert (=> b!237762 (= res!116522 (= (getValueByKey!274 (toList!1810 lt!120300) (_1!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 lt!120193 (minValue!4249 thiss!1504))))))))

(declare-fun b!237763 () Bool)

(assert (=> b!237763 (= e!154396 (contains!1691 (toList!1810 lt!120300) (tuple2!4663 lt!120193 (minValue!4249 thiss!1504))))))

(assert (= (and d!59603 res!116521) b!237762))

(assert (= (and b!237762 res!116522) b!237763))

(declare-fun m!258497 () Bool)

(assert (=> d!59603 m!258497))

(declare-fun m!258499 () Bool)

(assert (=> d!59603 m!258499))

(declare-fun m!258501 () Bool)

(assert (=> d!59603 m!258501))

(declare-fun m!258503 () Bool)

(assert (=> d!59603 m!258503))

(declare-fun m!258505 () Bool)

(assert (=> b!237762 m!258505))

(declare-fun m!258507 () Bool)

(assert (=> b!237763 m!258507))

(assert (=> b!237541 d!59603))

(declare-fun d!59605 () Bool)

(assert (=> d!59605 (= (apply!217 lt!120191 lt!120190) (get!2879 (getValueByKey!274 (toList!1810 lt!120191) lt!120190)))))

(declare-fun bs!8777 () Bool)

(assert (= bs!8777 d!59605))

(declare-fun m!258509 () Bool)

(assert (=> bs!8777 m!258509))

(assert (=> bs!8777 m!258509))

(declare-fun m!258511 () Bool)

(assert (=> bs!8777 m!258511))

(assert (=> b!237541 d!59605))

(declare-fun d!59607 () Bool)

(assert (=> d!59607 (= (apply!217 (+!639 lt!120187 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504))) lt!120188) (apply!217 lt!120187 lt!120188))))

(declare-fun lt!120303 () Unit!7297)

(assert (=> d!59607 (= lt!120303 (choose!1122 lt!120187 lt!120179 (minValue!4249 thiss!1504) lt!120188))))

(declare-fun e!154397 () Bool)

(assert (=> d!59607 e!154397))

(declare-fun res!116523 () Bool)

(assert (=> d!59607 (=> (not res!116523) (not e!154397))))

(assert (=> d!59607 (= res!116523 (contains!1688 lt!120187 lt!120188))))

(assert (=> d!59607 (= (addApplyDifferent!193 lt!120187 lt!120179 (minValue!4249 thiss!1504) lt!120188) lt!120303)))

(declare-fun b!237764 () Bool)

(assert (=> b!237764 (= e!154397 (not (= lt!120188 lt!120179)))))

(assert (= (and d!59607 res!116523) b!237764))

(declare-fun m!258513 () Bool)

(assert (=> d!59607 m!258513))

(declare-fun m!258515 () Bool)

(assert (=> d!59607 m!258515))

(assert (=> d!59607 m!258301))

(assert (=> d!59607 m!258303))

(assert (=> d!59607 m!258287))

(assert (=> d!59607 m!258301))

(assert (=> b!237541 d!59607))

(declare-fun d!59609 () Bool)

(assert (=> d!59609 (contains!1688 (+!639 lt!120195 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504))) lt!120182)))

(declare-fun lt!120306 () Unit!7297)

(declare-fun choose!1123 (ListLongMap!3589 (_ BitVec 64) V!7971 (_ BitVec 64)) Unit!7297)

(assert (=> d!59609 (= lt!120306 (choose!1123 lt!120195 lt!120197 (zeroValue!4249 thiss!1504) lt!120182))))

(assert (=> d!59609 (contains!1688 lt!120195 lt!120182)))

(assert (=> d!59609 (= (addStillContains!193 lt!120195 lt!120197 (zeroValue!4249 thiss!1504) lt!120182) lt!120306)))

(declare-fun bs!8778 () Bool)

(assert (= bs!8778 d!59609))

(assert (=> bs!8778 m!258297))

(assert (=> bs!8778 m!258297))

(assert (=> bs!8778 m!258299))

(declare-fun m!258517 () Bool)

(assert (=> bs!8778 m!258517))

(declare-fun m!258519 () Bool)

(assert (=> bs!8778 m!258519))

(assert (=> b!237541 d!59609))

(declare-fun d!59611 () Bool)

(assert (=> d!59611 (= (apply!217 lt!120194 lt!120192) (get!2879 (getValueByKey!274 (toList!1810 lt!120194) lt!120192)))))

(declare-fun bs!8779 () Bool)

(assert (= bs!8779 d!59611))

(declare-fun m!258521 () Bool)

(assert (=> bs!8779 m!258521))

(assert (=> bs!8779 m!258521))

(declare-fun m!258523 () Bool)

(assert (=> bs!8779 m!258523))

(assert (=> b!237541 d!59611))

(declare-fun d!59613 () Bool)

(assert (=> d!59613 (= (apply!217 (+!639 lt!120187 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504))) lt!120188) (get!2879 (getValueByKey!274 (toList!1810 (+!639 lt!120187 (tuple2!4663 lt!120179 (minValue!4249 thiss!1504)))) lt!120188)))))

(declare-fun bs!8780 () Bool)

(assert (= bs!8780 d!59613))

(declare-fun m!258525 () Bool)

(assert (=> bs!8780 m!258525))

(assert (=> bs!8780 m!258525))

(declare-fun m!258527 () Bool)

(assert (=> bs!8780 m!258527))

(assert (=> b!237541 d!59613))

(declare-fun d!59615 () Bool)

(declare-fun e!154398 () Bool)

(assert (=> d!59615 e!154398))

(declare-fun res!116524 () Bool)

(assert (=> d!59615 (=> (not res!116524) (not e!154398))))

(declare-fun lt!120308 () ListLongMap!3589)

(assert (=> d!59615 (= res!116524 (contains!1688 lt!120308 (_1!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))))))

(declare-fun lt!120310 () List!3586)

(assert (=> d!59615 (= lt!120308 (ListLongMap!3590 lt!120310))))

(declare-fun lt!120309 () Unit!7297)

(declare-fun lt!120307 () Unit!7297)

(assert (=> d!59615 (= lt!120309 lt!120307)))

(assert (=> d!59615 (= (getValueByKey!274 lt!120310 (_1!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))))))

(assert (=> d!59615 (= lt!120307 (lemmaContainsTupThenGetReturnValue!155 lt!120310 (_1!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))))))

(assert (=> d!59615 (= lt!120310 (insertStrictlySorted!157 (toList!1810 lt!120195) (_1!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504))) (_2!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))))))

(assert (=> d!59615 (= (+!639 lt!120195 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504))) lt!120308)))

(declare-fun b!237766 () Bool)

(declare-fun res!116525 () Bool)

(assert (=> b!237766 (=> (not res!116525) (not e!154398))))

(assert (=> b!237766 (= res!116525 (= (getValueByKey!274 (toList!1810 lt!120308) (_1!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504)))) (Some!279 (_2!2341 (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504))))))))

(declare-fun b!237767 () Bool)

(assert (=> b!237767 (= e!154398 (contains!1691 (toList!1810 lt!120308) (tuple2!4663 lt!120197 (zeroValue!4249 thiss!1504))))))

(assert (= (and d!59615 res!116524) b!237766))

(assert (= (and b!237766 res!116525) b!237767))

(declare-fun m!258529 () Bool)

(assert (=> d!59615 m!258529))

(declare-fun m!258531 () Bool)

(assert (=> d!59615 m!258531))

(declare-fun m!258533 () Bool)

(assert (=> d!59615 m!258533))

(declare-fun m!258535 () Bool)

(assert (=> d!59615 m!258535))

(declare-fun m!258537 () Bool)

(assert (=> b!237766 m!258537))

(declare-fun m!258539 () Bool)

(assert (=> b!237767 m!258539))

(assert (=> b!237541 d!59615))

(declare-fun d!59617 () Bool)

(assert (=> d!59617 (= (apply!217 (+!639 lt!120194 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504))) lt!120192) (get!2879 (getValueByKey!274 (toList!1810 (+!639 lt!120194 (tuple2!4663 lt!120196 (zeroValue!4249 thiss!1504)))) lt!120192)))))

(declare-fun bs!8781 () Bool)

(assert (= bs!8781 d!59617))

(declare-fun m!258541 () Bool)

(assert (=> bs!8781 m!258541))

(assert (=> bs!8781 m!258541))

(declare-fun m!258543 () Bool)

(assert (=> bs!8781 m!258543))

(assert (=> b!237541 d!59617))

(assert (=> b!237541 d!59575))

(declare-fun d!59619 () Bool)

(assert (=> d!59619 (= (apply!217 lt!120185 (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000)) (get!2879 (getValueByKey!274 (toList!1810 lt!120185) (select (arr!5584 (_keys!6500 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8782 () Bool)

(assert (= bs!8782 d!59619))

(assert (=> bs!8782 m!258289))

(assert (=> bs!8782 m!258357))

(assert (=> bs!8782 m!258357))

(declare-fun m!258545 () Bool)

(assert (=> bs!8782 m!258545))

(assert (=> b!237558 d!59619))

(declare-fun d!59621 () Bool)

(declare-fun c!39661 () Bool)

(assert (=> d!59621 (= c!39661 ((_ is ValueCellFull!2778) (select (arr!5583 (_values!4391 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!154401 () V!7971)

(assert (=> d!59621 (= (get!2878 (select (arr!5583 (_values!4391 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!555 (defaultEntry!4408 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!154401)))

(declare-fun b!237772 () Bool)

(declare-fun get!2880 (ValueCell!2778 V!7971) V!7971)

(assert (=> b!237772 (= e!154401 (get!2880 (select (arr!5583 (_values!4391 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!555 (defaultEntry!4408 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!237773 () Bool)

(declare-fun get!2881 (ValueCell!2778 V!7971) V!7971)

(assert (=> b!237773 (= e!154401 (get!2881 (select (arr!5583 (_values!4391 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!555 (defaultEntry!4408 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59621 c!39661) b!237772))

(assert (= (and d!59621 (not c!39661)) b!237773))

(assert (=> b!237772 m!258307))

(assert (=> b!237772 m!258305))

(declare-fun m!258547 () Bool)

(assert (=> b!237772 m!258547))

(assert (=> b!237773 m!258307))

(assert (=> b!237773 m!258305))

(declare-fun m!258549 () Bool)

(assert (=> b!237773 m!258549))

(assert (=> b!237558 d!59621))

(declare-fun d!59623 () Bool)

(assert (=> d!59623 (= (apply!217 lt!120185 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2879 (getValueByKey!274 (toList!1810 lt!120185) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8783 () Bool)

(assert (= bs!8783 d!59623))

(assert (=> bs!8783 m!258341))

(assert (=> bs!8783 m!258341))

(declare-fun m!258551 () Bool)

(assert (=> bs!8783 m!258551))

(assert (=> b!237540 d!59623))

(declare-fun mapNonEmpty!10590 () Bool)

(declare-fun mapRes!10590 () Bool)

(declare-fun tp!22344 () Bool)

(declare-fun e!154402 () Bool)

(assert (=> mapNonEmpty!10590 (= mapRes!10590 (and tp!22344 e!154402))))

(declare-fun mapValue!10590 () ValueCell!2778)

(declare-fun mapRest!10590 () (Array (_ BitVec 32) ValueCell!2778))

(declare-fun mapKey!10590 () (_ BitVec 32))

(assert (=> mapNonEmpty!10590 (= mapRest!10589 (store mapRest!10590 mapKey!10590 mapValue!10590))))

(declare-fun b!237775 () Bool)

(declare-fun e!154403 () Bool)

(assert (=> b!237775 (= e!154403 tp_is_empty!6243)))

(declare-fun b!237774 () Bool)

(assert (=> b!237774 (= e!154402 tp_is_empty!6243)))

(declare-fun condMapEmpty!10590 () Bool)

(declare-fun mapDefault!10590 () ValueCell!2778)

(assert (=> mapNonEmpty!10589 (= condMapEmpty!10590 (= mapRest!10589 ((as const (Array (_ BitVec 32) ValueCell!2778)) mapDefault!10590)))))

(assert (=> mapNonEmpty!10589 (= tp!22343 (and e!154403 mapRes!10590))))

(declare-fun mapIsEmpty!10590 () Bool)

(assert (=> mapIsEmpty!10590 mapRes!10590))

(assert (= (and mapNonEmpty!10589 condMapEmpty!10590) mapIsEmpty!10590))

(assert (= (and mapNonEmpty!10589 (not condMapEmpty!10590)) mapNonEmpty!10590))

(assert (= (and mapNonEmpty!10590 ((_ is ValueCellFull!2778) mapValue!10590)) b!237774))

(assert (= (and mapNonEmpty!10589 ((_ is ValueCellFull!2778) mapDefault!10590)) b!237775))

(declare-fun m!258553 () Bool)

(assert (=> mapNonEmpty!10590 m!258553))

(declare-fun b_lambda!7993 () Bool)

(assert (= b_lambda!7989 (or (and b!237439 b_free!6381) b_lambda!7993)))

(declare-fun b_lambda!7995 () Bool)

(assert (= b_lambda!7991 (or (and b!237439 b_free!6381) b_lambda!7995)))

(check-sat (not b!237766) (not b!237645) (not b!237755) (not bm!22090) (not b_lambda!7993) (not b!237621) (not d!59553) (not bm!22096) (not b_next!6381) (not d!59623) (not b_lambda!7995) (not mapNonEmpty!10590) (not b!237682) (not d!59575) (not bm!22093) (not b!237586) (not b!237594) (not b!237767) (not b!237724) (not d!59595) (not d!59613) (not d!59619) (not b!237674) (not b!237582) (not d!59617) (not d!59605) (not b!237747) (not b!237673) (not b!237740) (not bm!22099) (not d!59571) (not d!59563) (not b!237604) (not b!237761) (not b!237680) (not b!237585) (not d!59581) (not d!59593) tp_is_empty!6243 (not b!237617) (not d!59555) (not b!237759) (not b!237676) (not b!237757) (not b!237675) (not b_lambda!7987) (not b!237616) b_and!13361 (not d!59607) (not d!59561) (not d!59587) (not d!59591) (not d!59615) (not b!237679) (not b!237749) (not d!59601) (not b!237580) (not d!59577) (not d!59599) (not b!237583) (not b!237704) (not d!59589) (not b!237681) (not b!237754) (not b!237748) (not b!237762) (not d!59597) (not d!59609) (not d!59565) (not b!237746) (not b!237632) (not b!237646) (not b!237588) (not b!237773) (not b!237739) (not d!59585) (not b!237763) (not d!59603) (not d!59551) (not b!237647) (not d!59611) (not b!237760) (not b!237772))
(check-sat b_and!13361 (not b_next!6381))
