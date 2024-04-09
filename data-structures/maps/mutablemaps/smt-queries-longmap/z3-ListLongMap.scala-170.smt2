; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3256 () Bool)

(assert start!3256)

(declare-fun b!19962 () Bool)

(declare-fun b_free!699 () Bool)

(declare-fun b_next!699 () Bool)

(assert (=> b!19962 (= b_free!699 (not b_next!699))))

(declare-fun tp!3318 () Bool)

(declare-fun b_and!1369 () Bool)

(assert (=> b!19962 (= tp!3318 b_and!1369)))

(declare-fun b!19958 () Bool)

(declare-fun e!12982 () Bool)

(declare-fun tp_is_empty!963 () Bool)

(assert (=> b!19958 (= e!12982 tp_is_empty!963)))

(declare-fun b!19959 () Bool)

(declare-fun e!12980 () Bool)

(declare-fun mapRes!910 () Bool)

(assert (=> b!19959 (= e!12980 (and e!12982 mapRes!910))))

(declare-fun condMapEmpty!910 () Bool)

(declare-datatypes ((V!1109 0))(
  ( (V!1110 (val!508 Int)) )
))
(declare-datatypes ((ValueCell!282 0))(
  ( (ValueCellFull!282 (v!1533 V!1109)) (EmptyCell!282) )
))
(declare-datatypes ((array!1139 0))(
  ( (array!1140 (arr!543 (Array (_ BitVec 32) ValueCell!282)) (size!636 (_ BitVec 32))) )
))
(declare-datatypes ((array!1141 0))(
  ( (array!1142 (arr!544 (Array (_ BitVec 32) (_ BitVec 64))) (size!637 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!150 0))(
  ( (LongMapFixedSize!151 (defaultEntry!1696 Int) (mask!4654 (_ BitVec 32)) (extraKeys!1604 (_ BitVec 32)) (zeroValue!1628 V!1109) (minValue!1628 V!1109) (_size!111 (_ BitVec 32)) (_keys!3122 array!1141) (_values!1690 array!1139) (_vacant!111 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!150 0))(
  ( (Cell!151 (v!1534 LongMapFixedSize!150)) )
))
(declare-datatypes ((LongMap!150 0))(
  ( (LongMap!151 (underlying!86 Cell!150)) )
))
(declare-fun thiss!938 () LongMap!150)

(declare-fun mapDefault!910 () ValueCell!282)

(assert (=> b!19959 (= condMapEmpty!910 (= (arr!543 (_values!1690 (v!1534 (underlying!86 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!282)) mapDefault!910)))))

(declare-fun b!19960 () Bool)

(declare-fun e!12981 () Bool)

(declare-fun e!12976 () Bool)

(assert (=> b!19960 (= e!12981 e!12976)))

(declare-fun res!13344 () Bool)

(assert (=> b!19960 (=> (not res!13344) (not e!12976))))

(assert (=> b!19960 (= res!13344 (and (= (bvand (extraKeys!1604 (v!1534 (underlying!86 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand (extraKeys!1604 (v!1534 (underlying!86 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!5687 () LongMapFixedSize!150)

(declare-fun getNewLongMapFixedSize!13 ((_ BitVec 32) Int) LongMapFixedSize!150)

(declare-fun computeNewMask!10 (LongMap!150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19960 (= lt!5687 (getNewLongMapFixedSize!13 (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) (defaultEntry!1696 (v!1534 (underlying!86 thiss!938)))))))

(declare-fun res!13343 () Bool)

(assert (=> start!3256 (=> (not res!13343) (not e!12981))))

(declare-fun valid!74 (LongMap!150) Bool)

(assert (=> start!3256 (= res!13343 (valid!74 thiss!938))))

(assert (=> start!3256 e!12981))

(declare-fun e!12979 () Bool)

(assert (=> start!3256 e!12979))

(declare-fun b!19961 () Bool)

(declare-fun valid!75 (LongMapFixedSize!150) Bool)

(assert (=> b!19961 (= e!12976 (not (valid!75 lt!5687)))))

(declare-fun e!12978 () Bool)

(declare-fun array_inv!383 (array!1141) Bool)

(declare-fun array_inv!384 (array!1139) Bool)

(assert (=> b!19962 (= e!12978 (and tp!3318 tp_is_empty!963 (array_inv!383 (_keys!3122 (v!1534 (underlying!86 thiss!938)))) (array_inv!384 (_values!1690 (v!1534 (underlying!86 thiss!938)))) e!12980))))

(declare-fun b!19963 () Bool)

(declare-fun e!12984 () Bool)

(assert (=> b!19963 (= e!12984 e!12978)))

(declare-fun b!19964 () Bool)

(declare-fun e!12983 () Bool)

(assert (=> b!19964 (= e!12983 tp_is_empty!963)))

(declare-fun mapNonEmpty!910 () Bool)

(declare-fun tp!3319 () Bool)

(assert (=> mapNonEmpty!910 (= mapRes!910 (and tp!3319 e!12983))))

(declare-fun mapValue!910 () ValueCell!282)

(declare-fun mapKey!910 () (_ BitVec 32))

(declare-fun mapRest!910 () (Array (_ BitVec 32) ValueCell!282))

(assert (=> mapNonEmpty!910 (= (arr!543 (_values!1690 (v!1534 (underlying!86 thiss!938)))) (store mapRest!910 mapKey!910 mapValue!910))))

(declare-fun b!19965 () Bool)

(assert (=> b!19965 (= e!12979 e!12984)))

(declare-fun mapIsEmpty!910 () Bool)

(assert (=> mapIsEmpty!910 mapRes!910))

(assert (= (and start!3256 res!13343) b!19960))

(assert (= (and b!19960 res!13344) b!19961))

(assert (= (and b!19959 condMapEmpty!910) mapIsEmpty!910))

(assert (= (and b!19959 (not condMapEmpty!910)) mapNonEmpty!910))

(get-info :version)

(assert (= (and mapNonEmpty!910 ((_ is ValueCellFull!282) mapValue!910)) b!19964))

(assert (= (and b!19959 ((_ is ValueCellFull!282) mapDefault!910)) b!19958))

(assert (= b!19962 b!19959))

(assert (= b!19963 b!19962))

(assert (= b!19965 b!19963))

(assert (= start!3256 b!19965))

(declare-fun m!14017 () Bool)

(assert (=> b!19961 m!14017))

(declare-fun m!14019 () Bool)

(assert (=> b!19962 m!14019))

(declare-fun m!14021 () Bool)

(assert (=> b!19962 m!14021))

(declare-fun m!14023 () Bool)

(assert (=> mapNonEmpty!910 m!14023))

(declare-fun m!14025 () Bool)

(assert (=> b!19960 m!14025))

(assert (=> b!19960 m!14025))

(declare-fun m!14027 () Bool)

(assert (=> b!19960 m!14027))

(declare-fun m!14029 () Bool)

(assert (=> start!3256 m!14029))

(check-sat b_and!1369 (not b!19962) (not b_next!699) (not b!19960) (not b!19961) (not start!3256) (not mapNonEmpty!910) tp_is_empty!963)
(check-sat b_and!1369 (not b_next!699))
(get-model)

(declare-fun d!3651 () Bool)

(assert (=> d!3651 (= (array_inv!383 (_keys!3122 (v!1534 (underlying!86 thiss!938)))) (bvsge (size!637 (_keys!3122 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19962 d!3651))

(declare-fun d!3653 () Bool)

(assert (=> d!3653 (= (array_inv!384 (_values!1690 (v!1534 (underlying!86 thiss!938)))) (bvsge (size!636 (_values!1690 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19962 d!3653))

(declare-fun d!3655 () Bool)

(declare-fun res!13357 () Bool)

(declare-fun e!13014 () Bool)

(assert (=> d!3655 (=> (not res!13357) (not e!13014))))

(declare-fun simpleValid!14 (LongMapFixedSize!150) Bool)

(assert (=> d!3655 (= res!13357 (simpleValid!14 lt!5687))))

(assert (=> d!3655 (= (valid!75 lt!5687) e!13014)))

(declare-fun b!19996 () Bool)

(declare-fun res!13358 () Bool)

(assert (=> b!19996 (=> (not res!13358) (not e!13014))))

(declare-fun arrayCountValidKeys!0 (array!1141 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19996 (= res!13358 (= (arrayCountValidKeys!0 (_keys!3122 lt!5687) #b00000000000000000000000000000000 (size!637 (_keys!3122 lt!5687))) (_size!111 lt!5687)))))

(declare-fun b!19997 () Bool)

(declare-fun res!13359 () Bool)

(assert (=> b!19997 (=> (not res!13359) (not e!13014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1141 (_ BitVec 32)) Bool)

(assert (=> b!19997 (= res!13359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3122 lt!5687) (mask!4654 lt!5687)))))

(declare-fun b!19998 () Bool)

(declare-datatypes ((List!547 0))(
  ( (Nil!544) (Cons!543 (h!1109 (_ BitVec 64)) (t!3198 List!547)) )
))
(declare-fun arrayNoDuplicates!0 (array!1141 (_ BitVec 32) List!547) Bool)

(assert (=> b!19998 (= e!13014 (arrayNoDuplicates!0 (_keys!3122 lt!5687) #b00000000000000000000000000000000 Nil!544))))

(assert (= (and d!3655 res!13357) b!19996))

(assert (= (and b!19996 res!13358) b!19997))

(assert (= (and b!19997 res!13359) b!19998))

(declare-fun m!14045 () Bool)

(assert (=> d!3655 m!14045))

(declare-fun m!14047 () Bool)

(assert (=> b!19996 m!14047))

(declare-fun m!14049 () Bool)

(assert (=> b!19997 m!14049))

(declare-fun m!14051 () Bool)

(assert (=> b!19998 m!14051))

(assert (=> b!19961 d!3655))

(declare-fun d!3657 () Bool)

(assert (=> d!3657 (= (valid!74 thiss!938) (valid!75 (v!1534 (underlying!86 thiss!938))))))

(declare-fun bs!885 () Bool)

(assert (= bs!885 d!3657))

(declare-fun m!14053 () Bool)

(assert (=> bs!885 m!14053))

(assert (=> start!3256 d!3657))

(declare-fun b!20011 () Bool)

(declare-fun res!13365 () Bool)

(declare-fun e!13021 () Bool)

(assert (=> b!20011 (=> (not res!13365) (not e!13021))))

(declare-fun lt!5747 () LongMapFixedSize!150)

(assert (=> b!20011 (= res!13365 (= (mask!4654 lt!5747) (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938))))))))

(declare-fun b!20012 () Bool)

(declare-datatypes ((Unit!407 0))(
  ( (Unit!408) )
))
(declare-fun e!13022 () Unit!407)

(declare-fun Unit!409 () Unit!407)

(assert (=> b!20012 (= e!13022 Unit!409)))

(declare-datatypes ((tuple2!818 0))(
  ( (tuple2!819 (_1!412 (_ BitVec 64)) (_2!412 V!1109)) )
))
(declare-fun lt!5749 () tuple2!818)

(declare-fun lt!5758 () LongMapFixedSize!150)

(declare-datatypes ((List!548 0))(
  ( (Nil!545) (Cons!544 (h!1110 tuple2!818) (t!3199 List!548)) )
))
(declare-fun head!822 (List!548) tuple2!818)

(declare-datatypes ((ListLongMap!533 0))(
  ( (ListLongMap!534 (toList!282 List!548)) )
))
(declare-fun map!380 (LongMapFixedSize!150) ListLongMap!533)

(assert (=> b!20012 (= lt!5749 (head!822 (toList!282 (map!380 lt!5758))))))

(declare-fun lt!5748 () array!1141)

(assert (=> b!20012 (= lt!5748 (array!1142 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5753 () (_ BitVec 32))

(assert (=> b!20012 (= lt!5753 #b00000000000000000000000000000000)))

(declare-fun lt!5754 () Unit!407)

(declare-fun lemmaKeyInListMapIsInArray!85 (array!1141 array!1139 (_ BitVec 32) (_ BitVec 32) V!1109 V!1109 (_ BitVec 64) Int) Unit!407)

(declare-fun dynLambda!136 (Int (_ BitVec 64)) V!1109)

(assert (=> b!20012 (= lt!5754 (lemmaKeyInListMapIsInArray!85 lt!5748 (array!1140 ((as const (Array (_ BitVec 32) ValueCell!282)) EmptyCell!282) (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) lt!5753 (dynLambda!136 (defaultEntry!1696 (v!1534 (underlying!86 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!136 (defaultEntry!1696 (v!1534 (underlying!86 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!412 lt!5749) (defaultEntry!1696 (v!1534 (underlying!86 thiss!938)))))))

(declare-fun c!2153 () Bool)

(assert (=> b!20012 (= c!2153 (and (not (= (_1!412 lt!5749) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!412 lt!5749) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!13023 () Bool)

(assert (=> b!20012 e!13023))

(declare-fun lt!5740 () Unit!407)

(assert (=> b!20012 (= lt!5740 lt!5754)))

(declare-fun lt!5751 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1141 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20012 (= lt!5751 (arrayScanForKey!0 (array!1142 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001)) (_1!412 lt!5749) #b00000000000000000000000000000000))))

(assert (=> b!20012 false))

(declare-fun b!20013 () Bool)

(declare-fun arrayContainsKey!0 (array!1141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!20013 (= e!13023 (arrayContainsKey!0 lt!5748 (_1!412 lt!5749) #b00000000000000000000000000000000))))

(declare-fun d!3659 () Bool)

(assert (=> d!3659 e!13021))

(declare-fun res!13364 () Bool)

(assert (=> d!3659 (=> (not res!13364) (not e!13021))))

(assert (=> d!3659 (= res!13364 (valid!75 lt!5747))))

(assert (=> d!3659 (= lt!5747 lt!5758)))

(declare-fun lt!5739 () Unit!407)

(assert (=> d!3659 (= lt!5739 e!13022)))

(declare-fun c!2154 () Bool)

(assert (=> d!3659 (= c!2154 (not (= (map!380 lt!5758) (ListLongMap!534 Nil!545))))))

(declare-fun lt!5738 () Unit!407)

(declare-fun lt!5752 () Unit!407)

(assert (=> d!3659 (= lt!5738 lt!5752)))

(declare-fun lt!5750 () array!1141)

(declare-fun lt!5737 () (_ BitVec 32))

(declare-fun lt!5755 () List!547)

(assert (=> d!3659 (arrayNoDuplicates!0 lt!5750 lt!5737 lt!5755)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1141 (_ BitVec 32) (_ BitVec 32) List!547) Unit!407)

(assert (=> d!3659 (= lt!5752 (lemmaArrayNoDuplicatesInAll0Array!0 lt!5750 lt!5737 (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001) lt!5755))))

(assert (=> d!3659 (= lt!5755 Nil!544)))

(assert (=> d!3659 (= lt!5737 #b00000000000000000000000000000000)))

(assert (=> d!3659 (= lt!5750 (array!1142 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5741 () Unit!407)

(declare-fun lt!5742 () Unit!407)

(assert (=> d!3659 (= lt!5741 lt!5742)))

(declare-fun lt!5745 () (_ BitVec 32))

(declare-fun lt!5759 () array!1141)

(assert (=> d!3659 (arrayForallSeekEntryOrOpenFound!0 lt!5745 lt!5759 (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1141 (_ BitVec 32) (_ BitVec 32)) Unit!407)

(assert (=> d!3659 (= lt!5742 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!5759 (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) lt!5745))))

(assert (=> d!3659 (= lt!5745 #b00000000000000000000000000000000)))

(assert (=> d!3659 (= lt!5759 (array!1142 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5743 () Unit!407)

(declare-fun lt!5757 () Unit!407)

(assert (=> d!3659 (= lt!5743 lt!5757)))

(declare-fun lt!5744 () array!1141)

(declare-fun lt!5746 () (_ BitVec 32))

(declare-fun lt!5756 () (_ BitVec 32))

(assert (=> d!3659 (= (arrayCountValidKeys!0 lt!5744 lt!5746 lt!5756) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1141 (_ BitVec 32) (_ BitVec 32)) Unit!407)

(assert (=> d!3659 (= lt!5757 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!5744 lt!5746 lt!5756))))

(assert (=> d!3659 (= lt!5756 (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3659 (= lt!5746 #b00000000000000000000000000000000)))

(assert (=> d!3659 (= lt!5744 (array!1142 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!3659 (= lt!5758 (LongMapFixedSize!151 (defaultEntry!1696 (v!1534 (underlying!86 thiss!938))) (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!136 (defaultEntry!1696 (v!1534 (underlying!86 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!136 (defaultEntry!1696 (v!1534 (underlying!86 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1142 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001)) (array!1140 ((as const (Array (_ BitVec 32) ValueCell!282)) EmptyCell!282) (bvadd (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3659 (validMask!0 (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))))))

(assert (=> d!3659 (= (getNewLongMapFixedSize!13 (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) (defaultEntry!1696 (v!1534 (underlying!86 thiss!938)))) lt!5747)))

(declare-fun b!20014 () Bool)

(declare-fun Unit!410 () Unit!407)

(assert (=> b!20014 (= e!13022 Unit!410)))

(declare-fun b!20015 () Bool)

(assert (=> b!20015 (= e!13021 (= (map!380 lt!5747) (ListLongMap!534 Nil!545)))))

(declare-fun b!20016 () Bool)

(assert (=> b!20016 (= e!13023 (ite (= (_1!412 lt!5749) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!5753 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!5753 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!3659 c!2154) b!20012))

(assert (= (and d!3659 (not c!2154)) b!20014))

(assert (= (and b!20012 c!2153) b!20013))

(assert (= (and b!20012 (not c!2153)) b!20016))

(assert (= (and d!3659 res!13364) b!20011))

(assert (= (and b!20011 res!13365) b!20015))

(declare-fun b_lambda!1485 () Bool)

(assert (=> (not b_lambda!1485) (not b!20012)))

(declare-fun t!3197 () Bool)

(declare-fun tb!637 () Bool)

(assert (=> (and b!19962 (= (defaultEntry!1696 (v!1534 (underlying!86 thiss!938))) (defaultEntry!1696 (v!1534 (underlying!86 thiss!938)))) t!3197) tb!637))

(declare-fun result!1041 () Bool)

(assert (=> tb!637 (= result!1041 tp_is_empty!963)))

(assert (=> b!20012 t!3197))

(declare-fun b_and!1373 () Bool)

(assert (= b_and!1369 (and (=> t!3197 result!1041) b_and!1373)))

(declare-fun b_lambda!1487 () Bool)

(assert (=> (not b_lambda!1487) (not d!3659)))

(assert (=> d!3659 t!3197))

(declare-fun b_and!1375 () Bool)

(assert (= b_and!1373 (and (=> t!3197 result!1041) b_and!1375)))

(declare-fun m!14055 () Bool)

(assert (=> b!20012 m!14055))

(assert (=> b!20012 m!14025))

(declare-fun m!14057 () Bool)

(assert (=> b!20012 m!14057))

(assert (=> b!20012 m!14057))

(declare-fun m!14059 () Bool)

(assert (=> b!20012 m!14059))

(declare-fun m!14061 () Bool)

(assert (=> b!20012 m!14061))

(assert (=> b!20012 m!14057))

(declare-fun m!14063 () Bool)

(assert (=> b!20012 m!14063))

(declare-fun m!14065 () Bool)

(assert (=> b!20013 m!14065))

(declare-fun m!14067 () Bool)

(assert (=> d!3659 m!14067))

(assert (=> d!3659 m!14025))

(declare-fun m!14069 () Bool)

(assert (=> d!3659 m!14069))

(declare-fun m!14071 () Bool)

(assert (=> d!3659 m!14071))

(declare-fun m!14073 () Bool)

(assert (=> d!3659 m!14073))

(declare-fun m!14075 () Bool)

(assert (=> d!3659 m!14075))

(assert (=> d!3659 m!14025))

(declare-fun m!14077 () Bool)

(assert (=> d!3659 m!14077))

(assert (=> d!3659 m!14025))

(declare-fun m!14079 () Bool)

(assert (=> d!3659 m!14079))

(declare-fun m!14081 () Bool)

(assert (=> d!3659 m!14081))

(assert (=> d!3659 m!14057))

(assert (=> d!3659 m!14063))

(declare-fun m!14083 () Bool)

(assert (=> b!20015 m!14083))

(assert (=> b!19960 d!3659))

(declare-fun d!3661 () Bool)

(declare-fun e!13029 () Bool)

(assert (=> d!3661 e!13029))

(declare-fun res!13368 () Bool)

(assert (=> d!3661 (=> (not res!13368) (not e!13029))))

(declare-fun lt!5764 () (_ BitVec 32))

(assert (=> d!3661 (= res!13368 (validMask!0 lt!5764))))

(declare-datatypes ((tuple2!820 0))(
  ( (tuple2!821 (_1!413 Unit!407) (_2!413 (_ BitVec 32))) )
))
(declare-fun e!13028 () tuple2!820)

(assert (=> d!3661 (= lt!5764 (_2!413 e!13028))))

(declare-fun c!2157 () Bool)

(declare-fun lt!5765 () tuple2!820)

(assert (=> d!3661 (= c!2157 (and (bvsgt (_2!413 lt!5765) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!111 (v!1534 (underlying!86 thiss!938)))) (_2!413 lt!5765)) (bvsge (bvadd (bvand (bvashr (_2!413 lt!5765) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!111 (v!1534 (underlying!86 thiss!938))))))))

(declare-fun Unit!411 () Unit!407)

(declare-fun Unit!412 () Unit!407)

(assert (=> d!3661 (= lt!5765 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!111 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))))) (mask!4654 (v!1534 (underlying!86 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!111 (v!1534 (underlying!86 thiss!938)))) (mask!4654 (v!1534 (underlying!86 thiss!938))))) (tuple2!821 Unit!411 (bvand (bvadd (bvshl (mask!4654 (v!1534 (underlying!86 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!821 Unit!412 (mask!4654 (v!1534 (underlying!86 thiss!938))))))))

(assert (=> d!3661 (validMask!0 (mask!4654 (v!1534 (underlying!86 thiss!938))))))

(assert (=> d!3661 (= (computeNewMask!10 thiss!938 (mask!4654 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (_size!111 (v!1534 (underlying!86 thiss!938)))) lt!5764)))

(declare-fun b!20025 () Bool)

(declare-fun computeNewMaskWhile!6 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!820)

(assert (=> b!20025 (= e!13028 (computeNewMaskWhile!6 (_size!111 (v!1534 (underlying!86 thiss!938))) (_vacant!111 (v!1534 (underlying!86 thiss!938))) (mask!4654 (v!1534 (underlying!86 thiss!938))) (_2!413 lt!5765)))))

(declare-fun b!20026 () Bool)

(declare-fun Unit!413 () Unit!407)

(assert (=> b!20026 (= e!13028 (tuple2!821 Unit!413 (_2!413 lt!5765)))))

(declare-fun b!20027 () Bool)

(assert (=> b!20027 (= e!13029 (bvsle (_size!111 (v!1534 (underlying!86 thiss!938))) (bvadd lt!5764 #b00000000000000000000000000000001)))))

(assert (= (and d!3661 c!2157) b!20025))

(assert (= (and d!3661 (not c!2157)) b!20026))

(assert (= (and d!3661 res!13368) b!20027))

(declare-fun m!14085 () Bool)

(assert (=> d!3661 m!14085))

(declare-fun m!14087 () Bool)

(assert (=> d!3661 m!14087))

(declare-fun m!14089 () Bool)

(assert (=> b!20025 m!14089))

(assert (=> b!19960 d!3661))

(declare-fun b!20035 () Bool)

(declare-fun e!13034 () Bool)

(assert (=> b!20035 (= e!13034 tp_is_empty!963)))

(declare-fun b!20034 () Bool)

(declare-fun e!13035 () Bool)

(assert (=> b!20034 (= e!13035 tp_is_empty!963)))

(declare-fun condMapEmpty!916 () Bool)

(declare-fun mapDefault!916 () ValueCell!282)

(assert (=> mapNonEmpty!910 (= condMapEmpty!916 (= mapRest!910 ((as const (Array (_ BitVec 32) ValueCell!282)) mapDefault!916)))))

(declare-fun mapRes!916 () Bool)

(assert (=> mapNonEmpty!910 (= tp!3319 (and e!13034 mapRes!916))))

(declare-fun mapNonEmpty!916 () Bool)

(declare-fun tp!3328 () Bool)

(assert (=> mapNonEmpty!916 (= mapRes!916 (and tp!3328 e!13035))))

(declare-fun mapValue!916 () ValueCell!282)

(declare-fun mapKey!916 () (_ BitVec 32))

(declare-fun mapRest!916 () (Array (_ BitVec 32) ValueCell!282))

(assert (=> mapNonEmpty!916 (= mapRest!910 (store mapRest!916 mapKey!916 mapValue!916))))

(declare-fun mapIsEmpty!916 () Bool)

(assert (=> mapIsEmpty!916 mapRes!916))

(assert (= (and mapNonEmpty!910 condMapEmpty!916) mapIsEmpty!916))

(assert (= (and mapNonEmpty!910 (not condMapEmpty!916)) mapNonEmpty!916))

(assert (= (and mapNonEmpty!916 ((_ is ValueCellFull!282) mapValue!916)) b!20034))

(assert (= (and mapNonEmpty!910 ((_ is ValueCellFull!282) mapDefault!916)) b!20035))

(declare-fun m!14091 () Bool)

(assert (=> mapNonEmpty!916 m!14091))

(declare-fun b_lambda!1489 () Bool)

(assert (= b_lambda!1487 (or (and b!19962 b_free!699) b_lambda!1489)))

(declare-fun b_lambda!1491 () Bool)

(assert (= b_lambda!1485 (or (and b!19962 b_free!699) b_lambda!1491)))

(check-sat (not b!19997) (not d!3655) (not b_next!699) (not d!3659) (not b!20025) (not b!20015) (not b!20012) (not d!3657) (not d!3661) (not b!20013) (not b!19998) tp_is_empty!963 (not mapNonEmpty!916) (not b!19996) b_and!1375 (not b_lambda!1489) (not b_lambda!1491))
(check-sat b_and!1375 (not b_next!699))
