; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266592 () Bool)

(assert start!266592)

(declare-fun b!2750190 () Bool)

(declare-fun b_free!77749 () Bool)

(declare-fun b_next!78453 () Bool)

(assert (=> b!2750190 (= b_free!77749 (not b_next!78453))))

(declare-fun tp!868300 () Bool)

(declare-fun b_and!202487 () Bool)

(assert (=> b!2750190 (= tp!868300 b_and!202487)))

(declare-fun b!2750199 () Bool)

(declare-fun b_free!77751 () Bool)

(declare-fun b_next!78455 () Bool)

(assert (=> b!2750199 (= b_free!77751 (not b_next!78455))))

(declare-fun tp!868303 () Bool)

(declare-fun b_and!202489 () Bool)

(assert (=> b!2750199 (= tp!868303 b_and!202489)))

(declare-fun b!2750188 () Bool)

(declare-fun b_free!77753 () Bool)

(declare-fun b_next!78457 () Bool)

(assert (=> b!2750188 (= b_free!77753 (not b_next!78457))))

(declare-fun tp!868293 () Bool)

(declare-fun b_and!202491 () Bool)

(assert (=> b!2750188 (= tp!868293 b_and!202491)))

(declare-fun b!2750203 () Bool)

(declare-fun b_free!77755 () Bool)

(declare-fun b_next!78459 () Bool)

(assert (=> b!2750203 (= b_free!77755 (not b_next!78459))))

(declare-fun tp!868292 () Bool)

(declare-fun b_and!202493 () Bool)

(assert (=> b!2750203 (= tp!868292 b_and!202493)))

(declare-fun b!2750185 () Bool)

(declare-fun e!1733601 () Bool)

(assert (=> b!2750185 (= e!1733601 false)))

(declare-datatypes ((C!16228 0))(
  ( (C!16229 (val!10048 Int)) )
))
(declare-datatypes ((List!31886 0))(
  ( (Nil!31786) (Cons!31786 (h!37206 C!16228) (t!227990 List!31886)) )
))
(declare-fun lt!972551 () List!31886)

(declare-datatypes ((IArray!19843 0))(
  ( (IArray!19844 (innerList!9979 List!31886)) )
))
(declare-datatypes ((Conc!9919 0))(
  ( (Node!9919 (left!24298 Conc!9919) (right!24628 Conc!9919) (csize!20068 Int) (cheight!10130 Int)) (Leaf!15105 (xs!13026 IArray!19843) (csize!20069 Int)) (Empty!9919) )
))
(declare-datatypes ((BalanceConc!19452 0))(
  ( (BalanceConc!19453 (c!445061 Conc!9919)) )
))
(declare-fun input!6491 () BalanceConc!19452)

(declare-fun list!12021 (BalanceConc!19452) List!31886)

(assert (=> b!2750185 (= lt!972551 (list!12021 input!6491))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8035 0))(
  ( (ElementMatch!8035 (c!445062 C!16228)) (Concat!13123 (regOne!16582 Regex!8035) (regTwo!16582 Regex!8035)) (EmptyExpr!8035) (Star!8035 (reg!8364 Regex!8035)) (EmptyLang!8035) (Union!8035 (regOne!16583 Regex!8035) (regTwo!16583 Regex!8035)) )
))
(declare-datatypes ((List!31887 0))(
  ( (Nil!31787) (Cons!31787 (h!37207 Regex!8035) (t!227991 List!31887)) )
))
(declare-datatypes ((Context!4506 0))(
  ( (Context!4507 (exprs!2753 List!31887)) )
))
(declare-fun lt!972552 () (InoxSet Context!4506))

(declare-fun r!15227 () Regex!8035)

(declare-fun focus!290 (Regex!8035) (InoxSet Context!4506))

(assert (=> b!2750185 (= lt!972552 (focus!290 r!15227))))

(declare-fun b!2750186 () Bool)

(declare-fun res!1153284 () Bool)

(assert (=> b!2750186 (=> (not res!1153284) (not e!1733601))))

