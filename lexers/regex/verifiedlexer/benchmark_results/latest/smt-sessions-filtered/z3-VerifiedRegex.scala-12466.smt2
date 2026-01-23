; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694684 () Bool)

(assert start!694684)

(declare-fun b!7131243 () Bool)

(declare-datatypes ((Unit!163007 0))(
  ( (Unit!163008) )
))
(declare-fun e!4285576 () Unit!163007)

(declare-fun Unit!163009 () Unit!163007)

(assert (=> b!7131243 (= e!4285576 Unit!163009)))

(declare-fun b!7131244 () Bool)

(declare-fun e!4285574 () Bool)

(declare-fun e!4285579 () Bool)

(assert (=> b!7131244 (= e!4285574 e!4285579)))

(declare-fun res!2909720 () Bool)

(assert (=> b!7131244 (=> (not res!2909720) (not e!4285579))))

(declare-datatypes ((C!36400 0))(
  ( (C!36401 (val!28126 Int)) )
))
(declare-datatypes ((List!69184 0))(
  ( (Nil!69060) (Cons!69060 (h!75508 C!36400) (t!383161 List!69184)) )
))
(declare-fun lt!2564643 () List!69184)

(declare-fun s!7390 () List!69184)

(assert (=> b!7131244 (= res!2909720 (= lt!2564643 s!7390))))

(declare-fun s1Rec!140 () List!69184)

(declare-fun s2Rec!140 () List!69184)

(declare-fun ++!16203 (List!69184 List!69184) List!69184)

(assert (=> b!7131244 (= lt!2564643 (++!16203 s1Rec!140 s2Rec!140))))

(declare-fun setIsEmpty!52038 () Bool)

(declare-fun setRes!52038 () Bool)

(assert (=> setIsEmpty!52038 setRes!52038))

(declare-fun b!7131245 () Bool)

(declare-fun e!4285573 () Bool)

(declare-fun tp_is_empty!45731 () Bool)

(declare-fun tp!1965237 () Bool)

(assert (=> b!7131245 (= e!4285573 (and tp_is_empty!45731 tp!1965237))))

(declare-fun b!7131246 () Bool)

(declare-fun Unit!163010 () Unit!163007)

(assert (=> b!7131246 (= e!4285576 Unit!163010)))

(declare-fun lt!2564646 () Unit!163007)

(declare-fun s1!1688 () List!69184)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1455 (List!69184 List!69184 List!69184) Unit!163007)

(assert (=> b!7131246 (= lt!2564646 (lemmaIsPrefixSameLengthThenSameList!1455 s1!1688 s1Rec!140 s!7390))))

(assert (=> b!7131246 false))

(declare-fun b!7131247 () Bool)

(declare-fun res!2909721 () Bool)

(declare-fun e!4285572 () Bool)

(assert (=> b!7131247 (=> (not res!2909721) (not e!4285572))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18065 0))(
  ( (ElementMatch!18065 (c!1330171 C!36400)) (Concat!26910 (regOne!36642 Regex!18065) (regTwo!36642 Regex!18065)) (EmptyExpr!18065) (Star!18065 (reg!18394 Regex!18065)) (EmptyLang!18065) (Union!18065 (regOne!36643 Regex!18065) (regTwo!36643 Regex!18065)) )
))
(declare-datatypes ((List!69185 0))(
  ( (Nil!69061) (Cons!69061 (h!75509 Regex!18065) (t!383162 List!69185)) )
))
(declare-datatypes ((Context!14118 0))(
  ( (Context!14119 (exprs!7559 List!69185)) )
))
(declare-fun z2!471 () (InoxSet Context!14118))

(declare-fun s2!1620 () List!69184)

(declare-fun matchZipper!3321 ((InoxSet Context!14118) List!69184) Bool)

(assert (=> b!7131247 (= res!2909721 (matchZipper!3321 z2!471 s2!1620))))

(declare-fun b!7131248 () Bool)

(declare-fun e!4285567 () Bool)

(declare-fun tp!1965244 () Bool)

(assert (=> b!7131248 (= e!4285567 (and tp_is_empty!45731 tp!1965244))))

(declare-fun b!7131249 () Bool)

(declare-fun e!4285577 () Unit!163007)

(declare-fun Unit!163011 () Unit!163007)

(assert (=> b!7131249 (= e!4285577 Unit!163011)))

(declare-fun lt!2564639 () Unit!163007)

(declare-fun lemmaSamePrefixThenSameSuffix!2745 (List!69184 List!69184 List!69184 List!69184 List!69184) Unit!163007)

(assert (=> b!7131249 (= lt!2564639 (lemmaSamePrefixThenSameSuffix!2745 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7131249 false))

(declare-fun setElem!52039 () Context!14118)

(declare-fun setRes!52039 () Bool)

(declare-fun setNonEmpty!52038 () Bool)

(declare-fun e!4285578 () Bool)

(declare-fun tp!1965240 () Bool)

(declare-fun inv!88190 (Context!14118) Bool)

(assert (=> setNonEmpty!52038 (= setRes!52039 (and tp!1965240 (inv!88190 setElem!52039) e!4285578))))

(declare-fun z1!552 () (InoxSet Context!14118))

(declare-fun setRest!52038 () (InoxSet Context!14118))

(assert (=> setNonEmpty!52038 (= z1!552 ((_ map or) (store ((as const (Array Context!14118 Bool)) false) setElem!52039 true) setRest!52038))))

(declare-fun b!7131250 () Bool)

(declare-fun e!4285570 () Bool)

(assert (=> b!7131250 (= e!4285570 (not (matchZipper!3321 z2!471 s2Rec!140)))))

(declare-fun setIsEmpty!52039 () Bool)

(assert (=> setIsEmpty!52039 setRes!52039))

(declare-fun b!7131251 () Bool)

(declare-fun Unit!163012 () Unit!163007)

(assert (=> b!7131251 (= e!4285577 Unit!163012)))

(declare-fun b!7131252 () Bool)

(declare-fun tp!1965241 () Bool)

(assert (=> b!7131252 (= e!4285578 tp!1965241)))

(declare-fun b!7131253 () Bool)

(declare-fun e!4285575 () Bool)

(declare-fun tp!1965242 () Bool)

(assert (=> b!7131253 (= e!4285575 tp!1965242)))

(declare-fun b!7131254 () Bool)

(declare-fun e!4285571 () Bool)

(declare-fun tp!1965245 () Bool)

(assert (=> b!7131254 (= e!4285571 (and tp_is_empty!45731 tp!1965245))))

(declare-fun b!7131255 () Bool)

(declare-fun e!4285568 () Bool)

(declare-fun tp!1965239 () Bool)

(assert (=> b!7131255 (= e!4285568 (and tp_is_empty!45731 tp!1965239))))

(declare-fun res!2909725 () Bool)

(assert (=> start!694684 (=> (not res!2909725) (not e!4285572))))

(assert (=> start!694684 (= res!2909725 (matchZipper!3321 z1!552 s1!1688))))

(assert (=> start!694684 e!4285572))

(declare-fun e!4285569 () Bool)

(assert (=> start!694684 e!4285569))

(declare-fun condSetEmpty!52038 () Bool)

(assert (=> start!694684 (= condSetEmpty!52038 (= z1!552 ((as const (Array Context!14118 Bool)) false)))))

(assert (=> start!694684 setRes!52039))

(assert (=> start!694684 e!4285567))

(declare-fun condSetEmpty!52039 () Bool)

(assert (=> start!694684 (= condSetEmpty!52039 (= z2!471 ((as const (Array Context!14118 Bool)) false)))))

(assert (=> start!694684 setRes!52038))

(assert (=> start!694684 e!4285568))

(assert (=> start!694684 e!4285573))

(assert (=> start!694684 e!4285571))

(declare-fun b!7131256 () Bool)

(assert (=> b!7131256 (= e!4285572 e!4285574)))

(declare-fun res!2909722 () Bool)

(assert (=> b!7131256 (=> (not res!2909722) (not e!4285574))))

(declare-fun lt!2564636 () List!69184)

(assert (=> b!7131256 (= res!2909722 (= lt!2564636 s!7390))))

(assert (=> b!7131256 (= lt!2564636 (++!16203 s1!1688 s2!1620))))

(declare-fun b!7131257 () Bool)

(declare-fun res!2909718 () Bool)

(assert (=> b!7131257 (=> (not res!2909718) (not e!4285574))))

(declare-fun isPrefix!5934 (List!69184 List!69184) Bool)

(assert (=> b!7131257 (= res!2909718 (isPrefix!5934 s1Rec!140 s1!1688))))

(declare-fun b!7131258 () Bool)

(declare-fun tp!1965238 () Bool)

(assert (=> b!7131258 (= e!4285569 (and tp_is_empty!45731 tp!1965238))))

(declare-fun b!7131259 () Bool)

(declare-fun res!2909719 () Bool)

(assert (=> b!7131259 (=> (not res!2909719) (not e!4285579))))

(get-info :version)

(assert (=> b!7131259 (= res!2909719 (not ((_ is Nil!69060) s2Rec!140)))))

(declare-fun b!7131260 () Bool)

(declare-fun size!41490 (List!69184) Int)

(assert (=> b!7131260 (= e!4285579 (not (< (size!41490 (t!383161 s2Rec!140)) (size!41490 s2Rec!140))))))

(declare-fun lt!2564644 () List!69184)

(assert (=> b!7131260 (isPrefix!5934 lt!2564644 s1!1688)))

(declare-fun lt!2564637 () Unit!163007)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!787 (List!69184 List!69184 List!69184) Unit!163007)

(assert (=> b!7131260 (= lt!2564637 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!787 s1!1688 lt!2564644 s!7390))))

