; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75816 () Bool)

(assert start!75816)

(declare-fun b!891264 () Bool)

(declare-fun b_free!15759 () Bool)

(declare-fun b_next!15759 () Bool)

(assert (=> b!891264 (= b_free!15759 (not b_next!15759))))

(declare-fun tp!55246 () Bool)

(declare-fun b_and!26017 () Bool)

(assert (=> b!891264 (= tp!55246 b_and!26017)))

(declare-fun res!603958 () Bool)

(declare-fun e!497352 () Bool)

(assert (=> start!75816 (=> (not res!603958) (not e!497352))))

(declare-datatypes ((array!52140 0))(
  ( (array!52141 (arr!25072 (Array (_ BitVec 32) (_ BitVec 64))) (size!25517 (_ BitVec 32))) )
))
(declare-datatypes ((V!29081 0))(
  ( (V!29082 (val!9094 Int)) )
))
(declare-datatypes ((ValueCell!8562 0))(
  ( (ValueCellFull!8562 (v!11566 V!29081)) (EmptyCell!8562) )
))
(declare-datatypes ((array!52142 0))(
  ( (array!52143 (arr!25073 (Array (_ BitVec 32) ValueCell!8562)) (size!25518 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4140 0))(
  ( (LongMapFixedSize!4141 (defaultEntry!5267 Int) (mask!25753 (_ BitVec 32)) (extraKeys!4961 (_ BitVec 32)) (zeroValue!5065 V!29081) (minValue!5065 V!29081) (_size!2125 (_ BitVec 32)) (_keys!9946 array!52140) (_values!5252 array!52142) (_vacant!2125 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4140)

(declare-fun valid!1594 (LongMapFixedSize!4140) Bool)

(assert (=> start!75816 (= res!603958 (valid!1594 thiss!1181))))

(assert (=> start!75816 e!497352))

(declare-fun e!497357 () Bool)

(assert (=> start!75816 e!497357))

(assert (=> start!75816 true))

(declare-fun b!891253 () Bool)

(declare-fun e!497353 () Bool)

(declare-fun e!497354 () Bool)

(assert (=> b!891253 (= e!497353 e!497354)))

(declare-fun res!603953 () Bool)

(assert (=> b!891253 (=> res!603953 e!497354)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891253 (= res!603953 (not (validMask!0 (mask!25753 thiss!1181))))))

(declare-datatypes ((tuple2!11970 0))(
  ( (tuple2!11971 (_1!5995 (_ BitVec 64)) (_2!5995 V!29081)) )
))
(declare-datatypes ((List!17823 0))(
  ( (Nil!17820) (Cons!17819 (h!18950 tuple2!11970) (t!25130 List!17823)) )
))
(declare-datatypes ((ListLongMap!10681 0))(
  ( (ListLongMap!10682 (toList!5356 List!17823)) )
))
(declare-fun lt!402620 () ListLongMap!10681)

(declare-datatypes ((SeekEntryResult!8818 0))(
  ( (MissingZero!8818 (index!37642 (_ BitVec 32))) (Found!8818 (index!37643 (_ BitVec 32))) (Intermediate!8818 (undefined!9630 Bool) (index!37644 (_ BitVec 32)) (x!75731 (_ BitVec 32))) (Undefined!8818) (MissingVacant!8818 (index!37645 (_ BitVec 32))) )
))
(declare-fun lt!402616 () SeekEntryResult!8818)

(declare-fun contains!4333 (ListLongMap!10681 (_ BitVec 64)) Bool)

(assert (=> b!891253 (contains!4333 lt!402620 (select (arr!25072 (_keys!9946 thiss!1181)) (index!37643 lt!402616)))))

(declare-fun getCurrentListMap!2610 (array!52140 array!52142 (_ BitVec 32) (_ BitVec 32) V!29081 V!29081 (_ BitVec 32) Int) ListLongMap!10681)

(assert (=> b!891253 (= lt!402620 (getCurrentListMap!2610 (_keys!9946 thiss!1181) (_values!5252 thiss!1181) (mask!25753 thiss!1181) (extraKeys!4961 thiss!1181) (zeroValue!5065 thiss!1181) (minValue!5065 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5267 thiss!1181)))))

(declare-datatypes ((Unit!30319 0))(
  ( (Unit!30320) )
))
(declare-fun lt!402618 () Unit!30319)

(declare-fun lemmaValidKeyInArrayIsInListMap!203 (array!52140 array!52142 (_ BitVec 32) (_ BitVec 32) V!29081 V!29081 (_ BitVec 32) Int) Unit!30319)

(assert (=> b!891253 (= lt!402618 (lemmaValidKeyInArrayIsInListMap!203 (_keys!9946 thiss!1181) (_values!5252 thiss!1181) (mask!25753 thiss!1181) (extraKeys!4961 thiss!1181) (zeroValue!5065 thiss!1181) (minValue!5065 thiss!1181) (index!37643 lt!402616) (defaultEntry!5267 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891253 (arrayContainsKey!0 (_keys!9946 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402617 () Unit!30319)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52140 (_ BitVec 64) (_ BitVec 32)) Unit!30319)

(assert (=> b!891253 (= lt!402617 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9946 thiss!1181) key!785 (index!37643 lt!402616)))))

(declare-fun b!891254 () Bool)

(declare-fun e!497356 () Bool)

(declare-fun e!497359 () Bool)

(declare-fun mapRes!28685 () Bool)

(assert (=> b!891254 (= e!497356 (and e!497359 mapRes!28685))))

(declare-fun condMapEmpty!28685 () Bool)

(declare-fun mapDefault!28685 () ValueCell!8562)

(assert (=> b!891254 (= condMapEmpty!28685 (= (arr!25073 (_values!5252 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8562)) mapDefault!28685)))))

(declare-fun b!891255 () Bool)

(assert (=> b!891255 (= e!497354 true)))

(declare-fun lt!402621 () Bool)

(assert (=> b!891255 (= lt!402621 (contains!4333 lt!402620 key!785))))

(declare-fun mapNonEmpty!28685 () Bool)

(declare-fun tp!55247 () Bool)

(declare-fun e!497360 () Bool)

(assert (=> mapNonEmpty!28685 (= mapRes!28685 (and tp!55247 e!497360))))

(declare-fun mapKey!28685 () (_ BitVec 32))

(declare-fun mapRest!28685 () (Array (_ BitVec 32) ValueCell!8562))

(declare-fun mapValue!28685 () ValueCell!8562)

(assert (=> mapNonEmpty!28685 (= (arr!25073 (_values!5252 thiss!1181)) (store mapRest!28685 mapKey!28685 mapValue!28685))))

(declare-fun b!891256 () Bool)

(declare-fun tp_is_empty!18087 () Bool)

(assert (=> b!891256 (= e!497360 tp_is_empty!18087)))

(declare-fun b!891257 () Bool)

(declare-fun res!603954 () Bool)

(assert (=> b!891257 (=> res!603954 e!497354)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52140 (_ BitVec 32)) Bool)

(assert (=> b!891257 (= res!603954 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9946 thiss!1181) (mask!25753 thiss!1181))))))

(declare-fun b!891258 () Bool)

(declare-fun e!497358 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891258 (= e!497358 (inRange!0 (index!37643 lt!402616) (mask!25753 thiss!1181)))))

(declare-fun b!891259 () Bool)

(assert (=> b!891259 (= e!497352 (not e!497353))))

(declare-fun res!603955 () Bool)

(assert (=> b!891259 (=> res!603955 e!497353)))

(get-info :version)

(assert (=> b!891259 (= res!603955 (not ((_ is Found!8818) lt!402616)))))

(assert (=> b!891259 e!497358))

(declare-fun res!603956 () Bool)

(assert (=> b!891259 (=> res!603956 e!497358)))

(assert (=> b!891259 (= res!603956 (not ((_ is Found!8818) lt!402616)))))

(declare-fun lt!402619 () Unit!30319)

(declare-fun lemmaSeekEntryGivesInRangeIndex!38 (array!52140 array!52142 (_ BitVec 32) (_ BitVec 32) V!29081 V!29081 (_ BitVec 64)) Unit!30319)

(assert (=> b!891259 (= lt!402619 (lemmaSeekEntryGivesInRangeIndex!38 (_keys!9946 thiss!1181) (_values!5252 thiss!1181) (mask!25753 thiss!1181) (extraKeys!4961 thiss!1181) (zeroValue!5065 thiss!1181) (minValue!5065 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52140 (_ BitVec 32)) SeekEntryResult!8818)

(assert (=> b!891259 (= lt!402616 (seekEntry!0 key!785 (_keys!9946 thiss!1181) (mask!25753 thiss!1181)))))

(declare-fun b!891260 () Bool)

(assert (=> b!891260 (= e!497359 tp_is_empty!18087)))

(declare-fun b!891261 () Bool)

(declare-fun res!603959 () Bool)

(assert (=> b!891261 (=> (not res!603959) (not e!497352))))

(assert (=> b!891261 (= res!603959 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891262 () Bool)

(declare-fun res!603957 () Bool)

(assert (=> b!891262 (=> res!603957 e!497354)))

(declare-datatypes ((List!17824 0))(
  ( (Nil!17821) (Cons!17820 (h!18951 (_ BitVec 64)) (t!25131 List!17824)) )
))
(declare-fun arrayNoDuplicates!0 (array!52140 (_ BitVec 32) List!17824) Bool)

(assert (=> b!891262 (= res!603957 (not (arrayNoDuplicates!0 (_keys!9946 thiss!1181) #b00000000000000000000000000000000 Nil!17821)))))

(declare-fun mapIsEmpty!28685 () Bool)

(assert (=> mapIsEmpty!28685 mapRes!28685))

(declare-fun b!891263 () Bool)

(declare-fun res!603960 () Bool)

(assert (=> b!891263 (=> res!603960 e!497354)))

(assert (=> b!891263 (= res!603960 (or (not (= (size!25518 (_values!5252 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25753 thiss!1181)))) (not (= (size!25517 (_keys!9946 thiss!1181)) (size!25518 (_values!5252 thiss!1181)))) (bvslt (mask!25753 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4961 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4961 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun array_inv!19674 (array!52140) Bool)

(declare-fun array_inv!19675 (array!52142) Bool)

(assert (=> b!891264 (= e!497357 (and tp!55246 tp_is_empty!18087 (array_inv!19674 (_keys!9946 thiss!1181)) (array_inv!19675 (_values!5252 thiss!1181)) e!497356))))

(assert (= (and start!75816 res!603958) b!891261))

(assert (= (and b!891261 res!603959) b!891259))

(assert (= (and b!891259 (not res!603956)) b!891258))

(assert (= (and b!891259 (not res!603955)) b!891253))

(assert (= (and b!891253 (not res!603953)) b!891263))

(assert (= (and b!891263 (not res!603960)) b!891257))

(assert (= (and b!891257 (not res!603954)) b!891262))

(assert (= (and b!891262 (not res!603957)) b!891255))

(assert (= (and b!891254 condMapEmpty!28685) mapIsEmpty!28685))

(assert (= (and b!891254 (not condMapEmpty!28685)) mapNonEmpty!28685))

(assert (= (and mapNonEmpty!28685 ((_ is ValueCellFull!8562) mapValue!28685)) b!891256))

(assert (= (and b!891254 ((_ is ValueCellFull!8562) mapDefault!28685)) b!891260))

(assert (= b!891264 b!891254))

(assert (= start!75816 b!891264))

(declare-fun m!829673 () Bool)

(assert (=> b!891264 m!829673))

(declare-fun m!829675 () Bool)

(assert (=> b!891264 m!829675))

(declare-fun m!829677 () Bool)

(assert (=> b!891253 m!829677))

(declare-fun m!829679 () Bool)

(assert (=> b!891253 m!829679))

(declare-fun m!829681 () Bool)

(assert (=> b!891253 m!829681))

(declare-fun m!829683 () Bool)

(assert (=> b!891253 m!829683))

(declare-fun m!829685 () Bool)

(assert (=> b!891253 m!829685))

(declare-fun m!829687 () Bool)

(assert (=> b!891253 m!829687))

(assert (=> b!891253 m!829685))

(declare-fun m!829689 () Bool)

(assert (=> b!891253 m!829689))

(declare-fun m!829691 () Bool)

(assert (=> b!891259 m!829691))

(declare-fun m!829693 () Bool)

(assert (=> b!891259 m!829693))

(declare-fun m!829695 () Bool)

(assert (=> b!891257 m!829695))

(declare-fun m!829697 () Bool)

(assert (=> b!891258 m!829697))

(declare-fun m!829699 () Bool)

(assert (=> mapNonEmpty!28685 m!829699))

(declare-fun m!829701 () Bool)

(assert (=> b!891262 m!829701))

(declare-fun m!829703 () Bool)

(assert (=> start!75816 m!829703))

(declare-fun m!829705 () Bool)

(assert (=> b!891255 m!829705))

(check-sat (not b!891257) (not b!891258) (not start!75816) (not b!891262) (not mapNonEmpty!28685) tp_is_empty!18087 (not b_next!15759) (not b!891255) (not b!891253) (not b!891259) (not b!891264) b_and!26017)
(check-sat b_and!26017 (not b_next!15759))
