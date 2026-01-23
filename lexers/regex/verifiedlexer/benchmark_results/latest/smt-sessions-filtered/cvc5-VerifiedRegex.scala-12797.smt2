; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707710 () Bool)

(assert start!707710)

(assert (=> start!707710 true))

(declare-fun b!7261421 () Bool)

(declare-fun e!4354325 () Bool)

(declare-fun tp_is_empty!46869 () Bool)

(declare-fun tp!2039123 () Bool)

(assert (=> b!7261421 (= e!4354325 (and tp_is_empty!46869 tp!2039123))))

(declare-fun b!7261423 () Bool)

(declare-fun e!4354330 () Bool)

(declare-datatypes ((C!37678 0))(
  ( (C!37679 (val!28787 Int)) )
))
(declare-datatypes ((Regex!18702 0))(
  ( (ElementMatch!18702 (c!1350910 C!37678)) (Concat!27547 (regOne!37916 Regex!18702) (regTwo!37916 Regex!18702)) (EmptyExpr!18702) (Star!18702 (reg!19031 Regex!18702)) (EmptyLang!18702) (Union!18702 (regOne!37917 Regex!18702) (regTwo!37917 Regex!18702)) )
))
(declare-datatypes ((List!70685 0))(
  ( (Nil!70561) (Cons!70561 (h!77009 Regex!18702) (t!384751 List!70685)) )
))
(declare-datatypes ((Context!15284 0))(
  ( (Context!15285 (exprs!8142 List!70685)) )
))
(declare-datatypes ((List!70686 0))(
  ( (Nil!70562) (Cons!70562 (h!77010 Context!15284) (t!384752 List!70686)) )
))
(declare-fun zl!1664 () List!70686)

(declare-datatypes ((List!70687 0))(
  ( (Nil!70563) (Cons!70563 (h!77011 C!37678) (t!384753 List!70687)) )
))
(declare-fun s!7912 () List!70687)

(declare-fun matchZipper!3610 ((Set Context!15284) List!70687) Bool)

(declare-fun content!14700 (List!70686) (Set Context!15284))

(assert (=> b!7261423 (= e!4354330 (matchZipper!3610 (content!14700 zl!1664) s!7912))))

(declare-fun lt!2590889 () (Set Context!15284))

(assert (=> b!7261423 (matchZipper!3610 lt!2590889 s!7912)))

(declare-datatypes ((Unit!164042 0))(
  ( (Unit!164043) )
))
(declare-fun lt!2590888 () Unit!164042)

(declare-fun lemmaExistsMatchingContextThenMatchingString!95 (List!70686 List!70687) Unit!164042)

(assert (=> b!7261423 (= lt!2590888 (lemmaExistsMatchingContextThenMatchingString!95 (t!384752 zl!1664) s!7912))))

(declare-fun b!7261424 () Bool)

(declare-fun tp!2039121 () Bool)

(declare-fun e!4354326 () Bool)

(declare-fun e!4354328 () Bool)

(declare-fun inv!89766 (Context!15284) Bool)

(assert (=> b!7261424 (= e!4354328 (and (inv!89766 (h!77010 zl!1664)) e!4354326 tp!2039121))))

(declare-fun b!7261425 () Bool)

(declare-fun e!4354329 () Bool)

(assert (=> b!7261425 (= e!4354329 (not e!4354330))))

(declare-fun res!2944240 () Bool)

(assert (=> b!7261425 (=> res!2944240 e!4354330)))

(declare-fun lt!2590891 () Bool)

(assert (=> b!7261425 (= res!2944240 lt!2590891)))

(declare-fun lt!2590890 () (Set Context!15284))

(declare-fun e!4354327 () Bool)

(assert (=> b!7261425 (= (matchZipper!3610 (set.union lt!2590890 lt!2590889) s!7912) e!4354327)))

(declare-fun res!2944237 () Bool)

(assert (=> b!7261425 (=> res!2944237 e!4354327)))

