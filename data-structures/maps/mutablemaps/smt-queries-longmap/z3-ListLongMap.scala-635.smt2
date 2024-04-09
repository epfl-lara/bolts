; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16172 () Bool)

(assert start!16172)

(declare-fun b!161003 () Bool)

(declare-fun b_free!3621 () Bool)

(declare-fun b_next!3621 () Bool)

(assert (=> b!161003 (= b_free!3621 (not b_next!3621))))

(declare-fun tp!13432 () Bool)

(declare-fun b_and!10053 () Bool)

(assert (=> b!161003 (= tp!13432 b_and!10053)))

(declare-fun b!161002 () Bool)

(declare-fun e!105220 () Bool)

(declare-fun e!105221 () Bool)

(declare-fun mapRes!5822 () Bool)

(assert (=> b!161002 (= e!105220 (and e!105221 mapRes!5822))))

(declare-fun condMapEmpty!5822 () Bool)

(declare-datatypes ((V!4211 0))(
  ( (V!4212 (val!1756 Int)) )
))
(declare-datatypes ((ValueCell!1368 0))(
  ( (ValueCellFull!1368 (v!3617 V!4211)) (EmptyCell!1368) )
))
(declare-datatypes ((array!5924 0))(
  ( (array!5925 (arr!2806 (Array (_ BitVec 32) (_ BitVec 64))) (size!3090 (_ BitVec 32))) )
))
(declare-datatypes ((array!5926 0))(
  ( (array!5927 (arr!2807 (Array (_ BitVec 32) ValueCell!1368)) (size!3091 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1644 0))(
  ( (LongMapFixedSize!1645 (defaultEntry!3264 Int) (mask!7846 (_ BitVec 32)) (extraKeys!3005 (_ BitVec 32)) (zeroValue!3107 V!4211) (minValue!3107 V!4211) (_size!871 (_ BitVec 32)) (_keys!5065 array!5924) (_values!3247 array!5926) (_vacant!871 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1644)

(declare-fun mapDefault!5822 () ValueCell!1368)

(assert (=> b!161002 (= condMapEmpty!5822 (= (arr!2807 (_values!3247 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1368)) mapDefault!5822)))))

(declare-fun e!105216 () Bool)

(declare-fun tp_is_empty!3423 () Bool)

(declare-fun array_inv!1777 (array!5924) Bool)

(declare-fun array_inv!1778 (array!5926) Bool)

(assert (=> b!161003 (= e!105216 (and tp!13432 tp_is_empty!3423 (array_inv!1777 (_keys!5065 thiss!1248)) (array_inv!1778 (_values!3247 thiss!1248)) e!105220))))

(declare-fun b!161004 () Bool)

(declare-fun res!76352 () Bool)

(declare-fun e!105217 () Bool)

(assert (=> b!161004 (=> (not res!76352) (not e!105217))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161004 (= res!76352 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161005 () Bool)

(declare-fun res!76351 () Bool)

(assert (=> b!161005 (=> (not res!76351) (not e!105217))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!352 0))(
  ( (MissingZero!352 (index!3576 (_ BitVec 32))) (Found!352 (index!3577 (_ BitVec 32))) (Intermediate!352 (undefined!1164 Bool) (index!3578 (_ BitVec 32)) (x!17776 (_ BitVec 32))) (Undefined!352) (MissingVacant!352 (index!3579 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5924 (_ BitVec 32)) SeekEntryResult!352)

(assert (=> b!161005 (= res!76351 ((_ is Undefined!352) (seekEntryOrOpen!0 key!828 (_keys!5065 thiss!1248) (mask!7846 thiss!1248))))))

(declare-fun b!161006 () Bool)

(declare-fun res!76346 () Bool)

(assert (=> b!161006 (=> (not res!76346) (not e!105217))))

(declare-datatypes ((tuple2!2930 0))(
  ( (tuple2!2931 (_1!1475 (_ BitVec 64)) (_2!1475 V!4211)) )
))
(declare-datatypes ((List!1984 0))(
  ( (Nil!1981) (Cons!1980 (h!2593 tuple2!2930) (t!6794 List!1984)) )
))
(declare-datatypes ((ListLongMap!1939 0))(
  ( (ListLongMap!1940 (toList!985 List!1984)) )
))
(declare-fun contains!1015 (ListLongMap!1939 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!645 (array!5924 array!5926 (_ BitVec 32) (_ BitVec 32) V!4211 V!4211 (_ BitVec 32) Int) ListLongMap!1939)

(assert (=> b!161006 (= res!76346 (not (contains!1015 (getCurrentListMap!645 (_keys!5065 thiss!1248) (_values!3247 thiss!1248) (mask!7846 thiss!1248) (extraKeys!3005 thiss!1248) (zeroValue!3107 thiss!1248) (minValue!3107 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3264 thiss!1248)) key!828)))))

(declare-fun res!76348 () Bool)

(assert (=> start!16172 (=> (not res!76348) (not e!105217))))

(declare-fun valid!749 (LongMapFixedSize!1644) Bool)

(assert (=> start!16172 (= res!76348 (valid!749 thiss!1248))))

(assert (=> start!16172 e!105217))

(assert (=> start!16172 e!105216))

(assert (=> start!16172 true))

(declare-fun mapIsEmpty!5822 () Bool)

(assert (=> mapIsEmpty!5822 mapRes!5822))

(declare-fun b!161007 () Bool)

(declare-fun res!76349 () Bool)

(assert (=> b!161007 (=> (not res!76349) (not e!105217))))

(assert (=> b!161007 (= res!76349 (and (= (size!3091 (_values!3247 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7846 thiss!1248))) (= (size!3090 (_keys!5065 thiss!1248)) (size!3091 (_values!3247 thiss!1248))) (bvsge (mask!7846 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3005 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3005 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!161008 () Bool)

(assert (=> b!161008 (= e!105221 tp_is_empty!3423)))

(declare-fun b!161009 () Bool)

(declare-fun res!76347 () Bool)

(assert (=> b!161009 (=> (not res!76347) (not e!105217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5924 (_ BitVec 32)) Bool)

(assert (=> b!161009 (= res!76347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5065 thiss!1248) (mask!7846 thiss!1248)))))

(declare-fun mapNonEmpty!5822 () Bool)

(declare-fun tp!13433 () Bool)

(declare-fun e!105218 () Bool)

(assert (=> mapNonEmpty!5822 (= mapRes!5822 (and tp!13433 e!105218))))

(declare-fun mapKey!5822 () (_ BitVec 32))

(declare-fun mapRest!5822 () (Array (_ BitVec 32) ValueCell!1368))

(declare-fun mapValue!5822 () ValueCell!1368)

(assert (=> mapNonEmpty!5822 (= (arr!2807 (_values!3247 thiss!1248)) (store mapRest!5822 mapKey!5822 mapValue!5822))))

(declare-fun b!161010 () Bool)

(assert (=> b!161010 (= e!105217 false)))

(declare-fun lt!82166 () Bool)

(declare-datatypes ((List!1985 0))(
  ( (Nil!1982) (Cons!1981 (h!2594 (_ BitVec 64)) (t!6795 List!1985)) )
))
(declare-fun arrayNoDuplicates!0 (array!5924 (_ BitVec 32) List!1985) Bool)

(assert (=> b!161010 (= lt!82166 (arrayNoDuplicates!0 (_keys!5065 thiss!1248) #b00000000000000000000000000000000 Nil!1982))))

(declare-fun b!161011 () Bool)

(declare-fun res!76350 () Bool)

(assert (=> b!161011 (=> (not res!76350) (not e!105217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!161011 (= res!76350 (validMask!0 (mask!7846 thiss!1248)))))

(declare-fun b!161012 () Bool)

(assert (=> b!161012 (= e!105218 tp_is_empty!3423)))

(assert (= (and start!16172 res!76348) b!161004))

(assert (= (and b!161004 res!76352) b!161005))

(assert (= (and b!161005 res!76351) b!161006))

(assert (= (and b!161006 res!76346) b!161011))

(assert (= (and b!161011 res!76350) b!161007))

(assert (= (and b!161007 res!76349) b!161009))

(assert (= (and b!161009 res!76347) b!161010))

(assert (= (and b!161002 condMapEmpty!5822) mapIsEmpty!5822))

(assert (= (and b!161002 (not condMapEmpty!5822)) mapNonEmpty!5822))

(assert (= (and mapNonEmpty!5822 ((_ is ValueCellFull!1368) mapValue!5822)) b!161012))

(assert (= (and b!161002 ((_ is ValueCellFull!1368) mapDefault!5822)) b!161008))

(assert (= b!161003 b!161002))

(assert (= start!16172 b!161003))

(declare-fun m!192655 () Bool)

(assert (=> b!161010 m!192655))

(declare-fun m!192657 () Bool)

(assert (=> b!161005 m!192657))

(declare-fun m!192659 () Bool)

(assert (=> start!16172 m!192659))

(declare-fun m!192661 () Bool)

(assert (=> b!161011 m!192661))

(declare-fun m!192663 () Bool)

(assert (=> b!161006 m!192663))

(assert (=> b!161006 m!192663))

(declare-fun m!192665 () Bool)

(assert (=> b!161006 m!192665))

(declare-fun m!192667 () Bool)

(assert (=> b!161009 m!192667))

(declare-fun m!192669 () Bool)

(assert (=> b!161003 m!192669))

(declare-fun m!192671 () Bool)

(assert (=> b!161003 m!192671))

(declare-fun m!192673 () Bool)

(assert (=> mapNonEmpty!5822 m!192673))

(check-sat (not b!161003) (not b!161006) (not b!161011) b_and!10053 tp_is_empty!3423 (not start!16172) (not b_next!3621) (not b!161010) (not mapNonEmpty!5822) (not b!161005) (not b!161009))
(check-sat b_and!10053 (not b_next!3621))
