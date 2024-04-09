; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16784 () Bool)

(assert start!16784)

(declare-fun b!168740 () Bool)

(declare-fun b_free!4077 () Bool)

(declare-fun b_next!4077 () Bool)

(assert (=> b!168740 (= b_free!4077 (not b_next!4077))))

(declare-fun tp!14831 () Bool)

(declare-fun b_and!10509 () Bool)

(assert (=> b!168740 (= tp!14831 b_and!10509)))

(declare-fun b!168732 () Bool)

(declare-fun e!111001 () Bool)

(assert (=> b!168732 (= e!111001 true)))

(declare-fun lt!84513 () Bool)

(declare-datatypes ((V!4819 0))(
  ( (V!4820 (val!1984 Int)) )
))
(declare-datatypes ((ValueCell!1596 0))(
  ( (ValueCellFull!1596 (v!3845 V!4819)) (EmptyCell!1596) )
))
(declare-datatypes ((array!6854 0))(
  ( (array!6855 (arr!3262 (Array (_ BitVec 32) (_ BitVec 64))) (size!3550 (_ BitVec 32))) )
))
(declare-datatypes ((array!6856 0))(
  ( (array!6857 (arr!3263 (Array (_ BitVec 32) ValueCell!1596)) (size!3551 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2100 0))(
  ( (LongMapFixedSize!2101 (defaultEntry!3492 Int) (mask!8263 (_ BitVec 32)) (extraKeys!3233 (_ BitVec 32)) (zeroValue!3335 V!4819) (minValue!3335 V!4819) (_size!1099 (_ BitVec 32)) (_keys!5317 array!6854) (_values!3475 array!6856) (_vacant!1099 (_ BitVec 32))) )
))
(declare-fun lt!84518 () LongMapFixedSize!2100)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3176 0))(
  ( (tuple2!3177 (_1!1598 (_ BitVec 64)) (_2!1598 V!4819)) )
))
(declare-datatypes ((List!2191 0))(
  ( (Nil!2188) (Cons!2187 (h!2804 tuple2!3176) (t!7001 List!2191)) )
))
(declare-datatypes ((ListLongMap!2145 0))(
  ( (ListLongMap!2146 (toList!1088 List!2191)) )
))
(declare-fun contains!1124 (ListLongMap!2145 (_ BitVec 64)) Bool)

(declare-fun map!1800 (LongMapFixedSize!2100) ListLongMap!2145)

(assert (=> b!168732 (= lt!84513 (contains!1124 (map!1800 lt!84518) key!828))))

(declare-fun b!168733 () Bool)

(declare-fun e!111000 () Bool)

(assert (=> b!168733 (= e!111000 (not e!111001))))

(declare-fun res!80340 () Bool)

(assert (=> b!168733 (=> res!80340 e!111001)))

(declare-fun valid!901 (LongMapFixedSize!2100) Bool)

(assert (=> b!168733 (= res!80340 (not (valid!901 lt!84518)))))

(declare-fun lt!84514 () ListLongMap!2145)

(declare-fun thiss!1248 () LongMapFixedSize!2100)

(declare-datatypes ((SeekEntryResult!519 0))(
  ( (MissingZero!519 (index!4244 (_ BitVec 32))) (Found!519 (index!4245 (_ BitVec 32))) (Intermediate!519 (undefined!1331 Bool) (index!4246 (_ BitVec 32)) (x!18659 (_ BitVec 32))) (Undefined!519) (MissingVacant!519 (index!4247 (_ BitVec 32))) )
))
(declare-fun lt!84515 () SeekEntryResult!519)

(assert (=> b!168733 (contains!1124 lt!84514 (select (arr!3262 (_keys!5317 thiss!1248)) (index!4245 lt!84515)))))

(declare-fun lt!84519 () array!6856)

(declare-datatypes ((Unit!5204 0))(
  ( (Unit!5205) )
))
(declare-fun lt!84516 () Unit!5204)

