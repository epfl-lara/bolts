; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21978 () Bool)

(assert start!21978)

(declare-fun b!224860 () Bool)

(declare-fun b_free!6033 () Bool)

(declare-fun b_next!6033 () Bool)

(assert (=> b!224860 (= b_free!6033 (not b_next!6033))))

(declare-fun tp!21240 () Bool)

(declare-fun b_and!12949 () Bool)

(assert (=> b!224860 (= tp!21240 b_and!12949)))

(declare-fun b!224858 () Bool)

(declare-fun c!37276 () Bool)

(declare-datatypes ((SeekEntryResult!872 0))(
  ( (MissingZero!872 (index!5658 (_ BitVec 32))) (Found!872 (index!5659 (_ BitVec 32))) (Intermediate!872 (undefined!1684 Bool) (index!5660 (_ BitVec 32)) (x!23164 (_ BitVec 32))) (Undefined!872) (MissingVacant!872 (index!5661 (_ BitVec 32))) )
))
(declare-fun lt!113335 () SeekEntryResult!872)

(get-info :version)

(assert (=> b!224858 (= c!37276 ((_ is MissingVacant!872) lt!113335))))

(declare-fun e!145982 () Bool)

(declare-fun e!145984 () Bool)

(assert (=> b!224858 (= e!145982 e!145984)))

(declare-fun b!224859 () Bool)

(declare-fun res!110671 () Bool)

(declare-fun e!145979 () Bool)

(assert (=> b!224859 (=> (not res!110671) (not e!145979))))

