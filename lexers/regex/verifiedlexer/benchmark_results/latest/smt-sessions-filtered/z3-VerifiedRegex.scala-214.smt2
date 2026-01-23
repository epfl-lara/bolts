; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3386 () Bool)

(assert start!3386)

(declare-fun b!48339 () Bool)

(declare-fun b_free!1357 () Bool)

(declare-fun b_next!1357 () Bool)

(assert (=> b!48339 (= b_free!1357 (not b_next!1357))))

(declare-fun tp!32621 () Bool)

(declare-fun b_and!1393 () Bool)

(assert (=> b!48339 (= tp!32621 b_and!1393)))

(declare-fun b!48337 () Bool)

(declare-fun b_free!1359 () Bool)

(declare-fun b_next!1359 () Bool)

(assert (=> b!48337 (= b_free!1359 (not b_next!1359))))

(declare-fun tp!32623 () Bool)

(declare-fun b_and!1395 () Bool)

(assert (=> b!48337 (= tp!32623 b_and!1395)))

(declare-fun b!48331 () Bool)

(declare-fun e!28094 () Bool)

(declare-fun e!28093 () Bool)

(assert (=> b!48331 (= e!28094 e!28093)))

(declare-fun b!48333 () Bool)

(declare-fun e!28092 () Bool)

(assert (=> b!48333 (= e!28093 e!28092)))

(declare-fun mapIsEmpty!1159 () Bool)

(declare-fun mapRes!1159 () Bool)

(assert (=> mapIsEmpty!1159 mapRes!1159))

(declare-fun b!48334 () Bool)

(declare-fun e!28098 () Bool)

(declare-fun tp!32627 () Bool)

(assert (=> b!48334 (= e!28098 (and tp!32627 mapRes!1159))))

(declare-fun condMapEmpty!1159 () Bool)

