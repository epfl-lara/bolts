; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16532 () Bool)

(assert start!16532)

(declare-fun b!164208 () Bool)

(declare-fun b_free!3825 () Bool)

(declare-fun b_next!3825 () Bool)

(assert (=> b!164208 (= b_free!3825 (not b_next!3825))))

(declare-fun tp!14075 () Bool)

(declare-fun b_and!10257 () Bool)

(assert (=> b!164208 (= tp!14075 b_and!10257)))

(declare-fun b!164205 () Bool)

(declare-fun e!107751 () Bool)

(declare-fun e!107746 () Bool)

(declare-fun mapRes!6159 () Bool)

(assert (=> b!164205 (= e!107751 (and e!107746 mapRes!6159))))

(declare-fun condMapEmpty!6159 () Bool)

(declare-datatypes ((V!4483 0))(
  ( (V!4484 (val!1858 Int)) )
))
(declare-datatypes ((ValueCell!1470 0))(
  ( (ValueCellFull!1470 (v!3719 V!4483)) (EmptyCell!1470) )
))
(declare-datatypes ((array!6350 0))(
  ( (array!6351 (arr!3010 (Array (_ BitVec 32) (_ BitVec 64))) (size!3298 (_ BitVec 32))) )
))
(declare-datatypes ((array!6352 0))(
  ( (array!6353 (arr!3011 (Array (_ BitVec 32) ValueCell!1470)) (size!3299 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1848 0))(
  ( (LongMapFixedSize!1849 (defaultEntry!3366 Int) (mask!8053 (_ BitVec 32)) (extraKeys!3107 (_ BitVec 32)) (zeroValue!3209 V!4483) (minValue!3209 V!4483) (_size!973 (_ BitVec 32)) (_keys!5191 array!6350) (_values!3349 array!6352) (_vacant!973 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1848)

(declare-fun mapDefault!6159 () ValueCell!1470)

(assert (=> b!164205 (= condMapEmpty!6159 (= (arr!3011 (_values!3349 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1470)) mapDefault!6159)))))

(declare-fun b!164206 () Bool)

(declare-fun e!107749 () Bool)

(declare-fun e!107747 () Bool)

(assert (=> b!164206 (= e!107749 e!107747)))

(declare-fun res!77727 () Bool)

(assert (=> b!164206 (=> (not res!77727) (not e!107747))))

(declare-datatypes ((SeekEntryResult!421 0))(
  ( (MissingZero!421 (index!3852 (_ BitVec 32))) (Found!421 (index!3853 (_ BitVec 32))) (Intermediate!421 (undefined!1233 Bool) (index!3854 (_ BitVec 32)) (x!18225 (_ BitVec 32))) (Undefined!421) (MissingVacant!421 (index!3855 (_ BitVec 32))) )
))
(declare-fun lt!82877 () SeekEntryResult!421)

(get-info :version)

(assert (=> b!164206 (= res!77727 (and (not ((_ is Undefined!421) lt!82877)) (not ((_ is MissingVacant!421) lt!82877)) (not ((_ is MissingZero!421) lt!82877)) ((_ is Found!421) lt!82877)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6350 (_ BitVec 32)) SeekEntryResult!421)

(assert (=> b!164206 (= lt!82877 (seekEntryOrOpen!0 key!828 (_keys!5191 thiss!1248) (mask!8053 thiss!1248)))))

(declare-fun b!164207 () Bool)

(declare-fun res!77731 () Bool)

(assert (=> b!164207 (=> (not res!77731) (not e!107747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6350 (_ BitVec 32)) Bool)

(assert (=> b!164207 (= res!77731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5191 thiss!1248) (mask!8053 thiss!1248)))))

(declare-fun e!107752 () Bool)

(declare-fun tp_is_empty!3627 () Bool)

(declare-fun array_inv!1917 (array!6350) Bool)

(declare-fun array_inv!1918 (array!6352) Bool)

(assert (=> b!164208 (= e!107752 (and tp!14075 tp_is_empty!3627 (array_inv!1917 (_keys!5191 thiss!1248)) (array_inv!1918 (_values!3349 thiss!1248)) e!107751))))

(declare-fun b!164209 () Bool)

(declare-fun res!77733 () Bool)

(assert (=> b!164209 (=> (not res!77733) (not e!107747))))

(assert (=> b!164209 (= res!77733 (and (= (size!3299 (_values!3349 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8053 thiss!1248))) (= (size!3298 (_keys!5191 thiss!1248)) (size!3299 (_values!3349 thiss!1248))) (bvsge (mask!8053 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3107 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3107 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164210 () Bool)

(assert (=> b!164210 (= e!107746 tp_is_empty!3627)))

(declare-fun b!164211 () Bool)

(declare-fun res!77729 () Bool)

(assert (=> b!164211 (=> (not res!77729) (not e!107747))))

(declare-datatypes ((tuple2!3012 0))(
  ( (tuple2!3013 (_1!1516 (_ BitVec 64)) (_2!1516 V!4483)) )
))
(declare-datatypes ((List!2018 0))(
  ( (Nil!2015) (Cons!2014 (h!2631 tuple2!3012) (t!6828 List!2018)) )
))
(declare-datatypes ((ListLongMap!1981 0))(
  ( (ListLongMap!1982 (toList!1006 List!2018)) )
))
(declare-fun contains!1042 (ListLongMap!1981 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!659 (array!6350 array!6352 (_ BitVec 32) (_ BitVec 32) V!4483 V!4483 (_ BitVec 32) Int) ListLongMap!1981)

(assert (=> b!164211 (= res!77729 (contains!1042 (getCurrentListMap!659 (_keys!5191 thiss!1248) (_values!3349 thiss!1248) (mask!8053 thiss!1248) (extraKeys!3107 thiss!1248) (zeroValue!3209 thiss!1248) (minValue!3209 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3366 thiss!1248)) key!828))))

(declare-fun res!77728 () Bool)

(assert (=> start!16532 (=> (not res!77728) (not e!107749))))

(declare-fun valid!815 (LongMapFixedSize!1848) Bool)

(assert (=> start!16532 (= res!77728 (valid!815 thiss!1248))))

(assert (=> start!16532 e!107749))

(assert (=> start!16532 e!107752))

(assert (=> start!16532 true))

(declare-fun b!164212 () Bool)

(declare-fun e!107750 () Bool)

(assert (=> b!164212 (= e!107750 tp_is_empty!3627)))

(declare-fun mapNonEmpty!6159 () Bool)

(declare-fun tp!14076 () Bool)

(assert (=> mapNonEmpty!6159 (= mapRes!6159 (and tp!14076 e!107750))))

(declare-fun mapValue!6159 () ValueCell!1470)

(declare-fun mapKey!6159 () (_ BitVec 32))

(declare-fun mapRest!6159 () (Array (_ BitVec 32) ValueCell!1470))

(assert (=> mapNonEmpty!6159 (= (arr!3011 (_values!3349 thiss!1248)) (store mapRest!6159 mapKey!6159 mapValue!6159))))

(declare-fun mapIsEmpty!6159 () Bool)

(assert (=> mapIsEmpty!6159 mapRes!6159))

(declare-fun b!164213 () Bool)

(declare-fun res!77730 () Bool)

(assert (=> b!164213 (=> (not res!77730) (not e!107749))))

(assert (=> b!164213 (= res!77730 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164214 () Bool)

(assert (=> b!164214 (= e!107747 false)))

(declare-fun lt!82876 () Bool)

(declare-datatypes ((List!2019 0))(
  ( (Nil!2016) (Cons!2015 (h!2632 (_ BitVec 64)) (t!6829 List!2019)) )
))
(declare-fun arrayNoDuplicates!0 (array!6350 (_ BitVec 32) List!2019) Bool)

(assert (=> b!164214 (= lt!82876 (arrayNoDuplicates!0 (_keys!5191 thiss!1248) #b00000000000000000000000000000000 Nil!2016))))

(declare-fun b!164215 () Bool)

(declare-fun res!77732 () Bool)

(assert (=> b!164215 (=> (not res!77732) (not e!107747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164215 (= res!77732 (validMask!0 (mask!8053 thiss!1248)))))

(assert (= (and start!16532 res!77728) b!164213))

(assert (= (and b!164213 res!77730) b!164206))

(assert (= (and b!164206 res!77727) b!164211))

(assert (= (and b!164211 res!77729) b!164215))

(assert (= (and b!164215 res!77732) b!164209))

(assert (= (and b!164209 res!77733) b!164207))

(assert (= (and b!164207 res!77731) b!164214))

(assert (= (and b!164205 condMapEmpty!6159) mapIsEmpty!6159))

(assert (= (and b!164205 (not condMapEmpty!6159)) mapNonEmpty!6159))

(assert (= (and mapNonEmpty!6159 ((_ is ValueCellFull!1470) mapValue!6159)) b!164212))

(assert (= (and b!164205 ((_ is ValueCellFull!1470) mapDefault!6159)) b!164210))

(assert (= b!164208 b!164205))

(assert (= start!16532 b!164208))

(declare-fun m!194509 () Bool)

(assert (=> b!164208 m!194509))

(declare-fun m!194511 () Bool)

(assert (=> b!164208 m!194511))

(declare-fun m!194513 () Bool)

(assert (=> b!164206 m!194513))

(declare-fun m!194515 () Bool)

(assert (=> b!164207 m!194515))

(declare-fun m!194517 () Bool)

(assert (=> mapNonEmpty!6159 m!194517))

(declare-fun m!194519 () Bool)

(assert (=> start!16532 m!194519))

(declare-fun m!194521 () Bool)

(assert (=> b!164211 m!194521))

(assert (=> b!164211 m!194521))

(declare-fun m!194523 () Bool)

(assert (=> b!164211 m!194523))

(declare-fun m!194525 () Bool)

(assert (=> b!164214 m!194525))

(declare-fun m!194527 () Bool)

(assert (=> b!164215 m!194527))

(check-sat (not start!16532) (not b!164207) (not b!164208) (not b_next!3825) (not mapNonEmpty!6159) (not b!164206) (not b!164211) b_and!10257 (not b!164214) (not b!164215) tp_is_empty!3627)
(check-sat b_and!10257 (not b_next!3825))
