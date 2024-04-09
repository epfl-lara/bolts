; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16670 () Bool)

(assert start!16670)

(declare-fun b!166557 () Bool)

(declare-fun b_free!3963 () Bool)

(declare-fun b_next!3963 () Bool)

(assert (=> b!166557 (= b_free!3963 (not b_next!3963))))

(declare-fun tp!14489 () Bool)

(declare-fun b_and!10395 () Bool)

(assert (=> b!166557 (= tp!14489 b_and!10395)))

(declare-fun b!166546 () Bool)

(declare-fun e!109293 () Bool)

(declare-fun tp_is_empty!3765 () Bool)

(assert (=> b!166546 (= e!109293 tp_is_empty!3765)))

(declare-fun mapIsEmpty!6366 () Bool)

(declare-fun mapRes!6366 () Bool)

(assert (=> mapIsEmpty!6366 mapRes!6366))

(declare-fun res!79180 () Bool)

(declare-fun e!109295 () Bool)

(assert (=> start!16670 (=> (not res!79180) (not e!109295))))

(declare-datatypes ((V!4667 0))(
  ( (V!4668 (val!1927 Int)) )
))
(declare-datatypes ((ValueCell!1539 0))(
  ( (ValueCellFull!1539 (v!3788 V!4667)) (EmptyCell!1539) )
))
(declare-datatypes ((array!6626 0))(
  ( (array!6627 (arr!3148 (Array (_ BitVec 32) (_ BitVec 64))) (size!3436 (_ BitVec 32))) )
))
(declare-datatypes ((array!6628 0))(
  ( (array!6629 (arr!3149 (Array (_ BitVec 32) ValueCell!1539)) (size!3437 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1986 0))(
  ( (LongMapFixedSize!1987 (defaultEntry!3435 Int) (mask!8168 (_ BitVec 32)) (extraKeys!3176 (_ BitVec 32)) (zeroValue!3278 V!4667) (minValue!3278 V!4667) (_size!1042 (_ BitVec 32)) (_keys!5260 array!6626) (_values!3418 array!6628) (_vacant!1042 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1986)

(declare-fun valid!864 (LongMapFixedSize!1986) Bool)

(assert (=> start!16670 (= res!79180 (valid!864 thiss!1248))))

(assert (=> start!16670 e!109295))

(declare-fun e!109299 () Bool)

(assert (=> start!16670 e!109299))

(assert (=> start!16670 true))

(declare-fun b!166547 () Bool)

(declare-datatypes ((Unit!5069 0))(
  ( (Unit!5070) )
))
(declare-fun e!109298 () Unit!5069)

(declare-fun lt!83389 () Unit!5069)

(assert (=> b!166547 (= e!109298 lt!83389)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!91 (array!6626 array!6628 (_ BitVec 32) (_ BitVec 32) V!4667 V!4667 (_ BitVec 64) Int) Unit!5069)

(assert (=> b!166547 (= lt!83389 (lemmaInListMapThenSeekEntryOrOpenFindsIt!91 (_keys!5260 thiss!1248) (_values!3418 thiss!1248) (mask!8168 thiss!1248) (extraKeys!3176 thiss!1248) (zeroValue!3278 thiss!1248) (minValue!3278 thiss!1248) key!828 (defaultEntry!3435 thiss!1248)))))

(declare-fun res!79182 () Bool)

(declare-datatypes ((SeekEntryResult!470 0))(
  ( (MissingZero!470 (index!4048 (_ BitVec 32))) (Found!470 (index!4049 (_ BitVec 32))) (Intermediate!470 (undefined!1282 Bool) (index!4050 (_ BitVec 32)) (x!18458 (_ BitVec 32))) (Undefined!470) (MissingVacant!470 (index!4051 (_ BitVec 32))) )
))
(declare-fun lt!83388 () SeekEntryResult!470)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166547 (= res!79182 (inRange!0 (index!4049 lt!83388) (mask!8168 thiss!1248)))))

(declare-fun e!109292 () Bool)

(assert (=> b!166547 (=> (not res!79182) (not e!109292))))

(assert (=> b!166547 e!109292))

(declare-fun b!166548 () Bool)

(declare-fun e!109294 () Bool)

(assert (=> b!166548 (= e!109294 tp_is_empty!3765)))

(declare-fun b!166549 () Bool)

(declare-fun Unit!5071 () Unit!5069)

(assert (=> b!166549 (= e!109298 Unit!5071)))

(declare-fun lt!83386 () Unit!5069)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!89 (array!6626 array!6628 (_ BitVec 32) (_ BitVec 32) V!4667 V!4667 (_ BitVec 64) Int) Unit!5069)

(assert (=> b!166549 (= lt!83386 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!89 (_keys!5260 thiss!1248) (_values!3418 thiss!1248) (mask!8168 thiss!1248) (extraKeys!3176 thiss!1248) (zeroValue!3278 thiss!1248) (minValue!3278 thiss!1248) key!828 (defaultEntry!3435 thiss!1248)))))

(assert (=> b!166549 false))

(declare-fun b!166550 () Bool)

(declare-fun e!109291 () Bool)

(assert (=> b!166550 (= e!109291 false)))

(declare-fun lt!83387 () Bool)

(declare-datatypes ((List!2118 0))(
  ( (Nil!2115) (Cons!2114 (h!2731 (_ BitVec 64)) (t!6928 List!2118)) )
))
(declare-fun arrayNoDuplicates!0 (array!6626 (_ BitVec 32) List!2118) Bool)

(assert (=> b!166550 (= lt!83387 (arrayNoDuplicates!0 (_keys!5260 thiss!1248) #b00000000000000000000000000000000 Nil!2115))))

(declare-fun b!166551 () Bool)

(declare-fun res!79181 () Bool)

(assert (=> b!166551 (=> (not res!79181) (not e!109291))))

(assert (=> b!166551 (= res!79181 (and (= (size!3437 (_values!3418 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8168 thiss!1248))) (= (size!3436 (_keys!5260 thiss!1248)) (size!3437 (_values!3418 thiss!1248))) (bvsge (mask!8168 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3176 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3176 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166552 () Bool)

(declare-fun e!109297 () Bool)

(assert (=> b!166552 (= e!109295 e!109297)))

(declare-fun res!79179 () Bool)

(assert (=> b!166552 (=> (not res!79179) (not e!109297))))

(get-info :version)

(assert (=> b!166552 (= res!79179 (and (not ((_ is Undefined!470) lt!83388)) (not ((_ is MissingVacant!470) lt!83388)) (not ((_ is MissingZero!470) lt!83388)) ((_ is Found!470) lt!83388)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6626 (_ BitVec 32)) SeekEntryResult!470)

(assert (=> b!166552 (= lt!83388 (seekEntryOrOpen!0 key!828 (_keys!5260 thiss!1248) (mask!8168 thiss!1248)))))

(declare-fun b!166553 () Bool)

(assert (=> b!166553 (= e!109292 (= (select (arr!3148 (_keys!5260 thiss!1248)) (index!4049 lt!83388)) key!828))))

(declare-fun b!166554 () Bool)

(declare-fun e!109300 () Bool)

(assert (=> b!166554 (= e!109300 (and e!109293 mapRes!6366))))

(declare-fun condMapEmpty!6366 () Bool)

(declare-fun mapDefault!6366 () ValueCell!1539)

(assert (=> b!166554 (= condMapEmpty!6366 (= (arr!3149 (_values!3418 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1539)) mapDefault!6366)))))

(declare-fun b!166555 () Bool)

(assert (=> b!166555 (= e!109297 e!109291)))

(declare-fun res!79176 () Bool)

(assert (=> b!166555 (=> (not res!79176) (not e!109291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166555 (= res!79176 (validMask!0 (mask!8168 thiss!1248)))))

(declare-fun lt!83390 () Unit!5069)

(assert (=> b!166555 (= lt!83390 e!109298)))

(declare-fun c!30207 () Bool)

(declare-datatypes ((tuple2!3106 0))(
  ( (tuple2!3107 (_1!1563 (_ BitVec 64)) (_2!1563 V!4667)) )
))
(declare-datatypes ((List!2119 0))(
  ( (Nil!2116) (Cons!2115 (h!2732 tuple2!3106) (t!6929 List!2119)) )
))
(declare-datatypes ((ListLongMap!2075 0))(
  ( (ListLongMap!2076 (toList!1053 List!2119)) )
))
(declare-fun contains!1089 (ListLongMap!2075 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!706 (array!6626 array!6628 (_ BitVec 32) (_ BitVec 32) V!4667 V!4667 (_ BitVec 32) Int) ListLongMap!2075)

(assert (=> b!166555 (= c!30207 (contains!1089 (getCurrentListMap!706 (_keys!5260 thiss!1248) (_values!3418 thiss!1248) (mask!8168 thiss!1248) (extraKeys!3176 thiss!1248) (zeroValue!3278 thiss!1248) (minValue!3278 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3435 thiss!1248)) key!828))))

(declare-fun b!166556 () Bool)

(declare-fun res!79178 () Bool)

(assert (=> b!166556 (=> (not res!79178) (not e!109291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6626 (_ BitVec 32)) Bool)

(assert (=> b!166556 (= res!79178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5260 thiss!1248) (mask!8168 thiss!1248)))))

(declare-fun mapNonEmpty!6366 () Bool)

(declare-fun tp!14490 () Bool)

(assert (=> mapNonEmpty!6366 (= mapRes!6366 (and tp!14490 e!109294))))

(declare-fun mapValue!6366 () ValueCell!1539)

(declare-fun mapKey!6366 () (_ BitVec 32))

(declare-fun mapRest!6366 () (Array (_ BitVec 32) ValueCell!1539))

(assert (=> mapNonEmpty!6366 (= (arr!3149 (_values!3418 thiss!1248)) (store mapRest!6366 mapKey!6366 mapValue!6366))))

(declare-fun array_inv!2013 (array!6626) Bool)

(declare-fun array_inv!2014 (array!6628) Bool)

(assert (=> b!166557 (= e!109299 (and tp!14489 tp_is_empty!3765 (array_inv!2013 (_keys!5260 thiss!1248)) (array_inv!2014 (_values!3418 thiss!1248)) e!109300))))

(declare-fun b!166558 () Bool)

(declare-fun res!79177 () Bool)

(assert (=> b!166558 (=> (not res!79177) (not e!109295))))

(assert (=> b!166558 (= res!79177 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16670 res!79180) b!166558))

(assert (= (and b!166558 res!79177) b!166552))

(assert (= (and b!166552 res!79179) b!166555))

(assert (= (and b!166555 c!30207) b!166547))

(assert (= (and b!166555 (not c!30207)) b!166549))

(assert (= (and b!166547 res!79182) b!166553))

(assert (= (and b!166555 res!79176) b!166551))

(assert (= (and b!166551 res!79181) b!166556))

(assert (= (and b!166556 res!79178) b!166550))

(assert (= (and b!166554 condMapEmpty!6366) mapIsEmpty!6366))

(assert (= (and b!166554 (not condMapEmpty!6366)) mapNonEmpty!6366))

(assert (= (and mapNonEmpty!6366 ((_ is ValueCellFull!1539) mapValue!6366)) b!166548))

(assert (= (and b!166554 ((_ is ValueCellFull!1539) mapDefault!6366)) b!166546))

(assert (= b!166557 b!166554))

(assert (= start!16670 b!166557))

(declare-fun m!195969 () Bool)

(assert (=> mapNonEmpty!6366 m!195969))

(declare-fun m!195971 () Bool)

(assert (=> b!166552 m!195971))

(declare-fun m!195973 () Bool)

(assert (=> b!166553 m!195973))

(declare-fun m!195975 () Bool)

(assert (=> b!166547 m!195975))

(declare-fun m!195977 () Bool)

(assert (=> b!166547 m!195977))

(declare-fun m!195979 () Bool)

(assert (=> b!166557 m!195979))

(declare-fun m!195981 () Bool)

(assert (=> b!166557 m!195981))

(declare-fun m!195983 () Bool)

(assert (=> b!166550 m!195983))

(declare-fun m!195985 () Bool)

(assert (=> b!166555 m!195985))

(declare-fun m!195987 () Bool)

(assert (=> b!166555 m!195987))

(assert (=> b!166555 m!195987))

(declare-fun m!195989 () Bool)

(assert (=> b!166555 m!195989))

(declare-fun m!195991 () Bool)

(assert (=> start!16670 m!195991))

(declare-fun m!195993 () Bool)

(assert (=> b!166549 m!195993))

(declare-fun m!195995 () Bool)

(assert (=> b!166556 m!195995))

(check-sat (not b!166556) (not start!16670) (not b!166555) b_and!10395 (not b!166550) (not b!166557) (not b!166549) (not b!166552) (not b_next!3963) (not b!166547) tp_is_empty!3765 (not mapNonEmpty!6366))
(check-sat b_and!10395 (not b_next!3963))
