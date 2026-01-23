; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407734 () Bool)

(assert start!407734)

(declare-fun b_free!126661 () Bool)

(declare-fun b_next!127365 () Bool)

(assert (=> start!407734 (= b_free!126661 (not b_next!127365))))

(declare-fun tp!1306177 () Bool)

(declare-fun b_and!337511 () Bool)

(assert (=> start!407734 (= tp!1306177 b_and!337511)))

(declare-datatypes ((T!79294 0))(
  ( (T!79295 (val!15203 Int)) )
))
(declare-datatypes ((List!47332 0))(
  ( (Nil!47208) (Cons!47208 (h!52628 T!79294) (t!352909 List!47332)) )
))
(declare-fun lt!1509841 () List!47332)

(declare-fun b!4256090 () Bool)

(declare-fun e!2643554 () Bool)

(declare-fun lt!1509842 () List!47332)

(declare-fun f!428 () Int)

(declare-datatypes ((B!2793 0))(
  ( (B!2794 (val!15204 Int)) )
))
(declare-datatypes ((List!47333 0))(
  ( (Nil!47209) (Cons!47209 (h!52629 B!2793) (t!352910 List!47333)) )
))
(declare-fun map!9638 (List!47332 Int) List!47333)

(declare-fun ++!12009 (List!47332 List!47332) List!47332)

(declare-fun ++!12010 (List!47333 List!47333) List!47333)

(assert (=> b!4256090 (= e!2643554 (not (= (map!9638 (++!12009 lt!1509841 lt!1509842) f!428) (++!12010 (map!9638 lt!1509841 f!428) (map!9638 lt!1509842 f!428)))))))

(declare-datatypes ((Unit!66123 0))(
  ( (Unit!66124) )
))
(declare-fun lt!1509840 () Unit!66123)

(declare-fun lemmaMapConcat!24 (List!47332 List!47332 Int) Unit!66123)

(assert (=> b!4256090 (= lt!1509840 (lemmaMapConcat!24 lt!1509841 lt!1509842 f!428))))

(declare-datatypes ((IArray!28439 0))(
  ( (IArray!28440 (innerList!14277 List!47332)) )
))
(declare-datatypes ((Conc!14217 0))(
  ( (Node!14217 (left!34985 Conc!14217) (right!35315 Conc!14217) (csize!28664 Int) (cheight!14428 Int)) (Leaf!21978 (xs!17523 IArray!28439) (csize!28665 Int)) (Empty!14217) )
))
(declare-fun t!4386 () Conc!14217)

(declare-fun list!17015 (Conc!14217) List!47332)

(assert (=> b!4256090 (= lt!1509842 (list!17015 (right!35315 t!4386)))))

(assert (=> b!4256090 (= lt!1509841 (list!17015 (left!34985 t!4386)))))

(declare-fun b!4256091 () Bool)

(declare-fun res!1749577 () Bool)

(assert (=> b!4256091 (=> (not res!1749577) (not e!2643554))))

(get-info :version)

(assert (=> b!4256091 (= res!1749577 (and (not ((_ is Empty!14217) t!4386)) (not ((_ is Leaf!21978) t!4386))))))

(declare-fun b!4256092 () Bool)

(declare-fun e!2643552 () Bool)

(declare-fun tp!1306178 () Bool)

(assert (=> b!4256092 (= e!2643552 tp!1306178)))

(declare-fun b!4256094 () Bool)

(declare-fun tp!1306176 () Bool)

(declare-fun tp!1306175 () Bool)

(declare-fun e!2643553 () Bool)

(declare-fun inv!62025 (Conc!14217) Bool)

(assert (=> b!4256094 (= e!2643553 (and (inv!62025 (left!34985 t!4386)) tp!1306175 (inv!62025 (right!35315 t!4386)) tp!1306176))))

(declare-fun res!1749576 () Bool)

(assert (=> start!407734 (=> (not res!1749576) (not e!2643554))))

(declare-fun isBalanced!3780 (Conc!14217) Bool)

(assert (=> start!407734 (= res!1749576 (isBalanced!3780 t!4386))))

(assert (=> start!407734 e!2643554))

(assert (=> start!407734 (and (inv!62025 t!4386) e!2643553)))

(assert (=> start!407734 tp!1306177))

(declare-fun b!4256093 () Bool)

(declare-fun inv!62026 (IArray!28439) Bool)

(assert (=> b!4256093 (= e!2643553 (and (inv!62026 (xs!17523 t!4386)) e!2643552))))

(assert (= (and start!407734 res!1749576) b!4256091))

(assert (= (and b!4256091 res!1749577) b!4256090))

(assert (= (and start!407734 ((_ is Node!14217) t!4386)) b!4256094))

(assert (= b!4256093 b!4256092))

(assert (= (and start!407734 ((_ is Leaf!21978) t!4386)) b!4256093))