(declare-fun lt!2564638 () Unit!163007)

(assert (=> b!7131260 (= lt!2564638 e!4285576)))

(declare-fun c!1330170 () Bool)

(assert (=> b!7131260 (= c!1330170 (= (size!41490 s1Rec!140) (size!41490 s1!1688)))))

(declare-fun lt!2564635 () List!69184)

(assert (=> b!7131260 (isPrefix!5934 lt!2564644 lt!2564635)))

(declare-fun lt!2564640 () Unit!163007)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3647 (List!69184 List!69184) Unit!163007)

(assert (=> b!7131260 (= lt!2564640 (lemmaConcatTwoListThenFirstIsPrefix!3647 lt!2564644 (t!383161 s2Rec!140)))))

(assert (=> b!7131260 (= lt!2564635 s!7390)))

(assert (=> b!7131260 (= lt!2564635 (++!16203 lt!2564644 (t!383161 s2Rec!140)))))

(assert (=> b!7131260 (= lt!2564644 (++!16203 s1Rec!140 (Cons!69060 (h!75508 s2Rec!140) Nil!69060)))))

(declare-fun lt!2564641 () Unit!163007)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3025 (List!69184 C!36400 List!69184 List!69184) Unit!163007)

(assert (=> b!7131260 (= lt!2564641 (lemmaMoveElementToOtherListKeepsConcatEq!3025 s1Rec!140 (h!75508 s2Rec!140) (t!383161 s2Rec!140) s!7390))))

(declare-fun lt!2564634 () Unit!163007)

(assert (=> b!7131260 (= lt!2564634 e!4285577)))

(declare-fun c!1330169 () Bool)

(assert (=> b!7131260 (= c!1330169 (= s1Rec!140 s1!1688))))

(assert (=> b!7131260 (isPrefix!5934 s1Rec!140 lt!2564643)))

(declare-fun lt!2564645 () Unit!163007)

(assert (=> b!7131260 (= lt!2564645 (lemmaConcatTwoListThenFirstIsPrefix!3647 s1Rec!140 s2Rec!140))))

(assert (=> b!7131260 (isPrefix!5934 s1!1688 lt!2564636)))

(declare-fun lt!2564642 () Unit!163007)

(assert (=> b!7131260 (= lt!2564642 (lemmaConcatTwoListThenFirstIsPrefix!3647 s1!1688 s2!1620))))

(declare-fun setElem!52038 () Context!14118)

(declare-fun setNonEmpty!52039 () Bool)

(declare-fun tp!1965243 () Bool)

(assert (=> setNonEmpty!52039 (= setRes!52038 (and tp!1965243 (inv!88190 setElem!52038) e!4285575))))

(declare-fun setRest!52039 () (InoxSet Context!14118))

(assert (=> setNonEmpty!52039 (= z2!471 ((_ map or) (store ((as const (Array Context!14118 Bool)) false) setElem!52038 true) setRest!52039))))

(declare-fun b!7131261 () Bool)

(declare-fun res!2909723 () Bool)

(assert (=> b!7131261 (=> (not res!2909723) (not e!4285579))))

(assert (=> b!7131261 (= res!2909723 e!4285570)))

(declare-fun res!2909724 () Bool)

(assert (=> b!7131261 (=> res!2909724 e!4285570)))

(assert (=> b!7131261 (= res!2909724 (not (matchZipper!3321 z1!552 s1Rec!140)))))

(assert (= (and start!694684 res!2909725) b!7131247))

(assert (= (and b!7131247 res!2909721) b!7131256))

(assert (= (and b!7131256 res!2909722) b!7131257))

(assert (= (and b!7131257 res!2909718) b!7131244))

(assert (= (and b!7131244 res!2909720) b!7131261))

(assert (= (and b!7131261 (not res!2909724)) b!7131250))

(assert (= (and b!7131261 res!2909723) b!7131259))

(assert (= (and b!7131259 res!2909719) b!7131260))

(assert (= (and b!7131260 c!1330169) b!7131249))

(assert (= (and b!7131260 (not c!1330169)) b!7131251))

(assert (= (and b!7131260 c!1330170) b!7131246))

(assert (= (and b!7131260 (not c!1330170)) b!7131243))

(assert (= (and start!694684 ((_ is Cons!69060) s1Rec!140)) b!7131258))

(assert (= (and start!694684 condSetEmpty!52038) setIsEmpty!52039))

(assert (= (and start!694684 (not condSetEmpty!52038)) setNonEmpty!52038))

(assert (= setNonEmpty!52038 b!7131252))

(assert (= (and start!694684 ((_ is Cons!69060) s2Rec!140)) b!7131248))

(assert (= (and start!694684 condSetEmpty!52039) setIsEmpty!52038))

(assert (= (and start!694684 (not condSetEmpty!52039)) setNonEmpty!52039))

(assert (= setNonEmpty!52039 b!7131253))

(assert (= (and start!694684 ((_ is Cons!69060) s2!1620)) b!7131255))

(assert (= (and start!694684 ((_ is Cons!69060) s1!1688)) b!7131245))

(assert (= (and start!694684 ((_ is Cons!69060) s!7390)) b!7131254))

(declare-fun m!7848404 () Bool)

(assert (=> b!7131260 m!7848404))

(declare-fun m!7848406 () Bool)

(assert (=> b!7131260 m!7848406))

(declare-fun m!7848408 () Bool)

(assert (=> b!7131260 m!7848408))

(declare-fun m!7848410 () Bool)

(assert (=> b!7131260 m!7848410))

(declare-fun m!7848412 () Bool)

(assert (=> b!7131260 m!7848412))

(declare-fun m!7848414 () Bool)

(assert (=> b!7131260 m!7848414))

(declare-fun m!7848416 () Bool)

(assert (=> b!7131260 m!7848416))

(declare-fun m!7848418 () Bool)

(assert (=> b!7131260 m!7848418))

(declare-fun m!7848420 () Bool)

(assert (=> b!7131260 m!7848420))

(declare-fun m!7848422 () Bool)

(assert (=> b!7131260 m!7848422))

(declare-fun m!7848424 () Bool)

(assert (=> b!7131260 m!7848424))

(declare-fun m!7848426 () Bool)

(assert (=> b!7131260 m!7848426))

(declare-fun m!7848428 () Bool)

(assert (=> b!7131260 m!7848428))

(declare-fun m!7848430 () Bool)

(assert (=> b!7131260 m!7848430))

(declare-fun m!7848432 () Bool)

(assert (=> b!7131260 m!7848432))

(declare-fun m!7848434 () Bool)

(assert (=> b!7131247 m!7848434))

(declare-fun m!7848436 () Bool)

(assert (=> b!7131250 m!7848436))

(declare-fun m!7848438 () Bool)

(assert (=> b!7131261 m!7848438))

(declare-fun m!7848440 () Bool)

(assert (=> start!694684 m!7848440))

(declare-fun m!7848442 () Bool)

(assert (=> b!7131246 m!7848442))

(declare-fun m!7848444 () Bool)

(assert (=> setNonEmpty!52038 m!7848444))

(declare-fun m!7848446 () Bool)

(assert (=> b!7131244 m!7848446))

(declare-fun m!7848448 () Bool)

(assert (=> setNonEmpty!52039 m!7848448))

(declare-fun m!7848450 () Bool)

(assert (=> b!7131249 m!7848450))

(declare-fun m!7848452 () Bool)

(assert (=> b!7131257 m!7848452))

(declare-fun m!7848454 () Bool)

(assert (=> b!7131256 m!7848454))

