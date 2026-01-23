; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272016 () Bool)

(assert start!272016)

(declare-fun b!2810865 () Bool)

(declare-fun b_free!80269 () Bool)

(declare-fun b_next!80973 () Bool)

(assert (=> b!2810865 (= b_free!80269 (not b_next!80973))))

(declare-fun tp!897639 () Bool)

(declare-fun b_and!205559 () Bool)

(assert (=> b!2810865 (= tp!897639 b_and!205559)))

(declare-fun b!2810860 () Bool)

(declare-fun b_free!80271 () Bool)

(declare-fun b_next!80975 () Bool)

(assert (=> b!2810860 (= b_free!80271 (not b_next!80975))))

(declare-fun tp!897642 () Bool)

(declare-fun b_and!205561 () Bool)

(assert (=> b!2810860 (= tp!897642 b_and!205561)))

(declare-fun b!2810856 () Bool)

(declare-fun res!1170317 () Bool)

(declare-fun e!1777671 () Bool)

(assert (=> b!2810856 (=> (not res!1170317) (not e!1777671))))

(declare-datatypes ((K!6372 0))(
  ( (K!6373 (val!10315 Int)) )
))
(declare-datatypes ((V!6574 0))(
  ( (V!6575 (val!10316 Int)) )
))
(declare-datatypes ((tuple2!33342 0))(
  ( (tuple2!33343 (_1!19764 K!6372) (_2!19764 V!6574)) )
))
(declare-datatypes ((List!32923 0))(
  ( (Nil!32821) (Cons!32821 (h!38241 tuple2!33342) (t!229871 List!32923)) )
))
(declare-datatypes ((array!14455 0))(
  ( (array!14456 (arr!6440 (Array (_ BitVec 32) List!32923)) (size!25589 (_ BitVec 32))) )
))
(declare-datatypes ((array!14457 0))(
  ( (array!14458 (arr!6441 (Array (_ BitVec 32) (_ BitVec 64))) (size!25590 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8132 0))(
  ( (LongMapFixedSize!8133 (defaultEntry!4451 Int) (mask!9950 (_ BitVec 32)) (extraKeys!4315 (_ BitVec 32)) (zeroValue!4325 List!32923) (minValue!4325 List!32923) (_size!8175 (_ BitVec 32)) (_keys!4366 array!14457) (_values!4347 array!14455) (_vacant!4127 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16073 0))(
  ( (Cell!16074 (v!34236 LongMapFixedSize!8132)) )
))
(declare-datatypes ((MutLongMap!4066 0))(
  ( (LongMap!4066 (underlying!8339 Cell!16073)) (MutLongMapExt!4065 (__x!21952 Int)) )
))
(declare-datatypes ((Cell!16075 0))(
  ( (Cell!16076 (v!34237 MutLongMap!4066)) )
))
(declare-datatypes ((Hashable!3982 0))(
  ( (HashableExt!3981 (__x!21953 Int)) )
))
(declare-datatypes ((MutableMap!3972 0))(
  ( (MutableMapExt!3971 (__x!21954 Int)) (HashMap!3972 (underlying!8340 Cell!16075) (hashF!6014 Hashable!3982) (_size!8176 (_ BitVec 32)) (defaultValue!4143 Int)) )
))
(declare-datatypes ((tuple2!33344 0))(
  ( (tuple2!33345 (_1!19765 Bool) (_2!19765 MutableMap!3972)) )
))
(declare-fun lt!1004112 () tuple2!33344)

(assert (=> b!2810856 (= res!1170317 (not (_1!19765 lt!1004112)))))

(declare-fun b!2810857 () Bool)

(declare-fun res!1170315 () Bool)

(declare-fun e!1777668 () Bool)

(assert (=> b!2810857 (=> (not res!1170315) (not e!1777668))))

(declare-fun thiss!47942 () MutableMap!3972)

(declare-fun valid!3185 (MutableMap!3972) Bool)

(assert (=> b!2810857 (= res!1170315 (valid!3185 thiss!47942))))

(declare-fun b!2810858 () Bool)

(assert (=> b!2810858 (= e!1777668 e!1777671)))

(declare-fun res!1170318 () Bool)

(assert (=> b!2810858 (=> (not res!1170318) (not e!1777671))))

(get-info :version)

(assert (=> b!2810858 (= res!1170318 ((_ is MutableMapExt!3971) (_2!19765 lt!1004112)))))

(declare-fun key!7271 () K!6372)

(declare-fun choose!16571 (MutableMap!3972 K!6372) tuple2!33344)

(assert (=> b!2810858 (= lt!1004112 (choose!16571 thiss!47942 key!7271))))

(declare-fun b!2810859 () Bool)

(declare-fun e!1777665 () Bool)

(declare-fun e!1777667 () Bool)

(declare-fun lt!1004110 () MutLongMap!4066)

(assert (=> b!2810859 (= e!1777665 (and e!1777667 ((_ is LongMap!4066) lt!1004110)))))

(assert (=> b!2810859 (= lt!1004110 (v!34237 (underlying!8340 thiss!47942)))))

(declare-fun e!1777670 () Bool)

(assert (=> b!2810860 (= e!1777670 (and e!1777665 tp!897642))))

(declare-fun b!2810861 () Bool)

(declare-fun e!1777669 () Bool)

(assert (=> b!2810861 (= e!1777667 e!1777669)))

(declare-fun b!2810862 () Bool)

(declare-fun e!1777666 () Bool)

(declare-fun tp!897644 () Bool)

(declare-fun mapRes!18470 () Bool)

(assert (=> b!2810862 (= e!1777666 (and tp!897644 mapRes!18470))))

(declare-fun condMapEmpty!18470 () Bool)

(declare-fun mapDefault!18470 () List!32923)

(assert (=> b!2810862 (= condMapEmpty!18470 (= (arr!6440 (_values!4347 (v!34236 (underlying!8339 (v!34237 (underlying!8340 thiss!47942)))))) ((as const (Array (_ BitVec 32) List!32923)) mapDefault!18470)))))

(declare-fun b!2810863 () Bool)

(declare-fun res!1170314 () Bool)

(assert (=> b!2810863 (=> (not res!1170314) (not e!1777671))))

(assert (=> b!2810863 (= res!1170314 (valid!3185 (_2!19765 lt!1004112)))))

(declare-fun b!2810864 () Bool)

(declare-fun e!1777664 () Bool)

(assert (=> b!2810864 (= e!1777669 e!1777664)))

(declare-fun res!1170316 () Bool)

(assert (=> start!272016 (=> (not res!1170316) (not e!1777668))))

(assert (=> start!272016 (= res!1170316 ((_ is MutableMapExt!3971) thiss!47942))))

(assert (=> start!272016 e!1777668))

(assert (=> start!272016 e!1777670))

(declare-fun tp_is_empty!14359 () Bool)

(assert (=> start!272016 tp_is_empty!14359))

(declare-fun mapIsEmpty!18470 () Bool)

(assert (=> mapIsEmpty!18470 mapRes!18470))

(declare-fun mapNonEmpty!18470 () Bool)

(declare-fun tp!897638 () Bool)

(declare-fun tp!897640 () Bool)

(assert (=> mapNonEmpty!18470 (= mapRes!18470 (and tp!897638 tp!897640))))

(declare-fun mapKey!18470 () (_ BitVec 32))

(declare-fun mapRest!18470 () (Array (_ BitVec 32) List!32923))

(declare-fun mapValue!18470 () List!32923)

(assert (=> mapNonEmpty!18470 (= (arr!6440 (_values!4347 (v!34236 (underlying!8339 (v!34237 (underlying!8340 thiss!47942)))))) (store mapRest!18470 mapKey!18470 mapValue!18470))))

(declare-fun tp!897641 () Bool)

(declare-fun tp!897643 () Bool)

(declare-fun array_inv!4612 (array!14457) Bool)

(declare-fun array_inv!4613 (array!14455) Bool)

(assert (=> b!2810865 (= e!1777664 (and tp!897639 tp!897641 tp!897643 (array_inv!4612 (_keys!4366 (v!34236 (underlying!8339 (v!34237 (underlying!8340 thiss!47942)))))) (array_inv!4613 (_values!4347 (v!34236 (underlying!8339 (v!34237 (underlying!8340 thiss!47942)))))) e!1777666))))

(declare-fun b!2810866 () Bool)

(assert (=> b!2810866 (= e!1777671 false)))

(declare-datatypes ((ListMap!1273 0))(
  ( (ListMap!1274 (toList!1894 List!32923)) )
))
(declare-fun lt!1004111 () ListMap!1273)

(declare-fun abstractMap!123 (MutableMap!3972) ListMap!1273)

(assert (=> b!2810866 (= lt!1004111 (abstractMap!123 (_2!19765 lt!1004112)))))

(assert (= (and start!272016 res!1170316) b!2810857))

(assert (= (and b!2810857 res!1170315) b!2810858))

(assert (= (and b!2810858 res!1170318) b!2810863))

(assert (= (and b!2810863 res!1170314) b!2810856))

(assert (= (and b!2810856 res!1170317) b!2810866))

(assert (= (and b!2810862 condMapEmpty!18470) mapIsEmpty!18470))

(assert (= (and b!2810862 (not condMapEmpty!18470)) mapNonEmpty!18470))

(assert (= b!2810865 b!2810862))

(assert (= b!2810864 b!2810865))

(assert (= b!2810861 b!2810864))

(assert (= (and b!2810859 ((_ is LongMap!4066) (v!34237 (underlying!8340 thiss!47942)))) b!2810861))

(assert (= b!2810860 b!2810859))

(assert (= (and start!272016 ((_ is HashMap!3972) thiss!47942)) b!2810860))

(declare-fun m!3240615 () Bool)

(assert (=> b!2810858 m!3240615))

(declare-fun m!3240617 () Bool)

(assert (=> b!2810863 m!3240617))

(declare-fun m!3240619 () Bool)

(assert (=> b!2810865 m!3240619))

(declare-fun m!3240621 () Bool)

(assert (=> b!2810865 m!3240621))

(declare-fun m!3240623 () Bool)

(assert (=> b!2810857 m!3240623))

(declare-fun m!3240625 () Bool)

(assert (=> mapNonEmpty!18470 m!3240625))

(declare-fun m!3240627 () Bool)

(assert (=> b!2810866 m!3240627))

(check-sat (not mapNonEmpty!18470) (not b!2810862) tp_is_empty!14359 (not b!2810866) (not b!2810863) (not b_next!80975) (not b!2810858) (not b_next!80973) (not b!2810857) (not b!2810865) b_and!205559 b_and!205561)
(check-sat b_and!205559 b_and!205561 (not b_next!80973) (not b_next!80975))
