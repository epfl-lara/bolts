; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487292 () Bool)

(assert start!487292)

(declare-fun b!4764528 () Bool)

(declare-fun b_free!129531 () Bool)

(declare-fun b_next!130321 () Bool)

(assert (=> b!4764528 (= b_free!129531 (not b_next!130321))))

(declare-fun tp!1354762 () Bool)

(declare-fun b_and!341221 () Bool)

(assert (=> b!4764528 (= tp!1354762 b_and!341221)))

(declare-fun b!4764525 () Bool)

(declare-fun b_free!129533 () Bool)

(declare-fun b_next!130323 () Bool)

(assert (=> b!4764525 (= b_free!129533 (not b_next!130323))))

(declare-fun tp!1354760 () Bool)

(declare-fun b_and!341223 () Bool)

(assert (=> b!4764525 (= tp!1354760 b_and!341223)))

(declare-fun b!4764522 () Bool)

(declare-fun e!2973649 () Bool)

(declare-fun e!2973651 () Bool)

(assert (=> b!4764522 (= e!2973649 e!2973651)))

(declare-fun b!4764523 () Bool)

(declare-fun e!2973652 () Bool)

(assert (=> b!4764523 (= e!2973651 e!2973652)))

(declare-fun mapNonEmpty!21746 () Bool)

(declare-fun mapRes!21746 () Bool)

(declare-fun tp!1354764 () Bool)

(declare-fun tp!1354758 () Bool)

(assert (=> mapNonEmpty!21746 (= mapRes!21746 (and tp!1354764 tp!1354758))))

(declare-datatypes ((K!14884 0))(
  ( (K!14885 (val!20213 Int)) )
))
(declare-datatypes ((V!15130 0))(
  ( (V!15131 (val!20214 Int)) )
))
(declare-datatypes ((tuple2!55428 0))(
  ( (tuple2!55429 (_1!31008 K!14884) (_2!31008 V!15130)) )
))
(declare-datatypes ((List!53558 0))(
  ( (Nil!53434) (Cons!53434 (h!59846 tuple2!55428) (t!360962 List!53558)) )
))
(declare-fun mapValue!21746 () List!53558)

