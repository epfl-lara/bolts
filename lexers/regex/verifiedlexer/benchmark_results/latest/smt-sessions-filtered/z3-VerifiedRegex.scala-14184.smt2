; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743870 () Bool)

(assert start!743870)

(declare-fun b!7867995 () Bool)

(declare-fun e!4648425 () Bool)

(declare-fun tp_is_empty!52681 () Bool)

(declare-fun tp!2334202 () Bool)

(assert (=> b!7867995 (= e!4648425 (and tp_is_empty!52681 tp!2334202))))

(declare-fun b!7867996 () Bool)

(declare-fun res!3126583 () Bool)

(declare-fun e!4648424 () Bool)

(assert (=> b!7867996 (=> (not res!3126583) (not e!4648424))))

(declare-datatypes ((C!42608 0))(
  ( (C!42609 (val!31766 Int)) )
))
(declare-datatypes ((Regex!21141 0))(
  ( (ElementMatch!21141 (c!1445475 C!42608)) (Concat!29986 (regOne!42794 Regex!21141) (regTwo!42794 Regex!21141)) (EmptyExpr!21141) (Star!21141 (reg!21470 Regex!21141)) (EmptyLang!21141) (Union!21141 (regOne!42795 Regex!21141) (regTwo!42795 Regex!21141)) )
))
(declare-fun r!24826 () Regex!21141)

(declare-datatypes ((List!74000 0))(
  ( (Nil!73876) (Cons!73876 (h!80324 C!42608) (t!388735 List!74000)) )
))
(declare-fun s!14217 () List!74000)

(declare-fun matchR!10577 (Regex!21141 List!74000) Bool)

(assert (=> b!7867996 (= res!3126583 (matchR!10577 r!24826 s!14217))))

(declare-fun b!7867997 () Bool)

(declare-fun res!3126584 () Bool)

(assert (=> b!7867997 (=> (not res!3126584) (not e!4648424))))

(declare-fun isEmpty!42378 (List!74000) Bool)

(assert (=> b!7867997 (= res!3126584 (not (isEmpty!42378 s!14217)))))

(declare-fun b!7867999 () Bool)

(declare-fun e!4648423 () Bool)

(assert (=> b!7867999 (= e!4648423 tp_is_empty!52681)))

(declare-fun b!7868000 () Bool)

(declare-fun tp!2334201 () Bool)

(declare-fun tp!2334197 () Bool)

(assert (=> b!7868000 (= e!4648423 (and tp!2334201 tp!2334197))))

(declare-fun b!7868001 () Bool)

(assert (=> b!7868001 (= e!4648424 (= s!14217 Nil!73876))))

(declare-fun b!7868002 () Bool)

(declare-fun tp!2334198 () Bool)

(assert (=> b!7868002 (= e!4648423 tp!2334198)))

(declare-fun res!3126582 () Bool)

(assert (=> start!743870 (=> (not res!3126582) (not e!4648424))))

(declare-fun validRegex!11551 (Regex!21141) Bool)

(assert (=> start!743870 (= res!3126582 (validRegex!11551 r!24826))))

(assert (=> start!743870 e!4648424))

(assert (=> start!743870 e!4648423))

(assert (=> start!743870 e!4648425))

(declare-fun b!7867998 () Bool)

(declare-fun tp!2334200 () Bool)

(declare-fun tp!2334199 () Bool)

(assert (=> b!7867998 (= e!4648423 (and tp!2334200 tp!2334199))))

(assert (= (and start!743870 res!3126582) b!7867996))

(assert (= (and b!7867996 res!3126583) b!7867997))

(assert (= (and b!7867997 res!3126584) b!7868001))

(get-info :version)

(assert (= (and start!743870 ((_ is ElementMatch!21141) r!24826)) b!7867999))

(assert (= (and start!743870 ((_ is Concat!29986) r!24826)) b!7868000))

(assert (= (and start!743870 ((_ is Star!21141) r!24826)) b!7868002))

(assert (= (and start!743870 ((_ is Union!21141) r!24826)) b!7867998))

(assert (= (and start!743870 ((_ is Cons!73876) s!14217)) b!7867995))