(check-sat (not b!7131258) (not b!7131248) (not b!7131245) (not b!7131256) (not b!7131244) (not b!7131255) (not b!7131250) (not b!7131246) (not b!7131260) (not b!7131253) (not setNonEmpty!52039) (not b!7131249) tp_is_empty!45731 (not setNonEmpty!52038) (not b!7131252) (not start!694684) (not b!7131257) (not b!7131254) (not b!7131247) (not b!7131261))
(check-sat)
(get-model)

(declare-fun d!2225535 () Bool)

(declare-fun c!1330174 () Bool)

(declare-fun isEmpty!40030 (List!69184) Bool)

(assert (=> d!2225535 (= c!1330174 (isEmpty!40030 s2Rec!140))))

(declare-fun e!4285582 () Bool)

(assert (=> d!2225535 (= (matchZipper!3321 z2!471 s2Rec!140) e!4285582)))

(declare-fun b!7131266 () Bool)

(declare-fun nullableZipper!2764 ((InoxSet Context!14118)) Bool)

(assert (=> b!7131266 (= e!4285582 (nullableZipper!2764 z2!471))))

(declare-fun b!7131267 () Bool)

(declare-fun derivationStepZipper!3176 ((InoxSet Context!14118) C!36400) (InoxSet Context!14118))

(declare-fun head!14473 (List!69184) C!36400)

(declare-fun tail!13945 (List!69184) List!69184)

(assert (=> b!7131267 (= e!4285582 (matchZipper!3321 (derivationStepZipper!3176 z2!471 (head!14473 s2Rec!140)) (tail!13945 s2Rec!140)))))

(assert (= (and d!2225535 c!1330174) b!7131266))

(assert (= (and d!2225535 (not c!1330174)) b!7131267))

(declare-fun m!7848456 () Bool)

(assert (=> d!2225535 m!7848456))

(declare-fun m!7848458 () Bool)

(assert (=> b!7131266 m!7848458))

(declare-fun m!7848460 () Bool)

(assert (=> b!7131267 m!7848460))

(assert (=> b!7131267 m!7848460))

(declare-fun m!7848462 () Bool)

(assert (=> b!7131267 m!7848462))

(declare-fun m!7848464 () Bool)

(assert (=> b!7131267 m!7848464))

(assert (=> b!7131267 m!7848462))

(assert (=> b!7131267 m!7848464))

(declare-fun m!7848466 () Bool)

(assert (=> b!7131267 m!7848466))

(assert (=> b!7131250 d!2225535))

(declare-fun d!2225539 () Bool)

(declare-fun lambda!433218 () Int)

(declare-fun forall!16924 (List!69185 Int) Bool)

(assert (=> d!2225539 (= (inv!88190 setElem!52039) (forall!16924 (exprs!7559 setElem!52039) lambda!433218))))

(declare-fun bs!1886932 () Bool)

(assert (= bs!1886932 d!2225539))

(declare-fun m!7848480 () Bool)

(assert (=> bs!1886932 m!7848480))

(assert (=> setNonEmpty!52038 d!2225539))

(declare-fun d!2225543 () Bool)

(assert (=> d!2225543 (= s2!1620 s2Rec!140)))

(declare-fun lt!2564652 () Unit!163007)

(declare-fun choose!55106 (List!69184 List!69184 List!69184 List!69184 List!69184) Unit!163007)