(declare-fun m!4841265 () Bool)

(assert (=> b!4256090 m!4841265))

(declare-fun m!4841267 () Bool)

(assert (=> b!4256090 m!4841267))

(declare-fun m!4841269 () Bool)

(assert (=> b!4256090 m!4841269))

(declare-fun m!4841271 () Bool)

(assert (=> b!4256090 m!4841271))

(declare-fun m!4841273 () Bool)

(assert (=> b!4256090 m!4841273))

(declare-fun m!4841275 () Bool)

(assert (=> b!4256090 m!4841275))

(assert (=> b!4256090 m!4841271))

(declare-fun m!4841277 () Bool)

(assert (=> b!4256090 m!4841277))

(declare-fun m!4841279 () Bool)

(assert (=> b!4256090 m!4841279))

(assert (=> b!4256090 m!4841267))

(assert (=> b!4256090 m!4841265))

(declare-fun m!4841281 () Bool)

(assert (=> b!4256094 m!4841281))

(declare-fun m!4841283 () Bool)

(assert (=> b!4256094 m!4841283))

(declare-fun m!4841285 () Bool)

(assert (=> start!407734 m!4841285))

(declare-fun m!4841287 () Bool)

(assert (=> start!407734 m!4841287))

(declare-fun m!4841289 () Bool)

(assert (=> b!4256093 m!4841289))

(check-sat (not b!4256090) (not start!407734) (not b!4256092) b_and!337511 (not b!4256093) (not b_next!127365) (not b!4256094))
(check-sat b_and!337511 (not b_next!127365))
(get-model)

(declare-fun d!1251533 () Bool)

(declare-fun size!34551 (List!47332) Int)

(assert (=> d!1251533 (= (inv!62026 (xs!17523 t!4386)) (<= (size!34551 (innerList!14277 (xs!17523 t!4386))) 2147483647))))

(declare-fun bs!598818 () Bool)

(assert (= bs!598818 d!1251533))

(declare-fun m!4841291 () Bool)

(assert (=> bs!598818 m!4841291))

(assert (=> b!4256093 d!1251533))

(declare-fun d!1251537 () Bool)

(declare-fun c!722640 () Bool)

(assert (=> d!1251537 (= c!722640 ((_ is Node!14217) (left!34985 t!4386)))))

(declare-fun e!2643567 () Bool)

(assert (=> d!1251537 (= (inv!62025 (left!34985 t!4386)) e!2643567)))

(declare-fun b!4256113 () Bool)

(declare-fun inv!62029 (Conc!14217) Bool)

(assert (=> b!4256113 (= e!2643567 (inv!62029 (left!34985 t!4386)))))

(declare-fun b!4256114 () Bool)

(declare-fun e!2643568 () Bool)

(assert (=> b!4256114 (= e!2643567 e!2643568)))

(declare-fun res!1749584 () Bool)

(assert (=> b!4256114 (= res!1749584 (not ((_ is Leaf!21978) (left!34985 t!4386))))))

(assert (=> b!4256114 (=> res!1749584 e!2643568)))

(declare-fun b!4256115 () Bool)

(declare-fun inv!62030 (Conc!14217) Bool)

(assert (=> b!4256115 (= e!2643568 (inv!62030 (left!34985 t!4386)))))

(assert (= (and d!1251537 c!722640) b!4256113))

(assert (= (and d!1251537 (not c!722640)) b!4256114))

(assert (= (and b!4256114 (not res!1749584)) b!4256115))

(declare-fun m!4841301 () Bool)

(assert (=> b!4256113 m!4841301))

(declare-fun m!4841303 () Bool)

(assert (=> b!4256115 m!4841303))

(assert (=> b!4256094 d!1251537))

(declare-fun d!1251543 () Bool)

(declare-fun c!722641 () Bool)

(assert (=> d!1251543 (= c!722641 ((_ is Node!14217) (right!35315 t!4386)))))

(declare-fun e!2643569 () Bool)

(assert (=> d!1251543 (= (inv!62025 (right!35315 t!4386)) e!2643569)))

(declare-fun b!4256116 () Bool)

(assert (=> b!4256116 (= e!2643569 (inv!62029 (right!35315 t!4386)))))

(declare-fun b!4256117 () Bool)

(declare-fun e!2643570 () Bool)

(assert (=> b!4256117 (= e!2643569 e!2643570)))

(declare-fun res!1749585 () Bool)

(assert (=> b!4256117 (= res!1749585 (not ((_ is Leaf!21978) (right!35315 t!4386))))))

(assert (=> b!4256117 (=> res!1749585 e!2643570)))

(declare-fun b!4256118 () Bool)

(assert (=> b!4256118 (= e!2643570 (inv!62030 (right!35315 t!4386)))))

(assert (= (and d!1251543 c!722641) b!4256116))