(declare-fun lemmaValidKeyInArrayIsInListMap!133 (array!6854 array!6856 (_ BitVec 32) (_ BitVec 32) V!4819 V!4819 (_ BitVec 32) Int) Unit!5204)

(assert (=> b!168733 (= lt!84516 (lemmaValidKeyInArrayIsInListMap!133 (_keys!5317 thiss!1248) lt!84519 (mask!8263 thiss!1248) (extraKeys!3233 thiss!1248) (zeroValue!3335 thiss!1248) (minValue!3335 thiss!1248) (index!4245 lt!84515) (defaultEntry!3492 thiss!1248)))))

(assert (=> b!168733 (= lt!84518 (LongMapFixedSize!2101 (defaultEntry!3492 thiss!1248) (mask!8263 thiss!1248) (extraKeys!3233 thiss!1248) (zeroValue!3335 thiss!1248) (minValue!3335 thiss!1248) (_size!1099 thiss!1248) (_keys!5317 thiss!1248) lt!84519 (_vacant!1099 thiss!1248)))))

(declare-fun lt!84510 () ListLongMap!2145)

(assert (=> b!168733 (= lt!84510 lt!84514)))

(declare-fun getCurrentListMap!741 (array!6854 array!6856 (_ BitVec 32) (_ BitVec 32) V!4819 V!4819 (_ BitVec 32) Int) ListLongMap!2145)

(assert (=> b!168733 (= lt!84514 (getCurrentListMap!741 (_keys!5317 thiss!1248) lt!84519 (mask!8263 thiss!1248) (extraKeys!3233 thiss!1248) (zeroValue!3335 thiss!1248) (minValue!3335 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3492 thiss!1248)))))

(declare-fun lt!84517 () ListLongMap!2145)

(declare-fun v!309 () V!4819)

(declare-fun +!230 (ListLongMap!2145 tuple2!3176) ListLongMap!2145)

(assert (=> b!168733 (= lt!84510 (+!230 lt!84517 (tuple2!3177 key!828 v!309)))))

(assert (=> b!168733 (= lt!84519 (array!6857 (store (arr!3263 (_values!3475 thiss!1248)) (index!4245 lt!84515) (ValueCellFull!1596 v!309)) (size!3551 (_values!3475 thiss!1248))))))

(declare-fun lt!84521 () Unit!5204)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!90 (array!6854 array!6856 (_ BitVec 32) (_ BitVec 32) V!4819 V!4819 (_ BitVec 32) (_ BitVec 64) V!4819 Int) Unit!5204)

(assert (=> b!168733 (= lt!84521 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!90 (_keys!5317 thiss!1248) (_values!3475 thiss!1248) (mask!8263 thiss!1248) (extraKeys!3233 thiss!1248) (zeroValue!3335 thiss!1248) (minValue!3335 thiss!1248) (index!4245 lt!84515) key!828 v!309 (defaultEntry!3492 thiss!1248)))))

(declare-fun lt!84512 () Unit!5204)

(declare-fun e!110993 () Unit!5204)

(assert (=> b!168733 (= lt!84512 e!110993)))

(declare-fun c!30378 () Bool)

(assert (=> b!168733 (= c!30378 (contains!1124 lt!84517 key!828))))

(assert (=> b!168733 (= lt!84517 (getCurrentListMap!741 (_keys!5317 thiss!1248) (_values!3475 thiss!1248) (mask!8263 thiss!1248) (extraKeys!3233 thiss!1248) (zeroValue!3335 thiss!1248) (minValue!3335 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3492 thiss!1248)))))

(declare-fun b!168734 () Bool)

(declare-fun Unit!5206 () Unit!5204)

(assert (=> b!168734 (= e!110993 Unit!5206)))

(declare-fun lt!84511 () Unit!5204)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!128 (array!6854 array!6856 (_ BitVec 32) (_ BitVec 32) V!4819 V!4819 (_ BitVec 64) Int) Unit!5204)