(declare-datatypes ((V!7507 0))(
  ( (V!7508 (val!2992 Int)) )
))
(declare-datatypes ((ValueCell!2604 0))(
  ( (ValueCellFull!2604 (v!5008 V!7507)) (EmptyCell!2604) )
))
(declare-datatypes ((array!11032 0))(
  ( (array!11033 (arr!5235 (Array (_ BitVec 32) ValueCell!2604)) (size!5568 (_ BitVec 32))) )
))
(declare-datatypes ((array!11034 0))(
  ( (array!11035 (arr!5236 (Array (_ BitVec 32) (_ BitVec 64))) (size!5569 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3108 0))(
  ( (LongMapFixedSize!3109 (defaultEntry!4213 Int) (mask!10051 (_ BitVec 32)) (extraKeys!3950 (_ BitVec 32)) (zeroValue!4054 V!7507) (minValue!4054 V!7507) (_size!1603 (_ BitVec 32)) (_keys!6267 array!11034) (_values!4196 array!11032) (_vacant!1603 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3108)

(assert (=> b!224859 (= res!110671 (= (select (arr!5236 (_keys!6267 thiss!1504)) (index!5658 lt!113335)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!145977 () Bool)

(declare-fun e!145985 () Bool)

(declare-fun tp_is_empty!5895 () Bool)

(declare-fun array_inv!3455 (array!11034) Bool)

(declare-fun array_inv!3456 (array!11032) Bool)

(assert (=> b!224860 (= e!145977 (and tp!21240 tp_is_empty!5895 (array_inv!3455 (_keys!6267 thiss!1504)) (array_inv!3456 (_values!4196 thiss!1504)) e!145985))))

(declare-fun b!224861 () Bool)

(declare-fun res!110669 () Bool)

(declare-fun e!145986 () Bool)

(assert (=> b!224861 (=> res!110669 e!145986)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!224861 (= res!110669 (not (validKeyInArray!0 key!932)))))

(declare-fun mapIsEmpty!10012 () Bool)

(declare-fun mapRes!10012 () Bool)

(assert (=> mapIsEmpty!10012 mapRes!10012))

(declare-fun b!224862 () Bool)

(declare-fun res!110670 () Bool)

(assert (=> b!224862 (=> res!110670 e!145986)))

(declare-fun lt!113330 () Bool)

(assert (=> b!224862 (= res!110670 lt!113330)))

(declare-fun b!224863 () Bool)

(declare-fun e!145976 () Bool)

(assert (=> b!224863 (= e!145976 (not e!145986))))

(declare-fun res!110673 () Bool)

(assert (=> b!224863 (=> res!110673 e!145986)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!224863 (= res!110673 (not (validMask!0 (mask!10051 thiss!1504))))))

(declare-fun lt!113333 () array!11034)

(declare-fun arrayCountValidKeys!0 (array!11034 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!224863 (= (arrayCountValidKeys!0 lt!113333 #b00000000000000000000000000000000 (size!5569 (_keys!6267 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6267 thiss!1504) #b00000000000000000000000000000000 (size!5569 (_keys!6267 thiss!1504)))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!6767 0))(
  ( (Unit!6768) )
))
(declare-fun lt!113337 () Unit!6767)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11034 (_ BitVec 32) (_ BitVec 64)) Unit!6767)

(assert (=> b!224863 (= lt!113337 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6267 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3364 0))(
  ( (Nil!3361) (Cons!3360 (h!4008 (_ BitVec 64)) (t!8331 List!3364)) )
))
(declare-fun arrayNoDuplicates!0 (array!11034 (_ BitVec 32) List!3364) Bool)

(assert (=> b!224863 (arrayNoDuplicates!0 lt!113333 #b00000000000000000000000000000000 Nil!3361)))

(assert (=> b!224863 (= lt!113333 (array!11035 (store (arr!5236 (_keys!6267 thiss!1504)) index!297 key!932) (size!5569 (_keys!6267 thiss!1504))))))

(declare-fun lt!113331 () Unit!6767)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11034 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3364) Unit!6767)

(assert (=> b!224863 (= lt!113331 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6267 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3361))))

(declare-fun lt!113339 () Unit!6767)

(declare-fun e!145980 () Unit!6767)

(assert (=> b!224863 (= lt!113339 e!145980)))

(declare-fun c!37274 () Bool)

(assert (=> b!224863 (= c!37274 lt!113330)))

(declare-fun arrayContainsKey!0 (array!11034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!224863 (= lt!113330 (arrayContainsKey!0 (_keys!6267 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224864 () Bool)

(declare-fun e!145981 () Unit!6767)

(declare-fun Unit!6769 () Unit!6767)

(assert (=> b!224864 (= e!145981 Unit!6769)))

(declare-fun lt!113334 () Unit!6767)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!244 (array!11034 array!11032 (_ BitVec 32) (_ BitVec 32) V!7507 V!7507 (_ BitVec 64) Int) Unit!6767)

(assert (=> b!224864 (= lt!113334 (lemmaInListMapThenSeekEntryOrOpenFindsIt!244 (_keys!6267 thiss!1504) (_values!4196 thiss!1504) (mask!10051 thiss!1504) (extraKeys!3950 thiss!1504) (zeroValue!4054 thiss!1504) (minValue!4054 thiss!1504) key!932 (defaultEntry!4213 thiss!1504)))))

(assert (=> b!224864 false))

(declare-fun res!110672 () Bool)

(declare-fun e!145987 () Bool)

(assert (=> start!21978 (=> (not res!110672) (not e!145987))))

(declare-fun valid!1245 (LongMapFixedSize!3108) Bool)

(assert (=> start!21978 (= res!110672 (valid!1245 thiss!1504))))

(assert (=> start!21978 e!145987))

(assert (=> start!21978 e!145977))

(assert (=> start!21978 true))

(declare-fun b!224865 () Bool)

(assert (=> b!224865 (= e!145984 ((_ is Undefined!872) lt!113335))))

(declare-fun b!224866 () Bool)

(declare-fun e!145989 () Bool)

(declare-fun call!20932 () Bool)

(assert (=> b!224866 (= e!145989 (not call!20932))))

(declare-fun b!224867 () Bool)

(declare-fun lt!113336 () Unit!6767)

(assert (=> b!224867 (= e!145981 lt!113336)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!252 (array!11034 array!11032 (_ BitVec 32) (_ BitVec 32) V!7507 V!7507 (_ BitVec 64) Int) Unit!6767)

(assert (=> b!224867 (= lt!113336 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!252 (_keys!6267 thiss!1504) (_values!4196 thiss!1504) (mask!10051 thiss!1504) (extraKeys!3950 thiss!1504) (zeroValue!4054 thiss!1504) (minValue!4054 thiss!1504) key!932 (defaultEntry!4213 thiss!1504)))))

(declare-fun c!37275 () Bool)

(assert (=> b!224867 (= c!37275 ((_ is MissingZero!872) lt!113335))))

(assert (=> b!224867 e!145982))

(declare-fun b!224868 () Bool)

(declare-fun e!145983 () Bool)

(assert (=> b!224868 (= e!145987 e!145983)))

(declare-fun res!110663 () Bool)

(assert (=> b!224868 (=> (not res!110663) (not e!145983))))

(assert (=> b!224868 (= res!110663 (or (= lt!113335 (MissingZero!872 index!297)) (= lt!113335 (MissingVacant!872 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11034 (_ BitVec 32)) SeekEntryResult!872)

(assert (=> b!224868 (= lt!113335 (seekEntryOrOpen!0 key!932 (_keys!6267 thiss!1504) (mask!10051 thiss!1504)))))

(declare-fun call!20931 () Bool)

(declare-fun bm!20928 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20928 (= call!20931 (inRange!0 (ite c!37275 (index!5658 lt!113335) (index!5661 lt!113335)) (mask!10051 thiss!1504)))))

(declare-fun b!224869 () Bool)

(declare-fun Unit!6770 () Unit!6767)

(assert (=> b!224869 (= e!145980 Unit!6770)))

(declare-fun lt!113338 () Unit!6767)

(declare-fun lemmaArrayContainsKeyThenInListMap!82 (array!11034 array!11032 (_ BitVec 32) (_ BitVec 32) V!7507 V!7507 (_ BitVec 64) (_ BitVec 32) Int) Unit!6767)

(assert (=> b!224869 (= lt!113338 (lemmaArrayContainsKeyThenInListMap!82 (_keys!6267 thiss!1504) (_values!4196 thiss!1504) (mask!10051 thiss!1504) (extraKeys!3950 thiss!1504) (zeroValue!4054 thiss!1504) (minValue!4054 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4213 thiss!1504)))))

(assert (=> b!224869 false))

(declare-fun b!224870 () Bool)

(declare-fun e!145978 () Bool)

(assert (=> b!224870 (= e!145985 (and e!145978 mapRes!10012))))

(declare-fun condMapEmpty!10012 () Bool)

(declare-fun mapDefault!10012 () ValueCell!2604)

(assert (=> b!224870 (= condMapEmpty!10012 (= (arr!5235 (_values!4196 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2604)) mapDefault!10012)))))

(declare-fun b!224871 () Bool)

(declare-fun Unit!6771 () Unit!6767)

(assert (=> b!224871 (= e!145980 Unit!6771)))

(declare-fun b!224872 () Bool)

(declare-fun e!145988 () Bool)

(assert (=> b!224872 (= e!145988 tp_is_empty!5895)))

(declare-fun bm!20929 () Bool)

(assert (=> bm!20929 (= call!20932 (arrayContainsKey!0 (_keys!6267 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224873 () Bool)

(declare-fun res!110667 () Bool)

(assert (=> b!224873 (=> (not res!110667) (not e!145987))))

(assert (=> b!224873 (= res!110667 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!224874 () Bool)

(assert (=> b!224874 (= e!145986 true)))

(declare-fun lt!113340 () Bool)

(assert (=> b!224874 (= lt!113340 (arrayNoDuplicates!0 (_keys!6267 thiss!1504) #b00000000000000000000000000000000 Nil!3361))))

(declare-fun mapNonEmpty!10012 () Bool)

(declare-fun tp!21241 () Bool)

(assert (=> mapNonEmpty!10012 (= mapRes!10012 (and tp!21241 e!145988))))

(declare-fun mapKey!10012 () (_ BitVec 32))

(declare-fun mapValue!10012 () ValueCell!2604)

(declare-fun mapRest!10012 () (Array (_ BitVec 32) ValueCell!2604))

(assert (=> mapNonEmpty!10012 (= (arr!5235 (_values!4196 thiss!1504)) (store mapRest!10012 mapKey!10012 mapValue!10012))))

(declare-fun b!224875 () Bool)

(assert (=> b!224875 (= e!145979 (not call!20932))))

(declare-fun b!224876 () Bool)

(assert (=> b!224876 (= e!145983 e!145976)))

(declare-fun res!110664 () Bool)

(assert (=> b!224876 (=> (not res!110664) (not e!145976))))

(assert (=> b!224876 (= res!110664 (inRange!0 index!297 (mask!10051 thiss!1504)))))

(declare-fun lt!113332 () Unit!6767)

(assert (=> b!224876 (= lt!113332 e!145981)))

(declare-fun c!37277 () Bool)

(declare-datatypes ((tuple2!4428 0))(
  ( (tuple2!4429 (_1!2224 (_ BitVec 64)) (_2!2224 V!7507)) )
))
(declare-datatypes ((List!3365 0))(
  ( (Nil!3362) (Cons!3361 (h!4009 tuple2!4428) (t!8332 List!3365)) )
))
(declare-datatypes ((ListLongMap!3355 0))(
  ( (ListLongMap!3356 (toList!1693 List!3365)) )
))
(declare-fun contains!1561 (ListLongMap!3355 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1216 (array!11034 array!11032 (_ BitVec 32) (_ BitVec 32) V!7507 V!7507 (_ BitVec 32) Int) ListLongMap!3355)

(assert (=> b!224876 (= c!37277 (contains!1561 (getCurrentListMap!1216 (_keys!6267 thiss!1504) (_values!4196 thiss!1504) (mask!10051 thiss!1504) (extraKeys!3950 thiss!1504) (zeroValue!4054 thiss!1504) (minValue!4054 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4213 thiss!1504)) key!932))))

(declare-fun b!224877 () Bool)

(declare-fun res!110674 () Bool)

(assert (=> b!224877 (=> res!110674 e!145986)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11034 (_ BitVec 32)) Bool)

(assert (=> b!224877 (= res!110674 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6267 thiss!1504) (mask!10051 thiss!1504))))))

(declare-fun b!224878 () Bool)

(declare-fun res!110666 () Bool)

(assert (=> b!224878 (= res!110666 (= (select (arr!5236 (_keys!6267 thiss!1504)) (index!5661 lt!113335)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!224878 (=> (not res!110666) (not e!145989))))

(declare-fun b!224879 () Bool)

(declare-fun res!110665 () Bool)

(assert (=> b!224879 (=> (not res!110665) (not e!145979))))

(assert (=> b!224879 (= res!110665 call!20931)))

(assert (=> b!224879 (= e!145982 e!145979)))

(declare-fun b!224880 () Bool)

(assert (=> b!224880 (= e!145978 tp_is_empty!5895)))

(declare-fun b!224881 () Bool)

(assert (=> b!224881 (= e!145984 e!145989)))

(declare-fun res!110668 () Bool)

(assert (=> b!224881 (= res!110668 call!20931)))

(assert (=> b!224881 (=> (not res!110668) (not e!145989))))

(declare-fun b!224882 () Bool)

(declare-fun res!110662 () Bool)

(assert (=> b!224882 (=> res!110662 e!145986)))

(assert (=> b!224882 (= res!110662 (or (not (= (size!5569 (_keys!6267 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10051 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5569 (_keys!6267 thiss!1504)))))))

(assert (= (and start!21978 res!110672) b!224873))

(assert (= (and b!224873 res!110667) b!224868))

(assert (= (and b!224868 res!110663) b!224876))

(assert (= (and b!224876 c!37277) b!224864))

(assert (= (and b!224876 (not c!37277)) b!224867))

(assert (= (and b!224867 c!37275) b!224879))

(assert (= (and b!224867 (not c!37275)) b!224858))

(assert (= (and b!224879 res!110665) b!224859))

(assert (= (and b!224859 res!110671) b!224875))

(assert (= (and b!224858 c!37276) b!224881))

(assert (= (and b!224858 (not c!37276)) b!224865))

(assert (= (and b!224881 res!110668) b!224878))

(assert (= (and b!224878 res!110666) b!224866))

(assert (= (or b!224879 b!224881) bm!20928))

(assert (= (or b!224875 b!224866) bm!20929))

(assert (= (and b!224876 res!110664) b!224863))

(assert (= (and b!224863 c!37274) b!224869))

(assert (= (and b!224863 (not c!37274)) b!224871))

(assert (= (and b!224863 (not res!110673)) b!224882))

(assert (= (and b!224882 (not res!110662)) b!224861))

(assert (= (and b!224861 (not res!110669)) b!224862))

(assert (= (and b!224862 (not res!110670)) b!224877))

(assert (= (and b!224877 (not res!110674)) b!224874))

(assert (= (and b!224870 condMapEmpty!10012) mapIsEmpty!10012))

(assert (= (and b!224870 (not condMapEmpty!10012)) mapNonEmpty!10012))

(assert (= (and mapNonEmpty!10012 ((_ is ValueCellFull!2604) mapValue!10012)) b!224872))

(assert (= (and b!224870 ((_ is ValueCellFull!2604) mapDefault!10012)) b!224880))

(assert (= b!224860 b!224870))

(assert (= start!21978 b!224860))

(declare-fun m!247677 () Bool)

(assert (=> bm!20929 m!247677))

(declare-fun m!247679 () Bool)

(assert (=> b!224877 m!247679))

(declare-fun m!247681 () Bool)

(assert (=> b!224878 m!247681))

(declare-fun m!247683 () Bool)

(assert (=> b!224864 m!247683))

(declare-fun m!247685 () Bool)

(assert (=> bm!20928 m!247685))

(declare-fun m!247687 () Bool)

(assert (=> b!224860 m!247687))

(declare-fun m!247689 () Bool)

(assert (=> b!224860 m!247689))

(declare-fun m!247691 () Bool)

(assert (=> b!224868 m!247691))

(declare-fun m!247693 () Bool)

(assert (=> b!224876 m!247693))

(declare-fun m!247695 () Bool)

(assert (=> b!224876 m!247695))

(assert (=> b!224876 m!247695))

(declare-fun m!247697 () Bool)

(assert (=> b!224876 m!247697))

(declare-fun m!247699 () Bool)

(assert (=> mapNonEmpty!10012 m!247699))

(declare-fun m!247701 () Bool)

(assert (=> start!21978 m!247701))

(declare-fun m!247703 () Bool)

(assert (=> b!224861 m!247703))

(declare-fun m!247705 () Bool)

(assert (=> b!224874 m!247705))

(declare-fun m!247707 () Bool)

(assert (=> b!224869 m!247707))

(declare-fun m!247709 () Bool)

(assert (=> b!224867 m!247709))

(declare-fun m!247711 () Bool)

(assert (=> b!224863 m!247711))

(declare-fun m!247713 () Bool)

(assert (=> b!224863 m!247713))

(declare-fun m!247715 () Bool)

(assert (=> b!224863 m!247715))

(declare-fun m!247717 () Bool)

(assert (=> b!224863 m!247717))

(assert (=> b!224863 m!247677))

(declare-fun m!247719 () Bool)

(assert (=> b!224863 m!247719))

(declare-fun m!247721 () Bool)

(assert (=> b!224863 m!247721))

(declare-fun m!247723 () Bool)

(assert (=> b!224863 m!247723))

(declare-fun m!247725 () Bool)

(assert (=> b!224859 m!247725))

(check-sat (not b!224869) b_and!12949 (not bm!20928) (not bm!20929) (not start!21978) tp_is_empty!5895 (not b!224874) (not b!224864) (not b!224868) (not b!224861) (not b_next!6033) (not b!224876) (not b!224867) (not b!224863) (not b!224860) (not mapNonEmpty!10012) (not b!224877))
(check-sat b_and!12949 (not b_next!6033))
