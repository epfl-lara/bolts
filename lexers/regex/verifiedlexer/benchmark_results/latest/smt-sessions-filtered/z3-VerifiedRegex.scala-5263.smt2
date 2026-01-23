; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270262 () Bool)

(assert start!270262)

(declare-fun b!2795537 () Bool)

(declare-fun b_free!79157 () Bool)

(declare-fun b_next!79861 () Bool)

(assert (=> b!2795537 (= b_free!79157 (not b_next!79861))))

(declare-fun tp!889283 () Bool)

(declare-fun b_and!203895 () Bool)

(assert (=> b!2795537 (= tp!889283 b_and!203895)))

(declare-fun b!2795529 () Bool)

(declare-fun b_free!79159 () Bool)

(declare-fun b_next!79863 () Bool)

(assert (=> b!2795529 (= b_free!79159 (not b_next!79863))))

(declare-fun tp!889294 () Bool)

(declare-fun b_and!203897 () Bool)

(assert (=> b!2795529 (= tp!889294 b_and!203897)))

(declare-fun b!2795527 () Bool)

(declare-fun b_free!79161 () Bool)

(declare-fun b_next!79865 () Bool)

(assert (=> b!2795527 (= b_free!79161 (not b_next!79865))))

(declare-fun tp!889293 () Bool)

(declare-fun b_and!203899 () Bool)

(assert (=> b!2795527 (= tp!889293 b_and!203899)))

(declare-fun b!2795530 () Bool)

(declare-fun b_free!79163 () Bool)

(declare-fun b_next!79867 () Bool)

(assert (=> b!2795530 (= b_free!79163 (not b_next!79867))))

(declare-fun tp!889288 () Bool)

(declare-fun b_and!203901 () Bool)

(assert (=> b!2795530 (= tp!889288 b_and!203901)))

(declare-fun b!2795517 () Bool)

(declare-fun e!1765421 () Bool)

(declare-fun e!1765429 () Bool)

(assert (=> b!2795517 (= e!1765421 e!1765429)))

(declare-fun b!2795518 () Bool)

(declare-fun e!1765426 () Bool)

(declare-fun tp_is_empty!14195 () Bool)

(declare-fun tp!889284 () Bool)

(assert (=> b!2795518 (= e!1765426 (and tp_is_empty!14195 tp!889284))))

(declare-fun b!2795519 () Bool)

(declare-fun res!1165476 () Bool)

(declare-fun e!1765424 () Bool)

(assert (=> b!2795519 (=> (not res!1165476) (not e!1765424))))