(assert (=> d!2225543 (= lt!2564652 (choose!55106 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> d!2225543 (isPrefix!5934 s1!1688 s!7390)))

(assert (=> d!2225543 (= (lemmaSamePrefixThenSameSuffix!2745 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390) lt!2564652)))

(declare-fun bs!1886933 () Bool)

(assert (= bs!1886933 d!2225543))

(declare-fun m!7848482 () Bool)

(assert (=> bs!1886933 m!7848482))

(declare-fun m!7848484 () Bool)

(assert (=> bs!1886933 m!7848484))

(assert (=> b!7131249 d!2225543))

(declare-fun d!2225545 () Bool)

(declare-fun c!1330178 () Bool)

(assert (=> d!2225545 (= c!1330178 (isEmpty!40030 s1Rec!140))))

(declare-fun e!4285589 () Bool)

(assert (=> d!2225545 (= (matchZipper!3321 z1!552 s1Rec!140) e!4285589)))

(declare-fun b!7131280 () Bool)

(assert (=> b!7131280 (= e!4285589 (nullableZipper!2764 z1!552))))

(declare-fun b!7131281 () Bool)

(assert (=> b!7131281 (= e!4285589 (matchZipper!3321 (derivationStepZipper!3176 z1!552 (head!14473 s1Rec!140)) (tail!13945 s1Rec!140)))))

(assert (= (and d!2225545 c!1330178) b!7131280))

(assert (= (and d!2225545 (not c!1330178)) b!7131281))

(declare-fun m!7848486 () Bool)

(assert (=> d!2225545 m!7848486))

(declare-fun m!7848488 () Bool)

(assert (=> b!7131280 m!7848488))

(declare-fun m!7848490 () Bool)

(assert (=> b!7131281 m!7848490))

(assert (=> b!7131281 m!7848490))

(declare-fun m!7848492 () Bool)

(assert (=> b!7131281 m!7848492))

(declare-fun m!7848494 () Bool)

(assert (=> b!7131281 m!7848494))

(assert (=> b!7131281 m!7848492))

(assert (=> b!7131281 m!7848494))

(declare-fun m!7848496 () Bool)

(assert (=> b!7131281 m!7848496))

(assert (=> b!7131261 d!2225545))

(declare-fun e!4285595 () Bool)

(declare-fun lt!2564655 () List!69184)

(declare-fun b!7131293 () Bool)

(assert (=> b!7131293 (= e!4285595 (or (not (= s2Rec!140 Nil!69060)) (= lt!2564655 s1Rec!140)))))

(declare-fun b!7131292 () Bool)

(declare-fun res!2909737 () Bool)

(assert (=> b!7131292 (=> (not res!2909737) (not e!4285595))))

(assert (=> b!7131292 (= res!2909737 (= (size!41490 lt!2564655) (+ (size!41490 s1Rec!140) (size!41490 s2Rec!140))))))

(declare-fun b!7131291 () Bool)

(declare-fun e!4285594 () List!69184)

(assert (=> b!7131291 (= e!4285594 (Cons!69060 (h!75508 s1Rec!140) (++!16203 (t!383161 s1Rec!140) s2Rec!140)))))

(declare-fun d!2225547 () Bool)

(assert (=> d!2225547 e!4285595))

(declare-fun res!2909736 () Bool)

(assert (=> d!2225547 (=> (not res!2909736) (not e!4285595))))

(declare-fun content!14124 (List!69184) (InoxSet C!36400))

(assert (=> d!2225547 (= res!2909736 (= (content!14124 lt!2564655) ((_ map or) (content!14124 s1Rec!140) (content!14124 s2Rec!140))))))

(assert (=> d!2225547 (= lt!2564655 e!4285594)))

(declare-fun c!1330181 () Bool)

(assert (=> d!2225547 (= c!1330181 ((_ is Nil!69060) s1Rec!140))))

(assert (=> d!2225547 (= (++!16203 s1Rec!140 s2Rec!140) lt!2564655)))

(declare-fun b!7131290 () Bool)

(assert (=> b!7131290 (= e!4285594 s2Rec!140)))

(assert (= (and d!2225547 c!1330181) b!7131290))

(assert (= (and d!2225547 (not c!1330181)) b!7131291))

(assert (= (and d!2225547 res!2909736) b!7131292))

(assert (= (and b!7131292 res!2909737) b!7131293))

(declare-fun m!7848498 () Bool)

(assert (=> b!7131292 m!7848498))

(assert (=> b!7131292 m!7848430))

(assert (=> b!7131292 m!7848408))

(declare-fun m!7848500 () Bool)

(assert (=> b!7131291 m!7848500))

(declare-fun m!7848502 () Bool)

(assert (=> d!2225547 m!7848502))

(declare-fun m!7848504 () Bool)

(assert (=> d!2225547 m!7848504))

(declare-fun m!7848506 () Bool)

(assert (=> d!2225547 m!7848506))

(assert (=> b!7131244 d!2225547))

(declare-fun bs!1886934 () Bool)

(declare-fun d!2225549 () Bool)

(assert (= bs!1886934 (and d!2225549 d!2225539)))

(declare-fun lambda!433219 () Int)

(assert (=> bs!1886934 (= lambda!433219 lambda!433218)))

(assert (=> d!2225549 (= (inv!88190 setElem!52038) (forall!16924 (exprs!7559 setElem!52038) lambda!433219))))

(declare-fun bs!1886935 () Bool)

(assert (= bs!1886935 d!2225549))

(declare-fun m!7848508 () Bool)

(assert (=> bs!1886935 m!7848508))

(assert (=> setNonEmpty!52039 d!2225549))

(declare-fun lt!2564656 () List!69184)

(declare-fun b!7131297 () Bool)

(declare-fun e!4285597 () Bool)

(assert (=> b!7131297 (= e!4285597 (or (not (= (Cons!69060 (h!75508 s2Rec!140) Nil!69060) Nil!69060)) (= lt!2564656 s1Rec!140)))))

(declare-fun b!7131296 () Bool)

(declare-fun res!2909739 () Bool)

(assert (=> b!7131296 (=> (not res!2909739) (not e!4285597))))

(assert (=> b!7131296 (= res!2909739 (= (size!41490 lt!2564656) (+ (size!41490 s1Rec!140) (size!41490 (Cons!69060 (h!75508 s2Rec!140) Nil!69060)))))))

(declare-fun b!7131295 () Bool)

(declare-fun e!4285596 () List!69184)

(assert (=> b!7131295 (= e!4285596 (Cons!69060 (h!75508 s1Rec!140) (++!16203 (t!383161 s1Rec!140) (Cons!69060 (h!75508 s2Rec!140) Nil!69060))))))

(declare-fun d!2225551 () Bool)

(assert (=> d!2225551 e!4285597))

(declare-fun res!2909738 () Bool)

(assert (=> d!2225551 (=> (not res!2909738) (not e!4285597))))

(assert (=> d!2225551 (= res!2909738 (= (content!14124 lt!2564656) ((_ map or) (content!14124 s1Rec!140) (content!14124 (Cons!69060 (h!75508 s2Rec!140) Nil!69060)))))))

(assert (=> d!2225551 (= lt!2564656 e!4285596)))

(declare-fun c!1330182 () Bool)

(assert (=> d!2225551 (= c!1330182 ((_ is Nil!69060) s1Rec!140))))

(assert (=> d!2225551 (= (++!16203 s1Rec!140 (Cons!69060 (h!75508 s2Rec!140) Nil!69060)) lt!2564656)))

(declare-fun b!7131294 () Bool)

(assert (=> b!7131294 (= e!4285596 (Cons!69060 (h!75508 s2Rec!140) Nil!69060))))

(assert (= (and d!2225551 c!1330182) b!7131294))

(assert (= (and d!2225551 (not c!1330182)) b!7131295))

(assert (= (and d!2225551 res!2909738) b!7131296))

(assert (= (and b!7131296 res!2909739) b!7131297))

(declare-fun m!7848510 () Bool)

(assert (=> b!7131296 m!7848510))

(assert (=> b!7131296 m!7848430))

(declare-fun m!7848512 () Bool)

(assert (=> b!7131296 m!7848512))

(declare-fun m!7848514 () Bool)

(assert (=> b!7131295 m!7848514))

(declare-fun m!7848516 () Bool)

(assert (=> d!2225551 m!7848516))

(assert (=> d!2225551 m!7848504))

(declare-fun m!7848518 () Bool)

(assert (=> d!2225551 m!7848518))

(assert (=> b!7131260 d!2225551))

(declare-fun b!7131306 () Bool)

(declare-fun e!4285605 () Bool)

(declare-fun e!4285606 () Bool)

(assert (=> b!7131306 (= e!4285605 e!4285606)))

(declare-fun res!2909749 () Bool)

(assert (=> b!7131306 (=> (not res!2909749) (not e!4285606))))

(assert (=> b!7131306 (= res!2909749 (not ((_ is Nil!69060) lt!2564636)))))

(declare-fun b!7131308 () Bool)

(assert (=> b!7131308 (= e!4285606 (isPrefix!5934 (tail!13945 s1!1688) (tail!13945 lt!2564636)))))

(declare-fun d!2225553 () Bool)

(declare-fun e!4285604 () Bool)

(assert (=> d!2225553 e!4285604))

(declare-fun res!2909750 () Bool)

(assert (=> d!2225553 (=> res!2909750 e!4285604)))

(declare-fun lt!2564659 () Bool)

(assert (=> d!2225553 (= res!2909750 (not lt!2564659))))

(assert (=> d!2225553 (= lt!2564659 e!4285605)))

(declare-fun res!2909748 () Bool)

(assert (=> d!2225553 (=> res!2909748 e!4285605)))

(assert (=> d!2225553 (= res!2909748 ((_ is Nil!69060) s1!1688))))

(assert (=> d!2225553 (= (isPrefix!5934 s1!1688 lt!2564636) lt!2564659)))

(declare-fun b!7131309 () Bool)

(assert (=> b!7131309 (= e!4285604 (>= (size!41490 lt!2564636) (size!41490 s1!1688)))))

(declare-fun b!7131307 () Bool)

(declare-fun res!2909751 () Bool)

(assert (=> b!7131307 (=> (not res!2909751) (not e!4285606))))

(assert (=> b!7131307 (= res!2909751 (= (head!14473 s1!1688) (head!14473 lt!2564636)))))

(assert (= (and d!2225553 (not res!2909748)) b!7131306))

(assert (= (and b!7131306 res!2909749) b!7131307))

(assert (= (and b!7131307 res!2909751) b!7131308))

(assert (= (and d!2225553 (not res!2909750)) b!7131309))

(declare-fun m!7848520 () Bool)

(assert (=> b!7131308 m!7848520))

(declare-fun m!7848522 () Bool)

(assert (=> b!7131308 m!7848522))

(assert (=> b!7131308 m!7848520))

(assert (=> b!7131308 m!7848522))

(declare-fun m!7848524 () Bool)

(assert (=> b!7131308 m!7848524))

(declare-fun m!7848526 () Bool)

(assert (=> b!7131309 m!7848526))

(assert (=> b!7131309 m!7848414))

(declare-fun m!7848528 () Bool)

(assert (=> b!7131307 m!7848528))

(declare-fun m!7848530 () Bool)

(assert (=> b!7131307 m!7848530))

(assert (=> b!7131260 d!2225553))

(declare-fun d!2225555 () Bool)

(declare-fun lt!2564662 () Int)

(assert (=> d!2225555 (>= lt!2564662 0)))

(declare-fun e!4285609 () Int)

(assert (=> d!2225555 (= lt!2564662 e!4285609)))

(declare-fun c!1330185 () Bool)

(assert (=> d!2225555 (= c!1330185 ((_ is Nil!69060) s2Rec!140))))

(assert (=> d!2225555 (= (size!41490 s2Rec!140) lt!2564662)))

(declare-fun b!7131314 () Bool)

(assert (=> b!7131314 (= e!4285609 0)))

(declare-fun b!7131315 () Bool)

(assert (=> b!7131315 (= e!4285609 (+ 1 (size!41490 (t!383161 s2Rec!140))))))

(assert (= (and d!2225555 c!1330185) b!7131314))

(assert (= (and d!2225555 (not c!1330185)) b!7131315))

(assert (=> b!7131315 m!7848432))

(assert (=> b!7131260 d!2225555))

(declare-fun d!2225557 () Bool)

(assert (=> d!2225557 (isPrefix!5934 s1!1688 (++!16203 s1!1688 s2!1620))))

(declare-fun lt!2564665 () Unit!163007)

(declare-fun choose!55107 (List!69184 List!69184) Unit!163007)

(assert (=> d!2225557 (= lt!2564665 (choose!55107 s1!1688 s2!1620))))

(assert (=> d!2225557 (= (lemmaConcatTwoListThenFirstIsPrefix!3647 s1!1688 s2!1620) lt!2564665)))

(declare-fun bs!1886936 () Bool)

(assert (= bs!1886936 d!2225557))

(assert (=> bs!1886936 m!7848454))

(assert (=> bs!1886936 m!7848454))

(declare-fun m!7848532 () Bool)

(assert (=> bs!1886936 m!7848532))

(declare-fun m!7848534 () Bool)

(assert (=> bs!1886936 m!7848534))

(assert (=> b!7131260 d!2225557))

(declare-fun d!2225559 () Bool)

(declare-fun lt!2564666 () Int)

(assert (=> d!2225559 (>= lt!2564666 0)))

(declare-fun e!4285610 () Int)

(assert (=> d!2225559 (= lt!2564666 e!4285610)))

(declare-fun c!1330186 () Bool)

(assert (=> d!2225559 (= c!1330186 ((_ is Nil!69060) s1Rec!140))))

(assert (=> d!2225559 (= (size!41490 s1Rec!140) lt!2564666)))

(declare-fun b!7131316 () Bool)

(assert (=> b!7131316 (= e!4285610 0)))

(declare-fun b!7131317 () Bool)

(assert (=> b!7131317 (= e!4285610 (+ 1 (size!41490 (t!383161 s1Rec!140))))))

(assert (= (and d!2225559 c!1330186) b!7131316))

(assert (= (and d!2225559 (not c!1330186)) b!7131317))

(declare-fun m!7848536 () Bool)

(assert (=> b!7131317 m!7848536))

(assert (=> b!7131260 d!2225559))

(declare-fun b!7131318 () Bool)

(declare-fun e!4285612 () Bool)

(declare-fun e!4285613 () Bool)

(assert (=> b!7131318 (= e!4285612 e!4285613)))

(declare-fun res!2909753 () Bool)

(assert (=> b!7131318 (=> (not res!2909753) (not e!4285613))))

(assert (=> b!7131318 (= res!2909753 (not ((_ is Nil!69060) lt!2564635)))))

(declare-fun b!7131320 () Bool)

(assert (=> b!7131320 (= e!4285613 (isPrefix!5934 (tail!13945 lt!2564644) (tail!13945 lt!2564635)))))

(declare-fun d!2225561 () Bool)

(declare-fun e!4285611 () Bool)

(assert (=> d!2225561 e!4285611))

(declare-fun res!2909754 () Bool)

(assert (=> d!2225561 (=> res!2909754 e!4285611)))

(declare-fun lt!2564667 () Bool)

(assert (=> d!2225561 (= res!2909754 (not lt!2564667))))

(assert (=> d!2225561 (= lt!2564667 e!4285612)))

(declare-fun res!2909752 () Bool)

(assert (=> d!2225561 (=> res!2909752 e!4285612)))

(assert (=> d!2225561 (= res!2909752 ((_ is Nil!69060) lt!2564644))))

(assert (=> d!2225561 (= (isPrefix!5934 lt!2564644 lt!2564635) lt!2564667)))

(declare-fun b!7131321 () Bool)

(assert (=> b!7131321 (= e!4285611 (>= (size!41490 lt!2564635) (size!41490 lt!2564644)))))

(declare-fun b!7131319 () Bool)

(declare-fun res!2909755 () Bool)

(assert (=> b!7131319 (=> (not res!2909755) (not e!4285613))))

(assert (=> b!7131319 (= res!2909755 (= (head!14473 lt!2564644) (head!14473 lt!2564635)))))

(assert (= (and d!2225561 (not res!2909752)) b!7131318))

(assert (= (and b!7131318 res!2909753) b!7131319))

(assert (= (and b!7131319 res!2909755) b!7131320))

(assert (= (and d!2225561 (not res!2909754)) b!7131321))

(declare-fun m!7848538 () Bool)

(assert (=> b!7131320 m!7848538))

(declare-fun m!7848540 () Bool)

(assert (=> b!7131320 m!7848540))

(assert (=> b!7131320 m!7848538))

(assert (=> b!7131320 m!7848540))

(declare-fun m!7848542 () Bool)

(assert (=> b!7131320 m!7848542))

(declare-fun m!7848544 () Bool)

(assert (=> b!7131321 m!7848544))

(declare-fun m!7848546 () Bool)

(assert (=> b!7131321 m!7848546))

(declare-fun m!7848548 () Bool)

(assert (=> b!7131319 m!7848548))

(declare-fun m!7848550 () Bool)

(assert (=> b!7131319 m!7848550))

(assert (=> b!7131260 d!2225561))

(declare-fun b!7131325 () Bool)

(declare-fun e!4285615 () Bool)

(declare-fun lt!2564668 () List!69184)

(assert (=> b!7131325 (= e!4285615 (or (not (= (t!383161 s2Rec!140) Nil!69060)) (= lt!2564668 lt!2564644)))))

(declare-fun b!7131324 () Bool)

(declare-fun res!2909757 () Bool)

(assert (=> b!7131324 (=> (not res!2909757) (not e!4285615))))

(assert (=> b!7131324 (= res!2909757 (= (size!41490 lt!2564668) (+ (size!41490 lt!2564644) (size!41490 (t!383161 s2Rec!140)))))))

(declare-fun b!7131323 () Bool)

(declare-fun e!4285614 () List!69184)

(assert (=> b!7131323 (= e!4285614 (Cons!69060 (h!75508 lt!2564644) (++!16203 (t!383161 lt!2564644) (t!383161 s2Rec!140))))))

(declare-fun d!2225563 () Bool)

(assert (=> d!2225563 e!4285615))

(declare-fun res!2909756 () Bool)

(assert (=> d!2225563 (=> (not res!2909756) (not e!4285615))))

(assert (=> d!2225563 (= res!2909756 (= (content!14124 lt!2564668) ((_ map or) (content!14124 lt!2564644) (content!14124 (t!383161 s2Rec!140)))))))

(assert (=> d!2225563 (= lt!2564668 e!4285614)))

(declare-fun c!1330187 () Bool)

(assert (=> d!2225563 (= c!1330187 ((_ is Nil!69060) lt!2564644))))

(assert (=> d!2225563 (= (++!16203 lt!2564644 (t!383161 s2Rec!140)) lt!2564668)))

(declare-fun b!7131322 () Bool)

(assert (=> b!7131322 (= e!4285614 (t!383161 s2Rec!140))))

(assert (= (and d!2225563 c!1330187) b!7131322))

(assert (= (and d!2225563 (not c!1330187)) b!7131323))

(assert (= (and d!2225563 res!2909756) b!7131324))

(assert (= (and b!7131324 res!2909757) b!7131325))

(declare-fun m!7848552 () Bool)

(assert (=> b!7131324 m!7848552))

(assert (=> b!7131324 m!7848546))

(assert (=> b!7131324 m!7848432))

(declare-fun m!7848554 () Bool)

(assert (=> b!7131323 m!7848554))

(declare-fun m!7848556 () Bool)

(assert (=> d!2225563 m!7848556))

(declare-fun m!7848558 () Bool)

(assert (=> d!2225563 m!7848558))

(declare-fun m!7848560 () Bool)

(assert (=> d!2225563 m!7848560))

(assert (=> b!7131260 d!2225563))

(declare-fun d!2225565 () Bool)

(assert (=> d!2225565 (= (++!16203 (++!16203 s1Rec!140 (Cons!69060 (h!75508 s2Rec!140) Nil!69060)) (t!383161 s2Rec!140)) s!7390)))

(declare-fun lt!2564671 () Unit!163007)

(declare-fun choose!55108 (List!69184 C!36400 List!69184 List!69184) Unit!163007)

(assert (=> d!2225565 (= lt!2564671 (choose!55108 s1Rec!140 (h!75508 s2Rec!140) (t!383161 s2Rec!140) s!7390))))

(assert (=> d!2225565 (= (++!16203 s1Rec!140 (Cons!69060 (h!75508 s2Rec!140) (t!383161 s2Rec!140))) s!7390)))

(assert (=> d!2225565 (= (lemmaMoveElementToOtherListKeepsConcatEq!3025 s1Rec!140 (h!75508 s2Rec!140) (t!383161 s2Rec!140) s!7390) lt!2564671)))

(declare-fun bs!1886937 () Bool)

(assert (= bs!1886937 d!2225565))

(assert (=> bs!1886937 m!7848418))

(assert (=> bs!1886937 m!7848418))

(declare-fun m!7848562 () Bool)

(assert (=> bs!1886937 m!7848562))

(declare-fun m!7848564 () Bool)

(assert (=> bs!1886937 m!7848564))

(declare-fun m!7848566 () Bool)

(assert (=> bs!1886937 m!7848566))

(assert (=> b!7131260 d!2225565))

(declare-fun d!2225567 () Bool)

(assert (=> d!2225567 (isPrefix!5934 lt!2564644 s1!1688)))

(declare-fun lt!2564674 () Unit!163007)

(declare-fun choose!55109 (List!69184 List!69184 List!69184) Unit!163007)

(assert (=> d!2225567 (= lt!2564674 (choose!55109 s1!1688 lt!2564644 s!7390))))

(assert (=> d!2225567 (isPrefix!5934 s1!1688 s!7390)))

(assert (=> d!2225567 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!787 s1!1688 lt!2564644 s!7390) lt!2564674)))