(declare-datatypes ((K!595 0))(
  ( (K!596 (val!276 Int)) )
))
(declare-datatypes ((V!649 0))(
  ( (V!650 (val!277 Int)) )
))
(declare-datatypes ((tuple2!1070 0))(
  ( (tuple2!1071 (_1!742 K!595) (_2!742 V!649)) )
))
(declare-datatypes ((List!837 0))(
  ( (Nil!831) (Cons!831 (h!6227 tuple2!1070) (t!17034 List!837)) )
))
(declare-datatypes ((array!1012 0))(
  ( (array!1013 (arr!476 (Array (_ BitVec 32) (_ BitVec 64))) (size!825 (_ BitVec 32))) )
))
(declare-datatypes ((array!1014 0))(
  ( (array!1015 (arr!477 (Array (_ BitVec 32) List!837)) (size!826 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!590 0))(
  ( (LongMapFixedSize!591 (defaultEntry!634 Int) (mask!1034 (_ BitVec 32)) (extraKeys!541 (_ BitVec 32)) (zeroValue!551 List!837) (minValue!551 List!837) (_size!723 (_ BitVec 32)) (_keys!586 array!1012) (_values!573 array!1014) (_vacant!356 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1169 0))(
  ( (Cell!1170 (v!12605 LongMapFixedSize!590)) )
))
(declare-datatypes ((MutLongMap!295 0))(
  ( (LongMap!295 (underlying!789 Cell!1169)) (MutLongMapExt!294 (__x!1398 Int)) )
))
(declare-datatypes ((Hashable!291 0))(
  ( (HashableExt!290 (__x!1399 Int)) )
))
(declare-datatypes ((Cell!1171 0))(
  ( (Cell!1172 (v!12606 MutLongMap!295)) )
))
(declare-datatypes ((MutableMap!291 0))(
  ( (MutableMapExt!290 (__x!1400 Int)) (HashMap!291 (underlying!790 Cell!1171) (hashF!2160 Hashable!291) (_size!724 (_ BitVec 32)) (defaultValue!440 Int)) )
))
(declare-fun thiss!47822 () MutableMap!291)

(declare-fun mapDefault!1159 () List!837)

(assert (=> b!48334 (= condMapEmpty!1159 (= (arr!477 (_values!573 (v!12605 (underlying!789 (v!12606 (underlying!790 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!837)) mapDefault!1159)))))

(declare-fun b!48335 () Bool)

(declare-fun res!32100 () Bool)

(declare-fun e!28095 () Bool)

(assert (=> b!48335 (=> (not res!32100) (not e!28095))))

(declare-datatypes ((tuple2!1072 0))(
  ( (tuple2!1073 (_1!743 Bool) (_2!743 MutableMap!291)) )
))
(declare-fun lt!6952 () tuple2!1072)

(assert (=> b!48335 (= res!32100 (_1!743 lt!6952))))

(declare-fun b!48336 () Bool)

(declare-fun e!28096 () Bool)

(assert (=> b!48336 (= e!28096 e!28095)))

(declare-fun res!32102 () Bool)

(assert (=> b!48336 (=> (not res!32102) (not e!28095))))

(declare-fun valid!269 (MutableMap!291) Bool)

(assert (=> b!48336 (= res!32102 (valid!269 (_2!743 lt!6952)))))

(declare-fun key!7227 () K!595)

(declare-fun v!11804 () V!649)

(declare-fun update!30 (MutableMap!291 K!595 V!649) tuple2!1072)

(assert (=> b!48336 (= lt!6952 (update!30 thiss!47822 key!7227 v!11804))))

(declare-fun e!28097 () Bool)

(declare-fun e!28099 () Bool)

(assert (=> b!48337 (= e!28097 (and e!28099 tp!32623))))

(declare-fun b!48338 () Bool)

(declare-fun lt!6950 () MutLongMap!295)

(get-info :version)

(assert (=> b!48338 (= e!28099 (and e!28094 ((_ is LongMap!295) lt!6950)))))

(assert (=> b!48338 (= lt!6950 (v!12606 (underlying!790 thiss!47822)))))

(declare-fun mapNonEmpty!1159 () Bool)

(declare-fun tp!32624 () Bool)

(declare-fun tp!32625 () Bool)

(assert (=> mapNonEmpty!1159 (= mapRes!1159 (and tp!32624 tp!32625))))

(declare-fun mapKey!1159 () (_ BitVec 32))

(declare-fun mapRest!1159 () (Array (_ BitVec 32) List!837))

(declare-fun mapValue!1159 () List!837)

(assert (=> mapNonEmpty!1159 (= (arr!477 (_values!573 (v!12605 (underlying!789 (v!12606 (underlying!790 thiss!47822)))))) (store mapRest!1159 mapKey!1159 mapValue!1159))))

(declare-fun b!48332 () Bool)

(declare-fun res!32101 () Bool)

(assert (=> b!48332 (=> (not res!32101) (not e!28096))))

(assert (=> b!48332 (= res!32101 (not ((_ is MutableMapExt!290) thiss!47822)))))

(declare-fun res!32099 () Bool)

(assert (=> start!3386 (=> (not res!32099) (not e!28096))))

(assert (=> start!3386 (= res!32099 (valid!269 thiss!47822))))

(assert (=> start!3386 e!28096))

(assert (=> start!3386 e!28097))

(declare-fun tp_is_empty!463 () Bool)

(assert (=> start!3386 tp_is_empty!463))

(declare-fun tp_is_empty!465 () Bool)

(assert (=> start!3386 tp_is_empty!465))

(declare-fun tp!32626 () Bool)

(declare-fun tp!32622 () Bool)

(declare-fun array_inv!325 (array!1012) Bool)

(declare-fun array_inv!326 (array!1014) Bool)

(assert (=> b!48339 (= e!28092 (and tp!32621 tp!32626 tp!32622 (array_inv!325 (_keys!586 (v!12605 (underlying!789 (v!12606 (underlying!790 thiss!47822)))))) (array_inv!326 (_values!573 (v!12605 (underlying!789 (v!12606 (underlying!790 thiss!47822)))))) e!28098))))

(declare-fun b!48340 () Bool)

(assert (=> b!48340 (= e!28095 false)))

(declare-fun lt!6951 () Bool)

(declare-datatypes ((ListMap!65 0))(
  ( (ListMap!66 (toList!187 List!837)) )
))
(declare-fun contains!35 (ListMap!65 K!595) Bool)

(declare-fun abstractMap!9 (MutableMap!291) ListMap!65)

(assert (=> b!48340 (= lt!6951 (contains!35 (abstractMap!9 (_2!743 lt!6952)) key!7227))))

(assert (= (and start!3386 res!32099) b!48332))

(assert (= (and b!48332 res!32101) b!48336))

(assert (= (and b!48336 res!32102) b!48335))

(assert (= (and b!48335 res!32100) b!48340))

(assert (= (and b!48334 condMapEmpty!1159) mapIsEmpty!1159))

(assert (= (and b!48334 (not condMapEmpty!1159)) mapNonEmpty!1159))

(assert (= b!48339 b!48334))

(assert (= b!48333 b!48339))

(assert (= b!48331 b!48333))

(assert (= (and b!48338 ((_ is LongMap!295) (v!12606 (underlying!790 thiss!47822)))) b!48331))

(assert (= b!48337 b!48338))

(assert (= (and start!3386 ((_ is HashMap!291) thiss!47822)) b!48337))

(declare-fun m!22124 () Bool)

(assert (=> b!48340 m!22124))

(assert (=> b!48340 m!22124))

(declare-fun m!22126 () Bool)

(assert (=> b!48340 m!22126))

(declare-fun m!22128 () Bool)

(assert (=> start!3386 m!22128))

(declare-fun m!22130 () Bool)

(assert (=> mapNonEmpty!1159 m!22130))

(declare-fun m!22132 () Bool)

(assert (=> b!48339 m!22132))

(declare-fun m!22134 () Bool)

(assert (=> b!48339 m!22134))

(declare-fun m!22136 () Bool)

(assert (=> b!48336 m!22136))

(declare-fun m!22138 () Bool)

(assert (=> b!48336 m!22138))

(check-sat (not b!48339) (not b_next!1357) b_and!1393 tp_is_empty!465 (not start!3386) (not mapNonEmpty!1159) (not b!48336) b_and!1395 (not b_next!1359) (not b!48340) (not b!48334) tp_is_empty!463)
(check-sat b_and!1393 b_and!1395 (not b_next!1359) (not b_next!1357))