(declare-datatypes ((tuple2!31722 0))(
  ( (tuple2!31723 (_1!18595 Context!4506) (_2!18595 C!16228)) )
))
(declare-datatypes ((tuple2!31724 0))(
  ( (tuple2!31725 (_1!18596 tuple2!31722) (_2!18596 (InoxSet Context!4506))) )
))
(declare-datatypes ((List!31888 0))(
  ( (Nil!31788) (Cons!31788 (h!37208 tuple2!31724) (t!227992 List!31888)) )
))
(declare-datatypes ((array!13101 0))(
  ( (array!13102 (arr!5847 (Array (_ BitVec 32) (_ BitVec 64))) (size!24546 (_ BitVec 32))) )
))
(declare-datatypes ((array!13103 0))(
  ( (array!13104 (arr!5848 (Array (_ BitVec 32) List!31888)) (size!24547 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7358 0))(
  ( (LongMapFixedSize!7359 (defaultEntry!4064 Int) (mask!9433 (_ BitVec 32)) (extraKeys!3928 (_ BitVec 32)) (zeroValue!3938 List!31888) (minValue!3938 List!31888) (_size!7401 (_ BitVec 32)) (_keys!3979 array!13101) (_values!3960 array!13103) (_vacant!3740 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14525 0))(
  ( (Cell!14526 (v!33397 LongMapFixedSize!7358)) )
))
(declare-datatypes ((MutLongMap!3679 0))(
  ( (LongMap!3679 (underlying!7561 Cell!14525)) (MutLongMapExt!3678 (__x!20687 Int)) )
))
(declare-datatypes ((Cell!14527 0))(
  ( (Cell!14528 (v!33398 MutLongMap!3679)) )
))
(declare-datatypes ((Hashable!3595 0))(
  ( (HashableExt!3594 (__x!20688 Int)) )
))
(declare-datatypes ((MutableMap!3585 0))(
  ( (MutableMapExt!3584 (__x!20689 Int)) (HashMap!3585 (underlying!7562 Cell!14527) (hashF!5627 Hashable!3595) (_size!7402 (_ BitVec 32)) (defaultValue!3756 Int)) )
))
(declare-datatypes ((CacheUp!2292 0))(
  ( (CacheUp!2293 (cache!3728 MutableMap!3585)) )
))
(declare-fun cacheUp!1023 () CacheUp!2292)

(declare-fun valid!2853 (CacheUp!2292) Bool)

(assert (=> b!2750186 (= res!1153284 (valid!2853 cacheUp!1023))))

(declare-fun res!1153286 () Bool)

(assert (=> start!266592 (=> (not res!1153286) (not e!1733601))))

(declare-fun validRegex!3331 (Regex!8035) Bool)

(assert (=> start!266592 (= res!1153286 (validRegex!3331 r!15227))))

(assert (=> start!266592 e!1733601))

(declare-fun e!1733595 () Bool)

(assert (=> start!266592 e!1733595))

(declare-fun e!1733590 () Bool)

(declare-fun inv!43169 (CacheUp!2292) Bool)

(assert (=> start!266592 (and (inv!43169 cacheUp!1023) e!1733590)))

(declare-datatypes ((tuple3!4528 0))(
  ( (tuple3!4529 (_1!18597 Regex!8035) (_2!18597 Context!4506) (_3!2734 C!16228)) )
))
(declare-datatypes ((tuple2!31726 0))(
  ( (tuple2!31727 (_1!18598 tuple3!4528) (_2!18598 (InoxSet Context!4506))) )
))
(declare-datatypes ((List!31889 0))(
  ( (Nil!31789) (Cons!31789 (h!37209 tuple2!31726) (t!227993 List!31889)) )
))
(declare-datatypes ((array!13105 0))(
  ( (array!13106 (arr!5849 (Array (_ BitVec 32) List!31889)) (size!24548 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7360 0))(
  ( (LongMapFixedSize!7361 (defaultEntry!4065 Int) (mask!9434 (_ BitVec 32)) (extraKeys!3929 (_ BitVec 32)) (zeroValue!3939 List!31889) (minValue!3939 List!31889) (_size!7403 (_ BitVec 32)) (_keys!3980 array!13101) (_values!3961 array!13105) (_vacant!3741 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14529 0))(
  ( (Cell!14530 (v!33399 LongMapFixedSize!7360)) )
))
(declare-datatypes ((MutLongMap!3680 0))(
  ( (LongMap!3680 (underlying!7563 Cell!14529)) (MutLongMapExt!3679 (__x!20690 Int)) )
))
(declare-datatypes ((Cell!14531 0))(
  ( (Cell!14532 (v!33400 MutLongMap!3680)) )
))
(declare-datatypes ((Hashable!3596 0))(
  ( (HashableExt!3595 (__x!20691 Int)) )
))
(declare-datatypes ((MutableMap!3586 0))(
  ( (MutableMapExt!3585 (__x!20692 Int)) (HashMap!3586 (underlying!7564 Cell!14531) (hashF!5628 Hashable!3596) (_size!7404 (_ BitVec 32)) (defaultValue!3757 Int)) )
))
(declare-datatypes ((CacheDown!2410 0))(
  ( (CacheDown!2411 (cache!3729 MutableMap!3586)) )
))
(declare-fun cacheDown!1142 () CacheDown!2410)

(declare-fun e!1733596 () Bool)

(declare-fun inv!43170 (CacheDown!2410) Bool)

(assert (=> start!266592 (and (inv!43170 cacheDown!1142) e!1733596)))

(declare-fun e!1733599 () Bool)

(declare-fun inv!43171 (BalanceConc!19452) Bool)

(assert (=> start!266592 (and (inv!43171 input!6491) e!1733599)))

(declare-fun b!2750187 () Bool)

(declare-fun tp!868287 () Bool)

(declare-fun tp!868294 () Bool)

(assert (=> b!2750187 (= e!1733595 (and tp!868287 tp!868294))))

(declare-fun e!1733591 () Bool)

(declare-fun e!1733592 () Bool)

(assert (=> b!2750188 (= e!1733591 (and e!1733592 tp!868293))))

(declare-fun b!2750189 () Bool)

(declare-fun e!1733587 () Bool)

(declare-fun e!1733602 () Bool)

(assert (=> b!2750189 (= e!1733587 e!1733602)))

(declare-fun mapNonEmpty!16759 () Bool)

(declare-fun mapRes!16759 () Bool)

(declare-fun tp!868302 () Bool)

(declare-fun tp!868297 () Bool)

(assert (=> mapNonEmpty!16759 (= mapRes!16759 (and tp!868302 tp!868297))))

(declare-fun mapKey!16759 () (_ BitVec 32))

(declare-fun mapValue!16760 () List!31889)

(declare-fun mapRest!16759 () (Array (_ BitVec 32) List!31889))

(assert (=> mapNonEmpty!16759 (= (arr!5849 (_values!3961 (v!33399 (underlying!7563 (v!33400 (underlying!7564 (cache!3729 cacheDown!1142))))))) (store mapRest!16759 mapKey!16759 mapValue!16760))))

(declare-fun tp!868290 () Bool)

(declare-fun e!1733598 () Bool)

(declare-fun tp!868304 () Bool)

(declare-fun array_inv!4178 (array!13101) Bool)

(declare-fun array_inv!4179 (array!13103) Bool)

(assert (=> b!2750190 (= e!1733602 (and tp!868300 tp!868290 tp!868304 (array_inv!4178 (_keys!3979 (v!33397 (underlying!7561 (v!33398 (underlying!7562 (cache!3728 cacheUp!1023))))))) (array_inv!4179 (_values!3960 (v!33397 (underlying!7561 (v!33398 (underlying!7562 (cache!3728 cacheUp!1023))))))) e!1733598))))

(declare-fun b!2750191 () Bool)

(declare-fun tp!868299 () Bool)

(declare-fun mapRes!16760 () Bool)

(assert (=> b!2750191 (= e!1733598 (and tp!868299 mapRes!16760))))

(declare-fun condMapEmpty!16759 () Bool)

(declare-fun mapDefault!16760 () List!31888)

(assert (=> b!2750191 (= condMapEmpty!16759 (= (arr!5848 (_values!3960 (v!33397 (underlying!7561 (v!33398 (underlying!7562 (cache!3728 cacheUp!1023))))))) ((as const (Array (_ BitVec 32) List!31888)) mapDefault!16760)))))

(declare-fun b!2750192 () Bool)

(declare-fun tp!868301 () Bool)

(assert (=> b!2750192 (= e!1733595 tp!868301)))

(declare-fun b!2750193 () Bool)

(declare-fun tp!868289 () Bool)

(declare-fun inv!43172 (Conc!9919) Bool)

(assert (=> b!2750193 (= e!1733599 (and (inv!43172 (c!445061 input!6491)) tp!868289))))

(declare-fun mapIsEmpty!16759 () Bool)

(assert (=> mapIsEmpty!16759 mapRes!16759))

(declare-fun b!2750194 () Bool)

(declare-fun e!1733585 () Bool)

(declare-fun tp!868305 () Bool)

(assert (=> b!2750194 (= e!1733585 (and tp!868305 mapRes!16759))))

(declare-fun condMapEmpty!16760 () Bool)

(declare-fun mapDefault!16759 () List!31889)

(assert (=> b!2750194 (= condMapEmpty!16760 (= (arr!5849 (_values!3961 (v!33399 (underlying!7563 (v!33400 (underlying!7564 (cache!3729 cacheDown!1142))))))) ((as const (Array (_ BitVec 32) List!31889)) mapDefault!16759)))))

(declare-fun b!2750195 () Bool)

(declare-fun tp_is_empty!13973 () Bool)

(assert (=> b!2750195 (= e!1733595 tp_is_empty!13973)))

(declare-fun b!2750196 () Bool)

(declare-fun e!1733586 () Bool)

(assert (=> b!2750196 (= e!1733590 e!1733586)))

(declare-fun b!2750197 () Bool)

(declare-fun e!1733593 () Bool)

(declare-fun e!1733588 () Bool)

(assert (=> b!2750197 (= e!1733593 e!1733588)))

(declare-fun b!2750198 () Bool)

(declare-fun e!1733600 () Bool)

(assert (=> b!2750198 (= e!1733600 e!1733587)))

(declare-fun tp!868291 () Bool)

(declare-fun tp!868298 () Bool)

(declare-fun array_inv!4180 (array!13105) Bool)

(assert (=> b!2750199 (= e!1733588 (and tp!868303 tp!868298 tp!868291 (array_inv!4178 (_keys!3980 (v!33399 (underlying!7563 (v!33400 (underlying!7564 (cache!3729 cacheDown!1142))))))) (array_inv!4180 (_values!3961 (v!33399 (underlying!7563 (v!33400 (underlying!7564 (cache!3729 cacheDown!1142))))))) e!1733585))))

(declare-fun b!2750200 () Bool)

(assert (=> b!2750200 (= e!1733596 e!1733591)))

(declare-fun mapNonEmpty!16760 () Bool)

(declare-fun tp!868288 () Bool)

(declare-fun tp!868295 () Bool)

(assert (=> mapNonEmpty!16760 (= mapRes!16760 (and tp!868288 tp!868295))))

(declare-fun mapValue!16759 () List!31888)

(declare-fun mapKey!16760 () (_ BitVec 32))

(declare-fun mapRest!16760 () (Array (_ BitVec 32) List!31888))

(assert (=> mapNonEmpty!16760 (= (arr!5848 (_values!3960 (v!33397 (underlying!7561 (v!33398 (underlying!7562 (cache!3728 cacheUp!1023))))))) (store mapRest!16760 mapKey!16760 mapValue!16759))))

(declare-fun b!2750201 () Bool)

(declare-fun e!1733603 () Bool)

(declare-fun lt!972550 () MutLongMap!3680)

(get-info :version)

(assert (=> b!2750201 (= e!1733592 (and e!1733603 ((_ is LongMap!3680) lt!972550)))))

(assert (=> b!2750201 (= lt!972550 (v!33400 (underlying!7564 (cache!3729 cacheDown!1142))))))

(declare-fun b!2750202 () Bool)

(assert (=> b!2750202 (= e!1733603 e!1733593)))

(declare-fun e!1733597 () Bool)

(assert (=> b!2750203 (= e!1733586 (and e!1733597 tp!868292))))

(declare-fun mapIsEmpty!16760 () Bool)

(assert (=> mapIsEmpty!16760 mapRes!16760))

(declare-fun b!2750204 () Bool)

(declare-fun tp!868306 () Bool)

(declare-fun tp!868296 () Bool)

(assert (=> b!2750204 (= e!1733595 (and tp!868306 tp!868296))))

(declare-fun b!2750205 () Bool)

(declare-fun res!1153285 () Bool)

(assert (=> b!2750205 (=> (not res!1153285) (not e!1733601))))

(declare-fun valid!2854 (CacheDown!2410) Bool)

(assert (=> b!2750205 (= res!1153285 (valid!2854 cacheDown!1142))))

(declare-fun b!2750206 () Bool)

(declare-fun lt!972549 () MutLongMap!3679)

(assert (=> b!2750206 (= e!1733597 (and e!1733600 ((_ is LongMap!3679) lt!972549)))))

(assert (=> b!2750206 (= lt!972549 (v!33398 (underlying!7562 (cache!3728 cacheUp!1023))))))

(assert (= (and start!266592 res!1153286) b!2750186))

(assert (= (and b!2750186 res!1153284) b!2750205))

(assert (= (and b!2750205 res!1153285) b!2750185))

(assert (= (and start!266592 ((_ is ElementMatch!8035) r!15227)) b!2750195))

(assert (= (and start!266592 ((_ is Concat!13123) r!15227)) b!2750187))

(assert (= (and start!266592 ((_ is Star!8035) r!15227)) b!2750192))

(assert (= (and start!266592 ((_ is Union!8035) r!15227)) b!2750204))

(assert (= (and b!2750191 condMapEmpty!16759) mapIsEmpty!16760))

(assert (= (and b!2750191 (not condMapEmpty!16759)) mapNonEmpty!16760))

(assert (= b!2750190 b!2750191))

(assert (= b!2750189 b!2750190))

(assert (= b!2750198 b!2750189))

(assert (= (and b!2750206 ((_ is LongMap!3679) (v!33398 (underlying!7562 (cache!3728 cacheUp!1023))))) b!2750198))

(assert (= b!2750203 b!2750206))

(assert (= (and b!2750196 ((_ is HashMap!3585) (cache!3728 cacheUp!1023))) b!2750203))

(assert (= start!266592 b!2750196))

(assert (= (and b!2750194 condMapEmpty!16760) mapIsEmpty!16759))

(assert (= (and b!2750194 (not condMapEmpty!16760)) mapNonEmpty!16759))

(assert (= b!2750199 b!2750194))

(assert (= b!2750197 b!2750199))

(assert (= b!2750202 b!2750197))

(assert (= (and b!2750201 ((_ is LongMap!3680) (v!33400 (underlying!7564 (cache!3729 cacheDown!1142))))) b!2750202))

(assert (= b!2750188 b!2750201))

(assert (= (and b!2750200 ((_ is HashMap!3586) (cache!3729 cacheDown!1142))) b!2750188))

(assert (= start!266592 b!2750200))

(assert (= start!266592 b!2750193))

(declare-fun m!3165325 () Bool)

(assert (=> b!2750185 m!3165325))

(declare-fun m!3165327 () Bool)

(assert (=> b!2750185 m!3165327))

(declare-fun m!3165329 () Bool)

(assert (=> mapNonEmpty!16760 m!3165329))

(declare-fun m!3165331 () Bool)

(assert (=> b!2750205 m!3165331))

(declare-fun m!3165333 () Bool)

(assert (=> b!2750199 m!3165333))

(declare-fun m!3165335 () Bool)

(assert (=> b!2750199 m!3165335))

(declare-fun m!3165337 () Bool)

(assert (=> b!2750186 m!3165337))

(declare-fun m!3165339 () Bool)

(assert (=> b!2750190 m!3165339))

(declare-fun m!3165341 () Bool)

(assert (=> b!2750190 m!3165341))

(declare-fun m!3165343 () Bool)

(assert (=> b!2750193 m!3165343))

(declare-fun m!3165345 () Bool)

(assert (=> start!266592 m!3165345))

(declare-fun m!3165347 () Bool)

(assert (=> start!266592 m!3165347))

(declare-fun m!3165349 () Bool)

(assert (=> start!266592 m!3165349))

(declare-fun m!3165351 () Bool)

(assert (=> start!266592 m!3165351))

(declare-fun m!3165353 () Bool)

(assert (=> mapNonEmpty!16759 m!3165353))

(check-sat (not b!2750204) (not start!266592) (not b_next!78455) (not b_next!78459) b_and!202487 (not b!2750191) tp_is_empty!13973 (not b!2750199) (not b!2750193) b_and!202493 (not b!2750190) (not mapNonEmpty!16759) (not b!2750186) (not b!2750205) (not b!2750194) (not b!2750192) b_and!202491 b_and!202489 (not b!2750185) (not b_next!78457) (not mapNonEmpty!16760) (not b_next!78453) (not b!2750187))
(check-sat (not b_next!78455) (not b_next!78459) b_and!202487 b_and!202491 b_and!202489 b_and!202493 (not b_next!78457) (not b_next!78453))