(declare-datatypes ((array!17888 0))(
  ( (array!17889 (arr!7979 (Array (_ BitVec 32) (_ BitVec 64))) (size!36209 (_ BitVec 32))) )
))
(declare-datatypes ((array!17890 0))(
  ( (array!17891 (arr!7980 (Array (_ BitVec 32) List!53558)) (size!36210 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6558 0))(
  ( (HashableExt!6557 (__x!32439 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9794 0))(
  ( (LongMapFixedSize!9795 (defaultEntry!5315 Int) (mask!14641 (_ BitVec 32)) (extraKeys!5172 (_ BitVec 32)) (zeroValue!5185 List!53558) (minValue!5185 List!53558) (_size!9819 (_ BitVec 32)) (_keys!5239 array!17888) (_values!5210 array!17890) (_vacant!4962 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19353 0))(
  ( (Cell!19354 (v!47526 LongMapFixedSize!9794)) )
))
(declare-datatypes ((MutLongMap!4897 0))(
  ( (LongMap!4897 (underlying!10001 Cell!19353)) (MutLongMapExt!4896 (__x!32440 Int)) )
))
(declare-datatypes ((Cell!19355 0))(
  ( (Cell!19356 (v!47527 MutLongMap!4897)) )
))
(declare-datatypes ((MutableMap!4781 0))(
  ( (MutableMapExt!4780 (__x!32441 Int)) (HashMap!4781 (underlying!10002 Cell!19355) (hashF!12383 Hashable!6558) (_size!9820 (_ BitVec 32)) (defaultValue!4952 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4781)

(declare-fun mapRest!21746 () (Array (_ BitVec 32) List!53558))

(declare-fun mapKey!21746 () (_ BitVec 32))

(assert (=> mapNonEmpty!21746 (= (arr!7980 (_values!5210 (v!47526 (underlying!10001 (v!47527 (underlying!10002 thiss!42052)))))) (store mapRest!21746 mapKey!21746 mapValue!21746))))

(declare-fun mapIsEmpty!21746 () Bool)

(assert (=> mapIsEmpty!21746 mapRes!21746))

(declare-fun res!2020781 () Bool)

(declare-fun e!2973647 () Bool)

(assert (=> start!487292 (=> (not res!2020781) (not e!2973647))))

(get-info :version)

(assert (=> start!487292 (= res!2020781 ((_ is HashMap!4781) thiss!42052))))

(assert (=> start!487292 e!2973647))

(declare-fun e!2973646 () Bool)

(assert (=> start!487292 e!2973646))

(declare-fun tp_is_empty!32371 () Bool)

(assert (=> start!487292 tp_is_empty!32371))

(declare-fun b!4764524 () Bool)

(declare-fun res!2020783 () Bool)

(assert (=> b!4764524 (=> (not res!2020783) (not e!2973647))))

(declare-fun valid!3895 (MutableMap!4781) Bool)

(assert (=> b!4764524 (= res!2020783 (valid!3895 thiss!42052))))

(declare-fun e!2973653 () Bool)

(assert (=> b!4764525 (= e!2973646 (and e!2973653 tp!1354760))))

(declare-fun b!4764526 () Bool)

(assert (=> b!4764526 (= e!2973647 (not ((_ is LongMap!4897) (v!47527 (underlying!10002 thiss!42052)))))))

(declare-datatypes ((Unit!138096 0))(
  ( (Unit!138097) )
))
(declare-fun lt!1927360 () Unit!138096)

(declare-fun e!2973648 () Unit!138096)

(assert (=> b!4764526 (= lt!1927360 e!2973648)))

(declare-datatypes ((tuple2!55430 0))(
  ( (tuple2!55431 (_1!31009 (_ BitVec 64)) (_2!31009 List!53558)) )
))
(declare-datatypes ((List!53559 0))(
  ( (Nil!53435) (Cons!53435 (h!59847 tuple2!55430) (t!360963 List!53559)) )
))
(declare-datatypes ((ListLongMap!4645 0))(
  ( (ListLongMap!4646 (toList!6252 List!53559)) )
))
(declare-fun lt!1927361 () ListLongMap!4645)

(declare-fun lt!1927364 () (_ BitVec 64))

(declare-fun c!812746 () Bool)

(declare-fun lt!1927362 () List!53558)

(declare-fun contains!16750 (List!53559 tuple2!55430) Bool)

(assert (=> b!4764526 (= c!812746 (not (contains!16750 (toList!6252 lt!1927361) (tuple2!55431 lt!1927364 lt!1927362))))))

(declare-fun apply!12582 (MutLongMap!4897 (_ BitVec 64)) List!53558)

(assert (=> b!4764526 (= lt!1927362 (apply!12582 (v!47527 (underlying!10002 thiss!42052)) lt!1927364))))

(declare-fun map!11934 (MutLongMap!4897) ListLongMap!4645)

(assert (=> b!4764526 (= lt!1927361 (map!11934 (v!47527 (underlying!10002 thiss!42052))))))

(declare-fun key!1776 () K!14884)

(declare-fun hash!4541 (Hashable!6558 K!14884) (_ BitVec 64))

(assert (=> b!4764526 (= lt!1927364 (hash!4541 (hashF!12383 thiss!42052) key!1776))))

(declare-fun b!4764527 () Bool)

(declare-fun res!2020782 () Bool)

(assert (=> b!4764527 (=> (not res!2020782) (not e!2973647))))

(declare-fun contains!16751 (MutableMap!4781 K!14884) Bool)

(assert (=> b!4764527 (= res!2020782 (contains!16751 thiss!42052 key!1776))))

(declare-fun tp!1354759 () Bool)

(declare-fun e!2973654 () Bool)

(declare-fun tp!1354763 () Bool)

(declare-fun array_inv!5739 (array!17888) Bool)

(declare-fun array_inv!5740 (array!17890) Bool)

(assert (=> b!4764528 (= e!2973652 (and tp!1354762 tp!1354763 tp!1354759 (array_inv!5739 (_keys!5239 (v!47526 (underlying!10001 (v!47527 (underlying!10002 thiss!42052)))))) (array_inv!5740 (_values!5210 (v!47526 (underlying!10001 (v!47527 (underlying!10002 thiss!42052)))))) e!2973654))))

(declare-fun b!4764529 () Bool)

(declare-fun Unit!138098 () Unit!138096)

(assert (=> b!4764529 (= e!2973648 Unit!138098)))

(declare-fun b!4764530 () Bool)

(declare-fun lt!1927358 () MutLongMap!4897)

(assert (=> b!4764530 (= e!2973653 (and e!2973649 ((_ is LongMap!4897) lt!1927358)))))

(assert (=> b!4764530 (= lt!1927358 (v!47527 (underlying!10002 thiss!42052)))))

(declare-fun b!4764531 () Bool)

(declare-fun tp!1354761 () Bool)

(assert (=> b!4764531 (= e!2973654 (and tp!1354761 mapRes!21746))))

(declare-fun condMapEmpty!21746 () Bool)

(declare-fun mapDefault!21746 () List!53558)

(assert (=> b!4764531 (= condMapEmpty!21746 (= (arr!7980 (_values!5210 (v!47526 (underlying!10001 (v!47527 (underlying!10002 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53558)) mapDefault!21746)))))

(declare-fun b!4764532 () Bool)

(declare-fun Unit!138099 () Unit!138096)

(assert (=> b!4764532 (= e!2973648 Unit!138099)))

(declare-fun lt!1927363 () Unit!138096)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1968 (List!53559 (_ BitVec 64)) Unit!138096)

(assert (=> b!4764532 (= lt!1927363 (lemmaContainsKeyImpliesGetValueByKeyDefined!1968 (toList!6252 lt!1927361) lt!1927364))))

(declare-datatypes ((Option!12630 0))(
  ( (None!12629) (Some!12629 (v!47528 List!53558)) )
))
(declare-fun isDefined!9803 (Option!12630) Bool)

(declare-fun getValueByKey!2154 (List!53559 (_ BitVec 64)) Option!12630)

(assert (=> b!4764532 (isDefined!9803 (getValueByKey!2154 (toList!6252 lt!1927361) lt!1927364))))

(declare-fun lt!1927359 () Unit!138096)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!912 (List!53559 (_ BitVec 64) List!53558) Unit!138096)

(assert (=> b!4764532 (= lt!1927359 (lemmaGetValueByKeyImpliesContainsTuple!912 (toList!6252 lt!1927361) lt!1927364 lt!1927362))))

(assert (=> b!4764532 false))

(assert (= (and start!487292 res!2020781) b!4764524))

(assert (= (and b!4764524 res!2020783) b!4764527))

(assert (= (and b!4764527 res!2020782) b!4764526))

(assert (= (and b!4764526 c!812746) b!4764532))

(assert (= (and b!4764526 (not c!812746)) b!4764529))

(assert (= (and b!4764531 condMapEmpty!21746) mapIsEmpty!21746))

(assert (= (and b!4764531 (not condMapEmpty!21746)) mapNonEmpty!21746))

(assert (= b!4764528 b!4764531))

(assert (= b!4764523 b!4764528))

(assert (= b!4764522 b!4764523))

(assert (= (and b!4764530 ((_ is LongMap!4897) (v!47527 (underlying!10002 thiss!42052)))) b!4764522))

(assert (= b!4764525 b!4764530))

(assert (= (and start!487292 ((_ is HashMap!4781) thiss!42052)) b!4764525))

(declare-fun m!5735018 () Bool)

(assert (=> b!4764524 m!5735018))

(declare-fun m!5735020 () Bool)

(assert (=> b!4764528 m!5735020))

(declare-fun m!5735022 () Bool)

(assert (=> b!4764528 m!5735022))

(declare-fun m!5735024 () Bool)

(assert (=> mapNonEmpty!21746 m!5735024))

(declare-fun m!5735026 () Bool)

(assert (=> b!4764526 m!5735026))

(declare-fun m!5735028 () Bool)

(assert (=> b!4764526 m!5735028))

(declare-fun m!5735030 () Bool)

(assert (=> b!4764526 m!5735030))

(declare-fun m!5735032 () Bool)

(assert (=> b!4764526 m!5735032))

(declare-fun m!5735034 () Bool)

(assert (=> b!4764527 m!5735034))

(declare-fun m!5735036 () Bool)

(assert (=> b!4764532 m!5735036))

(declare-fun m!5735038 () Bool)

(assert (=> b!4764532 m!5735038))

(assert (=> b!4764532 m!5735038))

(declare-fun m!5735040 () Bool)

(assert (=> b!4764532 m!5735040))

(declare-fun m!5735042 () Bool)

(assert (=> b!4764532 m!5735042))

(check-sat (not b_next!130323) (not b!4764526) b_and!341221 (not b!4764524) b_and!341223 tp_is_empty!32371 (not b!4764527) (not b!4764531) (not b!4764532) (not b_next!130321) (not b!4764528) (not mapNonEmpty!21746))
(check-sat b_and!341223 b_and!341221 (not b_next!130323) (not b_next!130321))