(assert (= (and d!1251543 (not c!722641)) b!4256117))

(assert (= (and b!4256117 (not res!1749585)) b!4256118))

(declare-fun m!4841305 () Bool)

(assert (=> b!4256116 m!4841305))

(declare-fun m!4841307 () Bool)

(assert (=> b!4256118 m!4841307))

(assert (=> b!4256094 d!1251543))

(declare-fun d!1251545 () Bool)

(declare-fun lt!1509845 () List!47333)

(declare-fun size!34553 (List!47333) Int)

(assert (=> d!1251545 (= (size!34553 lt!1509845) (size!34551 (++!12009 lt!1509841 lt!1509842)))))

(declare-fun e!2643575 () List!47333)

(assert (=> d!1251545 (= lt!1509845 e!2643575)))

(declare-fun c!722644 () Bool)

(assert (=> d!1251545 (= c!722644 ((_ is Nil!47208) (++!12009 lt!1509841 lt!1509842)))))

(assert (=> d!1251545 (= (map!9638 (++!12009 lt!1509841 lt!1509842) f!428) lt!1509845)))

(declare-fun b!4256123 () Bool)

(assert (=> b!4256123 (= e!2643575 Nil!47209)))

(declare-fun b!4256124 () Bool)

(declare-fun $colon$colon!618 (List!47333 B!2793) List!47333)

(declare-fun dynLambda!20206 (Int T!79294) B!2793)

(assert (=> b!4256124 (= e!2643575 ($colon$colon!618 (map!9638 (t!352909 (++!12009 lt!1509841 lt!1509842)) f!428) (dynLambda!20206 f!428 (h!52628 (++!12009 lt!1509841 lt!1509842)))))))

(assert (= (and d!1251545 c!722644) b!4256123))

(assert (= (and d!1251545 (not c!722644)) b!4256124))

(declare-fun b_lambda!125387 () Bool)

(assert (=> (not b_lambda!125387) (not b!4256124)))

(declare-fun t!352913 () Bool)

(declare-fun tb!256731 () Bool)

(assert (=> (and start!407734 (= f!428 f!428) t!352913) tb!256731))

(declare-fun result!313192 () Bool)

(declare-fun tp_is_empty!22815 () Bool)

(assert (=> tb!256731 (= result!313192 tp_is_empty!22815)))

(assert (=> b!4256124 t!352913))

(declare-fun b_and!337513 () Bool)

(assert (= b_and!337511 (and (=> t!352913 result!313192) b_and!337513)))

(declare-fun m!4841311 () Bool)

(assert (=> d!1251545 m!4841311))

(assert (=> d!1251545 m!4841271))

(declare-fun m!4841313 () Bool)

(assert (=> d!1251545 m!4841313))

(declare-fun m!4841315 () Bool)

(assert (=> b!4256124 m!4841315))

(declare-fun m!4841317 () Bool)

(assert (=> b!4256124 m!4841317))

(assert (=> b!4256124 m!4841315))

(assert (=> b!4256124 m!4841317))

(declare-fun m!4841319 () Bool)

(assert (=> b!4256124 m!4841319))

(assert (=> b!4256090 d!1251545))

(declare-fun d!1251549 () Bool)

(declare-fun lt!1509846 () List!47333)

(assert (=> d!1251549 (= (size!34553 lt!1509846) (size!34551 lt!1509841))))

(declare-fun e!2643578 () List!47333)

(assert (=> d!1251549 (= lt!1509846 e!2643578)))

(declare-fun c!722645 () Bool)

(assert (=> d!1251549 (= c!722645 ((_ is Nil!47208) lt!1509841))))

(assert (=> d!1251549 (= (map!9638 lt!1509841 f!428) lt!1509846)))

(declare-fun b!4256139 () Bool)

(assert (=> b!4256139 (= e!2643578 Nil!47209)))

(declare-fun b!4256140 () Bool)

(assert (=> b!4256140 (= e!2643578 ($colon$colon!618 (map!9638 (t!352909 lt!1509841) f!428) (dynLambda!20206 f!428 (h!52628 lt!1509841))))))

(assert (= (and d!1251549 c!722645) b!4256139))

(assert (= (and d!1251549 (not c!722645)) b!4256140))

(declare-fun b_lambda!125389 () Bool)

(assert (=> (not b_lambda!125389) (not b!4256140)))

(declare-fun t!352915 () Bool)

(declare-fun tb!256733 () Bool)

(assert (=> (and start!407734 (= f!428 f!428) t!352915) tb!256733))

(declare-fun result!313196 () Bool)

(assert (=> tb!256733 (= result!313196 tp_is_empty!22815)))

(assert (=> b!4256140 t!352915))

(declare-fun b_and!337515 () Bool)

(assert (= b_and!337513 (and (=> t!352915 result!313196) b_and!337515)))