(declare-fun m!8264326 () Bool)

(assert (=> b!7867996 m!8264326))

(declare-fun m!8264328 () Bool)

(assert (=> b!7867997 m!8264328))

(declare-fun m!8264330 () Bool)

(assert (=> start!743870 m!8264330))

(check-sat (not b!7867997) tp_is_empty!52681 (not b!7868002) (not b!7868000) (not b!7867995) (not b!7867996) (not b!7867998) (not start!743870))
(check-sat)
(get-model)

(declare-fun d!2355035 () Bool)

(assert (=> d!2355035 (= (isEmpty!42378 s!14217) ((_ is Nil!73876) s!14217))))

(assert (=> b!7867997 d!2355035))

(declare-fun b!7868058 () Bool)

(declare-fun e!4648462 () Bool)

(declare-fun head!16088 (List!74000) C!42608)

(assert (=> b!7868058 (= e!4648462 (= (head!16088 s!14217) (c!1445475 r!24826)))))

(declare-fun b!7868059 () Bool)

(declare-fun e!4648464 () Bool)

(declare-fun e!4648467 () Bool)

(assert (=> b!7868059 (= e!4648464 e!4648467)))

(declare-fun res!3126616 () Bool)

(assert (=> b!7868059 (=> res!3126616 e!4648467)))

(declare-fun call!729550 () Bool)

(assert (=> b!7868059 (= res!3126616 call!729550)))

(declare-fun b!7868060 () Bool)

(declare-fun e!4648466 () Bool)

(assert (=> b!7868060 (= e!4648466 e!4648464)))

(declare-fun res!3126622 () Bool)

(assert (=> b!7868060 (=> (not res!3126622) (not e!4648464))))

(declare-fun lt!2680704 () Bool)

(assert (=> b!7868060 (= res!3126622 (not lt!2680704))))

(declare-fun b!7868061 () Bool)

(declare-fun res!3126623 () Bool)

(assert (=> b!7868061 (=> (not res!3126623) (not e!4648462))))

(declare-fun tail!15631 (List!74000) List!74000)

(assert (=> b!7868061 (= res!3126623 (isEmpty!42378 (tail!15631 s!14217)))))

(declare-fun b!7868062 () Bool)

(declare-fun res!3126619 () Bool)

(assert (=> b!7868062 (=> res!3126619 e!4648467)))

(assert (=> b!7868062 (= res!3126619 (not (isEmpty!42378 (tail!15631 s!14217))))))

(declare-fun b!7868063 () Bool)

(declare-fun e!4648465 () Bool)

(assert (=> b!7868063 (= e!4648465 (not lt!2680704))))

(declare-fun b!7868064 () Bool)

(declare-fun res!3126617 () Bool)

(assert (=> b!7868064 (=> (not res!3126617) (not e!4648462))))

(assert (=> b!7868064 (= res!3126617 (not call!729550))))

(declare-fun b!7868065 () Bool)

(declare-fun e!4648461 () Bool)

(assert (=> b!7868065 (= e!4648461 (= lt!2680704 call!729550))))

(declare-fun b!7868066 () Bool)

(assert (=> b!7868066 (= e!4648461 e!4648465)))

(declare-fun c!1445488 () Bool)

(assert (=> b!7868066 (= c!1445488 ((_ is EmptyLang!21141) r!24826))))

(declare-fun b!7868067 () Bool)

(declare-fun e!4648463 () Bool)

(declare-fun derivativeStep!6373 (Regex!21141 C!42608) Regex!21141)

(assert (=> b!7868067 (= e!4648463 (matchR!10577 (derivativeStep!6373 r!24826 (head!16088 s!14217)) (tail!15631 s!14217)))))

(declare-fun bm!729545 () Bool)

(assert (=> bm!729545 (= call!729550 (isEmpty!42378 s!14217))))

(declare-fun b!7868068 () Bool)

(declare-fun nullable!9410 (Regex!21141) Bool)

(assert (=> b!7868068 (= e!4648463 (nullable!9410 r!24826))))

(declare-fun b!7868069 () Bool)