(declare-fun bs!1886938 () Bool)

(assert (= bs!1886938 d!2225567))

(assert (=> bs!1886938 m!7848416))

(declare-fun m!7848568 () Bool)

(assert (=> bs!1886938 m!7848568))

(assert (=> bs!1886938 m!7848484))

(assert (=> b!7131260 d!2225567))

(declare-fun d!2225569 () Bool)

(declare-fun lt!2564675 () Int)

(assert (=> d!2225569 (>= lt!2564675 0)))

(declare-fun e!4285616 () Int)

(assert (=> d!2225569 (= lt!2564675 e!4285616)))

(declare-fun c!1330188 () Bool)

(assert (=> d!2225569 (= c!1330188 ((_ is Nil!69060) (t!383161 s2Rec!140)))))

(assert (=> d!2225569 (= (size!41490 (t!383161 s2Rec!140)) lt!2564675)))

(declare-fun b!7131326 () Bool)

(assert (=> b!7131326 (= e!4285616 0)))

(declare-fun b!7131327 () Bool)

(assert (=> b!7131327 (= e!4285616 (+ 1 (size!41490 (t!383161 (t!383161 s2Rec!140)))))))

(assert (= (and d!2225569 c!1330188) b!7131326))

(assert (= (and d!2225569 (not c!1330188)) b!7131327))