(declare-fun m!4841321 () Bool)

(assert (=> d!1251549 m!4841321))

(declare-fun m!4841323 () Bool)

(assert (=> d!1251549 m!4841323))

(declare-fun m!4841325 () Bool)

(assert (=> b!4256140 m!4841325))

(declare-fun m!4841327 () Bool)

(assert (=> b!4256140 m!4841327))

(assert (=> b!4256140 m!4841325))

(assert (=> b!4256140 m!4841327))

(declare-fun m!4841329 () Bool)

(assert (=> b!4256140 m!4841329))

(assert (=> b!4256090 d!1251549))

(declare-fun b!4256158 () Bool)

(declare-fun e!2643587 () List!47332)

(assert (=> b!4256158 (= e!2643587 Nil!47208)))

(declare-fun b!4256159 () Bool)

(declare-fun e!2643588 () List!47332)

(assert (=> b!4256159 (= e!2643587 e!2643588)))

(declare-fun c!722652 () Bool)

(assert (=> b!4256159 (= c!722652 ((_ is Leaf!21978) (left!34985 t!4386)))))

(declare-fun b!4256160 () Bool)

(declare-fun list!17016 (IArray!28439) List!47332)

(assert (=> b!4256160 (= e!2643588 (list!17016 (xs!17523 (left!34985 t!4386))))))

(declare-fun d!1251551 () Bool)

(declare-fun c!722651 () Bool)

(assert (=> d!1251551 (= c!722651 ((_ is Empty!14217) (left!34985 t!4386)))))

(assert (=> d!1251551 (= (list!17015 (left!34985 t!4386)) e!2643587)))

(declare-fun b!4256161 () Bool)

(assert (=> b!4256161 (= e!2643588 (++!12009 (list!17015 (left!34985 (left!34985 t!4386))) (list!17015 (right!35315 (left!34985 t!4386)))))))

(assert (= (and d!1251551 c!722651) b!4256158))

(assert (= (and d!1251551 (not c!722651)) b!4256159))

(assert (= (and b!4256159 c!722652) b!4256160))

(assert (= (and b!4256159 (not c!722652)) b!4256161))

(declare-fun m!4841347 () Bool)

(assert (=> b!4256160 m!4841347))

(declare-fun m!4841349 () Bool)

(assert (=> b!4256161 m!4841349))

(declare-fun m!4841351 () Bool)

(assert (=> b!4256161 m!4841351))

(assert (=> b!4256161 m!4841349))

(assert (=> b!4256161 m!4841351))

(declare-fun m!4841353 () Bool)

(assert (=> b!4256161 m!4841353))

(assert (=> b!4256090 d!1251551))

(declare-fun b!4256186 () Bool)

(declare-fun e!2643602 () List!47332)

(assert (=> b!4256186 (= e!2643602 lt!1509842)))

(declare-fun b!4256188 () Bool)

(declare-fun res!1749610 () Bool)

(declare-fun e!2643601 () Bool)

(assert (=> b!4256188 (=> (not res!1749610) (not e!2643601))))

(declare-fun lt!1509851 () List!47332)

(assert (=> b!4256188 (= res!1749610 (= (size!34551 lt!1509851) (+ (size!34551 lt!1509841) (size!34551 lt!1509842))))))

(declare-fun b!4256189 () Bool)

(assert (=> b!4256189 (= e!2643601 (or (not (= lt!1509842 Nil!47208)) (= lt!1509851 lt!1509841)))))

(declare-fun d!1251557 () Bool)

(assert (=> d!1251557 e!2643601))

(declare-fun res!1749609 () Bool)