(assert (=> b!168734 (= lt!84511 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!128 (_keys!5317 thiss!1248) (_values!3475 thiss!1248) (mask!8263 thiss!1248) (extraKeys!3233 thiss!1248) (zeroValue!3335 thiss!1248) (minValue!3335 thiss!1248) key!828 (defaultEntry!3492 thiss!1248)))))

(assert (=> b!168734 false))

(declare-fun mapIsEmpty!6537 () Bool)

(declare-fun mapRes!6537 () Bool)

(assert (=> mapIsEmpty!6537 mapRes!6537))

(declare-fun b!168735 () Bool)

(declare-fun lt!84520 () Unit!5204)

(assert (=> b!168735 (= e!110993 lt!84520)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!130 (array!6854 array!6856 (_ BitVec 32) (_ BitVec 32) V!4819 V!4819 (_ BitVec 64) Int) Unit!5204)

(assert (=> b!168735 (= lt!84520 (lemmaInListMapThenSeekEntryOrOpenFindsIt!130 (_keys!5317 thiss!1248) (_values!3475 thiss!1248) (mask!8263 thiss!1248) (extraKeys!3233 thiss!1248) (zeroValue!3335 thiss!1248) (minValue!3335 thiss!1248) key!828 (defaultEntry!3492 thiss!1248)))))

(declare-fun res!80339 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168735 (= res!80339 (inRange!0 (index!4245 lt!84515) (mask!8263 thiss!1248)))))

(declare-fun e!110994 () Bool)

(assert (=> b!168735 (=> (not res!80339) (not e!110994))))

(assert (=> b!168735 e!110994))

(declare-fun b!168736 () Bool)

(declare-fun e!110997 () Bool)

(declare-fun tp_is_empty!3879 () Bool)

(assert (=> b!168736 (= e!110997 tp_is_empty!3879)))

(declare-fun b!168737 () Bool)

(assert (=> b!168737 (= e!110994 (= (select (arr!3262 (_keys!5317 thiss!1248)) (index!4245 lt!84515)) key!828))))

(declare-fun res!80338 () Bool)

(declare-fun e!110999 () Bool)

(assert (=> start!16784 (=> (not res!80338) (not e!110999))))

(assert (=> start!16784 (= res!80338 (valid!901 thiss!1248))))

(assert (=> start!16784 e!110999))

(declare-fun e!110996 () Bool)

(assert (=> start!16784 e!110996))

(assert (=> start!16784 true))

(assert (=> start!16784 tp_is_empty!3879))

(declare-fun b!168738 () Bool)

(declare-fun res!80336 () Bool)

(assert (=> b!168738 (=> (not res!80336) (not e!110999))))

