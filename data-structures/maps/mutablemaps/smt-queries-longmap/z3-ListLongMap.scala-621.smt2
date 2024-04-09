; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16088 () Bool)

(assert start!16088)

(declare-fun b!159623 () Bool)

(declare-fun b_free!3537 () Bool)

(declare-fun b_next!3537 () Bool)

(assert (=> b!159623 (= b_free!3537 (not b_next!3537))))

(declare-fun tp!13181 () Bool)

(declare-fun b_and!9969 () Bool)

(assert (=> b!159623 (= tp!13181 b_and!9969)))

(declare-fun mapIsEmpty!5696 () Bool)

(declare-fun mapRes!5696 () Bool)

(assert (=> mapIsEmpty!5696 mapRes!5696))

(declare-fun b!159616 () Bool)

(declare-fun e!104462 () Bool)

(assert (=> b!159616 (= e!104462 false)))

(declare-fun lt!82040 () Bool)

(declare-datatypes ((V!4099 0))(
  ( (V!4100 (val!1714 Int)) )
))
(declare-datatypes ((ValueCell!1326 0))(
  ( (ValueCellFull!1326 (v!3575 V!4099)) (EmptyCell!1326) )
))
(declare-datatypes ((array!5756 0))(
  ( (array!5757 (arr!2722 (Array (_ BitVec 32) (_ BitVec 64))) (size!3006 (_ BitVec 32))) )
))
(declare-datatypes ((array!5758 0))(
  ( (array!5759 (arr!2723 (Array (_ BitVec 32) ValueCell!1326)) (size!3007 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1560 0))(
  ( (LongMapFixedSize!1561 (defaultEntry!3222 Int) (mask!7776 (_ BitVec 32)) (extraKeys!2963 (_ BitVec 32)) (zeroValue!3065 V!4099) (minValue!3065 V!4099) (_size!829 (_ BitVec 32)) (_keys!5023 array!5756) (_values!3205 array!5758) (_vacant!829 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1560)

(declare-datatypes ((List!1930 0))(
  ( (Nil!1927) (Cons!1926 (h!2539 (_ BitVec 64)) (t!6740 List!1930)) )
))
(declare-fun arrayNoDuplicates!0 (array!5756 (_ BitVec 32) List!1930) Bool)

(assert (=> b!159616 (= lt!82040 (arrayNoDuplicates!0 (_keys!5023 thiss!1248) #b00000000000000000000000000000000 Nil!1927))))

(declare-fun b!159617 () Bool)

(declare-fun res!75464 () Bool)

(assert (=> b!159617 (=> (not res!75464) (not e!104462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159617 (= res!75464 (validMask!0 (mask!7776 thiss!1248)))))

(declare-fun b!159618 () Bool)

(declare-fun res!75470 () Bool)

(assert (=> b!159618 (=> (not res!75470) (not e!104462))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159618 (= res!75470 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159619 () Bool)

(declare-fun res!75468 () Bool)

(assert (=> b!159619 (=> (not res!75468) (not e!104462))))

(assert (=> b!159619 (= res!75468 (and (= (size!3007 (_values!3205 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7776 thiss!1248))) (= (size!3006 (_keys!5023 thiss!1248)) (size!3007 (_values!3205 thiss!1248))) (bvsge (mask!7776 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2963 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2963 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159620 () Bool)

(declare-fun res!75466 () Bool)

(assert (=> b!159620 (=> (not res!75466) (not e!104462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5756 (_ BitVec 32)) Bool)

(assert (=> b!159620 (= res!75466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5023 thiss!1248) (mask!7776 thiss!1248)))))

(declare-fun mapNonEmpty!5696 () Bool)

(declare-fun tp!13180 () Bool)

(declare-fun e!104464 () Bool)

(assert (=> mapNonEmpty!5696 (= mapRes!5696 (and tp!13180 e!104464))))

(declare-fun mapKey!5696 () (_ BitVec 32))

(declare-fun mapRest!5696 () (Array (_ BitVec 32) ValueCell!1326))

(declare-fun mapValue!5696 () ValueCell!1326)

(assert (=> mapNonEmpty!5696 (= (arr!2723 (_values!3205 thiss!1248)) (store mapRest!5696 mapKey!5696 mapValue!5696))))

(declare-fun b!159622 () Bool)

(declare-fun res!75467 () Bool)

(assert (=> b!159622 (=> (not res!75467) (not e!104462))))

(declare-datatypes ((tuple2!2876 0))(
  ( (tuple2!2877 (_1!1448 (_ BitVec 64)) (_2!1448 V!4099)) )
))
(declare-datatypes ((List!1931 0))(
  ( (Nil!1928) (Cons!1927 (h!2540 tuple2!2876) (t!6741 List!1931)) )
))
(declare-datatypes ((ListLongMap!1885 0))(
  ( (ListLongMap!1886 (toList!958 List!1931)) )
))
(declare-fun contains!988 (ListLongMap!1885 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!618 (array!5756 array!5758 (_ BitVec 32) (_ BitVec 32) V!4099 V!4099 (_ BitVec 32) Int) ListLongMap!1885)

(assert (=> b!159622 (= res!75467 (contains!988 (getCurrentListMap!618 (_keys!5023 thiss!1248) (_values!3205 thiss!1248) (mask!7776 thiss!1248) (extraKeys!2963 thiss!1248) (zeroValue!3065 thiss!1248) (minValue!3065 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3222 thiss!1248)) key!828))))

(declare-fun e!104460 () Bool)

(declare-fun e!104465 () Bool)

(declare-fun tp_is_empty!3339 () Bool)

(declare-fun array_inv!1723 (array!5756) Bool)

(declare-fun array_inv!1724 (array!5758) Bool)

(assert (=> b!159623 (= e!104460 (and tp!13181 tp_is_empty!3339 (array_inv!1723 (_keys!5023 thiss!1248)) (array_inv!1724 (_values!3205 thiss!1248)) e!104465))))

(declare-fun b!159624 () Bool)

(assert (=> b!159624 (= e!104464 tp_is_empty!3339)))

(declare-fun b!159625 () Bool)

(declare-fun e!104461 () Bool)

(assert (=> b!159625 (= e!104465 (and e!104461 mapRes!5696))))

(declare-fun condMapEmpty!5696 () Bool)

(declare-fun mapDefault!5696 () ValueCell!1326)

(assert (=> b!159625 (= condMapEmpty!5696 (= (arr!2723 (_values!3205 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1326)) mapDefault!5696)))))

(declare-fun b!159626 () Bool)

(assert (=> b!159626 (= e!104461 tp_is_empty!3339)))

(declare-fun res!75469 () Bool)

(assert (=> start!16088 (=> (not res!75469) (not e!104462))))

(declare-fun valid!724 (LongMapFixedSize!1560) Bool)

(assert (=> start!16088 (= res!75469 (valid!724 thiss!1248))))

(assert (=> start!16088 e!104462))

(assert (=> start!16088 e!104460))

(assert (=> start!16088 true))

(declare-fun b!159621 () Bool)

(declare-fun res!75465 () Bool)

(assert (=> b!159621 (=> (not res!75465) (not e!104462))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!328 0))(
  ( (MissingZero!328 (index!3480 (_ BitVec 32))) (Found!328 (index!3481 (_ BitVec 32))) (Intermediate!328 (undefined!1140 Bool) (index!3482 (_ BitVec 32)) (x!17640 (_ BitVec 32))) (Undefined!328) (MissingVacant!328 (index!3483 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5756 (_ BitVec 32)) SeekEntryResult!328)

(assert (=> b!159621 (= res!75465 ((_ is Undefined!328) (seekEntryOrOpen!0 key!828 (_keys!5023 thiss!1248) (mask!7776 thiss!1248))))))

(assert (= (and start!16088 res!75469) b!159618))

(assert (= (and b!159618 res!75470) b!159621))

(assert (= (and b!159621 res!75465) b!159622))

(assert (= (and b!159622 res!75467) b!159617))

(assert (= (and b!159617 res!75464) b!159619))

(assert (= (and b!159619 res!75468) b!159620))

(assert (= (and b!159620 res!75466) b!159616))

(assert (= (and b!159625 condMapEmpty!5696) mapIsEmpty!5696))

(assert (= (and b!159625 (not condMapEmpty!5696)) mapNonEmpty!5696))

(assert (= (and mapNonEmpty!5696 ((_ is ValueCellFull!1326) mapValue!5696)) b!159624))

(assert (= (and b!159625 ((_ is ValueCellFull!1326) mapDefault!5696)) b!159626))

(assert (= b!159623 b!159625))

(assert (= start!16088 b!159623))

(declare-fun m!191815 () Bool)

(assert (=> start!16088 m!191815))

(declare-fun m!191817 () Bool)

(assert (=> b!159620 m!191817))

(declare-fun m!191819 () Bool)

(assert (=> b!159621 m!191819))

(declare-fun m!191821 () Bool)

(assert (=> mapNonEmpty!5696 m!191821))

(declare-fun m!191823 () Bool)

(assert (=> b!159617 m!191823))

(declare-fun m!191825 () Bool)

(assert (=> b!159616 m!191825))

(declare-fun m!191827 () Bool)

(assert (=> b!159623 m!191827))

(declare-fun m!191829 () Bool)

(assert (=> b!159623 m!191829))

(declare-fun m!191831 () Bool)

(assert (=> b!159622 m!191831))

(assert (=> b!159622 m!191831))

(declare-fun m!191833 () Bool)

(assert (=> b!159622 m!191833))

(check-sat (not mapNonEmpty!5696) (not b!159617) (not start!16088) (not b!159620) (not b!159622) (not b!159623) (not b!159621) b_and!9969 tp_is_empty!3339 (not b_next!3537) (not b!159616))
(check-sat b_and!9969 (not b_next!3537))