(declare-fun m!7848570 () Bool)

(assert (=> b!7131327 m!7848570))

(assert (=> b!7131260 d!2225569))

(declare-fun d!2225571 () Bool)

(assert (=> d!2225571 (isPrefix!5934 s1Rec!140 (++!16203 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564676 () Unit!163007)

(assert (=> d!2225571 (= lt!2564676 (choose!55107 s1Rec!140 s2Rec!140))))

(assert (=> d!2225571 (= (lemmaConcatTwoListThenFirstIsPrefix!3647 s1Rec!140 s2Rec!140) lt!2564676)))

(declare-fun bs!1886939 () Bool)

(assert (= bs!1886939 d!2225571))

(assert (=> bs!1886939 m!7848446))

(assert (=> bs!1886939 m!7848446))

(declare-fun m!7848572 () Bool)

(assert (=> bs!1886939 m!7848572))

(declare-fun m!7848574 () Bool)

(assert (=> bs!1886939 m!7848574))

(assert (=> b!7131260 d!2225571))

(declare-fun b!7131328 () Bool)

(declare-fun e!4285618 () Bool)

(declare-fun e!4285619 () Bool)

(assert (=> b!7131328 (= e!4285618 e!4285619)))

(declare-fun res!2909759 () Bool)

(assert (=> b!7131328 (=> (not res!2909759) (not e!4285619))))

(assert (=> b!7131328 (= res!2909759 (not ((_ is Nil!69060) lt!2564643)))))

(declare-fun b!7131330 () Bool)

(assert (=> b!7131330 (= e!4285619 (isPrefix!5934 (tail!13945 s1Rec!140) (tail!13945 lt!2564643)))))

(declare-fun d!2225573 () Bool)

(declare-fun e!4285617 () Bool)

(assert (=> d!2225573 e!4285617))

(declare-fun res!2909760 () Bool)

(assert (=> d!2225573 (=> res!2909760 e!4285617)))

(declare-fun lt!2564677 () Bool)

(assert (=> d!2225573 (= res!2909760 (not lt!2564677))))

(assert (=> d!2225573 (= lt!2564677 e!4285618)))

(declare-fun res!2909758 () Bool)

(assert (=> d!2225573 (=> res!2909758 e!4285618)))

(assert (=> d!2225573 (= res!2909758 ((_ is Nil!69060) s1Rec!140))))

(assert (=> d!2225573 (= (isPrefix!5934 s1Rec!140 lt!2564643) lt!2564677)))

(declare-fun b!7131331 () Bool)

(assert (=> b!7131331 (= e!4285617 (>= (size!41490 lt!2564643) (size!41490 s1Rec!140)))))

(declare-fun b!7131329 () Bool)

(declare-fun res!2909761 () Bool)

(assert (=> b!7131329 (=> (not res!2909761) (not e!4285619))))

(assert (=> b!7131329 (= res!2909761 (= (head!14473 s1Rec!140) (head!14473 lt!2564643)))))

(assert (= (and d!2225573 (not res!2909758)) b!7131328))

(assert (= (and b!7131328 res!2909759) b!7131329))

(assert (= (and b!7131329 res!2909761) b!7131330))

(assert (= (and d!2225573 (not res!2909760)) b!7131331))

(assert (=> b!7131330 m!7848494))

(declare-fun m!7848576 () Bool)

(assert (=> b!7131330 m!7848576))

(assert (=> b!7131330 m!7848494))

(assert (=> b!7131330 m!7848576))

(declare-fun m!7848578 () Bool)

(assert (=> b!7131330 m!7848578))

(declare-fun m!7848580 () Bool)

(assert (=> b!7131331 m!7848580))

(assert (=> b!7131331 m!7848430))

(assert (=> b!7131329 m!7848490))

(declare-fun m!7848582 () Bool)

(assert (=> b!7131329 m!7848582))

(assert (=> b!7131260 d!2225573))

(declare-fun d!2225575 () Bool)

(assert (=> d!2225575 (isPrefix!5934 lt!2564644 (++!16203 lt!2564644 (t!383161 s2Rec!140)))))

(declare-fun lt!2564678 () Unit!163007)

(assert (=> d!2225575 (= lt!2564678 (choose!55107 lt!2564644 (t!383161 s2Rec!140)))))

(assert (=> d!2225575 (= (lemmaConcatTwoListThenFirstIsPrefix!3647 lt!2564644 (t!383161 s2Rec!140)) lt!2564678)))

(declare-fun bs!1886940 () Bool)

(assert (= bs!1886940 d!2225575))

(assert (=> bs!1886940 m!7848426))

(assert (=> bs!1886940 m!7848426))

(declare-fun m!7848584 () Bool)

(assert (=> bs!1886940 m!7848584))

(declare-fun m!7848586 () Bool)

(assert (=> bs!1886940 m!7848586))

(assert (=> b!7131260 d!2225575))

(declare-fun b!7131332 () Bool)

(declare-fun e!4285621 () Bool)

(declare-fun e!4285622 () Bool)

(assert (=> b!7131332 (= e!4285621 e!4285622)))

(declare-fun res!2909763 () Bool)

(assert (=> b!7131332 (=> (not res!2909763) (not e!4285622))))

(assert (=> b!7131332 (= res!2909763 (not ((_ is Nil!69060) s1!1688)))))

(declare-fun b!7131334 () Bool)

(assert (=> b!7131334 (= e!4285622 (isPrefix!5934 (tail!13945 lt!2564644) (tail!13945 s1!1688)))))

(declare-fun d!2225577 () Bool)

(declare-fun e!4285620 () Bool)

(assert (=> d!2225577 e!4285620))

(declare-fun res!2909764 () Bool)

(assert (=> d!2225577 (=> res!2909764 e!4285620)))

(declare-fun lt!2564679 () Bool)

(assert (=> d!2225577 (= res!2909764 (not lt!2564679))))

(assert (=> d!2225577 (= lt!2564679 e!4285621)))

(declare-fun res!2909762 () Bool)

(assert (=> d!2225577 (=> res!2909762 e!4285621)))

(assert (=> d!2225577 (= res!2909762 ((_ is Nil!69060) lt!2564644))))

(assert (=> d!2225577 (= (isPrefix!5934 lt!2564644 s1!1688) lt!2564679)))

(declare-fun b!7131335 () Bool)

(assert (=> b!7131335 (= e!4285620 (>= (size!41490 s1!1688) (size!41490 lt!2564644)))))

(declare-fun b!7131333 () Bool)

(declare-fun res!2909765 () Bool)

(assert (=> b!7131333 (=> (not res!2909765) (not e!4285622))))

(assert (=> b!7131333 (= res!2909765 (= (head!14473 lt!2564644) (head!14473 s1!1688)))))

(assert (= (and d!2225577 (not res!2909762)) b!7131332))

(assert (= (and b!7131332 res!2909763) b!7131333))

(assert (= (and b!7131333 res!2909765) b!7131334))

(assert (= (and d!2225577 (not res!2909764)) b!7131335))

(assert (=> b!7131334 m!7848538))

(assert (=> b!7131334 m!7848520))

(assert (=> b!7131334 m!7848538))

(assert (=> b!7131334 m!7848520))

(declare-fun m!7848588 () Bool)

(assert (=> b!7131334 m!7848588))

(assert (=> b!7131335 m!7848414))

(assert (=> b!7131335 m!7848546))

(assert (=> b!7131333 m!7848548))

(assert (=> b!7131333 m!7848528))

(assert (=> b!7131260 d!2225577))

(declare-fun d!2225579 () Bool)

(declare-fun lt!2564680 () Int)

(assert (=> d!2225579 (>= lt!2564680 0)))

(declare-fun e!4285623 () Int)

(assert (=> d!2225579 (= lt!2564680 e!4285623)))

(declare-fun c!1330189 () Bool)

(assert (=> d!2225579 (= c!1330189 ((_ is Nil!69060) s1!1688))))

(assert (=> d!2225579 (= (size!41490 s1!1688) lt!2564680)))

(declare-fun b!7131336 () Bool)

(assert (=> b!7131336 (= e!4285623 0)))

(declare-fun b!7131337 () Bool)

(assert (=> b!7131337 (= e!4285623 (+ 1 (size!41490 (t!383161 s1!1688))))))

(assert (= (and d!2225579 c!1330189) b!7131336))

(assert (= (and d!2225579 (not c!1330189)) b!7131337))

(declare-fun m!7848590 () Bool)

(assert (=> b!7131337 m!7848590))

(assert (=> b!7131260 d!2225579))

(declare-fun b!7131338 () Bool)

(declare-fun e!4285625 () Bool)

(declare-fun e!4285626 () Bool)

(assert (=> b!7131338 (= e!4285625 e!4285626)))

(declare-fun res!2909767 () Bool)

(assert (=> b!7131338 (=> (not res!2909767) (not e!4285626))))

(assert (=> b!7131338 (= res!2909767 (not ((_ is Nil!69060) s1!1688)))))

(declare-fun b!7131340 () Bool)

(assert (=> b!7131340 (= e!4285626 (isPrefix!5934 (tail!13945 s1Rec!140) (tail!13945 s1!1688)))))

(declare-fun d!2225581 () Bool)

(declare-fun e!4285624 () Bool)

(assert (=> d!2225581 e!4285624))

(declare-fun res!2909768 () Bool)

(assert (=> d!2225581 (=> res!2909768 e!4285624)))

(declare-fun lt!2564681 () Bool)

(assert (=> d!2225581 (= res!2909768 (not lt!2564681))))

(assert (=> d!2225581 (= lt!2564681 e!4285625)))

(declare-fun res!2909766 () Bool)

(assert (=> d!2225581 (=> res!2909766 e!4285625)))

(assert (=> d!2225581 (= res!2909766 ((_ is Nil!69060) s1Rec!140))))

(assert (=> d!2225581 (= (isPrefix!5934 s1Rec!140 s1!1688) lt!2564681)))

(declare-fun b!7131341 () Bool)

(assert (=> b!7131341 (= e!4285624 (>= (size!41490 s1!1688) (size!41490 s1Rec!140)))))

(declare-fun b!7131339 () Bool)

(declare-fun res!2909769 () Bool)

(assert (=> b!7131339 (=> (not res!2909769) (not e!4285626))))

(assert (=> b!7131339 (= res!2909769 (= (head!14473 s1Rec!140) (head!14473 s1!1688)))))

(assert (= (and d!2225581 (not res!2909766)) b!7131338))

(assert (= (and b!7131338 res!2909767) b!7131339))

(assert (= (and b!7131339 res!2909769) b!7131340))

(assert (= (and d!2225581 (not res!2909768)) b!7131341))

(assert (=> b!7131340 m!7848494))

(assert (=> b!7131340 m!7848520))

(assert (=> b!7131340 m!7848494))

(assert (=> b!7131340 m!7848520))

(declare-fun m!7848592 () Bool)

(assert (=> b!7131340 m!7848592))

(assert (=> b!7131341 m!7848414))

(assert (=> b!7131341 m!7848430))

(assert (=> b!7131339 m!7848490))

(assert (=> b!7131339 m!7848528))

(assert (=> b!7131257 d!2225581))

(declare-fun b!7131345 () Bool)

(declare-fun lt!2564682 () List!69184)

(declare-fun e!4285628 () Bool)

(assert (=> b!7131345 (= e!4285628 (or (not (= s2!1620 Nil!69060)) (= lt!2564682 s1!1688)))))

(declare-fun b!7131344 () Bool)

(declare-fun res!2909771 () Bool)

(assert (=> b!7131344 (=> (not res!2909771) (not e!4285628))))

(assert (=> b!7131344 (= res!2909771 (= (size!41490 lt!2564682) (+ (size!41490 s1!1688) (size!41490 s2!1620))))))

(declare-fun b!7131343 () Bool)

(declare-fun e!4285627 () List!69184)

(assert (=> b!7131343 (= e!4285627 (Cons!69060 (h!75508 s1!1688) (++!16203 (t!383161 s1!1688) s2!1620)))))

(declare-fun d!2225583 () Bool)

(assert (=> d!2225583 e!4285628))

(declare-fun res!2909770 () Bool)

(assert (=> d!2225583 (=> (not res!2909770) (not e!4285628))))

(assert (=> d!2225583 (= res!2909770 (= (content!14124 lt!2564682) ((_ map or) (content!14124 s1!1688) (content!14124 s2!1620))))))

(assert (=> d!2225583 (= lt!2564682 e!4285627)))

(declare-fun c!1330190 () Bool)

(assert (=> d!2225583 (= c!1330190 ((_ is Nil!69060) s1!1688))))

(assert (=> d!2225583 (= (++!16203 s1!1688 s2!1620) lt!2564682)))

(declare-fun b!7131342 () Bool)

(assert (=> b!7131342 (= e!4285627 s2!1620)))

(assert (= (and d!2225583 c!1330190) b!7131342))

(assert (= (and d!2225583 (not c!1330190)) b!7131343))

(assert (= (and d!2225583 res!2909770) b!7131344))

(assert (= (and b!7131344 res!2909771) b!7131345))

(declare-fun m!7848594 () Bool)

(assert (=> b!7131344 m!7848594))

(assert (=> b!7131344 m!7848414))

(declare-fun m!7848596 () Bool)

(assert (=> b!7131344 m!7848596))

(declare-fun m!7848598 () Bool)

(assert (=> b!7131343 m!7848598))

(declare-fun m!7848600 () Bool)

(assert (=> d!2225583 m!7848600))

(declare-fun m!7848602 () Bool)

(assert (=> d!2225583 m!7848602))

(declare-fun m!7848604 () Bool)

(assert (=> d!2225583 m!7848604))

(assert (=> b!7131256 d!2225583))

(declare-fun d!2225585 () Bool)

(declare-fun c!1330191 () Bool)

(assert (=> d!2225585 (= c!1330191 (isEmpty!40030 s1!1688))))

(declare-fun e!4285629 () Bool)

(assert (=> d!2225585 (= (matchZipper!3321 z1!552 s1!1688) e!4285629)))

(declare-fun b!7131346 () Bool)

(assert (=> b!7131346 (= e!4285629 (nullableZipper!2764 z1!552))))

(declare-fun b!7131347 () Bool)

(assert (=> b!7131347 (= e!4285629 (matchZipper!3321 (derivationStepZipper!3176 z1!552 (head!14473 s1!1688)) (tail!13945 s1!1688)))))

(assert (= (and d!2225585 c!1330191) b!7131346))

(assert (= (and d!2225585 (not c!1330191)) b!7131347))

(declare-fun m!7848606 () Bool)

(assert (=> d!2225585 m!7848606))

(assert (=> b!7131346 m!7848488))

(assert (=> b!7131347 m!7848528))

(assert (=> b!7131347 m!7848528))

(declare-fun m!7848608 () Bool)

(assert (=> b!7131347 m!7848608))

(assert (=> b!7131347 m!7848520))

(assert (=> b!7131347 m!7848608))

(assert (=> b!7131347 m!7848520))

(declare-fun m!7848610 () Bool)

(assert (=> b!7131347 m!7848610))

(assert (=> start!694684 d!2225585))

(declare-fun d!2225587 () Bool)

(declare-fun c!1330192 () Bool)

(assert (=> d!2225587 (= c!1330192 (isEmpty!40030 s2!1620))))

(declare-fun e!4285630 () Bool)

(assert (=> d!2225587 (= (matchZipper!3321 z2!471 s2!1620) e!4285630)))

(declare-fun b!7131348 () Bool)

(assert (=> b!7131348 (= e!4285630 (nullableZipper!2764 z2!471))))

(declare-fun b!7131349 () Bool)

(assert (=> b!7131349 (= e!4285630 (matchZipper!3321 (derivationStepZipper!3176 z2!471 (head!14473 s2!1620)) (tail!13945 s2!1620)))))

(assert (= (and d!2225587 c!1330192) b!7131348))

(assert (= (and d!2225587 (not c!1330192)) b!7131349))

(declare-fun m!7848612 () Bool)

(assert (=> d!2225587 m!7848612))

(assert (=> b!7131348 m!7848458))

(declare-fun m!7848614 () Bool)

(assert (=> b!7131349 m!7848614))

(assert (=> b!7131349 m!7848614))

(declare-fun m!7848616 () Bool)

(assert (=> b!7131349 m!7848616))

(declare-fun m!7848618 () Bool)

(assert (=> b!7131349 m!7848618))

(assert (=> b!7131349 m!7848616))

(assert (=> b!7131349 m!7848618))

(declare-fun m!7848620 () Bool)

(assert (=> b!7131349 m!7848620))

(assert (=> b!7131247 d!2225587))

(declare-fun d!2225589 () Bool)

(assert (=> d!2225589 (= s1!1688 s1Rec!140)))

(declare-fun lt!2564685 () Unit!163007)

(declare-fun choose!55114 (List!69184 List!69184 List!69184) Unit!163007)

(assert (=> d!2225589 (= lt!2564685 (choose!55114 s1!1688 s1Rec!140 s!7390))))

(assert (=> d!2225589 (isPrefix!5934 s1!1688 s!7390)))

(assert (=> d!2225589 (= (lemmaIsPrefixSameLengthThenSameList!1455 s1!1688 s1Rec!140 s!7390) lt!2564685)))

(declare-fun bs!1886941 () Bool)

(assert (= bs!1886941 d!2225589))

(declare-fun m!7848622 () Bool)

(assert (=> bs!1886941 m!7848622))

(assert (=> bs!1886941 m!7848484))

(assert (=> b!7131246 d!2225589))

(declare-fun b!7131354 () Bool)

(declare-fun e!4285633 () Bool)

(declare-fun tp!1965248 () Bool)

(assert (=> b!7131354 (= e!4285633 (and tp_is_empty!45731 tp!1965248))))

(assert (=> b!7131254 (= tp!1965245 e!4285633)))

(assert (= (and b!7131254 ((_ is Cons!69060) (t!383161 s!7390))) b!7131354))

(declare-fun condSetEmpty!52042 () Bool)

(assert (=> setNonEmpty!52038 (= condSetEmpty!52042 (= setRest!52038 ((as const (Array Context!14118 Bool)) false)))))

(declare-fun setRes!52042 () Bool)

(assert (=> setNonEmpty!52038 (= tp!1965240 setRes!52042)))

(declare-fun setIsEmpty!52042 () Bool)

(assert (=> setIsEmpty!52042 setRes!52042))

(declare-fun e!4285636 () Bool)

(declare-fun setElem!52042 () Context!14118)

(declare-fun tp!1965253 () Bool)

(declare-fun setNonEmpty!52042 () Bool)

(assert (=> setNonEmpty!52042 (= setRes!52042 (and tp!1965253 (inv!88190 setElem!52042) e!4285636))))

(declare-fun setRest!52042 () (InoxSet Context!14118))

(assert (=> setNonEmpty!52042 (= setRest!52038 ((_ map or) (store ((as const (Array Context!14118 Bool)) false) setElem!52042 true) setRest!52042))))

(declare-fun b!7131359 () Bool)

(declare-fun tp!1965254 () Bool)

(assert (=> b!7131359 (= e!4285636 tp!1965254)))

(assert (= (and setNonEmpty!52038 condSetEmpty!52042) setIsEmpty!52042))

(assert (= (and setNonEmpty!52038 (not condSetEmpty!52042)) setNonEmpty!52042))

(assert (= setNonEmpty!52042 b!7131359))

(declare-fun m!7848624 () Bool)

(assert (=> setNonEmpty!52042 m!7848624))

(declare-fun b!7131360 () Bool)

(declare-fun e!4285637 () Bool)

(declare-fun tp!1965255 () Bool)

(assert (=> b!7131360 (= e!4285637 (and tp_is_empty!45731 tp!1965255))))

(assert (=> b!7131245 (= tp!1965237 e!4285637)))

(assert (= (and b!7131245 ((_ is Cons!69060) (t!383161 s1!1688))) b!7131360))

(declare-fun b!7131361 () Bool)

(declare-fun e!4285638 () Bool)

(declare-fun tp!1965256 () Bool)

(assert (=> b!7131361 (= e!4285638 (and tp_is_empty!45731 tp!1965256))))

(assert (=> b!7131258 (= tp!1965238 e!4285638)))

(assert (= (and b!7131258 ((_ is Cons!69060) (t!383161 s1Rec!140))) b!7131361))

(declare-fun b!7131366 () Bool)

(declare-fun e!4285641 () Bool)

(declare-fun tp!1965261 () Bool)

(declare-fun tp!1965262 () Bool)

(assert (=> b!7131366 (= e!4285641 (and tp!1965261 tp!1965262))))

(assert (=> b!7131253 (= tp!1965242 e!4285641)))

(assert (= (and b!7131253 ((_ is Cons!69061) (exprs!7559 setElem!52038))) b!7131366))

(declare-fun b!7131367 () Bool)

(declare-fun e!4285642 () Bool)

(declare-fun tp!1965263 () Bool)

(declare-fun tp!1965264 () Bool)

(assert (=> b!7131367 (= e!4285642 (and tp!1965263 tp!1965264))))

(assert (=> b!7131252 (= tp!1965241 e!4285642)))

(assert (= (and b!7131252 ((_ is Cons!69061) (exprs!7559 setElem!52039))) b!7131367))

(declare-fun b!7131368 () Bool)

(declare-fun e!4285643 () Bool)

(declare-fun tp!1965265 () Bool)

(assert (=> b!7131368 (= e!4285643 (and tp_is_empty!45731 tp!1965265))))

(assert (=> b!7131248 (= tp!1965244 e!4285643)))

(assert (= (and b!7131248 ((_ is Cons!69060) (t!383161 s2Rec!140))) b!7131368))

(declare-fun condSetEmpty!52043 () Bool)

(assert (=> setNonEmpty!52039 (= condSetEmpty!52043 (= setRest!52039 ((as const (Array Context!14118 Bool)) false)))))

(declare-fun setRes!52043 () Bool)

(assert (=> setNonEmpty!52039 (= tp!1965243 setRes!52043)))

(declare-fun setIsEmpty!52043 () Bool)

(assert (=> setIsEmpty!52043 setRes!52043))

(declare-fun setElem!52043 () Context!14118)

(declare-fun e!4285644 () Bool)

(declare-fun tp!1965266 () Bool)

(declare-fun setNonEmpty!52043 () Bool)

(assert (=> setNonEmpty!52043 (= setRes!52043 (and tp!1965266 (inv!88190 setElem!52043) e!4285644))))

(declare-fun setRest!52043 () (InoxSet Context!14118))

(assert (=> setNonEmpty!52043 (= setRest!52039 ((_ map or) (store ((as const (Array Context!14118 Bool)) false) setElem!52043 true) setRest!52043))))

(declare-fun b!7131369 () Bool)

(declare-fun tp!1965267 () Bool)

(assert (=> b!7131369 (= e!4285644 tp!1965267)))

(assert (= (and setNonEmpty!52039 condSetEmpty!52043) setIsEmpty!52043))

(assert (= (and setNonEmpty!52039 (not condSetEmpty!52043)) setNonEmpty!52043))

(assert (= setNonEmpty!52043 b!7131369))

(declare-fun m!7848626 () Bool)

(assert (=> setNonEmpty!52043 m!7848626))

(declare-fun b!7131370 () Bool)

(declare-fun e!4285645 () Bool)

(declare-fun tp!1965268 () Bool)

(assert (=> b!7131370 (= e!4285645 (and tp_is_empty!45731 tp!1965268))))

(assert (=> b!7131255 (= tp!1965239 e!4285645)))

(assert (= (and b!7131255 ((_ is Cons!69060) (t!383161 s2!1620))) b!7131370))

(check-sat (not b!7131334) (not b!7131348) (not d!2225539) (not b!7131330) (not d!2225571) (not b!7131349) (not b!7131366) (not d!2225565) (not d!2225557) (not b!7131333) (not b!7131329) (not b!7131319) (not b!7131370) (not b!7131369) (not d!2225547) (not d!2225575) (not b!7131281) (not b!7131337) (not b!7131344) (not b!7131335) (not b!7131309) (not b!7131320) (not b!7131346) (not d!2225583) (not d!2225535) (not b!7131295) (not b!7131292) (not b!7131291) (not d!2225585) (not d!2225549) (not b!7131308) (not b!7131343) (not d!2225587) (not b!7131368) (not d!2225545) (not b!7131341) (not b!7131324) (not d!2225567) (not b!7131323) (not b!7131347) (not b!7131280) (not b!7131340) (not d!2225551) (not b!7131361) (not b!7131317) (not b!7131307) (not b!7131321) (not b!7131360) (not b!7131296) (not b!7131367) (not b!7131267) (not b!7131331) (not b!7131315) (not b!7131327) (not b!7131359) (not d!2225563) (not d!2225589) (not setNonEmpty!52043) (not b!7131339) (not b!7131266) (not d!2225543) (not setNonEmpty!52042) tp_is_empty!45731 (not b!7131354))
(check-sat)