(declare-fun res!3126621 () Bool)

(assert (=> b!7868069 (=> res!3126621 e!4648466)))

(assert (=> b!7868069 (= res!3126621 (not ((_ is ElementMatch!21141) r!24826)))))

(assert (=> b!7868069 (= e!4648465 e!4648466)))

(declare-fun b!7868070 () Bool)

(declare-fun res!3126618 () Bool)

(assert (=> b!7868070 (=> res!3126618 e!4648466)))

(assert (=> b!7868070 (= res!3126618 e!4648462)))

(declare-fun res!3126620 () Bool)

(assert (=> b!7868070 (=> (not res!3126620) (not e!4648462))))

(assert (=> b!7868070 (= res!3126620 lt!2680704)))

(declare-fun d!2355039 () Bool)

(assert (=> d!2355039 e!4648461))

(declare-fun c!1445489 () Bool)

(assert (=> d!2355039 (= c!1445489 ((_ is EmptyExpr!21141) r!24826))))

(assert (=> d!2355039 (= lt!2680704 e!4648463)))

(declare-fun c!1445490 () Bool)

(assert (=> d!2355039 (= c!1445490 (isEmpty!42378 s!14217))))

(assert (=> d!2355039 (validRegex!11551 r!24826)))

(assert (=> d!2355039 (= (matchR!10577 r!24826 s!14217) lt!2680704)))

(declare-fun b!7868071 () Bool)

(assert (=> b!7868071 (= e!4648467 (not (= (head!16088 s!14217) (c!1445475 r!24826))))))

(assert (= (and d!2355039 c!1445490) b!7868068))

(assert (= (and d!2355039 (not c!1445490)) b!7868067))

(assert (= (and d!2355039 c!1445489) b!7868065))

(assert (= (and d!2355039 (not c!1445489)) b!7868066))

(assert (= (and b!7868066 c!1445488) b!7868063))

(assert (= (and b!7868066 (not c!1445488)) b!7868069))

(assert (= (and b!7868069 (not res!3126621)) b!7868070))

(assert (= (and b!7868070 res!3126620) b!7868064))

(assert (= (and b!7868064 res!3126617) b!7868061))

(assert (= (and b!7868061 res!3126623) b!7868058))

(assert (= (and b!7868070 (not res!3126618)) b!7868060))

(assert (= (and b!7868060 res!3126622) b!7868059))

(assert (= (and b!7868059 (not res!3126616)) b!7868062))

(assert (= (and b!7868062 (not res!3126619)) b!7868071))

(assert (= (or b!7868065 b!7868059 b!7868064) bm!729545))

(declare-fun m!8264338 () Bool)

(assert (=> b!7868067 m!8264338))

(assert (=> b!7868067 m!8264338))

(declare-fun m!8264340 () Bool)

(assert (=> b!7868067 m!8264340))

(declare-fun m!8264342 () Bool)

(assert (=> b!7868067 m!8264342))

(assert (=> b!7868067 m!8264340))

(assert (=> b!7868067 m!8264342))

(declare-fun m!8264344 () Bool)

(assert (=> b!7868067 m!8264344))

(assert (=> b!7868062 m!8264342))

(assert (=> b!7868062 m!8264342))

(declare-fun m!8264346 () Bool)

(assert (=> b!7868062 m!8264346))

(assert (=> b!7868071 m!8264338))

(assert (=> bm!729545 m!8264328))

(assert (=> d!2355039 m!8264328))

(assert (=> d!2355039 m!8264330))

(assert (=> b!7868061 m!8264342))

(assert (=> b!7868061 m!8264342))

(assert (=> b!7868061 m!8264346))

(declare-fun m!8264348 () Bool)

(assert (=> b!7868068 m!8264348))

(assert (=> b!7868058 m!8264338))

(assert (=> b!7867996 d!2355039))

(declare-fun b!7868132 () Bool)

(declare-fun res!3126662 () Bool)

(declare-fun e!4648505 () Bool)

(assert (=> b!7868132 (=> res!3126662 e!4648505)))

