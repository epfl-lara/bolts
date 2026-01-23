; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272012 () Bool)

(assert start!272012)

(declare-fun b!2810795 () Bool)

(declare-fun b_free!80261 () Bool)

(declare-fun b_next!80965 () Bool)

(assert (=> b!2810795 (= b_free!80261 (not b_next!80965))))

(declare-fun tp!897597 () Bool)

(declare-fun b_and!205551 () Bool)

(assert (=> b!2810795 (= tp!897597 b_and!205551)))

(declare-fun b!2810793 () Bool)

(declare-fun b_free!80263 () Bool)

(declare-fun b_next!80967 () Bool)

(assert (=> b!2810793 (= b_free!80263 (not b_next!80967))))

(declare-fun tp!897598 () Bool)

(declare-fun b_and!205553 () Bool)

(assert (=> b!2810793 (= tp!897598 b_and!205553)))

(declare-fun mapIsEmpty!18464 () Bool)

(declare-fun mapRes!18464 () Bool)

(assert (=> mapIsEmpty!18464 mapRes!18464))

(declare-fun b!2810790 () Bool)

(declare-fun e!1777612 () Bool)

(declare-fun tp!897601 () Bool)

(assert (=> b!2810790 (= e!1777612 (and tp!897601 mapRes!18464))))

(declare-fun condMapEmpty!18464 () Bool)

