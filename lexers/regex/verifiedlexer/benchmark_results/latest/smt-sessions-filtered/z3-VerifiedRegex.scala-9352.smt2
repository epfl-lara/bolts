; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496916 () Bool)

(assert start!496916)

(declare-fun b!4807963 () Bool)

(declare-fun b_free!129995 () Bool)

(declare-fun b_next!130785 () Bool)

(assert (=> b!4807963 (= b_free!129995 (not b_next!130785))))

(declare-fun tp!1359668 () Bool)

(declare-fun b_and!341765 () Bool)

(assert (=> b!4807963 (= tp!1359668 b_and!341765)))

(declare-fun b!4807970 () Bool)

(declare-fun b_free!129997 () Bool)

(declare-fun b_next!130787 () Bool)

(assert (=> b!4807970 (= b_free!129997 (not b_next!130787))))

(declare-fun tp!1359669 () Bool)

(declare-fun b_and!341767 () Bool)

(assert (=> b!4807970 (= tp!1359669 b_and!341767)))

(declare-fun bs!1159954 () Bool)

(declare-fun b!4807969 () Bool)

(declare-fun b!4807965 () Bool)

(assert (= bs!1159954 (and b!4807969 b!4807965)))

(declare-fun lambda!233556 () Int)

(declare-fun lambda!233555 () Int)

(assert (=> bs!1159954 (= lambda!233556 lambda!233555)))

(declare-fun mapIsEmpty!22187 () Bool)

(declare-fun mapRes!22187 () Bool)

(assert (=> mapIsEmpty!22187 mapRes!22187))

(declare-fun b!4807956 () Bool)

(declare-datatypes ((Unit!141355 0))(
  ( (Unit!141356) )
))
(declare-fun e!3003133 () Unit!141355)

(declare-fun Unit!141357 () Unit!141355)

(assert (=> b!4807956 (= e!3003133 Unit!141357)))

(declare-fun res!2045381 () Bool)

(declare-fun e!3003131 () Bool)

(assert (=> start!496916 (=> (not res!2045381) (not e!3003131))))