(assert (=> d!1251557 (=> (not res!1749609) (not e!2643601))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7425 (List!47332) (InoxSet T!79294))

(assert (=> d!1251557 (= res!1749609 (= (content!7425 lt!1509851) ((_ map or) (content!7425 lt!1509841) (content!7425 lt!1509842))))))

(assert (=> d!1251557 (= lt!1509851 e!2643602)))

(declare-fun c!722663 () Bool)

(assert (=> d!1251557 (= c!722663 ((_ is Nil!47208) lt!1509841))))

(assert (=> d!1251557 (= (++!12009 lt!1509841 lt!1509842) lt!1509851)))

(declare-fun b!4256187 () Bool)

(assert (=> b!4256187 (= e!2643602 (Cons!47208 (h!52628 lt!1509841) (++!12009 (t!352909 lt!1509841) lt!1509842)))))

(assert (= (and d!1251557 c!722663) b!4256186))

(assert (= (and d!1251557 (not c!722663)) b!4256187))

(assert (= (and d!1251557 res!1749609) b!4256188))

(assert (= (and b!4256188 res!1749610) b!4256189))

(declare-fun m!4841363 () Bool)

(assert (=> b!4256188 m!4841363))

(assert (=> b!4256188 m!4841323))

(declare-fun m!4841365 () Bool)

(assert (=> b!4256188 m!4841365))

(declare-fun m!4841367 () Bool)

(assert (=> d!1251557 m!4841367))

(declare-fun m!4841369 () Bool)

(assert (=> d!1251557 m!4841369))

(declare-fun m!4841371 () Bool)

(assert (=> d!1251557 m!4841371))

(declare-fun m!4841373 () Bool)

(assert (=> b!4256187 m!4841373))

(assert (=> b!4256090 d!1251557))

(declare-fun d!1251561 () Bool)

(assert (=> d!1251561 (= (map!9638 (++!12009 lt!1509841 lt!1509842) f!428) (++!12010 (map!9638 lt!1509841 f!428) (map!9638 lt!1509842 f!428)))))

(declare-fun lt!1509855 () Unit!66123)

(declare-fun choose!25971 (List!47332 List!47332 Int) Unit!66123)

(assert (=> d!1251561 (= lt!1509855 (choose!25971 lt!1509841 lt!1509842 f!428))))

(assert (=> d!1251561 (= (lemmaMapConcat!24 lt!1509841 lt!1509842 f!428) lt!1509855)))

(declare-fun bs!598820 () Bool)

(assert (= bs!598820 d!1251561))

(assert (=> bs!598820 m!4841265))

(assert (=> bs!598820 m!4841265))

(assert (=> bs!598820 m!4841267))

(assert (=> bs!598820 m!4841269))

(assert (=> bs!598820 m!4841271))

(declare-fun m!4841389 () Bool)

(assert (=> bs!598820 m!4841389))

(assert (=> bs!598820 m!4841267))

(assert (=> bs!598820 m!4841271))

(assert (=> bs!598820 m!4841273))

(assert (=> b!4256090 d!1251561))

(declare-fun d!1251565 () Bool)

(declare-fun lt!1509856 () List!47333)

(assert (=> d!1251565 (= (size!34553 lt!1509856) (size!34551 lt!1509842))))

(declare-fun e!2643607 () List!47333)

(assert (=> d!1251565 (= lt!1509856 e!2643607)))

(declare-fun c!722665 () Bool)

(assert (=> d!1251565 (= c!722665 ((_ is Nil!47208) lt!1509842))))

(assert (=> d!1251565 (= (map!9638 lt!1509842 f!428) lt!1509856)))

(declare-fun b!4256198 () Bool)

(assert (=> b!4256198 (= e!2643607 Nil!47209)))

(declare-fun b!4256199 () Bool)

(assert (=> b!4256199 (= e!2643607 ($colon$colon!618 (map!9638 (t!352909 lt!1509842) f!428) (dynLambda!20206 f!428 (h!52628 lt!1509842))))))

(assert (= (and d!1251565 c!722665) b!4256198))

(assert (= (and d!1251565 (not c!722665)) b!4256199))

(declare-fun b_lambda!125391 () Bool)

(assert (=> (not b_lambda!125391) (not b!4256199)))

(declare-fun t!352919 () Bool)

(declare-fun tb!256735 () Bool)

(assert (=> (and start!407734 (= f!428 f!428) t!352919) tb!256735))

(declare-fun result!313198 () Bool)

(assert (=> tb!256735 (= result!313198 tp_is_empty!22815)))

(assert (=> b!4256199 t!352919))

(declare-fun b_and!337517 () Bool)

(assert (= b_and!337515 (and (=> t!352919 result!313198) b_and!337517)))

(declare-fun m!4841391 () Bool)

(assert (=> d!1251565 m!4841391))

(assert (=> d!1251565 m!4841365))

(declare-fun m!4841393 () Bool)

(assert (=> b!4256199 m!4841393))

(declare-fun m!4841395 () Bool)

(assert (=> b!4256199 m!4841395))

(assert (=> b!4256199 m!4841393))

(assert (=> b!4256199 m!4841395))

(declare-fun m!4841397 () Bool)

(assert (=> b!4256199 m!4841397))

(assert (=> b!4256090 d!1251565))

(declare-fun e!2643619 () Bool)

(declare-fun b!4256223 () Bool)

(declare-fun lt!1509862 () List!47333)

(assert (=> b!4256223 (= e!2643619 (or (not (= (map!9638 lt!1509842 f!428) Nil!47209)) (= lt!1509862 (map!9638 lt!1509841 f!428))))))

(declare-fun b!4256220 () Bool)

(declare-fun e!2643618 () List!47333)

(assert (=> b!4256220 (= e!2643618 (map!9638 lt!1509842 f!428))))

(declare-fun b!4256221 () Bool)

(assert (=> b!4256221 (= e!2643618 (Cons!47209 (h!52629 (map!9638 lt!1509841 f!428)) (++!12010 (t!352910 (map!9638 lt!1509841 f!428)) (map!9638 lt!1509842 f!428))))))

(declare-fun b!4256222 () Bool)

(declare-fun res!1749628 () Bool)

(assert (=> b!4256222 (=> (not res!1749628) (not e!2643619))))

(assert (=> b!4256222 (= res!1749628 (= (size!34553 lt!1509862) (+ (size!34553 (map!9638 lt!1509841 f!428)) (size!34553 (map!9638 lt!1509842 f!428)))))))

(declare-fun d!1251567 () Bool)

(assert (=> d!1251567 e!2643619))

(declare-fun res!1749627 () Bool)

(assert (=> d!1251567 (=> (not res!1749627) (not e!2643619))))

(declare-fun content!7428 (List!47333) (InoxSet B!2793))

(assert (=> d!1251567 (= res!1749627 (= (content!7428 lt!1509862) ((_ map or) (content!7428 (map!9638 lt!1509841 f!428)) (content!7428 (map!9638 lt!1509842 f!428)))))))

(assert (=> d!1251567 (= lt!1509862 e!2643618)))

(declare-fun c!722671 () Bool)

(assert (=> d!1251567 (= c!722671 ((_ is Nil!47209) (map!9638 lt!1509841 f!428)))))

(assert (=> d!1251567 (= (++!12010 (map!9638 lt!1509841 f!428) (map!9638 lt!1509842 f!428)) lt!1509862)))

(assert (= (and d!1251567 c!722671) b!4256220))

(assert (= (and d!1251567 (not c!722671)) b!4256221))

(assert (= (and d!1251567 res!1749627) b!4256222))

(assert (= (and b!4256222 res!1749628) b!4256223))

(assert (=> b!4256221 m!4841267))

(declare-fun m!4841413 () Bool)

(assert (=> b!4256221 m!4841413))

(declare-fun m!4841415 () Bool)

(assert (=> b!4256222 m!4841415))

(assert (=> b!4256222 m!4841265))

(declare-fun m!4841417 () Bool)

(assert (=> b!4256222 m!4841417))

(assert (=> b!4256222 m!4841267))

(declare-fun m!4841419 () Bool)

(assert (=> b!4256222 m!4841419))

(declare-fun m!4841421 () Bool)

(assert (=> d!1251567 m!4841421))

(assert (=> d!1251567 m!4841265))

(declare-fun m!4841423 () Bool)

(assert (=> d!1251567 m!4841423))

(assert (=> d!1251567 m!4841267))

(declare-fun m!4841425 () Bool)

(assert (=> d!1251567 m!4841425))

(assert (=> b!4256090 d!1251567))

(declare-fun b!4256224 () Bool)

(declare-fun e!2643620 () List!47332)

(assert (=> b!4256224 (= e!2643620 Nil!47208)))

(declare-fun b!4256225 () Bool)

(declare-fun e!2643621 () List!47332)

(assert (=> b!4256225 (= e!2643620 e!2643621)))

(declare-fun c!722673 () Bool)

(assert (=> b!4256225 (= c!722673 ((_ is Leaf!21978) (right!35315 t!4386)))))

(declare-fun b!4256226 () Bool)

(assert (=> b!4256226 (= e!2643621 (list!17016 (xs!17523 (right!35315 t!4386))))))

(declare-fun d!1251571 () Bool)

(declare-fun c!722672 () Bool)

(assert (=> d!1251571 (= c!722672 ((_ is Empty!14217) (right!35315 t!4386)))))

(assert (=> d!1251571 (= (list!17015 (right!35315 t!4386)) e!2643620)))

(declare-fun b!4256227 () Bool)

(assert (=> b!4256227 (= e!2643621 (++!12009 (list!17015 (left!34985 (right!35315 t!4386))) (list!17015 (right!35315 (right!35315 t!4386)))))))

(assert (= (and d!1251571 c!722672) b!4256224))

(assert (= (and d!1251571 (not c!722672)) b!4256225))

(assert (= (and b!4256225 c!722673) b!4256226))

(assert (= (and b!4256225 (not c!722673)) b!4256227))

(declare-fun m!4841427 () Bool)

(assert (=> b!4256226 m!4841427))

(declare-fun m!4841429 () Bool)

(assert (=> b!4256227 m!4841429))

(declare-fun m!4841431 () Bool)

(assert (=> b!4256227 m!4841431))

(assert (=> b!4256227 m!4841429))

(assert (=> b!4256227 m!4841431))

(declare-fun m!4841433 () Bool)

(assert (=> b!4256227 m!4841433))

(assert (=> b!4256090 d!1251571))

(declare-fun b!4256254 () Bool)

(declare-fun res!1749642 () Bool)

(declare-fun e!2643632 () Bool)

(assert (=> b!4256254 (=> (not res!1749642) (not e!2643632))))

(assert (=> b!4256254 (= res!1749642 (isBalanced!3780 (left!34985 t!4386)))))

(declare-fun b!4256255 () Bool)

(declare-fun res!1749646 () Bool)

(assert (=> b!4256255 (=> (not res!1749646) (not e!2643632))))

(assert (=> b!4256255 (= res!1749646 (isBalanced!3780 (right!35315 t!4386)))))

(declare-fun b!4256256 () Bool)

(declare-fun res!1749644 () Bool)

(assert (=> b!4256256 (=> (not res!1749644) (not e!2643632))))

(declare-fun isEmpty!27943 (Conc!14217) Bool)

(assert (=> b!4256256 (= res!1749644 (not (isEmpty!27943 (left!34985 t!4386))))))

(declare-fun b!4256257 () Bool)

(declare-fun e!2643633 () Bool)

(assert (=> b!4256257 (= e!2643633 e!2643632)))

(declare-fun res!1749643 () Bool)

(assert (=> b!4256257 (=> (not res!1749643) (not e!2643632))))

(declare-fun height!1844 (Conc!14217) Int)

(assert (=> b!4256257 (= res!1749643 (<= (- 1) (- (height!1844 (left!34985 t!4386)) (height!1844 (right!35315 t!4386)))))))

(declare-fun d!1251573 () Bool)

(declare-fun res!1749645 () Bool)

(assert (=> d!1251573 (=> res!1749645 e!2643633)))

(assert (=> d!1251573 (= res!1749645 (not ((_ is Node!14217) t!4386)))))

(assert (=> d!1251573 (= (isBalanced!3780 t!4386) e!2643633)))

(declare-fun b!4256258 () Bool)

(declare-fun res!1749641 () Bool)

(assert (=> b!4256258 (=> (not res!1749641) (not e!2643632))))

(assert (=> b!4256258 (= res!1749641 (<= (- (height!1844 (left!34985 t!4386)) (height!1844 (right!35315 t!4386))) 1))))

(declare-fun b!4256259 () Bool)

(assert (=> b!4256259 (= e!2643632 (not (isEmpty!27943 (right!35315 t!4386))))))

(assert (= (and d!1251573 (not res!1749645)) b!4256257))

(assert (= (and b!4256257 res!1749643) b!4256258))

(assert (= (and b!4256258 res!1749641) b!4256254))

(assert (= (and b!4256254 res!1749642) b!4256255))

(assert (= (and b!4256255 res!1749646) b!4256256))

(assert (= (and b!4256256 res!1749644) b!4256259))

(declare-fun m!4841469 () Bool)

(assert (=> b!4256256 m!4841469))

(declare-fun m!4841471 () Bool)

(assert (=> b!4256255 m!4841471))

(declare-fun m!4841473 () Bool)

(assert (=> b!4256257 m!4841473))

(declare-fun m!4841475 () Bool)

(assert (=> b!4256257 m!4841475))

(assert (=> b!4256258 m!4841473))

(assert (=> b!4256258 m!4841475))

(declare-fun m!4841479 () Bool)

(assert (=> b!4256254 m!4841479))

(declare-fun m!4841481 () Bool)

(assert (=> b!4256259 m!4841481))

(assert (=> start!407734 d!1251573))

(declare-fun d!1251583 () Bool)

(declare-fun c!722681 () Bool)

(assert (=> d!1251583 (= c!722681 ((_ is Node!14217) t!4386))))

(declare-fun e!2643637 () Bool)

(assert (=> d!1251583 (= (inv!62025 t!4386) e!2643637)))

(declare-fun b!4256266 () Bool)

(assert (=> b!4256266 (= e!2643637 (inv!62029 t!4386))))

(declare-fun b!4256267 () Bool)

(declare-fun e!2643638 () Bool)

(assert (=> b!4256267 (= e!2643637 e!2643638)))

(declare-fun res!1749647 () Bool)

(assert (=> b!4256267 (= res!1749647 (not ((_ is Leaf!21978) t!4386)))))

(assert (=> b!4256267 (=> res!1749647 e!2643638)))

(declare-fun b!4256268 () Bool)

(assert (=> b!4256268 (= e!2643638 (inv!62030 t!4386))))

(assert (= (and d!1251583 c!722681) b!4256266))

(assert (= (and d!1251583 (not c!722681)) b!4256267))

(assert (= (and b!4256267 (not res!1749647)) b!4256268))

(declare-fun m!4841483 () Bool)

(assert (=> b!4256266 m!4841483))

(declare-fun m!4841485 () Bool)

(assert (=> b!4256268 m!4841485))

(assert (=> start!407734 d!1251583))

(declare-fun tp!1306196 () Bool)

(declare-fun tp!1306194 () Bool)

(declare-fun e!2643647 () Bool)

(declare-fun b!4256284 () Bool)

(assert (=> b!4256284 (= e!2643647 (and (inv!62025 (left!34985 (left!34985 t!4386))) tp!1306196 (inv!62025 (right!35315 (left!34985 t!4386))) tp!1306194))))

(declare-fun b!4256286 () Bool)

(declare-fun e!2643648 () Bool)

(declare-fun tp!1306195 () Bool)

(assert (=> b!4256286 (= e!2643648 tp!1306195)))

(declare-fun b!4256285 () Bool)

(assert (=> b!4256285 (= e!2643647 (and (inv!62026 (xs!17523 (left!34985 t!4386))) e!2643648))))

(assert (=> b!4256094 (= tp!1306175 (and (inv!62025 (left!34985 t!4386)) e!2643647))))

(assert (= (and b!4256094 ((_ is Node!14217) (left!34985 t!4386))) b!4256284))

(assert (= b!4256285 b!4256286))

(assert (= (and b!4256094 ((_ is Leaf!21978) (left!34985 t!4386))) b!4256285))

(declare-fun m!4841493 () Bool)

(assert (=> b!4256284 m!4841493))

(declare-fun m!4841497 () Bool)

(assert (=> b!4256284 m!4841497))

(declare-fun m!4841501 () Bool)

(assert (=> b!4256285 m!4841501))

(assert (=> b!4256094 m!4841281))

(declare-fun e!2643651 () Bool)

(declare-fun tp!1306200 () Bool)

(declare-fun tp!1306202 () Bool)

(declare-fun b!4256292 () Bool)

(assert (=> b!4256292 (= e!2643651 (and (inv!62025 (left!34985 (right!35315 t!4386))) tp!1306202 (inv!62025 (right!35315 (right!35315 t!4386))) tp!1306200))))

(declare-fun b!4256294 () Bool)

(declare-fun e!2643652 () Bool)

(declare-fun tp!1306201 () Bool)

(assert (=> b!4256294 (= e!2643652 tp!1306201)))

(declare-fun b!4256293 () Bool)

(assert (=> b!4256293 (= e!2643651 (and (inv!62026 (xs!17523 (right!35315 t!4386))) e!2643652))))

(assert (=> b!4256094 (= tp!1306176 (and (inv!62025 (right!35315 t!4386)) e!2643651))))

(assert (= (and b!4256094 ((_ is Node!14217) (right!35315 t!4386))) b!4256292))

(assert (= b!4256293 b!4256294))

(assert (= (and b!4256094 ((_ is Leaf!21978) (right!35315 t!4386))) b!4256293))

(declare-fun m!4841505 () Bool)

(assert (=> b!4256292 m!4841505))

(declare-fun m!4841507 () Bool)

(assert (=> b!4256292 m!4841507))

(declare-fun m!4841509 () Bool)

(assert (=> b!4256293 m!4841509))

(assert (=> b!4256094 m!4841283))

(declare-fun b!4256302 () Bool)

(declare-fun e!2643658 () Bool)

(declare-fun tp_is_empty!22821 () Bool)

(declare-fun tp!1306208 () Bool)

(assert (=> b!4256302 (= e!2643658 (and tp_is_empty!22821 tp!1306208))))

(assert (=> b!4256092 (= tp!1306178 e!2643658)))

(assert (= (and b!4256092 ((_ is Cons!47208) (innerList!14277 (xs!17523 t!4386)))) b!4256302))

(declare-fun b_lambda!125405 () Bool)

(assert (= b_lambda!125391 (or (and start!407734 b_free!126661) b_lambda!125405)))

(declare-fun b_lambda!125407 () Bool)

(assert (= b_lambda!125387 (or (and start!407734 b_free!126661) b_lambda!125407)))

(declare-fun b_lambda!125409 () Bool)

(assert (= b_lambda!125389 (or (and start!407734 b_free!126661) b_lambda!125409)))

(check-sat (not b!4256160) (not b!4256284) (not b!4256227) (not b!4256293) (not b!4256226) (not b_lambda!125405) (not b!4256254) (not b!4256115) b_and!337517 (not b!4256221) (not b!4256255) tp_is_empty!22821 (not d!1251533) (not b!4256256) (not b!4256187) (not b!4256286) (not b!4256124) (not d!1251561) (not d!1251565) (not b!4256188) (not b!4256140) (not b!4256257) (not b!4256113) tp_is_empty!22815 (not d!1251567) (not b_next!127365) (not b!4256222) (not b!4256094) (not b!4256266) (not b!4256161) (not b!4256292) (not b!4256116) (not b!4256294) (not b!4256258) (not d!1251545) (not b!4256199) (not b_lambda!125409) (not b!4256302) (not b!4256268) (not b!4256285) (not b!4256118) (not b!4256259) (not d!1251549) (not d!1251557) (not b_lambda!125407))
(check-sat b_and!337517 (not b_next!127365))