(assert (=> b!7261425 (= res!2944237 lt!2590891)))

(assert (=> b!7261425 (= lt!2590891 (matchZipper!3610 lt!2590890 s!7912))))

(declare-fun lt!2590887 () Unit!164042)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1751 ((Set Context!15284) (Set Context!15284) List!70687) Unit!164042)

(assert (=> b!7261425 (= lt!2590887 (lemmaZipperConcatMatchesSameAsBothZippers!1751 lt!2590890 lt!2590889 s!7912))))

(assert (=> b!7261425 (= lt!2590889 (content!14700 (t!384752 zl!1664)))))

(assert (=> b!7261425 (= lt!2590890 (set.insert (h!77010 zl!1664) (as set.empty (Set Context!15284))))))

(declare-fun res!2944239 () Bool)

(assert (=> start!707710 (=> (not res!2944239) (not e!4354329))))

(declare-fun lambda!446670 () Int)

(declare-fun exists!4468 (List!70686 Int) Bool)

(assert (=> start!707710 (= res!2944239 (exists!4468 zl!1664 lambda!446670))))

(assert (=> start!707710 e!4354329))

(assert (=> start!707710 e!4354328))

(assert (=> start!707710 e!4354325))

(declare-fun b!7261422 () Bool)

(declare-fun tp!2039122 () Bool)

(assert (=> b!7261422 (= e!4354326 tp!2039122)))

(declare-fun b!7261426 () Bool)

(declare-fun res!2944238 () Bool)

(assert (=> b!7261426 (=> (not res!2944238) (not e!4354329))))

(assert (=> b!7261426 (= res!2944238 (is-Cons!70562 zl!1664))))

(declare-fun b!7261427 () Bool)

(assert (=> b!7261427 (= e!4354327 (matchZipper!3610 lt!2590889 s!7912))))

(assert (= (and start!707710 res!2944239) b!7261426))

(assert (= (and b!7261426 res!2944238) b!7261425))

(assert (= (and b!7261425 (not res!2944237)) b!7261427))

(assert (= (and b!7261425 (not res!2944240)) b!7261423))

(assert (= b!7261424 b!7261422))

(assert (= (and start!707710 (is-Cons!70562 zl!1664)) b!7261424))

(assert (= (and start!707710 (is-Cons!70563 s!7912)) b!7261421))

(declare-fun m!7946122 () Bool)

(assert (=> b!7261425 m!7946122))

(declare-fun m!7946124 () Bool)

(assert (=> b!7261425 m!7946124))

(declare-fun m!7946126 () Bool)

(assert (=> b!7261425 m!7946126))

(declare-fun m!7946128 () Bool)

(assert (=> b!7261425 m!7946128))

(declare-fun m!7946130 () Bool)

(assert (=> b!7261425 m!7946130))

(declare-fun m!7946132 () Bool)

(assert (=> b!7261424 m!7946132))

(declare-fun m!7946134 () Bool)

(assert (=> start!707710 m!7946134))

(declare-fun m!7946136 () Bool)

(assert (=> b!7261427 m!7946136))

(declare-fun m!7946138 () Bool)

(assert (=> b!7261423 m!7946138))

(assert (=> b!7261423 m!7946138))

(declare-fun m!7946140 () Bool)

(assert (=> b!7261423 m!7946140))

(assert (=> b!7261423 m!7946136))

(declare-fun m!7946142 () Bool)

(assert (=> b!7261423 m!7946142))

(push 1)

(assert (not b!7261425))

(assert (not b!7261421))

(assert (not b!7261422))

(assert tp_is_empty!46869)

(assert (not b!7261423))

(assert (not start!707710))

(assert (not b!7261427))

