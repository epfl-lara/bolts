; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16208 () Bool)

(assert start!16208)

(declare-fun b!161519 () Bool)

(declare-fun b_free!3657 () Bool)

(declare-fun b_next!3657 () Bool)

(assert (=> b!161519 (= b_free!3657 (not b_next!3657))))

(declare-fun tp!13541 () Bool)

(declare-fun b_and!10089 () Bool)

(assert (=> b!161519 (= tp!13541 b_and!10089)))

(declare-fun b!161514 () Bool)

(declare-datatypes ((Unit!5026 0))(
  ( (Unit!5027) )
))
(declare-fun e!105586 () Unit!5026)

(declare-datatypes ((V!4259 0))(
  ( (V!4260 (val!1774 Int)) )
))
(declare-datatypes ((ValueCell!1386 0))(
  ( (ValueCellFull!1386 (v!3635 V!4259)) (EmptyCell!1386) )
))
(declare-datatypes ((array!5996 0))(
  ( (array!5997 (arr!2842 (Array (_ BitVec 32) (_ BitVec 64))) (size!3126 (_ BitVec 32))) )
))
(declare-datatypes ((array!5998 0))(
  ( (array!5999 (arr!2843 (Array (_ BitVec 32) ValueCell!1386)) (size!3127 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1680 0))(
  ( (LongMapFixedSize!1681 (defaultEntry!3282 Int) (mask!7876 (_ BitVec 32)) (extraKeys!3023 (_ BitVec 32)) (zeroValue!3125 V!4259) (minValue!3125 V!4259) (_size!889 (_ BitVec 32)) (_keys!5083 array!5996) (_values!3265 array!5998) (_vacant!889 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1680)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!80 (array!5996 array!5998 (_ BitVec 32) (_ BitVec 32) V!4259 V!4259 (_ BitVec 64) Int) Unit!5026)

(assert (=> b!161514 (= e!105586 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!80 (_keys!5083 thiss!1248) (_values!3265 thiss!1248) (mask!7876 thiss!1248) (extraKeys!3023 thiss!1248) (zeroValue!3125 thiss!1248) (minValue!3125 thiss!1248) key!828 (defaultEntry!3282 thiss!1248)))))

(declare-fun b!161515 () Bool)

(declare-fun Unit!5028 () Unit!5026)

(assert (=> b!161515 (= e!105586 Unit!5028)))

(declare-fun lt!82262 () Unit!5026)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!82 (array!5996 array!5998 (_ BitVec 32) (_ BitVec 32) V!4259 V!4259 (_ BitVec 64) Int) Unit!5026)

(assert (=> b!161515 (= lt!82262 (lemmaInListMapThenSeekEntryOrOpenFindsIt!82 (_keys!5083 thiss!1248) (_values!3265 thiss!1248) (mask!7876 thiss!1248) (extraKeys!3023 thiss!1248) (zeroValue!3125 thiss!1248) (minValue!3125 thiss!1248) key!828 (defaultEntry!3282 thiss!1248)))))

(assert (=> b!161515 false))

(declare-fun b!161516 () Bool)

(declare-fun e!105583 () Bool)

(declare-fun e!105587 () Bool)

(declare-fun mapRes!5876 () Bool)

(assert (=> b!161516 (= e!105583 (and e!105587 mapRes!5876))))

(declare-fun condMapEmpty!5876 () Bool)

(declare-fun mapDefault!5876 () ValueCell!1386)

(assert (=> b!161516 (= condMapEmpty!5876 (= (arr!2843 (_values!3265 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1386)) mapDefault!5876)))))

(declare-fun mapIsEmpty!5876 () Bool)

(assert (=> mapIsEmpty!5876 mapRes!5876))

(declare-fun b!161517 () Bool)

(declare-fun tp_is_empty!3459 () Bool)

(assert (=> b!161517 (= e!105587 tp_is_empty!3459)))

(declare-fun b!161518 () Bool)

(declare-fun res!76562 () Bool)

(declare-fun e!105584 () Bool)

(assert (=> b!161518 (=> (not res!76562) (not e!105584))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!362 0))(
  ( (MissingZero!362 (index!3616 (_ BitVec 32))) (Found!362 (index!3617 (_ BitVec 32))) (Intermediate!362 (undefined!1174 Bool) (index!3618 (_ BitVec 32)) (x!17834 (_ BitVec 32))) (Undefined!362) (MissingVacant!362 (index!3619 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5996 (_ BitVec 32)) SeekEntryResult!362)

(assert (=> b!161518 (= res!76562 ((_ is Undefined!362) (seekEntryOrOpen!0 key!828 (_keys!5083 thiss!1248) (mask!7876 thiss!1248))))))

(declare-fun e!105585 () Bool)

(declare-fun array_inv!1801 (array!5996) Bool)

(declare-fun array_inv!1802 (array!5998) Bool)

(assert (=> b!161519 (= e!105585 (and tp!13541 tp_is_empty!3459 (array_inv!1801 (_keys!5083 thiss!1248)) (array_inv!1802 (_values!3265 thiss!1248)) e!105583))))

(declare-fun b!161520 () Bool)

(assert (=> b!161520 (= e!105584 false)))

(declare-fun lt!82261 () Unit!5026)

(assert (=> b!161520 (= lt!82261 e!105586)))

(declare-fun c!29955 () Bool)

(declare-datatypes ((tuple2!2952 0))(
  ( (tuple2!2953 (_1!1486 (_ BitVec 64)) (_2!1486 V!4259)) )
))
(declare-datatypes ((List!1998 0))(
  ( (Nil!1995) (Cons!1994 (h!2607 tuple2!2952) (t!6808 List!1998)) )
))
(declare-datatypes ((ListLongMap!1961 0))(
  ( (ListLongMap!1962 (toList!996 List!1998)) )
))
(declare-fun contains!1026 (ListLongMap!1961 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!656 (array!5996 array!5998 (_ BitVec 32) (_ BitVec 32) V!4259 V!4259 (_ BitVec 32) Int) ListLongMap!1961)

(assert (=> b!161520 (= c!29955 (contains!1026 (getCurrentListMap!656 (_keys!5083 thiss!1248) (_values!3265 thiss!1248) (mask!7876 thiss!1248) (extraKeys!3023 thiss!1248) (zeroValue!3125 thiss!1248) (minValue!3125 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3282 thiss!1248)) key!828))))

(declare-fun b!161521 () Bool)

(declare-fun res!76560 () Bool)

(assert (=> b!161521 (=> (not res!76560) (not e!105584))))

(assert (=> b!161521 (= res!76560 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161522 () Bool)

(declare-fun e!105582 () Bool)

(assert (=> b!161522 (= e!105582 tp_is_empty!3459)))

(declare-fun mapNonEmpty!5876 () Bool)

(declare-fun tp!13540 () Bool)

(assert (=> mapNonEmpty!5876 (= mapRes!5876 (and tp!13540 e!105582))))

(declare-fun mapKey!5876 () (_ BitVec 32))

(declare-fun mapRest!5876 () (Array (_ BitVec 32) ValueCell!1386))

(declare-fun mapValue!5876 () ValueCell!1386)

(assert (=> mapNonEmpty!5876 (= (arr!2843 (_values!3265 thiss!1248)) (store mapRest!5876 mapKey!5876 mapValue!5876))))

(declare-fun res!76561 () Bool)

(assert (=> start!16208 (=> (not res!76561) (not e!105584))))

(declare-fun valid!761 (LongMapFixedSize!1680) Bool)

(assert (=> start!16208 (= res!76561 (valid!761 thiss!1248))))

(assert (=> start!16208 e!105584))

(assert (=> start!16208 e!105585))

(assert (=> start!16208 true))

(assert (= (and start!16208 res!76561) b!161521))

(assert (= (and b!161521 res!76560) b!161518))

(assert (= (and b!161518 res!76562) b!161520))

(assert (= (and b!161520 c!29955) b!161515))

(assert (= (and b!161520 (not c!29955)) b!161514))

(assert (= (and b!161516 condMapEmpty!5876) mapIsEmpty!5876))

(assert (= (and b!161516 (not condMapEmpty!5876)) mapNonEmpty!5876))

(assert (= (and mapNonEmpty!5876 ((_ is ValueCellFull!1386) mapValue!5876)) b!161522))

(assert (= (and b!161516 ((_ is ValueCellFull!1386) mapDefault!5876)) b!161517))

(assert (= b!161519 b!161516))

(assert (= start!16208 b!161519))

(declare-fun m!192989 () Bool)

(assert (=> mapNonEmpty!5876 m!192989))

(declare-fun m!192991 () Bool)

(assert (=> b!161515 m!192991))

(declare-fun m!192993 () Bool)

(assert (=> b!161518 m!192993))

(declare-fun m!192995 () Bool)

(assert (=> start!16208 m!192995))

(declare-fun m!192997 () Bool)

(assert (=> b!161520 m!192997))

(assert (=> b!161520 m!192997))

(declare-fun m!192999 () Bool)

(assert (=> b!161520 m!192999))

(declare-fun m!193001 () Bool)

(assert (=> b!161519 m!193001))

(declare-fun m!193003 () Bool)

(assert (=> b!161519 m!193003))

(declare-fun m!193005 () Bool)

(assert (=> b!161514 m!193005))

(check-sat tp_is_empty!3459 b_and!10089 (not b_next!3657) (not b!161520) (not b!161519) (not b!161514) (not mapNonEmpty!5876) (not b!161518) (not b!161515) (not start!16208))
(check-sat b_and!10089 (not b_next!3657))