(assert (=> b!7868132 (= res!3126662 (not ((_ is Concat!29986) r!24826)))))

(declare-fun e!4648506 () Bool)

(assert (=> b!7868132 (= e!4648506 e!4648505)))

(declare-fun d!2355043 () Bool)

(declare-fun res!3126659 () Bool)

(declare-fun e!4648509 () Bool)

(assert (=> d!2355043 (=> res!3126659 e!4648509)))

(assert (=> d!2355043 (= res!3126659 ((_ is ElementMatch!21141) r!24826))))

(assert (=> d!2355043 (= (validRegex!11551 r!24826) e!4648509)))

(declare-fun b!7868133 () Bool)

(declare-fun e!4648508 () Bool)

(declare-fun call!729560 () Bool)

(assert (=> b!7868133 (= e!4648508 call!729560)))

(declare-fun b!7868134 () Bool)

(declare-fun e!4648504 () Bool)

(assert (=> b!7868134 (= e!4648504 e!4648506)))

(declare-fun c!1445505 () Bool)

(assert (=> b!7868134 (= c!1445505 ((_ is Union!21141) r!24826))))

(declare-fun b!7868135 () Bool)

(declare-fun e!4648507 () Bool)

(declare-fun call!729562 () Bool)

(assert (=> b!7868135 (= e!4648507 call!729562)))

(declare-fun b!7868136 () Bool)

(declare-fun res!3126660 () Bool)

(declare-fun e!4648503 () Bool)

(assert (=> b!7868136 (=> (not res!3126660) (not e!4648503))))

(assert (=> b!7868136 (= res!3126660 call!729560)))

(assert (=> b!7868136 (= e!4648506 e!4648503)))

(declare-fun c!1445504 () Bool)

(declare-fun bm!729555 () Bool)

(assert (=> bm!729555 (= call!729562 (validRegex!11551 (ite c!1445504 (reg!21470 r!24826) (ite c!1445505 (regTwo!42795 r!24826) (regOne!42794 r!24826)))))))

(declare-fun b!7868137 () Bool)

(assert (=> b!7868137 (= e!4648505 e!4648508)))

(declare-fun res!3126661 () Bool)

(assert (=> b!7868137 (=> (not res!3126661) (not e!4648508))))

(declare-fun call!729561 () Bool)

(assert (=> b!7868137 (= res!3126661 call!729561)))

(declare-fun bm!729556 () Bool)

(assert (=> bm!729556 (= call!729561 call!729562)))

(declare-fun bm!729557 () Bool)

(assert (=> bm!729557 (= call!729560 (validRegex!11551 (ite c!1445505 (regOne!42795 r!24826) (regTwo!42794 r!24826))))))

(declare-fun b!7868138 () Bool)

(assert (=> b!7868138 (= e!4648509 e!4648504)))

(assert (=> b!7868138 (= c!1445504 ((_ is Star!21141) r!24826))))

(declare-fun b!7868139 () Bool)

(assert (=> b!7868139 (= e!4648504 e!4648507)))

(declare-fun res!3126658 () Bool)

(assert (=> b!7868139 (= res!3126658 (not (nullable!9410 (reg!21470 r!24826))))))

(assert (=> b!7868139 (=> (not res!3126658) (not e!4648507))))

(declare-fun b!7868140 () Bool)

(assert (=> b!7868140 (= e!4648503 call!729561)))

(assert (= (and d!2355043 (not res!3126659)) b!7868138))

(assert (= (and b!7868138 c!1445504) b!7868139))

(assert (= (and b!7868138 (not c!1445504)) b!7868134))

(assert (= (and b!7868139 res!3126658) b!7868135))

(assert (= (and b!7868134 c!1445505) b!7868136))

(assert (= (and b!7868134 (not c!1445505)) b!7868132))

(assert (= (and b!7868136 res!3126660) b!7868140))

(assert (= (and b!7868132 (not res!3126662)) b!7868137))

(assert (= (and b!7868137 res!3126661) b!7868133))

(assert (= (or b!7868136 b!7868133) bm!729557))

(assert (= (or b!7868140 b!7868137) bm!729556))

