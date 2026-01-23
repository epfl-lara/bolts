; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699240 () Bool)

(assert start!699240)

(declare-fun b!7183174 () Bool)

(assert (=> b!7183174 true))

(declare-fun b!7183170 () Bool)

(assert (=> b!7183170 true))

(assert (=> b!7183170 true))

(declare-fun b!7183165 () Bool)

(declare-fun res!2925444 () Bool)

(declare-fun e!4313762 () Bool)

(assert (=> b!7183165 (=> res!2925444 e!4313762)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36972 0))(
  ( (C!36973 (val!28434 Int)) )
))
(declare-datatypes ((Regex!18349 0))(
  ( (ElementMatch!18349 (c!1337348 C!36972)) (Concat!27194 (regOne!37210 Regex!18349) (regTwo!37210 Regex!18349)) (EmptyExpr!18349) (Star!18349 (reg!18678 Regex!18349)) (EmptyLang!18349) (Union!18349 (regOne!37211 Regex!18349) (regTwo!37211 Regex!18349)) )
))
(declare-datatypes ((List!69777 0))(
  ( (Nil!69653) (Cons!69653 (h!76101 Regex!18349) (t!383798 List!69777)) )
))
(declare-datatypes ((Context!14602 0))(
  ( (Context!14603 (exprs!7801 List!69777)) )
))
(declare-fun lt!2570782 () (InoxSet Context!14602))

(assert (=> b!7183165 (= res!2925444 (= lt!2570782 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun b!7183166 () Bool)

(declare-fun e!4313766 () Bool)

(declare-fun tp!1994236 () Bool)

(assert (=> b!7183166 (= e!4313766 tp!1994236)))

(declare-fun b!7183167 () Bool)

(declare-fun e!4313759 () Bool)

(declare-fun z!3530 () (InoxSet Context!14602))

(declare-fun lt!2570780 () Context!14602)

(assert (=> b!7183167 (= e!4313759 (not (= z!3530 (store ((as const (Array Context!14602 Bool)) false) lt!2570780 true))))))

(declare-fun b!7183168 () Bool)

(declare-fun e!4313760 () Bool)

(declare-fun e!4313761 () Bool)

(assert (=> b!7183168 (= e!4313760 (not e!4313761))))

(declare-fun res!2925445 () Bool)

(assert (=> b!7183168 (=> res!2925445 e!4313761)))

(declare-datatypes ((List!69778 0))(
  ( (Nil!69654) (Cons!69654 (h!76102 C!36972) (t!383799 List!69778)) )
))
(declare-fun s!7967 () List!69778)

(declare-fun isEmpty!40209 (List!69778) Bool)

(assert (=> b!7183168 (= res!2925445 (isEmpty!40209 s!7967))))

(declare-fun nullableContext!198 (Context!14602) Bool)

(assert (=> b!7183168 (nullableContext!198 lt!2570780)))

(assert (=> b!7183168 (= lt!2570780 (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)))))

(declare-fun res!2925443 () Bool)

(assert (=> start!699240 (=> (not res!2925443) (not e!4313760))))

(declare-datatypes ((List!69779 0))(
  ( (Nil!69655) (Cons!69655 (h!76103 Context!14602) (t!383800 List!69779)) )
))
(declare-fun unfocusZipper!2609 (List!69779) Regex!18349)

(declare-fun toList!11292 ((InoxSet Context!14602)) List!69779)

(assert (=> start!699240 (= res!2925443 (= (unfocusZipper!2609 (toList!11292 z!3530)) EmptyExpr!18349))))

(assert (=> start!699240 e!4313760))

(declare-fun condSetEmpty!53131 () Bool)

(assert (=> start!699240 (= condSetEmpty!53131 (= z!3530 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun setRes!53131 () Bool)

(assert (=> start!699240 setRes!53131))

(declare-fun e!4313763 () Bool)

(assert (=> start!699240 e!4313763))

(declare-fun b!7183169 () Bool)

(declare-fun res!2925446 () Bool)

(declare-fun e!4313765 () Bool)

(assert (=> b!7183169 (=> res!2925446 e!4313765)))

(declare-fun lt!2570779 () Context!14602)

(assert (=> b!7183169 (= res!2925446 (not (select lt!2570782 lt!2570779)))))

(declare-fun setNonEmpty!53131 () Bool)

(declare-fun tp!1994234 () Bool)

(declare-fun setElem!53131 () Context!14602)

(declare-fun inv!88894 (Context!14602) Bool)

(assert (=> setNonEmpty!53131 (= setRes!53131 (and tp!1994234 (inv!88894 setElem!53131) e!4313766))))

(declare-fun setRest!53131 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53131 (= z!3530 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53131 true) setRest!53131))))

(assert (=> b!7183170 (= e!4313765 e!4313759)))

(declare-fun res!2925442 () Bool)

(assert (=> b!7183170 (=> res!2925442 e!4313759)))

(declare-fun lambda!437513 () Int)

(declare-fun exists!4076 ((InoxSet Context!14602) Int) Bool)

(assert (=> b!7183170 (= res!2925442 (not (exists!4076 z!3530 lambda!437513)))))

(declare-fun lambda!437512 () Int)

(declare-fun empty!2967 () Context!14602)

(declare-fun flatMapPost!62 ((InoxSet Context!14602) Int Context!14602) Context!14602)

(assert (=> b!7183170 (= (flatMapPost!62 z!3530 lambda!437512 lt!2570779) empty!2967)))

(assert (=> b!7183170 true))

(declare-fun e!4313764 () Bool)

(assert (=> b!7183170 (and (inv!88894 empty!2967) e!4313764)))

(declare-fun b!7183171 () Bool)

(declare-fun res!2925440 () Bool)

(assert (=> b!7183171 (=> (not res!2925440) (not e!4313760))))

(declare-fun focus!424 (Regex!18349) (InoxSet Context!14602))

(assert (=> b!7183171 (= res!2925440 (= z!3530 (focus!424 EmptyExpr!18349)))))

(declare-fun b!7183172 () Bool)

(assert (=> b!7183172 (= e!4313761 e!4313762)))

(declare-fun res!2925447 () Bool)

(assert (=> b!7183172 (=> res!2925447 e!4313762)))

(declare-fun lt!2570781 () C!36972)

(declare-fun derivationStepZipperUp!2325 (Context!14602 C!36972) (InoxSet Context!14602))

(assert (=> b!7183172 (= res!2925447 (not (= (derivationStepZipperUp!2325 lt!2570780 lt!2570781) ((as const (Array Context!14602 Bool)) false))))))

(declare-fun derivationStepZipper!3218 ((InoxSet Context!14602) C!36972) (InoxSet Context!14602))

(assert (=> b!7183172 (= lt!2570782 (derivationStepZipper!3218 z!3530 lt!2570781))))

(declare-fun head!14661 (List!69778) C!36972)

(assert (=> b!7183172 (= lt!2570781 (head!14661 s!7967))))

(declare-fun setIsEmpty!53131 () Bool)

(assert (=> setIsEmpty!53131 setRes!53131))

(declare-fun b!7183173 () Bool)

(declare-fun tp!1994237 () Bool)

(assert (=> b!7183173 (= e!4313764 tp!1994237)))

(assert (=> b!7183174 (= e!4313762 e!4313765)))

(declare-fun res!2925441 () Bool)

(assert (=> b!7183174 (=> res!2925441 e!4313765)))

(declare-fun flatMap!2669 ((InoxSet Context!14602) Int) (InoxSet Context!14602))

(assert (=> b!7183174 (= res!2925441 (not (select (flatMap!2669 z!3530 lambda!437512) lt!2570779)))))

(declare-fun head!14662 (List!69779) Context!14602)

(assert (=> b!7183174 (= lt!2570779 (head!14662 (toList!11292 lt!2570782)))))

(declare-fun b!7183175 () Bool)

(declare-fun tp_is_empty!46259 () Bool)

(declare-fun tp!1994235 () Bool)

(assert (=> b!7183175 (= e!4313763 (and tp_is_empty!46259 tp!1994235))))

(assert (= (and start!699240 res!2925443) b!7183171))

(assert (= (and b!7183171 res!2925440) b!7183168))

(assert (= (and b!7183168 (not res!2925445)) b!7183172))

(assert (= (and b!7183172 (not res!2925447)) b!7183165))

(assert (= (and b!7183165 (not res!2925444)) b!7183174))

(assert (= (and b!7183174 (not res!2925441)) b!7183169))

(assert (= (and b!7183169 (not res!2925446)) b!7183170))

(assert (= b!7183170 b!7183173))

(assert (= (and b!7183170 (not res!2925442)) b!7183167))

(assert (= (and start!699240 condSetEmpty!53131) setIsEmpty!53131))

(assert (= (and start!699240 (not condSetEmpty!53131)) setNonEmpty!53131))

(assert (= setNonEmpty!53131 b!7183166))

(get-info :version)

(assert (= (and start!699240 ((_ is Cons!69654) s!7967)) b!7183175))

(declare-fun m!7880426 () Bool)

(assert (=> b!7183172 m!7880426))

(declare-fun m!7880428 () Bool)

(assert (=> b!7183172 m!7880428))

(declare-fun m!7880430 () Bool)

(assert (=> b!7183172 m!7880430))

(declare-fun m!7880432 () Bool)

(assert (=> start!699240 m!7880432))

(assert (=> start!699240 m!7880432))

(declare-fun m!7880434 () Bool)

(assert (=> start!699240 m!7880434))

(declare-fun m!7880436 () Bool)

(assert (=> b!7183171 m!7880436))

(declare-fun m!7880438 () Bool)

(assert (=> b!7183168 m!7880438))

(declare-fun m!7880440 () Bool)

(assert (=> b!7183168 m!7880440))

(declare-fun m!7880442 () Bool)

(assert (=> setNonEmpty!53131 m!7880442))

(declare-fun m!7880444 () Bool)

(assert (=> b!7183167 m!7880444))

(declare-fun m!7880446 () Bool)

(assert (=> b!7183170 m!7880446))

(declare-fun m!7880448 () Bool)

(assert (=> b!7183170 m!7880448))

(declare-fun m!7880450 () Bool)

(assert (=> b!7183170 m!7880450))

(declare-fun m!7880452 () Bool)

(assert (=> b!7183169 m!7880452))

(declare-fun m!7880454 () Bool)

(assert (=> b!7183174 m!7880454))

(declare-fun m!7880456 () Bool)

(assert (=> b!7183174 m!7880456))

(declare-fun m!7880458 () Bool)

(assert (=> b!7183174 m!7880458))

(assert (=> b!7183174 m!7880458))

(declare-fun m!7880460 () Bool)

(assert (=> b!7183174 m!7880460))

(check-sat (not b!7183175) (not b!7183172) (not b!7183168) (not b!7183173) (not setNonEmpty!53131) (not start!699240) (not b!7183170) tp_is_empty!46259 (not b!7183174) (not b!7183171) (not b!7183166))
(check-sat)
(get-model)

(declare-fun d!2237371 () Bool)

(declare-fun lt!2570794 () Bool)

(declare-fun exists!4078 (List!69779 Int) Bool)

(assert (=> d!2237371 (= lt!2570794 (exists!4078 (toList!11292 z!3530) lambda!437513))))

(declare-fun choose!55390 ((InoxSet Context!14602) Int) Bool)

(assert (=> d!2237371 (= lt!2570794 (choose!55390 z!3530 lambda!437513))))

(assert (=> d!2237371 (= (exists!4076 z!3530 lambda!437513) lt!2570794)))

(declare-fun bs!1896911 () Bool)

(assert (= bs!1896911 d!2237371))

(assert (=> bs!1896911 m!7880432))

(assert (=> bs!1896911 m!7880432))

(declare-fun m!7880482 () Bool)

(assert (=> bs!1896911 m!7880482))

(declare-fun m!7880484 () Bool)

(assert (=> bs!1896911 m!7880484))

(assert (=> b!7183170 d!2237371))

(declare-fun bs!1896912 () Bool)

(declare-fun d!2237375 () Bool)

(assert (= bs!1896912 (and d!2237375 b!7183170)))

(declare-fun lambda!437525 () Int)

(assert (=> bs!1896912 (not (= lambda!437525 lambda!437513))))

(assert (=> d!2237375 true))

(assert (=> d!2237375 true))

(declare-fun order!28689 () Int)

(declare-fun order!28687 () Int)

(declare-fun dynLambda!28366 (Int Int) Int)

(declare-fun dynLambda!28367 (Int Int) Int)

(assert (=> d!2237375 (< (dynLambda!28366 order!28687 lambda!437512) (dynLambda!28367 order!28689 lambda!437525))))

(assert (=> d!2237375 (= (select (flatMap!2669 z!3530 lambda!437512) lt!2570779) (exists!4076 z!3530 lambda!437525))))

(declare-fun lt!2570797 () Context!14602)

(declare-fun choose!55391 ((InoxSet Context!14602) Int Context!14602) Context!14602)

(assert (=> d!2237375 (= lt!2570797 (choose!55391 z!3530 lambda!437512 lt!2570779))))

(assert (=> d!2237375 (= (flatMapPost!62 z!3530 lambda!437512 lt!2570779) lt!2570797)))

(declare-fun bs!1896913 () Bool)

(assert (= bs!1896913 d!2237375))

(assert (=> bs!1896913 m!7880454))

(assert (=> bs!1896913 m!7880456))

(declare-fun m!7880492 () Bool)

(assert (=> bs!1896913 m!7880492))

(declare-fun m!7880494 () Bool)

(assert (=> bs!1896913 m!7880494))

(assert (=> b!7183170 d!2237375))

(declare-fun d!2237379 () Bool)

(declare-fun lambda!437531 () Int)

(declare-fun forall!17177 (List!69777 Int) Bool)

(assert (=> d!2237379 (= (inv!88894 empty!2967) (forall!17177 (exprs!7801 empty!2967) lambda!437531))))

(declare-fun bs!1896916 () Bool)

(assert (= bs!1896916 d!2237379))

(declare-fun m!7880498 () Bool)

(assert (=> bs!1896916 m!7880498))

(assert (=> b!7183170 d!2237379))

(declare-fun d!2237385 () Bool)

(declare-fun choose!55392 ((InoxSet Context!14602) Int) (InoxSet Context!14602))

(assert (=> d!2237385 (= (flatMap!2669 z!3530 lambda!437512) (choose!55392 z!3530 lambda!437512))))

(declare-fun bs!1896917 () Bool)

(assert (= bs!1896917 d!2237385))

(declare-fun m!7880500 () Bool)

(assert (=> bs!1896917 m!7880500))

(assert (=> b!7183174 d!2237385))

(declare-fun d!2237387 () Bool)

(assert (=> d!2237387 (= (head!14662 (toList!11292 lt!2570782)) (h!76103 (toList!11292 lt!2570782)))))

(assert (=> b!7183174 d!2237387))

(declare-fun d!2237389 () Bool)

(declare-fun e!4313782 () Bool)

(assert (=> d!2237389 e!4313782))

(declare-fun res!2925458 () Bool)

(assert (=> d!2237389 (=> (not res!2925458) (not e!4313782))))

(declare-fun lt!2570804 () List!69779)

(declare-fun noDuplicate!2887 (List!69779) Bool)

(assert (=> d!2237389 (= res!2925458 (noDuplicate!2887 lt!2570804))))

(declare-fun choose!55393 ((InoxSet Context!14602)) List!69779)

(assert (=> d!2237389 (= lt!2570804 (choose!55393 lt!2570782))))

(assert (=> d!2237389 (= (toList!11292 lt!2570782) lt!2570804)))

(declare-fun b!7183209 () Bool)

(declare-fun content!14316 (List!69779) (InoxSet Context!14602))

(assert (=> b!7183209 (= e!4313782 (= (content!14316 lt!2570804) lt!2570782))))

(assert (= (and d!2237389 res!2925458) b!7183209))

(declare-fun m!7880514 () Bool)

(assert (=> d!2237389 m!7880514))

(declare-fun m!7880516 () Bool)

(assert (=> d!2237389 m!7880516))

(declare-fun m!7880518 () Bool)

(assert (=> b!7183209 m!7880518))

(assert (=> b!7183174 d!2237389))

(declare-fun bs!1896919 () Bool)

(declare-fun d!2237395 () Bool)

(assert (= bs!1896919 (and d!2237395 d!2237379)))

(declare-fun lambda!437532 () Int)

(assert (=> bs!1896919 (= lambda!437532 lambda!437531)))

(assert (=> d!2237395 (= (inv!88894 setElem!53131) (forall!17177 (exprs!7801 setElem!53131) lambda!437532))))

(declare-fun bs!1896920 () Bool)

(assert (= bs!1896920 d!2237395))

(declare-fun m!7880520 () Bool)

(assert (=> bs!1896920 m!7880520))

(assert (=> setNonEmpty!53131 d!2237395))

(declare-fun d!2237397 () Bool)

(declare-fun e!4313794 () Bool)

(assert (=> d!2237397 e!4313794))

(declare-fun res!2925465 () Bool)

(assert (=> d!2237397 (=> (not res!2925465) (not e!4313794))))

(declare-fun validRegex!9468 (Regex!18349) Bool)

(assert (=> d!2237397 (= res!2925465 (validRegex!9468 EmptyExpr!18349))))

(assert (=> d!2237397 (= (focus!424 EmptyExpr!18349) (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))

(declare-fun b!7183225 () Bool)

(assert (=> b!7183225 (= e!4313794 (= (unfocusZipper!2609 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))) EmptyExpr!18349))))

(assert (= (and d!2237397 res!2925465) b!7183225))

(declare-fun m!7880532 () Bool)

(assert (=> d!2237397 m!7880532))

(declare-fun m!7880534 () Bool)

(assert (=> d!2237397 m!7880534))

(assert (=> b!7183225 m!7880534))

(assert (=> b!7183225 m!7880534))

(declare-fun m!7880536 () Bool)

(assert (=> b!7183225 m!7880536))

(assert (=> b!7183225 m!7880536))

(declare-fun m!7880538 () Bool)

(assert (=> b!7183225 m!7880538))

(assert (=> b!7183171 d!2237397))

(declare-fun d!2237401 () Bool)

(assert (=> d!2237401 (= (isEmpty!40209 s!7967) ((_ is Nil!69654) s!7967))))

(assert (=> b!7183168 d!2237401))

(declare-fun bs!1896924 () Bool)

(declare-fun d!2237403 () Bool)

(assert (= bs!1896924 (and d!2237403 d!2237379)))

(declare-fun lambda!437536 () Int)

(assert (=> bs!1896924 (not (= lambda!437536 lambda!437531))))

(declare-fun bs!1896925 () Bool)

(assert (= bs!1896925 (and d!2237403 d!2237395)))

(assert (=> bs!1896925 (not (= lambda!437536 lambda!437532))))

(assert (=> d!2237403 (= (nullableContext!198 lt!2570780) (forall!17177 (exprs!7801 lt!2570780) lambda!437536))))

(declare-fun bs!1896926 () Bool)

(assert (= bs!1896926 d!2237403))

(declare-fun m!7880542 () Bool)

(assert (=> bs!1896926 m!7880542))

(assert (=> b!7183168 d!2237403))

(declare-fun b!7183242 () Bool)

(declare-fun e!4313807 () (InoxSet Context!14602))

(declare-fun e!4313805 () (InoxSet Context!14602))

(assert (=> b!7183242 (= e!4313807 e!4313805)))

(declare-fun c!1337364 () Bool)

(assert (=> b!7183242 (= c!1337364 ((_ is Cons!69653) (exprs!7801 lt!2570780)))))

(declare-fun call!654722 () (InoxSet Context!14602))

(declare-fun b!7183243 () Bool)

(assert (=> b!7183243 (= e!4313807 ((_ map or) call!654722 (derivationStepZipperUp!2325 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) lt!2570781)))))

(declare-fun b!7183244 () Bool)

(assert (=> b!7183244 (= e!4313805 call!654722)))

(declare-fun d!2237405 () Bool)

(declare-fun c!1337363 () Bool)

(declare-fun e!4313806 () Bool)

(assert (=> d!2237405 (= c!1337363 e!4313806)))

(declare-fun res!2925468 () Bool)

(assert (=> d!2237405 (=> (not res!2925468) (not e!4313806))))

(assert (=> d!2237405 (= res!2925468 ((_ is Cons!69653) (exprs!7801 lt!2570780)))))

(assert (=> d!2237405 (= (derivationStepZipperUp!2325 lt!2570780 lt!2570781) e!4313807)))

(declare-fun b!7183245 () Bool)

(declare-fun nullable!7776 (Regex!18349) Bool)

(assert (=> b!7183245 (= e!4313806 (nullable!7776 (h!76101 (exprs!7801 lt!2570780))))))

(declare-fun b!7183246 () Bool)

(assert (=> b!7183246 (= e!4313805 ((as const (Array Context!14602 Bool)) false))))

(declare-fun bm!654717 () Bool)

(declare-fun derivationStepZipperDown!2512 (Regex!18349 Context!14602 C!36972) (InoxSet Context!14602))

(assert (=> bm!654717 (= call!654722 (derivationStepZipperDown!2512 (h!76101 (exprs!7801 lt!2570780)) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) lt!2570781))))

(assert (= (and d!2237405 res!2925468) b!7183245))

(assert (= (and d!2237405 c!1337363) b!7183243))

(assert (= (and d!2237405 (not c!1337363)) b!7183242))

(assert (= (and b!7183242 c!1337364) b!7183244))

(assert (= (and b!7183242 (not c!1337364)) b!7183246))

(assert (= (or b!7183243 b!7183244) bm!654717))

(declare-fun m!7880544 () Bool)

(assert (=> b!7183243 m!7880544))

(declare-fun m!7880546 () Bool)

(assert (=> b!7183245 m!7880546))

(declare-fun m!7880548 () Bool)

(assert (=> bm!654717 m!7880548))

(assert (=> b!7183172 d!2237405))

(declare-fun bs!1896927 () Bool)

(declare-fun d!2237407 () Bool)

(assert (= bs!1896927 (and d!2237407 b!7183174)))

(declare-fun lambda!437539 () Int)

(assert (=> bs!1896927 (= lambda!437539 lambda!437512)))

(assert (=> d!2237407 true))

(assert (=> d!2237407 (= (derivationStepZipper!3218 z!3530 lt!2570781) (flatMap!2669 z!3530 lambda!437539))))

(declare-fun bs!1896928 () Bool)

(assert (= bs!1896928 d!2237407))

(declare-fun m!7880550 () Bool)

(assert (=> bs!1896928 m!7880550))

(assert (=> b!7183172 d!2237407))

(declare-fun d!2237409 () Bool)

(assert (=> d!2237409 (= (head!14661 s!7967) (h!76102 s!7967))))

(assert (=> b!7183172 d!2237409))

(declare-fun d!2237411 () Bool)

(declare-fun lt!2570807 () Regex!18349)

(assert (=> d!2237411 (validRegex!9468 lt!2570807)))

(declare-fun generalisedUnion!2771 (List!69777) Regex!18349)

(declare-fun unfocusZipperList!2327 (List!69779) List!69777)

(assert (=> d!2237411 (= lt!2570807 (generalisedUnion!2771 (unfocusZipperList!2327 (toList!11292 z!3530))))))

(assert (=> d!2237411 (= (unfocusZipper!2609 (toList!11292 z!3530)) lt!2570807)))

(declare-fun bs!1896929 () Bool)

(assert (= bs!1896929 d!2237411))

(declare-fun m!7880552 () Bool)

(assert (=> bs!1896929 m!7880552))

(assert (=> bs!1896929 m!7880432))

(declare-fun m!7880554 () Bool)

(assert (=> bs!1896929 m!7880554))

(assert (=> bs!1896929 m!7880554))

(declare-fun m!7880556 () Bool)

(assert (=> bs!1896929 m!7880556))

(assert (=> start!699240 d!2237411))

(declare-fun d!2237413 () Bool)

(declare-fun e!4313808 () Bool)

(assert (=> d!2237413 e!4313808))

(declare-fun res!2925469 () Bool)

(assert (=> d!2237413 (=> (not res!2925469) (not e!4313808))))

(declare-fun lt!2570808 () List!69779)

(assert (=> d!2237413 (= res!2925469 (noDuplicate!2887 lt!2570808))))

(assert (=> d!2237413 (= lt!2570808 (choose!55393 z!3530))))

(assert (=> d!2237413 (= (toList!11292 z!3530) lt!2570808)))

(declare-fun b!7183247 () Bool)

(assert (=> b!7183247 (= e!4313808 (= (content!14316 lt!2570808) z!3530))))

(assert (= (and d!2237413 res!2925469) b!7183247))

(declare-fun m!7880558 () Bool)

(assert (=> d!2237413 m!7880558))

(declare-fun m!7880560 () Bool)

(assert (=> d!2237413 m!7880560))

(declare-fun m!7880562 () Bool)

(assert (=> b!7183247 m!7880562))

(assert (=> start!699240 d!2237413))

(declare-fun condSetEmpty!53137 () Bool)

(assert (=> setNonEmpty!53131 (= condSetEmpty!53137 (= setRest!53131 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun setRes!53137 () Bool)

(assert (=> setNonEmpty!53131 (= tp!1994234 setRes!53137)))

(declare-fun setIsEmpty!53137 () Bool)

(assert (=> setIsEmpty!53137 setRes!53137))

(declare-fun tp!1994260 () Bool)

(declare-fun setNonEmpty!53137 () Bool)

(declare-fun e!4313811 () Bool)

(declare-fun setElem!53137 () Context!14602)

(assert (=> setNonEmpty!53137 (= setRes!53137 (and tp!1994260 (inv!88894 setElem!53137) e!4313811))))

(declare-fun setRest!53137 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53137 (= setRest!53131 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53137 true) setRest!53137))))

(declare-fun b!7183252 () Bool)

(declare-fun tp!1994259 () Bool)

(assert (=> b!7183252 (= e!4313811 tp!1994259)))

(assert (= (and setNonEmpty!53131 condSetEmpty!53137) setIsEmpty!53137))

(assert (= (and setNonEmpty!53131 (not condSetEmpty!53137)) setNonEmpty!53137))

(assert (= setNonEmpty!53137 b!7183252))

(declare-fun m!7880564 () Bool)

(assert (=> setNonEmpty!53137 m!7880564))

(declare-fun b!7183257 () Bool)

(declare-fun e!4313814 () Bool)

(declare-fun tp!1994263 () Bool)

(assert (=> b!7183257 (= e!4313814 (and tp_is_empty!46259 tp!1994263))))

(assert (=> b!7183175 (= tp!1994235 e!4313814)))

(assert (= (and b!7183175 ((_ is Cons!69654) (t!383799 s!7967))) b!7183257))

(declare-fun b!7183262 () Bool)

(declare-fun e!4313817 () Bool)

(declare-fun tp!1994268 () Bool)

(declare-fun tp!1994269 () Bool)

(assert (=> b!7183262 (= e!4313817 (and tp!1994268 tp!1994269))))

(assert (=> b!7183166 (= tp!1994236 e!4313817)))

(assert (= (and b!7183166 ((_ is Cons!69653) (exprs!7801 setElem!53131))) b!7183262))

(declare-fun b!7183263 () Bool)

(declare-fun e!4313818 () Bool)

(declare-fun tp!1994270 () Bool)

(declare-fun tp!1994271 () Bool)

(assert (=> b!7183263 (= e!4313818 (and tp!1994270 tp!1994271))))

(assert (=> b!7183173 (= tp!1994237 e!4313818)))

(assert (= (and b!7183173 ((_ is Cons!69653) (exprs!7801 empty!2967))) b!7183263))

(check-sat tp_is_empty!46259 (not b!7183262) (not d!2237385) (not d!2237407) (not bm!654717) (not b!7183225) (not d!2237397) (not b!7183243) (not d!2237375) (not b!7183245) (not setNonEmpty!53137) (not d!2237403) (not b!7183257) (not b!7183209) (not d!2237389) (not d!2237379) (not d!2237413) (not b!7183247) (not d!2237371) (not b!7183252) (not b!7183263) (not d!2237395) (not d!2237411))
(check-sat)
(get-model)

(declare-fun b!7183312 () Bool)

(declare-fun e!4313859 () (InoxSet Context!14602))

(declare-fun e!4313858 () (InoxSet Context!14602))

(assert (=> b!7183312 (= e!4313859 e!4313858)))

(declare-fun c!1337379 () Bool)

(assert (=> b!7183312 (= c!1337379 ((_ is Concat!27194) (h!76101 (exprs!7801 lt!2570780))))))

(declare-fun c!1337380 () Bool)

(declare-fun call!654738 () List!69777)

(declare-fun bm!654730 () Bool)

(declare-fun $colon$colon!2843 (List!69777 Regex!18349) List!69777)

(assert (=> bm!654730 (= call!654738 ($colon$colon!2843 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))) (ite (or c!1337380 c!1337379) (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (h!76101 (exprs!7801 lt!2570780)))))))

(declare-fun b!7183313 () Bool)

(declare-fun e!4313861 () (InoxSet Context!14602))

(assert (=> b!7183313 (= e!4313861 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183314 () Bool)

(declare-fun e!4313860 () (InoxSet Context!14602))

(declare-fun call!654735 () (InoxSet Context!14602))

(declare-fun call!654737 () (InoxSet Context!14602))

(assert (=> b!7183314 (= e!4313860 ((_ map or) call!654735 call!654737))))

(declare-fun c!1337378 () Bool)

(declare-fun bm!654731 () Bool)

(assert (=> bm!654731 (= call!654735 (derivationStepZipperDown!2512 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) lt!2570781))))

(declare-fun b!7183315 () Bool)

(declare-fun e!4313857 () Bool)

(assert (=> b!7183315 (= e!4313857 (nullable!7776 (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))

(declare-fun bm!654732 () Bool)

(declare-fun call!654739 () List!69777)

(assert (=> bm!654732 (= call!654739 call!654738)))

(declare-fun b!7183316 () Bool)

(declare-fun e!4313856 () (InoxSet Context!14602))

(assert (=> b!7183316 (= e!4313856 e!4313860)))

(assert (=> b!7183316 (= c!1337378 ((_ is Union!18349) (h!76101 (exprs!7801 lt!2570780))))))

(declare-fun d!2237419 () Bool)

(declare-fun c!1337377 () Bool)

(assert (=> d!2237419 (= c!1337377 (and ((_ is ElementMatch!18349) (h!76101 (exprs!7801 lt!2570780))) (= (c!1337348 (h!76101 (exprs!7801 lt!2570780))) lt!2570781)))))

(assert (=> d!2237419 (= (derivationStepZipperDown!2512 (h!76101 (exprs!7801 lt!2570780)) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) lt!2570781) e!4313856)))

(declare-fun b!7183317 () Bool)

(declare-fun call!654736 () (InoxSet Context!14602))

(assert (=> b!7183317 (= e!4313859 ((_ map or) call!654735 call!654736))))

(declare-fun bm!654733 () Bool)

(declare-fun call!654740 () (InoxSet Context!14602))

(assert (=> bm!654733 (= call!654740 call!654736)))

(declare-fun b!7183318 () Bool)

(assert (=> b!7183318 (= e!4313858 call!654740)))

(declare-fun bm!654734 () Bool)

(assert (=> bm!654734 (= call!654736 call!654737)))

(declare-fun b!7183319 () Bool)

(declare-fun c!1337381 () Bool)

(assert (=> b!7183319 (= c!1337381 ((_ is Star!18349) (h!76101 (exprs!7801 lt!2570780))))))

(assert (=> b!7183319 (= e!4313858 e!4313861)))

(declare-fun b!7183320 () Bool)

(assert (=> b!7183320 (= e!4313856 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) true))))

(declare-fun b!7183321 () Bool)

(assert (=> b!7183321 (= e!4313861 call!654740)))

(declare-fun bm!654735 () Bool)

(assert (=> bm!654735 (= call!654737 (derivationStepZipperDown!2512 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) lt!2570781))))

(declare-fun b!7183322 () Bool)

(assert (=> b!7183322 (= c!1337380 e!4313857)))

(declare-fun res!2925491 () Bool)

(assert (=> b!7183322 (=> (not res!2925491) (not e!4313857))))

(assert (=> b!7183322 (= res!2925491 ((_ is Concat!27194) (h!76101 (exprs!7801 lt!2570780))))))

(assert (=> b!7183322 (= e!4313860 e!4313859)))

(assert (= (and d!2237419 c!1337377) b!7183320))

(assert (= (and d!2237419 (not c!1337377)) b!7183316))

(assert (= (and b!7183316 c!1337378) b!7183314))

(assert (= (and b!7183316 (not c!1337378)) b!7183322))

(assert (= (and b!7183322 res!2925491) b!7183315))

(assert (= (and b!7183322 c!1337380) b!7183317))

(assert (= (and b!7183322 (not c!1337380)) b!7183312))

(assert (= (and b!7183312 c!1337379) b!7183318))

(assert (= (and b!7183312 (not c!1337379)) b!7183319))

(assert (= (and b!7183319 c!1337381) b!7183321))

(assert (= (and b!7183319 (not c!1337381)) b!7183313))

(assert (= (or b!7183318 b!7183321) bm!654732))

(assert (= (or b!7183318 b!7183321) bm!654733))

(assert (= (or b!7183317 bm!654733) bm!654734))

(assert (= (or b!7183317 bm!654732) bm!654730))

(assert (= (or b!7183314 bm!654734) bm!654735))

(assert (= (or b!7183314 b!7183317) bm!654731))

(declare-fun m!7880600 () Bool)

(assert (=> bm!654731 m!7880600))

(declare-fun m!7880602 () Bool)

(assert (=> b!7183320 m!7880602))

(declare-fun m!7880604 () Bool)

(assert (=> b!7183315 m!7880604))

(declare-fun m!7880606 () Bool)

(assert (=> bm!654735 m!7880606))

(declare-fun m!7880608 () Bool)

(assert (=> bm!654730 m!7880608))

(assert (=> bm!654717 d!2237419))

(declare-fun d!2237433 () Bool)

(assert (=> d!2237433 true))

(declare-fun setRes!53140 () Bool)

(assert (=> d!2237433 setRes!53140))

(declare-fun condSetEmpty!53140 () Bool)

(declare-fun res!2925494 () (InoxSet Context!14602))

(assert (=> d!2237433 (= condSetEmpty!53140 (= res!2925494 ((as const (Array Context!14602 Bool)) false)))))

(assert (=> d!2237433 (= (choose!55392 z!3530 lambda!437512) res!2925494)))

(declare-fun setIsEmpty!53140 () Bool)

(assert (=> setIsEmpty!53140 setRes!53140))

(declare-fun tp!1994286 () Bool)

(declare-fun setNonEmpty!53140 () Bool)

(declare-fun e!4313868 () Bool)

(declare-fun setElem!53140 () Context!14602)

(assert (=> setNonEmpty!53140 (= setRes!53140 (and tp!1994286 (inv!88894 setElem!53140) e!4313868))))

(declare-fun setRest!53140 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53140 (= res!2925494 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53140 true) setRest!53140))))

(declare-fun b!7183333 () Bool)

(declare-fun tp!1994285 () Bool)

(assert (=> b!7183333 (= e!4313868 tp!1994285)))

(assert (= (and d!2237433 condSetEmpty!53140) setIsEmpty!53140))

(assert (= (and d!2237433 (not condSetEmpty!53140)) setNonEmpty!53140))

(assert (= setNonEmpty!53140 b!7183333))

(declare-fun m!7880620 () Bool)

(assert (=> setNonEmpty!53140 m!7880620))

(assert (=> d!2237385 d!2237433))

(declare-fun d!2237441 () Bool)

(declare-fun res!2925499 () Bool)

(declare-fun e!4313873 () Bool)

(assert (=> d!2237441 (=> res!2925499 e!4313873)))

(assert (=> d!2237441 (= res!2925499 ((_ is Nil!69653) (exprs!7801 setElem!53131)))))

(assert (=> d!2237441 (= (forall!17177 (exprs!7801 setElem!53131) lambda!437532) e!4313873)))

(declare-fun b!7183338 () Bool)

(declare-fun e!4313874 () Bool)

(assert (=> b!7183338 (= e!4313873 e!4313874)))

(declare-fun res!2925500 () Bool)

(assert (=> b!7183338 (=> (not res!2925500) (not e!4313874))))

(declare-fun dynLambda!28369 (Int Regex!18349) Bool)

(assert (=> b!7183338 (= res!2925500 (dynLambda!28369 lambda!437532 (h!76101 (exprs!7801 setElem!53131))))))

(declare-fun b!7183339 () Bool)

(assert (=> b!7183339 (= e!4313874 (forall!17177 (t!383798 (exprs!7801 setElem!53131)) lambda!437532))))

(assert (= (and d!2237441 (not res!2925499)) b!7183338))

(assert (= (and b!7183338 res!2925500) b!7183339))

(declare-fun b_lambda!274963 () Bool)

(assert (=> (not b_lambda!274963) (not b!7183338)))

(declare-fun m!7880622 () Bool)

(assert (=> b!7183338 m!7880622))

(declare-fun m!7880624 () Bool)

(assert (=> b!7183339 m!7880624))

(assert (=> d!2237395 d!2237441))

(declare-fun d!2237443 () Bool)

(declare-fun res!2925501 () Bool)

(declare-fun e!4313875 () Bool)

(assert (=> d!2237443 (=> res!2925501 e!4313875)))

(assert (=> d!2237443 (= res!2925501 ((_ is Nil!69653) (exprs!7801 empty!2967)))))

(assert (=> d!2237443 (= (forall!17177 (exprs!7801 empty!2967) lambda!437531) e!4313875)))

(declare-fun b!7183340 () Bool)

(declare-fun e!4313876 () Bool)

(assert (=> b!7183340 (= e!4313875 e!4313876)))

(declare-fun res!2925502 () Bool)

(assert (=> b!7183340 (=> (not res!2925502) (not e!4313876))))

(assert (=> b!7183340 (= res!2925502 (dynLambda!28369 lambda!437531 (h!76101 (exprs!7801 empty!2967))))))

(declare-fun b!7183341 () Bool)

(assert (=> b!7183341 (= e!4313876 (forall!17177 (t!383798 (exprs!7801 empty!2967)) lambda!437531))))

(assert (= (and d!2237443 (not res!2925501)) b!7183340))

(assert (= (and b!7183340 res!2925502) b!7183341))

(declare-fun b_lambda!274965 () Bool)

(assert (=> (not b_lambda!274965) (not b!7183340)))

(declare-fun m!7880626 () Bool)

(assert (=> b!7183340 m!7880626))

(declare-fun m!7880628 () Bool)

(assert (=> b!7183341 m!7880628))

(assert (=> d!2237379 d!2237443))

(assert (=> d!2237375 d!2237385))

(declare-fun d!2237445 () Bool)

(declare-fun lt!2570812 () Bool)

(assert (=> d!2237445 (= lt!2570812 (exists!4078 (toList!11292 z!3530) lambda!437525))))

(assert (=> d!2237445 (= lt!2570812 (choose!55390 z!3530 lambda!437525))))

(assert (=> d!2237445 (= (exists!4076 z!3530 lambda!437525) lt!2570812)))

(declare-fun bs!1896935 () Bool)

(assert (= bs!1896935 d!2237445))

(assert (=> bs!1896935 m!7880432))

(assert (=> bs!1896935 m!7880432))

(declare-fun m!7880630 () Bool)

(assert (=> bs!1896935 m!7880630))

(declare-fun m!7880632 () Bool)

(assert (=> bs!1896935 m!7880632))

(assert (=> d!2237375 d!2237445))

(declare-fun bs!1896936 () Bool)

(declare-fun d!2237447 () Bool)

(assert (= bs!1896936 (and d!2237447 b!7183170)))

(declare-fun lambda!437545 () Int)

(assert (=> bs!1896936 (not (= lambda!437545 lambda!437513))))

(declare-fun bs!1896937 () Bool)

(assert (= bs!1896937 (and d!2237447 d!2237375)))

(assert (=> bs!1896937 (= lambda!437545 lambda!437525)))

(assert (=> d!2237447 true))

(assert (=> d!2237447 true))

(assert (=> d!2237447 (< (dynLambda!28366 order!28687 lambda!437512) (dynLambda!28367 order!28689 lambda!437545))))

(assert (=> d!2237447 (= (select (flatMap!2669 z!3530 lambda!437512) lt!2570779) (exists!4076 z!3530 lambda!437545))))

(declare-fun _$3!480 () Context!14602)

(declare-fun e!4313891 () Bool)

(assert (=> d!2237447 (and (inv!88894 _$3!480) e!4313891)))

(assert (=> d!2237447 (= (choose!55391 z!3530 lambda!437512 lt!2570779) _$3!480)))

(declare-fun b!7183367 () Bool)

(declare-fun tp!1994289 () Bool)

(assert (=> b!7183367 (= e!4313891 tp!1994289)))

(assert (= d!2237447 b!7183367))

(assert (=> d!2237447 m!7880454))

(assert (=> d!2237447 m!7880456))

(declare-fun m!7880634 () Bool)

(assert (=> d!2237447 m!7880634))

(declare-fun m!7880636 () Bool)

(assert (=> d!2237447 m!7880636))

(assert (=> d!2237375 d!2237447))

(declare-fun d!2237449 () Bool)

(declare-fun c!1337398 () Bool)

(assert (=> d!2237449 (= c!1337398 ((_ is Nil!69655) lt!2570804))))

(declare-fun e!4313894 () (InoxSet Context!14602))

(assert (=> d!2237449 (= (content!14316 lt!2570804) e!4313894)))

(declare-fun b!7183372 () Bool)

(assert (=> b!7183372 (= e!4313894 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183373 () Bool)

(assert (=> b!7183373 (= e!4313894 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 lt!2570804) true) (content!14316 (t!383800 lt!2570804))))))

(assert (= (and d!2237449 c!1337398) b!7183372))

(assert (= (and d!2237449 (not c!1337398)) b!7183373))

(declare-fun m!7880638 () Bool)

(assert (=> b!7183373 m!7880638))

(declare-fun m!7880640 () Bool)

(assert (=> b!7183373 m!7880640))

(assert (=> b!7183209 d!2237449))

(declare-fun d!2237451 () Bool)

(declare-fun res!2925510 () Bool)

(declare-fun e!4313905 () Bool)

(assert (=> d!2237451 (=> res!2925510 e!4313905)))

(assert (=> d!2237451 (= res!2925510 ((_ is Nil!69655) lt!2570808))))

(assert (=> d!2237451 (= (noDuplicate!2887 lt!2570808) e!4313905)))

(declare-fun b!7183389 () Bool)

(declare-fun e!4313906 () Bool)

(assert (=> b!7183389 (= e!4313905 e!4313906)))

(declare-fun res!2925511 () Bool)

(assert (=> b!7183389 (=> (not res!2925511) (not e!4313906))))

(declare-fun contains!20718 (List!69779 Context!14602) Bool)

(assert (=> b!7183389 (= res!2925511 (not (contains!20718 (t!383800 lt!2570808) (h!76103 lt!2570808))))))

(declare-fun b!7183390 () Bool)

(assert (=> b!7183390 (= e!4313906 (noDuplicate!2887 (t!383800 lt!2570808)))))

(assert (= (and d!2237451 (not res!2925510)) b!7183389))

(assert (= (and b!7183389 res!2925511) b!7183390))

(declare-fun m!7880642 () Bool)

(assert (=> b!7183389 m!7880642))

(declare-fun m!7880644 () Bool)

(assert (=> b!7183390 m!7880644))

(assert (=> d!2237413 d!2237451))

(declare-fun d!2237453 () Bool)

(declare-fun e!4313915 () Bool)

(assert (=> d!2237453 e!4313915))

(declare-fun res!2925519 () Bool)

(assert (=> d!2237453 (=> (not res!2925519) (not e!4313915))))

(declare-fun res!2925518 () List!69779)

(assert (=> d!2237453 (= res!2925519 (noDuplicate!2887 res!2925518))))

(declare-fun e!4313916 () Bool)

(assert (=> d!2237453 e!4313916))

(assert (=> d!2237453 (= (choose!55393 z!3530) res!2925518)))

(declare-fun b!7183400 () Bool)

(declare-fun e!4313917 () Bool)

(declare-fun tp!1994299 () Bool)

(assert (=> b!7183400 (= e!4313917 tp!1994299)))

(declare-fun tp!1994298 () Bool)

(declare-fun b!7183399 () Bool)

(assert (=> b!7183399 (= e!4313916 (and (inv!88894 (h!76103 res!2925518)) e!4313917 tp!1994298))))

(declare-fun b!7183401 () Bool)

(assert (=> b!7183401 (= e!4313915 (= (content!14316 res!2925518) z!3530))))

(assert (= b!7183399 b!7183400))

(assert (= (and d!2237453 ((_ is Cons!69655) res!2925518)) b!7183399))

(assert (= (and d!2237453 res!2925519) b!7183401))

(declare-fun m!7880658 () Bool)

(assert (=> d!2237453 m!7880658))

(declare-fun m!7880660 () Bool)

(assert (=> b!7183399 m!7880660))

(declare-fun m!7880662 () Bool)

(assert (=> b!7183401 m!7880662))

(assert (=> d!2237413 d!2237453))

(declare-fun b!7183402 () Bool)

(declare-fun e!4313920 () (InoxSet Context!14602))

(declare-fun e!4313918 () (InoxSet Context!14602))

(assert (=> b!7183402 (= e!4313920 e!4313918)))

(declare-fun c!1337405 () Bool)

(assert (=> b!7183402 (= c!1337405 ((_ is Cons!69653) (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))

(declare-fun call!654759 () (InoxSet Context!14602))

(declare-fun b!7183403 () Bool)

(assert (=> b!7183403 (= e!4313920 ((_ map or) call!654759 (derivationStepZipperUp!2325 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) lt!2570781)))))

(declare-fun b!7183404 () Bool)

(assert (=> b!7183404 (= e!4313918 call!654759)))

(declare-fun d!2237459 () Bool)

(declare-fun c!1337404 () Bool)

(declare-fun e!4313919 () Bool)

(assert (=> d!2237459 (= c!1337404 e!4313919)))

(declare-fun res!2925520 () Bool)

(assert (=> d!2237459 (=> (not res!2925520) (not e!4313919))))

(assert (=> d!2237459 (= res!2925520 ((_ is Cons!69653) (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))

(assert (=> d!2237459 (= (derivationStepZipperUp!2325 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) lt!2570781) e!4313920)))

(declare-fun b!7183405 () Bool)

(assert (=> b!7183405 (= e!4313919 (nullable!7776 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(declare-fun b!7183406 () Bool)

(assert (=> b!7183406 (= e!4313918 ((as const (Array Context!14602 Bool)) false))))

(declare-fun bm!654754 () Bool)

(assert (=> bm!654754 (= call!654759 (derivationStepZipperDown!2512 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) lt!2570781))))

(assert (= (and d!2237459 res!2925520) b!7183405))

(assert (= (and d!2237459 c!1337404) b!7183403))

(assert (= (and d!2237459 (not c!1337404)) b!7183402))

(assert (= (and b!7183402 c!1337405) b!7183404))

(assert (= (and b!7183402 (not c!1337405)) b!7183406))

(assert (= (or b!7183403 b!7183404) bm!654754))

(declare-fun m!7880664 () Bool)

(assert (=> b!7183403 m!7880664))

(declare-fun m!7880666 () Bool)

(assert (=> b!7183405 m!7880666))

(declare-fun m!7880668 () Bool)

(assert (=> bm!654754 m!7880668))

(assert (=> b!7183243 d!2237459))

(declare-fun d!2237461 () Bool)

(declare-fun res!2925522 () Bool)

(declare-fun e!4313922 () Bool)

(assert (=> d!2237461 (=> res!2925522 e!4313922)))

(assert (=> d!2237461 (= res!2925522 ((_ is Nil!69655) lt!2570804))))

(assert (=> d!2237461 (= (noDuplicate!2887 lt!2570804) e!4313922)))

(declare-fun b!7183408 () Bool)

(declare-fun e!4313923 () Bool)

(assert (=> b!7183408 (= e!4313922 e!4313923)))

(declare-fun res!2925523 () Bool)

(assert (=> b!7183408 (=> (not res!2925523) (not e!4313923))))

(assert (=> b!7183408 (= res!2925523 (not (contains!20718 (t!383800 lt!2570804) (h!76103 lt!2570804))))))

(declare-fun b!7183409 () Bool)

(assert (=> b!7183409 (= e!4313923 (noDuplicate!2887 (t!383800 lt!2570804)))))

(assert (= (and d!2237461 (not res!2925522)) b!7183408))

(assert (= (and b!7183408 res!2925523) b!7183409))

(declare-fun m!7880672 () Bool)

(assert (=> b!7183408 m!7880672))

(declare-fun m!7880674 () Bool)

(assert (=> b!7183409 m!7880674))

(assert (=> d!2237389 d!2237461))

(declare-fun d!2237465 () Bool)

(declare-fun e!4313927 () Bool)

(assert (=> d!2237465 e!4313927))

(declare-fun res!2925526 () Bool)

(assert (=> d!2237465 (=> (not res!2925526) (not e!4313927))))

(declare-fun res!2925525 () List!69779)

(assert (=> d!2237465 (= res!2925526 (noDuplicate!2887 res!2925525))))

(declare-fun e!4313928 () Bool)

(assert (=> d!2237465 e!4313928))

(assert (=> d!2237465 (= (choose!55393 lt!2570782) res!2925525)))

(declare-fun b!7183416 () Bool)

(declare-fun e!4313929 () Bool)

(declare-fun tp!1994303 () Bool)

(assert (=> b!7183416 (= e!4313929 tp!1994303)))

(declare-fun tp!1994302 () Bool)

(declare-fun b!7183415 () Bool)

(assert (=> b!7183415 (= e!4313928 (and (inv!88894 (h!76103 res!2925525)) e!4313929 tp!1994302))))

(declare-fun b!7183417 () Bool)

(assert (=> b!7183417 (= e!4313927 (= (content!14316 res!2925525) lt!2570782))))

(assert (= b!7183415 b!7183416))

(assert (= (and d!2237465 ((_ is Cons!69655) res!2925525)) b!7183415))

(assert (= (and d!2237465 res!2925526) b!7183417))

(declare-fun m!7880678 () Bool)

(assert (=> d!2237465 m!7880678))

(declare-fun m!7880680 () Bool)

(assert (=> b!7183415 m!7880680))

(declare-fun m!7880682 () Bool)

(assert (=> b!7183417 m!7880682))

(assert (=> d!2237389 d!2237465))

(declare-fun d!2237467 () Bool)

(declare-fun lt!2570813 () Regex!18349)

(assert (=> d!2237467 (validRegex!9468 lt!2570813)))

(assert (=> d!2237467 (= lt!2570813 (generalisedUnion!2771 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(assert (=> d!2237467 (= (unfocusZipper!2609 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))) lt!2570813)))

(declare-fun bs!1896939 () Bool)

(assert (= bs!1896939 d!2237467))

(declare-fun m!7880688 () Bool)

(assert (=> bs!1896939 m!7880688))

(assert (=> bs!1896939 m!7880536))

(declare-fun m!7880690 () Bool)

(assert (=> bs!1896939 m!7880690))

(assert (=> bs!1896939 m!7880690))

(declare-fun m!7880692 () Bool)

(assert (=> bs!1896939 m!7880692))

(assert (=> b!7183225 d!2237467))

(declare-fun d!2237471 () Bool)

(declare-fun e!4313944 () Bool)

(assert (=> d!2237471 e!4313944))

(declare-fun res!2925537 () Bool)

(assert (=> d!2237471 (=> (not res!2925537) (not e!4313944))))

(declare-fun lt!2570814 () List!69779)

(assert (=> d!2237471 (= res!2925537 (noDuplicate!2887 lt!2570814))))

(assert (=> d!2237471 (= lt!2570814 (choose!55393 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))

(assert (=> d!2237471 (= (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)) lt!2570814)))

(declare-fun b!7183436 () Bool)

(assert (=> b!7183436 (= e!4313944 (= (content!14316 lt!2570814) (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))

(assert (= (and d!2237471 res!2925537) b!7183436))

(declare-fun m!7880694 () Bool)

(assert (=> d!2237471 m!7880694))

(assert (=> d!2237471 m!7880534))

(declare-fun m!7880696 () Bool)

(assert (=> d!2237471 m!7880696))

(declare-fun m!7880698 () Bool)

(assert (=> b!7183436 m!7880698))

(assert (=> b!7183225 d!2237471))

(declare-fun d!2237473 () Bool)

(assert (=> d!2237473 (= (flatMap!2669 z!3530 lambda!437539) (choose!55392 z!3530 lambda!437539))))

(declare-fun bs!1896940 () Bool)

(assert (= bs!1896940 d!2237473))

(declare-fun m!7880700 () Bool)

(assert (=> bs!1896940 m!7880700))

(assert (=> d!2237407 d!2237473))

(declare-fun d!2237475 () Bool)

(assert (=> d!2237475 (= (validRegex!9468 EmptyExpr!18349) true)))

(assert (=> d!2237397 d!2237475))

(declare-fun bs!1896941 () Bool)

(declare-fun d!2237477 () Bool)

(assert (= bs!1896941 (and d!2237477 d!2237379)))

(declare-fun lambda!437546 () Int)

(assert (=> bs!1896941 (= lambda!437546 lambda!437531)))

(declare-fun bs!1896942 () Bool)

(assert (= bs!1896942 (and d!2237477 d!2237395)))

(assert (=> bs!1896942 (= lambda!437546 lambda!437532)))

(declare-fun bs!1896943 () Bool)

(assert (= bs!1896943 (and d!2237477 d!2237403)))

(assert (=> bs!1896943 (not (= lambda!437546 lambda!437536))))

(assert (=> d!2237477 (= (inv!88894 setElem!53137) (forall!17177 (exprs!7801 setElem!53137) lambda!437546))))

(declare-fun bs!1896944 () Bool)

(assert (= bs!1896944 d!2237477))

(declare-fun m!7880702 () Bool)

(assert (=> bs!1896944 m!7880702))

(assert (=> setNonEmpty!53137 d!2237477))

(declare-fun bs!1896945 () Bool)

(declare-fun d!2237479 () Bool)

(assert (= bs!1896945 (and d!2237479 b!7183170)))

(declare-fun lambda!437549 () Int)

(assert (=> bs!1896945 (not (= lambda!437549 lambda!437513))))

(declare-fun bs!1896946 () Bool)

(assert (= bs!1896946 (and d!2237479 d!2237375)))

(assert (=> bs!1896946 (not (= lambda!437549 lambda!437525))))

(declare-fun bs!1896947 () Bool)

(assert (= bs!1896947 (and d!2237479 d!2237447)))

(assert (=> bs!1896947 (not (= lambda!437549 lambda!437545))))

(assert (=> d!2237479 true))

(assert (=> d!2237479 (< (dynLambda!28367 order!28689 lambda!437513) (dynLambda!28367 order!28689 lambda!437549))))

(declare-fun forall!17178 (List!69779 Int) Bool)

(assert (=> d!2237479 (= (exists!4078 (toList!11292 z!3530) lambda!437513) (not (forall!17178 (toList!11292 z!3530) lambda!437549)))))

(declare-fun bs!1896948 () Bool)

(assert (= bs!1896948 d!2237479))

(assert (=> bs!1896948 m!7880432))

(declare-fun m!7880710 () Bool)

(assert (=> bs!1896948 m!7880710))

(assert (=> d!2237371 d!2237479))

(assert (=> d!2237371 d!2237413))

(declare-fun d!2237483 () Bool)

(declare-fun res!2925545 () Bool)

(assert (=> d!2237483 (= res!2925545 (exists!4078 (toList!11292 z!3530) lambda!437513))))

(assert (=> d!2237483 true))

(assert (=> d!2237483 (= (choose!55390 z!3530 lambda!437513) res!2925545)))

(declare-fun bs!1896949 () Bool)

(assert (= bs!1896949 d!2237483))

(assert (=> bs!1896949 m!7880432))

(assert (=> bs!1896949 m!7880432))

(assert (=> bs!1896949 m!7880482))

(assert (=> d!2237371 d!2237483))

(declare-fun d!2237485 () Bool)

(declare-fun res!2925546 () Bool)

(declare-fun e!4313952 () Bool)

(assert (=> d!2237485 (=> res!2925546 e!4313952)))

(assert (=> d!2237485 (= res!2925546 ((_ is Nil!69653) (exprs!7801 lt!2570780)))))

(assert (=> d!2237485 (= (forall!17177 (exprs!7801 lt!2570780) lambda!437536) e!4313952)))

(declare-fun b!7183448 () Bool)

(declare-fun e!4313953 () Bool)

(assert (=> b!7183448 (= e!4313952 e!4313953)))

(declare-fun res!2925547 () Bool)

(assert (=> b!7183448 (=> (not res!2925547) (not e!4313953))))

(assert (=> b!7183448 (= res!2925547 (dynLambda!28369 lambda!437536 (h!76101 (exprs!7801 lt!2570780))))))

(declare-fun b!7183449 () Bool)

(assert (=> b!7183449 (= e!4313953 (forall!17177 (t!383798 (exprs!7801 lt!2570780)) lambda!437536))))

(assert (= (and d!2237485 (not res!2925546)) b!7183448))

(assert (= (and b!7183448 res!2925547) b!7183449))

(declare-fun b_lambda!274967 () Bool)

(assert (=> (not b_lambda!274967) (not b!7183448)))

(declare-fun m!7880712 () Bool)

(assert (=> b!7183448 m!7880712))

(declare-fun m!7880714 () Bool)

(assert (=> b!7183449 m!7880714))

(assert (=> d!2237403 d!2237485))

(declare-fun d!2237487 () Bool)

(declare-fun c!1337414 () Bool)

(assert (=> d!2237487 (= c!1337414 ((_ is Nil!69655) lt!2570808))))

(declare-fun e!4313954 () (InoxSet Context!14602))

(assert (=> d!2237487 (= (content!14316 lt!2570808) e!4313954)))

(declare-fun b!7183450 () Bool)

(assert (=> b!7183450 (= e!4313954 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183451 () Bool)

(assert (=> b!7183451 (= e!4313954 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 lt!2570808) true) (content!14316 (t!383800 lt!2570808))))))

(assert (= (and d!2237487 c!1337414) b!7183450))

(assert (= (and d!2237487 (not c!1337414)) b!7183451))

(declare-fun m!7880716 () Bool)

(assert (=> b!7183451 m!7880716))

(declare-fun m!7880718 () Bool)

(assert (=> b!7183451 m!7880718))

(assert (=> b!7183247 d!2237487))

(declare-fun d!2237489 () Bool)

(declare-fun nullableFct!3042 (Regex!18349) Bool)

(assert (=> d!2237489 (= (nullable!7776 (h!76101 (exprs!7801 lt!2570780))) (nullableFct!3042 (h!76101 (exprs!7801 lt!2570780))))))

(declare-fun bs!1896950 () Bool)

(assert (= bs!1896950 d!2237489))

(declare-fun m!7880720 () Bool)

(assert (=> bs!1896950 m!7880720))

(assert (=> b!7183245 d!2237489))

(declare-fun b!7183500 () Bool)

(declare-fun res!2925567 () Bool)

(declare-fun e!4313992 () Bool)

(assert (=> b!7183500 (=> (not res!2925567) (not e!4313992))))

(declare-fun call!654776 () Bool)

(assert (=> b!7183500 (= res!2925567 call!654776)))

(declare-fun e!4313990 () Bool)

(assert (=> b!7183500 (= e!4313990 e!4313992)))

(declare-fun b!7183501 () Bool)

(declare-fun e!4313989 () Bool)

(declare-fun call!654777 () Bool)

(assert (=> b!7183501 (= e!4313989 call!654777)))

(declare-fun bm!654771 () Bool)

(declare-fun call!654778 () Bool)

(assert (=> bm!654771 (= call!654777 call!654778)))

(declare-fun b!7183502 () Bool)

(declare-fun e!4313988 () Bool)

(assert (=> b!7183502 (= e!4313988 e!4313989)))

(declare-fun res!2925564 () Bool)

(assert (=> b!7183502 (=> (not res!2925564) (not e!4313989))))

(assert (=> b!7183502 (= res!2925564 call!654776)))

(declare-fun bm!654772 () Bool)

(declare-fun c!1337432 () Bool)

(assert (=> bm!654772 (= call!654776 (validRegex!9468 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))

(declare-fun b!7183503 () Bool)

(declare-fun e!4313991 () Bool)

(declare-fun e!4313993 () Bool)

(assert (=> b!7183503 (= e!4313991 e!4313993)))

(declare-fun c!1337431 () Bool)

(assert (=> b!7183503 (= c!1337431 ((_ is Star!18349) lt!2570807))))

(declare-fun d!2237491 () Bool)

(declare-fun res!2925565 () Bool)

(assert (=> d!2237491 (=> res!2925565 e!4313991)))

(assert (=> d!2237491 (= res!2925565 ((_ is ElementMatch!18349) lt!2570807))))

(assert (=> d!2237491 (= (validRegex!9468 lt!2570807) e!4313991)))

(declare-fun b!7183504 () Bool)

(declare-fun e!4313987 () Bool)

(assert (=> b!7183504 (= e!4313987 call!654778)))

(declare-fun b!7183505 () Bool)

(assert (=> b!7183505 (= e!4313993 e!4313990)))

(assert (=> b!7183505 (= c!1337432 ((_ is Union!18349) lt!2570807))))

(declare-fun bm!654773 () Bool)

(assert (=> bm!654773 (= call!654778 (validRegex!9468 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))

(declare-fun b!7183506 () Bool)

(assert (=> b!7183506 (= e!4313992 call!654777)))

(declare-fun b!7183507 () Bool)

(declare-fun res!2925566 () Bool)

(assert (=> b!7183507 (=> res!2925566 e!4313988)))

(assert (=> b!7183507 (= res!2925566 (not ((_ is Concat!27194) lt!2570807)))))

(assert (=> b!7183507 (= e!4313990 e!4313988)))

(declare-fun b!7183508 () Bool)

(assert (=> b!7183508 (= e!4313993 e!4313987)))

(declare-fun res!2925568 () Bool)

(assert (=> b!7183508 (= res!2925568 (not (nullable!7776 (reg!18678 lt!2570807))))))

(assert (=> b!7183508 (=> (not res!2925568) (not e!4313987))))

(assert (= (and d!2237491 (not res!2925565)) b!7183503))

(assert (= (and b!7183503 c!1337431) b!7183508))

(assert (= (and b!7183503 (not c!1337431)) b!7183505))

(assert (= (and b!7183508 res!2925568) b!7183504))

(assert (= (and b!7183505 c!1337432) b!7183500))

(assert (= (and b!7183505 (not c!1337432)) b!7183507))

(assert (= (and b!7183500 res!2925567) b!7183506))

(assert (= (and b!7183507 (not res!2925566)) b!7183502))

(assert (= (and b!7183502 res!2925564) b!7183501))

(assert (= (or b!7183500 b!7183502) bm!654772))

(assert (= (or b!7183506 b!7183501) bm!654771))

(assert (= (or b!7183504 bm!654771) bm!654773))

(declare-fun m!7880722 () Bool)

(assert (=> bm!654772 m!7880722))

(declare-fun m!7880726 () Bool)

(assert (=> bm!654773 m!7880726))

(declare-fun m!7880730 () Bool)

(assert (=> b!7183508 m!7880730))

(assert (=> d!2237411 d!2237491))

(declare-fun bs!1896963 () Bool)

(declare-fun d!2237493 () Bool)

(assert (= bs!1896963 (and d!2237493 d!2237379)))

(declare-fun lambda!437561 () Int)

(assert (=> bs!1896963 (= lambda!437561 lambda!437531)))

(declare-fun bs!1896964 () Bool)

(assert (= bs!1896964 (and d!2237493 d!2237395)))

(assert (=> bs!1896964 (= lambda!437561 lambda!437532)))

(declare-fun bs!1896965 () Bool)

(assert (= bs!1896965 (and d!2237493 d!2237403)))

(assert (=> bs!1896965 (not (= lambda!437561 lambda!437536))))

(declare-fun bs!1896966 () Bool)

(assert (= bs!1896966 (and d!2237493 d!2237477)))

(assert (=> bs!1896966 (= lambda!437561 lambda!437546)))

(declare-fun b!7183537 () Bool)

(declare-fun e!4314011 () Regex!18349)

(assert (=> b!7183537 (= e!4314011 (Union!18349 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530))) (generalisedUnion!2771 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun b!7183538 () Bool)

(declare-fun e!4314009 () Regex!18349)

(assert (=> b!7183538 (= e!4314009 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530))))))

(declare-fun b!7183539 () Bool)

(declare-fun e!4314010 () Bool)

(declare-fun lt!2570823 () Regex!18349)

(declare-fun isUnion!1579 (Regex!18349) Bool)

(assert (=> b!7183539 (= e!4314010 (isUnion!1579 lt!2570823))))

(declare-fun b!7183541 () Bool)

(assert (=> b!7183541 (= e!4314011 EmptyLang!18349)))

(declare-fun b!7183542 () Bool)

(declare-fun e!4314013 () Bool)

(declare-fun e!4314012 () Bool)

(assert (=> b!7183542 (= e!4314013 e!4314012)))

(declare-fun c!1337445 () Bool)

(declare-fun isEmpty!40211 (List!69777) Bool)

(assert (=> b!7183542 (= c!1337445 (isEmpty!40211 (unfocusZipperList!2327 (toList!11292 z!3530))))))

(declare-fun b!7183543 () Bool)

(declare-fun e!4314014 () Bool)

(assert (=> b!7183543 (= e!4314014 (isEmpty!40211 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun b!7183544 () Bool)

(declare-fun head!14664 (List!69777) Regex!18349)

(assert (=> b!7183544 (= e!4314010 (= lt!2570823 (head!14664 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun b!7183545 () Bool)

(assert (=> b!7183545 (= e!4314009 e!4314011)))

(declare-fun c!1337447 () Bool)

(assert (=> b!7183545 (= c!1337447 ((_ is Cons!69653) (unfocusZipperList!2327 (toList!11292 z!3530))))))

(declare-fun b!7183546 () Bool)

(assert (=> b!7183546 (= e!4314012 e!4314010)))

(declare-fun c!1337446 () Bool)

(declare-fun tail!14069 (List!69777) List!69777)

(assert (=> b!7183546 (= c!1337446 (isEmpty!40211 (tail!14069 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> d!2237493 e!4314013))

(declare-fun res!2925576 () Bool)

(assert (=> d!2237493 (=> (not res!2925576) (not e!4314013))))

(assert (=> d!2237493 (= res!2925576 (validRegex!9468 lt!2570823))))

(assert (=> d!2237493 (= lt!2570823 e!4314009)))

(declare-fun c!1337444 () Bool)

(assert (=> d!2237493 (= c!1337444 e!4314014)))

(declare-fun res!2925577 () Bool)

(assert (=> d!2237493 (=> (not res!2925577) (not e!4314014))))

(assert (=> d!2237493 (= res!2925577 ((_ is Cons!69653) (unfocusZipperList!2327 (toList!11292 z!3530))))))

(assert (=> d!2237493 (forall!17177 (unfocusZipperList!2327 (toList!11292 z!3530)) lambda!437561)))

(assert (=> d!2237493 (= (generalisedUnion!2771 (unfocusZipperList!2327 (toList!11292 z!3530))) lt!2570823)))

(declare-fun b!7183540 () Bool)

(declare-fun isEmptyLang!2151 (Regex!18349) Bool)

(assert (=> b!7183540 (= e!4314012 (isEmptyLang!2151 lt!2570823))))

(assert (= (and d!2237493 res!2925577) b!7183543))

(assert (= (and d!2237493 c!1337444) b!7183538))

(assert (= (and d!2237493 (not c!1337444)) b!7183545))

(assert (= (and b!7183545 c!1337447) b!7183537))

(assert (= (and b!7183545 (not c!1337447)) b!7183541))

(assert (= (and d!2237493 res!2925576) b!7183542))

(assert (= (and b!7183542 c!1337445) b!7183540))

(assert (= (and b!7183542 (not c!1337445)) b!7183546))

(assert (= (and b!7183546 c!1337446) b!7183544))

(assert (= (and b!7183546 (not c!1337446)) b!7183539))

(declare-fun m!7880762 () Bool)

(assert (=> b!7183539 m!7880762))

(assert (=> b!7183542 m!7880554))

(declare-fun m!7880768 () Bool)

(assert (=> b!7183542 m!7880768))

(declare-fun m!7880770 () Bool)

(assert (=> b!7183540 m!7880770))

(declare-fun m!7880772 () Bool)

(assert (=> d!2237493 m!7880772))

(assert (=> d!2237493 m!7880554))

(declare-fun m!7880774 () Bool)

(assert (=> d!2237493 m!7880774))

(declare-fun m!7880776 () Bool)

(assert (=> b!7183543 m!7880776))

(assert (=> b!7183546 m!7880554))

(declare-fun m!7880778 () Bool)

(assert (=> b!7183546 m!7880778))

(assert (=> b!7183546 m!7880778))

(declare-fun m!7880780 () Bool)

(assert (=> b!7183546 m!7880780))

(declare-fun m!7880782 () Bool)

(assert (=> b!7183537 m!7880782))

(assert (=> b!7183544 m!7880554))

(declare-fun m!7880784 () Bool)

(assert (=> b!7183544 m!7880784))

(assert (=> d!2237411 d!2237493))

(declare-fun bs!1896976 () Bool)

(declare-fun d!2237509 () Bool)

(assert (= bs!1896976 (and d!2237509 d!2237403)))

(declare-fun lambda!437565 () Int)

(assert (=> bs!1896976 (not (= lambda!437565 lambda!437536))))

(declare-fun bs!1896977 () Bool)

(assert (= bs!1896977 (and d!2237509 d!2237379)))

(assert (=> bs!1896977 (= lambda!437565 lambda!437531)))

(declare-fun bs!1896978 () Bool)

(assert (= bs!1896978 (and d!2237509 d!2237493)))

(assert (=> bs!1896978 (= lambda!437565 lambda!437561)))

(declare-fun bs!1896979 () Bool)

(assert (= bs!1896979 (and d!2237509 d!2237477)))

(assert (=> bs!1896979 (= lambda!437565 lambda!437546)))

(declare-fun bs!1896980 () Bool)

(assert (= bs!1896980 (and d!2237509 d!2237395)))

(assert (=> bs!1896980 (= lambda!437565 lambda!437532)))

(declare-fun lt!2570826 () List!69777)

(assert (=> d!2237509 (forall!17177 lt!2570826 lambda!437565)))

(declare-fun e!4314035 () List!69777)

(assert (=> d!2237509 (= lt!2570826 e!4314035)))

(declare-fun c!1337450 () Bool)

(assert (=> d!2237509 (= c!1337450 ((_ is Cons!69655) (toList!11292 z!3530)))))

(assert (=> d!2237509 (= (unfocusZipperList!2327 (toList!11292 z!3530)) lt!2570826)))

(declare-fun b!7183583 () Bool)

(declare-fun generalisedConcat!2461 (List!69777) Regex!18349)

(assert (=> b!7183583 (= e!4314035 (Cons!69653 (generalisedConcat!2461 (exprs!7801 (h!76103 (toList!11292 z!3530)))) (unfocusZipperList!2327 (t!383800 (toList!11292 z!3530)))))))

(declare-fun b!7183584 () Bool)

(assert (=> b!7183584 (= e!4314035 Nil!69653)))

(assert (= (and d!2237509 c!1337450) b!7183583))

(assert (= (and d!2237509 (not c!1337450)) b!7183584))

(declare-fun m!7880802 () Bool)

(assert (=> d!2237509 m!7880802))

(declare-fun m!7880804 () Bool)

(assert (=> b!7183583 m!7880804))

(declare-fun m!7880806 () Bool)

(assert (=> b!7183583 m!7880806))

(assert (=> d!2237411 d!2237509))

(declare-fun b!7183595 () Bool)

(declare-fun e!4314038 () Bool)

(assert (=> b!7183595 (= e!4314038 tp_is_empty!46259)))

(declare-fun b!7183596 () Bool)

(declare-fun tp!1994349 () Bool)

(declare-fun tp!1994346 () Bool)

(assert (=> b!7183596 (= e!4314038 (and tp!1994349 tp!1994346))))

(assert (=> b!7183262 (= tp!1994268 e!4314038)))

(declare-fun b!7183598 () Bool)

(declare-fun tp!1994348 () Bool)

(declare-fun tp!1994347 () Bool)

(assert (=> b!7183598 (= e!4314038 (and tp!1994348 tp!1994347))))

(declare-fun b!7183597 () Bool)

(declare-fun tp!1994345 () Bool)

(assert (=> b!7183597 (= e!4314038 tp!1994345)))

(assert (= (and b!7183262 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 setElem!53131)))) b!7183595))

(assert (= (and b!7183262 ((_ is Concat!27194) (h!76101 (exprs!7801 setElem!53131)))) b!7183596))

(assert (= (and b!7183262 ((_ is Star!18349) (h!76101 (exprs!7801 setElem!53131)))) b!7183597))

(assert (= (and b!7183262 ((_ is Union!18349) (h!76101 (exprs!7801 setElem!53131)))) b!7183598))

(declare-fun b!7183599 () Bool)

(declare-fun e!4314039 () Bool)

(declare-fun tp!1994350 () Bool)

(declare-fun tp!1994351 () Bool)

(assert (=> b!7183599 (= e!4314039 (and tp!1994350 tp!1994351))))

(assert (=> b!7183262 (= tp!1994269 e!4314039)))

(assert (= (and b!7183262 ((_ is Cons!69653) (t!383798 (exprs!7801 setElem!53131)))) b!7183599))

(declare-fun b!7183600 () Bool)

(declare-fun e!4314040 () Bool)

(declare-fun tp!1994352 () Bool)

(assert (=> b!7183600 (= e!4314040 (and tp_is_empty!46259 tp!1994352))))

(assert (=> b!7183257 (= tp!1994263 e!4314040)))

(assert (= (and b!7183257 ((_ is Cons!69654) (t!383799 (t!383799 s!7967)))) b!7183600))

(declare-fun b!7183601 () Bool)

(declare-fun e!4314041 () Bool)

(assert (=> b!7183601 (= e!4314041 tp_is_empty!46259)))

(declare-fun b!7183602 () Bool)

(declare-fun tp!1994357 () Bool)

(declare-fun tp!1994354 () Bool)

(assert (=> b!7183602 (= e!4314041 (and tp!1994357 tp!1994354))))

(assert (=> b!7183263 (= tp!1994270 e!4314041)))

(declare-fun b!7183604 () Bool)

(declare-fun tp!1994356 () Bool)

(declare-fun tp!1994355 () Bool)

(assert (=> b!7183604 (= e!4314041 (and tp!1994356 tp!1994355))))

(declare-fun b!7183603 () Bool)

(declare-fun tp!1994353 () Bool)

(assert (=> b!7183603 (= e!4314041 tp!1994353)))

(assert (= (and b!7183263 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 empty!2967)))) b!7183601))

(assert (= (and b!7183263 ((_ is Concat!27194) (h!76101 (exprs!7801 empty!2967)))) b!7183602))

(assert (= (and b!7183263 ((_ is Star!18349) (h!76101 (exprs!7801 empty!2967)))) b!7183603))

(assert (= (and b!7183263 ((_ is Union!18349) (h!76101 (exprs!7801 empty!2967)))) b!7183604))

(declare-fun b!7183605 () Bool)

(declare-fun e!4314042 () Bool)

(declare-fun tp!1994358 () Bool)

(declare-fun tp!1994359 () Bool)

(assert (=> b!7183605 (= e!4314042 (and tp!1994358 tp!1994359))))

(assert (=> b!7183263 (= tp!1994271 e!4314042)))

(assert (= (and b!7183263 ((_ is Cons!69653) (t!383798 (exprs!7801 empty!2967)))) b!7183605))

(declare-fun condSetEmpty!53145 () Bool)

(assert (=> setNonEmpty!53137 (= condSetEmpty!53145 (= setRest!53137 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun setRes!53145 () Bool)

(assert (=> setNonEmpty!53137 (= tp!1994260 setRes!53145)))

(declare-fun setIsEmpty!53145 () Bool)

(assert (=> setIsEmpty!53145 setRes!53145))

(declare-fun setElem!53145 () Context!14602)

(declare-fun setNonEmpty!53145 () Bool)

(declare-fun e!4314043 () Bool)

(declare-fun tp!1994361 () Bool)

(assert (=> setNonEmpty!53145 (= setRes!53145 (and tp!1994361 (inv!88894 setElem!53145) e!4314043))))

(declare-fun setRest!53145 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53145 (= setRest!53137 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53145 true) setRest!53145))))

(declare-fun b!7183606 () Bool)

(declare-fun tp!1994360 () Bool)

(assert (=> b!7183606 (= e!4314043 tp!1994360)))

(assert (= (and setNonEmpty!53137 condSetEmpty!53145) setIsEmpty!53145))

(assert (= (and setNonEmpty!53137 (not condSetEmpty!53145)) setNonEmpty!53145))

(assert (= setNonEmpty!53145 b!7183606))

(declare-fun m!7880808 () Bool)

(assert (=> setNonEmpty!53145 m!7880808))

(declare-fun b!7183607 () Bool)

(declare-fun e!4314044 () Bool)

(declare-fun tp!1994362 () Bool)

(declare-fun tp!1994363 () Bool)

(assert (=> b!7183607 (= e!4314044 (and tp!1994362 tp!1994363))))

(assert (=> b!7183252 (= tp!1994259 e!4314044)))

(assert (= (and b!7183252 ((_ is Cons!69653) (exprs!7801 setElem!53137))) b!7183607))

(declare-fun b_lambda!274979 () Bool)

(assert (= b_lambda!274967 (or d!2237403 b_lambda!274979)))

(declare-fun bs!1896981 () Bool)

(declare-fun d!2237521 () Bool)

(assert (= bs!1896981 (and d!2237521 d!2237403)))

(assert (=> bs!1896981 (= (dynLambda!28369 lambda!437536 (h!76101 (exprs!7801 lt!2570780))) (nullable!7776 (h!76101 (exprs!7801 lt!2570780))))))

(assert (=> bs!1896981 m!7880546))

(assert (=> b!7183448 d!2237521))

(declare-fun b_lambda!274981 () Bool)

(assert (= b_lambda!274963 (or d!2237395 b_lambda!274981)))

(declare-fun bs!1896982 () Bool)

(declare-fun d!2237523 () Bool)

(assert (= bs!1896982 (and d!2237523 d!2237395)))

(assert (=> bs!1896982 (= (dynLambda!28369 lambda!437532 (h!76101 (exprs!7801 setElem!53131))) (validRegex!9468 (h!76101 (exprs!7801 setElem!53131))))))

(declare-fun m!7880810 () Bool)

(assert (=> bs!1896982 m!7880810))

(assert (=> b!7183338 d!2237523))

(declare-fun b_lambda!274983 () Bool)

(assert (= b_lambda!274965 (or d!2237379 b_lambda!274983)))

(declare-fun bs!1896983 () Bool)

(declare-fun d!2237525 () Bool)

(assert (= bs!1896983 (and d!2237525 d!2237379)))

(assert (=> bs!1896983 (= (dynLambda!28369 lambda!437531 (h!76101 (exprs!7801 empty!2967))) (validRegex!9468 (h!76101 (exprs!7801 empty!2967))))))

(declare-fun m!7880812 () Bool)

(assert (=> bs!1896983 m!7880812))

(assert (=> b!7183340 d!2237525))

(check-sat (not b!7183603) (not b!7183403) (not b!7183401) (not b!7183508) (not b!7183409) (not b!7183341) (not b!7183583) (not bm!654730) (not b!7183598) (not bm!654735) (not b!7183405) tp_is_empty!46259 (not d!2237471) (not b!7183399) (not b!7183542) (not b_lambda!274981) (not bm!654754) (not b!7183540) (not b!7183389) (not d!2237453) (not b!7183544) (not bm!654731) (not b!7183373) (not b!7183599) (not d!2237479) (not d!2237447) (not d!2237465) (not d!2237489) (not d!2237509) (not b!7183436) (not b!7183606) (not b!7183415) (not d!2237467) (not d!2237483) (not b!7183607) (not b!7183416) (not b!7183451) (not b!7183333) (not b!7183605) (not bm!654773) (not d!2237473) (not d!2237445) (not b!7183546) (not b!7183596) (not b!7183315) (not b!7183597) (not bm!654772) (not b!7183367) (not b!7183539) (not d!2237477) (not b!7183449) (not b!7183400) (not b!7183408) (not b!7183339) (not b!7183602) (not b!7183537) (not bs!1896982) (not b!7183600) (not bs!1896981) (not setNonEmpty!53140) (not b!7183417) (not d!2237493) (not bs!1896983) (not b!7183543) (not setNonEmpty!53145) (not b!7183390) (not b_lambda!274983) (not b_lambda!274979) (not b!7183604))
(check-sat)
(get-model)

(declare-fun d!2237527 () Bool)

(declare-fun res!2925590 () Bool)

(declare-fun e!4314049 () Bool)

(assert (=> d!2237527 (=> res!2925590 e!4314049)))

(assert (=> d!2237527 (= res!2925590 ((_ is Nil!69655) (toList!11292 z!3530)))))

(assert (=> d!2237527 (= (forall!17178 (toList!11292 z!3530) lambda!437549) e!4314049)))

(declare-fun b!7183612 () Bool)

(declare-fun e!4314050 () Bool)

(assert (=> b!7183612 (= e!4314049 e!4314050)))

(declare-fun res!2925591 () Bool)

(assert (=> b!7183612 (=> (not res!2925591) (not e!4314050))))

(declare-fun dynLambda!28370 (Int Context!14602) Bool)

(assert (=> b!7183612 (= res!2925591 (dynLambda!28370 lambda!437549 (h!76103 (toList!11292 z!3530))))))

(declare-fun b!7183613 () Bool)

(assert (=> b!7183613 (= e!4314050 (forall!17178 (t!383800 (toList!11292 z!3530)) lambda!437549))))

(assert (= (and d!2237527 (not res!2925590)) b!7183612))

(assert (= (and b!7183612 res!2925591) b!7183613))

(declare-fun b_lambda!274985 () Bool)

(assert (=> (not b_lambda!274985) (not b!7183612)))

(declare-fun m!7880814 () Bool)

(assert (=> b!7183612 m!7880814))

(declare-fun m!7880816 () Bool)

(assert (=> b!7183613 m!7880816))

(assert (=> d!2237479 d!2237527))

(declare-fun d!2237529 () Bool)

(declare-fun res!2925592 () Bool)

(declare-fun e!4314051 () Bool)

(assert (=> d!2237529 (=> res!2925592 e!4314051)))

(assert (=> d!2237529 (= res!2925592 ((_ is Nil!69655) res!2925518))))

(assert (=> d!2237529 (= (noDuplicate!2887 res!2925518) e!4314051)))

(declare-fun b!7183614 () Bool)

(declare-fun e!4314052 () Bool)

(assert (=> b!7183614 (= e!4314051 e!4314052)))

(declare-fun res!2925593 () Bool)

(assert (=> b!7183614 (=> (not res!2925593) (not e!4314052))))

(assert (=> b!7183614 (= res!2925593 (not (contains!20718 (t!383800 res!2925518) (h!76103 res!2925518))))))

(declare-fun b!7183615 () Bool)

(assert (=> b!7183615 (= e!4314052 (noDuplicate!2887 (t!383800 res!2925518)))))

(assert (= (and d!2237529 (not res!2925592)) b!7183614))

(assert (= (and b!7183614 res!2925593) b!7183615))

(declare-fun m!7880818 () Bool)

(assert (=> b!7183614 m!7880818))

(declare-fun m!7880820 () Bool)

(assert (=> b!7183615 m!7880820))

(assert (=> d!2237453 d!2237529))

(declare-fun d!2237531 () Bool)

(assert (=> d!2237531 true))

(declare-fun setRes!53146 () Bool)

(assert (=> d!2237531 setRes!53146))

(declare-fun condSetEmpty!53146 () Bool)

(declare-fun res!2925594 () (InoxSet Context!14602))

(assert (=> d!2237531 (= condSetEmpty!53146 (= res!2925594 ((as const (Array Context!14602 Bool)) false)))))

(assert (=> d!2237531 (= (choose!55392 z!3530 lambda!437539) res!2925594)))

(declare-fun setIsEmpty!53146 () Bool)

(assert (=> setIsEmpty!53146 setRes!53146))

(declare-fun setNonEmpty!53146 () Bool)

(declare-fun e!4314053 () Bool)

(declare-fun setElem!53146 () Context!14602)

(declare-fun tp!1994365 () Bool)

(assert (=> setNonEmpty!53146 (= setRes!53146 (and tp!1994365 (inv!88894 setElem!53146) e!4314053))))

(declare-fun setRest!53146 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53146 (= res!2925594 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53146 true) setRest!53146))))

(declare-fun b!7183616 () Bool)

(declare-fun tp!1994364 () Bool)

(assert (=> b!7183616 (= e!4314053 tp!1994364)))

(assert (= (and d!2237531 condSetEmpty!53146) setIsEmpty!53146))

(assert (= (and d!2237531 (not condSetEmpty!53146)) setNonEmpty!53146))

(assert (= setNonEmpty!53146 b!7183616))

(declare-fun m!7880822 () Bool)

(assert (=> setNonEmpty!53146 m!7880822))

(assert (=> d!2237473 d!2237531))

(declare-fun bs!1896984 () Bool)

(declare-fun d!2237533 () Bool)

(assert (= bs!1896984 (and d!2237533 d!2237403)))

(declare-fun lambda!437566 () Int)

(assert (=> bs!1896984 (not (= lambda!437566 lambda!437536))))

(declare-fun bs!1896985 () Bool)

(assert (= bs!1896985 (and d!2237533 d!2237509)))

(assert (=> bs!1896985 (= lambda!437566 lambda!437565)))

(declare-fun bs!1896986 () Bool)

(assert (= bs!1896986 (and d!2237533 d!2237379)))

(assert (=> bs!1896986 (= lambda!437566 lambda!437531)))

(declare-fun bs!1896987 () Bool)

(assert (= bs!1896987 (and d!2237533 d!2237493)))

(assert (=> bs!1896987 (= lambda!437566 lambda!437561)))

(declare-fun bs!1896988 () Bool)

(assert (= bs!1896988 (and d!2237533 d!2237477)))

(assert (=> bs!1896988 (= lambda!437566 lambda!437546)))

(declare-fun bs!1896989 () Bool)

(assert (= bs!1896989 (and d!2237533 d!2237395)))

(assert (=> bs!1896989 (= lambda!437566 lambda!437532)))

(assert (=> d!2237533 (= (inv!88894 (h!76103 res!2925525)) (forall!17177 (exprs!7801 (h!76103 res!2925525)) lambda!437566))))

(declare-fun bs!1896990 () Bool)

(assert (= bs!1896990 d!2237533))

(declare-fun m!7880824 () Bool)

(assert (=> bs!1896990 m!7880824))

(assert (=> b!7183415 d!2237533))

(declare-fun d!2237535 () Bool)

(declare-fun res!2925595 () Bool)

(declare-fun e!4314054 () Bool)

(assert (=> d!2237535 (=> res!2925595 e!4314054)))

(assert (=> d!2237535 (= res!2925595 ((_ is Nil!69655) lt!2570814))))

(assert (=> d!2237535 (= (noDuplicate!2887 lt!2570814) e!4314054)))

(declare-fun b!7183617 () Bool)

(declare-fun e!4314055 () Bool)

(assert (=> b!7183617 (= e!4314054 e!4314055)))

(declare-fun res!2925596 () Bool)

(assert (=> b!7183617 (=> (not res!2925596) (not e!4314055))))

(assert (=> b!7183617 (= res!2925596 (not (contains!20718 (t!383800 lt!2570814) (h!76103 lt!2570814))))))

(declare-fun b!7183618 () Bool)

(assert (=> b!7183618 (= e!4314055 (noDuplicate!2887 (t!383800 lt!2570814)))))

(assert (= (and d!2237535 (not res!2925595)) b!7183617))

(assert (= (and b!7183617 res!2925596) b!7183618))

(declare-fun m!7880826 () Bool)

(assert (=> b!7183617 m!7880826))

(declare-fun m!7880828 () Bool)

(assert (=> b!7183618 m!7880828))

(assert (=> d!2237471 d!2237535))

(declare-fun d!2237537 () Bool)

(declare-fun e!4314056 () Bool)

(assert (=> d!2237537 e!4314056))

(declare-fun res!2925598 () Bool)

(assert (=> d!2237537 (=> (not res!2925598) (not e!4314056))))

(declare-fun res!2925597 () List!69779)

(assert (=> d!2237537 (= res!2925598 (noDuplicate!2887 res!2925597))))

(declare-fun e!4314057 () Bool)

(assert (=> d!2237537 e!4314057))

(assert (=> d!2237537 (= (choose!55393 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)) res!2925597)))

(declare-fun b!7183620 () Bool)

(declare-fun e!4314058 () Bool)

(declare-fun tp!1994367 () Bool)

(assert (=> b!7183620 (= e!4314058 tp!1994367)))

(declare-fun tp!1994366 () Bool)

(declare-fun b!7183619 () Bool)

(assert (=> b!7183619 (= e!4314057 (and (inv!88894 (h!76103 res!2925597)) e!4314058 tp!1994366))))

(declare-fun b!7183621 () Bool)

(assert (=> b!7183621 (= e!4314056 (= (content!14316 res!2925597) (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))

(assert (= b!7183619 b!7183620))

(assert (= (and d!2237537 ((_ is Cons!69655) res!2925597)) b!7183619))

(assert (= (and d!2237537 res!2925598) b!7183621))

(declare-fun m!7880830 () Bool)

(assert (=> d!2237537 m!7880830))

(declare-fun m!7880832 () Bool)

(assert (=> b!7183619 m!7880832))

(declare-fun m!7880834 () Bool)

(assert (=> b!7183621 m!7880834))

(assert (=> d!2237471 d!2237537))

(declare-fun b!7183622 () Bool)

(declare-fun res!2925602 () Bool)

(declare-fun e!4314064 () Bool)

(assert (=> b!7183622 (=> (not res!2925602) (not e!4314064))))

(declare-fun call!654779 () Bool)

(assert (=> b!7183622 (= res!2925602 call!654779)))

(declare-fun e!4314062 () Bool)

(assert (=> b!7183622 (= e!4314062 e!4314064)))

(declare-fun b!7183623 () Bool)

(declare-fun e!4314061 () Bool)

(declare-fun call!654780 () Bool)

(assert (=> b!7183623 (= e!4314061 call!654780)))

(declare-fun bm!654774 () Bool)

(declare-fun call!654781 () Bool)

(assert (=> bm!654774 (= call!654780 call!654781)))

(declare-fun b!7183624 () Bool)

(declare-fun e!4314060 () Bool)

(assert (=> b!7183624 (= e!4314060 e!4314061)))

(declare-fun res!2925599 () Bool)

(assert (=> b!7183624 (=> (not res!2925599) (not e!4314061))))

(assert (=> b!7183624 (= res!2925599 call!654779)))

(declare-fun bm!654775 () Bool)

(declare-fun c!1337452 () Bool)

(assert (=> bm!654775 (= call!654779 (validRegex!9468 (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))))))

(declare-fun b!7183625 () Bool)

(declare-fun e!4314063 () Bool)

(declare-fun e!4314065 () Bool)

(assert (=> b!7183625 (= e!4314063 e!4314065)))

(declare-fun c!1337451 () Bool)

(assert (=> b!7183625 (= c!1337451 ((_ is Star!18349) (h!76101 (exprs!7801 empty!2967))))))

(declare-fun d!2237539 () Bool)

(declare-fun res!2925600 () Bool)

(assert (=> d!2237539 (=> res!2925600 e!4314063)))

(assert (=> d!2237539 (= res!2925600 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 empty!2967))))))

(assert (=> d!2237539 (= (validRegex!9468 (h!76101 (exprs!7801 empty!2967))) e!4314063)))

(declare-fun b!7183626 () Bool)

(declare-fun e!4314059 () Bool)

(assert (=> b!7183626 (= e!4314059 call!654781)))

(declare-fun b!7183627 () Bool)

(assert (=> b!7183627 (= e!4314065 e!4314062)))

(assert (=> b!7183627 (= c!1337452 ((_ is Union!18349) (h!76101 (exprs!7801 empty!2967))))))

(declare-fun bm!654776 () Bool)

(assert (=> bm!654776 (= call!654781 (validRegex!9468 (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))))))

(declare-fun b!7183628 () Bool)

(assert (=> b!7183628 (= e!4314064 call!654780)))

(declare-fun b!7183629 () Bool)

(declare-fun res!2925601 () Bool)

(assert (=> b!7183629 (=> res!2925601 e!4314060)))

(assert (=> b!7183629 (= res!2925601 (not ((_ is Concat!27194) (h!76101 (exprs!7801 empty!2967)))))))

(assert (=> b!7183629 (= e!4314062 e!4314060)))

(declare-fun b!7183630 () Bool)

(assert (=> b!7183630 (= e!4314065 e!4314059)))

(declare-fun res!2925603 () Bool)

(assert (=> b!7183630 (= res!2925603 (not (nullable!7776 (reg!18678 (h!76101 (exprs!7801 empty!2967))))))))

(assert (=> b!7183630 (=> (not res!2925603) (not e!4314059))))

(assert (= (and d!2237539 (not res!2925600)) b!7183625))

(assert (= (and b!7183625 c!1337451) b!7183630))

(assert (= (and b!7183625 (not c!1337451)) b!7183627))

(assert (= (and b!7183630 res!2925603) b!7183626))

(assert (= (and b!7183627 c!1337452) b!7183622))

(assert (= (and b!7183627 (not c!1337452)) b!7183629))

(assert (= (and b!7183622 res!2925602) b!7183628))

(assert (= (and b!7183629 (not res!2925601)) b!7183624))

(assert (= (and b!7183624 res!2925599) b!7183623))

(assert (= (or b!7183622 b!7183624) bm!654775))

(assert (= (or b!7183628 b!7183623) bm!654774))

(assert (= (or b!7183626 bm!654774) bm!654776))

(declare-fun m!7880836 () Bool)

(assert (=> bm!654775 m!7880836))

(declare-fun m!7880838 () Bool)

(assert (=> bm!654776 m!7880838))

(declare-fun m!7880840 () Bool)

(assert (=> b!7183630 m!7880840))

(assert (=> bs!1896983 d!2237539))

(declare-fun d!2237541 () Bool)

(assert (=> d!2237541 (= (isEmpty!40211 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))) ((_ is Nil!69653) (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> b!7183543 d!2237541))

(declare-fun d!2237543 () Bool)

(declare-fun res!2925604 () Bool)

(declare-fun e!4314066 () Bool)

(assert (=> d!2237543 (=> res!2925604 e!4314066)))

(assert (=> d!2237543 (= res!2925604 ((_ is Nil!69655) (t!383800 lt!2570808)))))

(assert (=> d!2237543 (= (noDuplicate!2887 (t!383800 lt!2570808)) e!4314066)))

(declare-fun b!7183631 () Bool)

(declare-fun e!4314067 () Bool)

(assert (=> b!7183631 (= e!4314066 e!4314067)))

(declare-fun res!2925605 () Bool)

(assert (=> b!7183631 (=> (not res!2925605) (not e!4314067))))

(assert (=> b!7183631 (= res!2925605 (not (contains!20718 (t!383800 (t!383800 lt!2570808)) (h!76103 (t!383800 lt!2570808)))))))

(declare-fun b!7183632 () Bool)

(assert (=> b!7183632 (= e!4314067 (noDuplicate!2887 (t!383800 (t!383800 lt!2570808))))))

(assert (= (and d!2237543 (not res!2925604)) b!7183631))

(assert (= (and b!7183631 res!2925605) b!7183632))

(declare-fun m!7880842 () Bool)

(assert (=> b!7183631 m!7880842))

(declare-fun m!7880844 () Bool)

(assert (=> b!7183632 m!7880844))

(assert (=> b!7183390 d!2237543))

(declare-fun d!2237545 () Bool)

(declare-fun res!2925606 () Bool)

(declare-fun e!4314068 () Bool)

(assert (=> d!2237545 (=> res!2925606 e!4314068)))

(assert (=> d!2237545 (= res!2925606 ((_ is Nil!69655) (t!383800 lt!2570804)))))

(assert (=> d!2237545 (= (noDuplicate!2887 (t!383800 lt!2570804)) e!4314068)))

(declare-fun b!7183633 () Bool)

(declare-fun e!4314069 () Bool)

(assert (=> b!7183633 (= e!4314068 e!4314069)))

(declare-fun res!2925607 () Bool)

(assert (=> b!7183633 (=> (not res!2925607) (not e!4314069))))

(assert (=> b!7183633 (= res!2925607 (not (contains!20718 (t!383800 (t!383800 lt!2570804)) (h!76103 (t!383800 lt!2570804)))))))

(declare-fun b!7183634 () Bool)

(assert (=> b!7183634 (= e!4314069 (noDuplicate!2887 (t!383800 (t!383800 lt!2570804))))))

(assert (= (and d!2237545 (not res!2925606)) b!7183633))

(assert (= (and b!7183633 res!2925607) b!7183634))

(declare-fun m!7880846 () Bool)

(assert (=> b!7183633 m!7880846))

(declare-fun m!7880848 () Bool)

(assert (=> b!7183634 m!7880848))

(assert (=> b!7183409 d!2237545))

(declare-fun d!2237547 () Bool)

(declare-fun res!2925608 () Bool)

(declare-fun e!4314070 () Bool)

(assert (=> d!2237547 (=> res!2925608 e!4314070)))

(assert (=> d!2237547 (= res!2925608 ((_ is Nil!69655) res!2925525))))

(assert (=> d!2237547 (= (noDuplicate!2887 res!2925525) e!4314070)))

(declare-fun b!7183635 () Bool)

(declare-fun e!4314071 () Bool)

(assert (=> b!7183635 (= e!4314070 e!4314071)))

(declare-fun res!2925609 () Bool)

(assert (=> b!7183635 (=> (not res!2925609) (not e!4314071))))

(assert (=> b!7183635 (= res!2925609 (not (contains!20718 (t!383800 res!2925525) (h!76103 res!2925525))))))

(declare-fun b!7183636 () Bool)

(assert (=> b!7183636 (= e!4314071 (noDuplicate!2887 (t!383800 res!2925525)))))

(assert (= (and d!2237547 (not res!2925608)) b!7183635))

(assert (= (and b!7183635 res!2925609) b!7183636))

(declare-fun m!7880850 () Bool)

(assert (=> b!7183635 m!7880850))

(declare-fun m!7880852 () Bool)

(assert (=> b!7183636 m!7880852))

(assert (=> d!2237465 d!2237547))

(declare-fun d!2237549 () Bool)

(assert (=> d!2237549 (= (nullable!7776 (reg!18678 lt!2570807)) (nullableFct!3042 (reg!18678 lt!2570807)))))

(declare-fun bs!1896991 () Bool)

(assert (= bs!1896991 d!2237549))

(declare-fun m!7880854 () Bool)

(assert (=> bs!1896991 m!7880854))

(assert (=> b!7183508 d!2237549))

(assert (=> d!2237483 d!2237479))

(assert (=> d!2237483 d!2237413))

(declare-fun bs!1896992 () Bool)

(declare-fun d!2237551 () Bool)

(assert (= bs!1896992 (and d!2237551 d!2237403)))

(declare-fun lambda!437567 () Int)

(assert (=> bs!1896992 (not (= lambda!437567 lambda!437536))))

(declare-fun bs!1896993 () Bool)

(assert (= bs!1896993 (and d!2237551 d!2237509)))

(assert (=> bs!1896993 (= lambda!437567 lambda!437565)))

(declare-fun bs!1896994 () Bool)

(assert (= bs!1896994 (and d!2237551 d!2237379)))

(assert (=> bs!1896994 (= lambda!437567 lambda!437531)))

(declare-fun bs!1896995 () Bool)

(assert (= bs!1896995 (and d!2237551 d!2237493)))

(assert (=> bs!1896995 (= lambda!437567 lambda!437561)))

(declare-fun bs!1896996 () Bool)

(assert (= bs!1896996 (and d!2237551 d!2237477)))

(assert (=> bs!1896996 (= lambda!437567 lambda!437546)))

(declare-fun bs!1896997 () Bool)

(assert (= bs!1896997 (and d!2237551 d!2237533)))

(assert (=> bs!1896997 (= lambda!437567 lambda!437566)))

(declare-fun bs!1896998 () Bool)

(assert (= bs!1896998 (and d!2237551 d!2237395)))

(assert (=> bs!1896998 (= lambda!437567 lambda!437532)))

(declare-fun b!7183637 () Bool)

(declare-fun e!4314074 () Regex!18349)

(assert (=> b!7183637 (= e!4314074 (Union!18349 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))) (generalisedUnion!2771 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))))

(declare-fun b!7183638 () Bool)

(declare-fun e!4314072 () Regex!18349)

(assert (=> b!7183638 (= e!4314072 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun b!7183639 () Bool)

(declare-fun e!4314073 () Bool)

(declare-fun lt!2570827 () Regex!18349)

(assert (=> b!7183639 (= e!4314073 (isUnion!1579 lt!2570827))))

(declare-fun b!7183641 () Bool)

(assert (=> b!7183641 (= e!4314074 EmptyLang!18349)))

(declare-fun b!7183642 () Bool)

(declare-fun e!4314076 () Bool)

(declare-fun e!4314075 () Bool)

(assert (=> b!7183642 (= e!4314076 e!4314075)))

(declare-fun c!1337454 () Bool)

(assert (=> b!7183642 (= c!1337454 (isEmpty!40211 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun b!7183643 () Bool)

(declare-fun e!4314077 () Bool)

(assert (=> b!7183643 (= e!4314077 (isEmpty!40211 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun b!7183644 () Bool)

(assert (=> b!7183644 (= e!4314073 (= lt!2570827 (head!14664 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun b!7183645 () Bool)

(assert (=> b!7183645 (= e!4314072 e!4314074)))

(declare-fun c!1337456 () Bool)

(assert (=> b!7183645 (= c!1337456 ((_ is Cons!69653) (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun b!7183646 () Bool)

(assert (=> b!7183646 (= e!4314075 e!4314073)))

(declare-fun c!1337455 () Bool)

(assert (=> b!7183646 (= c!1337455 (isEmpty!40211 (tail!14069 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(assert (=> d!2237551 e!4314076))

(declare-fun res!2925610 () Bool)

(assert (=> d!2237551 (=> (not res!2925610) (not e!4314076))))

(assert (=> d!2237551 (= res!2925610 (validRegex!9468 lt!2570827))))

(assert (=> d!2237551 (= lt!2570827 e!4314072)))

(declare-fun c!1337453 () Bool)

(assert (=> d!2237551 (= c!1337453 e!4314077)))

(declare-fun res!2925611 () Bool)

(assert (=> d!2237551 (=> (not res!2925611) (not e!4314077))))

(assert (=> d!2237551 (= res!2925611 ((_ is Cons!69653) (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> d!2237551 (forall!17177 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))) lambda!437567)))

(assert (=> d!2237551 (= (generalisedUnion!2771 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))) lt!2570827)))

(declare-fun b!7183640 () Bool)

(assert (=> b!7183640 (= e!4314075 (isEmptyLang!2151 lt!2570827))))

(assert (= (and d!2237551 res!2925611) b!7183643))

(assert (= (and d!2237551 c!1337453) b!7183638))

(assert (= (and d!2237551 (not c!1337453)) b!7183645))

(assert (= (and b!7183645 c!1337456) b!7183637))

(assert (= (and b!7183645 (not c!1337456)) b!7183641))

(assert (= (and d!2237551 res!2925610) b!7183642))

(assert (= (and b!7183642 c!1337454) b!7183640))

(assert (= (and b!7183642 (not c!1337454)) b!7183646))

(assert (= (and b!7183646 c!1337455) b!7183644))

(assert (= (and b!7183646 (not c!1337455)) b!7183639))

(declare-fun m!7880856 () Bool)

(assert (=> b!7183639 m!7880856))

(assert (=> b!7183642 m!7880776))

(declare-fun m!7880858 () Bool)

(assert (=> b!7183640 m!7880858))

(declare-fun m!7880860 () Bool)

(assert (=> d!2237551 m!7880860))

(declare-fun m!7880862 () Bool)

(assert (=> d!2237551 m!7880862))

(declare-fun m!7880864 () Bool)

(assert (=> b!7183643 m!7880864))

(declare-fun m!7880866 () Bool)

(assert (=> b!7183646 m!7880866))

(assert (=> b!7183646 m!7880866))

(declare-fun m!7880868 () Bool)

(assert (=> b!7183646 m!7880868))

(declare-fun m!7880870 () Bool)

(assert (=> b!7183637 m!7880870))

(declare-fun m!7880872 () Bool)

(assert (=> b!7183644 m!7880872))

(assert (=> b!7183537 d!2237551))

(declare-fun d!2237553 () Bool)

(assert (=> d!2237553 (= (nullable!7776 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (nullableFct!3042 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(declare-fun bs!1896999 () Bool)

(assert (= bs!1896999 d!2237553))

(declare-fun m!7880874 () Bool)

(assert (=> bs!1896999 m!7880874))

(assert (=> b!7183405 d!2237553))

(declare-fun bs!1897000 () Bool)

(declare-fun d!2237555 () Bool)

(assert (= bs!1897000 (and d!2237555 d!2237403)))

(declare-fun lambda!437568 () Int)

(assert (=> bs!1897000 (not (= lambda!437568 lambda!437536))))

(declare-fun bs!1897001 () Bool)

(assert (= bs!1897001 (and d!2237555 d!2237509)))

(assert (=> bs!1897001 (= lambda!437568 lambda!437565)))

(declare-fun bs!1897002 () Bool)

(assert (= bs!1897002 (and d!2237555 d!2237379)))

(assert (=> bs!1897002 (= lambda!437568 lambda!437531)))

(declare-fun bs!1897003 () Bool)

(assert (= bs!1897003 (and d!2237555 d!2237493)))

(assert (=> bs!1897003 (= lambda!437568 lambda!437561)))

(declare-fun bs!1897004 () Bool)

(assert (= bs!1897004 (and d!2237555 d!2237477)))

(assert (=> bs!1897004 (= lambda!437568 lambda!437546)))

(declare-fun bs!1897005 () Bool)

(assert (= bs!1897005 (and d!2237555 d!2237533)))

(assert (=> bs!1897005 (= lambda!437568 lambda!437566)))

(declare-fun bs!1897006 () Bool)

(assert (= bs!1897006 (and d!2237555 d!2237395)))

(assert (=> bs!1897006 (= lambda!437568 lambda!437532)))

(declare-fun bs!1897007 () Bool)

(assert (= bs!1897007 (and d!2237555 d!2237551)))

(assert (=> bs!1897007 (= lambda!437568 lambda!437567)))

(assert (=> d!2237555 (= (inv!88894 (h!76103 res!2925518)) (forall!17177 (exprs!7801 (h!76103 res!2925518)) lambda!437568))))

(declare-fun bs!1897008 () Bool)

(assert (= bs!1897008 d!2237555))

(declare-fun m!7880876 () Bool)

(assert (=> bs!1897008 m!7880876))

(assert (=> b!7183399 d!2237555))

(declare-fun b!7183647 () Bool)

(declare-fun e!4314081 () (InoxSet Context!14602))

(declare-fun e!4314080 () (InoxSet Context!14602))

(assert (=> b!7183647 (= e!4314081 e!4314080)))

(declare-fun c!1337459 () Bool)

(assert (=> b!7183647 (= c!1337459 ((_ is Concat!27194) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(declare-fun call!654785 () List!69777)

(declare-fun c!1337460 () Bool)

(declare-fun bm!654777 () Bool)

(assert (=> bm!654777 (= call!654785 ($colon$colon!2843 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))) (ite (or c!1337460 c!1337459) (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))

(declare-fun b!7183648 () Bool)

(declare-fun e!4314083 () (InoxSet Context!14602))

(assert (=> b!7183648 (= e!4314083 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183649 () Bool)

(declare-fun e!4314082 () (InoxSet Context!14602))

(declare-fun call!654782 () (InoxSet Context!14602))

(declare-fun call!654784 () (InoxSet Context!14602))

(assert (=> b!7183649 (= e!4314082 ((_ map or) call!654782 call!654784))))

(declare-fun bm!654778 () Bool)

(declare-fun c!1337458 () Bool)

(assert (=> bm!654778 (= call!654782 (derivationStepZipperDown!2512 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))) (ite c!1337458 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654785)) lt!2570781))))

(declare-fun b!7183650 () Bool)

(declare-fun e!4314079 () Bool)

(assert (=> b!7183650 (= e!4314079 (nullable!7776 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))

(declare-fun bm!654779 () Bool)

(declare-fun call!654786 () List!69777)

(assert (=> bm!654779 (= call!654786 call!654785)))

(declare-fun b!7183651 () Bool)

(declare-fun e!4314078 () (InoxSet Context!14602))

(assert (=> b!7183651 (= e!4314078 e!4314082)))

(assert (=> b!7183651 (= c!1337458 ((_ is Union!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(declare-fun d!2237557 () Bool)

(declare-fun c!1337457 () Bool)

(assert (=> d!2237557 (= c!1337457 (and ((_ is ElementMatch!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (= (c!1337348 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) lt!2570781)))))

(assert (=> d!2237557 (= (derivationStepZipperDown!2512 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) lt!2570781) e!4314078)))

(declare-fun b!7183652 () Bool)

(declare-fun call!654783 () (InoxSet Context!14602))

(assert (=> b!7183652 (= e!4314081 ((_ map or) call!654782 call!654783))))

(declare-fun bm!654780 () Bool)

(declare-fun call!654787 () (InoxSet Context!14602))

(assert (=> bm!654780 (= call!654787 call!654783)))

(declare-fun b!7183653 () Bool)

(assert (=> b!7183653 (= e!4314080 call!654787)))

(declare-fun bm!654781 () Bool)

(assert (=> bm!654781 (= call!654783 call!654784)))

(declare-fun b!7183654 () Bool)

(declare-fun c!1337461 () Bool)

(assert (=> b!7183654 (= c!1337461 ((_ is Star!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(assert (=> b!7183654 (= e!4314080 e!4314083)))

(declare-fun b!7183655 () Bool)

(assert (=> b!7183655 (= e!4314078 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) true))))

(declare-fun b!7183656 () Bool)

(assert (=> b!7183656 (= e!4314083 call!654787)))

(declare-fun bm!654782 () Bool)

(assert (=> bm!654782 (= call!654784 (derivationStepZipperDown!2512 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (ite (or c!1337458 c!1337460) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654786)) lt!2570781))))

(declare-fun b!7183657 () Bool)

(assert (=> b!7183657 (= c!1337460 e!4314079)))

(declare-fun res!2925612 () Bool)

(assert (=> b!7183657 (=> (not res!2925612) (not e!4314079))))

(assert (=> b!7183657 (= res!2925612 ((_ is Concat!27194) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(assert (=> b!7183657 (= e!4314082 e!4314081)))

(assert (= (and d!2237557 c!1337457) b!7183655))

(assert (= (and d!2237557 (not c!1337457)) b!7183651))

(assert (= (and b!7183651 c!1337458) b!7183649))

(assert (= (and b!7183651 (not c!1337458)) b!7183657))

(assert (= (and b!7183657 res!2925612) b!7183650))

(assert (= (and b!7183657 c!1337460) b!7183652))

(assert (= (and b!7183657 (not c!1337460)) b!7183647))

(assert (= (and b!7183647 c!1337459) b!7183653))

(assert (= (and b!7183647 (not c!1337459)) b!7183654))

(assert (= (and b!7183654 c!1337461) b!7183656))

(assert (= (and b!7183654 (not c!1337461)) b!7183648))

(assert (= (or b!7183653 b!7183656) bm!654779))

(assert (= (or b!7183653 b!7183656) bm!654780))

(assert (= (or b!7183652 bm!654780) bm!654781))

(assert (= (or b!7183652 bm!654779) bm!654777))

(assert (= (or b!7183649 bm!654781) bm!654782))

(assert (= (or b!7183649 b!7183652) bm!654778))

(declare-fun m!7880878 () Bool)

(assert (=> bm!654778 m!7880878))

(declare-fun m!7880880 () Bool)

(assert (=> b!7183655 m!7880880))

(declare-fun m!7880882 () Bool)

(assert (=> b!7183650 m!7880882))

(declare-fun m!7880884 () Bool)

(assert (=> bm!654782 m!7880884))

(declare-fun m!7880886 () Bool)

(assert (=> bm!654777 m!7880886))

(assert (=> bm!654754 d!2237557))

(declare-fun d!2237559 () Bool)

(declare-fun c!1337462 () Bool)

(assert (=> d!2237559 (= c!1337462 ((_ is Nil!69655) res!2925518))))

(declare-fun e!4314084 () (InoxSet Context!14602))

(assert (=> d!2237559 (= (content!14316 res!2925518) e!4314084)))

(declare-fun b!7183658 () Bool)

(assert (=> b!7183658 (= e!4314084 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183659 () Bool)

(assert (=> b!7183659 (= e!4314084 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 res!2925518) true) (content!14316 (t!383800 res!2925518))))))

(assert (= (and d!2237559 c!1337462) b!7183658))

(assert (= (and d!2237559 (not c!1337462)) b!7183659))

(declare-fun m!7880888 () Bool)

(assert (=> b!7183659 m!7880888))

(declare-fun m!7880890 () Bool)

(assert (=> b!7183659 m!7880890))

(assert (=> b!7183401 d!2237559))

(declare-fun d!2237561 () Bool)

(assert (=> d!2237561 (= (isUnion!1579 lt!2570823) ((_ is Union!18349) lt!2570823))))

(assert (=> b!7183539 d!2237561))

(declare-fun d!2237563 () Bool)

(declare-fun c!1337463 () Bool)

(assert (=> d!2237563 (= c!1337463 ((_ is Nil!69655) lt!2570814))))

(declare-fun e!4314085 () (InoxSet Context!14602))

(assert (=> d!2237563 (= (content!14316 lt!2570814) e!4314085)))

(declare-fun b!7183660 () Bool)

(assert (=> b!7183660 (= e!4314085 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183661 () Bool)

(assert (=> b!7183661 (= e!4314085 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 lt!2570814) true) (content!14316 (t!383800 lt!2570814))))))

(assert (= (and d!2237563 c!1337463) b!7183660))

(assert (= (and d!2237563 (not c!1337463)) b!7183661))

(declare-fun m!7880892 () Bool)

(assert (=> b!7183661 m!7880892))

(declare-fun m!7880894 () Bool)

(assert (=> b!7183661 m!7880894))

(assert (=> b!7183436 d!2237563))

(declare-fun d!2237565 () Bool)

(declare-fun res!2925613 () Bool)

(declare-fun e!4314086 () Bool)

(assert (=> d!2237565 (=> res!2925613 e!4314086)))

(assert (=> d!2237565 (= res!2925613 ((_ is Nil!69653) (t!383798 (exprs!7801 setElem!53131))))))

(assert (=> d!2237565 (= (forall!17177 (t!383798 (exprs!7801 setElem!53131)) lambda!437532) e!4314086)))

(declare-fun b!7183662 () Bool)

(declare-fun e!4314087 () Bool)

(assert (=> b!7183662 (= e!4314086 e!4314087)))

(declare-fun res!2925614 () Bool)

(assert (=> b!7183662 (=> (not res!2925614) (not e!4314087))))

(assert (=> b!7183662 (= res!2925614 (dynLambda!28369 lambda!437532 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))))

(declare-fun b!7183663 () Bool)

(assert (=> b!7183663 (= e!4314087 (forall!17177 (t!383798 (t!383798 (exprs!7801 setElem!53131))) lambda!437532))))

(assert (= (and d!2237565 (not res!2925613)) b!7183662))

(assert (= (and b!7183662 res!2925614) b!7183663))

(declare-fun b_lambda!274987 () Bool)

(assert (=> (not b_lambda!274987) (not b!7183662)))

(declare-fun m!7880896 () Bool)

(assert (=> b!7183662 m!7880896))

(declare-fun m!7880898 () Bool)

(assert (=> b!7183663 m!7880898))

(assert (=> b!7183339 d!2237565))

(declare-fun b!7183664 () Bool)

(declare-fun e!4314090 () (InoxSet Context!14602))

(declare-fun e!4314088 () (InoxSet Context!14602))

(assert (=> b!7183664 (= e!4314090 e!4314088)))

(declare-fun c!1337465 () Bool)

(assert (=> b!7183664 (= c!1337465 ((_ is Cons!69653) (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(declare-fun b!7183665 () Bool)

(declare-fun call!654788 () (InoxSet Context!14602))

(assert (=> b!7183665 (= e!4314090 ((_ map or) call!654788 (derivationStepZipperUp!2325 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) lt!2570781)))))

(declare-fun b!7183666 () Bool)

(assert (=> b!7183666 (= e!4314088 call!654788)))

(declare-fun d!2237567 () Bool)

(declare-fun c!1337464 () Bool)

(declare-fun e!4314089 () Bool)

(assert (=> d!2237567 (= c!1337464 e!4314089)))

(declare-fun res!2925615 () Bool)

(assert (=> d!2237567 (=> (not res!2925615) (not e!4314089))))

(assert (=> d!2237567 (= res!2925615 ((_ is Cons!69653) (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(assert (=> d!2237567 (= (derivationStepZipperUp!2325 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) lt!2570781) e!4314090)))

(declare-fun b!7183667 () Bool)

(assert (=> b!7183667 (= e!4314089 (nullable!7776 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))

(declare-fun b!7183668 () Bool)

(assert (=> b!7183668 (= e!4314088 ((as const (Array Context!14602 Bool)) false))))

(declare-fun bm!654783 () Bool)

(assert (=> bm!654783 (= call!654788 (derivationStepZipperDown!2512 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) lt!2570781))))

(assert (= (and d!2237567 res!2925615) b!7183667))

(assert (= (and d!2237567 c!1337464) b!7183665))

(assert (= (and d!2237567 (not c!1337464)) b!7183664))

(assert (= (and b!7183664 c!1337465) b!7183666))

(assert (= (and b!7183664 (not c!1337465)) b!7183668))

(assert (= (or b!7183665 b!7183666) bm!654783))

(declare-fun m!7880900 () Bool)

(assert (=> b!7183665 m!7880900))

(declare-fun m!7880902 () Bool)

(assert (=> b!7183667 m!7880902))

(declare-fun m!7880904 () Bool)

(assert (=> bm!654783 m!7880904))

(assert (=> b!7183403 d!2237567))

(assert (=> bs!1896981 d!2237489))

(declare-fun bs!1897009 () Bool)

(declare-fun d!2237569 () Bool)

(assert (= bs!1897009 (and d!2237569 d!2237403)))

(declare-fun lambda!437569 () Int)

(assert (=> bs!1897009 (not (= lambda!437569 lambda!437536))))

(declare-fun bs!1897010 () Bool)

(assert (= bs!1897010 (and d!2237569 d!2237379)))

(assert (=> bs!1897010 (= lambda!437569 lambda!437531)))

(declare-fun bs!1897011 () Bool)

(assert (= bs!1897011 (and d!2237569 d!2237493)))

(assert (=> bs!1897011 (= lambda!437569 lambda!437561)))

(declare-fun bs!1897012 () Bool)

(assert (= bs!1897012 (and d!2237569 d!2237477)))

(assert (=> bs!1897012 (= lambda!437569 lambda!437546)))

(declare-fun bs!1897013 () Bool)

(assert (= bs!1897013 (and d!2237569 d!2237533)))

(assert (=> bs!1897013 (= lambda!437569 lambda!437566)))

(declare-fun bs!1897014 () Bool)

(assert (= bs!1897014 (and d!2237569 d!2237509)))

(assert (=> bs!1897014 (= lambda!437569 lambda!437565)))

(declare-fun bs!1897015 () Bool)

(assert (= bs!1897015 (and d!2237569 d!2237555)))

(assert (=> bs!1897015 (= lambda!437569 lambda!437568)))

(declare-fun bs!1897016 () Bool)

(assert (= bs!1897016 (and d!2237569 d!2237395)))

(assert (=> bs!1897016 (= lambda!437569 lambda!437532)))

(declare-fun bs!1897017 () Bool)

(assert (= bs!1897017 (and d!2237569 d!2237551)))

(assert (=> bs!1897017 (= lambda!437569 lambda!437567)))

(assert (=> d!2237569 (= (inv!88894 setElem!53140) (forall!17177 (exprs!7801 setElem!53140) lambda!437569))))

(declare-fun bs!1897018 () Bool)

(assert (= bs!1897018 d!2237569))

(declare-fun m!7880906 () Bool)

(assert (=> bs!1897018 m!7880906))

(assert (=> setNonEmpty!53140 d!2237569))

(declare-fun b!7183683 () Bool)

(declare-fun e!4314107 () Bool)

(declare-fun e!4314105 () Bool)

(assert (=> b!7183683 (= e!4314107 e!4314105)))

(declare-fun res!2925626 () Bool)

(assert (=> b!7183683 (=> (not res!2925626) (not e!4314105))))

(assert (=> b!7183683 (= res!2925626 (and (not ((_ is EmptyLang!18349) (h!76101 (exprs!7801 lt!2570780)))) (not ((_ is ElementMatch!18349) (h!76101 (exprs!7801 lt!2570780))))))))

(declare-fun b!7183684 () Bool)

(declare-fun e!4314108 () Bool)

(declare-fun e!4314106 () Bool)

(assert (=> b!7183684 (= e!4314108 e!4314106)))

(declare-fun c!1337468 () Bool)

(assert (=> b!7183684 (= c!1337468 ((_ is Union!18349) (h!76101 (exprs!7801 lt!2570780))))))

(declare-fun d!2237571 () Bool)

(declare-fun res!2925627 () Bool)

(assert (=> d!2237571 (=> res!2925627 e!4314107)))

(assert (=> d!2237571 (= res!2925627 ((_ is EmptyExpr!18349) (h!76101 (exprs!7801 lt!2570780))))))

(assert (=> d!2237571 (= (nullableFct!3042 (h!76101 (exprs!7801 lt!2570780))) e!4314107)))

(declare-fun bm!654788 () Bool)

(declare-fun call!654793 () Bool)

(assert (=> bm!654788 (= call!654793 (nullable!7776 (ite c!1337468 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))

(declare-fun b!7183685 () Bool)

(assert (=> b!7183685 (= e!4314105 e!4314108)))

(declare-fun res!2925628 () Bool)

(assert (=> b!7183685 (=> res!2925628 e!4314108)))

(assert (=> b!7183685 (= res!2925628 ((_ is Star!18349) (h!76101 (exprs!7801 lt!2570780))))))

(declare-fun b!7183686 () Bool)

(declare-fun e!4314103 () Bool)

(declare-fun call!654794 () Bool)

(assert (=> b!7183686 (= e!4314103 call!654794)))

(declare-fun b!7183687 () Bool)

(declare-fun e!4314104 () Bool)

(assert (=> b!7183687 (= e!4314104 call!654794)))

(declare-fun b!7183688 () Bool)

(assert (=> b!7183688 (= e!4314106 e!4314104)))

(declare-fun res!2925630 () Bool)

(assert (=> b!7183688 (= res!2925630 call!654793)))

(assert (=> b!7183688 (=> (not res!2925630) (not e!4314104))))

(declare-fun b!7183689 () Bool)

(assert (=> b!7183689 (= e!4314106 e!4314103)))

(declare-fun res!2925629 () Bool)

(assert (=> b!7183689 (= res!2925629 call!654793)))

(assert (=> b!7183689 (=> res!2925629 e!4314103)))

(declare-fun bm!654789 () Bool)

(assert (=> bm!654789 (= call!654794 (nullable!7776 (ite c!1337468 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))))))))

(assert (= (and d!2237571 (not res!2925627)) b!7183683))

(assert (= (and b!7183683 res!2925626) b!7183685))

(assert (= (and b!7183685 (not res!2925628)) b!7183684))

(assert (= (and b!7183684 c!1337468) b!7183689))

(assert (= (and b!7183684 (not c!1337468)) b!7183688))

(assert (= (and b!7183689 (not res!2925629)) b!7183686))

(assert (= (and b!7183688 res!2925630) b!7183687))

(assert (= (or b!7183689 b!7183688) bm!654788))

(assert (= (or b!7183686 b!7183687) bm!654789))

(declare-fun m!7880908 () Bool)

(assert (=> bm!654788 m!7880908))

(declare-fun m!7880910 () Bool)

(assert (=> bm!654789 m!7880910))

(assert (=> d!2237489 d!2237571))

(declare-fun b!7183690 () Bool)

(declare-fun e!4314112 () (InoxSet Context!14602))

(declare-fun e!4314111 () (InoxSet Context!14602))

(assert (=> b!7183690 (= e!4314112 e!4314111)))

(declare-fun c!1337471 () Bool)

(assert (=> b!7183690 (= c!1337471 ((_ is Concat!27194) (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))

(declare-fun call!654798 () List!69777)

(declare-fun c!1337472 () Bool)

(declare-fun bm!654790 () Bool)

(assert (=> bm!654790 (= call!654798 ($colon$colon!2843 (exprs!7801 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738))) (ite (or c!1337472 c!1337471) (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))

(declare-fun b!7183691 () Bool)

(declare-fun e!4314114 () (InoxSet Context!14602))

(assert (=> b!7183691 (= e!4314114 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183692 () Bool)

(declare-fun e!4314113 () (InoxSet Context!14602))

(declare-fun call!654795 () (InoxSet Context!14602))

(declare-fun call!654797 () (InoxSet Context!14602))

(assert (=> b!7183692 (= e!4314113 ((_ map or) call!654795 call!654797))))

(declare-fun bm!654791 () Bool)

(declare-fun c!1337470 () Bool)

(assert (=> bm!654791 (= call!654795 (derivationStepZipperDown!2512 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))) (ite c!1337470 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654798)) lt!2570781))))

(declare-fun b!7183693 () Bool)

(declare-fun e!4314110 () Bool)

(assert (=> b!7183693 (= e!4314110 (nullable!7776 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))

(declare-fun bm!654792 () Bool)

(declare-fun call!654799 () List!69777)

(assert (=> bm!654792 (= call!654799 call!654798)))

(declare-fun b!7183694 () Bool)

(declare-fun e!4314109 () (InoxSet Context!14602))

(assert (=> b!7183694 (= e!4314109 e!4314113)))

(assert (=> b!7183694 (= c!1337470 ((_ is Union!18349) (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))

(declare-fun c!1337469 () Bool)

(declare-fun d!2237573 () Bool)

(assert (=> d!2237573 (= c!1337469 (and ((_ is ElementMatch!18349) (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (= (c!1337348 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) lt!2570781)))))

(assert (=> d!2237573 (= (derivationStepZipperDown!2512 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) lt!2570781) e!4314109)))

(declare-fun b!7183695 () Bool)

(declare-fun call!654796 () (InoxSet Context!14602))

(assert (=> b!7183695 (= e!4314112 ((_ map or) call!654795 call!654796))))

(declare-fun bm!654793 () Bool)

(declare-fun call!654800 () (InoxSet Context!14602))

(assert (=> bm!654793 (= call!654800 call!654796)))

(declare-fun b!7183696 () Bool)

(assert (=> b!7183696 (= e!4314111 call!654800)))

(declare-fun bm!654794 () Bool)

(assert (=> bm!654794 (= call!654796 call!654797)))

(declare-fun b!7183697 () Bool)

(declare-fun c!1337473 () Bool)

(assert (=> b!7183697 (= c!1337473 ((_ is Star!18349) (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))

(assert (=> b!7183697 (= e!4314111 e!4314114)))

(declare-fun b!7183698 () Bool)

(assert (=> b!7183698 (= e!4314109 (store ((as const (Array Context!14602 Bool)) false) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) true))))

(declare-fun b!7183699 () Bool)

(assert (=> b!7183699 (= e!4314114 call!654800)))

(declare-fun bm!654795 () Bool)

(assert (=> bm!654795 (= call!654797 (derivationStepZipperDown!2512 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))) (ite (or c!1337470 c!1337472) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654799)) lt!2570781))))

(declare-fun b!7183700 () Bool)

(assert (=> b!7183700 (= c!1337472 e!4314110)))

(declare-fun res!2925631 () Bool)

(assert (=> b!7183700 (=> (not res!2925631) (not e!4314110))))

(assert (=> b!7183700 (= res!2925631 ((_ is Concat!27194) (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))

(assert (=> b!7183700 (= e!4314113 e!4314112)))

(assert (= (and d!2237573 c!1337469) b!7183698))

(assert (= (and d!2237573 (not c!1337469)) b!7183694))

(assert (= (and b!7183694 c!1337470) b!7183692))

(assert (= (and b!7183694 (not c!1337470)) b!7183700))

(assert (= (and b!7183700 res!2925631) b!7183693))

(assert (= (and b!7183700 c!1337472) b!7183695))

(assert (= (and b!7183700 (not c!1337472)) b!7183690))

(assert (= (and b!7183690 c!1337471) b!7183696))

(assert (= (and b!7183690 (not c!1337471)) b!7183697))

(assert (= (and b!7183697 c!1337473) b!7183699))

(assert (= (and b!7183697 (not c!1337473)) b!7183691))

(assert (= (or b!7183696 b!7183699) bm!654792))

(assert (= (or b!7183696 b!7183699) bm!654793))

(assert (= (or b!7183695 bm!654793) bm!654794))

(assert (= (or b!7183695 bm!654792) bm!654790))

(assert (= (or b!7183692 bm!654794) bm!654795))

(assert (= (or b!7183692 b!7183695) bm!654791))

(declare-fun m!7880912 () Bool)

(assert (=> bm!654791 m!7880912))

(declare-fun m!7880914 () Bool)

(assert (=> b!7183698 m!7880914))

(declare-fun m!7880916 () Bool)

(assert (=> b!7183693 m!7880916))

(declare-fun m!7880918 () Bool)

(assert (=> bm!654795 m!7880918))

(declare-fun m!7880920 () Bool)

(assert (=> bm!654790 m!7880920))

(assert (=> bm!654731 d!2237573))

(assert (=> d!2237447 d!2237385))

(declare-fun d!2237575 () Bool)

(declare-fun lt!2570828 () Bool)

(assert (=> d!2237575 (= lt!2570828 (exists!4078 (toList!11292 z!3530) lambda!437545))))

(assert (=> d!2237575 (= lt!2570828 (choose!55390 z!3530 lambda!437545))))

(assert (=> d!2237575 (= (exists!4076 z!3530 lambda!437545) lt!2570828)))

(declare-fun bs!1897019 () Bool)

(assert (= bs!1897019 d!2237575))

(assert (=> bs!1897019 m!7880432))

(assert (=> bs!1897019 m!7880432))

(declare-fun m!7880922 () Bool)

(assert (=> bs!1897019 m!7880922))

(declare-fun m!7880924 () Bool)

(assert (=> bs!1897019 m!7880924))

(assert (=> d!2237447 d!2237575))

(declare-fun bs!1897020 () Bool)

(declare-fun d!2237577 () Bool)

(assert (= bs!1897020 (and d!2237577 d!2237403)))

(declare-fun lambda!437570 () Int)

(assert (=> bs!1897020 (not (= lambda!437570 lambda!437536))))

(declare-fun bs!1897021 () Bool)

(assert (= bs!1897021 (and d!2237577 d!2237569)))

(assert (=> bs!1897021 (= lambda!437570 lambda!437569)))

(declare-fun bs!1897022 () Bool)

(assert (= bs!1897022 (and d!2237577 d!2237379)))

(assert (=> bs!1897022 (= lambda!437570 lambda!437531)))

(declare-fun bs!1897023 () Bool)

(assert (= bs!1897023 (and d!2237577 d!2237493)))

(assert (=> bs!1897023 (= lambda!437570 lambda!437561)))

(declare-fun bs!1897024 () Bool)

(assert (= bs!1897024 (and d!2237577 d!2237477)))

(assert (=> bs!1897024 (= lambda!437570 lambda!437546)))

(declare-fun bs!1897025 () Bool)

(assert (= bs!1897025 (and d!2237577 d!2237533)))

(assert (=> bs!1897025 (= lambda!437570 lambda!437566)))

(declare-fun bs!1897026 () Bool)

(assert (= bs!1897026 (and d!2237577 d!2237509)))

(assert (=> bs!1897026 (= lambda!437570 lambda!437565)))

(declare-fun bs!1897027 () Bool)

(assert (= bs!1897027 (and d!2237577 d!2237555)))

(assert (=> bs!1897027 (= lambda!437570 lambda!437568)))

(declare-fun bs!1897028 () Bool)

(assert (= bs!1897028 (and d!2237577 d!2237395)))

(assert (=> bs!1897028 (= lambda!437570 lambda!437532)))

(declare-fun bs!1897029 () Bool)

(assert (= bs!1897029 (and d!2237577 d!2237551)))

(assert (=> bs!1897029 (= lambda!437570 lambda!437567)))

(assert (=> d!2237577 (= (inv!88894 _$3!480) (forall!17177 (exprs!7801 _$3!480) lambda!437570))))

(declare-fun bs!1897030 () Bool)

(assert (= bs!1897030 d!2237577))

(declare-fun m!7880926 () Bool)

(assert (=> bs!1897030 m!7880926))

(assert (=> d!2237447 d!2237577))

(declare-fun d!2237579 () Bool)

(declare-fun c!1337474 () Bool)

(assert (=> d!2237579 (= c!1337474 ((_ is Nil!69655) (t!383800 lt!2570808)))))

(declare-fun e!4314115 () (InoxSet Context!14602))

(assert (=> d!2237579 (= (content!14316 (t!383800 lt!2570808)) e!4314115)))

(declare-fun b!7183701 () Bool)

(assert (=> b!7183701 (= e!4314115 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183702 () Bool)

(assert (=> b!7183702 (= e!4314115 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 (t!383800 lt!2570808)) true) (content!14316 (t!383800 (t!383800 lt!2570808)))))))

(assert (= (and d!2237579 c!1337474) b!7183701))

(assert (= (and d!2237579 (not c!1337474)) b!7183702))

(declare-fun m!7880928 () Bool)

(assert (=> b!7183702 m!7880928))

(declare-fun m!7880930 () Bool)

(assert (=> b!7183702 m!7880930))

(assert (=> b!7183451 d!2237579))

(declare-fun d!2237581 () Bool)

(assert (=> d!2237581 (= (isEmpty!40211 (unfocusZipperList!2327 (toList!11292 z!3530))) ((_ is Nil!69653) (unfocusZipperList!2327 (toList!11292 z!3530))))))

(assert (=> b!7183542 d!2237581))

(declare-fun bs!1897031 () Bool)

(declare-fun d!2237583 () Bool)

(assert (= bs!1897031 (and d!2237583 b!7183170)))

(declare-fun lambda!437571 () Int)

(assert (=> bs!1897031 (not (= lambda!437571 lambda!437513))))

(declare-fun bs!1897032 () Bool)

(assert (= bs!1897032 (and d!2237583 d!2237375)))

(assert (=> bs!1897032 (not (= lambda!437571 lambda!437525))))

(declare-fun bs!1897033 () Bool)

(assert (= bs!1897033 (and d!2237583 d!2237447)))

(assert (=> bs!1897033 (not (= lambda!437571 lambda!437545))))

(declare-fun bs!1897034 () Bool)

(assert (= bs!1897034 (and d!2237583 d!2237479)))

(assert (=> bs!1897034 (= (= lambda!437525 lambda!437513) (= lambda!437571 lambda!437549))))

(assert (=> d!2237583 true))

(assert (=> d!2237583 (< (dynLambda!28367 order!28689 lambda!437525) (dynLambda!28367 order!28689 lambda!437571))))

(assert (=> d!2237583 (= (exists!4078 (toList!11292 z!3530) lambda!437525) (not (forall!17178 (toList!11292 z!3530) lambda!437571)))))

(declare-fun bs!1897035 () Bool)

(assert (= bs!1897035 d!2237583))

(assert (=> bs!1897035 m!7880432))

(declare-fun m!7880932 () Bool)

(assert (=> bs!1897035 m!7880932))

(assert (=> d!2237445 d!2237583))

(assert (=> d!2237445 d!2237413))

(declare-fun d!2237585 () Bool)

(declare-fun res!2925632 () Bool)

(assert (=> d!2237585 (= res!2925632 (exists!4078 (toList!11292 z!3530) lambda!437525))))

(assert (=> d!2237585 true))

(assert (=> d!2237585 (= (choose!55390 z!3530 lambda!437525) res!2925632)))

(declare-fun bs!1897036 () Bool)

(assert (= bs!1897036 d!2237585))

(assert (=> bs!1897036 m!7880432))

(assert (=> bs!1897036 m!7880432))

(assert (=> bs!1897036 m!7880630))

(assert (=> d!2237445 d!2237585))

(declare-fun d!2237587 () Bool)

(declare-fun c!1337475 () Bool)

(assert (=> d!2237587 (= c!1337475 ((_ is Nil!69655) (t!383800 lt!2570804)))))

(declare-fun e!4314116 () (InoxSet Context!14602))

(assert (=> d!2237587 (= (content!14316 (t!383800 lt!2570804)) e!4314116)))

(declare-fun b!7183703 () Bool)

(assert (=> b!7183703 (= e!4314116 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183704 () Bool)

(assert (=> b!7183704 (= e!4314116 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 (t!383800 lt!2570804)) true) (content!14316 (t!383800 (t!383800 lt!2570804)))))))

(assert (= (and d!2237587 c!1337475) b!7183703))

(assert (= (and d!2237587 (not c!1337475)) b!7183704))

(declare-fun m!7880934 () Bool)

(assert (=> b!7183704 m!7880934))

(declare-fun m!7880936 () Bool)

(assert (=> b!7183704 m!7880936))

(assert (=> b!7183373 d!2237587))

(declare-fun d!2237589 () Bool)

(assert (=> d!2237589 (= (head!14664 (unfocusZipperList!2327 (toList!11292 z!3530))) (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530))))))

(assert (=> b!7183544 d!2237589))

(declare-fun bs!1897037 () Bool)

(declare-fun d!2237591 () Bool)

(assert (= bs!1897037 (and d!2237591 d!2237403)))

(declare-fun lambda!437574 () Int)

(assert (=> bs!1897037 (not (= lambda!437574 lambda!437536))))

(declare-fun bs!1897038 () Bool)

(assert (= bs!1897038 (and d!2237591 d!2237569)))

(assert (=> bs!1897038 (= lambda!437574 lambda!437569)))

(declare-fun bs!1897039 () Bool)

(assert (= bs!1897039 (and d!2237591 d!2237379)))

(assert (=> bs!1897039 (= lambda!437574 lambda!437531)))

(declare-fun bs!1897040 () Bool)

(assert (= bs!1897040 (and d!2237591 d!2237493)))

(assert (=> bs!1897040 (= lambda!437574 lambda!437561)))

(declare-fun bs!1897041 () Bool)

(assert (= bs!1897041 (and d!2237591 d!2237533)))

(assert (=> bs!1897041 (= lambda!437574 lambda!437566)))

(declare-fun bs!1897042 () Bool)

(assert (= bs!1897042 (and d!2237591 d!2237509)))

(assert (=> bs!1897042 (= lambda!437574 lambda!437565)))

(declare-fun bs!1897043 () Bool)

(assert (= bs!1897043 (and d!2237591 d!2237555)))

(assert (=> bs!1897043 (= lambda!437574 lambda!437568)))

(declare-fun bs!1897044 () Bool)

(assert (= bs!1897044 (and d!2237591 d!2237477)))

(assert (=> bs!1897044 (= lambda!437574 lambda!437546)))

(declare-fun bs!1897045 () Bool)

(assert (= bs!1897045 (and d!2237591 d!2237577)))

(assert (=> bs!1897045 (= lambda!437574 lambda!437570)))

(declare-fun bs!1897046 () Bool)

(assert (= bs!1897046 (and d!2237591 d!2237395)))

(assert (=> bs!1897046 (= lambda!437574 lambda!437532)))

(declare-fun bs!1897047 () Bool)

(assert (= bs!1897047 (and d!2237591 d!2237551)))

(assert (=> bs!1897047 (= lambda!437574 lambda!437567)))

(declare-fun b!7183725 () Bool)

(declare-fun e!4314131 () Bool)

(declare-fun lt!2570831 () Regex!18349)

(declare-fun isConcat!1615 (Regex!18349) Bool)

(assert (=> b!7183725 (= e!4314131 (isConcat!1615 lt!2570831))))

(declare-fun e!4314134 () Bool)

(assert (=> d!2237591 e!4314134))

(declare-fun res!2925638 () Bool)

(assert (=> d!2237591 (=> (not res!2925638) (not e!4314134))))

(assert (=> d!2237591 (= res!2925638 (validRegex!9468 lt!2570831))))

(declare-fun e!4314133 () Regex!18349)

(assert (=> d!2237591 (= lt!2570831 e!4314133)))

(declare-fun c!1337487 () Bool)

(declare-fun e!4314129 () Bool)

(assert (=> d!2237591 (= c!1337487 e!4314129)))

(declare-fun res!2925637 () Bool)

(assert (=> d!2237591 (=> (not res!2925637) (not e!4314129))))

(assert (=> d!2237591 (= res!2925637 ((_ is Cons!69653) (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(assert (=> d!2237591 (forall!17177 (exprs!7801 (h!76103 (toList!11292 z!3530))) lambda!437574)))

(assert (=> d!2237591 (= (generalisedConcat!2461 (exprs!7801 (h!76103 (toList!11292 z!3530)))) lt!2570831)))

(declare-fun b!7183726 () Bool)

(assert (=> b!7183726 (= e!4314131 (= lt!2570831 (head!14664 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun b!7183727 () Bool)

(declare-fun e!4314132 () Regex!18349)

(assert (=> b!7183727 (= e!4314132 EmptyExpr!18349)))

(declare-fun b!7183728 () Bool)

(assert (=> b!7183728 (= e!4314129 (isEmpty!40211 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun b!7183729 () Bool)

(assert (=> b!7183729 (= e!4314132 (Concat!27194 (h!76101 (exprs!7801 (h!76103 (toList!11292 z!3530)))) (generalisedConcat!2461 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530)))))))))

(declare-fun b!7183730 () Bool)

(declare-fun e!4314130 () Bool)

(assert (=> b!7183730 (= e!4314134 e!4314130)))

(declare-fun c!1337484 () Bool)

(assert (=> b!7183730 (= c!1337484 (isEmpty!40211 (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(declare-fun b!7183731 () Bool)

(assert (=> b!7183731 (= e!4314133 (h!76101 (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(declare-fun b!7183732 () Bool)

(assert (=> b!7183732 (= e!4314130 e!4314131)))

(declare-fun c!1337486 () Bool)

(assert (=> b!7183732 (= c!1337486 (isEmpty!40211 (tail!14069 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun b!7183733 () Bool)

(assert (=> b!7183733 (= e!4314133 e!4314132)))

(declare-fun c!1337485 () Bool)

(assert (=> b!7183733 (= c!1337485 ((_ is Cons!69653) (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(declare-fun b!7183734 () Bool)

(declare-fun isEmptyExpr!2093 (Regex!18349) Bool)

(assert (=> b!7183734 (= e!4314130 (isEmptyExpr!2093 lt!2570831))))

(assert (= (and d!2237591 res!2925637) b!7183728))

(assert (= (and d!2237591 c!1337487) b!7183731))

(assert (= (and d!2237591 (not c!1337487)) b!7183733))

(assert (= (and b!7183733 c!1337485) b!7183729))

(assert (= (and b!7183733 (not c!1337485)) b!7183727))

(assert (= (and d!2237591 res!2925638) b!7183730))

(assert (= (and b!7183730 c!1337484) b!7183734))

(assert (= (and b!7183730 (not c!1337484)) b!7183732))

(assert (= (and b!7183732 c!1337486) b!7183726))

(assert (= (and b!7183732 (not c!1337486)) b!7183725))

(declare-fun m!7880938 () Bool)

(assert (=> b!7183729 m!7880938))

(declare-fun m!7880940 () Bool)

(assert (=> b!7183725 m!7880940))

(declare-fun m!7880942 () Bool)

(assert (=> b!7183734 m!7880942))

(declare-fun m!7880944 () Bool)

(assert (=> b!7183726 m!7880944))

(declare-fun m!7880946 () Bool)

(assert (=> b!7183728 m!7880946))

(declare-fun m!7880948 () Bool)

(assert (=> d!2237591 m!7880948))

(declare-fun m!7880950 () Bool)

(assert (=> d!2237591 m!7880950))

(declare-fun m!7880952 () Bool)

(assert (=> b!7183730 m!7880952))

(declare-fun m!7880954 () Bool)

(assert (=> b!7183732 m!7880954))

(assert (=> b!7183732 m!7880954))

(declare-fun m!7880956 () Bool)

(assert (=> b!7183732 m!7880956))

(assert (=> b!7183583 d!2237591))

(declare-fun bs!1897048 () Bool)

(declare-fun d!2237593 () Bool)

(assert (= bs!1897048 (and d!2237593 d!2237569)))

(declare-fun lambda!437575 () Int)

(assert (=> bs!1897048 (= lambda!437575 lambda!437569)))

(declare-fun bs!1897049 () Bool)

(assert (= bs!1897049 (and d!2237593 d!2237379)))

(assert (=> bs!1897049 (= lambda!437575 lambda!437531)))

(declare-fun bs!1897050 () Bool)

(assert (= bs!1897050 (and d!2237593 d!2237493)))

(assert (=> bs!1897050 (= lambda!437575 lambda!437561)))

(declare-fun bs!1897051 () Bool)

(assert (= bs!1897051 (and d!2237593 d!2237533)))

(assert (=> bs!1897051 (= lambda!437575 lambda!437566)))

(declare-fun bs!1897052 () Bool)

(assert (= bs!1897052 (and d!2237593 d!2237591)))

(assert (=> bs!1897052 (= lambda!437575 lambda!437574)))

(declare-fun bs!1897053 () Bool)

(assert (= bs!1897053 (and d!2237593 d!2237403)))

(assert (=> bs!1897053 (not (= lambda!437575 lambda!437536))))

(declare-fun bs!1897054 () Bool)

(assert (= bs!1897054 (and d!2237593 d!2237509)))

(assert (=> bs!1897054 (= lambda!437575 lambda!437565)))

(declare-fun bs!1897055 () Bool)

(assert (= bs!1897055 (and d!2237593 d!2237555)))

(assert (=> bs!1897055 (= lambda!437575 lambda!437568)))

(declare-fun bs!1897056 () Bool)

(assert (= bs!1897056 (and d!2237593 d!2237477)))

(assert (=> bs!1897056 (= lambda!437575 lambda!437546)))

(declare-fun bs!1897057 () Bool)

(assert (= bs!1897057 (and d!2237593 d!2237577)))

(assert (=> bs!1897057 (= lambda!437575 lambda!437570)))

(declare-fun bs!1897058 () Bool)

(assert (= bs!1897058 (and d!2237593 d!2237395)))

(assert (=> bs!1897058 (= lambda!437575 lambda!437532)))

(declare-fun bs!1897059 () Bool)

(assert (= bs!1897059 (and d!2237593 d!2237551)))

(assert (=> bs!1897059 (= lambda!437575 lambda!437567)))

(declare-fun lt!2570832 () List!69777)

(assert (=> d!2237593 (forall!17177 lt!2570832 lambda!437575)))

(declare-fun e!4314135 () List!69777)

(assert (=> d!2237593 (= lt!2570832 e!4314135)))

(declare-fun c!1337488 () Bool)

(assert (=> d!2237593 (= c!1337488 ((_ is Cons!69655) (t!383800 (toList!11292 z!3530))))))

(assert (=> d!2237593 (= (unfocusZipperList!2327 (t!383800 (toList!11292 z!3530))) lt!2570832)))

(declare-fun b!7183735 () Bool)

(assert (=> b!7183735 (= e!4314135 (Cons!69653 (generalisedConcat!2461 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530))))) (unfocusZipperList!2327 (t!383800 (t!383800 (toList!11292 z!3530))))))))

(declare-fun b!7183736 () Bool)

(assert (=> b!7183736 (= e!4314135 Nil!69653)))

(assert (= (and d!2237593 c!1337488) b!7183735))

(assert (= (and d!2237593 (not c!1337488)) b!7183736))

(declare-fun m!7880958 () Bool)

(assert (=> d!2237593 m!7880958))

(declare-fun m!7880960 () Bool)

(assert (=> b!7183735 m!7880960))

(declare-fun m!7880962 () Bool)

(assert (=> b!7183735 m!7880962))

(assert (=> b!7183583 d!2237593))

(declare-fun b!7183737 () Bool)

(declare-fun res!2925642 () Bool)

(declare-fun e!4314141 () Bool)

(assert (=> b!7183737 (=> (not res!2925642) (not e!4314141))))

(declare-fun call!654801 () Bool)

(assert (=> b!7183737 (= res!2925642 call!654801)))

(declare-fun e!4314139 () Bool)

(assert (=> b!7183737 (= e!4314139 e!4314141)))

(declare-fun b!7183738 () Bool)

(declare-fun e!4314138 () Bool)

(declare-fun call!654802 () Bool)

(assert (=> b!7183738 (= e!4314138 call!654802)))

(declare-fun bm!654796 () Bool)

(declare-fun call!654803 () Bool)

(assert (=> bm!654796 (= call!654802 call!654803)))

(declare-fun b!7183739 () Bool)

(declare-fun e!4314137 () Bool)

(assert (=> b!7183739 (= e!4314137 e!4314138)))

(declare-fun res!2925639 () Bool)

(assert (=> b!7183739 (=> (not res!2925639) (not e!4314138))))

(assert (=> b!7183739 (= res!2925639 call!654801)))

(declare-fun bm!654797 () Bool)

(declare-fun c!1337490 () Bool)

(assert (=> bm!654797 (= call!654801 (validRegex!9468 (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))))))

(declare-fun b!7183740 () Bool)

(declare-fun e!4314140 () Bool)

(declare-fun e!4314142 () Bool)

(assert (=> b!7183740 (= e!4314140 e!4314142)))

(declare-fun c!1337489 () Bool)

(assert (=> b!7183740 (= c!1337489 ((_ is Star!18349) lt!2570813))))

(declare-fun d!2237595 () Bool)

(declare-fun res!2925640 () Bool)

(assert (=> d!2237595 (=> res!2925640 e!4314140)))

(assert (=> d!2237595 (= res!2925640 ((_ is ElementMatch!18349) lt!2570813))))

(assert (=> d!2237595 (= (validRegex!9468 lt!2570813) e!4314140)))

(declare-fun b!7183741 () Bool)

(declare-fun e!4314136 () Bool)

(assert (=> b!7183741 (= e!4314136 call!654803)))

(declare-fun b!7183742 () Bool)

(assert (=> b!7183742 (= e!4314142 e!4314139)))

(assert (=> b!7183742 (= c!1337490 ((_ is Union!18349) lt!2570813))))

(declare-fun bm!654798 () Bool)

(assert (=> bm!654798 (= call!654803 (validRegex!9468 (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))))))

(declare-fun b!7183743 () Bool)

(assert (=> b!7183743 (= e!4314141 call!654802)))

(declare-fun b!7183744 () Bool)

(declare-fun res!2925641 () Bool)

(assert (=> b!7183744 (=> res!2925641 e!4314137)))

(assert (=> b!7183744 (= res!2925641 (not ((_ is Concat!27194) lt!2570813)))))

(assert (=> b!7183744 (= e!4314139 e!4314137)))

(declare-fun b!7183745 () Bool)

(assert (=> b!7183745 (= e!4314142 e!4314136)))

(declare-fun res!2925643 () Bool)

(assert (=> b!7183745 (= res!2925643 (not (nullable!7776 (reg!18678 lt!2570813))))))

(assert (=> b!7183745 (=> (not res!2925643) (not e!4314136))))

(assert (= (and d!2237595 (not res!2925640)) b!7183740))

(assert (= (and b!7183740 c!1337489) b!7183745))

(assert (= (and b!7183740 (not c!1337489)) b!7183742))

(assert (= (and b!7183745 res!2925643) b!7183741))

(assert (= (and b!7183742 c!1337490) b!7183737))

(assert (= (and b!7183742 (not c!1337490)) b!7183744))

(assert (= (and b!7183737 res!2925642) b!7183743))

(assert (= (and b!7183744 (not res!2925641)) b!7183739))

(assert (= (and b!7183739 res!2925639) b!7183738))

(assert (= (or b!7183737 b!7183739) bm!654797))

(assert (= (or b!7183743 b!7183738) bm!654796))

(assert (= (or b!7183741 bm!654796) bm!654798))

(declare-fun m!7880964 () Bool)

(assert (=> bm!654797 m!7880964))

(declare-fun m!7880966 () Bool)

(assert (=> bm!654798 m!7880966))

(declare-fun m!7880968 () Bool)

(assert (=> b!7183745 m!7880968))

(assert (=> d!2237467 d!2237595))

(declare-fun bs!1897060 () Bool)

(declare-fun d!2237597 () Bool)

(assert (= bs!1897060 (and d!2237597 d!2237569)))

(declare-fun lambda!437576 () Int)

(assert (=> bs!1897060 (= lambda!437576 lambda!437569)))

(declare-fun bs!1897061 () Bool)

(assert (= bs!1897061 (and d!2237597 d!2237379)))

(assert (=> bs!1897061 (= lambda!437576 lambda!437531)))

(declare-fun bs!1897062 () Bool)

(assert (= bs!1897062 (and d!2237597 d!2237593)))

(assert (=> bs!1897062 (= lambda!437576 lambda!437575)))

(declare-fun bs!1897063 () Bool)

(assert (= bs!1897063 (and d!2237597 d!2237493)))

(assert (=> bs!1897063 (= lambda!437576 lambda!437561)))

(declare-fun bs!1897064 () Bool)

(assert (= bs!1897064 (and d!2237597 d!2237533)))

(assert (=> bs!1897064 (= lambda!437576 lambda!437566)))

(declare-fun bs!1897065 () Bool)

(assert (= bs!1897065 (and d!2237597 d!2237591)))

(assert (=> bs!1897065 (= lambda!437576 lambda!437574)))

(declare-fun bs!1897066 () Bool)

(assert (= bs!1897066 (and d!2237597 d!2237403)))

(assert (=> bs!1897066 (not (= lambda!437576 lambda!437536))))

(declare-fun bs!1897067 () Bool)

(assert (= bs!1897067 (and d!2237597 d!2237509)))

(assert (=> bs!1897067 (= lambda!437576 lambda!437565)))

(declare-fun bs!1897068 () Bool)

(assert (= bs!1897068 (and d!2237597 d!2237555)))

(assert (=> bs!1897068 (= lambda!437576 lambda!437568)))

(declare-fun bs!1897069 () Bool)

(assert (= bs!1897069 (and d!2237597 d!2237477)))

(assert (=> bs!1897069 (= lambda!437576 lambda!437546)))

(declare-fun bs!1897070 () Bool)

(assert (= bs!1897070 (and d!2237597 d!2237577)))

(assert (=> bs!1897070 (= lambda!437576 lambda!437570)))

(declare-fun bs!1897071 () Bool)

(assert (= bs!1897071 (and d!2237597 d!2237395)))

(assert (=> bs!1897071 (= lambda!437576 lambda!437532)))

(declare-fun bs!1897072 () Bool)

(assert (= bs!1897072 (and d!2237597 d!2237551)))

(assert (=> bs!1897072 (= lambda!437576 lambda!437567)))

(declare-fun b!7183746 () Bool)

(declare-fun e!4314145 () Regex!18349)

(assert (=> b!7183746 (= e!4314145 (Union!18349 (h!76101 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) (generalisedUnion!2771 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))))

(declare-fun b!7183747 () Bool)

(declare-fun e!4314143 () Regex!18349)

(assert (=> b!7183747 (= e!4314143 (h!76101 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(declare-fun b!7183748 () Bool)

(declare-fun e!4314144 () Bool)

(declare-fun lt!2570833 () Regex!18349)

(assert (=> b!7183748 (= e!4314144 (isUnion!1579 lt!2570833))))

(declare-fun b!7183750 () Bool)

(assert (=> b!7183750 (= e!4314145 EmptyLang!18349)))

(declare-fun b!7183751 () Bool)

(declare-fun e!4314147 () Bool)

(declare-fun e!4314146 () Bool)

(assert (=> b!7183751 (= e!4314147 e!4314146)))

(declare-fun c!1337492 () Bool)

(assert (=> b!7183751 (= c!1337492 (isEmpty!40211 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(declare-fun b!7183752 () Bool)

(declare-fun e!4314148 () Bool)

(assert (=> b!7183752 (= e!4314148 (isEmpty!40211 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7183753 () Bool)

(assert (=> b!7183753 (= e!4314144 (= lt!2570833 (head!14664 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7183754 () Bool)

(assert (=> b!7183754 (= e!4314143 e!4314145)))

(declare-fun c!1337494 () Bool)

(assert (=> b!7183754 (= c!1337494 ((_ is Cons!69653) (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(declare-fun b!7183755 () Bool)

(assert (=> b!7183755 (= e!4314146 e!4314144)))

(declare-fun c!1337493 () Bool)

(assert (=> b!7183755 (= c!1337493 (isEmpty!40211 (tail!14069 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(assert (=> d!2237597 e!4314147))

(declare-fun res!2925644 () Bool)

(assert (=> d!2237597 (=> (not res!2925644) (not e!4314147))))

(assert (=> d!2237597 (= res!2925644 (validRegex!9468 lt!2570833))))

(assert (=> d!2237597 (= lt!2570833 e!4314143)))

(declare-fun c!1337491 () Bool)

(assert (=> d!2237597 (= c!1337491 e!4314148)))

(declare-fun res!2925645 () Bool)

(assert (=> d!2237597 (=> (not res!2925645) (not e!4314148))))

(assert (=> d!2237597 (= res!2925645 ((_ is Cons!69653) (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(assert (=> d!2237597 (forall!17177 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))) lambda!437576)))

(assert (=> d!2237597 (= (generalisedUnion!2771 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) lt!2570833)))

(declare-fun b!7183749 () Bool)

(assert (=> b!7183749 (= e!4314146 (isEmptyLang!2151 lt!2570833))))

(assert (= (and d!2237597 res!2925645) b!7183752))

(assert (= (and d!2237597 c!1337491) b!7183747))

(assert (= (and d!2237597 (not c!1337491)) b!7183754))

(assert (= (and b!7183754 c!1337494) b!7183746))

(assert (= (and b!7183754 (not c!1337494)) b!7183750))

(assert (= (and d!2237597 res!2925644) b!7183751))

(assert (= (and b!7183751 c!1337492) b!7183749))

(assert (= (and b!7183751 (not c!1337492)) b!7183755))

(assert (= (and b!7183755 c!1337493) b!7183753))

(assert (= (and b!7183755 (not c!1337493)) b!7183748))

(declare-fun m!7880970 () Bool)

(assert (=> b!7183748 m!7880970))

(assert (=> b!7183751 m!7880690))

(declare-fun m!7880974 () Bool)

(assert (=> b!7183751 m!7880974))

(declare-fun m!7880976 () Bool)

(assert (=> b!7183749 m!7880976))

(declare-fun m!7880978 () Bool)

(assert (=> d!2237597 m!7880978))

(assert (=> d!2237597 m!7880690))

(declare-fun m!7880980 () Bool)

(assert (=> d!2237597 m!7880980))

(declare-fun m!7880982 () Bool)

(assert (=> b!7183752 m!7880982))

(assert (=> b!7183755 m!7880690))

(declare-fun m!7880984 () Bool)

(assert (=> b!7183755 m!7880984))

(assert (=> b!7183755 m!7880984))

(declare-fun m!7880986 () Bool)

(assert (=> b!7183755 m!7880986))

(declare-fun m!7880988 () Bool)

(assert (=> b!7183746 m!7880988))

(assert (=> b!7183753 m!7880690))

(declare-fun m!7880990 () Bool)

(assert (=> b!7183753 m!7880990))

(assert (=> d!2237467 d!2237597))

(declare-fun bs!1897080 () Bool)

(declare-fun d!2237605 () Bool)

(assert (= bs!1897080 (and d!2237605 d!2237597)))

(declare-fun lambda!437578 () Int)

(assert (=> bs!1897080 (= lambda!437578 lambda!437576)))

(declare-fun bs!1897081 () Bool)

(assert (= bs!1897081 (and d!2237605 d!2237569)))

(assert (=> bs!1897081 (= lambda!437578 lambda!437569)))

(declare-fun bs!1897082 () Bool)

(assert (= bs!1897082 (and d!2237605 d!2237379)))

(assert (=> bs!1897082 (= lambda!437578 lambda!437531)))

(declare-fun bs!1897083 () Bool)

(assert (= bs!1897083 (and d!2237605 d!2237593)))

(assert (=> bs!1897083 (= lambda!437578 lambda!437575)))

(declare-fun bs!1897084 () Bool)

(assert (= bs!1897084 (and d!2237605 d!2237493)))

(assert (=> bs!1897084 (= lambda!437578 lambda!437561)))

(declare-fun bs!1897085 () Bool)

(assert (= bs!1897085 (and d!2237605 d!2237533)))

(assert (=> bs!1897085 (= lambda!437578 lambda!437566)))

(declare-fun bs!1897086 () Bool)

(assert (= bs!1897086 (and d!2237605 d!2237591)))

(assert (=> bs!1897086 (= lambda!437578 lambda!437574)))

(declare-fun bs!1897087 () Bool)

(assert (= bs!1897087 (and d!2237605 d!2237403)))

(assert (=> bs!1897087 (not (= lambda!437578 lambda!437536))))

(declare-fun bs!1897088 () Bool)

(assert (= bs!1897088 (and d!2237605 d!2237509)))

(assert (=> bs!1897088 (= lambda!437578 lambda!437565)))

(declare-fun bs!1897089 () Bool)

(assert (= bs!1897089 (and d!2237605 d!2237555)))

(assert (=> bs!1897089 (= lambda!437578 lambda!437568)))

(declare-fun bs!1897090 () Bool)

(assert (= bs!1897090 (and d!2237605 d!2237477)))

(assert (=> bs!1897090 (= lambda!437578 lambda!437546)))

(declare-fun bs!1897091 () Bool)

(assert (= bs!1897091 (and d!2237605 d!2237577)))

(assert (=> bs!1897091 (= lambda!437578 lambda!437570)))

(declare-fun bs!1897092 () Bool)

(assert (= bs!1897092 (and d!2237605 d!2237395)))

(assert (=> bs!1897092 (= lambda!437578 lambda!437532)))

(declare-fun bs!1897093 () Bool)

(assert (= bs!1897093 (and d!2237605 d!2237551)))

(assert (=> bs!1897093 (= lambda!437578 lambda!437567)))

(declare-fun lt!2570834 () List!69777)

(assert (=> d!2237605 (forall!17177 lt!2570834 lambda!437578)))

(declare-fun e!4314155 () List!69777)

(assert (=> d!2237605 (= lt!2570834 e!4314155)))

(declare-fun c!1337500 () Bool)

(assert (=> d!2237605 (= c!1337500 ((_ is Cons!69655) (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))

(assert (=> d!2237605 (= (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))) lt!2570834)))

(declare-fun b!7183767 () Bool)

(assert (=> b!7183767 (= e!4314155 (Cons!69653 (generalisedConcat!2461 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))) (unfocusZipperList!2327 (t!383800 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7183768 () Bool)

(assert (=> b!7183768 (= e!4314155 Nil!69653)))

(assert (= (and d!2237605 c!1337500) b!7183767))

(assert (= (and d!2237605 (not c!1337500)) b!7183768))

(declare-fun m!7881006 () Bool)

(assert (=> d!2237605 m!7881006))

(declare-fun m!7881008 () Bool)

(assert (=> b!7183767 m!7881008))

(declare-fun m!7881010 () Bool)

(assert (=> b!7183767 m!7881010))

(assert (=> d!2237467 d!2237605))

(declare-fun b!7183780 () Bool)

(declare-fun e!4314168 () (InoxSet Context!14602))

(declare-fun e!4314167 () (InoxSet Context!14602))

(assert (=> b!7183780 (= e!4314168 e!4314167)))

(declare-fun c!1337505 () Bool)

(assert (=> b!7183780 (= c!1337505 ((_ is Concat!27194) (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))

(declare-fun call!654816 () List!69777)

(declare-fun c!1337506 () Bool)

(declare-fun bm!654808 () Bool)

(assert (=> bm!654808 (= call!654816 ($colon$colon!2843 (exprs!7801 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739))) (ite (or c!1337506 c!1337505) (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))

(declare-fun b!7183781 () Bool)

(declare-fun e!4314170 () (InoxSet Context!14602))

(assert (=> b!7183781 (= e!4314170 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183782 () Bool)

(declare-fun e!4314169 () (InoxSet Context!14602))

(declare-fun call!654813 () (InoxSet Context!14602))

(declare-fun call!654815 () (InoxSet Context!14602))

(assert (=> b!7183782 (= e!4314169 ((_ map or) call!654813 call!654815))))

(declare-fun c!1337504 () Bool)

(declare-fun bm!654809 () Bool)

(assert (=> bm!654809 (= call!654813 (derivationStepZipperDown!2512 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))) (ite c!1337504 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654816)) lt!2570781))))

(declare-fun e!4314166 () Bool)

(declare-fun b!7183783 () Bool)

(assert (=> b!7183783 (= e!4314166 (nullable!7776 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))

(declare-fun bm!654810 () Bool)

(declare-fun call!654817 () List!69777)

(assert (=> bm!654810 (= call!654817 call!654816)))

(declare-fun b!7183784 () Bool)

(declare-fun e!4314165 () (InoxSet Context!14602))

(assert (=> b!7183784 (= e!4314165 e!4314169)))

(assert (=> b!7183784 (= c!1337504 ((_ is Union!18349) (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))

(declare-fun d!2237613 () Bool)

(declare-fun c!1337503 () Bool)

(assert (=> d!2237613 (= c!1337503 (and ((_ is ElementMatch!18349) (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (= (c!1337348 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) lt!2570781)))))

(assert (=> d!2237613 (= (derivationStepZipperDown!2512 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) lt!2570781) e!4314165)))

(declare-fun b!7183785 () Bool)

(declare-fun call!654814 () (InoxSet Context!14602))

(assert (=> b!7183785 (= e!4314168 ((_ map or) call!654813 call!654814))))

(declare-fun bm!654811 () Bool)

(declare-fun call!654818 () (InoxSet Context!14602))

(assert (=> bm!654811 (= call!654818 call!654814)))

(declare-fun b!7183786 () Bool)

(assert (=> b!7183786 (= e!4314167 call!654818)))

(declare-fun bm!654812 () Bool)

(assert (=> bm!654812 (= call!654814 call!654815)))

(declare-fun b!7183787 () Bool)

(declare-fun c!1337507 () Bool)

(assert (=> b!7183787 (= c!1337507 ((_ is Star!18349) (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))

(assert (=> b!7183787 (= e!4314167 e!4314170)))

(declare-fun b!7183788 () Bool)

(assert (=> b!7183788 (= e!4314165 (store ((as const (Array Context!14602 Bool)) false) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) true))))

(declare-fun b!7183789 () Bool)

(assert (=> b!7183789 (= e!4314170 call!654818)))

(declare-fun bm!654813 () Bool)

(assert (=> bm!654813 (= call!654815 (derivationStepZipperDown!2512 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))) (ite (or c!1337504 c!1337506) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654817)) lt!2570781))))

(declare-fun b!7183790 () Bool)

(assert (=> b!7183790 (= c!1337506 e!4314166)))

(declare-fun res!2925654 () Bool)

(assert (=> b!7183790 (=> (not res!2925654) (not e!4314166))))

(assert (=> b!7183790 (= res!2925654 ((_ is Concat!27194) (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))

(assert (=> b!7183790 (= e!4314169 e!4314168)))

(assert (= (and d!2237613 c!1337503) b!7183788))

(assert (= (and d!2237613 (not c!1337503)) b!7183784))

(assert (= (and b!7183784 c!1337504) b!7183782))

(assert (= (and b!7183784 (not c!1337504)) b!7183790))

(assert (= (and b!7183790 res!2925654) b!7183783))

(assert (= (and b!7183790 c!1337506) b!7183785))

(assert (= (and b!7183790 (not c!1337506)) b!7183780))

(assert (= (and b!7183780 c!1337505) b!7183786))

(assert (= (and b!7183780 (not c!1337505)) b!7183787))

(assert (= (and b!7183787 c!1337507) b!7183789))

(assert (= (and b!7183787 (not c!1337507)) b!7183781))

(assert (= (or b!7183786 b!7183789) bm!654810))

(assert (= (or b!7183786 b!7183789) bm!654811))

(assert (= (or b!7183785 bm!654811) bm!654812))

(assert (= (or b!7183785 bm!654810) bm!654808))

(assert (= (or b!7183782 bm!654812) bm!654813))

(assert (= (or b!7183782 b!7183785) bm!654809))

(declare-fun m!7881022 () Bool)

(assert (=> bm!654809 m!7881022))

(declare-fun m!7881024 () Bool)

(assert (=> b!7183788 m!7881024))

(declare-fun m!7881026 () Bool)

(assert (=> b!7183783 m!7881026))

(declare-fun m!7881030 () Bool)

(assert (=> bm!654813 m!7881030))

(declare-fun m!7881032 () Bool)

(assert (=> bm!654808 m!7881032))

(assert (=> bm!654735 d!2237613))

(declare-fun d!2237621 () Bool)

(assert (=> d!2237621 (= (isEmpty!40211 (tail!14069 (unfocusZipperList!2327 (toList!11292 z!3530)))) ((_ is Nil!69653) (tail!14069 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> b!7183546 d!2237621))

(declare-fun d!2237623 () Bool)

(assert (=> d!2237623 (= (tail!14069 (unfocusZipperList!2327 (toList!11292 z!3530))) (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))

(assert (=> b!7183546 d!2237623))

(declare-fun b!7183802 () Bool)

(declare-fun res!2925663 () Bool)

(declare-fun e!4314184 () Bool)

(assert (=> b!7183802 (=> (not res!2925663) (not e!4314184))))

(declare-fun call!654822 () Bool)

(assert (=> b!7183802 (= res!2925663 call!654822)))

(declare-fun e!4314182 () Bool)

(assert (=> b!7183802 (= e!4314182 e!4314184)))

(declare-fun b!7183803 () Bool)

(declare-fun e!4314181 () Bool)

(declare-fun call!654823 () Bool)

(assert (=> b!7183803 (= e!4314181 call!654823)))

(declare-fun bm!654817 () Bool)

(declare-fun call!654824 () Bool)

(assert (=> bm!654817 (= call!654823 call!654824)))

(declare-fun b!7183804 () Bool)

(declare-fun e!4314180 () Bool)

(assert (=> b!7183804 (= e!4314180 e!4314181)))

(declare-fun res!2925660 () Bool)

(assert (=> b!7183804 (=> (not res!2925660) (not e!4314181))))

(assert (=> b!7183804 (= res!2925660 call!654822)))

(declare-fun bm!654818 () Bool)

(declare-fun c!1337512 () Bool)

(assert (=> bm!654818 (= call!654822 (validRegex!9468 (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))))))

(declare-fun b!7183805 () Bool)

(declare-fun e!4314183 () Bool)

(declare-fun e!4314185 () Bool)

(assert (=> b!7183805 (= e!4314183 e!4314185)))

(declare-fun c!1337511 () Bool)

(assert (=> b!7183805 (= c!1337511 ((_ is Star!18349) (h!76101 (exprs!7801 setElem!53131))))))

(declare-fun d!2237625 () Bool)

(declare-fun res!2925661 () Bool)

(assert (=> d!2237625 (=> res!2925661 e!4314183)))

(assert (=> d!2237625 (= res!2925661 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 setElem!53131))))))

(assert (=> d!2237625 (= (validRegex!9468 (h!76101 (exprs!7801 setElem!53131))) e!4314183)))

(declare-fun b!7183806 () Bool)

(declare-fun e!4314179 () Bool)

(assert (=> b!7183806 (= e!4314179 call!654824)))

(declare-fun b!7183807 () Bool)

(assert (=> b!7183807 (= e!4314185 e!4314182)))

(assert (=> b!7183807 (= c!1337512 ((_ is Union!18349) (h!76101 (exprs!7801 setElem!53131))))))

(declare-fun bm!654819 () Bool)

(assert (=> bm!654819 (= call!654824 (validRegex!9468 (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))))))

(declare-fun b!7183808 () Bool)

(assert (=> b!7183808 (= e!4314184 call!654823)))

(declare-fun b!7183809 () Bool)

(declare-fun res!2925662 () Bool)

(assert (=> b!7183809 (=> res!2925662 e!4314180)))

(assert (=> b!7183809 (= res!2925662 (not ((_ is Concat!27194) (h!76101 (exprs!7801 setElem!53131)))))))

(assert (=> b!7183809 (= e!4314182 e!4314180)))

(declare-fun b!7183810 () Bool)

(assert (=> b!7183810 (= e!4314185 e!4314179)))

(declare-fun res!2925664 () Bool)

(assert (=> b!7183810 (= res!2925664 (not (nullable!7776 (reg!18678 (h!76101 (exprs!7801 setElem!53131))))))))

(assert (=> b!7183810 (=> (not res!2925664) (not e!4314179))))

(assert (= (and d!2237625 (not res!2925661)) b!7183805))

(assert (= (and b!7183805 c!1337511) b!7183810))

(assert (= (and b!7183805 (not c!1337511)) b!7183807))

(assert (= (and b!7183810 res!2925664) b!7183806))

(assert (= (and b!7183807 c!1337512) b!7183802))

(assert (= (and b!7183807 (not c!1337512)) b!7183809))

(assert (= (and b!7183802 res!2925663) b!7183808))

(assert (= (and b!7183809 (not res!2925662)) b!7183804))

(assert (= (and b!7183804 res!2925660) b!7183803))

(assert (= (or b!7183802 b!7183804) bm!654818))

(assert (= (or b!7183808 b!7183803) bm!654817))

(assert (= (or b!7183806 bm!654817) bm!654819))

(declare-fun m!7881040 () Bool)

(assert (=> bm!654818 m!7881040))

(declare-fun m!7881042 () Bool)

(assert (=> bm!654819 m!7881042))

(declare-fun m!7881044 () Bool)

(assert (=> b!7183810 m!7881044))

(assert (=> bs!1896982 d!2237625))

(declare-fun b!7183821 () Bool)

(declare-fun res!2925670 () Bool)

(declare-fun e!4314197 () Bool)

(assert (=> b!7183821 (=> (not res!2925670) (not e!4314197))))

(declare-fun call!654825 () Bool)

(assert (=> b!7183821 (= res!2925670 call!654825)))

(declare-fun e!4314195 () Bool)

(assert (=> b!7183821 (= e!4314195 e!4314197)))

(declare-fun b!7183822 () Bool)

(declare-fun e!4314194 () Bool)

(declare-fun call!654826 () Bool)

(assert (=> b!7183822 (= e!4314194 call!654826)))

(declare-fun bm!654820 () Bool)

(declare-fun call!654827 () Bool)

(assert (=> bm!654820 (= call!654826 call!654827)))

(declare-fun b!7183823 () Bool)

(declare-fun e!4314193 () Bool)

(assert (=> b!7183823 (= e!4314193 e!4314194)))

(declare-fun res!2925667 () Bool)

(assert (=> b!7183823 (=> (not res!2925667) (not e!4314194))))

(assert (=> b!7183823 (= res!2925667 call!654825)))

(declare-fun c!1337518 () Bool)

(declare-fun bm!654821 () Bool)

(assert (=> bm!654821 (= call!654825 (validRegex!9468 (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))

(declare-fun b!7183824 () Bool)

(declare-fun e!4314196 () Bool)

(declare-fun e!4314198 () Bool)

(assert (=> b!7183824 (= e!4314196 e!4314198)))

(declare-fun c!1337517 () Bool)

(assert (=> b!7183824 (= c!1337517 ((_ is Star!18349) (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))

(declare-fun d!2237629 () Bool)

(declare-fun res!2925668 () Bool)

(assert (=> d!2237629 (=> res!2925668 e!4314196)))

(assert (=> d!2237629 (= res!2925668 ((_ is ElementMatch!18349) (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))

(assert (=> d!2237629 (= (validRegex!9468 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) e!4314196)))

(declare-fun b!7183825 () Bool)

(declare-fun e!4314192 () Bool)

(assert (=> b!7183825 (= e!4314192 call!654827)))

(declare-fun b!7183826 () Bool)

(assert (=> b!7183826 (= e!4314198 e!4314195)))

(assert (=> b!7183826 (= c!1337518 ((_ is Union!18349) (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))

(declare-fun bm!654822 () Bool)

(assert (=> bm!654822 (= call!654827 (validRegex!9468 (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))))

(declare-fun b!7183827 () Bool)

(assert (=> b!7183827 (= e!4314197 call!654826)))

(declare-fun b!7183828 () Bool)

(declare-fun res!2925669 () Bool)

(assert (=> b!7183828 (=> res!2925669 e!4314193)))

(assert (=> b!7183828 (= res!2925669 (not ((_ is Concat!27194) (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))

(assert (=> b!7183828 (= e!4314195 e!4314193)))

(declare-fun b!7183829 () Bool)

(assert (=> b!7183829 (= e!4314198 e!4314192)))

(declare-fun res!2925671 () Bool)

(assert (=> b!7183829 (= res!2925671 (not (nullable!7776 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))

(assert (=> b!7183829 (=> (not res!2925671) (not e!4314192))))

(assert (= (and d!2237629 (not res!2925668)) b!7183824))

(assert (= (and b!7183824 c!1337517) b!7183829))

(assert (= (and b!7183824 (not c!1337517)) b!7183826))

(assert (= (and b!7183829 res!2925671) b!7183825))

(assert (= (and b!7183826 c!1337518) b!7183821))

(assert (= (and b!7183826 (not c!1337518)) b!7183828))

(assert (= (and b!7183821 res!2925670) b!7183827))

(assert (= (and b!7183828 (not res!2925669)) b!7183823))

(assert (= (and b!7183823 res!2925667) b!7183822))

(assert (= (or b!7183821 b!7183823) bm!654821))

(assert (= (or b!7183827 b!7183822) bm!654820))

(assert (= (or b!7183825 bm!654820) bm!654822))

(declare-fun m!7881046 () Bool)

(assert (=> bm!654821 m!7881046))

(declare-fun m!7881048 () Bool)

(assert (=> bm!654822 m!7881048))

(declare-fun m!7881050 () Bool)

(assert (=> b!7183829 m!7881050))

(assert (=> bm!654772 d!2237629))

(declare-fun d!2237631 () Bool)

(declare-fun res!2925672 () Bool)

(declare-fun e!4314199 () Bool)

(assert (=> d!2237631 (=> res!2925672 e!4314199)))

(assert (=> d!2237631 (= res!2925672 ((_ is Nil!69653) lt!2570826))))

(assert (=> d!2237631 (= (forall!17177 lt!2570826 lambda!437565) e!4314199)))

(declare-fun b!7183830 () Bool)

(declare-fun e!4314200 () Bool)

(assert (=> b!7183830 (= e!4314199 e!4314200)))

(declare-fun res!2925673 () Bool)

(assert (=> b!7183830 (=> (not res!2925673) (not e!4314200))))

(assert (=> b!7183830 (= res!2925673 (dynLambda!28369 lambda!437565 (h!76101 lt!2570826)))))

(declare-fun b!7183831 () Bool)

(assert (=> b!7183831 (= e!4314200 (forall!17177 (t!383798 lt!2570826) lambda!437565))))

(assert (= (and d!2237631 (not res!2925672)) b!7183830))

(assert (= (and b!7183830 res!2925673) b!7183831))

(declare-fun b_lambda!274989 () Bool)

(assert (=> (not b_lambda!274989) (not b!7183830)))

(declare-fun m!7881052 () Bool)

(assert (=> b!7183830 m!7881052))

(declare-fun m!7881054 () Bool)

(assert (=> b!7183831 m!7881054))

(assert (=> d!2237509 d!2237631))

(declare-fun d!2237633 () Bool)

(assert (=> d!2237633 (= (nullable!7776 (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))) (nullableFct!3042 (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))

(declare-fun bs!1897108 () Bool)

(assert (= bs!1897108 d!2237633))

(declare-fun m!7881056 () Bool)

(assert (=> bs!1897108 m!7881056))

(assert (=> b!7183315 d!2237633))

(declare-fun d!2237635 () Bool)

(declare-fun res!2925674 () Bool)

(declare-fun e!4314201 () Bool)

(assert (=> d!2237635 (=> res!2925674 e!4314201)))

(assert (=> d!2237635 (= res!2925674 ((_ is Nil!69653) (exprs!7801 setElem!53137)))))

(assert (=> d!2237635 (= (forall!17177 (exprs!7801 setElem!53137) lambda!437546) e!4314201)))

(declare-fun b!7183832 () Bool)

(declare-fun e!4314202 () Bool)

(assert (=> b!7183832 (= e!4314201 e!4314202)))

(declare-fun res!2925675 () Bool)

(assert (=> b!7183832 (=> (not res!2925675) (not e!4314202))))

(assert (=> b!7183832 (= res!2925675 (dynLambda!28369 lambda!437546 (h!76101 (exprs!7801 setElem!53137))))))

(declare-fun b!7183833 () Bool)

(assert (=> b!7183833 (= e!4314202 (forall!17177 (t!383798 (exprs!7801 setElem!53137)) lambda!437546))))

(assert (= (and d!2237635 (not res!2925674)) b!7183832))

(assert (= (and b!7183832 res!2925675) b!7183833))

(declare-fun b_lambda!274991 () Bool)

(assert (=> (not b_lambda!274991) (not b!7183832)))

(declare-fun m!7881058 () Bool)

(assert (=> b!7183832 m!7881058))

(declare-fun m!7881060 () Bool)

(assert (=> b!7183833 m!7881060))

(assert (=> d!2237477 d!2237635))

(declare-fun bs!1897111 () Bool)

(declare-fun d!2237637 () Bool)

(assert (= bs!1897111 (and d!2237637 d!2237597)))

(declare-fun lambda!437581 () Int)

(assert (=> bs!1897111 (= lambda!437581 lambda!437576)))

(declare-fun bs!1897112 () Bool)

(assert (= bs!1897112 (and d!2237637 d!2237569)))

(assert (=> bs!1897112 (= lambda!437581 lambda!437569)))

(declare-fun bs!1897113 () Bool)

(assert (= bs!1897113 (and d!2237637 d!2237379)))

(assert (=> bs!1897113 (= lambda!437581 lambda!437531)))

(declare-fun bs!1897114 () Bool)

(assert (= bs!1897114 (and d!2237637 d!2237593)))

(assert (=> bs!1897114 (= lambda!437581 lambda!437575)))

(declare-fun bs!1897115 () Bool)

(assert (= bs!1897115 (and d!2237637 d!2237493)))

(assert (=> bs!1897115 (= lambda!437581 lambda!437561)))

(declare-fun bs!1897116 () Bool)

(assert (= bs!1897116 (and d!2237637 d!2237605)))

(assert (=> bs!1897116 (= lambda!437581 lambda!437578)))

(declare-fun bs!1897117 () Bool)

(assert (= bs!1897117 (and d!2237637 d!2237533)))

(assert (=> bs!1897117 (= lambda!437581 lambda!437566)))

(declare-fun bs!1897118 () Bool)

(assert (= bs!1897118 (and d!2237637 d!2237591)))

(assert (=> bs!1897118 (= lambda!437581 lambda!437574)))

(declare-fun bs!1897119 () Bool)

(assert (= bs!1897119 (and d!2237637 d!2237403)))

(assert (=> bs!1897119 (not (= lambda!437581 lambda!437536))))

(declare-fun bs!1897120 () Bool)

(assert (= bs!1897120 (and d!2237637 d!2237509)))

(assert (=> bs!1897120 (= lambda!437581 lambda!437565)))

(declare-fun bs!1897121 () Bool)

(assert (= bs!1897121 (and d!2237637 d!2237555)))

(assert (=> bs!1897121 (= lambda!437581 lambda!437568)))

(declare-fun bs!1897122 () Bool)

(assert (= bs!1897122 (and d!2237637 d!2237477)))

(assert (=> bs!1897122 (= lambda!437581 lambda!437546)))

(declare-fun bs!1897123 () Bool)

(assert (= bs!1897123 (and d!2237637 d!2237577)))

(assert (=> bs!1897123 (= lambda!437581 lambda!437570)))

(declare-fun bs!1897124 () Bool)

(assert (= bs!1897124 (and d!2237637 d!2237395)))

(assert (=> bs!1897124 (= lambda!437581 lambda!437532)))

(declare-fun bs!1897125 () Bool)

(assert (= bs!1897125 (and d!2237637 d!2237551)))

(assert (=> bs!1897125 (= lambda!437581 lambda!437567)))

(assert (=> d!2237637 (= (inv!88894 setElem!53145) (forall!17177 (exprs!7801 setElem!53145) lambda!437581))))

(declare-fun bs!1897126 () Bool)

(assert (= bs!1897126 d!2237637))

(declare-fun m!7881072 () Bool)

(assert (=> bs!1897126 m!7881072))

(assert (=> setNonEmpty!53145 d!2237637))

(declare-fun d!2237639 () Bool)

(declare-fun res!2925676 () Bool)

(declare-fun e!4314203 () Bool)

(assert (=> d!2237639 (=> res!2925676 e!4314203)))

(assert (=> d!2237639 (= res!2925676 ((_ is Nil!69653) (t!383798 (exprs!7801 lt!2570780))))))

(assert (=> d!2237639 (= (forall!17177 (t!383798 (exprs!7801 lt!2570780)) lambda!437536) e!4314203)))

(declare-fun b!7183834 () Bool)

(declare-fun e!4314204 () Bool)

(assert (=> b!7183834 (= e!4314203 e!4314204)))

(declare-fun res!2925677 () Bool)

(assert (=> b!7183834 (=> (not res!2925677) (not e!4314204))))

(assert (=> b!7183834 (= res!2925677 (dynLambda!28369 lambda!437536 (h!76101 (t!383798 (exprs!7801 lt!2570780)))))))

(declare-fun b!7183835 () Bool)

(assert (=> b!7183835 (= e!4314204 (forall!17177 (t!383798 (t!383798 (exprs!7801 lt!2570780))) lambda!437536))))

(assert (= (and d!2237639 (not res!2925676)) b!7183834))

(assert (= (and b!7183834 res!2925677) b!7183835))

(declare-fun b_lambda!274993 () Bool)

(assert (=> (not b_lambda!274993) (not b!7183834)))

(declare-fun m!7881082 () Bool)

(assert (=> b!7183834 m!7881082))

(declare-fun m!7881084 () Bool)

(assert (=> b!7183835 m!7881084))

(assert (=> b!7183449 d!2237639))

(declare-fun d!2237643 () Bool)

(assert (=> d!2237643 (= (isEmptyLang!2151 lt!2570823) ((_ is EmptyLang!18349) lt!2570823))))

(assert (=> b!7183540 d!2237643))

(declare-fun d!2237647 () Bool)

(declare-fun lt!2570838 () Bool)

(assert (=> d!2237647 (= lt!2570838 (select (content!14316 (t!383800 lt!2570808)) (h!76103 lt!2570808)))))

(declare-fun e!4314212 () Bool)

(assert (=> d!2237647 (= lt!2570838 e!4314212)))

(declare-fun res!2925685 () Bool)

(assert (=> d!2237647 (=> (not res!2925685) (not e!4314212))))

(assert (=> d!2237647 (= res!2925685 ((_ is Cons!69655) (t!383800 lt!2570808)))))

(assert (=> d!2237647 (= (contains!20718 (t!383800 lt!2570808) (h!76103 lt!2570808)) lt!2570838)))

(declare-fun b!7183844 () Bool)

(declare-fun e!4314213 () Bool)

(assert (=> b!7183844 (= e!4314212 e!4314213)))

(declare-fun res!2925686 () Bool)

(assert (=> b!7183844 (=> res!2925686 e!4314213)))

(assert (=> b!7183844 (= res!2925686 (= (h!76103 (t!383800 lt!2570808)) (h!76103 lt!2570808)))))

(declare-fun b!7183845 () Bool)

(assert (=> b!7183845 (= e!4314213 (contains!20718 (t!383800 (t!383800 lt!2570808)) (h!76103 lt!2570808)))))

(assert (= (and d!2237647 res!2925685) b!7183844))

(assert (= (and b!7183844 (not res!2925686)) b!7183845))

(assert (=> d!2237647 m!7880718))

(declare-fun m!7881096 () Bool)

(assert (=> d!2237647 m!7881096))

(declare-fun m!7881098 () Bool)

(assert (=> b!7183845 m!7881098))

(assert (=> b!7183389 d!2237647))

(declare-fun d!2237655 () Bool)

(declare-fun lt!2570839 () Bool)

(assert (=> d!2237655 (= lt!2570839 (select (content!14316 (t!383800 lt!2570804)) (h!76103 lt!2570804)))))

(declare-fun e!4314214 () Bool)

(assert (=> d!2237655 (= lt!2570839 e!4314214)))

(declare-fun res!2925687 () Bool)

(assert (=> d!2237655 (=> (not res!2925687) (not e!4314214))))

(assert (=> d!2237655 (= res!2925687 ((_ is Cons!69655) (t!383800 lt!2570804)))))

(assert (=> d!2237655 (= (contains!20718 (t!383800 lt!2570804) (h!76103 lt!2570804)) lt!2570839)))

(declare-fun b!7183846 () Bool)

(declare-fun e!4314215 () Bool)

(assert (=> b!7183846 (= e!4314214 e!4314215)))

(declare-fun res!2925688 () Bool)

(assert (=> b!7183846 (=> res!2925688 e!4314215)))

(assert (=> b!7183846 (= res!2925688 (= (h!76103 (t!383800 lt!2570804)) (h!76103 lt!2570804)))))

(declare-fun b!7183847 () Bool)

(assert (=> b!7183847 (= e!4314215 (contains!20718 (t!383800 (t!383800 lt!2570804)) (h!76103 lt!2570804)))))

(assert (= (and d!2237655 res!2925687) b!7183846))

(assert (= (and b!7183846 (not res!2925688)) b!7183847))

(assert (=> d!2237655 m!7880640))

(declare-fun m!7881100 () Bool)

(assert (=> d!2237655 m!7881100))

(declare-fun m!7881102 () Bool)

(assert (=> b!7183847 m!7881102))

(assert (=> b!7183408 d!2237655))

(declare-fun b!7183850 () Bool)

(declare-fun res!2925692 () Bool)

(declare-fun e!4314222 () Bool)

(assert (=> b!7183850 (=> (not res!2925692) (not e!4314222))))

(declare-fun call!654828 () Bool)

(assert (=> b!7183850 (= res!2925692 call!654828)))

(declare-fun e!4314220 () Bool)

(assert (=> b!7183850 (= e!4314220 e!4314222)))

(declare-fun b!7183851 () Bool)

(declare-fun e!4314219 () Bool)

(declare-fun call!654829 () Bool)

(assert (=> b!7183851 (= e!4314219 call!654829)))

(declare-fun bm!654823 () Bool)

(declare-fun call!654830 () Bool)

(assert (=> bm!654823 (= call!654829 call!654830)))

(declare-fun b!7183852 () Bool)

(declare-fun e!4314218 () Bool)

(assert (=> b!7183852 (= e!4314218 e!4314219)))

(declare-fun res!2925689 () Bool)

(assert (=> b!7183852 (=> (not res!2925689) (not e!4314219))))

(assert (=> b!7183852 (= res!2925689 call!654828)))

(declare-fun c!1337522 () Bool)

(declare-fun bm!654824 () Bool)

(assert (=> bm!654824 (= call!654828 (validRegex!9468 (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))

(declare-fun b!7183853 () Bool)

(declare-fun e!4314221 () Bool)

(declare-fun e!4314223 () Bool)

(assert (=> b!7183853 (= e!4314221 e!4314223)))

(declare-fun c!1337521 () Bool)

(assert (=> b!7183853 (= c!1337521 ((_ is Star!18349) (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))

(declare-fun d!2237659 () Bool)

(declare-fun res!2925690 () Bool)

(assert (=> d!2237659 (=> res!2925690 e!4314221)))

(assert (=> d!2237659 (= res!2925690 ((_ is ElementMatch!18349) (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))

(assert (=> d!2237659 (= (validRegex!9468 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) e!4314221)))

(declare-fun b!7183854 () Bool)

(declare-fun e!4314217 () Bool)

(assert (=> b!7183854 (= e!4314217 call!654830)))

(declare-fun b!7183855 () Bool)

(assert (=> b!7183855 (= e!4314223 e!4314220)))

(assert (=> b!7183855 (= c!1337522 ((_ is Union!18349) (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))

(declare-fun bm!654825 () Bool)

(assert (=> bm!654825 (= call!654830 (validRegex!9468 (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))))

(declare-fun b!7183856 () Bool)

(assert (=> b!7183856 (= e!4314222 call!654829)))

(declare-fun b!7183857 () Bool)

(declare-fun res!2925691 () Bool)

(assert (=> b!7183857 (=> res!2925691 e!4314218)))

(assert (=> b!7183857 (= res!2925691 (not ((_ is Concat!27194) (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))

(assert (=> b!7183857 (= e!4314220 e!4314218)))

(declare-fun b!7183858 () Bool)

(assert (=> b!7183858 (= e!4314223 e!4314217)))

(declare-fun res!2925693 () Bool)

(assert (=> b!7183858 (= res!2925693 (not (nullable!7776 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))

(assert (=> b!7183858 (=> (not res!2925693) (not e!4314217))))

(assert (= (and d!2237659 (not res!2925690)) b!7183853))

(assert (= (and b!7183853 c!1337521) b!7183858))

(assert (= (and b!7183853 (not c!1337521)) b!7183855))

(assert (= (and b!7183858 res!2925693) b!7183854))

(assert (= (and b!7183855 c!1337522) b!7183850))

(assert (= (and b!7183855 (not c!1337522)) b!7183857))

(assert (= (and b!7183850 res!2925692) b!7183856))

(assert (= (and b!7183857 (not res!2925691)) b!7183852))

(assert (= (and b!7183852 res!2925689) b!7183851))

(assert (= (or b!7183850 b!7183852) bm!654824))

(assert (= (or b!7183856 b!7183851) bm!654823))

(assert (= (or b!7183854 bm!654823) bm!654825))

(declare-fun m!7881112 () Bool)

(assert (=> bm!654824 m!7881112))

(declare-fun m!7881114 () Bool)

(assert (=> bm!654825 m!7881114))

(declare-fun m!7881116 () Bool)

(assert (=> b!7183858 m!7881116))

(assert (=> bm!654773 d!2237659))

(declare-fun d!2237665 () Bool)

(declare-fun c!1337524 () Bool)

(assert (=> d!2237665 (= c!1337524 ((_ is Nil!69655) res!2925525))))

(declare-fun e!4314225 () (InoxSet Context!14602))

(assert (=> d!2237665 (= (content!14316 res!2925525) e!4314225)))

(declare-fun b!7183861 () Bool)

(assert (=> b!7183861 (= e!4314225 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7183862 () Bool)

(assert (=> b!7183862 (= e!4314225 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 res!2925525) true) (content!14316 (t!383800 res!2925525))))))

(assert (= (and d!2237665 c!1337524) b!7183861))

(assert (= (and d!2237665 (not c!1337524)) b!7183862))

(declare-fun m!7881118 () Bool)

(assert (=> b!7183862 m!7881118))

(declare-fun m!7881120 () Bool)

(assert (=> b!7183862 m!7881120))

(assert (=> b!7183417 d!2237665))

(declare-fun d!2237667 () Bool)

(assert (=> d!2237667 (= ($colon$colon!2843 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))) (ite (or c!1337380 c!1337379) (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (h!76101 (exprs!7801 lt!2570780)))) (Cons!69653 (ite (or c!1337380 c!1337379) (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (h!76101 (exprs!7801 lt!2570780))) (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))

(assert (=> bm!654730 d!2237667))

(declare-fun d!2237669 () Bool)

(declare-fun res!2925695 () Bool)

(declare-fun e!4314229 () Bool)

(assert (=> d!2237669 (=> res!2925695 e!4314229)))

(assert (=> d!2237669 (= res!2925695 ((_ is Nil!69653) (t!383798 (exprs!7801 empty!2967))))))

(assert (=> d!2237669 (= (forall!17177 (t!383798 (exprs!7801 empty!2967)) lambda!437531) e!4314229)))

(declare-fun b!7183868 () Bool)

(declare-fun e!4314230 () Bool)

(assert (=> b!7183868 (= e!4314229 e!4314230)))

(declare-fun res!2925696 () Bool)

(assert (=> b!7183868 (=> (not res!2925696) (not e!4314230))))

(assert (=> b!7183868 (= res!2925696 (dynLambda!28369 lambda!437531 (h!76101 (t!383798 (exprs!7801 empty!2967)))))))

(declare-fun b!7183869 () Bool)

(assert (=> b!7183869 (= e!4314230 (forall!17177 (t!383798 (t!383798 (exprs!7801 empty!2967))) lambda!437531))))

(assert (= (and d!2237669 (not res!2925695)) b!7183868))

(assert (= (and b!7183868 res!2925696) b!7183869))

(declare-fun b_lambda!274995 () Bool)

(assert (=> (not b_lambda!274995) (not b!7183868)))

(declare-fun m!7881128 () Bool)

(assert (=> b!7183868 m!7881128))

(declare-fun m!7881130 () Bool)

(assert (=> b!7183869 m!7881130))

(assert (=> b!7183341 d!2237669))

(declare-fun b!7183870 () Bool)

(declare-fun res!2925700 () Bool)

(declare-fun e!4314236 () Bool)

(assert (=> b!7183870 (=> (not res!2925700) (not e!4314236))))

(declare-fun call!654832 () Bool)

(assert (=> b!7183870 (= res!2925700 call!654832)))

(declare-fun e!4314234 () Bool)

(assert (=> b!7183870 (= e!4314234 e!4314236)))

(declare-fun b!7183871 () Bool)

(declare-fun e!4314233 () Bool)

(declare-fun call!654833 () Bool)

(assert (=> b!7183871 (= e!4314233 call!654833)))

(declare-fun bm!654827 () Bool)

(declare-fun call!654834 () Bool)

(assert (=> bm!654827 (= call!654833 call!654834)))

(declare-fun b!7183872 () Bool)

(declare-fun e!4314232 () Bool)

(assert (=> b!7183872 (= e!4314232 e!4314233)))

(declare-fun res!2925697 () Bool)

(assert (=> b!7183872 (=> (not res!2925697) (not e!4314233))))

(assert (=> b!7183872 (= res!2925697 call!654832)))

(declare-fun bm!654828 () Bool)

(declare-fun c!1337528 () Bool)

(assert (=> bm!654828 (= call!654832 (validRegex!9468 (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))))))

(declare-fun b!7183873 () Bool)

(declare-fun e!4314235 () Bool)

(declare-fun e!4314237 () Bool)

(assert (=> b!7183873 (= e!4314235 e!4314237)))

(declare-fun c!1337527 () Bool)

(assert (=> b!7183873 (= c!1337527 ((_ is Star!18349) lt!2570823))))

(declare-fun d!2237673 () Bool)

(declare-fun res!2925698 () Bool)

(assert (=> d!2237673 (=> res!2925698 e!4314235)))

(assert (=> d!2237673 (= res!2925698 ((_ is ElementMatch!18349) lt!2570823))))

(assert (=> d!2237673 (= (validRegex!9468 lt!2570823) e!4314235)))

(declare-fun b!7183874 () Bool)

(declare-fun e!4314231 () Bool)

(assert (=> b!7183874 (= e!4314231 call!654834)))

(declare-fun b!7183875 () Bool)

(assert (=> b!7183875 (= e!4314237 e!4314234)))

(assert (=> b!7183875 (= c!1337528 ((_ is Union!18349) lt!2570823))))

(declare-fun bm!654829 () Bool)

(assert (=> bm!654829 (= call!654834 (validRegex!9468 (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))))))

(declare-fun b!7183876 () Bool)

(assert (=> b!7183876 (= e!4314236 call!654833)))

(declare-fun b!7183877 () Bool)

(declare-fun res!2925699 () Bool)

(assert (=> b!7183877 (=> res!2925699 e!4314232)))

(assert (=> b!7183877 (= res!2925699 (not ((_ is Concat!27194) lt!2570823)))))

(assert (=> b!7183877 (= e!4314234 e!4314232)))

(declare-fun b!7183878 () Bool)

(assert (=> b!7183878 (= e!4314237 e!4314231)))

(declare-fun res!2925701 () Bool)

(assert (=> b!7183878 (= res!2925701 (not (nullable!7776 (reg!18678 lt!2570823))))))

(assert (=> b!7183878 (=> (not res!2925701) (not e!4314231))))

(assert (= (and d!2237673 (not res!2925698)) b!7183873))

(assert (= (and b!7183873 c!1337527) b!7183878))

(assert (= (and b!7183873 (not c!1337527)) b!7183875))

(assert (= (and b!7183878 res!2925701) b!7183874))

(assert (= (and b!7183875 c!1337528) b!7183870))

(assert (= (and b!7183875 (not c!1337528)) b!7183877))

(assert (= (and b!7183870 res!2925700) b!7183876))

(assert (= (and b!7183877 (not res!2925699)) b!7183872))

(assert (= (and b!7183872 res!2925697) b!7183871))

(assert (= (or b!7183870 b!7183872) bm!654828))

(assert (= (or b!7183876 b!7183871) bm!654827))

(assert (= (or b!7183874 bm!654827) bm!654829))

(declare-fun m!7881132 () Bool)

(assert (=> bm!654828 m!7881132))

(declare-fun m!7881134 () Bool)

(assert (=> bm!654829 m!7881134))

(declare-fun m!7881136 () Bool)

(assert (=> b!7183878 m!7881136))

(assert (=> d!2237493 d!2237673))

(declare-fun d!2237675 () Bool)

(declare-fun res!2925702 () Bool)

(declare-fun e!4314238 () Bool)

(assert (=> d!2237675 (=> res!2925702 e!4314238)))

(assert (=> d!2237675 (= res!2925702 ((_ is Nil!69653) (unfocusZipperList!2327 (toList!11292 z!3530))))))

(assert (=> d!2237675 (= (forall!17177 (unfocusZipperList!2327 (toList!11292 z!3530)) lambda!437561) e!4314238)))

(declare-fun b!7183879 () Bool)

(declare-fun e!4314239 () Bool)

(assert (=> b!7183879 (= e!4314238 e!4314239)))

(declare-fun res!2925703 () Bool)

(assert (=> b!7183879 (=> (not res!2925703) (not e!4314239))))

(assert (=> b!7183879 (= res!2925703 (dynLambda!28369 lambda!437561 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun b!7183880 () Bool)

(assert (=> b!7183880 (= e!4314239 (forall!17177 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))) lambda!437561))))

(assert (= (and d!2237675 (not res!2925702)) b!7183879))

(assert (= (and b!7183879 res!2925703) b!7183880))

(declare-fun b_lambda!274997 () Bool)

(assert (=> (not b_lambda!274997) (not b!7183879)))

(declare-fun m!7881138 () Bool)

(assert (=> b!7183879 m!7881138))

(declare-fun m!7881140 () Bool)

(assert (=> b!7183880 m!7881140))

(assert (=> d!2237493 d!2237675))

(declare-fun b!7183881 () Bool)

(declare-fun e!4314240 () Bool)

(assert (=> b!7183881 (= e!4314240 tp_is_empty!46259)))

(declare-fun b!7183882 () Bool)

(declare-fun tp!1994372 () Bool)

(declare-fun tp!1994369 () Bool)

(assert (=> b!7183882 (= e!4314240 (and tp!1994372 tp!1994369))))

(assert (=> b!7183604 (= tp!1994356 e!4314240)))

(declare-fun b!7183884 () Bool)

(declare-fun tp!1994371 () Bool)

(declare-fun tp!1994370 () Bool)

(assert (=> b!7183884 (= e!4314240 (and tp!1994371 tp!1994370))))

(declare-fun b!7183883 () Bool)

(declare-fun tp!1994368 () Bool)

(assert (=> b!7183883 (= e!4314240 tp!1994368)))

(assert (= (and b!7183604 ((_ is ElementMatch!18349) (regOne!37211 (h!76101 (exprs!7801 empty!2967))))) b!7183881))

(assert (= (and b!7183604 ((_ is Concat!27194) (regOne!37211 (h!76101 (exprs!7801 empty!2967))))) b!7183882))

(assert (= (and b!7183604 ((_ is Star!18349) (regOne!37211 (h!76101 (exprs!7801 empty!2967))))) b!7183883))

(assert (= (and b!7183604 ((_ is Union!18349) (regOne!37211 (h!76101 (exprs!7801 empty!2967))))) b!7183884))

(declare-fun b!7183885 () Bool)

(declare-fun e!4314241 () Bool)

(assert (=> b!7183885 (= e!4314241 tp_is_empty!46259)))

(declare-fun b!7183886 () Bool)

(declare-fun tp!1994377 () Bool)

(declare-fun tp!1994374 () Bool)

(assert (=> b!7183886 (= e!4314241 (and tp!1994377 tp!1994374))))

(assert (=> b!7183604 (= tp!1994355 e!4314241)))

(declare-fun b!7183888 () Bool)

(declare-fun tp!1994376 () Bool)

(declare-fun tp!1994375 () Bool)

(assert (=> b!7183888 (= e!4314241 (and tp!1994376 tp!1994375))))

(declare-fun b!7183887 () Bool)

(declare-fun tp!1994373 () Bool)

(assert (=> b!7183887 (= e!4314241 tp!1994373)))

(assert (= (and b!7183604 ((_ is ElementMatch!18349) (regTwo!37211 (h!76101 (exprs!7801 empty!2967))))) b!7183885))

(assert (= (and b!7183604 ((_ is Concat!27194) (regTwo!37211 (h!76101 (exprs!7801 empty!2967))))) b!7183886))

(assert (= (and b!7183604 ((_ is Star!18349) (regTwo!37211 (h!76101 (exprs!7801 empty!2967))))) b!7183887))

(assert (= (and b!7183604 ((_ is Union!18349) (regTwo!37211 (h!76101 (exprs!7801 empty!2967))))) b!7183888))

(declare-fun b!7183889 () Bool)

(declare-fun e!4314242 () Bool)

(declare-fun tp!1994378 () Bool)

(assert (=> b!7183889 (= e!4314242 (and tp_is_empty!46259 tp!1994378))))

(assert (=> b!7183600 (= tp!1994352 e!4314242)))

(assert (= (and b!7183600 ((_ is Cons!69654) (t!383799 (t!383799 (t!383799 s!7967))))) b!7183889))

(declare-fun b!7183901 () Bool)

(declare-fun e!4314252 () Bool)

(declare-fun tp!1994383 () Bool)

(assert (=> b!7183901 (= e!4314252 tp!1994383)))

(declare-fun e!4314251 () Bool)

(declare-fun b!7183900 () Bool)

(declare-fun tp!1994384 () Bool)

(assert (=> b!7183900 (= e!4314251 (and (inv!88894 (h!76103 (t!383800 res!2925518))) e!4314252 tp!1994384))))

(assert (=> b!7183399 (= tp!1994298 e!4314251)))

(assert (= b!7183900 b!7183901))

(assert (= (and b!7183399 ((_ is Cons!69655) (t!383800 res!2925518))) b!7183900))

(declare-fun m!7881142 () Bool)

(assert (=> b!7183900 m!7881142))

(declare-fun b!7183902 () Bool)

(declare-fun e!4314253 () Bool)

(declare-fun tp!1994385 () Bool)

(declare-fun tp!1994386 () Bool)

(assert (=> b!7183902 (= e!4314253 (and tp!1994385 tp!1994386))))

(assert (=> b!7183400 (= tp!1994299 e!4314253)))

(assert (= (and b!7183400 ((_ is Cons!69653) (exprs!7801 (h!76103 res!2925518)))) b!7183902))

(declare-fun condSetEmpty!53147 () Bool)

(assert (=> setNonEmpty!53145 (= condSetEmpty!53147 (= setRest!53145 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun setRes!53147 () Bool)

(assert (=> setNonEmpty!53145 (= tp!1994361 setRes!53147)))

(declare-fun setIsEmpty!53147 () Bool)

(assert (=> setIsEmpty!53147 setRes!53147))

(declare-fun setNonEmpty!53147 () Bool)

(declare-fun setElem!53147 () Context!14602)

(declare-fun e!4314254 () Bool)

(declare-fun tp!1994388 () Bool)

(assert (=> setNonEmpty!53147 (= setRes!53147 (and tp!1994388 (inv!88894 setElem!53147) e!4314254))))

(declare-fun setRest!53147 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53147 (= setRest!53145 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53147 true) setRest!53147))))

(declare-fun b!7183903 () Bool)

(declare-fun tp!1994387 () Bool)

(assert (=> b!7183903 (= e!4314254 tp!1994387)))

(assert (= (and setNonEmpty!53145 condSetEmpty!53147) setIsEmpty!53147))

(assert (= (and setNonEmpty!53145 (not condSetEmpty!53147)) setNonEmpty!53147))

(assert (= setNonEmpty!53147 b!7183903))

(declare-fun m!7881144 () Bool)

(assert (=> setNonEmpty!53147 m!7881144))

(declare-fun b!7183904 () Bool)

(declare-fun e!4314255 () Bool)

(assert (=> b!7183904 (= e!4314255 tp_is_empty!46259)))

(declare-fun b!7183905 () Bool)

(declare-fun tp!1994393 () Bool)

(declare-fun tp!1994390 () Bool)

(assert (=> b!7183905 (= e!4314255 (and tp!1994393 tp!1994390))))

(assert (=> b!7183596 (= tp!1994349 e!4314255)))

(declare-fun b!7183907 () Bool)

(declare-fun tp!1994392 () Bool)

(declare-fun tp!1994391 () Bool)

(assert (=> b!7183907 (= e!4314255 (and tp!1994392 tp!1994391))))

(declare-fun b!7183906 () Bool)

(declare-fun tp!1994389 () Bool)

(assert (=> b!7183906 (= e!4314255 tp!1994389)))

(assert (= (and b!7183596 ((_ is ElementMatch!18349) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))) b!7183904))

(assert (= (and b!7183596 ((_ is Concat!27194) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))) b!7183905))

(assert (= (and b!7183596 ((_ is Star!18349) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))) b!7183906))

(assert (= (and b!7183596 ((_ is Union!18349) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))) b!7183907))

(declare-fun b!7183908 () Bool)

(declare-fun e!4314256 () Bool)

(assert (=> b!7183908 (= e!4314256 tp_is_empty!46259)))

(declare-fun b!7183909 () Bool)

(declare-fun tp!1994398 () Bool)

(declare-fun tp!1994395 () Bool)

(assert (=> b!7183909 (= e!4314256 (and tp!1994398 tp!1994395))))

(assert (=> b!7183596 (= tp!1994346 e!4314256)))

(declare-fun b!7183911 () Bool)

(declare-fun tp!1994397 () Bool)

(declare-fun tp!1994396 () Bool)

(assert (=> b!7183911 (= e!4314256 (and tp!1994397 tp!1994396))))

(declare-fun b!7183910 () Bool)

(declare-fun tp!1994394 () Bool)

(assert (=> b!7183910 (= e!4314256 tp!1994394)))

(assert (= (and b!7183596 ((_ is ElementMatch!18349) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131))))) b!7183908))

(assert (= (and b!7183596 ((_ is Concat!27194) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131))))) b!7183909))

(assert (= (and b!7183596 ((_ is Star!18349) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131))))) b!7183910))

(assert (= (and b!7183596 ((_ is Union!18349) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131))))) b!7183911))

(declare-fun b!7183912 () Bool)

(declare-fun e!4314257 () Bool)

(declare-fun tp!1994399 () Bool)

(declare-fun tp!1994400 () Bool)

(assert (=> b!7183912 (= e!4314257 (and tp!1994399 tp!1994400))))

(assert (=> b!7183606 (= tp!1994360 e!4314257)))

(assert (= (and b!7183606 ((_ is Cons!69653) (exprs!7801 setElem!53145))) b!7183912))

(declare-fun b!7183913 () Bool)

(declare-fun e!4314258 () Bool)

(assert (=> b!7183913 (= e!4314258 tp_is_empty!46259)))

(declare-fun b!7183914 () Bool)

(declare-fun tp!1994405 () Bool)

(declare-fun tp!1994402 () Bool)

(assert (=> b!7183914 (= e!4314258 (and tp!1994405 tp!1994402))))

(assert (=> b!7183597 (= tp!1994345 e!4314258)))

(declare-fun b!7183916 () Bool)

(declare-fun tp!1994404 () Bool)

(declare-fun tp!1994403 () Bool)

(assert (=> b!7183916 (= e!4314258 (and tp!1994404 tp!1994403))))

(declare-fun b!7183915 () Bool)

(declare-fun tp!1994401 () Bool)

(assert (=> b!7183915 (= e!4314258 tp!1994401)))

(assert (= (and b!7183597 ((_ is ElementMatch!18349) (reg!18678 (h!76101 (exprs!7801 setElem!53131))))) b!7183913))

(assert (= (and b!7183597 ((_ is Concat!27194) (reg!18678 (h!76101 (exprs!7801 setElem!53131))))) b!7183914))

(assert (= (and b!7183597 ((_ is Star!18349) (reg!18678 (h!76101 (exprs!7801 setElem!53131))))) b!7183915))

(assert (= (and b!7183597 ((_ is Union!18349) (reg!18678 (h!76101 (exprs!7801 setElem!53131))))) b!7183916))

(declare-fun b!7183918 () Bool)

(declare-fun e!4314260 () Bool)

(declare-fun tp!1994406 () Bool)

(assert (=> b!7183918 (= e!4314260 tp!1994406)))

(declare-fun tp!1994407 () Bool)

(declare-fun b!7183917 () Bool)

(declare-fun e!4314259 () Bool)

(assert (=> b!7183917 (= e!4314259 (and (inv!88894 (h!76103 (t!383800 res!2925525))) e!4314260 tp!1994407))))

(assert (=> b!7183415 (= tp!1994302 e!4314259)))

(assert (= b!7183917 b!7183918))

(assert (= (and b!7183415 ((_ is Cons!69655) (t!383800 res!2925525))) b!7183917))

(declare-fun m!7881146 () Bool)

(assert (=> b!7183917 m!7881146))

(declare-fun b!7183919 () Bool)

(declare-fun e!4314261 () Bool)

(assert (=> b!7183919 (= e!4314261 tp_is_empty!46259)))

(declare-fun b!7183920 () Bool)

(declare-fun tp!1994412 () Bool)

(declare-fun tp!1994409 () Bool)

(assert (=> b!7183920 (= e!4314261 (and tp!1994412 tp!1994409))))

(assert (=> b!7183605 (= tp!1994358 e!4314261)))

(declare-fun b!7183922 () Bool)

(declare-fun tp!1994411 () Bool)

(declare-fun tp!1994410 () Bool)

(assert (=> b!7183922 (= e!4314261 (and tp!1994411 tp!1994410))))

(declare-fun b!7183921 () Bool)

(declare-fun tp!1994408 () Bool)

(assert (=> b!7183921 (= e!4314261 tp!1994408)))

(assert (= (and b!7183605 ((_ is ElementMatch!18349) (h!76101 (t!383798 (exprs!7801 empty!2967))))) b!7183919))

(assert (= (and b!7183605 ((_ is Concat!27194) (h!76101 (t!383798 (exprs!7801 empty!2967))))) b!7183920))

(assert (= (and b!7183605 ((_ is Star!18349) (h!76101 (t!383798 (exprs!7801 empty!2967))))) b!7183921))

(assert (= (and b!7183605 ((_ is Union!18349) (h!76101 (t!383798 (exprs!7801 empty!2967))))) b!7183922))

(declare-fun b!7183923 () Bool)

(declare-fun e!4314262 () Bool)

(declare-fun tp!1994413 () Bool)

(declare-fun tp!1994414 () Bool)

(assert (=> b!7183923 (= e!4314262 (and tp!1994413 tp!1994414))))

(assert (=> b!7183605 (= tp!1994359 e!4314262)))

(assert (= (and b!7183605 ((_ is Cons!69653) (t!383798 (t!383798 (exprs!7801 empty!2967))))) b!7183923))

(declare-fun b!7183924 () Bool)

(declare-fun e!4314263 () Bool)

(assert (=> b!7183924 (= e!4314263 tp_is_empty!46259)))

(declare-fun b!7183925 () Bool)

(declare-fun tp!1994419 () Bool)

(declare-fun tp!1994416 () Bool)

(assert (=> b!7183925 (= e!4314263 (and tp!1994419 tp!1994416))))

(assert (=> b!7183598 (= tp!1994348 e!4314263)))

(declare-fun b!7183927 () Bool)

(declare-fun tp!1994418 () Bool)

(declare-fun tp!1994417 () Bool)

(assert (=> b!7183927 (= e!4314263 (and tp!1994418 tp!1994417))))

(declare-fun b!7183926 () Bool)

(declare-fun tp!1994415 () Bool)

(assert (=> b!7183926 (= e!4314263 tp!1994415)))

(assert (= (and b!7183598 ((_ is ElementMatch!18349) (regOne!37211 (h!76101 (exprs!7801 setElem!53131))))) b!7183924))

(assert (= (and b!7183598 ((_ is Concat!27194) (regOne!37211 (h!76101 (exprs!7801 setElem!53131))))) b!7183925))

(assert (= (and b!7183598 ((_ is Star!18349) (regOne!37211 (h!76101 (exprs!7801 setElem!53131))))) b!7183926))

(assert (= (and b!7183598 ((_ is Union!18349) (regOne!37211 (h!76101 (exprs!7801 setElem!53131))))) b!7183927))

(declare-fun b!7183928 () Bool)

(declare-fun e!4314264 () Bool)

(assert (=> b!7183928 (= e!4314264 tp_is_empty!46259)))

(declare-fun b!7183929 () Bool)

(declare-fun tp!1994424 () Bool)

(declare-fun tp!1994421 () Bool)

(assert (=> b!7183929 (= e!4314264 (and tp!1994424 tp!1994421))))

(assert (=> b!7183598 (= tp!1994347 e!4314264)))

(declare-fun b!7183931 () Bool)

(declare-fun tp!1994423 () Bool)

(declare-fun tp!1994422 () Bool)

(assert (=> b!7183931 (= e!4314264 (and tp!1994423 tp!1994422))))

(declare-fun b!7183930 () Bool)

(declare-fun tp!1994420 () Bool)

(assert (=> b!7183930 (= e!4314264 tp!1994420)))

(assert (= (and b!7183598 ((_ is ElementMatch!18349) (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))))) b!7183928))

(assert (= (and b!7183598 ((_ is Concat!27194) (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))))) b!7183929))

(assert (= (and b!7183598 ((_ is Star!18349) (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))))) b!7183930))

(assert (= (and b!7183598 ((_ is Union!18349) (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))))) b!7183931))

(declare-fun b!7183934 () Bool)

(declare-fun e!4314267 () Bool)

(declare-fun tp!1994425 () Bool)

(declare-fun tp!1994426 () Bool)

(assert (=> b!7183934 (= e!4314267 (and tp!1994425 tp!1994426))))

(assert (=> b!7183416 (= tp!1994303 e!4314267)))

(assert (= (and b!7183416 ((_ is Cons!69653) (exprs!7801 (h!76103 res!2925525)))) b!7183934))

(declare-fun b!7183935 () Bool)

(declare-fun e!4314268 () Bool)

(declare-fun tp!1994427 () Bool)

(declare-fun tp!1994428 () Bool)

(assert (=> b!7183935 (= e!4314268 (and tp!1994427 tp!1994428))))

(assert (=> b!7183367 (= tp!1994289 e!4314268)))

(assert (= (and b!7183367 ((_ is Cons!69653) (exprs!7801 _$3!480))) b!7183935))

(declare-fun b!7183936 () Bool)

(declare-fun e!4314269 () Bool)

(declare-fun tp!1994429 () Bool)

(declare-fun tp!1994430 () Bool)

(assert (=> b!7183936 (= e!4314269 (and tp!1994429 tp!1994430))))

(assert (=> b!7183333 (= tp!1994285 e!4314269)))

(assert (= (and b!7183333 ((_ is Cons!69653) (exprs!7801 setElem!53140))) b!7183936))

(declare-fun condSetEmpty!53148 () Bool)

(assert (=> setNonEmpty!53140 (= condSetEmpty!53148 (= setRest!53140 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun setRes!53148 () Bool)

(assert (=> setNonEmpty!53140 (= tp!1994286 setRes!53148)))

(declare-fun setIsEmpty!53148 () Bool)

(assert (=> setIsEmpty!53148 setRes!53148))

(declare-fun setElem!53148 () Context!14602)

(declare-fun e!4314270 () Bool)

(declare-fun tp!1994432 () Bool)

(declare-fun setNonEmpty!53148 () Bool)

(assert (=> setNonEmpty!53148 (= setRes!53148 (and tp!1994432 (inv!88894 setElem!53148) e!4314270))))

(declare-fun setRest!53148 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53148 (= setRest!53140 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53148 true) setRest!53148))))

(declare-fun b!7183937 () Bool)

(declare-fun tp!1994431 () Bool)

(assert (=> b!7183937 (= e!4314270 tp!1994431)))

(assert (= (and setNonEmpty!53140 condSetEmpty!53148) setIsEmpty!53148))

(assert (= (and setNonEmpty!53140 (not condSetEmpty!53148)) setNonEmpty!53148))

(assert (= setNonEmpty!53148 b!7183937))

(declare-fun m!7881150 () Bool)

(assert (=> setNonEmpty!53148 m!7881150))

(declare-fun b!7183938 () Bool)

(declare-fun e!4314271 () Bool)

(assert (=> b!7183938 (= e!4314271 tp_is_empty!46259)))

(declare-fun b!7183939 () Bool)

(declare-fun tp!1994437 () Bool)

(declare-fun tp!1994434 () Bool)

(assert (=> b!7183939 (= e!4314271 (and tp!1994437 tp!1994434))))

(assert (=> b!7183602 (= tp!1994357 e!4314271)))

(declare-fun b!7183941 () Bool)

(declare-fun tp!1994436 () Bool)

(declare-fun tp!1994435 () Bool)

(assert (=> b!7183941 (= e!4314271 (and tp!1994436 tp!1994435))))

(declare-fun b!7183940 () Bool)

(declare-fun tp!1994433 () Bool)

(assert (=> b!7183940 (= e!4314271 tp!1994433)))

(assert (= (and b!7183602 ((_ is ElementMatch!18349) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))) b!7183938))

(assert (= (and b!7183602 ((_ is Concat!27194) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))) b!7183939))

(assert (= (and b!7183602 ((_ is Star!18349) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))) b!7183940))

(assert (= (and b!7183602 ((_ is Union!18349) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))) b!7183941))

(declare-fun b!7183942 () Bool)

(declare-fun e!4314272 () Bool)

(assert (=> b!7183942 (= e!4314272 tp_is_empty!46259)))

(declare-fun b!7183943 () Bool)

(declare-fun tp!1994442 () Bool)

(declare-fun tp!1994439 () Bool)

(assert (=> b!7183943 (= e!4314272 (and tp!1994442 tp!1994439))))

(assert (=> b!7183602 (= tp!1994354 e!4314272)))

(declare-fun b!7183945 () Bool)

(declare-fun tp!1994441 () Bool)

(declare-fun tp!1994440 () Bool)

(assert (=> b!7183945 (= e!4314272 (and tp!1994441 tp!1994440))))

(declare-fun b!7183944 () Bool)

(declare-fun tp!1994438 () Bool)

(assert (=> b!7183944 (= e!4314272 tp!1994438)))

(assert (= (and b!7183602 ((_ is ElementMatch!18349) (regTwo!37210 (h!76101 (exprs!7801 empty!2967))))) b!7183942))

(assert (= (and b!7183602 ((_ is Concat!27194) (regTwo!37210 (h!76101 (exprs!7801 empty!2967))))) b!7183943))

(assert (= (and b!7183602 ((_ is Star!18349) (regTwo!37210 (h!76101 (exprs!7801 empty!2967))))) b!7183944))

(assert (= (and b!7183602 ((_ is Union!18349) (regTwo!37210 (h!76101 (exprs!7801 empty!2967))))) b!7183945))

(declare-fun b!7183946 () Bool)

(declare-fun e!4314273 () Bool)

(assert (=> b!7183946 (= e!4314273 tp_is_empty!46259)))

(declare-fun b!7183947 () Bool)

(declare-fun tp!1994447 () Bool)

(declare-fun tp!1994444 () Bool)

(assert (=> b!7183947 (= e!4314273 (and tp!1994447 tp!1994444))))

(assert (=> b!7183599 (= tp!1994350 e!4314273)))

(declare-fun b!7183949 () Bool)

(declare-fun tp!1994446 () Bool)

(declare-fun tp!1994445 () Bool)

(assert (=> b!7183949 (= e!4314273 (and tp!1994446 tp!1994445))))

(declare-fun b!7183948 () Bool)

(declare-fun tp!1994443 () Bool)

(assert (=> b!7183948 (= e!4314273 tp!1994443)))

(assert (= (and b!7183599 ((_ is ElementMatch!18349) (h!76101 (t!383798 (exprs!7801 setElem!53131))))) b!7183946))

(assert (= (and b!7183599 ((_ is Concat!27194) (h!76101 (t!383798 (exprs!7801 setElem!53131))))) b!7183947))

(assert (= (and b!7183599 ((_ is Star!18349) (h!76101 (t!383798 (exprs!7801 setElem!53131))))) b!7183948))

(assert (= (and b!7183599 ((_ is Union!18349) (h!76101 (t!383798 (exprs!7801 setElem!53131))))) b!7183949))

(declare-fun b!7183950 () Bool)

(declare-fun e!4314274 () Bool)

(declare-fun tp!1994448 () Bool)

(declare-fun tp!1994449 () Bool)

(assert (=> b!7183950 (= e!4314274 (and tp!1994448 tp!1994449))))

(assert (=> b!7183599 (= tp!1994351 e!4314274)))

(assert (= (and b!7183599 ((_ is Cons!69653) (t!383798 (t!383798 (exprs!7801 setElem!53131))))) b!7183950))

(declare-fun b!7183951 () Bool)

(declare-fun e!4314275 () Bool)

(assert (=> b!7183951 (= e!4314275 tp_is_empty!46259)))

(declare-fun b!7183952 () Bool)

(declare-fun tp!1994454 () Bool)

(declare-fun tp!1994451 () Bool)

(assert (=> b!7183952 (= e!4314275 (and tp!1994454 tp!1994451))))

(assert (=> b!7183607 (= tp!1994362 e!4314275)))

(declare-fun b!7183954 () Bool)

(declare-fun tp!1994453 () Bool)

(declare-fun tp!1994452 () Bool)

(assert (=> b!7183954 (= e!4314275 (and tp!1994453 tp!1994452))))

(declare-fun b!7183953 () Bool)

(declare-fun tp!1994450 () Bool)

(assert (=> b!7183953 (= e!4314275 tp!1994450)))

(assert (= (and b!7183607 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 setElem!53137)))) b!7183951))

(assert (= (and b!7183607 ((_ is Concat!27194) (h!76101 (exprs!7801 setElem!53137)))) b!7183952))

(assert (= (and b!7183607 ((_ is Star!18349) (h!76101 (exprs!7801 setElem!53137)))) b!7183953))

(assert (= (and b!7183607 ((_ is Union!18349) (h!76101 (exprs!7801 setElem!53137)))) b!7183954))

(declare-fun b!7183955 () Bool)

(declare-fun e!4314276 () Bool)

(declare-fun tp!1994455 () Bool)

(declare-fun tp!1994456 () Bool)

(assert (=> b!7183955 (= e!4314276 (and tp!1994455 tp!1994456))))

(assert (=> b!7183607 (= tp!1994363 e!4314276)))

(assert (= (and b!7183607 ((_ is Cons!69653) (t!383798 (exprs!7801 setElem!53137)))) b!7183955))

(declare-fun b!7183956 () Bool)

(declare-fun e!4314277 () Bool)

(assert (=> b!7183956 (= e!4314277 tp_is_empty!46259)))

(declare-fun b!7183957 () Bool)

(declare-fun tp!1994461 () Bool)

(declare-fun tp!1994458 () Bool)

(assert (=> b!7183957 (= e!4314277 (and tp!1994461 tp!1994458))))

(assert (=> b!7183603 (= tp!1994353 e!4314277)))

(declare-fun b!7183959 () Bool)

(declare-fun tp!1994460 () Bool)

(declare-fun tp!1994459 () Bool)

(assert (=> b!7183959 (= e!4314277 (and tp!1994460 tp!1994459))))

(declare-fun b!7183958 () Bool)

(declare-fun tp!1994457 () Bool)

(assert (=> b!7183958 (= e!4314277 tp!1994457)))

(assert (= (and b!7183603 ((_ is ElementMatch!18349) (reg!18678 (h!76101 (exprs!7801 empty!2967))))) b!7183956))

(assert (= (and b!7183603 ((_ is Concat!27194) (reg!18678 (h!76101 (exprs!7801 empty!2967))))) b!7183957))

(assert (= (and b!7183603 ((_ is Star!18349) (reg!18678 (h!76101 (exprs!7801 empty!2967))))) b!7183958))

(assert (= (and b!7183603 ((_ is Union!18349) (reg!18678 (h!76101 (exprs!7801 empty!2967))))) b!7183959))

(declare-fun b_lambda!274999 () Bool)

(assert (= b_lambda!274985 (or d!2237479 b_lambda!274999)))

(declare-fun bs!1897133 () Bool)

(declare-fun d!2237681 () Bool)

(assert (= bs!1897133 (and d!2237681 d!2237479)))

(assert (=> bs!1897133 (= (dynLambda!28370 lambda!437549 (h!76103 (toList!11292 z!3530))) (not (dynLambda!28370 lambda!437513 (h!76103 (toList!11292 z!3530)))))))

(declare-fun b_lambda!275013 () Bool)

(assert (=> (not b_lambda!275013) (not bs!1897133)))

(declare-fun m!7881154 () Bool)

(assert (=> bs!1897133 m!7881154))

(assert (=> b!7183612 d!2237681))

(declare-fun b_lambda!275001 () Bool)

(assert (= b_lambda!274987 (or d!2237395 b_lambda!275001)))

(declare-fun bs!1897134 () Bool)

(declare-fun d!2237683 () Bool)

(assert (= bs!1897134 (and d!2237683 d!2237395)))

(assert (=> bs!1897134 (= (dynLambda!28369 lambda!437532 (h!76101 (t!383798 (exprs!7801 setElem!53131)))) (validRegex!9468 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))))

(declare-fun m!7881158 () Bool)

(assert (=> bs!1897134 m!7881158))

(assert (=> b!7183662 d!2237683))

(declare-fun b_lambda!275003 () Bool)

(assert (= b_lambda!274997 (or d!2237493 b_lambda!275003)))

(declare-fun bs!1897135 () Bool)

(declare-fun d!2237685 () Bool)

(assert (= bs!1897135 (and d!2237685 d!2237493)))

(assert (=> bs!1897135 (= (dynLambda!28369 lambda!437561 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))) (validRegex!9468 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun m!7881162 () Bool)

(assert (=> bs!1897135 m!7881162))

(assert (=> b!7183879 d!2237685))

(declare-fun b_lambda!275005 () Bool)

(assert (= b_lambda!274991 (or d!2237477 b_lambda!275005)))

(declare-fun bs!1897136 () Bool)

(declare-fun d!2237689 () Bool)

(assert (= bs!1897136 (and d!2237689 d!2237477)))

(assert (=> bs!1897136 (= (dynLambda!28369 lambda!437546 (h!76101 (exprs!7801 setElem!53137))) (validRegex!9468 (h!76101 (exprs!7801 setElem!53137))))))

(declare-fun m!7881164 () Bool)

(assert (=> bs!1897136 m!7881164))

(assert (=> b!7183832 d!2237689))

(declare-fun b_lambda!275007 () Bool)

(assert (= b_lambda!274993 (or d!2237403 b_lambda!275007)))

(declare-fun bs!1897137 () Bool)

(declare-fun d!2237691 () Bool)

(assert (= bs!1897137 (and d!2237691 d!2237403)))

(assert (=> bs!1897137 (= (dynLambda!28369 lambda!437536 (h!76101 (t!383798 (exprs!7801 lt!2570780)))) (nullable!7776 (h!76101 (t!383798 (exprs!7801 lt!2570780)))))))

(declare-fun m!7881166 () Bool)

(assert (=> bs!1897137 m!7881166))

(assert (=> b!7183834 d!2237691))

(declare-fun b_lambda!275009 () Bool)

(assert (= b_lambda!274989 (or d!2237509 b_lambda!275009)))

(declare-fun bs!1897138 () Bool)

(declare-fun d!2237693 () Bool)

(assert (= bs!1897138 (and d!2237693 d!2237509)))

(assert (=> bs!1897138 (= (dynLambda!28369 lambda!437565 (h!76101 lt!2570826)) (validRegex!9468 (h!76101 lt!2570826)))))

(declare-fun m!7881168 () Bool)

(assert (=> bs!1897138 m!7881168))

(assert (=> b!7183830 d!2237693))

(declare-fun b_lambda!275011 () Bool)

(assert (= b_lambda!274995 (or d!2237379 b_lambda!275011)))

(declare-fun bs!1897140 () Bool)

(declare-fun d!2237695 () Bool)

(assert (= bs!1897140 (and d!2237695 d!2237379)))

(assert (=> bs!1897140 (= (dynLambda!28369 lambda!437531 (h!76101 (t!383798 (exprs!7801 empty!2967)))) (validRegex!9468 (h!76101 (t!383798 (exprs!7801 empty!2967)))))))

(declare-fun m!7881170 () Bool)

(assert (=> bs!1897140 m!7881170))

(assert (=> b!7183868 d!2237695))

(check-sat (not b!7183916) (not b!7183752) (not b!7183886) (not b!7183858) (not b!7183615) (not b!7183952) (not b_lambda!275011) (not b_lambda!275005) (not bs!1897135) (not b!7183936) (not b!7183925) (not b!7183903) (not b!7183749) (not b!7183914) (not b!7183927) (not bm!654809) (not b!7183935) (not d!2237647) (not b!7183632) (not bm!654818) (not d!2237551) tp_is_empty!46259 (not bm!654821) (not b!7183909) (not b!7183926) (not bs!1897140) (not bm!654825) (not b!7183934) (not b!7183646) (not b_lambda!274981) (not b!7183907) (not b!7183753) (not b!7183730) (not b!7183620) (not b!7183667) (not b!7183930) (not setNonEmpty!53147) (not b!7183947) (not bm!654775) (not bm!654789) (not b_lambda!274999) (not b!7183887) (not b!7183958) (not b!7183616) (not b!7183889) (not b!7183829) (not b!7183746) (not d!2237591) (not b!7183939) (not b!7183621) (not bs!1897138) (not b!7183912) (not b!7183957) (not b!7183661) (not b!7183833) (not b!7183917) (not b!7183633) (not b!7183650) (not b!7183910) (not bm!654778) (not b!7183702) (not b_lambda!275009) (not b_lambda!275003) (not b!7183949) (not b!7183944) (not b!7183921) (not d!2237569) (not b!7183905) (not b!7183882) (not bs!1897136) (not bm!654797) (not b!7183644) (not b_lambda!275001) (not b!7183906) (not b!7183665) (not b!7183630) (not b!7183884) (not b!7183918) (not b!7183901) (not b!7183640) (not b!7183732) (not b!7183726) (not b!7183959) (not bm!654819) (not bm!654813) (not bm!654824) (not bm!654828) (not b!7183880) (not b!7183835) (not bs!1897134) (not b!7183704) (not b!7183954) (not b!7183639) (not b!7183948) (not d!2237537) (not d!2237555) (not b!7183783) (not b!7183613) (not b!7183643) (not bm!654776) (not bm!654795) (not bm!654822) (not bm!654791) (not d!2237637) (not d!2237593) (not b_lambda!275007) (not b!7183883) (not b!7183659) (not setNonEmpty!53148) (not b!7183931) (not b!7183940) (not b!7183929) (not b!7183767) (not bm!654783) (not b!7183831) (not d!2237575) (not d!2237549) (not d!2237655) (not b_lambda!275013) (not b!7183915) (not b!7183663) (not b!7183617) (not b!7183941) (not b!7183953) (not b!7183631) (not b!7183635) (not b!7183920) (not b!7183810) (not bm!654808) (not d!2237633) (not bm!654790) (not b!7183902) (not b!7183728) (not b!7183955) (not d!2237577) (not b!7183751) (not d!2237605) (not bm!654788) (not b!7183943) (not b!7183614) (not b!7183745) (not d!2237533) (not b!7183642) (not d!2237585) (not b!7183729) (not b!7183634) (not b!7183869) (not d!2237583) (not bm!654829) (not b!7183636) (not b!7183637) (not setNonEmpty!53146) (not d!2237553) (not b!7183937) (not b!7183878) (not b!7183845) (not bs!1897137) (not bm!654798) (not bm!654782) (not b!7183923) (not d!2237597) (not b!7183922) (not b!7183945) (not b!7183618) (not b!7183693) (not b!7183847) (not b!7183735) (not b!7183619) (not b!7183862) (not b!7183900) (not b!7183725) (not b!7183748) (not b_lambda!274983) (not b!7183755) (not bm!654777) (not b!7183888) (not b!7183950) (not b_lambda!274979) (not b!7183911) (not b!7183734))
(check-sat)
(get-model)

(declare-fun b_lambda!275045 () Bool)

(assert (= b_lambda!275013 (or b!7183170 b_lambda!275045)))

(declare-fun bs!1897238 () Bool)

(declare-fun d!2237779 () Bool)

(assert (= bs!1897238 (and d!2237779 b!7183170)))

(assert (=> bs!1897238 (= (dynLambda!28370 lambda!437513 (h!76103 (toList!11292 z!3530))) (select (derivationStepZipperUp!2325 (h!76103 (toList!11292 z!3530)) lt!2570781) lt!2570779))))

(declare-fun m!7881362 () Bool)

(assert (=> bs!1897238 m!7881362))

(declare-fun m!7881364 () Bool)

(assert (=> bs!1897238 m!7881364))

(assert (=> bs!1897133 d!2237779))

(check-sat (not b!7183916) (not b!7183752) (not b!7183886) (not b!7183858) (not b!7183615) (not b!7183952) (not b_lambda!275011) (not b_lambda!275005) (not bs!1897135) (not b!7183936) (not b!7183925) (not b!7183903) (not b!7183749) (not b!7183914) (not b!7183927) (not bm!654809) (not b!7183935) (not d!2237647) (not b!7183632) (not bm!654818) (not d!2237551) tp_is_empty!46259 (not bm!654821) (not b!7183909) (not b!7183926) (not bs!1897140) (not bm!654825) (not b!7183934) (not b!7183646) (not b_lambda!274981) (not b!7183907) (not b!7183753) (not b!7183730) (not b!7183620) (not b!7183667) (not b!7183930) (not setNonEmpty!53147) (not b!7183947) (not bm!654775) (not bm!654789) (not b_lambda!274999) (not b!7183887) (not b!7183958) (not b!7183616) (not b!7183889) (not b!7183829) (not b!7183746) (not d!2237591) (not b!7183939) (not b!7183621) (not bs!1897138) (not b!7183912) (not b!7183957) (not b!7183661) (not b!7183833) (not b!7183917) (not b!7183633) (not b!7183650) (not b!7183910) (not bm!654778) (not b!7183702) (not b_lambda!275009) (not b_lambda!275003) (not b!7183949) (not b!7183944) (not b!7183921) (not d!2237569) (not b!7183905) (not b!7183882) (not bs!1897136) (not bm!654797) (not b!7183644) (not b_lambda!275001) (not b!7183906) (not b!7183665) (not b!7183630) (not b!7183884) (not b!7183918) (not b!7183901) (not b!7183640) (not b!7183732) (not b!7183726) (not b!7183959) (not bm!654819) (not bm!654813) (not bm!654824) (not bm!654828) (not b!7183880) (not b!7183835) (not bs!1897134) (not b!7183704) (not b!7183954) (not b!7183639) (not b!7183948) (not d!2237537) (not d!2237555) (not b!7183783) (not b!7183613) (not b!7183643) (not bm!654776) (not bm!654795) (not bm!654822) (not bm!654791) (not d!2237637) (not d!2237593) (not b_lambda!275007) (not b!7183883) (not b!7183659) (not setNonEmpty!53148) (not b!7183931) (not b!7183940) (not b!7183929) (not b!7183767) (not bm!654783) (not b_lambda!275045) (not b!7183831) (not d!2237575) (not d!2237549) (not d!2237655) (not b!7183915) (not b!7183663) (not b!7183617) (not b!7183941) (not b!7183953) (not b!7183631) (not b!7183635) (not b!7183920) (not b!7183810) (not bm!654808) (not d!2237633) (not bm!654790) (not b!7183902) (not b!7183728) (not b!7183955) (not d!2237577) (not b!7183751) (not d!2237605) (not bm!654788) (not b!7183943) (not b!7183614) (not b!7183745) (not d!2237533) (not b!7183642) (not d!2237585) (not b!7183729) (not b!7183634) (not b!7183869) (not d!2237583) (not bm!654829) (not b!7183636) (not b!7183637) (not setNonEmpty!53146) (not d!2237553) (not b!7183937) (not b!7183878) (not b!7183845) (not bs!1897137) (not bm!654798) (not bm!654782) (not b!7183923) (not d!2237597) (not b!7183922) (not bs!1897238) (not b!7183945) (not b!7183618) (not b!7183693) (not b!7183847) (not b!7183735) (not b!7183619) (not b!7183862) (not b!7183900) (not b!7183725) (not b!7183748) (not b_lambda!274983) (not b!7183755) (not bm!654777) (not b!7183888) (not b!7183950) (not b_lambda!274979) (not b!7183911) (not b!7183734))
(check-sat)
(get-model)

(declare-fun bs!1897239 () Bool)

(declare-fun d!2237781 () Bool)

(assert (= bs!1897239 (and d!2237781 d!2237597)))

(declare-fun lambda!437592 () Int)

(assert (=> bs!1897239 (= lambda!437592 lambda!437576)))

(declare-fun bs!1897240 () Bool)

(assert (= bs!1897240 (and d!2237781 d!2237569)))

(assert (=> bs!1897240 (= lambda!437592 lambda!437569)))

(declare-fun bs!1897241 () Bool)

(assert (= bs!1897241 (and d!2237781 d!2237379)))

(assert (=> bs!1897241 (= lambda!437592 lambda!437531)))

(declare-fun bs!1897242 () Bool)

(assert (= bs!1897242 (and d!2237781 d!2237593)))

(assert (=> bs!1897242 (= lambda!437592 lambda!437575)))

(declare-fun bs!1897243 () Bool)

(assert (= bs!1897243 (and d!2237781 d!2237605)))

(assert (=> bs!1897243 (= lambda!437592 lambda!437578)))

(declare-fun bs!1897244 () Bool)

(assert (= bs!1897244 (and d!2237781 d!2237533)))

(assert (=> bs!1897244 (= lambda!437592 lambda!437566)))

(declare-fun bs!1897245 () Bool)

(assert (= bs!1897245 (and d!2237781 d!2237591)))

(assert (=> bs!1897245 (= lambda!437592 lambda!437574)))

(declare-fun bs!1897246 () Bool)

(assert (= bs!1897246 (and d!2237781 d!2237403)))

(assert (=> bs!1897246 (not (= lambda!437592 lambda!437536))))

(declare-fun bs!1897247 () Bool)

(assert (= bs!1897247 (and d!2237781 d!2237509)))

(assert (=> bs!1897247 (= lambda!437592 lambda!437565)))

(declare-fun bs!1897248 () Bool)

(assert (= bs!1897248 (and d!2237781 d!2237555)))

(assert (=> bs!1897248 (= lambda!437592 lambda!437568)))

(declare-fun bs!1897249 () Bool)

(assert (= bs!1897249 (and d!2237781 d!2237637)))

(assert (=> bs!1897249 (= lambda!437592 lambda!437581)))

(declare-fun bs!1897250 () Bool)

(assert (= bs!1897250 (and d!2237781 d!2237493)))

(assert (=> bs!1897250 (= lambda!437592 lambda!437561)))

(declare-fun bs!1897251 () Bool)

(assert (= bs!1897251 (and d!2237781 d!2237477)))

(assert (=> bs!1897251 (= lambda!437592 lambda!437546)))

(declare-fun bs!1897252 () Bool)

(assert (= bs!1897252 (and d!2237781 d!2237577)))

(assert (=> bs!1897252 (= lambda!437592 lambda!437570)))

(declare-fun bs!1897253 () Bool)

(assert (= bs!1897253 (and d!2237781 d!2237395)))

(assert (=> bs!1897253 (= lambda!437592 lambda!437532)))

(declare-fun bs!1897254 () Bool)

(assert (= bs!1897254 (and d!2237781 d!2237551)))

(assert (=> bs!1897254 (= lambda!437592 lambda!437567)))

(assert (=> d!2237781 (= (inv!88894 (h!76103 res!2925597)) (forall!17177 (exprs!7801 (h!76103 res!2925597)) lambda!437592))))

(declare-fun bs!1897255 () Bool)

(assert (= bs!1897255 d!2237781))

(declare-fun m!7881366 () Bool)

(assert (=> bs!1897255 m!7881366))

(assert (=> b!7183619 d!2237781))

(declare-fun d!2237783 () Bool)

(declare-fun c!1337569 () Bool)

(assert (=> d!2237783 (= c!1337569 ((_ is Nil!69655) (t!383800 res!2925518)))))

(declare-fun e!4314425 () (InoxSet Context!14602))

(assert (=> d!2237783 (= (content!14316 (t!383800 res!2925518)) e!4314425)))

(declare-fun b!7184188 () Bool)

(assert (=> b!7184188 (= e!4314425 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184189 () Bool)

(assert (=> b!7184189 (= e!4314425 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 (t!383800 res!2925518)) true) (content!14316 (t!383800 (t!383800 res!2925518)))))))

(assert (= (and d!2237783 c!1337569) b!7184188))

(assert (= (and d!2237783 (not c!1337569)) b!7184189))

(declare-fun m!7881368 () Bool)

(assert (=> b!7184189 m!7881368))

(declare-fun m!7881370 () Bool)

(assert (=> b!7184189 m!7881370))

(assert (=> b!7183659 d!2237783))

(declare-fun bs!1897256 () Bool)

(declare-fun d!2237785 () Bool)

(assert (= bs!1897256 (and d!2237785 d!2237597)))

(declare-fun lambda!437593 () Int)

(assert (=> bs!1897256 (= lambda!437593 lambda!437576)))

(declare-fun bs!1897257 () Bool)

(assert (= bs!1897257 (and d!2237785 d!2237781)))

(assert (=> bs!1897257 (= lambda!437593 lambda!437592)))

(declare-fun bs!1897258 () Bool)

(assert (= bs!1897258 (and d!2237785 d!2237569)))

(assert (=> bs!1897258 (= lambda!437593 lambda!437569)))

(declare-fun bs!1897259 () Bool)

(assert (= bs!1897259 (and d!2237785 d!2237379)))

(assert (=> bs!1897259 (= lambda!437593 lambda!437531)))

(declare-fun bs!1897260 () Bool)

(assert (= bs!1897260 (and d!2237785 d!2237593)))

(assert (=> bs!1897260 (= lambda!437593 lambda!437575)))

(declare-fun bs!1897261 () Bool)

(assert (= bs!1897261 (and d!2237785 d!2237605)))

(assert (=> bs!1897261 (= lambda!437593 lambda!437578)))

(declare-fun bs!1897262 () Bool)

(assert (= bs!1897262 (and d!2237785 d!2237533)))

(assert (=> bs!1897262 (= lambda!437593 lambda!437566)))

(declare-fun bs!1897263 () Bool)

(assert (= bs!1897263 (and d!2237785 d!2237591)))

(assert (=> bs!1897263 (= lambda!437593 lambda!437574)))

(declare-fun bs!1897264 () Bool)

(assert (= bs!1897264 (and d!2237785 d!2237403)))

(assert (=> bs!1897264 (not (= lambda!437593 lambda!437536))))

(declare-fun bs!1897265 () Bool)

(assert (= bs!1897265 (and d!2237785 d!2237509)))

(assert (=> bs!1897265 (= lambda!437593 lambda!437565)))

(declare-fun bs!1897266 () Bool)

(assert (= bs!1897266 (and d!2237785 d!2237555)))

(assert (=> bs!1897266 (= lambda!437593 lambda!437568)))

(declare-fun bs!1897267 () Bool)

(assert (= bs!1897267 (and d!2237785 d!2237637)))

(assert (=> bs!1897267 (= lambda!437593 lambda!437581)))

(declare-fun bs!1897268 () Bool)

(assert (= bs!1897268 (and d!2237785 d!2237493)))

(assert (=> bs!1897268 (= lambda!437593 lambda!437561)))

(declare-fun bs!1897269 () Bool)

(assert (= bs!1897269 (and d!2237785 d!2237477)))

(assert (=> bs!1897269 (= lambda!437593 lambda!437546)))

(declare-fun bs!1897270 () Bool)

(assert (= bs!1897270 (and d!2237785 d!2237577)))

(assert (=> bs!1897270 (= lambda!437593 lambda!437570)))

(declare-fun bs!1897271 () Bool)

(assert (= bs!1897271 (and d!2237785 d!2237395)))

(assert (=> bs!1897271 (= lambda!437593 lambda!437532)))

(declare-fun bs!1897272 () Bool)

(assert (= bs!1897272 (and d!2237785 d!2237551)))

(assert (=> bs!1897272 (= lambda!437593 lambda!437567)))

(assert (=> d!2237785 (= (inv!88894 setElem!53147) (forall!17177 (exprs!7801 setElem!53147) lambda!437593))))

(declare-fun bs!1897273 () Bool)

(assert (= bs!1897273 d!2237785))

(declare-fun m!7881372 () Bool)

(assert (=> bs!1897273 m!7881372))

(assert (=> setNonEmpty!53147 d!2237785))

(declare-fun b!7184190 () Bool)

(declare-fun res!2925787 () Bool)

(declare-fun e!4314431 () Bool)

(assert (=> b!7184190 (=> (not res!2925787) (not e!4314431))))

(declare-fun call!654865 () Bool)

(assert (=> b!7184190 (= res!2925787 call!654865)))

(declare-fun e!4314429 () Bool)

(assert (=> b!7184190 (= e!4314429 e!4314431)))

(declare-fun b!7184191 () Bool)

(declare-fun e!4314428 () Bool)

(declare-fun call!654866 () Bool)

(assert (=> b!7184191 (= e!4314428 call!654866)))

(declare-fun bm!654860 () Bool)

(declare-fun call!654867 () Bool)

(assert (=> bm!654860 (= call!654866 call!654867)))

(declare-fun b!7184192 () Bool)

(declare-fun e!4314427 () Bool)

(assert (=> b!7184192 (= e!4314427 e!4314428)))

(declare-fun res!2925784 () Bool)

(assert (=> b!7184192 (=> (not res!2925784) (not e!4314428))))

(assert (=> b!7184192 (= res!2925784 call!654865)))

(declare-fun bm!654861 () Bool)

(declare-fun c!1337571 () Bool)

(assert (=> bm!654861 (= call!654865 (validRegex!9468 (ite c!1337571 (regOne!37211 lt!2570833) (regOne!37210 lt!2570833))))))

(declare-fun b!7184193 () Bool)

(declare-fun e!4314430 () Bool)

(declare-fun e!4314432 () Bool)

(assert (=> b!7184193 (= e!4314430 e!4314432)))

(declare-fun c!1337570 () Bool)

(assert (=> b!7184193 (= c!1337570 ((_ is Star!18349) lt!2570833))))

(declare-fun d!2237787 () Bool)

(declare-fun res!2925785 () Bool)

(assert (=> d!2237787 (=> res!2925785 e!4314430)))

(assert (=> d!2237787 (= res!2925785 ((_ is ElementMatch!18349) lt!2570833))))

(assert (=> d!2237787 (= (validRegex!9468 lt!2570833) e!4314430)))

(declare-fun b!7184194 () Bool)

(declare-fun e!4314426 () Bool)

(assert (=> b!7184194 (= e!4314426 call!654867)))

(declare-fun b!7184195 () Bool)

(assert (=> b!7184195 (= e!4314432 e!4314429)))

(assert (=> b!7184195 (= c!1337571 ((_ is Union!18349) lt!2570833))))

(declare-fun bm!654862 () Bool)

(assert (=> bm!654862 (= call!654867 (validRegex!9468 (ite c!1337570 (reg!18678 lt!2570833) (ite c!1337571 (regTwo!37211 lt!2570833) (regTwo!37210 lt!2570833)))))))

(declare-fun b!7184196 () Bool)

(assert (=> b!7184196 (= e!4314431 call!654866)))

(declare-fun b!7184197 () Bool)

(declare-fun res!2925786 () Bool)

(assert (=> b!7184197 (=> res!2925786 e!4314427)))

(assert (=> b!7184197 (= res!2925786 (not ((_ is Concat!27194) lt!2570833)))))

(assert (=> b!7184197 (= e!4314429 e!4314427)))

(declare-fun b!7184198 () Bool)

(assert (=> b!7184198 (= e!4314432 e!4314426)))

(declare-fun res!2925788 () Bool)

(assert (=> b!7184198 (= res!2925788 (not (nullable!7776 (reg!18678 lt!2570833))))))

(assert (=> b!7184198 (=> (not res!2925788) (not e!4314426))))

(assert (= (and d!2237787 (not res!2925785)) b!7184193))

(assert (= (and b!7184193 c!1337570) b!7184198))

(assert (= (and b!7184193 (not c!1337570)) b!7184195))

(assert (= (and b!7184198 res!2925788) b!7184194))

(assert (= (and b!7184195 c!1337571) b!7184190))

(assert (= (and b!7184195 (not c!1337571)) b!7184197))

(assert (= (and b!7184190 res!2925787) b!7184196))

(assert (= (and b!7184197 (not res!2925786)) b!7184192))

(assert (= (and b!7184192 res!2925784) b!7184191))

(assert (= (or b!7184190 b!7184192) bm!654861))

(assert (= (or b!7184196 b!7184191) bm!654860))

(assert (= (or b!7184194 bm!654860) bm!654862))

(declare-fun m!7881374 () Bool)

(assert (=> bm!654861 m!7881374))

(declare-fun m!7881376 () Bool)

(assert (=> bm!654862 m!7881376))

(declare-fun m!7881378 () Bool)

(assert (=> b!7184198 m!7881378))

(assert (=> d!2237597 d!2237787))

(declare-fun d!2237789 () Bool)

(declare-fun res!2925789 () Bool)

(declare-fun e!4314433 () Bool)

(assert (=> d!2237789 (=> res!2925789 e!4314433)))

(assert (=> d!2237789 (= res!2925789 ((_ is Nil!69653) (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(assert (=> d!2237789 (= (forall!17177 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))) lambda!437576) e!4314433)))

(declare-fun b!7184199 () Bool)

(declare-fun e!4314434 () Bool)

(assert (=> b!7184199 (= e!4314433 e!4314434)))

(declare-fun res!2925790 () Bool)

(assert (=> b!7184199 (=> (not res!2925790) (not e!4314434))))

(assert (=> b!7184199 (= res!2925790 (dynLambda!28369 lambda!437576 (h!76101 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7184200 () Bool)

(assert (=> b!7184200 (= e!4314434 (forall!17177 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) lambda!437576))))

(assert (= (and d!2237789 (not res!2925789)) b!7184199))

(assert (= (and b!7184199 res!2925790) b!7184200))

(declare-fun b_lambda!275047 () Bool)

(assert (=> (not b_lambda!275047) (not b!7184199)))

(declare-fun m!7881380 () Bool)

(assert (=> b!7184199 m!7881380))

(declare-fun m!7881382 () Bool)

(assert (=> b!7184200 m!7881382))

(assert (=> d!2237597 d!2237789))

(declare-fun bs!1897274 () Bool)

(declare-fun d!2237791 () Bool)

(assert (= bs!1897274 (and d!2237791 d!2237597)))

(declare-fun lambda!437594 () Int)

(assert (=> bs!1897274 (= lambda!437594 lambda!437576)))

(declare-fun bs!1897275 () Bool)

(assert (= bs!1897275 (and d!2237791 d!2237781)))

(assert (=> bs!1897275 (= lambda!437594 lambda!437592)))

(declare-fun bs!1897276 () Bool)

(assert (= bs!1897276 (and d!2237791 d!2237569)))

(assert (=> bs!1897276 (= lambda!437594 lambda!437569)))

(declare-fun bs!1897277 () Bool)

(assert (= bs!1897277 (and d!2237791 d!2237379)))

(assert (=> bs!1897277 (= lambda!437594 lambda!437531)))

(declare-fun bs!1897278 () Bool)

(assert (= bs!1897278 (and d!2237791 d!2237593)))

(assert (=> bs!1897278 (= lambda!437594 lambda!437575)))

(declare-fun bs!1897279 () Bool)

(assert (= bs!1897279 (and d!2237791 d!2237605)))

(assert (=> bs!1897279 (= lambda!437594 lambda!437578)))

(declare-fun bs!1897280 () Bool)

(assert (= bs!1897280 (and d!2237791 d!2237533)))

(assert (=> bs!1897280 (= lambda!437594 lambda!437566)))

(declare-fun bs!1897281 () Bool)

(assert (= bs!1897281 (and d!2237791 d!2237591)))

(assert (=> bs!1897281 (= lambda!437594 lambda!437574)))

(declare-fun bs!1897282 () Bool)

(assert (= bs!1897282 (and d!2237791 d!2237403)))

(assert (=> bs!1897282 (not (= lambda!437594 lambda!437536))))

(declare-fun bs!1897283 () Bool)

(assert (= bs!1897283 (and d!2237791 d!2237509)))

(assert (=> bs!1897283 (= lambda!437594 lambda!437565)))

(declare-fun bs!1897284 () Bool)

(assert (= bs!1897284 (and d!2237791 d!2237555)))

(assert (=> bs!1897284 (= lambda!437594 lambda!437568)))

(declare-fun bs!1897285 () Bool)

(assert (= bs!1897285 (and d!2237791 d!2237637)))

(assert (=> bs!1897285 (= lambda!437594 lambda!437581)))

(declare-fun bs!1897286 () Bool)

(assert (= bs!1897286 (and d!2237791 d!2237785)))

(assert (=> bs!1897286 (= lambda!437594 lambda!437593)))

(declare-fun bs!1897287 () Bool)

(assert (= bs!1897287 (and d!2237791 d!2237493)))

(assert (=> bs!1897287 (= lambda!437594 lambda!437561)))

(declare-fun bs!1897288 () Bool)

(assert (= bs!1897288 (and d!2237791 d!2237477)))

(assert (=> bs!1897288 (= lambda!437594 lambda!437546)))

(declare-fun bs!1897289 () Bool)

(assert (= bs!1897289 (and d!2237791 d!2237577)))

(assert (=> bs!1897289 (= lambda!437594 lambda!437570)))

(declare-fun bs!1897290 () Bool)

(assert (= bs!1897290 (and d!2237791 d!2237395)))

(assert (=> bs!1897290 (= lambda!437594 lambda!437532)))

(declare-fun bs!1897291 () Bool)

(assert (= bs!1897291 (and d!2237791 d!2237551)))

(assert (=> bs!1897291 (= lambda!437594 lambda!437567)))

(assert (=> d!2237791 (= (inv!88894 (h!76103 (t!383800 res!2925525))) (forall!17177 (exprs!7801 (h!76103 (t!383800 res!2925525))) lambda!437594))))

(declare-fun bs!1897292 () Bool)

(assert (= bs!1897292 d!2237791))

(declare-fun m!7881384 () Bool)

(assert (=> bs!1897292 m!7881384))

(assert (=> b!7183917 d!2237791))

(declare-fun d!2237793 () Bool)

(assert (=> d!2237793 (= (isUnion!1579 lt!2570827) ((_ is Union!18349) lt!2570827))))

(assert (=> b!7183639 d!2237793))

(declare-fun b!7184201 () Bool)

(declare-fun e!4314438 () (InoxSet Context!14602))

(declare-fun e!4314437 () (InoxSet Context!14602))

(assert (=> b!7184201 (= e!4314438 e!4314437)))

(declare-fun c!1337574 () Bool)

(assert (=> b!7184201 (= c!1337574 ((_ is Concat!27194) (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))))

(declare-fun call!654871 () List!69777)

(declare-fun bm!654863 () Bool)

(declare-fun c!1337575 () Bool)

(assert (=> bm!654863 (= call!654871 ($colon$colon!2843 (exprs!7801 (ite c!1337470 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654798))) (ite (or c!1337575 c!1337574) (regTwo!37210 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))))

(declare-fun b!7184202 () Bool)

(declare-fun e!4314440 () (InoxSet Context!14602))

(assert (=> b!7184202 (= e!4314440 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184203 () Bool)

(declare-fun e!4314439 () (InoxSet Context!14602))

(declare-fun call!654868 () (InoxSet Context!14602))

(declare-fun call!654870 () (InoxSet Context!14602))

(assert (=> b!7184203 (= e!4314439 ((_ map or) call!654868 call!654870))))

(declare-fun c!1337573 () Bool)

(declare-fun bm!654864 () Bool)

(assert (=> bm!654864 (= call!654868 (derivationStepZipperDown!2512 (ite c!1337573 (regOne!37211 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))) (ite c!1337573 (ite c!1337470 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654798)) (Context!14603 call!654871)) lt!2570781))))

(declare-fun e!4314436 () Bool)

(declare-fun b!7184204 () Bool)

(assert (=> b!7184204 (= e!4314436 (nullable!7776 (regOne!37210 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))))

(declare-fun bm!654865 () Bool)

(declare-fun call!654872 () List!69777)

(assert (=> bm!654865 (= call!654872 call!654871)))

(declare-fun b!7184205 () Bool)

(declare-fun e!4314435 () (InoxSet Context!14602))

(assert (=> b!7184205 (= e!4314435 e!4314439)))

(assert (=> b!7184205 (= c!1337573 ((_ is Union!18349) (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))))

(declare-fun c!1337572 () Bool)

(declare-fun d!2237795 () Bool)

(assert (=> d!2237795 (= c!1337572 (and ((_ is ElementMatch!18349) (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))) (= (c!1337348 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))) lt!2570781)))))

(assert (=> d!2237795 (= (derivationStepZipperDown!2512 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))) (ite c!1337470 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654798)) lt!2570781) e!4314435)))

(declare-fun b!7184206 () Bool)

(declare-fun call!654869 () (InoxSet Context!14602))

(assert (=> b!7184206 (= e!4314438 ((_ map or) call!654868 call!654869))))

(declare-fun bm!654866 () Bool)

(declare-fun call!654873 () (InoxSet Context!14602))

(assert (=> bm!654866 (= call!654873 call!654869)))

(declare-fun b!7184207 () Bool)

(assert (=> b!7184207 (= e!4314437 call!654873)))

(declare-fun bm!654867 () Bool)

(assert (=> bm!654867 (= call!654869 call!654870)))

(declare-fun c!1337576 () Bool)

(declare-fun b!7184208 () Bool)

(assert (=> b!7184208 (= c!1337576 ((_ is Star!18349) (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))))

(assert (=> b!7184208 (= e!4314437 e!4314440)))

(declare-fun b!7184209 () Bool)

(assert (=> b!7184209 (= e!4314435 (store ((as const (Array Context!14602 Bool)) false) (ite c!1337470 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654798)) true))))

(declare-fun b!7184210 () Bool)

(assert (=> b!7184210 (= e!4314440 call!654873)))

(declare-fun bm!654868 () Bool)

(assert (=> bm!654868 (= call!654870 (derivationStepZipperDown!2512 (ite c!1337573 (regTwo!37211 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337575 (regTwo!37210 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337574 (regOne!37210 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))) (ite (or c!1337573 c!1337575) (ite c!1337470 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654798)) (Context!14603 call!654872)) lt!2570781))))

(declare-fun b!7184211 () Bool)

(assert (=> b!7184211 (= c!1337575 e!4314436)))

(declare-fun res!2925791 () Bool)

(assert (=> b!7184211 (=> (not res!2925791) (not e!4314436))))

(assert (=> b!7184211 (= res!2925791 ((_ is Concat!27194) (ite c!1337470 (regOne!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))))

(assert (=> b!7184211 (= e!4314439 e!4314438)))

(assert (= (and d!2237795 c!1337572) b!7184209))

(assert (= (and d!2237795 (not c!1337572)) b!7184205))

(assert (= (and b!7184205 c!1337573) b!7184203))

(assert (= (and b!7184205 (not c!1337573)) b!7184211))

(assert (= (and b!7184211 res!2925791) b!7184204))

(assert (= (and b!7184211 c!1337575) b!7184206))

(assert (= (and b!7184211 (not c!1337575)) b!7184201))

(assert (= (and b!7184201 c!1337574) b!7184207))

(assert (= (and b!7184201 (not c!1337574)) b!7184208))

(assert (= (and b!7184208 c!1337576) b!7184210))

(assert (= (and b!7184208 (not c!1337576)) b!7184202))

(assert (= (or b!7184207 b!7184210) bm!654865))

(assert (= (or b!7184207 b!7184210) bm!654866))

(assert (= (or b!7184206 bm!654866) bm!654867))

(assert (= (or b!7184206 bm!654865) bm!654863))

(assert (= (or b!7184203 bm!654867) bm!654868))

(assert (= (or b!7184203 b!7184206) bm!654864))

(declare-fun m!7881386 () Bool)

(assert (=> bm!654864 m!7881386))

(declare-fun m!7881388 () Bool)

(assert (=> b!7184209 m!7881388))

(declare-fun m!7881390 () Bool)

(assert (=> b!7184204 m!7881390))

(declare-fun m!7881392 () Bool)

(assert (=> bm!654868 m!7881392))

(declare-fun m!7881394 () Bool)

(assert (=> bm!654863 m!7881394))

(assert (=> bm!654791 d!2237795))

(declare-fun d!2237797 () Bool)

(declare-fun res!2925792 () Bool)

(declare-fun e!4314441 () Bool)

(assert (=> d!2237797 (=> res!2925792 e!4314441)))

(assert (=> d!2237797 (= res!2925792 ((_ is Nil!69653) lt!2570832))))

(assert (=> d!2237797 (= (forall!17177 lt!2570832 lambda!437575) e!4314441)))

(declare-fun b!7184212 () Bool)

(declare-fun e!4314442 () Bool)

(assert (=> b!7184212 (= e!4314441 e!4314442)))

(declare-fun res!2925793 () Bool)

(assert (=> b!7184212 (=> (not res!2925793) (not e!4314442))))

(assert (=> b!7184212 (= res!2925793 (dynLambda!28369 lambda!437575 (h!76101 lt!2570832)))))

(declare-fun b!7184213 () Bool)

(assert (=> b!7184213 (= e!4314442 (forall!17177 (t!383798 lt!2570832) lambda!437575))))

(assert (= (and d!2237797 (not res!2925792)) b!7184212))

(assert (= (and b!7184212 res!2925793) b!7184213))

(declare-fun b_lambda!275049 () Bool)

(assert (=> (not b_lambda!275049) (not b!7184212)))

(declare-fun m!7881396 () Bool)

(assert (=> b!7184212 m!7881396))

(declare-fun m!7881398 () Bool)

(assert (=> b!7184213 m!7881398))

(assert (=> d!2237593 d!2237797))

(declare-fun d!2237799 () Bool)

(declare-fun c!1337577 () Bool)

(assert (=> d!2237799 (= c!1337577 ((_ is Nil!69655) (t!383800 res!2925525)))))

(declare-fun e!4314443 () (InoxSet Context!14602))

(assert (=> d!2237799 (= (content!14316 (t!383800 res!2925525)) e!4314443)))

(declare-fun b!7184214 () Bool)

(assert (=> b!7184214 (= e!4314443 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184215 () Bool)

(assert (=> b!7184215 (= e!4314443 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 (t!383800 res!2925525)) true) (content!14316 (t!383800 (t!383800 res!2925525)))))))

(assert (= (and d!2237799 c!1337577) b!7184214))

(assert (= (and d!2237799 (not c!1337577)) b!7184215))

(declare-fun m!7881400 () Bool)

(assert (=> b!7184215 m!7881400))

(declare-fun m!7881402 () Bool)

(assert (=> b!7184215 m!7881402))

(assert (=> b!7183862 d!2237799))

(declare-fun b!7184216 () Bool)

(declare-fun e!4314448 () Bool)

(declare-fun e!4314446 () Bool)

(assert (=> b!7184216 (= e!4314448 e!4314446)))

(declare-fun res!2925794 () Bool)

(assert (=> b!7184216 (=> (not res!2925794) (not e!4314446))))

(assert (=> b!7184216 (= res!2925794 (and (not ((_ is EmptyLang!18349) (reg!18678 lt!2570807))) (not ((_ is ElementMatch!18349) (reg!18678 lt!2570807)))))))

(declare-fun b!7184217 () Bool)

(declare-fun e!4314449 () Bool)

(declare-fun e!4314447 () Bool)

(assert (=> b!7184217 (= e!4314449 e!4314447)))

(declare-fun c!1337578 () Bool)

(assert (=> b!7184217 (= c!1337578 ((_ is Union!18349) (reg!18678 lt!2570807)))))

(declare-fun d!2237801 () Bool)

(declare-fun res!2925795 () Bool)

(assert (=> d!2237801 (=> res!2925795 e!4314448)))

(assert (=> d!2237801 (= res!2925795 ((_ is EmptyExpr!18349) (reg!18678 lt!2570807)))))

(assert (=> d!2237801 (= (nullableFct!3042 (reg!18678 lt!2570807)) e!4314448)))

(declare-fun bm!654869 () Bool)

(declare-fun call!654874 () Bool)

(assert (=> bm!654869 (= call!654874 (nullable!7776 (ite c!1337578 (regOne!37211 (reg!18678 lt!2570807)) (regOne!37210 (reg!18678 lt!2570807)))))))

(declare-fun b!7184218 () Bool)

(assert (=> b!7184218 (= e!4314446 e!4314449)))

(declare-fun res!2925796 () Bool)

(assert (=> b!7184218 (=> res!2925796 e!4314449)))

(assert (=> b!7184218 (= res!2925796 ((_ is Star!18349) (reg!18678 lt!2570807)))))

(declare-fun b!7184219 () Bool)

(declare-fun e!4314444 () Bool)

(declare-fun call!654875 () Bool)

(assert (=> b!7184219 (= e!4314444 call!654875)))

(declare-fun b!7184220 () Bool)

(declare-fun e!4314445 () Bool)

(assert (=> b!7184220 (= e!4314445 call!654875)))

(declare-fun b!7184221 () Bool)

(assert (=> b!7184221 (= e!4314447 e!4314445)))

(declare-fun res!2925798 () Bool)

(assert (=> b!7184221 (= res!2925798 call!654874)))

(assert (=> b!7184221 (=> (not res!2925798) (not e!4314445))))

(declare-fun b!7184222 () Bool)

(assert (=> b!7184222 (= e!4314447 e!4314444)))

(declare-fun res!2925797 () Bool)

(assert (=> b!7184222 (= res!2925797 call!654874)))

(assert (=> b!7184222 (=> res!2925797 e!4314444)))

(declare-fun bm!654870 () Bool)

(assert (=> bm!654870 (= call!654875 (nullable!7776 (ite c!1337578 (regTwo!37211 (reg!18678 lt!2570807)) (regTwo!37210 (reg!18678 lt!2570807)))))))

(assert (= (and d!2237801 (not res!2925795)) b!7184216))

(assert (= (and b!7184216 res!2925794) b!7184218))

(assert (= (and b!7184218 (not res!2925796)) b!7184217))

(assert (= (and b!7184217 c!1337578) b!7184222))

(assert (= (and b!7184217 (not c!1337578)) b!7184221))

(assert (= (and b!7184222 (not res!2925797)) b!7184219))

(assert (= (and b!7184221 res!2925798) b!7184220))

(assert (= (or b!7184222 b!7184221) bm!654869))

(assert (= (or b!7184219 b!7184220) bm!654870))

(declare-fun m!7881404 () Bool)

(assert (=> bm!654869 m!7881404))

(declare-fun m!7881406 () Bool)

(assert (=> bm!654870 m!7881406))

(assert (=> d!2237549 d!2237801))

(declare-fun d!2237803 () Bool)

(assert (=> d!2237803 (= (head!14664 (exprs!7801 (h!76103 (toList!11292 z!3530)))) (h!76101 (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(assert (=> b!7183726 d!2237803))

(declare-fun d!2237805 () Bool)

(assert (=> d!2237805 (= (nullable!7776 (reg!18678 lt!2570813)) (nullableFct!3042 (reg!18678 lt!2570813)))))

(declare-fun bs!1897293 () Bool)

(assert (= bs!1897293 d!2237805))

(declare-fun m!7881408 () Bool)

(assert (=> bs!1897293 m!7881408))

(assert (=> b!7183745 d!2237805))

(declare-fun d!2237807 () Bool)

(assert (=> d!2237807 (= (nullable!7776 (ite c!1337468 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))))) (nullableFct!3042 (ite c!1337468 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))))))))

(declare-fun bs!1897294 () Bool)

(assert (= bs!1897294 d!2237807))

(declare-fun m!7881410 () Bool)

(assert (=> bs!1897294 m!7881410))

(assert (=> bm!654789 d!2237807))

(declare-fun d!2237809 () Bool)

(declare-fun res!2925799 () Bool)

(declare-fun e!4314450 () Bool)

(assert (=> d!2237809 (=> res!2925799 e!4314450)))

(assert (=> d!2237809 (= res!2925799 ((_ is Nil!69653) (t!383798 (t!383798 (exprs!7801 empty!2967)))))))

(assert (=> d!2237809 (= (forall!17177 (t!383798 (t!383798 (exprs!7801 empty!2967))) lambda!437531) e!4314450)))

(declare-fun b!7184223 () Bool)

(declare-fun e!4314451 () Bool)

(assert (=> b!7184223 (= e!4314450 e!4314451)))

(declare-fun res!2925800 () Bool)

(assert (=> b!7184223 (=> (not res!2925800) (not e!4314451))))

(assert (=> b!7184223 (= res!2925800 (dynLambda!28369 lambda!437531 (h!76101 (t!383798 (t!383798 (exprs!7801 empty!2967))))))))

(declare-fun b!7184224 () Bool)

(assert (=> b!7184224 (= e!4314451 (forall!17177 (t!383798 (t!383798 (t!383798 (exprs!7801 empty!2967)))) lambda!437531))))

(assert (= (and d!2237809 (not res!2925799)) b!7184223))

(assert (= (and b!7184223 res!2925800) b!7184224))

(declare-fun b_lambda!275051 () Bool)

(assert (=> (not b_lambda!275051) (not b!7184223)))

(declare-fun m!7881412 () Bool)

(assert (=> b!7184223 m!7881412))

(declare-fun m!7881414 () Bool)

(assert (=> b!7184224 m!7881414))

(assert (=> b!7183869 d!2237809))

(declare-fun bs!1897295 () Bool)

(declare-fun d!2237811 () Bool)

(assert (= bs!1897295 (and d!2237811 d!2237597)))

(declare-fun lambda!437595 () Int)

(assert (=> bs!1897295 (= lambda!437595 lambda!437576)))

(declare-fun bs!1897296 () Bool)

(assert (= bs!1897296 (and d!2237811 d!2237781)))

(assert (=> bs!1897296 (= lambda!437595 lambda!437592)))

(declare-fun bs!1897297 () Bool)

(assert (= bs!1897297 (and d!2237811 d!2237791)))

(assert (=> bs!1897297 (= lambda!437595 lambda!437594)))

(declare-fun bs!1897298 () Bool)

(assert (= bs!1897298 (and d!2237811 d!2237569)))

(assert (=> bs!1897298 (= lambda!437595 lambda!437569)))

(declare-fun bs!1897299 () Bool)

(assert (= bs!1897299 (and d!2237811 d!2237379)))

(assert (=> bs!1897299 (= lambda!437595 lambda!437531)))

(declare-fun bs!1897300 () Bool)

(assert (= bs!1897300 (and d!2237811 d!2237593)))

(assert (=> bs!1897300 (= lambda!437595 lambda!437575)))

(declare-fun bs!1897301 () Bool)

(assert (= bs!1897301 (and d!2237811 d!2237605)))

(assert (=> bs!1897301 (= lambda!437595 lambda!437578)))

(declare-fun bs!1897302 () Bool)

(assert (= bs!1897302 (and d!2237811 d!2237533)))

(assert (=> bs!1897302 (= lambda!437595 lambda!437566)))

(declare-fun bs!1897303 () Bool)

(assert (= bs!1897303 (and d!2237811 d!2237591)))

(assert (=> bs!1897303 (= lambda!437595 lambda!437574)))

(declare-fun bs!1897304 () Bool)

(assert (= bs!1897304 (and d!2237811 d!2237403)))

(assert (=> bs!1897304 (not (= lambda!437595 lambda!437536))))

(declare-fun bs!1897305 () Bool)

(assert (= bs!1897305 (and d!2237811 d!2237509)))

(assert (=> bs!1897305 (= lambda!437595 lambda!437565)))

(declare-fun bs!1897306 () Bool)

(assert (= bs!1897306 (and d!2237811 d!2237555)))

(assert (=> bs!1897306 (= lambda!437595 lambda!437568)))

(declare-fun bs!1897307 () Bool)

(assert (= bs!1897307 (and d!2237811 d!2237637)))

(assert (=> bs!1897307 (= lambda!437595 lambda!437581)))

(declare-fun bs!1897308 () Bool)

(assert (= bs!1897308 (and d!2237811 d!2237785)))

(assert (=> bs!1897308 (= lambda!437595 lambda!437593)))

(declare-fun bs!1897309 () Bool)

(assert (= bs!1897309 (and d!2237811 d!2237493)))

(assert (=> bs!1897309 (= lambda!437595 lambda!437561)))

(declare-fun bs!1897310 () Bool)

(assert (= bs!1897310 (and d!2237811 d!2237477)))

(assert (=> bs!1897310 (= lambda!437595 lambda!437546)))

(declare-fun bs!1897311 () Bool)

(assert (= bs!1897311 (and d!2237811 d!2237577)))

(assert (=> bs!1897311 (= lambda!437595 lambda!437570)))

(declare-fun bs!1897312 () Bool)

(assert (= bs!1897312 (and d!2237811 d!2237395)))

(assert (=> bs!1897312 (= lambda!437595 lambda!437532)))

(declare-fun bs!1897313 () Bool)

(assert (= bs!1897313 (and d!2237811 d!2237551)))

(assert (=> bs!1897313 (= lambda!437595 lambda!437567)))

(declare-fun b!7184225 () Bool)

(declare-fun e!4314454 () Regex!18349)

(assert (=> b!7184225 (= e!4314454 (Union!18349 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))) (generalisedUnion!2771 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))))

(declare-fun b!7184226 () Bool)

(declare-fun e!4314452 () Regex!18349)

(assert (=> b!7184226 (= e!4314452 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7184227 () Bool)

(declare-fun e!4314453 () Bool)

(declare-fun lt!2570851 () Regex!18349)

(assert (=> b!7184227 (= e!4314453 (isUnion!1579 lt!2570851))))

(declare-fun b!7184229 () Bool)

(assert (=> b!7184229 (= e!4314454 EmptyLang!18349)))

(declare-fun b!7184230 () Bool)

(declare-fun e!4314456 () Bool)

(declare-fun e!4314455 () Bool)

(assert (=> b!7184230 (= e!4314456 e!4314455)))

(declare-fun c!1337580 () Bool)

(assert (=> b!7184230 (= c!1337580 (isEmpty!40211 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7184231 () Bool)

(declare-fun e!4314457 () Bool)

(assert (=> b!7184231 (= e!4314457 (isEmpty!40211 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))))

(declare-fun b!7184232 () Bool)

(assert (=> b!7184232 (= e!4314453 (= lt!2570851 (head!14664 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))))

(declare-fun b!7184233 () Bool)

(assert (=> b!7184233 (= e!4314452 e!4314454)))

(declare-fun c!1337582 () Bool)

(assert (=> b!7184233 (= c!1337582 ((_ is Cons!69653) (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7184234 () Bool)

(assert (=> b!7184234 (= e!4314455 e!4314453)))

(declare-fun c!1337581 () Bool)

(assert (=> b!7184234 (= c!1337581 (isEmpty!40211 (tail!14069 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))))

(assert (=> d!2237811 e!4314456))

(declare-fun res!2925801 () Bool)

(assert (=> d!2237811 (=> (not res!2925801) (not e!4314456))))

(assert (=> d!2237811 (= res!2925801 (validRegex!9468 lt!2570851))))

(assert (=> d!2237811 (= lt!2570851 e!4314452)))

(declare-fun c!1337579 () Bool)

(assert (=> d!2237811 (= c!1337579 e!4314457)))

(declare-fun res!2925802 () Bool)

(assert (=> d!2237811 (=> (not res!2925802) (not e!4314457))))

(assert (=> d!2237811 (= res!2925802 ((_ is Cons!69653) (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(assert (=> d!2237811 (forall!17177 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) lambda!437595)))

(assert (=> d!2237811 (= (generalisedUnion!2771 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))) lt!2570851)))

(declare-fun b!7184228 () Bool)

(assert (=> b!7184228 (= e!4314455 (isEmptyLang!2151 lt!2570851))))

(assert (= (and d!2237811 res!2925802) b!7184231))

(assert (= (and d!2237811 c!1337579) b!7184226))

(assert (= (and d!2237811 (not c!1337579)) b!7184233))

(assert (= (and b!7184233 c!1337582) b!7184225))

(assert (= (and b!7184233 (not c!1337582)) b!7184229))

(assert (= (and d!2237811 res!2925801) b!7184230))

(assert (= (and b!7184230 c!1337580) b!7184228))

(assert (= (and b!7184230 (not c!1337580)) b!7184234))

(assert (= (and b!7184234 c!1337581) b!7184232))

(assert (= (and b!7184234 (not c!1337581)) b!7184227))

(declare-fun m!7881416 () Bool)

(assert (=> b!7184227 m!7881416))

(assert (=> b!7184230 m!7880982))

(declare-fun m!7881418 () Bool)

(assert (=> b!7184228 m!7881418))

(declare-fun m!7881420 () Bool)

(assert (=> d!2237811 m!7881420))

(declare-fun m!7881422 () Bool)

(assert (=> d!2237811 m!7881422))

(declare-fun m!7881424 () Bool)

(assert (=> b!7184231 m!7881424))

(declare-fun m!7881426 () Bool)

(assert (=> b!7184234 m!7881426))

(assert (=> b!7184234 m!7881426))

(declare-fun m!7881428 () Bool)

(assert (=> b!7184234 m!7881428))

(declare-fun m!7881430 () Bool)

(assert (=> b!7184225 m!7881430))

(declare-fun m!7881432 () Bool)

(assert (=> b!7184232 m!7881432))

(assert (=> b!7183746 d!2237811))

(assert (=> d!2237655 d!2237587))

(declare-fun d!2237813 () Bool)

(declare-fun res!2925803 () Bool)

(declare-fun e!4314458 () Bool)

(assert (=> d!2237813 (=> res!2925803 e!4314458)))

(assert (=> d!2237813 (= res!2925803 ((_ is Nil!69653) (exprs!7801 setElem!53145)))))

(assert (=> d!2237813 (= (forall!17177 (exprs!7801 setElem!53145) lambda!437581) e!4314458)))

(declare-fun b!7184235 () Bool)

(declare-fun e!4314459 () Bool)

(assert (=> b!7184235 (= e!4314458 e!4314459)))

(declare-fun res!2925804 () Bool)

(assert (=> b!7184235 (=> (not res!2925804) (not e!4314459))))

(assert (=> b!7184235 (= res!2925804 (dynLambda!28369 lambda!437581 (h!76101 (exprs!7801 setElem!53145))))))

(declare-fun b!7184236 () Bool)

(assert (=> b!7184236 (= e!4314459 (forall!17177 (t!383798 (exprs!7801 setElem!53145)) lambda!437581))))

(assert (= (and d!2237813 (not res!2925803)) b!7184235))

(assert (= (and b!7184235 res!2925804) b!7184236))

(declare-fun b_lambda!275053 () Bool)

(assert (=> (not b_lambda!275053) (not b!7184235)))

(declare-fun m!7881434 () Bool)

(assert (=> b!7184235 m!7881434))

(declare-fun m!7881436 () Bool)

(assert (=> b!7184236 m!7881436))

(assert (=> d!2237637 d!2237813))

(declare-fun b!7184237 () Bool)

(declare-fun e!4314464 () Bool)

(declare-fun e!4314462 () Bool)

(assert (=> b!7184237 (= e!4314464 e!4314462)))

(declare-fun res!2925805 () Bool)

(assert (=> b!7184237 (=> (not res!2925805) (not e!4314462))))

(assert (=> b!7184237 (= res!2925805 (and (not ((_ is EmptyLang!18349) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (not ((_ is ElementMatch!18349) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))

(declare-fun b!7184238 () Bool)

(declare-fun e!4314465 () Bool)

(declare-fun e!4314463 () Bool)

(assert (=> b!7184238 (= e!4314465 e!4314463)))

(declare-fun c!1337583 () Bool)

(assert (=> b!7184238 (= c!1337583 ((_ is Union!18349) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))

(declare-fun d!2237815 () Bool)

(declare-fun res!2925806 () Bool)

(assert (=> d!2237815 (=> res!2925806 e!4314464)))

(assert (=> d!2237815 (= res!2925806 ((_ is EmptyExpr!18349) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))

(assert (=> d!2237815 (= (nullableFct!3042 (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))) e!4314464)))

(declare-fun bm!654871 () Bool)

(declare-fun call!654876 () Bool)

(assert (=> bm!654871 (= call!654876 (nullable!7776 (ite c!1337583 (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))

(declare-fun b!7184239 () Bool)

(assert (=> b!7184239 (= e!4314462 e!4314465)))

(declare-fun res!2925807 () Bool)

(assert (=> b!7184239 (=> res!2925807 e!4314465)))

(assert (=> b!7184239 (= res!2925807 ((_ is Star!18349) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))

(declare-fun b!7184240 () Bool)

(declare-fun e!4314460 () Bool)

(declare-fun call!654877 () Bool)

(assert (=> b!7184240 (= e!4314460 call!654877)))

(declare-fun b!7184241 () Bool)

(declare-fun e!4314461 () Bool)

(assert (=> b!7184241 (= e!4314461 call!654877)))

(declare-fun b!7184242 () Bool)

(assert (=> b!7184242 (= e!4314463 e!4314461)))

(declare-fun res!2925809 () Bool)

(assert (=> b!7184242 (= res!2925809 call!654876)))

(assert (=> b!7184242 (=> (not res!2925809) (not e!4314461))))

(declare-fun b!7184243 () Bool)

(assert (=> b!7184243 (= e!4314463 e!4314460)))

(declare-fun res!2925808 () Bool)

(assert (=> b!7184243 (= res!2925808 call!654876)))

(assert (=> b!7184243 (=> res!2925808 e!4314460)))

(declare-fun bm!654872 () Bool)

(assert (=> bm!654872 (= call!654877 (nullable!7776 (ite c!1337583 (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))

(assert (= (and d!2237815 (not res!2925806)) b!7184237))

(assert (= (and b!7184237 res!2925805) b!7184239))

(assert (= (and b!7184239 (not res!2925807)) b!7184238))

(assert (= (and b!7184238 c!1337583) b!7184243))

(assert (= (and b!7184238 (not c!1337583)) b!7184242))

(assert (= (and b!7184243 (not res!2925808)) b!7184240))

(assert (= (and b!7184242 res!2925809) b!7184241))

(assert (= (or b!7184243 b!7184242) bm!654871))

(assert (= (or b!7184240 b!7184241) bm!654872))

(declare-fun m!7881438 () Bool)

(assert (=> bm!654871 m!7881438))

(declare-fun m!7881440 () Bool)

(assert (=> bm!654872 m!7881440))

(assert (=> d!2237633 d!2237815))

(assert (=> d!2237647 d!2237579))

(declare-fun d!2237817 () Bool)

(assert (=> d!2237817 (= (nullable!7776 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))) (nullableFct!3042 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))

(declare-fun bs!1897314 () Bool)

(assert (= bs!1897314 d!2237817))

(declare-fun m!7881442 () Bool)

(assert (=> bs!1897314 m!7881442))

(assert (=> b!7183829 d!2237817))

(declare-fun b!7184244 () Bool)

(declare-fun res!2925813 () Bool)

(declare-fun e!4314471 () Bool)

(assert (=> b!7184244 (=> (not res!2925813) (not e!4314471))))

(declare-fun call!654878 () Bool)

(assert (=> b!7184244 (= res!2925813 call!654878)))

(declare-fun e!4314469 () Bool)

(assert (=> b!7184244 (= e!4314469 e!4314471)))

(declare-fun b!7184245 () Bool)

(declare-fun e!4314468 () Bool)

(declare-fun call!654879 () Bool)

(assert (=> b!7184245 (= e!4314468 call!654879)))

(declare-fun bm!654873 () Bool)

(declare-fun call!654880 () Bool)

(assert (=> bm!654873 (= call!654879 call!654880)))

(declare-fun b!7184246 () Bool)

(declare-fun e!4314467 () Bool)

(assert (=> b!7184246 (= e!4314467 e!4314468)))

(declare-fun res!2925810 () Bool)

(assert (=> b!7184246 (=> (not res!2925810) (not e!4314468))))

(assert (=> b!7184246 (= res!2925810 call!654878)))

(declare-fun bm!654874 () Bool)

(declare-fun c!1337585 () Bool)

(assert (=> bm!654874 (= call!654878 (validRegex!9468 (ite c!1337585 (regOne!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))) (regOne!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))))))

(declare-fun b!7184247 () Bool)

(declare-fun e!4314470 () Bool)

(declare-fun e!4314472 () Bool)

(assert (=> b!7184247 (= e!4314470 e!4314472)))

(declare-fun c!1337584 () Bool)

(assert (=> b!7184247 (= c!1337584 ((_ is Star!18349) (h!76101 (t!383798 (exprs!7801 empty!2967)))))))

(declare-fun d!2237819 () Bool)

(declare-fun res!2925811 () Bool)

(assert (=> d!2237819 (=> res!2925811 e!4314470)))

(assert (=> d!2237819 (= res!2925811 ((_ is ElementMatch!18349) (h!76101 (t!383798 (exprs!7801 empty!2967)))))))

(assert (=> d!2237819 (= (validRegex!9468 (h!76101 (t!383798 (exprs!7801 empty!2967)))) e!4314470)))

(declare-fun b!7184248 () Bool)

(declare-fun e!4314466 () Bool)

(assert (=> b!7184248 (= e!4314466 call!654880)))

(declare-fun b!7184249 () Bool)

(assert (=> b!7184249 (= e!4314472 e!4314469)))

(assert (=> b!7184249 (= c!1337585 ((_ is Union!18349) (h!76101 (t!383798 (exprs!7801 empty!2967)))))))

(declare-fun bm!654875 () Bool)

(assert (=> bm!654875 (= call!654880 (validRegex!9468 (ite c!1337584 (reg!18678 (h!76101 (t!383798 (exprs!7801 empty!2967)))) (ite c!1337585 (regTwo!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 empty!2967))))))))))

(declare-fun b!7184250 () Bool)

(assert (=> b!7184250 (= e!4314471 call!654879)))

(declare-fun b!7184251 () Bool)

(declare-fun res!2925812 () Bool)

(assert (=> b!7184251 (=> res!2925812 e!4314467)))

(assert (=> b!7184251 (= res!2925812 (not ((_ is Concat!27194) (h!76101 (t!383798 (exprs!7801 empty!2967))))))))

(assert (=> b!7184251 (= e!4314469 e!4314467)))

(declare-fun b!7184252 () Bool)

(assert (=> b!7184252 (= e!4314472 e!4314466)))

(declare-fun res!2925814 () Bool)

(assert (=> b!7184252 (= res!2925814 (not (nullable!7776 (reg!18678 (h!76101 (t!383798 (exprs!7801 empty!2967)))))))))

(assert (=> b!7184252 (=> (not res!2925814) (not e!4314466))))

(assert (= (and d!2237819 (not res!2925811)) b!7184247))

(assert (= (and b!7184247 c!1337584) b!7184252))

(assert (= (and b!7184247 (not c!1337584)) b!7184249))

(assert (= (and b!7184252 res!2925814) b!7184248))

(assert (= (and b!7184249 c!1337585) b!7184244))

(assert (= (and b!7184249 (not c!1337585)) b!7184251))

(assert (= (and b!7184244 res!2925813) b!7184250))

(assert (= (and b!7184251 (not res!2925812)) b!7184246))

(assert (= (and b!7184246 res!2925810) b!7184245))

(assert (= (or b!7184244 b!7184246) bm!654874))

(assert (= (or b!7184250 b!7184245) bm!654873))

(assert (= (or b!7184248 bm!654873) bm!654875))

(declare-fun m!7881444 () Bool)

(assert (=> bm!654874 m!7881444))

(declare-fun m!7881446 () Bool)

(assert (=> bm!654875 m!7881446))

(declare-fun m!7881448 () Bool)

(assert (=> b!7184252 m!7881448))

(assert (=> bs!1897140 d!2237819))

(declare-fun b!7184253 () Bool)

(declare-fun res!2925818 () Bool)

(declare-fun e!4314478 () Bool)

(assert (=> b!7184253 (=> (not res!2925818) (not e!4314478))))

(declare-fun call!654881 () Bool)

(assert (=> b!7184253 (= res!2925818 call!654881)))

(declare-fun e!4314476 () Bool)

(assert (=> b!7184253 (= e!4314476 e!4314478)))

(declare-fun b!7184254 () Bool)

(declare-fun e!4314475 () Bool)

(declare-fun call!654882 () Bool)

(assert (=> b!7184254 (= e!4314475 call!654882)))

(declare-fun bm!654876 () Bool)

(declare-fun call!654883 () Bool)

(assert (=> bm!654876 (= call!654882 call!654883)))

(declare-fun b!7184255 () Bool)

(declare-fun e!4314474 () Bool)

(assert (=> b!7184255 (= e!4314474 e!4314475)))

(declare-fun res!2925815 () Bool)

(assert (=> b!7184255 (=> (not res!2925815) (not e!4314475))))

(assert (=> b!7184255 (= res!2925815 call!654881)))

(declare-fun bm!654877 () Bool)

(declare-fun c!1337587 () Bool)

(assert (=> bm!654877 (= call!654881 (validRegex!9468 (ite c!1337587 (regOne!37211 (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) (regOne!37210 (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))))))))

(declare-fun b!7184256 () Bool)

(declare-fun e!4314477 () Bool)

(declare-fun e!4314479 () Bool)

(assert (=> b!7184256 (= e!4314477 e!4314479)))

(declare-fun c!1337586 () Bool)

(assert (=> b!7184256 (= c!1337586 ((_ is Star!18349) (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))))))

(declare-fun d!2237821 () Bool)

(declare-fun res!2925816 () Bool)

(assert (=> d!2237821 (=> res!2925816 e!4314477)))

(assert (=> d!2237821 (= res!2925816 ((_ is ElementMatch!18349) (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))))))

(assert (=> d!2237821 (= (validRegex!9468 (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) e!4314477)))

(declare-fun b!7184257 () Bool)

(declare-fun e!4314473 () Bool)

(assert (=> b!7184257 (= e!4314473 call!654883)))

(declare-fun b!7184258 () Bool)

(assert (=> b!7184258 (= e!4314479 e!4314476)))

(assert (=> b!7184258 (= c!1337587 ((_ is Union!18349) (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))))))

(declare-fun bm!654878 () Bool)

(assert (=> bm!654878 (= call!654883 (validRegex!9468 (ite c!1337586 (reg!18678 (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) (ite c!1337587 (regTwo!37211 (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) (regTwo!37210 (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131))))))))))))

(declare-fun b!7184259 () Bool)

(assert (=> b!7184259 (= e!4314478 call!654882)))

(declare-fun b!7184260 () Bool)

(declare-fun res!2925817 () Bool)

(assert (=> b!7184260 (=> res!2925817 e!4314474)))

(assert (=> b!7184260 (= res!2925817 (not ((_ is Concat!27194) (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131))))))))))

(assert (=> b!7184260 (= e!4314476 e!4314474)))

(declare-fun b!7184261 () Bool)

(assert (=> b!7184261 (= e!4314479 e!4314473)))

(declare-fun res!2925819 () Bool)

(assert (=> b!7184261 (= res!2925819 (not (nullable!7776 (reg!18678 (ite c!1337511 (reg!18678 (h!76101 (exprs!7801 setElem!53131))) (ite c!1337512 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))))))))

(assert (=> b!7184261 (=> (not res!2925819) (not e!4314473))))

(assert (= (and d!2237821 (not res!2925816)) b!7184256))

(assert (= (and b!7184256 c!1337586) b!7184261))

(assert (= (and b!7184256 (not c!1337586)) b!7184258))

(assert (= (and b!7184261 res!2925819) b!7184257))

(assert (= (and b!7184258 c!1337587) b!7184253))

(assert (= (and b!7184258 (not c!1337587)) b!7184260))

(assert (= (and b!7184253 res!2925818) b!7184259))

(assert (= (and b!7184260 (not res!2925817)) b!7184255))

(assert (= (and b!7184255 res!2925815) b!7184254))

(assert (= (or b!7184253 b!7184255) bm!654877))

(assert (= (or b!7184259 b!7184254) bm!654876))

(assert (= (or b!7184257 bm!654876) bm!654878))

(declare-fun m!7881450 () Bool)

(assert (=> bm!654877 m!7881450))

(declare-fun m!7881452 () Bool)

(assert (=> bm!654878 m!7881452))

(declare-fun m!7881454 () Bool)

(assert (=> b!7184261 m!7881454))

(assert (=> bm!654819 d!2237821))

(declare-fun b!7184262 () Bool)

(declare-fun res!2925823 () Bool)

(declare-fun e!4314485 () Bool)

(assert (=> b!7184262 (=> (not res!2925823) (not e!4314485))))

(declare-fun call!654884 () Bool)

(assert (=> b!7184262 (= res!2925823 call!654884)))

(declare-fun e!4314483 () Bool)

(assert (=> b!7184262 (= e!4314483 e!4314485)))

(declare-fun b!7184263 () Bool)

(declare-fun e!4314482 () Bool)

(declare-fun call!654885 () Bool)

(assert (=> b!7184263 (= e!4314482 call!654885)))

(declare-fun bm!654879 () Bool)

(declare-fun call!654886 () Bool)

(assert (=> bm!654879 (= call!654885 call!654886)))

(declare-fun b!7184264 () Bool)

(declare-fun e!4314481 () Bool)

(assert (=> b!7184264 (= e!4314481 e!4314482)))

(declare-fun res!2925820 () Bool)

(assert (=> b!7184264 (=> (not res!2925820) (not e!4314482))))

(assert (=> b!7184264 (= res!2925820 call!654884)))

(declare-fun bm!654880 () Bool)

(declare-fun c!1337589 () Bool)

(assert (=> bm!654880 (= call!654884 (validRegex!9468 (ite c!1337589 (regOne!37211 lt!2570831) (regOne!37210 lt!2570831))))))

(declare-fun b!7184265 () Bool)

(declare-fun e!4314484 () Bool)

(declare-fun e!4314486 () Bool)

(assert (=> b!7184265 (= e!4314484 e!4314486)))

(declare-fun c!1337588 () Bool)

(assert (=> b!7184265 (= c!1337588 ((_ is Star!18349) lt!2570831))))

(declare-fun d!2237823 () Bool)

(declare-fun res!2925821 () Bool)

(assert (=> d!2237823 (=> res!2925821 e!4314484)))

(assert (=> d!2237823 (= res!2925821 ((_ is ElementMatch!18349) lt!2570831))))

(assert (=> d!2237823 (= (validRegex!9468 lt!2570831) e!4314484)))

(declare-fun b!7184266 () Bool)

(declare-fun e!4314480 () Bool)

(assert (=> b!7184266 (= e!4314480 call!654886)))

(declare-fun b!7184267 () Bool)

(assert (=> b!7184267 (= e!4314486 e!4314483)))

(assert (=> b!7184267 (= c!1337589 ((_ is Union!18349) lt!2570831))))

(declare-fun bm!654881 () Bool)

(assert (=> bm!654881 (= call!654886 (validRegex!9468 (ite c!1337588 (reg!18678 lt!2570831) (ite c!1337589 (regTwo!37211 lt!2570831) (regTwo!37210 lt!2570831)))))))

(declare-fun b!7184268 () Bool)

(assert (=> b!7184268 (= e!4314485 call!654885)))

(declare-fun b!7184269 () Bool)

(declare-fun res!2925822 () Bool)

(assert (=> b!7184269 (=> res!2925822 e!4314481)))

(assert (=> b!7184269 (= res!2925822 (not ((_ is Concat!27194) lt!2570831)))))

(assert (=> b!7184269 (= e!4314483 e!4314481)))

(declare-fun b!7184270 () Bool)

(assert (=> b!7184270 (= e!4314486 e!4314480)))

(declare-fun res!2925824 () Bool)

(assert (=> b!7184270 (= res!2925824 (not (nullable!7776 (reg!18678 lt!2570831))))))

(assert (=> b!7184270 (=> (not res!2925824) (not e!4314480))))

(assert (= (and d!2237823 (not res!2925821)) b!7184265))

(assert (= (and b!7184265 c!1337588) b!7184270))

(assert (= (and b!7184265 (not c!1337588)) b!7184267))

(assert (= (and b!7184270 res!2925824) b!7184266))

(assert (= (and b!7184267 c!1337589) b!7184262))

(assert (= (and b!7184267 (not c!1337589)) b!7184269))

(assert (= (and b!7184262 res!2925823) b!7184268))

(assert (= (and b!7184269 (not res!2925822)) b!7184264))

(assert (= (and b!7184264 res!2925820) b!7184263))

(assert (= (or b!7184262 b!7184264) bm!654880))

(assert (= (or b!7184268 b!7184263) bm!654879))

(assert (= (or b!7184266 bm!654879) bm!654881))

(declare-fun m!7881456 () Bool)

(assert (=> bm!654880 m!7881456))

(declare-fun m!7881458 () Bool)

(assert (=> bm!654881 m!7881458))

(declare-fun m!7881460 () Bool)

(assert (=> b!7184270 m!7881460))

(assert (=> d!2237591 d!2237823))

(declare-fun d!2237825 () Bool)

(declare-fun res!2925825 () Bool)

(declare-fun e!4314487 () Bool)

(assert (=> d!2237825 (=> res!2925825 e!4314487)))

(assert (=> d!2237825 (= res!2925825 ((_ is Nil!69653) (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(assert (=> d!2237825 (= (forall!17177 (exprs!7801 (h!76103 (toList!11292 z!3530))) lambda!437574) e!4314487)))

(declare-fun b!7184271 () Bool)

(declare-fun e!4314488 () Bool)

(assert (=> b!7184271 (= e!4314487 e!4314488)))

(declare-fun res!2925826 () Bool)

(assert (=> b!7184271 (=> (not res!2925826) (not e!4314488))))

(assert (=> b!7184271 (= res!2925826 (dynLambda!28369 lambda!437574 (h!76101 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun b!7184272 () Bool)

(assert (=> b!7184272 (= e!4314488 (forall!17177 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530)))) lambda!437574))))

(assert (= (and d!2237825 (not res!2925825)) b!7184271))

(assert (= (and b!7184271 res!2925826) b!7184272))

(declare-fun b_lambda!275055 () Bool)

(assert (=> (not b_lambda!275055) (not b!7184271)))

(declare-fun m!7881462 () Bool)

(assert (=> b!7184271 m!7881462))

(declare-fun m!7881464 () Bool)

(assert (=> b!7184272 m!7881464))

(assert (=> d!2237591 d!2237825))

(declare-fun d!2237827 () Bool)

(assert (=> d!2237827 (= (isEmpty!40211 (tail!14069 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))) ((_ is Nil!69653) (tail!14069 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(assert (=> b!7183755 d!2237827))

(declare-fun d!2237829 () Bool)

(assert (=> d!2237829 (= (tail!14069 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(assert (=> b!7183755 d!2237829))

(declare-fun b!7184273 () Bool)

(declare-fun res!2925830 () Bool)

(declare-fun e!4314494 () Bool)

(assert (=> b!7184273 (=> (not res!2925830) (not e!4314494))))

(declare-fun call!654887 () Bool)

(assert (=> b!7184273 (= res!2925830 call!654887)))

(declare-fun e!4314492 () Bool)

(assert (=> b!7184273 (= e!4314492 e!4314494)))

(declare-fun b!7184274 () Bool)

(declare-fun e!4314491 () Bool)

(declare-fun call!654888 () Bool)

(assert (=> b!7184274 (= e!4314491 call!654888)))

(declare-fun bm!654882 () Bool)

(declare-fun call!654889 () Bool)

(assert (=> bm!654882 (= call!654888 call!654889)))

(declare-fun b!7184275 () Bool)

(declare-fun e!4314490 () Bool)

(assert (=> b!7184275 (= e!4314490 e!4314491)))

(declare-fun res!2925827 () Bool)

(assert (=> b!7184275 (=> (not res!2925827) (not e!4314491))))

(assert (=> b!7184275 (= res!2925827 call!654887)))

(declare-fun bm!654883 () Bool)

(declare-fun c!1337591 () Bool)

(assert (=> bm!654883 (= call!654887 (validRegex!9468 (ite c!1337591 (regOne!37211 lt!2570827) (regOne!37210 lt!2570827))))))

(declare-fun b!7184276 () Bool)

(declare-fun e!4314493 () Bool)

(declare-fun e!4314495 () Bool)

(assert (=> b!7184276 (= e!4314493 e!4314495)))

(declare-fun c!1337590 () Bool)

(assert (=> b!7184276 (= c!1337590 ((_ is Star!18349) lt!2570827))))

(declare-fun d!2237831 () Bool)

(declare-fun res!2925828 () Bool)

(assert (=> d!2237831 (=> res!2925828 e!4314493)))

(assert (=> d!2237831 (= res!2925828 ((_ is ElementMatch!18349) lt!2570827))))

(assert (=> d!2237831 (= (validRegex!9468 lt!2570827) e!4314493)))

(declare-fun b!7184277 () Bool)

(declare-fun e!4314489 () Bool)

(assert (=> b!7184277 (= e!4314489 call!654889)))

(declare-fun b!7184278 () Bool)

(assert (=> b!7184278 (= e!4314495 e!4314492)))

(assert (=> b!7184278 (= c!1337591 ((_ is Union!18349) lt!2570827))))

(declare-fun bm!654884 () Bool)

(assert (=> bm!654884 (= call!654889 (validRegex!9468 (ite c!1337590 (reg!18678 lt!2570827) (ite c!1337591 (regTwo!37211 lt!2570827) (regTwo!37210 lt!2570827)))))))

(declare-fun b!7184279 () Bool)

(assert (=> b!7184279 (= e!4314494 call!654888)))

(declare-fun b!7184280 () Bool)

(declare-fun res!2925829 () Bool)

(assert (=> b!7184280 (=> res!2925829 e!4314490)))

(assert (=> b!7184280 (= res!2925829 (not ((_ is Concat!27194) lt!2570827)))))

(assert (=> b!7184280 (= e!4314492 e!4314490)))

(declare-fun b!7184281 () Bool)

(assert (=> b!7184281 (= e!4314495 e!4314489)))

(declare-fun res!2925831 () Bool)

(assert (=> b!7184281 (= res!2925831 (not (nullable!7776 (reg!18678 lt!2570827))))))

(assert (=> b!7184281 (=> (not res!2925831) (not e!4314489))))

(assert (= (and d!2237831 (not res!2925828)) b!7184276))

(assert (= (and b!7184276 c!1337590) b!7184281))

(assert (= (and b!7184276 (not c!1337590)) b!7184278))

(assert (= (and b!7184281 res!2925831) b!7184277))

(assert (= (and b!7184278 c!1337591) b!7184273))

(assert (= (and b!7184278 (not c!1337591)) b!7184280))

(assert (= (and b!7184273 res!2925830) b!7184279))

(assert (= (and b!7184280 (not res!2925829)) b!7184275))

(assert (= (and b!7184275 res!2925827) b!7184274))

(assert (= (or b!7184273 b!7184275) bm!654883))

(assert (= (or b!7184279 b!7184274) bm!654882))

(assert (= (or b!7184277 bm!654882) bm!654884))

(declare-fun m!7881466 () Bool)

(assert (=> bm!654883 m!7881466))

(declare-fun m!7881468 () Bool)

(assert (=> bm!654884 m!7881468))

(declare-fun m!7881470 () Bool)

(assert (=> b!7184281 m!7881470))

(assert (=> d!2237551 d!2237831))

(declare-fun d!2237833 () Bool)

(declare-fun res!2925832 () Bool)

(declare-fun e!4314496 () Bool)

(assert (=> d!2237833 (=> res!2925832 e!4314496)))

(assert (=> d!2237833 (= res!2925832 ((_ is Nil!69653) (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> d!2237833 (= (forall!17177 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))) lambda!437567) e!4314496)))

(declare-fun b!7184282 () Bool)

(declare-fun e!4314497 () Bool)

(assert (=> b!7184282 (= e!4314496 e!4314497)))

(declare-fun res!2925833 () Bool)

(assert (=> b!7184282 (=> (not res!2925833) (not e!4314497))))

(assert (=> b!7184282 (= res!2925833 (dynLambda!28369 lambda!437567 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun b!7184283 () Bool)

(assert (=> b!7184283 (= e!4314497 (forall!17177 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))) lambda!437567))))

(assert (= (and d!2237833 (not res!2925832)) b!7184282))

(assert (= (and b!7184282 res!2925833) b!7184283))

(declare-fun b_lambda!275057 () Bool)

(assert (=> (not b_lambda!275057) (not b!7184282)))

(declare-fun m!7881472 () Bool)

(assert (=> b!7184282 m!7881472))

(declare-fun m!7881474 () Bool)

(assert (=> b!7184283 m!7881474))

(assert (=> d!2237551 d!2237833))

(declare-fun d!2237835 () Bool)

(assert (=> d!2237835 (= (head!14664 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))) (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> b!7183644 d!2237835))

(declare-fun b!7184284 () Bool)

(declare-fun res!2925837 () Bool)

(declare-fun e!4314503 () Bool)

(assert (=> b!7184284 (=> (not res!2925837) (not e!4314503))))

(declare-fun call!654890 () Bool)

(assert (=> b!7184284 (= res!2925837 call!654890)))

(declare-fun e!4314501 () Bool)

(assert (=> b!7184284 (= e!4314501 e!4314503)))

(declare-fun b!7184285 () Bool)

(declare-fun e!4314500 () Bool)

(declare-fun call!654891 () Bool)

(assert (=> b!7184285 (= e!4314500 call!654891)))

(declare-fun bm!654885 () Bool)

(declare-fun call!654892 () Bool)

(assert (=> bm!654885 (= call!654891 call!654892)))

(declare-fun b!7184286 () Bool)

(declare-fun e!4314499 () Bool)

(assert (=> b!7184286 (= e!4314499 e!4314500)))

(declare-fun res!2925834 () Bool)

(assert (=> b!7184286 (=> (not res!2925834) (not e!4314500))))

(assert (=> b!7184286 (= res!2925834 call!654890)))

(declare-fun bm!654886 () Bool)

(declare-fun c!1337593 () Bool)

(assert (=> bm!654886 (= call!654890 (validRegex!9468 (ite c!1337593 (regOne!37211 (h!76101 (exprs!7801 setElem!53137))) (regOne!37210 (h!76101 (exprs!7801 setElem!53137))))))))

(declare-fun b!7184287 () Bool)

(declare-fun e!4314502 () Bool)

(declare-fun e!4314504 () Bool)

(assert (=> b!7184287 (= e!4314502 e!4314504)))

(declare-fun c!1337592 () Bool)

(assert (=> b!7184287 (= c!1337592 ((_ is Star!18349) (h!76101 (exprs!7801 setElem!53137))))))

(declare-fun d!2237837 () Bool)

(declare-fun res!2925835 () Bool)

(assert (=> d!2237837 (=> res!2925835 e!4314502)))

(assert (=> d!2237837 (= res!2925835 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 setElem!53137))))))

(assert (=> d!2237837 (= (validRegex!9468 (h!76101 (exprs!7801 setElem!53137))) e!4314502)))

(declare-fun b!7184288 () Bool)

(declare-fun e!4314498 () Bool)

(assert (=> b!7184288 (= e!4314498 call!654892)))

(declare-fun b!7184289 () Bool)

(assert (=> b!7184289 (= e!4314504 e!4314501)))

(assert (=> b!7184289 (= c!1337593 ((_ is Union!18349) (h!76101 (exprs!7801 setElem!53137))))))

(declare-fun bm!654887 () Bool)

(assert (=> bm!654887 (= call!654892 (validRegex!9468 (ite c!1337592 (reg!18678 (h!76101 (exprs!7801 setElem!53137))) (ite c!1337593 (regTwo!37211 (h!76101 (exprs!7801 setElem!53137))) (regTwo!37210 (h!76101 (exprs!7801 setElem!53137)))))))))

(declare-fun b!7184290 () Bool)

(assert (=> b!7184290 (= e!4314503 call!654891)))

(declare-fun b!7184291 () Bool)

(declare-fun res!2925836 () Bool)

(assert (=> b!7184291 (=> res!2925836 e!4314499)))

(assert (=> b!7184291 (= res!2925836 (not ((_ is Concat!27194) (h!76101 (exprs!7801 setElem!53137)))))))

(assert (=> b!7184291 (= e!4314501 e!4314499)))

(declare-fun b!7184292 () Bool)

(assert (=> b!7184292 (= e!4314504 e!4314498)))

(declare-fun res!2925838 () Bool)

(assert (=> b!7184292 (= res!2925838 (not (nullable!7776 (reg!18678 (h!76101 (exprs!7801 setElem!53137))))))))

(assert (=> b!7184292 (=> (not res!2925838) (not e!4314498))))

(assert (= (and d!2237837 (not res!2925835)) b!7184287))

(assert (= (and b!7184287 c!1337592) b!7184292))

(assert (= (and b!7184287 (not c!1337592)) b!7184289))

(assert (= (and b!7184292 res!2925838) b!7184288))

(assert (= (and b!7184289 c!1337593) b!7184284))

(assert (= (and b!7184289 (not c!1337593)) b!7184291))

(assert (= (and b!7184284 res!2925837) b!7184290))

(assert (= (and b!7184291 (not res!2925836)) b!7184286))

(assert (= (and b!7184286 res!2925834) b!7184285))

(assert (= (or b!7184284 b!7184286) bm!654886))

(assert (= (or b!7184290 b!7184285) bm!654885))

(assert (= (or b!7184288 bm!654885) bm!654887))

(declare-fun m!7881476 () Bool)

(assert (=> bm!654886 m!7881476))

(declare-fun m!7881478 () Bool)

(assert (=> bm!654887 m!7881478))

(declare-fun m!7881480 () Bool)

(assert (=> b!7184292 m!7881480))

(assert (=> bs!1897136 d!2237837))

(declare-fun d!2237839 () Bool)

(assert (=> d!2237839 (= ($colon$colon!2843 (exprs!7801 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738))) (ite (or c!1337472 c!1337471) (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))) (Cons!69653 (ite (or c!1337472 c!1337471) (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (exprs!7801 (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)))))))

(assert (=> bm!654790 d!2237839))

(declare-fun b!7184293 () Bool)

(declare-fun res!2925842 () Bool)

(declare-fun e!4314510 () Bool)

(assert (=> b!7184293 (=> (not res!2925842) (not e!4314510))))

(declare-fun call!654893 () Bool)

(assert (=> b!7184293 (= res!2925842 call!654893)))

(declare-fun e!4314508 () Bool)

(assert (=> b!7184293 (= e!4314508 e!4314510)))

(declare-fun b!7184294 () Bool)

(declare-fun e!4314507 () Bool)

(declare-fun call!654894 () Bool)

(assert (=> b!7184294 (= e!4314507 call!654894)))

(declare-fun bm!654888 () Bool)

(declare-fun call!654895 () Bool)

(assert (=> bm!654888 (= call!654894 call!654895)))

(declare-fun b!7184295 () Bool)

(declare-fun e!4314506 () Bool)

(assert (=> b!7184295 (= e!4314506 e!4314507)))

(declare-fun res!2925839 () Bool)

(assert (=> b!7184295 (=> (not res!2925839) (not e!4314507))))

(assert (=> b!7184295 (= res!2925839 call!654893)))

(declare-fun bm!654889 () Bool)

(declare-fun c!1337595 () Bool)

(assert (=> bm!654889 (= call!654893 (validRegex!9468 (ite c!1337595 (regOne!37211 (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))) (regOne!37210 (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))))))))

(declare-fun b!7184296 () Bool)

(declare-fun e!4314509 () Bool)

(declare-fun e!4314511 () Bool)

(assert (=> b!7184296 (= e!4314509 e!4314511)))

(declare-fun c!1337594 () Bool)

(assert (=> b!7184296 (= c!1337594 ((_ is Star!18349) (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))))))

(declare-fun d!2237841 () Bool)

(declare-fun res!2925840 () Bool)

(assert (=> d!2237841 (=> res!2925840 e!4314509)))

(assert (=> d!2237841 (= res!2925840 ((_ is ElementMatch!18349) (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))))))

(assert (=> d!2237841 (= (validRegex!9468 (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))) e!4314509)))

(declare-fun b!7184297 () Bool)

(declare-fun e!4314505 () Bool)

(assert (=> b!7184297 (= e!4314505 call!654895)))

(declare-fun b!7184298 () Bool)

(assert (=> b!7184298 (= e!4314511 e!4314508)))

(assert (=> b!7184298 (= c!1337595 ((_ is Union!18349) (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))))))

(declare-fun bm!654890 () Bool)

(assert (=> bm!654890 (= call!654895 (validRegex!9468 (ite c!1337594 (reg!18678 (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))) (ite c!1337595 (regTwo!37211 (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))) (regTwo!37210 (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))))))))

(declare-fun b!7184299 () Bool)

(assert (=> b!7184299 (= e!4314510 call!654894)))

(declare-fun b!7184300 () Bool)

(declare-fun res!2925841 () Bool)

(assert (=> b!7184300 (=> res!2925841 e!4314506)))

(assert (=> b!7184300 (= res!2925841 (not ((_ is Concat!27194) (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))))))

(assert (=> b!7184300 (= e!4314508 e!4314506)))

(declare-fun b!7184301 () Bool)

(assert (=> b!7184301 (= e!4314511 e!4314505)))

(declare-fun res!2925843 () Bool)

(assert (=> b!7184301 (= res!2925843 (not (nullable!7776 (reg!18678 (ite c!1337512 (regOne!37211 (h!76101 (exprs!7801 setElem!53131))) (regOne!37210 (h!76101 (exprs!7801 setElem!53131))))))))))

(assert (=> b!7184301 (=> (not res!2925843) (not e!4314505))))

(assert (= (and d!2237841 (not res!2925840)) b!7184296))

(assert (= (and b!7184296 c!1337594) b!7184301))

(assert (= (and b!7184296 (not c!1337594)) b!7184298))

(assert (= (and b!7184301 res!2925843) b!7184297))

(assert (= (and b!7184298 c!1337595) b!7184293))

(assert (= (and b!7184298 (not c!1337595)) b!7184300))

(assert (= (and b!7184293 res!2925842) b!7184299))

(assert (= (and b!7184300 (not res!2925841)) b!7184295))

(assert (= (and b!7184295 res!2925839) b!7184294))

(assert (= (or b!7184293 b!7184295) bm!654889))

(assert (= (or b!7184299 b!7184294) bm!654888))

(assert (= (or b!7184297 bm!654888) bm!654890))

(declare-fun m!7881482 () Bool)

(assert (=> bm!654889 m!7881482))

(declare-fun m!7881484 () Bool)

(assert (=> bm!654890 m!7881484))

(declare-fun m!7881486 () Bool)

(assert (=> b!7184301 m!7881486))

(assert (=> bm!654818 d!2237841))

(declare-fun d!2237843 () Bool)

(assert (=> d!2237843 (= (isEmpty!40211 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) ((_ is Nil!69653) (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(assert (=> b!7183751 d!2237843))

(declare-fun d!2237847 () Bool)

(assert (=> d!2237847 (= (nullable!7776 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))) (nullableFct!3042 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))

(declare-fun bs!1897316 () Bool)

(assert (= bs!1897316 d!2237847))

(declare-fun m!7881488 () Bool)

(assert (=> bs!1897316 m!7881488))

(assert (=> b!7183693 d!2237847))

(declare-fun b!7184302 () Bool)

(declare-fun res!2925847 () Bool)

(declare-fun e!4314517 () Bool)

(assert (=> b!7184302 (=> (not res!2925847) (not e!4314517))))

(declare-fun call!654896 () Bool)

(assert (=> b!7184302 (= res!2925847 call!654896)))

(declare-fun e!4314515 () Bool)

(assert (=> b!7184302 (= e!4314515 e!4314517)))

(declare-fun b!7184303 () Bool)

(declare-fun e!4314514 () Bool)

(declare-fun call!654897 () Bool)

(assert (=> b!7184303 (= e!4314514 call!654897)))

(declare-fun bm!654891 () Bool)

(declare-fun call!654898 () Bool)

(assert (=> bm!654891 (= call!654897 call!654898)))

(declare-fun b!7184304 () Bool)

(declare-fun e!4314513 () Bool)

(assert (=> b!7184304 (= e!4314513 e!4314514)))

(declare-fun res!2925844 () Bool)

(assert (=> b!7184304 (=> (not res!2925844) (not e!4314514))))

(assert (=> b!7184304 (= res!2925844 call!654896)))

(declare-fun bm!654892 () Bool)

(declare-fun c!1337597 () Bool)

(assert (=> bm!654892 (= call!654896 (validRegex!9468 (ite c!1337597 (regOne!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))) (regOne!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))))))

(declare-fun b!7184305 () Bool)

(declare-fun e!4314516 () Bool)

(declare-fun e!4314518 () Bool)

(assert (=> b!7184305 (= e!4314516 e!4314518)))

(declare-fun c!1337596 () Bool)

(assert (=> b!7184305 (= c!1337596 ((_ is Star!18349) (h!76101 (t!383798 (exprs!7801 setElem!53131)))))))

(declare-fun d!2237849 () Bool)

(declare-fun res!2925845 () Bool)

(assert (=> d!2237849 (=> res!2925845 e!4314516)))

(assert (=> d!2237849 (= res!2925845 ((_ is ElementMatch!18349) (h!76101 (t!383798 (exprs!7801 setElem!53131)))))))

(assert (=> d!2237849 (= (validRegex!9468 (h!76101 (t!383798 (exprs!7801 setElem!53131)))) e!4314516)))

(declare-fun b!7184306 () Bool)

(declare-fun e!4314512 () Bool)

(assert (=> b!7184306 (= e!4314512 call!654898)))

(declare-fun b!7184307 () Bool)

(assert (=> b!7184307 (= e!4314518 e!4314515)))

(assert (=> b!7184307 (= c!1337597 ((_ is Union!18349) (h!76101 (t!383798 (exprs!7801 setElem!53131)))))))

(declare-fun bm!654893 () Bool)

(assert (=> bm!654893 (= call!654898 (validRegex!9468 (ite c!1337596 (reg!18678 (h!76101 (t!383798 (exprs!7801 setElem!53131)))) (ite c!1337597 (regTwo!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131))))))))))

(declare-fun b!7184308 () Bool)

(assert (=> b!7184308 (= e!4314517 call!654897)))

(declare-fun b!7184309 () Bool)

(declare-fun res!2925846 () Bool)

(assert (=> b!7184309 (=> res!2925846 e!4314513)))

(assert (=> b!7184309 (= res!2925846 (not ((_ is Concat!27194) (h!76101 (t!383798 (exprs!7801 setElem!53131))))))))

(assert (=> b!7184309 (= e!4314515 e!4314513)))

(declare-fun b!7184310 () Bool)

(assert (=> b!7184310 (= e!4314518 e!4314512)))

(declare-fun res!2925848 () Bool)

(assert (=> b!7184310 (= res!2925848 (not (nullable!7776 (reg!18678 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))))))

(assert (=> b!7184310 (=> (not res!2925848) (not e!4314512))))

(assert (= (and d!2237849 (not res!2925845)) b!7184305))

(assert (= (and b!7184305 c!1337596) b!7184310))

(assert (= (and b!7184305 (not c!1337596)) b!7184307))

(assert (= (and b!7184310 res!2925848) b!7184306))

(assert (= (and b!7184307 c!1337597) b!7184302))

(assert (= (and b!7184307 (not c!1337597)) b!7184309))

(assert (= (and b!7184302 res!2925847) b!7184308))

(assert (= (and b!7184309 (not res!2925846)) b!7184304))

(assert (= (and b!7184304 res!2925844) b!7184303))

(assert (= (or b!7184302 b!7184304) bm!654892))

(assert (= (or b!7184308 b!7184303) bm!654891))

(assert (= (or b!7184306 bm!654891) bm!654893))

(declare-fun m!7881494 () Bool)

(assert (=> bm!654892 m!7881494))

(declare-fun m!7881496 () Bool)

(assert (=> bm!654893 m!7881496))

(declare-fun m!7881498 () Bool)

(assert (=> b!7184310 m!7881498))

(assert (=> bs!1897134 d!2237849))

(declare-fun d!2237851 () Bool)

(assert (=> d!2237851 (= (isEmptyLang!2151 lt!2570827) ((_ is EmptyLang!18349) lt!2570827))))

(assert (=> b!7183640 d!2237851))

(declare-fun d!2237853 () Bool)

(assert (=> d!2237853 (= (nullable!7776 (h!76101 (t!383798 (exprs!7801 lt!2570780)))) (nullableFct!3042 (h!76101 (t!383798 (exprs!7801 lt!2570780)))))))

(declare-fun bs!1897317 () Bool)

(assert (= bs!1897317 d!2237853))

(declare-fun m!7881500 () Bool)

(assert (=> bs!1897317 m!7881500))

(assert (=> bs!1897137 d!2237853))

(declare-fun b!7184311 () Bool)

(declare-fun e!4314522 () (InoxSet Context!14602))

(declare-fun e!4314521 () (InoxSet Context!14602))

(assert (=> b!7184311 (= e!4314522 e!4314521)))

(declare-fun c!1337600 () Bool)

(assert (=> b!7184311 (= c!1337600 ((_ is Concat!27194) (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(declare-fun bm!654894 () Bool)

(declare-fun c!1337601 () Bool)

(declare-fun call!654902 () List!69777)

(assert (=> bm!654894 (= call!654902 ($colon$colon!2843 (exprs!7801 (ite c!1337458 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654785))) (ite (or c!1337601 c!1337600) (regTwo!37210 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))

(declare-fun b!7184312 () Bool)

(declare-fun e!4314524 () (InoxSet Context!14602))

(assert (=> b!7184312 (= e!4314524 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184313 () Bool)

(declare-fun e!4314523 () (InoxSet Context!14602))

(declare-fun call!654899 () (InoxSet Context!14602))

(declare-fun call!654901 () (InoxSet Context!14602))

(assert (=> b!7184313 (= e!4314523 ((_ map or) call!654899 call!654901))))

(declare-fun c!1337599 () Bool)

(declare-fun bm!654895 () Bool)

(assert (=> bm!654895 (= call!654899 (derivationStepZipperDown!2512 (ite c!1337599 (regOne!37211 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) (regOne!37210 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (ite c!1337599 (ite c!1337458 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654785)) (Context!14603 call!654902)) lt!2570781))))

(declare-fun b!7184314 () Bool)

(declare-fun e!4314520 () Bool)

(assert (=> b!7184314 (= e!4314520 (nullable!7776 (regOne!37210 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))

(declare-fun bm!654896 () Bool)

(declare-fun call!654903 () List!69777)

(assert (=> bm!654896 (= call!654903 call!654902)))

(declare-fun b!7184315 () Bool)

(declare-fun e!4314519 () (InoxSet Context!14602))

(assert (=> b!7184315 (= e!4314519 e!4314523)))

(assert (=> b!7184315 (= c!1337599 ((_ is Union!18349) (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(declare-fun d!2237855 () Bool)

(declare-fun c!1337598 () Bool)

(assert (=> d!2237855 (= c!1337598 (and ((_ is ElementMatch!18349) (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) (= (c!1337348 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) lt!2570781)))))

(assert (=> d!2237855 (= (derivationStepZipperDown!2512 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))) (ite c!1337458 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654785)) lt!2570781) e!4314519)))

(declare-fun b!7184316 () Bool)

(declare-fun call!654900 () (InoxSet Context!14602))

(assert (=> b!7184316 (= e!4314522 ((_ map or) call!654899 call!654900))))

(declare-fun bm!654897 () Bool)

(declare-fun call!654904 () (InoxSet Context!14602))

(assert (=> bm!654897 (= call!654904 call!654900)))

(declare-fun b!7184317 () Bool)

(assert (=> b!7184317 (= e!4314521 call!654904)))

(declare-fun bm!654898 () Bool)

(assert (=> bm!654898 (= call!654900 call!654901)))

(declare-fun b!7184318 () Bool)

(declare-fun c!1337602 () Bool)

(assert (=> b!7184318 (= c!1337602 ((_ is Star!18349) (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(assert (=> b!7184318 (= e!4314521 e!4314524)))

(declare-fun b!7184319 () Bool)

(assert (=> b!7184319 (= e!4314519 (store ((as const (Array Context!14602 Bool)) false) (ite c!1337458 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654785)) true))))

(declare-fun b!7184320 () Bool)

(assert (=> b!7184320 (= e!4314524 call!654904)))

(declare-fun bm!654899 () Bool)

(assert (=> bm!654899 (= call!654901 (derivationStepZipperDown!2512 (ite c!1337599 (regTwo!37211 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) (ite c!1337601 (regTwo!37210 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) (ite c!1337600 (regOne!37210 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) (reg!18678 (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))) (ite (or c!1337599 c!1337601) (ite c!1337458 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654785)) (Context!14603 call!654903)) lt!2570781))))

(declare-fun b!7184321 () Bool)

(assert (=> b!7184321 (= c!1337601 e!4314520)))

(declare-fun res!2925849 () Bool)

(assert (=> b!7184321 (=> (not res!2925849) (not e!4314520))))

(assert (=> b!7184321 (= res!2925849 ((_ is Concat!27194) (ite c!1337458 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(assert (=> b!7184321 (= e!4314523 e!4314522)))

(assert (= (and d!2237855 c!1337598) b!7184319))

(assert (= (and d!2237855 (not c!1337598)) b!7184315))

(assert (= (and b!7184315 c!1337599) b!7184313))

(assert (= (and b!7184315 (not c!1337599)) b!7184321))

(assert (= (and b!7184321 res!2925849) b!7184314))

(assert (= (and b!7184321 c!1337601) b!7184316))

(assert (= (and b!7184321 (not c!1337601)) b!7184311))

(assert (= (and b!7184311 c!1337600) b!7184317))

(assert (= (and b!7184311 (not c!1337600)) b!7184318))

(assert (= (and b!7184318 c!1337602) b!7184320))

(assert (= (and b!7184318 (not c!1337602)) b!7184312))

(assert (= (or b!7184317 b!7184320) bm!654896))

(assert (= (or b!7184317 b!7184320) bm!654897))

(assert (= (or b!7184316 bm!654897) bm!654898))

(assert (= (or b!7184316 bm!654896) bm!654894))

(assert (= (or b!7184313 bm!654898) bm!654899))

(assert (= (or b!7184313 b!7184316) bm!654895))

(declare-fun m!7881502 () Bool)

(assert (=> bm!654895 m!7881502))

(declare-fun m!7881504 () Bool)

(assert (=> b!7184319 m!7881504))

(declare-fun m!7881506 () Bool)

(assert (=> b!7184314 m!7881506))

(declare-fun m!7881508 () Bool)

(assert (=> bm!654899 m!7881508))

(declare-fun m!7881510 () Bool)

(assert (=> bm!654894 m!7881510))

(assert (=> bm!654778 d!2237855))

(declare-fun d!2237857 () Bool)

(declare-fun res!2925850 () Bool)

(declare-fun e!4314525 () Bool)

(assert (=> d!2237857 (=> res!2925850 e!4314525)))

(assert (=> d!2237857 (= res!2925850 ((_ is Nil!69655) (t!383800 (toList!11292 z!3530))))))

(assert (=> d!2237857 (= (forall!17178 (t!383800 (toList!11292 z!3530)) lambda!437549) e!4314525)))

(declare-fun b!7184322 () Bool)

(declare-fun e!4314526 () Bool)

(assert (=> b!7184322 (= e!4314525 e!4314526)))

(declare-fun res!2925851 () Bool)

(assert (=> b!7184322 (=> (not res!2925851) (not e!4314526))))

(assert (=> b!7184322 (= res!2925851 (dynLambda!28370 lambda!437549 (h!76103 (t!383800 (toList!11292 z!3530)))))))

(declare-fun b!7184323 () Bool)

(assert (=> b!7184323 (= e!4314526 (forall!17178 (t!383800 (t!383800 (toList!11292 z!3530))) lambda!437549))))

(assert (= (and d!2237857 (not res!2925850)) b!7184322))

(assert (= (and b!7184322 res!2925851) b!7184323))

(declare-fun b_lambda!275061 () Bool)

(assert (=> (not b_lambda!275061) (not b!7184322)))

(declare-fun m!7881512 () Bool)

(assert (=> b!7184322 m!7881512))

(declare-fun m!7881514 () Bool)

(assert (=> b!7184323 m!7881514))

(assert (=> b!7183613 d!2237857))

(declare-fun d!2237859 () Bool)

(assert (=> d!2237859 (= (nullable!7776 (reg!18678 lt!2570823)) (nullableFct!3042 (reg!18678 lt!2570823)))))

(declare-fun bs!1897318 () Bool)

(assert (= bs!1897318 d!2237859))

(declare-fun m!7881516 () Bool)

(assert (=> bs!1897318 m!7881516))

(assert (=> b!7183878 d!2237859))

(declare-fun b!7184324 () Bool)

(declare-fun e!4314530 () (InoxSet Context!14602))

(declare-fun e!4314529 () (InoxSet Context!14602))

(assert (=> b!7184324 (= e!4314530 e!4314529)))

(declare-fun c!1337605 () Bool)

(assert (=> b!7184324 (= c!1337605 ((_ is Concat!27194) (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))))

(declare-fun call!654908 () List!69777)

(declare-fun c!1337606 () Bool)

(declare-fun bm!654900 () Bool)

(assert (=> bm!654900 (= call!654908 ($colon$colon!2843 (exprs!7801 (ite c!1337504 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654816))) (ite (or c!1337606 c!1337605) (regTwo!37210 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))) (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))))

(declare-fun b!7184325 () Bool)

(declare-fun e!4314532 () (InoxSet Context!14602))

(assert (=> b!7184325 (= e!4314532 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184326 () Bool)

(declare-fun e!4314531 () (InoxSet Context!14602))

(declare-fun call!654905 () (InoxSet Context!14602))

(declare-fun call!654907 () (InoxSet Context!14602))

(assert (=> b!7184326 (= e!4314531 ((_ map or) call!654905 call!654907))))

(declare-fun c!1337604 () Bool)

(declare-fun bm!654901 () Bool)

(assert (=> bm!654901 (= call!654905 (derivationStepZipperDown!2512 (ite c!1337604 (regOne!37211 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))) (regOne!37210 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))) (ite c!1337604 (ite c!1337504 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654816)) (Context!14603 call!654908)) lt!2570781))))

(declare-fun e!4314528 () Bool)

(declare-fun b!7184327 () Bool)

(assert (=> b!7184327 (= e!4314528 (nullable!7776 (regOne!37210 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))))

(declare-fun bm!654902 () Bool)

(declare-fun call!654909 () List!69777)

(assert (=> bm!654902 (= call!654909 call!654908)))

(declare-fun b!7184328 () Bool)

(declare-fun e!4314527 () (InoxSet Context!14602))

(assert (=> b!7184328 (= e!4314527 e!4314531)))

(assert (=> b!7184328 (= c!1337604 ((_ is Union!18349) (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))))

(declare-fun c!1337603 () Bool)

(declare-fun d!2237861 () Bool)

(assert (=> d!2237861 (= c!1337603 (and ((_ is ElementMatch!18349) (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))) (= (c!1337348 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))) lt!2570781)))))

(assert (=> d!2237861 (= (derivationStepZipperDown!2512 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))) (ite c!1337504 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654816)) lt!2570781) e!4314527)))

(declare-fun b!7184329 () Bool)

(declare-fun call!654906 () (InoxSet Context!14602))

(assert (=> b!7184329 (= e!4314530 ((_ map or) call!654905 call!654906))))

(declare-fun bm!654903 () Bool)

(declare-fun call!654910 () (InoxSet Context!14602))

(assert (=> bm!654903 (= call!654910 call!654906)))

(declare-fun b!7184330 () Bool)

(assert (=> b!7184330 (= e!4314529 call!654910)))

(declare-fun bm!654904 () Bool)

(assert (=> bm!654904 (= call!654906 call!654907)))

(declare-fun c!1337607 () Bool)

(declare-fun b!7184331 () Bool)

(assert (=> b!7184331 (= c!1337607 ((_ is Star!18349) (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))))

(assert (=> b!7184331 (= e!4314529 e!4314532)))

(declare-fun b!7184332 () Bool)

(assert (=> b!7184332 (= e!4314527 (store ((as const (Array Context!14602 Bool)) false) (ite c!1337504 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654816)) true))))

(declare-fun b!7184333 () Bool)

(assert (=> b!7184333 (= e!4314532 call!654910)))

(declare-fun bm!654905 () Bool)

(assert (=> bm!654905 (= call!654907 (derivationStepZipperDown!2512 (ite c!1337604 (regTwo!37211 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))) (ite c!1337606 (regTwo!37210 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))) (ite c!1337605 (regOne!37210 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))) (reg!18678 (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))) (ite (or c!1337604 c!1337606) (ite c!1337504 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654816)) (Context!14603 call!654909)) lt!2570781))))

(declare-fun b!7184334 () Bool)

(assert (=> b!7184334 (= c!1337606 e!4314528)))

(declare-fun res!2925852 () Bool)

(assert (=> b!7184334 (=> (not res!2925852) (not e!4314528))))

(assert (=> b!7184334 (= res!2925852 ((_ is Concat!27194) (ite c!1337504 (regOne!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))))

(assert (=> b!7184334 (= e!4314531 e!4314530)))

(assert (= (and d!2237861 c!1337603) b!7184332))

(assert (= (and d!2237861 (not c!1337603)) b!7184328))

(assert (= (and b!7184328 c!1337604) b!7184326))

(assert (= (and b!7184328 (not c!1337604)) b!7184334))

(assert (= (and b!7184334 res!2925852) b!7184327))

(assert (= (and b!7184334 c!1337606) b!7184329))

(assert (= (and b!7184334 (not c!1337606)) b!7184324))

(assert (= (and b!7184324 c!1337605) b!7184330))

(assert (= (and b!7184324 (not c!1337605)) b!7184331))

(assert (= (and b!7184331 c!1337607) b!7184333))

(assert (= (and b!7184331 (not c!1337607)) b!7184325))

(assert (= (or b!7184330 b!7184333) bm!654902))

(assert (= (or b!7184330 b!7184333) bm!654903))

(assert (= (or b!7184329 bm!654903) bm!654904))

(assert (= (or b!7184329 bm!654902) bm!654900))

(assert (= (or b!7184326 bm!654904) bm!654905))

(assert (= (or b!7184326 b!7184329) bm!654901))

(declare-fun m!7881518 () Bool)

(assert (=> bm!654901 m!7881518))

(declare-fun m!7881520 () Bool)

(assert (=> b!7184332 m!7881520))

(declare-fun m!7881522 () Bool)

(assert (=> b!7184327 m!7881522))

(declare-fun m!7881524 () Bool)

(assert (=> bm!654905 m!7881524))

(declare-fun m!7881526 () Bool)

(assert (=> bm!654900 m!7881526))

(assert (=> bm!654809 d!2237861))

(declare-fun b!7184335 () Bool)

(declare-fun e!4314537 () Bool)

(declare-fun e!4314535 () Bool)

(assert (=> b!7184335 (= e!4314537 e!4314535)))

(declare-fun res!2925853 () Bool)

(assert (=> b!7184335 (=> (not res!2925853) (not e!4314535))))

(assert (=> b!7184335 (= res!2925853 (and (not ((_ is EmptyLang!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))) (not ((_ is ElementMatch!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(declare-fun b!7184336 () Bool)

(declare-fun e!4314538 () Bool)

(declare-fun e!4314536 () Bool)

(assert (=> b!7184336 (= e!4314538 e!4314536)))

(declare-fun c!1337608 () Bool)

(assert (=> b!7184336 (= c!1337608 ((_ is Union!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(declare-fun d!2237863 () Bool)

(declare-fun res!2925854 () Bool)

(assert (=> d!2237863 (=> res!2925854 e!4314537)))

(assert (=> d!2237863 (= res!2925854 ((_ is EmptyExpr!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(assert (=> d!2237863 (= (nullableFct!3042 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) e!4314537)))

(declare-fun bm!654906 () Bool)

(declare-fun call!654911 () Bool)

(assert (=> bm!654906 (= call!654911 (nullable!7776 (ite c!1337608 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(declare-fun b!7184337 () Bool)

(assert (=> b!7184337 (= e!4314535 e!4314538)))

(declare-fun res!2925855 () Bool)

(assert (=> b!7184337 (=> res!2925855 e!4314538)))

(assert (=> b!7184337 (= res!2925855 ((_ is Star!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))

(declare-fun b!7184338 () Bool)

(declare-fun e!4314533 () Bool)

(declare-fun call!654912 () Bool)

(assert (=> b!7184338 (= e!4314533 call!654912)))

(declare-fun b!7184339 () Bool)

(declare-fun e!4314534 () Bool)

(assert (=> b!7184339 (= e!4314534 call!654912)))

(declare-fun b!7184340 () Bool)

(assert (=> b!7184340 (= e!4314536 e!4314534)))

(declare-fun res!2925857 () Bool)

(assert (=> b!7184340 (= res!2925857 call!654911)))

(assert (=> b!7184340 (=> (not res!2925857) (not e!4314534))))

(declare-fun b!7184341 () Bool)

(assert (=> b!7184341 (= e!4314536 e!4314533)))

(declare-fun res!2925856 () Bool)

(assert (=> b!7184341 (= res!2925856 call!654911)))

(assert (=> b!7184341 (=> res!2925856 e!4314533)))

(declare-fun bm!654907 () Bool)

(assert (=> bm!654907 (= call!654912 (nullable!7776 (ite c!1337608 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(assert (= (and d!2237863 (not res!2925854)) b!7184335))

(assert (= (and b!7184335 res!2925853) b!7184337))

(assert (= (and b!7184337 (not res!2925855)) b!7184336))

(assert (= (and b!7184336 c!1337608) b!7184341))

(assert (= (and b!7184336 (not c!1337608)) b!7184340))

(assert (= (and b!7184341 (not res!2925856)) b!7184338))

(assert (= (and b!7184340 res!2925857) b!7184339))

(assert (= (or b!7184341 b!7184340) bm!654906))

(assert (= (or b!7184338 b!7184339) bm!654907))

(declare-fun m!7881528 () Bool)

(assert (=> bm!654906 m!7881528))

(declare-fun m!7881530 () Bool)

(assert (=> bm!654907 m!7881530))

(assert (=> d!2237553 d!2237863))

(declare-fun d!2237865 () Bool)

(declare-fun lt!2570852 () Bool)

(assert (=> d!2237865 (= lt!2570852 (select (content!14316 (t!383800 res!2925525)) (h!76103 res!2925525)))))

(declare-fun e!4314539 () Bool)

(assert (=> d!2237865 (= lt!2570852 e!4314539)))

(declare-fun res!2925858 () Bool)

(assert (=> d!2237865 (=> (not res!2925858) (not e!4314539))))

(assert (=> d!2237865 (= res!2925858 ((_ is Cons!69655) (t!383800 res!2925525)))))

(assert (=> d!2237865 (= (contains!20718 (t!383800 res!2925525) (h!76103 res!2925525)) lt!2570852)))

(declare-fun b!7184342 () Bool)

(declare-fun e!4314540 () Bool)

(assert (=> b!7184342 (= e!4314539 e!4314540)))

(declare-fun res!2925859 () Bool)

(assert (=> b!7184342 (=> res!2925859 e!4314540)))

(assert (=> b!7184342 (= res!2925859 (= (h!76103 (t!383800 res!2925525)) (h!76103 res!2925525)))))

(declare-fun b!7184343 () Bool)

(assert (=> b!7184343 (= e!4314540 (contains!20718 (t!383800 (t!383800 res!2925525)) (h!76103 res!2925525)))))

(assert (= (and d!2237865 res!2925858) b!7184342))

(assert (= (and b!7184342 (not res!2925859)) b!7184343))

(assert (=> d!2237865 m!7881120))

(declare-fun m!7881532 () Bool)

(assert (=> d!2237865 m!7881532))

(declare-fun m!7881534 () Bool)

(assert (=> b!7184343 m!7881534))

(assert (=> b!7183635 d!2237865))

(declare-fun bs!1897319 () Bool)

(declare-fun d!2237867 () Bool)

(assert (= bs!1897319 (and d!2237867 d!2237597)))

(declare-fun lambda!437596 () Int)

(assert (=> bs!1897319 (= lambda!437596 lambda!437576)))

(declare-fun bs!1897320 () Bool)

(assert (= bs!1897320 (and d!2237867 d!2237781)))

(assert (=> bs!1897320 (= lambda!437596 lambda!437592)))

(declare-fun bs!1897321 () Bool)

(assert (= bs!1897321 (and d!2237867 d!2237791)))

(assert (=> bs!1897321 (= lambda!437596 lambda!437594)))

(declare-fun bs!1897322 () Bool)

(assert (= bs!1897322 (and d!2237867 d!2237569)))

(assert (=> bs!1897322 (= lambda!437596 lambda!437569)))

(declare-fun bs!1897323 () Bool)

(assert (= bs!1897323 (and d!2237867 d!2237379)))

(assert (=> bs!1897323 (= lambda!437596 lambda!437531)))

(declare-fun bs!1897324 () Bool)

(assert (= bs!1897324 (and d!2237867 d!2237593)))

(assert (=> bs!1897324 (= lambda!437596 lambda!437575)))

(declare-fun bs!1897325 () Bool)

(assert (= bs!1897325 (and d!2237867 d!2237811)))

(assert (=> bs!1897325 (= lambda!437596 lambda!437595)))

(declare-fun bs!1897326 () Bool)

(assert (= bs!1897326 (and d!2237867 d!2237605)))

(assert (=> bs!1897326 (= lambda!437596 lambda!437578)))

(declare-fun bs!1897327 () Bool)

(assert (= bs!1897327 (and d!2237867 d!2237533)))

(assert (=> bs!1897327 (= lambda!437596 lambda!437566)))

(declare-fun bs!1897328 () Bool)

(assert (= bs!1897328 (and d!2237867 d!2237591)))

(assert (=> bs!1897328 (= lambda!437596 lambda!437574)))

(declare-fun bs!1897329 () Bool)

(assert (= bs!1897329 (and d!2237867 d!2237403)))

(assert (=> bs!1897329 (not (= lambda!437596 lambda!437536))))

(declare-fun bs!1897330 () Bool)

(assert (= bs!1897330 (and d!2237867 d!2237509)))

(assert (=> bs!1897330 (= lambda!437596 lambda!437565)))

(declare-fun bs!1897331 () Bool)

(assert (= bs!1897331 (and d!2237867 d!2237555)))

(assert (=> bs!1897331 (= lambda!437596 lambda!437568)))

(declare-fun bs!1897332 () Bool)

(assert (= bs!1897332 (and d!2237867 d!2237637)))

(assert (=> bs!1897332 (= lambda!437596 lambda!437581)))

(declare-fun bs!1897333 () Bool)

(assert (= bs!1897333 (and d!2237867 d!2237785)))

(assert (=> bs!1897333 (= lambda!437596 lambda!437593)))

(declare-fun bs!1897334 () Bool)

(assert (= bs!1897334 (and d!2237867 d!2237493)))

(assert (=> bs!1897334 (= lambda!437596 lambda!437561)))

(declare-fun bs!1897335 () Bool)

(assert (= bs!1897335 (and d!2237867 d!2237477)))

(assert (=> bs!1897335 (= lambda!437596 lambda!437546)))

(declare-fun bs!1897336 () Bool)

(assert (= bs!1897336 (and d!2237867 d!2237577)))

(assert (=> bs!1897336 (= lambda!437596 lambda!437570)))

(declare-fun bs!1897337 () Bool)

(assert (= bs!1897337 (and d!2237867 d!2237395)))

(assert (=> bs!1897337 (= lambda!437596 lambda!437532)))

(declare-fun bs!1897338 () Bool)

(assert (= bs!1897338 (and d!2237867 d!2237551)))

(assert (=> bs!1897338 (= lambda!437596 lambda!437567)))

(assert (=> d!2237867 (= (inv!88894 (h!76103 (t!383800 res!2925518))) (forall!17177 (exprs!7801 (h!76103 (t!383800 res!2925518))) lambda!437596))))

(declare-fun bs!1897339 () Bool)

(assert (= bs!1897339 d!2237867))

(declare-fun m!7881536 () Bool)

(assert (=> bs!1897339 m!7881536))

(assert (=> b!7183900 d!2237867))

(declare-fun d!2237869 () Bool)

(assert (=> d!2237869 (= (nullable!7776 (reg!18678 (h!76101 (exprs!7801 empty!2967)))) (nullableFct!3042 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))))

(declare-fun bs!1897340 () Bool)

(assert (= bs!1897340 d!2237869))

(declare-fun m!7881538 () Bool)

(assert (=> bs!1897340 m!7881538))

(assert (=> b!7183630 d!2237869))

(declare-fun d!2237871 () Bool)

(declare-fun res!2925860 () Bool)

(declare-fun e!4314541 () Bool)

(assert (=> d!2237871 (=> res!2925860 e!4314541)))

(assert (=> d!2237871 (= res!2925860 ((_ is Nil!69655) (toList!11292 z!3530)))))

(assert (=> d!2237871 (= (forall!17178 (toList!11292 z!3530) lambda!437571) e!4314541)))

(declare-fun b!7184344 () Bool)

(declare-fun e!4314542 () Bool)

(assert (=> b!7184344 (= e!4314541 e!4314542)))

(declare-fun res!2925861 () Bool)

(assert (=> b!7184344 (=> (not res!2925861) (not e!4314542))))

(assert (=> b!7184344 (= res!2925861 (dynLambda!28370 lambda!437571 (h!76103 (toList!11292 z!3530))))))

(declare-fun b!7184345 () Bool)

(assert (=> b!7184345 (= e!4314542 (forall!17178 (t!383800 (toList!11292 z!3530)) lambda!437571))))

(assert (= (and d!2237871 (not res!2925860)) b!7184344))

(assert (= (and b!7184344 res!2925861) b!7184345))

(declare-fun b_lambda!275063 () Bool)

(assert (=> (not b_lambda!275063) (not b!7184344)))

(declare-fun m!7881540 () Bool)

(assert (=> b!7184344 m!7881540))

(declare-fun m!7881542 () Bool)

(assert (=> b!7184345 m!7881542))

(assert (=> d!2237583 d!2237871))

(declare-fun d!2237873 () Bool)

(declare-fun res!2925862 () Bool)

(declare-fun e!4314543 () Bool)

(assert (=> d!2237873 (=> res!2925862 e!4314543)))

(assert (=> d!2237873 (= res!2925862 ((_ is Nil!69655) res!2925597))))

(assert (=> d!2237873 (= (noDuplicate!2887 res!2925597) e!4314543)))

(declare-fun b!7184346 () Bool)

(declare-fun e!4314544 () Bool)

(assert (=> b!7184346 (= e!4314543 e!4314544)))

(declare-fun res!2925863 () Bool)

(assert (=> b!7184346 (=> (not res!2925863) (not e!4314544))))

(assert (=> b!7184346 (= res!2925863 (not (contains!20718 (t!383800 res!2925597) (h!76103 res!2925597))))))

(declare-fun b!7184347 () Bool)

(assert (=> b!7184347 (= e!4314544 (noDuplicate!2887 (t!383800 res!2925597)))))

(assert (= (and d!2237873 (not res!2925862)) b!7184346))

(assert (= (and b!7184346 res!2925863) b!7184347))

(declare-fun m!7881544 () Bool)

(assert (=> b!7184346 m!7881544))

(declare-fun m!7881546 () Bool)

(assert (=> b!7184347 m!7881546))

(assert (=> d!2237537 d!2237873))

(declare-fun d!2237875 () Bool)

(declare-fun c!1337609 () Bool)

(assert (=> d!2237875 (= c!1337609 ((_ is Nil!69655) (t!383800 (t!383800 lt!2570808))))))

(declare-fun e!4314545 () (InoxSet Context!14602))

(assert (=> d!2237875 (= (content!14316 (t!383800 (t!383800 lt!2570808))) e!4314545)))

(declare-fun b!7184348 () Bool)

(assert (=> b!7184348 (= e!4314545 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184349 () Bool)

(assert (=> b!7184349 (= e!4314545 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 (t!383800 (t!383800 lt!2570808))) true) (content!14316 (t!383800 (t!383800 (t!383800 lt!2570808))))))))

(assert (= (and d!2237875 c!1337609) b!7184348))

(assert (= (and d!2237875 (not c!1337609)) b!7184349))

(declare-fun m!7881548 () Bool)

(assert (=> b!7184349 m!7881548))

(declare-fun m!7881550 () Bool)

(assert (=> b!7184349 m!7881550))

(assert (=> b!7183702 d!2237875))

(declare-fun b!7184350 () Bool)

(declare-fun res!2925867 () Bool)

(declare-fun e!4314551 () Bool)

(assert (=> b!7184350 (=> (not res!2925867) (not e!4314551))))

(declare-fun call!654913 () Bool)

(assert (=> b!7184350 (= res!2925867 call!654913)))

(declare-fun e!4314549 () Bool)

(assert (=> b!7184350 (= e!4314549 e!4314551)))

(declare-fun b!7184351 () Bool)

(declare-fun e!4314548 () Bool)

(declare-fun call!654914 () Bool)

(assert (=> b!7184351 (= e!4314548 call!654914)))

(declare-fun bm!654908 () Bool)

(declare-fun call!654915 () Bool)

(assert (=> bm!654908 (= call!654914 call!654915)))

(declare-fun b!7184352 () Bool)

(declare-fun e!4314547 () Bool)

(assert (=> b!7184352 (= e!4314547 e!4314548)))

(declare-fun res!2925864 () Bool)

(assert (=> b!7184352 (=> (not res!2925864) (not e!4314548))))

(assert (=> b!7184352 (= res!2925864 call!654913)))

(declare-fun bm!654909 () Bool)

(declare-fun c!1337611 () Bool)

(assert (=> bm!654909 (= call!654913 (validRegex!9468 (ite c!1337611 (regOne!37211 (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))) (regOne!37210 (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))))))))

(declare-fun b!7184353 () Bool)

(declare-fun e!4314550 () Bool)

(declare-fun e!4314552 () Bool)

(assert (=> b!7184353 (= e!4314550 e!4314552)))

(declare-fun c!1337610 () Bool)

(assert (=> b!7184353 (= c!1337610 ((_ is Star!18349) (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))))))

(declare-fun d!2237877 () Bool)

(declare-fun res!2925865 () Bool)

(assert (=> d!2237877 (=> res!2925865 e!4314550)))

(assert (=> d!2237877 (= res!2925865 ((_ is ElementMatch!18349) (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))))))

(assert (=> d!2237877 (= (validRegex!9468 (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))) e!4314550)))

(declare-fun b!7184354 () Bool)

(declare-fun e!4314546 () Bool)

(assert (=> b!7184354 (= e!4314546 call!654915)))

(declare-fun b!7184355 () Bool)

(assert (=> b!7184355 (= e!4314552 e!4314549)))

(assert (=> b!7184355 (= c!1337611 ((_ is Union!18349) (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))))))

(declare-fun bm!654910 () Bool)

(assert (=> bm!654910 (= call!654915 (validRegex!9468 (ite c!1337610 (reg!18678 (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))) (ite c!1337611 (regTwo!37211 (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))) (regTwo!37210 (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813))))))))))

(declare-fun b!7184356 () Bool)

(assert (=> b!7184356 (= e!4314551 call!654914)))

(declare-fun b!7184357 () Bool)

(declare-fun res!2925866 () Bool)

(assert (=> b!7184357 (=> res!2925866 e!4314547)))

(assert (=> b!7184357 (= res!2925866 (not ((_ is Concat!27194) (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813))))))))

(assert (=> b!7184357 (= e!4314549 e!4314547)))

(declare-fun b!7184358 () Bool)

(assert (=> b!7184358 (= e!4314552 e!4314546)))

(declare-fun res!2925868 () Bool)

(assert (=> b!7184358 (= res!2925868 (not (nullable!7776 (reg!18678 (ite c!1337489 (reg!18678 lt!2570813) (ite c!1337490 (regTwo!37211 lt!2570813) (regTwo!37210 lt!2570813)))))))))

(assert (=> b!7184358 (=> (not res!2925868) (not e!4314546))))

(assert (= (and d!2237877 (not res!2925865)) b!7184353))

(assert (= (and b!7184353 c!1337610) b!7184358))

(assert (= (and b!7184353 (not c!1337610)) b!7184355))

(assert (= (and b!7184358 res!2925868) b!7184354))

(assert (= (and b!7184355 c!1337611) b!7184350))

(assert (= (and b!7184355 (not c!1337611)) b!7184357))

(assert (= (and b!7184350 res!2925867) b!7184356))

(assert (= (and b!7184357 (not res!2925866)) b!7184352))

(assert (= (and b!7184352 res!2925864) b!7184351))

(assert (= (or b!7184350 b!7184352) bm!654909))

(assert (= (or b!7184356 b!7184351) bm!654908))

(assert (= (or b!7184354 bm!654908) bm!654910))

(declare-fun m!7881552 () Bool)

(assert (=> bm!654909 m!7881552))

(declare-fun m!7881554 () Bool)

(assert (=> bm!654910 m!7881554))

(declare-fun m!7881556 () Bool)

(assert (=> b!7184358 m!7881556))

(assert (=> bm!654798 d!2237877))

(declare-fun d!2237879 () Bool)

(assert (=> d!2237879 (= (nullable!7776 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))) (nullableFct!3042 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))

(declare-fun bs!1897341 () Bool)

(assert (= bs!1897341 d!2237879))

(declare-fun m!7881558 () Bool)

(assert (=> bs!1897341 m!7881558))

(assert (=> b!7183858 d!2237879))

(declare-fun d!2237881 () Bool)

(declare-fun res!2925869 () Bool)

(declare-fun e!4314553 () Bool)

(assert (=> d!2237881 (=> res!2925869 e!4314553)))

(assert (=> d!2237881 (= res!2925869 ((_ is Nil!69653) (exprs!7801 setElem!53140)))))

(assert (=> d!2237881 (= (forall!17177 (exprs!7801 setElem!53140) lambda!437569) e!4314553)))

(declare-fun b!7184359 () Bool)

(declare-fun e!4314554 () Bool)

(assert (=> b!7184359 (= e!4314553 e!4314554)))

(declare-fun res!2925870 () Bool)

(assert (=> b!7184359 (=> (not res!2925870) (not e!4314554))))

(assert (=> b!7184359 (= res!2925870 (dynLambda!28369 lambda!437569 (h!76101 (exprs!7801 setElem!53140))))))

(declare-fun b!7184360 () Bool)

(assert (=> b!7184360 (= e!4314554 (forall!17177 (t!383798 (exprs!7801 setElem!53140)) lambda!437569))))

(assert (= (and d!2237881 (not res!2925869)) b!7184359))

(assert (= (and b!7184359 res!2925870) b!7184360))

(declare-fun b_lambda!275065 () Bool)

(assert (=> (not b_lambda!275065) (not b!7184359)))

(declare-fun m!7881560 () Bool)

(assert (=> b!7184359 m!7881560))

(declare-fun m!7881562 () Bool)

(assert (=> b!7184360 m!7881562))

(assert (=> d!2237569 d!2237881))

(declare-fun d!2237883 () Bool)

(declare-fun lt!2570853 () Bool)

(assert (=> d!2237883 (= lt!2570853 (select (content!14316 (t!383800 (t!383800 lt!2570804))) (h!76103 (t!383800 lt!2570804))))))

(declare-fun e!4314555 () Bool)

(assert (=> d!2237883 (= lt!2570853 e!4314555)))

(declare-fun res!2925871 () Bool)

(assert (=> d!2237883 (=> (not res!2925871) (not e!4314555))))

(assert (=> d!2237883 (= res!2925871 ((_ is Cons!69655) (t!383800 (t!383800 lt!2570804))))))

(assert (=> d!2237883 (= (contains!20718 (t!383800 (t!383800 lt!2570804)) (h!76103 (t!383800 lt!2570804))) lt!2570853)))

(declare-fun b!7184361 () Bool)

(declare-fun e!4314556 () Bool)

(assert (=> b!7184361 (= e!4314555 e!4314556)))

(declare-fun res!2925872 () Bool)

(assert (=> b!7184361 (=> res!2925872 e!4314556)))

(assert (=> b!7184361 (= res!2925872 (= (h!76103 (t!383800 (t!383800 lt!2570804))) (h!76103 (t!383800 lt!2570804))))))

(declare-fun b!7184362 () Bool)

(assert (=> b!7184362 (= e!4314556 (contains!20718 (t!383800 (t!383800 (t!383800 lt!2570804))) (h!76103 (t!383800 lt!2570804))))))

(assert (= (and d!2237883 res!2925871) b!7184361))

(assert (= (and b!7184361 (not res!2925872)) b!7184362))

(assert (=> d!2237883 m!7880936))

(declare-fun m!7881564 () Bool)

(assert (=> d!2237883 m!7881564))

(declare-fun m!7881566 () Bool)

(assert (=> b!7184362 m!7881566))

(assert (=> b!7183633 d!2237883))

(declare-fun b!7184363 () Bool)

(declare-fun res!2925876 () Bool)

(declare-fun e!4314562 () Bool)

(assert (=> b!7184363 (=> (not res!2925876) (not e!4314562))))

(declare-fun call!654916 () Bool)

(assert (=> b!7184363 (= res!2925876 call!654916)))

(declare-fun e!4314560 () Bool)

(assert (=> b!7184363 (= e!4314560 e!4314562)))

(declare-fun b!7184364 () Bool)

(declare-fun e!4314559 () Bool)

(declare-fun call!654917 () Bool)

(assert (=> b!7184364 (= e!4314559 call!654917)))

(declare-fun bm!654911 () Bool)

(declare-fun call!654918 () Bool)

(assert (=> bm!654911 (= call!654917 call!654918)))

(declare-fun b!7184365 () Bool)

(declare-fun e!4314558 () Bool)

(assert (=> b!7184365 (= e!4314558 e!4314559)))

(declare-fun res!2925873 () Bool)

(assert (=> b!7184365 (=> (not res!2925873) (not e!4314559))))

(assert (=> b!7184365 (= res!2925873 call!654916)))

(declare-fun bm!654912 () Bool)

(declare-fun c!1337613 () Bool)

(assert (=> bm!654912 (= call!654916 (validRegex!9468 (ite c!1337613 (regOne!37211 (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))) (regOne!37210 (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))))

(declare-fun b!7184366 () Bool)

(declare-fun e!4314561 () Bool)

(declare-fun e!4314563 () Bool)

(assert (=> b!7184366 (= e!4314561 e!4314563)))

(declare-fun c!1337612 () Bool)

(assert (=> b!7184366 (= c!1337612 ((_ is Star!18349) (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))

(declare-fun d!2237885 () Bool)

(declare-fun res!2925874 () Bool)

(assert (=> d!2237885 (=> res!2925874 e!4314561)))

(assert (=> d!2237885 (= res!2925874 ((_ is ElementMatch!18349) (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))

(assert (=> d!2237885 (= (validRegex!9468 (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))) e!4314561)))

(declare-fun b!7184367 () Bool)

(declare-fun e!4314557 () Bool)

(assert (=> b!7184367 (= e!4314557 call!654918)))

(declare-fun b!7184368 () Bool)

(assert (=> b!7184368 (= e!4314563 e!4314560)))

(assert (=> b!7184368 (= c!1337613 ((_ is Union!18349) (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))

(declare-fun bm!654913 () Bool)

(assert (=> bm!654913 (= call!654918 (validRegex!9468 (ite c!1337612 (reg!18678 (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))) (ite c!1337613 (regTwo!37211 (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))) (regTwo!37210 (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))))))

(declare-fun b!7184369 () Bool)

(assert (=> b!7184369 (= e!4314562 call!654917)))

(declare-fun b!7184370 () Bool)

(declare-fun res!2925875 () Bool)

(assert (=> b!7184370 (=> res!2925875 e!4314558)))

(assert (=> b!7184370 (= res!2925875 (not ((_ is Concat!27194) (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))))

(assert (=> b!7184370 (= e!4314560 e!4314558)))

(declare-fun b!7184371 () Bool)

(assert (=> b!7184371 (= e!4314563 e!4314557)))

(declare-fun res!2925877 () Bool)

(assert (=> b!7184371 (= res!2925877 (not (nullable!7776 (reg!18678 (ite c!1337518 (regOne!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regOne!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))))

(assert (=> b!7184371 (=> (not res!2925877) (not e!4314557))))

(assert (= (and d!2237885 (not res!2925874)) b!7184366))

(assert (= (and b!7184366 c!1337612) b!7184371))

(assert (= (and b!7184366 (not c!1337612)) b!7184368))

(assert (= (and b!7184371 res!2925877) b!7184367))

(assert (= (and b!7184368 c!1337613) b!7184363))

(assert (= (and b!7184368 (not c!1337613)) b!7184370))

(assert (= (and b!7184363 res!2925876) b!7184369))

(assert (= (and b!7184370 (not res!2925875)) b!7184365))

(assert (= (and b!7184365 res!2925873) b!7184364))

(assert (= (or b!7184363 b!7184365) bm!654912))

(assert (= (or b!7184369 b!7184364) bm!654911))

(assert (= (or b!7184367 bm!654911) bm!654913))

(declare-fun m!7881568 () Bool)

(assert (=> bm!654912 m!7881568))

(declare-fun m!7881570 () Bool)

(assert (=> bm!654913 m!7881570))

(declare-fun m!7881572 () Bool)

(assert (=> b!7184371 m!7881572))

(assert (=> bm!654821 d!2237885))

(declare-fun d!2237887 () Bool)

(assert (=> d!2237887 (= (isEmpty!40211 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))) ((_ is Nil!69653) (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(assert (=> b!7183728 d!2237887))

(declare-fun b!7184372 () Bool)

(declare-fun e!4314567 () (InoxSet Context!14602))

(declare-fun e!4314566 () (InoxSet Context!14602))

(assert (=> b!7184372 (= e!4314567 e!4314566)))

(declare-fun c!1337616 () Bool)

(assert (=> b!7184372 (= c!1337616 ((_ is Concat!27194) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))

(declare-fun c!1337617 () Bool)

(declare-fun bm!654914 () Bool)

(declare-fun call!654922 () List!69777)

(assert (=> bm!654914 (= call!654922 ($colon$colon!2843 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) (ite (or c!1337617 c!1337616) (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))))

(declare-fun b!7184373 () Bool)

(declare-fun e!4314569 () (InoxSet Context!14602))

(assert (=> b!7184373 (= e!4314569 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184374 () Bool)

(declare-fun e!4314568 () (InoxSet Context!14602))

(declare-fun call!654919 () (InoxSet Context!14602))

(declare-fun call!654921 () (InoxSet Context!14602))

(assert (=> b!7184374 (= e!4314568 ((_ map or) call!654919 call!654921))))

(declare-fun c!1337615 () Bool)

(declare-fun bm!654915 () Bool)

(assert (=> bm!654915 (= call!654919 (derivationStepZipperDown!2512 (ite c!1337615 (regOne!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) (ite c!1337615 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (Context!14603 call!654922)) lt!2570781))))

(declare-fun b!7184375 () Bool)

(declare-fun e!4314565 () Bool)

(assert (=> b!7184375 (= e!4314565 (nullable!7776 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))))

(declare-fun bm!654916 () Bool)

(declare-fun call!654923 () List!69777)

(assert (=> bm!654916 (= call!654923 call!654922)))

(declare-fun b!7184376 () Bool)

(declare-fun e!4314564 () (InoxSet Context!14602))

(assert (=> b!7184376 (= e!4314564 e!4314568)))

(assert (=> b!7184376 (= c!1337615 ((_ is Union!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))

(declare-fun d!2237889 () Bool)

(declare-fun c!1337614 () Bool)

(assert (=> d!2237889 (= c!1337614 (and ((_ is ElementMatch!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (= (c!1337348 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) lt!2570781)))))

(assert (=> d!2237889 (= (derivationStepZipperDown!2512 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) lt!2570781) e!4314564)))

(declare-fun b!7184377 () Bool)

(declare-fun call!654920 () (InoxSet Context!14602))

(assert (=> b!7184377 (= e!4314567 ((_ map or) call!654919 call!654920))))

(declare-fun bm!654917 () Bool)

(declare-fun call!654924 () (InoxSet Context!14602))

(assert (=> bm!654917 (= call!654924 call!654920)))

(declare-fun b!7184378 () Bool)

(assert (=> b!7184378 (= e!4314566 call!654924)))

(declare-fun bm!654918 () Bool)

(assert (=> bm!654918 (= call!654920 call!654921)))

(declare-fun b!7184379 () Bool)

(declare-fun c!1337618 () Bool)

(assert (=> b!7184379 (= c!1337618 ((_ is Star!18349) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))

(assert (=> b!7184379 (= e!4314566 e!4314569)))

(declare-fun b!7184380 () Bool)

(assert (=> b!7184380 (= e!4314564 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) true))))

(declare-fun b!7184381 () Bool)

(assert (=> b!7184381 (= e!4314569 call!654924)))

(declare-fun bm!654919 () Bool)

(assert (=> bm!654919 (= call!654921 (derivationStepZipperDown!2512 (ite c!1337615 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (ite c!1337617 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (ite c!1337616 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))) (ite (or c!1337615 c!1337617) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (Context!14603 call!654923)) lt!2570781))))

(declare-fun b!7184382 () Bool)

(assert (=> b!7184382 (= c!1337617 e!4314565)))

(declare-fun res!2925878 () Bool)

(assert (=> b!7184382 (=> (not res!2925878) (not e!4314565))))

(assert (=> b!7184382 (= res!2925878 ((_ is Concat!27194) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))

(assert (=> b!7184382 (= e!4314568 e!4314567)))

(assert (= (and d!2237889 c!1337614) b!7184380))

(assert (= (and d!2237889 (not c!1337614)) b!7184376))

(assert (= (and b!7184376 c!1337615) b!7184374))

(assert (= (and b!7184376 (not c!1337615)) b!7184382))

(assert (= (and b!7184382 res!2925878) b!7184375))

(assert (= (and b!7184382 c!1337617) b!7184377))

(assert (= (and b!7184382 (not c!1337617)) b!7184372))

(assert (= (and b!7184372 c!1337616) b!7184378))

(assert (= (and b!7184372 (not c!1337616)) b!7184379))

(assert (= (and b!7184379 c!1337618) b!7184381))

(assert (= (and b!7184379 (not c!1337618)) b!7184373))

(assert (= (or b!7184378 b!7184381) bm!654916))

(assert (= (or b!7184378 b!7184381) bm!654917))

(assert (= (or b!7184377 bm!654917) bm!654918))

(assert (= (or b!7184377 bm!654916) bm!654914))

(assert (= (or b!7184374 bm!654918) bm!654919))

(assert (= (or b!7184374 b!7184377) bm!654915))

(declare-fun m!7881574 () Bool)

(assert (=> bm!654915 m!7881574))

(declare-fun m!7881576 () Bool)

(assert (=> b!7184380 m!7881576))

(declare-fun m!7881578 () Bool)

(assert (=> b!7184375 m!7881578))

(declare-fun m!7881580 () Bool)

(assert (=> bm!654919 m!7881580))

(declare-fun m!7881582 () Bool)

(assert (=> bm!654914 m!7881582))

(assert (=> bm!654783 d!2237889))

(declare-fun d!2237891 () Bool)

(declare-fun res!2925879 () Bool)

(declare-fun e!4314570 () Bool)

(assert (=> d!2237891 (=> res!2925879 e!4314570)))

(assert (=> d!2237891 (= res!2925879 ((_ is Nil!69653) (t!383798 (t!383798 (exprs!7801 setElem!53131)))))))

(assert (=> d!2237891 (= (forall!17177 (t!383798 (t!383798 (exprs!7801 setElem!53131))) lambda!437532) e!4314570)))

(declare-fun b!7184383 () Bool)

(declare-fun e!4314571 () Bool)

(assert (=> b!7184383 (= e!4314570 e!4314571)))

(declare-fun res!2925880 () Bool)

(assert (=> b!7184383 (=> (not res!2925880) (not e!4314571))))

(assert (=> b!7184383 (= res!2925880 (dynLambda!28369 lambda!437532 (h!76101 (t!383798 (t!383798 (exprs!7801 setElem!53131))))))))

(declare-fun b!7184384 () Bool)

(assert (=> b!7184384 (= e!4314571 (forall!17177 (t!383798 (t!383798 (t!383798 (exprs!7801 setElem!53131)))) lambda!437532))))

(assert (= (and d!2237891 (not res!2925879)) b!7184383))

(assert (= (and b!7184383 res!2925880) b!7184384))

(declare-fun b_lambda!275067 () Bool)

(assert (=> (not b_lambda!275067) (not b!7184383)))

(declare-fun m!7881584 () Bool)

(assert (=> b!7184383 m!7881584))

(declare-fun m!7881586 () Bool)

(assert (=> b!7184384 m!7881586))

(assert (=> b!7183663 d!2237891))

(declare-fun d!2237893 () Bool)

(declare-fun lt!2570854 () Bool)

(assert (=> d!2237893 (= lt!2570854 (select (content!14316 (t!383800 res!2925518)) (h!76103 res!2925518)))))

(declare-fun e!4314572 () Bool)

(assert (=> d!2237893 (= lt!2570854 e!4314572)))

(declare-fun res!2925881 () Bool)

(assert (=> d!2237893 (=> (not res!2925881) (not e!4314572))))

(assert (=> d!2237893 (= res!2925881 ((_ is Cons!69655) (t!383800 res!2925518)))))

(assert (=> d!2237893 (= (contains!20718 (t!383800 res!2925518) (h!76103 res!2925518)) lt!2570854)))

(declare-fun b!7184385 () Bool)

(declare-fun e!4314573 () Bool)

(assert (=> b!7184385 (= e!4314572 e!4314573)))

(declare-fun res!2925882 () Bool)

(assert (=> b!7184385 (=> res!2925882 e!4314573)))

(assert (=> b!7184385 (= res!2925882 (= (h!76103 (t!383800 res!2925518)) (h!76103 res!2925518)))))

(declare-fun b!7184386 () Bool)

(assert (=> b!7184386 (= e!4314573 (contains!20718 (t!383800 (t!383800 res!2925518)) (h!76103 res!2925518)))))

(assert (= (and d!2237893 res!2925881) b!7184385))

(assert (= (and b!7184385 (not res!2925882)) b!7184386))

(assert (=> d!2237893 m!7880890))

(declare-fun m!7881588 () Bool)

(assert (=> d!2237893 m!7881588))

(declare-fun m!7881590 () Bool)

(assert (=> b!7184386 m!7881590))

(assert (=> b!7183614 d!2237893))

(declare-fun b!7184387 () Bool)

(declare-fun e!4314577 () (InoxSet Context!14602))

(declare-fun e!4314576 () (InoxSet Context!14602))

(assert (=> b!7184387 (= e!4314577 e!4314576)))

(declare-fun c!1337621 () Bool)

(assert (=> b!7184387 (= c!1337621 ((_ is Concat!27194) (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))))))

(declare-fun c!1337622 () Bool)

(declare-fun call!654928 () List!69777)

(declare-fun bm!654920 () Bool)

(assert (=> bm!654920 (= call!654928 ($colon$colon!2843 (exprs!7801 (ite (or c!1337504 c!1337506) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654817))) (ite (or c!1337622 c!1337621) (regTwo!37210 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))) (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))))))

(declare-fun b!7184388 () Bool)

(declare-fun e!4314579 () (InoxSet Context!14602))

(assert (=> b!7184388 (= e!4314579 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184389 () Bool)

(declare-fun e!4314578 () (InoxSet Context!14602))

(declare-fun call!654925 () (InoxSet Context!14602))

(declare-fun call!654927 () (InoxSet Context!14602))

(assert (=> b!7184389 (= e!4314578 ((_ map or) call!654925 call!654927))))

(declare-fun c!1337620 () Bool)

(declare-fun bm!654921 () Bool)

(assert (=> bm!654921 (= call!654925 (derivationStepZipperDown!2512 (ite c!1337620 (regOne!37211 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))) (regOne!37210 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))) (ite c!1337620 (ite (or c!1337504 c!1337506) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654817)) (Context!14603 call!654928)) lt!2570781))))

(declare-fun b!7184390 () Bool)

(declare-fun e!4314575 () Bool)

(assert (=> b!7184390 (= e!4314575 (nullable!7776 (regOne!37210 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))))))

(declare-fun bm!654922 () Bool)

(declare-fun call!654929 () List!69777)

(assert (=> bm!654922 (= call!654929 call!654928)))

(declare-fun b!7184391 () Bool)

(declare-fun e!4314574 () (InoxSet Context!14602))

(assert (=> b!7184391 (= e!4314574 e!4314578)))

(assert (=> b!7184391 (= c!1337620 ((_ is Union!18349) (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))))))

(declare-fun d!2237895 () Bool)

(declare-fun c!1337619 () Bool)

(assert (=> d!2237895 (= c!1337619 (and ((_ is ElementMatch!18349) (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))) (= (c!1337348 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))) lt!2570781)))))

(assert (=> d!2237895 (= (derivationStepZipperDown!2512 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))) (ite (or c!1337504 c!1337506) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654817)) lt!2570781) e!4314574)))

(declare-fun b!7184392 () Bool)

(declare-fun call!654926 () (InoxSet Context!14602))

(assert (=> b!7184392 (= e!4314577 ((_ map or) call!654925 call!654926))))

(declare-fun bm!654923 () Bool)

(declare-fun call!654930 () (InoxSet Context!14602))

(assert (=> bm!654923 (= call!654930 call!654926)))

(declare-fun b!7184393 () Bool)

(assert (=> b!7184393 (= e!4314576 call!654930)))

(declare-fun bm!654924 () Bool)

(assert (=> bm!654924 (= call!654926 call!654927)))

(declare-fun b!7184394 () Bool)

(declare-fun c!1337623 () Bool)

(assert (=> b!7184394 (= c!1337623 ((_ is Star!18349) (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))))))

(assert (=> b!7184394 (= e!4314576 e!4314579)))

(declare-fun b!7184395 () Bool)

(assert (=> b!7184395 (= e!4314574 (store ((as const (Array Context!14602 Bool)) false) (ite (or c!1337504 c!1337506) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654817)) true))))

(declare-fun b!7184396 () Bool)

(assert (=> b!7184396 (= e!4314579 call!654930)))

(declare-fun bm!654925 () Bool)

(assert (=> bm!654925 (= call!654927 (derivationStepZipperDown!2512 (ite c!1337620 (regTwo!37211 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))) (ite c!1337622 (regTwo!37210 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))) (ite c!1337621 (regOne!37210 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))) (reg!18678 (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))))) (ite (or c!1337620 c!1337622) (ite (or c!1337504 c!1337506) (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)) (Context!14603 call!654817)) (Context!14603 call!654929)) lt!2570781))))

(declare-fun b!7184397 () Bool)

(assert (=> b!7184397 (= c!1337622 e!4314575)))

(declare-fun res!2925883 () Bool)

(assert (=> b!7184397 (=> (not res!2925883) (not e!4314575))))

(assert (=> b!7184397 (= res!2925883 ((_ is Concat!27194) (ite c!1337504 (regTwo!37211 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337506 (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337505 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (reg!18678 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))))))))))

(assert (=> b!7184397 (= e!4314578 e!4314577)))

(assert (= (and d!2237895 c!1337619) b!7184395))

(assert (= (and d!2237895 (not c!1337619)) b!7184391))

(assert (= (and b!7184391 c!1337620) b!7184389))

(assert (= (and b!7184391 (not c!1337620)) b!7184397))

(assert (= (and b!7184397 res!2925883) b!7184390))

(assert (= (and b!7184397 c!1337622) b!7184392))

(assert (= (and b!7184397 (not c!1337622)) b!7184387))

(assert (= (and b!7184387 c!1337621) b!7184393))

(assert (= (and b!7184387 (not c!1337621)) b!7184394))

(assert (= (and b!7184394 c!1337623) b!7184396))

(assert (= (and b!7184394 (not c!1337623)) b!7184388))

(assert (= (or b!7184393 b!7184396) bm!654922))

(assert (= (or b!7184393 b!7184396) bm!654923))

(assert (= (or b!7184392 bm!654923) bm!654924))

(assert (= (or b!7184392 bm!654922) bm!654920))

(assert (= (or b!7184389 bm!654924) bm!654925))

(assert (= (or b!7184389 b!7184392) bm!654921))

(declare-fun m!7881592 () Bool)

(assert (=> bm!654921 m!7881592))

(declare-fun m!7881594 () Bool)

(assert (=> b!7184395 m!7881594))

(declare-fun m!7881596 () Bool)

(assert (=> b!7184390 m!7881596))

(declare-fun m!7881598 () Bool)

(assert (=> bm!654925 m!7881598))

(declare-fun m!7881600 () Bool)

(assert (=> bm!654920 m!7881600))

(assert (=> bm!654813 d!2237895))

(declare-fun b!7184398 () Bool)

(declare-fun res!2925887 () Bool)

(declare-fun e!4314585 () Bool)

(assert (=> b!7184398 (=> (not res!2925887) (not e!4314585))))

(declare-fun call!654931 () Bool)

(assert (=> b!7184398 (= res!2925887 call!654931)))

(declare-fun e!4314583 () Bool)

(assert (=> b!7184398 (= e!4314583 e!4314585)))

(declare-fun b!7184399 () Bool)

(declare-fun e!4314582 () Bool)

(declare-fun call!654932 () Bool)

(assert (=> b!7184399 (= e!4314582 call!654932)))

(declare-fun bm!654926 () Bool)

(declare-fun call!654933 () Bool)

(assert (=> bm!654926 (= call!654932 call!654933)))

(declare-fun b!7184400 () Bool)

(declare-fun e!4314581 () Bool)

(assert (=> b!7184400 (= e!4314581 e!4314582)))

(declare-fun res!2925884 () Bool)

(assert (=> b!7184400 (=> (not res!2925884) (not e!4314582))))

(assert (=> b!7184400 (= res!2925884 call!654931)))

(declare-fun c!1337625 () Bool)

(declare-fun bm!654927 () Bool)

(assert (=> bm!654927 (= call!654931 (validRegex!9468 (ite c!1337625 (regOne!37211 (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))) (regOne!37210 (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))))))))

(declare-fun b!7184401 () Bool)

(declare-fun e!4314584 () Bool)

(declare-fun e!4314586 () Bool)

(assert (=> b!7184401 (= e!4314584 e!4314586)))

(declare-fun c!1337624 () Bool)

(assert (=> b!7184401 (= c!1337624 ((_ is Star!18349) (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))))))

(declare-fun d!2237897 () Bool)

(declare-fun res!2925885 () Bool)

(assert (=> d!2237897 (=> res!2925885 e!4314584)))

(assert (=> d!2237897 (= res!2925885 ((_ is ElementMatch!18349) (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))))))

(assert (=> d!2237897 (= (validRegex!9468 (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))) e!4314584)))

(declare-fun b!7184402 () Bool)

(declare-fun e!4314580 () Bool)

(assert (=> b!7184402 (= e!4314580 call!654933)))

(declare-fun b!7184403 () Bool)

(assert (=> b!7184403 (= e!4314586 e!4314583)))

(assert (=> b!7184403 (= c!1337625 ((_ is Union!18349) (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))))))

(declare-fun bm!654928 () Bool)

(assert (=> bm!654928 (= call!654933 (validRegex!9468 (ite c!1337624 (reg!18678 (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))) (ite c!1337625 (regTwo!37211 (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))) (regTwo!37210 (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813)))))))))

(declare-fun b!7184404 () Bool)

(assert (=> b!7184404 (= e!4314585 call!654932)))

(declare-fun b!7184405 () Bool)

(declare-fun res!2925886 () Bool)

(assert (=> b!7184405 (=> res!2925886 e!4314581)))

(assert (=> b!7184405 (= res!2925886 (not ((_ is Concat!27194) (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813)))))))

(assert (=> b!7184405 (= e!4314583 e!4314581)))

(declare-fun b!7184406 () Bool)

(assert (=> b!7184406 (= e!4314586 e!4314580)))

(declare-fun res!2925888 () Bool)

(assert (=> b!7184406 (= res!2925888 (not (nullable!7776 (reg!18678 (ite c!1337490 (regOne!37211 lt!2570813) (regOne!37210 lt!2570813))))))))

(assert (=> b!7184406 (=> (not res!2925888) (not e!4314580))))

(assert (= (and d!2237897 (not res!2925885)) b!7184401))

(assert (= (and b!7184401 c!1337624) b!7184406))

(assert (= (and b!7184401 (not c!1337624)) b!7184403))

(assert (= (and b!7184406 res!2925888) b!7184402))

(assert (= (and b!7184403 c!1337625) b!7184398))

(assert (= (and b!7184403 (not c!1337625)) b!7184405))

(assert (= (and b!7184398 res!2925887) b!7184404))

(assert (= (and b!7184405 (not res!2925886)) b!7184400))

(assert (= (and b!7184400 res!2925884) b!7184399))

(assert (= (or b!7184398 b!7184400) bm!654927))

(assert (= (or b!7184404 b!7184399) bm!654926))

(assert (= (or b!7184402 bm!654926) bm!654928))

(declare-fun m!7881602 () Bool)

(assert (=> bm!654927 m!7881602))

(declare-fun m!7881604 () Bool)

(assert (=> bm!654928 m!7881604))

(declare-fun m!7881606 () Bool)

(assert (=> b!7184406 m!7881606))

(assert (=> bm!654797 d!2237897))

(declare-fun d!2237899 () Bool)

(declare-fun res!2925889 () Bool)

(declare-fun e!4314587 () Bool)

(assert (=> d!2237899 (=> res!2925889 e!4314587)))

(assert (=> d!2237899 (= res!2925889 ((_ is Nil!69653) (t!383798 lt!2570826)))))

(assert (=> d!2237899 (= (forall!17177 (t!383798 lt!2570826) lambda!437565) e!4314587)))

(declare-fun b!7184407 () Bool)

(declare-fun e!4314588 () Bool)

(assert (=> b!7184407 (= e!4314587 e!4314588)))

(declare-fun res!2925890 () Bool)

(assert (=> b!7184407 (=> (not res!2925890) (not e!4314588))))

(assert (=> b!7184407 (= res!2925890 (dynLambda!28369 lambda!437565 (h!76101 (t!383798 lt!2570826))))))

(declare-fun b!7184408 () Bool)

(assert (=> b!7184408 (= e!4314588 (forall!17177 (t!383798 (t!383798 lt!2570826)) lambda!437565))))

(assert (= (and d!2237899 (not res!2925889)) b!7184407))

(assert (= (and b!7184407 res!2925890) b!7184408))

(declare-fun b_lambda!275069 () Bool)

(assert (=> (not b_lambda!275069) (not b!7184407)))

(declare-fun m!7881608 () Bool)

(assert (=> b!7184407 m!7881608))

(declare-fun m!7881610 () Bool)

(assert (=> b!7184408 m!7881610))

(assert (=> b!7183831 d!2237899))

(declare-fun b!7184409 () Bool)

(declare-fun res!2925894 () Bool)

(declare-fun e!4314594 () Bool)

(assert (=> b!7184409 (=> (not res!2925894) (not e!4314594))))

(declare-fun call!654934 () Bool)

(assert (=> b!7184409 (= res!2925894 call!654934)))

(declare-fun e!4314592 () Bool)

(assert (=> b!7184409 (= e!4314592 e!4314594)))

(declare-fun b!7184410 () Bool)

(declare-fun e!4314591 () Bool)

(declare-fun call!654935 () Bool)

(assert (=> b!7184410 (= e!4314591 call!654935)))

(declare-fun bm!654929 () Bool)

(declare-fun call!654936 () Bool)

(assert (=> bm!654929 (= call!654935 call!654936)))

(declare-fun b!7184411 () Bool)

(declare-fun e!4314590 () Bool)

(assert (=> b!7184411 (= e!4314590 e!4314591)))

(declare-fun res!2925891 () Bool)

(assert (=> b!7184411 (=> (not res!2925891) (not e!4314591))))

(assert (=> b!7184411 (= res!2925891 call!654934)))

(declare-fun c!1337627 () Bool)

(declare-fun bm!654930 () Bool)

(assert (=> bm!654930 (= call!654934 (validRegex!9468 (ite c!1337627 (regOne!37211 (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))) (regOne!37210 (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))))))

(declare-fun b!7184412 () Bool)

(declare-fun e!4314593 () Bool)

(declare-fun e!4314595 () Bool)

(assert (=> b!7184412 (= e!4314593 e!4314595)))

(declare-fun c!1337626 () Bool)

(assert (=> b!7184412 (= c!1337626 ((_ is Star!18349) (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))))

(declare-fun d!2237901 () Bool)

(declare-fun res!2925892 () Bool)

(assert (=> d!2237901 (=> res!2925892 e!4314593)))

(assert (=> d!2237901 (= res!2925892 ((_ is ElementMatch!18349) (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))))

(assert (=> d!2237901 (= (validRegex!9468 (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))) e!4314593)))

(declare-fun b!7184413 () Bool)

(declare-fun e!4314589 () Bool)

(assert (=> b!7184413 (= e!4314589 call!654936)))

(declare-fun b!7184414 () Bool)

(assert (=> b!7184414 (= e!4314595 e!4314592)))

(assert (=> b!7184414 (= c!1337627 ((_ is Union!18349) (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))))

(declare-fun bm!654931 () Bool)

(assert (=> bm!654931 (= call!654936 (validRegex!9468 (ite c!1337626 (reg!18678 (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))) (ite c!1337627 (regTwo!37211 (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))) (regTwo!37210 (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))))))

(declare-fun b!7184415 () Bool)

(assert (=> b!7184415 (= e!4314594 call!654935)))

(declare-fun b!7184416 () Bool)

(declare-fun res!2925893 () Bool)

(assert (=> b!7184416 (=> res!2925893 e!4314590)))

(assert (=> b!7184416 (= res!2925893 (not ((_ is Concat!27194) (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))))))))))

(assert (=> b!7184416 (= e!4314592 e!4314590)))

(declare-fun b!7184417 () Bool)

(assert (=> b!7184417 (= e!4314595 e!4314589)))

(declare-fun res!2925895 () Bool)

(assert (=> b!7184417 (= res!2925895 (not (nullable!7776 (reg!18678 (ite c!1337517 (reg!18678 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (ite c!1337518 (regTwo!37211 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807))) (regTwo!37210 (ite c!1337432 (regOne!37211 lt!2570807) (regOne!37210 lt!2570807)))))))))))

(assert (=> b!7184417 (=> (not res!2925895) (not e!4314589))))

(assert (= (and d!2237901 (not res!2925892)) b!7184412))

(assert (= (and b!7184412 c!1337626) b!7184417))

(assert (= (and b!7184412 (not c!1337626)) b!7184414))

(assert (= (and b!7184417 res!2925895) b!7184413))

(assert (= (and b!7184414 c!1337627) b!7184409))

(assert (= (and b!7184414 (not c!1337627)) b!7184416))

(assert (= (and b!7184409 res!2925894) b!7184415))

(assert (= (and b!7184416 (not res!2925893)) b!7184411))

(assert (= (and b!7184411 res!2925891) b!7184410))

(assert (= (or b!7184409 b!7184411) bm!654930))

(assert (= (or b!7184415 b!7184410) bm!654929))

(assert (= (or b!7184413 bm!654929) bm!654931))

(declare-fun m!7881612 () Bool)

(assert (=> bm!654930 m!7881612))

(declare-fun m!7881614 () Bool)

(assert (=> bm!654931 m!7881614))

(declare-fun m!7881616 () Bool)

(assert (=> b!7184417 m!7881616))

(assert (=> bm!654822 d!2237901))

(declare-fun d!2237903 () Bool)

(assert (=> d!2237903 (= (isEmpty!40211 (tail!14069 (exprs!7801 (h!76103 (toList!11292 z!3530))))) ((_ is Nil!69653) (tail!14069 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(assert (=> b!7183732 d!2237903))

(declare-fun d!2237905 () Bool)

(assert (=> d!2237905 (= (tail!14069 (exprs!7801 (h!76103 (toList!11292 z!3530)))) (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(assert (=> b!7183732 d!2237905))

(declare-fun d!2237907 () Bool)

(assert (=> d!2237907 (= (isUnion!1579 lt!2570833) ((_ is Union!18349) lt!2570833))))

(assert (=> b!7183748 d!2237907))

(declare-fun d!2237909 () Bool)

(declare-fun res!2925896 () Bool)

(declare-fun e!4314596 () Bool)

(assert (=> d!2237909 (=> res!2925896 e!4314596)))

(assert (=> d!2237909 (= res!2925896 ((_ is Nil!69653) (exprs!7801 (h!76103 res!2925518))))))

(assert (=> d!2237909 (= (forall!17177 (exprs!7801 (h!76103 res!2925518)) lambda!437568) e!4314596)))

(declare-fun b!7184418 () Bool)

(declare-fun e!4314597 () Bool)

(assert (=> b!7184418 (= e!4314596 e!4314597)))

(declare-fun res!2925897 () Bool)

(assert (=> b!7184418 (=> (not res!2925897) (not e!4314597))))

(assert (=> b!7184418 (= res!2925897 (dynLambda!28369 lambda!437568 (h!76101 (exprs!7801 (h!76103 res!2925518)))))))

(declare-fun b!7184419 () Bool)

(assert (=> b!7184419 (= e!4314597 (forall!17177 (t!383798 (exprs!7801 (h!76103 res!2925518))) lambda!437568))))

(assert (= (and d!2237909 (not res!2925896)) b!7184418))

(assert (= (and b!7184418 res!2925897) b!7184419))

(declare-fun b_lambda!275071 () Bool)

(assert (=> (not b_lambda!275071) (not b!7184418)))

(declare-fun m!7881618 () Bool)

(assert (=> b!7184418 m!7881618))

(declare-fun m!7881620 () Bool)

(assert (=> b!7184419 m!7881620))

(assert (=> d!2237555 d!2237909))

(declare-fun bs!1897342 () Bool)

(declare-fun d!2237911 () Bool)

(assert (= bs!1897342 (and d!2237911 d!2237597)))

(declare-fun lambda!437597 () Int)

(assert (=> bs!1897342 (= lambda!437597 lambda!437576)))

(declare-fun bs!1897343 () Bool)

(assert (= bs!1897343 (and d!2237911 d!2237781)))

(assert (=> bs!1897343 (= lambda!437597 lambda!437592)))

(declare-fun bs!1897344 () Bool)

(assert (= bs!1897344 (and d!2237911 d!2237791)))

(assert (=> bs!1897344 (= lambda!437597 lambda!437594)))

(declare-fun bs!1897345 () Bool)

(assert (= bs!1897345 (and d!2237911 d!2237569)))

(assert (=> bs!1897345 (= lambda!437597 lambda!437569)))

(declare-fun bs!1897346 () Bool)

(assert (= bs!1897346 (and d!2237911 d!2237379)))

(assert (=> bs!1897346 (= lambda!437597 lambda!437531)))

(declare-fun bs!1897347 () Bool)

(assert (= bs!1897347 (and d!2237911 d!2237867)))

(assert (=> bs!1897347 (= lambda!437597 lambda!437596)))

(declare-fun bs!1897348 () Bool)

(assert (= bs!1897348 (and d!2237911 d!2237593)))

(assert (=> bs!1897348 (= lambda!437597 lambda!437575)))

(declare-fun bs!1897349 () Bool)

(assert (= bs!1897349 (and d!2237911 d!2237811)))

(assert (=> bs!1897349 (= lambda!437597 lambda!437595)))

(declare-fun bs!1897350 () Bool)

(assert (= bs!1897350 (and d!2237911 d!2237605)))

(assert (=> bs!1897350 (= lambda!437597 lambda!437578)))

(declare-fun bs!1897351 () Bool)

(assert (= bs!1897351 (and d!2237911 d!2237533)))

(assert (=> bs!1897351 (= lambda!437597 lambda!437566)))

(declare-fun bs!1897352 () Bool)

(assert (= bs!1897352 (and d!2237911 d!2237591)))

(assert (=> bs!1897352 (= lambda!437597 lambda!437574)))

(declare-fun bs!1897353 () Bool)

(assert (= bs!1897353 (and d!2237911 d!2237403)))

(assert (=> bs!1897353 (not (= lambda!437597 lambda!437536))))

(declare-fun bs!1897354 () Bool)

(assert (= bs!1897354 (and d!2237911 d!2237509)))

(assert (=> bs!1897354 (= lambda!437597 lambda!437565)))

(declare-fun bs!1897355 () Bool)

(assert (= bs!1897355 (and d!2237911 d!2237555)))

(assert (=> bs!1897355 (= lambda!437597 lambda!437568)))

(declare-fun bs!1897356 () Bool)

(assert (= bs!1897356 (and d!2237911 d!2237637)))

(assert (=> bs!1897356 (= lambda!437597 lambda!437581)))

(declare-fun bs!1897357 () Bool)

(assert (= bs!1897357 (and d!2237911 d!2237785)))

(assert (=> bs!1897357 (= lambda!437597 lambda!437593)))

(declare-fun bs!1897358 () Bool)

(assert (= bs!1897358 (and d!2237911 d!2237493)))

(assert (=> bs!1897358 (= lambda!437597 lambda!437561)))

(declare-fun bs!1897359 () Bool)

(assert (= bs!1897359 (and d!2237911 d!2237477)))

(assert (=> bs!1897359 (= lambda!437597 lambda!437546)))

(declare-fun bs!1897360 () Bool)

(assert (= bs!1897360 (and d!2237911 d!2237577)))

(assert (=> bs!1897360 (= lambda!437597 lambda!437570)))

(declare-fun bs!1897361 () Bool)

(assert (= bs!1897361 (and d!2237911 d!2237395)))

(assert (=> bs!1897361 (= lambda!437597 lambda!437532)))

(declare-fun bs!1897362 () Bool)

(assert (= bs!1897362 (and d!2237911 d!2237551)))

(assert (=> bs!1897362 (= lambda!437597 lambda!437567)))

(declare-fun b!7184420 () Bool)

(declare-fun e!4314600 () Regex!18349)

(assert (=> b!7184420 (= e!4314600 (Union!18349 (h!76101 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))) (generalisedUnion!2771 (t!383798 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))))

(declare-fun b!7184421 () Bool)

(declare-fun e!4314598 () Regex!18349)

(assert (=> b!7184421 (= e!4314598 (h!76101 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun b!7184422 () Bool)

(declare-fun e!4314599 () Bool)

(declare-fun lt!2570855 () Regex!18349)

(assert (=> b!7184422 (= e!4314599 (isUnion!1579 lt!2570855))))

(declare-fun b!7184424 () Bool)

(assert (=> b!7184424 (= e!4314600 EmptyLang!18349)))

(declare-fun b!7184425 () Bool)

(declare-fun e!4314602 () Bool)

(declare-fun e!4314601 () Bool)

(assert (=> b!7184425 (= e!4314602 e!4314601)))

(declare-fun c!1337629 () Bool)

(assert (=> b!7184425 (= c!1337629 (isEmpty!40211 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun b!7184426 () Bool)

(declare-fun e!4314603 () Bool)

(assert (=> b!7184426 (= e!4314603 (isEmpty!40211 (t!383798 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))))

(declare-fun b!7184427 () Bool)

(assert (=> b!7184427 (= e!4314599 (= lt!2570855 (head!14664 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))))

(declare-fun b!7184428 () Bool)

(assert (=> b!7184428 (= e!4314598 e!4314600)))

(declare-fun c!1337631 () Bool)

(assert (=> b!7184428 (= c!1337631 ((_ is Cons!69653) (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun b!7184429 () Bool)

(assert (=> b!7184429 (= e!4314601 e!4314599)))

(declare-fun c!1337630 () Bool)

(assert (=> b!7184429 (= c!1337630 (isEmpty!40211 (tail!14069 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))))

(assert (=> d!2237911 e!4314602))

(declare-fun res!2925898 () Bool)

(assert (=> d!2237911 (=> (not res!2925898) (not e!4314602))))

(assert (=> d!2237911 (= res!2925898 (validRegex!9468 lt!2570855))))

(assert (=> d!2237911 (= lt!2570855 e!4314598)))

(declare-fun c!1337628 () Bool)

(assert (=> d!2237911 (= c!1337628 e!4314603)))

(declare-fun res!2925899 () Bool)

(assert (=> d!2237911 (=> (not res!2925899) (not e!4314603))))

(assert (=> d!2237911 (= res!2925899 ((_ is Cons!69653) (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(assert (=> d!2237911 (forall!17177 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))) lambda!437597)))

(assert (=> d!2237911 (= (generalisedUnion!2771 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))) lt!2570855)))

(declare-fun b!7184423 () Bool)

(assert (=> b!7184423 (= e!4314601 (isEmptyLang!2151 lt!2570855))))

(assert (= (and d!2237911 res!2925899) b!7184426))

(assert (= (and d!2237911 c!1337628) b!7184421))

(assert (= (and d!2237911 (not c!1337628)) b!7184428))

(assert (= (and b!7184428 c!1337631) b!7184420))

(assert (= (and b!7184428 (not c!1337631)) b!7184424))

(assert (= (and d!2237911 res!2925898) b!7184425))

(assert (= (and b!7184425 c!1337629) b!7184423))

(assert (= (and b!7184425 (not c!1337629)) b!7184429))

(assert (= (and b!7184429 c!1337630) b!7184427))

(assert (= (and b!7184429 (not c!1337630)) b!7184422))

(declare-fun m!7881622 () Bool)

(assert (=> b!7184422 m!7881622))

(assert (=> b!7184425 m!7880864))

(declare-fun m!7881624 () Bool)

(assert (=> b!7184423 m!7881624))

(declare-fun m!7881626 () Bool)

(assert (=> d!2237911 m!7881626))

(declare-fun m!7881628 () Bool)

(assert (=> d!2237911 m!7881628))

(declare-fun m!7881630 () Bool)

(assert (=> b!7184426 m!7881630))

(declare-fun m!7881632 () Bool)

(assert (=> b!7184429 m!7881632))

(assert (=> b!7184429 m!7881632))

(declare-fun m!7881634 () Bool)

(assert (=> b!7184429 m!7881634))

(declare-fun m!7881636 () Bool)

(assert (=> b!7184420 m!7881636))

(declare-fun m!7881638 () Bool)

(assert (=> b!7184427 m!7881638))

(assert (=> b!7183637 d!2237911))

(declare-fun bs!1897363 () Bool)

(declare-fun d!2237913 () Bool)

(assert (= bs!1897363 (and d!2237913 d!2237597)))

(declare-fun lambda!437598 () Int)

(assert (=> bs!1897363 (= lambda!437598 lambda!437576)))

(declare-fun bs!1897364 () Bool)

(assert (= bs!1897364 (and d!2237913 d!2237781)))

(assert (=> bs!1897364 (= lambda!437598 lambda!437592)))

(declare-fun bs!1897365 () Bool)

(assert (= bs!1897365 (and d!2237913 d!2237791)))

(assert (=> bs!1897365 (= lambda!437598 lambda!437594)))

(declare-fun bs!1897366 () Bool)

(assert (= bs!1897366 (and d!2237913 d!2237569)))

(assert (=> bs!1897366 (= lambda!437598 lambda!437569)))

(declare-fun bs!1897367 () Bool)

(assert (= bs!1897367 (and d!2237913 d!2237379)))

(assert (=> bs!1897367 (= lambda!437598 lambda!437531)))

(declare-fun bs!1897368 () Bool)

(assert (= bs!1897368 (and d!2237913 d!2237867)))

(assert (=> bs!1897368 (= lambda!437598 lambda!437596)))

(declare-fun bs!1897369 () Bool)

(assert (= bs!1897369 (and d!2237913 d!2237593)))

(assert (=> bs!1897369 (= lambda!437598 lambda!437575)))

(declare-fun bs!1897370 () Bool)

(assert (= bs!1897370 (and d!2237913 d!2237811)))

(assert (=> bs!1897370 (= lambda!437598 lambda!437595)))

(declare-fun bs!1897371 () Bool)

(assert (= bs!1897371 (and d!2237913 d!2237911)))

(assert (=> bs!1897371 (= lambda!437598 lambda!437597)))

(declare-fun bs!1897372 () Bool)

(assert (= bs!1897372 (and d!2237913 d!2237605)))

(assert (=> bs!1897372 (= lambda!437598 lambda!437578)))

(declare-fun bs!1897373 () Bool)

(assert (= bs!1897373 (and d!2237913 d!2237533)))

(assert (=> bs!1897373 (= lambda!437598 lambda!437566)))

(declare-fun bs!1897374 () Bool)

(assert (= bs!1897374 (and d!2237913 d!2237591)))

(assert (=> bs!1897374 (= lambda!437598 lambda!437574)))

(declare-fun bs!1897375 () Bool)

(assert (= bs!1897375 (and d!2237913 d!2237403)))

(assert (=> bs!1897375 (not (= lambda!437598 lambda!437536))))

(declare-fun bs!1897376 () Bool)

(assert (= bs!1897376 (and d!2237913 d!2237509)))

(assert (=> bs!1897376 (= lambda!437598 lambda!437565)))

(declare-fun bs!1897377 () Bool)

(assert (= bs!1897377 (and d!2237913 d!2237555)))

(assert (=> bs!1897377 (= lambda!437598 lambda!437568)))

(declare-fun bs!1897378 () Bool)

(assert (= bs!1897378 (and d!2237913 d!2237637)))

(assert (=> bs!1897378 (= lambda!437598 lambda!437581)))

(declare-fun bs!1897379 () Bool)

(assert (= bs!1897379 (and d!2237913 d!2237785)))

(assert (=> bs!1897379 (= lambda!437598 lambda!437593)))

(declare-fun bs!1897380 () Bool)

(assert (= bs!1897380 (and d!2237913 d!2237493)))

(assert (=> bs!1897380 (= lambda!437598 lambda!437561)))

(declare-fun bs!1897381 () Bool)

(assert (= bs!1897381 (and d!2237913 d!2237477)))

(assert (=> bs!1897381 (= lambda!437598 lambda!437546)))

(declare-fun bs!1897382 () Bool)

(assert (= bs!1897382 (and d!2237913 d!2237577)))

(assert (=> bs!1897382 (= lambda!437598 lambda!437570)))

(declare-fun bs!1897383 () Bool)

(assert (= bs!1897383 (and d!2237913 d!2237395)))

(assert (=> bs!1897383 (= lambda!437598 lambda!437532)))

(declare-fun bs!1897384 () Bool)

(assert (= bs!1897384 (and d!2237913 d!2237551)))

(assert (=> bs!1897384 (= lambda!437598 lambda!437567)))

(assert (=> d!2237913 (= (inv!88894 setElem!53148) (forall!17177 (exprs!7801 setElem!53148) lambda!437598))))

(declare-fun bs!1897385 () Bool)

(assert (= bs!1897385 d!2237913))

(declare-fun m!7881640 () Bool)

(assert (=> bs!1897385 m!7881640))

(assert (=> setNonEmpty!53148 d!2237913))

(declare-fun b!7184430 () Bool)

(declare-fun res!2925903 () Bool)

(declare-fun e!4314609 () Bool)

(assert (=> b!7184430 (=> (not res!2925903) (not e!4314609))))

(declare-fun call!654937 () Bool)

(assert (=> b!7184430 (= res!2925903 call!654937)))

(declare-fun e!4314607 () Bool)

(assert (=> b!7184430 (= e!4314607 e!4314609)))

(declare-fun b!7184431 () Bool)

(declare-fun e!4314606 () Bool)

(declare-fun call!654938 () Bool)

(assert (=> b!7184431 (= e!4314606 call!654938)))

(declare-fun bm!654932 () Bool)

(declare-fun call!654939 () Bool)

(assert (=> bm!654932 (= call!654938 call!654939)))

(declare-fun b!7184432 () Bool)

(declare-fun e!4314605 () Bool)

(assert (=> b!7184432 (= e!4314605 e!4314606)))

(declare-fun res!2925900 () Bool)

(assert (=> b!7184432 (=> (not res!2925900) (not e!4314606))))

(assert (=> b!7184432 (= res!2925900 call!654937)))

(declare-fun c!1337633 () Bool)

(declare-fun bm!654933 () Bool)

(assert (=> bm!654933 (= call!654937 (validRegex!9468 (ite c!1337633 (regOne!37211 (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))) (regOne!37210 (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))))))))

(declare-fun b!7184433 () Bool)

(declare-fun e!4314608 () Bool)

(declare-fun e!4314610 () Bool)

(assert (=> b!7184433 (= e!4314608 e!4314610)))

(declare-fun c!1337632 () Bool)

(assert (=> b!7184433 (= c!1337632 ((_ is Star!18349) (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))))))

(declare-fun d!2237915 () Bool)

(declare-fun res!2925901 () Bool)

(assert (=> d!2237915 (=> res!2925901 e!4314608)))

(assert (=> d!2237915 (= res!2925901 ((_ is ElementMatch!18349) (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))))))

(assert (=> d!2237915 (= (validRegex!9468 (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))) e!4314608)))

(declare-fun b!7184434 () Bool)

(declare-fun e!4314604 () Bool)

(assert (=> b!7184434 (= e!4314604 call!654939)))

(declare-fun b!7184435 () Bool)

(assert (=> b!7184435 (= e!4314610 e!4314607)))

(assert (=> b!7184435 (= c!1337633 ((_ is Union!18349) (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))))))

(declare-fun bm!654934 () Bool)

(assert (=> bm!654934 (= call!654939 (validRegex!9468 (ite c!1337632 (reg!18678 (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))) (ite c!1337633 (regTwo!37211 (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))) (regTwo!37210 (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823)))))))))

(declare-fun b!7184436 () Bool)

(assert (=> b!7184436 (= e!4314609 call!654938)))

(declare-fun b!7184437 () Bool)

(declare-fun res!2925902 () Bool)

(assert (=> b!7184437 (=> res!2925902 e!4314605)))

(assert (=> b!7184437 (= res!2925902 (not ((_ is Concat!27194) (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823)))))))

(assert (=> b!7184437 (= e!4314607 e!4314605)))

(declare-fun b!7184438 () Bool)

(assert (=> b!7184438 (= e!4314610 e!4314604)))

(declare-fun res!2925904 () Bool)

(assert (=> b!7184438 (= res!2925904 (not (nullable!7776 (reg!18678 (ite c!1337528 (regOne!37211 lt!2570823) (regOne!37210 lt!2570823))))))))

(assert (=> b!7184438 (=> (not res!2925904) (not e!4314604))))

(assert (= (and d!2237915 (not res!2925901)) b!7184433))

(assert (= (and b!7184433 c!1337632) b!7184438))

(assert (= (and b!7184433 (not c!1337632)) b!7184435))

(assert (= (and b!7184438 res!2925904) b!7184434))

(assert (= (and b!7184435 c!1337633) b!7184430))

(assert (= (and b!7184435 (not c!1337633)) b!7184437))

(assert (= (and b!7184430 res!2925903) b!7184436))

(assert (= (and b!7184437 (not res!2925902)) b!7184432))

(assert (= (and b!7184432 res!2925900) b!7184431))

(assert (= (or b!7184430 b!7184432) bm!654933))

(assert (= (or b!7184436 b!7184431) bm!654932))

(assert (= (or b!7184434 bm!654932) bm!654934))

(declare-fun m!7881642 () Bool)

(assert (=> bm!654933 m!7881642))

(declare-fun m!7881644 () Bool)

(assert (=> bm!654934 m!7881644))

(declare-fun m!7881646 () Bool)

(assert (=> b!7184438 m!7881646))

(assert (=> bm!654828 d!2237915))

(declare-fun d!2237917 () Bool)

(declare-fun res!2925905 () Bool)

(declare-fun e!4314611 () Bool)

(assert (=> d!2237917 (=> res!2925905 e!4314611)))

(assert (=> d!2237917 (= res!2925905 ((_ is Nil!69653) (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> d!2237917 (= (forall!17177 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))) lambda!437561) e!4314611)))

(declare-fun b!7184439 () Bool)

(declare-fun e!4314612 () Bool)

(assert (=> b!7184439 (= e!4314611 e!4314612)))

(declare-fun res!2925906 () Bool)

(assert (=> b!7184439 (=> (not res!2925906) (not e!4314612))))

(assert (=> b!7184439 (= res!2925906 (dynLambda!28369 lambda!437561 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun b!7184440 () Bool)

(assert (=> b!7184440 (= e!4314612 (forall!17177 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))) lambda!437561))))

(assert (= (and d!2237917 (not res!2925905)) b!7184439))

(assert (= (and b!7184439 res!2925906) b!7184440))

(declare-fun b_lambda!275073 () Bool)

(assert (=> (not b_lambda!275073) (not b!7184439)))

(declare-fun m!7881648 () Bool)

(assert (=> b!7184439 m!7881648))

(declare-fun m!7881650 () Bool)

(assert (=> b!7184440 m!7881650))

(assert (=> b!7183880 d!2237917))

(declare-fun b!7184441 () Bool)

(declare-fun e!4314615 () (InoxSet Context!14602))

(declare-fun e!4314613 () (InoxSet Context!14602))

(assert (=> b!7184441 (= e!4314615 e!4314613)))

(declare-fun c!1337635 () Bool)

(assert (=> b!7184441 (= c!1337635 ((_ is Cons!69653) (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))))

(declare-fun b!7184442 () Bool)

(declare-fun call!654940 () (InoxSet Context!14602))

(assert (=> b!7184442 (= e!4314615 ((_ map or) call!654940 (derivationStepZipperUp!2325 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))) lt!2570781)))))

(declare-fun b!7184443 () Bool)

(assert (=> b!7184443 (= e!4314613 call!654940)))

(declare-fun d!2237919 () Bool)

(declare-fun c!1337634 () Bool)

(declare-fun e!4314614 () Bool)

(assert (=> d!2237919 (= c!1337634 e!4314614)))

(declare-fun res!2925907 () Bool)

(assert (=> d!2237919 (=> (not res!2925907) (not e!4314614))))

(assert (=> d!2237919 (= res!2925907 ((_ is Cons!69653) (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))))

(assert (=> d!2237919 (= (derivationStepZipperUp!2325 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) lt!2570781) e!4314615)))

(declare-fun b!7184444 () Bool)

(assert (=> b!7184444 (= e!4314614 (nullable!7776 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))))))

(declare-fun b!7184445 () Bool)

(assert (=> b!7184445 (= e!4314613 ((as const (Array Context!14602 Bool)) false))))

(declare-fun bm!654935 () Bool)

(assert (=> bm!654935 (= call!654940 (derivationStepZipperDown!2512 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))) lt!2570781))))

(assert (= (and d!2237919 res!2925907) b!7184444))

(assert (= (and d!2237919 c!1337634) b!7184442))

(assert (= (and d!2237919 (not c!1337634)) b!7184441))

(assert (= (and b!7184441 c!1337635) b!7184443))

(assert (= (and b!7184441 (not c!1337635)) b!7184445))

(assert (= (or b!7184442 b!7184443) bm!654935))

(declare-fun m!7881652 () Bool)

(assert (=> b!7184442 m!7881652))

(declare-fun m!7881654 () Bool)

(assert (=> b!7184444 m!7881654))

(declare-fun m!7881656 () Bool)

(assert (=> bm!654935 m!7881656))

(assert (=> b!7183665 d!2237919))

(declare-fun d!2237921 () Bool)

(declare-fun c!1337636 () Bool)

(assert (=> d!2237921 (= c!1337636 ((_ is Nil!69655) res!2925597))))

(declare-fun e!4314616 () (InoxSet Context!14602))

(assert (=> d!2237921 (= (content!14316 res!2925597) e!4314616)))

(declare-fun b!7184446 () Bool)

(assert (=> b!7184446 (= e!4314616 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184447 () Bool)

(assert (=> b!7184447 (= e!4314616 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 res!2925597) true) (content!14316 (t!383800 res!2925597))))))

(assert (= (and d!2237921 c!1337636) b!7184446))

(assert (= (and d!2237921 (not c!1337636)) b!7184447))

(declare-fun m!7881658 () Bool)

(assert (=> b!7184447 m!7881658))

(declare-fun m!7881660 () Bool)

(assert (=> b!7184447 m!7881660))

(assert (=> b!7183621 d!2237921))

(declare-fun bs!1897386 () Bool)

(declare-fun d!2237923 () Bool)

(assert (= bs!1897386 (and d!2237923 d!2237597)))

(declare-fun lambda!437599 () Int)

(assert (=> bs!1897386 (= lambda!437599 lambda!437576)))

(declare-fun bs!1897387 () Bool)

(assert (= bs!1897387 (and d!2237923 d!2237781)))

(assert (=> bs!1897387 (= lambda!437599 lambda!437592)))

(declare-fun bs!1897388 () Bool)

(assert (= bs!1897388 (and d!2237923 d!2237791)))

(assert (=> bs!1897388 (= lambda!437599 lambda!437594)))

(declare-fun bs!1897389 () Bool)

(assert (= bs!1897389 (and d!2237923 d!2237569)))

(assert (=> bs!1897389 (= lambda!437599 lambda!437569)))

(declare-fun bs!1897390 () Bool)

(assert (= bs!1897390 (and d!2237923 d!2237379)))

(assert (=> bs!1897390 (= lambda!437599 lambda!437531)))

(declare-fun bs!1897391 () Bool)

(assert (= bs!1897391 (and d!2237923 d!2237593)))

(assert (=> bs!1897391 (= lambda!437599 lambda!437575)))

(declare-fun bs!1897392 () Bool)

(assert (= bs!1897392 (and d!2237923 d!2237811)))

(assert (=> bs!1897392 (= lambda!437599 lambda!437595)))

(declare-fun bs!1897393 () Bool)

(assert (= bs!1897393 (and d!2237923 d!2237911)))

(assert (=> bs!1897393 (= lambda!437599 lambda!437597)))

(declare-fun bs!1897394 () Bool)

(assert (= bs!1897394 (and d!2237923 d!2237605)))

(assert (=> bs!1897394 (= lambda!437599 lambda!437578)))

(declare-fun bs!1897395 () Bool)

(assert (= bs!1897395 (and d!2237923 d!2237533)))

(assert (=> bs!1897395 (= lambda!437599 lambda!437566)))

(declare-fun bs!1897396 () Bool)

(assert (= bs!1897396 (and d!2237923 d!2237591)))

(assert (=> bs!1897396 (= lambda!437599 lambda!437574)))

(declare-fun bs!1897397 () Bool)

(assert (= bs!1897397 (and d!2237923 d!2237403)))

(assert (=> bs!1897397 (not (= lambda!437599 lambda!437536))))

(declare-fun bs!1897398 () Bool)

(assert (= bs!1897398 (and d!2237923 d!2237509)))

(assert (=> bs!1897398 (= lambda!437599 lambda!437565)))

(declare-fun bs!1897399 () Bool)

(assert (= bs!1897399 (and d!2237923 d!2237555)))

(assert (=> bs!1897399 (= lambda!437599 lambda!437568)))

(declare-fun bs!1897400 () Bool)

(assert (= bs!1897400 (and d!2237923 d!2237867)))

(assert (=> bs!1897400 (= lambda!437599 lambda!437596)))

(declare-fun bs!1897401 () Bool)

(assert (= bs!1897401 (and d!2237923 d!2237913)))

(assert (=> bs!1897401 (= lambda!437599 lambda!437598)))

(declare-fun bs!1897402 () Bool)

(assert (= bs!1897402 (and d!2237923 d!2237637)))

(assert (=> bs!1897402 (= lambda!437599 lambda!437581)))

(declare-fun bs!1897403 () Bool)

(assert (= bs!1897403 (and d!2237923 d!2237785)))

(assert (=> bs!1897403 (= lambda!437599 lambda!437593)))

(declare-fun bs!1897404 () Bool)

(assert (= bs!1897404 (and d!2237923 d!2237493)))

(assert (=> bs!1897404 (= lambda!437599 lambda!437561)))

(declare-fun bs!1897405 () Bool)

(assert (= bs!1897405 (and d!2237923 d!2237477)))

(assert (=> bs!1897405 (= lambda!437599 lambda!437546)))

(declare-fun bs!1897406 () Bool)

(assert (= bs!1897406 (and d!2237923 d!2237577)))

(assert (=> bs!1897406 (= lambda!437599 lambda!437570)))

(declare-fun bs!1897407 () Bool)

(assert (= bs!1897407 (and d!2237923 d!2237395)))

(assert (=> bs!1897407 (= lambda!437599 lambda!437532)))

(declare-fun bs!1897408 () Bool)

(assert (= bs!1897408 (and d!2237923 d!2237551)))

(assert (=> bs!1897408 (= lambda!437599 lambda!437567)))

(assert (=> d!2237923 (= (inv!88894 setElem!53146) (forall!17177 (exprs!7801 setElem!53146) lambda!437599))))

(declare-fun bs!1897409 () Bool)

(assert (= bs!1897409 d!2237923))

(declare-fun m!7881662 () Bool)

(assert (=> bs!1897409 m!7881662))

(assert (=> setNonEmpty!53146 d!2237923))

(declare-fun d!2237925 () Bool)

(assert (=> d!2237925 (= (isEmpty!40211 (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))) ((_ is Nil!69653) (t!383798 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(assert (=> b!7183752 d!2237925))

(declare-fun b!7184448 () Bool)

(declare-fun res!2925911 () Bool)

(declare-fun e!4314622 () Bool)

(assert (=> b!7184448 (=> (not res!2925911) (not e!4314622))))

(declare-fun call!654941 () Bool)

(assert (=> b!7184448 (= res!2925911 call!654941)))

(declare-fun e!4314620 () Bool)

(assert (=> b!7184448 (= e!4314620 e!4314622)))

(declare-fun b!7184449 () Bool)

(declare-fun e!4314619 () Bool)

(declare-fun call!654942 () Bool)

(assert (=> b!7184449 (= e!4314619 call!654942)))

(declare-fun bm!654936 () Bool)

(declare-fun call!654943 () Bool)

(assert (=> bm!654936 (= call!654942 call!654943)))

(declare-fun b!7184450 () Bool)

(declare-fun e!4314618 () Bool)

(assert (=> b!7184450 (= e!4314618 e!4314619)))

(declare-fun res!2925908 () Bool)

(assert (=> b!7184450 (=> (not res!2925908) (not e!4314619))))

(assert (=> b!7184450 (= res!2925908 call!654941)))

(declare-fun bm!654937 () Bool)

(declare-fun c!1337638 () Bool)

(assert (=> bm!654937 (= call!654941 (validRegex!9468 (ite c!1337638 (regOne!37211 (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) (regOne!37210 (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))))))))

(declare-fun b!7184451 () Bool)

(declare-fun e!4314621 () Bool)

(declare-fun e!4314623 () Bool)

(assert (=> b!7184451 (= e!4314621 e!4314623)))

(declare-fun c!1337637 () Bool)

(assert (=> b!7184451 (= c!1337637 ((_ is Star!18349) (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))))))

(declare-fun d!2237927 () Bool)

(declare-fun res!2925909 () Bool)

(assert (=> d!2237927 (=> res!2925909 e!4314621)))

(assert (=> d!2237927 (= res!2925909 ((_ is ElementMatch!18349) (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))))))

(assert (=> d!2237927 (= (validRegex!9468 (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) e!4314621)))

(declare-fun b!7184452 () Bool)

(declare-fun e!4314617 () Bool)

(assert (=> b!7184452 (= e!4314617 call!654943)))

(declare-fun b!7184453 () Bool)

(assert (=> b!7184453 (= e!4314623 e!4314620)))

(assert (=> b!7184453 (= c!1337638 ((_ is Union!18349) (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))))))

(declare-fun bm!654938 () Bool)

(assert (=> bm!654938 (= call!654943 (validRegex!9468 (ite c!1337637 (reg!18678 (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) (ite c!1337638 (regTwo!37211 (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) (regTwo!37210 (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967))))))))))))

(declare-fun b!7184454 () Bool)

(assert (=> b!7184454 (= e!4314622 call!654942)))

(declare-fun b!7184455 () Bool)

(declare-fun res!2925910 () Bool)

(assert (=> b!7184455 (=> res!2925910 e!4314618)))

(assert (=> b!7184455 (= res!2925910 (not ((_ is Concat!27194) (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967))))))))))

(assert (=> b!7184455 (= e!4314620 e!4314618)))

(declare-fun b!7184456 () Bool)

(assert (=> b!7184456 (= e!4314623 e!4314617)))

(declare-fun res!2925912 () Bool)

(assert (=> b!7184456 (= res!2925912 (not (nullable!7776 (reg!18678 (ite c!1337451 (reg!18678 (h!76101 (exprs!7801 empty!2967))) (ite c!1337452 (regTwo!37211 (h!76101 (exprs!7801 empty!2967))) (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))))))))

(assert (=> b!7184456 (=> (not res!2925912) (not e!4314617))))

(assert (= (and d!2237927 (not res!2925909)) b!7184451))

(assert (= (and b!7184451 c!1337637) b!7184456))

(assert (= (and b!7184451 (not c!1337637)) b!7184453))

(assert (= (and b!7184456 res!2925912) b!7184452))

(assert (= (and b!7184453 c!1337638) b!7184448))

(assert (= (and b!7184453 (not c!1337638)) b!7184455))

(assert (= (and b!7184448 res!2925911) b!7184454))

(assert (= (and b!7184455 (not res!2925910)) b!7184450))

(assert (= (and b!7184450 res!2925908) b!7184449))

(assert (= (or b!7184448 b!7184450) bm!654937))

(assert (= (or b!7184454 b!7184449) bm!654936))

(assert (= (or b!7184452 bm!654936) bm!654938))

(declare-fun m!7881664 () Bool)

(assert (=> bm!654937 m!7881664))

(declare-fun m!7881666 () Bool)

(assert (=> bm!654938 m!7881666))

(declare-fun m!7881668 () Bool)

(assert (=> b!7184456 m!7881668))

(assert (=> bm!654776 d!2237927))

(declare-fun d!2237929 () Bool)

(declare-fun c!1337639 () Bool)

(assert (=> d!2237929 (= c!1337639 ((_ is Nil!69655) (t!383800 lt!2570814)))))

(declare-fun e!4314624 () (InoxSet Context!14602))

(assert (=> d!2237929 (= (content!14316 (t!383800 lt!2570814)) e!4314624)))

(declare-fun b!7184457 () Bool)

(assert (=> b!7184457 (= e!4314624 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184458 () Bool)

(assert (=> b!7184458 (= e!4314624 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 (t!383800 lt!2570814)) true) (content!14316 (t!383800 (t!383800 lt!2570814)))))))

(assert (= (and d!2237929 c!1337639) b!7184457))

(assert (= (and d!2237929 (not c!1337639)) b!7184458))

(declare-fun m!7881670 () Bool)

(assert (=> b!7184458 m!7881670))

(declare-fun m!7881672 () Bool)

(assert (=> b!7184458 m!7881672))

(assert (=> b!7183661 d!2237929))

(declare-fun b!7184459 () Bool)

(declare-fun res!2925916 () Bool)

(declare-fun e!4314630 () Bool)

(assert (=> b!7184459 (=> (not res!2925916) (not e!4314630))))

(declare-fun call!654944 () Bool)

(assert (=> b!7184459 (= res!2925916 call!654944)))

(declare-fun e!4314628 () Bool)

(assert (=> b!7184459 (= e!4314628 e!4314630)))

(declare-fun b!7184460 () Bool)

(declare-fun e!4314627 () Bool)

(declare-fun call!654945 () Bool)

(assert (=> b!7184460 (= e!4314627 call!654945)))

(declare-fun bm!654939 () Bool)

(declare-fun call!654946 () Bool)

(assert (=> bm!654939 (= call!654945 call!654946)))

(declare-fun b!7184461 () Bool)

(declare-fun e!4314626 () Bool)

(assert (=> b!7184461 (= e!4314626 e!4314627)))

(declare-fun res!2925913 () Bool)

(assert (=> b!7184461 (=> (not res!2925913) (not e!4314627))))

(assert (=> b!7184461 (= res!2925913 call!654944)))

(declare-fun bm!654940 () Bool)

(declare-fun c!1337641 () Bool)

(assert (=> bm!654940 (= call!654944 (validRegex!9468 (ite c!1337641 (regOne!37211 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))) (regOne!37210 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))))))))

(declare-fun b!7184462 () Bool)

(declare-fun e!4314629 () Bool)

(declare-fun e!4314631 () Bool)

(assert (=> b!7184462 (= e!4314629 e!4314631)))

(declare-fun c!1337640 () Bool)

(assert (=> b!7184462 (= c!1337640 ((_ is Star!18349) (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun d!2237931 () Bool)

(declare-fun res!2925914 () Bool)

(assert (=> d!2237931 (=> res!2925914 e!4314629)))

(assert (=> d!2237931 (= res!2925914 ((_ is ElementMatch!18349) (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> d!2237931 (= (validRegex!9468 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))) e!4314629)))

(declare-fun b!7184463 () Bool)

(declare-fun e!4314625 () Bool)

(assert (=> b!7184463 (= e!4314625 call!654946)))

(declare-fun b!7184464 () Bool)

(assert (=> b!7184464 (= e!4314631 e!4314628)))

(assert (=> b!7184464 (= c!1337641 ((_ is Union!18349) (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(declare-fun bm!654941 () Bool)

(assert (=> bm!654941 (= call!654946 (validRegex!9468 (ite c!1337640 (reg!18678 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))) (ite c!1337641 (regTwo!37211 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))) (regTwo!37210 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530))))))))))

(declare-fun b!7184465 () Bool)

(assert (=> b!7184465 (= e!4314630 call!654945)))

(declare-fun b!7184466 () Bool)

(declare-fun res!2925915 () Bool)

(assert (=> b!7184466 (=> res!2925915 e!4314626)))

(assert (=> b!7184466 (= res!2925915 (not ((_ is Concat!27194) (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(assert (=> b!7184466 (= e!4314628 e!4314626)))

(declare-fun b!7184467 () Bool)

(assert (=> b!7184467 (= e!4314631 e!4314625)))

(declare-fun res!2925917 () Bool)

(assert (=> b!7184467 (= res!2925917 (not (nullable!7776 (reg!18678 (h!76101 (unfocusZipperList!2327 (toList!11292 z!3530)))))))))

(assert (=> b!7184467 (=> (not res!2925917) (not e!4314625))))

(assert (= (and d!2237931 (not res!2925914)) b!7184462))

(assert (= (and b!7184462 c!1337640) b!7184467))

(assert (= (and b!7184462 (not c!1337640)) b!7184464))

(assert (= (and b!7184467 res!2925917) b!7184463))

(assert (= (and b!7184464 c!1337641) b!7184459))

(assert (= (and b!7184464 (not c!1337641)) b!7184466))

(assert (= (and b!7184459 res!2925916) b!7184465))

(assert (= (and b!7184466 (not res!2925915)) b!7184461))

(assert (= (and b!7184461 res!2925913) b!7184460))

(assert (= (or b!7184459 b!7184461) bm!654940))

(assert (= (or b!7184465 b!7184460) bm!654939))

(assert (= (or b!7184463 bm!654939) bm!654941))

(declare-fun m!7881674 () Bool)

(assert (=> bm!654940 m!7881674))

(declare-fun m!7881676 () Bool)

(assert (=> bm!654941 m!7881676))

(declare-fun m!7881678 () Bool)

(assert (=> b!7184467 m!7881678))

(assert (=> bs!1897135 d!2237931))

(declare-fun d!2237933 () Bool)

(declare-fun c!1337642 () Bool)

(assert (=> d!2237933 (= c!1337642 ((_ is Nil!69655) (t!383800 (t!383800 lt!2570804))))))

(declare-fun e!4314632 () (InoxSet Context!14602))

(assert (=> d!2237933 (= (content!14316 (t!383800 (t!383800 lt!2570804))) e!4314632)))

(declare-fun b!7184468 () Bool)

(assert (=> b!7184468 (= e!4314632 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184469 () Bool)

(assert (=> b!7184469 (= e!4314632 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) (h!76103 (t!383800 (t!383800 lt!2570804))) true) (content!14316 (t!383800 (t!383800 (t!383800 lt!2570804))))))))

(assert (= (and d!2237933 c!1337642) b!7184468))

(assert (= (and d!2237933 (not c!1337642)) b!7184469))

(declare-fun m!7881680 () Bool)

(assert (=> b!7184469 m!7881680))

(declare-fun m!7881682 () Bool)

(assert (=> b!7184469 m!7881682))

(assert (=> b!7183704 d!2237933))

(declare-fun d!2237935 () Bool)

(assert (=> d!2237935 (= (nullable!7776 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))) (nullableFct!3042 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))

(declare-fun bs!1897410 () Bool)

(assert (= bs!1897410 d!2237935))

(declare-fun m!7881684 () Bool)

(assert (=> bs!1897410 m!7881684))

(assert (=> b!7183650 d!2237935))

(declare-fun d!2237937 () Bool)

(assert (=> d!2237937 (= (nullable!7776 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))) (nullableFct!3042 (regOne!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))))))

(declare-fun bs!1897411 () Bool)

(assert (= bs!1897411 d!2237937))

(declare-fun m!7881686 () Bool)

(assert (=> bs!1897411 m!7881686))

(assert (=> b!7183783 d!2237937))

(declare-fun d!2237939 () Bool)

(declare-fun res!2925918 () Bool)

(declare-fun e!4314633 () Bool)

(assert (=> d!2237939 (=> res!2925918 e!4314633)))

(assert (=> d!2237939 (= res!2925918 ((_ is Nil!69655) (t!383800 res!2925525)))))

(assert (=> d!2237939 (= (noDuplicate!2887 (t!383800 res!2925525)) e!4314633)))

(declare-fun b!7184470 () Bool)

(declare-fun e!4314634 () Bool)

(assert (=> b!7184470 (= e!4314633 e!4314634)))

(declare-fun res!2925919 () Bool)

(assert (=> b!7184470 (=> (not res!2925919) (not e!4314634))))

(assert (=> b!7184470 (= res!2925919 (not (contains!20718 (t!383800 (t!383800 res!2925525)) (h!76103 (t!383800 res!2925525)))))))

(declare-fun b!7184471 () Bool)

(assert (=> b!7184471 (= e!4314634 (noDuplicate!2887 (t!383800 (t!383800 res!2925525))))))

(assert (= (and d!2237939 (not res!2925918)) b!7184470))

(assert (= (and b!7184470 res!2925919) b!7184471))

(declare-fun m!7881688 () Bool)

(assert (=> b!7184470 m!7881688))

(declare-fun m!7881690 () Bool)

(assert (=> b!7184471 m!7881690))

(assert (=> b!7183636 d!2237939))

(declare-fun b!7184472 () Bool)

(declare-fun res!2925923 () Bool)

(declare-fun e!4314640 () Bool)

(assert (=> b!7184472 (=> (not res!2925923) (not e!4314640))))

(declare-fun call!654947 () Bool)

(assert (=> b!7184472 (= res!2925923 call!654947)))

(declare-fun e!4314638 () Bool)

(assert (=> b!7184472 (= e!4314638 e!4314640)))

(declare-fun b!7184473 () Bool)

(declare-fun e!4314637 () Bool)

(declare-fun call!654948 () Bool)

(assert (=> b!7184473 (= e!4314637 call!654948)))

(declare-fun bm!654942 () Bool)

(declare-fun call!654949 () Bool)

(assert (=> bm!654942 (= call!654948 call!654949)))

(declare-fun b!7184474 () Bool)

(declare-fun e!4314636 () Bool)

(assert (=> b!7184474 (= e!4314636 e!4314637)))

(declare-fun res!2925920 () Bool)

(assert (=> b!7184474 (=> (not res!2925920) (not e!4314637))))

(assert (=> b!7184474 (= res!2925920 call!654947)))

(declare-fun c!1337644 () Bool)

(declare-fun bm!654943 () Bool)

(assert (=> bm!654943 (= call!654947 (validRegex!9468 (ite c!1337644 (regOne!37211 (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))) (regOne!37210 (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))))))))

(declare-fun b!7184475 () Bool)

(declare-fun e!4314639 () Bool)

(declare-fun e!4314641 () Bool)

(assert (=> b!7184475 (= e!4314639 e!4314641)))

(declare-fun c!1337643 () Bool)

(assert (=> b!7184475 (= c!1337643 ((_ is Star!18349) (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))))))

(declare-fun d!2237941 () Bool)

(declare-fun res!2925921 () Bool)

(assert (=> d!2237941 (=> res!2925921 e!4314639)))

(assert (=> d!2237941 (= res!2925921 ((_ is ElementMatch!18349) (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))))))

(assert (=> d!2237941 (= (validRegex!9468 (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))) e!4314639)))

(declare-fun b!7184476 () Bool)

(declare-fun e!4314635 () Bool)

(assert (=> b!7184476 (= e!4314635 call!654949)))

(declare-fun b!7184477 () Bool)

(assert (=> b!7184477 (= e!4314641 e!4314638)))

(assert (=> b!7184477 (= c!1337644 ((_ is Union!18349) (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))))))

(declare-fun bm!654944 () Bool)

(assert (=> bm!654944 (= call!654949 (validRegex!9468 (ite c!1337643 (reg!18678 (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))) (ite c!1337644 (regTwo!37211 (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))) (regTwo!37210 (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823))))))))))

(declare-fun b!7184478 () Bool)

(assert (=> b!7184478 (= e!4314640 call!654948)))

(declare-fun b!7184479 () Bool)

(declare-fun res!2925922 () Bool)

(assert (=> b!7184479 (=> res!2925922 e!4314636)))

(assert (=> b!7184479 (= res!2925922 (not ((_ is Concat!27194) (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823))))))))

(assert (=> b!7184479 (= e!4314638 e!4314636)))

(declare-fun b!7184480 () Bool)

(assert (=> b!7184480 (= e!4314641 e!4314635)))

(declare-fun res!2925924 () Bool)

(assert (=> b!7184480 (= res!2925924 (not (nullable!7776 (reg!18678 (ite c!1337527 (reg!18678 lt!2570823) (ite c!1337528 (regTwo!37211 lt!2570823) (regTwo!37210 lt!2570823)))))))))

(assert (=> b!7184480 (=> (not res!2925924) (not e!4314635))))

(assert (= (and d!2237941 (not res!2925921)) b!7184475))

(assert (= (and b!7184475 c!1337643) b!7184480))

(assert (= (and b!7184475 (not c!1337643)) b!7184477))

(assert (= (and b!7184480 res!2925924) b!7184476))

(assert (= (and b!7184477 c!1337644) b!7184472))

(assert (= (and b!7184477 (not c!1337644)) b!7184479))

(assert (= (and b!7184472 res!2925923) b!7184478))

(assert (= (and b!7184479 (not res!2925922)) b!7184474))

(assert (= (and b!7184474 res!2925920) b!7184473))

(assert (= (or b!7184472 b!7184474) bm!654943))

(assert (= (or b!7184478 b!7184473) bm!654942))

(assert (= (or b!7184476 bm!654942) bm!654944))

(declare-fun m!7881692 () Bool)

(assert (=> bm!654943 m!7881692))

(declare-fun m!7881694 () Bool)

(assert (=> bm!654944 m!7881694))

(declare-fun m!7881696 () Bool)

(assert (=> b!7184480 m!7881696))

(assert (=> bm!654829 d!2237941))

(declare-fun d!2237943 () Bool)

(assert (=> d!2237943 (= (isEmpty!40211 (tail!14069 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))) ((_ is Nil!69653) (tail!14069 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(assert (=> b!7183646 d!2237943))

(declare-fun d!2237945 () Bool)

(assert (=> d!2237945 (= (tail!14069 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))) (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530)))))))

(assert (=> b!7183646 d!2237945))

(declare-fun d!2237947 () Bool)

(assert (=> d!2237947 (= (nullable!7776 (ite c!1337468 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (nullableFct!3042 (ite c!1337468 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))

(declare-fun bs!1897412 () Bool)

(assert (= bs!1897412 d!2237947))

(declare-fun m!7881698 () Bool)

(assert (=> bs!1897412 m!7881698))

(assert (=> bm!654788 d!2237947))

(declare-fun d!2237949 () Bool)

(declare-fun res!2925925 () Bool)

(declare-fun e!4314642 () Bool)

(assert (=> d!2237949 (=> res!2925925 e!4314642)))

(assert (=> d!2237949 (= res!2925925 ((_ is Nil!69653) lt!2570834))))

(assert (=> d!2237949 (= (forall!17177 lt!2570834 lambda!437578) e!4314642)))

(declare-fun b!7184481 () Bool)

(declare-fun e!4314643 () Bool)

(assert (=> b!7184481 (= e!4314642 e!4314643)))

(declare-fun res!2925926 () Bool)

(assert (=> b!7184481 (=> (not res!2925926) (not e!4314643))))

(assert (=> b!7184481 (= res!2925926 (dynLambda!28369 lambda!437578 (h!76101 lt!2570834)))))

(declare-fun b!7184482 () Bool)

(assert (=> b!7184482 (= e!4314643 (forall!17177 (t!383798 lt!2570834) lambda!437578))))

(assert (= (and d!2237949 (not res!2925925)) b!7184481))

(assert (= (and b!7184481 res!2925926) b!7184482))

(declare-fun b_lambda!275075 () Bool)

(assert (=> (not b_lambda!275075) (not b!7184481)))

(declare-fun m!7881700 () Bool)

(assert (=> b!7184481 m!7881700))

(declare-fun m!7881702 () Bool)

(assert (=> b!7184482 m!7881702))

(assert (=> d!2237605 d!2237949))

(declare-fun b!7184483 () Bool)

(declare-fun res!2925930 () Bool)

(declare-fun e!4314649 () Bool)

(assert (=> b!7184483 (=> (not res!2925930) (not e!4314649))))

(declare-fun call!654950 () Bool)

(assert (=> b!7184483 (= res!2925930 call!654950)))

(declare-fun e!4314647 () Bool)

(assert (=> b!7184483 (= e!4314647 e!4314649)))

(declare-fun b!7184484 () Bool)

(declare-fun e!4314646 () Bool)

(declare-fun call!654951 () Bool)

(assert (=> b!7184484 (= e!4314646 call!654951)))

(declare-fun bm!654945 () Bool)

(declare-fun call!654952 () Bool)

(assert (=> bm!654945 (= call!654951 call!654952)))

(declare-fun b!7184485 () Bool)

(declare-fun e!4314645 () Bool)

(assert (=> b!7184485 (= e!4314645 e!4314646)))

(declare-fun res!2925927 () Bool)

(assert (=> b!7184485 (=> (not res!2925927) (not e!4314646))))

(assert (=> b!7184485 (= res!2925927 call!654950)))

(declare-fun bm!654946 () Bool)

(declare-fun c!1337646 () Bool)

(assert (=> bm!654946 (= call!654950 (validRegex!9468 (ite c!1337646 (regOne!37211 (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))) (regOne!37210 (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))))))))

(declare-fun b!7184486 () Bool)

(declare-fun e!4314648 () Bool)

(declare-fun e!4314650 () Bool)

(assert (=> b!7184486 (= e!4314648 e!4314650)))

(declare-fun c!1337645 () Bool)

(assert (=> b!7184486 (= c!1337645 ((_ is Star!18349) (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))))))

(declare-fun d!2237951 () Bool)

(declare-fun res!2925928 () Bool)

(assert (=> d!2237951 (=> res!2925928 e!4314648)))

(assert (=> d!2237951 (= res!2925928 ((_ is ElementMatch!18349) (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))))))

(assert (=> d!2237951 (= (validRegex!9468 (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))) e!4314648)))

(declare-fun b!7184487 () Bool)

(declare-fun e!4314644 () Bool)

(assert (=> b!7184487 (= e!4314644 call!654952)))

(declare-fun b!7184488 () Bool)

(assert (=> b!7184488 (= e!4314650 e!4314647)))

(assert (=> b!7184488 (= c!1337646 ((_ is Union!18349) (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))))))

(declare-fun bm!654947 () Bool)

(assert (=> bm!654947 (= call!654952 (validRegex!9468 (ite c!1337645 (reg!18678 (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))) (ite c!1337646 (regTwo!37211 (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))) (regTwo!37210 (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))))))))

(declare-fun b!7184489 () Bool)

(assert (=> b!7184489 (= e!4314649 call!654951)))

(declare-fun b!7184490 () Bool)

(declare-fun res!2925929 () Bool)

(assert (=> b!7184490 (=> res!2925929 e!4314645)))

(assert (=> b!7184490 (= res!2925929 (not ((_ is Concat!27194) (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))))))

(assert (=> b!7184490 (= e!4314647 e!4314645)))

(declare-fun b!7184491 () Bool)

(assert (=> b!7184491 (= e!4314650 e!4314644)))

(declare-fun res!2925931 () Bool)

(assert (=> b!7184491 (= res!2925931 (not (nullable!7776 (reg!18678 (ite c!1337452 (regOne!37211 (h!76101 (exprs!7801 empty!2967))) (regOne!37210 (h!76101 (exprs!7801 empty!2967))))))))))

(assert (=> b!7184491 (=> (not res!2925931) (not e!4314644))))

(assert (= (and d!2237951 (not res!2925928)) b!7184486))

(assert (= (and b!7184486 c!1337645) b!7184491))

(assert (= (and b!7184486 (not c!1337645)) b!7184488))

(assert (= (and b!7184491 res!2925931) b!7184487))

(assert (= (and b!7184488 c!1337646) b!7184483))

(assert (= (and b!7184488 (not c!1337646)) b!7184490))

(assert (= (and b!7184483 res!2925930) b!7184489))

(assert (= (and b!7184490 (not res!2925929)) b!7184485))

(assert (= (and b!7184485 res!2925927) b!7184484))

(assert (= (or b!7184483 b!7184485) bm!654946))

(assert (= (or b!7184489 b!7184484) bm!654945))

(assert (= (or b!7184487 bm!654945) bm!654947))

(declare-fun m!7881704 () Bool)

(assert (=> bm!654946 m!7881704))

(declare-fun m!7881706 () Bool)

(assert (=> bm!654947 m!7881706))

(declare-fun m!7881708 () Bool)

(assert (=> b!7184491 m!7881708))

(assert (=> bm!654775 d!2237951))

(declare-fun d!2237953 () Bool)

(declare-fun lt!2570856 () Bool)

(assert (=> d!2237953 (= lt!2570856 (select (content!14316 (t!383800 (t!383800 lt!2570804))) (h!76103 lt!2570804)))))

(declare-fun e!4314651 () Bool)

(assert (=> d!2237953 (= lt!2570856 e!4314651)))

(declare-fun res!2925932 () Bool)

(assert (=> d!2237953 (=> (not res!2925932) (not e!4314651))))

(assert (=> d!2237953 (= res!2925932 ((_ is Cons!69655) (t!383800 (t!383800 lt!2570804))))))

(assert (=> d!2237953 (= (contains!20718 (t!383800 (t!383800 lt!2570804)) (h!76103 lt!2570804)) lt!2570856)))

(declare-fun b!7184492 () Bool)

(declare-fun e!4314652 () Bool)

(assert (=> b!7184492 (= e!4314651 e!4314652)))

(declare-fun res!2925933 () Bool)

(assert (=> b!7184492 (=> res!2925933 e!4314652)))

(assert (=> b!7184492 (= res!2925933 (= (h!76103 (t!383800 (t!383800 lt!2570804))) (h!76103 lt!2570804)))))

(declare-fun b!7184493 () Bool)

(assert (=> b!7184493 (= e!4314652 (contains!20718 (t!383800 (t!383800 (t!383800 lt!2570804))) (h!76103 lt!2570804)))))

(assert (= (and d!2237953 res!2925932) b!7184492))

(assert (= (and b!7184492 (not res!2925933)) b!7184493))

(assert (=> d!2237953 m!7880936))

(declare-fun m!7881710 () Bool)

(assert (=> d!2237953 m!7881710))

(declare-fun m!7881712 () Bool)

(assert (=> b!7184493 m!7881712))

(assert (=> b!7183847 d!2237953))

(declare-fun d!2237955 () Bool)

(assert (=> d!2237955 (= ($colon$colon!2843 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))) (ite (or c!1337460 c!1337459) (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))) (Cons!69653 (ite (or c!1337460 c!1337459) (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))

(assert (=> bm!654777 d!2237955))

(declare-fun d!2237957 () Bool)

(declare-fun res!2925934 () Bool)

(declare-fun e!4314653 () Bool)

(assert (=> d!2237957 (=> res!2925934 e!4314653)))

(assert (=> d!2237957 (= res!2925934 ((_ is Nil!69653) (exprs!7801 _$3!480)))))

(assert (=> d!2237957 (= (forall!17177 (exprs!7801 _$3!480) lambda!437570) e!4314653)))

(declare-fun b!7184494 () Bool)

(declare-fun e!4314654 () Bool)

(assert (=> b!7184494 (= e!4314653 e!4314654)))

(declare-fun res!2925935 () Bool)

(assert (=> b!7184494 (=> (not res!2925935) (not e!4314654))))

(assert (=> b!7184494 (= res!2925935 (dynLambda!28369 lambda!437570 (h!76101 (exprs!7801 _$3!480))))))

(declare-fun b!7184495 () Bool)

(assert (=> b!7184495 (= e!4314654 (forall!17177 (t!383798 (exprs!7801 _$3!480)) lambda!437570))))

(assert (= (and d!2237957 (not res!2925934)) b!7184494))

(assert (= (and b!7184494 res!2925935) b!7184495))

(declare-fun b_lambda!275077 () Bool)

(assert (=> (not b_lambda!275077) (not b!7184494)))

(declare-fun m!7881714 () Bool)

(assert (=> b!7184494 m!7881714))

(declare-fun m!7881716 () Bool)

(assert (=> b!7184495 m!7881716))

(assert (=> d!2237577 d!2237957))

(declare-fun d!2237959 () Bool)

(assert (=> d!2237959 (= ($colon$colon!2843 (exprs!7801 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739))) (ite (or c!1337506 c!1337505) (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780)))))))) (Cons!69653 (ite (or c!1337506 c!1337505) (regTwo!37210 (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (ite c!1337378 (regTwo!37211 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337380 (regTwo!37210 (h!76101 (exprs!7801 lt!2570780))) (ite c!1337379 (regOne!37210 (h!76101 (exprs!7801 lt!2570780))) (reg!18678 (h!76101 (exprs!7801 lt!2570780))))))) (exprs!7801 (ite (or c!1337378 c!1337380) (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654739)))))))

(assert (=> bm!654808 d!2237959))

(declare-fun b!7184496 () Bool)

(declare-fun e!4314658 () (InoxSet Context!14602))

(declare-fun e!4314657 () (InoxSet Context!14602))

(assert (=> b!7184496 (= e!4314658 e!4314657)))

(declare-fun c!1337649 () Bool)

(assert (=> b!7184496 (= c!1337649 ((_ is Concat!27194) (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))))))

(declare-fun bm!654948 () Bool)

(declare-fun c!1337650 () Bool)

(declare-fun call!654956 () List!69777)

(assert (=> bm!654948 (= call!654956 ($colon$colon!2843 (exprs!7801 (ite (or c!1337470 c!1337472) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654799))) (ite (or c!1337650 c!1337649) (regTwo!37210 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))) (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))))))

(declare-fun b!7184497 () Bool)

(declare-fun e!4314660 () (InoxSet Context!14602))

(assert (=> b!7184497 (= e!4314660 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184498 () Bool)

(declare-fun e!4314659 () (InoxSet Context!14602))

(declare-fun call!654953 () (InoxSet Context!14602))

(declare-fun call!654955 () (InoxSet Context!14602))

(assert (=> b!7184498 (= e!4314659 ((_ map or) call!654953 call!654955))))

(declare-fun bm!654949 () Bool)

(declare-fun c!1337648 () Bool)

(assert (=> bm!654949 (= call!654953 (derivationStepZipperDown!2512 (ite c!1337648 (regOne!37211 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))) (regOne!37210 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))) (ite c!1337648 (ite (or c!1337470 c!1337472) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654799)) (Context!14603 call!654956)) lt!2570781))))

(declare-fun b!7184499 () Bool)

(declare-fun e!4314656 () Bool)

(assert (=> b!7184499 (= e!4314656 (nullable!7776 (regOne!37210 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))))))

(declare-fun bm!654950 () Bool)

(declare-fun call!654957 () List!69777)

(assert (=> bm!654950 (= call!654957 call!654956)))

(declare-fun b!7184500 () Bool)

(declare-fun e!4314655 () (InoxSet Context!14602))

(assert (=> b!7184500 (= e!4314655 e!4314659)))

(assert (=> b!7184500 (= c!1337648 ((_ is Union!18349) (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))))))

(declare-fun d!2237961 () Bool)

(declare-fun c!1337647 () Bool)

(assert (=> d!2237961 (= c!1337647 (and ((_ is ElementMatch!18349) (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))) (= (c!1337348 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))) lt!2570781)))))

(assert (=> d!2237961 (= (derivationStepZipperDown!2512 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))) (ite (or c!1337470 c!1337472) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654799)) lt!2570781) e!4314655)))

(declare-fun b!7184501 () Bool)

(declare-fun call!654954 () (InoxSet Context!14602))

(assert (=> b!7184501 (= e!4314658 ((_ map or) call!654953 call!654954))))

(declare-fun bm!654951 () Bool)

(declare-fun call!654958 () (InoxSet Context!14602))

(assert (=> bm!654951 (= call!654958 call!654954)))

(declare-fun b!7184502 () Bool)

(assert (=> b!7184502 (= e!4314657 call!654958)))

(declare-fun bm!654952 () Bool)

(assert (=> bm!654952 (= call!654954 call!654955)))

(declare-fun c!1337651 () Bool)

(declare-fun b!7184503 () Bool)

(assert (=> b!7184503 (= c!1337651 ((_ is Star!18349) (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))))))

(assert (=> b!7184503 (= e!4314657 e!4314660)))

(declare-fun b!7184504 () Bool)

(assert (=> b!7184504 (= e!4314655 (store ((as const (Array Context!14602 Bool)) false) (ite (or c!1337470 c!1337472) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654799)) true))))

(declare-fun b!7184505 () Bool)

(assert (=> b!7184505 (= e!4314660 call!654958)))

(declare-fun bm!654953 () Bool)

(assert (=> bm!654953 (= call!654955 (derivationStepZipperDown!2512 (ite c!1337648 (regTwo!37211 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))) (ite c!1337650 (regTwo!37210 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))) (ite c!1337649 (regOne!37210 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))) (reg!18678 (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780)))))))))))) (ite (or c!1337648 c!1337650) (ite (or c!1337470 c!1337472) (ite c!1337378 (Context!14603 (t!383798 (exprs!7801 lt!2570780))) (Context!14603 call!654738)) (Context!14603 call!654799)) (Context!14603 call!654957)) lt!2570781))))

(declare-fun b!7184506 () Bool)

(assert (=> b!7184506 (= c!1337650 e!4314656)))

(declare-fun res!2925936 () Bool)

(assert (=> b!7184506 (=> (not res!2925936) (not e!4314656))))

(assert (=> b!7184506 (= res!2925936 ((_ is Concat!27194) (ite c!1337470 (regTwo!37211 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337472 (regTwo!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (ite c!1337471 (regOne!37210 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))) (reg!18678 (ite c!1337378 (regOne!37211 (h!76101 (exprs!7801 lt!2570780))) (regOne!37210 (h!76101 (exprs!7801 lt!2570780))))))))))))

(assert (=> b!7184506 (= e!4314659 e!4314658)))

(assert (= (and d!2237961 c!1337647) b!7184504))

(assert (= (and d!2237961 (not c!1337647)) b!7184500))

(assert (= (and b!7184500 c!1337648) b!7184498))

(assert (= (and b!7184500 (not c!1337648)) b!7184506))

(assert (= (and b!7184506 res!2925936) b!7184499))

(assert (= (and b!7184506 c!1337650) b!7184501))

(assert (= (and b!7184506 (not c!1337650)) b!7184496))

(assert (= (and b!7184496 c!1337649) b!7184502))

(assert (= (and b!7184496 (not c!1337649)) b!7184503))

(assert (= (and b!7184503 c!1337651) b!7184505))

(assert (= (and b!7184503 (not c!1337651)) b!7184497))

(assert (= (or b!7184502 b!7184505) bm!654950))

(assert (= (or b!7184502 b!7184505) bm!654951))

(assert (= (or b!7184501 bm!654951) bm!654952))

(assert (= (or b!7184501 bm!654950) bm!654948))

(assert (= (or b!7184498 bm!654952) bm!654953))

(assert (= (or b!7184498 b!7184501) bm!654949))

(declare-fun m!7881718 () Bool)

(assert (=> bm!654949 m!7881718))

(declare-fun m!7881720 () Bool)

(assert (=> b!7184504 m!7881720))

(declare-fun m!7881722 () Bool)

(assert (=> b!7184499 m!7881722))

(declare-fun m!7881724 () Bool)

(assert (=> bm!654953 m!7881724))

(declare-fun m!7881726 () Bool)

(assert (=> bm!654948 m!7881726))

(assert (=> bm!654795 d!2237961))

(declare-fun d!2237963 () Bool)

(declare-fun lt!2570857 () Bool)

(assert (=> d!2237963 (= lt!2570857 (select (content!14316 (t!383800 (t!383800 lt!2570808))) (h!76103 (t!383800 lt!2570808))))))

(declare-fun e!4314661 () Bool)

(assert (=> d!2237963 (= lt!2570857 e!4314661)))

(declare-fun res!2925937 () Bool)

(assert (=> d!2237963 (=> (not res!2925937) (not e!4314661))))

(assert (=> d!2237963 (= res!2925937 ((_ is Cons!69655) (t!383800 (t!383800 lt!2570808))))))

(assert (=> d!2237963 (= (contains!20718 (t!383800 (t!383800 lt!2570808)) (h!76103 (t!383800 lt!2570808))) lt!2570857)))

(declare-fun b!7184507 () Bool)

(declare-fun e!4314662 () Bool)

(assert (=> b!7184507 (= e!4314661 e!4314662)))

(declare-fun res!2925938 () Bool)

(assert (=> b!7184507 (=> res!2925938 e!4314662)))

(assert (=> b!7184507 (= res!2925938 (= (h!76103 (t!383800 (t!383800 lt!2570808))) (h!76103 (t!383800 lt!2570808))))))

(declare-fun b!7184508 () Bool)

(assert (=> b!7184508 (= e!4314662 (contains!20718 (t!383800 (t!383800 (t!383800 lt!2570808))) (h!76103 (t!383800 lt!2570808))))))

(assert (= (and d!2237963 res!2925937) b!7184507))

(assert (= (and b!7184507 (not res!2925938)) b!7184508))

(assert (=> d!2237963 m!7880930))

(declare-fun m!7881728 () Bool)

(assert (=> d!2237963 m!7881728))

(declare-fun m!7881730 () Bool)

(assert (=> b!7184508 m!7881730))

(assert (=> b!7183631 d!2237963))

(declare-fun d!2237965 () Bool)

(assert (=> d!2237965 (= (head!14664 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) (h!76101 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(assert (=> b!7183753 d!2237965))

(declare-fun bs!1897413 () Bool)

(declare-fun d!2237967 () Bool)

(assert (= bs!1897413 (and d!2237967 d!2237447)))

(declare-fun lambda!437600 () Int)

(assert (=> bs!1897413 (not (= lambda!437600 lambda!437545))))

(declare-fun bs!1897414 () Bool)

(assert (= bs!1897414 (and d!2237967 d!2237479)))

(assert (=> bs!1897414 (= (= lambda!437545 lambda!437513) (= lambda!437600 lambda!437549))))

(declare-fun bs!1897415 () Bool)

(assert (= bs!1897415 (and d!2237967 d!2237583)))

(assert (=> bs!1897415 (= (= lambda!437545 lambda!437525) (= lambda!437600 lambda!437571))))

(declare-fun bs!1897416 () Bool)

(assert (= bs!1897416 (and d!2237967 b!7183170)))

(assert (=> bs!1897416 (not (= lambda!437600 lambda!437513))))

(declare-fun bs!1897417 () Bool)

(assert (= bs!1897417 (and d!2237967 d!2237375)))

(assert (=> bs!1897417 (not (= lambda!437600 lambda!437525))))

(assert (=> d!2237967 true))

(assert (=> d!2237967 (< (dynLambda!28367 order!28689 lambda!437545) (dynLambda!28367 order!28689 lambda!437600))))

(assert (=> d!2237967 (= (exists!4078 (toList!11292 z!3530) lambda!437545) (not (forall!17178 (toList!11292 z!3530) lambda!437600)))))

(declare-fun bs!1897418 () Bool)

(assert (= bs!1897418 d!2237967))

(assert (=> bs!1897418 m!7880432))

(declare-fun m!7881732 () Bool)

(assert (=> bs!1897418 m!7881732))

(assert (=> d!2237575 d!2237967))

(assert (=> d!2237575 d!2237413))

(declare-fun d!2237969 () Bool)

(declare-fun res!2925939 () Bool)

(assert (=> d!2237969 (= res!2925939 (exists!4078 (toList!11292 z!3530) lambda!437545))))

(assert (=> d!2237969 true))

(assert (=> d!2237969 (= (choose!55390 z!3530 lambda!437545) res!2925939)))

(declare-fun bs!1897419 () Bool)

(assert (= bs!1897419 d!2237969))

(assert (=> bs!1897419 m!7880432))

(assert (=> bs!1897419 m!7880432))

(assert (=> bs!1897419 m!7880922))

(assert (=> d!2237575 d!2237969))

(assert (=> b!7183642 d!2237541))

(declare-fun bs!1897420 () Bool)

(declare-fun d!2237971 () Bool)

(assert (= bs!1897420 (and d!2237971 d!2237597)))

(declare-fun lambda!437601 () Int)

(assert (=> bs!1897420 (= lambda!437601 lambda!437576)))

(declare-fun bs!1897421 () Bool)

(assert (= bs!1897421 (and d!2237971 d!2237781)))

(assert (=> bs!1897421 (= lambda!437601 lambda!437592)))

(declare-fun bs!1897422 () Bool)

(assert (= bs!1897422 (and d!2237971 d!2237791)))

(assert (=> bs!1897422 (= lambda!437601 lambda!437594)))

(declare-fun bs!1897423 () Bool)

(assert (= bs!1897423 (and d!2237971 d!2237569)))

(assert (=> bs!1897423 (= lambda!437601 lambda!437569)))

(declare-fun bs!1897424 () Bool)

(assert (= bs!1897424 (and d!2237971 d!2237379)))

(assert (=> bs!1897424 (= lambda!437601 lambda!437531)))

(declare-fun bs!1897425 () Bool)

(assert (= bs!1897425 (and d!2237971 d!2237593)))

(assert (=> bs!1897425 (= lambda!437601 lambda!437575)))

(declare-fun bs!1897426 () Bool)

(assert (= bs!1897426 (and d!2237971 d!2237811)))

(assert (=> bs!1897426 (= lambda!437601 lambda!437595)))

(declare-fun bs!1897427 () Bool)

(assert (= bs!1897427 (and d!2237971 d!2237911)))

(assert (=> bs!1897427 (= lambda!437601 lambda!437597)))

(declare-fun bs!1897428 () Bool)

(assert (= bs!1897428 (and d!2237971 d!2237605)))

(assert (=> bs!1897428 (= lambda!437601 lambda!437578)))

(declare-fun bs!1897429 () Bool)

(assert (= bs!1897429 (and d!2237971 d!2237533)))

(assert (=> bs!1897429 (= lambda!437601 lambda!437566)))

(declare-fun bs!1897430 () Bool)

(assert (= bs!1897430 (and d!2237971 d!2237591)))

(assert (=> bs!1897430 (= lambda!437601 lambda!437574)))

(declare-fun bs!1897431 () Bool)

(assert (= bs!1897431 (and d!2237971 d!2237403)))

(assert (=> bs!1897431 (not (= lambda!437601 lambda!437536))))

(declare-fun bs!1897432 () Bool)

(assert (= bs!1897432 (and d!2237971 d!2237509)))

(assert (=> bs!1897432 (= lambda!437601 lambda!437565)))

(declare-fun bs!1897433 () Bool)

(assert (= bs!1897433 (and d!2237971 d!2237555)))

(assert (=> bs!1897433 (= lambda!437601 lambda!437568)))

(declare-fun bs!1897434 () Bool)

(assert (= bs!1897434 (and d!2237971 d!2237867)))

(assert (=> bs!1897434 (= lambda!437601 lambda!437596)))

(declare-fun bs!1897435 () Bool)

(assert (= bs!1897435 (and d!2237971 d!2237923)))

(assert (=> bs!1897435 (= lambda!437601 lambda!437599)))

(declare-fun bs!1897436 () Bool)

(assert (= bs!1897436 (and d!2237971 d!2237913)))

(assert (=> bs!1897436 (= lambda!437601 lambda!437598)))

(declare-fun bs!1897437 () Bool)

(assert (= bs!1897437 (and d!2237971 d!2237637)))

(assert (=> bs!1897437 (= lambda!437601 lambda!437581)))

(declare-fun bs!1897438 () Bool)

(assert (= bs!1897438 (and d!2237971 d!2237785)))

(assert (=> bs!1897438 (= lambda!437601 lambda!437593)))

(declare-fun bs!1897439 () Bool)

(assert (= bs!1897439 (and d!2237971 d!2237493)))

(assert (=> bs!1897439 (= lambda!437601 lambda!437561)))

(declare-fun bs!1897440 () Bool)

(assert (= bs!1897440 (and d!2237971 d!2237477)))

(assert (=> bs!1897440 (= lambda!437601 lambda!437546)))

(declare-fun bs!1897441 () Bool)

(assert (= bs!1897441 (and d!2237971 d!2237577)))

(assert (=> bs!1897441 (= lambda!437601 lambda!437570)))

(declare-fun bs!1897442 () Bool)

(assert (= bs!1897442 (and d!2237971 d!2237395)))

(assert (=> bs!1897442 (= lambda!437601 lambda!437532)))

(declare-fun bs!1897443 () Bool)

(assert (= bs!1897443 (and d!2237971 d!2237551)))

(assert (=> bs!1897443 (= lambda!437601 lambda!437567)))

(declare-fun b!7184509 () Bool)

(declare-fun e!4314665 () Bool)

(declare-fun lt!2570858 () Regex!18349)

(assert (=> b!7184509 (= e!4314665 (isConcat!1615 lt!2570858))))

(declare-fun e!4314668 () Bool)

(assert (=> d!2237971 e!4314668))

(declare-fun res!2925941 () Bool)

(assert (=> d!2237971 (=> (not res!2925941) (not e!4314668))))

(assert (=> d!2237971 (= res!2925941 (validRegex!9468 lt!2570858))))

(declare-fun e!4314667 () Regex!18349)

(assert (=> d!2237971 (= lt!2570858 e!4314667)))

(declare-fun c!1337655 () Bool)

(declare-fun e!4314663 () Bool)

(assert (=> d!2237971 (= c!1337655 e!4314663)))

(declare-fun res!2925940 () Bool)

(assert (=> d!2237971 (=> (not res!2925940) (not e!4314663))))

(assert (=> d!2237971 (= res!2925940 ((_ is Cons!69653) (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(assert (=> d!2237971 (forall!17177 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530)))) lambda!437601)))

(assert (=> d!2237971 (= (generalisedConcat!2461 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))) lt!2570858)))

(declare-fun b!7184510 () Bool)

(assert (=> b!7184510 (= e!4314665 (= lt!2570858 (head!14664 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530)))))))))

(declare-fun b!7184511 () Bool)

(declare-fun e!4314666 () Regex!18349)

(assert (=> b!7184511 (= e!4314666 EmptyExpr!18349)))

(declare-fun b!7184512 () Bool)

(assert (=> b!7184512 (= e!4314663 (isEmpty!40211 (t!383798 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530)))))))))

(declare-fun b!7184513 () Bool)

(assert (=> b!7184513 (= e!4314666 (Concat!27194 (h!76101 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))) (generalisedConcat!2461 (t!383798 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))))

(declare-fun b!7184514 () Bool)

(declare-fun e!4314664 () Bool)

(assert (=> b!7184514 (= e!4314668 e!4314664)))

(declare-fun c!1337652 () Bool)

(assert (=> b!7184514 (= c!1337652 (isEmpty!40211 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun b!7184515 () Bool)

(assert (=> b!7184515 (= e!4314667 (h!76101 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun b!7184516 () Bool)

(assert (=> b!7184516 (= e!4314664 e!4314665)))

(declare-fun c!1337654 () Bool)

(assert (=> b!7184516 (= c!1337654 (isEmpty!40211 (tail!14069 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530)))))))))

(declare-fun b!7184517 () Bool)

(assert (=> b!7184517 (= e!4314667 e!4314666)))

(declare-fun c!1337653 () Bool)

(assert (=> b!7184517 (= c!1337653 ((_ is Cons!69653) (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun b!7184518 () Bool)

(assert (=> b!7184518 (= e!4314664 (isEmptyExpr!2093 lt!2570858))))

(assert (= (and d!2237971 res!2925940) b!7184512))

(assert (= (and d!2237971 c!1337655) b!7184515))

(assert (= (and d!2237971 (not c!1337655)) b!7184517))

(assert (= (and b!7184517 c!1337653) b!7184513))

(assert (= (and b!7184517 (not c!1337653)) b!7184511))

(assert (= (and d!2237971 res!2925941) b!7184514))

(assert (= (and b!7184514 c!1337652) b!7184518))

(assert (= (and b!7184514 (not c!1337652)) b!7184516))

(assert (= (and b!7184516 c!1337654) b!7184510))

(assert (= (and b!7184516 (not c!1337654)) b!7184509))

(declare-fun m!7881734 () Bool)

(assert (=> b!7184513 m!7881734))

(declare-fun m!7881736 () Bool)

(assert (=> b!7184509 m!7881736))

(declare-fun m!7881738 () Bool)

(assert (=> b!7184518 m!7881738))

(declare-fun m!7881740 () Bool)

(assert (=> b!7184510 m!7881740))

(declare-fun m!7881742 () Bool)

(assert (=> b!7184512 m!7881742))

(declare-fun m!7881744 () Bool)

(assert (=> d!2237971 m!7881744))

(declare-fun m!7881746 () Bool)

(assert (=> d!2237971 m!7881746))

(assert (=> b!7184514 m!7880946))

(declare-fun m!7881748 () Bool)

(assert (=> b!7184516 m!7881748))

(assert (=> b!7184516 m!7881748))

(declare-fun m!7881750 () Bool)

(assert (=> b!7184516 m!7881750))

(assert (=> b!7183729 d!2237971))

(declare-fun d!2237973 () Bool)

(declare-fun res!2925942 () Bool)

(declare-fun e!4314669 () Bool)

(assert (=> d!2237973 (=> res!2925942 e!4314669)))

(assert (=> d!2237973 (= res!2925942 ((_ is Nil!69655) (t!383800 (t!383800 lt!2570804))))))

(assert (=> d!2237973 (= (noDuplicate!2887 (t!383800 (t!383800 lt!2570804))) e!4314669)))

(declare-fun b!7184519 () Bool)

(declare-fun e!4314670 () Bool)

(assert (=> b!7184519 (= e!4314669 e!4314670)))

(declare-fun res!2925943 () Bool)

(assert (=> b!7184519 (=> (not res!2925943) (not e!4314670))))

(assert (=> b!7184519 (= res!2925943 (not (contains!20718 (t!383800 (t!383800 (t!383800 lt!2570804))) (h!76103 (t!383800 (t!383800 lt!2570804))))))))

(declare-fun b!7184520 () Bool)

(assert (=> b!7184520 (= e!4314670 (noDuplicate!2887 (t!383800 (t!383800 (t!383800 lt!2570804)))))))

(assert (= (and d!2237973 (not res!2925942)) b!7184519))

(assert (= (and b!7184519 res!2925943) b!7184520))

(declare-fun m!7881752 () Bool)

(assert (=> b!7184519 m!7881752))

(declare-fun m!7881754 () Bool)

(assert (=> b!7184520 m!7881754))

(assert (=> b!7183634 d!2237973))

(declare-fun d!2237975 () Bool)

(declare-fun res!2925944 () Bool)

(declare-fun e!4314671 () Bool)

(assert (=> d!2237975 (=> res!2925944 e!4314671)))

(assert (=> d!2237975 (= res!2925944 ((_ is Nil!69653) (exprs!7801 (h!76103 res!2925525))))))

(assert (=> d!2237975 (= (forall!17177 (exprs!7801 (h!76103 res!2925525)) lambda!437566) e!4314671)))

(declare-fun b!7184521 () Bool)

(declare-fun e!4314672 () Bool)

(assert (=> b!7184521 (= e!4314671 e!4314672)))

(declare-fun res!2925945 () Bool)

(assert (=> b!7184521 (=> (not res!2925945) (not e!4314672))))

(assert (=> b!7184521 (= res!2925945 (dynLambda!28369 lambda!437566 (h!76101 (exprs!7801 (h!76103 res!2925525)))))))

(declare-fun b!7184522 () Bool)

(assert (=> b!7184522 (= e!4314672 (forall!17177 (t!383798 (exprs!7801 (h!76103 res!2925525))) lambda!437566))))

(assert (= (and d!2237975 (not res!2925944)) b!7184521))

(assert (= (and b!7184521 res!2925945) b!7184522))

(declare-fun b_lambda!275079 () Bool)

(assert (=> (not b_lambda!275079) (not b!7184521)))

(declare-fun m!7881756 () Bool)

(assert (=> b!7184521 m!7881756))

(declare-fun m!7881758 () Bool)

(assert (=> b!7184522 m!7881758))

(assert (=> d!2237533 d!2237975))

(assert (=> d!2237585 d!2237583))

(assert (=> d!2237585 d!2237413))

(declare-fun d!2237977 () Bool)

(declare-fun res!2925946 () Bool)

(declare-fun e!4314673 () Bool)

(assert (=> d!2237977 (=> res!2925946 e!4314673)))

(assert (=> d!2237977 (= res!2925946 ((_ is Nil!69655) (t!383800 res!2925518)))))

(assert (=> d!2237977 (= (noDuplicate!2887 (t!383800 res!2925518)) e!4314673)))

(declare-fun b!7184523 () Bool)

(declare-fun e!4314674 () Bool)

(assert (=> b!7184523 (= e!4314673 e!4314674)))

(declare-fun res!2925947 () Bool)

(assert (=> b!7184523 (=> (not res!2925947) (not e!4314674))))

(assert (=> b!7184523 (= res!2925947 (not (contains!20718 (t!383800 (t!383800 res!2925518)) (h!76103 (t!383800 res!2925518)))))))

(declare-fun b!7184524 () Bool)

(assert (=> b!7184524 (= e!4314674 (noDuplicate!2887 (t!383800 (t!383800 res!2925518))))))

(assert (= (and d!2237977 (not res!2925946)) b!7184523))

(assert (= (and b!7184523 res!2925947) b!7184524))

(declare-fun m!7881760 () Bool)

(assert (=> b!7184523 m!7881760))

(declare-fun m!7881762 () Bool)

(assert (=> b!7184524 m!7881762))

(assert (=> b!7183615 d!2237977))

(declare-fun b!7184525 () Bool)

(declare-fun res!2925951 () Bool)

(declare-fun e!4314680 () Bool)

(assert (=> b!7184525 (=> (not res!2925951) (not e!4314680))))

(declare-fun call!654959 () Bool)

(assert (=> b!7184525 (= res!2925951 call!654959)))

(declare-fun e!4314678 () Bool)

(assert (=> b!7184525 (= e!4314678 e!4314680)))

(declare-fun b!7184526 () Bool)

(declare-fun e!4314677 () Bool)

(declare-fun call!654960 () Bool)

(assert (=> b!7184526 (= e!4314677 call!654960)))

(declare-fun bm!654954 () Bool)

(declare-fun call!654961 () Bool)

(assert (=> bm!654954 (= call!654960 call!654961)))

(declare-fun b!7184527 () Bool)

(declare-fun e!4314676 () Bool)

(assert (=> b!7184527 (= e!4314676 e!4314677)))

(declare-fun res!2925948 () Bool)

(assert (=> b!7184527 (=> (not res!2925948) (not e!4314677))))

(assert (=> b!7184527 (= res!2925948 call!654959)))

(declare-fun bm!654955 () Bool)

(declare-fun c!1337657 () Bool)

(assert (=> bm!654955 (= call!654959 (validRegex!9468 (ite c!1337657 (regOne!37211 (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))) (regOne!37210 (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))))

(declare-fun b!7184528 () Bool)

(declare-fun e!4314679 () Bool)

(declare-fun e!4314681 () Bool)

(assert (=> b!7184528 (= e!4314679 e!4314681)))

(declare-fun c!1337656 () Bool)

(assert (=> b!7184528 (= c!1337656 ((_ is Star!18349) (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))

(declare-fun d!2237979 () Bool)

(declare-fun res!2925949 () Bool)

(assert (=> d!2237979 (=> res!2925949 e!4314679)))

(assert (=> d!2237979 (= res!2925949 ((_ is ElementMatch!18349) (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))

(assert (=> d!2237979 (= (validRegex!9468 (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))) e!4314679)))

(declare-fun b!7184529 () Bool)

(declare-fun e!4314675 () Bool)

(assert (=> b!7184529 (= e!4314675 call!654961)))

(declare-fun b!7184530 () Bool)

(assert (=> b!7184530 (= e!4314681 e!4314678)))

(assert (=> b!7184530 (= c!1337657 ((_ is Union!18349) (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))

(declare-fun bm!654956 () Bool)

(assert (=> bm!654956 (= call!654961 (validRegex!9468 (ite c!1337656 (reg!18678 (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))) (ite c!1337657 (regTwo!37211 (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))) (regTwo!37210 (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))))))

(declare-fun b!7184531 () Bool)

(assert (=> b!7184531 (= e!4314680 call!654960)))

(declare-fun b!7184532 () Bool)

(declare-fun res!2925950 () Bool)

(assert (=> b!7184532 (=> res!2925950 e!4314676)))

(assert (=> b!7184532 (= res!2925950 (not ((_ is Concat!27194) (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))))

(assert (=> b!7184532 (= e!4314678 e!4314676)))

(declare-fun b!7184533 () Bool)

(assert (=> b!7184533 (= e!4314681 e!4314675)))

(declare-fun res!2925952 () Bool)

(assert (=> b!7184533 (= res!2925952 (not (nullable!7776 (reg!18678 (ite c!1337522 (regOne!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regOne!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))))

(assert (=> b!7184533 (=> (not res!2925952) (not e!4314675))))

(assert (= (and d!2237979 (not res!2925949)) b!7184528))

(assert (= (and b!7184528 c!1337656) b!7184533))

(assert (= (and b!7184528 (not c!1337656)) b!7184530))

(assert (= (and b!7184533 res!2925952) b!7184529))

(assert (= (and b!7184530 c!1337657) b!7184525))

(assert (= (and b!7184530 (not c!1337657)) b!7184532))

(assert (= (and b!7184525 res!2925951) b!7184531))

(assert (= (and b!7184532 (not res!2925950)) b!7184527))

(assert (= (and b!7184527 res!2925948) b!7184526))

(assert (= (or b!7184525 b!7184527) bm!654955))

(assert (= (or b!7184531 b!7184526) bm!654954))

(assert (= (or b!7184529 bm!654954) bm!654956))

(declare-fun m!7881764 () Bool)

(assert (=> bm!654955 m!7881764))

(declare-fun m!7881766 () Bool)

(assert (=> bm!654956 m!7881766))

(declare-fun m!7881768 () Bool)

(assert (=> b!7184533 m!7881768))

(assert (=> bm!654824 d!2237979))

(declare-fun d!2237981 () Bool)

(assert (=> d!2237981 (= (isEmptyLang!2151 lt!2570833) ((_ is EmptyLang!18349) lt!2570833))))

(assert (=> b!7183749 d!2237981))

(declare-fun d!2237983 () Bool)

(assert (=> d!2237983 (= (isConcat!1615 lt!2570831) ((_ is Concat!27194) lt!2570831))))

(assert (=> b!7183725 d!2237983))

(declare-fun bs!1897444 () Bool)

(declare-fun d!2237985 () Bool)

(assert (= bs!1897444 (and d!2237985 d!2237597)))

(declare-fun lambda!437602 () Int)

(assert (=> bs!1897444 (= lambda!437602 lambda!437576)))

(declare-fun bs!1897445 () Bool)

(assert (= bs!1897445 (and d!2237985 d!2237781)))

(assert (=> bs!1897445 (= lambda!437602 lambda!437592)))

(declare-fun bs!1897446 () Bool)

(assert (= bs!1897446 (and d!2237985 d!2237791)))

(assert (=> bs!1897446 (= lambda!437602 lambda!437594)))

(declare-fun bs!1897447 () Bool)

(assert (= bs!1897447 (and d!2237985 d!2237569)))

(assert (=> bs!1897447 (= lambda!437602 lambda!437569)))

(declare-fun bs!1897448 () Bool)

(assert (= bs!1897448 (and d!2237985 d!2237379)))

(assert (=> bs!1897448 (= lambda!437602 lambda!437531)))

(declare-fun bs!1897449 () Bool)

(assert (= bs!1897449 (and d!2237985 d!2237593)))

(assert (=> bs!1897449 (= lambda!437602 lambda!437575)))

(declare-fun bs!1897450 () Bool)

(assert (= bs!1897450 (and d!2237985 d!2237811)))

(assert (=> bs!1897450 (= lambda!437602 lambda!437595)))

(declare-fun bs!1897451 () Bool)

(assert (= bs!1897451 (and d!2237985 d!2237911)))

(assert (=> bs!1897451 (= lambda!437602 lambda!437597)))

(declare-fun bs!1897452 () Bool)

(assert (= bs!1897452 (and d!2237985 d!2237605)))

(assert (=> bs!1897452 (= lambda!437602 lambda!437578)))

(declare-fun bs!1897453 () Bool)

(assert (= bs!1897453 (and d!2237985 d!2237533)))

(assert (=> bs!1897453 (= lambda!437602 lambda!437566)))

(declare-fun bs!1897454 () Bool)

(assert (= bs!1897454 (and d!2237985 d!2237971)))

(assert (=> bs!1897454 (= lambda!437602 lambda!437601)))

(declare-fun bs!1897455 () Bool)

(assert (= bs!1897455 (and d!2237985 d!2237591)))

(assert (=> bs!1897455 (= lambda!437602 lambda!437574)))

(declare-fun bs!1897456 () Bool)

(assert (= bs!1897456 (and d!2237985 d!2237403)))

(assert (=> bs!1897456 (not (= lambda!437602 lambda!437536))))

(declare-fun bs!1897457 () Bool)

(assert (= bs!1897457 (and d!2237985 d!2237509)))

(assert (=> bs!1897457 (= lambda!437602 lambda!437565)))

(declare-fun bs!1897458 () Bool)

(assert (= bs!1897458 (and d!2237985 d!2237555)))

(assert (=> bs!1897458 (= lambda!437602 lambda!437568)))

(declare-fun bs!1897459 () Bool)

(assert (= bs!1897459 (and d!2237985 d!2237867)))

(assert (=> bs!1897459 (= lambda!437602 lambda!437596)))

(declare-fun bs!1897460 () Bool)

(assert (= bs!1897460 (and d!2237985 d!2237923)))

(assert (=> bs!1897460 (= lambda!437602 lambda!437599)))

(declare-fun bs!1897461 () Bool)

(assert (= bs!1897461 (and d!2237985 d!2237913)))

(assert (=> bs!1897461 (= lambda!437602 lambda!437598)))

(declare-fun bs!1897462 () Bool)

(assert (= bs!1897462 (and d!2237985 d!2237637)))

(assert (=> bs!1897462 (= lambda!437602 lambda!437581)))

(declare-fun bs!1897463 () Bool)

(assert (= bs!1897463 (and d!2237985 d!2237785)))

(assert (=> bs!1897463 (= lambda!437602 lambda!437593)))

(declare-fun bs!1897464 () Bool)

(assert (= bs!1897464 (and d!2237985 d!2237493)))

(assert (=> bs!1897464 (= lambda!437602 lambda!437561)))

(declare-fun bs!1897465 () Bool)

(assert (= bs!1897465 (and d!2237985 d!2237477)))

(assert (=> bs!1897465 (= lambda!437602 lambda!437546)))

(declare-fun bs!1897466 () Bool)

(assert (= bs!1897466 (and d!2237985 d!2237577)))

(assert (=> bs!1897466 (= lambda!437602 lambda!437570)))

(declare-fun bs!1897467 () Bool)

(assert (= bs!1897467 (and d!2237985 d!2237395)))

(assert (=> bs!1897467 (= lambda!437602 lambda!437532)))

(declare-fun bs!1897468 () Bool)

(assert (= bs!1897468 (and d!2237985 d!2237551)))

(assert (=> bs!1897468 (= lambda!437602 lambda!437567)))

(declare-fun b!7184534 () Bool)

(declare-fun e!4314684 () Bool)

(declare-fun lt!2570859 () Regex!18349)

(assert (=> b!7184534 (= e!4314684 (isConcat!1615 lt!2570859))))

(declare-fun e!4314687 () Bool)

(assert (=> d!2237985 e!4314687))

(declare-fun res!2925954 () Bool)

(assert (=> d!2237985 (=> (not res!2925954) (not e!4314687))))

(assert (=> d!2237985 (= res!2925954 (validRegex!9468 lt!2570859))))

(declare-fun e!4314686 () Regex!18349)

(assert (=> d!2237985 (= lt!2570859 e!4314686)))

(declare-fun c!1337661 () Bool)

(declare-fun e!4314682 () Bool)

(assert (=> d!2237985 (= c!1337661 e!4314682)))

(declare-fun res!2925953 () Bool)

(assert (=> d!2237985 (=> (not res!2925953) (not e!4314682))))

(assert (=> d!2237985 (= res!2925953 ((_ is Cons!69653) (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(assert (=> d!2237985 (forall!17177 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) lambda!437602)))

(assert (=> d!2237985 (= (generalisedConcat!2461 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))) lt!2570859)))

(declare-fun b!7184535 () Bool)

(assert (=> b!7184535 (= e!4314684 (= lt!2570859 (head!14664 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))))

(declare-fun b!7184536 () Bool)

(declare-fun e!4314685 () Regex!18349)

(assert (=> b!7184536 (= e!4314685 EmptyExpr!18349)))

(declare-fun b!7184537 () Bool)

(assert (=> b!7184537 (= e!4314682 (isEmpty!40211 (t!383798 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))))

(declare-fun b!7184538 () Bool)

(assert (=> b!7184538 (= e!4314685 (Concat!27194 (h!76101 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))) (generalisedConcat!2461 (t!383798 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))))

(declare-fun b!7184539 () Bool)

(declare-fun e!4314683 () Bool)

(assert (=> b!7184539 (= e!4314687 e!4314683)))

(declare-fun c!1337658 () Bool)

(assert (=> b!7184539 (= c!1337658 (isEmpty!40211 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7184540 () Bool)

(assert (=> b!7184540 (= e!4314686 (h!76101 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7184541 () Bool)

(assert (=> b!7184541 (= e!4314683 e!4314684)))

(declare-fun c!1337660 () Bool)

(assert (=> b!7184541 (= c!1337660 (isEmpty!40211 (tail!14069 (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))))

(declare-fun b!7184542 () Bool)

(assert (=> b!7184542 (= e!4314686 e!4314685)))

(declare-fun c!1337659 () Bool)

(assert (=> b!7184542 (= c!1337659 ((_ is Cons!69653) (exprs!7801 (h!76103 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun b!7184543 () Bool)

(assert (=> b!7184543 (= e!4314683 (isEmptyExpr!2093 lt!2570859))))

(assert (= (and d!2237985 res!2925953) b!7184537))

(assert (= (and d!2237985 c!1337661) b!7184540))

(assert (= (and d!2237985 (not c!1337661)) b!7184542))

(assert (= (and b!7184542 c!1337659) b!7184538))

(assert (= (and b!7184542 (not c!1337659)) b!7184536))

(assert (= (and d!2237985 res!2925954) b!7184539))

(assert (= (and b!7184539 c!1337658) b!7184543))

(assert (= (and b!7184539 (not c!1337658)) b!7184541))

(assert (= (and b!7184541 c!1337660) b!7184535))

(assert (= (and b!7184541 (not c!1337660)) b!7184534))

(declare-fun m!7881770 () Bool)

(assert (=> b!7184538 m!7881770))

(declare-fun m!7881772 () Bool)

(assert (=> b!7184534 m!7881772))

(declare-fun m!7881774 () Bool)

(assert (=> b!7184543 m!7881774))

(declare-fun m!7881776 () Bool)

(assert (=> b!7184535 m!7881776))

(declare-fun m!7881778 () Bool)

(assert (=> b!7184537 m!7881778))

(declare-fun m!7881780 () Bool)

(assert (=> d!2237985 m!7881780))

(declare-fun m!7881782 () Bool)

(assert (=> d!2237985 m!7881782))

(declare-fun m!7881784 () Bool)

(assert (=> b!7184539 m!7881784))

(declare-fun m!7881786 () Bool)

(assert (=> b!7184541 m!7881786))

(assert (=> b!7184541 m!7881786))

(declare-fun m!7881788 () Bool)

(assert (=> b!7184541 m!7881788))

(assert (=> b!7183767 d!2237985))

(declare-fun bs!1897469 () Bool)

(declare-fun d!2237987 () Bool)

(assert (= bs!1897469 (and d!2237987 d!2237781)))

(declare-fun lambda!437603 () Int)

(assert (=> bs!1897469 (= lambda!437603 lambda!437592)))

(declare-fun bs!1897470 () Bool)

(assert (= bs!1897470 (and d!2237987 d!2237791)))

(assert (=> bs!1897470 (= lambda!437603 lambda!437594)))

(declare-fun bs!1897471 () Bool)

(assert (= bs!1897471 (and d!2237987 d!2237569)))

(assert (=> bs!1897471 (= lambda!437603 lambda!437569)))

(declare-fun bs!1897472 () Bool)

(assert (= bs!1897472 (and d!2237987 d!2237379)))

(assert (=> bs!1897472 (= lambda!437603 lambda!437531)))

(declare-fun bs!1897473 () Bool)

(assert (= bs!1897473 (and d!2237987 d!2237593)))

(assert (=> bs!1897473 (= lambda!437603 lambda!437575)))

(declare-fun bs!1897474 () Bool)

(assert (= bs!1897474 (and d!2237987 d!2237811)))

(assert (=> bs!1897474 (= lambda!437603 lambda!437595)))

(declare-fun bs!1897475 () Bool)

(assert (= bs!1897475 (and d!2237987 d!2237911)))

(assert (=> bs!1897475 (= lambda!437603 lambda!437597)))

(declare-fun bs!1897476 () Bool)

(assert (= bs!1897476 (and d!2237987 d!2237605)))

(assert (=> bs!1897476 (= lambda!437603 lambda!437578)))

(declare-fun bs!1897477 () Bool)

(assert (= bs!1897477 (and d!2237987 d!2237533)))

(assert (=> bs!1897477 (= lambda!437603 lambda!437566)))

(declare-fun bs!1897478 () Bool)

(assert (= bs!1897478 (and d!2237987 d!2237971)))

(assert (=> bs!1897478 (= lambda!437603 lambda!437601)))

(declare-fun bs!1897479 () Bool)

(assert (= bs!1897479 (and d!2237987 d!2237985)))

(assert (=> bs!1897479 (= lambda!437603 lambda!437602)))

(declare-fun bs!1897480 () Bool)

(assert (= bs!1897480 (and d!2237987 d!2237597)))

(assert (=> bs!1897480 (= lambda!437603 lambda!437576)))

(declare-fun bs!1897481 () Bool)

(assert (= bs!1897481 (and d!2237987 d!2237591)))

(assert (=> bs!1897481 (= lambda!437603 lambda!437574)))

(declare-fun bs!1897482 () Bool)

(assert (= bs!1897482 (and d!2237987 d!2237403)))

(assert (=> bs!1897482 (not (= lambda!437603 lambda!437536))))

(declare-fun bs!1897483 () Bool)

(assert (= bs!1897483 (and d!2237987 d!2237509)))

(assert (=> bs!1897483 (= lambda!437603 lambda!437565)))

(declare-fun bs!1897484 () Bool)

(assert (= bs!1897484 (and d!2237987 d!2237555)))

(assert (=> bs!1897484 (= lambda!437603 lambda!437568)))

(declare-fun bs!1897485 () Bool)

(assert (= bs!1897485 (and d!2237987 d!2237867)))

(assert (=> bs!1897485 (= lambda!437603 lambda!437596)))

(declare-fun bs!1897486 () Bool)

(assert (= bs!1897486 (and d!2237987 d!2237923)))

(assert (=> bs!1897486 (= lambda!437603 lambda!437599)))

(declare-fun bs!1897487 () Bool)

(assert (= bs!1897487 (and d!2237987 d!2237913)))

(assert (=> bs!1897487 (= lambda!437603 lambda!437598)))

(declare-fun bs!1897488 () Bool)

(assert (= bs!1897488 (and d!2237987 d!2237637)))

(assert (=> bs!1897488 (= lambda!437603 lambda!437581)))

(declare-fun bs!1897489 () Bool)

(assert (= bs!1897489 (and d!2237987 d!2237785)))

(assert (=> bs!1897489 (= lambda!437603 lambda!437593)))

(declare-fun bs!1897490 () Bool)

(assert (= bs!1897490 (and d!2237987 d!2237493)))

(assert (=> bs!1897490 (= lambda!437603 lambda!437561)))

(declare-fun bs!1897491 () Bool)

(assert (= bs!1897491 (and d!2237987 d!2237477)))

(assert (=> bs!1897491 (= lambda!437603 lambda!437546)))

(declare-fun bs!1897492 () Bool)

(assert (= bs!1897492 (and d!2237987 d!2237577)))

(assert (=> bs!1897492 (= lambda!437603 lambda!437570)))

(declare-fun bs!1897493 () Bool)

(assert (= bs!1897493 (and d!2237987 d!2237395)))

(assert (=> bs!1897493 (= lambda!437603 lambda!437532)))

(declare-fun bs!1897494 () Bool)

(assert (= bs!1897494 (and d!2237987 d!2237551)))

(assert (=> bs!1897494 (= lambda!437603 lambda!437567)))

(declare-fun lt!2570860 () List!69777)

(assert (=> d!2237987 (forall!17177 lt!2570860 lambda!437603)))

(declare-fun e!4314688 () List!69777)

(assert (=> d!2237987 (= lt!2570860 e!4314688)))

(declare-fun c!1337662 () Bool)

(assert (=> d!2237987 (= c!1337662 ((_ is Cons!69655) (t!383800 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))

(assert (=> d!2237987 (= (unfocusZipperList!2327 (t!383800 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))) lt!2570860)))

(declare-fun b!7184544 () Bool)

(assert (=> b!7184544 (= e!4314688 (Cons!69653 (generalisedConcat!2461 (exprs!7801 (h!76103 (t!383800 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))) (unfocusZipperList!2327 (t!383800 (t!383800 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true)))))))))

(declare-fun b!7184545 () Bool)

(assert (=> b!7184545 (= e!4314688 Nil!69653)))

(assert (= (and d!2237987 c!1337662) b!7184544))

(assert (= (and d!2237987 (not c!1337662)) b!7184545))

(declare-fun m!7881790 () Bool)

(assert (=> d!2237987 m!7881790))

(declare-fun m!7881792 () Bool)

(assert (=> b!7184544 m!7881792))

(declare-fun m!7881794 () Bool)

(assert (=> b!7184544 m!7881794))

(assert (=> b!7183767 d!2237987))

(declare-fun d!2237989 () Bool)

(declare-fun lt!2570861 () Bool)

(assert (=> d!2237989 (= lt!2570861 (select (content!14316 (t!383800 lt!2570814)) (h!76103 lt!2570814)))))

(declare-fun e!4314689 () Bool)

(assert (=> d!2237989 (= lt!2570861 e!4314689)))

(declare-fun res!2925955 () Bool)

(assert (=> d!2237989 (=> (not res!2925955) (not e!4314689))))

(assert (=> d!2237989 (= res!2925955 ((_ is Cons!69655) (t!383800 lt!2570814)))))

(assert (=> d!2237989 (= (contains!20718 (t!383800 lt!2570814) (h!76103 lt!2570814)) lt!2570861)))

(declare-fun b!7184546 () Bool)

(declare-fun e!4314690 () Bool)

(assert (=> b!7184546 (= e!4314689 e!4314690)))

(declare-fun res!2925956 () Bool)

(assert (=> b!7184546 (=> res!2925956 e!4314690)))

(assert (=> b!7184546 (= res!2925956 (= (h!76103 (t!383800 lt!2570814)) (h!76103 lt!2570814)))))

(declare-fun b!7184547 () Bool)

(assert (=> b!7184547 (= e!4314690 (contains!20718 (t!383800 (t!383800 lt!2570814)) (h!76103 lt!2570814)))))

(assert (= (and d!2237989 res!2925955) b!7184546))

(assert (= (and b!7184546 (not res!2925956)) b!7184547))

(assert (=> d!2237989 m!7880894))

(declare-fun m!7881796 () Bool)

(assert (=> d!2237989 m!7881796))

(declare-fun m!7881798 () Bool)

(assert (=> b!7184547 m!7881798))

(assert (=> b!7183617 d!2237989))

(declare-fun d!2237991 () Bool)

(declare-fun res!2925957 () Bool)

(declare-fun e!4314691 () Bool)

(assert (=> d!2237991 (=> res!2925957 e!4314691)))

(assert (=> d!2237991 (= res!2925957 ((_ is Nil!69655) (t!383800 (t!383800 lt!2570808))))))

(assert (=> d!2237991 (= (noDuplicate!2887 (t!383800 (t!383800 lt!2570808))) e!4314691)))

(declare-fun b!7184548 () Bool)

(declare-fun e!4314692 () Bool)

(assert (=> b!7184548 (= e!4314691 e!4314692)))

(declare-fun res!2925958 () Bool)

(assert (=> b!7184548 (=> (not res!2925958) (not e!4314692))))

(assert (=> b!7184548 (= res!2925958 (not (contains!20718 (t!383800 (t!383800 (t!383800 lt!2570808))) (h!76103 (t!383800 (t!383800 lt!2570808))))))))

(declare-fun b!7184549 () Bool)

(assert (=> b!7184549 (= e!4314692 (noDuplicate!2887 (t!383800 (t!383800 (t!383800 lt!2570808)))))))

(assert (= (and d!2237991 (not res!2925957)) b!7184548))

(assert (= (and b!7184548 res!2925958) b!7184549))

(declare-fun m!7881800 () Bool)

(assert (=> b!7184548 m!7881800))

(declare-fun m!7881802 () Bool)

(assert (=> b!7184549 m!7881802))

(assert (=> b!7183632 d!2237991))

(declare-fun b!7184550 () Bool)

(declare-fun res!2925962 () Bool)

(declare-fun e!4314698 () Bool)

(assert (=> b!7184550 (=> (not res!2925962) (not e!4314698))))

(declare-fun call!654962 () Bool)

(assert (=> b!7184550 (= res!2925962 call!654962)))

(declare-fun e!4314696 () Bool)

(assert (=> b!7184550 (= e!4314696 e!4314698)))

(declare-fun b!7184551 () Bool)

(declare-fun e!4314695 () Bool)

(declare-fun call!654963 () Bool)

(assert (=> b!7184551 (= e!4314695 call!654963)))

(declare-fun bm!654957 () Bool)

(declare-fun call!654964 () Bool)

(assert (=> bm!654957 (= call!654963 call!654964)))

(declare-fun b!7184552 () Bool)

(declare-fun e!4314694 () Bool)

(assert (=> b!7184552 (= e!4314694 e!4314695)))

(declare-fun res!2925959 () Bool)

(assert (=> b!7184552 (=> (not res!2925959) (not e!4314695))))

(assert (=> b!7184552 (= res!2925959 call!654962)))

(declare-fun bm!654958 () Bool)

(declare-fun c!1337664 () Bool)

(assert (=> bm!654958 (= call!654962 (validRegex!9468 (ite c!1337664 (regOne!37211 (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))) (regOne!37210 (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))))))

(declare-fun b!7184553 () Bool)

(declare-fun e!4314697 () Bool)

(declare-fun e!4314699 () Bool)

(assert (=> b!7184553 (= e!4314697 e!4314699)))

(declare-fun c!1337663 () Bool)

(assert (=> b!7184553 (= c!1337663 ((_ is Star!18349) (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))))

(declare-fun d!2237993 () Bool)

(declare-fun res!2925960 () Bool)

(assert (=> d!2237993 (=> res!2925960 e!4314697)))

(assert (=> d!2237993 (= res!2925960 ((_ is ElementMatch!18349) (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))))

(assert (=> d!2237993 (= (validRegex!9468 (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))) e!4314697)))

(declare-fun b!7184554 () Bool)

(declare-fun e!4314693 () Bool)

(assert (=> b!7184554 (= e!4314693 call!654964)))

(declare-fun b!7184555 () Bool)

(assert (=> b!7184555 (= e!4314699 e!4314696)))

(assert (=> b!7184555 (= c!1337664 ((_ is Union!18349) (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))))

(declare-fun bm!654959 () Bool)

(assert (=> bm!654959 (= call!654964 (validRegex!9468 (ite c!1337663 (reg!18678 (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))) (ite c!1337664 (regTwo!37211 (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))) (regTwo!37210 (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))))))

(declare-fun b!7184556 () Bool)

(assert (=> b!7184556 (= e!4314698 call!654963)))

(declare-fun b!7184557 () Bool)

(declare-fun res!2925961 () Bool)

(assert (=> b!7184557 (=> res!2925961 e!4314694)))

(assert (=> b!7184557 (= res!2925961 (not ((_ is Concat!27194) (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))))))))))

(assert (=> b!7184557 (= e!4314696 e!4314694)))

(declare-fun b!7184558 () Bool)

(assert (=> b!7184558 (= e!4314699 e!4314693)))

(declare-fun res!2925963 () Bool)

(assert (=> b!7184558 (= res!2925963 (not (nullable!7776 (reg!18678 (ite c!1337521 (reg!18678 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (ite c!1337522 (regTwo!37211 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807)))) (regTwo!37210 (ite c!1337431 (reg!18678 lt!2570807) (ite c!1337432 (regTwo!37211 lt!2570807) (regTwo!37210 lt!2570807))))))))))))

(assert (=> b!7184558 (=> (not res!2925963) (not e!4314693))))

(assert (= (and d!2237993 (not res!2925960)) b!7184553))

(assert (= (and b!7184553 c!1337663) b!7184558))

(assert (= (and b!7184553 (not c!1337663)) b!7184555))

(assert (= (and b!7184558 res!2925963) b!7184554))

(assert (= (and b!7184555 c!1337664) b!7184550))

(assert (= (and b!7184555 (not c!1337664)) b!7184557))

(assert (= (and b!7184550 res!2925962) b!7184556))

(assert (= (and b!7184557 (not res!2925961)) b!7184552))

(assert (= (and b!7184552 res!2925959) b!7184551))

(assert (= (or b!7184550 b!7184552) bm!654958))

(assert (= (or b!7184556 b!7184551) bm!654957))

(assert (= (or b!7184554 bm!654957) bm!654959))

(declare-fun m!7881804 () Bool)

(assert (=> bm!654958 m!7881804))

(declare-fun m!7881806 () Bool)

(assert (=> bm!654959 m!7881806))

(declare-fun m!7881808 () Bool)

(assert (=> b!7184558 m!7881808))

(assert (=> bm!654825 d!2237993))

(declare-fun d!2237995 () Bool)

(declare-fun res!2925964 () Bool)

(declare-fun e!4314700 () Bool)

(assert (=> d!2237995 (=> res!2925964 e!4314700)))

(assert (=> d!2237995 (= res!2925964 ((_ is Nil!69653) (t!383798 (t!383798 (exprs!7801 lt!2570780)))))))

(assert (=> d!2237995 (= (forall!17177 (t!383798 (t!383798 (exprs!7801 lt!2570780))) lambda!437536) e!4314700)))

(declare-fun b!7184559 () Bool)

(declare-fun e!4314701 () Bool)

(assert (=> b!7184559 (= e!4314700 e!4314701)))

(declare-fun res!2925965 () Bool)

(assert (=> b!7184559 (=> (not res!2925965) (not e!4314701))))

(assert (=> b!7184559 (= res!2925965 (dynLambda!28369 lambda!437536 (h!76101 (t!383798 (t!383798 (exprs!7801 lt!2570780))))))))

(declare-fun b!7184560 () Bool)

(assert (=> b!7184560 (= e!4314701 (forall!17177 (t!383798 (t!383798 (t!383798 (exprs!7801 lt!2570780)))) lambda!437536))))

(assert (= (and d!2237995 (not res!2925964)) b!7184559))

(assert (= (and b!7184559 res!2925965) b!7184560))

(declare-fun b_lambda!275081 () Bool)

(assert (=> (not b_lambda!275081) (not b!7184559)))

(declare-fun m!7881810 () Bool)

(assert (=> b!7184559 m!7881810))

(declare-fun m!7881812 () Bool)

(assert (=> b!7184560 m!7881812))

(assert (=> b!7183835 d!2237995))

(declare-fun b!7184561 () Bool)

(declare-fun res!2925969 () Bool)

(declare-fun e!4314707 () Bool)

(assert (=> b!7184561 (=> (not res!2925969) (not e!4314707))))

(declare-fun call!654965 () Bool)

(assert (=> b!7184561 (= res!2925969 call!654965)))

(declare-fun e!4314705 () Bool)

(assert (=> b!7184561 (= e!4314705 e!4314707)))

(declare-fun b!7184562 () Bool)

(declare-fun e!4314704 () Bool)

(declare-fun call!654966 () Bool)

(assert (=> b!7184562 (= e!4314704 call!654966)))

(declare-fun bm!654960 () Bool)

(declare-fun call!654967 () Bool)

(assert (=> bm!654960 (= call!654966 call!654967)))

(declare-fun b!7184563 () Bool)

(declare-fun e!4314703 () Bool)

(assert (=> b!7184563 (= e!4314703 e!4314704)))

(declare-fun res!2925966 () Bool)

(assert (=> b!7184563 (=> (not res!2925966) (not e!4314704))))

(assert (=> b!7184563 (= res!2925966 call!654965)))

(declare-fun bm!654961 () Bool)

(declare-fun c!1337666 () Bool)

(assert (=> bm!654961 (= call!654965 (validRegex!9468 (ite c!1337666 (regOne!37211 (h!76101 lt!2570826)) (regOne!37210 (h!76101 lt!2570826)))))))

(declare-fun b!7184564 () Bool)

(declare-fun e!4314706 () Bool)

(declare-fun e!4314708 () Bool)

(assert (=> b!7184564 (= e!4314706 e!4314708)))

(declare-fun c!1337665 () Bool)

(assert (=> b!7184564 (= c!1337665 ((_ is Star!18349) (h!76101 lt!2570826)))))

(declare-fun d!2237997 () Bool)

(declare-fun res!2925967 () Bool)

(assert (=> d!2237997 (=> res!2925967 e!4314706)))

(assert (=> d!2237997 (= res!2925967 ((_ is ElementMatch!18349) (h!76101 lt!2570826)))))

(assert (=> d!2237997 (= (validRegex!9468 (h!76101 lt!2570826)) e!4314706)))

(declare-fun b!7184565 () Bool)

(declare-fun e!4314702 () Bool)

(assert (=> b!7184565 (= e!4314702 call!654967)))

(declare-fun b!7184566 () Bool)

(assert (=> b!7184566 (= e!4314708 e!4314705)))

(assert (=> b!7184566 (= c!1337666 ((_ is Union!18349) (h!76101 lt!2570826)))))

(declare-fun bm!654962 () Bool)

(assert (=> bm!654962 (= call!654967 (validRegex!9468 (ite c!1337665 (reg!18678 (h!76101 lt!2570826)) (ite c!1337666 (regTwo!37211 (h!76101 lt!2570826)) (regTwo!37210 (h!76101 lt!2570826))))))))

(declare-fun b!7184567 () Bool)

(assert (=> b!7184567 (= e!4314707 call!654966)))

(declare-fun b!7184568 () Bool)

(declare-fun res!2925968 () Bool)

(assert (=> b!7184568 (=> res!2925968 e!4314703)))

(assert (=> b!7184568 (= res!2925968 (not ((_ is Concat!27194) (h!76101 lt!2570826))))))

(assert (=> b!7184568 (= e!4314705 e!4314703)))

(declare-fun b!7184569 () Bool)

(assert (=> b!7184569 (= e!4314708 e!4314702)))

(declare-fun res!2925970 () Bool)

(assert (=> b!7184569 (= res!2925970 (not (nullable!7776 (reg!18678 (h!76101 lt!2570826)))))))

(assert (=> b!7184569 (=> (not res!2925970) (not e!4314702))))

(assert (= (and d!2237997 (not res!2925967)) b!7184564))

(assert (= (and b!7184564 c!1337665) b!7184569))

(assert (= (and b!7184564 (not c!1337665)) b!7184566))

(assert (= (and b!7184569 res!2925970) b!7184565))

(assert (= (and b!7184566 c!1337666) b!7184561))

(assert (= (and b!7184566 (not c!1337666)) b!7184568))

(assert (= (and b!7184561 res!2925969) b!7184567))

(assert (= (and b!7184568 (not res!2925968)) b!7184563))

(assert (= (and b!7184563 res!2925966) b!7184562))

(assert (= (or b!7184561 b!7184563) bm!654961))

(assert (= (or b!7184567 b!7184562) bm!654960))

(assert (= (or b!7184565 bm!654960) bm!654962))

(declare-fun m!7881814 () Bool)

(assert (=> bm!654961 m!7881814))

(declare-fun m!7881816 () Bool)

(assert (=> bm!654962 m!7881816))

(declare-fun m!7881818 () Bool)

(assert (=> b!7184569 m!7881818))

(assert (=> bs!1897138 d!2237997))

(declare-fun d!2237999 () Bool)

(declare-fun res!2925971 () Bool)

(declare-fun e!4314709 () Bool)

(assert (=> d!2237999 (=> res!2925971 e!4314709)))

(assert (=> d!2237999 (= res!2925971 ((_ is Nil!69653) (t!383798 (exprs!7801 setElem!53137))))))

(assert (=> d!2237999 (= (forall!17177 (t!383798 (exprs!7801 setElem!53137)) lambda!437546) e!4314709)))

(declare-fun b!7184570 () Bool)

(declare-fun e!4314710 () Bool)

(assert (=> b!7184570 (= e!4314709 e!4314710)))

(declare-fun res!2925972 () Bool)

(assert (=> b!7184570 (=> (not res!2925972) (not e!4314710))))

(assert (=> b!7184570 (= res!2925972 (dynLambda!28369 lambda!437546 (h!76101 (t!383798 (exprs!7801 setElem!53137)))))))

(declare-fun b!7184571 () Bool)

(assert (=> b!7184571 (= e!4314710 (forall!17177 (t!383798 (t!383798 (exprs!7801 setElem!53137))) lambda!437546))))

(assert (= (and d!2237999 (not res!2925971)) b!7184570))

(assert (= (and b!7184570 res!2925972) b!7184571))

(declare-fun b_lambda!275083 () Bool)

(assert (=> (not b_lambda!275083) (not b!7184570)))

(declare-fun m!7881820 () Bool)

(assert (=> b!7184570 m!7881820))

(declare-fun m!7881822 () Bool)

(assert (=> b!7184571 m!7881822))

(assert (=> b!7183833 d!2237999))

(declare-fun d!2238001 () Bool)

(assert (=> d!2238001 (= (isEmptyExpr!2093 lt!2570831) ((_ is EmptyExpr!18349) lt!2570831))))

(assert (=> b!7183734 d!2238001))

(declare-fun d!2238003 () Bool)

(declare-fun res!2925973 () Bool)

(declare-fun e!4314711 () Bool)

(assert (=> d!2238003 (=> res!2925973 e!4314711)))

(assert (=> d!2238003 (= res!2925973 ((_ is Nil!69655) (t!383800 lt!2570814)))))

(assert (=> d!2238003 (= (noDuplicate!2887 (t!383800 lt!2570814)) e!4314711)))

(declare-fun b!7184572 () Bool)

(declare-fun e!4314712 () Bool)

(assert (=> b!7184572 (= e!4314711 e!4314712)))

(declare-fun res!2925974 () Bool)

(assert (=> b!7184572 (=> (not res!2925974) (not e!4314712))))

(assert (=> b!7184572 (= res!2925974 (not (contains!20718 (t!383800 (t!383800 lt!2570814)) (h!76103 (t!383800 lt!2570814)))))))

(declare-fun b!7184573 () Bool)

(assert (=> b!7184573 (= e!4314712 (noDuplicate!2887 (t!383800 (t!383800 lt!2570814))))))

(assert (= (and d!2238003 (not res!2925973)) b!7184572))

(assert (= (and b!7184572 res!2925974) b!7184573))

(declare-fun m!7881824 () Bool)

(assert (=> b!7184572 m!7881824))

(declare-fun m!7881826 () Bool)

(assert (=> b!7184573 m!7881826))

(assert (=> b!7183618 d!2238003))

(declare-fun d!2238005 () Bool)

(assert (=> d!2238005 (= (nullable!7776 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (nullableFct!3042 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))

(declare-fun bs!1897495 () Bool)

(assert (= bs!1897495 d!2238005))

(declare-fun m!7881828 () Bool)

(assert (=> bs!1897495 m!7881828))

(assert (=> b!7183667 d!2238005))

(declare-fun b!7184574 () Bool)

(declare-fun e!4314716 () (InoxSet Context!14602))

(declare-fun e!4314715 () (InoxSet Context!14602))

(assert (=> b!7184574 (= e!4314716 e!4314715)))

(declare-fun c!1337669 () Bool)

(assert (=> b!7184574 (= c!1337669 ((_ is Concat!27194) (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))))

(declare-fun bm!654963 () Bool)

(declare-fun call!654971 () List!69777)

(declare-fun c!1337670 () Bool)

(assert (=> bm!654963 (= call!654971 ($colon$colon!2843 (exprs!7801 (ite (or c!1337458 c!1337460) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654786))) (ite (or c!1337670 c!1337669) (regTwo!37210 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))))

(declare-fun b!7184575 () Bool)

(declare-fun e!4314718 () (InoxSet Context!14602))

(assert (=> b!7184575 (= e!4314718 ((as const (Array Context!14602 Bool)) false))))

(declare-fun b!7184576 () Bool)

(declare-fun e!4314717 () (InoxSet Context!14602))

(declare-fun call!654968 () (InoxSet Context!14602))

(declare-fun call!654970 () (InoxSet Context!14602))

(assert (=> b!7184576 (= e!4314717 ((_ map or) call!654968 call!654970))))

(declare-fun c!1337668 () Bool)

(declare-fun bm!654964 () Bool)

(assert (=> bm!654964 (= call!654968 (derivationStepZipperDown!2512 (ite c!1337668 (regOne!37211 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) (regOne!37210 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))) (ite c!1337668 (ite (or c!1337458 c!1337460) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654786)) (Context!14603 call!654971)) lt!2570781))))

(declare-fun b!7184577 () Bool)

(declare-fun e!4314714 () Bool)

(assert (=> b!7184577 (= e!4314714 (nullable!7776 (regOne!37210 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))))

(declare-fun bm!654965 () Bool)

(declare-fun call!654972 () List!69777)

(assert (=> bm!654965 (= call!654972 call!654971)))

(declare-fun b!7184578 () Bool)

(declare-fun e!4314713 () (InoxSet Context!14602))

(assert (=> b!7184578 (= e!4314713 e!4314717)))

(assert (=> b!7184578 (= c!1337668 ((_ is Union!18349) (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))))

(declare-fun c!1337667 () Bool)

(declare-fun d!2238007 () Bool)

(assert (=> d!2238007 (= c!1337667 (and ((_ is ElementMatch!18349) (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) (= (c!1337348 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) lt!2570781)))))

(assert (=> d!2238007 (= (derivationStepZipperDown!2512 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))) (ite (or c!1337458 c!1337460) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654786)) lt!2570781) e!4314713)))

(declare-fun b!7184579 () Bool)

(declare-fun call!654969 () (InoxSet Context!14602))

(assert (=> b!7184579 (= e!4314716 ((_ map or) call!654968 call!654969))))

(declare-fun bm!654966 () Bool)

(declare-fun call!654973 () (InoxSet Context!14602))

(assert (=> bm!654966 (= call!654973 call!654969)))

(declare-fun b!7184580 () Bool)

(assert (=> b!7184580 (= e!4314715 call!654973)))

(declare-fun bm!654967 () Bool)

(assert (=> bm!654967 (= call!654969 call!654970)))

(declare-fun c!1337671 () Bool)

(declare-fun b!7184581 () Bool)

(assert (=> b!7184581 (= c!1337671 ((_ is Star!18349) (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))))

(assert (=> b!7184581 (= e!4314715 e!4314718)))

(declare-fun b!7184582 () Bool)

(assert (=> b!7184582 (= e!4314713 (store ((as const (Array Context!14602 Bool)) false) (ite (or c!1337458 c!1337460) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654786)) true))))

(declare-fun b!7184583 () Bool)

(assert (=> b!7184583 (= e!4314718 call!654973)))

(declare-fun bm!654968 () Bool)

(assert (=> bm!654968 (= call!654970 (derivationStepZipperDown!2512 (ite c!1337668 (regTwo!37211 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) (ite c!1337670 (regTwo!37210 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) (ite c!1337669 (regOne!37210 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))) (reg!18678 (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780))))))))))))) (ite (or c!1337668 c!1337670) (ite (or c!1337458 c!1337460) (Context!14603 (t!383798 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (Context!14603 call!654786)) (Context!14603 call!654972)) lt!2570781))))

(declare-fun b!7184584 () Bool)

(assert (=> b!7184584 (= c!1337670 e!4314714)))

(declare-fun res!2925975 () Bool)

(assert (=> b!7184584 (=> (not res!2925975) (not e!4314714))))

(assert (=> b!7184584 (= res!2925975 ((_ is Concat!27194) (ite c!1337458 (regTwo!37211 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337460 (regTwo!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (ite c!1337459 (regOne!37210 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))) (reg!18678 (h!76101 (exprs!7801 (Context!14603 (t!383798 (exprs!7801 lt!2570780)))))))))))))

(assert (=> b!7184584 (= e!4314717 e!4314716)))

(assert (= (and d!2238007 c!1337667) b!7184582))

(assert (= (and d!2238007 (not c!1337667)) b!7184578))

(assert (= (and b!7184578 c!1337668) b!7184576))

(assert (= (and b!7184578 (not c!1337668)) b!7184584))

(assert (= (and b!7184584 res!2925975) b!7184577))

(assert (= (and b!7184584 c!1337670) b!7184579))

(assert (= (and b!7184584 (not c!1337670)) b!7184574))

(assert (= (and b!7184574 c!1337669) b!7184580))

(assert (= (and b!7184574 (not c!1337669)) b!7184581))

(assert (= (and b!7184581 c!1337671) b!7184583))

(assert (= (and b!7184581 (not c!1337671)) b!7184575))

(assert (= (or b!7184580 b!7184583) bm!654965))

(assert (= (or b!7184580 b!7184583) bm!654966))

(assert (= (or b!7184579 bm!654966) bm!654967))

(assert (= (or b!7184579 bm!654965) bm!654963))

(assert (= (or b!7184576 bm!654967) bm!654968))

(assert (= (or b!7184576 b!7184579) bm!654964))

(declare-fun m!7881830 () Bool)

(assert (=> bm!654964 m!7881830))

(declare-fun m!7881832 () Bool)

(assert (=> b!7184582 m!7881832))

(declare-fun m!7881834 () Bool)

(assert (=> b!7184577 m!7881834))

(declare-fun m!7881836 () Bool)

(assert (=> bm!654968 m!7881836))

(declare-fun m!7881838 () Bool)

(assert (=> bm!654963 m!7881838))

(assert (=> bm!654782 d!2238007))

(declare-fun d!2238009 () Bool)

(assert (=> d!2238009 (= (isEmpty!40211 (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))) ((_ is Nil!69653) (t!383798 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(assert (=> b!7183643 d!2238009))

(declare-fun d!2238011 () Bool)

(declare-fun lt!2570862 () Bool)

(assert (=> d!2238011 (= lt!2570862 (select (content!14316 (t!383800 (t!383800 lt!2570808))) (h!76103 lt!2570808)))))

(declare-fun e!4314719 () Bool)

(assert (=> d!2238011 (= lt!2570862 e!4314719)))

(declare-fun res!2925976 () Bool)

(assert (=> d!2238011 (=> (not res!2925976) (not e!4314719))))

(assert (=> d!2238011 (= res!2925976 ((_ is Cons!69655) (t!383800 (t!383800 lt!2570808))))))

(assert (=> d!2238011 (= (contains!20718 (t!383800 (t!383800 lt!2570808)) (h!76103 lt!2570808)) lt!2570862)))

(declare-fun b!7184585 () Bool)

(declare-fun e!4314720 () Bool)

(assert (=> b!7184585 (= e!4314719 e!4314720)))

(declare-fun res!2925977 () Bool)

(assert (=> b!7184585 (=> res!2925977 e!4314720)))

(assert (=> b!7184585 (= res!2925977 (= (h!76103 (t!383800 (t!383800 lt!2570808))) (h!76103 lt!2570808)))))

(declare-fun b!7184586 () Bool)

(assert (=> b!7184586 (= e!4314720 (contains!20718 (t!383800 (t!383800 (t!383800 lt!2570808))) (h!76103 lt!2570808)))))

(assert (= (and d!2238011 res!2925976) b!7184585))

(assert (= (and b!7184585 (not res!2925977)) b!7184586))

(assert (=> d!2238011 m!7880930))

(declare-fun m!7881840 () Bool)

(assert (=> d!2238011 m!7881840))

(declare-fun m!7881842 () Bool)

(assert (=> b!7184586 m!7881842))

(assert (=> b!7183845 d!2238011))

(declare-fun bs!1897496 () Bool)

(declare-fun d!2238013 () Bool)

(assert (= bs!1897496 (and d!2238013 d!2237781)))

(declare-fun lambda!437604 () Int)

(assert (=> bs!1897496 (= lambda!437604 lambda!437592)))

(declare-fun bs!1897497 () Bool)

(assert (= bs!1897497 (and d!2238013 d!2237791)))

(assert (=> bs!1897497 (= lambda!437604 lambda!437594)))

(declare-fun bs!1897498 () Bool)

(assert (= bs!1897498 (and d!2238013 d!2237569)))

(assert (=> bs!1897498 (= lambda!437604 lambda!437569)))

(declare-fun bs!1897499 () Bool)

(assert (= bs!1897499 (and d!2238013 d!2237379)))

(assert (=> bs!1897499 (= lambda!437604 lambda!437531)))

(declare-fun bs!1897500 () Bool)

(assert (= bs!1897500 (and d!2238013 d!2237593)))

(assert (=> bs!1897500 (= lambda!437604 lambda!437575)))

(declare-fun bs!1897501 () Bool)

(assert (= bs!1897501 (and d!2238013 d!2237811)))

(assert (=> bs!1897501 (= lambda!437604 lambda!437595)))

(declare-fun bs!1897502 () Bool)

(assert (= bs!1897502 (and d!2238013 d!2237911)))

(assert (=> bs!1897502 (= lambda!437604 lambda!437597)))

(declare-fun bs!1897503 () Bool)

(assert (= bs!1897503 (and d!2238013 d!2237533)))

(assert (=> bs!1897503 (= lambda!437604 lambda!437566)))

(declare-fun bs!1897504 () Bool)

(assert (= bs!1897504 (and d!2238013 d!2237971)))

(assert (=> bs!1897504 (= lambda!437604 lambda!437601)))

(declare-fun bs!1897505 () Bool)

(assert (= bs!1897505 (and d!2238013 d!2237985)))

(assert (=> bs!1897505 (= lambda!437604 lambda!437602)))

(declare-fun bs!1897506 () Bool)

(assert (= bs!1897506 (and d!2238013 d!2237597)))

(assert (=> bs!1897506 (= lambda!437604 lambda!437576)))

(declare-fun bs!1897507 () Bool)

(assert (= bs!1897507 (and d!2238013 d!2237591)))

(assert (=> bs!1897507 (= lambda!437604 lambda!437574)))

(declare-fun bs!1897508 () Bool)

(assert (= bs!1897508 (and d!2238013 d!2237403)))

(assert (=> bs!1897508 (not (= lambda!437604 lambda!437536))))

(declare-fun bs!1897509 () Bool)

(assert (= bs!1897509 (and d!2238013 d!2237509)))

(assert (=> bs!1897509 (= lambda!437604 lambda!437565)))

(declare-fun bs!1897510 () Bool)

(assert (= bs!1897510 (and d!2238013 d!2237555)))

(assert (=> bs!1897510 (= lambda!437604 lambda!437568)))

(declare-fun bs!1897511 () Bool)

(assert (= bs!1897511 (and d!2238013 d!2237867)))

(assert (=> bs!1897511 (= lambda!437604 lambda!437596)))

(declare-fun bs!1897512 () Bool)

(assert (= bs!1897512 (and d!2238013 d!2237923)))

(assert (=> bs!1897512 (= lambda!437604 lambda!437599)))

(declare-fun bs!1897513 () Bool)

(assert (= bs!1897513 (and d!2238013 d!2237913)))

(assert (=> bs!1897513 (= lambda!437604 lambda!437598)))

(declare-fun bs!1897514 () Bool)

(assert (= bs!1897514 (and d!2238013 d!2237637)))

(assert (=> bs!1897514 (= lambda!437604 lambda!437581)))

(declare-fun bs!1897515 () Bool)

(assert (= bs!1897515 (and d!2238013 d!2237785)))

(assert (=> bs!1897515 (= lambda!437604 lambda!437593)))

(declare-fun bs!1897516 () Bool)

(assert (= bs!1897516 (and d!2238013 d!2237493)))

(assert (=> bs!1897516 (= lambda!437604 lambda!437561)))

(declare-fun bs!1897517 () Bool)

(assert (= bs!1897517 (and d!2238013 d!2237477)))

(assert (=> bs!1897517 (= lambda!437604 lambda!437546)))

(declare-fun bs!1897518 () Bool)

(assert (= bs!1897518 (and d!2238013 d!2237577)))

(assert (=> bs!1897518 (= lambda!437604 lambda!437570)))

(declare-fun bs!1897519 () Bool)

(assert (= bs!1897519 (and d!2238013 d!2237605)))

(assert (=> bs!1897519 (= lambda!437604 lambda!437578)))

(declare-fun bs!1897520 () Bool)

(assert (= bs!1897520 (and d!2238013 d!2237987)))

(assert (=> bs!1897520 (= lambda!437604 lambda!437603)))

(declare-fun bs!1897521 () Bool)

(assert (= bs!1897521 (and d!2238013 d!2237395)))

(assert (=> bs!1897521 (= lambda!437604 lambda!437532)))

(declare-fun bs!1897522 () Bool)

(assert (= bs!1897522 (and d!2238013 d!2237551)))

(assert (=> bs!1897522 (= lambda!437604 lambda!437567)))

(declare-fun b!7184587 () Bool)

(declare-fun e!4314723 () Bool)

(declare-fun lt!2570863 () Regex!18349)

(assert (=> b!7184587 (= e!4314723 (isConcat!1615 lt!2570863))))

(declare-fun e!4314726 () Bool)

(assert (=> d!2238013 e!4314726))

(declare-fun res!2925979 () Bool)

(assert (=> d!2238013 (=> (not res!2925979) (not e!4314726))))

(assert (=> d!2238013 (= res!2925979 (validRegex!9468 lt!2570863))))

(declare-fun e!4314725 () Regex!18349)

(assert (=> d!2238013 (= lt!2570863 e!4314725)))

(declare-fun c!1337675 () Bool)

(declare-fun e!4314721 () Bool)

(assert (=> d!2238013 (= c!1337675 e!4314721)))

(declare-fun res!2925978 () Bool)

(assert (=> d!2238013 (=> (not res!2925978) (not e!4314721))))

(assert (=> d!2238013 (= res!2925978 ((_ is Cons!69653) (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530))))))))

(assert (=> d!2238013 (forall!17177 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530)))) lambda!437604)))

(assert (=> d!2238013 (= (generalisedConcat!2461 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530))))) lt!2570863)))

(declare-fun b!7184588 () Bool)

(assert (=> b!7184588 (= e!4314723 (= lt!2570863 (head!14664 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530)))))))))

(declare-fun b!7184589 () Bool)

(declare-fun e!4314724 () Regex!18349)

(assert (=> b!7184589 (= e!4314724 EmptyExpr!18349)))

(declare-fun b!7184590 () Bool)

(assert (=> b!7184590 (= e!4314721 (isEmpty!40211 (t!383798 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530)))))))))

(declare-fun b!7184591 () Bool)

(assert (=> b!7184591 (= e!4314724 (Concat!27194 (h!76101 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530))))) (generalisedConcat!2461 (t!383798 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530))))))))))

(declare-fun b!7184592 () Bool)

(declare-fun e!4314722 () Bool)

(assert (=> b!7184592 (= e!4314726 e!4314722)))

(declare-fun c!1337672 () Bool)

(assert (=> b!7184592 (= c!1337672 (isEmpty!40211 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530))))))))

(declare-fun b!7184593 () Bool)

(assert (=> b!7184593 (= e!4314725 (h!76101 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530))))))))

(declare-fun b!7184594 () Bool)

(assert (=> b!7184594 (= e!4314722 e!4314723)))

(declare-fun c!1337674 () Bool)

(assert (=> b!7184594 (= c!1337674 (isEmpty!40211 (tail!14069 (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530)))))))))

(declare-fun b!7184595 () Bool)

(assert (=> b!7184595 (= e!4314725 e!4314724)))

(declare-fun c!1337673 () Bool)

(assert (=> b!7184595 (= c!1337673 ((_ is Cons!69653) (exprs!7801 (h!76103 (t!383800 (toList!11292 z!3530))))))))

(declare-fun b!7184596 () Bool)

(assert (=> b!7184596 (= e!4314722 (isEmptyExpr!2093 lt!2570863))))

(assert (= (and d!2238013 res!2925978) b!7184590))

(assert (= (and d!2238013 c!1337675) b!7184593))

(assert (= (and d!2238013 (not c!1337675)) b!7184595))

(assert (= (and b!7184595 c!1337673) b!7184591))

(assert (= (and b!7184595 (not c!1337673)) b!7184589))

(assert (= (and d!2238013 res!2925979) b!7184592))

(assert (= (and b!7184592 c!1337672) b!7184596))

(assert (= (and b!7184592 (not c!1337672)) b!7184594))

(assert (= (and b!7184594 c!1337674) b!7184588))

(assert (= (and b!7184594 (not c!1337674)) b!7184587))

(declare-fun m!7881844 () Bool)

(assert (=> b!7184591 m!7881844))

(declare-fun m!7881846 () Bool)

(assert (=> b!7184587 m!7881846))

(declare-fun m!7881848 () Bool)

(assert (=> b!7184596 m!7881848))

(declare-fun m!7881850 () Bool)

(assert (=> b!7184588 m!7881850))

(declare-fun m!7881852 () Bool)

(assert (=> b!7184590 m!7881852))

(declare-fun m!7881854 () Bool)

(assert (=> d!2238013 m!7881854))

(declare-fun m!7881856 () Bool)

(assert (=> d!2238013 m!7881856))

(declare-fun m!7881858 () Bool)

(assert (=> b!7184592 m!7881858))

(declare-fun m!7881860 () Bool)

(assert (=> b!7184594 m!7881860))

(assert (=> b!7184594 m!7881860))

(declare-fun m!7881862 () Bool)

(assert (=> b!7184594 m!7881862))

(assert (=> b!7183735 d!2238013))

(declare-fun bs!1897523 () Bool)

(declare-fun d!2238015 () Bool)

(assert (= bs!1897523 (and d!2238015 d!2237781)))

(declare-fun lambda!437605 () Int)

(assert (=> bs!1897523 (= lambda!437605 lambda!437592)))

(declare-fun bs!1897524 () Bool)

(assert (= bs!1897524 (and d!2238015 d!2237791)))

(assert (=> bs!1897524 (= lambda!437605 lambda!437594)))

(declare-fun bs!1897525 () Bool)

(assert (= bs!1897525 (and d!2238015 d!2237569)))

(assert (=> bs!1897525 (= lambda!437605 lambda!437569)))

(declare-fun bs!1897526 () Bool)

(assert (= bs!1897526 (and d!2238015 d!2237379)))

(assert (=> bs!1897526 (= lambda!437605 lambda!437531)))

(declare-fun bs!1897527 () Bool)

(assert (= bs!1897527 (and d!2238015 d!2237593)))

(assert (=> bs!1897527 (= lambda!437605 lambda!437575)))

(declare-fun bs!1897528 () Bool)

(assert (= bs!1897528 (and d!2238015 d!2237811)))

(assert (=> bs!1897528 (= lambda!437605 lambda!437595)))

(declare-fun bs!1897529 () Bool)

(assert (= bs!1897529 (and d!2238015 d!2237911)))

(assert (=> bs!1897529 (= lambda!437605 lambda!437597)))

(declare-fun bs!1897530 () Bool)

(assert (= bs!1897530 (and d!2238015 d!2237533)))

(assert (=> bs!1897530 (= lambda!437605 lambda!437566)))

(declare-fun bs!1897531 () Bool)

(assert (= bs!1897531 (and d!2238015 d!2238013)))

(assert (=> bs!1897531 (= lambda!437605 lambda!437604)))

(declare-fun bs!1897532 () Bool)

(assert (= bs!1897532 (and d!2238015 d!2237971)))

(assert (=> bs!1897532 (= lambda!437605 lambda!437601)))

(declare-fun bs!1897533 () Bool)

(assert (= bs!1897533 (and d!2238015 d!2237985)))

(assert (=> bs!1897533 (= lambda!437605 lambda!437602)))

(declare-fun bs!1897534 () Bool)

(assert (= bs!1897534 (and d!2238015 d!2237597)))

(assert (=> bs!1897534 (= lambda!437605 lambda!437576)))

(declare-fun bs!1897535 () Bool)

(assert (= bs!1897535 (and d!2238015 d!2237591)))

(assert (=> bs!1897535 (= lambda!437605 lambda!437574)))

(declare-fun bs!1897536 () Bool)

(assert (= bs!1897536 (and d!2238015 d!2237403)))

(assert (=> bs!1897536 (not (= lambda!437605 lambda!437536))))

(declare-fun bs!1897537 () Bool)

(assert (= bs!1897537 (and d!2238015 d!2237509)))

(assert (=> bs!1897537 (= lambda!437605 lambda!437565)))

(declare-fun bs!1897538 () Bool)

(assert (= bs!1897538 (and d!2238015 d!2237555)))

(assert (=> bs!1897538 (= lambda!437605 lambda!437568)))

(declare-fun bs!1897539 () Bool)

(assert (= bs!1897539 (and d!2238015 d!2237867)))

(assert (=> bs!1897539 (= lambda!437605 lambda!437596)))

(declare-fun bs!1897540 () Bool)

(assert (= bs!1897540 (and d!2238015 d!2237923)))

(assert (=> bs!1897540 (= lambda!437605 lambda!437599)))

(declare-fun bs!1897541 () Bool)

(assert (= bs!1897541 (and d!2238015 d!2237913)))

(assert (=> bs!1897541 (= lambda!437605 lambda!437598)))

(declare-fun bs!1897542 () Bool)

(assert (= bs!1897542 (and d!2238015 d!2237637)))

(assert (=> bs!1897542 (= lambda!437605 lambda!437581)))

(declare-fun bs!1897543 () Bool)

(assert (= bs!1897543 (and d!2238015 d!2237785)))

(assert (=> bs!1897543 (= lambda!437605 lambda!437593)))

(declare-fun bs!1897544 () Bool)

(assert (= bs!1897544 (and d!2238015 d!2237493)))

(assert (=> bs!1897544 (= lambda!437605 lambda!437561)))

(declare-fun bs!1897545 () Bool)

(assert (= bs!1897545 (and d!2238015 d!2237477)))

(assert (=> bs!1897545 (= lambda!437605 lambda!437546)))

(declare-fun bs!1897546 () Bool)

(assert (= bs!1897546 (and d!2238015 d!2237577)))

(assert (=> bs!1897546 (= lambda!437605 lambda!437570)))

(declare-fun bs!1897547 () Bool)

(assert (= bs!1897547 (and d!2238015 d!2237605)))

(assert (=> bs!1897547 (= lambda!437605 lambda!437578)))

(declare-fun bs!1897548 () Bool)

(assert (= bs!1897548 (and d!2238015 d!2237987)))

(assert (=> bs!1897548 (= lambda!437605 lambda!437603)))

(declare-fun bs!1897549 () Bool)

(assert (= bs!1897549 (and d!2238015 d!2237395)))

(assert (=> bs!1897549 (= lambda!437605 lambda!437532)))

(declare-fun bs!1897550 () Bool)

(assert (= bs!1897550 (and d!2238015 d!2237551)))

(assert (=> bs!1897550 (= lambda!437605 lambda!437567)))

(declare-fun lt!2570864 () List!69777)

(assert (=> d!2238015 (forall!17177 lt!2570864 lambda!437605)))

(declare-fun e!4314727 () List!69777)

(assert (=> d!2238015 (= lt!2570864 e!4314727)))

(declare-fun c!1337676 () Bool)

(assert (=> d!2238015 (= c!1337676 ((_ is Cons!69655) (t!383800 (t!383800 (toList!11292 z!3530)))))))

(assert (=> d!2238015 (= (unfocusZipperList!2327 (t!383800 (t!383800 (toList!11292 z!3530)))) lt!2570864)))

(declare-fun b!7184597 () Bool)

(assert (=> b!7184597 (= e!4314727 (Cons!69653 (generalisedConcat!2461 (exprs!7801 (h!76103 (t!383800 (t!383800 (toList!11292 z!3530)))))) (unfocusZipperList!2327 (t!383800 (t!383800 (t!383800 (toList!11292 z!3530)))))))))

(declare-fun b!7184598 () Bool)

(assert (=> b!7184598 (= e!4314727 Nil!69653)))

(assert (= (and d!2238015 c!1337676) b!7184597))

(assert (= (and d!2238015 (not c!1337676)) b!7184598))

(declare-fun m!7881864 () Bool)

(assert (=> d!2238015 m!7881864))

(declare-fun m!7881866 () Bool)

(assert (=> b!7184597 m!7881866))

(declare-fun m!7881868 () Bool)

(assert (=> b!7184597 m!7881868))

(assert (=> b!7183735 d!2238015))

(declare-fun b!7184599 () Bool)

(declare-fun e!4314730 () (InoxSet Context!14602))

(declare-fun e!4314728 () (InoxSet Context!14602))

(assert (=> b!7184599 (= e!4314730 e!4314728)))

(declare-fun c!1337678 () Bool)

(assert (=> b!7184599 (= c!1337678 ((_ is Cons!69653) (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(declare-fun b!7184600 () Bool)

(declare-fun call!654974 () (InoxSet Context!14602))

(assert (=> b!7184600 (= e!4314730 ((_ map or) call!654974 (derivationStepZipperUp!2325 (Context!14603 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))) lt!2570781)))))

(declare-fun b!7184601 () Bool)

(assert (=> b!7184601 (= e!4314728 call!654974)))

(declare-fun d!2238017 () Bool)

(declare-fun c!1337677 () Bool)

(declare-fun e!4314729 () Bool)

(assert (=> d!2238017 (= c!1337677 e!4314729)))

(declare-fun res!2925980 () Bool)

(assert (=> d!2238017 (=> (not res!2925980) (not e!4314729))))

(assert (=> d!2238017 (= res!2925980 ((_ is Cons!69653) (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(assert (=> d!2238017 (= (derivationStepZipperUp!2325 (h!76103 (toList!11292 z!3530)) lt!2570781) e!4314730)))

(declare-fun b!7184602 () Bool)

(assert (=> b!7184602 (= e!4314729 (nullable!7776 (h!76101 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun b!7184603 () Bool)

(assert (=> b!7184603 (= e!4314728 ((as const (Array Context!14602 Bool)) false))))

(declare-fun bm!654969 () Bool)

(assert (=> bm!654969 (= call!654974 (derivationStepZipperDown!2512 (h!76101 (exprs!7801 (h!76103 (toList!11292 z!3530)))) (Context!14603 (t!383798 (exprs!7801 (h!76103 (toList!11292 z!3530))))) lt!2570781))))

(assert (= (and d!2238017 res!2925980) b!7184602))

(assert (= (and d!2238017 c!1337677) b!7184600))

(assert (= (and d!2238017 (not c!1337677)) b!7184599))

(assert (= (and b!7184599 c!1337678) b!7184601))

(assert (= (and b!7184599 (not c!1337678)) b!7184603))

(assert (= (or b!7184600 b!7184601) bm!654969))

(declare-fun m!7881870 () Bool)

(assert (=> b!7184600 m!7881870))

(declare-fun m!7881872 () Bool)

(assert (=> b!7184602 m!7881872))

(declare-fun m!7881874 () Bool)

(assert (=> bm!654969 m!7881874))

(assert (=> bs!1897238 d!2238017))

(declare-fun d!2238019 () Bool)

(assert (=> d!2238019 (= (isEmpty!40211 (exprs!7801 (h!76103 (toList!11292 z!3530)))) ((_ is Nil!69653) (exprs!7801 (h!76103 (toList!11292 z!3530)))))))

(assert (=> b!7183730 d!2238019))

(declare-fun d!2238021 () Bool)

(assert (=> d!2238021 (= (nullable!7776 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))) (nullableFct!3042 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))))

(declare-fun bs!1897551 () Bool)

(assert (= bs!1897551 d!2238021))

(declare-fun m!7881876 () Bool)

(assert (=> bs!1897551 m!7881876))

(assert (=> b!7183810 d!2238021))

(declare-fun b!7184604 () Bool)

(declare-fun e!4314731 () Bool)

(assert (=> b!7184604 (= e!4314731 tp_is_empty!46259)))

(declare-fun b!7184605 () Bool)

(declare-fun tp!1994564 () Bool)

(declare-fun tp!1994561 () Bool)

(assert (=> b!7184605 (= e!4314731 (and tp!1994564 tp!1994561))))

(assert (=> b!7183911 (= tp!1994397 e!4314731)))

(declare-fun b!7184607 () Bool)

(declare-fun tp!1994563 () Bool)

(declare-fun tp!1994562 () Bool)

(assert (=> b!7184607 (= e!4314731 (and tp!1994563 tp!1994562))))

(declare-fun b!7184606 () Bool)

(declare-fun tp!1994560 () Bool)

(assert (=> b!7184606 (= e!4314731 tp!1994560)))

(assert (= (and b!7183911 ((_ is ElementMatch!18349) (regOne!37211 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184604))

(assert (= (and b!7183911 ((_ is Concat!27194) (regOne!37211 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184605))

(assert (= (and b!7183911 ((_ is Star!18349) (regOne!37211 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184606))

(assert (= (and b!7183911 ((_ is Union!18349) (regOne!37211 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184607))

(declare-fun b!7184608 () Bool)

(declare-fun e!4314732 () Bool)

(assert (=> b!7184608 (= e!4314732 tp_is_empty!46259)))

(declare-fun b!7184609 () Bool)

(declare-fun tp!1994569 () Bool)

(declare-fun tp!1994566 () Bool)

(assert (=> b!7184609 (= e!4314732 (and tp!1994569 tp!1994566))))

(assert (=> b!7183911 (= tp!1994396 e!4314732)))

(declare-fun b!7184611 () Bool)

(declare-fun tp!1994568 () Bool)

(declare-fun tp!1994567 () Bool)

(assert (=> b!7184611 (= e!4314732 (and tp!1994568 tp!1994567))))

(declare-fun b!7184610 () Bool)

(declare-fun tp!1994565 () Bool)

(assert (=> b!7184610 (= e!4314732 tp!1994565)))

(assert (= (and b!7183911 ((_ is ElementMatch!18349) (regTwo!37211 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184608))

(assert (= (and b!7183911 ((_ is Concat!27194) (regTwo!37211 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184609))

(assert (= (and b!7183911 ((_ is Star!18349) (regTwo!37211 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184610))

(assert (= (and b!7183911 ((_ is Union!18349) (regTwo!37211 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184611))

(declare-fun b!7184613 () Bool)

(declare-fun e!4314734 () Bool)

(declare-fun tp!1994570 () Bool)

(assert (=> b!7184613 (= e!4314734 tp!1994570)))

(declare-fun b!7184612 () Bool)

(declare-fun e!4314733 () Bool)

(declare-fun tp!1994571 () Bool)

(assert (=> b!7184612 (= e!4314733 (and (inv!88894 (h!76103 (t!383800 res!2925597))) e!4314734 tp!1994571))))

(assert (=> b!7183619 (= tp!1994366 e!4314733)))

(assert (= b!7184612 b!7184613))

(assert (= (and b!7183619 ((_ is Cons!69655) (t!383800 res!2925597))) b!7184612))

(declare-fun m!7881878 () Bool)

(assert (=> b!7184612 m!7881878))

(declare-fun condSetEmpty!53152 () Bool)

(assert (=> setNonEmpty!53148 (= condSetEmpty!53152 (= setRest!53148 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun setRes!53152 () Bool)

(assert (=> setNonEmpty!53148 (= tp!1994432 setRes!53152)))

(declare-fun setIsEmpty!53152 () Bool)

(assert (=> setIsEmpty!53152 setRes!53152))

(declare-fun setNonEmpty!53152 () Bool)

(declare-fun tp!1994573 () Bool)

(declare-fun setElem!53152 () Context!14602)

(declare-fun e!4314735 () Bool)

(assert (=> setNonEmpty!53152 (= setRes!53152 (and tp!1994573 (inv!88894 setElem!53152) e!4314735))))

(declare-fun setRest!53152 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53152 (= setRest!53148 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53152 true) setRest!53152))))

(declare-fun b!7184614 () Bool)

(declare-fun tp!1994572 () Bool)

(assert (=> b!7184614 (= e!4314735 tp!1994572)))

(assert (= (and setNonEmpty!53148 condSetEmpty!53152) setIsEmpty!53152))

(assert (= (and setNonEmpty!53148 (not condSetEmpty!53152)) setNonEmpty!53152))

(assert (= setNonEmpty!53152 b!7184614))

(declare-fun m!7881880 () Bool)

(assert (=> setNonEmpty!53152 m!7881880))

(declare-fun condSetEmpty!53153 () Bool)

(assert (=> setNonEmpty!53147 (= condSetEmpty!53153 (= setRest!53147 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun setRes!53153 () Bool)

(assert (=> setNonEmpty!53147 (= tp!1994388 setRes!53153)))

(declare-fun setIsEmpty!53153 () Bool)

(assert (=> setIsEmpty!53153 setRes!53153))

(declare-fun setNonEmpty!53153 () Bool)

(declare-fun setElem!53153 () Context!14602)

(declare-fun tp!1994575 () Bool)

(declare-fun e!4314736 () Bool)

(assert (=> setNonEmpty!53153 (= setRes!53153 (and tp!1994575 (inv!88894 setElem!53153) e!4314736))))

(declare-fun setRest!53153 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53153 (= setRest!53147 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53153 true) setRest!53153))))

(declare-fun b!7184615 () Bool)

(declare-fun tp!1994574 () Bool)

(assert (=> b!7184615 (= e!4314736 tp!1994574)))

(assert (= (and setNonEmpty!53147 condSetEmpty!53153) setIsEmpty!53153))

(assert (= (and setNonEmpty!53147 (not condSetEmpty!53153)) setNonEmpty!53153))

(assert (= setNonEmpty!53153 b!7184615))

(declare-fun m!7881882 () Bool)

(assert (=> setNonEmpty!53153 m!7881882))

(declare-fun b!7184616 () Bool)

(declare-fun e!4314737 () Bool)

(assert (=> b!7184616 (= e!4314737 tp_is_empty!46259)))

(declare-fun b!7184617 () Bool)

(declare-fun tp!1994580 () Bool)

(declare-fun tp!1994577 () Bool)

(assert (=> b!7184617 (= e!4314737 (and tp!1994580 tp!1994577))))

(assert (=> b!7183909 (= tp!1994398 e!4314737)))

(declare-fun b!7184619 () Bool)

(declare-fun tp!1994579 () Bool)

(declare-fun tp!1994578 () Bool)

(assert (=> b!7184619 (= e!4314737 (and tp!1994579 tp!1994578))))

(declare-fun b!7184618 () Bool)

(declare-fun tp!1994576 () Bool)

(assert (=> b!7184618 (= e!4314737 tp!1994576)))

(assert (= (and b!7183909 ((_ is ElementMatch!18349) (regOne!37210 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184616))

(assert (= (and b!7183909 ((_ is Concat!27194) (regOne!37210 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184617))

(assert (= (and b!7183909 ((_ is Star!18349) (regOne!37210 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184618))

(assert (= (and b!7183909 ((_ is Union!18349) (regOne!37210 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184619))

(declare-fun b!7184620 () Bool)

(declare-fun e!4314738 () Bool)

(assert (=> b!7184620 (= e!4314738 tp_is_empty!46259)))

(declare-fun b!7184621 () Bool)

(declare-fun tp!1994585 () Bool)

(declare-fun tp!1994582 () Bool)

(assert (=> b!7184621 (= e!4314738 (and tp!1994585 tp!1994582))))

(assert (=> b!7183909 (= tp!1994395 e!4314738)))

(declare-fun b!7184623 () Bool)

(declare-fun tp!1994584 () Bool)

(declare-fun tp!1994583 () Bool)

(assert (=> b!7184623 (= e!4314738 (and tp!1994584 tp!1994583))))

(declare-fun b!7184622 () Bool)

(declare-fun tp!1994581 () Bool)

(assert (=> b!7184622 (= e!4314738 tp!1994581)))

(assert (= (and b!7183909 ((_ is ElementMatch!18349) (regTwo!37210 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184620))

(assert (= (and b!7183909 ((_ is Concat!27194) (regTwo!37210 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184621))

(assert (= (and b!7183909 ((_ is Star!18349) (regTwo!37210 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184622))

(assert (= (and b!7183909 ((_ is Union!18349) (regTwo!37210 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184623))

(declare-fun b!7184625 () Bool)

(declare-fun e!4314740 () Bool)

(declare-fun tp!1994586 () Bool)

(assert (=> b!7184625 (= e!4314740 tp!1994586)))

(declare-fun b!7184624 () Bool)

(declare-fun e!4314739 () Bool)

(declare-fun tp!1994587 () Bool)

(assert (=> b!7184624 (= e!4314739 (and (inv!88894 (h!76103 (t!383800 (t!383800 res!2925525)))) e!4314740 tp!1994587))))

(assert (=> b!7183917 (= tp!1994407 e!4314739)))

(assert (= b!7184624 b!7184625))

(assert (= (and b!7183917 ((_ is Cons!69655) (t!383800 (t!383800 res!2925525)))) b!7184624))

(declare-fun m!7881884 () Bool)

(assert (=> b!7184624 m!7881884))

(declare-fun condSetEmpty!53154 () Bool)

(assert (=> setNonEmpty!53146 (= condSetEmpty!53154 (= setRest!53146 ((as const (Array Context!14602 Bool)) false)))))

(declare-fun setRes!53154 () Bool)

(assert (=> setNonEmpty!53146 (= tp!1994365 setRes!53154)))

(declare-fun setIsEmpty!53154 () Bool)

(assert (=> setIsEmpty!53154 setRes!53154))

(declare-fun setNonEmpty!53154 () Bool)

(declare-fun e!4314741 () Bool)

(declare-fun setElem!53154 () Context!14602)

(declare-fun tp!1994589 () Bool)

(assert (=> setNonEmpty!53154 (= setRes!53154 (and tp!1994589 (inv!88894 setElem!53154) e!4314741))))

(declare-fun setRest!53154 () (InoxSet Context!14602))

(assert (=> setNonEmpty!53154 (= setRest!53146 ((_ map or) (store ((as const (Array Context!14602 Bool)) false) setElem!53154 true) setRest!53154))))

(declare-fun b!7184626 () Bool)

(declare-fun tp!1994588 () Bool)

(assert (=> b!7184626 (= e!4314741 tp!1994588)))

(assert (= (and setNonEmpty!53146 condSetEmpty!53154) setIsEmpty!53154))

(assert (= (and setNonEmpty!53146 (not condSetEmpty!53154)) setNonEmpty!53154))

(assert (= setNonEmpty!53154 b!7184626))

(declare-fun m!7881886 () Bool)

(assert (=> setNonEmpty!53154 m!7881886))

(declare-fun b!7184627 () Bool)

(declare-fun e!4314742 () Bool)

(declare-fun tp!1994590 () Bool)

(assert (=> b!7184627 (= e!4314742 (and tp_is_empty!46259 tp!1994590))))

(assert (=> b!7183889 (= tp!1994378 e!4314742)))

(assert (= (and b!7183889 ((_ is Cons!69654) (t!383799 (t!383799 (t!383799 (t!383799 s!7967)))))) b!7184627))

(declare-fun b!7184628 () Bool)

(declare-fun e!4314743 () Bool)

(declare-fun tp!1994591 () Bool)

(declare-fun tp!1994592 () Bool)

(assert (=> b!7184628 (= e!4314743 (and tp!1994591 tp!1994592))))

(assert (=> b!7183901 (= tp!1994383 e!4314743)))

(assert (= (and b!7183901 ((_ is Cons!69653) (exprs!7801 (h!76103 (t!383800 res!2925518))))) b!7184628))

(declare-fun b!7184629 () Bool)

(declare-fun e!4314744 () Bool)

(assert (=> b!7184629 (= e!4314744 tp_is_empty!46259)))

(declare-fun b!7184630 () Bool)

(declare-fun tp!1994597 () Bool)

(declare-fun tp!1994594 () Bool)

(assert (=> b!7184630 (= e!4314744 (and tp!1994597 tp!1994594))))

(assert (=> b!7183943 (= tp!1994442 e!4314744)))

(declare-fun b!7184632 () Bool)

(declare-fun tp!1994596 () Bool)

(declare-fun tp!1994595 () Bool)

(assert (=> b!7184632 (= e!4314744 (and tp!1994596 tp!1994595))))

(declare-fun b!7184631 () Bool)

(declare-fun tp!1994593 () Bool)

(assert (=> b!7184631 (= e!4314744 tp!1994593)))

(assert (= (and b!7183943 ((_ is ElementMatch!18349) (regOne!37210 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184629))

(assert (= (and b!7183943 ((_ is Concat!27194) (regOne!37210 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184630))

(assert (= (and b!7183943 ((_ is Star!18349) (regOne!37210 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184631))

(assert (= (and b!7183943 ((_ is Union!18349) (regOne!37210 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184632))

(declare-fun b!7184633 () Bool)

(declare-fun e!4314745 () Bool)

(assert (=> b!7184633 (= e!4314745 tp_is_empty!46259)))

(declare-fun b!7184634 () Bool)

(declare-fun tp!1994602 () Bool)

(declare-fun tp!1994599 () Bool)

(assert (=> b!7184634 (= e!4314745 (and tp!1994602 tp!1994599))))

(assert (=> b!7183943 (= tp!1994439 e!4314745)))

(declare-fun b!7184636 () Bool)

(declare-fun tp!1994601 () Bool)

(declare-fun tp!1994600 () Bool)

(assert (=> b!7184636 (= e!4314745 (and tp!1994601 tp!1994600))))

(declare-fun b!7184635 () Bool)

(declare-fun tp!1994598 () Bool)

(assert (=> b!7184635 (= e!4314745 tp!1994598)))

(assert (= (and b!7183943 ((_ is ElementMatch!18349) (regTwo!37210 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184633))

(assert (= (and b!7183943 ((_ is Concat!27194) (regTwo!37210 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184634))

(assert (= (and b!7183943 ((_ is Star!18349) (regTwo!37210 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184635))

(assert (= (and b!7183943 ((_ is Union!18349) (regTwo!37210 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184636))

(declare-fun b!7184637 () Bool)

(declare-fun e!4314746 () Bool)

(assert (=> b!7184637 (= e!4314746 tp_is_empty!46259)))

(declare-fun b!7184638 () Bool)

(declare-fun tp!1994607 () Bool)

(declare-fun tp!1994604 () Bool)

(assert (=> b!7184638 (= e!4314746 (and tp!1994607 tp!1994604))))

(assert (=> b!7183912 (= tp!1994399 e!4314746)))

(declare-fun b!7184640 () Bool)

(declare-fun tp!1994606 () Bool)

(declare-fun tp!1994605 () Bool)

(assert (=> b!7184640 (= e!4314746 (and tp!1994606 tp!1994605))))

(declare-fun b!7184639 () Bool)

(declare-fun tp!1994603 () Bool)

(assert (=> b!7184639 (= e!4314746 tp!1994603)))

(assert (= (and b!7183912 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 setElem!53145)))) b!7184637))

(assert (= (and b!7183912 ((_ is Concat!27194) (h!76101 (exprs!7801 setElem!53145)))) b!7184638))

(assert (= (and b!7183912 ((_ is Star!18349) (h!76101 (exprs!7801 setElem!53145)))) b!7184639))

(assert (= (and b!7183912 ((_ is Union!18349) (h!76101 (exprs!7801 setElem!53145)))) b!7184640))

(declare-fun b!7184641 () Bool)

(declare-fun e!4314747 () Bool)

(declare-fun tp!1994608 () Bool)

(declare-fun tp!1994609 () Bool)

(assert (=> b!7184641 (= e!4314747 (and tp!1994608 tp!1994609))))

(assert (=> b!7183912 (= tp!1994400 e!4314747)))

(assert (= (and b!7183912 ((_ is Cons!69653) (t!383798 (exprs!7801 setElem!53145)))) b!7184641))

(declare-fun b!7184642 () Bool)

(declare-fun e!4314748 () Bool)

(assert (=> b!7184642 (= e!4314748 tp_is_empty!46259)))

(declare-fun b!7184643 () Bool)

(declare-fun tp!1994614 () Bool)

(declare-fun tp!1994611 () Bool)

(assert (=> b!7184643 (= e!4314748 (and tp!1994614 tp!1994611))))

(assert (=> b!7183958 (= tp!1994457 e!4314748)))

(declare-fun b!7184645 () Bool)

(declare-fun tp!1994613 () Bool)

(declare-fun tp!1994612 () Bool)

(assert (=> b!7184645 (= e!4314748 (and tp!1994613 tp!1994612))))

(declare-fun b!7184644 () Bool)

(declare-fun tp!1994610 () Bool)

(assert (=> b!7184644 (= e!4314748 tp!1994610)))

(assert (= (and b!7183958 ((_ is ElementMatch!18349) (reg!18678 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184642))

(assert (= (and b!7183958 ((_ is Concat!27194) (reg!18678 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184643))

(assert (= (and b!7183958 ((_ is Star!18349) (reg!18678 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184644))

(assert (= (and b!7183958 ((_ is Union!18349) (reg!18678 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184645))

(declare-fun b!7184646 () Bool)

(declare-fun e!4314749 () Bool)

(assert (=> b!7184646 (= e!4314749 tp_is_empty!46259)))

(declare-fun b!7184647 () Bool)

(declare-fun tp!1994619 () Bool)

(declare-fun tp!1994616 () Bool)

(assert (=> b!7184647 (= e!4314749 (and tp!1994619 tp!1994616))))

(assert (=> b!7183927 (= tp!1994418 e!4314749)))

(declare-fun b!7184649 () Bool)

(declare-fun tp!1994618 () Bool)

(declare-fun tp!1994617 () Bool)

(assert (=> b!7184649 (= e!4314749 (and tp!1994618 tp!1994617))))

(declare-fun b!7184648 () Bool)

(declare-fun tp!1994615 () Bool)

(assert (=> b!7184648 (= e!4314749 tp!1994615)))

(assert (= (and b!7183927 ((_ is ElementMatch!18349) (regOne!37211 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184646))

(assert (= (and b!7183927 ((_ is Concat!27194) (regOne!37211 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184647))

(assert (= (and b!7183927 ((_ is Star!18349) (regOne!37211 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184648))

(assert (= (and b!7183927 ((_ is Union!18349) (regOne!37211 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184649))

(declare-fun b!7184650 () Bool)

(declare-fun e!4314750 () Bool)

(assert (=> b!7184650 (= e!4314750 tp_is_empty!46259)))

(declare-fun b!7184651 () Bool)

(declare-fun tp!1994624 () Bool)

(declare-fun tp!1994621 () Bool)

(assert (=> b!7184651 (= e!4314750 (and tp!1994624 tp!1994621))))

(assert (=> b!7183927 (= tp!1994417 e!4314750)))

(declare-fun b!7184653 () Bool)

(declare-fun tp!1994623 () Bool)

(declare-fun tp!1994622 () Bool)

(assert (=> b!7184653 (= e!4314750 (and tp!1994623 tp!1994622))))

(declare-fun b!7184652 () Bool)

(declare-fun tp!1994620 () Bool)

(assert (=> b!7184652 (= e!4314750 tp!1994620)))

(assert (= (and b!7183927 ((_ is ElementMatch!18349) (regTwo!37211 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184650))

(assert (= (and b!7183927 ((_ is Concat!27194) (regTwo!37211 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184651))

(assert (= (and b!7183927 ((_ is Star!18349) (regTwo!37211 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184652))

(assert (= (and b!7183927 ((_ is Union!18349) (regTwo!37211 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184653))

(declare-fun b!7184654 () Bool)

(declare-fun e!4314751 () Bool)

(assert (=> b!7184654 (= e!4314751 tp_is_empty!46259)))

(declare-fun b!7184655 () Bool)

(declare-fun tp!1994629 () Bool)

(declare-fun tp!1994626 () Bool)

(assert (=> b!7184655 (= e!4314751 (and tp!1994629 tp!1994626))))

(assert (=> b!7183934 (= tp!1994425 e!4314751)))

(declare-fun b!7184657 () Bool)

(declare-fun tp!1994628 () Bool)

(declare-fun tp!1994627 () Bool)

(assert (=> b!7184657 (= e!4314751 (and tp!1994628 tp!1994627))))

(declare-fun b!7184656 () Bool)

(declare-fun tp!1994625 () Bool)

(assert (=> b!7184656 (= e!4314751 tp!1994625)))

(assert (= (and b!7183934 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 (h!76103 res!2925525))))) b!7184654))

(assert (= (and b!7183934 ((_ is Concat!27194) (h!76101 (exprs!7801 (h!76103 res!2925525))))) b!7184655))

(assert (= (and b!7183934 ((_ is Star!18349) (h!76101 (exprs!7801 (h!76103 res!2925525))))) b!7184656))

(assert (= (and b!7183934 ((_ is Union!18349) (h!76101 (exprs!7801 (h!76103 res!2925525))))) b!7184657))

(declare-fun b!7184658 () Bool)

(declare-fun e!4314752 () Bool)

(declare-fun tp!1994630 () Bool)

(declare-fun tp!1994631 () Bool)

(assert (=> b!7184658 (= e!4314752 (and tp!1994630 tp!1994631))))

(assert (=> b!7183934 (= tp!1994426 e!4314752)))

(assert (= (and b!7183934 ((_ is Cons!69653) (t!383798 (exprs!7801 (h!76103 res!2925525))))) b!7184658))

(declare-fun b!7184659 () Bool)

(declare-fun e!4314753 () Bool)

(assert (=> b!7184659 (= e!4314753 tp_is_empty!46259)))

(declare-fun b!7184660 () Bool)

(declare-fun tp!1994636 () Bool)

(declare-fun tp!1994633 () Bool)

(assert (=> b!7184660 (= e!4314753 (and tp!1994636 tp!1994633))))

(assert (=> b!7183887 (= tp!1994373 e!4314753)))

(declare-fun b!7184662 () Bool)

(declare-fun tp!1994635 () Bool)

(declare-fun tp!1994634 () Bool)

(assert (=> b!7184662 (= e!4314753 (and tp!1994635 tp!1994634))))

(declare-fun b!7184661 () Bool)

(declare-fun tp!1994632 () Bool)

(assert (=> b!7184661 (= e!4314753 tp!1994632)))

(assert (= (and b!7183887 ((_ is ElementMatch!18349) (reg!18678 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184659))

(assert (= (and b!7183887 ((_ is Concat!27194) (reg!18678 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184660))

(assert (= (and b!7183887 ((_ is Star!18349) (reg!18678 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184661))

(assert (= (and b!7183887 ((_ is Union!18349) (reg!18678 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184662))

(declare-fun b!7184663 () Bool)

(declare-fun e!4314754 () Bool)

(assert (=> b!7184663 (= e!4314754 tp_is_empty!46259)))

(declare-fun b!7184664 () Bool)

(declare-fun tp!1994641 () Bool)

(declare-fun tp!1994638 () Bool)

(assert (=> b!7184664 (= e!4314754 (and tp!1994641 tp!1994638))))

(assert (=> b!7183925 (= tp!1994419 e!4314754)))

(declare-fun b!7184666 () Bool)

(declare-fun tp!1994640 () Bool)

(declare-fun tp!1994639 () Bool)

(assert (=> b!7184666 (= e!4314754 (and tp!1994640 tp!1994639))))

(declare-fun b!7184665 () Bool)

(declare-fun tp!1994637 () Bool)

(assert (=> b!7184665 (= e!4314754 tp!1994637)))

(assert (= (and b!7183925 ((_ is ElementMatch!18349) (regOne!37210 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184663))

(assert (= (and b!7183925 ((_ is Concat!27194) (regOne!37210 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184664))

(assert (= (and b!7183925 ((_ is Star!18349) (regOne!37210 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184665))

(assert (= (and b!7183925 ((_ is Union!18349) (regOne!37210 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184666))

(declare-fun b!7184667 () Bool)

(declare-fun e!4314755 () Bool)

(assert (=> b!7184667 (= e!4314755 tp_is_empty!46259)))

(declare-fun b!7184668 () Bool)

(declare-fun tp!1994646 () Bool)

(declare-fun tp!1994643 () Bool)

(assert (=> b!7184668 (= e!4314755 (and tp!1994646 tp!1994643))))

(assert (=> b!7183925 (= tp!1994416 e!4314755)))

(declare-fun b!7184670 () Bool)

(declare-fun tp!1994645 () Bool)

(declare-fun tp!1994644 () Bool)

(assert (=> b!7184670 (= e!4314755 (and tp!1994645 tp!1994644))))

(declare-fun b!7184669 () Bool)

(declare-fun tp!1994642 () Bool)

(assert (=> b!7184669 (= e!4314755 tp!1994642)))

(assert (= (and b!7183925 ((_ is ElementMatch!18349) (regTwo!37210 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184667))

(assert (= (and b!7183925 ((_ is Concat!27194) (regTwo!37210 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184668))

(assert (= (and b!7183925 ((_ is Star!18349) (regTwo!37210 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184669))

(assert (= (and b!7183925 ((_ is Union!18349) (regTwo!37210 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184670))

(declare-fun b!7184671 () Bool)

(declare-fun e!4314756 () Bool)

(assert (=> b!7184671 (= e!4314756 tp_is_empty!46259)))

(declare-fun b!7184672 () Bool)

(declare-fun tp!1994651 () Bool)

(declare-fun tp!1994648 () Bool)

(assert (=> b!7184672 (= e!4314756 (and tp!1994651 tp!1994648))))

(assert (=> b!7183907 (= tp!1994392 e!4314756)))

(declare-fun b!7184674 () Bool)

(declare-fun tp!1994650 () Bool)

(declare-fun tp!1994649 () Bool)

(assert (=> b!7184674 (= e!4314756 (and tp!1994650 tp!1994649))))

(declare-fun b!7184673 () Bool)

(declare-fun tp!1994647 () Bool)

(assert (=> b!7184673 (= e!4314756 tp!1994647)))

(assert (= (and b!7183907 ((_ is ElementMatch!18349) (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184671))

(assert (= (and b!7183907 ((_ is Concat!27194) (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184672))

(assert (= (and b!7183907 ((_ is Star!18349) (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184673))

(assert (= (and b!7183907 ((_ is Union!18349) (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184674))

(declare-fun b!7184675 () Bool)

(declare-fun e!4314757 () Bool)

(assert (=> b!7184675 (= e!4314757 tp_is_empty!46259)))

(declare-fun b!7184676 () Bool)

(declare-fun tp!1994656 () Bool)

(declare-fun tp!1994653 () Bool)

(assert (=> b!7184676 (= e!4314757 (and tp!1994656 tp!1994653))))

(assert (=> b!7183907 (= tp!1994391 e!4314757)))

(declare-fun b!7184678 () Bool)

(declare-fun tp!1994655 () Bool)

(declare-fun tp!1994654 () Bool)

(assert (=> b!7184678 (= e!4314757 (and tp!1994655 tp!1994654))))

(declare-fun b!7184677 () Bool)

(declare-fun tp!1994652 () Bool)

(assert (=> b!7184677 (= e!4314757 tp!1994652)))

(assert (= (and b!7183907 ((_ is ElementMatch!18349) (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184675))

(assert (= (and b!7183907 ((_ is Concat!27194) (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184676))

(assert (= (and b!7183907 ((_ is Star!18349) (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184677))

(assert (= (and b!7183907 ((_ is Union!18349) (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184678))

(declare-fun b!7184679 () Bool)

(declare-fun e!4314758 () Bool)

(assert (=> b!7184679 (= e!4314758 tp_is_empty!46259)))

(declare-fun b!7184680 () Bool)

(declare-fun tp!1994661 () Bool)

(declare-fun tp!1994658 () Bool)

(assert (=> b!7184680 (= e!4314758 (and tp!1994661 tp!1994658))))

(assert (=> b!7183953 (= tp!1994450 e!4314758)))

(declare-fun b!7184682 () Bool)

(declare-fun tp!1994660 () Bool)

(declare-fun tp!1994659 () Bool)

(assert (=> b!7184682 (= e!4314758 (and tp!1994660 tp!1994659))))

(declare-fun b!7184681 () Bool)

(declare-fun tp!1994657 () Bool)

(assert (=> b!7184681 (= e!4314758 tp!1994657)))

(assert (= (and b!7183953 ((_ is ElementMatch!18349) (reg!18678 (h!76101 (exprs!7801 setElem!53137))))) b!7184679))

(assert (= (and b!7183953 ((_ is Concat!27194) (reg!18678 (h!76101 (exprs!7801 setElem!53137))))) b!7184680))

(assert (= (and b!7183953 ((_ is Star!18349) (reg!18678 (h!76101 (exprs!7801 setElem!53137))))) b!7184681))

(assert (= (and b!7183953 ((_ is Union!18349) (reg!18678 (h!76101 (exprs!7801 setElem!53137))))) b!7184682))

(declare-fun b!7184683 () Bool)

(declare-fun e!4314759 () Bool)

(assert (=> b!7184683 (= e!4314759 tp_is_empty!46259)))

(declare-fun b!7184684 () Bool)

(declare-fun tp!1994666 () Bool)

(declare-fun tp!1994663 () Bool)

(assert (=> b!7184684 (= e!4314759 (and tp!1994666 tp!1994663))))

(assert (=> b!7183922 (= tp!1994411 e!4314759)))

(declare-fun b!7184686 () Bool)

(declare-fun tp!1994665 () Bool)

(declare-fun tp!1994664 () Bool)

(assert (=> b!7184686 (= e!4314759 (and tp!1994665 tp!1994664))))

(declare-fun b!7184685 () Bool)

(declare-fun tp!1994662 () Bool)

(assert (=> b!7184685 (= e!4314759 tp!1994662)))

(assert (= (and b!7183922 ((_ is ElementMatch!18349) (regOne!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184683))

(assert (= (and b!7183922 ((_ is Concat!27194) (regOne!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184684))

(assert (= (and b!7183922 ((_ is Star!18349) (regOne!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184685))

(assert (= (and b!7183922 ((_ is Union!18349) (regOne!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184686))

(declare-fun b!7184687 () Bool)

(declare-fun e!4314760 () Bool)

(assert (=> b!7184687 (= e!4314760 tp_is_empty!46259)))

(declare-fun b!7184688 () Bool)

(declare-fun tp!1994671 () Bool)

(declare-fun tp!1994668 () Bool)

(assert (=> b!7184688 (= e!4314760 (and tp!1994671 tp!1994668))))

(assert (=> b!7183922 (= tp!1994410 e!4314760)))

(declare-fun b!7184690 () Bool)

(declare-fun tp!1994670 () Bool)

(declare-fun tp!1994669 () Bool)

(assert (=> b!7184690 (= e!4314760 (and tp!1994670 tp!1994669))))

(declare-fun b!7184689 () Bool)

(declare-fun tp!1994667 () Bool)

(assert (=> b!7184689 (= e!4314760 tp!1994667)))

(assert (= (and b!7183922 ((_ is ElementMatch!18349) (regTwo!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184687))

(assert (= (and b!7183922 ((_ is Concat!27194) (regTwo!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184688))

(assert (= (and b!7183922 ((_ is Star!18349) (regTwo!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184689))

(assert (= (and b!7183922 ((_ is Union!18349) (regTwo!37211 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184690))

(declare-fun b!7184691 () Bool)

(declare-fun e!4314761 () Bool)

(assert (=> b!7184691 (= e!4314761 tp_is_empty!46259)))

(declare-fun b!7184692 () Bool)

(declare-fun tp!1994676 () Bool)

(declare-fun tp!1994673 () Bool)

(assert (=> b!7184692 (= e!4314761 (and tp!1994676 tp!1994673))))

(assert (=> b!7183905 (= tp!1994393 e!4314761)))

(declare-fun b!7184694 () Bool)

(declare-fun tp!1994675 () Bool)

(declare-fun tp!1994674 () Bool)

(assert (=> b!7184694 (= e!4314761 (and tp!1994675 tp!1994674))))

(declare-fun b!7184693 () Bool)

(declare-fun tp!1994672 () Bool)

(assert (=> b!7184693 (= e!4314761 tp!1994672)))

(assert (= (and b!7183905 ((_ is ElementMatch!18349) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184691))

(assert (= (and b!7183905 ((_ is Concat!27194) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184692))

(assert (= (and b!7183905 ((_ is Star!18349) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184693))

(assert (= (and b!7183905 ((_ is Union!18349) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184694))

(declare-fun b!7184695 () Bool)

(declare-fun e!4314762 () Bool)

(assert (=> b!7184695 (= e!4314762 tp_is_empty!46259)))

(declare-fun b!7184696 () Bool)

(declare-fun tp!1994681 () Bool)

(declare-fun tp!1994678 () Bool)

(assert (=> b!7184696 (= e!4314762 (and tp!1994681 tp!1994678))))

(assert (=> b!7183905 (= tp!1994390 e!4314762)))

(declare-fun b!7184698 () Bool)

(declare-fun tp!1994680 () Bool)

(declare-fun tp!1994679 () Bool)

(assert (=> b!7184698 (= e!4314762 (and tp!1994680 tp!1994679))))

(declare-fun b!7184697 () Bool)

(declare-fun tp!1994677 () Bool)

(assert (=> b!7184697 (= e!4314762 tp!1994677)))

(assert (= (and b!7183905 ((_ is ElementMatch!18349) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184695))

(assert (= (and b!7183905 ((_ is Concat!27194) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184696))

(assert (= (and b!7183905 ((_ is Star!18349) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184697))

(assert (= (and b!7183905 ((_ is Union!18349) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184698))

(declare-fun b!7184699 () Bool)

(declare-fun e!4314763 () Bool)

(assert (=> b!7184699 (= e!4314763 tp_is_empty!46259)))

(declare-fun b!7184700 () Bool)

(declare-fun tp!1994686 () Bool)

(declare-fun tp!1994683 () Bool)

(assert (=> b!7184700 (= e!4314763 (and tp!1994686 tp!1994683))))

(assert (=> b!7183920 (= tp!1994412 e!4314763)))

(declare-fun b!7184702 () Bool)

(declare-fun tp!1994685 () Bool)

(declare-fun tp!1994684 () Bool)

(assert (=> b!7184702 (= e!4314763 (and tp!1994685 tp!1994684))))

(declare-fun b!7184701 () Bool)

(declare-fun tp!1994682 () Bool)

(assert (=> b!7184701 (= e!4314763 tp!1994682)))

(assert (= (and b!7183920 ((_ is ElementMatch!18349) (regOne!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184699))

(assert (= (and b!7183920 ((_ is Concat!27194) (regOne!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184700))

(assert (= (and b!7183920 ((_ is Star!18349) (regOne!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184701))

(assert (= (and b!7183920 ((_ is Union!18349) (regOne!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184702))

(declare-fun b!7184703 () Bool)

(declare-fun e!4314764 () Bool)

(assert (=> b!7184703 (= e!4314764 tp_is_empty!46259)))

(declare-fun b!7184704 () Bool)

(declare-fun tp!1994691 () Bool)

(declare-fun tp!1994688 () Bool)

(assert (=> b!7184704 (= e!4314764 (and tp!1994691 tp!1994688))))

(assert (=> b!7183920 (= tp!1994409 e!4314764)))

(declare-fun b!7184706 () Bool)

(declare-fun tp!1994690 () Bool)

(declare-fun tp!1994689 () Bool)

(assert (=> b!7184706 (= e!4314764 (and tp!1994690 tp!1994689))))

(declare-fun b!7184705 () Bool)

(declare-fun tp!1994687 () Bool)

(assert (=> b!7184705 (= e!4314764 tp!1994687)))

(assert (= (and b!7183920 ((_ is ElementMatch!18349) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184703))

(assert (= (and b!7183920 ((_ is Concat!27194) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184704))

(assert (= (and b!7183920 ((_ is Star!18349) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184705))

(assert (= (and b!7183920 ((_ is Union!18349) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184706))

(declare-fun b!7184707 () Bool)

(declare-fun e!4314765 () Bool)

(assert (=> b!7184707 (= e!4314765 tp_is_empty!46259)))

(declare-fun b!7184708 () Bool)

(declare-fun tp!1994696 () Bool)

(declare-fun tp!1994693 () Bool)

(assert (=> b!7184708 (= e!4314765 (and tp!1994696 tp!1994693))))

(assert (=> b!7183948 (= tp!1994443 e!4314765)))

(declare-fun b!7184710 () Bool)

(declare-fun tp!1994695 () Bool)

(declare-fun tp!1994694 () Bool)

(assert (=> b!7184710 (= e!4314765 (and tp!1994695 tp!1994694))))

(declare-fun b!7184709 () Bool)

(declare-fun tp!1994692 () Bool)

(assert (=> b!7184709 (= e!4314765 tp!1994692)))

(assert (= (and b!7183948 ((_ is ElementMatch!18349) (reg!18678 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184707))

(assert (= (and b!7183948 ((_ is Concat!27194) (reg!18678 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184708))

(assert (= (and b!7183948 ((_ is Star!18349) (reg!18678 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184709))

(assert (= (and b!7183948 ((_ is Union!18349) (reg!18678 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184710))

(declare-fun b!7184711 () Bool)

(declare-fun e!4314766 () Bool)

(assert (=> b!7184711 (= e!4314766 tp_is_empty!46259)))

(declare-fun b!7184712 () Bool)

(declare-fun tp!1994701 () Bool)

(declare-fun tp!1994698 () Bool)

(assert (=> b!7184712 (= e!4314766 (and tp!1994701 tp!1994698))))

(assert (=> b!7183923 (= tp!1994413 e!4314766)))

(declare-fun b!7184714 () Bool)

(declare-fun tp!1994700 () Bool)

(declare-fun tp!1994699 () Bool)

(assert (=> b!7184714 (= e!4314766 (and tp!1994700 tp!1994699))))

(declare-fun b!7184713 () Bool)

(declare-fun tp!1994697 () Bool)

(assert (=> b!7184713 (= e!4314766 tp!1994697)))

(assert (= (and b!7183923 ((_ is ElementMatch!18349) (h!76101 (t!383798 (t!383798 (exprs!7801 empty!2967)))))) b!7184711))

(assert (= (and b!7183923 ((_ is Concat!27194) (h!76101 (t!383798 (t!383798 (exprs!7801 empty!2967)))))) b!7184712))

(assert (= (and b!7183923 ((_ is Star!18349) (h!76101 (t!383798 (t!383798 (exprs!7801 empty!2967)))))) b!7184713))

(assert (= (and b!7183923 ((_ is Union!18349) (h!76101 (t!383798 (t!383798 (exprs!7801 empty!2967)))))) b!7184714))

(declare-fun b!7184715 () Bool)

(declare-fun e!4314767 () Bool)

(declare-fun tp!1994702 () Bool)

(declare-fun tp!1994703 () Bool)

(assert (=> b!7184715 (= e!4314767 (and tp!1994702 tp!1994703))))

(assert (=> b!7183923 (= tp!1994414 e!4314767)))

(assert (= (and b!7183923 ((_ is Cons!69653) (t!383798 (t!383798 (t!383798 (exprs!7801 empty!2967)))))) b!7184715))

(declare-fun b!7184716 () Bool)

(declare-fun e!4314768 () Bool)

(assert (=> b!7184716 (= e!4314768 tp_is_empty!46259)))

(declare-fun b!7184717 () Bool)

(declare-fun tp!1994708 () Bool)

(declare-fun tp!1994705 () Bool)

(assert (=> b!7184717 (= e!4314768 (and tp!1994708 tp!1994705))))

(assert (=> b!7183941 (= tp!1994436 e!4314768)))

(declare-fun b!7184719 () Bool)

(declare-fun tp!1994707 () Bool)

(declare-fun tp!1994706 () Bool)

(assert (=> b!7184719 (= e!4314768 (and tp!1994707 tp!1994706))))

(declare-fun b!7184718 () Bool)

(declare-fun tp!1994704 () Bool)

(assert (=> b!7184718 (= e!4314768 tp!1994704)))

(assert (= (and b!7183941 ((_ is ElementMatch!18349) (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184716))

(assert (= (and b!7183941 ((_ is Concat!27194) (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184717))

(assert (= (and b!7183941 ((_ is Star!18349) (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184718))

(assert (= (and b!7183941 ((_ is Union!18349) (regOne!37211 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184719))

(declare-fun b!7184720 () Bool)

(declare-fun e!4314769 () Bool)

(assert (=> b!7184720 (= e!4314769 tp_is_empty!46259)))

(declare-fun b!7184721 () Bool)

(declare-fun tp!1994713 () Bool)

(declare-fun tp!1994710 () Bool)

(assert (=> b!7184721 (= e!4314769 (and tp!1994713 tp!1994710))))

(assert (=> b!7183941 (= tp!1994435 e!4314769)))

(declare-fun b!7184723 () Bool)

(declare-fun tp!1994712 () Bool)

(declare-fun tp!1994711 () Bool)

(assert (=> b!7184723 (= e!4314769 (and tp!1994712 tp!1994711))))

(declare-fun b!7184722 () Bool)

(declare-fun tp!1994709 () Bool)

(assert (=> b!7184722 (= e!4314769 tp!1994709)))

(assert (= (and b!7183941 ((_ is ElementMatch!18349) (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184720))

(assert (= (and b!7183941 ((_ is Concat!27194) (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184721))

(assert (= (and b!7183941 ((_ is Star!18349) (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184722))

(assert (= (and b!7183941 ((_ is Union!18349) (regTwo!37211 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184723))

(declare-fun b!7184724 () Bool)

(declare-fun e!4314770 () Bool)

(assert (=> b!7184724 (= e!4314770 tp_is_empty!46259)))

(declare-fun b!7184725 () Bool)

(declare-fun tp!1994718 () Bool)

(declare-fun tp!1994715 () Bool)

(assert (=> b!7184725 (= e!4314770 (and tp!1994718 tp!1994715))))

(assert (=> b!7183915 (= tp!1994401 e!4314770)))

(declare-fun b!7184727 () Bool)

(declare-fun tp!1994717 () Bool)

(declare-fun tp!1994716 () Bool)

(assert (=> b!7184727 (= e!4314770 (and tp!1994717 tp!1994716))))

(declare-fun b!7184726 () Bool)

(declare-fun tp!1994714 () Bool)

(assert (=> b!7184726 (= e!4314770 tp!1994714)))

(assert (= (and b!7183915 ((_ is ElementMatch!18349) (reg!18678 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184724))

(assert (= (and b!7183915 ((_ is Concat!27194) (reg!18678 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184725))

(assert (= (and b!7183915 ((_ is Star!18349) (reg!18678 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184726))

(assert (= (and b!7183915 ((_ is Union!18349) (reg!18678 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184727))

(declare-fun b!7184728 () Bool)

(declare-fun e!4314771 () Bool)

(assert (=> b!7184728 (= e!4314771 tp_is_empty!46259)))

(declare-fun b!7184729 () Bool)

(declare-fun tp!1994723 () Bool)

(declare-fun tp!1994720 () Bool)

(assert (=> b!7184729 (= e!4314771 (and tp!1994723 tp!1994720))))

(assert (=> b!7183883 (= tp!1994368 e!4314771)))

(declare-fun b!7184731 () Bool)

(declare-fun tp!1994722 () Bool)

(declare-fun tp!1994721 () Bool)

(assert (=> b!7184731 (= e!4314771 (and tp!1994722 tp!1994721))))

(declare-fun b!7184730 () Bool)

(declare-fun tp!1994719 () Bool)

(assert (=> b!7184730 (= e!4314771 tp!1994719)))

(assert (= (and b!7183883 ((_ is ElementMatch!18349) (reg!18678 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184728))

(assert (= (and b!7183883 ((_ is Concat!27194) (reg!18678 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184729))

(assert (= (and b!7183883 ((_ is Star!18349) (reg!18678 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184730))

(assert (= (and b!7183883 ((_ is Union!18349) (reg!18678 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184731))

(declare-fun b!7184732 () Bool)

(declare-fun e!4314772 () Bool)

(assert (=> b!7184732 (= e!4314772 tp_is_empty!46259)))

(declare-fun b!7184733 () Bool)

(declare-fun tp!1994728 () Bool)

(declare-fun tp!1994725 () Bool)

(assert (=> b!7184733 (= e!4314772 (and tp!1994728 tp!1994725))))

(assert (=> b!7183930 (= tp!1994420 e!4314772)))

(declare-fun b!7184735 () Bool)

(declare-fun tp!1994727 () Bool)

(declare-fun tp!1994726 () Bool)

(assert (=> b!7184735 (= e!4314772 (and tp!1994727 tp!1994726))))

(declare-fun b!7184734 () Bool)

(declare-fun tp!1994724 () Bool)

(assert (=> b!7184734 (= e!4314772 tp!1994724)))

(assert (= (and b!7183930 ((_ is ElementMatch!18349) (reg!18678 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184732))

(assert (= (and b!7183930 ((_ is Concat!27194) (reg!18678 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184733))

(assert (= (and b!7183930 ((_ is Star!18349) (reg!18678 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184734))

(assert (= (and b!7183930 ((_ is Union!18349) (reg!18678 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184735))

(declare-fun b!7184736 () Bool)

(declare-fun e!4314773 () Bool)

(assert (=> b!7184736 (= e!4314773 tp_is_empty!46259)))

(declare-fun b!7184737 () Bool)

(declare-fun tp!1994733 () Bool)

(declare-fun tp!1994730 () Bool)

(assert (=> b!7184737 (= e!4314773 (and tp!1994733 tp!1994730))))

(assert (=> b!7183939 (= tp!1994437 e!4314773)))

(declare-fun b!7184739 () Bool)

(declare-fun tp!1994732 () Bool)

(declare-fun tp!1994731 () Bool)

(assert (=> b!7184739 (= e!4314773 (and tp!1994732 tp!1994731))))

(declare-fun b!7184738 () Bool)

(declare-fun tp!1994729 () Bool)

(assert (=> b!7184738 (= e!4314773 tp!1994729)))

(assert (= (and b!7183939 ((_ is ElementMatch!18349) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184736))

(assert (= (and b!7183939 ((_ is Concat!27194) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184737))

(assert (= (and b!7183939 ((_ is Star!18349) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184738))

(assert (= (and b!7183939 ((_ is Union!18349) (regOne!37210 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184739))

(declare-fun b!7184740 () Bool)

(declare-fun e!4314774 () Bool)

(assert (=> b!7184740 (= e!4314774 tp_is_empty!46259)))

(declare-fun b!7184741 () Bool)

(declare-fun tp!1994738 () Bool)

(declare-fun tp!1994735 () Bool)

(assert (=> b!7184741 (= e!4314774 (and tp!1994738 tp!1994735))))

(assert (=> b!7183939 (= tp!1994434 e!4314774)))

(declare-fun b!7184743 () Bool)

(declare-fun tp!1994737 () Bool)

(declare-fun tp!1994736 () Bool)

(assert (=> b!7184743 (= e!4314774 (and tp!1994737 tp!1994736))))

(declare-fun b!7184742 () Bool)

(declare-fun tp!1994734 () Bool)

(assert (=> b!7184742 (= e!4314774 tp!1994734)))

(assert (= (and b!7183939 ((_ is ElementMatch!18349) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184740))

(assert (= (and b!7183939 ((_ is Concat!27194) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184741))

(assert (= (and b!7183939 ((_ is Star!18349) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184742))

(assert (= (and b!7183939 ((_ is Union!18349) (regTwo!37210 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184743))

(declare-fun b!7184744 () Bool)

(declare-fun e!4314775 () Bool)

(assert (=> b!7184744 (= e!4314775 tp_is_empty!46259)))

(declare-fun b!7184745 () Bool)

(declare-fun tp!1994743 () Bool)

(declare-fun tp!1994740 () Bool)

(assert (=> b!7184745 (= e!4314775 (and tp!1994743 tp!1994740))))

(assert (=> b!7183886 (= tp!1994377 e!4314775)))

(declare-fun b!7184747 () Bool)

(declare-fun tp!1994742 () Bool)

(declare-fun tp!1994741 () Bool)

(assert (=> b!7184747 (= e!4314775 (and tp!1994742 tp!1994741))))

(declare-fun b!7184746 () Bool)

(declare-fun tp!1994739 () Bool)

(assert (=> b!7184746 (= e!4314775 tp!1994739)))

(assert (= (and b!7183886 ((_ is ElementMatch!18349) (regOne!37210 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184744))

(assert (= (and b!7183886 ((_ is Concat!27194) (regOne!37210 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184745))

(assert (= (and b!7183886 ((_ is Star!18349) (regOne!37210 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184746))

(assert (= (and b!7183886 ((_ is Union!18349) (regOne!37210 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184747))

(declare-fun b!7184748 () Bool)

(declare-fun e!4314776 () Bool)

(assert (=> b!7184748 (= e!4314776 tp_is_empty!46259)))

(declare-fun b!7184749 () Bool)

(declare-fun tp!1994748 () Bool)

(declare-fun tp!1994745 () Bool)

(assert (=> b!7184749 (= e!4314776 (and tp!1994748 tp!1994745))))

(assert (=> b!7183886 (= tp!1994374 e!4314776)))

(declare-fun b!7184751 () Bool)

(declare-fun tp!1994747 () Bool)

(declare-fun tp!1994746 () Bool)

(assert (=> b!7184751 (= e!4314776 (and tp!1994747 tp!1994746))))

(declare-fun b!7184750 () Bool)

(declare-fun tp!1994744 () Bool)

(assert (=> b!7184750 (= e!4314776 tp!1994744)))

(assert (= (and b!7183886 ((_ is ElementMatch!18349) (regTwo!37210 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184748))

(assert (= (and b!7183886 ((_ is Concat!27194) (regTwo!37210 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184749))

(assert (= (and b!7183886 ((_ is Star!18349) (regTwo!37210 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184750))

(assert (= (and b!7183886 ((_ is Union!18349) (regTwo!37210 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184751))

(declare-fun b!7184752 () Bool)

(declare-fun e!4314777 () Bool)

(declare-fun tp!1994749 () Bool)

(declare-fun tp!1994750 () Bool)

(assert (=> b!7184752 (= e!4314777 (and tp!1994749 tp!1994750))))

(assert (=> b!7183937 (= tp!1994431 e!4314777)))

(assert (= (and b!7183937 ((_ is Cons!69653) (exprs!7801 setElem!53148))) b!7184752))

(declare-fun b!7184753 () Bool)

(declare-fun e!4314778 () Bool)

(declare-fun tp!1994751 () Bool)

(declare-fun tp!1994752 () Bool)

(assert (=> b!7184753 (= e!4314778 (and tp!1994751 tp!1994752))))

(assert (=> b!7183903 (= tp!1994387 e!4314778)))

(assert (= (and b!7183903 ((_ is Cons!69653) (exprs!7801 setElem!53147))) b!7184753))

(declare-fun b!7184754 () Bool)

(declare-fun e!4314779 () Bool)

(assert (=> b!7184754 (= e!4314779 tp_is_empty!46259)))

(declare-fun b!7184755 () Bool)

(declare-fun tp!1994757 () Bool)

(declare-fun tp!1994754 () Bool)

(assert (=> b!7184755 (= e!4314779 (and tp!1994757 tp!1994754))))

(assert (=> b!7183910 (= tp!1994394 e!4314779)))

(declare-fun b!7184757 () Bool)

(declare-fun tp!1994756 () Bool)

(declare-fun tp!1994755 () Bool)

(assert (=> b!7184757 (= e!4314779 (and tp!1994756 tp!1994755))))

(declare-fun b!7184756 () Bool)

(declare-fun tp!1994753 () Bool)

(assert (=> b!7184756 (= e!4314779 tp!1994753)))

(assert (= (and b!7183910 ((_ is ElementMatch!18349) (reg!18678 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184754))

(assert (= (and b!7183910 ((_ is Concat!27194) (reg!18678 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184755))

(assert (= (and b!7183910 ((_ is Star!18349) (reg!18678 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184756))

(assert (= (and b!7183910 ((_ is Union!18349) (reg!18678 (regTwo!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184757))

(declare-fun b!7184758 () Bool)

(declare-fun e!4314780 () Bool)

(assert (=> b!7184758 (= e!4314780 tp_is_empty!46259)))

(declare-fun b!7184759 () Bool)

(declare-fun tp!1994762 () Bool)

(declare-fun tp!1994759 () Bool)

(assert (=> b!7184759 (= e!4314780 (and tp!1994762 tp!1994759))))

(assert (=> b!7183950 (= tp!1994448 e!4314780)))

(declare-fun b!7184761 () Bool)

(declare-fun tp!1994761 () Bool)

(declare-fun tp!1994760 () Bool)

(assert (=> b!7184761 (= e!4314780 (and tp!1994761 tp!1994760))))

(declare-fun b!7184760 () Bool)

(declare-fun tp!1994758 () Bool)

(assert (=> b!7184760 (= e!4314780 tp!1994758)))

(assert (= (and b!7183950 ((_ is ElementMatch!18349) (h!76101 (t!383798 (t!383798 (exprs!7801 setElem!53131)))))) b!7184758))

(assert (= (and b!7183950 ((_ is Concat!27194) (h!76101 (t!383798 (t!383798 (exprs!7801 setElem!53131)))))) b!7184759))

(assert (= (and b!7183950 ((_ is Star!18349) (h!76101 (t!383798 (t!383798 (exprs!7801 setElem!53131)))))) b!7184760))

(assert (= (and b!7183950 ((_ is Union!18349) (h!76101 (t!383798 (t!383798 (exprs!7801 setElem!53131)))))) b!7184761))

(declare-fun b!7184762 () Bool)

(declare-fun e!4314781 () Bool)

(declare-fun tp!1994763 () Bool)

(declare-fun tp!1994764 () Bool)

(assert (=> b!7184762 (= e!4314781 (and tp!1994763 tp!1994764))))

(assert (=> b!7183950 (= tp!1994449 e!4314781)))

(assert (= (and b!7183950 ((_ is Cons!69653) (t!383798 (t!383798 (t!383798 (exprs!7801 setElem!53131)))))) b!7184762))

(declare-fun b!7184763 () Bool)

(declare-fun e!4314782 () Bool)

(declare-fun tp!1994765 () Bool)

(declare-fun tp!1994766 () Bool)

(assert (=> b!7184763 (= e!4314782 (and tp!1994765 tp!1994766))))

(assert (=> b!7183620 (= tp!1994367 e!4314782)))

(assert (= (and b!7183620 ((_ is Cons!69653) (exprs!7801 (h!76103 res!2925597)))) b!7184763))

(declare-fun b!7184764 () Bool)

(declare-fun e!4314783 () Bool)

(declare-fun tp!1994767 () Bool)

(declare-fun tp!1994768 () Bool)

(assert (=> b!7184764 (= e!4314783 (and tp!1994767 tp!1994768))))

(assert (=> b!7183918 (= tp!1994406 e!4314783)))

(assert (= (and b!7183918 ((_ is Cons!69653) (exprs!7801 (h!76103 (t!383800 res!2925525))))) b!7184764))

(declare-fun b!7184765 () Bool)

(declare-fun e!4314784 () Bool)

(declare-fun tp!1994769 () Bool)

(declare-fun tp!1994770 () Bool)

(assert (=> b!7184765 (= e!4314784 (and tp!1994769 tp!1994770))))

(assert (=> b!7183616 (= tp!1994364 e!4314784)))

(assert (= (and b!7183616 ((_ is Cons!69653) (exprs!7801 setElem!53146))) b!7184765))

(declare-fun b!7184766 () Bool)

(declare-fun e!4314785 () Bool)

(assert (=> b!7184766 (= e!4314785 tp_is_empty!46259)))

(declare-fun b!7184767 () Bool)

(declare-fun tp!1994775 () Bool)

(declare-fun tp!1994772 () Bool)

(assert (=> b!7184767 (= e!4314785 (and tp!1994775 tp!1994772))))

(assert (=> b!7183944 (= tp!1994438 e!4314785)))

(declare-fun b!7184769 () Bool)

(declare-fun tp!1994774 () Bool)

(declare-fun tp!1994773 () Bool)

(assert (=> b!7184769 (= e!4314785 (and tp!1994774 tp!1994773))))

(declare-fun b!7184768 () Bool)

(declare-fun tp!1994771 () Bool)

(assert (=> b!7184768 (= e!4314785 tp!1994771)))

(assert (= (and b!7183944 ((_ is ElementMatch!18349) (reg!18678 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184766))

(assert (= (and b!7183944 ((_ is Concat!27194) (reg!18678 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184767))

(assert (= (and b!7183944 ((_ is Star!18349) (reg!18678 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184768))

(assert (= (and b!7183944 ((_ is Union!18349) (reg!18678 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184769))

(declare-fun b!7184770 () Bool)

(declare-fun e!4314786 () Bool)

(assert (=> b!7184770 (= e!4314786 tp_is_empty!46259)))

(declare-fun b!7184771 () Bool)

(declare-fun tp!1994780 () Bool)

(declare-fun tp!1994777 () Bool)

(assert (=> b!7184771 (= e!4314786 (and tp!1994780 tp!1994777))))

(assert (=> b!7183959 (= tp!1994460 e!4314786)))

(declare-fun b!7184773 () Bool)

(declare-fun tp!1994779 () Bool)

(declare-fun tp!1994778 () Bool)

(assert (=> b!7184773 (= e!4314786 (and tp!1994779 tp!1994778))))

(declare-fun b!7184772 () Bool)

(declare-fun tp!1994776 () Bool)

(assert (=> b!7184772 (= e!4314786 tp!1994776)))

(assert (= (and b!7183959 ((_ is ElementMatch!18349) (regOne!37211 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184770))

(assert (= (and b!7183959 ((_ is Concat!27194) (regOne!37211 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184771))

(assert (= (and b!7183959 ((_ is Star!18349) (regOne!37211 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184772))

(assert (= (and b!7183959 ((_ is Union!18349) (regOne!37211 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184773))

(declare-fun b!7184774 () Bool)

(declare-fun e!4314787 () Bool)

(assert (=> b!7184774 (= e!4314787 tp_is_empty!46259)))

(declare-fun b!7184775 () Bool)

(declare-fun tp!1994785 () Bool)

(declare-fun tp!1994782 () Bool)

(assert (=> b!7184775 (= e!4314787 (and tp!1994785 tp!1994782))))

(assert (=> b!7183959 (= tp!1994459 e!4314787)))

(declare-fun b!7184777 () Bool)

(declare-fun tp!1994784 () Bool)

(declare-fun tp!1994783 () Bool)

(assert (=> b!7184777 (= e!4314787 (and tp!1994784 tp!1994783))))

(declare-fun b!7184776 () Bool)

(declare-fun tp!1994781 () Bool)

(assert (=> b!7184776 (= e!4314787 tp!1994781)))

(assert (= (and b!7183959 ((_ is ElementMatch!18349) (regTwo!37211 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184774))

(assert (= (and b!7183959 ((_ is Concat!27194) (regTwo!37211 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184775))

(assert (= (and b!7183959 ((_ is Star!18349) (regTwo!37211 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184776))

(assert (= (and b!7183959 ((_ is Union!18349) (regTwo!37211 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184777))

(declare-fun b!7184779 () Bool)

(declare-fun e!4314789 () Bool)

(declare-fun tp!1994786 () Bool)

(assert (=> b!7184779 (= e!4314789 tp!1994786)))

(declare-fun b!7184778 () Bool)

(declare-fun tp!1994787 () Bool)

(declare-fun e!4314788 () Bool)

(assert (=> b!7184778 (= e!4314788 (and (inv!88894 (h!76103 (t!383800 (t!383800 res!2925518)))) e!4314789 tp!1994787))))

(assert (=> b!7183900 (= tp!1994384 e!4314788)))

(assert (= b!7184778 b!7184779))

(assert (= (and b!7183900 ((_ is Cons!69655) (t!383800 (t!383800 res!2925518)))) b!7184778))

(declare-fun m!7881888 () Bool)

(assert (=> b!7184778 m!7881888))

(declare-fun b!7184780 () Bool)

(declare-fun e!4314790 () Bool)

(assert (=> b!7184780 (= e!4314790 tp_is_empty!46259)))

(declare-fun b!7184781 () Bool)

(declare-fun tp!1994792 () Bool)

(declare-fun tp!1994789 () Bool)

(assert (=> b!7184781 (= e!4314790 (and tp!1994792 tp!1994789))))

(assert (=> b!7183957 (= tp!1994461 e!4314790)))

(declare-fun b!7184783 () Bool)

(declare-fun tp!1994791 () Bool)

(declare-fun tp!1994790 () Bool)

(assert (=> b!7184783 (= e!4314790 (and tp!1994791 tp!1994790))))

(declare-fun b!7184782 () Bool)

(declare-fun tp!1994788 () Bool)

(assert (=> b!7184782 (= e!4314790 tp!1994788)))

(assert (= (and b!7183957 ((_ is ElementMatch!18349) (regOne!37210 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184780))

(assert (= (and b!7183957 ((_ is Concat!27194) (regOne!37210 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184781))

(assert (= (and b!7183957 ((_ is Star!18349) (regOne!37210 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184782))

(assert (= (and b!7183957 ((_ is Union!18349) (regOne!37210 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184783))

(declare-fun b!7184784 () Bool)

(declare-fun e!4314791 () Bool)

(assert (=> b!7184784 (= e!4314791 tp_is_empty!46259)))

(declare-fun b!7184785 () Bool)

(declare-fun tp!1994797 () Bool)

(declare-fun tp!1994794 () Bool)

(assert (=> b!7184785 (= e!4314791 (and tp!1994797 tp!1994794))))

(assert (=> b!7183957 (= tp!1994458 e!4314791)))

(declare-fun b!7184787 () Bool)

(declare-fun tp!1994796 () Bool)

(declare-fun tp!1994795 () Bool)

(assert (=> b!7184787 (= e!4314791 (and tp!1994796 tp!1994795))))

(declare-fun b!7184786 () Bool)

(declare-fun tp!1994793 () Bool)

(assert (=> b!7184786 (= e!4314791 tp!1994793)))

(assert (= (and b!7183957 ((_ is ElementMatch!18349) (regTwo!37210 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184784))

(assert (= (and b!7183957 ((_ is Concat!27194) (regTwo!37210 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184785))

(assert (= (and b!7183957 ((_ is Star!18349) (regTwo!37210 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184786))

(assert (= (and b!7183957 ((_ is Union!18349) (regTwo!37210 (reg!18678 (h!76101 (exprs!7801 empty!2967)))))) b!7184787))

(declare-fun b!7184788 () Bool)

(declare-fun e!4314792 () Bool)

(assert (=> b!7184788 (= e!4314792 tp_is_empty!46259)))

(declare-fun b!7184789 () Bool)

(declare-fun tp!1994802 () Bool)

(declare-fun tp!1994799 () Bool)

(assert (=> b!7184789 (= e!4314792 (and tp!1994802 tp!1994799))))

(assert (=> b!7183888 (= tp!1994376 e!4314792)))

(declare-fun b!7184791 () Bool)

(declare-fun tp!1994801 () Bool)

(declare-fun tp!1994800 () Bool)

(assert (=> b!7184791 (= e!4314792 (and tp!1994801 tp!1994800))))

(declare-fun b!7184790 () Bool)

(declare-fun tp!1994798 () Bool)

(assert (=> b!7184790 (= e!4314792 tp!1994798)))

(assert (= (and b!7183888 ((_ is ElementMatch!18349) (regOne!37211 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184788))

(assert (= (and b!7183888 ((_ is Concat!27194) (regOne!37211 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184789))

(assert (= (and b!7183888 ((_ is Star!18349) (regOne!37211 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184790))

(assert (= (and b!7183888 ((_ is Union!18349) (regOne!37211 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184791))

(declare-fun b!7184792 () Bool)

(declare-fun e!4314793 () Bool)

(assert (=> b!7184792 (= e!4314793 tp_is_empty!46259)))

(declare-fun b!7184793 () Bool)

(declare-fun tp!1994807 () Bool)

(declare-fun tp!1994804 () Bool)

(assert (=> b!7184793 (= e!4314793 (and tp!1994807 tp!1994804))))

(assert (=> b!7183888 (= tp!1994375 e!4314793)))

(declare-fun b!7184795 () Bool)

(declare-fun tp!1994806 () Bool)

(declare-fun tp!1994805 () Bool)

(assert (=> b!7184795 (= e!4314793 (and tp!1994806 tp!1994805))))

(declare-fun b!7184794 () Bool)

(declare-fun tp!1994803 () Bool)

(assert (=> b!7184794 (= e!4314793 tp!1994803)))

(assert (= (and b!7183888 ((_ is ElementMatch!18349) (regTwo!37211 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184792))

(assert (= (and b!7183888 ((_ is Concat!27194) (regTwo!37211 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184793))

(assert (= (and b!7183888 ((_ is Star!18349) (regTwo!37211 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184794))

(assert (= (and b!7183888 ((_ is Union!18349) (regTwo!37211 (regTwo!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184795))

(declare-fun b!7184796 () Bool)

(declare-fun e!4314794 () Bool)

(assert (=> b!7184796 (= e!4314794 tp_is_empty!46259)))

(declare-fun b!7184797 () Bool)

(declare-fun tp!1994812 () Bool)

(declare-fun tp!1994809 () Bool)

(assert (=> b!7184797 (= e!4314794 (and tp!1994812 tp!1994809))))

(assert (=> b!7183926 (= tp!1994415 e!4314794)))

(declare-fun b!7184799 () Bool)

(declare-fun tp!1994811 () Bool)

(declare-fun tp!1994810 () Bool)

(assert (=> b!7184799 (= e!4314794 (and tp!1994811 tp!1994810))))

(declare-fun b!7184798 () Bool)

(declare-fun tp!1994808 () Bool)

(assert (=> b!7184798 (= e!4314794 tp!1994808)))

(assert (= (and b!7183926 ((_ is ElementMatch!18349) (reg!18678 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184796))

(assert (= (and b!7183926 ((_ is Concat!27194) (reg!18678 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184797))

(assert (= (and b!7183926 ((_ is Star!18349) (reg!18678 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184798))

(assert (= (and b!7183926 ((_ is Union!18349) (reg!18678 (regOne!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184799))

(declare-fun b!7184800 () Bool)

(declare-fun e!4314795 () Bool)

(assert (=> b!7184800 (= e!4314795 tp_is_empty!46259)))

(declare-fun b!7184801 () Bool)

(declare-fun tp!1994817 () Bool)

(declare-fun tp!1994814 () Bool)

(assert (=> b!7184801 (= e!4314795 (and tp!1994817 tp!1994814))))

(assert (=> b!7183929 (= tp!1994424 e!4314795)))

(declare-fun b!7184803 () Bool)

(declare-fun tp!1994816 () Bool)

(declare-fun tp!1994815 () Bool)

(assert (=> b!7184803 (= e!4314795 (and tp!1994816 tp!1994815))))

(declare-fun b!7184802 () Bool)

(declare-fun tp!1994813 () Bool)

(assert (=> b!7184802 (= e!4314795 tp!1994813)))

(assert (= (and b!7183929 ((_ is ElementMatch!18349) (regOne!37210 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184800))

(assert (= (and b!7183929 ((_ is Concat!27194) (regOne!37210 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184801))

(assert (= (and b!7183929 ((_ is Star!18349) (regOne!37210 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184802))

(assert (= (and b!7183929 ((_ is Union!18349) (regOne!37210 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184803))

(declare-fun b!7184804 () Bool)

(declare-fun e!4314796 () Bool)

(assert (=> b!7184804 (= e!4314796 tp_is_empty!46259)))

(declare-fun b!7184805 () Bool)

(declare-fun tp!1994822 () Bool)

(declare-fun tp!1994819 () Bool)

(assert (=> b!7184805 (= e!4314796 (and tp!1994822 tp!1994819))))

(assert (=> b!7183929 (= tp!1994421 e!4314796)))

(declare-fun b!7184807 () Bool)

(declare-fun tp!1994821 () Bool)

(declare-fun tp!1994820 () Bool)

(assert (=> b!7184807 (= e!4314796 (and tp!1994821 tp!1994820))))

(declare-fun b!7184806 () Bool)

(declare-fun tp!1994818 () Bool)

(assert (=> b!7184806 (= e!4314796 tp!1994818)))

(assert (= (and b!7183929 ((_ is ElementMatch!18349) (regTwo!37210 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184804))

(assert (= (and b!7183929 ((_ is Concat!27194) (regTwo!37210 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184805))

(assert (= (and b!7183929 ((_ is Star!18349) (regTwo!37210 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184806))

(assert (= (and b!7183929 ((_ is Union!18349) (regTwo!37210 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184807))

(declare-fun b!7184808 () Bool)

(declare-fun e!4314797 () Bool)

(assert (=> b!7184808 (= e!4314797 tp_is_empty!46259)))

(declare-fun b!7184809 () Bool)

(declare-fun tp!1994827 () Bool)

(declare-fun tp!1994824 () Bool)

(assert (=> b!7184809 (= e!4314797 (and tp!1994827 tp!1994824))))

(assert (=> b!7183936 (= tp!1994429 e!4314797)))

(declare-fun b!7184811 () Bool)

(declare-fun tp!1994826 () Bool)

(declare-fun tp!1994825 () Bool)

(assert (=> b!7184811 (= e!4314797 (and tp!1994826 tp!1994825))))

(declare-fun b!7184810 () Bool)

(declare-fun tp!1994823 () Bool)

(assert (=> b!7184810 (= e!4314797 tp!1994823)))

(assert (= (and b!7183936 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 setElem!53140)))) b!7184808))

(assert (= (and b!7183936 ((_ is Concat!27194) (h!76101 (exprs!7801 setElem!53140)))) b!7184809))

(assert (= (and b!7183936 ((_ is Star!18349) (h!76101 (exprs!7801 setElem!53140)))) b!7184810))

(assert (= (and b!7183936 ((_ is Union!18349) (h!76101 (exprs!7801 setElem!53140)))) b!7184811))

(declare-fun b!7184812 () Bool)

(declare-fun e!4314798 () Bool)

(declare-fun tp!1994828 () Bool)

(declare-fun tp!1994829 () Bool)

(assert (=> b!7184812 (= e!4314798 (and tp!1994828 tp!1994829))))

(assert (=> b!7183936 (= tp!1994430 e!4314798)))

(assert (= (and b!7183936 ((_ is Cons!69653) (t!383798 (exprs!7801 setElem!53140)))) b!7184812))

(declare-fun b!7184813 () Bool)

(declare-fun e!4314799 () Bool)

(assert (=> b!7184813 (= e!4314799 tp_is_empty!46259)))

(declare-fun b!7184814 () Bool)

(declare-fun tp!1994834 () Bool)

(declare-fun tp!1994831 () Bool)

(assert (=> b!7184814 (= e!4314799 (and tp!1994834 tp!1994831))))

(assert (=> b!7183902 (= tp!1994385 e!4314799)))

(declare-fun b!7184816 () Bool)

(declare-fun tp!1994833 () Bool)

(declare-fun tp!1994832 () Bool)

(assert (=> b!7184816 (= e!4314799 (and tp!1994833 tp!1994832))))

(declare-fun b!7184815 () Bool)

(declare-fun tp!1994830 () Bool)

(assert (=> b!7184815 (= e!4314799 tp!1994830)))

(assert (= (and b!7183902 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 (h!76103 res!2925518))))) b!7184813))

(assert (= (and b!7183902 ((_ is Concat!27194) (h!76101 (exprs!7801 (h!76103 res!2925518))))) b!7184814))

(assert (= (and b!7183902 ((_ is Star!18349) (h!76101 (exprs!7801 (h!76103 res!2925518))))) b!7184815))

(assert (= (and b!7183902 ((_ is Union!18349) (h!76101 (exprs!7801 (h!76103 res!2925518))))) b!7184816))

(declare-fun b!7184817 () Bool)

(declare-fun e!4314800 () Bool)

(declare-fun tp!1994835 () Bool)

(declare-fun tp!1994836 () Bool)

(assert (=> b!7184817 (= e!4314800 (and tp!1994835 tp!1994836))))

(assert (=> b!7183902 (= tp!1994386 e!4314800)))

(assert (= (and b!7183902 ((_ is Cons!69653) (t!383798 (exprs!7801 (h!76103 res!2925518))))) b!7184817))

(declare-fun b!7184818 () Bool)

(declare-fun e!4314801 () Bool)

(assert (=> b!7184818 (= e!4314801 tp_is_empty!46259)))

(declare-fun b!7184819 () Bool)

(declare-fun tp!1994841 () Bool)

(declare-fun tp!1994838 () Bool)

(assert (=> b!7184819 (= e!4314801 (and tp!1994841 tp!1994838))))

(assert (=> b!7183906 (= tp!1994389 e!4314801)))

(declare-fun b!7184821 () Bool)

(declare-fun tp!1994840 () Bool)

(declare-fun tp!1994839 () Bool)

(assert (=> b!7184821 (= e!4314801 (and tp!1994840 tp!1994839))))

(declare-fun b!7184820 () Bool)

(declare-fun tp!1994837 () Bool)

(assert (=> b!7184820 (= e!4314801 tp!1994837)))

(assert (= (and b!7183906 ((_ is ElementMatch!18349) (reg!18678 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184818))

(assert (= (and b!7183906 ((_ is Concat!27194) (reg!18678 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184819))

(assert (= (and b!7183906 ((_ is Star!18349) (reg!18678 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184820))

(assert (= (and b!7183906 ((_ is Union!18349) (reg!18678 (regOne!37210 (h!76101 (exprs!7801 setElem!53131)))))) b!7184821))

(declare-fun b!7184822 () Bool)

(declare-fun e!4314802 () Bool)

(assert (=> b!7184822 (= e!4314802 tp_is_empty!46259)))

(declare-fun b!7184823 () Bool)

(declare-fun tp!1994846 () Bool)

(declare-fun tp!1994843 () Bool)

(assert (=> b!7184823 (= e!4314802 (and tp!1994846 tp!1994843))))

(assert (=> b!7183952 (= tp!1994454 e!4314802)))

(declare-fun b!7184825 () Bool)

(declare-fun tp!1994845 () Bool)

(declare-fun tp!1994844 () Bool)

(assert (=> b!7184825 (= e!4314802 (and tp!1994845 tp!1994844))))

(declare-fun b!7184824 () Bool)

(declare-fun tp!1994842 () Bool)

(assert (=> b!7184824 (= e!4314802 tp!1994842)))

(assert (= (and b!7183952 ((_ is ElementMatch!18349) (regOne!37210 (h!76101 (exprs!7801 setElem!53137))))) b!7184822))

(assert (= (and b!7183952 ((_ is Concat!27194) (regOne!37210 (h!76101 (exprs!7801 setElem!53137))))) b!7184823))

(assert (= (and b!7183952 ((_ is Star!18349) (regOne!37210 (h!76101 (exprs!7801 setElem!53137))))) b!7184824))

(assert (= (and b!7183952 ((_ is Union!18349) (regOne!37210 (h!76101 (exprs!7801 setElem!53137))))) b!7184825))

(declare-fun b!7184826 () Bool)

(declare-fun e!4314803 () Bool)

(assert (=> b!7184826 (= e!4314803 tp_is_empty!46259)))

(declare-fun b!7184827 () Bool)

(declare-fun tp!1994851 () Bool)

(declare-fun tp!1994848 () Bool)

(assert (=> b!7184827 (= e!4314803 (and tp!1994851 tp!1994848))))

(assert (=> b!7183952 (= tp!1994451 e!4314803)))

(declare-fun b!7184829 () Bool)

(declare-fun tp!1994850 () Bool)

(declare-fun tp!1994849 () Bool)

(assert (=> b!7184829 (= e!4314803 (and tp!1994850 tp!1994849))))

(declare-fun b!7184828 () Bool)

(declare-fun tp!1994847 () Bool)

(assert (=> b!7184828 (= e!4314803 tp!1994847)))

(assert (= (and b!7183952 ((_ is ElementMatch!18349) (regTwo!37210 (h!76101 (exprs!7801 setElem!53137))))) b!7184826))

(assert (= (and b!7183952 ((_ is Concat!27194) (regTwo!37210 (h!76101 (exprs!7801 setElem!53137))))) b!7184827))

(assert (= (and b!7183952 ((_ is Star!18349) (regTwo!37210 (h!76101 (exprs!7801 setElem!53137))))) b!7184828))

(assert (= (and b!7183952 ((_ is Union!18349) (regTwo!37210 (h!76101 (exprs!7801 setElem!53137))))) b!7184829))

(declare-fun b!7184830 () Bool)

(declare-fun e!4314804 () Bool)

(assert (=> b!7184830 (= e!4314804 tp_is_empty!46259)))

(declare-fun b!7184831 () Bool)

(declare-fun tp!1994856 () Bool)

(declare-fun tp!1994853 () Bool)

(assert (=> b!7184831 (= e!4314804 (and tp!1994856 tp!1994853))))

(assert (=> b!7183921 (= tp!1994408 e!4314804)))

(declare-fun b!7184833 () Bool)

(declare-fun tp!1994855 () Bool)

(declare-fun tp!1994854 () Bool)

(assert (=> b!7184833 (= e!4314804 (and tp!1994855 tp!1994854))))

(declare-fun b!7184832 () Bool)

(declare-fun tp!1994852 () Bool)

(assert (=> b!7184832 (= e!4314804 tp!1994852)))

(assert (= (and b!7183921 ((_ is ElementMatch!18349) (reg!18678 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184830))

(assert (= (and b!7183921 ((_ is Concat!27194) (reg!18678 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184831))

(assert (= (and b!7183921 ((_ is Star!18349) (reg!18678 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184832))

(assert (= (and b!7183921 ((_ is Union!18349) (reg!18678 (h!76101 (t!383798 (exprs!7801 empty!2967)))))) b!7184833))

(declare-fun b!7184834 () Bool)

(declare-fun e!4314805 () Bool)

(assert (=> b!7184834 (= e!4314805 tp_is_empty!46259)))

(declare-fun b!7184835 () Bool)

(declare-fun tp!1994861 () Bool)

(declare-fun tp!1994858 () Bool)

(assert (=> b!7184835 (= e!4314805 (and tp!1994861 tp!1994858))))

(assert (=> b!7183935 (= tp!1994427 e!4314805)))

(declare-fun b!7184837 () Bool)

(declare-fun tp!1994860 () Bool)

(declare-fun tp!1994859 () Bool)

(assert (=> b!7184837 (= e!4314805 (and tp!1994860 tp!1994859))))

(declare-fun b!7184836 () Bool)

(declare-fun tp!1994857 () Bool)

(assert (=> b!7184836 (= e!4314805 tp!1994857)))

(assert (= (and b!7183935 ((_ is ElementMatch!18349) (h!76101 (exprs!7801 _$3!480)))) b!7184834))

(assert (= (and b!7183935 ((_ is Concat!27194) (h!76101 (exprs!7801 _$3!480)))) b!7184835))

(assert (= (and b!7183935 ((_ is Star!18349) (h!76101 (exprs!7801 _$3!480)))) b!7184836))

(assert (= (and b!7183935 ((_ is Union!18349) (h!76101 (exprs!7801 _$3!480)))) b!7184837))

(declare-fun b!7184838 () Bool)

(declare-fun e!4314806 () Bool)

(declare-fun tp!1994862 () Bool)

(declare-fun tp!1994863 () Bool)

(assert (=> b!7184838 (= e!4314806 (and tp!1994862 tp!1994863))))

(assert (=> b!7183935 (= tp!1994428 e!4314806)))

(assert (= (and b!7183935 ((_ is Cons!69653) (t!383798 (exprs!7801 _$3!480)))) b!7184838))

(declare-fun b!7184839 () Bool)

(declare-fun e!4314807 () Bool)

(assert (=> b!7184839 (= e!4314807 tp_is_empty!46259)))

(declare-fun b!7184840 () Bool)

(declare-fun tp!1994868 () Bool)

(declare-fun tp!1994865 () Bool)

(assert (=> b!7184840 (= e!4314807 (and tp!1994868 tp!1994865))))

(assert (=> b!7183945 (= tp!1994441 e!4314807)))

(declare-fun b!7184842 () Bool)

(declare-fun tp!1994867 () Bool)

(declare-fun tp!1994866 () Bool)

(assert (=> b!7184842 (= e!4314807 (and tp!1994867 tp!1994866))))

(declare-fun b!7184841 () Bool)

(declare-fun tp!1994864 () Bool)

(assert (=> b!7184841 (= e!4314807 tp!1994864)))

(assert (= (and b!7183945 ((_ is ElementMatch!18349) (regOne!37211 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184839))

(assert (= (and b!7183945 ((_ is Concat!27194) (regOne!37211 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184840))

(assert (= (and b!7183945 ((_ is Star!18349) (regOne!37211 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184841))

(assert (= (and b!7183945 ((_ is Union!18349) (regOne!37211 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184842))

(declare-fun b!7184843 () Bool)

(declare-fun e!4314808 () Bool)

(assert (=> b!7184843 (= e!4314808 tp_is_empty!46259)))

(declare-fun b!7184844 () Bool)

(declare-fun tp!1994873 () Bool)

(declare-fun tp!1994870 () Bool)

(assert (=> b!7184844 (= e!4314808 (and tp!1994873 tp!1994870))))

(assert (=> b!7183945 (= tp!1994440 e!4314808)))

(declare-fun b!7184846 () Bool)

(declare-fun tp!1994872 () Bool)

(declare-fun tp!1994871 () Bool)

(assert (=> b!7184846 (= e!4314808 (and tp!1994872 tp!1994871))))

(declare-fun b!7184845 () Bool)

(declare-fun tp!1994869 () Bool)

(assert (=> b!7184845 (= e!4314808 tp!1994869)))

(assert (= (and b!7183945 ((_ is ElementMatch!18349) (regTwo!37211 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184843))

(assert (= (and b!7183945 ((_ is Concat!27194) (regTwo!37211 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184844))

(assert (= (and b!7183945 ((_ is Star!18349) (regTwo!37211 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184845))

(assert (= (and b!7183945 ((_ is Union!18349) (regTwo!37211 (regTwo!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184846))

(declare-fun b!7184847 () Bool)

(declare-fun e!4314809 () Bool)

(assert (=> b!7184847 (= e!4314809 tp_is_empty!46259)))

(declare-fun b!7184848 () Bool)

(declare-fun tp!1994878 () Bool)

(declare-fun tp!1994875 () Bool)

(assert (=> b!7184848 (= e!4314809 (and tp!1994878 tp!1994875))))

(assert (=> b!7183949 (= tp!1994446 e!4314809)))

(declare-fun b!7184850 () Bool)

(declare-fun tp!1994877 () Bool)

(declare-fun tp!1994876 () Bool)

(assert (=> b!7184850 (= e!4314809 (and tp!1994877 tp!1994876))))

(declare-fun b!7184849 () Bool)

(declare-fun tp!1994874 () Bool)

(assert (=> b!7184849 (= e!4314809 tp!1994874)))

(assert (= (and b!7183949 ((_ is ElementMatch!18349) (regOne!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184847))

(assert (= (and b!7183949 ((_ is Concat!27194) (regOne!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184848))

(assert (= (and b!7183949 ((_ is Star!18349) (regOne!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184849))

(assert (= (and b!7183949 ((_ is Union!18349) (regOne!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184850))

(declare-fun b!7184851 () Bool)

(declare-fun e!4314810 () Bool)

(assert (=> b!7184851 (= e!4314810 tp_is_empty!46259)))

(declare-fun b!7184852 () Bool)

(declare-fun tp!1994883 () Bool)

(declare-fun tp!1994880 () Bool)

(assert (=> b!7184852 (= e!4314810 (and tp!1994883 tp!1994880))))

(assert (=> b!7183949 (= tp!1994445 e!4314810)))

(declare-fun b!7184854 () Bool)

(declare-fun tp!1994882 () Bool)

(declare-fun tp!1994881 () Bool)

(assert (=> b!7184854 (= e!4314810 (and tp!1994882 tp!1994881))))

(declare-fun b!7184853 () Bool)

(declare-fun tp!1994879 () Bool)

(assert (=> b!7184853 (= e!4314810 tp!1994879)))

(assert (= (and b!7183949 ((_ is ElementMatch!18349) (regTwo!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184851))

(assert (= (and b!7183949 ((_ is Concat!27194) (regTwo!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184852))

(assert (= (and b!7183949 ((_ is Star!18349) (regTwo!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184853))

(assert (= (and b!7183949 ((_ is Union!18349) (regTwo!37211 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184854))

(declare-fun b!7184855 () Bool)

(declare-fun e!4314811 () Bool)

(assert (=> b!7184855 (= e!4314811 tp_is_empty!46259)))

(declare-fun b!7184856 () Bool)

(declare-fun tp!1994888 () Bool)

(declare-fun tp!1994885 () Bool)

(assert (=> b!7184856 (= e!4314811 (and tp!1994888 tp!1994885))))

(assert (=> b!7183955 (= tp!1994455 e!4314811)))

(declare-fun b!7184858 () Bool)

(declare-fun tp!1994887 () Bool)

(declare-fun tp!1994886 () Bool)

(assert (=> b!7184858 (= e!4314811 (and tp!1994887 tp!1994886))))

(declare-fun b!7184857 () Bool)

(declare-fun tp!1994884 () Bool)

(assert (=> b!7184857 (= e!4314811 tp!1994884)))

(assert (= (and b!7183955 ((_ is ElementMatch!18349) (h!76101 (t!383798 (exprs!7801 setElem!53137))))) b!7184855))

(assert (= (and b!7183955 ((_ is Concat!27194) (h!76101 (t!383798 (exprs!7801 setElem!53137))))) b!7184856))

(assert (= (and b!7183955 ((_ is Star!18349) (h!76101 (t!383798 (exprs!7801 setElem!53137))))) b!7184857))

(assert (= (and b!7183955 ((_ is Union!18349) (h!76101 (t!383798 (exprs!7801 setElem!53137))))) b!7184858))

(declare-fun b!7184859 () Bool)

(declare-fun e!4314812 () Bool)

(declare-fun tp!1994889 () Bool)

(declare-fun tp!1994890 () Bool)

(assert (=> b!7184859 (= e!4314812 (and tp!1994889 tp!1994890))))

(assert (=> b!7183955 (= tp!1994456 e!4314812)))

(assert (= (and b!7183955 ((_ is Cons!69653) (t!383798 (t!383798 (exprs!7801 setElem!53137))))) b!7184859))

(declare-fun b!7184860 () Bool)

(declare-fun e!4314813 () Bool)

(assert (=> b!7184860 (= e!4314813 tp_is_empty!46259)))

(declare-fun b!7184861 () Bool)

(declare-fun tp!1994895 () Bool)

(declare-fun tp!1994892 () Bool)

(assert (=> b!7184861 (= e!4314813 (and tp!1994895 tp!1994892))))

(assert (=> b!7183947 (= tp!1994447 e!4314813)))

(declare-fun b!7184863 () Bool)

(declare-fun tp!1994894 () Bool)

(declare-fun tp!1994893 () Bool)

(assert (=> b!7184863 (= e!4314813 (and tp!1994894 tp!1994893))))

(declare-fun b!7184862 () Bool)

(declare-fun tp!1994891 () Bool)

(assert (=> b!7184862 (= e!4314813 tp!1994891)))

(assert (= (and b!7183947 ((_ is ElementMatch!18349) (regOne!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184860))

(assert (= (and b!7183947 ((_ is Concat!27194) (regOne!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184861))

(assert (= (and b!7183947 ((_ is Star!18349) (regOne!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184862))

(assert (= (and b!7183947 ((_ is Union!18349) (regOne!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184863))

(declare-fun b!7184864 () Bool)

(declare-fun e!4314814 () Bool)

(assert (=> b!7184864 (= e!4314814 tp_is_empty!46259)))

(declare-fun b!7184865 () Bool)

(declare-fun tp!1994900 () Bool)

(declare-fun tp!1994897 () Bool)

(assert (=> b!7184865 (= e!4314814 (and tp!1994900 tp!1994897))))

(assert (=> b!7183947 (= tp!1994444 e!4314814)))

(declare-fun b!7184867 () Bool)

(declare-fun tp!1994899 () Bool)

(declare-fun tp!1994898 () Bool)

(assert (=> b!7184867 (= e!4314814 (and tp!1994899 tp!1994898))))

(declare-fun b!7184866 () Bool)

(declare-fun tp!1994896 () Bool)

(assert (=> b!7184866 (= e!4314814 tp!1994896)))

(assert (= (and b!7183947 ((_ is ElementMatch!18349) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184864))

(assert (= (and b!7183947 ((_ is Concat!27194) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184865))

(assert (= (and b!7183947 ((_ is Star!18349) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184866))

(assert (= (and b!7183947 ((_ is Union!18349) (regTwo!37210 (h!76101 (t!383798 (exprs!7801 setElem!53131)))))) b!7184867))

(declare-fun b!7184868 () Bool)

(declare-fun e!4314815 () Bool)

(assert (=> b!7184868 (= e!4314815 tp_is_empty!46259)))

(declare-fun b!7184869 () Bool)

(declare-fun tp!1994905 () Bool)

(declare-fun tp!1994902 () Bool)

(assert (=> b!7184869 (= e!4314815 (and tp!1994905 tp!1994902))))

(assert (=> b!7183916 (= tp!1994404 e!4314815)))

(declare-fun b!7184871 () Bool)

(declare-fun tp!1994904 () Bool)

(declare-fun tp!1994903 () Bool)

(assert (=> b!7184871 (= e!4314815 (and tp!1994904 tp!1994903))))

(declare-fun b!7184870 () Bool)

(declare-fun tp!1994901 () Bool)

(assert (=> b!7184870 (= e!4314815 tp!1994901)))

(assert (= (and b!7183916 ((_ is ElementMatch!18349) (regOne!37211 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184868))

(assert (= (and b!7183916 ((_ is Concat!27194) (regOne!37211 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184869))

(assert (= (and b!7183916 ((_ is Star!18349) (regOne!37211 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184870))

(assert (= (and b!7183916 ((_ is Union!18349) (regOne!37211 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184871))

(declare-fun b!7184872 () Bool)

(declare-fun e!4314816 () Bool)

(assert (=> b!7184872 (= e!4314816 tp_is_empty!46259)))

(declare-fun b!7184873 () Bool)

(declare-fun tp!1994910 () Bool)

(declare-fun tp!1994907 () Bool)

(assert (=> b!7184873 (= e!4314816 (and tp!1994910 tp!1994907))))

(assert (=> b!7183916 (= tp!1994403 e!4314816)))

(declare-fun b!7184875 () Bool)

(declare-fun tp!1994909 () Bool)

(declare-fun tp!1994908 () Bool)

(assert (=> b!7184875 (= e!4314816 (and tp!1994909 tp!1994908))))

(declare-fun b!7184874 () Bool)

(declare-fun tp!1994906 () Bool)

(assert (=> b!7184874 (= e!4314816 tp!1994906)))

(assert (= (and b!7183916 ((_ is ElementMatch!18349) (regTwo!37211 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184872))

(assert (= (and b!7183916 ((_ is Concat!27194) (regTwo!37211 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184873))

(assert (= (and b!7183916 ((_ is Star!18349) (regTwo!37211 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184874))

(assert (= (and b!7183916 ((_ is Union!18349) (regTwo!37211 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184875))

(declare-fun b!7184876 () Bool)

(declare-fun e!4314817 () Bool)

(assert (=> b!7184876 (= e!4314817 tp_is_empty!46259)))

(declare-fun b!7184877 () Bool)

(declare-fun tp!1994915 () Bool)

(declare-fun tp!1994912 () Bool)

(assert (=> b!7184877 (= e!4314817 (and tp!1994915 tp!1994912))))

(assert (=> b!7183884 (= tp!1994371 e!4314817)))

(declare-fun b!7184879 () Bool)

(declare-fun tp!1994914 () Bool)

(declare-fun tp!1994913 () Bool)

(assert (=> b!7184879 (= e!4314817 (and tp!1994914 tp!1994913))))

(declare-fun b!7184878 () Bool)

(declare-fun tp!1994911 () Bool)

(assert (=> b!7184878 (= e!4314817 tp!1994911)))

(assert (= (and b!7183884 ((_ is ElementMatch!18349) (regOne!37211 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184876))

(assert (= (and b!7183884 ((_ is Concat!27194) (regOne!37211 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184877))

(assert (= (and b!7183884 ((_ is Star!18349) (regOne!37211 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184878))

(assert (= (and b!7183884 ((_ is Union!18349) (regOne!37211 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184879))

(declare-fun b!7184880 () Bool)

(declare-fun e!4314818 () Bool)

(assert (=> b!7184880 (= e!4314818 tp_is_empty!46259)))

(declare-fun b!7184881 () Bool)

(declare-fun tp!1994920 () Bool)

(declare-fun tp!1994917 () Bool)

(assert (=> b!7184881 (= e!4314818 (and tp!1994920 tp!1994917))))

(assert (=> b!7183884 (= tp!1994370 e!4314818)))

(declare-fun b!7184883 () Bool)

(declare-fun tp!1994919 () Bool)

(declare-fun tp!1994918 () Bool)

(assert (=> b!7184883 (= e!4314818 (and tp!1994919 tp!1994918))))

(declare-fun b!7184882 () Bool)

(declare-fun tp!1994916 () Bool)

(assert (=> b!7184882 (= e!4314818 tp!1994916)))

(assert (= (and b!7183884 ((_ is ElementMatch!18349) (regTwo!37211 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184880))

(assert (= (and b!7183884 ((_ is Concat!27194) (regTwo!37211 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184881))

(assert (= (and b!7183884 ((_ is Star!18349) (regTwo!37211 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184882))

(assert (= (and b!7183884 ((_ is Union!18349) (regTwo!37211 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184883))

(declare-fun b!7184884 () Bool)

(declare-fun e!4314819 () Bool)

(assert (=> b!7184884 (= e!4314819 tp_is_empty!46259)))

(declare-fun b!7184885 () Bool)

(declare-fun tp!1994925 () Bool)

(declare-fun tp!1994922 () Bool)

(assert (=> b!7184885 (= e!4314819 (and tp!1994925 tp!1994922))))

(assert (=> b!7183931 (= tp!1994423 e!4314819)))

(declare-fun b!7184887 () Bool)

(declare-fun tp!1994924 () Bool)

(declare-fun tp!1994923 () Bool)

(assert (=> b!7184887 (= e!4314819 (and tp!1994924 tp!1994923))))

(declare-fun b!7184886 () Bool)

(declare-fun tp!1994921 () Bool)

(assert (=> b!7184886 (= e!4314819 tp!1994921)))

(assert (= (and b!7183931 ((_ is ElementMatch!18349) (regOne!37211 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184884))

(assert (= (and b!7183931 ((_ is Concat!27194) (regOne!37211 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184885))

(assert (= (and b!7183931 ((_ is Star!18349) (regOne!37211 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184886))

(assert (= (and b!7183931 ((_ is Union!18349) (regOne!37211 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184887))

(declare-fun b!7184888 () Bool)

(declare-fun e!4314820 () Bool)

(assert (=> b!7184888 (= e!4314820 tp_is_empty!46259)))

(declare-fun b!7184889 () Bool)

(declare-fun tp!1994930 () Bool)

(declare-fun tp!1994927 () Bool)

(assert (=> b!7184889 (= e!4314820 (and tp!1994930 tp!1994927))))

(assert (=> b!7183931 (= tp!1994422 e!4314820)))

(declare-fun b!7184891 () Bool)

(declare-fun tp!1994929 () Bool)

(declare-fun tp!1994928 () Bool)

(assert (=> b!7184891 (= e!4314820 (and tp!1994929 tp!1994928))))

(declare-fun b!7184890 () Bool)

(declare-fun tp!1994926 () Bool)

(assert (=> b!7184890 (= e!4314820 tp!1994926)))

(assert (= (and b!7183931 ((_ is ElementMatch!18349) (regTwo!37211 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184888))

(assert (= (and b!7183931 ((_ is Concat!27194) (regTwo!37211 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184889))

(assert (= (and b!7183931 ((_ is Star!18349) (regTwo!37211 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184890))

(assert (= (and b!7183931 ((_ is Union!18349) (regTwo!37211 (regTwo!37211 (h!76101 (exprs!7801 setElem!53131)))))) b!7184891))

(declare-fun b!7184892 () Bool)

(declare-fun e!4314821 () Bool)

(assert (=> b!7184892 (= e!4314821 tp_is_empty!46259)))

(declare-fun b!7184893 () Bool)

(declare-fun tp!1994935 () Bool)

(declare-fun tp!1994932 () Bool)

(assert (=> b!7184893 (= e!4314821 (and tp!1994935 tp!1994932))))

(assert (=> b!7183940 (= tp!1994433 e!4314821)))

(declare-fun b!7184895 () Bool)

(declare-fun tp!1994934 () Bool)

(declare-fun tp!1994933 () Bool)

(assert (=> b!7184895 (= e!4314821 (and tp!1994934 tp!1994933))))

(declare-fun b!7184894 () Bool)

(declare-fun tp!1994931 () Bool)

(assert (=> b!7184894 (= e!4314821 tp!1994931)))

(assert (= (and b!7183940 ((_ is ElementMatch!18349) (reg!18678 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184892))

(assert (= (and b!7183940 ((_ is Concat!27194) (reg!18678 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184893))

(assert (= (and b!7183940 ((_ is Star!18349) (reg!18678 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184894))

(assert (= (and b!7183940 ((_ is Union!18349) (reg!18678 (regOne!37210 (h!76101 (exprs!7801 empty!2967)))))) b!7184895))

(declare-fun b!7184896 () Bool)

(declare-fun e!4314822 () Bool)

(assert (=> b!7184896 (= e!4314822 tp_is_empty!46259)))

(declare-fun b!7184897 () Bool)

(declare-fun tp!1994940 () Bool)

(declare-fun tp!1994937 () Bool)

(assert (=> b!7184897 (= e!4314822 (and tp!1994940 tp!1994937))))

(assert (=> b!7183914 (= tp!1994405 e!4314822)))

(declare-fun b!7184899 () Bool)

(declare-fun tp!1994939 () Bool)

(declare-fun tp!1994938 () Bool)

(assert (=> b!7184899 (= e!4314822 (and tp!1994939 tp!1994938))))

(declare-fun b!7184898 () Bool)

(declare-fun tp!1994936 () Bool)

(assert (=> b!7184898 (= e!4314822 tp!1994936)))

(assert (= (and b!7183914 ((_ is ElementMatch!18349) (regOne!37210 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184896))

(assert (= (and b!7183914 ((_ is Concat!27194) (regOne!37210 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184897))

(assert (= (and b!7183914 ((_ is Star!18349) (regOne!37210 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184898))

(assert (= (and b!7183914 ((_ is Union!18349) (regOne!37210 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184899))

(declare-fun b!7184900 () Bool)

(declare-fun e!4314823 () Bool)

(assert (=> b!7184900 (= e!4314823 tp_is_empty!46259)))

(declare-fun b!7184901 () Bool)

(declare-fun tp!1994945 () Bool)

(declare-fun tp!1994942 () Bool)

(assert (=> b!7184901 (= e!4314823 (and tp!1994945 tp!1994942))))

(assert (=> b!7183914 (= tp!1994402 e!4314823)))

(declare-fun b!7184903 () Bool)

(declare-fun tp!1994944 () Bool)

(declare-fun tp!1994943 () Bool)

(assert (=> b!7184903 (= e!4314823 (and tp!1994944 tp!1994943))))

(declare-fun b!7184902 () Bool)

(declare-fun tp!1994941 () Bool)

(assert (=> b!7184902 (= e!4314823 tp!1994941)))

(assert (= (and b!7183914 ((_ is ElementMatch!18349) (regTwo!37210 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184900))

(assert (= (and b!7183914 ((_ is Concat!27194) (regTwo!37210 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184901))

(assert (= (and b!7183914 ((_ is Star!18349) (regTwo!37210 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184902))

(assert (= (and b!7183914 ((_ is Union!18349) (regTwo!37210 (reg!18678 (h!76101 (exprs!7801 setElem!53131)))))) b!7184903))

(declare-fun b!7184904 () Bool)

(declare-fun e!4314824 () Bool)

(assert (=> b!7184904 (= e!4314824 tp_is_empty!46259)))

(declare-fun b!7184905 () Bool)

(declare-fun tp!1994950 () Bool)

(declare-fun tp!1994947 () Bool)

(assert (=> b!7184905 (= e!4314824 (and tp!1994950 tp!1994947))))

(assert (=> b!7183954 (= tp!1994453 e!4314824)))

(declare-fun b!7184907 () Bool)

(declare-fun tp!1994949 () Bool)

(declare-fun tp!1994948 () Bool)

(assert (=> b!7184907 (= e!4314824 (and tp!1994949 tp!1994948))))

(declare-fun b!7184906 () Bool)

(declare-fun tp!1994946 () Bool)

(assert (=> b!7184906 (= e!4314824 tp!1994946)))

(assert (= (and b!7183954 ((_ is ElementMatch!18349) (regOne!37211 (h!76101 (exprs!7801 setElem!53137))))) b!7184904))

(assert (= (and b!7183954 ((_ is Concat!27194) (regOne!37211 (h!76101 (exprs!7801 setElem!53137))))) b!7184905))

(assert (= (and b!7183954 ((_ is Star!18349) (regOne!37211 (h!76101 (exprs!7801 setElem!53137))))) b!7184906))

(assert (= (and b!7183954 ((_ is Union!18349) (regOne!37211 (h!76101 (exprs!7801 setElem!53137))))) b!7184907))

(declare-fun b!7184908 () Bool)

(declare-fun e!4314825 () Bool)

(assert (=> b!7184908 (= e!4314825 tp_is_empty!46259)))

(declare-fun b!7184909 () Bool)

(declare-fun tp!1994955 () Bool)

(declare-fun tp!1994952 () Bool)

(assert (=> b!7184909 (= e!4314825 (and tp!1994955 tp!1994952))))

(assert (=> b!7183954 (= tp!1994452 e!4314825)))

(declare-fun b!7184911 () Bool)

(declare-fun tp!1994954 () Bool)

(declare-fun tp!1994953 () Bool)

(assert (=> b!7184911 (= e!4314825 (and tp!1994954 tp!1994953))))

(declare-fun b!7184910 () Bool)

(declare-fun tp!1994951 () Bool)

(assert (=> b!7184910 (= e!4314825 tp!1994951)))

(assert (= (and b!7183954 ((_ is ElementMatch!18349) (regTwo!37211 (h!76101 (exprs!7801 setElem!53137))))) b!7184908))

(assert (= (and b!7183954 ((_ is Concat!27194) (regTwo!37211 (h!76101 (exprs!7801 setElem!53137))))) b!7184909))

(assert (= (and b!7183954 ((_ is Star!18349) (regTwo!37211 (h!76101 (exprs!7801 setElem!53137))))) b!7184910))

(assert (= (and b!7183954 ((_ is Union!18349) (regTwo!37211 (h!76101 (exprs!7801 setElem!53137))))) b!7184911))

(declare-fun b!7184912 () Bool)

(declare-fun e!4314826 () Bool)

(assert (=> b!7184912 (= e!4314826 tp_is_empty!46259)))

(declare-fun b!7184913 () Bool)

(declare-fun tp!1994960 () Bool)

(declare-fun tp!1994957 () Bool)

(assert (=> b!7184913 (= e!4314826 (and tp!1994960 tp!1994957))))

(assert (=> b!7183882 (= tp!1994372 e!4314826)))

(declare-fun b!7184915 () Bool)

(declare-fun tp!1994959 () Bool)

(declare-fun tp!1994958 () Bool)

(assert (=> b!7184915 (= e!4314826 (and tp!1994959 tp!1994958))))

(declare-fun b!7184914 () Bool)

(declare-fun tp!1994956 () Bool)

(assert (=> b!7184914 (= e!4314826 tp!1994956)))

(assert (= (and b!7183882 ((_ is ElementMatch!18349) (regOne!37210 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184912))

(assert (= (and b!7183882 ((_ is Concat!27194) (regOne!37210 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184913))

(assert (= (and b!7183882 ((_ is Star!18349) (regOne!37210 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184914))

(assert (= (and b!7183882 ((_ is Union!18349) (regOne!37210 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184915))

(declare-fun b!7184916 () Bool)

(declare-fun e!4314827 () Bool)

(assert (=> b!7184916 (= e!4314827 tp_is_empty!46259)))

(declare-fun b!7184917 () Bool)

(declare-fun tp!1994965 () Bool)

(declare-fun tp!1994962 () Bool)

(assert (=> b!7184917 (= e!4314827 (and tp!1994965 tp!1994962))))

(assert (=> b!7183882 (= tp!1994369 e!4314827)))

(declare-fun b!7184919 () Bool)

(declare-fun tp!1994964 () Bool)

(declare-fun tp!1994963 () Bool)

(assert (=> b!7184919 (= e!4314827 (and tp!1994964 tp!1994963))))

(declare-fun b!7184918 () Bool)

(declare-fun tp!1994961 () Bool)

(assert (=> b!7184918 (= e!4314827 tp!1994961)))

(assert (= (and b!7183882 ((_ is ElementMatch!18349) (regTwo!37210 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184916))

(assert (= (and b!7183882 ((_ is Concat!27194) (regTwo!37210 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184917))

(assert (= (and b!7183882 ((_ is Star!18349) (regTwo!37210 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184918))

(assert (= (and b!7183882 ((_ is Union!18349) (regTwo!37210 (regOne!37211 (h!76101 (exprs!7801 empty!2967)))))) b!7184919))

(declare-fun b_lambda!275085 () Bool)

(assert (= b_lambda!275069 (or d!2237509 b_lambda!275085)))

(declare-fun bs!1897552 () Bool)

(declare-fun d!2238023 () Bool)

(assert (= bs!1897552 (and d!2238023 d!2237509)))

(assert (=> bs!1897552 (= (dynLambda!28369 lambda!437565 (h!76101 (t!383798 lt!2570826))) (validRegex!9468 (h!76101 (t!383798 lt!2570826))))))

(declare-fun m!7881890 () Bool)

(assert (=> bs!1897552 m!7881890))

(assert (=> b!7184407 d!2238023))

(declare-fun b_lambda!275087 () Bool)

(assert (= b_lambda!275061 (or d!2237479 b_lambda!275087)))

(declare-fun bs!1897553 () Bool)

(declare-fun d!2238025 () Bool)

(assert (= bs!1897553 (and d!2238025 d!2237479)))

(assert (=> bs!1897553 (= (dynLambda!28370 lambda!437549 (h!76103 (t!383800 (toList!11292 z!3530)))) (not (dynLambda!28370 lambda!437513 (h!76103 (t!383800 (toList!11292 z!3530))))))))

(declare-fun b_lambda!275121 () Bool)

(assert (=> (not b_lambda!275121) (not bs!1897553)))

(declare-fun m!7881892 () Bool)

(assert (=> bs!1897553 m!7881892))

(assert (=> b!7184322 d!2238025))

(declare-fun b_lambda!275089 () Bool)

(assert (= b_lambda!275065 (or d!2237569 b_lambda!275089)))

(declare-fun bs!1897554 () Bool)

(declare-fun d!2238027 () Bool)

(assert (= bs!1897554 (and d!2238027 d!2237569)))

(assert (=> bs!1897554 (= (dynLambda!28369 lambda!437569 (h!76101 (exprs!7801 setElem!53140))) (validRegex!9468 (h!76101 (exprs!7801 setElem!53140))))))

(declare-fun m!7881894 () Bool)

(assert (=> bs!1897554 m!7881894))

(assert (=> b!7184359 d!2238027))

(declare-fun b_lambda!275091 () Bool)

(assert (= b_lambda!275049 (or d!2237593 b_lambda!275091)))

(declare-fun bs!1897555 () Bool)

(declare-fun d!2238029 () Bool)

(assert (= bs!1897555 (and d!2238029 d!2237593)))

(assert (=> bs!1897555 (= (dynLambda!28369 lambda!437575 (h!76101 lt!2570832)) (validRegex!9468 (h!76101 lt!2570832)))))

(declare-fun m!7881896 () Bool)

(assert (=> bs!1897555 m!7881896))

(assert (=> b!7184212 d!2238029))

(declare-fun b_lambda!275093 () Bool)

(assert (= b_lambda!275053 (or d!2237637 b_lambda!275093)))

(declare-fun bs!1897556 () Bool)

(declare-fun d!2238031 () Bool)

(assert (= bs!1897556 (and d!2238031 d!2237637)))

(assert (=> bs!1897556 (= (dynLambda!28369 lambda!437581 (h!76101 (exprs!7801 setElem!53145))) (validRegex!9468 (h!76101 (exprs!7801 setElem!53145))))))

(declare-fun m!7881898 () Bool)

(assert (=> bs!1897556 m!7881898))

(assert (=> b!7184235 d!2238031))

(declare-fun b_lambda!275095 () Bool)

(assert (= b_lambda!275063 (or d!2237583 b_lambda!275095)))

(declare-fun bs!1897557 () Bool)

(declare-fun d!2238033 () Bool)

(assert (= bs!1897557 (and d!2238033 d!2237583)))

(assert (=> bs!1897557 (= (dynLambda!28370 lambda!437571 (h!76103 (toList!11292 z!3530))) (not (dynLambda!28370 lambda!437525 (h!76103 (toList!11292 z!3530)))))))

(declare-fun b_lambda!275123 () Bool)

(assert (=> (not b_lambda!275123) (not bs!1897557)))

(declare-fun m!7881900 () Bool)

(assert (=> bs!1897557 m!7881900))

(assert (=> b!7184344 d!2238033))

(declare-fun b_lambda!275097 () Bool)

(assert (= b_lambda!275051 (or d!2237379 b_lambda!275097)))

(declare-fun bs!1897558 () Bool)

(declare-fun d!2238035 () Bool)

(assert (= bs!1897558 (and d!2238035 d!2237379)))

(assert (=> bs!1897558 (= (dynLambda!28369 lambda!437531 (h!76101 (t!383798 (t!383798 (exprs!7801 empty!2967))))) (validRegex!9468 (h!76101 (t!383798 (t!383798 (exprs!7801 empty!2967))))))))

(declare-fun m!7881902 () Bool)

(assert (=> bs!1897558 m!7881902))

(assert (=> b!7184223 d!2238035))

(declare-fun b_lambda!275099 () Bool)

(assert (= b_lambda!275077 (or d!2237577 b_lambda!275099)))

(declare-fun bs!1897559 () Bool)

(declare-fun d!2238037 () Bool)

(assert (= bs!1897559 (and d!2238037 d!2237577)))

(assert (=> bs!1897559 (= (dynLambda!28369 lambda!437570 (h!76101 (exprs!7801 _$3!480))) (validRegex!9468 (h!76101 (exprs!7801 _$3!480))))))

(declare-fun m!7881904 () Bool)

(assert (=> bs!1897559 m!7881904))

(assert (=> b!7184494 d!2238037))

(declare-fun b_lambda!275101 () Bool)

(assert (= b_lambda!275075 (or d!2237605 b_lambda!275101)))

(declare-fun bs!1897560 () Bool)

(declare-fun d!2238039 () Bool)

(assert (= bs!1897560 (and d!2238039 d!2237605)))

(assert (=> bs!1897560 (= (dynLambda!28369 lambda!437578 (h!76101 lt!2570834)) (validRegex!9468 (h!76101 lt!2570834)))))

(declare-fun m!7881906 () Bool)

(assert (=> bs!1897560 m!7881906))

(assert (=> b!7184481 d!2238039))

(declare-fun b_lambda!275103 () Bool)

(assert (= b_lambda!275081 (or d!2237403 b_lambda!275103)))

(declare-fun bs!1897561 () Bool)

(declare-fun d!2238041 () Bool)

(assert (= bs!1897561 (and d!2238041 d!2237403)))

(assert (=> bs!1897561 (= (dynLambda!28369 lambda!437536 (h!76101 (t!383798 (t!383798 (exprs!7801 lt!2570780))))) (nullable!7776 (h!76101 (t!383798 (t!383798 (exprs!7801 lt!2570780))))))))

(declare-fun m!7881908 () Bool)

(assert (=> bs!1897561 m!7881908))

(assert (=> b!7184559 d!2238041))

(declare-fun b_lambda!275105 () Bool)

(assert (= b_lambda!275067 (or d!2237395 b_lambda!275105)))

(declare-fun bs!1897562 () Bool)

(declare-fun d!2238043 () Bool)

(assert (= bs!1897562 (and d!2238043 d!2237395)))

(assert (=> bs!1897562 (= (dynLambda!28369 lambda!437532 (h!76101 (t!383798 (t!383798 (exprs!7801 setElem!53131))))) (validRegex!9468 (h!76101 (t!383798 (t!383798 (exprs!7801 setElem!53131))))))))

(declare-fun m!7881910 () Bool)

(assert (=> bs!1897562 m!7881910))

(assert (=> b!7184383 d!2238043))

(declare-fun b_lambda!275107 () Bool)

(assert (= b_lambda!275057 (or d!2237551 b_lambda!275107)))

(declare-fun bs!1897563 () Bool)

(declare-fun d!2238045 () Bool)

(assert (= bs!1897563 (and d!2238045 d!2237551)))

(assert (=> bs!1897563 (= (dynLambda!28369 lambda!437567 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))) (validRegex!9468 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(declare-fun m!7881912 () Bool)

(assert (=> bs!1897563 m!7881912))

(assert (=> b!7184282 d!2238045))

(declare-fun b_lambda!275109 () Bool)

(assert (= b_lambda!275071 (or d!2237555 b_lambda!275109)))

(declare-fun bs!1897564 () Bool)

(declare-fun d!2238047 () Bool)

(assert (= bs!1897564 (and d!2238047 d!2237555)))

(assert (=> bs!1897564 (= (dynLambda!28369 lambda!437568 (h!76101 (exprs!7801 (h!76103 res!2925518)))) (validRegex!9468 (h!76101 (exprs!7801 (h!76103 res!2925518)))))))

(declare-fun m!7881914 () Bool)

(assert (=> bs!1897564 m!7881914))

(assert (=> b!7184418 d!2238047))

(declare-fun b_lambda!275111 () Bool)

(assert (= b_lambda!275079 (or d!2237533 b_lambda!275111)))

(declare-fun bs!1897565 () Bool)

(declare-fun d!2238049 () Bool)

(assert (= bs!1897565 (and d!2238049 d!2237533)))

(assert (=> bs!1897565 (= (dynLambda!28369 lambda!437566 (h!76101 (exprs!7801 (h!76103 res!2925525)))) (validRegex!9468 (h!76101 (exprs!7801 (h!76103 res!2925525)))))))

(declare-fun m!7881916 () Bool)

(assert (=> bs!1897565 m!7881916))

(assert (=> b!7184521 d!2238049))

(declare-fun b_lambda!275113 () Bool)

(assert (= b_lambda!275055 (or d!2237591 b_lambda!275113)))

(declare-fun bs!1897566 () Bool)

(declare-fun d!2238051 () Bool)

(assert (= bs!1897566 (and d!2238051 d!2237591)))

(assert (=> bs!1897566 (= (dynLambda!28369 lambda!437574 (h!76101 (exprs!7801 (h!76103 (toList!11292 z!3530))))) (validRegex!9468 (h!76101 (exprs!7801 (h!76103 (toList!11292 z!3530))))))))

(declare-fun m!7881918 () Bool)

(assert (=> bs!1897566 m!7881918))

(assert (=> b!7184271 d!2238051))

(declare-fun b_lambda!275115 () Bool)

(assert (= b_lambda!275047 (or d!2237597 b_lambda!275115)))

(declare-fun bs!1897567 () Bool)

(declare-fun d!2238053 () Bool)

(assert (= bs!1897567 (and d!2238053 d!2237597)))

(assert (=> bs!1897567 (= (dynLambda!28369 lambda!437576 (h!76101 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))) (validRegex!9468 (h!76101 (unfocusZipperList!2327 (toList!11292 (store ((as const (Array Context!14602 Bool)) false) (Context!14603 (Cons!69653 EmptyExpr!18349 Nil!69653)) true))))))))

(declare-fun m!7881920 () Bool)

(assert (=> bs!1897567 m!7881920))

(assert (=> b!7184199 d!2238053))

(declare-fun b_lambda!275117 () Bool)

(assert (= b_lambda!275073 (or d!2237493 b_lambda!275117)))

(declare-fun bs!1897568 () Bool)

(declare-fun d!2238055 () Bool)

(assert (= bs!1897568 (and d!2238055 d!2237493)))

(assert (=> bs!1897568 (= (dynLambda!28369 lambda!437561 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))) (validRegex!9468 (h!76101 (t!383798 (unfocusZipperList!2327 (toList!11292 z!3530))))))))

(assert (=> bs!1897568 m!7881912))

(assert (=> b!7184439 d!2238055))

(declare-fun b_lambda!275119 () Bool)

(assert (= b_lambda!275083 (or d!2237477 b_lambda!275119)))

(declare-fun bs!1897569 () Bool)

(declare-fun d!2238057 () Bool)

(assert (= bs!1897569 (and d!2238057 d!2237477)))

(assert (=> bs!1897569 (= (dynLambda!28369 lambda!437546 (h!76101 (t!383798 (exprs!7801 setElem!53137)))) (validRegex!9468 (h!76101 (t!383798 (exprs!7801 setElem!53137)))))))

(declare-fun m!7881922 () Bool)

(assert (=> bs!1897569 m!7881922))

(assert (=> b!7184570 d!2238057))

(check-sat (not b!7184327) (not b!7184836) (not bm!654877) (not b!7184541) (not b!7184692) (not bm!654964) (not bm!654890) (not bm!654940) (not b!7184470) (not d!2237847) (not bm!654913) (not b!7184786) (not b!7184670) (not d!2237953) (not bm!654955) (not b!7184674) (not b!7184622) (not b!7184905) (not b!7184785) (not bs!1897561) (not b_lambda!275005) (not d!2237969) (not b!7184914) (not bm!654914) (not b!7184809) (not b_lambda!275011) (not b!7184886) (not b!7184607) (not bm!654909) (not b_lambda!275085) (not d!2237967) tp_is_empty!46259 (not b!7184894) (not b!7184704) (not bm!654928) (not d!2237805) (not b!7184705) (not bm!654920) (not b_lambda!275117) (not b!7184234) (not b!7184640) (not bm!654943) (not b!7184694) (not d!2238015) (not b!7184719) (not b!7184845) (not b!7184867) (not b_lambda!274981) (not b!7184798) (not b!7184755) (not b!7184514) (not bm!654956) (not b!7184660) (not b!7184814) (not b!7184647) (not bs!1897552) (not b!7184850) (not bm!654868) (not b!7184535) (not d!2237781) (not b!7184844) (not b!7184771) (not b!7184544) (not bm!654872) (not b!7184764) (not b!7184833) (not b!7184787) (not b!7184420) (not b!7184636) (not b!7184611) (not b!7184427) (not b!7184623) (not bm!654961) (not b!7184617) (not b!7184706) (not b!7184763) (not b_lambda!274999) (not b!7184362) (not b!7184656) (not d!2238011) (not b!7184669) (not b!7184406) (not b!7184869) (not b!7184236) (not b!7184480) (not b_lambda!275101) (not b!7184874) (not bm!654959) (not bm!654892) (not bm!654912) (not b!7184524) (not bm!654947) (not b!7184495) (not b!7184549) (not b!7184228) (not bs!1897569) (not b!7184467) (not b!7184863) (not b!7184618) (not b!7184738) (not b!7184689) (not b!7184723) (not bm!654874) (not b!7184569) (not d!2237811) (not bs!1897564) (not bm!654894) (not b!7184816) (not bs!1897562) (not b!7184881) (not bm!654937) (not b!7184779) (not b!7184272) (not b!7184708) (not b!7184429) (not b!7184887) (not b!7184588) (not b!7184591) (not b!7184862) (not bm!654875) (not b!7184371) (not b!7184773) (not b!7184684) (not b!7184602) (not bm!654963) (not b!7184509) (not b!7184688) (not b!7184586) (not b!7184854) (not b!7184917) (not b!7184827) (not b!7184231) (not b!7184859) (not b!7184658) (not b!7184865) (not b!7184810) (not b!7184870) (not b!7184819) (not b!7184790) (not b!7184597) (not bm!654925) (not b!7184310) (not b!7184789) (not b_lambda!275119) (not b!7184856) (not b!7184571) (not b!7184613) (not b!7184652) (not b!7184323) (not bm!654907) (not b!7184596) (not d!2237937) (not b!7184725) (not b_lambda!275009) (not b!7184662) (not b!7184743) (not b!7184713) (not b!7184215) (not b_lambda!275003) (not b!7184756) (not b!7184910) (not b!7184639) (not b!7184793) (not b!7184512) (not b!7184634) (not b!7184519) (not b!7184510) (not b!7184651) (not b!7184213) (not bs!1897556) (not b!7184227) (not bm!654938) (not b!7184895) (not bm!654944) (not b!7184624) (not b!7184857) (not b!7184772) (not b!7184471) (not b!7184803) (not b!7184806) (not bm!654953) (not b!7184866) (not b!7184491) (not b!7184252) (not d!2237911) (not b!7184516) (not b!7184347) (not b!7184444) (not bm!654901) (not b_lambda!275001) (not b!7184283) (not setNonEmpty!53154) (not bm!654899) (not bm!654933) (not b!7184612) (not b!7184829) (not b!7184712) (not bm!654900) (not b!7184852) (not b!7184610) (not b!7184909) (not b!7184681) (not b!7184508) (not b!7184795) (not b!7184685) (not bm!654895) (not b_lambda!275093) (not b_lambda!275095) (not b!7184878) (not b!7184676) (not d!2237859) (not b!7184901) (not b!7184655) (not b!7184522) (not bm!654919) (not b!7184745) (not b!7184906) (not b!7184709) (not bs!1897566) (not b!7184762) (not b!7184889) (not b!7184641) (not d!2237817) (not b!7184440) (not bm!654878) (not bm!654935) (not b!7184897) (not b!7184447) (not b!7184817) (not b!7184520) (not b!7184761) (not b!7184835) (not b!7184225) (not b!7184672) (not bm!654881) (not bm!654863) (not b!7184791) (not bm!654931) (not b!7184733) (not b!7184417) (not b!7184668) (not bs!1897558) (not b!7184482) (not b!7184349) (not b!7184548) (not b!7184885) (not b!7184907) (not b!7184846) (not b!7184594) (not bs!1897559) (not b!7184605) (not b_lambda!275109) (not b!7184797) (not b!7184767) (not b!7184426) (not b!7184783) (not b!7184871) (not d!2237791) (not b!7184807) (not b!7184577) (not b!7184630) (not b_lambda!275099) (not bm!654871) (not b!7184726) (not b!7184802) (not b!7184643) (not b!7184292) (not b_lambda!275113) (not b!7184189) (not b!7184737) (not b!7184913) (not b_lambda!275007) (not bm!654934) (not b!7184690) (not b!7184419) (not b!7184746) (not b!7184875) (not b!7184853) (not b!7184360) (not b!7184539) (not b!7184753) (not bs!1897554) (not b_lambda!275111) (not b!7184547) (not d!2237869) (not b_lambda!275045) (not b!7184903) (not b!7184606) (not b!7184198) (not b!7184632) (not b!7184858) (not bm!654946) (not d!2237947) (not b!7184722) (not b!7184384) (not b!7184425) (not b!7184891) (not b!7184665) (not b!7184619) (not b!7184841) (not b!7184734) (not d!2237879) (not b!7184680) (not b!7184408) (not b!7184693) (not d!2237989) (not bm!654910) (not b!7184587) (not bm!654884) (not b!7184538) (not b!7184386) (not b!7184423) (not b!7184666) (not bm!654927) (not b!7184533) (not b!7184752) (not b!7184558) (not b!7184644) (not b!7184840) (not b!7184898) (not bm!654869) (not d!2237963) (not b!7184838) (not bs!1897555) (not b!7184698) (not b!7184918) (not b!7184438) (not b!7184375) (not bs!1897563) (not bm!654906) (not b!7184710) (not b!7184842) (not bm!654870) (not bm!654968) (not b!7184714) (not d!2237807) (not b!7184890) (not bm!654864) (not b!7184824) (not b!7184200) (not b!7184915) (not b!7184882) (not b!7184442) (not b_lambda!275107) (not b!7184832) (not d!2237923) (not bm!654948) (not b!7184837) (not b!7184821) (not b!7184769) (not b!7184270) (not bm!654880) (not b!7184573) (not b!7184301) (not b!7184518) (not d!2237913) (not b!7184626) (not b!7184735) (not b!7184261) (not d!2238021) (not b!7184649) (not b!7184696) (not b!7184537) (not b!7184621) (not b!7184224) (not b!7184848) (not b!7184776) (not b!7184715) (not b!7184777) (not b!7184815) (not b!7184590) (not b!7184702) (not b!7184831) (not b!7184760) (not b!7184828) (not b!7184717) (not b!7184657) (not d!2237985) (not b!7184911) (not b!7184346) (not d!2237971) (not d!2237867) (not b!7184739) (not b!7184893) (not b!7184899) (not bm!654889) (not b_lambda!275105) (not bm!654883) (not b_lambda!275087) (not b!7184648) (not b!7184825) (not b!7184782) (not b!7184750) (not b!7184543) (not bs!1897565) (not b_lambda!275123) (not d!2237785) (not b!7184727) (not b!7184534) (not d!2238005) (not d!2237883) (not b!7184721) (not bs!1897568) (not b!7184358) (not b!7184230) (not b!7184731) (not d!2237893) (not b!7184281) (not b!7184314) (not b!7184757) (not bm!654886) (not b!7184778) (not b_lambda!275115) (not b!7184625) (not b!7184513) (not b!7184873) (not b!7184609) (not b!7184661) (not b!7184751) (not b!7184697) (not b!7184469) (not b!7184729) (not b!7184614) (not setNonEmpty!53152) (not b!7184343) (not b!7184345) (not b!7184678) (not b!7184560) (not b!7184653) (not bm!654905) (not b!7184877) (not b!7184572) (not b!7184812) (not b!7184600) (not b!7184883) (not b_lambda!275091) (not bm!654969) (not b!7184820) (not bm!654893) (not b!7184811) (not b_lambda!275121) (not b!7184458) (not bm!654930) (not b!7184456) (not b!7184879) (not bs!1897560) (not b!7184718) (not b!7184775) (not b!7184768) (not b!7184902) (not b!7184645) (not b!7184664) (not b!7184919) (not b!7184628) (not bm!654862) (not b!7184204) (not b!7184741) (not b!7184749) (not b!7184499) (not b!7184799) (not d!2237853) (not b!7184801) (not bm!654958) (not b!7184747) (not b!7184493) (not b_lambda!275097) (not d!2237987) (not b!7184700) (not b!7184701) (not b!7184781) (not b!7184686) (not b!7184759) (not b!7184673) (not b!7184742) (not b!7184631) (not bm!654861) (not b!7184390) (not b_lambda!275089) (not bm!654921) (not b!7184422) (not setNonEmpty!53153) (not b!7184615) (not b_lambda!274983) (not b!7184523) (not b!7184635) (not b!7184638) (not bm!654941) (not b!7184849) (not b!7184592) (not b!7184627) (not d!2237935) (not b!7184823) (not bm!654949) (not bm!654962) (not b_lambda!275103) (not b!7184765) (not b!7184677) (not bm!654887) (not b!7184232) (not d!2237865) (not d!2238013) (not b!7184682) (not b!7184805) (not b!7184861) (not b!7184794) (not bs!1897567) (not b!7184730) (not bm!654915) (not b_lambda!274979))
(check-sat)