(declare-datatypes ((K!16049 0))(
  ( (K!16050 (val!21145 Int)) )
))
(declare-datatypes ((array!18412 0))(
  ( (array!18413 (arr!8211 (Array (_ BitVec 32) (_ BitVec 64))) (size!36457 (_ BitVec 32))) )
))
(declare-datatypes ((V!16295 0))(
  ( (V!16296 (val!21146 Int)) )
))
(declare-datatypes ((tuple2!57244 0))(
  ( (tuple2!57245 (_1!31916 K!16049) (_2!31916 V!16295)) )
))
(declare-datatypes ((List!54576 0))(
  ( (Nil!54452) (Cons!54452 (h!60884 tuple2!57244) (t!362042 List!54576)) )
))
(declare-datatypes ((array!18414 0))(
  ( (array!18415 (arr!8212 (Array (_ BitVec 32) List!54576)) (size!36458 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10026 0))(
  ( (LongMapFixedSize!10027 (defaultEntry!5431 Int) (mask!14990 (_ BitVec 32)) (extraKeys!5288 (_ BitVec 32)) (zeroValue!5301 List!54576) (minValue!5301 List!54576) (_size!10051 (_ BitVec 32)) (_keys!5355 array!18412) (_values!5326 array!18414) (_vacant!5078 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19817 0))(
  ( (Cell!19818 (v!48698 LongMapFixedSize!10026)) )
))
(declare-datatypes ((MutLongMap!5013 0))(
  ( (LongMap!5013 (underlying!10233 Cell!19817)) (MutLongMapExt!5012 (__x!33137 Int)) )
))
(declare-datatypes ((Hashable!7024 0))(
  ( (HashableExt!7023 (__x!33138 Int)) )
))
(declare-datatypes ((Cell!19819 0))(
  ( (Cell!19820 (v!48699 MutLongMap!5013)) )
))
(declare-datatypes ((MutableMap!4897 0))(
  ( (MutableMapExt!4896 (__x!33139 Int)) (HashMap!4897 (underlying!10234 Cell!19819) (hashF!13292 Hashable!7024) (_size!10052 (_ BitVec 32)) (defaultValue!5068 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4897)

(get-info :version)

(assert (=> start!496916 (= res!2045381 ((_ is HashMap!4897) thiss!41921))))

(assert (=> start!496916 e!3003131))

(declare-fun e!3003136 () Bool)

(assert (=> start!496916 e!3003136))

(declare-fun tp_is_empty!33887 () Bool)

(assert (=> start!496916 tp_is_empty!33887))

(declare-fun b!4807957 () Bool)

(declare-fun e!3003135 () Bool)

(assert (=> b!4807957 (= e!3003135 false)))

(declare-fun b!4807958 () Bool)

(declare-fun e!3003129 () Bool)

(declare-fun tp!1359670 () Bool)

(assert (=> b!4807958 (= e!3003129 (and tp!1359670 mapRes!22187))))

(declare-fun condMapEmpty!22187 () Bool)

(declare-fun mapDefault!22187 () List!54576)

(assert (=> b!4807958 (= condMapEmpty!22187 (= (arr!8212 (_values!5326 (v!48698 (underlying!10233 (v!48699 (underlying!10234 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54576)) mapDefault!22187)))))

(declare-fun b!4807959 () Bool)

(declare-fun e!3003134 () Unit!141355)

(declare-fun Unit!141358 () Unit!141355)

(assert (=> b!4807959 (= e!3003134 Unit!141358)))

(declare-fun b!4807960 () Bool)

(declare-fun res!2045380 () Bool)

(assert (=> b!4807960 (=> (not res!2045380) (not e!3003135))))

(declare-datatypes ((tuple2!57246 0))(
  ( (tuple2!57247 (_1!31917 (_ BitVec 64)) (_2!31917 List!54576)) )
))
(declare-datatypes ((List!54577 0))(
  ( (Nil!54453) (Cons!54453 (h!60885 tuple2!57246) (t!362043 List!54577)) )
))
(declare-datatypes ((ListLongMap!5529 0))(
  ( (ListLongMap!5530 (toList!7078 List!54577)) )
))
(declare-fun lt!1960832 () ListLongMap!5529)

(declare-fun allKeysSameHashInMap!2396 (ListLongMap!5529 Hashable!7024) Bool)

(assert (=> b!4807960 (= res!2045380 (allKeysSameHashInMap!2396 lt!1960832 (hashF!13292 thiss!41921)))))

(declare-fun b!4807961 () Bool)

(declare-fun e!3003132 () Bool)

(declare-fun e!3003128 () Bool)

(assert (=> b!4807961 (= e!3003132 e!3003128)))

(declare-fun b!4807962 () Bool)

(declare-fun e!3003137 () Bool)

(declare-fun e!3003130 () Bool)

(declare-fun lt!1960834 () MutLongMap!5013)

(assert (=> b!4807962 (= e!3003137 (and e!3003130 ((_ is LongMap!5013) lt!1960834)))))

(assert (=> b!4807962 (= lt!1960834 (v!48699 (underlying!10234 thiss!41921)))))

(declare-fun tp!1359674 () Bool)

(declare-fun tp!1359673 () Bool)

(declare-fun array_inv!5917 (array!18412) Bool)

(declare-fun array_inv!5918 (array!18414) Bool)

(assert (=> b!4807963 (= e!3003128 (and tp!1359668 tp!1359673 tp!1359674 (array_inv!5917 (_keys!5355 (v!48698 (underlying!10233 (v!48699 (underlying!10234 thiss!41921)))))) (array_inv!5918 (_values!5326 (v!48698 (underlying!10233 (v!48699 (underlying!10234 thiss!41921)))))) e!3003129))))

(declare-fun b!4807964 () Bool)

(assert (=> b!4807964 (= e!3003130 e!3003132)))

(declare-fun lt!1960836 () ListLongMap!5529)

(declare-fun lt!1960831 () tuple2!57246)

(declare-fun forallContained!4242 (List!54577 Int tuple2!57246) Unit!141355)

(assert (=> b!4807965 (= e!3003134 (forallContained!4242 (toList!7078 lt!1960836) lambda!233555 lt!1960831))))

(declare-fun map!12355 (MutLongMap!5013) ListLongMap!5529)

(assert (=> b!4807965 (= lt!1960836 (map!12355 (v!48699 (underlying!10234 thiss!41921))))))

(declare-fun lt!1960828 () List!54576)

(declare-fun lt!1960835 () (_ BitVec 64))

(declare-fun apply!13097 (MutLongMap!5013 (_ BitVec 64)) List!54576)

(assert (=> b!4807965 (= lt!1960828 (apply!13097 (v!48699 (underlying!10234 thiss!41921)) lt!1960835))))

(assert (=> b!4807965 (= lt!1960831 (tuple2!57247 lt!1960835 lt!1960828))))

(declare-fun c!819453 () Bool)

(declare-fun contains!18128 (List!54577 tuple2!57246) Bool)

(assert (=> b!4807965 (= c!819453 (not (contains!18128 (toList!7078 lt!1960836) lt!1960831)))))

(declare-fun lt!1960837 () Unit!141355)

(assert (=> b!4807965 (= lt!1960837 e!3003133)))

(declare-fun b!4807966 () Bool)

(assert (=> b!4807966 false))

(declare-fun lt!1960830 () Unit!141355)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!970 (List!54577 (_ BitVec 64) List!54576) Unit!141355)

(assert (=> b!4807966 (= lt!1960830 (lemmaGetValueByKeyImpliesContainsTuple!970 (toList!7078 lt!1960836) lt!1960835 lt!1960828))))

(declare-datatypes ((Option!13255 0))(
  ( (None!13254) (Some!13254 (v!48700 List!54576)) )
))
(declare-fun isDefined!10394 (Option!13255) Bool)

(declare-fun getValueByKey!2452 (List!54577 (_ BitVec 64)) Option!13255)

(assert (=> b!4807966 (isDefined!10394 (getValueByKey!2452 (toList!7078 lt!1960836) lt!1960835))))

(declare-fun lt!1960827 () Unit!141355)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2240 (List!54577 (_ BitVec 64)) Unit!141355)

(assert (=> b!4807966 (= lt!1960827 (lemmaContainsKeyImpliesGetValueByKeyDefined!2240 (toList!7078 lt!1960836) lt!1960835))))

(declare-fun containsKey!4107 (List!54577 (_ BitVec 64)) Bool)

(assert (=> b!4807966 (containsKey!4107 (toList!7078 lt!1960836) lt!1960835)))

(declare-fun lt!1960829 () Unit!141355)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!241 (List!54577 (_ BitVec 64)) Unit!141355)

(assert (=> b!4807966 (= lt!1960829 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!241 (toList!7078 lt!1960836) lt!1960835))))

(declare-fun Unit!141359 () Unit!141355)

(assert (=> b!4807966 (= e!3003133 Unit!141359)))

(declare-fun b!4807967 () Bool)

(declare-fun res!2045384 () Bool)

(assert (=> b!4807967 (=> (not res!2045384) (not e!3003131))))

(declare-fun valid!4030 (MutableMap!4897) Bool)

(assert (=> b!4807967 (= res!2045384 (valid!4030 thiss!41921))))

(declare-fun b!4807968 () Bool)

(assert (=> b!4807968 (= e!3003131 e!3003135)))

(declare-fun res!2045383 () Bool)

(assert (=> b!4807968 (=> (not res!2045383) (not e!3003135))))

(declare-fun key!1652 () K!16049)

(declare-datatypes ((ListMap!6521 0))(
  ( (ListMap!6522 (toList!7079 List!54576)) )
))
(declare-fun contains!18129 (ListMap!6521 K!16049) Bool)

(declare-fun extractMap!2512 (List!54577) ListMap!6521)

(assert (=> b!4807968 (= res!2045383 (contains!18129 (extractMap!2512 (toList!7078 lt!1960832)) key!1652))))

(assert (=> b!4807968 (= lt!1960832 (map!12355 (v!48699 (underlying!10234 thiss!41921))))))

(declare-fun lt!1960833 () Unit!141355)

(assert (=> b!4807968 (= lt!1960833 e!3003134)))

(declare-fun c!819452 () Bool)

(declare-fun contains!18130 (MutLongMap!5013 (_ BitVec 64)) Bool)

(assert (=> b!4807968 (= c!819452 (contains!18130 (v!48699 (underlying!10234 thiss!41921)) lt!1960835))))

(declare-fun hash!5094 (Hashable!7024 K!16049) (_ BitVec 64))

(assert (=> b!4807968 (= lt!1960835 (hash!5094 (hashF!13292 thiss!41921) key!1652))))

(declare-fun res!2045382 () Bool)

(assert (=> b!4807969 (=> (not res!2045382) (not e!3003135))))

(declare-fun forall!12380 (List!54577 Int) Bool)

(assert (=> b!4807969 (= res!2045382 (forall!12380 (toList!7078 lt!1960832) lambda!233556))))

(assert (=> b!4807970 (= e!3003136 (and e!3003137 tp!1359669))))

(declare-fun mapNonEmpty!22187 () Bool)

(declare-fun tp!1359672 () Bool)

(declare-fun tp!1359671 () Bool)

(assert (=> mapNonEmpty!22187 (= mapRes!22187 (and tp!1359672 tp!1359671))))

(declare-fun mapValue!22187 () List!54576)

(declare-fun mapKey!22187 () (_ BitVec 32))

(declare-fun mapRest!22187 () (Array (_ BitVec 32) List!54576))

(assert (=> mapNonEmpty!22187 (= (arr!8212 (_values!5326 (v!48698 (underlying!10233 (v!48699 (underlying!10234 thiss!41921)))))) (store mapRest!22187 mapKey!22187 mapValue!22187))))

(assert (= (and start!496916 res!2045381) b!4807967))

(assert (= (and b!4807967 res!2045384) b!4807968))

(assert (= (and b!4807968 c!819452) b!4807965))

(assert (= (and b!4807968 (not c!819452)) b!4807959))

(assert (= (and b!4807965 c!819453) b!4807966))

(assert (= (and b!4807965 (not c!819453)) b!4807956))

(assert (= (and b!4807968 res!2045383) b!4807969))

(assert (= (and b!4807969 res!2045382) b!4807960))

(assert (= (and b!4807960 res!2045380) b!4807957))

(assert (= (and b!4807958 condMapEmpty!22187) mapIsEmpty!22187))

(assert (= (and b!4807958 (not condMapEmpty!22187)) mapNonEmpty!22187))

(assert (= b!4807963 b!4807958))

(assert (= b!4807961 b!4807963))

(assert (= b!4807964 b!4807961))

(assert (= (and b!4807962 ((_ is LongMap!5013) (v!48699 (underlying!10234 thiss!41921)))) b!4807964))

(assert (= b!4807970 b!4807962))

(assert (= (and start!496916 ((_ is HashMap!4897) thiss!41921)) b!4807970))

(declare-fun m!5794094 () Bool)

(assert (=> b!4807969 m!5794094))

(declare-fun m!5794096 () Bool)

(assert (=> b!4807967 m!5794096))

(declare-fun m!5794098 () Bool)

(assert (=> b!4807968 m!5794098))

(declare-fun m!5794100 () Bool)

(assert (=> b!4807968 m!5794100))

(declare-fun m!5794102 () Bool)

(assert (=> b!4807968 m!5794102))

(assert (=> b!4807968 m!5794100))

(declare-fun m!5794104 () Bool)

(assert (=> b!4807968 m!5794104))

(declare-fun m!5794106 () Bool)

(assert (=> b!4807968 m!5794106))

(declare-fun m!5794108 () Bool)

(assert (=> b!4807966 m!5794108))

(declare-fun m!5794110 () Bool)

(assert (=> b!4807966 m!5794110))

(declare-fun m!5794112 () Bool)

(assert (=> b!4807966 m!5794112))

(declare-fun m!5794114 () Bool)

(assert (=> b!4807966 m!5794114))

(declare-fun m!5794116 () Bool)

(assert (=> b!4807966 m!5794116))

(assert (=> b!4807966 m!5794112))

(declare-fun m!5794118 () Bool)

(assert (=> b!4807966 m!5794118))

(declare-fun m!5794120 () Bool)

(assert (=> b!4807960 m!5794120))

(declare-fun m!5794122 () Bool)

(assert (=> b!4807965 m!5794122))

(assert (=> b!4807965 m!5794106))

(declare-fun m!5794124 () Bool)

(assert (=> b!4807965 m!5794124))

(declare-fun m!5794126 () Bool)

(assert (=> b!4807965 m!5794126))

(declare-fun m!5794128 () Bool)

(assert (=> mapNonEmpty!22187 m!5794128))

(declare-fun m!5794130 () Bool)

(assert (=> b!4807963 m!5794130))

(declare-fun m!5794132 () Bool)

(assert (=> b!4807963 m!5794132))

(check-sat (not b!4807966) b_and!341767 b_and!341765 (not b!4807963) (not mapNonEmpty!22187) (not b!4807958) (not b_next!130787) (not b!4807967) (not b!4807965) (not b!4807969) tp_is_empty!33887 (not b_next!130785) (not b!4807960) (not b!4807968))
(check-sat b_and!341765 b_and!341767 (not b_next!130785) (not b_next!130787))