(declare-datatypes ((K!6367 0))(
  ( (K!6368 (val!10311 Int)) )
))
(declare-datatypes ((V!6569 0))(
  ( (V!6570 (val!10312 Int)) )
))
(declare-datatypes ((tuple2!33334 0))(
  ( (tuple2!33335 (_1!19760 K!6367) (_2!19760 V!6569)) )
))
(declare-datatypes ((List!32921 0))(
  ( (Nil!32819) (Cons!32819 (h!38239 tuple2!33334) (t!229869 List!32921)) )
))
(declare-datatypes ((array!14447 0))(
  ( (array!14448 (arr!6436 (Array (_ BitVec 32) List!32921)) (size!25585 (_ BitVec 32))) )
))
(declare-datatypes ((array!14449 0))(
  ( (array!14450 (arr!6437 (Array (_ BitVec 32) (_ BitVec 64))) (size!25586 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8128 0))(
  ( (LongMapFixedSize!8129 (defaultEntry!4449 Int) (mask!9947 (_ BitVec 32)) (extraKeys!4313 (_ BitVec 32)) (zeroValue!4323 List!32921) (minValue!4323 List!32921) (_size!8171 (_ BitVec 32)) (_keys!4364 array!14449) (_values!4345 array!14447) (_vacant!4125 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16065 0))(
  ( (Cell!16066 (v!34232 LongMapFixedSize!8128)) )
))
(declare-datatypes ((MutLongMap!4064 0))(
  ( (LongMap!4064 (underlying!8335 Cell!16065)) (MutLongMapExt!4063 (__x!21946 Int)) )
))
(declare-datatypes ((Cell!16067 0))(
  ( (Cell!16068 (v!34233 MutLongMap!4064)) )
))
(declare-datatypes ((Hashable!3980 0))(
  ( (HashableExt!3979 (__x!21947 Int)) )
))
(declare-datatypes ((MutableMap!3970 0))(
  ( (MutableMapExt!3969 (__x!21948 Int)) (HashMap!3970 (underlying!8336 Cell!16067) (hashF!6012 Hashable!3980) (_size!8172 (_ BitVec 32)) (defaultValue!4141 Int)) )
))
(declare-fun thiss!47942 () MutableMap!3970)

(declare-fun mapDefault!18464 () List!32921)

(assert (=> b!2810790 (= condMapEmpty!18464 (= (arr!6436 (_values!4345 (v!34232 (underlying!8335 (v!34233 (underlying!8336 thiss!47942)))))) ((as const (Array (_ BitVec 32) List!32921)) mapDefault!18464)))))

(declare-fun mapNonEmpty!18464 () Bool)

(declare-fun tp!897596 () Bool)

(declare-fun tp!897602 () Bool)

(assert (=> mapNonEmpty!18464 (= mapRes!18464 (and tp!897596 tp!897602))))

(declare-fun mapValue!18464 () List!32921)

(declare-fun mapRest!18464 () (Array (_ BitVec 32) List!32921))

(declare-fun mapKey!18464 () (_ BitVec 32))

(assert (=> mapNonEmpty!18464 (= (arr!6436 (_values!4345 (v!34232 (underlying!8335 (v!34233 (underlying!8336 thiss!47942)))))) (store mapRest!18464 mapKey!18464 mapValue!18464))))

(declare-fun b!2810791 () Bool)

(declare-fun e!1777617 () Bool)

(assert (=> b!2810791 (= e!1777617 false)))

(declare-datatypes ((ListMap!1271 0))(
  ( (ListMap!1272 (toList!1893 List!32921)) )
))
(declare-fun lt!1004094 () ListMap!1271)

(declare-datatypes ((tuple2!33336 0))(
  ( (tuple2!33337 (_1!19761 Bool) (_2!19761 MutableMap!3970)) )
))
(declare-fun lt!1004093 () tuple2!33336)

(declare-fun abstractMap!122 (MutableMap!3970) ListMap!1271)

(assert (=> b!2810791 (= lt!1004094 (abstractMap!122 (_2!19761 lt!1004093)))))

(declare-fun b!2810792 () Bool)

(declare-fun e!1777610 () Bool)

(assert (=> b!2810792 (= e!1777610 e!1777617)))

(declare-fun res!1170288 () Bool)

(assert (=> b!2810792 (=> (not res!1170288) (not e!1777617))))

(get-info :version)

(assert (=> b!2810792 (= res!1170288 ((_ is MutableMapExt!3969) (_2!19761 lt!1004093)))))

(declare-fun key!7271 () K!6367)

(declare-fun choose!16569 (MutableMap!3970 K!6367) tuple2!33336)

(assert (=> b!2810792 (= lt!1004093 (choose!16569 thiss!47942 key!7271))))

(declare-fun e!1777614 () Bool)

(declare-fun e!1777616 () Bool)

(assert (=> b!2810793 (= e!1777614 (and e!1777616 tp!897598))))

(declare-fun b!2810794 () Bool)

(declare-fun res!1170284 () Bool)

(assert (=> b!2810794 (=> (not res!1170284) (not e!1777617))))

(declare-fun valid!3183 (MutableMap!3970) Bool)

(assert (=> b!2810794 (= res!1170284 (valid!3183 (_2!19761 lt!1004093)))))

(declare-fun e!1777615 () Bool)

(declare-fun tp!897599 () Bool)

(declare-fun tp!897600 () Bool)

(declare-fun array_inv!4610 (array!14449) Bool)

(declare-fun array_inv!4611 (array!14447) Bool)

(assert (=> b!2810795 (= e!1777615 (and tp!897597 tp!897599 tp!897600 (array_inv!4610 (_keys!4364 (v!34232 (underlying!8335 (v!34233 (underlying!8336 thiss!47942)))))) (array_inv!4611 (_values!4345 (v!34232 (underlying!8335 (v!34233 (underlying!8336 thiss!47942)))))) e!1777612))))

(declare-fun b!2810796 () Bool)

(declare-fun e!1777611 () Bool)

(declare-fun e!1777613 () Bool)

(assert (=> b!2810796 (= e!1777611 e!1777613)))

(declare-fun b!2810797 () Bool)

(assert (=> b!2810797 (= e!1777613 e!1777615)))

(declare-fun b!2810798 () Bool)

(declare-fun lt!1004092 () MutLongMap!4064)

(assert (=> b!2810798 (= e!1777616 (and e!1777611 ((_ is LongMap!4064) lt!1004092)))))

(assert (=> b!2810798 (= lt!1004092 (v!34233 (underlying!8336 thiss!47942)))))

(declare-fun res!1170287 () Bool)

(assert (=> start!272012 (=> (not res!1170287) (not e!1777610))))

(assert (=> start!272012 (= res!1170287 ((_ is MutableMapExt!3969) thiss!47942))))

(assert (=> start!272012 e!1777610))

(assert (=> start!272012 e!1777614))

(declare-fun tp_is_empty!14355 () Bool)

(assert (=> start!272012 tp_is_empty!14355))

(declare-fun b!2810799 () Bool)

(declare-fun res!1170286 () Bool)

(assert (=> b!2810799 (=> (not res!1170286) (not e!1777610))))

(assert (=> b!2810799 (= res!1170286 (valid!3183 thiss!47942))))

(declare-fun b!2810800 () Bool)

(declare-fun res!1170285 () Bool)

(assert (=> b!2810800 (=> (not res!1170285) (not e!1777617))))

(assert (=> b!2810800 (= res!1170285 (_1!19761 lt!1004093))))

(assert (= (and start!272012 res!1170287) b!2810799))

(assert (= (and b!2810799 res!1170286) b!2810792))

(assert (= (and b!2810792 res!1170288) b!2810794))

(assert (= (and b!2810794 res!1170284) b!2810800))

(assert (= (and b!2810800 res!1170285) b!2810791))

(assert (= (and b!2810790 condMapEmpty!18464) mapIsEmpty!18464))

(assert (= (and b!2810790 (not condMapEmpty!18464)) mapNonEmpty!18464))

(assert (= b!2810795 b!2810790))

(assert (= b!2810797 b!2810795))

(assert (= b!2810796 b!2810797))

(assert (= (and b!2810798 ((_ is LongMap!4064) (v!34233 (underlying!8336 thiss!47942)))) b!2810796))

(assert (= b!2810793 b!2810798))

(assert (= (and start!272012 ((_ is HashMap!3970) thiss!47942)) b!2810793))

(declare-fun m!3240587 () Bool)

(assert (=> b!2810792 m!3240587))

(declare-fun m!3240589 () Bool)

(assert (=> mapNonEmpty!18464 m!3240589))

(declare-fun m!3240591 () Bool)

(assert (=> b!2810795 m!3240591))

(declare-fun m!3240593 () Bool)

(assert (=> b!2810795 m!3240593))

(declare-fun m!3240595 () Bool)

(assert (=> b!2810791 m!3240595))

(declare-fun m!3240597 () Bool)

(assert (=> b!2810794 m!3240597))

(declare-fun m!3240599 () Bool)

(assert (=> b!2810799 m!3240599))

(check-sat (not b!2810792) tp_is_empty!14355 (not b!2810799) (not b_next!80965) (not b!2810794) (not b!2810791) (not mapNonEmpty!18464) b_and!205553 b_and!205551 (not b_next!80967) (not b!2810795) (not b!2810790))
(check-sat b_and!205551 b_and!205553 (not b_next!80965) (not b_next!80967))