(assert (= (or b!7868135 bm!729556) bm!729555))

(declare-fun m!8264358 () Bool)

(assert (=> bm!729555 m!8264358))

(declare-fun m!8264362 () Bool)

(assert (=> bm!729557 m!8264362))

(declare-fun m!8264366 () Bool)

(assert (=> b!7868139 m!8264366))

(assert (=> start!743870 d!2355043))

(declare-fun b!7868161 () Bool)

(declare-fun e!4648514 () Bool)

(assert (=> b!7868161 (= e!4648514 tp_is_empty!52681)))

(assert (=> b!7868002 (= tp!2334198 e!4648514)))

(declare-fun b!7868163 () Bool)

(declare-fun tp!2334225 () Bool)

(assert (=> b!7868163 (= e!4648514 tp!2334225)))

(declare-fun b!7868164 () Bool)

(declare-fun tp!2334223 () Bool)

(declare-fun tp!2334227 () Bool)

(assert (=> b!7868164 (= e!4648514 (and tp!2334223 tp!2334227))))

(declare-fun b!7868162 () Bool)

(declare-fun tp!2334226 () Bool)

(declare-fun tp!2334224 () Bool)

(assert (=> b!7868162 (= e!4648514 (and tp!2334226 tp!2334224))))

(assert (= (and b!7868002 ((_ is ElementMatch!21141) (reg!21470 r!24826))) b!7868161))

(assert (= (and b!7868002 ((_ is Concat!29986) (reg!21470 r!24826))) b!7868162))

(assert (= (and b!7868002 ((_ is Star!21141) (reg!21470 r!24826))) b!7868163))

(assert (= (and b!7868002 ((_ is Union!21141) (reg!21470 r!24826))) b!7868164))

(declare-fun b!7868181 () Bool)

(declare-fun e!4648520 () Bool)

(declare-fun tp!2334245 () Bool)

(assert (=> b!7868181 (= e!4648520 (and tp_is_empty!52681 tp!2334245))))

(assert (=> b!7867995 (= tp!2334202 e!4648520)))

(assert (= (and b!7867995 ((_ is Cons!73876) (t!388735 s!14217))) b!7868181))

(declare-fun b!7868182 () Bool)

(declare-fun e!4648521 () Bool)

(assert (=> b!7868182 (= e!4648521 tp_is_empty!52681)))

(assert (=> b!7868000 (= tp!2334201 e!4648521)))

(declare-fun b!7868184 () Bool)

(declare-fun tp!2334248 () Bool)

(assert (=> b!7868184 (= e!4648521 tp!2334248)))

(declare-fun b!7868185 () Bool)

(declare-fun tp!2334246 () Bool)

(declare-fun tp!2334250 () Bool)

(assert (=> b!7868185 (= e!4648521 (and tp!2334246 tp!2334250))))

(declare-fun b!7868183 () Bool)

(declare-fun tp!2334249 () Bool)

(declare-fun tp!2334247 () Bool)

(assert (=> b!7868183 (= e!4648521 (and tp!2334249 tp!2334247))))

(assert (= (and b!7868000 ((_ is ElementMatch!21141) (regOne!42794 r!24826))) b!7868182))

(assert (= (and b!7868000 ((_ is Concat!29986) (regOne!42794 r!24826))) b!7868183))

(assert (= (and b!7868000 ((_ is Star!21141) (regOne!42794 r!24826))) b!7868184))

(assert (= (and b!7868000 ((_ is Union!21141) (regOne!42794 r!24826))) b!7868185))

(declare-fun b!7868190 () Bool)

(declare-fun e!4648523 () Bool)

(assert (=> b!7868190 (= e!4648523 tp_is_empty!52681)))

(assert (=> b!7868000 (= tp!2334197 e!4648523)))

(declare-fun b!7868192 () Bool)

(declare-fun tp!2334258 () Bool)

(assert (=> b!7868192 (= e!4648523 tp!2334258)))

(declare-fun b!7868193 () Bool)

(declare-fun tp!2334256 () Bool)

(declare-fun tp!2334260 () Bool)