(assert (=> b!168738 (= res!80336 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168739 () Bool)

(declare-fun e!110995 () Bool)

(assert (=> b!168739 (= e!110995 tp_is_empty!3879)))

(declare-fun e!110992 () Bool)

(declare-fun array_inv!2091 (array!6854) Bool)

(declare-fun array_inv!2092 (array!6856) Bool)

(assert (=> b!168740 (= e!110996 (and tp!14831 tp_is_empty!3879 (array_inv!2091 (_keys!5317 thiss!1248)) (array_inv!2092 (_values!3475 thiss!1248)) e!110992))))

(declare-fun b!168741 () Bool)

(assert (=> b!168741 (= e!110999 e!111000)))

(declare-fun res!80337 () Bool)

(assert (=> b!168741 (=> (not res!80337) (not e!111000))))

(get-info :version)

(assert (=> b!168741 (= res!80337 (and (not ((_ is Undefined!519) lt!84515)) (not ((_ is MissingVacant!519) lt!84515)) (not ((_ is MissingZero!519) lt!84515)) ((_ is Found!519) lt!84515)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6854 (_ BitVec 32)) SeekEntryResult!519)

(assert (=> b!168741 (= lt!84515 (seekEntryOrOpen!0 key!828 (_keys!5317 thiss!1248) (mask!8263 thiss!1248)))))

(declare-fun mapNonEmpty!6537 () Bool)

(declare-fun tp!14832 () Bool)

(assert (=> mapNonEmpty!6537 (= mapRes!6537 (and tp!14832 e!110995))))

(declare-fun mapKey!6537 () (_ BitVec 32))

(declare-fun mapValue!6537 () ValueCell!1596)

(declare-fun mapRest!6537 () (Array (_ BitVec 32) ValueCell!1596))

(assert (=> mapNonEmpty!6537 (= (arr!3263 (_values!3475 thiss!1248)) (store mapRest!6537 mapKey!6537 mapValue!6537))))

(declare-fun b!168742 () Bool)

(assert (=> b!168742 (= e!110992 (and e!110997 mapRes!6537))))

(declare-fun condMapEmpty!6537 () Bool)

(declare-fun mapDefault!6537 () ValueCell!1596)

(assert (=> b!168742 (= condMapEmpty!6537 (= (arr!3263 (_values!3475 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1596)) mapDefault!6537)))))

(assert (= (and start!16784 res!80338) b!168738))

(assert (= (and b!168738 res!80336) b!168741))

(assert (= (and b!168741 res!80337) b!168733))

(assert (= (and b!168733 c!30378) b!168735))

(assert (= (and b!168733 (not c!30378)) b!168734))

(assert (= (and b!168735 res!80339) b!168737))

(assert (= (and b!168733 (not res!80340)) b!168732))

(assert (= (and b!168742 condMapEmpty!6537) mapIsEmpty!6537))

(assert (= (and b!168742 (not condMapEmpty!6537)) mapNonEmpty!6537))

(assert (= (and mapNonEmpty!6537 ((_ is ValueCellFull!1596) mapValue!6537)) b!168739))

(assert (= (and b!168742 ((_ is ValueCellFull!1596) mapDefault!6537)) b!168736))

(assert (= b!168740 b!168742))

(assert (= start!16784 b!168740))

(declare-fun m!197841 () Bool)

(assert (=> start!16784 m!197841))

(declare-fun m!197843 () Bool)

(assert (=> b!168741 m!197843))

(declare-fun m!197845 () Bool)

(assert (=> b!168733 m!197845))

(declare-fun m!197847 () Bool)

(assert (=> b!168733 m!197847))

(declare-fun m!197849 () Bool)

(assert (=> b!168733 m!197849))

(declare-fun m!197851 () Bool)

(assert (=> b!168733 m!197851))

(declare-fun m!197853 () Bool)

(assert (=> b!168733 m!197853))

(declare-fun m!197855 () Bool)

(assert (=> b!168733 m!197855))

(declare-fun m!197857 () Bool)

(assert (=> b!168733 m!197857))

(assert (=> b!168733 m!197845))

(declare-fun m!197859 () Bool)

(assert (=> b!168733 m!197859))

(declare-fun m!197861 () Bool)

(assert (=> b!168733 m!197861))

(declare-fun m!197863 () Bool)

(assert (=> b!168733 m!197863))

(declare-fun m!197865 () Bool)

(assert (=> b!168734 m!197865))

(declare-fun m!197867 () Bool)

(assert (=> b!168735 m!197867))

(declare-fun m!197869 () Bool)

(assert (=> b!168735 m!197869))

(declare-fun m!197871 () Bool)

(assert (=> mapNonEmpty!6537 m!197871))

(declare-fun m!197873 () Bool)

(assert (=> b!168732 m!197873))

(assert (=> b!168732 m!197873))

(declare-fun m!197875 () Bool)

(assert (=> b!168732 m!197875))

(assert (=> b!168737 m!197845))

(declare-fun m!197877 () Bool)

(assert (=> b!168740 m!197877))

(declare-fun m!197879 () Bool)

(assert (=> b!168740 m!197879))

(check-sat (not b!168732) (not b!168735) tp_is_empty!3879 (not mapNonEmpty!6537) (not b!168741) (not b!168740) (not b!168733) (not start!16784) (not b_next!4077) b_and!10509 (not b!168734))
(check-sat b_and!10509 (not b_next!4077))
