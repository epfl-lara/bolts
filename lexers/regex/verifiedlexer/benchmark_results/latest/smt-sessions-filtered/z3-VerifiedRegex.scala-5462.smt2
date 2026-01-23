; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277152 () Bool)

(assert start!277152)

(declare-fun b!2846313 () Bool)

(declare-fun b_free!82685 () Bool)

(declare-fun b_next!83389 () Bool)

(assert (=> b!2846313 (= b_free!82685 (not b_next!83389))))

(declare-fun tp!912881 () Bool)

(declare-fun b_and!208927 () Bool)

(assert (=> b!2846313 (= tp!912881 b_and!208927)))

(declare-fun b!2846298 () Bool)

(declare-fun b_free!82687 () Bool)

(declare-fun b_next!83391 () Bool)

(assert (=> b!2846298 (= b_free!82687 (not b_next!83391))))

(declare-fun tp!912877 () Bool)

(declare-fun b_and!208929 () Bool)

(assert (=> b!2846298 (= tp!912877 b_and!208929)))

(declare-fun b!2846302 () Bool)

(declare-fun b_free!82689 () Bool)

(declare-fun b_next!83393 () Bool)

(assert (=> b!2846302 (= b_free!82689 (not b_next!83393))))

(declare-fun tp!912865 () Bool)

(declare-fun b_and!208931 () Bool)

(assert (=> b!2846302 (= tp!912865 b_and!208931)))

(declare-fun b!2846309 () Bool)

(declare-fun b_free!82691 () Bool)

(declare-fun b_next!83395 () Bool)

(assert (=> b!2846309 (= b_free!82691 (not b_next!83395))))

(declare-fun tp!912880 () Bool)

(declare-fun b_and!208933 () Bool)

(assert (=> b!2846309 (= tp!912880 b_and!208933)))

(declare-fun b!2846296 () Bool)

(declare-fun e!1803416 () Bool)

(declare-fun e!1803421 () Bool)

(assert (=> b!2846296 (= e!1803416 e!1803421)))

(declare-fun b!2846297 () Bool)

(declare-fun e!1803414 () Bool)

(declare-fun e!1803404 () Bool)

(assert (=> b!2846297 (= e!1803414 e!1803404)))

(declare-fun e!1803410 () Bool)

(declare-fun e!1803417 () Bool)

(assert (=> b!2846298 (= e!1803410 (and e!1803417 tp!912877))))

(declare-fun mapNonEmpty!18622 () Bool)

(declare-fun mapRes!18623 () Bool)

(declare-fun tp!912868 () Bool)

(declare-fun tp!912876 () Bool)

(assert (=> mapNonEmpty!18622 (= mapRes!18623 (and tp!912868 tp!912876))))

(declare-datatypes ((C!17140 0))(
  ( (C!17141 (val!10604 Int)) )
))
(declare-datatypes ((Regex!8479 0))(
  ( (ElementMatch!8479 (c!459292 C!17140)) (Concat!13782 (regOne!17470 Regex!8479) (regTwo!17470 Regex!8479)) (EmptyExpr!8479) (Star!8479 (reg!8808 Regex!8479)) (EmptyLang!8479) (Union!8479 (regOne!17471 Regex!8479) (regTwo!17471 Regex!8479)) )
))
(declare-datatypes ((List!33897 0))(
  ( (Nil!33773) (Cons!33773 (h!39193 Regex!8479) (t!232920 List!33897)) )
))
(declare-datatypes ((Context!5014 0))(
  ( (Context!5015 (exprs!3007 List!33897)) )
))
(declare-datatypes ((tuple2!33618 0))(
  ( (tuple2!33619 (_1!19931 Context!5014) (_2!19931 C!17140)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33620 0))(
  ( (tuple2!33621 (_1!19932 tuple2!33618) (_2!19932 (InoxSet Context!5014))) )
))
(declare-datatypes ((List!33898 0))(
  ( (Nil!33774) (Cons!33774 (h!39194 tuple2!33620) (t!232921 List!33898)) )
))
(declare-fun mapRest!18623 () (Array (_ BitVec 32) List!33898))

(declare-fun mapValue!18623 () List!33898)

(declare-fun mapKey!18622 () (_ BitVec 32))

(declare-datatypes ((array!14584 0))(
  ( (array!14585 (arr!6499 (Array (_ BitVec 32) (_ BitVec 64))) (size!26222 (_ BitVec 32))) )
))
(declare-datatypes ((array!14586 0))(
  ( (array!14587 (arr!6500 (Array (_ BitVec 32) List!33898)) (size!26223 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8206 0))(
  ( (LongMapFixedSize!8207 (defaultEntry!4488 Int) (mask!10134 (_ BitVec 32)) (extraKeys!4352 (_ BitVec 32)) (zeroValue!4362 List!33898) (minValue!4362 List!33898) (_size!8249 (_ BitVec 32)) (_keys!4403 array!14584) (_values!4384 array!14586) (_vacant!4164 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16221 0))(
  ( (Cell!16222 (v!34403 LongMapFixedSize!8206)) )
))
(declare-datatypes ((MutLongMap!4103 0))(
  ( (LongMap!4103 (underlying!8435 Cell!16221)) (MutLongMapExt!4102 (__x!22379 Int)) )
))
(declare-datatypes ((Hashable!4019 0))(
  ( (HashableExt!4018 (__x!22380 Int)) )
))
(declare-datatypes ((Cell!16223 0))(
  ( (Cell!16224 (v!34404 MutLongMap!4103)) )
))
(declare-datatypes ((MutableMap!4009 0))(
  ( (MutableMapExt!4008 (__x!22381 Int)) (HashMap!4009 (underlying!8436 Cell!16223) (hashF!6051 Hashable!4019) (_size!8250 (_ BitVec 32)) (defaultValue!4180 Int)) )
))
(declare-datatypes ((CacheUp!2706 0))(
  ( (CacheUp!2707 (cache!4144 MutableMap!4009)) )
))
(declare-fun cacheUp!999 () CacheUp!2706)

(assert (=> mapNonEmpty!18622 (= (arr!6500 (_values!4384 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))) (store mapRest!18623 mapKey!18622 mapValue!18623))))

(declare-datatypes ((List!33899 0))(
  ( (Nil!33775) (Cons!33775 (h!39195 C!17140) (t!232922 List!33899)) )
))
(declare-datatypes ((IArray!20951 0))(
  ( (IArray!20952 (innerList!10533 List!33899)) )
))
(declare-datatypes ((Conc!10473 0))(
  ( (Node!10473 (left!25429 Conc!10473) (right!25759 Conc!10473) (csize!21176 Int) (cheight!10684 Int)) (Leaf!15936 (xs!13591 IArray!20951) (csize!21177 Int)) (Empty!10473) )
))
(declare-datatypes ((BalanceConc!20584 0))(
  ( (BalanceConc!20585 (c!459293 Conc!10473)) )
))
(declare-fun prefix!1325 () BalanceConc!20584)

(declare-datatypes ((tuple3!5304 0))(
  ( (tuple3!5305 (_1!19933 Regex!8479) (_2!19933 Context!5014) (_3!3122 C!17140)) )
))
(declare-datatypes ((tuple2!33622 0))(
  ( (tuple2!33623 (_1!19934 tuple3!5304) (_2!19934 (InoxSet Context!5014))) )
))
(declare-datatypes ((List!33900 0))(
  ( (Nil!33776) (Cons!33776 (h!39196 tuple2!33622) (t!232923 List!33900)) )
))
(declare-datatypes ((array!14588 0))(
  ( (array!14589 (arr!6501 (Array (_ BitVec 32) List!33900)) (size!26224 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8208 0))(
  ( (LongMapFixedSize!8209 (defaultEntry!4489 Int) (mask!10135 (_ BitVec 32)) (extraKeys!4353 (_ BitVec 32)) (zeroValue!4363 List!33900) (minValue!4363 List!33900) (_size!8251 (_ BitVec 32)) (_keys!4404 array!14584) (_values!4385 array!14588) (_vacant!4165 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16225 0))(
  ( (Cell!16226 (v!34405 LongMapFixedSize!8208)) )
))
(declare-datatypes ((MutLongMap!4104 0))(
  ( (LongMap!4104 (underlying!8437 Cell!16225)) (MutLongMapExt!4103 (__x!22382 Int)) )
))
(declare-datatypes ((Cell!16227 0))(
  ( (Cell!16228 (v!34406 MutLongMap!4104)) )
))
(declare-datatypes ((Hashable!4020 0))(
  ( (HashableExt!4019 (__x!22383 Int)) )
))
(declare-datatypes ((MutableMap!4010 0))(
  ( (MutableMapExt!4009 (__x!22384 Int)) (HashMap!4010 (underlying!8438 Cell!16227) (hashF!6052 Hashable!4020) (_size!8252 (_ BitVec 32)) (defaultValue!4181 Int)) )
))
(declare-datatypes ((CacheDown!2828 0))(
  ( (CacheDown!2829 (cache!4145 MutableMap!4010)) )
))
(declare-fun cacheDown!1118 () CacheDown!2828)

(declare-fun e!1803422 () Bool)

(declare-fun lt!1012725 () (InoxSet Context!5014))

(declare-fun lt!1012726 () Bool)

(declare-fun b!2846299 () Bool)

(declare-datatypes ((tuple3!5306 0))(
  ( (tuple3!5307 (_1!19935 Bool) (_2!19935 CacheUp!2706) (_3!3123 CacheDown!2828)) )
))
(declare-fun prefixMatchZipperSequenceMem!8 ((InoxSet Context!5014) BalanceConc!20584 Int CacheUp!2706 CacheDown!2828) tuple3!5306)

(assert (=> b!2846299 (= e!1803422 (not (= (_1!19935 (prefixMatchZipperSequenceMem!8 lt!1012725 prefix!1325 0 cacheUp!999 cacheDown!1118)) lt!1012726)))))

(declare-fun lt!1012722 () List!33899)

(declare-fun prefixMatchZipper!239 ((InoxSet Context!5014) List!33899) Bool)

(assert (=> b!2846299 (= lt!1012726 (prefixMatchZipper!239 lt!1012725 lt!1012722))))

(declare-fun r!13354 () Regex!8479)

(declare-fun prefixMatch!815 (Regex!8479 List!33899) Bool)

(assert (=> b!2846299 (= lt!1012726 (prefixMatch!815 r!13354 lt!1012722))))

(declare-datatypes ((List!33901 0))(
  ( (Nil!33777) (Cons!33777 (h!39197 Context!5014) (t!232924 List!33901)) )
))
(declare-fun lt!1012721 () List!33901)

(declare-datatypes ((Unit!47549 0))(
  ( (Unit!47550) )
))
(declare-fun lt!1012724 () Unit!47549)

(declare-fun prefixMatchZipperRegexEquiv!231 ((InoxSet Context!5014) List!33901 Regex!8479 List!33899) Unit!47549)

(assert (=> b!2846299 (= lt!1012724 (prefixMatchZipperRegexEquiv!231 lt!1012725 lt!1012721 r!13354 lt!1012722))))

(declare-fun list!12581 (BalanceConc!20584) List!33899)

(assert (=> b!2846299 (= lt!1012722 (list!12581 prefix!1325))))

(declare-fun toList!1914 ((InoxSet Context!5014)) List!33901)

(assert (=> b!2846299 (= lt!1012721 (toList!1914 lt!1012725))))

(declare-fun dropList!1024 (BalanceConc!20584 Int) List!33899)

(declare-fun prefixMatchZipperSequence!760 ((InoxSet Context!5014) BalanceConc!20584 Int) Bool)

(assert (=> b!2846299 (= (prefixMatchZipper!239 lt!1012725 (dropList!1024 prefix!1325 0)) (prefixMatchZipperSequence!760 lt!1012725 prefix!1325 0))))

(declare-fun lt!1012720 () Unit!47549)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!239 ((InoxSet Context!5014) BalanceConc!20584 Int) Unit!47549)

(assert (=> b!2846299 (= lt!1012720 (lemmaprefixMatchZipperSequenceEquivalent!239 lt!1012725 prefix!1325 0))))

(declare-fun focus!309 (Regex!8479) (InoxSet Context!5014))

(assert (=> b!2846299 (= lt!1012725 (focus!309 r!13354))))

(declare-fun b!2846300 () Bool)

(declare-fun e!1803409 () Bool)

(declare-fun tp!912871 () Bool)

(declare-fun tp!912870 () Bool)

(assert (=> b!2846300 (= e!1803409 (and tp!912871 tp!912870))))

(declare-fun b!2846301 () Bool)

(declare-fun tp_is_empty!14721 () Bool)

(assert (=> b!2846301 (= e!1803409 tp_is_empty!14721)))

(declare-fun tp!912874 () Bool)

(declare-fun tp!912862 () Bool)

(declare-fun e!1803415 () Bool)

(declare-fun e!1803413 () Bool)

(declare-fun array_inv!4653 (array!14584) Bool)

(declare-fun array_inv!4654 (array!14588) Bool)

(assert (=> b!2846302 (= e!1803415 (and tp!912865 tp!912874 tp!912862 (array_inv!4653 (_keys!4404 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))) (array_inv!4654 (_values!4385 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))) e!1803413))))

(declare-fun b!2846303 () Bool)

(declare-fun e!1803420 () Bool)

(assert (=> b!2846303 (= e!1803420 e!1803410)))

(declare-fun b!2846304 () Bool)

(declare-fun e!1803408 () Bool)

(declare-fun e!1803418 () Bool)

(assert (=> b!2846304 (= e!1803408 e!1803418)))

(declare-fun mapNonEmpty!18623 () Bool)

(declare-fun mapRes!18622 () Bool)

(declare-fun tp!912869 () Bool)

(declare-fun tp!912875 () Bool)

(assert (=> mapNonEmpty!18623 (= mapRes!18622 (and tp!912869 tp!912875))))

(declare-fun mapValue!18622 () List!33900)

(declare-fun mapRest!18622 () (Array (_ BitVec 32) List!33900))

(declare-fun mapKey!18623 () (_ BitVec 32))

(assert (=> mapNonEmpty!18623 (= (arr!6501 (_values!4385 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))) (store mapRest!18622 mapKey!18623 mapValue!18622))))

(declare-fun b!2846305 () Bool)

(declare-fun e!1803405 () Bool)

(assert (=> b!2846305 (= e!1803405 e!1803414)))

(declare-fun b!2846306 () Bool)

(declare-fun tp!912879 () Bool)

(assert (=> b!2846306 (= e!1803409 tp!912879)))

(declare-fun mapIsEmpty!18622 () Bool)

(assert (=> mapIsEmpty!18622 mapRes!18622))

(declare-fun mapIsEmpty!18623 () Bool)

(assert (=> mapIsEmpty!18623 mapRes!18623))

(declare-fun res!1183647 () Bool)

(assert (=> start!277152 (=> (not res!1183647) (not e!1803422))))

(declare-fun validRegex!3370 (Regex!8479) Bool)

(assert (=> start!277152 (= res!1183647 (validRegex!3370 r!13354))))

(assert (=> start!277152 e!1803422))

(assert (=> start!277152 e!1803409))

(declare-fun e!1803407 () Bool)

(declare-fun inv!45794 (BalanceConc!20584) Bool)

(assert (=> start!277152 (and (inv!45794 prefix!1325) e!1803407)))

(declare-fun inv!45795 (CacheDown!2828) Bool)

(assert (=> start!277152 (and (inv!45795 cacheDown!1118) e!1803420)))

(declare-fun inv!45796 (CacheUp!2706) Bool)

(assert (=> start!277152 (and (inv!45796 cacheUp!999) e!1803408)))

(declare-fun b!2846307 () Bool)

(declare-fun tp!912873 () Bool)

(declare-fun inv!45797 (Conc!10473) Bool)

(assert (=> b!2846307 (= e!1803407 (and (inv!45797 (c!459293 prefix!1325)) tp!912873))))

(declare-fun b!2846308 () Bool)

(declare-fun tp!912867 () Bool)

(assert (=> b!2846308 (= e!1803413 (and tp!912867 mapRes!18622))))

(declare-fun condMapEmpty!18622 () Bool)

(declare-fun mapDefault!18623 () List!33900)

(assert (=> b!2846308 (= condMapEmpty!18622 (= (arr!6501 (_values!4385 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))) ((as const (Array (_ BitVec 32) List!33900)) mapDefault!18623)))))

(declare-fun e!1803412 () Bool)

(assert (=> b!2846309 (= e!1803418 (and e!1803412 tp!912880))))

(declare-fun b!2846310 () Bool)

(assert (=> b!2846310 (= e!1803421 e!1803415)))

(declare-fun b!2846311 () Bool)

(declare-fun lt!1012723 () MutLongMap!4103)

(get-info :version)

(assert (=> b!2846311 (= e!1803412 (and e!1803405 ((_ is LongMap!4103) lt!1012723)))))

(assert (=> b!2846311 (= lt!1012723 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))

(declare-fun b!2846312 () Bool)

(declare-fun lt!1012719 () MutLongMap!4104)

(assert (=> b!2846312 (= e!1803417 (and e!1803416 ((_ is LongMap!4104) lt!1012719)))))

(assert (=> b!2846312 (= lt!1012719 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))

(declare-fun tp!912864 () Bool)

(declare-fun tp!912866 () Bool)

(declare-fun e!1803411 () Bool)

(declare-fun array_inv!4655 (array!14586) Bool)

(assert (=> b!2846313 (= e!1803404 (and tp!912881 tp!912866 tp!912864 (array_inv!4653 (_keys!4403 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))) (array_inv!4655 (_values!4384 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))) e!1803411))))

(declare-fun b!2846314 () Bool)

(declare-fun tp!912872 () Bool)

(declare-fun tp!912863 () Bool)

(assert (=> b!2846314 (= e!1803409 (and tp!912872 tp!912863))))

(declare-fun b!2846315 () Bool)

(declare-fun tp!912878 () Bool)

(assert (=> b!2846315 (= e!1803411 (and tp!912878 mapRes!18623))))

(declare-fun condMapEmpty!18623 () Bool)

(declare-fun mapDefault!18622 () List!33898)

(assert (=> b!2846315 (= condMapEmpty!18623 (= (arr!6500 (_values!4384 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))) ((as const (Array (_ BitVec 32) List!33898)) mapDefault!18622)))))

(assert (= (and start!277152 res!1183647) b!2846299))

(assert (= (and start!277152 ((_ is ElementMatch!8479) r!13354)) b!2846301))

(assert (= (and start!277152 ((_ is Concat!13782) r!13354)) b!2846300))

(assert (= (and start!277152 ((_ is Star!8479) r!13354)) b!2846306))

(assert (= (and start!277152 ((_ is Union!8479) r!13354)) b!2846314))

(assert (= start!277152 b!2846307))

(assert (= (and b!2846308 condMapEmpty!18622) mapIsEmpty!18622))

(assert (= (and b!2846308 (not condMapEmpty!18622)) mapNonEmpty!18623))

(assert (= b!2846302 b!2846308))

(assert (= b!2846310 b!2846302))

(assert (= b!2846296 b!2846310))

(assert (= (and b!2846312 ((_ is LongMap!4104) (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))) b!2846296))

(assert (= b!2846298 b!2846312))

(assert (= (and b!2846303 ((_ is HashMap!4010) (cache!4145 cacheDown!1118))) b!2846298))

(assert (= start!277152 b!2846303))

(assert (= (and b!2846315 condMapEmpty!18623) mapIsEmpty!18623))

(assert (= (and b!2846315 (not condMapEmpty!18623)) mapNonEmpty!18622))

(assert (= b!2846313 b!2846315))

(assert (= b!2846297 b!2846313))

(assert (= b!2846305 b!2846297))

(assert (= (and b!2846311 ((_ is LongMap!4103) (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))) b!2846305))

(assert (= b!2846309 b!2846311))

(assert (= (and b!2846304 ((_ is HashMap!4009) (cache!4144 cacheUp!999))) b!2846309))

(assert (= start!277152 b!2846304))

(declare-fun m!3274061 () Bool)

(assert (=> b!2846299 m!3274061))

(declare-fun m!3274063 () Bool)

(assert (=> b!2846299 m!3274063))

(declare-fun m!3274065 () Bool)

(assert (=> b!2846299 m!3274065))

(declare-fun m!3274067 () Bool)

(assert (=> b!2846299 m!3274067))

(declare-fun m!3274069 () Bool)

(assert (=> b!2846299 m!3274069))

(declare-fun m!3274071 () Bool)

(assert (=> b!2846299 m!3274071))

(declare-fun m!3274073 () Bool)

(assert (=> b!2846299 m!3274073))

(assert (=> b!2846299 m!3274065))

(declare-fun m!3274075 () Bool)

(assert (=> b!2846299 m!3274075))

(declare-fun m!3274077 () Bool)

(assert (=> b!2846299 m!3274077))

(declare-fun m!3274079 () Bool)

(assert (=> b!2846299 m!3274079))

(declare-fun m!3274081 () Bool)

(assert (=> b!2846299 m!3274081))

(declare-fun m!3274083 () Bool)

(assert (=> start!277152 m!3274083))

(declare-fun m!3274085 () Bool)

(assert (=> start!277152 m!3274085))

(declare-fun m!3274087 () Bool)

(assert (=> start!277152 m!3274087))

(declare-fun m!3274089 () Bool)

(assert (=> start!277152 m!3274089))

(declare-fun m!3274091 () Bool)

(assert (=> b!2846313 m!3274091))

(declare-fun m!3274093 () Bool)

(assert (=> b!2846313 m!3274093))

(declare-fun m!3274095 () Bool)

(assert (=> b!2846307 m!3274095))

(declare-fun m!3274097 () Bool)

(assert (=> b!2846302 m!3274097))

(declare-fun m!3274099 () Bool)

(assert (=> b!2846302 m!3274099))

(declare-fun m!3274101 () Bool)

(assert (=> mapNonEmpty!18622 m!3274101))

(declare-fun m!3274103 () Bool)

(assert (=> mapNonEmpty!18623 m!3274103))

(check-sat (not b_next!83389) (not b!2846313) b_and!208931 (not b!2846308) (not b!2846299) (not b_next!83395) (not b!2846302) (not b!2846306) b_and!208933 (not b_next!83391) (not b!2846314) tp_is_empty!14721 (not b!2846315) (not b_next!83393) (not start!277152) b_and!208927 (not b!2846307) (not b!2846300) (not mapNonEmpty!18622) b_and!208929 (not mapNonEmpty!18623))
(check-sat (not b_next!83393) (not b_next!83389) b_and!208927 b_and!208931 (not b_next!83395) b_and!208933 (not b_next!83391) b_and!208929)
(get-model)

(declare-fun d!825289 () Bool)

(assert (=> d!825289 (= (array_inv!4653 (_keys!4403 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))) (bvsge (size!26222 (_keys!4403 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))) #b00000000000000000000000000000000))))

(assert (=> b!2846313 d!825289))

(declare-fun d!825291 () Bool)

(assert (=> d!825291 (= (array_inv!4655 (_values!4384 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))) (bvsge (size!26223 (_values!4384 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))) #b00000000000000000000000000000000))))

(assert (=> b!2846313 d!825291))

(declare-fun b!2846334 () Bool)

(declare-fun res!1183661 () Bool)

(declare-fun e!1803438 () Bool)

(assert (=> b!2846334 (=> (not res!1183661) (not e!1803438))))

(declare-fun call!183549 () Bool)

(assert (=> b!2846334 (= res!1183661 call!183549)))

(declare-fun e!1803440 () Bool)

(assert (=> b!2846334 (= e!1803440 e!1803438)))

(declare-fun b!2846335 () Bool)

(declare-fun e!1803443 () Bool)

(assert (=> b!2846335 (= e!1803443 e!1803440)))

(declare-fun c!459298 () Bool)

(assert (=> b!2846335 (= c!459298 ((_ is Union!8479) r!13354))))

(declare-fun bm!183542 () Bool)

(declare-fun call!183548 () Bool)

(assert (=> bm!183542 (= call!183549 call!183548)))

(declare-fun b!2846336 () Bool)

(declare-fun e!1803439 () Bool)

(assert (=> b!2846336 (= e!1803439 call!183548)))

(declare-fun d!825293 () Bool)

(declare-fun res!1183658 () Bool)

(declare-fun e!1803441 () Bool)

(assert (=> d!825293 (=> res!1183658 e!1803441)))

(assert (=> d!825293 (= res!1183658 ((_ is ElementMatch!8479) r!13354))))

(assert (=> d!825293 (= (validRegex!3370 r!13354) e!1803441)))

(declare-fun b!2846337 () Bool)

(assert (=> b!2846337 (= e!1803441 e!1803443)))

(declare-fun c!459299 () Bool)

(assert (=> b!2846337 (= c!459299 ((_ is Star!8479) r!13354))))

(declare-fun bm!183543 () Bool)

(declare-fun call!183547 () Bool)

(assert (=> bm!183543 (= call!183547 (validRegex!3370 (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))))))

(declare-fun bm!183544 () Bool)

(assert (=> bm!183544 (= call!183548 (validRegex!3370 (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))))))

(declare-fun b!2846338 () Bool)

(assert (=> b!2846338 (= e!1803443 e!1803439)))

(declare-fun res!1183660 () Bool)

(declare-fun nullable!2629 (Regex!8479) Bool)

(assert (=> b!2846338 (= res!1183660 (not (nullable!2629 (reg!8808 r!13354))))))

(assert (=> b!2846338 (=> (not res!1183660) (not e!1803439))))

(declare-fun b!2846339 () Bool)

(declare-fun e!1803442 () Bool)

(declare-fun e!1803437 () Bool)

(assert (=> b!2846339 (= e!1803442 e!1803437)))

(declare-fun res!1183659 () Bool)

(assert (=> b!2846339 (=> (not res!1183659) (not e!1803437))))

(assert (=> b!2846339 (= res!1183659 call!183547)))

(declare-fun b!2846340 () Bool)

(declare-fun res!1183662 () Bool)

(assert (=> b!2846340 (=> res!1183662 e!1803442)))

(assert (=> b!2846340 (= res!1183662 (not ((_ is Concat!13782) r!13354)))))

(assert (=> b!2846340 (= e!1803440 e!1803442)))

(declare-fun b!2846341 () Bool)

(assert (=> b!2846341 (= e!1803438 call!183547)))

(declare-fun b!2846342 () Bool)

(assert (=> b!2846342 (= e!1803437 call!183549)))

(assert (= (and d!825293 (not res!1183658)) b!2846337))

(assert (= (and b!2846337 c!459299) b!2846338))

(assert (= (and b!2846337 (not c!459299)) b!2846335))

(assert (= (and b!2846338 res!1183660) b!2846336))

(assert (= (and b!2846335 c!459298) b!2846334))

(assert (= (and b!2846335 (not c!459298)) b!2846340))

(assert (= (and b!2846334 res!1183661) b!2846341))

(assert (= (and b!2846340 (not res!1183662)) b!2846339))

(assert (= (and b!2846339 res!1183659) b!2846342))

(assert (= (or b!2846334 b!2846342) bm!183542))

(assert (= (or b!2846341 b!2846339) bm!183543))

(assert (= (or b!2846336 bm!183542) bm!183544))

(declare-fun m!3274105 () Bool)

(assert (=> bm!183543 m!3274105))

(declare-fun m!3274107 () Bool)

(assert (=> bm!183544 m!3274107))

(declare-fun m!3274109 () Bool)

(assert (=> b!2846338 m!3274109))

(assert (=> start!277152 d!825293))

(declare-fun d!825295 () Bool)

(declare-fun isBalanced!3158 (Conc!10473) Bool)

(assert (=> d!825295 (= (inv!45794 prefix!1325) (isBalanced!3158 (c!459293 prefix!1325)))))

(declare-fun bs!519631 () Bool)

(assert (= bs!519631 d!825295))

(declare-fun m!3274111 () Bool)

(assert (=> bs!519631 m!3274111))

(assert (=> start!277152 d!825295))

(declare-fun d!825297 () Bool)

(declare-fun res!1183665 () Bool)

(declare-fun e!1803446 () Bool)

(assert (=> d!825297 (=> (not res!1183665) (not e!1803446))))

(assert (=> d!825297 (= res!1183665 ((_ is HashMap!4010) (cache!4145 cacheDown!1118)))))

(assert (=> d!825297 (= (inv!45795 cacheDown!1118) e!1803446)))

(declare-fun b!2846345 () Bool)

(declare-fun validCacheMapDown!438 (MutableMap!4010) Bool)

(assert (=> b!2846345 (= e!1803446 (validCacheMapDown!438 (cache!4145 cacheDown!1118)))))

(assert (= (and d!825297 res!1183665) b!2846345))

(declare-fun m!3274113 () Bool)

(assert (=> b!2846345 m!3274113))

(assert (=> start!277152 d!825297))

(declare-fun d!825299 () Bool)

(declare-fun res!1183668 () Bool)

(declare-fun e!1803449 () Bool)

(assert (=> d!825299 (=> (not res!1183668) (not e!1803449))))

(assert (=> d!825299 (= res!1183668 ((_ is HashMap!4009) (cache!4144 cacheUp!999)))))

(assert (=> d!825299 (= (inv!45796 cacheUp!999) e!1803449)))

(declare-fun b!2846348 () Bool)

(declare-fun validCacheMapUp!407 (MutableMap!4009) Bool)

(assert (=> b!2846348 (= e!1803449 (validCacheMapUp!407 (cache!4144 cacheUp!999)))))

(assert (= (and d!825299 res!1183668) b!2846348))

(declare-fun m!3274115 () Bool)

(assert (=> b!2846348 m!3274115))

(assert (=> start!277152 d!825299))

(declare-fun d!825301 () Bool)

(declare-fun c!459302 () Bool)

(assert (=> d!825301 (= c!459302 ((_ is Node!10473) (c!459293 prefix!1325)))))

(declare-fun e!1803454 () Bool)

(assert (=> d!825301 (= (inv!45797 (c!459293 prefix!1325)) e!1803454)))

(declare-fun b!2846355 () Bool)

(declare-fun inv!45798 (Conc!10473) Bool)

(assert (=> b!2846355 (= e!1803454 (inv!45798 (c!459293 prefix!1325)))))

(declare-fun b!2846356 () Bool)

(declare-fun e!1803455 () Bool)

(assert (=> b!2846356 (= e!1803454 e!1803455)))

(declare-fun res!1183671 () Bool)

(assert (=> b!2846356 (= res!1183671 (not ((_ is Leaf!15936) (c!459293 prefix!1325))))))

(assert (=> b!2846356 (=> res!1183671 e!1803455)))

(declare-fun b!2846357 () Bool)

(declare-fun inv!45799 (Conc!10473) Bool)

(assert (=> b!2846357 (= e!1803455 (inv!45799 (c!459293 prefix!1325)))))

(assert (= (and d!825301 c!459302) b!2846355))

(assert (= (and d!825301 (not c!459302)) b!2846356))

(assert (= (and b!2846356 (not res!1183671)) b!2846357))

(declare-fun m!3274117 () Bool)

(assert (=> b!2846355 m!3274117))

(declare-fun m!3274119 () Bool)

(assert (=> b!2846357 m!3274119))

(assert (=> b!2846307 d!825301))

(declare-fun d!825303 () Bool)

(declare-fun lt!1012735 () tuple3!5306)

(assert (=> d!825303 (= (_1!19935 lt!1012735) (prefixMatchZipperSequence!760 lt!1012725 prefix!1325 0))))

(declare-fun e!1803460 () tuple3!5306)

(assert (=> d!825303 (= lt!1012735 e!1803460)))

(declare-fun c!459305 () Bool)

(declare-fun size!26225 (BalanceConc!20584) Int)

(assert (=> d!825303 (= c!459305 (= 0 (size!26225 prefix!1325)))))

(declare-fun e!1803461 () Bool)

(assert (=> d!825303 e!1803461))

(declare-fun res!1183674 () Bool)

(assert (=> d!825303 (=> (not res!1183674) (not e!1803461))))

(assert (=> d!825303 (= res!1183674 (>= 0 0))))

(assert (=> d!825303 (= (prefixMatchZipperSequenceMem!8 lt!1012725 prefix!1325 0 cacheUp!999 cacheDown!1118) lt!1012735)))

(declare-fun b!2846364 () Bool)

(assert (=> b!2846364 (= e!1803461 (<= 0 (size!26225 prefix!1325)))))

(declare-fun b!2846365 () Bool)

(declare-fun lostCauseZipper!522 ((InoxSet Context!5014)) Bool)

(assert (=> b!2846365 (= e!1803460 (tuple3!5307 (not (lostCauseZipper!522 lt!1012725)) cacheUp!999 cacheDown!1118))))

(declare-fun b!2846366 () Bool)

(declare-fun lt!1012733 () tuple3!5306)

(assert (=> b!2846366 (= e!1803460 (tuple3!5307 (_1!19935 lt!1012733) (_2!19935 lt!1012733) (_3!3123 lt!1012733)))))

(declare-datatypes ((tuple3!5308 0))(
  ( (tuple3!5309 (_1!19936 (InoxSet Context!5014)) (_2!19936 CacheUp!2706) (_3!3124 CacheDown!2828)) )
))
(declare-fun lt!1012734 () tuple3!5308)

(declare-fun derivationStepZipperMem!124 ((InoxSet Context!5014) C!17140 CacheUp!2706 CacheDown!2828) tuple3!5308)

(declare-fun apply!7865 (BalanceConc!20584 Int) C!17140)

(assert (=> b!2846366 (= lt!1012734 (derivationStepZipperMem!124 lt!1012725 (apply!7865 prefix!1325 0) cacheUp!999 cacheDown!1118))))

(assert (=> b!2846366 (= lt!1012733 (prefixMatchZipperSequenceMem!8 (_1!19936 lt!1012734) prefix!1325 (+ 0 1) (_2!19936 lt!1012734) (_3!3124 lt!1012734)))))

(assert (= (and d!825303 res!1183674) b!2846364))

(assert (= (and d!825303 c!459305) b!2846365))

(assert (= (and d!825303 (not c!459305)) b!2846366))

(assert (=> d!825303 m!3274067))

(declare-fun m!3274121 () Bool)

(assert (=> d!825303 m!3274121))

(assert (=> b!2846364 m!3274121))

(declare-fun m!3274123 () Bool)

(assert (=> b!2846365 m!3274123))

(declare-fun m!3274125 () Bool)

(assert (=> b!2846366 m!3274125))

(assert (=> b!2846366 m!3274125))

(declare-fun m!3274127 () Bool)

(assert (=> b!2846366 m!3274127))

(declare-fun m!3274129 () Bool)

(assert (=> b!2846366 m!3274129))

(assert (=> b!2846299 d!825303))

(declare-fun d!825305 () Bool)

(declare-fun e!1803464 () Bool)

(assert (=> d!825305 e!1803464))

(declare-fun res!1183677 () Bool)

(assert (=> d!825305 (=> (not res!1183677) (not e!1803464))))

(declare-fun lt!1012738 () List!33901)

(declare-fun noDuplicate!555 (List!33901) Bool)

(assert (=> d!825305 (= res!1183677 (noDuplicate!555 lt!1012738))))

(declare-fun choose!16754 ((InoxSet Context!5014)) List!33901)

(assert (=> d!825305 (= lt!1012738 (choose!16754 lt!1012725))))

(assert (=> d!825305 (= (toList!1914 lt!1012725) lt!1012738)))

(declare-fun b!2846369 () Bool)

(declare-fun content!4652 (List!33901) (InoxSet Context!5014))

(assert (=> b!2846369 (= e!1803464 (= (content!4652 lt!1012738) lt!1012725))))

(assert (= (and d!825305 res!1183677) b!2846369))

(declare-fun m!3274131 () Bool)

(assert (=> d!825305 m!3274131))

(declare-fun m!3274133 () Bool)

(assert (=> d!825305 m!3274133))

(declare-fun m!3274135 () Bool)

(assert (=> b!2846369 m!3274135))

(assert (=> b!2846299 d!825305))

(declare-fun d!825307 () Bool)

(declare-fun drop!1812 (List!33899 Int) List!33899)

(declare-fun list!12582 (Conc!10473) List!33899)

(assert (=> d!825307 (= (dropList!1024 prefix!1325 0) (drop!1812 (list!12582 (c!459293 prefix!1325)) 0))))

(declare-fun bs!519632 () Bool)

(assert (= bs!519632 d!825307))

(declare-fun m!3274137 () Bool)

(assert (=> bs!519632 m!3274137))

(assert (=> bs!519632 m!3274137))

(declare-fun m!3274139 () Bool)

(assert (=> bs!519632 m!3274139))

(assert (=> b!2846299 d!825307))

(declare-fun d!825309 () Bool)

(assert (=> d!825309 (= (prefixMatchZipper!239 lt!1012725 (dropList!1024 prefix!1325 0)) (prefixMatchZipperSequence!760 lt!1012725 prefix!1325 0))))

(declare-fun lt!1012741 () Unit!47549)

(declare-fun choose!16755 ((InoxSet Context!5014) BalanceConc!20584 Int) Unit!47549)

(assert (=> d!825309 (= lt!1012741 (choose!16755 lt!1012725 prefix!1325 0))))

(declare-fun e!1803467 () Bool)

(assert (=> d!825309 e!1803467))

(declare-fun res!1183680 () Bool)

(assert (=> d!825309 (=> (not res!1183680) (not e!1803467))))

(assert (=> d!825309 (= res!1183680 (>= 0 0))))

(assert (=> d!825309 (= (lemmaprefixMatchZipperSequenceEquivalent!239 lt!1012725 prefix!1325 0) lt!1012741)))

(declare-fun b!2846372 () Bool)

(assert (=> b!2846372 (= e!1803467 (<= 0 (size!26225 prefix!1325)))))

(assert (= (and d!825309 res!1183680) b!2846372))

(assert (=> d!825309 m!3274065))

(assert (=> d!825309 m!3274065))

(assert (=> d!825309 m!3274075))

(assert (=> d!825309 m!3274067))

(declare-fun m!3274141 () Bool)

(assert (=> d!825309 m!3274141))

(assert (=> b!2846372 m!3274121))

(assert (=> b!2846299 d!825309))

(declare-fun d!825311 () Bool)

(declare-fun e!1803470 () Bool)

(assert (=> d!825311 e!1803470))

(declare-fun res!1183684 () Bool)

(assert (=> d!825311 (=> (not res!1183684) (not e!1803470))))

(assert (=> d!825311 (= res!1183684 (validRegex!3370 r!13354))))

(assert (=> d!825311 (= (focus!309 r!13354) (store ((as const (Array Context!5014 Bool)) false) (Context!5015 (Cons!33773 r!13354 Nil!33773)) true))))

(declare-fun b!2846375 () Bool)

(declare-fun unfocusZipper!179 (List!33901) Regex!8479)

(assert (=> b!2846375 (= e!1803470 (= (unfocusZipper!179 (toList!1914 (store ((as const (Array Context!5014 Bool)) false) (Context!5015 (Cons!33773 r!13354 Nil!33773)) true))) r!13354))))

(assert (= (and d!825311 res!1183684) b!2846375))

(assert (=> d!825311 m!3274083))

(declare-fun m!3274143 () Bool)

(assert (=> d!825311 m!3274143))

(assert (=> b!2846375 m!3274143))

(assert (=> b!2846375 m!3274143))

(declare-fun m!3274145 () Bool)

(assert (=> b!2846375 m!3274145))

(assert (=> b!2846375 m!3274145))

(declare-fun m!3274147 () Bool)

(assert (=> b!2846375 m!3274147))

(assert (=> b!2846299 d!825311))

(declare-fun d!825313 () Bool)

(declare-fun c!459308 () Bool)

(declare-fun isEmpty!18573 (List!33899) Bool)

(assert (=> d!825313 (= c!459308 (isEmpty!18573 (dropList!1024 prefix!1325 0)))))

(declare-fun e!1803473 () Bool)

(assert (=> d!825313 (= (prefixMatchZipper!239 lt!1012725 (dropList!1024 prefix!1325 0)) e!1803473)))

(declare-fun b!2846380 () Bool)

(assert (=> b!2846380 (= e!1803473 (not (lostCauseZipper!522 lt!1012725)))))

(declare-fun b!2846381 () Bool)

(declare-fun derivationStepZipper!408 ((InoxSet Context!5014) C!17140) (InoxSet Context!5014))

(declare-fun head!6258 (List!33899) C!17140)

(declare-fun tail!4483 (List!33899) List!33899)

(assert (=> b!2846381 (= e!1803473 (prefixMatchZipper!239 (derivationStepZipper!408 lt!1012725 (head!6258 (dropList!1024 prefix!1325 0))) (tail!4483 (dropList!1024 prefix!1325 0))))))

(assert (= (and d!825313 c!459308) b!2846380))

(assert (= (and d!825313 (not c!459308)) b!2846381))

(assert (=> d!825313 m!3274065))

(declare-fun m!3274149 () Bool)

(assert (=> d!825313 m!3274149))

(assert (=> b!2846380 m!3274123))

(assert (=> b!2846381 m!3274065))

(declare-fun m!3274151 () Bool)

(assert (=> b!2846381 m!3274151))

(assert (=> b!2846381 m!3274151))

(declare-fun m!3274153 () Bool)

(assert (=> b!2846381 m!3274153))

(assert (=> b!2846381 m!3274065))

(declare-fun m!3274155 () Bool)

(assert (=> b!2846381 m!3274155))

(assert (=> b!2846381 m!3274153))

(assert (=> b!2846381 m!3274155))

(declare-fun m!3274157 () Bool)

(assert (=> b!2846381 m!3274157))

(assert (=> b!2846299 d!825313))

(declare-fun d!825315 () Bool)

(assert (=> d!825315 (= (prefixMatch!815 r!13354 lt!1012722) (prefixMatchZipper!239 lt!1012725 lt!1012722))))

(declare-fun lt!1012744 () Unit!47549)

(declare-fun choose!16756 ((InoxSet Context!5014) List!33901 Regex!8479 List!33899) Unit!47549)

(assert (=> d!825315 (= lt!1012744 (choose!16756 lt!1012725 lt!1012721 r!13354 lt!1012722))))

(assert (=> d!825315 (validRegex!3370 r!13354)))

(assert (=> d!825315 (= (prefixMatchZipperRegexEquiv!231 lt!1012725 lt!1012721 r!13354 lt!1012722) lt!1012744)))

(declare-fun bs!519633 () Bool)

(assert (= bs!519633 d!825315))

(assert (=> bs!519633 m!3274073))

(assert (=> bs!519633 m!3274069))

(declare-fun m!3274159 () Bool)

(assert (=> bs!519633 m!3274159))

(assert (=> bs!519633 m!3274083))

(assert (=> b!2846299 d!825315))

(declare-fun d!825317 () Bool)

(declare-fun c!459311 () Bool)

(assert (=> d!825317 (= c!459311 (isEmpty!18573 lt!1012722))))

(declare-fun e!1803476 () Bool)

(assert (=> d!825317 (= (prefixMatch!815 r!13354 lt!1012722) e!1803476)))

(declare-fun b!2846386 () Bool)

(declare-fun lostCause!729 (Regex!8479) Bool)

(assert (=> b!2846386 (= e!1803476 (not (lostCause!729 r!13354)))))

(declare-fun b!2846387 () Bool)

(declare-fun derivativeStep!2254 (Regex!8479 C!17140) Regex!8479)

(assert (=> b!2846387 (= e!1803476 (prefixMatch!815 (derivativeStep!2254 r!13354 (head!6258 lt!1012722)) (tail!4483 lt!1012722)))))

(assert (= (and d!825317 c!459311) b!2846386))

(assert (= (and d!825317 (not c!459311)) b!2846387))

(declare-fun m!3274161 () Bool)

(assert (=> d!825317 m!3274161))

(declare-fun m!3274163 () Bool)

(assert (=> b!2846386 m!3274163))

(declare-fun m!3274165 () Bool)

(assert (=> b!2846387 m!3274165))

(assert (=> b!2846387 m!3274165))

(declare-fun m!3274167 () Bool)

(assert (=> b!2846387 m!3274167))

(declare-fun m!3274169 () Bool)

(assert (=> b!2846387 m!3274169))

(assert (=> b!2846387 m!3274167))

(assert (=> b!2846387 m!3274169))

(declare-fun m!3274171 () Bool)

(assert (=> b!2846387 m!3274171))

(assert (=> b!2846299 d!825317))

(declare-fun d!825319 () Bool)

(declare-fun c!459314 () Bool)

(assert (=> d!825319 (= c!459314 (= 0 (size!26225 prefix!1325)))))

(declare-fun e!1803479 () Bool)

(assert (=> d!825319 (= (prefixMatchZipperSequence!760 lt!1012725 prefix!1325 0) e!1803479)))

(declare-fun b!2846392 () Bool)

(assert (=> b!2846392 (= e!1803479 (not (lostCauseZipper!522 lt!1012725)))))

(declare-fun b!2846393 () Bool)

(assert (=> b!2846393 (= e!1803479 (prefixMatchZipperSequence!760 (derivationStepZipper!408 lt!1012725 (apply!7865 prefix!1325 0)) prefix!1325 (+ 0 1)))))

(assert (= (and d!825319 c!459314) b!2846392))

(assert (= (and d!825319 (not c!459314)) b!2846393))

(assert (=> d!825319 m!3274121))

(assert (=> b!2846392 m!3274123))

(assert (=> b!2846393 m!3274125))

(assert (=> b!2846393 m!3274125))

(declare-fun m!3274173 () Bool)

(assert (=> b!2846393 m!3274173))

(assert (=> b!2846393 m!3274173))

(declare-fun m!3274175 () Bool)

(assert (=> b!2846393 m!3274175))

(assert (=> b!2846299 d!825319))

(declare-fun d!825321 () Bool)

(assert (=> d!825321 (= (list!12581 prefix!1325) (list!12582 (c!459293 prefix!1325)))))

(declare-fun bs!519634 () Bool)

(assert (= bs!519634 d!825321))

(assert (=> bs!519634 m!3274137))

(assert (=> b!2846299 d!825321))

(declare-fun d!825323 () Bool)

(declare-fun c!459315 () Bool)

(assert (=> d!825323 (= c!459315 (isEmpty!18573 lt!1012722))))

(declare-fun e!1803480 () Bool)

(assert (=> d!825323 (= (prefixMatchZipper!239 lt!1012725 lt!1012722) e!1803480)))

(declare-fun b!2846394 () Bool)

(assert (=> b!2846394 (= e!1803480 (not (lostCauseZipper!522 lt!1012725)))))

(declare-fun b!2846395 () Bool)

(assert (=> b!2846395 (= e!1803480 (prefixMatchZipper!239 (derivationStepZipper!408 lt!1012725 (head!6258 lt!1012722)) (tail!4483 lt!1012722)))))

(assert (= (and d!825323 c!459315) b!2846394))

(assert (= (and d!825323 (not c!459315)) b!2846395))

(assert (=> d!825323 m!3274161))

(assert (=> b!2846394 m!3274123))

(assert (=> b!2846395 m!3274165))

(assert (=> b!2846395 m!3274165))

(declare-fun m!3274177 () Bool)

(assert (=> b!2846395 m!3274177))

(assert (=> b!2846395 m!3274169))

(assert (=> b!2846395 m!3274177))

(assert (=> b!2846395 m!3274169))

(declare-fun m!3274179 () Bool)

(assert (=> b!2846395 m!3274179))

(assert (=> b!2846299 d!825323))

(declare-fun d!825325 () Bool)

(assert (=> d!825325 (= (array_inv!4653 (_keys!4404 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))) (bvsge (size!26222 (_keys!4404 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2846302 d!825325))

(declare-fun d!825327 () Bool)

(assert (=> d!825327 (= (array_inv!4654 (_values!4385 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))) (bvsge (size!26224 (_values!4385 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2846302 d!825327))

(declare-fun b!2846404 () Bool)

(declare-fun e!1803488 () Bool)

(declare-fun tp!912890 () Bool)

(assert (=> b!2846404 (= e!1803488 tp!912890)))

(declare-fun setElem!24892 () Context!5014)

(declare-fun tp!912891 () Bool)

(declare-fun setNonEmpty!24892 () Bool)

(declare-fun setRes!24892 () Bool)

(declare-fun inv!45800 (Context!5014) Bool)

(assert (=> setNonEmpty!24892 (= setRes!24892 (and tp!912891 (inv!45800 setElem!24892) e!1803488))))

(declare-fun setRest!24892 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24892 (= (_2!19932 (h!39194 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24892 true) setRest!24892))))

(declare-fun setIsEmpty!24892 () Bool)

(assert (=> setIsEmpty!24892 setRes!24892))

(declare-fun b!2846405 () Bool)

(declare-fun e!1803489 () Bool)

(declare-fun tp!912893 () Bool)

(assert (=> b!2846405 (= e!1803489 tp!912893)))

(declare-fun e!1803487 () Bool)

(assert (=> b!2846313 (= tp!912866 e!1803487)))

(declare-fun b!2846406 () Bool)

(declare-fun tp!912892 () Bool)

(assert (=> b!2846406 (= e!1803487 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))))) e!1803489 tp_is_empty!14721 setRes!24892 tp!912892))))

(declare-fun condSetEmpty!24892 () Bool)

(assert (=> b!2846406 (= condSetEmpty!24892 (= (_2!19932 (h!39194 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846406 b!2846405))

(assert (= (and b!2846406 condSetEmpty!24892) setIsEmpty!24892))

(assert (= (and b!2846406 (not condSetEmpty!24892)) setNonEmpty!24892))

(assert (= setNonEmpty!24892 b!2846404))

(assert (= (and b!2846313 ((_ is Cons!33774) (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))) b!2846406))

(declare-fun m!3274181 () Bool)

(assert (=> setNonEmpty!24892 m!3274181))

(declare-fun m!3274183 () Bool)

(assert (=> b!2846406 m!3274183))

(declare-fun b!2846407 () Bool)

(declare-fun e!1803491 () Bool)

(declare-fun tp!912894 () Bool)

(assert (=> b!2846407 (= e!1803491 tp!912894)))

(declare-fun setNonEmpty!24893 () Bool)

(declare-fun setElem!24893 () Context!5014)

(declare-fun setRes!24893 () Bool)

(declare-fun tp!912895 () Bool)

(assert (=> setNonEmpty!24893 (= setRes!24893 (and tp!912895 (inv!45800 setElem!24893) e!1803491))))

(declare-fun setRest!24893 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24893 (= (_2!19932 (h!39194 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24893 true) setRest!24893))))

(declare-fun setIsEmpty!24893 () Bool)

(assert (=> setIsEmpty!24893 setRes!24893))

(declare-fun b!2846408 () Bool)

(declare-fun e!1803492 () Bool)

(declare-fun tp!912897 () Bool)

(assert (=> b!2846408 (= e!1803492 tp!912897)))

(declare-fun e!1803490 () Bool)

(assert (=> b!2846313 (= tp!912864 e!1803490)))

(declare-fun tp!912896 () Bool)

(declare-fun b!2846409 () Bool)

(assert (=> b!2846409 (= e!1803490 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))))) e!1803492 tp_is_empty!14721 setRes!24893 tp!912896))))

(declare-fun condSetEmpty!24893 () Bool)

(assert (=> b!2846409 (= condSetEmpty!24893 (= (_2!19932 (h!39194 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846409 b!2846408))

(assert (= (and b!2846409 condSetEmpty!24893) setIsEmpty!24893))

(assert (= (and b!2846409 (not condSetEmpty!24893)) setNonEmpty!24893))

(assert (= setNonEmpty!24893 b!2846407))

(assert (= (and b!2846313 ((_ is Cons!33774) (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))) b!2846409))

(declare-fun m!3274185 () Bool)

(assert (=> setNonEmpty!24893 m!3274185))

(declare-fun m!3274187 () Bool)

(assert (=> b!2846409 m!3274187))

(declare-fun b!2846422 () Bool)

(declare-fun e!1803495 () Bool)

(declare-fun tp!912910 () Bool)

(assert (=> b!2846422 (= e!1803495 tp!912910)))

(declare-fun b!2846420 () Bool)

(assert (=> b!2846420 (= e!1803495 tp_is_empty!14721)))

(declare-fun b!2846421 () Bool)

(declare-fun tp!912909 () Bool)

(declare-fun tp!912911 () Bool)

(assert (=> b!2846421 (= e!1803495 (and tp!912909 tp!912911))))

(assert (=> b!2846300 (= tp!912871 e!1803495)))

(declare-fun b!2846423 () Bool)

(declare-fun tp!912912 () Bool)

(declare-fun tp!912908 () Bool)

(assert (=> b!2846423 (= e!1803495 (and tp!912912 tp!912908))))

(assert (= (and b!2846300 ((_ is ElementMatch!8479) (regOne!17470 r!13354))) b!2846420))

(assert (= (and b!2846300 ((_ is Concat!13782) (regOne!17470 r!13354))) b!2846421))

(assert (= (and b!2846300 ((_ is Star!8479) (regOne!17470 r!13354))) b!2846422))

(assert (= (and b!2846300 ((_ is Union!8479) (regOne!17470 r!13354))) b!2846423))

(declare-fun b!2846426 () Bool)

(declare-fun e!1803496 () Bool)

(declare-fun tp!912915 () Bool)

(assert (=> b!2846426 (= e!1803496 tp!912915)))

(declare-fun b!2846424 () Bool)

(assert (=> b!2846424 (= e!1803496 tp_is_empty!14721)))

(declare-fun b!2846425 () Bool)

(declare-fun tp!912914 () Bool)

(declare-fun tp!912916 () Bool)

(assert (=> b!2846425 (= e!1803496 (and tp!912914 tp!912916))))

(assert (=> b!2846300 (= tp!912870 e!1803496)))

(declare-fun b!2846427 () Bool)

(declare-fun tp!912917 () Bool)

(declare-fun tp!912913 () Bool)

(assert (=> b!2846427 (= e!1803496 (and tp!912917 tp!912913))))

(assert (= (and b!2846300 ((_ is ElementMatch!8479) (regTwo!17470 r!13354))) b!2846424))

(assert (= (and b!2846300 ((_ is Concat!13782) (regTwo!17470 r!13354))) b!2846425))

(assert (= (and b!2846300 ((_ is Star!8479) (regTwo!17470 r!13354))) b!2846426))

(assert (= (and b!2846300 ((_ is Union!8479) (regTwo!17470 r!13354))) b!2846427))

(declare-fun setRes!24899 () Bool)

(declare-fun setNonEmpty!24898 () Bool)

(declare-fun e!1803509 () Bool)

(declare-fun setElem!24898 () Context!5014)

(declare-fun tp!912946 () Bool)

(assert (=> setNonEmpty!24898 (= setRes!24899 (and tp!912946 (inv!45800 setElem!24898) e!1803509))))

(declare-fun mapDefault!18626 () List!33900)

(declare-fun setRest!24898 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24898 (= (_2!19934 (h!39196 mapDefault!18626)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24898 true) setRest!24898))))

(declare-fun tp!912947 () Bool)

(declare-fun e!1803510 () Bool)

(declare-fun setRes!24898 () Bool)

(declare-fun mapValue!18626 () List!33900)

(declare-fun b!2846442 () Bool)

(declare-fun tp!912948 () Bool)

(declare-fun e!1803511 () Bool)

(assert (=> b!2846442 (= e!1803511 (and tp!912947 (inv!45800 (_2!19933 (_1!19934 (h!39196 mapValue!18626)))) e!1803510 tp_is_empty!14721 setRes!24898 tp!912948))))

(declare-fun condSetEmpty!24899 () Bool)

(assert (=> b!2846442 (= condSetEmpty!24899 (= (_2!19934 (h!39196 mapValue!18626)) ((as const (Array Context!5014 Bool)) false)))))

(declare-fun b!2846443 () Bool)

(declare-fun tp!912943 () Bool)

(assert (=> b!2846443 (= e!1803510 tp!912943)))

(declare-fun mapNonEmpty!18626 () Bool)

(declare-fun mapRes!18626 () Bool)

(declare-fun tp!912950 () Bool)

(assert (=> mapNonEmpty!18626 (= mapRes!18626 (and tp!912950 e!1803511))))

(declare-fun mapRest!18626 () (Array (_ BitVec 32) List!33900))

(declare-fun mapKey!18626 () (_ BitVec 32))

(assert (=> mapNonEmpty!18626 (= mapRest!18622 (store mapRest!18626 mapKey!18626 mapValue!18626))))

(declare-fun mapIsEmpty!18626 () Bool)

(assert (=> mapIsEmpty!18626 mapRes!18626))

(declare-fun condMapEmpty!18626 () Bool)

(assert (=> mapNonEmpty!18623 (= condMapEmpty!18626 (= mapRest!18622 ((as const (Array (_ BitVec 32) List!33900)) mapDefault!18626)))))

(declare-fun e!1803514 () Bool)

(assert (=> mapNonEmpty!18623 (= tp!912869 (and e!1803514 mapRes!18626))))

(declare-fun e!1803512 () Bool)

(declare-fun tp!912942 () Bool)

(declare-fun tp!912949 () Bool)

(declare-fun b!2846444 () Bool)

(assert (=> b!2846444 (= e!1803514 (and tp!912942 (inv!45800 (_2!19933 (_1!19934 (h!39196 mapDefault!18626)))) e!1803512 tp_is_empty!14721 setRes!24899 tp!912949))))

(declare-fun condSetEmpty!24898 () Bool)

(assert (=> b!2846444 (= condSetEmpty!24898 (= (_2!19934 (h!39196 mapDefault!18626)) ((as const (Array Context!5014 Bool)) false)))))

(declare-fun e!1803513 () Bool)

(declare-fun setElem!24899 () Context!5014)

(declare-fun tp!912945 () Bool)

(declare-fun setNonEmpty!24899 () Bool)

(assert (=> setNonEmpty!24899 (= setRes!24898 (and tp!912945 (inv!45800 setElem!24899) e!1803513))))

(declare-fun setRest!24899 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24899 (= (_2!19934 (h!39196 mapValue!18626)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24899 true) setRest!24899))))

(declare-fun setIsEmpty!24898 () Bool)

(assert (=> setIsEmpty!24898 setRes!24899))

(declare-fun setIsEmpty!24899 () Bool)

(assert (=> setIsEmpty!24899 setRes!24898))

(declare-fun b!2846445 () Bool)

(declare-fun tp!912941 () Bool)

(assert (=> b!2846445 (= e!1803512 tp!912941)))

(declare-fun b!2846446 () Bool)

(declare-fun tp!912940 () Bool)

(assert (=> b!2846446 (= e!1803513 tp!912940)))

(declare-fun b!2846447 () Bool)

(declare-fun tp!912944 () Bool)

(assert (=> b!2846447 (= e!1803509 tp!912944)))

(assert (= (and mapNonEmpty!18623 condMapEmpty!18626) mapIsEmpty!18626))

(assert (= (and mapNonEmpty!18623 (not condMapEmpty!18626)) mapNonEmpty!18626))

(assert (= b!2846442 b!2846443))

(assert (= (and b!2846442 condSetEmpty!24899) setIsEmpty!24899))

(assert (= (and b!2846442 (not condSetEmpty!24899)) setNonEmpty!24899))

(assert (= setNonEmpty!24899 b!2846446))

(assert (= (and mapNonEmpty!18626 ((_ is Cons!33776) mapValue!18626)) b!2846442))

(assert (= b!2846444 b!2846445))

(assert (= (and b!2846444 condSetEmpty!24898) setIsEmpty!24898))

(assert (= (and b!2846444 (not condSetEmpty!24898)) setNonEmpty!24898))

(assert (= setNonEmpty!24898 b!2846447))

(assert (= (and mapNonEmpty!18623 ((_ is Cons!33776) mapDefault!18626)) b!2846444))

(declare-fun m!3274189 () Bool)

(assert (=> mapNonEmpty!18626 m!3274189))

(declare-fun m!3274191 () Bool)

(assert (=> b!2846442 m!3274191))

(declare-fun m!3274193 () Bool)

(assert (=> b!2846444 m!3274193))

(declare-fun m!3274195 () Bool)

(assert (=> setNonEmpty!24899 m!3274195))

(declare-fun m!3274197 () Bool)

(assert (=> setNonEmpty!24898 m!3274197))

(declare-fun tp!912963 () Bool)

(declare-fun e!1803521 () Bool)

(declare-fun setRes!24902 () Bool)

(declare-fun e!1803522 () Bool)

(declare-fun tp!912964 () Bool)

(declare-fun b!2846456 () Bool)

(assert (=> b!2846456 (= e!1803521 (and tp!912963 (inv!45800 (_2!19933 (_1!19934 (h!39196 mapValue!18622)))) e!1803522 tp_is_empty!14721 setRes!24902 tp!912964))))

(declare-fun condSetEmpty!24902 () Bool)

(assert (=> b!2846456 (= condSetEmpty!24902 (= (_2!19934 (h!39196 mapValue!18622)) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> mapNonEmpty!18623 (= tp!912875 e!1803521)))

(declare-fun b!2846457 () Bool)

(declare-fun e!1803523 () Bool)

(declare-fun tp!912965 () Bool)

(assert (=> b!2846457 (= e!1803523 tp!912965)))

(declare-fun setNonEmpty!24902 () Bool)

(declare-fun setElem!24902 () Context!5014)

(declare-fun tp!912962 () Bool)

(assert (=> setNonEmpty!24902 (= setRes!24902 (and tp!912962 (inv!45800 setElem!24902) e!1803523))))

(declare-fun setRest!24902 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24902 (= (_2!19934 (h!39196 mapValue!18622)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24902 true) setRest!24902))))

(declare-fun b!2846458 () Bool)

(declare-fun tp!912961 () Bool)

(assert (=> b!2846458 (= e!1803522 tp!912961)))

(declare-fun setIsEmpty!24902 () Bool)

(assert (=> setIsEmpty!24902 setRes!24902))

(assert (= b!2846456 b!2846458))

(assert (= (and b!2846456 condSetEmpty!24902) setIsEmpty!24902))

(assert (= (and b!2846456 (not condSetEmpty!24902)) setNonEmpty!24902))

(assert (= setNonEmpty!24902 b!2846457))

(assert (= (and mapNonEmpty!18623 ((_ is Cons!33776) mapValue!18622)) b!2846456))

(declare-fun m!3274199 () Bool)

(assert (=> b!2846456 m!3274199))

(declare-fun m!3274201 () Bool)

(assert (=> setNonEmpty!24902 m!3274201))

(declare-fun e!1803524 () Bool)

(declare-fun b!2846459 () Bool)

(declare-fun e!1803525 () Bool)

(declare-fun tp!912969 () Bool)

(declare-fun setRes!24903 () Bool)

(declare-fun tp!912968 () Bool)

(assert (=> b!2846459 (= e!1803524 (and tp!912968 (inv!45800 (_2!19933 (_1!19934 (h!39196 mapDefault!18623)))) e!1803525 tp_is_empty!14721 setRes!24903 tp!912969))))

(declare-fun condSetEmpty!24903 () Bool)

(assert (=> b!2846459 (= condSetEmpty!24903 (= (_2!19934 (h!39196 mapDefault!18623)) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846308 (= tp!912867 e!1803524)))

(declare-fun b!2846460 () Bool)

(declare-fun e!1803526 () Bool)

(declare-fun tp!912970 () Bool)

(assert (=> b!2846460 (= e!1803526 tp!912970)))

(declare-fun setElem!24903 () Context!5014)

(declare-fun tp!912967 () Bool)

(declare-fun setNonEmpty!24903 () Bool)

(assert (=> setNonEmpty!24903 (= setRes!24903 (and tp!912967 (inv!45800 setElem!24903) e!1803526))))

(declare-fun setRest!24903 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24903 (= (_2!19934 (h!39196 mapDefault!18623)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24903 true) setRest!24903))))

(declare-fun b!2846461 () Bool)

(declare-fun tp!912966 () Bool)

(assert (=> b!2846461 (= e!1803525 tp!912966)))

(declare-fun setIsEmpty!24903 () Bool)

(assert (=> setIsEmpty!24903 setRes!24903))

(assert (= b!2846459 b!2846461))

(assert (= (and b!2846459 condSetEmpty!24903) setIsEmpty!24903))

(assert (= (and b!2846459 (not condSetEmpty!24903)) setNonEmpty!24903))

(assert (= setNonEmpty!24903 b!2846460))

(assert (= (and b!2846308 ((_ is Cons!33776) mapDefault!18623)) b!2846459))

(declare-fun m!3274203 () Bool)

(assert (=> b!2846459 m!3274203))

(declare-fun m!3274205 () Bool)

(assert (=> setNonEmpty!24903 m!3274205))

(declare-fun e!1803532 () Bool)

(declare-fun tp!912977 () Bool)

(declare-fun tp!912978 () Bool)

(declare-fun b!2846470 () Bool)

(assert (=> b!2846470 (= e!1803532 (and (inv!45797 (left!25429 (c!459293 prefix!1325))) tp!912977 (inv!45797 (right!25759 (c!459293 prefix!1325))) tp!912978))))

(declare-fun b!2846472 () Bool)

(declare-fun e!1803531 () Bool)

(declare-fun tp!912979 () Bool)

(assert (=> b!2846472 (= e!1803531 tp!912979)))

(declare-fun b!2846471 () Bool)

(declare-fun inv!45801 (IArray!20951) Bool)

(assert (=> b!2846471 (= e!1803532 (and (inv!45801 (xs!13591 (c!459293 prefix!1325))) e!1803531))))

(assert (=> b!2846307 (= tp!912873 (and (inv!45797 (c!459293 prefix!1325)) e!1803532))))

(assert (= (and b!2846307 ((_ is Node!10473) (c!459293 prefix!1325))) b!2846470))

(assert (= b!2846471 b!2846472))

(assert (= (and b!2846307 ((_ is Leaf!15936) (c!459293 prefix!1325))) b!2846471))

(declare-fun m!3274207 () Bool)

(assert (=> b!2846470 m!3274207))

(declare-fun m!3274209 () Bool)

(assert (=> b!2846470 m!3274209))

(declare-fun m!3274211 () Bool)

(assert (=> b!2846471 m!3274211))

(assert (=> b!2846307 m!3274095))

(declare-fun mapNonEmpty!18629 () Bool)

(declare-fun mapRes!18629 () Bool)

(declare-fun tp!913003 () Bool)

(declare-fun e!1803548 () Bool)

(assert (=> mapNonEmpty!18629 (= mapRes!18629 (and tp!913003 e!1803548))))

(declare-fun mapKey!18629 () (_ BitVec 32))

(declare-fun mapValue!18629 () List!33898)

(declare-fun mapRest!18629 () (Array (_ BitVec 32) List!33898))

(assert (=> mapNonEmpty!18629 (= mapRest!18623 (store mapRest!18629 mapKey!18629 mapValue!18629))))

(declare-fun mapDefault!18629 () List!33898)

(declare-fun setRes!24909 () Bool)

(declare-fun b!2846487 () Bool)

(declare-fun e!1803545 () Bool)

(declare-fun e!1803549 () Bool)

(declare-fun tp!913000 () Bool)

(assert (=> b!2846487 (= e!1803549 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 mapDefault!18629)))) e!1803545 tp_is_empty!14721 setRes!24909 tp!913000))))

(declare-fun condSetEmpty!24909 () Bool)

(assert (=> b!2846487 (= condSetEmpty!24909 (= (_2!19932 (h!39194 mapDefault!18629)) ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setIsEmpty!24908 () Bool)

(assert (=> setIsEmpty!24908 setRes!24909))

(declare-fun b!2846488 () Bool)

(declare-fun e!1803546 () Bool)

(declare-fun tp!913006 () Bool)

(assert (=> b!2846488 (= e!1803546 tp!913006)))

(declare-fun e!1803550 () Bool)

(declare-fun tp!913004 () Bool)

(declare-fun b!2846490 () Bool)

(declare-fun setRes!24908 () Bool)

(assert (=> b!2846490 (= e!1803548 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 mapValue!18629)))) e!1803550 tp_is_empty!14721 setRes!24908 tp!913004))))

(declare-fun condSetEmpty!24908 () Bool)

(assert (=> b!2846490 (= condSetEmpty!24908 (= (_2!19932 (h!39194 mapValue!18629)) ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setNonEmpty!24908 () Bool)

(declare-fun tp!912998 () Bool)

(declare-fun e!1803547 () Bool)

(declare-fun setElem!24908 () Context!5014)

(assert (=> setNonEmpty!24908 (= setRes!24908 (and tp!912998 (inv!45800 setElem!24908) e!1803547))))

(declare-fun setRest!24908 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24908 (= (_2!19932 (h!39194 mapValue!18629)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24908 true) setRest!24908))))

(declare-fun setNonEmpty!24909 () Bool)

(declare-fun setElem!24909 () Context!5014)

(declare-fun tp!912999 () Bool)

(assert (=> setNonEmpty!24909 (= setRes!24909 (and tp!912999 (inv!45800 setElem!24909) e!1803546))))

(declare-fun setRest!24909 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24909 (= (_2!19932 (h!39194 mapDefault!18629)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24909 true) setRest!24909))))

(declare-fun b!2846491 () Bool)

(declare-fun tp!913005 () Bool)

(assert (=> b!2846491 (= e!1803550 tp!913005)))

(declare-fun setIsEmpty!24909 () Bool)

(assert (=> setIsEmpty!24909 setRes!24908))

(declare-fun mapIsEmpty!18629 () Bool)

(assert (=> mapIsEmpty!18629 mapRes!18629))

(declare-fun b!2846492 () Bool)

(declare-fun tp!913002 () Bool)

(assert (=> b!2846492 (= e!1803545 tp!913002)))

(declare-fun condMapEmpty!18629 () Bool)

(assert (=> mapNonEmpty!18622 (= condMapEmpty!18629 (= mapRest!18623 ((as const (Array (_ BitVec 32) List!33898)) mapDefault!18629)))))

(assert (=> mapNonEmpty!18622 (= tp!912868 (and e!1803549 mapRes!18629))))

(declare-fun b!2846489 () Bool)

(declare-fun tp!913001 () Bool)

(assert (=> b!2846489 (= e!1803547 tp!913001)))

(assert (= (and mapNonEmpty!18622 condMapEmpty!18629) mapIsEmpty!18629))

(assert (= (and mapNonEmpty!18622 (not condMapEmpty!18629)) mapNonEmpty!18629))

(assert (= b!2846490 b!2846491))

(assert (= (and b!2846490 condSetEmpty!24908) setIsEmpty!24909))

(assert (= (and b!2846490 (not condSetEmpty!24908)) setNonEmpty!24908))

(assert (= setNonEmpty!24908 b!2846489))

(assert (= (and mapNonEmpty!18629 ((_ is Cons!33774) mapValue!18629)) b!2846490))

(assert (= b!2846487 b!2846492))

(assert (= (and b!2846487 condSetEmpty!24909) setIsEmpty!24908))

(assert (= (and b!2846487 (not condSetEmpty!24909)) setNonEmpty!24909))

(assert (= setNonEmpty!24909 b!2846488))

(assert (= (and mapNonEmpty!18622 ((_ is Cons!33774) mapDefault!18629)) b!2846487))

(declare-fun m!3274213 () Bool)

(assert (=> setNonEmpty!24908 m!3274213))

(declare-fun m!3274215 () Bool)

(assert (=> mapNonEmpty!18629 m!3274215))

(declare-fun m!3274217 () Bool)

(assert (=> setNonEmpty!24909 m!3274217))

(declare-fun m!3274219 () Bool)

(assert (=> b!2846487 m!3274219))

(declare-fun m!3274221 () Bool)

(assert (=> b!2846490 m!3274221))

(declare-fun b!2846493 () Bool)

(declare-fun e!1803552 () Bool)

(declare-fun tp!913007 () Bool)

(assert (=> b!2846493 (= e!1803552 tp!913007)))

(declare-fun setNonEmpty!24910 () Bool)

(declare-fun setElem!24910 () Context!5014)

(declare-fun tp!913008 () Bool)

(declare-fun setRes!24910 () Bool)

(assert (=> setNonEmpty!24910 (= setRes!24910 (and tp!913008 (inv!45800 setElem!24910) e!1803552))))

(declare-fun setRest!24910 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24910 (= (_2!19932 (h!39194 mapValue!18623)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24910 true) setRest!24910))))

(declare-fun setIsEmpty!24910 () Bool)

(assert (=> setIsEmpty!24910 setRes!24910))

(declare-fun b!2846494 () Bool)

(declare-fun e!1803553 () Bool)

(declare-fun tp!913010 () Bool)

(assert (=> b!2846494 (= e!1803553 tp!913010)))

(declare-fun e!1803551 () Bool)

(assert (=> mapNonEmpty!18622 (= tp!912876 e!1803551)))

(declare-fun tp!913009 () Bool)

(declare-fun b!2846495 () Bool)

(assert (=> b!2846495 (= e!1803551 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 mapValue!18623)))) e!1803553 tp_is_empty!14721 setRes!24910 tp!913009))))

(declare-fun condSetEmpty!24910 () Bool)

(assert (=> b!2846495 (= condSetEmpty!24910 (= (_2!19932 (h!39194 mapValue!18623)) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846495 b!2846494))

(assert (= (and b!2846495 condSetEmpty!24910) setIsEmpty!24910))

(assert (= (and b!2846495 (not condSetEmpty!24910)) setNonEmpty!24910))

(assert (= setNonEmpty!24910 b!2846493))

(assert (= (and mapNonEmpty!18622 ((_ is Cons!33774) mapValue!18623)) b!2846495))

(declare-fun m!3274223 () Bool)

(assert (=> setNonEmpty!24910 m!3274223))

(declare-fun m!3274225 () Bool)

(assert (=> b!2846495 m!3274225))

(declare-fun b!2846498 () Bool)

(declare-fun e!1803554 () Bool)

(declare-fun tp!913013 () Bool)

(assert (=> b!2846498 (= e!1803554 tp!913013)))

(declare-fun b!2846496 () Bool)

(assert (=> b!2846496 (= e!1803554 tp_is_empty!14721)))

(declare-fun b!2846497 () Bool)

(declare-fun tp!913012 () Bool)

(declare-fun tp!913014 () Bool)

(assert (=> b!2846497 (= e!1803554 (and tp!913012 tp!913014))))

(assert (=> b!2846314 (= tp!912872 e!1803554)))

(declare-fun b!2846499 () Bool)

(declare-fun tp!913015 () Bool)

(declare-fun tp!913011 () Bool)

(assert (=> b!2846499 (= e!1803554 (and tp!913015 tp!913011))))

(assert (= (and b!2846314 ((_ is ElementMatch!8479) (regOne!17471 r!13354))) b!2846496))

(assert (= (and b!2846314 ((_ is Concat!13782) (regOne!17471 r!13354))) b!2846497))

(assert (= (and b!2846314 ((_ is Star!8479) (regOne!17471 r!13354))) b!2846498))

(assert (= (and b!2846314 ((_ is Union!8479) (regOne!17471 r!13354))) b!2846499))

(declare-fun b!2846502 () Bool)

(declare-fun e!1803555 () Bool)

(declare-fun tp!913018 () Bool)

(assert (=> b!2846502 (= e!1803555 tp!913018)))

(declare-fun b!2846500 () Bool)

(assert (=> b!2846500 (= e!1803555 tp_is_empty!14721)))

(declare-fun b!2846501 () Bool)

(declare-fun tp!913017 () Bool)

(declare-fun tp!913019 () Bool)

(assert (=> b!2846501 (= e!1803555 (and tp!913017 tp!913019))))

(assert (=> b!2846314 (= tp!912863 e!1803555)))

(declare-fun b!2846503 () Bool)

(declare-fun tp!913020 () Bool)

(declare-fun tp!913016 () Bool)

(assert (=> b!2846503 (= e!1803555 (and tp!913020 tp!913016))))

(assert (= (and b!2846314 ((_ is ElementMatch!8479) (regTwo!17471 r!13354))) b!2846500))

(assert (= (and b!2846314 ((_ is Concat!13782) (regTwo!17471 r!13354))) b!2846501))

(assert (= (and b!2846314 ((_ is Star!8479) (regTwo!17471 r!13354))) b!2846502))

(assert (= (and b!2846314 ((_ is Union!8479) (regTwo!17471 r!13354))) b!2846503))

(declare-fun b!2846504 () Bool)

(declare-fun e!1803557 () Bool)

(declare-fun tp!913021 () Bool)

(assert (=> b!2846504 (= e!1803557 tp!913021)))

(declare-fun setNonEmpty!24911 () Bool)

(declare-fun tp!913022 () Bool)

(declare-fun setRes!24911 () Bool)

(declare-fun setElem!24911 () Context!5014)

(assert (=> setNonEmpty!24911 (= setRes!24911 (and tp!913022 (inv!45800 setElem!24911) e!1803557))))

(declare-fun setRest!24911 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24911 (= (_2!19932 (h!39194 mapDefault!18622)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24911 true) setRest!24911))))

(declare-fun setIsEmpty!24911 () Bool)

(assert (=> setIsEmpty!24911 setRes!24911))

(declare-fun b!2846505 () Bool)

(declare-fun e!1803558 () Bool)

(declare-fun tp!913024 () Bool)

(assert (=> b!2846505 (= e!1803558 tp!913024)))

(declare-fun e!1803556 () Bool)

(assert (=> b!2846315 (= tp!912878 e!1803556)))

(declare-fun b!2846506 () Bool)

(declare-fun tp!913023 () Bool)

(assert (=> b!2846506 (= e!1803556 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 mapDefault!18622)))) e!1803558 tp_is_empty!14721 setRes!24911 tp!913023))))

(declare-fun condSetEmpty!24911 () Bool)

(assert (=> b!2846506 (= condSetEmpty!24911 (= (_2!19932 (h!39194 mapDefault!18622)) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846506 b!2846505))

(assert (= (and b!2846506 condSetEmpty!24911) setIsEmpty!24911))

(assert (= (and b!2846506 (not condSetEmpty!24911)) setNonEmpty!24911))

(assert (= setNonEmpty!24911 b!2846504))

(assert (= (and b!2846315 ((_ is Cons!33774) mapDefault!18622)) b!2846506))

(declare-fun m!3274227 () Bool)

(assert (=> setNonEmpty!24911 m!3274227))

(declare-fun m!3274229 () Bool)

(assert (=> b!2846506 m!3274229))

(declare-fun tp!913028 () Bool)

(declare-fun setRes!24912 () Bool)

(declare-fun tp!913027 () Bool)

(declare-fun e!1803560 () Bool)

(declare-fun b!2846507 () Bool)

(declare-fun e!1803559 () Bool)

(assert (=> b!2846507 (= e!1803559 (and tp!913027 (inv!45800 (_2!19933 (_1!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))))) e!1803560 tp_is_empty!14721 setRes!24912 tp!913028))))

(declare-fun condSetEmpty!24912 () Bool)

(assert (=> b!2846507 (= condSetEmpty!24912 (= (_2!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846302 (= tp!912874 e!1803559)))

(declare-fun b!2846508 () Bool)

(declare-fun e!1803561 () Bool)

(declare-fun tp!913029 () Bool)

(assert (=> b!2846508 (= e!1803561 tp!913029)))

(declare-fun setElem!24912 () Context!5014)

(declare-fun setNonEmpty!24912 () Bool)

(declare-fun tp!913026 () Bool)

(assert (=> setNonEmpty!24912 (= setRes!24912 (and tp!913026 (inv!45800 setElem!24912) e!1803561))))

(declare-fun setRest!24912 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24912 (= (_2!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24912 true) setRest!24912))))

(declare-fun b!2846509 () Bool)

(declare-fun tp!913025 () Bool)

(assert (=> b!2846509 (= e!1803560 tp!913025)))

(declare-fun setIsEmpty!24912 () Bool)

(assert (=> setIsEmpty!24912 setRes!24912))

(assert (= b!2846507 b!2846509))

(assert (= (and b!2846507 condSetEmpty!24912) setIsEmpty!24912))

(assert (= (and b!2846507 (not condSetEmpty!24912)) setNonEmpty!24912))

(assert (= setNonEmpty!24912 b!2846508))

(assert (= (and b!2846302 ((_ is Cons!33776) (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))) b!2846507))

(declare-fun m!3274231 () Bool)

(assert (=> b!2846507 m!3274231))

(declare-fun m!3274233 () Bool)

(assert (=> setNonEmpty!24912 m!3274233))

(declare-fun e!1803563 () Bool)

(declare-fun e!1803562 () Bool)

(declare-fun tp!913032 () Bool)

(declare-fun setRes!24913 () Bool)

(declare-fun b!2846510 () Bool)

(declare-fun tp!913033 () Bool)

(assert (=> b!2846510 (= e!1803562 (and tp!913032 (inv!45800 (_2!19933 (_1!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))))) e!1803563 tp_is_empty!14721 setRes!24913 tp!913033))))

(declare-fun condSetEmpty!24913 () Bool)

(assert (=> b!2846510 (= condSetEmpty!24913 (= (_2!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846302 (= tp!912862 e!1803562)))

(declare-fun b!2846511 () Bool)

(declare-fun e!1803564 () Bool)

(declare-fun tp!913034 () Bool)

(assert (=> b!2846511 (= e!1803564 tp!913034)))

(declare-fun tp!913031 () Bool)

(declare-fun setElem!24913 () Context!5014)

(declare-fun setNonEmpty!24913 () Bool)

(assert (=> setNonEmpty!24913 (= setRes!24913 (and tp!913031 (inv!45800 setElem!24913) e!1803564))))

(declare-fun setRest!24913 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24913 (= (_2!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24913 true) setRest!24913))))

(declare-fun b!2846512 () Bool)

(declare-fun tp!913030 () Bool)

(assert (=> b!2846512 (= e!1803563 tp!913030)))

(declare-fun setIsEmpty!24913 () Bool)

(assert (=> setIsEmpty!24913 setRes!24913))

(assert (= b!2846510 b!2846512))

(assert (= (and b!2846510 condSetEmpty!24913) setIsEmpty!24913))

(assert (= (and b!2846510 (not condSetEmpty!24913)) setNonEmpty!24913))

(assert (= setNonEmpty!24913 b!2846511))

(assert (= (and b!2846302 ((_ is Cons!33776) (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))) b!2846510))

(declare-fun m!3274235 () Bool)

(assert (=> b!2846510 m!3274235))

(declare-fun m!3274237 () Bool)

(assert (=> setNonEmpty!24913 m!3274237))

(declare-fun b!2846515 () Bool)

(declare-fun e!1803565 () Bool)

(declare-fun tp!913037 () Bool)

(assert (=> b!2846515 (= e!1803565 tp!913037)))

(declare-fun b!2846513 () Bool)

(assert (=> b!2846513 (= e!1803565 tp_is_empty!14721)))

(declare-fun b!2846514 () Bool)

(declare-fun tp!913036 () Bool)

(declare-fun tp!913038 () Bool)

(assert (=> b!2846514 (= e!1803565 (and tp!913036 tp!913038))))

(assert (=> b!2846306 (= tp!912879 e!1803565)))

(declare-fun b!2846516 () Bool)

(declare-fun tp!913039 () Bool)

(declare-fun tp!913035 () Bool)

(assert (=> b!2846516 (= e!1803565 (and tp!913039 tp!913035))))

(assert (= (and b!2846306 ((_ is ElementMatch!8479) (reg!8808 r!13354))) b!2846513))

(assert (= (and b!2846306 ((_ is Concat!13782) (reg!8808 r!13354))) b!2846514))

(assert (= (and b!2846306 ((_ is Star!8479) (reg!8808 r!13354))) b!2846515))

(assert (= (and b!2846306 ((_ is Union!8479) (reg!8808 r!13354))) b!2846516))

(check-sat (not d!825321) (not b!2846504) (not b!2846456) tp_is_empty!14721 (not b!2846426) (not mapNonEmpty!18626) (not b!2846460) (not d!825313) (not b!2846492) (not b!2846470) (not setNonEmpty!24909) (not b!2846375) (not b!2846405) (not setNonEmpty!24912) (not b_next!83393) (not d!825317) (not b_next!83389) (not b!2846491) (not b!2846471) (not d!825305) (not setNonEmpty!24902) (not b!2846421) (not bm!183544) (not b!2846510) b_and!208927 (not b!2846348) (not d!825309) (not b!2846502) (not b!2846515) (not b!2846381) (not setNonEmpty!24903) (not b!2846422) (not b!2846457) (not b!2846387) (not b!2846345) (not b!2846472) (not b!2846392) (not d!825323) (not b!2846364) (not b!2846366) b_and!208931 (not b!2846458) (not b!2846425) (not b!2846487) (not b!2846372) (not d!825307) (not b!2846459) (not b!2846338) (not b!2846357) (not b!2846503) (not mapNonEmpty!18629) (not b!2846443) (not setNonEmpty!24899) (not b!2846497) (not b!2846406) (not setNonEmpty!24893) (not b!2846395) (not b!2846495) (not b!2846512) (not b!2846409) (not b!2846514) (not b!2846445) (not b_next!83395) (not b!2846505) (not d!825311) (not setNonEmpty!24898) (not b!2846423) (not b!2846307) (not b!2846444) (not b!2846427) (not b!2846407) (not b!2846508) (not d!825315) (not b!2846507) (not b!2846493) (not b!2846408) (not bm!183543) (not setNonEmpty!24892) (not setNonEmpty!24911) (not d!825303) (not b!2846442) (not b!2846446) (not b!2846447) (not b!2846488) (not b!2846386) (not setNonEmpty!24910) (not b!2846394) (not b!2846489) (not b!2846393) (not d!825319) b_and!208933 (not b!2846369) (not d!825295) (not b!2846461) (not b_next!83391) (not b!2846380) (not b!2846498) b_and!208929 (not b!2846506) (not b!2846509) (not b!2846494) (not b!2846404) (not b!2846365) (not b!2846511) (not b!2846501) (not setNonEmpty!24908) (not b!2846490) (not b!2846499) (not b!2846355) (not setNonEmpty!24913) (not b!2846516))
(check-sat (not b_next!83393) (not b_next!83389) b_and!208927 b_and!208931 (not b_next!83395) b_and!208933 (not b_next!83391) b_and!208929)
(get-model)

(declare-fun b!2846517 () Bool)

(declare-fun res!1183688 () Bool)

(declare-fun e!1803567 () Bool)

(assert (=> b!2846517 (=> (not res!1183688) (not e!1803567))))

(declare-fun call!183552 () Bool)

(assert (=> b!2846517 (= res!1183688 call!183552)))

(declare-fun e!1803569 () Bool)

(assert (=> b!2846517 (= e!1803569 e!1803567)))

(declare-fun b!2846518 () Bool)

(declare-fun e!1803572 () Bool)

(assert (=> b!2846518 (= e!1803572 e!1803569)))

(declare-fun c!459316 () Bool)

(assert (=> b!2846518 (= c!459316 ((_ is Union!8479) (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))))))

(declare-fun bm!183545 () Bool)

(declare-fun call!183551 () Bool)

(assert (=> bm!183545 (= call!183552 call!183551)))

(declare-fun b!2846519 () Bool)

(declare-fun e!1803568 () Bool)

(assert (=> b!2846519 (= e!1803568 call!183551)))

(declare-fun d!825329 () Bool)

(declare-fun res!1183685 () Bool)

(declare-fun e!1803570 () Bool)

(assert (=> d!825329 (=> res!1183685 e!1803570)))

(assert (=> d!825329 (= res!1183685 ((_ is ElementMatch!8479) (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))))))

(assert (=> d!825329 (= (validRegex!3370 (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))) e!1803570)))

(declare-fun b!2846520 () Bool)

(assert (=> b!2846520 (= e!1803570 e!1803572)))

(declare-fun c!459317 () Bool)

(assert (=> b!2846520 (= c!459317 ((_ is Star!8479) (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))))))

(declare-fun call!183550 () Bool)

(declare-fun bm!183546 () Bool)

(assert (=> bm!183546 (= call!183550 (validRegex!3370 (ite c!459316 (regTwo!17471 (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))) (regOne!17470 (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))))))))

(declare-fun bm!183547 () Bool)

(assert (=> bm!183547 (= call!183551 (validRegex!3370 (ite c!459317 (reg!8808 (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))) (ite c!459316 (regOne!17471 (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))) (regTwo!17470 (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354)))))))))

(declare-fun b!2846521 () Bool)

(assert (=> b!2846521 (= e!1803572 e!1803568)))

(declare-fun res!1183687 () Bool)

(assert (=> b!2846521 (= res!1183687 (not (nullable!2629 (reg!8808 (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354))))))))

(assert (=> b!2846521 (=> (not res!1183687) (not e!1803568))))

(declare-fun b!2846522 () Bool)

(declare-fun e!1803571 () Bool)

(declare-fun e!1803566 () Bool)

(assert (=> b!2846522 (= e!1803571 e!1803566)))

(declare-fun res!1183686 () Bool)

(assert (=> b!2846522 (=> (not res!1183686) (not e!1803566))))

(assert (=> b!2846522 (= res!1183686 call!183550)))

(declare-fun b!2846523 () Bool)

(declare-fun res!1183689 () Bool)

(assert (=> b!2846523 (=> res!1183689 e!1803571)))

(assert (=> b!2846523 (= res!1183689 (not ((_ is Concat!13782) (ite c!459298 (regTwo!17471 r!13354) (regOne!17470 r!13354)))))))

(assert (=> b!2846523 (= e!1803569 e!1803571)))

(declare-fun b!2846524 () Bool)

(assert (=> b!2846524 (= e!1803567 call!183550)))

(declare-fun b!2846525 () Bool)

(assert (=> b!2846525 (= e!1803566 call!183552)))

(assert (= (and d!825329 (not res!1183685)) b!2846520))

(assert (= (and b!2846520 c!459317) b!2846521))

(assert (= (and b!2846520 (not c!459317)) b!2846518))

(assert (= (and b!2846521 res!1183687) b!2846519))

(assert (= (and b!2846518 c!459316) b!2846517))

(assert (= (and b!2846518 (not c!459316)) b!2846523))

(assert (= (and b!2846517 res!1183688) b!2846524))

(assert (= (and b!2846523 (not res!1183689)) b!2846522))

(assert (= (and b!2846522 res!1183686) b!2846525))

(assert (= (or b!2846517 b!2846525) bm!183545))

(assert (= (or b!2846524 b!2846522) bm!183546))

(assert (= (or b!2846519 bm!183545) bm!183547))

(declare-fun m!3274239 () Bool)

(assert (=> bm!183546 m!3274239))

(declare-fun m!3274241 () Bool)

(assert (=> bm!183547 m!3274241))

(declare-fun m!3274243 () Bool)

(assert (=> b!2846521 m!3274243))

(assert (=> bm!183543 d!825329))

(declare-fun d!825331 () Bool)

(declare-fun c!459318 () Bool)

(assert (=> d!825331 (= c!459318 (isEmpty!18573 (tail!4483 lt!1012722)))))

(declare-fun e!1803573 () Bool)

(assert (=> d!825331 (= (prefixMatch!815 (derivativeStep!2254 r!13354 (head!6258 lt!1012722)) (tail!4483 lt!1012722)) e!1803573)))

(declare-fun b!2846526 () Bool)

(assert (=> b!2846526 (= e!1803573 (not (lostCause!729 (derivativeStep!2254 r!13354 (head!6258 lt!1012722)))))))

(declare-fun b!2846527 () Bool)

(assert (=> b!2846527 (= e!1803573 (prefixMatch!815 (derivativeStep!2254 (derivativeStep!2254 r!13354 (head!6258 lt!1012722)) (head!6258 (tail!4483 lt!1012722))) (tail!4483 (tail!4483 lt!1012722))))))

(assert (= (and d!825331 c!459318) b!2846526))

(assert (= (and d!825331 (not c!459318)) b!2846527))

(assert (=> d!825331 m!3274169))

(declare-fun m!3274245 () Bool)

(assert (=> d!825331 m!3274245))

(assert (=> b!2846526 m!3274167))

(declare-fun m!3274247 () Bool)

(assert (=> b!2846526 m!3274247))

(assert (=> b!2846527 m!3274169))

(declare-fun m!3274249 () Bool)

(assert (=> b!2846527 m!3274249))

(assert (=> b!2846527 m!3274167))

(assert (=> b!2846527 m!3274249))

(declare-fun m!3274251 () Bool)

(assert (=> b!2846527 m!3274251))

(assert (=> b!2846527 m!3274169))

(declare-fun m!3274253 () Bool)

(assert (=> b!2846527 m!3274253))

(assert (=> b!2846527 m!3274251))

(assert (=> b!2846527 m!3274253))

(declare-fun m!3274255 () Bool)

(assert (=> b!2846527 m!3274255))

(assert (=> b!2846387 d!825331))

(declare-fun call!183563 () Regex!8479)

(declare-fun e!1803584 () Regex!8479)

(declare-fun call!183564 () Regex!8479)

(declare-fun b!2846548 () Bool)

(assert (=> b!2846548 (= e!1803584 (Union!8479 (Concat!13782 call!183563 (regTwo!17470 r!13354)) call!183564))))

(declare-fun b!2846549 () Bool)

(declare-fun e!1803588 () Regex!8479)

(declare-fun e!1803586 () Regex!8479)

(assert (=> b!2846549 (= e!1803588 e!1803586)))

(declare-fun c!459329 () Bool)

(assert (=> b!2846549 (= c!459329 ((_ is Star!8479) r!13354))))

(declare-fun bm!183556 () Bool)

(declare-fun call!183562 () Regex!8479)

(declare-fun call!183561 () Regex!8479)

(assert (=> bm!183556 (= call!183562 call!183561)))

(declare-fun bm!183557 () Bool)

(assert (=> bm!183557 (= call!183563 call!183562)))

(declare-fun b!2846550 () Bool)

(declare-fun c!459332 () Bool)

(assert (=> b!2846550 (= c!459332 (nullable!2629 (regOne!17470 r!13354)))))

(assert (=> b!2846550 (= e!1803586 e!1803584)))

(declare-fun b!2846551 () Bool)

(assert (=> b!2846551 (= e!1803584 (Union!8479 (Concat!13782 call!183563 (regTwo!17470 r!13354)) EmptyLang!8479))))

(declare-fun b!2846552 () Bool)

(declare-fun e!1803587 () Regex!8479)

(assert (=> b!2846552 (= e!1803587 EmptyLang!8479)))

(declare-fun bm!183558 () Bool)

(declare-fun c!459331 () Bool)

(assert (=> bm!183558 (= call!183561 (derivativeStep!2254 (ite c!459331 (regTwo!17471 r!13354) (ite c!459329 (reg!8808 r!13354) (regOne!17470 r!13354))) (head!6258 lt!1012722)))))

(declare-fun b!2846553 () Bool)

(assert (=> b!2846553 (= e!1803588 (Union!8479 call!183564 call!183561))))

(declare-fun b!2846554 () Bool)

(assert (=> b!2846554 (= e!1803586 (Concat!13782 call!183562 r!13354))))

(declare-fun b!2846555 () Bool)

(declare-fun e!1803585 () Regex!8479)

(assert (=> b!2846555 (= e!1803585 (ite (= (head!6258 lt!1012722) (c!459292 r!13354)) EmptyExpr!8479 EmptyLang!8479))))

(declare-fun bm!183559 () Bool)

(assert (=> bm!183559 (= call!183564 (derivativeStep!2254 (ite c!459331 (regOne!17471 r!13354) (regTwo!17470 r!13354)) (head!6258 lt!1012722)))))

(declare-fun d!825333 () Bool)

(declare-fun lt!1012747 () Regex!8479)

(assert (=> d!825333 (validRegex!3370 lt!1012747)))

(assert (=> d!825333 (= lt!1012747 e!1803587)))

(declare-fun c!459333 () Bool)

(assert (=> d!825333 (= c!459333 (or ((_ is EmptyExpr!8479) r!13354) ((_ is EmptyLang!8479) r!13354)))))

(assert (=> d!825333 (validRegex!3370 r!13354)))

(assert (=> d!825333 (= (derivativeStep!2254 r!13354 (head!6258 lt!1012722)) lt!1012747)))

(declare-fun b!2846556 () Bool)

(assert (=> b!2846556 (= e!1803587 e!1803585)))

(declare-fun c!459330 () Bool)

(assert (=> b!2846556 (= c!459330 ((_ is ElementMatch!8479) r!13354))))

(declare-fun b!2846557 () Bool)

(assert (=> b!2846557 (= c!459331 ((_ is Union!8479) r!13354))))

(assert (=> b!2846557 (= e!1803585 e!1803588)))

(assert (= (and d!825333 c!459333) b!2846552))

(assert (= (and d!825333 (not c!459333)) b!2846556))

(assert (= (and b!2846556 c!459330) b!2846555))

(assert (= (and b!2846556 (not c!459330)) b!2846557))

(assert (= (and b!2846557 c!459331) b!2846553))

(assert (= (and b!2846557 (not c!459331)) b!2846549))

(assert (= (and b!2846549 c!459329) b!2846554))

(assert (= (and b!2846549 (not c!459329)) b!2846550))

(assert (= (and b!2846550 c!459332) b!2846548))

(assert (= (and b!2846550 (not c!459332)) b!2846551))

(assert (= (or b!2846548 b!2846551) bm!183557))

(assert (= (or b!2846554 bm!183557) bm!183556))

(assert (= (or b!2846553 bm!183556) bm!183558))

(assert (= (or b!2846553 b!2846548) bm!183559))

(declare-fun m!3274257 () Bool)

(assert (=> b!2846550 m!3274257))

(assert (=> bm!183558 m!3274165))

(declare-fun m!3274259 () Bool)

(assert (=> bm!183558 m!3274259))

(assert (=> bm!183559 m!3274165))

(declare-fun m!3274261 () Bool)

(assert (=> bm!183559 m!3274261))

(declare-fun m!3274263 () Bool)

(assert (=> d!825333 m!3274263))

(assert (=> d!825333 m!3274083))

(assert (=> b!2846387 d!825333))

(declare-fun d!825335 () Bool)

(assert (=> d!825335 (= (head!6258 lt!1012722) (h!39195 lt!1012722))))

(assert (=> b!2846387 d!825335))

(declare-fun d!825337 () Bool)

(assert (=> d!825337 (= (tail!4483 lt!1012722) (t!232922 lt!1012722))))

(assert (=> b!2846387 d!825337))

(declare-fun d!825339 () Bool)

(declare-fun lambda!104439 () Int)

(declare-fun forall!6929 (List!33897 Int) Bool)

(assert (=> d!825339 (= (inv!45800 (_1!19931 (_1!19932 (h!39194 mapDefault!18622)))) (forall!6929 (exprs!3007 (_1!19931 (_1!19932 (h!39194 mapDefault!18622)))) lambda!104439))))

(declare-fun bs!519635 () Bool)

(assert (= bs!519635 d!825339))

(declare-fun m!3274265 () Bool)

(assert (=> bs!519635 m!3274265))

(assert (=> b!2846506 d!825339))

(declare-fun d!825341 () Bool)

(declare-fun c!459334 () Bool)

(assert (=> d!825341 (= c!459334 (isEmpty!18573 (tail!4483 (dropList!1024 prefix!1325 0))))))

(declare-fun e!1803589 () Bool)

(assert (=> d!825341 (= (prefixMatchZipper!239 (derivationStepZipper!408 lt!1012725 (head!6258 (dropList!1024 prefix!1325 0))) (tail!4483 (dropList!1024 prefix!1325 0))) e!1803589)))

(declare-fun b!2846558 () Bool)

(assert (=> b!2846558 (= e!1803589 (not (lostCauseZipper!522 (derivationStepZipper!408 lt!1012725 (head!6258 (dropList!1024 prefix!1325 0))))))))

(declare-fun b!2846559 () Bool)

(assert (=> b!2846559 (= e!1803589 (prefixMatchZipper!239 (derivationStepZipper!408 (derivationStepZipper!408 lt!1012725 (head!6258 (dropList!1024 prefix!1325 0))) (head!6258 (tail!4483 (dropList!1024 prefix!1325 0)))) (tail!4483 (tail!4483 (dropList!1024 prefix!1325 0)))))))

(assert (= (and d!825341 c!459334) b!2846558))

(assert (= (and d!825341 (not c!459334)) b!2846559))

(assert (=> d!825341 m!3274155))

(declare-fun m!3274267 () Bool)

(assert (=> d!825341 m!3274267))

(assert (=> b!2846558 m!3274153))

(declare-fun m!3274269 () Bool)

(assert (=> b!2846558 m!3274269))

(assert (=> b!2846559 m!3274155))

(declare-fun m!3274271 () Bool)

(assert (=> b!2846559 m!3274271))

(assert (=> b!2846559 m!3274153))

(assert (=> b!2846559 m!3274271))

(declare-fun m!3274273 () Bool)

(assert (=> b!2846559 m!3274273))

(assert (=> b!2846559 m!3274155))

(declare-fun m!3274275 () Bool)

(assert (=> b!2846559 m!3274275))

(assert (=> b!2846559 m!3274273))

(assert (=> b!2846559 m!3274275))

(declare-fun m!3274277 () Bool)

(assert (=> b!2846559 m!3274277))

(assert (=> b!2846381 d!825341))

(declare-fun d!825343 () Bool)

(assert (=> d!825343 true))

(declare-fun lambda!104442 () Int)

(declare-fun flatMap!199 ((InoxSet Context!5014) Int) (InoxSet Context!5014))

(assert (=> d!825343 (= (derivationStepZipper!408 lt!1012725 (head!6258 (dropList!1024 prefix!1325 0))) (flatMap!199 lt!1012725 lambda!104442))))

(declare-fun bs!519636 () Bool)

(assert (= bs!519636 d!825343))

(declare-fun m!3274279 () Bool)

(assert (=> bs!519636 m!3274279))

(assert (=> b!2846381 d!825343))

(declare-fun d!825345 () Bool)

(assert (=> d!825345 (= (head!6258 (dropList!1024 prefix!1325 0)) (h!39195 (dropList!1024 prefix!1325 0)))))

(assert (=> b!2846381 d!825345))

(declare-fun d!825347 () Bool)

(assert (=> d!825347 (= (tail!4483 (dropList!1024 prefix!1325 0)) (t!232922 (dropList!1024 prefix!1325 0)))))

(assert (=> b!2846381 d!825347))

(assert (=> d!825303 d!825319))

(declare-fun d!825349 () Bool)

(declare-fun lt!1012750 () Int)

(declare-fun size!26226 (List!33899) Int)

(assert (=> d!825349 (= lt!1012750 (size!26226 (list!12581 prefix!1325)))))

(declare-fun size!26227 (Conc!10473) Int)

(assert (=> d!825349 (= lt!1012750 (size!26227 (c!459293 prefix!1325)))))

(assert (=> d!825349 (= (size!26225 prefix!1325) lt!1012750)))

(declare-fun bs!519637 () Bool)

(assert (= bs!519637 d!825349))

(assert (=> bs!519637 m!3274081))

(assert (=> bs!519637 m!3274081))

(declare-fun m!3274281 () Bool)

(assert (=> bs!519637 m!3274281))

(declare-fun m!3274283 () Bool)

(assert (=> bs!519637 m!3274283))

(assert (=> d!825303 d!825349))

(declare-fun bs!519638 () Bool)

(declare-fun d!825351 () Bool)

(assert (= bs!519638 (and d!825351 d!825339)))

(declare-fun lambda!104443 () Int)

(assert (=> bs!519638 (= lambda!104443 lambda!104439)))

(assert (=> d!825351 (= (inv!45800 setElem!24913) (forall!6929 (exprs!3007 setElem!24913) lambda!104443))))

(declare-fun bs!519639 () Bool)

(assert (= bs!519639 d!825351))

(declare-fun m!3274285 () Bool)

(assert (=> bs!519639 m!3274285))

(assert (=> setNonEmpty!24913 d!825351))

(declare-fun bs!519640 () Bool)

(declare-fun d!825353 () Bool)

(assert (= bs!519640 (and d!825353 d!825339)))

(declare-fun lambda!104444 () Int)

(assert (=> bs!519640 (= lambda!104444 lambda!104439)))

(declare-fun bs!519641 () Bool)

(assert (= bs!519641 (and d!825353 d!825351)))

(assert (=> bs!519641 (= lambda!104444 lambda!104443)))

(assert (=> d!825353 (= (inv!45800 setElem!24903) (forall!6929 (exprs!3007 setElem!24903) lambda!104444))))

(declare-fun bs!519642 () Bool)

(assert (= bs!519642 d!825353))

(declare-fun m!3274287 () Bool)

(assert (=> bs!519642 m!3274287))

(assert (=> setNonEmpty!24903 d!825353))

(declare-fun bs!519643 () Bool)

(declare-fun d!825355 () Bool)

(assert (= bs!519643 (and d!825355 d!825339)))

(declare-fun lambda!104445 () Int)

(assert (=> bs!519643 (= lambda!104445 lambda!104439)))

(declare-fun bs!519644 () Bool)

(assert (= bs!519644 (and d!825355 d!825351)))

(assert (=> bs!519644 (= lambda!104445 lambda!104443)))

(declare-fun bs!519645 () Bool)

(assert (= bs!519645 (and d!825355 d!825353)))

(assert (=> bs!519645 (= lambda!104445 lambda!104444)))

(assert (=> d!825355 (= (inv!45800 setElem!24912) (forall!6929 (exprs!3007 setElem!24912) lambda!104445))))

(declare-fun bs!519646 () Bool)

(assert (= bs!519646 d!825355))

(declare-fun m!3274289 () Bool)

(assert (=> bs!519646 m!3274289))

(assert (=> setNonEmpty!24912 d!825355))

(declare-fun bs!519647 () Bool)

(declare-fun d!825357 () Bool)

(assert (= bs!519647 (and d!825357 d!825339)))

(declare-fun lambda!104446 () Int)

(assert (=> bs!519647 (= lambda!104446 lambda!104439)))

(declare-fun bs!519648 () Bool)

(assert (= bs!519648 (and d!825357 d!825351)))

(assert (=> bs!519648 (= lambda!104446 lambda!104443)))

(declare-fun bs!519649 () Bool)

(assert (= bs!519649 (and d!825357 d!825353)))

(assert (=> bs!519649 (= lambda!104446 lambda!104444)))

(declare-fun bs!519650 () Bool)

(assert (= bs!519650 (and d!825357 d!825355)))

(assert (=> bs!519650 (= lambda!104446 lambda!104445)))

(assert (=> d!825357 (= (inv!45800 setElem!24902) (forall!6929 (exprs!3007 setElem!24902) lambda!104446))))

(declare-fun bs!519651 () Bool)

(assert (= bs!519651 d!825357))

(declare-fun m!3274291 () Bool)

(assert (=> bs!519651 m!3274291))

(assert (=> setNonEmpty!24902 d!825357))

(declare-fun bs!519652 () Bool)

(declare-fun d!825359 () Bool)

(assert (= bs!519652 (and d!825359 d!825339)))

(declare-fun lambda!104447 () Int)

(assert (=> bs!519652 (= lambda!104447 lambda!104439)))

(declare-fun bs!519653 () Bool)

(assert (= bs!519653 (and d!825359 d!825351)))

(assert (=> bs!519653 (= lambda!104447 lambda!104443)))

(declare-fun bs!519654 () Bool)

(assert (= bs!519654 (and d!825359 d!825355)))

(assert (=> bs!519654 (= lambda!104447 lambda!104445)))

(declare-fun bs!519655 () Bool)

(assert (= bs!519655 (and d!825359 d!825357)))

(assert (=> bs!519655 (= lambda!104447 lambda!104446)))

(declare-fun bs!519656 () Bool)

(assert (= bs!519656 (and d!825359 d!825353)))

(assert (=> bs!519656 (= lambda!104447 lambda!104444)))

(assert (=> d!825359 (= (inv!45800 (_2!19933 (_1!19934 (h!39196 mapValue!18622)))) (forall!6929 (exprs!3007 (_2!19933 (_1!19934 (h!39196 mapValue!18622)))) lambda!104447))))

(declare-fun bs!519657 () Bool)

(assert (= bs!519657 d!825359))

(declare-fun m!3274293 () Bool)

(assert (=> bs!519657 m!3274293))

(assert (=> b!2846456 d!825359))

(declare-fun bs!519658 () Bool)

(declare-fun d!825361 () Bool)

(assert (= bs!519658 (and d!825361 d!825339)))

(declare-fun lambda!104448 () Int)

(assert (=> bs!519658 (= lambda!104448 lambda!104439)))

(declare-fun bs!519659 () Bool)

(assert (= bs!519659 (and d!825361 d!825351)))

(assert (=> bs!519659 (= lambda!104448 lambda!104443)))

(declare-fun bs!519660 () Bool)

(assert (= bs!519660 (and d!825361 d!825355)))

(assert (=> bs!519660 (= lambda!104448 lambda!104445)))

(declare-fun bs!519661 () Bool)

(assert (= bs!519661 (and d!825361 d!825359)))

(assert (=> bs!519661 (= lambda!104448 lambda!104447)))

(declare-fun bs!519662 () Bool)

(assert (= bs!519662 (and d!825361 d!825357)))

(assert (=> bs!519662 (= lambda!104448 lambda!104446)))

(declare-fun bs!519663 () Bool)

(assert (= bs!519663 (and d!825361 d!825353)))

(assert (=> bs!519663 (= lambda!104448 lambda!104444)))

(assert (=> d!825361 (= (inv!45800 (_1!19931 (_1!19932 (h!39194 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))))) (forall!6929 (exprs!3007 (_1!19931 (_1!19932 (h!39194 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))))) lambda!104448))))

(declare-fun bs!519664 () Bool)

(assert (= bs!519664 d!825361))

(declare-fun m!3274295 () Bool)

(assert (=> bs!519664 m!3274295))

(assert (=> b!2846409 d!825361))

(declare-fun bs!519665 () Bool)

(declare-fun d!825363 () Bool)

(assert (= bs!519665 (and d!825363 d!825361)))

(declare-fun lambda!104449 () Int)

(assert (=> bs!519665 (= lambda!104449 lambda!104448)))

(declare-fun bs!519666 () Bool)

(assert (= bs!519666 (and d!825363 d!825339)))

(assert (=> bs!519666 (= lambda!104449 lambda!104439)))

(declare-fun bs!519667 () Bool)

(assert (= bs!519667 (and d!825363 d!825351)))

(assert (=> bs!519667 (= lambda!104449 lambda!104443)))

(declare-fun bs!519668 () Bool)

(assert (= bs!519668 (and d!825363 d!825355)))

(assert (=> bs!519668 (= lambda!104449 lambda!104445)))

(declare-fun bs!519669 () Bool)

(assert (= bs!519669 (and d!825363 d!825359)))

(assert (=> bs!519669 (= lambda!104449 lambda!104447)))

(declare-fun bs!519670 () Bool)

(assert (= bs!519670 (and d!825363 d!825357)))

(assert (=> bs!519670 (= lambda!104449 lambda!104446)))

(declare-fun bs!519671 () Bool)

(assert (= bs!519671 (and d!825363 d!825353)))

(assert (=> bs!519671 (= lambda!104449 lambda!104444)))

(assert (=> d!825363 (= (inv!45800 (_1!19931 (_1!19932 (h!39194 mapValue!18623)))) (forall!6929 (exprs!3007 (_1!19931 (_1!19932 (h!39194 mapValue!18623)))) lambda!104449))))

(declare-fun bs!519672 () Bool)

(assert (= bs!519672 d!825363))

(declare-fun m!3274297 () Bool)

(assert (=> bs!519672 m!3274297))

(assert (=> b!2846495 d!825363))

(declare-fun bs!519673 () Bool)

(declare-fun b!2846566 () Bool)

(declare-fun d!825365 () Bool)

(assert (= bs!519673 (and b!2846566 d!825365)))

(declare-fun lambda!104463 () Int)

(declare-fun lambda!104462 () Int)

(assert (=> bs!519673 (not (= lambda!104463 lambda!104462))))

(declare-fun bs!519674 () Bool)

(declare-fun b!2846567 () Bool)

(assert (= bs!519674 (and b!2846567 d!825365)))

(declare-fun lambda!104464 () Int)

(assert (=> bs!519674 (not (= lambda!104464 lambda!104462))))

(declare-fun bs!519675 () Bool)

(assert (= bs!519675 (and b!2846567 b!2846566)))

(assert (=> bs!519675 (= lambda!104464 lambda!104463)))

(declare-fun e!1803596 () Unit!47549)

(declare-fun Unit!47551 () Unit!47549)

(assert (=> b!2846567 (= e!1803596 Unit!47551)))

(declare-fun lt!1012769 () List!33901)

(declare-fun call!183570 () List!33901)

(assert (=> b!2846567 (= lt!1012769 call!183570)))

(declare-fun lt!1012771 () Unit!47549)

(declare-fun lemmaForallThenNotExists!115 (List!33901 Int) Unit!47549)

(assert (=> b!2846567 (= lt!1012771 (lemmaForallThenNotExists!115 lt!1012769 lambda!104462))))

(declare-fun call!183569 () Bool)

(assert (=> b!2846567 (not call!183569)))

(declare-fun lt!1012770 () Unit!47549)

(assert (=> b!2846567 (= lt!1012770 lt!1012771)))

(declare-fun Unit!47552 () Unit!47549)

(assert (=> b!2846566 (= e!1803596 Unit!47552)))

(declare-fun lt!1012772 () List!33901)

(assert (=> b!2846566 (= lt!1012772 call!183570)))

(declare-fun lt!1012773 () Unit!47549)

(declare-fun lemmaNotForallThenExists!115 (List!33901 Int) Unit!47549)

(assert (=> b!2846566 (= lt!1012773 (lemmaNotForallThenExists!115 lt!1012772 lambda!104462))))

(assert (=> b!2846566 call!183569))

(declare-fun lt!1012774 () Unit!47549)

(assert (=> b!2846566 (= lt!1012774 lt!1012773)))

(declare-fun c!459347 () Bool)

(declare-fun bm!183564 () Bool)

(declare-fun exists!1032 (List!33901 Int) Bool)

(assert (=> bm!183564 (= call!183569 (exists!1032 (ite c!459347 lt!1012772 lt!1012769) (ite c!459347 lambda!104463 lambda!104464)))))

(declare-fun lt!1012767 () Bool)

(declare-datatypes ((Option!6298 0))(
  ( (None!6297) (Some!6297 (v!34407 List!33899)) )
))
(declare-fun isEmpty!18574 (Option!6298) Bool)

(declare-fun getLanguageWitness!229 ((InoxSet Context!5014)) Option!6298)

(assert (=> d!825365 (= lt!1012767 (isEmpty!18574 (getLanguageWitness!229 lt!1012725)))))

(declare-fun forall!6930 ((InoxSet Context!5014) Int) Bool)

(assert (=> d!825365 (= lt!1012767 (forall!6930 lt!1012725 lambda!104462))))

(declare-fun lt!1012768 () Unit!47549)

(assert (=> d!825365 (= lt!1012768 e!1803596)))

(assert (=> d!825365 (= c!459347 (not (forall!6930 lt!1012725 lambda!104462)))))

(assert (=> d!825365 (= (lostCauseZipper!522 lt!1012725) lt!1012767)))

(declare-fun bm!183565 () Bool)

(assert (=> bm!183565 (= call!183570 (toList!1914 lt!1012725))))

(assert (= (and d!825365 c!459347) b!2846566))

(assert (= (and d!825365 (not c!459347)) b!2846567))

(assert (= (or b!2846566 b!2846567) bm!183564))

(assert (= (or b!2846566 b!2846567) bm!183565))

(declare-fun m!3274299 () Bool)

(assert (=> bm!183564 m!3274299))

(declare-fun m!3274301 () Bool)

(assert (=> b!2846567 m!3274301))

(declare-fun m!3274303 () Bool)

(assert (=> b!2846566 m!3274303))

(assert (=> bm!183565 m!3274061))

(declare-fun m!3274305 () Bool)

(assert (=> d!825365 m!3274305))

(assert (=> d!825365 m!3274305))

(declare-fun m!3274307 () Bool)

(assert (=> d!825365 m!3274307))

(declare-fun m!3274309 () Bool)

(assert (=> d!825365 m!3274309))

(assert (=> d!825365 m!3274309))

(assert (=> b!2846394 d!825365))

(assert (=> b!2846365 d!825365))

(declare-fun d!825367 () Bool)

(declare-fun nullableFct!796 (Regex!8479) Bool)

(assert (=> d!825367 (= (nullable!2629 (reg!8808 r!13354)) (nullableFct!796 (reg!8808 r!13354)))))

(declare-fun bs!519676 () Bool)

(assert (= bs!519676 d!825367))

(declare-fun m!3274311 () Bool)

(assert (=> bs!519676 m!3274311))

(assert (=> b!2846338 d!825367))

(declare-fun bs!519677 () Bool)

(declare-fun d!825369 () Bool)

(assert (= bs!519677 (and d!825369 d!825361)))

(declare-fun lambda!104465 () Int)

(assert (=> bs!519677 (= lambda!104465 lambda!104448)))

(declare-fun bs!519678 () Bool)

(assert (= bs!519678 (and d!825369 d!825363)))

(assert (=> bs!519678 (= lambda!104465 lambda!104449)))

(declare-fun bs!519679 () Bool)

(assert (= bs!519679 (and d!825369 d!825339)))

(assert (=> bs!519679 (= lambda!104465 lambda!104439)))

(declare-fun bs!519680 () Bool)

(assert (= bs!519680 (and d!825369 d!825351)))

(assert (=> bs!519680 (= lambda!104465 lambda!104443)))

(declare-fun bs!519681 () Bool)

(assert (= bs!519681 (and d!825369 d!825355)))

(assert (=> bs!519681 (= lambda!104465 lambda!104445)))

(declare-fun bs!519682 () Bool)

(assert (= bs!519682 (and d!825369 d!825359)))

(assert (=> bs!519682 (= lambda!104465 lambda!104447)))

(declare-fun bs!519683 () Bool)

(assert (= bs!519683 (and d!825369 d!825357)))

(assert (=> bs!519683 (= lambda!104465 lambda!104446)))

(declare-fun bs!519684 () Bool)

(assert (= bs!519684 (and d!825369 d!825353)))

(assert (=> bs!519684 (= lambda!104465 lambda!104444)))

(assert (=> d!825369 (= (inv!45800 setElem!24892) (forall!6929 (exprs!3007 setElem!24892) lambda!104465))))

(declare-fun bs!519685 () Bool)

(assert (= bs!519685 d!825369))

(declare-fun m!3274313 () Bool)

(assert (=> bs!519685 m!3274313))

(assert (=> setNonEmpty!24892 d!825369))

(declare-fun d!825371 () Bool)

(assert (=> d!825371 (= (inv!45801 (xs!13591 (c!459293 prefix!1325))) (<= (size!26226 (innerList!10533 (xs!13591 (c!459293 prefix!1325)))) 2147483647))))

(declare-fun bs!519686 () Bool)

(assert (= bs!519686 d!825371))

(declare-fun m!3274315 () Bool)

(assert (=> bs!519686 m!3274315))

(assert (=> b!2846471 d!825371))

(declare-fun bs!519687 () Bool)

(declare-fun d!825373 () Bool)

(assert (= bs!519687 (and d!825373 d!825361)))

(declare-fun lambda!104466 () Int)

(assert (=> bs!519687 (= lambda!104466 lambda!104448)))

(declare-fun bs!519688 () Bool)

(assert (= bs!519688 (and d!825373 d!825363)))

(assert (=> bs!519688 (= lambda!104466 lambda!104449)))

(declare-fun bs!519689 () Bool)

(assert (= bs!519689 (and d!825373 d!825339)))

(assert (=> bs!519689 (= lambda!104466 lambda!104439)))

(declare-fun bs!519690 () Bool)

(assert (= bs!519690 (and d!825373 d!825351)))

(assert (=> bs!519690 (= lambda!104466 lambda!104443)))

(declare-fun bs!519691 () Bool)

(assert (= bs!519691 (and d!825373 d!825359)))

(assert (=> bs!519691 (= lambda!104466 lambda!104447)))

(declare-fun bs!519692 () Bool)

(assert (= bs!519692 (and d!825373 d!825357)))

(assert (=> bs!519692 (= lambda!104466 lambda!104446)))

(declare-fun bs!519693 () Bool)

(assert (= bs!519693 (and d!825373 d!825353)))

(assert (=> bs!519693 (= lambda!104466 lambda!104444)))

(declare-fun bs!519694 () Bool)

(assert (= bs!519694 (and d!825373 d!825369)))

(assert (=> bs!519694 (= lambda!104466 lambda!104465)))

(declare-fun bs!519695 () Bool)

(assert (= bs!519695 (and d!825373 d!825355)))

(assert (=> bs!519695 (= lambda!104466 lambda!104445)))

(assert (=> d!825373 (= (inv!45800 (_1!19931 (_1!19932 (h!39194 mapDefault!18629)))) (forall!6929 (exprs!3007 (_1!19931 (_1!19932 (h!39194 mapDefault!18629)))) lambda!104466))))

(declare-fun bs!519696 () Bool)

(assert (= bs!519696 d!825373))

(declare-fun m!3274317 () Bool)

(assert (=> bs!519696 m!3274317))

(assert (=> b!2846487 d!825373))

(declare-fun d!825375 () Bool)

(declare-fun c!459348 () Bool)

(assert (=> d!825375 (= c!459348 (= (+ 0 1) (size!26225 prefix!1325)))))

(declare-fun e!1803597 () Bool)

(assert (=> d!825375 (= (prefixMatchZipperSequence!760 (derivationStepZipper!408 lt!1012725 (apply!7865 prefix!1325 0)) prefix!1325 (+ 0 1)) e!1803597)))

(declare-fun b!2846568 () Bool)

(assert (=> b!2846568 (= e!1803597 (not (lostCauseZipper!522 (derivationStepZipper!408 lt!1012725 (apply!7865 prefix!1325 0)))))))

(declare-fun b!2846569 () Bool)

(assert (=> b!2846569 (= e!1803597 (prefixMatchZipperSequence!760 (derivationStepZipper!408 (derivationStepZipper!408 lt!1012725 (apply!7865 prefix!1325 0)) (apply!7865 prefix!1325 (+ 0 1))) prefix!1325 (+ 0 1 1)))))

(assert (= (and d!825375 c!459348) b!2846568))

(assert (= (and d!825375 (not c!459348)) b!2846569))

(assert (=> d!825375 m!3274121))

(assert (=> b!2846568 m!3274173))

(declare-fun m!3274319 () Bool)

(assert (=> b!2846568 m!3274319))

(declare-fun m!3274321 () Bool)

(assert (=> b!2846569 m!3274321))

(assert (=> b!2846569 m!3274173))

(assert (=> b!2846569 m!3274321))

(declare-fun m!3274323 () Bool)

(assert (=> b!2846569 m!3274323))

(assert (=> b!2846569 m!3274323))

(declare-fun m!3274325 () Bool)

(assert (=> b!2846569 m!3274325))

(assert (=> b!2846393 d!825375))

(declare-fun bs!519697 () Bool)

(declare-fun d!825377 () Bool)

(assert (= bs!519697 (and d!825377 d!825343)))

(declare-fun lambda!104467 () Int)

(assert (=> bs!519697 (= (= (apply!7865 prefix!1325 0) (head!6258 (dropList!1024 prefix!1325 0))) (= lambda!104467 lambda!104442))))

(assert (=> d!825377 true))

(assert (=> d!825377 (= (derivationStepZipper!408 lt!1012725 (apply!7865 prefix!1325 0)) (flatMap!199 lt!1012725 lambda!104467))))

(declare-fun bs!519698 () Bool)

(assert (= bs!519698 d!825377))

(declare-fun m!3274327 () Bool)

(assert (=> bs!519698 m!3274327))

(assert (=> b!2846393 d!825377))

(declare-fun d!825379 () Bool)

(declare-fun lt!1012777 () C!17140)

(declare-fun apply!7866 (List!33899 Int) C!17140)

(assert (=> d!825379 (= lt!1012777 (apply!7866 (list!12581 prefix!1325) 0))))

(declare-fun apply!7867 (Conc!10473 Int) C!17140)

(assert (=> d!825379 (= lt!1012777 (apply!7867 (c!459293 prefix!1325) 0))))

(declare-fun e!1803600 () Bool)

(assert (=> d!825379 e!1803600))

(declare-fun res!1183692 () Bool)

(assert (=> d!825379 (=> (not res!1183692) (not e!1803600))))

(assert (=> d!825379 (= res!1183692 (<= 0 0))))

(assert (=> d!825379 (= (apply!7865 prefix!1325 0) lt!1012777)))

(declare-fun b!2846572 () Bool)

(assert (=> b!2846572 (= e!1803600 (< 0 (size!26225 prefix!1325)))))

(assert (= (and d!825379 res!1183692) b!2846572))

(assert (=> d!825379 m!3274081))

(assert (=> d!825379 m!3274081))

(declare-fun m!3274329 () Bool)

(assert (=> d!825379 m!3274329))

(declare-fun m!3274331 () Bool)

(assert (=> d!825379 m!3274331))

(assert (=> b!2846572 m!3274121))

(assert (=> b!2846393 d!825379))

(declare-fun d!825381 () Bool)

(declare-fun res!1183697 () Bool)

(declare-fun e!1803603 () Bool)

(assert (=> d!825381 (=> (not res!1183697) (not e!1803603))))

(declare-fun valid!3192 (MutableMap!4009) Bool)

(assert (=> d!825381 (= res!1183697 (valid!3192 (cache!4144 cacheUp!999)))))

(assert (=> d!825381 (= (validCacheMapUp!407 (cache!4144 cacheUp!999)) e!1803603)))

(declare-fun b!2846577 () Bool)

(declare-fun res!1183698 () Bool)

(assert (=> b!2846577 (=> (not res!1183698) (not e!1803603))))

(declare-fun invariantList!471 (List!33898) Bool)

(declare-datatypes ((ListMap!1283 0))(
  ( (ListMap!1284 (toList!1915 List!33898)) )
))
(declare-fun map!7248 (MutableMap!4009) ListMap!1283)

(assert (=> b!2846577 (= res!1183698 (invariantList!471 (toList!1915 (map!7248 (cache!4144 cacheUp!999)))))))

(declare-fun b!2846578 () Bool)

(declare-fun lambda!104470 () Int)

(declare-fun forall!6931 (List!33898 Int) Bool)

(assert (=> b!2846578 (= e!1803603 (forall!6931 (toList!1915 (map!7248 (cache!4144 cacheUp!999))) lambda!104470))))

(assert (= (and d!825381 res!1183697) b!2846577))

(assert (= (and b!2846577 res!1183698) b!2846578))

(declare-fun m!3274334 () Bool)

(assert (=> d!825381 m!3274334))

(declare-fun m!3274336 () Bool)

(assert (=> b!2846577 m!3274336))

(declare-fun m!3274338 () Bool)

(assert (=> b!2846577 m!3274338))

(assert (=> b!2846578 m!3274336))

(declare-fun m!3274340 () Bool)

(assert (=> b!2846578 m!3274340))

(assert (=> b!2846348 d!825381))

(declare-fun bs!519699 () Bool)

(declare-fun d!825383 () Bool)

(assert (= bs!519699 (and d!825383 d!825361)))

(declare-fun lambda!104471 () Int)

(assert (=> bs!519699 (= lambda!104471 lambda!104448)))

(declare-fun bs!519700 () Bool)

(assert (= bs!519700 (and d!825383 d!825363)))

(assert (=> bs!519700 (= lambda!104471 lambda!104449)))

(declare-fun bs!519701 () Bool)

(assert (= bs!519701 (and d!825383 d!825339)))

(assert (=> bs!519701 (= lambda!104471 lambda!104439)))

(declare-fun bs!519702 () Bool)

(assert (= bs!519702 (and d!825383 d!825351)))

(assert (=> bs!519702 (= lambda!104471 lambda!104443)))

(declare-fun bs!519703 () Bool)

(assert (= bs!519703 (and d!825383 d!825357)))

(assert (=> bs!519703 (= lambda!104471 lambda!104446)))

(declare-fun bs!519704 () Bool)

(assert (= bs!519704 (and d!825383 d!825353)))

(assert (=> bs!519704 (= lambda!104471 lambda!104444)))

(declare-fun bs!519705 () Bool)

(assert (= bs!519705 (and d!825383 d!825369)))

(assert (=> bs!519705 (= lambda!104471 lambda!104465)))

(declare-fun bs!519706 () Bool)

(assert (= bs!519706 (and d!825383 d!825355)))

(assert (=> bs!519706 (= lambda!104471 lambda!104445)))

(declare-fun bs!519707 () Bool)

(assert (= bs!519707 (and d!825383 d!825359)))

(assert (=> bs!519707 (= lambda!104471 lambda!104447)))

(declare-fun bs!519708 () Bool)

(assert (= bs!519708 (and d!825383 d!825373)))

(assert (=> bs!519708 (= lambda!104471 lambda!104466)))

(assert (=> d!825383 (= (inv!45800 setElem!24898) (forall!6929 (exprs!3007 setElem!24898) lambda!104471))))

(declare-fun bs!519709 () Bool)

(assert (= bs!519709 d!825383))

(declare-fun m!3274342 () Bool)

(assert (=> bs!519709 m!3274342))

(assert (=> setNonEmpty!24898 d!825383))

(declare-fun bs!519710 () Bool)

(declare-fun d!825385 () Bool)

(assert (= bs!519710 (and d!825385 d!825361)))

(declare-fun lambda!104472 () Int)

(assert (=> bs!519710 (= lambda!104472 lambda!104448)))

(declare-fun bs!519711 () Bool)

(assert (= bs!519711 (and d!825385 d!825363)))

(assert (=> bs!519711 (= lambda!104472 lambda!104449)))

(declare-fun bs!519712 () Bool)

(assert (= bs!519712 (and d!825385 d!825339)))

(assert (=> bs!519712 (= lambda!104472 lambda!104439)))

(declare-fun bs!519713 () Bool)

(assert (= bs!519713 (and d!825385 d!825383)))

(assert (=> bs!519713 (= lambda!104472 lambda!104471)))

(declare-fun bs!519714 () Bool)

(assert (= bs!519714 (and d!825385 d!825351)))

(assert (=> bs!519714 (= lambda!104472 lambda!104443)))

(declare-fun bs!519715 () Bool)

(assert (= bs!519715 (and d!825385 d!825357)))

(assert (=> bs!519715 (= lambda!104472 lambda!104446)))

(declare-fun bs!519716 () Bool)

(assert (= bs!519716 (and d!825385 d!825353)))

(assert (=> bs!519716 (= lambda!104472 lambda!104444)))

(declare-fun bs!519717 () Bool)

(assert (= bs!519717 (and d!825385 d!825369)))

(assert (=> bs!519717 (= lambda!104472 lambda!104465)))

(declare-fun bs!519718 () Bool)

(assert (= bs!519718 (and d!825385 d!825355)))

(assert (=> bs!519718 (= lambda!104472 lambda!104445)))

(declare-fun bs!519719 () Bool)

(assert (= bs!519719 (and d!825385 d!825359)))

(assert (=> bs!519719 (= lambda!104472 lambda!104447)))

(declare-fun bs!519720 () Bool)

(assert (= bs!519720 (and d!825385 d!825373)))

(assert (=> bs!519720 (= lambda!104472 lambda!104466)))

(assert (=> d!825385 (= (inv!45800 setElem!24909) (forall!6929 (exprs!3007 setElem!24909) lambda!104472))))

(declare-fun bs!519721 () Bool)

(assert (= bs!519721 d!825385))

(declare-fun m!3274344 () Bool)

(assert (=> bs!519721 m!3274344))

(assert (=> setNonEmpty!24909 d!825385))

(declare-fun d!825387 () Bool)

(declare-fun c!459353 () Bool)

(assert (=> d!825387 (= c!459353 ((_ is Empty!10473) (c!459293 prefix!1325)))))

(declare-fun e!1803608 () List!33899)

(assert (=> d!825387 (= (list!12582 (c!459293 prefix!1325)) e!1803608)))

(declare-fun b!2846587 () Bool)

(assert (=> b!2846587 (= e!1803608 Nil!33775)))

(declare-fun b!2846590 () Bool)

(declare-fun e!1803609 () List!33899)

(declare-fun ++!8125 (List!33899 List!33899) List!33899)

(assert (=> b!2846590 (= e!1803609 (++!8125 (list!12582 (left!25429 (c!459293 prefix!1325))) (list!12582 (right!25759 (c!459293 prefix!1325)))))))

(declare-fun b!2846589 () Bool)

(declare-fun list!12583 (IArray!20951) List!33899)

(assert (=> b!2846589 (= e!1803609 (list!12583 (xs!13591 (c!459293 prefix!1325))))))

(declare-fun b!2846588 () Bool)

(assert (=> b!2846588 (= e!1803608 e!1803609)))

(declare-fun c!459354 () Bool)

(assert (=> b!2846588 (= c!459354 ((_ is Leaf!15936) (c!459293 prefix!1325)))))

(assert (= (and d!825387 c!459353) b!2846587))

(assert (= (and d!825387 (not c!459353)) b!2846588))

(assert (= (and b!2846588 c!459354) b!2846589))

(assert (= (and b!2846588 (not c!459354)) b!2846590))

(declare-fun m!3274346 () Bool)

(assert (=> b!2846590 m!3274346))

(declare-fun m!3274348 () Bool)

(assert (=> b!2846590 m!3274348))

(assert (=> b!2846590 m!3274346))

(assert (=> b!2846590 m!3274348))

(declare-fun m!3274350 () Bool)

(assert (=> b!2846590 m!3274350))

(declare-fun m!3274352 () Bool)

(assert (=> b!2846589 m!3274352))

(assert (=> d!825321 d!825387))

(declare-fun bs!519722 () Bool)

(declare-fun d!825389 () Bool)

(assert (= bs!519722 (and d!825389 d!825363)))

(declare-fun lambda!104473 () Int)

(assert (=> bs!519722 (= lambda!104473 lambda!104449)))

(declare-fun bs!519723 () Bool)

(assert (= bs!519723 (and d!825389 d!825339)))

(assert (=> bs!519723 (= lambda!104473 lambda!104439)))

(declare-fun bs!519724 () Bool)

(assert (= bs!519724 (and d!825389 d!825383)))

(assert (=> bs!519724 (= lambda!104473 lambda!104471)))

(declare-fun bs!519725 () Bool)

(assert (= bs!519725 (and d!825389 d!825351)))

(assert (=> bs!519725 (= lambda!104473 lambda!104443)))

(declare-fun bs!519726 () Bool)

(assert (= bs!519726 (and d!825389 d!825357)))

(assert (=> bs!519726 (= lambda!104473 lambda!104446)))

(declare-fun bs!519727 () Bool)

(assert (= bs!519727 (and d!825389 d!825353)))

(assert (=> bs!519727 (= lambda!104473 lambda!104444)))

(declare-fun bs!519728 () Bool)

(assert (= bs!519728 (and d!825389 d!825361)))

(assert (=> bs!519728 (= lambda!104473 lambda!104448)))

(declare-fun bs!519729 () Bool)

(assert (= bs!519729 (and d!825389 d!825385)))

(assert (=> bs!519729 (= lambda!104473 lambda!104472)))

(declare-fun bs!519730 () Bool)

(assert (= bs!519730 (and d!825389 d!825369)))

(assert (=> bs!519730 (= lambda!104473 lambda!104465)))

(declare-fun bs!519731 () Bool)

(assert (= bs!519731 (and d!825389 d!825355)))

(assert (=> bs!519731 (= lambda!104473 lambda!104445)))

(declare-fun bs!519732 () Bool)

(assert (= bs!519732 (and d!825389 d!825359)))

(assert (=> bs!519732 (= lambda!104473 lambda!104447)))

(declare-fun bs!519733 () Bool)

(assert (= bs!519733 (and d!825389 d!825373)))

(assert (=> bs!519733 (= lambda!104473 lambda!104466)))

(assert (=> d!825389 (= (inv!45800 setElem!24899) (forall!6929 (exprs!3007 setElem!24899) lambda!104473))))

(declare-fun bs!519734 () Bool)

(assert (= bs!519734 d!825389))

(declare-fun m!3274354 () Bool)

(assert (=> bs!519734 m!3274354))

(assert (=> setNonEmpty!24899 d!825389))

(declare-fun bs!519735 () Bool)

(declare-fun d!825391 () Bool)

(assert (= bs!519735 (and d!825391 d!825363)))

(declare-fun lambda!104474 () Int)

(assert (=> bs!519735 (= lambda!104474 lambda!104449)))

(declare-fun bs!519736 () Bool)

(assert (= bs!519736 (and d!825391 d!825339)))

(assert (=> bs!519736 (= lambda!104474 lambda!104439)))

(declare-fun bs!519737 () Bool)

(assert (= bs!519737 (and d!825391 d!825389)))

(assert (=> bs!519737 (= lambda!104474 lambda!104473)))

(declare-fun bs!519738 () Bool)

(assert (= bs!519738 (and d!825391 d!825383)))

(assert (=> bs!519738 (= lambda!104474 lambda!104471)))

(declare-fun bs!519739 () Bool)

(assert (= bs!519739 (and d!825391 d!825351)))

(assert (=> bs!519739 (= lambda!104474 lambda!104443)))

(declare-fun bs!519740 () Bool)

(assert (= bs!519740 (and d!825391 d!825357)))

(assert (=> bs!519740 (= lambda!104474 lambda!104446)))

(declare-fun bs!519741 () Bool)

(assert (= bs!519741 (and d!825391 d!825353)))

(assert (=> bs!519741 (= lambda!104474 lambda!104444)))

(declare-fun bs!519742 () Bool)

(assert (= bs!519742 (and d!825391 d!825361)))

(assert (=> bs!519742 (= lambda!104474 lambda!104448)))

(declare-fun bs!519743 () Bool)

(assert (= bs!519743 (and d!825391 d!825385)))

(assert (=> bs!519743 (= lambda!104474 lambda!104472)))

(declare-fun bs!519744 () Bool)

(assert (= bs!519744 (and d!825391 d!825369)))

(assert (=> bs!519744 (= lambda!104474 lambda!104465)))

(declare-fun bs!519745 () Bool)

(assert (= bs!519745 (and d!825391 d!825355)))

(assert (=> bs!519745 (= lambda!104474 lambda!104445)))

(declare-fun bs!519746 () Bool)

(assert (= bs!519746 (and d!825391 d!825359)))

(assert (=> bs!519746 (= lambda!104474 lambda!104447)))

(declare-fun bs!519747 () Bool)

(assert (= bs!519747 (and d!825391 d!825373)))

(assert (=> bs!519747 (= lambda!104474 lambda!104466)))

(assert (=> d!825391 (= (inv!45800 (_1!19931 (_1!19932 (h!39194 mapValue!18629)))) (forall!6929 (exprs!3007 (_1!19931 (_1!19932 (h!39194 mapValue!18629)))) lambda!104474))))

(declare-fun bs!519748 () Bool)

(assert (= bs!519748 d!825391))

(declare-fun m!3274356 () Bool)

(assert (=> bs!519748 m!3274356))

(assert (=> b!2846490 d!825391))

(declare-fun b!2846603 () Bool)

(declare-fun res!1183713 () Bool)

(declare-fun e!1803615 () Bool)

(assert (=> b!2846603 (=> (not res!1183713) (not e!1803615))))

(assert (=> b!2846603 (= res!1183713 (isBalanced!3158 (left!25429 (c!459293 prefix!1325))))))

(declare-fun b!2846604 () Bool)

(declare-fun e!1803614 () Bool)

(assert (=> b!2846604 (= e!1803614 e!1803615)))

(declare-fun res!1183714 () Bool)

(assert (=> b!2846604 (=> (not res!1183714) (not e!1803615))))

(declare-fun height!1516 (Conc!10473) Int)

(assert (=> b!2846604 (= res!1183714 (<= (- 1) (- (height!1516 (left!25429 (c!459293 prefix!1325))) (height!1516 (right!25759 (c!459293 prefix!1325))))))))

(declare-fun b!2846605 () Bool)

(declare-fun res!1183715 () Bool)

(assert (=> b!2846605 (=> (not res!1183715) (not e!1803615))))

(assert (=> b!2846605 (= res!1183715 (<= (- (height!1516 (left!25429 (c!459293 prefix!1325))) (height!1516 (right!25759 (c!459293 prefix!1325)))) 1))))

(declare-fun b!2846606 () Bool)

(declare-fun res!1183711 () Bool)

(assert (=> b!2846606 (=> (not res!1183711) (not e!1803615))))

(assert (=> b!2846606 (= res!1183711 (isBalanced!3158 (right!25759 (c!459293 prefix!1325))))))

(declare-fun d!825393 () Bool)

(declare-fun res!1183712 () Bool)

(assert (=> d!825393 (=> res!1183712 e!1803614)))

(assert (=> d!825393 (= res!1183712 (not ((_ is Node!10473) (c!459293 prefix!1325))))))

(assert (=> d!825393 (= (isBalanced!3158 (c!459293 prefix!1325)) e!1803614)))

(declare-fun b!2846607 () Bool)

(declare-fun res!1183716 () Bool)

(assert (=> b!2846607 (=> (not res!1183716) (not e!1803615))))

(declare-fun isEmpty!18575 (Conc!10473) Bool)

(assert (=> b!2846607 (= res!1183716 (not (isEmpty!18575 (left!25429 (c!459293 prefix!1325)))))))

(declare-fun b!2846608 () Bool)

(assert (=> b!2846608 (= e!1803615 (not (isEmpty!18575 (right!25759 (c!459293 prefix!1325)))))))

(assert (= (and d!825393 (not res!1183712)) b!2846604))

(assert (= (and b!2846604 res!1183714) b!2846605))

(assert (= (and b!2846605 res!1183715) b!2846603))

(assert (= (and b!2846603 res!1183713) b!2846606))

(assert (= (and b!2846606 res!1183711) b!2846607))

(assert (= (and b!2846607 res!1183716) b!2846608))

(declare-fun m!3274358 () Bool)

(assert (=> b!2846607 m!3274358))

(declare-fun m!3274360 () Bool)

(assert (=> b!2846604 m!3274360))

(declare-fun m!3274362 () Bool)

(assert (=> b!2846604 m!3274362))

(assert (=> b!2846605 m!3274360))

(assert (=> b!2846605 m!3274362))

(declare-fun m!3274364 () Bool)

(assert (=> b!2846603 m!3274364))

(declare-fun m!3274366 () Bool)

(assert (=> b!2846608 m!3274366))

(declare-fun m!3274368 () Bool)

(assert (=> b!2846606 m!3274368))

(assert (=> d!825295 d!825393))

(assert (=> d!825319 d!825349))

(assert (=> d!825315 d!825317))

(assert (=> d!825315 d!825323))

(declare-fun d!825395 () Bool)

(assert (=> d!825395 (= (prefixMatch!815 r!13354 lt!1012722) (prefixMatchZipper!239 lt!1012725 lt!1012722))))

(assert (=> d!825395 true))

(declare-fun _$33!550 () Unit!47549)

(assert (=> d!825395 (= (choose!16756 lt!1012725 lt!1012721 r!13354 lt!1012722) _$33!550)))

(declare-fun bs!519749 () Bool)

(assert (= bs!519749 d!825395))

(assert (=> bs!519749 m!3274073))

(assert (=> bs!519749 m!3274069))

(assert (=> d!825315 d!825395))

(assert (=> d!825315 d!825293))

(declare-fun d!825397 () Bool)

(assert (=> d!825397 (= (isEmpty!18573 lt!1012722) ((_ is Nil!33775) lt!1012722))))

(assert (=> d!825323 d!825397))

(declare-fun bs!519750 () Bool)

(declare-fun d!825399 () Bool)

(assert (= bs!519750 (and d!825399 d!825363)))

(declare-fun lambda!104475 () Int)

(assert (=> bs!519750 (= lambda!104475 lambda!104449)))

(declare-fun bs!519751 () Bool)

(assert (= bs!519751 (and d!825399 d!825339)))

(assert (=> bs!519751 (= lambda!104475 lambda!104439)))

(declare-fun bs!519752 () Bool)

(assert (= bs!519752 (and d!825399 d!825389)))

(assert (=> bs!519752 (= lambda!104475 lambda!104473)))

(declare-fun bs!519753 () Bool)

(assert (= bs!519753 (and d!825399 d!825383)))

(assert (=> bs!519753 (= lambda!104475 lambda!104471)))

(declare-fun bs!519754 () Bool)

(assert (= bs!519754 (and d!825399 d!825351)))

(assert (=> bs!519754 (= lambda!104475 lambda!104443)))

(declare-fun bs!519755 () Bool)

(assert (= bs!519755 (and d!825399 d!825357)))

(assert (=> bs!519755 (= lambda!104475 lambda!104446)))

(declare-fun bs!519756 () Bool)

(assert (= bs!519756 (and d!825399 d!825391)))

(assert (=> bs!519756 (= lambda!104475 lambda!104474)))

(declare-fun bs!519757 () Bool)

(assert (= bs!519757 (and d!825399 d!825353)))

(assert (=> bs!519757 (= lambda!104475 lambda!104444)))

(declare-fun bs!519758 () Bool)

(assert (= bs!519758 (and d!825399 d!825361)))

(assert (=> bs!519758 (= lambda!104475 lambda!104448)))

(declare-fun bs!519759 () Bool)

(assert (= bs!519759 (and d!825399 d!825385)))

(assert (=> bs!519759 (= lambda!104475 lambda!104472)))

(declare-fun bs!519760 () Bool)

(assert (= bs!519760 (and d!825399 d!825369)))

(assert (=> bs!519760 (= lambda!104475 lambda!104465)))

(declare-fun bs!519761 () Bool)

(assert (= bs!519761 (and d!825399 d!825355)))

(assert (=> bs!519761 (= lambda!104475 lambda!104445)))

(declare-fun bs!519762 () Bool)

(assert (= bs!519762 (and d!825399 d!825359)))

(assert (=> bs!519762 (= lambda!104475 lambda!104447)))

(declare-fun bs!519763 () Bool)

(assert (= bs!519763 (and d!825399 d!825373)))

(assert (=> bs!519763 (= lambda!104475 lambda!104466)))

(assert (=> d!825399 (= (inv!45800 setElem!24893) (forall!6929 (exprs!3007 setElem!24893) lambda!104475))))

(declare-fun bs!519764 () Bool)

(assert (= bs!519764 d!825399))

(declare-fun m!3274370 () Bool)

(assert (=> bs!519764 m!3274370))

(assert (=> setNonEmpty!24893 d!825399))

(declare-fun d!825401 () Bool)

(declare-fun lostCauseFct!212 (Regex!8479) Bool)

(assert (=> d!825401 (= (lostCause!729 r!13354) (lostCauseFct!212 r!13354))))

(declare-fun bs!519765 () Bool)

(assert (= bs!519765 d!825401))

(declare-fun m!3274372 () Bool)

(assert (=> bs!519765 m!3274372))

(assert (=> b!2846386 d!825401))

(assert (=> b!2846380 d!825365))

(declare-fun bs!519766 () Bool)

(declare-fun d!825403 () Bool)

(assert (= bs!519766 (and d!825403 d!825399)))

(declare-fun lambda!104476 () Int)

(assert (=> bs!519766 (= lambda!104476 lambda!104475)))

(declare-fun bs!519767 () Bool)

(assert (= bs!519767 (and d!825403 d!825363)))

(assert (=> bs!519767 (= lambda!104476 lambda!104449)))

(declare-fun bs!519768 () Bool)

(assert (= bs!519768 (and d!825403 d!825339)))

(assert (=> bs!519768 (= lambda!104476 lambda!104439)))

(declare-fun bs!519769 () Bool)

(assert (= bs!519769 (and d!825403 d!825389)))

(assert (=> bs!519769 (= lambda!104476 lambda!104473)))

(declare-fun bs!519770 () Bool)

(assert (= bs!519770 (and d!825403 d!825383)))

(assert (=> bs!519770 (= lambda!104476 lambda!104471)))

(declare-fun bs!519771 () Bool)

(assert (= bs!519771 (and d!825403 d!825351)))

(assert (=> bs!519771 (= lambda!104476 lambda!104443)))

(declare-fun bs!519772 () Bool)

(assert (= bs!519772 (and d!825403 d!825357)))

(assert (=> bs!519772 (= lambda!104476 lambda!104446)))

(declare-fun bs!519773 () Bool)

(assert (= bs!519773 (and d!825403 d!825391)))

(assert (=> bs!519773 (= lambda!104476 lambda!104474)))

(declare-fun bs!519774 () Bool)

(assert (= bs!519774 (and d!825403 d!825353)))

(assert (=> bs!519774 (= lambda!104476 lambda!104444)))

(declare-fun bs!519775 () Bool)

(assert (= bs!519775 (and d!825403 d!825361)))

(assert (=> bs!519775 (= lambda!104476 lambda!104448)))

(declare-fun bs!519776 () Bool)

(assert (= bs!519776 (and d!825403 d!825385)))

(assert (=> bs!519776 (= lambda!104476 lambda!104472)))

(declare-fun bs!519777 () Bool)

(assert (= bs!519777 (and d!825403 d!825369)))

(assert (=> bs!519777 (= lambda!104476 lambda!104465)))

(declare-fun bs!519778 () Bool)

(assert (= bs!519778 (and d!825403 d!825355)))

(assert (=> bs!519778 (= lambda!104476 lambda!104445)))

(declare-fun bs!519779 () Bool)

(assert (= bs!519779 (and d!825403 d!825359)))

(assert (=> bs!519779 (= lambda!104476 lambda!104447)))

(declare-fun bs!519780 () Bool)

(assert (= bs!519780 (and d!825403 d!825373)))

(assert (=> bs!519780 (= lambda!104476 lambda!104466)))

(assert (=> d!825403 (= (inv!45800 setElem!24910) (forall!6929 (exprs!3007 setElem!24910) lambda!104476))))

(declare-fun bs!519781 () Bool)

(assert (= bs!519781 d!825403))

(declare-fun m!3274374 () Bool)

(assert (=> bs!519781 m!3274374))

(assert (=> setNonEmpty!24910 d!825403))

(declare-fun d!825405 () Bool)

(declare-fun lt!1012780 () Regex!8479)

(assert (=> d!825405 (validRegex!3370 lt!1012780)))

(declare-fun generalisedUnion!545 (List!33897) Regex!8479)

(declare-fun unfocusZipperList!58 (List!33901) List!33897)

(assert (=> d!825405 (= lt!1012780 (generalisedUnion!545 (unfocusZipperList!58 (toList!1914 (store ((as const (Array Context!5014 Bool)) false) (Context!5015 (Cons!33773 r!13354 Nil!33773)) true)))))))

(assert (=> d!825405 (= (unfocusZipper!179 (toList!1914 (store ((as const (Array Context!5014 Bool)) false) (Context!5015 (Cons!33773 r!13354 Nil!33773)) true))) lt!1012780)))

(declare-fun bs!519782 () Bool)

(assert (= bs!519782 d!825405))

(declare-fun m!3274376 () Bool)

(assert (=> bs!519782 m!3274376))

(assert (=> bs!519782 m!3274145))

(declare-fun m!3274378 () Bool)

(assert (=> bs!519782 m!3274378))

(assert (=> bs!519782 m!3274378))

(declare-fun m!3274380 () Bool)

(assert (=> bs!519782 m!3274380))

(assert (=> b!2846375 d!825405))

(declare-fun d!825407 () Bool)

(declare-fun e!1803616 () Bool)

(assert (=> d!825407 e!1803616))

(declare-fun res!1183717 () Bool)

(assert (=> d!825407 (=> (not res!1183717) (not e!1803616))))

(declare-fun lt!1012781 () List!33901)

(assert (=> d!825407 (= res!1183717 (noDuplicate!555 lt!1012781))))

(assert (=> d!825407 (= lt!1012781 (choose!16754 (store ((as const (Array Context!5014 Bool)) false) (Context!5015 (Cons!33773 r!13354 Nil!33773)) true)))))

(assert (=> d!825407 (= (toList!1914 (store ((as const (Array Context!5014 Bool)) false) (Context!5015 (Cons!33773 r!13354 Nil!33773)) true)) lt!1012781)))

(declare-fun b!2846609 () Bool)

(assert (=> b!2846609 (= e!1803616 (= (content!4652 lt!1012781) (store ((as const (Array Context!5014 Bool)) false) (Context!5015 (Cons!33773 r!13354 Nil!33773)) true)))))

(assert (= (and d!825407 res!1183717) b!2846609))

(declare-fun m!3274382 () Bool)

(assert (=> d!825407 m!3274382))

(assert (=> d!825407 m!3274143))

(declare-fun m!3274384 () Bool)

(assert (=> d!825407 m!3274384))

(declare-fun m!3274386 () Bool)

(assert (=> b!2846609 m!3274386))

(assert (=> b!2846375 d!825407))

(declare-fun bs!519783 () Bool)

(declare-fun d!825409 () Bool)

(assert (= bs!519783 (and d!825409 d!825399)))

(declare-fun lambda!104477 () Int)

(assert (=> bs!519783 (= lambda!104477 lambda!104475)))

(declare-fun bs!519784 () Bool)

(assert (= bs!519784 (and d!825409 d!825363)))

(assert (=> bs!519784 (= lambda!104477 lambda!104449)))

(declare-fun bs!519785 () Bool)

(assert (= bs!519785 (and d!825409 d!825339)))

(assert (=> bs!519785 (= lambda!104477 lambda!104439)))

(declare-fun bs!519786 () Bool)

(assert (= bs!519786 (and d!825409 d!825403)))

(assert (=> bs!519786 (= lambda!104477 lambda!104476)))

(declare-fun bs!519787 () Bool)

(assert (= bs!519787 (and d!825409 d!825389)))

(assert (=> bs!519787 (= lambda!104477 lambda!104473)))

(declare-fun bs!519788 () Bool)

(assert (= bs!519788 (and d!825409 d!825383)))

(assert (=> bs!519788 (= lambda!104477 lambda!104471)))

(declare-fun bs!519789 () Bool)

(assert (= bs!519789 (and d!825409 d!825351)))

(assert (=> bs!519789 (= lambda!104477 lambda!104443)))

(declare-fun bs!519790 () Bool)

(assert (= bs!519790 (and d!825409 d!825357)))

(assert (=> bs!519790 (= lambda!104477 lambda!104446)))

(declare-fun bs!519791 () Bool)

(assert (= bs!519791 (and d!825409 d!825391)))

(assert (=> bs!519791 (= lambda!104477 lambda!104474)))

(declare-fun bs!519792 () Bool)

(assert (= bs!519792 (and d!825409 d!825353)))

(assert (=> bs!519792 (= lambda!104477 lambda!104444)))

(declare-fun bs!519793 () Bool)

(assert (= bs!519793 (and d!825409 d!825361)))

(assert (=> bs!519793 (= lambda!104477 lambda!104448)))

(declare-fun bs!519794 () Bool)

(assert (= bs!519794 (and d!825409 d!825385)))

(assert (=> bs!519794 (= lambda!104477 lambda!104472)))

(declare-fun bs!519795 () Bool)

(assert (= bs!519795 (and d!825409 d!825369)))

(assert (=> bs!519795 (= lambda!104477 lambda!104465)))

(declare-fun bs!519796 () Bool)

(assert (= bs!519796 (and d!825409 d!825355)))

(assert (=> bs!519796 (= lambda!104477 lambda!104445)))

(declare-fun bs!519797 () Bool)

(assert (= bs!519797 (and d!825409 d!825359)))

(assert (=> bs!519797 (= lambda!104477 lambda!104447)))

(declare-fun bs!519798 () Bool)

(assert (= bs!519798 (and d!825409 d!825373)))

(assert (=> bs!519798 (= lambda!104477 lambda!104466)))

(assert (=> d!825409 (= (inv!45800 setElem!24911) (forall!6929 (exprs!3007 setElem!24911) lambda!104477))))

(declare-fun bs!519799 () Bool)

(assert (= bs!519799 d!825409))

(declare-fun m!3274388 () Bool)

(assert (=> bs!519799 m!3274388))

(assert (=> setNonEmpty!24911 d!825409))

(declare-fun bs!519800 () Bool)

(declare-fun d!825411 () Bool)

(assert (= bs!519800 (and d!825411 d!825399)))

(declare-fun lambda!104478 () Int)

(assert (=> bs!519800 (= lambda!104478 lambda!104475)))

(declare-fun bs!519801 () Bool)

(assert (= bs!519801 (and d!825411 d!825363)))

(assert (=> bs!519801 (= lambda!104478 lambda!104449)))

(declare-fun bs!519802 () Bool)

(assert (= bs!519802 (and d!825411 d!825409)))

(assert (=> bs!519802 (= lambda!104478 lambda!104477)))

(declare-fun bs!519803 () Bool)

(assert (= bs!519803 (and d!825411 d!825339)))

(assert (=> bs!519803 (= lambda!104478 lambda!104439)))

(declare-fun bs!519804 () Bool)

(assert (= bs!519804 (and d!825411 d!825403)))

(assert (=> bs!519804 (= lambda!104478 lambda!104476)))

(declare-fun bs!519805 () Bool)

(assert (= bs!519805 (and d!825411 d!825389)))

(assert (=> bs!519805 (= lambda!104478 lambda!104473)))

(declare-fun bs!519806 () Bool)

(assert (= bs!519806 (and d!825411 d!825383)))

(assert (=> bs!519806 (= lambda!104478 lambda!104471)))

(declare-fun bs!519807 () Bool)

(assert (= bs!519807 (and d!825411 d!825351)))

(assert (=> bs!519807 (= lambda!104478 lambda!104443)))

(declare-fun bs!519808 () Bool)

(assert (= bs!519808 (and d!825411 d!825357)))

(assert (=> bs!519808 (= lambda!104478 lambda!104446)))

(declare-fun bs!519809 () Bool)

(assert (= bs!519809 (and d!825411 d!825391)))

(assert (=> bs!519809 (= lambda!104478 lambda!104474)))

(declare-fun bs!519810 () Bool)

(assert (= bs!519810 (and d!825411 d!825353)))

(assert (=> bs!519810 (= lambda!104478 lambda!104444)))

(declare-fun bs!519811 () Bool)

(assert (= bs!519811 (and d!825411 d!825361)))

(assert (=> bs!519811 (= lambda!104478 lambda!104448)))

(declare-fun bs!519812 () Bool)

(assert (= bs!519812 (and d!825411 d!825385)))

(assert (=> bs!519812 (= lambda!104478 lambda!104472)))

(declare-fun bs!519813 () Bool)

(assert (= bs!519813 (and d!825411 d!825369)))

(assert (=> bs!519813 (= lambda!104478 lambda!104465)))

(declare-fun bs!519814 () Bool)

(assert (= bs!519814 (and d!825411 d!825355)))

(assert (=> bs!519814 (= lambda!104478 lambda!104445)))

(declare-fun bs!519815 () Bool)

(assert (= bs!519815 (and d!825411 d!825359)))

(assert (=> bs!519815 (= lambda!104478 lambda!104447)))

(declare-fun bs!519816 () Bool)

(assert (= bs!519816 (and d!825411 d!825373)))

(assert (=> bs!519816 (= lambda!104478 lambda!104466)))

(assert (=> d!825411 (= (inv!45800 (_1!19931 (_1!19932 (h!39194 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))))) (forall!6929 (exprs!3007 (_1!19931 (_1!19932 (h!39194 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))))) lambda!104478))))

(declare-fun bs!519817 () Bool)

(assert (= bs!519817 d!825411))

(declare-fun m!3274390 () Bool)

(assert (=> bs!519817 m!3274390))

(assert (=> b!2846406 d!825411))

(assert (=> d!825317 d!825397))

(assert (=> d!825311 d!825293))

(declare-fun d!825413 () Bool)

(assert (=> d!825413 (= (isEmpty!18573 (dropList!1024 prefix!1325 0)) ((_ is Nil!33775) (dropList!1024 prefix!1325 0)))))

(assert (=> d!825313 d!825413))

(declare-fun d!825415 () Bool)

(declare-fun c!459355 () Bool)

(assert (=> d!825415 (= c!459355 (isEmpty!18573 (tail!4483 lt!1012722)))))

(declare-fun e!1803617 () Bool)

(assert (=> d!825415 (= (prefixMatchZipper!239 (derivationStepZipper!408 lt!1012725 (head!6258 lt!1012722)) (tail!4483 lt!1012722)) e!1803617)))

(declare-fun b!2846610 () Bool)

(assert (=> b!2846610 (= e!1803617 (not (lostCauseZipper!522 (derivationStepZipper!408 lt!1012725 (head!6258 lt!1012722)))))))

(declare-fun b!2846611 () Bool)

(assert (=> b!2846611 (= e!1803617 (prefixMatchZipper!239 (derivationStepZipper!408 (derivationStepZipper!408 lt!1012725 (head!6258 lt!1012722)) (head!6258 (tail!4483 lt!1012722))) (tail!4483 (tail!4483 lt!1012722))))))

(assert (= (and d!825415 c!459355) b!2846610))

(assert (= (and d!825415 (not c!459355)) b!2846611))

(assert (=> d!825415 m!3274169))

(assert (=> d!825415 m!3274245))

(assert (=> b!2846610 m!3274177))

(declare-fun m!3274392 () Bool)

(assert (=> b!2846610 m!3274392))

(assert (=> b!2846611 m!3274169))

(assert (=> b!2846611 m!3274249))

(assert (=> b!2846611 m!3274177))

(assert (=> b!2846611 m!3274249))

(declare-fun m!3274394 () Bool)

(assert (=> b!2846611 m!3274394))

(assert (=> b!2846611 m!3274169))

(assert (=> b!2846611 m!3274253))

(assert (=> b!2846611 m!3274394))

(assert (=> b!2846611 m!3274253))

(declare-fun m!3274396 () Bool)

(assert (=> b!2846611 m!3274396))

(assert (=> b!2846395 d!825415))

(declare-fun bs!519818 () Bool)

(declare-fun d!825417 () Bool)

(assert (= bs!519818 (and d!825417 d!825343)))

(declare-fun lambda!104479 () Int)

(assert (=> bs!519818 (= (= (head!6258 lt!1012722) (head!6258 (dropList!1024 prefix!1325 0))) (= lambda!104479 lambda!104442))))

(declare-fun bs!519819 () Bool)

(assert (= bs!519819 (and d!825417 d!825377)))

(assert (=> bs!519819 (= (= (head!6258 lt!1012722) (apply!7865 prefix!1325 0)) (= lambda!104479 lambda!104467))))

(assert (=> d!825417 true))

(assert (=> d!825417 (= (derivationStepZipper!408 lt!1012725 (head!6258 lt!1012722)) (flatMap!199 lt!1012725 lambda!104479))))

(declare-fun bs!519820 () Bool)

(assert (= bs!519820 d!825417))

(declare-fun m!3274398 () Bool)

(assert (=> bs!519820 m!3274398))

(assert (=> b!2846395 d!825417))

(assert (=> b!2846395 d!825335))

(assert (=> b!2846395 d!825337))

(assert (=> b!2846307 d!825301))

(declare-fun d!825419 () Bool)

(declare-fun e!1803620 () Bool)

(assert (=> d!825419 e!1803620))

(declare-fun res!1183722 () Bool)

(assert (=> d!825419 (=> (not res!1183722) (not e!1803620))))

(declare-fun lt!1012784 () tuple3!5308)

(assert (=> d!825419 (= res!1183722 (= (_1!19936 lt!1012784) (derivationStepZipper!408 lt!1012725 (apply!7865 prefix!1325 0))))))

(declare-fun choose!16757 ((InoxSet Context!5014) C!17140 CacheUp!2706 CacheDown!2828) tuple3!5308)

(assert (=> d!825419 (= lt!1012784 (choose!16757 lt!1012725 (apply!7865 prefix!1325 0) cacheUp!999 cacheDown!1118))))

(assert (=> d!825419 (= (derivationStepZipperMem!124 lt!1012725 (apply!7865 prefix!1325 0) cacheUp!999 cacheDown!1118) lt!1012784)))

(declare-fun b!2846616 () Bool)

(declare-fun res!1183723 () Bool)

(assert (=> b!2846616 (=> (not res!1183723) (not e!1803620))))

(declare-fun valid!3193 (CacheUp!2706) Bool)

(assert (=> b!2846616 (= res!1183723 (valid!3193 (_2!19936 lt!1012784)))))

(declare-fun b!2846617 () Bool)

(declare-fun valid!3194 (CacheDown!2828) Bool)

(assert (=> b!2846617 (= e!1803620 (valid!3194 (_3!3124 lt!1012784)))))

(assert (= (and d!825419 res!1183722) b!2846616))

(assert (= (and b!2846616 res!1183723) b!2846617))

(assert (=> d!825419 m!3274125))

(assert (=> d!825419 m!3274173))

(assert (=> d!825419 m!3274125))

(declare-fun m!3274400 () Bool)

(assert (=> d!825419 m!3274400))

(declare-fun m!3274402 () Bool)

(assert (=> b!2846616 m!3274402))

(declare-fun m!3274404 () Bool)

(assert (=> b!2846617 m!3274404))

(assert (=> b!2846366 d!825419))

(assert (=> b!2846366 d!825379))

(declare-fun d!825421 () Bool)

(declare-fun lt!1012787 () tuple3!5306)

(assert (=> d!825421 (= (_1!19935 lt!1012787) (prefixMatchZipperSequence!760 (_1!19936 lt!1012734) prefix!1325 (+ 0 1)))))

(declare-fun e!1803621 () tuple3!5306)

(assert (=> d!825421 (= lt!1012787 e!1803621)))

(declare-fun c!459356 () Bool)

(assert (=> d!825421 (= c!459356 (= (+ 0 1) (size!26225 prefix!1325)))))

(declare-fun e!1803622 () Bool)

(assert (=> d!825421 e!1803622))

(declare-fun res!1183724 () Bool)

(assert (=> d!825421 (=> (not res!1183724) (not e!1803622))))

(assert (=> d!825421 (= res!1183724 (>= (+ 0 1) 0))))

(assert (=> d!825421 (= (prefixMatchZipperSequenceMem!8 (_1!19936 lt!1012734) prefix!1325 (+ 0 1) (_2!19936 lt!1012734) (_3!3124 lt!1012734)) lt!1012787)))

(declare-fun b!2846618 () Bool)

(assert (=> b!2846618 (= e!1803622 (<= (+ 0 1) (size!26225 prefix!1325)))))

(declare-fun b!2846619 () Bool)

(assert (=> b!2846619 (= e!1803621 (tuple3!5307 (not (lostCauseZipper!522 (_1!19936 lt!1012734))) (_2!19936 lt!1012734) (_3!3124 lt!1012734)))))

(declare-fun b!2846620 () Bool)

(declare-fun lt!1012785 () tuple3!5306)

(assert (=> b!2846620 (= e!1803621 (tuple3!5307 (_1!19935 lt!1012785) (_2!19935 lt!1012785) (_3!3123 lt!1012785)))))

(declare-fun lt!1012786 () tuple3!5308)

(assert (=> b!2846620 (= lt!1012786 (derivationStepZipperMem!124 (_1!19936 lt!1012734) (apply!7865 prefix!1325 (+ 0 1)) (_2!19936 lt!1012734) (_3!3124 lt!1012734)))))

(assert (=> b!2846620 (= lt!1012785 (prefixMatchZipperSequenceMem!8 (_1!19936 lt!1012786) prefix!1325 (+ 0 1 1) (_2!19936 lt!1012786) (_3!3124 lt!1012786)))))

(assert (= (and d!825421 res!1183724) b!2846618))

(assert (= (and d!825421 c!459356) b!2846619))

(assert (= (and d!825421 (not c!459356)) b!2846620))

(declare-fun m!3274406 () Bool)

(assert (=> d!825421 m!3274406))

(assert (=> d!825421 m!3274121))

(assert (=> b!2846618 m!3274121))

(declare-fun m!3274408 () Bool)

(assert (=> b!2846619 m!3274408))

(assert (=> b!2846620 m!3274321))

(assert (=> b!2846620 m!3274321))

(declare-fun m!3274410 () Bool)

(assert (=> b!2846620 m!3274410))

(declare-fun m!3274412 () Bool)

(assert (=> b!2846620 m!3274412))

(assert (=> b!2846366 d!825421))

(assert (=> b!2846364 d!825349))

(declare-fun b!2846621 () Bool)

(declare-fun res!1183728 () Bool)

(declare-fun e!1803624 () Bool)

(assert (=> b!2846621 (=> (not res!1183728) (not e!1803624))))

(declare-fun call!183573 () Bool)

(assert (=> b!2846621 (= res!1183728 call!183573)))

(declare-fun e!1803626 () Bool)

(assert (=> b!2846621 (= e!1803626 e!1803624)))

(declare-fun b!2846622 () Bool)

(declare-fun e!1803629 () Bool)

(assert (=> b!2846622 (= e!1803629 e!1803626)))

(declare-fun c!459357 () Bool)

(assert (=> b!2846622 (= c!459357 ((_ is Union!8479) (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))))))

(declare-fun bm!183566 () Bool)

(declare-fun call!183572 () Bool)

(assert (=> bm!183566 (= call!183573 call!183572)))

(declare-fun b!2846623 () Bool)

(declare-fun e!1803625 () Bool)

(assert (=> b!2846623 (= e!1803625 call!183572)))

(declare-fun d!825423 () Bool)

(declare-fun res!1183725 () Bool)

(declare-fun e!1803627 () Bool)

(assert (=> d!825423 (=> res!1183725 e!1803627)))

(assert (=> d!825423 (= res!1183725 ((_ is ElementMatch!8479) (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))))))

(assert (=> d!825423 (= (validRegex!3370 (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))) e!1803627)))

(declare-fun b!2846624 () Bool)

(assert (=> b!2846624 (= e!1803627 e!1803629)))

(declare-fun c!459358 () Bool)

(assert (=> b!2846624 (= c!459358 ((_ is Star!8479) (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))))))

(declare-fun call!183571 () Bool)

(declare-fun bm!183567 () Bool)

(assert (=> bm!183567 (= call!183571 (validRegex!3370 (ite c!459357 (regTwo!17471 (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))) (regOne!17470 (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))))))))

(declare-fun bm!183568 () Bool)

(assert (=> bm!183568 (= call!183572 (validRegex!3370 (ite c!459358 (reg!8808 (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))) (ite c!459357 (regOne!17471 (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))) (regTwo!17470 (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354))))))))))

(declare-fun b!2846625 () Bool)

(assert (=> b!2846625 (= e!1803629 e!1803625)))

(declare-fun res!1183727 () Bool)

(assert (=> b!2846625 (= res!1183727 (not (nullable!2629 (reg!8808 (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354)))))))))

(assert (=> b!2846625 (=> (not res!1183727) (not e!1803625))))

(declare-fun b!2846626 () Bool)

(declare-fun e!1803628 () Bool)

(declare-fun e!1803623 () Bool)

(assert (=> b!2846626 (= e!1803628 e!1803623)))

(declare-fun res!1183726 () Bool)

(assert (=> b!2846626 (=> (not res!1183726) (not e!1803623))))

(assert (=> b!2846626 (= res!1183726 call!183571)))

(declare-fun b!2846627 () Bool)

(declare-fun res!1183729 () Bool)

(assert (=> b!2846627 (=> res!1183729 e!1803628)))

(assert (=> b!2846627 (= res!1183729 (not ((_ is Concat!13782) (ite c!459299 (reg!8808 r!13354) (ite c!459298 (regOne!17471 r!13354) (regTwo!17470 r!13354))))))))

(assert (=> b!2846627 (= e!1803626 e!1803628)))

(declare-fun b!2846628 () Bool)

(assert (=> b!2846628 (= e!1803624 call!183571)))

(declare-fun b!2846629 () Bool)

(assert (=> b!2846629 (= e!1803623 call!183573)))

(assert (= (and d!825423 (not res!1183725)) b!2846624))

(assert (= (and b!2846624 c!459358) b!2846625))

(assert (= (and b!2846624 (not c!459358)) b!2846622))

(assert (= (and b!2846625 res!1183727) b!2846623))

(assert (= (and b!2846622 c!459357) b!2846621))

(assert (= (and b!2846622 (not c!459357)) b!2846627))

(assert (= (and b!2846621 res!1183728) b!2846628))

(assert (= (and b!2846627 (not res!1183729)) b!2846626))

(assert (= (and b!2846626 res!1183726) b!2846629))

(assert (= (or b!2846621 b!2846629) bm!183566))

(assert (= (or b!2846628 b!2846626) bm!183567))

(assert (= (or b!2846623 bm!183566) bm!183568))

(declare-fun m!3274414 () Bool)

(assert (=> bm!183567 m!3274414))

(declare-fun m!3274416 () Bool)

(assert (=> bm!183568 m!3274416))

(declare-fun m!3274418 () Bool)

(assert (=> b!2846625 m!3274418))

(assert (=> bm!183544 d!825423))

(assert (=> b!2846372 d!825349))

(declare-fun d!825425 () Bool)

(declare-fun c!459359 () Bool)

(assert (=> d!825425 (= c!459359 ((_ is Node!10473) (left!25429 (c!459293 prefix!1325))))))

(declare-fun e!1803630 () Bool)

(assert (=> d!825425 (= (inv!45797 (left!25429 (c!459293 prefix!1325))) e!1803630)))

(declare-fun b!2846630 () Bool)

(assert (=> b!2846630 (= e!1803630 (inv!45798 (left!25429 (c!459293 prefix!1325))))))

(declare-fun b!2846631 () Bool)

(declare-fun e!1803631 () Bool)

(assert (=> b!2846631 (= e!1803630 e!1803631)))

(declare-fun res!1183730 () Bool)

(assert (=> b!2846631 (= res!1183730 (not ((_ is Leaf!15936) (left!25429 (c!459293 prefix!1325)))))))

(assert (=> b!2846631 (=> res!1183730 e!1803631)))

(declare-fun b!2846632 () Bool)

(assert (=> b!2846632 (= e!1803631 (inv!45799 (left!25429 (c!459293 prefix!1325))))))

(assert (= (and d!825425 c!459359) b!2846630))

(assert (= (and d!825425 (not c!459359)) b!2846631))

(assert (= (and b!2846631 (not res!1183730)) b!2846632))

(declare-fun m!3274420 () Bool)

(assert (=> b!2846630 m!3274420))

(declare-fun m!3274422 () Bool)

(assert (=> b!2846632 m!3274422))

(assert (=> b!2846470 d!825425))

(declare-fun d!825427 () Bool)

(declare-fun c!459360 () Bool)

(assert (=> d!825427 (= c!459360 ((_ is Node!10473) (right!25759 (c!459293 prefix!1325))))))

(declare-fun e!1803632 () Bool)

(assert (=> d!825427 (= (inv!45797 (right!25759 (c!459293 prefix!1325))) e!1803632)))

(declare-fun b!2846633 () Bool)

(assert (=> b!2846633 (= e!1803632 (inv!45798 (right!25759 (c!459293 prefix!1325))))))

(declare-fun b!2846634 () Bool)

(declare-fun e!1803633 () Bool)

(assert (=> b!2846634 (= e!1803632 e!1803633)))

(declare-fun res!1183731 () Bool)

(assert (=> b!2846634 (= res!1183731 (not ((_ is Leaf!15936) (right!25759 (c!459293 prefix!1325)))))))

(assert (=> b!2846634 (=> res!1183731 e!1803633)))

(declare-fun b!2846635 () Bool)

(assert (=> b!2846635 (= e!1803633 (inv!45799 (right!25759 (c!459293 prefix!1325))))))

(assert (= (and d!825427 c!459360) b!2846633))

(assert (= (and d!825427 (not c!459360)) b!2846634))

(assert (= (and b!2846634 (not res!1183731)) b!2846635))

(declare-fun m!3274424 () Bool)

(assert (=> b!2846633 m!3274424))

(declare-fun m!3274426 () Bool)

(assert (=> b!2846635 m!3274426))

(assert (=> b!2846470 d!825427))

(declare-fun bs!519821 () Bool)

(declare-fun d!825429 () Bool)

(assert (= bs!519821 (and d!825429 d!825399)))

(declare-fun lambda!104480 () Int)

(assert (=> bs!519821 (= lambda!104480 lambda!104475)))

(declare-fun bs!519822 () Bool)

(assert (= bs!519822 (and d!825429 d!825363)))

(assert (=> bs!519822 (= lambda!104480 lambda!104449)))

(declare-fun bs!519823 () Bool)

(assert (= bs!519823 (and d!825429 d!825409)))

(assert (=> bs!519823 (= lambda!104480 lambda!104477)))

(declare-fun bs!519824 () Bool)

(assert (= bs!519824 (and d!825429 d!825339)))

(assert (=> bs!519824 (= lambda!104480 lambda!104439)))

(declare-fun bs!519825 () Bool)

(assert (= bs!519825 (and d!825429 d!825403)))

(assert (=> bs!519825 (= lambda!104480 lambda!104476)))

(declare-fun bs!519826 () Bool)

(assert (= bs!519826 (and d!825429 d!825389)))

(assert (=> bs!519826 (= lambda!104480 lambda!104473)))

(declare-fun bs!519827 () Bool)

(assert (= bs!519827 (and d!825429 d!825383)))

(assert (=> bs!519827 (= lambda!104480 lambda!104471)))

(declare-fun bs!519828 () Bool)

(assert (= bs!519828 (and d!825429 d!825351)))

(assert (=> bs!519828 (= lambda!104480 lambda!104443)))

(declare-fun bs!519829 () Bool)

(assert (= bs!519829 (and d!825429 d!825411)))

(assert (=> bs!519829 (= lambda!104480 lambda!104478)))

(declare-fun bs!519830 () Bool)

(assert (= bs!519830 (and d!825429 d!825357)))

(assert (=> bs!519830 (= lambda!104480 lambda!104446)))

(declare-fun bs!519831 () Bool)

(assert (= bs!519831 (and d!825429 d!825391)))

(assert (=> bs!519831 (= lambda!104480 lambda!104474)))

(declare-fun bs!519832 () Bool)

(assert (= bs!519832 (and d!825429 d!825353)))

(assert (=> bs!519832 (= lambda!104480 lambda!104444)))

(declare-fun bs!519833 () Bool)

(assert (= bs!519833 (and d!825429 d!825361)))

(assert (=> bs!519833 (= lambda!104480 lambda!104448)))

(declare-fun bs!519834 () Bool)

(assert (= bs!519834 (and d!825429 d!825385)))

(assert (=> bs!519834 (= lambda!104480 lambda!104472)))

(declare-fun bs!519835 () Bool)

(assert (= bs!519835 (and d!825429 d!825369)))

(assert (=> bs!519835 (= lambda!104480 lambda!104465)))

(declare-fun bs!519836 () Bool)

(assert (= bs!519836 (and d!825429 d!825355)))

(assert (=> bs!519836 (= lambda!104480 lambda!104445)))

(declare-fun bs!519837 () Bool)

(assert (= bs!519837 (and d!825429 d!825359)))

(assert (=> bs!519837 (= lambda!104480 lambda!104447)))

(declare-fun bs!519838 () Bool)

(assert (= bs!519838 (and d!825429 d!825373)))

(assert (=> bs!519838 (= lambda!104480 lambda!104466)))

(assert (=> d!825429 (= (inv!45800 (_2!19933 (_1!19934 (h!39196 mapValue!18626)))) (forall!6929 (exprs!3007 (_2!19933 (_1!19934 (h!39196 mapValue!18626)))) lambda!104480))))

(declare-fun bs!519839 () Bool)

(assert (= bs!519839 d!825429))

(declare-fun m!3274428 () Bool)

(assert (=> bs!519839 m!3274428))

(assert (=> b!2846442 d!825429))

(declare-fun d!825431 () Bool)

(declare-fun c!459363 () Bool)

(assert (=> d!825431 (= c!459363 ((_ is Nil!33777) lt!1012738))))

(declare-fun e!1803636 () (InoxSet Context!5014))

(assert (=> d!825431 (= (content!4652 lt!1012738) e!1803636)))

(declare-fun b!2846640 () Bool)

(assert (=> b!2846640 (= e!1803636 ((as const (Array Context!5014 Bool)) false))))

(declare-fun b!2846641 () Bool)

(assert (=> b!2846641 (= e!1803636 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) (h!39197 lt!1012738) true) (content!4652 (t!232924 lt!1012738))))))

(assert (= (and d!825431 c!459363) b!2846640))

(assert (= (and d!825431 (not c!459363)) b!2846641))

(declare-fun m!3274430 () Bool)

(assert (=> b!2846641 m!3274430))

(declare-fun m!3274432 () Bool)

(assert (=> b!2846641 m!3274432))

(assert (=> b!2846369 d!825431))

(assert (=> b!2846392 d!825365))

(assert (=> d!825309 d!825313))

(assert (=> d!825309 d!825307))

(assert (=> d!825309 d!825319))

(declare-fun d!825433 () Bool)

(assert (=> d!825433 (= (prefixMatchZipper!239 lt!1012725 (dropList!1024 prefix!1325 0)) (prefixMatchZipperSequence!760 lt!1012725 prefix!1325 0))))

(assert (=> d!825433 true))

(declare-fun _$29!424 () Unit!47549)

(assert (=> d!825433 (= (choose!16755 lt!1012725 prefix!1325 0) _$29!424)))

(declare-fun bs!519840 () Bool)

(assert (= bs!519840 d!825433))

(assert (=> bs!519840 m!3274065))

(assert (=> bs!519840 m!3274065))

(assert (=> bs!519840 m!3274075))

(assert (=> bs!519840 m!3274067))

(assert (=> d!825309 d!825433))

(declare-fun d!825435 () Bool)

(declare-fun e!1803651 () Bool)

(assert (=> d!825435 e!1803651))

(declare-fun res!1183734 () Bool)

(assert (=> d!825435 (=> (not res!1183734) (not e!1803651))))

(declare-fun lt!1012790 () List!33899)

(declare-fun content!4653 (List!33899) (InoxSet C!17140))

(assert (=> d!825435 (= res!1183734 (= ((_ map implies) (content!4653 lt!1012790) (content!4653 (list!12582 (c!459293 prefix!1325)))) ((as const (InoxSet C!17140)) true)))))

(declare-fun e!1803650 () List!33899)

(assert (=> d!825435 (= lt!1012790 e!1803650)))

(declare-fun c!459372 () Bool)

(assert (=> d!825435 (= c!459372 ((_ is Nil!33775) (list!12582 (c!459293 prefix!1325))))))

(assert (=> d!825435 (= (drop!1812 (list!12582 (c!459293 prefix!1325)) 0) lt!1012790)))

(declare-fun b!2846660 () Bool)

(declare-fun e!1803647 () Int)

(assert (=> b!2846660 (= e!1803651 (= (size!26226 lt!1012790) e!1803647))))

(declare-fun c!459374 () Bool)

(assert (=> b!2846660 (= c!459374 (<= 0 0))))

(declare-fun b!2846661 () Bool)

(declare-fun e!1803648 () List!33899)

(assert (=> b!2846661 (= e!1803648 (list!12582 (c!459293 prefix!1325)))))

(declare-fun b!2846662 () Bool)

(assert (=> b!2846662 (= e!1803648 (drop!1812 (t!232922 (list!12582 (c!459293 prefix!1325))) (- 0 1)))))

(declare-fun b!2846663 () Bool)

(assert (=> b!2846663 (= e!1803650 Nil!33775)))

(declare-fun b!2846664 () Bool)

(declare-fun call!183576 () Int)

(assert (=> b!2846664 (= e!1803647 call!183576)))

(declare-fun bm!183571 () Bool)

(assert (=> bm!183571 (= call!183576 (size!26226 (list!12582 (c!459293 prefix!1325))))))

(declare-fun b!2846665 () Bool)

(declare-fun e!1803649 () Int)

(assert (=> b!2846665 (= e!1803649 0)))

(declare-fun b!2846666 () Bool)

(assert (=> b!2846666 (= e!1803649 (- call!183576 0))))

(declare-fun b!2846667 () Bool)

(assert (=> b!2846667 (= e!1803647 e!1803649)))

(declare-fun c!459375 () Bool)

(assert (=> b!2846667 (= c!459375 (>= 0 call!183576))))

(declare-fun b!2846668 () Bool)

(assert (=> b!2846668 (= e!1803650 e!1803648)))

(declare-fun c!459373 () Bool)

(assert (=> b!2846668 (= c!459373 (<= 0 0))))

(assert (= (and d!825435 c!459372) b!2846663))

(assert (= (and d!825435 (not c!459372)) b!2846668))

(assert (= (and b!2846668 c!459373) b!2846661))

(assert (= (and b!2846668 (not c!459373)) b!2846662))

(assert (= (and d!825435 res!1183734) b!2846660))

(assert (= (and b!2846660 c!459374) b!2846664))

(assert (= (and b!2846660 (not c!459374)) b!2846667))

(assert (= (and b!2846667 c!459375) b!2846665))

(assert (= (and b!2846667 (not c!459375)) b!2846666))

(assert (= (or b!2846664 b!2846667 b!2846666) bm!183571))

(declare-fun m!3274434 () Bool)

(assert (=> d!825435 m!3274434))

(assert (=> d!825435 m!3274137))

(declare-fun m!3274436 () Bool)

(assert (=> d!825435 m!3274436))

(declare-fun m!3274438 () Bool)

(assert (=> b!2846660 m!3274438))

(declare-fun m!3274440 () Bool)

(assert (=> b!2846662 m!3274440))

(assert (=> bm!183571 m!3274137))

(declare-fun m!3274442 () Bool)

(assert (=> bm!183571 m!3274442))

(assert (=> d!825307 d!825435))

(assert (=> d!825307 d!825387))

(declare-fun bs!519841 () Bool)

(declare-fun d!825437 () Bool)

(assert (= bs!519841 (and d!825437 d!825399)))

(declare-fun lambda!104481 () Int)

(assert (=> bs!519841 (= lambda!104481 lambda!104475)))

(declare-fun bs!519842 () Bool)

(assert (= bs!519842 (and d!825437 d!825363)))

(assert (=> bs!519842 (= lambda!104481 lambda!104449)))

(declare-fun bs!519843 () Bool)

(assert (= bs!519843 (and d!825437 d!825409)))

(assert (=> bs!519843 (= lambda!104481 lambda!104477)))

(declare-fun bs!519844 () Bool)

(assert (= bs!519844 (and d!825437 d!825339)))

(assert (=> bs!519844 (= lambda!104481 lambda!104439)))

(declare-fun bs!519845 () Bool)

(assert (= bs!519845 (and d!825437 d!825403)))

(assert (=> bs!519845 (= lambda!104481 lambda!104476)))

(declare-fun bs!519846 () Bool)

(assert (= bs!519846 (and d!825437 d!825389)))

(assert (=> bs!519846 (= lambda!104481 lambda!104473)))

(declare-fun bs!519847 () Bool)

(assert (= bs!519847 (and d!825437 d!825383)))

(assert (=> bs!519847 (= lambda!104481 lambda!104471)))

(declare-fun bs!519848 () Bool)

(assert (= bs!519848 (and d!825437 d!825351)))

(assert (=> bs!519848 (= lambda!104481 lambda!104443)))

(declare-fun bs!519849 () Bool)

(assert (= bs!519849 (and d!825437 d!825411)))

(assert (=> bs!519849 (= lambda!104481 lambda!104478)))

(declare-fun bs!519850 () Bool)

(assert (= bs!519850 (and d!825437 d!825357)))

(assert (=> bs!519850 (= lambda!104481 lambda!104446)))

(declare-fun bs!519851 () Bool)

(assert (= bs!519851 (and d!825437 d!825391)))

(assert (=> bs!519851 (= lambda!104481 lambda!104474)))

(declare-fun bs!519852 () Bool)

(assert (= bs!519852 (and d!825437 d!825429)))

(assert (=> bs!519852 (= lambda!104481 lambda!104480)))

(declare-fun bs!519853 () Bool)

(assert (= bs!519853 (and d!825437 d!825353)))

(assert (=> bs!519853 (= lambda!104481 lambda!104444)))

(declare-fun bs!519854 () Bool)

(assert (= bs!519854 (and d!825437 d!825361)))

(assert (=> bs!519854 (= lambda!104481 lambda!104448)))

(declare-fun bs!519855 () Bool)

(assert (= bs!519855 (and d!825437 d!825385)))

(assert (=> bs!519855 (= lambda!104481 lambda!104472)))

(declare-fun bs!519856 () Bool)

(assert (= bs!519856 (and d!825437 d!825369)))

(assert (=> bs!519856 (= lambda!104481 lambda!104465)))

(declare-fun bs!519857 () Bool)

(assert (= bs!519857 (and d!825437 d!825355)))

(assert (=> bs!519857 (= lambda!104481 lambda!104445)))

(declare-fun bs!519858 () Bool)

(assert (= bs!519858 (and d!825437 d!825359)))

(assert (=> bs!519858 (= lambda!104481 lambda!104447)))

(declare-fun bs!519859 () Bool)

(assert (= bs!519859 (and d!825437 d!825373)))

(assert (=> bs!519859 (= lambda!104481 lambda!104466)))

(assert (=> d!825437 (= (inv!45800 (_2!19933 (_1!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))))) (forall!6929 (exprs!3007 (_2!19933 (_1!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))))) lambda!104481))))

(declare-fun bs!519860 () Bool)

(assert (= bs!519860 d!825437))

(declare-fun m!3274444 () Bool)

(assert (=> bs!519860 m!3274444))

(assert (=> b!2846510 d!825437))

(declare-fun bs!519861 () Bool)

(declare-fun d!825439 () Bool)

(assert (= bs!519861 (and d!825439 d!825399)))

(declare-fun lambda!104482 () Int)

(assert (=> bs!519861 (= lambda!104482 lambda!104475)))

(declare-fun bs!519862 () Bool)

(assert (= bs!519862 (and d!825439 d!825363)))

(assert (=> bs!519862 (= lambda!104482 lambda!104449)))

(declare-fun bs!519863 () Bool)

(assert (= bs!519863 (and d!825439 d!825409)))

(assert (=> bs!519863 (= lambda!104482 lambda!104477)))

(declare-fun bs!519864 () Bool)

(assert (= bs!519864 (and d!825439 d!825339)))

(assert (=> bs!519864 (= lambda!104482 lambda!104439)))

(declare-fun bs!519865 () Bool)

(assert (= bs!519865 (and d!825439 d!825403)))

(assert (=> bs!519865 (= lambda!104482 lambda!104476)))

(declare-fun bs!519866 () Bool)

(assert (= bs!519866 (and d!825439 d!825389)))

(assert (=> bs!519866 (= lambda!104482 lambda!104473)))

(declare-fun bs!519867 () Bool)

(assert (= bs!519867 (and d!825439 d!825383)))

(assert (=> bs!519867 (= lambda!104482 lambda!104471)))

(declare-fun bs!519868 () Bool)

(assert (= bs!519868 (and d!825439 d!825411)))

(assert (=> bs!519868 (= lambda!104482 lambda!104478)))

(declare-fun bs!519869 () Bool)

(assert (= bs!519869 (and d!825439 d!825357)))

(assert (=> bs!519869 (= lambda!104482 lambda!104446)))

(declare-fun bs!519870 () Bool)

(assert (= bs!519870 (and d!825439 d!825391)))

(assert (=> bs!519870 (= lambda!104482 lambda!104474)))

(declare-fun bs!519871 () Bool)

(assert (= bs!519871 (and d!825439 d!825429)))

(assert (=> bs!519871 (= lambda!104482 lambda!104480)))

(declare-fun bs!519872 () Bool)

(assert (= bs!519872 (and d!825439 d!825353)))

(assert (=> bs!519872 (= lambda!104482 lambda!104444)))

(declare-fun bs!519873 () Bool)

(assert (= bs!519873 (and d!825439 d!825361)))

(assert (=> bs!519873 (= lambda!104482 lambda!104448)))

(declare-fun bs!519874 () Bool)

(assert (= bs!519874 (and d!825439 d!825385)))

(assert (=> bs!519874 (= lambda!104482 lambda!104472)))

(declare-fun bs!519875 () Bool)

(assert (= bs!519875 (and d!825439 d!825437)))

(assert (=> bs!519875 (= lambda!104482 lambda!104481)))

(declare-fun bs!519876 () Bool)

(assert (= bs!519876 (and d!825439 d!825351)))

(assert (=> bs!519876 (= lambda!104482 lambda!104443)))

(declare-fun bs!519877 () Bool)

(assert (= bs!519877 (and d!825439 d!825369)))

(assert (=> bs!519877 (= lambda!104482 lambda!104465)))

(declare-fun bs!519878 () Bool)

(assert (= bs!519878 (and d!825439 d!825355)))

(assert (=> bs!519878 (= lambda!104482 lambda!104445)))

(declare-fun bs!519879 () Bool)

(assert (= bs!519879 (and d!825439 d!825359)))

(assert (=> bs!519879 (= lambda!104482 lambda!104447)))

(declare-fun bs!519880 () Bool)

(assert (= bs!519880 (and d!825439 d!825373)))

(assert (=> bs!519880 (= lambda!104482 lambda!104466)))

(assert (=> d!825439 (= (inv!45800 (_2!19933 (_1!19934 (h!39196 mapDefault!18623)))) (forall!6929 (exprs!3007 (_2!19933 (_1!19934 (h!39196 mapDefault!18623)))) lambda!104482))))

(declare-fun bs!519881 () Bool)

(assert (= bs!519881 d!825439))

(declare-fun m!3274446 () Bool)

(assert (=> bs!519881 m!3274446))

(assert (=> b!2846459 d!825439))

(declare-fun bs!519882 () Bool)

(declare-fun d!825441 () Bool)

(assert (= bs!519882 (and d!825441 d!825399)))

(declare-fun lambda!104483 () Int)

(assert (=> bs!519882 (= lambda!104483 lambda!104475)))

(declare-fun bs!519883 () Bool)

(assert (= bs!519883 (and d!825441 d!825363)))

(assert (=> bs!519883 (= lambda!104483 lambda!104449)))

(declare-fun bs!519884 () Bool)

(assert (= bs!519884 (and d!825441 d!825409)))

(assert (=> bs!519884 (= lambda!104483 lambda!104477)))

(declare-fun bs!519885 () Bool)

(assert (= bs!519885 (and d!825441 d!825339)))

(assert (=> bs!519885 (= lambda!104483 lambda!104439)))

(declare-fun bs!519886 () Bool)

(assert (= bs!519886 (and d!825441 d!825403)))

(assert (=> bs!519886 (= lambda!104483 lambda!104476)))

(declare-fun bs!519887 () Bool)

(assert (= bs!519887 (and d!825441 d!825389)))

(assert (=> bs!519887 (= lambda!104483 lambda!104473)))

(declare-fun bs!519888 () Bool)

(assert (= bs!519888 (and d!825441 d!825383)))

(assert (=> bs!519888 (= lambda!104483 lambda!104471)))

(declare-fun bs!519889 () Bool)

(assert (= bs!519889 (and d!825441 d!825411)))

(assert (=> bs!519889 (= lambda!104483 lambda!104478)))

(declare-fun bs!519890 () Bool)

(assert (= bs!519890 (and d!825441 d!825357)))

(assert (=> bs!519890 (= lambda!104483 lambda!104446)))

(declare-fun bs!519891 () Bool)

(assert (= bs!519891 (and d!825441 d!825391)))

(assert (=> bs!519891 (= lambda!104483 lambda!104474)))

(declare-fun bs!519892 () Bool)

(assert (= bs!519892 (and d!825441 d!825353)))

(assert (=> bs!519892 (= lambda!104483 lambda!104444)))

(declare-fun bs!519893 () Bool)

(assert (= bs!519893 (and d!825441 d!825361)))

(assert (=> bs!519893 (= lambda!104483 lambda!104448)))

(declare-fun bs!519894 () Bool)

(assert (= bs!519894 (and d!825441 d!825385)))

(assert (=> bs!519894 (= lambda!104483 lambda!104472)))

(declare-fun bs!519895 () Bool)

(assert (= bs!519895 (and d!825441 d!825437)))

(assert (=> bs!519895 (= lambda!104483 lambda!104481)))

(declare-fun bs!519896 () Bool)

(assert (= bs!519896 (and d!825441 d!825351)))

(assert (=> bs!519896 (= lambda!104483 lambda!104443)))

(declare-fun bs!519897 () Bool)

(assert (= bs!519897 (and d!825441 d!825369)))

(assert (=> bs!519897 (= lambda!104483 lambda!104465)))

(declare-fun bs!519898 () Bool)

(assert (= bs!519898 (and d!825441 d!825355)))

(assert (=> bs!519898 (= lambda!104483 lambda!104445)))

(declare-fun bs!519899 () Bool)

(assert (= bs!519899 (and d!825441 d!825359)))

(assert (=> bs!519899 (= lambda!104483 lambda!104447)))

(declare-fun bs!519900 () Bool)

(assert (= bs!519900 (and d!825441 d!825373)))

(assert (=> bs!519900 (= lambda!104483 lambda!104466)))

(declare-fun bs!519901 () Bool)

(assert (= bs!519901 (and d!825441 d!825439)))

(assert (=> bs!519901 (= lambda!104483 lambda!104482)))

(declare-fun bs!519902 () Bool)

(assert (= bs!519902 (and d!825441 d!825429)))

(assert (=> bs!519902 (= lambda!104483 lambda!104480)))

(assert (=> d!825441 (= (inv!45800 (_2!19933 (_1!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))))) (forall!6929 (exprs!3007 (_2!19933 (_1!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))))) lambda!104483))))

(declare-fun bs!519903 () Bool)

(assert (= bs!519903 d!825441))

(declare-fun m!3274448 () Bool)

(assert (=> bs!519903 m!3274448))

(assert (=> b!2846507 d!825441))

(declare-fun d!825443 () Bool)

(declare-fun res!1183739 () Bool)

(declare-fun e!1803656 () Bool)

(assert (=> d!825443 (=> res!1183739 e!1803656)))

(assert (=> d!825443 (= res!1183739 ((_ is Nil!33777) lt!1012738))))

(assert (=> d!825443 (= (noDuplicate!555 lt!1012738) e!1803656)))

(declare-fun b!2846673 () Bool)

(declare-fun e!1803657 () Bool)

(assert (=> b!2846673 (= e!1803656 e!1803657)))

(declare-fun res!1183740 () Bool)

(assert (=> b!2846673 (=> (not res!1183740) (not e!1803657))))

(declare-fun contains!6121 (List!33901 Context!5014) Bool)

(assert (=> b!2846673 (= res!1183740 (not (contains!6121 (t!232924 lt!1012738) (h!39197 lt!1012738))))))

(declare-fun b!2846674 () Bool)

(assert (=> b!2846674 (= e!1803657 (noDuplicate!555 (t!232924 lt!1012738)))))

(assert (= (and d!825443 (not res!1183739)) b!2846673))

(assert (= (and b!2846673 res!1183740) b!2846674))

(declare-fun m!3274450 () Bool)

(assert (=> b!2846673 m!3274450))

(declare-fun m!3274452 () Bool)

(assert (=> b!2846674 m!3274452))

(assert (=> d!825305 d!825443))

(declare-fun d!825445 () Bool)

(declare-fun e!1803664 () Bool)

(assert (=> d!825445 e!1803664))

(declare-fun res!1183746 () Bool)

(assert (=> d!825445 (=> (not res!1183746) (not e!1803664))))

(declare-fun res!1183745 () List!33901)

(assert (=> d!825445 (= res!1183746 (noDuplicate!555 res!1183745))))

(declare-fun e!1803666 () Bool)

(assert (=> d!825445 e!1803666))

(assert (=> d!825445 (= (choose!16754 lt!1012725) res!1183745)))

(declare-fun b!2846682 () Bool)

(declare-fun e!1803665 () Bool)

(declare-fun tp!913044 () Bool)

(assert (=> b!2846682 (= e!1803665 tp!913044)))

(declare-fun tp!913045 () Bool)

(declare-fun b!2846681 () Bool)

(assert (=> b!2846681 (= e!1803666 (and (inv!45800 (h!39197 res!1183745)) e!1803665 tp!913045))))

(declare-fun b!2846683 () Bool)

(assert (=> b!2846683 (= e!1803664 (= (content!4652 res!1183745) lt!1012725))))

(assert (= b!2846681 b!2846682))

(assert (= (and d!825445 ((_ is Cons!33777) res!1183745)) b!2846681))

(assert (= (and d!825445 res!1183746) b!2846683))

(declare-fun m!3274454 () Bool)

(assert (=> d!825445 m!3274454))

(declare-fun m!3274456 () Bool)

(assert (=> b!2846681 m!3274456))

(declare-fun m!3274458 () Bool)

(assert (=> b!2846683 m!3274458))

(assert (=> d!825305 d!825445))

(declare-fun d!825447 () Bool)

(declare-fun res!1183751 () Bool)

(declare-fun e!1803669 () Bool)

(assert (=> d!825447 (=> (not res!1183751) (not e!1803669))))

(assert (=> d!825447 (= res!1183751 (<= (size!26226 (list!12583 (xs!13591 (c!459293 prefix!1325)))) 512))))

(assert (=> d!825447 (= (inv!45799 (c!459293 prefix!1325)) e!1803669)))

(declare-fun b!2846688 () Bool)

(declare-fun res!1183752 () Bool)

(assert (=> b!2846688 (=> (not res!1183752) (not e!1803669))))

(assert (=> b!2846688 (= res!1183752 (= (csize!21177 (c!459293 prefix!1325)) (size!26226 (list!12583 (xs!13591 (c!459293 prefix!1325))))))))

(declare-fun b!2846689 () Bool)

(assert (=> b!2846689 (= e!1803669 (and (> (csize!21177 (c!459293 prefix!1325)) 0) (<= (csize!21177 (c!459293 prefix!1325)) 512)))))

(assert (= (and d!825447 res!1183751) b!2846688))

(assert (= (and b!2846688 res!1183752) b!2846689))

(assert (=> d!825447 m!3274352))

(assert (=> d!825447 m!3274352))

(declare-fun m!3274460 () Bool)

(assert (=> d!825447 m!3274460))

(assert (=> b!2846688 m!3274352))

(assert (=> b!2846688 m!3274352))

(assert (=> b!2846688 m!3274460))

(assert (=> b!2846357 d!825447))

(declare-fun bs!519904 () Bool)

(declare-fun d!825449 () Bool)

(assert (= bs!519904 (and d!825449 d!825399)))

(declare-fun lambda!104484 () Int)

(assert (=> bs!519904 (= lambda!104484 lambda!104475)))

(declare-fun bs!519905 () Bool)

(assert (= bs!519905 (and d!825449 d!825363)))

(assert (=> bs!519905 (= lambda!104484 lambda!104449)))

(declare-fun bs!519906 () Bool)

(assert (= bs!519906 (and d!825449 d!825409)))

(assert (=> bs!519906 (= lambda!104484 lambda!104477)))

(declare-fun bs!519907 () Bool)

(assert (= bs!519907 (and d!825449 d!825339)))

(assert (=> bs!519907 (= lambda!104484 lambda!104439)))

(declare-fun bs!519908 () Bool)

(assert (= bs!519908 (and d!825449 d!825403)))

(assert (=> bs!519908 (= lambda!104484 lambda!104476)))

(declare-fun bs!519909 () Bool)

(assert (= bs!519909 (and d!825449 d!825389)))

(assert (=> bs!519909 (= lambda!104484 lambda!104473)))

(declare-fun bs!519910 () Bool)

(assert (= bs!519910 (and d!825449 d!825383)))

(assert (=> bs!519910 (= lambda!104484 lambda!104471)))

(declare-fun bs!519911 () Bool)

(assert (= bs!519911 (and d!825449 d!825441)))

(assert (=> bs!519911 (= lambda!104484 lambda!104483)))

(declare-fun bs!519912 () Bool)

(assert (= bs!519912 (and d!825449 d!825411)))

(assert (=> bs!519912 (= lambda!104484 lambda!104478)))

(declare-fun bs!519913 () Bool)

(assert (= bs!519913 (and d!825449 d!825357)))

(assert (=> bs!519913 (= lambda!104484 lambda!104446)))

(declare-fun bs!519914 () Bool)

(assert (= bs!519914 (and d!825449 d!825391)))

(assert (=> bs!519914 (= lambda!104484 lambda!104474)))

(declare-fun bs!519915 () Bool)

(assert (= bs!519915 (and d!825449 d!825353)))

(assert (=> bs!519915 (= lambda!104484 lambda!104444)))

(declare-fun bs!519916 () Bool)

(assert (= bs!519916 (and d!825449 d!825361)))

(assert (=> bs!519916 (= lambda!104484 lambda!104448)))

(declare-fun bs!519917 () Bool)

(assert (= bs!519917 (and d!825449 d!825385)))

(assert (=> bs!519917 (= lambda!104484 lambda!104472)))

(declare-fun bs!519918 () Bool)

(assert (= bs!519918 (and d!825449 d!825437)))

(assert (=> bs!519918 (= lambda!104484 lambda!104481)))

(declare-fun bs!519919 () Bool)

(assert (= bs!519919 (and d!825449 d!825351)))

(assert (=> bs!519919 (= lambda!104484 lambda!104443)))

(declare-fun bs!519920 () Bool)

(assert (= bs!519920 (and d!825449 d!825369)))

(assert (=> bs!519920 (= lambda!104484 lambda!104465)))

(declare-fun bs!519921 () Bool)

(assert (= bs!519921 (and d!825449 d!825355)))

(assert (=> bs!519921 (= lambda!104484 lambda!104445)))

(declare-fun bs!519922 () Bool)

(assert (= bs!519922 (and d!825449 d!825359)))

(assert (=> bs!519922 (= lambda!104484 lambda!104447)))

(declare-fun bs!519923 () Bool)

(assert (= bs!519923 (and d!825449 d!825373)))

(assert (=> bs!519923 (= lambda!104484 lambda!104466)))

(declare-fun bs!519924 () Bool)

(assert (= bs!519924 (and d!825449 d!825439)))

(assert (=> bs!519924 (= lambda!104484 lambda!104482)))

(declare-fun bs!519925 () Bool)

(assert (= bs!519925 (and d!825449 d!825429)))

(assert (=> bs!519925 (= lambda!104484 lambda!104480)))

(assert (=> d!825449 (= (inv!45800 setElem!24908) (forall!6929 (exprs!3007 setElem!24908) lambda!104484))))

(declare-fun bs!519926 () Bool)

(assert (= bs!519926 d!825449))

(declare-fun m!3274462 () Bool)

(assert (=> bs!519926 m!3274462))

(assert (=> setNonEmpty!24908 d!825449))

(declare-fun d!825451 () Bool)

(declare-fun res!1183759 () Bool)

(declare-fun e!1803672 () Bool)

(assert (=> d!825451 (=> (not res!1183759) (not e!1803672))))

(assert (=> d!825451 (= res!1183759 (= (csize!21176 (c!459293 prefix!1325)) (+ (size!26227 (left!25429 (c!459293 prefix!1325))) (size!26227 (right!25759 (c!459293 prefix!1325))))))))

(assert (=> d!825451 (= (inv!45798 (c!459293 prefix!1325)) e!1803672)))

(declare-fun b!2846696 () Bool)

(declare-fun res!1183760 () Bool)

(assert (=> b!2846696 (=> (not res!1183760) (not e!1803672))))

(assert (=> b!2846696 (= res!1183760 (and (not (= (left!25429 (c!459293 prefix!1325)) Empty!10473)) (not (= (right!25759 (c!459293 prefix!1325)) Empty!10473))))))

(declare-fun b!2846697 () Bool)

(declare-fun res!1183761 () Bool)

(assert (=> b!2846697 (=> (not res!1183761) (not e!1803672))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2846697 (= res!1183761 (= (cheight!10684 (c!459293 prefix!1325)) (+ (max!0 (height!1516 (left!25429 (c!459293 prefix!1325))) (height!1516 (right!25759 (c!459293 prefix!1325)))) 1)))))

(declare-fun b!2846698 () Bool)

(assert (=> b!2846698 (= e!1803672 (<= 0 (cheight!10684 (c!459293 prefix!1325))))))

(assert (= (and d!825451 res!1183759) b!2846696))

(assert (= (and b!2846696 res!1183760) b!2846697))

(assert (= (and b!2846697 res!1183761) b!2846698))

(declare-fun m!3274464 () Bool)

(assert (=> d!825451 m!3274464))

(declare-fun m!3274466 () Bool)

(assert (=> d!825451 m!3274466))

(assert (=> b!2846697 m!3274360))

(assert (=> b!2846697 m!3274362))

(assert (=> b!2846697 m!3274360))

(assert (=> b!2846697 m!3274362))

(declare-fun m!3274468 () Bool)

(assert (=> b!2846697 m!3274468))

(assert (=> b!2846355 d!825451))

(declare-fun bs!519927 () Bool)

(declare-fun d!825453 () Bool)

(assert (= bs!519927 (and d!825453 d!825399)))

(declare-fun lambda!104485 () Int)

(assert (=> bs!519927 (= lambda!104485 lambda!104475)))

(declare-fun bs!519928 () Bool)

(assert (= bs!519928 (and d!825453 d!825363)))

(assert (=> bs!519928 (= lambda!104485 lambda!104449)))

(declare-fun bs!519929 () Bool)

(assert (= bs!519929 (and d!825453 d!825409)))

(assert (=> bs!519929 (= lambda!104485 lambda!104477)))

(declare-fun bs!519930 () Bool)

(assert (= bs!519930 (and d!825453 d!825339)))

(assert (=> bs!519930 (= lambda!104485 lambda!104439)))

(declare-fun bs!519931 () Bool)

(assert (= bs!519931 (and d!825453 d!825403)))

(assert (=> bs!519931 (= lambda!104485 lambda!104476)))

(declare-fun bs!519932 () Bool)

(assert (= bs!519932 (and d!825453 d!825389)))

(assert (=> bs!519932 (= lambda!104485 lambda!104473)))

(declare-fun bs!519933 () Bool)

(assert (= bs!519933 (and d!825453 d!825383)))

(assert (=> bs!519933 (= lambda!104485 lambda!104471)))

(declare-fun bs!519934 () Bool)

(assert (= bs!519934 (and d!825453 d!825441)))

(assert (=> bs!519934 (= lambda!104485 lambda!104483)))

(declare-fun bs!519935 () Bool)

(assert (= bs!519935 (and d!825453 d!825411)))

(assert (=> bs!519935 (= lambda!104485 lambda!104478)))

(declare-fun bs!519936 () Bool)

(assert (= bs!519936 (and d!825453 d!825357)))

(assert (=> bs!519936 (= lambda!104485 lambda!104446)))

(declare-fun bs!519937 () Bool)

(assert (= bs!519937 (and d!825453 d!825391)))

(assert (=> bs!519937 (= lambda!104485 lambda!104474)))

(declare-fun bs!519938 () Bool)

(assert (= bs!519938 (and d!825453 d!825353)))

(assert (=> bs!519938 (= lambda!104485 lambda!104444)))

(declare-fun bs!519939 () Bool)

(assert (= bs!519939 (and d!825453 d!825361)))

(assert (=> bs!519939 (= lambda!104485 lambda!104448)))

(declare-fun bs!519940 () Bool)

(assert (= bs!519940 (and d!825453 d!825385)))

(assert (=> bs!519940 (= lambda!104485 lambda!104472)))

(declare-fun bs!519941 () Bool)

(assert (= bs!519941 (and d!825453 d!825437)))

(assert (=> bs!519941 (= lambda!104485 lambda!104481)))

(declare-fun bs!519942 () Bool)

(assert (= bs!519942 (and d!825453 d!825351)))

(assert (=> bs!519942 (= lambda!104485 lambda!104443)))

(declare-fun bs!519943 () Bool)

(assert (= bs!519943 (and d!825453 d!825369)))

(assert (=> bs!519943 (= lambda!104485 lambda!104465)))

(declare-fun bs!519944 () Bool)

(assert (= bs!519944 (and d!825453 d!825355)))

(assert (=> bs!519944 (= lambda!104485 lambda!104445)))

(declare-fun bs!519945 () Bool)

(assert (= bs!519945 (and d!825453 d!825359)))

(assert (=> bs!519945 (= lambda!104485 lambda!104447)))

(declare-fun bs!519946 () Bool)

(assert (= bs!519946 (and d!825453 d!825449)))

(assert (=> bs!519946 (= lambda!104485 lambda!104484)))

(declare-fun bs!519947 () Bool)

(assert (= bs!519947 (and d!825453 d!825373)))

(assert (=> bs!519947 (= lambda!104485 lambda!104466)))

(declare-fun bs!519948 () Bool)

(assert (= bs!519948 (and d!825453 d!825439)))

(assert (=> bs!519948 (= lambda!104485 lambda!104482)))

(declare-fun bs!519949 () Bool)

(assert (= bs!519949 (and d!825453 d!825429)))

(assert (=> bs!519949 (= lambda!104485 lambda!104480)))

(assert (=> d!825453 (= (inv!45800 (_2!19933 (_1!19934 (h!39196 mapDefault!18626)))) (forall!6929 (exprs!3007 (_2!19933 (_1!19934 (h!39196 mapDefault!18626)))) lambda!104485))))

(declare-fun bs!519950 () Bool)

(assert (= bs!519950 d!825453))

(declare-fun m!3274470 () Bool)

(assert (=> bs!519950 m!3274470))

(assert (=> b!2846444 d!825453))

(declare-fun d!825455 () Bool)

(declare-fun res!1183768 () Bool)

(declare-fun e!1803677 () Bool)

(assert (=> d!825455 (=> (not res!1183768) (not e!1803677))))

(declare-fun valid!3195 (MutableMap!4010) Bool)

(assert (=> d!825455 (= res!1183768 (valid!3195 (cache!4145 cacheDown!1118)))))

(assert (=> d!825455 (= (validCacheMapDown!438 (cache!4145 cacheDown!1118)) e!1803677)))

(declare-fun b!2846705 () Bool)

(declare-fun res!1183769 () Bool)

(assert (=> b!2846705 (=> (not res!1183769) (not e!1803677))))

(declare-fun invariantList!472 (List!33900) Bool)

(declare-datatypes ((ListMap!1285 0))(
  ( (ListMap!1286 (toList!1916 List!33900)) )
))
(declare-fun map!7249 (MutableMap!4010) ListMap!1285)

(assert (=> b!2846705 (= res!1183769 (invariantList!472 (toList!1916 (map!7249 (cache!4145 cacheDown!1118)))))))

(declare-fun b!2846706 () Bool)

(declare-fun lambda!104488 () Int)

(declare-fun forall!6932 (List!33900 Int) Bool)

(assert (=> b!2846706 (= e!1803677 (forall!6932 (toList!1916 (map!7249 (cache!4145 cacheDown!1118))) lambda!104488))))

(assert (= (and d!825455 res!1183768) b!2846705))

(assert (= (and b!2846705 res!1183769) b!2846706))

(declare-fun m!3274473 () Bool)

(assert (=> d!825455 m!3274473))

(declare-fun m!3274475 () Bool)

(assert (=> b!2846705 m!3274475))

(declare-fun m!3274477 () Bool)

(assert (=> b!2846705 m!3274477))

(assert (=> b!2846706 m!3274475))

(declare-fun m!3274479 () Bool)

(assert (=> b!2846706 m!3274479))

(assert (=> b!2846345 d!825455))

(declare-fun b!2846711 () Bool)

(declare-fun e!1803680 () Bool)

(declare-fun tp!913050 () Bool)

(declare-fun tp!913051 () Bool)

(assert (=> b!2846711 (= e!1803680 (and tp!913050 tp!913051))))

(assert (=> b!2846407 (= tp!912894 e!1803680)))

(assert (= (and b!2846407 ((_ is Cons!33773) (exprs!3007 setElem!24893))) b!2846711))

(declare-fun b!2846712 () Bool)

(declare-fun e!1803682 () Bool)

(declare-fun tp!913052 () Bool)

(assert (=> b!2846712 (= e!1803682 tp!913052)))

(declare-fun tp!913053 () Bool)

(declare-fun setNonEmpty!24914 () Bool)

(declare-fun setElem!24914 () Context!5014)

(declare-fun setRes!24914 () Bool)

(assert (=> setNonEmpty!24914 (= setRes!24914 (and tp!913053 (inv!45800 setElem!24914) e!1803682))))

(declare-fun setRest!24914 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24914 (= (_2!19932 (h!39194 (t!232921 mapDefault!18622))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24914 true) setRest!24914))))

(declare-fun setIsEmpty!24914 () Bool)

(assert (=> setIsEmpty!24914 setRes!24914))

(declare-fun b!2846713 () Bool)

(declare-fun e!1803683 () Bool)

(declare-fun tp!913055 () Bool)

(assert (=> b!2846713 (= e!1803683 tp!913055)))

(declare-fun e!1803681 () Bool)

(assert (=> b!2846506 (= tp!913023 e!1803681)))

(declare-fun tp!913054 () Bool)

(declare-fun b!2846714 () Bool)

(assert (=> b!2846714 (= e!1803681 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 (t!232921 mapDefault!18622))))) e!1803683 tp_is_empty!14721 setRes!24914 tp!913054))))

(declare-fun condSetEmpty!24914 () Bool)

(assert (=> b!2846714 (= condSetEmpty!24914 (= (_2!19932 (h!39194 (t!232921 mapDefault!18622))) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846714 b!2846713))

(assert (= (and b!2846714 condSetEmpty!24914) setIsEmpty!24914))

(assert (= (and b!2846714 (not condSetEmpty!24914)) setNonEmpty!24914))

(assert (= setNonEmpty!24914 b!2846712))

(assert (= (and b!2846506 ((_ is Cons!33774) (t!232921 mapDefault!18622))) b!2846714))

(declare-fun m!3274481 () Bool)

(assert (=> setNonEmpty!24914 m!3274481))

(declare-fun m!3274483 () Bool)

(assert (=> b!2846714 m!3274483))

(declare-fun e!1803701 () Bool)

(declare-fun e!1803698 () Bool)

(assert (=> d!825303 (= true (and e!1803701 e!1803698))))

(declare-fun b!2846729 () Bool)

(declare-fun e!1803700 () Bool)

(declare-fun e!1803699 () Bool)

(assert (=> b!2846729 (= e!1803700 e!1803699)))

(declare-fun b!2846730 () Bool)

(assert (=> b!2846730 (= e!1803698 e!1803700)))

(declare-fun b!2846731 () Bool)

(declare-fun e!1803696 () Bool)

(assert (=> b!2846731 (= e!1803701 e!1803696)))

(declare-fun b!2846732 () Bool)

(declare-fun e!1803697 () Bool)

(declare-fun lt!1012796 () MutLongMap!4103)

(assert (=> b!2846732 (= e!1803697 ((_ is LongMap!4103) lt!1012796))))

(assert (=> b!2846732 (= lt!1012796 (v!34404 (underlying!8436 (cache!4144 (_2!19935 (prefixMatchZipperSequenceMem!8 lt!1012725 prefix!1325 0 cacheUp!999 cacheDown!1118))))))))

(declare-fun b!2846733 () Bool)

(declare-fun lt!1012795 () MutLongMap!4104)

(assert (=> b!2846733 (= e!1803699 ((_ is LongMap!4104) lt!1012795))))

(assert (=> b!2846733 (= lt!1012795 (v!34406 (underlying!8438 (cache!4145 (_3!3123 (prefixMatchZipperSequenceMem!8 lt!1012725 prefix!1325 0 cacheUp!999 cacheDown!1118))))))))

(declare-fun b!2846734 () Bool)

(assert (=> b!2846734 (= e!1803696 e!1803697)))

(assert (= b!2846734 b!2846732))

(assert (= (and b!2846731 ((_ is HashMap!4009) (cache!4144 (_2!19935 (prefixMatchZipperSequenceMem!8 lt!1012725 prefix!1325 0 cacheUp!999 cacheDown!1118))))) b!2846734))

(assert (= d!825303 b!2846731))

(assert (= b!2846729 b!2846733))

(assert (= (and b!2846730 ((_ is HashMap!4010) (cache!4145 (_3!3123 (prefixMatchZipperSequenceMem!8 lt!1012725 prefix!1325 0 cacheUp!999 cacheDown!1118))))) b!2846729))

(assert (= d!825303 b!2846730))

(declare-fun b!2846735 () Bool)

(declare-fun e!1803702 () Bool)

(declare-fun tp!913056 () Bool)

(declare-fun tp!913057 () Bool)

(assert (=> b!2846735 (= e!1803702 (and tp!913056 tp!913057))))

(assert (=> b!2846493 (= tp!913007 e!1803702)))

(assert (= (and b!2846493 ((_ is Cons!33773) (exprs!3007 setElem!24910))) b!2846735))

(declare-fun b!2846738 () Bool)

(declare-fun e!1803703 () Bool)

(declare-fun tp!913060 () Bool)

(assert (=> b!2846738 (= e!1803703 tp!913060)))

(declare-fun b!2846736 () Bool)

(assert (=> b!2846736 (= e!1803703 tp_is_empty!14721)))

(declare-fun b!2846737 () Bool)

(declare-fun tp!913059 () Bool)

(declare-fun tp!913061 () Bool)

(assert (=> b!2846737 (= e!1803703 (and tp!913059 tp!913061))))

(assert (=> b!2846421 (= tp!912909 e!1803703)))

(declare-fun b!2846739 () Bool)

(declare-fun tp!913062 () Bool)

(declare-fun tp!913058 () Bool)

(assert (=> b!2846739 (= e!1803703 (and tp!913062 tp!913058))))

(assert (= (and b!2846421 ((_ is ElementMatch!8479) (regOne!17470 (regOne!17470 r!13354)))) b!2846736))

(assert (= (and b!2846421 ((_ is Concat!13782) (regOne!17470 (regOne!17470 r!13354)))) b!2846737))

(assert (= (and b!2846421 ((_ is Star!8479) (regOne!17470 (regOne!17470 r!13354)))) b!2846738))

(assert (= (and b!2846421 ((_ is Union!8479) (regOne!17470 (regOne!17470 r!13354)))) b!2846739))

(declare-fun b!2846742 () Bool)

(declare-fun e!1803704 () Bool)

(declare-fun tp!913065 () Bool)

(assert (=> b!2846742 (= e!1803704 tp!913065)))

(declare-fun b!2846740 () Bool)

(assert (=> b!2846740 (= e!1803704 tp_is_empty!14721)))

(declare-fun b!2846741 () Bool)

(declare-fun tp!913064 () Bool)

(declare-fun tp!913066 () Bool)

(assert (=> b!2846741 (= e!1803704 (and tp!913064 tp!913066))))

(assert (=> b!2846421 (= tp!912911 e!1803704)))

(declare-fun b!2846743 () Bool)

(declare-fun tp!913067 () Bool)

(declare-fun tp!913063 () Bool)

(assert (=> b!2846743 (= e!1803704 (and tp!913067 tp!913063))))

(assert (= (and b!2846421 ((_ is ElementMatch!8479) (regTwo!17470 (regOne!17470 r!13354)))) b!2846740))

(assert (= (and b!2846421 ((_ is Concat!13782) (regTwo!17470 (regOne!17470 r!13354)))) b!2846741))

(assert (= (and b!2846421 ((_ is Star!8479) (regTwo!17470 (regOne!17470 r!13354)))) b!2846742))

(assert (= (and b!2846421 ((_ is Union!8479) (regTwo!17470 (regOne!17470 r!13354)))) b!2846743))

(declare-fun condSetEmpty!24917 () Bool)

(assert (=> setNonEmpty!24913 (= condSetEmpty!24917 (= setRest!24913 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24917 () Bool)

(assert (=> setNonEmpty!24913 (= tp!913031 setRes!24917)))

(declare-fun setIsEmpty!24917 () Bool)

(assert (=> setIsEmpty!24917 setRes!24917))

(declare-fun tp!913073 () Bool)

(declare-fun setElem!24917 () Context!5014)

(declare-fun setNonEmpty!24917 () Bool)

(declare-fun e!1803707 () Bool)

(assert (=> setNonEmpty!24917 (= setRes!24917 (and tp!913073 (inv!45800 setElem!24917) e!1803707))))

(declare-fun setRest!24917 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24917 (= setRest!24913 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24917 true) setRest!24917))))

(declare-fun b!2846748 () Bool)

(declare-fun tp!913072 () Bool)

(assert (=> b!2846748 (= e!1803707 tp!913072)))

(assert (= (and setNonEmpty!24913 condSetEmpty!24917) setIsEmpty!24917))

(assert (= (and setNonEmpty!24913 (not condSetEmpty!24917)) setNonEmpty!24917))

(assert (= setNonEmpty!24917 b!2846748))

(declare-fun m!3274485 () Bool)

(assert (=> setNonEmpty!24917 m!3274485))

(declare-fun condSetEmpty!24918 () Bool)

(assert (=> setNonEmpty!24903 (= condSetEmpty!24918 (= setRest!24903 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24918 () Bool)

(assert (=> setNonEmpty!24903 (= tp!912967 setRes!24918)))

(declare-fun setIsEmpty!24918 () Bool)

(assert (=> setIsEmpty!24918 setRes!24918))

(declare-fun setNonEmpty!24918 () Bool)

(declare-fun e!1803708 () Bool)

(declare-fun setElem!24918 () Context!5014)

(declare-fun tp!913075 () Bool)

(assert (=> setNonEmpty!24918 (= setRes!24918 (and tp!913075 (inv!45800 setElem!24918) e!1803708))))

(declare-fun setRest!24918 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24918 (= setRest!24903 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24918 true) setRest!24918))))

(declare-fun b!2846749 () Bool)

(declare-fun tp!913074 () Bool)

(assert (=> b!2846749 (= e!1803708 tp!913074)))

(assert (= (and setNonEmpty!24903 condSetEmpty!24918) setIsEmpty!24918))

(assert (= (and setNonEmpty!24903 (not condSetEmpty!24918)) setNonEmpty!24918))

(assert (= setNonEmpty!24918 b!2846749))

(declare-fun m!3274487 () Bool)

(assert (=> setNonEmpty!24918 m!3274487))

(declare-fun condSetEmpty!24919 () Bool)

(assert (=> setNonEmpty!24912 (= condSetEmpty!24919 (= setRest!24912 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24919 () Bool)

(assert (=> setNonEmpty!24912 (= tp!913026 setRes!24919)))

(declare-fun setIsEmpty!24919 () Bool)

(assert (=> setIsEmpty!24919 setRes!24919))

(declare-fun e!1803709 () Bool)

(declare-fun setNonEmpty!24919 () Bool)

(declare-fun tp!913077 () Bool)

(declare-fun setElem!24919 () Context!5014)

(assert (=> setNonEmpty!24919 (= setRes!24919 (and tp!913077 (inv!45800 setElem!24919) e!1803709))))

(declare-fun setRest!24919 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24919 (= setRest!24912 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24919 true) setRest!24919))))

(declare-fun b!2846750 () Bool)

(declare-fun tp!913076 () Bool)

(assert (=> b!2846750 (= e!1803709 tp!913076)))

(assert (= (and setNonEmpty!24912 condSetEmpty!24919) setIsEmpty!24919))

(assert (= (and setNonEmpty!24912 (not condSetEmpty!24919)) setNonEmpty!24919))

(assert (= setNonEmpty!24919 b!2846750))

(declare-fun m!3274489 () Bool)

(assert (=> setNonEmpty!24919 m!3274489))

(declare-fun condSetEmpty!24920 () Bool)

(assert (=> setNonEmpty!24902 (= condSetEmpty!24920 (= setRest!24902 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24920 () Bool)

(assert (=> setNonEmpty!24902 (= tp!912962 setRes!24920)))

(declare-fun setIsEmpty!24920 () Bool)

(assert (=> setIsEmpty!24920 setRes!24920))

(declare-fun setNonEmpty!24920 () Bool)

(declare-fun e!1803710 () Bool)

(declare-fun tp!913079 () Bool)

(declare-fun setElem!24920 () Context!5014)

(assert (=> setNonEmpty!24920 (= setRes!24920 (and tp!913079 (inv!45800 setElem!24920) e!1803710))))

(declare-fun setRest!24920 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24920 (= setRest!24902 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24920 true) setRest!24920))))

(declare-fun b!2846751 () Bool)

(declare-fun tp!913078 () Bool)

(assert (=> b!2846751 (= e!1803710 tp!913078)))

(assert (= (and setNonEmpty!24902 condSetEmpty!24920) setIsEmpty!24920))

(assert (= (and setNonEmpty!24902 (not condSetEmpty!24920)) setNonEmpty!24920))

(assert (= setNonEmpty!24920 b!2846751))

(declare-fun m!3274491 () Bool)

(assert (=> setNonEmpty!24920 m!3274491))

(declare-fun b!2846754 () Bool)

(declare-fun e!1803711 () Bool)

(declare-fun tp!913082 () Bool)

(assert (=> b!2846754 (= e!1803711 tp!913082)))

(declare-fun b!2846752 () Bool)

(assert (=> b!2846752 (= e!1803711 tp_is_empty!14721)))

(declare-fun b!2846753 () Bool)

(declare-fun tp!913081 () Bool)

(declare-fun tp!913083 () Bool)

(assert (=> b!2846753 (= e!1803711 (and tp!913081 tp!913083))))

(assert (=> b!2846456 (= tp!912963 e!1803711)))

(declare-fun b!2846755 () Bool)

(declare-fun tp!913084 () Bool)

(declare-fun tp!913080 () Bool)

(assert (=> b!2846755 (= e!1803711 (and tp!913084 tp!913080))))

(assert (= (and b!2846456 ((_ is ElementMatch!8479) (_1!19933 (_1!19934 (h!39196 mapValue!18622))))) b!2846752))

(assert (= (and b!2846456 ((_ is Concat!13782) (_1!19933 (_1!19934 (h!39196 mapValue!18622))))) b!2846753))

(assert (= (and b!2846456 ((_ is Star!8479) (_1!19933 (_1!19934 (h!39196 mapValue!18622))))) b!2846754))

(assert (= (and b!2846456 ((_ is Union!8479) (_1!19933 (_1!19934 (h!39196 mapValue!18622))))) b!2846755))

(declare-fun tp!913088 () Bool)

(declare-fun b!2846756 () Bool)

(declare-fun e!1803712 () Bool)

(declare-fun tp!913087 () Bool)

(declare-fun setRes!24921 () Bool)

(declare-fun e!1803713 () Bool)

(assert (=> b!2846756 (= e!1803712 (and tp!913087 (inv!45800 (_2!19933 (_1!19934 (h!39196 (t!232923 mapValue!18622))))) e!1803713 tp_is_empty!14721 setRes!24921 tp!913088))))

(declare-fun condSetEmpty!24921 () Bool)

(assert (=> b!2846756 (= condSetEmpty!24921 (= (_2!19934 (h!39196 (t!232923 mapValue!18622))) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846456 (= tp!912964 e!1803712)))

(declare-fun b!2846757 () Bool)

(declare-fun e!1803714 () Bool)

(declare-fun tp!913089 () Bool)

(assert (=> b!2846757 (= e!1803714 tp!913089)))

(declare-fun tp!913086 () Bool)

(declare-fun setElem!24921 () Context!5014)

(declare-fun setNonEmpty!24921 () Bool)

(assert (=> setNonEmpty!24921 (= setRes!24921 (and tp!913086 (inv!45800 setElem!24921) e!1803714))))

(declare-fun setRest!24921 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24921 (= (_2!19934 (h!39196 (t!232923 mapValue!18622))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24921 true) setRest!24921))))

(declare-fun b!2846758 () Bool)

(declare-fun tp!913085 () Bool)

(assert (=> b!2846758 (= e!1803713 tp!913085)))

(declare-fun setIsEmpty!24921 () Bool)

(assert (=> setIsEmpty!24921 setRes!24921))

(assert (= b!2846756 b!2846758))

(assert (= (and b!2846756 condSetEmpty!24921) setIsEmpty!24921))

(assert (= (and b!2846756 (not condSetEmpty!24921)) setNonEmpty!24921))

(assert (= setNonEmpty!24921 b!2846757))

(assert (= (and b!2846456 ((_ is Cons!33776) (t!232923 mapValue!18622))) b!2846756))

(declare-fun m!3274493 () Bool)

(assert (=> b!2846756 m!3274493))

(declare-fun m!3274495 () Bool)

(assert (=> setNonEmpty!24921 m!3274495))

(declare-fun b!2846759 () Bool)

(declare-fun e!1803715 () Bool)

(declare-fun tp!913090 () Bool)

(declare-fun tp!913091 () Bool)

(assert (=> b!2846759 (= e!1803715 (and tp!913090 tp!913091))))

(assert (=> b!2846504 (= tp!913021 e!1803715)))

(assert (= (and b!2846504 ((_ is Cons!33773) (exprs!3007 setElem!24911))) b!2846759))

(declare-fun b!2846760 () Bool)

(declare-fun e!1803716 () Bool)

(declare-fun tp!913092 () Bool)

(declare-fun tp!913093 () Bool)

(assert (=> b!2846760 (= e!1803716 (and tp!913092 tp!913093))))

(assert (=> b!2846447 (= tp!912944 e!1803716)))

(assert (= (and b!2846447 ((_ is Cons!33773) (exprs!3007 setElem!24898))) b!2846760))

(declare-fun b!2846761 () Bool)

(declare-fun e!1803718 () Bool)

(declare-fun tp!913094 () Bool)

(assert (=> b!2846761 (= e!1803718 tp!913094)))

(declare-fun setNonEmpty!24922 () Bool)

(declare-fun tp!913095 () Bool)

(declare-fun setRes!24922 () Bool)

(declare-fun setElem!24922 () Context!5014)

(assert (=> setNonEmpty!24922 (= setRes!24922 (and tp!913095 (inv!45800 setElem!24922) e!1803718))))

(declare-fun setRest!24922 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24922 (= (_2!19932 (h!39194 (t!232921 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24922 true) setRest!24922))))

(declare-fun setIsEmpty!24922 () Bool)

(assert (=> setIsEmpty!24922 setRes!24922))

(declare-fun b!2846762 () Bool)

(declare-fun e!1803719 () Bool)

(declare-fun tp!913097 () Bool)

(assert (=> b!2846762 (= e!1803719 tp!913097)))

(declare-fun e!1803717 () Bool)

(assert (=> b!2846409 (= tp!912896 e!1803717)))

(declare-fun tp!913096 () Bool)

(declare-fun b!2846763 () Bool)

(assert (=> b!2846763 (= e!1803717 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 (t!232921 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))))))) e!1803719 tp_is_empty!14721 setRes!24922 tp!913096))))

(declare-fun condSetEmpty!24922 () Bool)

(assert (=> b!2846763 (= condSetEmpty!24922 (= (_2!19932 (h!39194 (t!232921 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))))) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846763 b!2846762))

(assert (= (and b!2846763 condSetEmpty!24922) setIsEmpty!24922))

(assert (= (and b!2846763 (not condSetEmpty!24922)) setNonEmpty!24922))

(assert (= setNonEmpty!24922 b!2846761))

(assert (= (and b!2846409 ((_ is Cons!33774) (t!232921 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))))) b!2846763))

(declare-fun m!3274497 () Bool)

(assert (=> setNonEmpty!24922 m!3274497))

(declare-fun m!3274499 () Bool)

(assert (=> b!2846763 m!3274499))

(declare-fun b!2846764 () Bool)

(declare-fun e!1803720 () Bool)

(declare-fun tp!913098 () Bool)

(declare-fun tp!913099 () Bool)

(assert (=> b!2846764 (= e!1803720 (and tp!913098 tp!913099))))

(assert (=> b!2846405 (= tp!912893 e!1803720)))

(assert (= (and b!2846405 ((_ is Cons!33773) (exprs!3007 (_1!19931 (_1!19932 (h!39194 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))))))) b!2846764))

(declare-fun b!2846767 () Bool)

(declare-fun e!1803721 () Bool)

(declare-fun tp!913102 () Bool)

(assert (=> b!2846767 (= e!1803721 tp!913102)))

(declare-fun b!2846765 () Bool)

(assert (=> b!2846765 (= e!1803721 tp_is_empty!14721)))

(declare-fun b!2846766 () Bool)

(declare-fun tp!913101 () Bool)

(declare-fun tp!913103 () Bool)

(assert (=> b!2846766 (= e!1803721 (and tp!913101 tp!913103))))

(assert (=> b!2846502 (= tp!913018 e!1803721)))

(declare-fun b!2846768 () Bool)

(declare-fun tp!913104 () Bool)

(declare-fun tp!913100 () Bool)

(assert (=> b!2846768 (= e!1803721 (and tp!913104 tp!913100))))

(assert (= (and b!2846502 ((_ is ElementMatch!8479) (reg!8808 (regTwo!17471 r!13354)))) b!2846765))

(assert (= (and b!2846502 ((_ is Concat!13782) (reg!8808 (regTwo!17471 r!13354)))) b!2846766))

(assert (= (and b!2846502 ((_ is Star!8479) (reg!8808 (regTwo!17471 r!13354)))) b!2846767))

(assert (= (and b!2846502 ((_ is Union!8479) (reg!8808 (regTwo!17471 r!13354)))) b!2846768))

(declare-fun b!2846769 () Bool)

(declare-fun e!1803723 () Bool)

(declare-fun tp!913105 () Bool)

(assert (=> b!2846769 (= e!1803723 tp!913105)))

(declare-fun setRes!24923 () Bool)

(declare-fun setElem!24923 () Context!5014)

(declare-fun setNonEmpty!24923 () Bool)

(declare-fun tp!913106 () Bool)

(assert (=> setNonEmpty!24923 (= setRes!24923 (and tp!913106 (inv!45800 setElem!24923) e!1803723))))

(declare-fun setRest!24923 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24923 (= (_2!19932 (h!39194 (t!232921 mapValue!18623))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24923 true) setRest!24923))))

(declare-fun setIsEmpty!24923 () Bool)

(assert (=> setIsEmpty!24923 setRes!24923))

(declare-fun b!2846770 () Bool)

(declare-fun e!1803724 () Bool)

(declare-fun tp!913108 () Bool)

(assert (=> b!2846770 (= e!1803724 tp!913108)))

(declare-fun e!1803722 () Bool)

(assert (=> b!2846495 (= tp!913009 e!1803722)))

(declare-fun tp!913107 () Bool)

(declare-fun b!2846771 () Bool)

(assert (=> b!2846771 (= e!1803722 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 (t!232921 mapValue!18623))))) e!1803724 tp_is_empty!14721 setRes!24923 tp!913107))))

(declare-fun condSetEmpty!24923 () Bool)

(assert (=> b!2846771 (= condSetEmpty!24923 (= (_2!19932 (h!39194 (t!232921 mapValue!18623))) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846771 b!2846770))

(assert (= (and b!2846771 condSetEmpty!24923) setIsEmpty!24923))

(assert (= (and b!2846771 (not condSetEmpty!24923)) setNonEmpty!24923))

(assert (= setNonEmpty!24923 b!2846769))

(assert (= (and b!2846495 ((_ is Cons!33774) (t!232921 mapValue!18623))) b!2846771))

(declare-fun m!3274501 () Bool)

(assert (=> setNonEmpty!24923 m!3274501))

(declare-fun m!3274503 () Bool)

(assert (=> b!2846771 m!3274503))

(declare-fun b!2846774 () Bool)

(declare-fun e!1803725 () Bool)

(declare-fun tp!913111 () Bool)

(assert (=> b!2846774 (= e!1803725 tp!913111)))

(declare-fun b!2846772 () Bool)

(assert (=> b!2846772 (= e!1803725 tp_is_empty!14721)))

(declare-fun b!2846773 () Bool)

(declare-fun tp!913110 () Bool)

(declare-fun tp!913112 () Bool)

(assert (=> b!2846773 (= e!1803725 (and tp!913110 tp!913112))))

(assert (=> b!2846423 (= tp!912912 e!1803725)))

(declare-fun b!2846775 () Bool)

(declare-fun tp!913113 () Bool)

(declare-fun tp!913109 () Bool)

(assert (=> b!2846775 (= e!1803725 (and tp!913113 tp!913109))))

(assert (= (and b!2846423 ((_ is ElementMatch!8479) (regOne!17471 (regOne!17470 r!13354)))) b!2846772))

(assert (= (and b!2846423 ((_ is Concat!13782) (regOne!17471 (regOne!17470 r!13354)))) b!2846773))

(assert (= (and b!2846423 ((_ is Star!8479) (regOne!17471 (regOne!17470 r!13354)))) b!2846774))

(assert (= (and b!2846423 ((_ is Union!8479) (regOne!17471 (regOne!17470 r!13354)))) b!2846775))

(declare-fun b!2846778 () Bool)

(declare-fun e!1803726 () Bool)

(declare-fun tp!913116 () Bool)

(assert (=> b!2846778 (= e!1803726 tp!913116)))

(declare-fun b!2846776 () Bool)

(assert (=> b!2846776 (= e!1803726 tp_is_empty!14721)))

(declare-fun b!2846777 () Bool)

(declare-fun tp!913115 () Bool)

(declare-fun tp!913117 () Bool)

(assert (=> b!2846777 (= e!1803726 (and tp!913115 tp!913117))))

(assert (=> b!2846423 (= tp!912908 e!1803726)))

(declare-fun b!2846779 () Bool)

(declare-fun tp!913118 () Bool)

(declare-fun tp!913114 () Bool)

(assert (=> b!2846779 (= e!1803726 (and tp!913118 tp!913114))))

(assert (= (and b!2846423 ((_ is ElementMatch!8479) (regTwo!17471 (regOne!17470 r!13354)))) b!2846776))

(assert (= (and b!2846423 ((_ is Concat!13782) (regTwo!17471 (regOne!17470 r!13354)))) b!2846777))

(assert (= (and b!2846423 ((_ is Star!8479) (regTwo!17471 (regOne!17470 r!13354)))) b!2846778))

(assert (= (and b!2846423 ((_ is Union!8479) (regTwo!17471 (regOne!17470 r!13354)))) b!2846779))

(declare-fun condSetEmpty!24924 () Bool)

(assert (=> setNonEmpty!24892 (= condSetEmpty!24924 (= setRest!24892 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24924 () Bool)

(assert (=> setNonEmpty!24892 (= tp!912891 setRes!24924)))

(declare-fun setIsEmpty!24924 () Bool)

(assert (=> setIsEmpty!24924 setRes!24924))

(declare-fun setNonEmpty!24924 () Bool)

(declare-fun tp!913120 () Bool)

(declare-fun setElem!24924 () Context!5014)

(declare-fun e!1803727 () Bool)

(assert (=> setNonEmpty!24924 (= setRes!24924 (and tp!913120 (inv!45800 setElem!24924) e!1803727))))

(declare-fun setRest!24924 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24924 (= setRest!24892 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24924 true) setRest!24924))))

(declare-fun b!2846780 () Bool)

(declare-fun tp!913119 () Bool)

(assert (=> b!2846780 (= e!1803727 tp!913119)))

(assert (= (and setNonEmpty!24892 condSetEmpty!24924) setIsEmpty!24924))

(assert (= (and setNonEmpty!24892 (not condSetEmpty!24924)) setNonEmpty!24924))

(assert (= setNonEmpty!24924 b!2846780))

(declare-fun m!3274505 () Bool)

(assert (=> setNonEmpty!24924 m!3274505))

(declare-fun b!2846783 () Bool)

(declare-fun e!1803728 () Bool)

(declare-fun tp!913123 () Bool)

(assert (=> b!2846783 (= e!1803728 tp!913123)))

(declare-fun b!2846781 () Bool)

(assert (=> b!2846781 (= e!1803728 tp_is_empty!14721)))

(declare-fun b!2846782 () Bool)

(declare-fun tp!913122 () Bool)

(declare-fun tp!913124 () Bool)

(assert (=> b!2846782 (= e!1803728 (and tp!913122 tp!913124))))

(assert (=> b!2846427 (= tp!912917 e!1803728)))

(declare-fun b!2846784 () Bool)

(declare-fun tp!913125 () Bool)

(declare-fun tp!913121 () Bool)

(assert (=> b!2846784 (= e!1803728 (and tp!913125 tp!913121))))

(assert (= (and b!2846427 ((_ is ElementMatch!8479) (regOne!17471 (regTwo!17470 r!13354)))) b!2846781))

(assert (= (and b!2846427 ((_ is Concat!13782) (regOne!17471 (regTwo!17470 r!13354)))) b!2846782))

(assert (= (and b!2846427 ((_ is Star!8479) (regOne!17471 (regTwo!17470 r!13354)))) b!2846783))

(assert (= (and b!2846427 ((_ is Union!8479) (regOne!17471 (regTwo!17470 r!13354)))) b!2846784))

(declare-fun b!2846787 () Bool)

(declare-fun e!1803729 () Bool)

(declare-fun tp!913128 () Bool)

(assert (=> b!2846787 (= e!1803729 tp!913128)))

(declare-fun b!2846785 () Bool)

(assert (=> b!2846785 (= e!1803729 tp_is_empty!14721)))

(declare-fun b!2846786 () Bool)

(declare-fun tp!913127 () Bool)

(declare-fun tp!913129 () Bool)

(assert (=> b!2846786 (= e!1803729 (and tp!913127 tp!913129))))

(assert (=> b!2846427 (= tp!912913 e!1803729)))

(declare-fun b!2846788 () Bool)

(declare-fun tp!913130 () Bool)

(declare-fun tp!913126 () Bool)

(assert (=> b!2846788 (= e!1803729 (and tp!913130 tp!913126))))

(assert (= (and b!2846427 ((_ is ElementMatch!8479) (regTwo!17471 (regTwo!17470 r!13354)))) b!2846785))

(assert (= (and b!2846427 ((_ is Concat!13782) (regTwo!17471 (regTwo!17470 r!13354)))) b!2846786))

(assert (= (and b!2846427 ((_ is Star!8479) (regTwo!17471 (regTwo!17470 r!13354)))) b!2846787))

(assert (= (and b!2846427 ((_ is Union!8479) (regTwo!17471 (regTwo!17470 r!13354)))) b!2846788))

(declare-fun b!2846791 () Bool)

(declare-fun e!1803730 () Bool)

(declare-fun tp!913133 () Bool)

(assert (=> b!2846791 (= e!1803730 tp!913133)))

(declare-fun b!2846789 () Bool)

(assert (=> b!2846789 (= e!1803730 tp_is_empty!14721)))

(declare-fun b!2846790 () Bool)

(declare-fun tp!913132 () Bool)

(declare-fun tp!913134 () Bool)

(assert (=> b!2846790 (= e!1803730 (and tp!913132 tp!913134))))

(assert (=> b!2846514 (= tp!913036 e!1803730)))

(declare-fun b!2846792 () Bool)

(declare-fun tp!913135 () Bool)

(declare-fun tp!913131 () Bool)

(assert (=> b!2846792 (= e!1803730 (and tp!913135 tp!913131))))

(assert (= (and b!2846514 ((_ is ElementMatch!8479) (regOne!17470 (reg!8808 r!13354)))) b!2846789))

(assert (= (and b!2846514 ((_ is Concat!13782) (regOne!17470 (reg!8808 r!13354)))) b!2846790))

(assert (= (and b!2846514 ((_ is Star!8479) (regOne!17470 (reg!8808 r!13354)))) b!2846791))

(assert (= (and b!2846514 ((_ is Union!8479) (regOne!17470 (reg!8808 r!13354)))) b!2846792))

(declare-fun b!2846795 () Bool)

(declare-fun e!1803731 () Bool)

(declare-fun tp!913138 () Bool)

(assert (=> b!2846795 (= e!1803731 tp!913138)))

(declare-fun b!2846793 () Bool)

(assert (=> b!2846793 (= e!1803731 tp_is_empty!14721)))

(declare-fun b!2846794 () Bool)

(declare-fun tp!913137 () Bool)

(declare-fun tp!913139 () Bool)

(assert (=> b!2846794 (= e!1803731 (and tp!913137 tp!913139))))

(assert (=> b!2846514 (= tp!913038 e!1803731)))

(declare-fun b!2846796 () Bool)

(declare-fun tp!913140 () Bool)

(declare-fun tp!913136 () Bool)

(assert (=> b!2846796 (= e!1803731 (and tp!913140 tp!913136))))

(assert (= (and b!2846514 ((_ is ElementMatch!8479) (regTwo!17470 (reg!8808 r!13354)))) b!2846793))

(assert (= (and b!2846514 ((_ is Concat!13782) (regTwo!17470 (reg!8808 r!13354)))) b!2846794))

(assert (= (and b!2846514 ((_ is Star!8479) (regTwo!17470 (reg!8808 r!13354)))) b!2846795))

(assert (= (and b!2846514 ((_ is Union!8479) (regTwo!17470 (reg!8808 r!13354)))) b!2846796))

(declare-fun b!2846797 () Bool)

(declare-fun e!1803732 () Bool)

(declare-fun tp!913141 () Bool)

(declare-fun tp!913142 () Bool)

(assert (=> b!2846797 (= e!1803732 (and tp!913141 tp!913142))))

(assert (=> b!2846488 (= tp!913006 e!1803732)))

(assert (= (and b!2846488 ((_ is Cons!33773) (exprs!3007 setElem!24909))) b!2846797))

(declare-fun b!2846800 () Bool)

(declare-fun e!1803733 () Bool)

(declare-fun tp!913145 () Bool)

(assert (=> b!2846800 (= e!1803733 tp!913145)))

(declare-fun b!2846798 () Bool)

(assert (=> b!2846798 (= e!1803733 tp_is_empty!14721)))

(declare-fun b!2846799 () Bool)

(declare-fun tp!913144 () Bool)

(declare-fun tp!913146 () Bool)

(assert (=> b!2846799 (= e!1803733 (and tp!913144 tp!913146))))

(assert (=> b!2846425 (= tp!912914 e!1803733)))

(declare-fun b!2846801 () Bool)

(declare-fun tp!913147 () Bool)

(declare-fun tp!913143 () Bool)

(assert (=> b!2846801 (= e!1803733 (and tp!913147 tp!913143))))

(assert (= (and b!2846425 ((_ is ElementMatch!8479) (regOne!17470 (regTwo!17470 r!13354)))) b!2846798))

(assert (= (and b!2846425 ((_ is Concat!13782) (regOne!17470 (regTwo!17470 r!13354)))) b!2846799))

(assert (= (and b!2846425 ((_ is Star!8479) (regOne!17470 (regTwo!17470 r!13354)))) b!2846800))

(assert (= (and b!2846425 ((_ is Union!8479) (regOne!17470 (regTwo!17470 r!13354)))) b!2846801))

(declare-fun b!2846804 () Bool)

(declare-fun e!1803734 () Bool)

(declare-fun tp!913150 () Bool)

(assert (=> b!2846804 (= e!1803734 tp!913150)))

(declare-fun b!2846802 () Bool)

(assert (=> b!2846802 (= e!1803734 tp_is_empty!14721)))

(declare-fun b!2846803 () Bool)

(declare-fun tp!913149 () Bool)

(declare-fun tp!913151 () Bool)

(assert (=> b!2846803 (= e!1803734 (and tp!913149 tp!913151))))

(assert (=> b!2846425 (= tp!912916 e!1803734)))

(declare-fun b!2846805 () Bool)

(declare-fun tp!913152 () Bool)

(declare-fun tp!913148 () Bool)

(assert (=> b!2846805 (= e!1803734 (and tp!913152 tp!913148))))

(assert (= (and b!2846425 ((_ is ElementMatch!8479) (regTwo!17470 (regTwo!17470 r!13354)))) b!2846802))

(assert (= (and b!2846425 ((_ is Concat!13782) (regTwo!17470 (regTwo!17470 r!13354)))) b!2846803))

(assert (= (and b!2846425 ((_ is Star!8479) (regTwo!17470 (regTwo!17470 r!13354)))) b!2846804))

(assert (= (and b!2846425 ((_ is Union!8479) (regTwo!17470 (regTwo!17470 r!13354)))) b!2846805))

(declare-fun b!2846806 () Bool)

(declare-fun e!1803735 () Bool)

(declare-fun tp!913153 () Bool)

(declare-fun tp!913154 () Bool)

(assert (=> b!2846806 (= e!1803735 (and tp!913153 tp!913154))))

(assert (=> b!2846443 (= tp!912943 e!1803735)))

(assert (= (and b!2846443 ((_ is Cons!33773) (exprs!3007 (_2!19933 (_1!19934 (h!39196 mapValue!18626)))))) b!2846806))

(declare-fun b!2846807 () Bool)

(declare-fun e!1803737 () Bool)

(declare-fun tp!913155 () Bool)

(assert (=> b!2846807 (= e!1803737 tp!913155)))

(declare-fun setNonEmpty!24925 () Bool)

(declare-fun setElem!24925 () Context!5014)

(declare-fun tp!913156 () Bool)

(declare-fun setRes!24925 () Bool)

(assert (=> setNonEmpty!24925 (= setRes!24925 (and tp!913156 (inv!45800 setElem!24925) e!1803737))))

(declare-fun setRest!24925 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24925 (= (_2!19932 (h!39194 (t!232921 mapDefault!18629))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24925 true) setRest!24925))))

(declare-fun setIsEmpty!24925 () Bool)

(assert (=> setIsEmpty!24925 setRes!24925))

(declare-fun b!2846808 () Bool)

(declare-fun e!1803738 () Bool)

(declare-fun tp!913158 () Bool)

(assert (=> b!2846808 (= e!1803738 tp!913158)))

(declare-fun e!1803736 () Bool)

(assert (=> b!2846487 (= tp!913000 e!1803736)))

(declare-fun tp!913157 () Bool)

(declare-fun b!2846809 () Bool)

(assert (=> b!2846809 (= e!1803736 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 (t!232921 mapDefault!18629))))) e!1803738 tp_is_empty!14721 setRes!24925 tp!913157))))

(declare-fun condSetEmpty!24925 () Bool)

(assert (=> b!2846809 (= condSetEmpty!24925 (= (_2!19932 (h!39194 (t!232921 mapDefault!18629))) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846809 b!2846808))

(assert (= (and b!2846809 condSetEmpty!24925) setIsEmpty!24925))

(assert (= (and b!2846809 (not condSetEmpty!24925)) setNonEmpty!24925))

(assert (= setNonEmpty!24925 b!2846807))

(assert (= (and b!2846487 ((_ is Cons!33774) (t!232921 mapDefault!18629))) b!2846809))

(declare-fun m!3274507 () Bool)

(assert (=> setNonEmpty!24925 m!3274507))

(declare-fun m!3274509 () Bool)

(assert (=> b!2846809 m!3274509))

(declare-fun condSetEmpty!24926 () Bool)

(assert (=> setNonEmpty!24898 (= condSetEmpty!24926 (= setRest!24898 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24926 () Bool)

(assert (=> setNonEmpty!24898 (= tp!912946 setRes!24926)))

(declare-fun setIsEmpty!24926 () Bool)

(assert (=> setIsEmpty!24926 setRes!24926))

(declare-fun setNonEmpty!24926 () Bool)

(declare-fun e!1803739 () Bool)

(declare-fun setElem!24926 () Context!5014)

(declare-fun tp!913160 () Bool)

(assert (=> setNonEmpty!24926 (= setRes!24926 (and tp!913160 (inv!45800 setElem!24926) e!1803739))))

(declare-fun setRest!24926 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24926 (= setRest!24898 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24926 true) setRest!24926))))

(declare-fun b!2846810 () Bool)

(declare-fun tp!913159 () Bool)

(assert (=> b!2846810 (= e!1803739 tp!913159)))

(assert (= (and setNonEmpty!24898 condSetEmpty!24926) setIsEmpty!24926))

(assert (= (and setNonEmpty!24898 (not condSetEmpty!24926)) setNonEmpty!24926))

(assert (= setNonEmpty!24926 b!2846810))

(declare-fun m!3274511 () Bool)

(assert (=> setNonEmpty!24926 m!3274511))

(declare-fun b!2846813 () Bool)

(declare-fun e!1803740 () Bool)

(declare-fun tp!913163 () Bool)

(assert (=> b!2846813 (= e!1803740 tp!913163)))

(declare-fun b!2846811 () Bool)

(assert (=> b!2846811 (= e!1803740 tp_is_empty!14721)))

(declare-fun b!2846812 () Bool)

(declare-fun tp!913162 () Bool)

(declare-fun tp!913164 () Bool)

(assert (=> b!2846812 (= e!1803740 (and tp!913162 tp!913164))))

(assert (=> b!2846499 (= tp!913015 e!1803740)))

(declare-fun b!2846814 () Bool)

(declare-fun tp!913165 () Bool)

(declare-fun tp!913161 () Bool)

(assert (=> b!2846814 (= e!1803740 (and tp!913165 tp!913161))))

(assert (= (and b!2846499 ((_ is ElementMatch!8479) (regOne!17471 (regOne!17471 r!13354)))) b!2846811))

(assert (= (and b!2846499 ((_ is Concat!13782) (regOne!17471 (regOne!17471 r!13354)))) b!2846812))

(assert (= (and b!2846499 ((_ is Star!8479) (regOne!17471 (regOne!17471 r!13354)))) b!2846813))

(assert (= (and b!2846499 ((_ is Union!8479) (regOne!17471 (regOne!17471 r!13354)))) b!2846814))

(declare-fun b!2846817 () Bool)

(declare-fun e!1803741 () Bool)

(declare-fun tp!913168 () Bool)

(assert (=> b!2846817 (= e!1803741 tp!913168)))

(declare-fun b!2846815 () Bool)

(assert (=> b!2846815 (= e!1803741 tp_is_empty!14721)))

(declare-fun b!2846816 () Bool)

(declare-fun tp!913167 () Bool)

(declare-fun tp!913169 () Bool)

(assert (=> b!2846816 (= e!1803741 (and tp!913167 tp!913169))))

(assert (=> b!2846499 (= tp!913011 e!1803741)))

(declare-fun b!2846818 () Bool)

(declare-fun tp!913170 () Bool)

(declare-fun tp!913166 () Bool)

(assert (=> b!2846818 (= e!1803741 (and tp!913170 tp!913166))))

(assert (= (and b!2846499 ((_ is ElementMatch!8479) (regTwo!17471 (regOne!17471 r!13354)))) b!2846815))

(assert (= (and b!2846499 ((_ is Concat!13782) (regTwo!17471 (regOne!17471 r!13354)))) b!2846816))

(assert (= (and b!2846499 ((_ is Star!8479) (regTwo!17471 (regOne!17471 r!13354)))) b!2846817))

(assert (= (and b!2846499 ((_ is Union!8479) (regTwo!17471 (regOne!17471 r!13354)))) b!2846818))

(declare-fun b!2846821 () Bool)

(declare-fun e!1803742 () Bool)

(declare-fun tp!913173 () Bool)

(assert (=> b!2846821 (= e!1803742 tp!913173)))

(declare-fun b!2846819 () Bool)

(assert (=> b!2846819 (= e!1803742 tp_is_empty!14721)))

(declare-fun b!2846820 () Bool)

(declare-fun tp!913172 () Bool)

(declare-fun tp!913174 () Bool)

(assert (=> b!2846820 (= e!1803742 (and tp!913172 tp!913174))))

(assert (=> b!2846497 (= tp!913012 e!1803742)))

(declare-fun b!2846822 () Bool)

(declare-fun tp!913175 () Bool)

(declare-fun tp!913171 () Bool)

(assert (=> b!2846822 (= e!1803742 (and tp!913175 tp!913171))))

(assert (= (and b!2846497 ((_ is ElementMatch!8479) (regOne!17470 (regOne!17471 r!13354)))) b!2846819))

(assert (= (and b!2846497 ((_ is Concat!13782) (regOne!17470 (regOne!17471 r!13354)))) b!2846820))

(assert (= (and b!2846497 ((_ is Star!8479) (regOne!17470 (regOne!17471 r!13354)))) b!2846821))

(assert (= (and b!2846497 ((_ is Union!8479) (regOne!17470 (regOne!17471 r!13354)))) b!2846822))

(declare-fun b!2846825 () Bool)

(declare-fun e!1803743 () Bool)

(declare-fun tp!913178 () Bool)

(assert (=> b!2846825 (= e!1803743 tp!913178)))

(declare-fun b!2846823 () Bool)

(assert (=> b!2846823 (= e!1803743 tp_is_empty!14721)))

(declare-fun b!2846824 () Bool)

(declare-fun tp!913177 () Bool)

(declare-fun tp!913179 () Bool)

(assert (=> b!2846824 (= e!1803743 (and tp!913177 tp!913179))))

(assert (=> b!2846497 (= tp!913014 e!1803743)))

(declare-fun b!2846826 () Bool)

(declare-fun tp!913180 () Bool)

(declare-fun tp!913176 () Bool)

(assert (=> b!2846826 (= e!1803743 (and tp!913180 tp!913176))))

(assert (= (and b!2846497 ((_ is ElementMatch!8479) (regTwo!17470 (regOne!17471 r!13354)))) b!2846823))

(assert (= (and b!2846497 ((_ is Concat!13782) (regTwo!17470 (regOne!17471 r!13354)))) b!2846824))

(assert (= (and b!2846497 ((_ is Star!8479) (regTwo!17470 (regOne!17471 r!13354)))) b!2846825))

(assert (= (and b!2846497 ((_ is Union!8479) (regTwo!17470 (regOne!17471 r!13354)))) b!2846826))

(declare-fun condSetEmpty!24927 () Bool)

(assert (=> setNonEmpty!24909 (= condSetEmpty!24927 (= setRest!24909 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24927 () Bool)

(assert (=> setNonEmpty!24909 (= tp!912999 setRes!24927)))

(declare-fun setIsEmpty!24927 () Bool)

(assert (=> setIsEmpty!24927 setRes!24927))

(declare-fun e!1803744 () Bool)

(declare-fun tp!913182 () Bool)

(declare-fun setNonEmpty!24927 () Bool)

(declare-fun setElem!24927 () Context!5014)

(assert (=> setNonEmpty!24927 (= setRes!24927 (and tp!913182 (inv!45800 setElem!24927) e!1803744))))

(declare-fun setRest!24927 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24927 (= setRest!24909 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24927 true) setRest!24927))))

(declare-fun b!2846827 () Bool)

(declare-fun tp!913181 () Bool)

(assert (=> b!2846827 (= e!1803744 tp!913181)))

(assert (= (and setNonEmpty!24909 condSetEmpty!24927) setIsEmpty!24927))

(assert (= (and setNonEmpty!24909 (not condSetEmpty!24927)) setNonEmpty!24927))

(assert (= setNonEmpty!24927 b!2846827))

(declare-fun m!3274513 () Bool)

(assert (=> setNonEmpty!24927 m!3274513))

(declare-fun condSetEmpty!24928 () Bool)

(assert (=> setNonEmpty!24899 (= condSetEmpty!24928 (= setRest!24899 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24928 () Bool)

(assert (=> setNonEmpty!24899 (= tp!912945 setRes!24928)))

(declare-fun setIsEmpty!24928 () Bool)

(assert (=> setIsEmpty!24928 setRes!24928))

(declare-fun tp!913184 () Bool)

(declare-fun setElem!24928 () Context!5014)

(declare-fun e!1803745 () Bool)

(declare-fun setNonEmpty!24928 () Bool)

(assert (=> setNonEmpty!24928 (= setRes!24928 (and tp!913184 (inv!45800 setElem!24928) e!1803745))))

(declare-fun setRest!24928 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24928 (= setRest!24899 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24928 true) setRest!24928))))

(declare-fun b!2846828 () Bool)

(declare-fun tp!913183 () Bool)

(assert (=> b!2846828 (= e!1803745 tp!913183)))

(assert (= (and setNonEmpty!24899 condSetEmpty!24928) setIsEmpty!24928))

(assert (= (and setNonEmpty!24899 (not condSetEmpty!24928)) setNonEmpty!24928))

(assert (= setNonEmpty!24928 b!2846828))

(declare-fun m!3274515 () Bool)

(assert (=> setNonEmpty!24928 m!3274515))

(declare-fun b!2846831 () Bool)

(declare-fun e!1803746 () Bool)

(declare-fun tp!913187 () Bool)

(assert (=> b!2846831 (= e!1803746 tp!913187)))

(declare-fun b!2846829 () Bool)

(assert (=> b!2846829 (= e!1803746 tp_is_empty!14721)))

(declare-fun b!2846830 () Bool)

(declare-fun tp!913186 () Bool)

(declare-fun tp!913188 () Bool)

(assert (=> b!2846830 (= e!1803746 (and tp!913186 tp!913188))))

(assert (=> b!2846516 (= tp!913039 e!1803746)))

(declare-fun b!2846832 () Bool)

(declare-fun tp!913189 () Bool)

(declare-fun tp!913185 () Bool)

(assert (=> b!2846832 (= e!1803746 (and tp!913189 tp!913185))))

(assert (= (and b!2846516 ((_ is ElementMatch!8479) (regOne!17471 (reg!8808 r!13354)))) b!2846829))

(assert (= (and b!2846516 ((_ is Concat!13782) (regOne!17471 (reg!8808 r!13354)))) b!2846830))

(assert (= (and b!2846516 ((_ is Star!8479) (regOne!17471 (reg!8808 r!13354)))) b!2846831))

(assert (= (and b!2846516 ((_ is Union!8479) (regOne!17471 (reg!8808 r!13354)))) b!2846832))

(declare-fun b!2846835 () Bool)

(declare-fun e!1803747 () Bool)

(declare-fun tp!913192 () Bool)

(assert (=> b!2846835 (= e!1803747 tp!913192)))

(declare-fun b!2846833 () Bool)

(assert (=> b!2846833 (= e!1803747 tp_is_empty!14721)))

(declare-fun b!2846834 () Bool)

(declare-fun tp!913191 () Bool)

(declare-fun tp!913193 () Bool)

(assert (=> b!2846834 (= e!1803747 (and tp!913191 tp!913193))))

(assert (=> b!2846516 (= tp!913035 e!1803747)))

(declare-fun b!2846836 () Bool)

(declare-fun tp!913194 () Bool)

(declare-fun tp!913190 () Bool)

(assert (=> b!2846836 (= e!1803747 (and tp!913194 tp!913190))))

(assert (= (and b!2846516 ((_ is ElementMatch!8479) (regTwo!17471 (reg!8808 r!13354)))) b!2846833))

(assert (= (and b!2846516 ((_ is Concat!13782) (regTwo!17471 (reg!8808 r!13354)))) b!2846834))

(assert (= (and b!2846516 ((_ is Star!8479) (regTwo!17471 (reg!8808 r!13354)))) b!2846835))

(assert (= (and b!2846516 ((_ is Union!8479) (regTwo!17471 (reg!8808 r!13354)))) b!2846836))

(declare-fun b!2846837 () Bool)

(declare-fun e!1803749 () Bool)

(declare-fun tp!913195 () Bool)

(assert (=> b!2846837 (= e!1803749 tp!913195)))

(declare-fun setNonEmpty!24929 () Bool)

(declare-fun tp!913196 () Bool)

(declare-fun setRes!24929 () Bool)

(declare-fun setElem!24929 () Context!5014)

(assert (=> setNonEmpty!24929 (= setRes!24929 (and tp!913196 (inv!45800 setElem!24929) e!1803749))))

(declare-fun setRest!24929 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24929 (= (_2!19932 (h!39194 (t!232921 mapValue!18629))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24929 true) setRest!24929))))

(declare-fun setIsEmpty!24929 () Bool)

(assert (=> setIsEmpty!24929 setRes!24929))

(declare-fun b!2846838 () Bool)

(declare-fun e!1803750 () Bool)

(declare-fun tp!913198 () Bool)

(assert (=> b!2846838 (= e!1803750 tp!913198)))

(declare-fun e!1803748 () Bool)

(assert (=> b!2846490 (= tp!913004 e!1803748)))

(declare-fun b!2846839 () Bool)

(declare-fun tp!913197 () Bool)

(assert (=> b!2846839 (= e!1803748 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 (t!232921 mapValue!18629))))) e!1803750 tp_is_empty!14721 setRes!24929 tp!913197))))

(declare-fun condSetEmpty!24929 () Bool)

(assert (=> b!2846839 (= condSetEmpty!24929 (= (_2!19932 (h!39194 (t!232921 mapValue!18629))) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846839 b!2846838))

(assert (= (and b!2846839 condSetEmpty!24929) setIsEmpty!24929))

(assert (= (and b!2846839 (not condSetEmpty!24929)) setNonEmpty!24929))

(assert (= setNonEmpty!24929 b!2846837))

(assert (= (and b!2846490 ((_ is Cons!33774) (t!232921 mapValue!18629))) b!2846839))

(declare-fun m!3274517 () Bool)

(assert (=> setNonEmpty!24929 m!3274517))

(declare-fun m!3274519 () Bool)

(assert (=> b!2846839 m!3274519))

(declare-fun b!2846842 () Bool)

(declare-fun e!1803751 () Bool)

(declare-fun tp!913201 () Bool)

(assert (=> b!2846842 (= e!1803751 tp!913201)))

(declare-fun b!2846840 () Bool)

(assert (=> b!2846840 (= e!1803751 tp_is_empty!14721)))

(declare-fun b!2846841 () Bool)

(declare-fun tp!913200 () Bool)

(declare-fun tp!913202 () Bool)

(assert (=> b!2846841 (= e!1803751 (and tp!913200 tp!913202))))

(assert (=> b!2846422 (= tp!912910 e!1803751)))

(declare-fun b!2846843 () Bool)

(declare-fun tp!913203 () Bool)

(declare-fun tp!913199 () Bool)

(assert (=> b!2846843 (= e!1803751 (and tp!913203 tp!913199))))

(assert (= (and b!2846422 ((_ is ElementMatch!8479) (reg!8808 (regOne!17470 r!13354)))) b!2846840))

(assert (= (and b!2846422 ((_ is Concat!13782) (reg!8808 (regOne!17470 r!13354)))) b!2846841))

(assert (= (and b!2846422 ((_ is Star!8479) (reg!8808 (regOne!17470 r!13354)))) b!2846842))

(assert (= (and b!2846422 ((_ is Union!8479) (reg!8808 (regOne!17470 r!13354)))) b!2846843))

(declare-fun condSetEmpty!24930 () Bool)

(assert (=> setNonEmpty!24893 (= condSetEmpty!24930 (= setRest!24893 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24930 () Bool)

(assert (=> setNonEmpty!24893 (= tp!912895 setRes!24930)))

(declare-fun setIsEmpty!24930 () Bool)

(assert (=> setIsEmpty!24930 setRes!24930))

(declare-fun setElem!24930 () Context!5014)

(declare-fun tp!913205 () Bool)

(declare-fun setNonEmpty!24930 () Bool)

(declare-fun e!1803752 () Bool)

(assert (=> setNonEmpty!24930 (= setRes!24930 (and tp!913205 (inv!45800 setElem!24930) e!1803752))))

(declare-fun setRest!24930 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24930 (= setRest!24893 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24930 true) setRest!24930))))

(declare-fun b!2846844 () Bool)

(declare-fun tp!913204 () Bool)

(assert (=> b!2846844 (= e!1803752 tp!913204)))

(assert (= (and setNonEmpty!24893 condSetEmpty!24930) setIsEmpty!24930))

(assert (= (and setNonEmpty!24893 (not condSetEmpty!24930)) setNonEmpty!24930))

(assert (= setNonEmpty!24930 b!2846844))

(declare-fun m!3274521 () Bool)

(assert (=> setNonEmpty!24930 m!3274521))

(declare-fun b!2846845 () Bool)

(declare-fun e!1803753 () Bool)

(declare-fun tp!913206 () Bool)

(declare-fun tp!913207 () Bool)

(assert (=> b!2846845 (= e!1803753 (and tp!913206 tp!913207))))

(assert (=> b!2846461 (= tp!912966 e!1803753)))

(assert (= (and b!2846461 ((_ is Cons!33773) (exprs!3007 (_2!19933 (_1!19934 (h!39196 mapDefault!18623)))))) b!2846845))

(declare-fun b!2846846 () Bool)

(declare-fun e!1803754 () Bool)

(declare-fun tp!913208 () Bool)

(declare-fun tp!913209 () Bool)

(assert (=> b!2846846 (= e!1803754 (and tp!913208 tp!913209))))

(assert (=> b!2846509 (= tp!913025 e!1803754)))

(assert (= (and b!2846509 ((_ is Cons!33773) (exprs!3007 (_2!19933 (_1!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))))))) b!2846846))

(declare-fun b!2846847 () Bool)

(declare-fun e!1803755 () Bool)

(declare-fun tp!913210 () Bool)

(declare-fun tp!913211 () Bool)

(assert (=> b!2846847 (= e!1803755 (and tp!913210 tp!913211))))

(assert (=> b!2846458 (= tp!912961 e!1803755)))

(assert (= (and b!2846458 ((_ is Cons!33773) (exprs!3007 (_2!19933 (_1!19934 (h!39196 mapValue!18622)))))) b!2846847))

(declare-fun b!2846848 () Bool)

(declare-fun e!1803756 () Bool)

(declare-fun tp!913212 () Bool)

(declare-fun tp!913213 () Bool)

(assert (=> b!2846848 (= e!1803756 (and tp!913212 tp!913213))))

(assert (=> b!2846505 (= tp!913024 e!1803756)))

(assert (= (and b!2846505 ((_ is Cons!33773) (exprs!3007 (_1!19931 (_1!19932 (h!39194 mapDefault!18622)))))) b!2846848))

(declare-fun condSetEmpty!24931 () Bool)

(assert (=> setNonEmpty!24910 (= condSetEmpty!24931 (= setRest!24910 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24931 () Bool)

(assert (=> setNonEmpty!24910 (= tp!913008 setRes!24931)))

(declare-fun setIsEmpty!24931 () Bool)

(assert (=> setIsEmpty!24931 setRes!24931))

(declare-fun tp!913215 () Bool)

(declare-fun e!1803757 () Bool)

(declare-fun setElem!24931 () Context!5014)

(declare-fun setNonEmpty!24931 () Bool)

(assert (=> setNonEmpty!24931 (= setRes!24931 (and tp!913215 (inv!45800 setElem!24931) e!1803757))))

(declare-fun setRest!24931 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24931 (= setRest!24910 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24931 true) setRest!24931))))

(declare-fun b!2846849 () Bool)

(declare-fun tp!913214 () Bool)

(assert (=> b!2846849 (= e!1803757 tp!913214)))

(assert (= (and setNonEmpty!24910 condSetEmpty!24931) setIsEmpty!24931))

(assert (= (and setNonEmpty!24910 (not condSetEmpty!24931)) setNonEmpty!24931))

(assert (= setNonEmpty!24931 b!2846849))

(declare-fun m!3274523 () Bool)

(assert (=> setNonEmpty!24931 m!3274523))

(declare-fun b!2846850 () Bool)

(declare-fun e!1803758 () Bool)

(declare-fun tp!913216 () Bool)

(declare-fun tp!913217 () Bool)

(assert (=> b!2846850 (= e!1803758 (and tp!913216 tp!913217))))

(assert (=> b!2846492 (= tp!913002 e!1803758)))

(assert (= (and b!2846492 ((_ is Cons!33773) (exprs!3007 (_1!19931 (_1!19932 (h!39194 mapDefault!18629)))))) b!2846850))

(declare-fun b!2846851 () Bool)

(declare-fun e!1803759 () Bool)

(declare-fun tp!913218 () Bool)

(declare-fun tp!913219 () Bool)

(assert (=> b!2846851 (= e!1803759 (and tp!913218 tp!913219))))

(assert (=> b!2846512 (= tp!913030 e!1803759)))

(assert (= (and b!2846512 ((_ is Cons!33773) (exprs!3007 (_2!19933 (_1!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118)))))))))))) b!2846851))

(declare-fun b!2846852 () Bool)

(declare-fun e!1803760 () Bool)

(declare-fun tp!913220 () Bool)

(declare-fun tp!913221 () Bool)

(assert (=> b!2846852 (= e!1803760 (and tp!913220 tp!913221))))

(assert (=> b!2846446 (= tp!912940 e!1803760)))

(assert (= (and b!2846446 ((_ is Cons!33773) (exprs!3007 setElem!24899))) b!2846852))

(declare-fun b!2846853 () Bool)

(declare-fun e!1803761 () Bool)

(declare-fun tp!913222 () Bool)

(declare-fun tp!913223 () Bool)

(assert (=> b!2846853 (= e!1803761 (and tp!913222 tp!913223))))

(assert (=> b!2846511 (= tp!913034 e!1803761)))

(assert (= (and b!2846511 ((_ is Cons!33773) (exprs!3007 setElem!24913))) b!2846853))

(declare-fun b!2846854 () Bool)

(declare-fun e!1803762 () Bool)

(declare-fun tp!913224 () Bool)

(declare-fun tp!913225 () Bool)

(assert (=> b!2846854 (= e!1803762 (and tp!913224 tp!913225))))

(assert (=> b!2846460 (= tp!912970 e!1803762)))

(assert (= (and b!2846460 ((_ is Cons!33773) (exprs!3007 setElem!24903))) b!2846854))

(declare-fun b!2846855 () Bool)

(declare-fun e!1803763 () Bool)

(declare-fun tp!913226 () Bool)

(declare-fun tp!913227 () Bool)

(assert (=> b!2846855 (= e!1803763 (and tp!913226 tp!913227))))

(assert (=> b!2846508 (= tp!913029 e!1803763)))

(assert (= (and b!2846508 ((_ is Cons!33773) (exprs!3007 setElem!24912))) b!2846855))

(declare-fun b!2846856 () Bool)

(declare-fun e!1803764 () Bool)

(declare-fun tp!913228 () Bool)

(declare-fun tp!913229 () Bool)

(assert (=> b!2846856 (= e!1803764 (and tp!913228 tp!913229))))

(assert (=> b!2846457 (= tp!912965 e!1803764)))

(assert (= (and b!2846457 ((_ is Cons!33773) (exprs!3007 setElem!24902))) b!2846856))

(declare-fun condSetEmpty!24932 () Bool)

(assert (=> setNonEmpty!24911 (= condSetEmpty!24932 (= setRest!24911 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24932 () Bool)

(assert (=> setNonEmpty!24911 (= tp!913022 setRes!24932)))

(declare-fun setIsEmpty!24932 () Bool)

(assert (=> setIsEmpty!24932 setRes!24932))

(declare-fun e!1803765 () Bool)

(declare-fun setNonEmpty!24932 () Bool)

(declare-fun setElem!24932 () Context!5014)

(declare-fun tp!913231 () Bool)

(assert (=> setNonEmpty!24932 (= setRes!24932 (and tp!913231 (inv!45800 setElem!24932) e!1803765))))

(declare-fun setRest!24932 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24932 (= setRest!24911 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24932 true) setRest!24932))))

(declare-fun b!2846857 () Bool)

(declare-fun tp!913230 () Bool)

(assert (=> b!2846857 (= e!1803765 tp!913230)))

(assert (= (and setNonEmpty!24911 condSetEmpty!24932) setIsEmpty!24932))

(assert (= (and setNonEmpty!24911 (not condSetEmpty!24932)) setNonEmpty!24932))

(assert (= setNonEmpty!24932 b!2846857))

(declare-fun m!3274525 () Bool)

(assert (=> setNonEmpty!24932 m!3274525))

(declare-fun b!2846858 () Bool)

(declare-fun e!1803767 () Bool)

(declare-fun tp!913232 () Bool)

(assert (=> b!2846858 (= e!1803767 tp!913232)))

(declare-fun setElem!24933 () Context!5014)

(declare-fun tp!913233 () Bool)

(declare-fun setNonEmpty!24933 () Bool)

(declare-fun setRes!24933 () Bool)

(assert (=> setNonEmpty!24933 (= setRes!24933 (and tp!913233 (inv!45800 setElem!24933) e!1803767))))

(declare-fun setRest!24933 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24933 (= (_2!19932 (h!39194 (t!232921 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24933 true) setRest!24933))))

(declare-fun setIsEmpty!24933 () Bool)

(assert (=> setIsEmpty!24933 setRes!24933))

(declare-fun b!2846859 () Bool)

(declare-fun e!1803768 () Bool)

(declare-fun tp!913235 () Bool)

(assert (=> b!2846859 (= e!1803768 tp!913235)))

(declare-fun e!1803766 () Bool)

(assert (=> b!2846406 (= tp!912892 e!1803766)))

(declare-fun b!2846860 () Bool)

(declare-fun tp!913234 () Bool)

(assert (=> b!2846860 (= e!1803766 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 (t!232921 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))))))) e!1803768 tp_is_empty!14721 setRes!24933 tp!913234))))

(declare-fun condSetEmpty!24933 () Bool)

(assert (=> b!2846860 (= condSetEmpty!24933 (= (_2!19932 (h!39194 (t!232921 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))))) ((as const (Array Context!5014 Bool)) false)))))

(assert (= b!2846860 b!2846859))

(assert (= (and b!2846860 condSetEmpty!24933) setIsEmpty!24933))

(assert (= (and b!2846860 (not condSetEmpty!24933)) setNonEmpty!24933))

(assert (= setNonEmpty!24933 b!2846858))

(assert (= (and b!2846406 ((_ is Cons!33774) (t!232921 (zeroValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999))))))))) b!2846860))

(declare-fun m!3274527 () Bool)

(assert (=> setNonEmpty!24933 m!3274527))

(declare-fun m!3274529 () Bool)

(assert (=> b!2846860 m!3274529))

(declare-fun b!2846863 () Bool)

(declare-fun e!1803769 () Bool)

(declare-fun tp!913238 () Bool)

(assert (=> b!2846863 (= e!1803769 tp!913238)))

(declare-fun b!2846861 () Bool)

(assert (=> b!2846861 (= e!1803769 tp_is_empty!14721)))

(declare-fun b!2846862 () Bool)

(declare-fun tp!913237 () Bool)

(declare-fun tp!913239 () Bool)

(assert (=> b!2846862 (= e!1803769 (and tp!913237 tp!913239))))

(assert (=> b!2846503 (= tp!913020 e!1803769)))

(declare-fun b!2846864 () Bool)

(declare-fun tp!913240 () Bool)

(declare-fun tp!913236 () Bool)

(assert (=> b!2846864 (= e!1803769 (and tp!913240 tp!913236))))

(assert (= (and b!2846503 ((_ is ElementMatch!8479) (regOne!17471 (regTwo!17471 r!13354)))) b!2846861))

(assert (= (and b!2846503 ((_ is Concat!13782) (regOne!17471 (regTwo!17471 r!13354)))) b!2846862))

(assert (= (and b!2846503 ((_ is Star!8479) (regOne!17471 (regTwo!17471 r!13354)))) b!2846863))

(assert (= (and b!2846503 ((_ is Union!8479) (regOne!17471 (regTwo!17471 r!13354)))) b!2846864))

(declare-fun b!2846867 () Bool)

(declare-fun e!1803770 () Bool)

(declare-fun tp!913243 () Bool)

(assert (=> b!2846867 (= e!1803770 tp!913243)))

(declare-fun b!2846865 () Bool)

(assert (=> b!2846865 (= e!1803770 tp_is_empty!14721)))

(declare-fun b!2846866 () Bool)

(declare-fun tp!913242 () Bool)

(declare-fun tp!913244 () Bool)

(assert (=> b!2846866 (= e!1803770 (and tp!913242 tp!913244))))

(assert (=> b!2846503 (= tp!913016 e!1803770)))

(declare-fun b!2846868 () Bool)

(declare-fun tp!913245 () Bool)

(declare-fun tp!913241 () Bool)

(assert (=> b!2846868 (= e!1803770 (and tp!913245 tp!913241))))

(assert (= (and b!2846503 ((_ is ElementMatch!8479) (regTwo!17471 (regTwo!17471 r!13354)))) b!2846865))

(assert (= (and b!2846503 ((_ is Concat!13782) (regTwo!17471 (regTwo!17471 r!13354)))) b!2846866))

(assert (= (and b!2846503 ((_ is Star!8479) (regTwo!17471 (regTwo!17471 r!13354)))) b!2846867))

(assert (= (and b!2846503 ((_ is Union!8479) (regTwo!17471 (regTwo!17471 r!13354)))) b!2846868))

(declare-fun b!2846869 () Bool)

(declare-fun e!1803771 () Bool)

(declare-fun tp!913246 () Bool)

(declare-fun tp!913247 () Bool)

(assert (=> b!2846869 (= e!1803771 (and tp!913246 tp!913247))))

(assert (=> b!2846408 (= tp!912897 e!1803771)))

(assert (= (and b!2846408 ((_ is Cons!33773) (exprs!3007 (_1!19931 (_1!19932 (h!39194 (minValue!4362 (v!34403 (underlying!8435 (v!34404 (underlying!8436 (cache!4144 cacheUp!999)))))))))))) b!2846869))

(declare-fun b!2846872 () Bool)

(declare-fun e!1803772 () Bool)

(declare-fun tp!913250 () Bool)

(assert (=> b!2846872 (= e!1803772 tp!913250)))

(declare-fun b!2846870 () Bool)

(assert (=> b!2846870 (= e!1803772 tp_is_empty!14721)))

(declare-fun b!2846871 () Bool)

(declare-fun tp!913249 () Bool)

(declare-fun tp!913251 () Bool)

(assert (=> b!2846871 (= e!1803772 (and tp!913249 tp!913251))))

(assert (=> b!2846501 (= tp!913017 e!1803772)))

(declare-fun b!2846873 () Bool)

(declare-fun tp!913252 () Bool)

(declare-fun tp!913248 () Bool)

(assert (=> b!2846873 (= e!1803772 (and tp!913252 tp!913248))))

(assert (= (and b!2846501 ((_ is ElementMatch!8479) (regOne!17470 (regTwo!17471 r!13354)))) b!2846870))

(assert (= (and b!2846501 ((_ is Concat!13782) (regOne!17470 (regTwo!17471 r!13354)))) b!2846871))

(assert (= (and b!2846501 ((_ is Star!8479) (regOne!17470 (regTwo!17471 r!13354)))) b!2846872))

(assert (= (and b!2846501 ((_ is Union!8479) (regOne!17470 (regTwo!17471 r!13354)))) b!2846873))

(declare-fun b!2846876 () Bool)

(declare-fun e!1803773 () Bool)

(declare-fun tp!913255 () Bool)

(assert (=> b!2846876 (= e!1803773 tp!913255)))

(declare-fun b!2846874 () Bool)

(assert (=> b!2846874 (= e!1803773 tp_is_empty!14721)))

(declare-fun b!2846875 () Bool)

(declare-fun tp!913254 () Bool)

(declare-fun tp!913256 () Bool)

(assert (=> b!2846875 (= e!1803773 (and tp!913254 tp!913256))))

(assert (=> b!2846501 (= tp!913019 e!1803773)))

(declare-fun b!2846877 () Bool)

(declare-fun tp!913257 () Bool)

(declare-fun tp!913253 () Bool)

(assert (=> b!2846877 (= e!1803773 (and tp!913257 tp!913253))))

(assert (= (and b!2846501 ((_ is ElementMatch!8479) (regTwo!17470 (regTwo!17471 r!13354)))) b!2846874))

(assert (= (and b!2846501 ((_ is Concat!13782) (regTwo!17470 (regTwo!17471 r!13354)))) b!2846875))

(assert (= (and b!2846501 ((_ is Star!8479) (regTwo!17470 (regTwo!17471 r!13354)))) b!2846876))

(assert (= (and b!2846501 ((_ is Union!8479) (regTwo!17470 (regTwo!17471 r!13354)))) b!2846877))

(declare-fun b!2846878 () Bool)

(declare-fun e!1803774 () Bool)

(declare-fun tp!913258 () Bool)

(declare-fun tp!913259 () Bool)

(assert (=> b!2846878 (= e!1803774 (and tp!913258 tp!913259))))

(assert (=> b!2846404 (= tp!912890 e!1803774)))

(assert (= (and b!2846404 ((_ is Cons!33773) (exprs!3007 setElem!24892))) b!2846878))

(declare-fun b!2846879 () Bool)

(declare-fun e!1803775 () Bool)

(declare-fun tp!913260 () Bool)

(declare-fun tp!913261 () Bool)

(assert (=> b!2846879 (= e!1803775 (and tp!913260 tp!913261))))

(assert (=> b!2846494 (= tp!913010 e!1803775)))

(assert (= (and b!2846494 ((_ is Cons!33773) (exprs!3007 (_1!19931 (_1!19932 (h!39194 mapValue!18623)))))) b!2846879))

(declare-fun b!2846882 () Bool)

(declare-fun e!1803776 () Bool)

(declare-fun tp!913264 () Bool)

(assert (=> b!2846882 (= e!1803776 tp!913264)))

(declare-fun b!2846880 () Bool)

(assert (=> b!2846880 (= e!1803776 tp_is_empty!14721)))

(declare-fun b!2846881 () Bool)

(declare-fun tp!913263 () Bool)

(declare-fun tp!913265 () Bool)

(assert (=> b!2846881 (= e!1803776 (and tp!913263 tp!913265))))

(assert (=> b!2846426 (= tp!912915 e!1803776)))

(declare-fun b!2846883 () Bool)

(declare-fun tp!913266 () Bool)

(declare-fun tp!913262 () Bool)

(assert (=> b!2846883 (= e!1803776 (and tp!913266 tp!913262))))

(assert (= (and b!2846426 ((_ is ElementMatch!8479) (reg!8808 (regTwo!17470 r!13354)))) b!2846880))

(assert (= (and b!2846426 ((_ is Concat!13782) (reg!8808 (regTwo!17470 r!13354)))) b!2846881))

(assert (= (and b!2846426 ((_ is Star!8479) (reg!8808 (regTwo!17470 r!13354)))) b!2846882))

(assert (= (and b!2846426 ((_ is Union!8479) (reg!8808 (regTwo!17470 r!13354)))) b!2846883))

(declare-fun tp!913267 () Bool)

(declare-fun b!2846884 () Bool)

(declare-fun e!1803778 () Bool)

(declare-fun tp!913268 () Bool)

(assert (=> b!2846884 (= e!1803778 (and (inv!45797 (left!25429 (left!25429 (c!459293 prefix!1325)))) tp!913267 (inv!45797 (right!25759 (left!25429 (c!459293 prefix!1325)))) tp!913268))))

(declare-fun b!2846886 () Bool)

(declare-fun e!1803777 () Bool)

(declare-fun tp!913269 () Bool)

(assert (=> b!2846886 (= e!1803777 tp!913269)))

(declare-fun b!2846885 () Bool)

(assert (=> b!2846885 (= e!1803778 (and (inv!45801 (xs!13591 (left!25429 (c!459293 prefix!1325)))) e!1803777))))

(assert (=> b!2846470 (= tp!912977 (and (inv!45797 (left!25429 (c!459293 prefix!1325))) e!1803778))))

(assert (= (and b!2846470 ((_ is Node!10473) (left!25429 (c!459293 prefix!1325)))) b!2846884))

(assert (= b!2846885 b!2846886))

(assert (= (and b!2846470 ((_ is Leaf!15936) (left!25429 (c!459293 prefix!1325)))) b!2846885))

(declare-fun m!3274531 () Bool)

(assert (=> b!2846884 m!3274531))

(declare-fun m!3274533 () Bool)

(assert (=> b!2846884 m!3274533))

(declare-fun m!3274535 () Bool)

(assert (=> b!2846885 m!3274535))

(assert (=> b!2846470 m!3274207))

(declare-fun tp!913271 () Bool)

(declare-fun b!2846887 () Bool)

(declare-fun tp!913270 () Bool)

(declare-fun e!1803780 () Bool)

(assert (=> b!2846887 (= e!1803780 (and (inv!45797 (left!25429 (right!25759 (c!459293 prefix!1325)))) tp!913270 (inv!45797 (right!25759 (right!25759 (c!459293 prefix!1325)))) tp!913271))))

(declare-fun b!2846889 () Bool)

(declare-fun e!1803779 () Bool)

(declare-fun tp!913272 () Bool)

(assert (=> b!2846889 (= e!1803779 tp!913272)))

(declare-fun b!2846888 () Bool)

(assert (=> b!2846888 (= e!1803780 (and (inv!45801 (xs!13591 (right!25759 (c!459293 prefix!1325)))) e!1803779))))

(assert (=> b!2846470 (= tp!912978 (and (inv!45797 (right!25759 (c!459293 prefix!1325))) e!1803780))))

(assert (= (and b!2846470 ((_ is Node!10473) (right!25759 (c!459293 prefix!1325)))) b!2846887))

(assert (= b!2846888 b!2846889))

(assert (= (and b!2846470 ((_ is Leaf!15936) (right!25759 (c!459293 prefix!1325)))) b!2846888))

(declare-fun m!3274537 () Bool)

(assert (=> b!2846887 m!3274537))

(declare-fun m!3274539 () Bool)

(assert (=> b!2846887 m!3274539))

(declare-fun m!3274541 () Bool)

(assert (=> b!2846888 m!3274541))

(assert (=> b!2846470 m!3274209))

(declare-fun setNonEmpty!24934 () Bool)

(declare-fun e!1803781 () Bool)

(declare-fun setElem!24934 () Context!5014)

(declare-fun setRes!24935 () Bool)

(declare-fun tp!913279 () Bool)

(assert (=> setNonEmpty!24934 (= setRes!24935 (and tp!913279 (inv!45800 setElem!24934) e!1803781))))

(declare-fun mapDefault!18630 () List!33900)

(declare-fun setRest!24934 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24934 (= (_2!19934 (h!39196 mapDefault!18630)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24934 true) setRest!24934))))

(declare-fun tp!913281 () Bool)

(declare-fun tp!913280 () Bool)

(declare-fun e!1803783 () Bool)

(declare-fun setRes!24934 () Bool)

(declare-fun b!2846890 () Bool)

(declare-fun mapValue!18630 () List!33900)

(declare-fun e!1803782 () Bool)

(assert (=> b!2846890 (= e!1803783 (and tp!913280 (inv!45800 (_2!19933 (_1!19934 (h!39196 mapValue!18630)))) e!1803782 tp_is_empty!14721 setRes!24934 tp!913281))))

(declare-fun condSetEmpty!24935 () Bool)

(assert (=> b!2846890 (= condSetEmpty!24935 (= (_2!19934 (h!39196 mapValue!18630)) ((as const (Array Context!5014 Bool)) false)))))

(declare-fun b!2846891 () Bool)

(declare-fun tp!913276 () Bool)

(assert (=> b!2846891 (= e!1803782 tp!913276)))

(declare-fun mapNonEmpty!18630 () Bool)

(declare-fun mapRes!18630 () Bool)

(declare-fun tp!913283 () Bool)

(assert (=> mapNonEmpty!18630 (= mapRes!18630 (and tp!913283 e!1803783))))

(declare-fun mapRest!18630 () (Array (_ BitVec 32) List!33900))

(declare-fun mapKey!18630 () (_ BitVec 32))

(assert (=> mapNonEmpty!18630 (= mapRest!18626 (store mapRest!18630 mapKey!18630 mapValue!18630))))

(declare-fun mapIsEmpty!18630 () Bool)

(assert (=> mapIsEmpty!18630 mapRes!18630))

(declare-fun condMapEmpty!18630 () Bool)

(assert (=> mapNonEmpty!18626 (= condMapEmpty!18630 (= mapRest!18626 ((as const (Array (_ BitVec 32) List!33900)) mapDefault!18630)))))

(declare-fun e!1803786 () Bool)

(assert (=> mapNonEmpty!18626 (= tp!912950 (and e!1803786 mapRes!18630))))

(declare-fun b!2846892 () Bool)

(declare-fun tp!913282 () Bool)

(declare-fun tp!913275 () Bool)

(declare-fun e!1803784 () Bool)

(assert (=> b!2846892 (= e!1803786 (and tp!913275 (inv!45800 (_2!19933 (_1!19934 (h!39196 mapDefault!18630)))) e!1803784 tp_is_empty!14721 setRes!24935 tp!913282))))

(declare-fun condSetEmpty!24934 () Bool)

(assert (=> b!2846892 (= condSetEmpty!24934 (= (_2!19934 (h!39196 mapDefault!18630)) ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setNonEmpty!24935 () Bool)

(declare-fun setElem!24935 () Context!5014)

(declare-fun tp!913278 () Bool)

(declare-fun e!1803785 () Bool)

(assert (=> setNonEmpty!24935 (= setRes!24934 (and tp!913278 (inv!45800 setElem!24935) e!1803785))))

(declare-fun setRest!24935 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24935 (= (_2!19934 (h!39196 mapValue!18630)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24935 true) setRest!24935))))

(declare-fun setIsEmpty!24934 () Bool)

(assert (=> setIsEmpty!24934 setRes!24935))

(declare-fun setIsEmpty!24935 () Bool)

(assert (=> setIsEmpty!24935 setRes!24934))

(declare-fun b!2846893 () Bool)

(declare-fun tp!913274 () Bool)

(assert (=> b!2846893 (= e!1803784 tp!913274)))

(declare-fun b!2846894 () Bool)

(declare-fun tp!913273 () Bool)

(assert (=> b!2846894 (= e!1803785 tp!913273)))

(declare-fun b!2846895 () Bool)

(declare-fun tp!913277 () Bool)

(assert (=> b!2846895 (= e!1803781 tp!913277)))

(assert (= (and mapNonEmpty!18626 condMapEmpty!18630) mapIsEmpty!18630))

(assert (= (and mapNonEmpty!18626 (not condMapEmpty!18630)) mapNonEmpty!18630))

(assert (= b!2846890 b!2846891))

(assert (= (and b!2846890 condSetEmpty!24935) setIsEmpty!24935))

(assert (= (and b!2846890 (not condSetEmpty!24935)) setNonEmpty!24935))

(assert (= setNonEmpty!24935 b!2846894))

(assert (= (and mapNonEmpty!18630 ((_ is Cons!33776) mapValue!18630)) b!2846890))

(assert (= b!2846892 b!2846893))

(assert (= (and b!2846892 condSetEmpty!24934) setIsEmpty!24934))

(assert (= (and b!2846892 (not condSetEmpty!24934)) setNonEmpty!24934))

(assert (= setNonEmpty!24934 b!2846895))

(assert (= (and mapNonEmpty!18626 ((_ is Cons!33776) mapDefault!18630)) b!2846892))

(declare-fun m!3274543 () Bool)

(assert (=> mapNonEmpty!18630 m!3274543))

(declare-fun m!3274545 () Bool)

(assert (=> b!2846890 m!3274545))

(declare-fun m!3274547 () Bool)

(assert (=> b!2846892 m!3274547))

(declare-fun m!3274549 () Bool)

(assert (=> setNonEmpty!24935 m!3274549))

(declare-fun m!3274551 () Bool)

(assert (=> setNonEmpty!24934 m!3274551))

(declare-fun b!2846898 () Bool)

(declare-fun e!1803787 () Bool)

(declare-fun tp!913286 () Bool)

(assert (=> b!2846898 (= e!1803787 tp!913286)))

(declare-fun b!2846896 () Bool)

(assert (=> b!2846896 (= e!1803787 tp_is_empty!14721)))

(declare-fun b!2846897 () Bool)

(declare-fun tp!913285 () Bool)

(declare-fun tp!913287 () Bool)

(assert (=> b!2846897 (= e!1803787 (and tp!913285 tp!913287))))

(assert (=> b!2846442 (= tp!912947 e!1803787)))

(declare-fun b!2846899 () Bool)

(declare-fun tp!913288 () Bool)

(declare-fun tp!913284 () Bool)

(assert (=> b!2846899 (= e!1803787 (and tp!913288 tp!913284))))

(assert (= (and b!2846442 ((_ is ElementMatch!8479) (_1!19933 (_1!19934 (h!39196 mapValue!18626))))) b!2846896))

(assert (= (and b!2846442 ((_ is Concat!13782) (_1!19933 (_1!19934 (h!39196 mapValue!18626))))) b!2846897))

(assert (= (and b!2846442 ((_ is Star!8479) (_1!19933 (_1!19934 (h!39196 mapValue!18626))))) b!2846898))

(assert (= (and b!2846442 ((_ is Union!8479) (_1!19933 (_1!19934 (h!39196 mapValue!18626))))) b!2846899))

(declare-fun e!1803789 () Bool)

(declare-fun tp!913292 () Bool)

(declare-fun b!2846900 () Bool)

(declare-fun e!1803788 () Bool)

(declare-fun setRes!24936 () Bool)

(declare-fun tp!913291 () Bool)

(assert (=> b!2846900 (= e!1803788 (and tp!913291 (inv!45800 (_2!19933 (_1!19934 (h!39196 (t!232923 mapValue!18626))))) e!1803789 tp_is_empty!14721 setRes!24936 tp!913292))))

(declare-fun condSetEmpty!24936 () Bool)

(assert (=> b!2846900 (= condSetEmpty!24936 (= (_2!19934 (h!39196 (t!232923 mapValue!18626))) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846442 (= tp!912948 e!1803788)))

(declare-fun b!2846901 () Bool)

(declare-fun e!1803790 () Bool)

(declare-fun tp!913293 () Bool)

(assert (=> b!2846901 (= e!1803790 tp!913293)))

(declare-fun setNonEmpty!24936 () Bool)

(declare-fun tp!913290 () Bool)

(declare-fun setElem!24936 () Context!5014)

(assert (=> setNonEmpty!24936 (= setRes!24936 (and tp!913290 (inv!45800 setElem!24936) e!1803790))))

(declare-fun setRest!24936 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24936 (= (_2!19934 (h!39196 (t!232923 mapValue!18626))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24936 true) setRest!24936))))

(declare-fun b!2846902 () Bool)

(declare-fun tp!913289 () Bool)

(assert (=> b!2846902 (= e!1803789 tp!913289)))

(declare-fun setIsEmpty!24936 () Bool)

(assert (=> setIsEmpty!24936 setRes!24936))

(assert (= b!2846900 b!2846902))

(assert (= (and b!2846900 condSetEmpty!24936) setIsEmpty!24936))

(assert (= (and b!2846900 (not condSetEmpty!24936)) setNonEmpty!24936))

(assert (= setNonEmpty!24936 b!2846901))

(assert (= (and b!2846442 ((_ is Cons!33776) (t!232923 mapValue!18626))) b!2846900))

(declare-fun m!3274553 () Bool)

(assert (=> b!2846900 m!3274553))

(declare-fun m!3274555 () Bool)

(assert (=> setNonEmpty!24936 m!3274555))

(declare-fun mapNonEmpty!18631 () Bool)

(declare-fun mapRes!18631 () Bool)

(declare-fun tp!913299 () Bool)

(declare-fun e!1803794 () Bool)

(assert (=> mapNonEmpty!18631 (= mapRes!18631 (and tp!913299 e!1803794))))

(declare-fun mapValue!18631 () List!33898)

(declare-fun mapKey!18631 () (_ BitVec 32))

(declare-fun mapRest!18631 () (Array (_ BitVec 32) List!33898))

(assert (=> mapNonEmpty!18631 (= mapRest!18629 (store mapRest!18631 mapKey!18631 mapValue!18631))))

(declare-fun e!1803791 () Bool)

(declare-fun e!1803795 () Bool)

(declare-fun setRes!24938 () Bool)

(declare-fun tp!913296 () Bool)

(declare-fun mapDefault!18631 () List!33898)

(declare-fun b!2846903 () Bool)

(assert (=> b!2846903 (= e!1803795 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 mapDefault!18631)))) e!1803791 tp_is_empty!14721 setRes!24938 tp!913296))))

(declare-fun condSetEmpty!24938 () Bool)

(assert (=> b!2846903 (= condSetEmpty!24938 (= (_2!19932 (h!39194 mapDefault!18631)) ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setIsEmpty!24937 () Bool)

(assert (=> setIsEmpty!24937 setRes!24938))

(declare-fun b!2846904 () Bool)

(declare-fun e!1803792 () Bool)

(declare-fun tp!913302 () Bool)

(assert (=> b!2846904 (= e!1803792 tp!913302)))

(declare-fun b!2846906 () Bool)

(declare-fun tp!913300 () Bool)

(declare-fun setRes!24937 () Bool)

(declare-fun e!1803796 () Bool)

(assert (=> b!2846906 (= e!1803794 (and (inv!45800 (_1!19931 (_1!19932 (h!39194 mapValue!18631)))) e!1803796 tp_is_empty!14721 setRes!24937 tp!913300))))

(declare-fun condSetEmpty!24937 () Bool)

(assert (=> b!2846906 (= condSetEmpty!24937 (= (_2!19932 (h!39194 mapValue!18631)) ((as const (Array Context!5014 Bool)) false)))))

(declare-fun tp!913294 () Bool)

(declare-fun setElem!24937 () Context!5014)

(declare-fun e!1803793 () Bool)

(declare-fun setNonEmpty!24937 () Bool)

(assert (=> setNonEmpty!24937 (= setRes!24937 (and tp!913294 (inv!45800 setElem!24937) e!1803793))))

(declare-fun setRest!24937 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24937 (= (_2!19932 (h!39194 mapValue!18631)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24937 true) setRest!24937))))

(declare-fun setElem!24938 () Context!5014)

(declare-fun tp!913295 () Bool)

(declare-fun setNonEmpty!24938 () Bool)

(assert (=> setNonEmpty!24938 (= setRes!24938 (and tp!913295 (inv!45800 setElem!24938) e!1803792))))

(declare-fun setRest!24938 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24938 (= (_2!19932 (h!39194 mapDefault!18631)) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24938 true) setRest!24938))))

(declare-fun b!2846907 () Bool)

(declare-fun tp!913301 () Bool)

(assert (=> b!2846907 (= e!1803796 tp!913301)))

(declare-fun setIsEmpty!24938 () Bool)

(assert (=> setIsEmpty!24938 setRes!24937))

(declare-fun mapIsEmpty!18631 () Bool)

(assert (=> mapIsEmpty!18631 mapRes!18631))

(declare-fun b!2846908 () Bool)

(declare-fun tp!913298 () Bool)

(assert (=> b!2846908 (= e!1803791 tp!913298)))

(declare-fun condMapEmpty!18631 () Bool)

(assert (=> mapNonEmpty!18629 (= condMapEmpty!18631 (= mapRest!18629 ((as const (Array (_ BitVec 32) List!33898)) mapDefault!18631)))))

(assert (=> mapNonEmpty!18629 (= tp!913003 (and e!1803795 mapRes!18631))))

(declare-fun b!2846905 () Bool)

(declare-fun tp!913297 () Bool)

(assert (=> b!2846905 (= e!1803793 tp!913297)))

(assert (= (and mapNonEmpty!18629 condMapEmpty!18631) mapIsEmpty!18631))

(assert (= (and mapNonEmpty!18629 (not condMapEmpty!18631)) mapNonEmpty!18631))

(assert (= b!2846906 b!2846907))

(assert (= (and b!2846906 condSetEmpty!24937) setIsEmpty!24938))

(assert (= (and b!2846906 (not condSetEmpty!24937)) setNonEmpty!24937))

(assert (= setNonEmpty!24937 b!2846905))

(assert (= (and mapNonEmpty!18631 ((_ is Cons!33774) mapValue!18631)) b!2846906))

(assert (= b!2846903 b!2846908))

(assert (= (and b!2846903 condSetEmpty!24938) setIsEmpty!24937))

(assert (= (and b!2846903 (not condSetEmpty!24938)) setNonEmpty!24938))

(assert (= setNonEmpty!24938 b!2846904))

(assert (= (and mapNonEmpty!18629 ((_ is Cons!33774) mapDefault!18631)) b!2846903))

(declare-fun m!3274557 () Bool)

(assert (=> setNonEmpty!24937 m!3274557))

(declare-fun m!3274559 () Bool)

(assert (=> mapNonEmpty!18631 m!3274559))

(declare-fun m!3274561 () Bool)

(assert (=> setNonEmpty!24938 m!3274561))

(declare-fun m!3274563 () Bool)

(assert (=> b!2846903 m!3274563))

(declare-fun m!3274565 () Bool)

(assert (=> b!2846906 m!3274565))

(declare-fun b!2846909 () Bool)

(declare-fun e!1803797 () Bool)

(declare-fun tp!913303 () Bool)

(declare-fun tp!913304 () Bool)

(assert (=> b!2846909 (= e!1803797 (and tp!913303 tp!913304))))

(assert (=> b!2846445 (= tp!912941 e!1803797)))

(assert (= (and b!2846445 ((_ is Cons!33773) (exprs!3007 (_2!19933 (_1!19934 (h!39196 mapDefault!18626)))))) b!2846909))

(declare-fun b!2846910 () Bool)

(declare-fun e!1803798 () Bool)

(declare-fun tp!913305 () Bool)

(declare-fun tp!913306 () Bool)

(assert (=> b!2846910 (= e!1803798 (and tp!913305 tp!913306))))

(assert (=> b!2846491 (= tp!913005 e!1803798)))

(assert (= (and b!2846491 ((_ is Cons!33773) (exprs!3007 (_1!19931 (_1!19932 (h!39194 mapValue!18629)))))) b!2846910))

(declare-fun b!2846913 () Bool)

(declare-fun e!1803799 () Bool)

(declare-fun tp!913309 () Bool)

(assert (=> b!2846913 (= e!1803799 tp!913309)))

(declare-fun b!2846911 () Bool)

(assert (=> b!2846911 (= e!1803799 tp_is_empty!14721)))

(declare-fun b!2846912 () Bool)

(declare-fun tp!913308 () Bool)

(declare-fun tp!913310 () Bool)

(assert (=> b!2846912 (= e!1803799 (and tp!913308 tp!913310))))

(assert (=> b!2846510 (= tp!913032 e!1803799)))

(declare-fun b!2846914 () Bool)

(declare-fun tp!913311 () Bool)

(declare-fun tp!913307 () Bool)

(assert (=> b!2846914 (= e!1803799 (and tp!913311 tp!913307))))

(assert (= (and b!2846510 ((_ is ElementMatch!8479) (_1!19933 (_1!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) b!2846911))

(assert (= (and b!2846510 ((_ is Concat!13782) (_1!19933 (_1!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) b!2846912))

(assert (= (and b!2846510 ((_ is Star!8479) (_1!19933 (_1!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) b!2846913))

(assert (= (and b!2846510 ((_ is Union!8479) (_1!19933 (_1!19934 (h!39196 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) b!2846914))

(declare-fun setRes!24939 () Bool)

(declare-fun e!1803800 () Bool)

(declare-fun tp!913314 () Bool)

(declare-fun b!2846915 () Bool)

(declare-fun tp!913315 () Bool)

(declare-fun e!1803801 () Bool)

(assert (=> b!2846915 (= e!1803800 (and tp!913314 (inv!45800 (_2!19933 (_1!19934 (h!39196 (t!232923 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) e!1803801 tp_is_empty!14721 setRes!24939 tp!913315))))

(declare-fun condSetEmpty!24939 () Bool)

(assert (=> b!2846915 (= condSetEmpty!24939 (= (_2!19934 (h!39196 (t!232923 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846510 (= tp!913033 e!1803800)))

(declare-fun b!2846916 () Bool)

(declare-fun e!1803802 () Bool)

(declare-fun tp!913316 () Bool)

(assert (=> b!2846916 (= e!1803802 tp!913316)))

(declare-fun setNonEmpty!24939 () Bool)

(declare-fun tp!913313 () Bool)

(declare-fun setElem!24939 () Context!5014)

(assert (=> setNonEmpty!24939 (= setRes!24939 (and tp!913313 (inv!45800 setElem!24939) e!1803802))))

(declare-fun setRest!24939 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24939 (= (_2!19934 (h!39196 (t!232923 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24939 true) setRest!24939))))

(declare-fun b!2846917 () Bool)

(declare-fun tp!913312 () Bool)

(assert (=> b!2846917 (= e!1803801 tp!913312)))

(declare-fun setIsEmpty!24939 () Bool)

(assert (=> setIsEmpty!24939 setRes!24939))

(assert (= b!2846915 b!2846917))

(assert (= (and b!2846915 condSetEmpty!24939) setIsEmpty!24939))

(assert (= (and b!2846915 (not condSetEmpty!24939)) setNonEmpty!24939))

(assert (= setNonEmpty!24939 b!2846916))

(assert (= (and b!2846510 ((_ is Cons!33776) (t!232923 (minValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))) b!2846915))

(declare-fun m!3274567 () Bool)

(assert (=> b!2846915 m!3274567))

(declare-fun m!3274569 () Bool)

(assert (=> setNonEmpty!24939 m!3274569))

(declare-fun b!2846920 () Bool)

(declare-fun e!1803803 () Bool)

(declare-fun tp!913319 () Bool)

(assert (=> b!2846920 (= e!1803803 tp!913319)))

(declare-fun b!2846918 () Bool)

(assert (=> b!2846918 (= e!1803803 tp_is_empty!14721)))

(declare-fun b!2846919 () Bool)

(declare-fun tp!913318 () Bool)

(declare-fun tp!913320 () Bool)

(assert (=> b!2846919 (= e!1803803 (and tp!913318 tp!913320))))

(assert (=> b!2846459 (= tp!912968 e!1803803)))

(declare-fun b!2846921 () Bool)

(declare-fun tp!913321 () Bool)

(declare-fun tp!913317 () Bool)

(assert (=> b!2846921 (= e!1803803 (and tp!913321 tp!913317))))

(assert (= (and b!2846459 ((_ is ElementMatch!8479) (_1!19933 (_1!19934 (h!39196 mapDefault!18623))))) b!2846918))

(assert (= (and b!2846459 ((_ is Concat!13782) (_1!19933 (_1!19934 (h!39196 mapDefault!18623))))) b!2846919))

(assert (= (and b!2846459 ((_ is Star!8479) (_1!19933 (_1!19934 (h!39196 mapDefault!18623))))) b!2846920))

(assert (= (and b!2846459 ((_ is Union!8479) (_1!19933 (_1!19934 (h!39196 mapDefault!18623))))) b!2846921))

(declare-fun setRes!24940 () Bool)

(declare-fun e!1803805 () Bool)

(declare-fun b!2846922 () Bool)

(declare-fun e!1803804 () Bool)

(declare-fun tp!913324 () Bool)

(declare-fun tp!913325 () Bool)

(assert (=> b!2846922 (= e!1803804 (and tp!913324 (inv!45800 (_2!19933 (_1!19934 (h!39196 (t!232923 mapDefault!18623))))) e!1803805 tp_is_empty!14721 setRes!24940 tp!913325))))

(declare-fun condSetEmpty!24940 () Bool)

(assert (=> b!2846922 (= condSetEmpty!24940 (= (_2!19934 (h!39196 (t!232923 mapDefault!18623))) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846459 (= tp!912969 e!1803804)))

(declare-fun b!2846923 () Bool)

(declare-fun e!1803806 () Bool)

(declare-fun tp!913326 () Bool)

(assert (=> b!2846923 (= e!1803806 tp!913326)))

(declare-fun tp!913323 () Bool)

(declare-fun setElem!24940 () Context!5014)

(declare-fun setNonEmpty!24940 () Bool)

(assert (=> setNonEmpty!24940 (= setRes!24940 (and tp!913323 (inv!45800 setElem!24940) e!1803806))))

(declare-fun setRest!24940 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24940 (= (_2!19934 (h!39196 (t!232923 mapDefault!18623))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24940 true) setRest!24940))))

(declare-fun b!2846924 () Bool)

(declare-fun tp!913322 () Bool)

(assert (=> b!2846924 (= e!1803805 tp!913322)))

(declare-fun setIsEmpty!24940 () Bool)

(assert (=> setIsEmpty!24940 setRes!24940))

(assert (= b!2846922 b!2846924))

(assert (= (and b!2846922 condSetEmpty!24940) setIsEmpty!24940))

(assert (= (and b!2846922 (not condSetEmpty!24940)) setNonEmpty!24940))

(assert (= setNonEmpty!24940 b!2846923))

(assert (= (and b!2846459 ((_ is Cons!33776) (t!232923 mapDefault!18623))) b!2846922))

(declare-fun m!3274571 () Bool)

(assert (=> b!2846922 m!3274571))

(declare-fun m!3274573 () Bool)

(assert (=> setNonEmpty!24940 m!3274573))

(declare-fun b!2846927 () Bool)

(declare-fun e!1803807 () Bool)

(declare-fun tp!913329 () Bool)

(assert (=> b!2846927 (= e!1803807 tp!913329)))

(declare-fun b!2846925 () Bool)

(assert (=> b!2846925 (= e!1803807 tp_is_empty!14721)))

(declare-fun b!2846926 () Bool)

(declare-fun tp!913328 () Bool)

(declare-fun tp!913330 () Bool)

(assert (=> b!2846926 (= e!1803807 (and tp!913328 tp!913330))))

(assert (=> b!2846507 (= tp!913027 e!1803807)))

(declare-fun b!2846928 () Bool)

(declare-fun tp!913331 () Bool)

(declare-fun tp!913327 () Bool)

(assert (=> b!2846928 (= e!1803807 (and tp!913331 tp!913327))))

(assert (= (and b!2846507 ((_ is ElementMatch!8479) (_1!19933 (_1!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) b!2846925))

(assert (= (and b!2846507 ((_ is Concat!13782) (_1!19933 (_1!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) b!2846926))

(assert (= (and b!2846507 ((_ is Star!8479) (_1!19933 (_1!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) b!2846927))

(assert (= (and b!2846507 ((_ is Union!8479) (_1!19933 (_1!19934 (h!39196 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) b!2846928))

(declare-fun e!1803809 () Bool)

(declare-fun b!2846929 () Bool)

(declare-fun tp!913335 () Bool)

(declare-fun tp!913334 () Bool)

(declare-fun e!1803808 () Bool)

(declare-fun setRes!24941 () Bool)

(assert (=> b!2846929 (= e!1803808 (and tp!913334 (inv!45800 (_2!19933 (_1!19934 (h!39196 (t!232923 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))))) e!1803809 tp_is_empty!14721 setRes!24941 tp!913335))))

(declare-fun condSetEmpty!24941 () Bool)

(assert (=> b!2846929 (= condSetEmpty!24941 (= (_2!19934 (h!39196 (t!232923 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846507 (= tp!913028 e!1803808)))

(declare-fun b!2846930 () Bool)

(declare-fun e!1803810 () Bool)

(declare-fun tp!913336 () Bool)

(assert (=> b!2846930 (= e!1803810 tp!913336)))

(declare-fun tp!913333 () Bool)

(declare-fun setElem!24941 () Context!5014)

(declare-fun setNonEmpty!24941 () Bool)

(assert (=> setNonEmpty!24941 (= setRes!24941 (and tp!913333 (inv!45800 setElem!24941) e!1803810))))

(declare-fun setRest!24941 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24941 (= (_2!19934 (h!39196 (t!232923 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24941 true) setRest!24941))))

(declare-fun b!2846931 () Bool)

(declare-fun tp!913332 () Bool)

(assert (=> b!2846931 (= e!1803809 tp!913332)))

(declare-fun setIsEmpty!24941 () Bool)

(assert (=> setIsEmpty!24941 setRes!24941))

(assert (= b!2846929 b!2846931))

(assert (= (and b!2846929 condSetEmpty!24941) setIsEmpty!24941))

(assert (= (and b!2846929 (not condSetEmpty!24941)) setNonEmpty!24941))

(assert (= setNonEmpty!24941 b!2846930))

(assert (= (and b!2846507 ((_ is Cons!33776) (t!232923 (zeroValue!4363 (v!34405 (underlying!8437 (v!34406 (underlying!8438 (cache!4145 cacheDown!1118))))))))) b!2846929))

(declare-fun m!3274575 () Bool)

(assert (=> b!2846929 m!3274575))

(declare-fun m!3274577 () Bool)

(assert (=> setNonEmpty!24941 m!3274577))

(declare-fun b!2846934 () Bool)

(declare-fun e!1803811 () Bool)

(declare-fun tp!913339 () Bool)

(assert (=> b!2846934 (= e!1803811 tp!913339)))

(declare-fun b!2846932 () Bool)

(assert (=> b!2846932 (= e!1803811 tp_is_empty!14721)))

(declare-fun b!2846933 () Bool)

(declare-fun tp!913338 () Bool)

(declare-fun tp!913340 () Bool)

(assert (=> b!2846933 (= e!1803811 (and tp!913338 tp!913340))))

(assert (=> b!2846498 (= tp!913013 e!1803811)))

(declare-fun b!2846935 () Bool)

(declare-fun tp!913341 () Bool)

(declare-fun tp!913337 () Bool)

(assert (=> b!2846935 (= e!1803811 (and tp!913341 tp!913337))))

(assert (= (and b!2846498 ((_ is ElementMatch!8479) (reg!8808 (regOne!17471 r!13354)))) b!2846932))

(assert (= (and b!2846498 ((_ is Concat!13782) (reg!8808 (regOne!17471 r!13354)))) b!2846933))

(assert (= (and b!2846498 ((_ is Star!8479) (reg!8808 (regOne!17471 r!13354)))) b!2846934))

(assert (= (and b!2846498 ((_ is Union!8479) (reg!8808 (regOne!17471 r!13354)))) b!2846935))

(declare-fun condSetEmpty!24942 () Bool)

(assert (=> setNonEmpty!24908 (= condSetEmpty!24942 (= setRest!24908 ((as const (Array Context!5014 Bool)) false)))))

(declare-fun setRes!24942 () Bool)

(assert (=> setNonEmpty!24908 (= tp!912998 setRes!24942)))

(declare-fun setIsEmpty!24942 () Bool)

(assert (=> setIsEmpty!24942 setRes!24942))

(declare-fun tp!913343 () Bool)

(declare-fun setElem!24942 () Context!5014)

(declare-fun setNonEmpty!24942 () Bool)

(declare-fun e!1803812 () Bool)

(assert (=> setNonEmpty!24942 (= setRes!24942 (and tp!913343 (inv!45800 setElem!24942) e!1803812))))

(declare-fun setRest!24942 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24942 (= setRest!24908 ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24942 true) setRest!24942))))

(declare-fun b!2846936 () Bool)

(declare-fun tp!913342 () Bool)

(assert (=> b!2846936 (= e!1803812 tp!913342)))

(assert (= (and setNonEmpty!24908 condSetEmpty!24942) setIsEmpty!24942))

(assert (= (and setNonEmpty!24908 (not condSetEmpty!24942)) setNonEmpty!24942))

(assert (= setNonEmpty!24942 b!2846936))

(declare-fun m!3274579 () Bool)

(assert (=> setNonEmpty!24942 m!3274579))

(declare-fun b!2846941 () Bool)

(declare-fun e!1803815 () Bool)

(declare-fun tp!913346 () Bool)

(assert (=> b!2846941 (= e!1803815 (and tp_is_empty!14721 tp!913346))))

(assert (=> b!2846472 (= tp!912979 e!1803815)))

(assert (= (and b!2846472 ((_ is Cons!33775) (innerList!10533 (xs!13591 (c!459293 prefix!1325))))) b!2846941))

(declare-fun b!2846944 () Bool)

(declare-fun e!1803816 () Bool)

(declare-fun tp!913349 () Bool)

(assert (=> b!2846944 (= e!1803816 tp!913349)))

(declare-fun b!2846942 () Bool)

(assert (=> b!2846942 (= e!1803816 tp_is_empty!14721)))

(declare-fun b!2846943 () Bool)

(declare-fun tp!913348 () Bool)

(declare-fun tp!913350 () Bool)

(assert (=> b!2846943 (= e!1803816 (and tp!913348 tp!913350))))

(assert (=> b!2846444 (= tp!912942 e!1803816)))

(declare-fun b!2846945 () Bool)

(declare-fun tp!913351 () Bool)

(declare-fun tp!913347 () Bool)

(assert (=> b!2846945 (= e!1803816 (and tp!913351 tp!913347))))

(assert (= (and b!2846444 ((_ is ElementMatch!8479) (_1!19933 (_1!19934 (h!39196 mapDefault!18626))))) b!2846942))

(assert (= (and b!2846444 ((_ is Concat!13782) (_1!19933 (_1!19934 (h!39196 mapDefault!18626))))) b!2846943))

(assert (= (and b!2846444 ((_ is Star!8479) (_1!19933 (_1!19934 (h!39196 mapDefault!18626))))) b!2846944))

(assert (= (and b!2846444 ((_ is Union!8479) (_1!19933 (_1!19934 (h!39196 mapDefault!18626))))) b!2846945))

(declare-fun tp!913355 () Bool)

(declare-fun e!1803818 () Bool)

(declare-fun setRes!24943 () Bool)

(declare-fun b!2846946 () Bool)

(declare-fun e!1803817 () Bool)

(declare-fun tp!913354 () Bool)

(assert (=> b!2846946 (= e!1803817 (and tp!913354 (inv!45800 (_2!19933 (_1!19934 (h!39196 (t!232923 mapDefault!18626))))) e!1803818 tp_is_empty!14721 setRes!24943 tp!913355))))

(declare-fun condSetEmpty!24943 () Bool)

(assert (=> b!2846946 (= condSetEmpty!24943 (= (_2!19934 (h!39196 (t!232923 mapDefault!18626))) ((as const (Array Context!5014 Bool)) false)))))

(assert (=> b!2846444 (= tp!912949 e!1803817)))

(declare-fun b!2846947 () Bool)

(declare-fun e!1803819 () Bool)

(declare-fun tp!913356 () Bool)

(assert (=> b!2846947 (= e!1803819 tp!913356)))

(declare-fun setElem!24943 () Context!5014)

(declare-fun tp!913353 () Bool)

(declare-fun setNonEmpty!24943 () Bool)

(assert (=> setNonEmpty!24943 (= setRes!24943 (and tp!913353 (inv!45800 setElem!24943) e!1803819))))

(declare-fun setRest!24943 () (InoxSet Context!5014))

(assert (=> setNonEmpty!24943 (= (_2!19934 (h!39196 (t!232923 mapDefault!18626))) ((_ map or) (store ((as const (Array Context!5014 Bool)) false) setElem!24943 true) setRest!24943))))

(declare-fun b!2846948 () Bool)

(declare-fun tp!913352 () Bool)

(assert (=> b!2846948 (= e!1803818 tp!913352)))

(declare-fun setIsEmpty!24943 () Bool)

(assert (=> setIsEmpty!24943 setRes!24943))

(assert (= b!2846946 b!2846948))

(assert (= (and b!2846946 condSetEmpty!24943) setIsEmpty!24943))

(assert (= (and b!2846946 (not condSetEmpty!24943)) setNonEmpty!24943))

(assert (= setNonEmpty!24943 b!2846947))

(assert (= (and b!2846444 ((_ is Cons!33776) (t!232923 mapDefault!18626))) b!2846946))

(declare-fun m!3274581 () Bool)

(assert (=> b!2846946 m!3274581))

(declare-fun m!3274583 () Bool)

(assert (=> setNonEmpty!24943 m!3274583))

(declare-fun b!2846951 () Bool)

(declare-fun e!1803820 () Bool)

(declare-fun tp!913359 () Bool)

(assert (=> b!2846951 (= e!1803820 tp!913359)))

(declare-fun b!2846949 () Bool)

(assert (=> b!2846949 (= e!1803820 tp_is_empty!14721)))

(declare-fun b!2846950 () Bool)

(declare-fun tp!913358 () Bool)

(declare-fun tp!913360 () Bool)

(assert (=> b!2846950 (= e!1803820 (and tp!913358 tp!913360))))

(assert (=> b!2846515 (= tp!913037 e!1803820)))

(declare-fun b!2846952 () Bool)

(declare-fun tp!913361 () Bool)

(declare-fun tp!913357 () Bool)

(assert (=> b!2846952 (= e!1803820 (and tp!913361 tp!913357))))

(assert (= (and b!2846515 ((_ is ElementMatch!8479) (reg!8808 (reg!8808 r!13354)))) b!2846949))

(assert (= (and b!2846515 ((_ is Concat!13782) (reg!8808 (reg!8808 r!13354)))) b!2846950))

(assert (= (and b!2846515 ((_ is Star!8479) (reg!8808 (reg!8808 r!13354)))) b!2846951))

(assert (= (and b!2846515 ((_ is Union!8479) (reg!8808 (reg!8808 r!13354)))) b!2846952))

(declare-fun b!2846953 () Bool)

(declare-fun e!1803821 () Bool)

(declare-fun tp!913362 () Bool)

(declare-fun tp!913363 () Bool)

(assert (=> b!2846953 (= e!1803821 (and tp!913362 tp!913363))))

(assert (=> b!2846489 (= tp!913001 e!1803821)))

(assert (= (and b!2846489 ((_ is Cons!33773) (exprs!3007 setElem!24908))) b!2846953))

(check-sat (not b!2846924) (not b!2846908) (not b!2846605) (not b!2846909) (not b!2846852) tp_is_empty!14721 (not b!2846796) (not b!2846820) (not bm!183558) (not b!2846931) (not b!2846869) (not d!825449) (not b!2846470) (not b!2846844) (not d!825411) (not b!2846760) (not d!825429) (not b!2846855) (not b!2846619) (not b!2846824) (not b!2846853) (not bm!183571) (not setNonEmpty!24942) (not b!2846950) (not d!825343) (not setNonEmpty!24925) (not d!825339) (not b!2846569) (not b!2846804) (not b!2846766) (not setNonEmpty!24940) (not b!2846806) (not b!2846915) (not d!825399) (not b!2846877) (not b_next!83393) (not b!2846625) (not b!2846894) (not b!2846866) (not b!2846902) (not b!2846559) (not b!2846951) (not bm!183546) (not b!2846935) (not d!825421) (not setNonEmpty!24918) (not setNonEmpty!24922) (not b!2846901) (not b_next!83389) (not b!2846944) (not d!825445) (not b!2846836) (not b!2846611) (not b!2846759) (not d!825353) (not b!2846527) (not b!2846771) (not b!2846589) (not b!2846803) (not setNonEmpty!24939) (not d!825391) (not d!825349) (not b!2846946) (not b!2846843) (not b!2846864) (not b!2846769) (not b!2846876) (not b!2846794) (not b!2846943) (not b!2846885) (not b!2846783) (not d!825403) (not b!2846927) (not b!2846735) (not b!2846835) (not b!2846884) (not mapNonEmpty!18631) (not b!2846674) (not b!2846641) (not b!2846742) (not b!2846805) (not b!2846922) (not b!2846782) (not b!2846761) (not b!2846841) (not bm!183567) (not b!2846893) (not d!825331) (not b!2846887) b_and!208927 (not setNonEmpty!24929) (not b!2846888) (not b!2846850) (not b!2846838) (not b!2846818) (not b!2846810) (not b!2846578) (not b!2846790) (not b!2846568) (not b!2846859) (not b!2846814) (not b!2846914) (not setNonEmpty!24933) (not b!2846910) (not b!2846842) (not b!2846883) (not b!2846616) (not b!2846756) (not b!2846778) (not b!2846757) (not d!825359) (not b!2846948) (not d!825401) (not b!2846787) (not b!2846868) (not b!2846737) (not d!825451) (not b!2846812) (not setNonEmpty!24936) (not d!825377) (not b!2846712) (not setNonEmpty!24917) (not b!2846808) (not d!825357) (not setNonEmpty!24937) (not b!2846857) (not d!825395) (not b!2846897) (not b!2846920) (not b!2846521) (not setNonEmpty!24934) (not d!825379) (not bm!183564) (not b!2846780) (not b!2846620) (not b!2846743) (not b!2846567) (not b!2846792) (not b!2846577) (not d!825405) (not setNonEmpty!24930) (not b!2846953) (not b!2846817) (not b!2846762) (not b!2846758) (not b!2846846) (not b!2846604) (not setNonEmpty!24931) (not b!2846903) (not b!2846851) (not b!2846795) (not b!2846739) (not b!2846807) (not b!2846828) b_and!208931 (not d!825415) (not b!2846934) (not bm!183559) (not b!2846822) (not b!2846904) (not b!2846660) (not d!825385) (not setNonEmpty!24935) (not d!825383) (not d!825419) (not b!2846889) (not b!2846947) (not d!825439) (not d!825365) (not b!2846609) (not b!2846572) (not b!2846713) (not b!2846847) (not b!2846777) (not d!825433) (not b!2846898) (not b!2846929) (not b!2846895) (not b!2846630) (not d!825341) (not b!2846832) (not setNonEmpty!24914) (not b!2846673) (not d!825447) (not b!2846854) (not b!2846788) (not b!2846816) (not b!2846763) (not b!2846681) (not b!2846608) (not b!2846774) (not setNonEmpty!24932) (not b!2846755) (not b!2846682) (not b!2846566) (not b!2846775) (not b!2846867) (not b!2846926) (not b!2846834) (not d!825351) (not b!2846848) (not b!2846764) (not b!2846617) (not d!825367) (not b!2846606) (not d!825361) (not b!2846849) (not setNonEmpty!24919) (not b!2846697) (not b!2846881) (not b!2846892) (not b!2846809) (not b!2846945) (not d!825373) (not d!825417) (not setNonEmpty!24924) (not d!825407) (not b!2846821) (not b!2846632) (not d!825435) (not b!2846907) (not b!2846837) (not b!2846558) (not d!825381) (not d!825389) (not b!2846749) (not b!2846603) (not b_next!83395) (not b!2846863) (not b!2846748) (not b!2846779) (not b!2846711) (not b!2846900) (not b!2846705) (not mapNonEmpty!18630) (not b!2846827) (not setNonEmpty!24943) (not d!825455) (not b!2846770) (not b!2846921) (not b!2846941) (not b!2846873) (not b!2846831) (not b!2846550) (not b!2846753) (not b!2846826) (not b!2846813) (not bm!183568) (not b!2846738) (not setNonEmpty!24920) (not b!2846839) (not b!2846590) (not b!2846933) (not b!2846856) (not b!2846890) (not bm!183547) (not b!2846860) (not setNonEmpty!24941) (not b!2846913) (not b!2846607) (not b!2846791) (not b!2846751) (not b!2846830) (not b!2846916) (not b!2846526) (not setNonEmpty!24921) (not b!2846797) (not d!825363) (not b!2846801) (not b!2846891) (not bm!183565) (not d!825333) (not setNonEmpty!24927) (not b!2846871) (not b!2846688) (not d!825375) b_and!208933 (not b!2846923) (not setNonEmpty!24926) (not setNonEmpty!24923) (not d!825441) (not b!2846917) (not b!2846928) (not b!2846912) (not b!2846936) (not b!2846879) (not b!2846872) (not b!2846905) (not b!2846845) (not b_next!83391) (not b!2846741) (not b!2846799) (not d!825453) (not b!2846750) (not b!2846768) (not setNonEmpty!24928) (not b!2846767) (not b!2846899) (not b!2846633) (not b!2846878) (not b!2846662) (not b!2846886) (not b!2846919) (not b!2846882) (not b!2846858) (not b!2846825) (not b!2846754) (not b!2846618) b_and!208929 (not b!2846800) (not b!2846952) (not b!2846786) (not b!2846635) (not d!825369) (not d!825437) (not b!2846784) (not b!2846683) (not d!825355) (not b!2846862) (not b!2846714) (not setNonEmpty!24938) (not d!825371) (not b!2846930) (not b!2846875) (not b!2846610) (not b!2846706) (not d!825409) (not b!2846773) (not b!2846906))
(check-sat (not b_next!83393) (not b_next!83389) b_and!208927 b_and!208931 (not b_next!83395) b_and!208933 (not b_next!83391) b_and!208929)