(assert (=> b!7868193 (= e!4648523 (and tp!2334256 tp!2334260))))

(declare-fun b!7868191 () Bool)

(declare-fun tp!2334259 () Bool)

(declare-fun tp!2334257 () Bool)

(assert (=> b!7868191 (= e!4648523 (and tp!2334259 tp!2334257))))

(assert (= (and b!7868000 ((_ is ElementMatch!21141) (regTwo!42794 r!24826))) b!7868190))

(assert (= (and b!7868000 ((_ is Concat!29986) (regTwo!42794 r!24826))) b!7868191))

(assert (= (and b!7868000 ((_ is Star!21141) (regTwo!42794 r!24826))) b!7868192))

(assert (= (and b!7868000 ((_ is Union!21141) (regTwo!42794 r!24826))) b!7868193))

(declare-fun b!7868200 () Bool)

(declare-fun e!4648525 () Bool)

(assert (=> b!7868200 (= e!4648525 tp_is_empty!52681)))

(assert (=> b!7867998 (= tp!2334200 e!4648525)))

(declare-fun b!7868202 () Bool)

(declare-fun tp!2334268 () Bool)

(assert (=> b!7868202 (= e!4648525 tp!2334268)))

(declare-fun b!7868203 () Bool)

(declare-fun tp!2334266 () Bool)

(declare-fun tp!2334270 () Bool)

(assert (=> b!7868203 (= e!4648525 (and tp!2334266 tp!2334270))))

(declare-fun b!7868201 () Bool)

(declare-fun tp!2334269 () Bool)

(declare-fun tp!2334267 () Bool)

(assert (=> b!7868201 (= e!4648525 (and tp!2334269 tp!2334267))))

(assert (= (and b!7867998 ((_ is ElementMatch!21141) (regOne!42795 r!24826))) b!7868200))

(assert (= (and b!7867998 ((_ is Concat!29986) (regOne!42795 r!24826))) b!7868201))

(assert (= (and b!7867998 ((_ is Star!21141) (regOne!42795 r!24826))) b!7868202))

(assert (= (and b!7867998 ((_ is Union!21141) (regOne!42795 r!24826))) b!7868203))

(declare-fun b!7868206 () Bool)

(declare-fun e!4648528 () Bool)

(assert (=> b!7868206 (= e!4648528 tp_is_empty!52681)))

(assert (=> b!7867998 (= tp!2334199 e!4648528)))

(declare-fun b!7868208 () Bool)

(declare-fun tp!2334275 () Bool)

(assert (=> b!7868208 (= e!4648528 tp!2334275)))

(declare-fun b!7868209 () Bool)

(declare-fun tp!2334273 () Bool)

(declare-fun tp!2334277 () Bool)

(assert (=> b!7868209 (= e!4648528 (and tp!2334273 tp!2334277))))

(declare-fun b!7868207 () Bool)

(declare-fun tp!2334276 () Bool)

(declare-fun tp!2334274 () Bool)

(assert (=> b!7868207 (= e!4648528 (and tp!2334276 tp!2334274))))

(assert (= (and b!7867998 ((_ is ElementMatch!21141) (regTwo!42795 r!24826))) b!7868206))

(assert (= (and b!7867998 ((_ is Concat!29986) (regTwo!42795 r!24826))) b!7868207))

(assert (= (and b!7867998 ((_ is Star!21141) (regTwo!42795 r!24826))) b!7868208))

(assert (= (and b!7867998 ((_ is Union!21141) (regTwo!42795 r!24826))) b!7868209))

(check-sat (not b!7868191) (not b!7868062) (not b!7868183) (not b!7868068) (not b!7868139) (not b!7868185) (not bm!729557) (not b!7868202) (not b!7868193) (not b!7868192) (not b!7868162) (not b!7868184) (not b!7868201) (not b!7868203) (not b!7868163) tp_is_empty!52681 (not b!7868067) (not d!2355039) (not b!7868058) (not b!7868071) (not bm!729545) (not b!7868181) (not b!7868209) (not b!7868061) (not b!7868164) (not b!7868208) (not b!7868207) (not bm!729555))
(check-sat)