(assert (not b!7261424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259140 () Bool)

(declare-fun lambda!446676 () Int)

(declare-fun forall!17555 (List!70685 Int) Bool)

(assert (=> d!2259140 (= (inv!89766 (h!77010 zl!1664)) (forall!17555 (exprs!8142 (h!77010 zl!1664)) lambda!446676))))

(declare-fun bs!1909453 () Bool)

(assert (= bs!1909453 d!2259140))

(declare-fun m!7946166 () Bool)

(assert (=> bs!1909453 m!7946166))

(assert (=> b!7261424 d!2259140))

(declare-fun d!2259144 () Bool)

(declare-fun c!1350916 () Bool)

(declare-fun isEmpty!40613 (List!70687) Bool)

(assert (=> d!2259144 (= c!1350916 (isEmpty!40613 s!7912))))

(declare-fun e!4354351 () Bool)

(assert (=> d!2259144 (= (matchZipper!3610 (set.union lt!2590890 lt!2590889) s!7912) e!4354351)))

(declare-fun b!7261459 () Bool)

(declare-fun nullableZipper!2947 ((Set Context!15284)) Bool)

(assert (=> b!7261459 (= e!4354351 (nullableZipper!2947 (set.union lt!2590890 lt!2590889)))))

(declare-fun b!7261460 () Bool)

(declare-fun derivationStepZipper!3473 ((Set Context!15284) C!37678) (Set Context!15284))

(declare-fun head!14946 (List!70687) C!37678)

(declare-fun tail!14405 (List!70687) List!70687)

(assert (=> b!7261460 (= e!4354351 (matchZipper!3610 (derivationStepZipper!3473 (set.union lt!2590890 lt!2590889) (head!14946 s!7912)) (tail!14405 s!7912)))))

(assert (= (and d!2259144 c!1350916) b!7261459))

(assert (= (and d!2259144 (not c!1350916)) b!7261460))

(declare-fun m!7946170 () Bool)

(assert (=> d!2259144 m!7946170))

(declare-fun m!7946172 () Bool)

(assert (=> b!7261459 m!7946172))

(declare-fun m!7946174 () Bool)

(assert (=> b!7261460 m!7946174))

(assert (=> b!7261460 m!7946174))

(declare-fun m!7946176 () Bool)

(assert (=> b!7261460 m!7946176))

(declare-fun m!7946178 () Bool)

(assert (=> b!7261460 m!7946178))

(assert (=> b!7261460 m!7946176))

(assert (=> b!7261460 m!7946178))

(declare-fun m!7946180 () Bool)

(assert (=> b!7261460 m!7946180))

(assert (=> b!7261425 d!2259144))

(declare-fun d!2259148 () Bool)

(declare-fun c!1350917 () Bool)

(assert (=> d!2259148 (= c!1350917 (isEmpty!40613 s!7912))))

(declare-fun e!4354352 () Bool)

(assert (=> d!2259148 (= (matchZipper!3610 lt!2590890 s!7912) e!4354352)))

(declare-fun b!7261461 () Bool)

(assert (=> b!7261461 (= e!4354352 (nullableZipper!2947 lt!2590890))))

(declare-fun b!7261462 () Bool)

(assert (=> b!7261462 (= e!4354352 (matchZipper!3610 (derivationStepZipper!3473 lt!2590890 (head!14946 s!7912)) (tail!14405 s!7912)))))

(assert (= (and d!2259148 c!1350917) b!7261461))

(assert (= (and d!2259148 (not c!1350917)) b!7261462))

(assert (=> d!2259148 m!7946170))

(declare-fun m!7946182 () Bool)

(assert (=> b!7261461 m!7946182))

(assert (=> b!7261462 m!7946174))

(assert (=> b!7261462 m!7946174))

(declare-fun m!7946184 () Bool)

(assert (=> b!7261462 m!7946184))

(assert (=> b!7261462 m!7946178))

(assert (=> b!7261462 m!7946184))

(assert (=> b!7261462 m!7946178))

(declare-fun m!7946186 () Bool)

(assert (=> b!7261462 m!7946186))

(assert (=> b!7261425 d!2259148))

(declare-fun d!2259150 () Bool)

(declare-fun e!4354355 () Bool)

(assert (=> d!2259150 (= (matchZipper!3610 (set.union lt!2590890 lt!2590889) s!7912) e!4354355)))

(declare-fun res!2944255 () Bool)

(assert (=> d!2259150 (=> res!2944255 e!4354355)))

(assert (=> d!2259150 (= res!2944255 (matchZipper!3610 lt!2590890 s!7912))))

(declare-fun lt!2590909 () Unit!164042)

(declare-fun choose!56235 ((Set Context!15284) (Set Context!15284) List!70687) Unit!164042)

(assert (=> d!2259150 (= lt!2590909 (choose!56235 lt!2590890 lt!2590889 s!7912))))

(assert (=> d!2259150 (= (lemmaZipperConcatMatchesSameAsBothZippers!1751 lt!2590890 lt!2590889 s!7912) lt!2590909)))

(declare-fun b!7261465 () Bool)

(assert (=> b!7261465 (= e!4354355 (matchZipper!3610 lt!2590889 s!7912))))

(assert (= (and d!2259150 (not res!2944255)) b!7261465))

(assert (=> d!2259150 m!7946130))

(assert (=> d!2259150 m!7946124))

(declare-fun m!7946188 () Bool)

(assert (=> d!2259150 m!7946188))

(assert (=> b!7261465 m!7946136))

(assert (=> b!7261425 d!2259150))

(declare-fun d!2259152 () Bool)

(declare-fun c!1350922 () Bool)

(assert (=> d!2259152 (= c!1350922 (is-Nil!70562 (t!384752 zl!1664)))))

(declare-fun e!4354360 () (Set Context!15284))

(assert (=> d!2259152 (= (content!14700 (t!384752 zl!1664)) e!4354360)))

(declare-fun b!7261474 () Bool)

(assert (=> b!7261474 (= e!4354360 (as set.empty (Set Context!15284)))))

(declare-fun b!7261475 () Bool)

(assert (=> b!7261475 (= e!4354360 (set.union (set.insert (h!77010 (t!384752 zl!1664)) (as set.empty (Set Context!15284))) (content!14700 (t!384752 (t!384752 zl!1664)))))))

(assert (= (and d!2259152 c!1350922) b!7261474))

(assert (= (and d!2259152 (not c!1350922)) b!7261475))

(declare-fun m!7946190 () Bool)

(assert (=> b!7261475 m!7946190))

(declare-fun m!7946192 () Bool)

(assert (=> b!7261475 m!7946192))

(assert (=> b!7261425 d!2259152))

(declare-fun bs!1909456 () Bool)

(declare-fun d!2259154 () Bool)

(assert (= bs!1909456 (and d!2259154 start!707710)))

(declare-fun lambda!446682 () Int)

(assert (=> bs!1909456 (not (= lambda!446682 lambda!446670))))

(assert (=> d!2259154 true))

(declare-fun order!29055 () Int)

(declare-fun dynLambda!28832 (Int Int) Int)

(assert (=> d!2259154 (< (dynLambda!28832 order!29055 lambda!446670) (dynLambda!28832 order!29055 lambda!446682))))

(declare-fun forall!17556 (List!70686 Int) Bool)

(assert (=> d!2259154 (= (exists!4468 zl!1664 lambda!446670) (not (forall!17556 zl!1664 lambda!446682)))))

(declare-fun bs!1909457 () Bool)

(assert (= bs!1909457 d!2259154))

(declare-fun m!7946194 () Bool)

(assert (=> bs!1909457 m!7946194))

(assert (=> start!707710 d!2259154))

(declare-fun d!2259156 () Bool)

(declare-fun c!1350923 () Bool)

(assert (=> d!2259156 (= c!1350923 (isEmpty!40613 s!7912))))

(declare-fun e!4354361 () Bool)

(assert (=> d!2259156 (= (matchZipper!3610 lt!2590889 s!7912) e!4354361)))

(declare-fun b!7261478 () Bool)

(assert (=> b!7261478 (= e!4354361 (nullableZipper!2947 lt!2590889))))

(declare-fun b!7261479 () Bool)

(assert (=> b!7261479 (= e!4354361 (matchZipper!3610 (derivationStepZipper!3473 lt!2590889 (head!14946 s!7912)) (tail!14405 s!7912)))))

(assert (= (and d!2259156 c!1350923) b!7261478))

(assert (= (and d!2259156 (not c!1350923)) b!7261479))

(assert (=> d!2259156 m!7946170))

(declare-fun m!7946196 () Bool)

(assert (=> b!7261478 m!7946196))

(assert (=> b!7261479 m!7946174))

(assert (=> b!7261479 m!7946174))

(declare-fun m!7946198 () Bool)

(assert (=> b!7261479 m!7946198))

(assert (=> b!7261479 m!7946178))

(assert (=> b!7261479 m!7946198))

(assert (=> b!7261479 m!7946178))

(declare-fun m!7946200 () Bool)

(assert (=> b!7261479 m!7946200))

(assert (=> b!7261427 d!2259156))

(declare-fun d!2259158 () Bool)

(declare-fun c!1350925 () Bool)

(assert (=> d!2259158 (= c!1350925 (isEmpty!40613 s!7912))))

(declare-fun e!4354363 () Bool)

(assert (=> d!2259158 (= (matchZipper!3610 (content!14700 zl!1664) s!7912) e!4354363)))

(declare-fun b!7261482 () Bool)

(assert (=> b!7261482 (= e!4354363 (nullableZipper!2947 (content!14700 zl!1664)))))

(declare-fun b!7261483 () Bool)

(assert (=> b!7261483 (= e!4354363 (matchZipper!3610 (derivationStepZipper!3473 (content!14700 zl!1664) (head!14946 s!7912)) (tail!14405 s!7912)))))

(assert (= (and d!2259158 c!1350925) b!7261482))

(assert (= (and d!2259158 (not c!1350925)) b!7261483))

(assert (=> d!2259158 m!7946170))

(assert (=> b!7261482 m!7946138))

(declare-fun m!7946204 () Bool)

(assert (=> b!7261482 m!7946204))

(assert (=> b!7261483 m!7946174))

(assert (=> b!7261483 m!7946138))

(assert (=> b!7261483 m!7946174))

(declare-fun m!7946208 () Bool)

(assert (=> b!7261483 m!7946208))

(assert (=> b!7261483 m!7946178))

(assert (=> b!7261483 m!7946208))

(assert (=> b!7261483 m!7946178))

(declare-fun m!7946212 () Bool)

(assert (=> b!7261483 m!7946212))

(assert (=> b!7261423 d!2259158))

(declare-fun d!2259160 () Bool)

(declare-fun c!1350926 () Bool)

(assert (=> d!2259160 (= c!1350926 (is-Nil!70562 zl!1664))))

(declare-fun e!4354364 () (Set Context!15284))

(assert (=> d!2259160 (= (content!14700 zl!1664) e!4354364)))

(declare-fun b!7261484 () Bool)

(assert (=> b!7261484 (= e!4354364 (as set.empty (Set Context!15284)))))

(declare-fun b!7261485 () Bool)

(assert (=> b!7261485 (= e!4354364 (set.union (set.insert (h!77010 zl!1664) (as set.empty (Set Context!15284))) (content!14700 (t!384752 zl!1664))))))

(assert (= (and d!2259160 c!1350926) b!7261484))

(assert (= (and d!2259160 (not c!1350926)) b!7261485))

(assert (=> b!7261485 m!7946126))

(assert (=> b!7261485 m!7946128))

(assert (=> b!7261423 d!2259160))

(assert (=> b!7261423 d!2259156))

(declare-fun bs!1909458 () Bool)

(declare-fun d!2259162 () Bool)

(assert (= bs!1909458 (and d!2259162 start!707710)))

(declare-fun lambda!446685 () Int)

(assert (=> bs!1909458 (= lambda!446685 lambda!446670)))

(declare-fun bs!1909459 () Bool)

(assert (= bs!1909459 (and d!2259162 d!2259154)))

(assert (=> bs!1909459 (not (= lambda!446685 lambda!446682))))

(assert (=> d!2259162 true))

(assert (=> d!2259162 (matchZipper!3610 (content!14700 (t!384752 zl!1664)) s!7912)))

(declare-fun lt!2590912 () Unit!164042)

(declare-fun choose!56236 (List!70686 List!70687) Unit!164042)

(assert (=> d!2259162 (= lt!2590912 (choose!56236 (t!384752 zl!1664) s!7912))))

(assert (=> d!2259162 (exists!4468 (t!384752 zl!1664) lambda!446685)))

(assert (=> d!2259162 (= (lemmaExistsMatchingContextThenMatchingString!95 (t!384752 zl!1664) s!7912) lt!2590912)))

(declare-fun bs!1909460 () Bool)

(assert (= bs!1909460 d!2259162))

(assert (=> bs!1909460 m!7946128))

(assert (=> bs!1909460 m!7946128))

(declare-fun m!7946220 () Bool)

(assert (=> bs!1909460 m!7946220))

(declare-fun m!7946222 () Bool)

(assert (=> bs!1909460 m!7946222))

(declare-fun m!7946224 () Bool)

(assert (=> bs!1909460 m!7946224))

(assert (=> b!7261423 d!2259162))

(declare-fun b!7261493 () Bool)

(declare-fun e!4354370 () Bool)

(declare-fun tp!2039137 () Bool)

(assert (=> b!7261493 (= e!4354370 tp!2039137)))

(declare-fun e!4354369 () Bool)

(declare-fun b!7261492 () Bool)

(declare-fun tp!2039138 () Bool)

(assert (=> b!7261492 (= e!4354369 (and (inv!89766 (h!77010 (t!384752 zl!1664))) e!4354370 tp!2039138))))

(assert (=> b!7261424 (= tp!2039121 e!4354369)))

(assert (= b!7261492 b!7261493))

(assert (= (and b!7261424 (is-Cons!70562 (t!384752 zl!1664))) b!7261492))

(declare-fun m!7946226 () Bool)

(assert (=> b!7261492 m!7946226))

(declare-fun b!7261498 () Bool)

(declare-fun e!4354373 () Bool)

(declare-fun tp!2039141 () Bool)

(assert (=> b!7261498 (= e!4354373 (and tp_is_empty!46869 tp!2039141))))

(assert (=> b!7261421 (= tp!2039123 e!4354373)))

(assert (= (and b!7261421 (is-Cons!70563 (t!384753 s!7912))) b!7261498))

(declare-fun b!7261503 () Bool)

(declare-fun e!4354376 () Bool)

(declare-fun tp!2039146 () Bool)

(declare-fun tp!2039147 () Bool)

(assert (=> b!7261503 (= e!4354376 (and tp!2039146 tp!2039147))))

(assert (=> b!7261422 (= tp!2039122 e!4354376)))

(assert (= (and b!7261422 (is-Cons!70561 (exprs!8142 (h!77010 zl!1664)))) b!7261503))

(push 1)

(assert (not d!2259156))

(assert (not d!2259162))

(assert (not b!7261482))

(assert (not b!7261459))

(assert (not b!7261493))

(assert (not d!2259154))

(assert (not b!7261498))

(assert (not b!7261483))

(assert (not b!7261461))

(assert (not b!7261478))

(assert tp_is_empty!46869)

(assert (not d!2259150))

(assert (not b!7261465))

(assert (not b!7261503))

(assert (not d!2259140))

(assert (not b!7261492))

(assert (not d!2259144))

(assert (not d!2259148))

(assert (not b!7261460))

(assert (not b!7261479))

(assert (not b!7261462))

(assert (not d!2259158))

(assert (not b!7261475))

(assert (not b!7261485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

