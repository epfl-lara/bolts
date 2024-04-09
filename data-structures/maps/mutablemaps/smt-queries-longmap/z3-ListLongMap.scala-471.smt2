; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9226 () Bool)

(assert start!9226)

(declare-fun b!65673 () Bool)

(declare-fun b_free!2045 () Bool)

(declare-fun b_next!2045 () Bool)

(assert (=> b!65673 (= b_free!2045 (not b_next!2045))))

(declare-fun tp!8286 () Bool)

(declare-fun b_and!4033 () Bool)

(assert (=> b!65673 (= tp!8286 b_and!4033)))

(declare-fun b!65670 () Bool)

(declare-fun b_free!2047 () Bool)

(declare-fun b_next!2047 () Bool)

(assert (=> b!65670 (= b_free!2047 (not b_next!2047))))

(declare-fun tp!8284 () Bool)

(declare-fun b_and!4035 () Bool)

(assert (=> b!65670 (= tp!8284 b_and!4035)))

(declare-fun e!43046 () Bool)

(declare-datatypes ((V!2899 0))(
  ( (V!2900 (val!1264 Int)) )
))
(declare-datatypes ((array!3814 0))(
  ( (array!3815 (arr!1822 (Array (_ BitVec 32) (_ BitVec 64))) (size!2057 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!876 0))(
  ( (ValueCellFull!876 (v!2464 V!2899)) (EmptyCell!876) )
))
(declare-datatypes ((array!3816 0))(
  ( (array!3817 (arr!1823 (Array (_ BitVec 32) ValueCell!876)) (size!2058 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!660 0))(
  ( (LongMapFixedSize!661 (defaultEntry!2138 Int) (mask!6068 (_ BitVec 32)) (extraKeys!2009 (_ BitVec 32)) (zeroValue!2046 V!2899) (minValue!2046 V!2899) (_size!379 (_ BitVec 32)) (_keys!3778 array!3814) (_values!2121 array!3816) (_vacant!379 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!660)

(declare-fun tp_is_empty!2439 () Bool)

(declare-fun e!43047 () Bool)

(declare-fun array_inv!1079 (array!3814) Bool)

(declare-fun array_inv!1080 (array!3816) Bool)

(assert (=> b!65670 (= e!43046 (and tp!8284 tp_is_empty!2439 (array_inv!1079 (_keys!3778 newMap!16)) (array_inv!1080 (_values!2121 newMap!16)) e!43047))))

(declare-fun b!65671 () Bool)

(declare-fun e!43056 () Bool)

(declare-fun e!43054 () Bool)

(assert (=> b!65671 (= e!43056 e!43054)))

(declare-fun res!35665 () Bool)

(assert (=> b!65671 (=> (not res!35665) (not e!43054))))

(declare-datatypes ((tuple2!2098 0))(
  ( (tuple2!2099 (_1!1059 Bool) (_2!1059 LongMapFixedSize!660)) )
))
(declare-fun lt!28091 () tuple2!2098)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!65671 (= res!35665 (and (_1!1059 lt!28091) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!1817 0))(
  ( (Unit!1818) )
))
(declare-fun lt!28085 () Unit!1817)

(declare-fun e!43057 () Unit!1817)

(assert (=> b!65671 (= lt!28085 e!43057)))

(declare-datatypes ((Cell!470 0))(
  ( (Cell!471 (v!2465 LongMapFixedSize!660)) )
))
(declare-datatypes ((LongMap!470 0))(
  ( (LongMap!471 (underlying!246 Cell!470)) )
))
(declare-fun thiss!992 () LongMap!470)

(declare-datatypes ((tuple2!2100 0))(
  ( (tuple2!2101 (_1!1060 (_ BitVec 64)) (_2!1060 V!2899)) )
))
(declare-datatypes ((List!1483 0))(
  ( (Nil!1480) (Cons!1479 (h!2063 tuple2!2100) (t!4945 List!1483)) )
))
(declare-datatypes ((ListLongMap!1409 0))(
  ( (ListLongMap!1410 (toList!720 List!1483)) )
))
(declare-fun lt!28086 () ListLongMap!1409)

(declare-fun c!9033 () Bool)

(declare-fun contains!712 (ListLongMap!1409 (_ BitVec 64)) Bool)

(assert (=> b!65671 (= c!9033 (contains!712 lt!28086 (select (arr!1822 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) from!355)))))

(declare-fun update!94 (LongMapFixedSize!660 (_ BitVec 64) V!2899) tuple2!2098)

(declare-fun get!1119 (ValueCell!876 V!2899) V!2899)

(declare-fun dynLambda!322 (Int (_ BitVec 64)) V!2899)

(assert (=> b!65671 (= lt!28091 (update!94 newMap!16 (select (arr!1822 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) from!355) (get!1119 (select (arr!1823 (_values!2121 (v!2465 (underlying!246 thiss!992)))) from!355) (dynLambda!322 (defaultEntry!2138 (v!2465 (underlying!246 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!65672 () Bool)

(assert (=> b!65672 (= e!43054 false)))

(declare-fun lt!28089 () ListLongMap!1409)

(declare-fun getCurrentListMapNoExtraKeys!49 (array!3814 array!3816 (_ BitVec 32) (_ BitVec 32) V!2899 V!2899 (_ BitVec 32) Int) ListLongMap!1409)

(assert (=> b!65672 (= lt!28089 (getCurrentListMapNoExtraKeys!49 (_keys!3778 (v!2465 (underlying!246 thiss!992))) (_values!2121 (v!2465 (underlying!246 thiss!992))) (mask!6068 (v!2465 (underlying!246 thiss!992))) (extraKeys!2009 (v!2465 (underlying!246 thiss!992))) (zeroValue!2046 (v!2465 (underlying!246 thiss!992))) (minValue!2046 (v!2465 (underlying!246 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2138 (v!2465 (underlying!246 thiss!992)))))))

(declare-fun e!43044 () Bool)

(declare-fun e!43042 () Bool)

(assert (=> b!65673 (= e!43044 (and tp!8286 tp_is_empty!2439 (array_inv!1079 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) (array_inv!1080 (_values!2121 (v!2465 (underlying!246 thiss!992)))) e!43042))))

(declare-fun mapIsEmpty!3035 () Bool)

(declare-fun mapRes!3036 () Bool)

(assert (=> mapIsEmpty!3035 mapRes!3036))

(declare-fun mapNonEmpty!3035 () Bool)

(declare-fun mapRes!3035 () Bool)

(declare-fun tp!8283 () Bool)

(declare-fun e!43045 () Bool)

(assert (=> mapNonEmpty!3035 (= mapRes!3035 (and tp!8283 e!43045))))

(declare-fun mapValue!3035 () ValueCell!876)

(declare-fun mapKey!3035 () (_ BitVec 32))

(declare-fun mapRest!3035 () (Array (_ BitVec 32) ValueCell!876))

(assert (=> mapNonEmpty!3035 (= (arr!1823 (_values!2121 (v!2465 (underlying!246 thiss!992)))) (store mapRest!3035 mapKey!3035 mapValue!3035))))

(declare-fun mapIsEmpty!3036 () Bool)

(assert (=> mapIsEmpty!3036 mapRes!3035))

(declare-fun b!65675 () Bool)

(declare-fun e!43050 () Bool)

(assert (=> b!65675 (= e!43050 tp_is_empty!2439)))

(declare-fun b!65676 () Bool)

(declare-fun e!43055 () Bool)

(assert (=> b!65676 (= e!43055 e!43044)))

(declare-fun b!65677 () Bool)

(declare-fun e!43051 () Bool)

(assert (=> b!65677 (= e!43042 (and e!43051 mapRes!3035))))

(declare-fun condMapEmpty!3036 () Bool)

(declare-fun mapDefault!3035 () ValueCell!876)

(assert (=> b!65677 (= condMapEmpty!3036 (= (arr!1823 (_values!2121 (v!2465 (underlying!246 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!876)) mapDefault!3035)))))

(declare-fun b!65678 () Bool)

(declare-fun res!35667 () Bool)

(declare-fun e!43048 () Bool)

(assert (=> b!65678 (=> (not res!35667) (not e!43048))))

(assert (=> b!65678 (= res!35667 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2057 (_keys!3778 (v!2465 (underlying!246 thiss!992)))))))))

(declare-fun b!65679 () Bool)

(declare-fun e!43043 () Bool)

(assert (=> b!65679 (= e!43047 (and e!43043 mapRes!3036))))

(declare-fun condMapEmpty!3035 () Bool)

(declare-fun mapDefault!3036 () ValueCell!876)

(assert (=> b!65679 (= condMapEmpty!3035 (= (arr!1823 (_values!2121 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!876)) mapDefault!3036)))))

(declare-fun b!65680 () Bool)

(declare-fun Unit!1819 () Unit!1817)

(assert (=> b!65680 (= e!43057 Unit!1819)))

(declare-fun lt!28084 () Unit!1817)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!42 (array!3814 array!3816 (_ BitVec 32) (_ BitVec 32) V!2899 V!2899 (_ BitVec 64) (_ BitVec 32) Int) Unit!1817)

(assert (=> b!65680 (= lt!28084 (lemmaListMapContainsThenArrayContainsFrom!42 (_keys!3778 (v!2465 (underlying!246 thiss!992))) (_values!2121 (v!2465 (underlying!246 thiss!992))) (mask!6068 (v!2465 (underlying!246 thiss!992))) (extraKeys!2009 (v!2465 (underlying!246 thiss!992))) (zeroValue!2046 (v!2465 (underlying!246 thiss!992))) (minValue!2046 (v!2465 (underlying!246 thiss!992))) (select (arr!1822 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2138 (v!2465 (underlying!246 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!65680 (arrayContainsKey!0 (_keys!3778 (v!2465 (underlying!246 thiss!992))) (select (arr!1822 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!28088 () Unit!1817)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3814 (_ BitVec 32) (_ BitVec 32)) Unit!1817)

(assert (=> b!65680 (= lt!28088 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3778 (v!2465 (underlying!246 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1484 0))(
  ( (Nil!1481) (Cons!1480 (h!2064 (_ BitVec 64)) (t!4946 List!1484)) )
))
(declare-fun arrayNoDuplicates!0 (array!3814 (_ BitVec 32) List!1484) Bool)

(assert (=> b!65680 (arrayNoDuplicates!0 (_keys!3778 (v!2465 (underlying!246 thiss!992))) from!355 Nil!1481)))

(declare-fun lt!28090 () Unit!1817)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3814 (_ BitVec 32) (_ BitVec 64) List!1484) Unit!1817)

(assert (=> b!65680 (= lt!28090 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3778 (v!2465 (underlying!246 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1822 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) from!355) (Cons!1480 (select (arr!1822 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) from!355) Nil!1481)))))

(assert (=> b!65680 false))

(declare-fun b!65681 () Bool)

(assert (=> b!65681 (= e!43043 tp_is_empty!2439)))

(declare-fun b!65682 () Bool)

(declare-fun e!43052 () Bool)

(assert (=> b!65682 (= e!43052 e!43055)))

(declare-fun b!65683 () Bool)

(declare-fun res!35668 () Bool)

(assert (=> b!65683 (=> (not res!35668) (not e!43048))))

(declare-fun valid!273 (LongMapFixedSize!660) Bool)

(assert (=> b!65683 (= res!35668 (valid!273 newMap!16))))

(declare-fun b!65684 () Bool)

(declare-fun res!35663 () Bool)

(assert (=> b!65684 (=> (not res!35663) (not e!43048))))

(assert (=> b!65684 (= res!35663 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6068 newMap!16)) (_size!379 (v!2465 (underlying!246 thiss!992)))))))

(declare-fun b!65685 () Bool)

(assert (=> b!65685 (= e!43048 e!43056)))

(declare-fun res!35666 () Bool)

(assert (=> b!65685 (=> (not res!35666) (not e!43056))))

(declare-fun lt!28087 () ListLongMap!1409)

(assert (=> b!65685 (= res!35666 (and (= lt!28087 lt!28086) (not (= (select (arr!1822 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1822 (_keys!3778 (v!2465 (underlying!246 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1136 (LongMapFixedSize!660) ListLongMap!1409)

(assert (=> b!65685 (= lt!28086 (map!1136 newMap!16))))

(declare-fun getCurrentListMap!416 (array!3814 array!3816 (_ BitVec 32) (_ BitVec 32) V!2899 V!2899 (_ BitVec 32) Int) ListLongMap!1409)

(assert (=> b!65685 (= lt!28087 (getCurrentListMap!416 (_keys!3778 (v!2465 (underlying!246 thiss!992))) (_values!2121 (v!2465 (underlying!246 thiss!992))) (mask!6068 (v!2465 (underlying!246 thiss!992))) (extraKeys!2009 (v!2465 (underlying!246 thiss!992))) (zeroValue!2046 (v!2465 (underlying!246 thiss!992))) (minValue!2046 (v!2465 (underlying!246 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2138 (v!2465 (underlying!246 thiss!992)))))))

(declare-fun mapNonEmpty!3036 () Bool)

(declare-fun tp!8285 () Bool)

(assert (=> mapNonEmpty!3036 (= mapRes!3036 (and tp!8285 e!43050))))

(declare-fun mapRest!3036 () (Array (_ BitVec 32) ValueCell!876))

(declare-fun mapValue!3036 () ValueCell!876)

(declare-fun mapKey!3036 () (_ BitVec 32))

(assert (=> mapNonEmpty!3036 (= (arr!1823 (_values!2121 newMap!16)) (store mapRest!3036 mapKey!3036 mapValue!3036))))

(declare-fun res!35664 () Bool)

(assert (=> start!9226 (=> (not res!35664) (not e!43048))))

(declare-fun valid!274 (LongMap!470) Bool)

(assert (=> start!9226 (= res!35664 (valid!274 thiss!992))))

(assert (=> start!9226 e!43048))

(assert (=> start!9226 e!43052))

(assert (=> start!9226 true))

(assert (=> start!9226 e!43046))

(declare-fun b!65674 () Bool)

(assert (=> b!65674 (= e!43045 tp_is_empty!2439)))

(declare-fun b!65686 () Bool)

(assert (=> b!65686 (= e!43051 tp_is_empty!2439)))

(declare-fun b!65687 () Bool)

(declare-fun Unit!1820 () Unit!1817)

(assert (=> b!65687 (= e!43057 Unit!1820)))

(assert (= (and start!9226 res!35664) b!65678))

(assert (= (and b!65678 res!35667) b!65683))

(assert (= (and b!65683 res!35668) b!65684))

(assert (= (and b!65684 res!35663) b!65685))

(assert (= (and b!65685 res!35666) b!65671))

(assert (= (and b!65671 c!9033) b!65680))

(assert (= (and b!65671 (not c!9033)) b!65687))

(assert (= (and b!65671 res!35665) b!65672))

(assert (= (and b!65677 condMapEmpty!3036) mapIsEmpty!3036))

(assert (= (and b!65677 (not condMapEmpty!3036)) mapNonEmpty!3035))

(get-info :version)

(assert (= (and mapNonEmpty!3035 ((_ is ValueCellFull!876) mapValue!3035)) b!65674))

(assert (= (and b!65677 ((_ is ValueCellFull!876) mapDefault!3035)) b!65686))

(assert (= b!65673 b!65677))

(assert (= b!65676 b!65673))

(assert (= b!65682 b!65676))

(assert (= start!9226 b!65682))

(assert (= (and b!65679 condMapEmpty!3035) mapIsEmpty!3035))

(assert (= (and b!65679 (not condMapEmpty!3035)) mapNonEmpty!3036))

(assert (= (and mapNonEmpty!3036 ((_ is ValueCellFull!876) mapValue!3036)) b!65675))

(assert (= (and b!65679 ((_ is ValueCellFull!876) mapDefault!3036)) b!65681))

(assert (= b!65670 b!65679))

(assert (= start!9226 b!65670))

(declare-fun b_lambda!2951 () Bool)

(assert (=> (not b_lambda!2951) (not b!65671)))

(declare-fun t!4942 () Bool)

(declare-fun tb!1437 () Bool)

(assert (=> (and b!65673 (= (defaultEntry!2138 (v!2465 (underlying!246 thiss!992))) (defaultEntry!2138 (v!2465 (underlying!246 thiss!992)))) t!4942) tb!1437))

(declare-fun result!2543 () Bool)

(assert (=> tb!1437 (= result!2543 tp_is_empty!2439)))

(assert (=> b!65671 t!4942))

(declare-fun b_and!4037 () Bool)

(assert (= b_and!4033 (and (=> t!4942 result!2543) b_and!4037)))

(declare-fun tb!1439 () Bool)

(declare-fun t!4944 () Bool)

(assert (=> (and b!65670 (= (defaultEntry!2138 newMap!16) (defaultEntry!2138 (v!2465 (underlying!246 thiss!992)))) t!4944) tb!1439))

(declare-fun result!2547 () Bool)

(assert (= result!2547 result!2543))

(assert (=> b!65671 t!4944))

(declare-fun b_and!4039 () Bool)

(assert (= b_and!4035 (and (=> t!4944 result!2547) b_and!4039)))

(declare-fun m!60177 () Bool)

(assert (=> mapNonEmpty!3036 m!60177))

(declare-fun m!60179 () Bool)

(assert (=> mapNonEmpty!3035 m!60179))

(declare-fun m!60181 () Bool)

(assert (=> b!65685 m!60181))

(declare-fun m!60183 () Bool)

(assert (=> b!65685 m!60183))

(declare-fun m!60185 () Bool)

(assert (=> b!65685 m!60185))

(declare-fun m!60187 () Bool)

(assert (=> b!65670 m!60187))

(declare-fun m!60189 () Bool)

(assert (=> b!65670 m!60189))

(declare-fun m!60191 () Bool)

(assert (=> b!65672 m!60191))

(declare-fun m!60193 () Bool)

(assert (=> b!65673 m!60193))

(declare-fun m!60195 () Bool)

(assert (=> b!65673 m!60195))

(declare-fun m!60197 () Bool)

(assert (=> b!65671 m!60197))

(declare-fun m!60199 () Bool)

(assert (=> b!65671 m!60199))

(declare-fun m!60201 () Bool)

(assert (=> b!65671 m!60201))

(assert (=> b!65671 m!60181))

(declare-fun m!60203 () Bool)

(assert (=> b!65671 m!60203))

(assert (=> b!65671 m!60181))

(assert (=> b!65671 m!60199))

(assert (=> b!65671 m!60181))

(assert (=> b!65671 m!60201))

(declare-fun m!60205 () Bool)

(assert (=> b!65671 m!60205))

(assert (=> b!65671 m!60197))

(declare-fun m!60207 () Bool)

(assert (=> start!9226 m!60207))

(declare-fun m!60209 () Bool)

(assert (=> b!65680 m!60209))

(declare-fun m!60211 () Bool)

(assert (=> b!65680 m!60211))

(assert (=> b!65680 m!60181))

(declare-fun m!60213 () Bool)

(assert (=> b!65680 m!60213))

(assert (=> b!65680 m!60181))

(assert (=> b!65680 m!60181))

(declare-fun m!60215 () Bool)

(assert (=> b!65680 m!60215))

(assert (=> b!65680 m!60181))

(declare-fun m!60217 () Bool)

(assert (=> b!65680 m!60217))

(declare-fun m!60219 () Bool)

(assert (=> b!65683 m!60219))

(check-sat (not b_next!2045) b_and!4037 (not start!9226) (not b!65672) (not mapNonEmpty!3036) (not b!65680) (not b!65670) (not b_next!2047) b_and!4039 (not b_lambda!2951) (not b!65685) (not b!65673) (not b!65683) tp_is_empty!2439 (not mapNonEmpty!3035) (not b!65671))
(check-sat b_and!4037 b_and!4039 (not b_next!2045) (not b_next!2047))