(declare-datatypes ((Hashable!3893 0))(
  ( (HashableExt!3892 (__x!21581 Int)) )
))
(declare-datatypes ((C!16540 0))(
  ( (C!16541 (val!10204 Int)) )
))
(declare-datatypes ((Regex!8191 0))(
  ( (ElementMatch!8191 (c!453587 C!16540)) (Concat!13279 (regOne!16894 Regex!8191) (regTwo!16894 Regex!8191)) (EmptyExpr!8191) (Star!8191 (reg!8520 Regex!8191)) (EmptyLang!8191) (Union!8191 (regOne!16895 Regex!8191) (regTwo!16895 Regex!8191)) )
))
(declare-datatypes ((List!32528 0))(
  ( (Nil!32428) (Cons!32428 (h!37848 Regex!8191) (t!228688 List!32528)) )
))
(declare-datatypes ((Context!4818 0))(
  ( (Context!4819 (exprs!2909 List!32528)) )
))
(declare-datatypes ((tuple2!32948 0))(
  ( (tuple2!32949 (_1!19502 Context!4818) (_2!19502 C!16540)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32950 0))(
  ( (tuple2!32951 (_1!19503 tuple2!32948) (_2!19503 (InoxSet Context!4818))) )
))
(declare-datatypes ((List!32529 0))(
  ( (Nil!32429) (Cons!32429 (h!37849 tuple2!32950) (t!228689 List!32529)) )
))
(declare-datatypes ((array!14141 0))(
  ( (array!14142 (arr!6301 (Array (_ BitVec 32) List!32529)) (size!25273 (_ BitVec 32))) )
))
(declare-datatypes ((array!14143 0))(
  ( (array!14144 (arr!6302 (Array (_ BitVec 32) (_ BitVec 64))) (size!25274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7954 0))(
  ( (LongMapFixedSize!7955 (defaultEntry!4362 Int) (mask!9809 (_ BitVec 32)) (extraKeys!4226 (_ BitVec 32)) (zeroValue!4236 List!32529) (minValue!4236 List!32529) (_size!7997 (_ BitVec 32)) (_keys!4277 array!14143) (_values!4258 array!14141) (_vacant!4038 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15717 0))(
  ( (Cell!15718 (v!34032 LongMapFixedSize!7954)) )
))
(declare-datatypes ((MutLongMap!3977 0))(
  ( (LongMap!3977 (underlying!8157 Cell!15717)) (MutLongMapExt!3976 (__x!21582 Int)) )
))
(declare-datatypes ((Cell!15719 0))(
  ( (Cell!15720 (v!34033 MutLongMap!3977)) )
))
(declare-datatypes ((MutableMap!3883 0))(
  ( (MutableMapExt!3882 (__x!21583 Int)) (HashMap!3883 (underlying!8158 Cell!15719) (hashF!5925 Hashable!3893) (_size!7998 (_ BitVec 32)) (defaultValue!4054 Int)) )
))
(declare-datatypes ((CacheUp!2590 0))(
  ( (CacheUp!2591 (cache!4026 MutableMap!3883)) )
))
(declare-fun cacheUp!890 () CacheUp!2590)

(declare-fun valid!3119 (CacheUp!2590) Bool)

(assert (=> b!2795519 (= res!1165476 (valid!3119 cacheUp!890))))

(declare-fun b!2795520 () Bool)

(declare-fun e!1765422 () Bool)

(declare-datatypes ((List!32530 0))(
  ( (Nil!32430) (Cons!32430 (h!37850 C!16540) (t!228690 List!32530)) )
))
(declare-fun lt!998763 () List!32530)

(declare-fun testedSuffix!143 () List!32530)

(assert (=> b!2795520 (= e!1765422 (= lt!998763 testedSuffix!143))))

(assert (=> b!2795520 (= testedSuffix!143 lt!998763)))

(declare-fun lt!998766 () List!32530)

(declare-fun testedP!183 () List!32530)

(declare-datatypes ((Unit!46584 0))(
  ( (Unit!46585) )
))
(declare-fun lt!998764 () Unit!46584)

(declare-fun lemmaSamePrefixThenSameSuffix!1191 (List!32530 List!32530 List!32530 List!32530 List!32530) Unit!46584)

(assert (=> b!2795520 (= lt!998764 (lemmaSamePrefixThenSameSuffix!1191 testedP!183 testedSuffix!143 testedP!183 lt!998763 lt!998766))))

(declare-fun getSuffix!1293 (List!32530 List!32530) List!32530)

(assert (=> b!2795520 (= lt!998763 (getSuffix!1293 lt!998766 testedP!183))))

(declare-fun mapNonEmpty!18099 () Bool)

(declare-fun mapRes!18099 () Bool)

(declare-fun tp!889290 () Bool)

(declare-fun tp!889285 () Bool)

(assert (=> mapNonEmpty!18099 (= mapRes!18099 (and tp!889290 tp!889285))))

(declare-fun mapKey!18100 () (_ BitVec 32))

(declare-fun mapRest!18099 () (Array (_ BitVec 32) List!32529))

(declare-fun mapValue!18099 () List!32529)

(assert (=> mapNonEmpty!18099 (= (arr!6301 (_values!4258 (v!34032 (underlying!8157 (v!34033 (underlying!8158 (cache!4026 cacheUp!890))))))) (store mapRest!18099 mapKey!18100 mapValue!18099))))

(declare-fun b!2795521 () Bool)

(declare-fun res!1165475 () Bool)

(assert (=> b!2795521 (=> (not res!1165475) (not e!1765424))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((IArray!20115 0))(
  ( (IArray!20116 (innerList!10115 List!32530)) )
))
(declare-datatypes ((Conc!10055 0))(
  ( (Node!10055 (left!24548 Conc!10055) (right!24878 Conc!10055) (csize!20340 Int) (cheight!10266 Int)) (Leaf!15319 (xs!13167 IArray!20115) (csize!20341 Int)) (Empty!10055) )
))
(declare-datatypes ((BalanceConc!19724 0))(
  ( (BalanceConc!19725 (c!453588 Conc!10055)) )
))
(declare-fun totalInput!758 () BalanceConc!19724)

(declare-fun size!25275 (BalanceConc!19724) Int)

(assert (=> b!2795521 (= res!1165475 (= totalInputSize!205 (size!25275 totalInput!758)))))

(declare-fun b!2795522 () Bool)

(declare-fun e!1765437 () Bool)

(declare-fun tp!889281 () Bool)

(declare-fun inv!44055 (Conc!10055) Bool)

(assert (=> b!2795522 (= e!1765437 (and (inv!44055 (c!453588 totalInput!758)) tp!889281))))

(declare-fun b!2795523 () Bool)

(declare-fun res!1165478 () Bool)

(assert (=> b!2795523 (=> (not res!1165478) (not e!1765424))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!25276 (List!32530) Int)

(assert (=> b!2795523 (= res!1165478 (= testedPSize!143 (size!25276 testedP!183)))))

(declare-fun b!2795524 () Bool)

(declare-fun res!1165480 () Bool)

(assert (=> b!2795524 (=> (not res!1165480) (not e!1765424))))

(declare-datatypes ((tuple3!5116 0))(
  ( (tuple3!5117 (_1!19504 Regex!8191) (_2!19504 Context!4818) (_3!3028 C!16540)) )
))
(declare-datatypes ((tuple2!32952 0))(
  ( (tuple2!32953 (_1!19505 tuple3!5116) (_2!19505 (InoxSet Context!4818))) )
))
(declare-datatypes ((List!32531 0))(
  ( (Nil!32431) (Cons!32431 (h!37851 tuple2!32952) (t!228691 List!32531)) )
))
(declare-datatypes ((array!14145 0))(
  ( (array!14146 (arr!6303 (Array (_ BitVec 32) List!32531)) (size!25277 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7956 0))(
  ( (LongMapFixedSize!7957 (defaultEntry!4363 Int) (mask!9810 (_ BitVec 32)) (extraKeys!4227 (_ BitVec 32)) (zeroValue!4237 List!32531) (minValue!4237 List!32531) (_size!7999 (_ BitVec 32)) (_keys!4278 array!14143) (_values!4259 array!14145) (_vacant!4039 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15721 0))(
  ( (Cell!15722 (v!34034 LongMapFixedSize!7956)) )
))
(declare-datatypes ((MutLongMap!3978 0))(
  ( (LongMap!3978 (underlying!8159 Cell!15721)) (MutLongMapExt!3977 (__x!21584 Int)) )
))
(declare-datatypes ((Cell!15723 0))(
  ( (Cell!15724 (v!34035 MutLongMap!3978)) )
))
(declare-datatypes ((Hashable!3894 0))(
  ( (HashableExt!3893 (__x!21585 Int)) )
))
(declare-datatypes ((MutableMap!3884 0))(
  ( (MutableMapExt!3883 (__x!21586 Int)) (HashMap!3884 (underlying!8160 Cell!15723) (hashF!5926 Hashable!3894) (_size!8000 (_ BitVec 32)) (defaultValue!4055 Int)) )
))
(declare-datatypes ((CacheDown!2708 0))(
  ( (CacheDown!2709 (cache!4027 MutableMap!3884)) )
))
(declare-fun cacheDown!1009 () CacheDown!2708)

(declare-fun valid!3120 (CacheDown!2708) Bool)

(assert (=> b!2795524 (= res!1165480 (valid!3120 cacheDown!1009))))

(declare-fun b!2795525 () Bool)

(declare-fun e!1765427 () Bool)

(declare-fun tp!889282 () Bool)

(declare-fun mapRes!18100 () Bool)

(assert (=> b!2795525 (= e!1765427 (and tp!889282 mapRes!18100))))

(declare-fun condMapEmpty!18100 () Bool)

(declare-fun mapDefault!18100 () List!32531)

(assert (=> b!2795525 (= condMapEmpty!18100 (= (arr!6303 (_values!4259 (v!34034 (underlying!8159 (v!34035 (underlying!8160 (cache!4027 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32531)) mapDefault!18100)))))

(declare-fun res!1165477 () Bool)

(assert (=> start!270262 (=> (not res!1165477) (not e!1765424))))

(declare-fun lt!998761 () List!32530)

(assert (=> start!270262 (= res!1165477 (= lt!998761 lt!998766))))

(declare-fun list!12190 (BalanceConc!19724) List!32530)

(assert (=> start!270262 (= lt!998766 (list!12190 totalInput!758))))

(declare-fun ++!8004 (List!32530 List!32530) List!32530)

(assert (=> start!270262 (= lt!998761 (++!8004 testedP!183 testedSuffix!143))))

(assert (=> start!270262 e!1765424))

(declare-fun inv!44056 (BalanceConc!19724) Bool)

(assert (=> start!270262 (and (inv!44056 totalInput!758) e!1765437)))

(assert (=> start!270262 true))

(assert (=> start!270262 e!1765426))

(declare-fun e!1765435 () Bool)

(assert (=> start!270262 e!1765435))

(declare-fun e!1765436 () Bool)

(declare-fun inv!44057 (CacheDown!2708) Bool)

(assert (=> start!270262 (and (inv!44057 cacheDown!1009) e!1765436)))

(declare-fun e!1765434 () Bool)

(declare-fun inv!44058 (CacheUp!2590) Bool)

(assert (=> start!270262 (and (inv!44058 cacheUp!890) e!1765434)))

(declare-fun b!2795516 () Bool)

(declare-fun e!1765431 () Bool)

(declare-fun e!1765423 () Bool)

(declare-fun lt!998762 () MutLongMap!3977)

(get-info :version)

(assert (=> b!2795516 (= e!1765431 (and e!1765423 ((_ is LongMap!3977) lt!998762)))))

(assert (=> b!2795516 (= lt!998762 (v!34033 (underlying!8158 (cache!4026 cacheUp!890))))))

(declare-fun b!2795526 () Bool)

(assert (=> b!2795526 (= e!1765424 (not e!1765422))))

(declare-fun res!1165479 () Bool)

(assert (=> b!2795526 (=> res!1165479 e!1765422)))

(declare-fun isPrefix!2616 (List!32530 List!32530) Bool)

(assert (=> b!2795526 (= res!1165479 (not (isPrefix!2616 testedP!183 lt!998766)))))

(assert (=> b!2795526 (isPrefix!2616 testedP!183 lt!998761)))

(declare-fun lt!998765 () Unit!46584)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1725 (List!32530 List!32530) Unit!46584)

(assert (=> b!2795526 (= lt!998765 (lemmaConcatTwoListThenFirstIsPrefix!1725 testedP!183 testedSuffix!143))))

(declare-fun e!1765432 () Bool)

(assert (=> b!2795527 (= e!1765432 (and e!1765431 tp!889293))))

(declare-fun mapIsEmpty!18099 () Bool)

(assert (=> mapIsEmpty!18099 mapRes!18099))

(declare-fun b!2795528 () Bool)

(declare-fun e!1765428 () Bool)

(assert (=> b!2795528 (= e!1765436 e!1765428)))

(declare-fun tp!889286 () Bool)

(declare-fun e!1765430 () Bool)

(declare-fun tp!889292 () Bool)

(declare-fun array_inv!4512 (array!14143) Bool)

(declare-fun array_inv!4513 (array!14145) Bool)

(assert (=> b!2795529 (= e!1765430 (and tp!889294 tp!889286 tp!889292 (array_inv!4512 (_keys!4278 (v!34034 (underlying!8159 (v!34035 (underlying!8160 (cache!4027 cacheDown!1009))))))) (array_inv!4513 (_values!4259 (v!34034 (underlying!8159 (v!34035 (underlying!8160 (cache!4027 cacheDown!1009))))))) e!1765427))))

(declare-fun e!1765425 () Bool)

(assert (=> b!2795530 (= e!1765428 (and e!1765425 tp!889288))))

(declare-fun b!2795531 () Bool)

(declare-fun lt!998760 () MutLongMap!3978)

(assert (=> b!2795531 (= e!1765425 (and e!1765421 ((_ is LongMap!3978) lt!998760)))))

(assert (=> b!2795531 (= lt!998760 (v!34035 (underlying!8160 (cache!4027 cacheDown!1009))))))

(declare-fun b!2795532 () Bool)

(declare-fun tp!889289 () Bool)

(assert (=> b!2795532 (= e!1765435 (and tp_is_empty!14195 tp!889289))))

(declare-fun mapNonEmpty!18100 () Bool)

(declare-fun tp!889280 () Bool)

(declare-fun tp!889279 () Bool)

(assert (=> mapNonEmpty!18100 (= mapRes!18100 (and tp!889280 tp!889279))))

(declare-fun mapRest!18100 () (Array (_ BitVec 32) List!32531))

(declare-fun mapKey!18099 () (_ BitVec 32))

(declare-fun mapValue!18100 () List!32531)

(assert (=> mapNonEmpty!18100 (= (arr!6303 (_values!4259 (v!34034 (underlying!8159 (v!34035 (underlying!8160 (cache!4027 cacheDown!1009))))))) (store mapRest!18100 mapKey!18099 mapValue!18100))))

(declare-fun b!2795533 () Bool)

(declare-fun e!1765419 () Bool)

(declare-fun e!1765438 () Bool)

(assert (=> b!2795533 (= e!1765419 e!1765438)))

(declare-fun b!2795534 () Bool)

(assert (=> b!2795534 (= e!1765429 e!1765430)))

(declare-fun b!2795535 () Bool)

(declare-fun e!1765433 () Bool)

(declare-fun tp!889291 () Bool)

(assert (=> b!2795535 (= e!1765433 (and tp!889291 mapRes!18099))))

(declare-fun condMapEmpty!18099 () Bool)

(declare-fun mapDefault!18099 () List!32529)

(assert (=> b!2795535 (= condMapEmpty!18099 (= (arr!6301 (_values!4258 (v!34032 (underlying!8157 (v!34033 (underlying!8158 (cache!4026 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32529)) mapDefault!18099)))))

(declare-fun mapIsEmpty!18100 () Bool)

(assert (=> mapIsEmpty!18100 mapRes!18100))

(declare-fun b!2795536 () Bool)

(assert (=> b!2795536 (= e!1765423 e!1765419)))

(declare-fun tp!889287 () Bool)

(declare-fun tp!889278 () Bool)

(declare-fun array_inv!4514 (array!14141) Bool)

(assert (=> b!2795537 (= e!1765438 (and tp!889283 tp!889278 tp!889287 (array_inv!4512 (_keys!4277 (v!34032 (underlying!8157 (v!34033 (underlying!8158 (cache!4026 cacheUp!890))))))) (array_inv!4514 (_values!4258 (v!34032 (underlying!8157 (v!34033 (underlying!8158 (cache!4026 cacheUp!890))))))) e!1765433))))

(declare-fun b!2795538 () Bool)

(assert (=> b!2795538 (= e!1765434 e!1765432)))

(assert (= (and start!270262 res!1165477) b!2795523))

(assert (= (and b!2795523 res!1165478) b!2795521))

(assert (= (and b!2795521 res!1165475) b!2795519))

(assert (= (and b!2795519 res!1165476) b!2795524))

(assert (= (and b!2795524 res!1165480) b!2795526))

(assert (= (and b!2795526 (not res!1165479)) b!2795520))

(assert (= start!270262 b!2795522))

(assert (= (and start!270262 ((_ is Cons!32430) testedP!183)) b!2795518))

(assert (= (and start!270262 ((_ is Cons!32430) testedSuffix!143)) b!2795532))

(assert (= (and b!2795525 condMapEmpty!18100) mapIsEmpty!18100))

(assert (= (and b!2795525 (not condMapEmpty!18100)) mapNonEmpty!18100))

(assert (= b!2795529 b!2795525))

(assert (= b!2795534 b!2795529))

(assert (= b!2795517 b!2795534))

(assert (= (and b!2795531 ((_ is LongMap!3978) (v!34035 (underlying!8160 (cache!4027 cacheDown!1009))))) b!2795517))

(assert (= b!2795530 b!2795531))

(assert (= (and b!2795528 ((_ is HashMap!3884) (cache!4027 cacheDown!1009))) b!2795530))

(assert (= start!270262 b!2795528))

(assert (= (and b!2795535 condMapEmpty!18099) mapIsEmpty!18099))

(assert (= (and b!2795535 (not condMapEmpty!18099)) mapNonEmpty!18099))

(assert (= b!2795537 b!2795535))

(assert (= b!2795533 b!2795537))

(assert (= b!2795536 b!2795533))

(assert (= (and b!2795516 ((_ is LongMap!3977) (v!34033 (underlying!8158 (cache!4026 cacheUp!890))))) b!2795536))

(assert (= b!2795527 b!2795516))

(assert (= (and b!2795538 ((_ is HashMap!3883) (cache!4026 cacheUp!890))) b!2795527))

(assert (= start!270262 b!2795538))

(declare-fun m!3225437 () Bool)

(assert (=> mapNonEmpty!18100 m!3225437))

(declare-fun m!3225439 () Bool)

(assert (=> start!270262 m!3225439))

(declare-fun m!3225441 () Bool)

(assert (=> start!270262 m!3225441))

(declare-fun m!3225443 () Bool)

(assert (=> start!270262 m!3225443))

(declare-fun m!3225445 () Bool)

(assert (=> start!270262 m!3225445))

(declare-fun m!3225447 () Bool)

(assert (=> start!270262 m!3225447))

(declare-fun m!3225449 () Bool)

(assert (=> b!2795529 m!3225449))

(declare-fun m!3225451 () Bool)

(assert (=> b!2795529 m!3225451))

(declare-fun m!3225453 () Bool)

(assert (=> mapNonEmpty!18099 m!3225453))

(declare-fun m!3225455 () Bool)

(assert (=> b!2795519 m!3225455))

(declare-fun m!3225457 () Bool)

(assert (=> b!2795522 m!3225457))

(declare-fun m!3225459 () Bool)

(assert (=> b!2795521 m!3225459))

(declare-fun m!3225461 () Bool)

(assert (=> b!2795520 m!3225461))

(declare-fun m!3225463 () Bool)

(assert (=> b!2795520 m!3225463))

(declare-fun m!3225465 () Bool)

(assert (=> b!2795523 m!3225465))

(declare-fun m!3225467 () Bool)

(assert (=> b!2795526 m!3225467))

(declare-fun m!3225469 () Bool)

(assert (=> b!2795526 m!3225469))

(declare-fun m!3225471 () Bool)

(assert (=> b!2795526 m!3225471))

(declare-fun m!3225473 () Bool)

(assert (=> b!2795537 m!3225473))

(declare-fun m!3225475 () Bool)

(assert (=> b!2795537 m!3225475))

(declare-fun m!3225477 () Bool)

(assert (=> b!2795524 m!3225477))

(check-sat (not b!2795523) (not b!2795526) (not b!2795522) (not b!2795518) (not b!2795521) (not b!2795535) (not start!270262) (not b_next!79865) (not b_next!79861) (not mapNonEmpty!18099) (not b_next!79863) (not b!2795532) (not b!2795524) (not b!2795537) tp_is_empty!14195 (not mapNonEmpty!18100) b_and!203897 (not b!2795529) (not b!2795519) b_and!203899 b_and!203901 b_and!203895 (not b!2795520) (not b!2795525) (not b_next!79867))
(check-sat b_and!203897 (not b_next!79865) b_and!203895 (not b_next!79861) (not b_next!79867) (not b_next!79863) b_and!203899 b_and!203901)
