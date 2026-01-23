; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571994 () Bool)

(assert start!571994)

(declare-fun b!5463070 () Bool)

(assert (=> b!5463070 true))

(assert (=> b!5463070 true))

(declare-fun lambda!290044 () Int)

(declare-fun lambda!290043 () Int)

(assert (=> b!5463070 (not (= lambda!290044 lambda!290043))))

(assert (=> b!5463070 true))

(assert (=> b!5463070 true))

(declare-fun lambda!290045 () Int)

(assert (=> b!5463070 (not (= lambda!290045 lambda!290043))))

(assert (=> b!5463070 (not (= lambda!290045 lambda!290044))))

(assert (=> b!5463070 true))

(assert (=> b!5463070 true))

(declare-fun b!5463069 () Bool)

(declare-fun res!2327261 () Bool)

(declare-fun e!3382693 () Bool)

(assert (=> b!5463069 (=> res!2327261 e!3382693)))

(declare-datatypes ((C!30872 0))(
  ( (C!30873 (val!25138 Int)) )
))
(declare-datatypes ((Regex!15301 0))(
  ( (ElementMatch!15301 (c!954587 C!30872)) (Concat!24146 (regOne!31114 Regex!15301) (regTwo!31114 Regex!15301)) (EmptyExpr!15301) (Star!15301 (reg!15630 Regex!15301)) (EmptyLang!15301) (Union!15301 (regOne!31115 Regex!15301) (regTwo!31115 Regex!15301)) )
))
(declare-datatypes ((List!62202 0))(
  ( (Nil!62078) (Cons!62078 (h!68526 Regex!15301) (t!375431 List!62202)) )
))
(declare-datatypes ((Context!9370 0))(
  ( (Context!9371 (exprs!5185 List!62202)) )
))
(declare-datatypes ((List!62203 0))(
  ( (Nil!62079) (Cons!62079 (h!68527 Context!9370) (t!375432 List!62203)) )
))
(declare-fun zl!343 () List!62203)

(get-info :version)

(assert (=> b!5463069 (= res!2327261 (not ((_ is Cons!62078) (exprs!5185 (h!68527 zl!343)))))))

(declare-fun res!2327267 () Bool)

(declare-fun e!3382690 () Bool)

(assert (=> start!571994 (=> (not res!2327267) (not e!3382690))))

(declare-fun r!7292 () Regex!15301)

(declare-fun validRegex!7037 (Regex!15301) Bool)

(assert (=> start!571994 (= res!2327267 (validRegex!7037 r!7292))))

(assert (=> start!571994 e!3382690))

(declare-fun e!3382691 () Bool)

(assert (=> start!571994 e!3382691))

(declare-fun condSetEmpty!35767 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9370))

(assert (=> start!571994 (= condSetEmpty!35767 (= z!1189 ((as const (Array Context!9370 Bool)) false)))))

(declare-fun setRes!35767 () Bool)

(assert (=> start!571994 setRes!35767))

(declare-fun e!3382687 () Bool)

(assert (=> start!571994 e!3382687))

(declare-fun e!3382689 () Bool)

(assert (=> start!571994 e!3382689))

(declare-fun e!3382694 () Bool)

(assert (=> b!5463070 (= e!3382693 e!3382694)))

(declare-fun res!2327266 () Bool)

(assert (=> b!5463070 (=> res!2327266 e!3382694)))

(declare-datatypes ((List!62204 0))(
  ( (Nil!62080) (Cons!62080 (h!68528 C!30872) (t!375433 List!62204)) )
))
(declare-fun s!2326 () List!62204)

(declare-fun isEmpty!34050 (List!62204) Bool)

(assert (=> b!5463070 (= res!2327266 (isEmpty!34050 s!2326))))

(declare-fun Exists!2480 (Int) Bool)

(assert (=> b!5463070 (= (Exists!2480 lambda!290043) (Exists!2480 lambda!290045))))

(declare-datatypes ((Unit!155052 0))(
  ( (Unit!155053) )
))
(declare-fun lt!2232809 () Unit!155052)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1130 (Regex!15301 Regex!15301 List!62204) Unit!155052)

(assert (=> b!5463070 (= lt!2232809 (lemmaExistCutMatchRandMatchRSpecEquivalent!1130 (reg!15630 r!7292) r!7292 s!2326))))

(assert (=> b!5463070 (= (Exists!2480 lambda!290043) (Exists!2480 lambda!290044))))

(declare-fun lt!2232807 () Unit!155052)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!454 (Regex!15301 List!62204) Unit!155052)

(assert (=> b!5463070 (= lt!2232807 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!454 (reg!15630 r!7292) s!2326))))

(declare-datatypes ((tuple2!64996 0))(
  ( (tuple2!64997 (_1!35801 List!62204) (_2!35801 List!62204)) )
))
(declare-datatypes ((Option!15410 0))(
  ( (None!15409) (Some!15409 (v!51438 tuple2!64996)) )
))
(declare-fun isDefined!12113 (Option!15410) Bool)

(declare-fun findConcatSeparation!1824 (Regex!15301 Regex!15301 List!62204 List!62204 List!62204) Option!15410)

(assert (=> b!5463070 (= (isDefined!12113 (findConcatSeparation!1824 (reg!15630 r!7292) r!7292 Nil!62080 s!2326 s!2326)) (Exists!2480 lambda!290043))))

(declare-fun lt!2232806 () Unit!155052)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1588 (Regex!15301 Regex!15301 List!62204) Unit!155052)

(assert (=> b!5463070 (= lt!2232806 (lemmaFindConcatSeparationEquivalentToExists!1588 (reg!15630 r!7292) r!7292 s!2326))))

(declare-fun b!5463071 () Bool)

(declare-fun tp!1502649 () Bool)

(assert (=> b!5463071 (= e!3382691 tp!1502649)))

(declare-fun b!5463072 () Bool)

(declare-fun res!2327262 () Bool)

(assert (=> b!5463072 (=> res!2327262 e!3382693)))

(declare-fun isEmpty!34051 (List!62203) Bool)

(assert (=> b!5463072 (= res!2327262 (not (isEmpty!34051 (t!375432 zl!343))))))

(declare-fun b!5463073 () Bool)

(declare-fun tp_is_empty!39855 () Bool)

(declare-fun tp!1502653 () Bool)

(assert (=> b!5463073 (= e!3382689 (and tp_is_empty!39855 tp!1502653))))

(declare-fun setIsEmpty!35767 () Bool)

(assert (=> setIsEmpty!35767 setRes!35767))

(declare-fun b!5463074 () Bool)

(declare-fun tp!1502647 () Bool)

(declare-fun tp!1502644 () Bool)

(assert (=> b!5463074 (= e!3382691 (and tp!1502647 tp!1502644))))

(declare-fun b!5463075 () Bool)

(declare-fun res!2327270 () Bool)

(assert (=> b!5463075 (=> (not res!2327270) (not e!3382690))))

(declare-fun unfocusZipper!1043 (List!62203) Regex!15301)

(assert (=> b!5463075 (= res!2327270 (= r!7292 (unfocusZipper!1043 zl!343)))))

(declare-fun b!5463076 () Bool)

(declare-fun res!2327264 () Bool)

(assert (=> b!5463076 (=> res!2327264 e!3382693)))

(declare-fun generalisedConcat!970 (List!62202) Regex!15301)

(assert (=> b!5463076 (= res!2327264 (not (= r!7292 (generalisedConcat!970 (exprs!5185 (h!68527 zl!343))))))))

(declare-fun b!5463077 () Bool)

(assert (=> b!5463077 (= e!3382694 (validRegex!7037 (reg!15630 r!7292)))))

(declare-fun e!3382692 () Bool)

(declare-fun setElem!35767 () Context!9370)

(declare-fun setNonEmpty!35767 () Bool)

(declare-fun tp!1502645 () Bool)

(declare-fun inv!81499 (Context!9370) Bool)

(assert (=> setNonEmpty!35767 (= setRes!35767 (and tp!1502645 (inv!81499 setElem!35767) e!3382692))))

(declare-fun setRest!35767 () (InoxSet Context!9370))

(assert (=> setNonEmpty!35767 (= z!1189 ((_ map or) (store ((as const (Array Context!9370 Bool)) false) setElem!35767 true) setRest!35767))))

(declare-fun b!5463078 () Bool)

(declare-fun res!2327269 () Bool)

(assert (=> b!5463078 (=> res!2327269 e!3382693)))

(declare-fun generalisedUnion!1230 (List!62202) Regex!15301)

(declare-fun unfocusZipperList!743 (List!62203) List!62202)

(assert (=> b!5463078 (= res!2327269 (not (= r!7292 (generalisedUnion!1230 (unfocusZipperList!743 zl!343)))))))

(declare-fun b!5463079 () Bool)

(declare-fun res!2327263 () Bool)

(assert (=> b!5463079 (=> (not res!2327263) (not e!3382690))))

(declare-fun toList!9085 ((InoxSet Context!9370)) List!62203)

(assert (=> b!5463079 (= res!2327263 (= (toList!9085 z!1189) zl!343))))

(declare-fun b!5463080 () Bool)

(declare-fun res!2327268 () Bool)

(assert (=> b!5463080 (=> res!2327268 e!3382693)))

(assert (=> b!5463080 (= res!2327268 (or ((_ is EmptyExpr!15301) r!7292) ((_ is EmptyLang!15301) r!7292) ((_ is ElementMatch!15301) r!7292) ((_ is Union!15301) r!7292) ((_ is Concat!24146) r!7292)))))

(declare-fun b!5463081 () Bool)

(declare-fun tp!1502650 () Bool)

(declare-fun tp!1502652 () Bool)

(assert (=> b!5463081 (= e!3382691 (and tp!1502650 tp!1502652))))

(declare-fun b!5463082 () Bool)

(declare-fun tp!1502646 () Bool)

(assert (=> b!5463082 (= e!3382692 tp!1502646)))

(declare-fun b!5463083 () Bool)

(declare-fun e!3382688 () Bool)

(declare-fun tp!1502651 () Bool)

(assert (=> b!5463083 (= e!3382688 tp!1502651)))

(declare-fun b!5463084 () Bool)

(declare-fun tp!1502648 () Bool)

(assert (=> b!5463084 (= e!3382687 (and (inv!81499 (h!68527 zl!343)) e!3382688 tp!1502648))))

(declare-fun b!5463085 () Bool)

(assert (=> b!5463085 (= e!3382691 tp_is_empty!39855)))

(declare-fun b!5463086 () Bool)

(assert (=> b!5463086 (= e!3382690 (not e!3382693))))

(declare-fun res!2327265 () Bool)

(assert (=> b!5463086 (=> res!2327265 e!3382693)))

(assert (=> b!5463086 (= res!2327265 (not ((_ is Cons!62079) zl!343)))))

(declare-fun matchR!7486 (Regex!15301 List!62204) Bool)

(declare-fun matchRSpec!2404 (Regex!15301 List!62204) Bool)

(assert (=> b!5463086 (= (matchR!7486 r!7292 s!2326) (matchRSpec!2404 r!7292 s!2326))))

(declare-fun lt!2232808 () Unit!155052)

(declare-fun mainMatchTheorem!2404 (Regex!15301 List!62204) Unit!155052)

(assert (=> b!5463086 (= lt!2232808 (mainMatchTheorem!2404 r!7292 s!2326))))

(assert (= (and start!571994 res!2327267) b!5463079))

(assert (= (and b!5463079 res!2327263) b!5463075))

(assert (= (and b!5463075 res!2327270) b!5463086))

(assert (= (and b!5463086 (not res!2327265)) b!5463072))

(assert (= (and b!5463072 (not res!2327262)) b!5463076))

(assert (= (and b!5463076 (not res!2327264)) b!5463069))

(assert (= (and b!5463069 (not res!2327261)) b!5463078))

(assert (= (and b!5463078 (not res!2327269)) b!5463080))

(assert (= (and b!5463080 (not res!2327268)) b!5463070))

(assert (= (and b!5463070 (not res!2327266)) b!5463077))

(assert (= (and start!571994 ((_ is ElementMatch!15301) r!7292)) b!5463085))

(assert (= (and start!571994 ((_ is Concat!24146) r!7292)) b!5463081))

(assert (= (and start!571994 ((_ is Star!15301) r!7292)) b!5463071))

(assert (= (and start!571994 ((_ is Union!15301) r!7292)) b!5463074))

(assert (= (and start!571994 condSetEmpty!35767) setIsEmpty!35767))

(assert (= (and start!571994 (not condSetEmpty!35767)) setNonEmpty!35767))

(assert (= setNonEmpty!35767 b!5463082))

(assert (= b!5463084 b!5463083))

(assert (= (and start!571994 ((_ is Cons!62079) zl!343)) b!5463084))

(assert (= (and start!571994 ((_ is Cons!62080) s!2326)) b!5463073))

(declare-fun m!6484084 () Bool)

(assert (=> b!5463070 m!6484084))

(declare-fun m!6484086 () Bool)

(assert (=> b!5463070 m!6484086))

(declare-fun m!6484088 () Bool)

(assert (=> b!5463070 m!6484088))

(declare-fun m!6484090 () Bool)

(assert (=> b!5463070 m!6484090))

(assert (=> b!5463070 m!6484086))

(assert (=> b!5463070 m!6484090))

(declare-fun m!6484092 () Bool)

(assert (=> b!5463070 m!6484092))

(declare-fun m!6484094 () Bool)

(assert (=> b!5463070 m!6484094))

(declare-fun m!6484096 () Bool)

(assert (=> b!5463070 m!6484096))

(declare-fun m!6484098 () Bool)

(assert (=> b!5463070 m!6484098))

(assert (=> b!5463070 m!6484086))

(declare-fun m!6484100 () Bool)

(assert (=> b!5463070 m!6484100))

(declare-fun m!6484102 () Bool)

(assert (=> b!5463079 m!6484102))

(declare-fun m!6484104 () Bool)

(assert (=> b!5463075 m!6484104))

(declare-fun m!6484106 () Bool)

(assert (=> start!571994 m!6484106))

(declare-fun m!6484108 () Bool)

(assert (=> b!5463076 m!6484108))

(declare-fun m!6484110 () Bool)

(assert (=> b!5463084 m!6484110))

(declare-fun m!6484112 () Bool)

(assert (=> b!5463077 m!6484112))

(declare-fun m!6484114 () Bool)

(assert (=> b!5463072 m!6484114))

(declare-fun m!6484116 () Bool)

(assert (=> setNonEmpty!35767 m!6484116))

(declare-fun m!6484118 () Bool)

(assert (=> b!5463086 m!6484118))

(declare-fun m!6484120 () Bool)

(assert (=> b!5463086 m!6484120))

(declare-fun m!6484122 () Bool)

(assert (=> b!5463086 m!6484122))

(declare-fun m!6484124 () Bool)

(assert (=> b!5463078 m!6484124))

(assert (=> b!5463078 m!6484124))

(declare-fun m!6484126 () Bool)

(assert (=> b!5463078 m!6484126))

(check-sat (not b!5463084) (not start!571994) (not b!5463082) (not b!5463075) tp_is_empty!39855 (not b!5463077) (not setNonEmpty!35767) (not b!5463073) (not b!5463081) (not b!5463071) (not b!5463074) (not b!5463078) (not b!5463079) (not b!5463086) (not b!5463072) (not b!5463076) (not b!5463083) (not b!5463070))
(check-sat)
(get-model)

(declare-fun d!1738334 () Bool)

(declare-fun lt!2232815 () Regex!15301)

(assert (=> d!1738334 (validRegex!7037 lt!2232815)))

(assert (=> d!1738334 (= lt!2232815 (generalisedUnion!1230 (unfocusZipperList!743 zl!343)))))

(assert (=> d!1738334 (= (unfocusZipper!1043 zl!343) lt!2232815)))

(declare-fun bs!1264324 () Bool)

(assert (= bs!1264324 d!1738334))

(declare-fun m!6484130 () Bool)

(assert (=> bs!1264324 m!6484130))

(assert (=> bs!1264324 m!6484124))

(assert (=> bs!1264324 m!6484124))

(assert (=> bs!1264324 m!6484126))

(assert (=> b!5463075 d!1738334))

(declare-fun d!1738340 () Bool)

(declare-fun choose!41523 (Int) Bool)

(assert (=> d!1738340 (= (Exists!2480 lambda!290044) (choose!41523 lambda!290044))))

(declare-fun bs!1264325 () Bool)

(assert (= bs!1264325 d!1738340))

(declare-fun m!6484132 () Bool)

(assert (=> bs!1264325 m!6484132))

(assert (=> b!5463070 d!1738340))

(declare-fun d!1738342 () Bool)

(declare-fun isEmpty!34052 (Option!15410) Bool)

(assert (=> d!1738342 (= (isDefined!12113 (findConcatSeparation!1824 (reg!15630 r!7292) r!7292 Nil!62080 s!2326 s!2326)) (not (isEmpty!34052 (findConcatSeparation!1824 (reg!15630 r!7292) r!7292 Nil!62080 s!2326 s!2326))))))

(declare-fun bs!1264326 () Bool)

(assert (= bs!1264326 d!1738342))

(assert (=> bs!1264326 m!6484090))

(declare-fun m!6484134 () Bool)

(assert (=> bs!1264326 m!6484134))

(assert (=> b!5463070 d!1738342))

(declare-fun bs!1264327 () Bool)

(declare-fun d!1738344 () Bool)

(assert (= bs!1264327 (and d!1738344 b!5463070)))

(declare-fun lambda!290053 () Int)

(assert (=> bs!1264327 (= lambda!290053 lambda!290043)))

(assert (=> bs!1264327 (not (= lambda!290053 lambda!290044))))

(assert (=> bs!1264327 (not (= lambda!290053 lambda!290045))))

(assert (=> d!1738344 true))

(assert (=> d!1738344 true))

(assert (=> d!1738344 true))

(declare-fun lambda!290054 () Int)

(assert (=> bs!1264327 (not (= lambda!290054 lambda!290043))))

(assert (=> bs!1264327 (not (= lambda!290054 lambda!290044))))

(assert (=> bs!1264327 (= lambda!290054 lambda!290045)))

(declare-fun bs!1264328 () Bool)

(assert (= bs!1264328 d!1738344))

(assert (=> bs!1264328 (not (= lambda!290054 lambda!290053))))

(assert (=> d!1738344 true))

(assert (=> d!1738344 true))

(assert (=> d!1738344 true))

(assert (=> d!1738344 (= (Exists!2480 lambda!290053) (Exists!2480 lambda!290054))))

(declare-fun lt!2232821 () Unit!155052)

(declare-fun choose!41524 (Regex!15301 Regex!15301 List!62204) Unit!155052)

(assert (=> d!1738344 (= lt!2232821 (choose!41524 (reg!15630 r!7292) r!7292 s!2326))))

(assert (=> d!1738344 (validRegex!7037 (reg!15630 r!7292))))

(assert (=> d!1738344 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1130 (reg!15630 r!7292) r!7292 s!2326) lt!2232821)))

(declare-fun m!6484156 () Bool)

(assert (=> bs!1264328 m!6484156))

(declare-fun m!6484158 () Bool)

(assert (=> bs!1264328 m!6484158))

(declare-fun m!6484160 () Bool)

(assert (=> bs!1264328 m!6484160))

(assert (=> bs!1264328 m!6484112))

(assert (=> b!5463070 d!1738344))

(declare-fun bs!1264329 () Bool)

(declare-fun d!1738348 () Bool)

(assert (= bs!1264329 (and d!1738348 b!5463070)))

(declare-fun lambda!290059 () Int)

(assert (=> bs!1264329 (= (= (Star!15301 (reg!15630 r!7292)) r!7292) (= lambda!290059 lambda!290043))))

(declare-fun bs!1264330 () Bool)

(assert (= bs!1264330 (and d!1738348 d!1738344)))

(assert (=> bs!1264330 (not (= lambda!290059 lambda!290054))))

(assert (=> bs!1264329 (not (= lambda!290059 lambda!290044))))

(assert (=> bs!1264329 (not (= lambda!290059 lambda!290045))))

(assert (=> bs!1264330 (= (= (Star!15301 (reg!15630 r!7292)) r!7292) (= lambda!290059 lambda!290053))))

(assert (=> d!1738348 true))

(assert (=> d!1738348 true))

(declare-fun lambda!290060 () Int)

(assert (=> bs!1264329 (not (= lambda!290060 lambda!290043))))

(assert (=> bs!1264330 (not (= lambda!290060 lambda!290054))))

(assert (=> bs!1264329 (= (= (Star!15301 (reg!15630 r!7292)) r!7292) (= lambda!290060 lambda!290044))))

(assert (=> bs!1264329 (not (= lambda!290060 lambda!290045))))

(declare-fun bs!1264331 () Bool)

(assert (= bs!1264331 d!1738348))

(assert (=> bs!1264331 (not (= lambda!290060 lambda!290059))))

(assert (=> bs!1264330 (not (= lambda!290060 lambda!290053))))

(assert (=> d!1738348 true))

(assert (=> d!1738348 true))

(assert (=> d!1738348 (= (Exists!2480 lambda!290059) (Exists!2480 lambda!290060))))

(declare-fun lt!2232827 () Unit!155052)

(declare-fun choose!41525 (Regex!15301 List!62204) Unit!155052)

(assert (=> d!1738348 (= lt!2232827 (choose!41525 (reg!15630 r!7292) s!2326))))

(assert (=> d!1738348 (validRegex!7037 (reg!15630 r!7292))))

(assert (=> d!1738348 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!454 (reg!15630 r!7292) s!2326) lt!2232827)))

(declare-fun m!6484174 () Bool)

(assert (=> bs!1264331 m!6484174))

(declare-fun m!6484176 () Bool)

(assert (=> bs!1264331 m!6484176))

(declare-fun m!6484178 () Bool)

(assert (=> bs!1264331 m!6484178))

(assert (=> bs!1264331 m!6484112))

(assert (=> b!5463070 d!1738348))

(declare-fun d!1738352 () Bool)

(assert (=> d!1738352 (= (Exists!2480 lambda!290043) (choose!41523 lambda!290043))))

(declare-fun bs!1264332 () Bool)

(assert (= bs!1264332 d!1738352))

(declare-fun m!6484180 () Bool)

(assert (=> bs!1264332 m!6484180))

(assert (=> b!5463070 d!1738352))

(declare-fun d!1738354 () Bool)

(assert (=> d!1738354 (= (isEmpty!34050 s!2326) ((_ is Nil!62080) s!2326))))

(assert (=> b!5463070 d!1738354))

(declare-fun d!1738356 () Bool)

(assert (=> d!1738356 (= (Exists!2480 lambda!290045) (choose!41523 lambda!290045))))

(declare-fun bs!1264333 () Bool)

(assert (= bs!1264333 d!1738356))

(declare-fun m!6484182 () Bool)

(assert (=> bs!1264333 m!6484182))

(assert (=> b!5463070 d!1738356))

(declare-fun d!1738358 () Bool)

(declare-fun e!3382777 () Bool)

(assert (=> d!1738358 e!3382777))

(declare-fun res!2327350 () Bool)

(assert (=> d!1738358 (=> res!2327350 e!3382777)))

(declare-fun e!3382780 () Bool)

(assert (=> d!1738358 (= res!2327350 e!3382780)))

(declare-fun res!2327351 () Bool)

(assert (=> d!1738358 (=> (not res!2327351) (not e!3382780))))

(declare-fun lt!2232838 () Option!15410)

(assert (=> d!1738358 (= res!2327351 (isDefined!12113 lt!2232838))))

(declare-fun e!3382778 () Option!15410)

(assert (=> d!1738358 (= lt!2232838 e!3382778)))

(declare-fun c!954625 () Bool)

(declare-fun e!3382779 () Bool)

(assert (=> d!1738358 (= c!954625 e!3382779)))

(declare-fun res!2327349 () Bool)

(assert (=> d!1738358 (=> (not res!2327349) (not e!3382779))))

(assert (=> d!1738358 (= res!2327349 (matchR!7486 (reg!15630 r!7292) Nil!62080))))

(assert (=> d!1738358 (validRegex!7037 (reg!15630 r!7292))))

(assert (=> d!1738358 (= (findConcatSeparation!1824 (reg!15630 r!7292) r!7292 Nil!62080 s!2326 s!2326) lt!2232838)))

(declare-fun b!5463242 () Bool)

(assert (=> b!5463242 (= e!3382779 (matchR!7486 r!7292 s!2326))))

(declare-fun b!5463243 () Bool)

(declare-fun res!2327352 () Bool)

(assert (=> b!5463243 (=> (not res!2327352) (not e!3382780))))

(declare-fun get!21407 (Option!15410) tuple2!64996)

(assert (=> b!5463243 (= res!2327352 (matchR!7486 r!7292 (_2!35801 (get!21407 lt!2232838))))))

(declare-fun b!5463244 () Bool)

(declare-fun ++!13663 (List!62204 List!62204) List!62204)

(assert (=> b!5463244 (= e!3382780 (= (++!13663 (_1!35801 (get!21407 lt!2232838)) (_2!35801 (get!21407 lt!2232838))) s!2326))))

(declare-fun b!5463245 () Bool)

(assert (=> b!5463245 (= e!3382778 (Some!15409 (tuple2!64997 Nil!62080 s!2326)))))

(declare-fun b!5463246 () Bool)

(declare-fun lt!2232839 () Unit!155052)

(declare-fun lt!2232837 () Unit!155052)

(assert (=> b!5463246 (= lt!2232839 lt!2232837)))

(assert (=> b!5463246 (= (++!13663 (++!13663 Nil!62080 (Cons!62080 (h!68528 s!2326) Nil!62080)) (t!375433 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1884 (List!62204 C!30872 List!62204 List!62204) Unit!155052)

(assert (=> b!5463246 (= lt!2232837 (lemmaMoveElementToOtherListKeepsConcatEq!1884 Nil!62080 (h!68528 s!2326) (t!375433 s!2326) s!2326))))

(declare-fun e!3382781 () Option!15410)

(assert (=> b!5463246 (= e!3382781 (findConcatSeparation!1824 (reg!15630 r!7292) r!7292 (++!13663 Nil!62080 (Cons!62080 (h!68528 s!2326) Nil!62080)) (t!375433 s!2326) s!2326))))

(declare-fun b!5463247 () Bool)

(declare-fun res!2327348 () Bool)

(assert (=> b!5463247 (=> (not res!2327348) (not e!3382780))))

(assert (=> b!5463247 (= res!2327348 (matchR!7486 (reg!15630 r!7292) (_1!35801 (get!21407 lt!2232838))))))

(declare-fun b!5463248 () Bool)

(assert (=> b!5463248 (= e!3382778 e!3382781)))

(declare-fun c!954626 () Bool)

(assert (=> b!5463248 (= c!954626 ((_ is Nil!62080) s!2326))))

(declare-fun b!5463249 () Bool)

(assert (=> b!5463249 (= e!3382777 (not (isDefined!12113 lt!2232838)))))

(declare-fun b!5463250 () Bool)

(assert (=> b!5463250 (= e!3382781 None!15409)))

(assert (= (and d!1738358 res!2327349) b!5463242))

(assert (= (and d!1738358 c!954625) b!5463245))

(assert (= (and d!1738358 (not c!954625)) b!5463248))

(assert (= (and b!5463248 c!954626) b!5463250))

(assert (= (and b!5463248 (not c!954626)) b!5463246))

(assert (= (and d!1738358 res!2327351) b!5463247))

(assert (= (and b!5463247 res!2327348) b!5463243))

(assert (= (and b!5463243 res!2327352) b!5463244))

(assert (= (and d!1738358 (not res!2327350)) b!5463249))

(declare-fun m!6484192 () Bool)

(assert (=> b!5463246 m!6484192))

(assert (=> b!5463246 m!6484192))

(declare-fun m!6484194 () Bool)

(assert (=> b!5463246 m!6484194))

(declare-fun m!6484196 () Bool)

(assert (=> b!5463246 m!6484196))

(assert (=> b!5463246 m!6484192))

(declare-fun m!6484198 () Bool)

(assert (=> b!5463246 m!6484198))

(declare-fun m!6484202 () Bool)

(assert (=> d!1738358 m!6484202))

(declare-fun m!6484206 () Bool)

(assert (=> d!1738358 m!6484206))

(assert (=> d!1738358 m!6484112))

(assert (=> b!5463249 m!6484202))

(assert (=> b!5463242 m!6484118))

(declare-fun m!6484210 () Bool)

(assert (=> b!5463247 m!6484210))

(declare-fun m!6484212 () Bool)

(assert (=> b!5463247 m!6484212))

(assert (=> b!5463243 m!6484210))

(declare-fun m!6484214 () Bool)

(assert (=> b!5463243 m!6484214))

(assert (=> b!5463244 m!6484210))

(declare-fun m!6484216 () Bool)

(assert (=> b!5463244 m!6484216))

(assert (=> b!5463070 d!1738358))

(declare-fun bs!1264339 () Bool)

(declare-fun d!1738366 () Bool)

(assert (= bs!1264339 (and d!1738366 b!5463070)))

(declare-fun lambda!290072 () Int)

(assert (=> bs!1264339 (= lambda!290072 lambda!290043)))

(declare-fun bs!1264340 () Bool)

(assert (= bs!1264340 (and d!1738366 d!1738344)))

(assert (=> bs!1264340 (not (= lambda!290072 lambda!290054))))

(declare-fun bs!1264341 () Bool)

(assert (= bs!1264341 (and d!1738366 d!1738348)))

(assert (=> bs!1264341 (not (= lambda!290072 lambda!290060))))

(assert (=> bs!1264339 (not (= lambda!290072 lambda!290044))))

(assert (=> bs!1264339 (not (= lambda!290072 lambda!290045))))

(assert (=> bs!1264341 (= (= r!7292 (Star!15301 (reg!15630 r!7292))) (= lambda!290072 lambda!290059))))

(assert (=> bs!1264340 (= lambda!290072 lambda!290053)))

(assert (=> d!1738366 true))

(assert (=> d!1738366 true))

(assert (=> d!1738366 true))

(assert (=> d!1738366 (= (isDefined!12113 (findConcatSeparation!1824 (reg!15630 r!7292) r!7292 Nil!62080 s!2326 s!2326)) (Exists!2480 lambda!290072))))

(declare-fun lt!2232847 () Unit!155052)

(declare-fun choose!41526 (Regex!15301 Regex!15301 List!62204) Unit!155052)

(assert (=> d!1738366 (= lt!2232847 (choose!41526 (reg!15630 r!7292) r!7292 s!2326))))

(assert (=> d!1738366 (validRegex!7037 (reg!15630 r!7292))))

(assert (=> d!1738366 (= (lemmaFindConcatSeparationEquivalentToExists!1588 (reg!15630 r!7292) r!7292 s!2326) lt!2232847)))

(declare-fun bs!1264342 () Bool)

(assert (= bs!1264342 d!1738366))

(assert (=> bs!1264342 m!6484090))

(assert (=> bs!1264342 m!6484092))

(assert (=> bs!1264342 m!6484112))

(declare-fun m!6484238 () Bool)

(assert (=> bs!1264342 m!6484238))

(assert (=> bs!1264342 m!6484090))

(declare-fun m!6484240 () Bool)

(assert (=> bs!1264342 m!6484240))

(assert (=> b!5463070 d!1738366))

(declare-fun d!1738370 () Bool)

(declare-fun lambda!290075 () Int)

(declare-fun forall!14596 (List!62202 Int) Bool)

(assert (=> d!1738370 (= (inv!81499 (h!68527 zl!343)) (forall!14596 (exprs!5185 (h!68527 zl!343)) lambda!290075))))

(declare-fun bs!1264343 () Bool)

(assert (= bs!1264343 d!1738370))

(declare-fun m!6484242 () Bool)

(assert (=> bs!1264343 m!6484242))

(assert (=> b!5463084 d!1738370))

(declare-fun d!1738372 () Bool)

(declare-fun res!2327389 () Bool)

(declare-fun e!3382839 () Bool)

(assert (=> d!1738372 (=> res!2327389 e!3382839)))

(assert (=> d!1738372 (= res!2327389 ((_ is ElementMatch!15301) r!7292))))

(assert (=> d!1738372 (= (validRegex!7037 r!7292) e!3382839)))

(declare-fun call!403211 () Bool)

(declare-fun c!954651 () Bool)

(declare-fun c!954650 () Bool)

(declare-fun bm!403206 () Bool)

(assert (=> bm!403206 (= call!403211 (validRegex!7037 (ite c!954650 (reg!15630 r!7292) (ite c!954651 (regOne!31115 r!7292) (regOne!31114 r!7292)))))))

(declare-fun bm!403207 () Bool)

(declare-fun call!403213 () Bool)

(assert (=> bm!403207 (= call!403213 call!403211)))

(declare-fun b!5463330 () Bool)

(declare-fun e!3382841 () Bool)

(declare-fun call!403212 () Bool)

(assert (=> b!5463330 (= e!3382841 call!403212)))

(declare-fun b!5463331 () Bool)

(declare-fun e!3382838 () Bool)

(declare-fun e!3382836 () Bool)

(assert (=> b!5463331 (= e!3382838 e!3382836)))

(declare-fun res!2327388 () Bool)

(declare-fun nullable!5462 (Regex!15301) Bool)

(assert (=> b!5463331 (= res!2327388 (not (nullable!5462 (reg!15630 r!7292))))))

(assert (=> b!5463331 (=> (not res!2327388) (not e!3382836))))

(declare-fun b!5463332 () Bool)

(declare-fun res!2327386 () Bool)

(declare-fun e!3382837 () Bool)

(assert (=> b!5463332 (=> res!2327386 e!3382837)))

(assert (=> b!5463332 (= res!2327386 (not ((_ is Concat!24146) r!7292)))))

(declare-fun e!3382842 () Bool)

(assert (=> b!5463332 (= e!3382842 e!3382837)))

(declare-fun b!5463333 () Bool)

(assert (=> b!5463333 (= e!3382836 call!403211)))

(declare-fun b!5463334 () Bool)

(declare-fun e!3382840 () Bool)

(assert (=> b!5463334 (= e!3382837 e!3382840)))

(declare-fun res!2327390 () Bool)

(assert (=> b!5463334 (=> (not res!2327390) (not e!3382840))))

(assert (=> b!5463334 (= res!2327390 call!403213)))

(declare-fun b!5463335 () Bool)

(assert (=> b!5463335 (= e!3382838 e!3382842)))

(assert (=> b!5463335 (= c!954651 ((_ is Union!15301) r!7292))))

(declare-fun b!5463336 () Bool)

(declare-fun res!2327387 () Bool)

(assert (=> b!5463336 (=> (not res!2327387) (not e!3382841))))

(assert (=> b!5463336 (= res!2327387 call!403213)))

(assert (=> b!5463336 (= e!3382842 e!3382841)))

(declare-fun b!5463337 () Bool)

(assert (=> b!5463337 (= e!3382839 e!3382838)))

(assert (=> b!5463337 (= c!954650 ((_ is Star!15301) r!7292))))

(declare-fun b!5463338 () Bool)

(assert (=> b!5463338 (= e!3382840 call!403212)))

(declare-fun bm!403208 () Bool)

(assert (=> bm!403208 (= call!403212 (validRegex!7037 (ite c!954651 (regTwo!31115 r!7292) (regTwo!31114 r!7292))))))

(assert (= (and d!1738372 (not res!2327389)) b!5463337))

(assert (= (and b!5463337 c!954650) b!5463331))

(assert (= (and b!5463337 (not c!954650)) b!5463335))

(assert (= (and b!5463331 res!2327388) b!5463333))

(assert (= (and b!5463335 c!954651) b!5463336))

(assert (= (and b!5463335 (not c!954651)) b!5463332))

(assert (= (and b!5463336 res!2327387) b!5463330))

(assert (= (and b!5463332 (not res!2327386)) b!5463334))

(assert (= (and b!5463334 res!2327390) b!5463338))

(assert (= (or b!5463330 b!5463338) bm!403208))

(assert (= (or b!5463336 b!5463334) bm!403207))

(assert (= (or b!5463333 bm!403207) bm!403206))

(declare-fun m!6484250 () Bool)

(assert (=> bm!403206 m!6484250))

(declare-fun m!6484252 () Bool)

(assert (=> b!5463331 m!6484252))

(declare-fun m!6484254 () Bool)

(assert (=> bm!403208 m!6484254))

(assert (=> start!571994 d!1738372))

(declare-fun d!1738378 () Bool)

(declare-fun e!3382845 () Bool)

(assert (=> d!1738378 e!3382845))

(declare-fun res!2327393 () Bool)

(assert (=> d!1738378 (=> (not res!2327393) (not e!3382845))))

(declare-fun lt!2232854 () List!62203)

(declare-fun noDuplicate!1440 (List!62203) Bool)

(assert (=> d!1738378 (= res!2327393 (noDuplicate!1440 lt!2232854))))

(declare-fun choose!41529 ((InoxSet Context!9370)) List!62203)

(assert (=> d!1738378 (= lt!2232854 (choose!41529 z!1189))))

(assert (=> d!1738378 (= (toList!9085 z!1189) lt!2232854)))

(declare-fun b!5463341 () Bool)

(declare-fun content!11179 (List!62203) (InoxSet Context!9370))

(assert (=> b!5463341 (= e!3382845 (= (content!11179 lt!2232854) z!1189))))

(assert (= (and d!1738378 res!2327393) b!5463341))

(declare-fun m!6484256 () Bool)

(assert (=> d!1738378 m!6484256))

(declare-fun m!6484258 () Bool)

(assert (=> d!1738378 m!6484258))

(declare-fun m!6484260 () Bool)

(assert (=> b!5463341 m!6484260))

(assert (=> b!5463079 d!1738378))

(declare-fun d!1738380 () Bool)

(assert (=> d!1738380 (= (isEmpty!34051 (t!375432 zl!343)) ((_ is Nil!62079) (t!375432 zl!343)))))

(assert (=> b!5463072 d!1738380))

(declare-fun b!5463387 () Bool)

(declare-fun res!2327423 () Bool)

(declare-fun e!3382876 () Bool)

(assert (=> b!5463387 (=> (not res!2327423) (not e!3382876))))

(declare-fun call!403223 () Bool)

(assert (=> b!5463387 (= res!2327423 (not call!403223))))

(declare-fun b!5463388 () Bool)

(declare-fun res!2327429 () Bool)

(declare-fun e!3382871 () Bool)

(assert (=> b!5463388 (=> res!2327429 e!3382871)))

(assert (=> b!5463388 (= res!2327429 (not ((_ is ElementMatch!15301) r!7292)))))

(declare-fun e!3382874 () Bool)

(assert (=> b!5463388 (= e!3382874 e!3382871)))

(declare-fun b!5463389 () Bool)

(declare-fun res!2327425 () Bool)

(declare-fun e!3382875 () Bool)

(assert (=> b!5463389 (=> res!2327425 e!3382875)))

(declare-fun tail!10794 (List!62204) List!62204)

(assert (=> b!5463389 (= res!2327425 (not (isEmpty!34050 (tail!10794 s!2326))))))

(declare-fun b!5463390 () Bool)

(declare-fun e!3382872 () Bool)

(assert (=> b!5463390 (= e!3382872 (nullable!5462 r!7292))))

(declare-fun d!1738382 () Bool)

(declare-fun e!3382877 () Bool)

(assert (=> d!1738382 e!3382877))

(declare-fun c!954661 () Bool)

(assert (=> d!1738382 (= c!954661 ((_ is EmptyExpr!15301) r!7292))))

(declare-fun lt!2232859 () Bool)

(assert (=> d!1738382 (= lt!2232859 e!3382872)))

(declare-fun c!954660 () Bool)

(assert (=> d!1738382 (= c!954660 (isEmpty!34050 s!2326))))

(assert (=> d!1738382 (validRegex!7037 r!7292)))

(assert (=> d!1738382 (= (matchR!7486 r!7292 s!2326) lt!2232859)))

(declare-fun b!5463391 () Bool)

(declare-fun e!3382873 () Bool)

(assert (=> b!5463391 (= e!3382871 e!3382873)))

(declare-fun res!2327427 () Bool)

(assert (=> b!5463391 (=> (not res!2327427) (not e!3382873))))

(assert (=> b!5463391 (= res!2327427 (not lt!2232859))))

(declare-fun b!5463392 () Bool)

(assert (=> b!5463392 (= e!3382873 e!3382875)))

(declare-fun res!2327430 () Bool)

(assert (=> b!5463392 (=> res!2327430 e!3382875)))

(assert (=> b!5463392 (= res!2327430 call!403223)))

(declare-fun b!5463393 () Bool)

(declare-fun res!2327426 () Bool)

(assert (=> b!5463393 (=> (not res!2327426) (not e!3382876))))

(assert (=> b!5463393 (= res!2327426 (isEmpty!34050 (tail!10794 s!2326)))))

(declare-fun bm!403218 () Bool)

(assert (=> bm!403218 (= call!403223 (isEmpty!34050 s!2326))))

(declare-fun b!5463394 () Bool)

(declare-fun derivativeStep!4311 (Regex!15301 C!30872) Regex!15301)

(declare-fun head!11697 (List!62204) C!30872)

(assert (=> b!5463394 (= e!3382872 (matchR!7486 (derivativeStep!4311 r!7292 (head!11697 s!2326)) (tail!10794 s!2326)))))

(declare-fun b!5463395 () Bool)

(assert (=> b!5463395 (= e!3382876 (= (head!11697 s!2326) (c!954587 r!7292)))))

(declare-fun b!5463396 () Bool)

(assert (=> b!5463396 (= e!3382877 (= lt!2232859 call!403223))))

(declare-fun b!5463397 () Bool)

(assert (=> b!5463397 (= e!3382877 e!3382874)))

(declare-fun c!954662 () Bool)

(assert (=> b!5463397 (= c!954662 ((_ is EmptyLang!15301) r!7292))))

(declare-fun b!5463398 () Bool)

(assert (=> b!5463398 (= e!3382874 (not lt!2232859))))

(declare-fun b!5463399 () Bool)

(assert (=> b!5463399 (= e!3382875 (not (= (head!11697 s!2326) (c!954587 r!7292))))))

(declare-fun b!5463400 () Bool)

(declare-fun res!2327428 () Bool)

(assert (=> b!5463400 (=> res!2327428 e!3382871)))

(assert (=> b!5463400 (= res!2327428 e!3382876)))

(declare-fun res!2327424 () Bool)

(assert (=> b!5463400 (=> (not res!2327424) (not e!3382876))))

(assert (=> b!5463400 (= res!2327424 lt!2232859)))

(assert (= (and d!1738382 c!954660) b!5463390))

(assert (= (and d!1738382 (not c!954660)) b!5463394))

(assert (= (and d!1738382 c!954661) b!5463396))

(assert (= (and d!1738382 (not c!954661)) b!5463397))

(assert (= (and b!5463397 c!954662) b!5463398))

(assert (= (and b!5463397 (not c!954662)) b!5463388))

(assert (= (and b!5463388 (not res!2327429)) b!5463400))

(assert (= (and b!5463400 res!2327424) b!5463387))

(assert (= (and b!5463387 res!2327423) b!5463393))

(assert (= (and b!5463393 res!2327426) b!5463395))

(assert (= (and b!5463400 (not res!2327428)) b!5463391))

(assert (= (and b!5463391 res!2327427) b!5463392))

(assert (= (and b!5463392 (not res!2327430)) b!5463389))

(assert (= (and b!5463389 (not res!2327425)) b!5463399))

(assert (= (or b!5463396 b!5463387 b!5463392) bm!403218))

(declare-fun m!6484274 () Bool)

(assert (=> b!5463389 m!6484274))

(assert (=> b!5463389 m!6484274))

(declare-fun m!6484276 () Bool)

(assert (=> b!5463389 m!6484276))

(declare-fun m!6484278 () Bool)

(assert (=> b!5463395 m!6484278))

(assert (=> b!5463393 m!6484274))

(assert (=> b!5463393 m!6484274))

(assert (=> b!5463393 m!6484276))

(assert (=> bm!403218 m!6484084))

(assert (=> b!5463399 m!6484278))

(declare-fun m!6484280 () Bool)

(assert (=> b!5463390 m!6484280))

(assert (=> b!5463394 m!6484278))

(assert (=> b!5463394 m!6484278))

(declare-fun m!6484282 () Bool)

(assert (=> b!5463394 m!6484282))

(assert (=> b!5463394 m!6484274))

(assert (=> b!5463394 m!6484282))

(assert (=> b!5463394 m!6484274))

(declare-fun m!6484284 () Bool)

(assert (=> b!5463394 m!6484284))

(assert (=> d!1738382 m!6484084))

(assert (=> d!1738382 m!6484106))

(assert (=> b!5463086 d!1738382))

(declare-fun bs!1264365 () Bool)

(declare-fun b!5463453 () Bool)

(assert (= bs!1264365 (and b!5463453 b!5463070)))

(declare-fun lambda!290098 () Int)

(assert (=> bs!1264365 (not (= lambda!290098 lambda!290043))))

(declare-fun bs!1264366 () Bool)

(assert (= bs!1264366 (and b!5463453 d!1738344)))

(assert (=> bs!1264366 (not (= lambda!290098 lambda!290054))))

(declare-fun bs!1264367 () Bool)

(assert (= bs!1264367 (and b!5463453 d!1738348)))

(assert (=> bs!1264367 (= (= r!7292 (Star!15301 (reg!15630 r!7292))) (= lambda!290098 lambda!290060))))

(assert (=> bs!1264365 (= lambda!290098 lambda!290044)))

(assert (=> bs!1264365 (not (= lambda!290098 lambda!290045))))

(declare-fun bs!1264369 () Bool)

(assert (= bs!1264369 (and b!5463453 d!1738366)))

(assert (=> bs!1264369 (not (= lambda!290098 lambda!290072))))

(assert (=> bs!1264367 (not (= lambda!290098 lambda!290059))))

(assert (=> bs!1264366 (not (= lambda!290098 lambda!290053))))

(assert (=> b!5463453 true))

(assert (=> b!5463453 true))

(declare-fun bs!1264370 () Bool)

(declare-fun b!5463444 () Bool)

(assert (= bs!1264370 (and b!5463444 b!5463453)))

(declare-fun lambda!290100 () Int)

(assert (=> bs!1264370 (not (= lambda!290100 lambda!290098))))

(declare-fun bs!1264371 () Bool)

(assert (= bs!1264371 (and b!5463444 b!5463070)))

(assert (=> bs!1264371 (not (= lambda!290100 lambda!290043))))

(declare-fun bs!1264372 () Bool)

(assert (= bs!1264372 (and b!5463444 d!1738344)))

(assert (=> bs!1264372 (= (and (= (regOne!31114 r!7292) (reg!15630 r!7292)) (= (regTwo!31114 r!7292) r!7292)) (= lambda!290100 lambda!290054))))

(declare-fun bs!1264373 () Bool)

(assert (= bs!1264373 (and b!5463444 d!1738348)))

(assert (=> bs!1264373 (not (= lambda!290100 lambda!290060))))

(assert (=> bs!1264371 (not (= lambda!290100 lambda!290044))))

(assert (=> bs!1264371 (= (and (= (regOne!31114 r!7292) (reg!15630 r!7292)) (= (regTwo!31114 r!7292) r!7292)) (= lambda!290100 lambda!290045))))

(declare-fun bs!1264375 () Bool)

(assert (= bs!1264375 (and b!5463444 d!1738366)))

(assert (=> bs!1264375 (not (= lambda!290100 lambda!290072))))

(assert (=> bs!1264373 (not (= lambda!290100 lambda!290059))))

(assert (=> bs!1264372 (not (= lambda!290100 lambda!290053))))

(assert (=> b!5463444 true))

(assert (=> b!5463444 true))

(declare-fun b!5463443 () Bool)

(declare-fun e!3382903 () Bool)

(assert (=> b!5463443 (= e!3382903 (matchRSpec!2404 (regTwo!31115 r!7292) s!2326))))

(declare-fun e!3382905 () Bool)

(declare-fun call!403228 () Bool)

(assert (=> b!5463444 (= e!3382905 call!403228)))

(declare-fun b!5463445 () Bool)

(declare-fun e!3382900 () Bool)

(assert (=> b!5463445 (= e!3382900 e!3382903)))

(declare-fun res!2327458 () Bool)

(assert (=> b!5463445 (= res!2327458 (matchRSpec!2404 (regOne!31115 r!7292) s!2326))))

(assert (=> b!5463445 (=> res!2327458 e!3382903)))

(declare-fun b!5463446 () Bool)

(declare-fun e!3382902 () Bool)

(assert (=> b!5463446 (= e!3382902 (= s!2326 (Cons!62080 (c!954587 r!7292) Nil!62080)))))

(declare-fun d!1738394 () Bool)

(declare-fun c!954671 () Bool)

(assert (=> d!1738394 (= c!954671 ((_ is EmptyExpr!15301) r!7292))))

(declare-fun e!3382904 () Bool)

(assert (=> d!1738394 (= (matchRSpec!2404 r!7292 s!2326) e!3382904)))

(declare-fun c!954674 () Bool)

(declare-fun bm!403223 () Bool)

(assert (=> bm!403223 (= call!403228 (Exists!2480 (ite c!954674 lambda!290098 lambda!290100)))))

(declare-fun b!5463447 () Bool)

(declare-fun c!954673 () Bool)

(assert (=> b!5463447 (= c!954673 ((_ is ElementMatch!15301) r!7292))))

(declare-fun e!3382906 () Bool)

(assert (=> b!5463447 (= e!3382906 e!3382902)))

(declare-fun b!5463448 () Bool)

(assert (=> b!5463448 (= e!3382900 e!3382905)))

(assert (=> b!5463448 (= c!954674 ((_ is Star!15301) r!7292))))

(declare-fun bm!403224 () Bool)

(declare-fun call!403229 () Bool)

(assert (=> bm!403224 (= call!403229 (isEmpty!34050 s!2326))))

(declare-fun b!5463449 () Bool)

(declare-fun res!2327459 () Bool)

(declare-fun e!3382901 () Bool)

(assert (=> b!5463449 (=> res!2327459 e!3382901)))

(assert (=> b!5463449 (= res!2327459 call!403229)))

(assert (=> b!5463449 (= e!3382905 e!3382901)))

(declare-fun b!5463450 () Bool)

(declare-fun c!954672 () Bool)

(assert (=> b!5463450 (= c!954672 ((_ is Union!15301) r!7292))))

(assert (=> b!5463450 (= e!3382902 e!3382900)))

(declare-fun b!5463451 () Bool)

(assert (=> b!5463451 (= e!3382904 call!403229)))

(declare-fun b!5463452 () Bool)

(assert (=> b!5463452 (= e!3382904 e!3382906)))

(declare-fun res!2327457 () Bool)

(assert (=> b!5463452 (= res!2327457 (not ((_ is EmptyLang!15301) r!7292)))))

(assert (=> b!5463452 (=> (not res!2327457) (not e!3382906))))

(assert (=> b!5463453 (= e!3382901 call!403228)))

(assert (= (and d!1738394 c!954671) b!5463451))

(assert (= (and d!1738394 (not c!954671)) b!5463452))

(assert (= (and b!5463452 res!2327457) b!5463447))

(assert (= (and b!5463447 c!954673) b!5463446))

(assert (= (and b!5463447 (not c!954673)) b!5463450))

(assert (= (and b!5463450 c!954672) b!5463445))

(assert (= (and b!5463450 (not c!954672)) b!5463448))

(assert (= (and b!5463445 (not res!2327458)) b!5463443))

(assert (= (and b!5463448 c!954674) b!5463449))

(assert (= (and b!5463448 (not c!954674)) b!5463444))

(assert (= (and b!5463449 (not res!2327459)) b!5463453))

(assert (= (or b!5463453 b!5463444) bm!403223))

(assert (= (or b!5463451 b!5463449) bm!403224))

(declare-fun m!6484302 () Bool)

(assert (=> b!5463443 m!6484302))

(declare-fun m!6484304 () Bool)

(assert (=> b!5463445 m!6484304))

(declare-fun m!6484306 () Bool)

(assert (=> bm!403223 m!6484306))

(assert (=> bm!403224 m!6484084))

(assert (=> b!5463086 d!1738394))

(declare-fun d!1738406 () Bool)

(assert (=> d!1738406 (= (matchR!7486 r!7292 s!2326) (matchRSpec!2404 r!7292 s!2326))))

(declare-fun lt!2232866 () Unit!155052)

(declare-fun choose!41532 (Regex!15301 List!62204) Unit!155052)

(assert (=> d!1738406 (= lt!2232866 (choose!41532 r!7292 s!2326))))

(assert (=> d!1738406 (validRegex!7037 r!7292)))

(assert (=> d!1738406 (= (mainMatchTheorem!2404 r!7292 s!2326) lt!2232866)))

(declare-fun bs!1264377 () Bool)

(assert (= bs!1264377 d!1738406))

(assert (=> bs!1264377 m!6484118))

(assert (=> bs!1264377 m!6484120))

(declare-fun m!6484308 () Bool)

(assert (=> bs!1264377 m!6484308))

(assert (=> bs!1264377 m!6484106))

(assert (=> b!5463086 d!1738406))

(declare-fun bs!1264378 () Bool)

(declare-fun d!1738408 () Bool)

(assert (= bs!1264378 (and d!1738408 d!1738370)))

(declare-fun lambda!290103 () Int)

(assert (=> bs!1264378 (= lambda!290103 lambda!290075)))

(declare-fun b!5463492 () Bool)

(declare-fun e!3382930 () Bool)

(declare-fun lt!2232875 () Regex!15301)

(declare-fun head!11698 (List!62202) Regex!15301)

(assert (=> b!5463492 (= e!3382930 (= lt!2232875 (head!11698 (exprs!5185 (h!68527 zl!343)))))))

(declare-fun b!5463493 () Bool)

(declare-fun isConcat!545 (Regex!15301) Bool)

(assert (=> b!5463493 (= e!3382930 (isConcat!545 lt!2232875))))

(declare-fun b!5463494 () Bool)

(declare-fun e!3382931 () Bool)

(assert (=> b!5463494 (= e!3382931 e!3382930)))

(declare-fun c!954688 () Bool)

(declare-fun isEmpty!34054 (List!62202) Bool)

(declare-fun tail!10795 (List!62202) List!62202)

(assert (=> b!5463494 (= c!954688 (isEmpty!34054 (tail!10795 (exprs!5185 (h!68527 zl!343)))))))

(declare-fun b!5463495 () Bool)

(declare-fun e!3382934 () Regex!15301)

(assert (=> b!5463495 (= e!3382934 EmptyExpr!15301)))

(declare-fun e!3382933 () Bool)

(assert (=> d!1738408 e!3382933))

(declare-fun res!2327474 () Bool)

(assert (=> d!1738408 (=> (not res!2327474) (not e!3382933))))

(assert (=> d!1738408 (= res!2327474 (validRegex!7037 lt!2232875))))

(declare-fun e!3382929 () Regex!15301)

(assert (=> d!1738408 (= lt!2232875 e!3382929)))

(declare-fun c!954687 () Bool)

(declare-fun e!3382932 () Bool)

(assert (=> d!1738408 (= c!954687 e!3382932)))

(declare-fun res!2327475 () Bool)

(assert (=> d!1738408 (=> (not res!2327475) (not e!3382932))))

(assert (=> d!1738408 (= res!2327475 ((_ is Cons!62078) (exprs!5185 (h!68527 zl!343))))))

(assert (=> d!1738408 (forall!14596 (exprs!5185 (h!68527 zl!343)) lambda!290103)))

(assert (=> d!1738408 (= (generalisedConcat!970 (exprs!5185 (h!68527 zl!343))) lt!2232875)))

(declare-fun b!5463496 () Bool)

(assert (=> b!5463496 (= e!3382933 e!3382931)))

(declare-fun c!954689 () Bool)

(assert (=> b!5463496 (= c!954689 (isEmpty!34054 (exprs!5185 (h!68527 zl!343))))))

(declare-fun b!5463497 () Bool)

(assert (=> b!5463497 (= e!3382932 (isEmpty!34054 (t!375431 (exprs!5185 (h!68527 zl!343)))))))

(declare-fun b!5463498 () Bool)

(declare-fun isEmptyExpr!1022 (Regex!15301) Bool)

(assert (=> b!5463498 (= e!3382931 (isEmptyExpr!1022 lt!2232875))))

(declare-fun b!5463499 () Bool)

(assert (=> b!5463499 (= e!3382929 (h!68526 (exprs!5185 (h!68527 zl!343))))))

(declare-fun b!5463500 () Bool)

(assert (=> b!5463500 (= e!3382929 e!3382934)))

(declare-fun c!954690 () Bool)

(assert (=> b!5463500 (= c!954690 ((_ is Cons!62078) (exprs!5185 (h!68527 zl!343))))))

(declare-fun b!5463501 () Bool)

(assert (=> b!5463501 (= e!3382934 (Concat!24146 (h!68526 (exprs!5185 (h!68527 zl!343))) (generalisedConcat!970 (t!375431 (exprs!5185 (h!68527 zl!343))))))))

(assert (= (and d!1738408 res!2327475) b!5463497))

(assert (= (and d!1738408 c!954687) b!5463499))

(assert (= (and d!1738408 (not c!954687)) b!5463500))

(assert (= (and b!5463500 c!954690) b!5463501))

(assert (= (and b!5463500 (not c!954690)) b!5463495))

(assert (= (and d!1738408 res!2327474) b!5463496))

(assert (= (and b!5463496 c!954689) b!5463498))

(assert (= (and b!5463496 (not c!954689)) b!5463494))

(assert (= (and b!5463494 c!954688) b!5463492))

(assert (= (and b!5463494 (not c!954688)) b!5463493))

(declare-fun m!6484310 () Bool)

(assert (=> b!5463498 m!6484310))

(declare-fun m!6484312 () Bool)

(assert (=> d!1738408 m!6484312))

(declare-fun m!6484314 () Bool)

(assert (=> d!1738408 m!6484314))

(declare-fun m!6484316 () Bool)

(assert (=> b!5463501 m!6484316))

(declare-fun m!6484318 () Bool)

(assert (=> b!5463494 m!6484318))

(assert (=> b!5463494 m!6484318))

(declare-fun m!6484320 () Bool)

(assert (=> b!5463494 m!6484320))

(declare-fun m!6484322 () Bool)

(assert (=> b!5463493 m!6484322))

(declare-fun m!6484324 () Bool)

(assert (=> b!5463497 m!6484324))

(declare-fun m!6484326 () Bool)

(assert (=> b!5463492 m!6484326))

(declare-fun m!6484328 () Bool)

(assert (=> b!5463496 m!6484328))

(assert (=> b!5463076 d!1738408))

(declare-fun bs!1264379 () Bool)

(declare-fun d!1738410 () Bool)

(assert (= bs!1264379 (and d!1738410 d!1738370)))

(declare-fun lambda!290104 () Int)

(assert (=> bs!1264379 (= lambda!290104 lambda!290075)))

(declare-fun bs!1264380 () Bool)

(assert (= bs!1264380 (and d!1738410 d!1738408)))

(assert (=> bs!1264380 (= lambda!290104 lambda!290103)))

(assert (=> d!1738410 (= (inv!81499 setElem!35767) (forall!14596 (exprs!5185 setElem!35767) lambda!290104))))

(declare-fun bs!1264381 () Bool)

(assert (= bs!1264381 d!1738410))

(declare-fun m!6484330 () Bool)

(assert (=> bs!1264381 m!6484330))

(assert (=> setNonEmpty!35767 d!1738410))

(declare-fun d!1738412 () Bool)

(declare-fun res!2327479 () Bool)

(declare-fun e!3382938 () Bool)

(assert (=> d!1738412 (=> res!2327479 e!3382938)))

(assert (=> d!1738412 (= res!2327479 ((_ is ElementMatch!15301) (reg!15630 r!7292)))))

(assert (=> d!1738412 (= (validRegex!7037 (reg!15630 r!7292)) e!3382938)))

(declare-fun bm!403225 () Bool)

(declare-fun c!954692 () Bool)

(declare-fun c!954691 () Bool)

(declare-fun call!403230 () Bool)

(assert (=> bm!403225 (= call!403230 (validRegex!7037 (ite c!954691 (reg!15630 (reg!15630 r!7292)) (ite c!954692 (regOne!31115 (reg!15630 r!7292)) (regOne!31114 (reg!15630 r!7292))))))))

(declare-fun bm!403226 () Bool)

(declare-fun call!403232 () Bool)

(assert (=> bm!403226 (= call!403232 call!403230)))

(declare-fun b!5463502 () Bool)

(declare-fun e!3382940 () Bool)

(declare-fun call!403231 () Bool)

(assert (=> b!5463502 (= e!3382940 call!403231)))

(declare-fun b!5463503 () Bool)

(declare-fun e!3382937 () Bool)

(declare-fun e!3382935 () Bool)

(assert (=> b!5463503 (= e!3382937 e!3382935)))

(declare-fun res!2327478 () Bool)

(assert (=> b!5463503 (= res!2327478 (not (nullable!5462 (reg!15630 (reg!15630 r!7292)))))))

(assert (=> b!5463503 (=> (not res!2327478) (not e!3382935))))

(declare-fun b!5463504 () Bool)

(declare-fun res!2327476 () Bool)

(declare-fun e!3382936 () Bool)

(assert (=> b!5463504 (=> res!2327476 e!3382936)))

(assert (=> b!5463504 (= res!2327476 (not ((_ is Concat!24146) (reg!15630 r!7292))))))

(declare-fun e!3382941 () Bool)

(assert (=> b!5463504 (= e!3382941 e!3382936)))

(declare-fun b!5463505 () Bool)

(assert (=> b!5463505 (= e!3382935 call!403230)))

(declare-fun b!5463506 () Bool)

(declare-fun e!3382939 () Bool)

(assert (=> b!5463506 (= e!3382936 e!3382939)))

(declare-fun res!2327480 () Bool)

(assert (=> b!5463506 (=> (not res!2327480) (not e!3382939))))

(assert (=> b!5463506 (= res!2327480 call!403232)))

(declare-fun b!5463507 () Bool)

(assert (=> b!5463507 (= e!3382937 e!3382941)))

(assert (=> b!5463507 (= c!954692 ((_ is Union!15301) (reg!15630 r!7292)))))

(declare-fun b!5463508 () Bool)

(declare-fun res!2327477 () Bool)

(assert (=> b!5463508 (=> (not res!2327477) (not e!3382940))))

(assert (=> b!5463508 (= res!2327477 call!403232)))

(assert (=> b!5463508 (= e!3382941 e!3382940)))

(declare-fun b!5463509 () Bool)

(assert (=> b!5463509 (= e!3382938 e!3382937)))

(assert (=> b!5463509 (= c!954691 ((_ is Star!15301) (reg!15630 r!7292)))))

(declare-fun b!5463510 () Bool)

(assert (=> b!5463510 (= e!3382939 call!403231)))

(declare-fun bm!403227 () Bool)

(assert (=> bm!403227 (= call!403231 (validRegex!7037 (ite c!954692 (regTwo!31115 (reg!15630 r!7292)) (regTwo!31114 (reg!15630 r!7292)))))))

(assert (= (and d!1738412 (not res!2327479)) b!5463509))

(assert (= (and b!5463509 c!954691) b!5463503))

(assert (= (and b!5463509 (not c!954691)) b!5463507))

(assert (= (and b!5463503 res!2327478) b!5463505))

(assert (= (and b!5463507 c!954692) b!5463508))

(assert (= (and b!5463507 (not c!954692)) b!5463504))

(assert (= (and b!5463508 res!2327477) b!5463502))

(assert (= (and b!5463504 (not res!2327476)) b!5463506))

(assert (= (and b!5463506 res!2327480) b!5463510))

(assert (= (or b!5463502 b!5463510) bm!403227))

(assert (= (or b!5463508 b!5463506) bm!403226))

(assert (= (or b!5463505 bm!403226) bm!403225))

(declare-fun m!6484332 () Bool)

(assert (=> bm!403225 m!6484332))

(declare-fun m!6484334 () Bool)

(assert (=> b!5463503 m!6484334))

(declare-fun m!6484336 () Bool)

(assert (=> bm!403227 m!6484336))

(assert (=> b!5463077 d!1738412))

(declare-fun bs!1264382 () Bool)

(declare-fun d!1738414 () Bool)

(assert (= bs!1264382 (and d!1738414 d!1738370)))

(declare-fun lambda!290109 () Int)

(assert (=> bs!1264382 (= lambda!290109 lambda!290075)))

(declare-fun bs!1264383 () Bool)

(assert (= bs!1264383 (and d!1738414 d!1738408)))

(assert (=> bs!1264383 (= lambda!290109 lambda!290103)))

(declare-fun bs!1264384 () Bool)

(assert (= bs!1264384 (and d!1738414 d!1738410)))

(assert (=> bs!1264384 (= lambda!290109 lambda!290104)))

(declare-fun b!5463544 () Bool)

(declare-fun e!3382962 () Bool)

(declare-fun e!3382965 () Bool)

(assert (=> b!5463544 (= e!3382962 e!3382965)))

(declare-fun c!954705 () Bool)

(assert (=> b!5463544 (= c!954705 (isEmpty!34054 (unfocusZipperList!743 zl!343)))))

(declare-fun b!5463545 () Bool)

(declare-fun e!3382966 () Regex!15301)

(assert (=> b!5463545 (= e!3382966 (h!68526 (unfocusZipperList!743 zl!343)))))

(declare-fun b!5463546 () Bool)

(declare-fun e!3382961 () Regex!15301)

(assert (=> b!5463546 (= e!3382966 e!3382961)))

(declare-fun c!954706 () Bool)

(assert (=> b!5463546 (= c!954706 ((_ is Cons!62078) (unfocusZipperList!743 zl!343)))))

(declare-fun b!5463547 () Bool)

(declare-fun e!3382964 () Bool)

(declare-fun lt!2232883 () Regex!15301)

(declare-fun isUnion!463 (Regex!15301) Bool)

(assert (=> b!5463547 (= e!3382964 (isUnion!463 lt!2232883))))

(declare-fun b!5463548 () Bool)

(assert (=> b!5463548 (= e!3382961 EmptyLang!15301)))

(declare-fun b!5463549 () Bool)

(declare-fun isEmptyLang!1031 (Regex!15301) Bool)

(assert (=> b!5463549 (= e!3382965 (isEmptyLang!1031 lt!2232883))))

(declare-fun b!5463550 () Bool)

(assert (=> b!5463550 (= e!3382964 (= lt!2232883 (head!11698 (unfocusZipperList!743 zl!343))))))

(declare-fun b!5463551 () Bool)

(assert (=> b!5463551 (= e!3382961 (Union!15301 (h!68526 (unfocusZipperList!743 zl!343)) (generalisedUnion!1230 (t!375431 (unfocusZipperList!743 zl!343)))))))

(declare-fun b!5463552 () Bool)

(assert (=> b!5463552 (= e!3382965 e!3382964)))

(declare-fun c!954704 () Bool)

(assert (=> b!5463552 (= c!954704 (isEmpty!34054 (tail!10795 (unfocusZipperList!743 zl!343))))))

(assert (=> d!1738414 e!3382962))

(declare-fun res!2327494 () Bool)

(assert (=> d!1738414 (=> (not res!2327494) (not e!3382962))))

(assert (=> d!1738414 (= res!2327494 (validRegex!7037 lt!2232883))))

(assert (=> d!1738414 (= lt!2232883 e!3382966)))

(declare-fun c!954703 () Bool)

(declare-fun e!3382963 () Bool)

(assert (=> d!1738414 (= c!954703 e!3382963)))

(declare-fun res!2327495 () Bool)

(assert (=> d!1738414 (=> (not res!2327495) (not e!3382963))))

(assert (=> d!1738414 (= res!2327495 ((_ is Cons!62078) (unfocusZipperList!743 zl!343)))))

(assert (=> d!1738414 (forall!14596 (unfocusZipperList!743 zl!343) lambda!290109)))

(assert (=> d!1738414 (= (generalisedUnion!1230 (unfocusZipperList!743 zl!343)) lt!2232883)))

(declare-fun b!5463553 () Bool)

(assert (=> b!5463553 (= e!3382963 (isEmpty!34054 (t!375431 (unfocusZipperList!743 zl!343))))))

(assert (= (and d!1738414 res!2327495) b!5463553))

(assert (= (and d!1738414 c!954703) b!5463545))

(assert (= (and d!1738414 (not c!954703)) b!5463546))

(assert (= (and b!5463546 c!954706) b!5463551))

(assert (= (and b!5463546 (not c!954706)) b!5463548))

(assert (= (and d!1738414 res!2327494) b!5463544))

(assert (= (and b!5463544 c!954705) b!5463549))

(assert (= (and b!5463544 (not c!954705)) b!5463552))

(assert (= (and b!5463552 c!954704) b!5463550))

(assert (= (and b!5463552 (not c!954704)) b!5463547))

(declare-fun m!6484358 () Bool)

(assert (=> d!1738414 m!6484358))

(assert (=> d!1738414 m!6484124))

(declare-fun m!6484360 () Bool)

(assert (=> d!1738414 m!6484360))

(declare-fun m!6484362 () Bool)

(assert (=> b!5463551 m!6484362))

(assert (=> b!5463552 m!6484124))

(declare-fun m!6484364 () Bool)

(assert (=> b!5463552 m!6484364))

(assert (=> b!5463552 m!6484364))

(declare-fun m!6484366 () Bool)

(assert (=> b!5463552 m!6484366))

(assert (=> b!5463550 m!6484124))

(declare-fun m!6484368 () Bool)

(assert (=> b!5463550 m!6484368))

(declare-fun m!6484370 () Bool)

(assert (=> b!5463547 m!6484370))

(declare-fun m!6484372 () Bool)

(assert (=> b!5463553 m!6484372))

(assert (=> b!5463544 m!6484124))

(declare-fun m!6484374 () Bool)

(assert (=> b!5463544 m!6484374))

(declare-fun m!6484376 () Bool)

(assert (=> b!5463549 m!6484376))

(assert (=> b!5463078 d!1738414))

(declare-fun bs!1264391 () Bool)

(declare-fun d!1738418 () Bool)

(assert (= bs!1264391 (and d!1738418 d!1738370)))

(declare-fun lambda!290113 () Int)

(assert (=> bs!1264391 (= lambda!290113 lambda!290075)))

(declare-fun bs!1264392 () Bool)

(assert (= bs!1264392 (and d!1738418 d!1738408)))

(assert (=> bs!1264392 (= lambda!290113 lambda!290103)))

(declare-fun bs!1264393 () Bool)

(assert (= bs!1264393 (and d!1738418 d!1738410)))

(assert (=> bs!1264393 (= lambda!290113 lambda!290104)))

(declare-fun bs!1264394 () Bool)

(assert (= bs!1264394 (and d!1738418 d!1738414)))

(assert (=> bs!1264394 (= lambda!290113 lambda!290109)))

(declare-fun lt!2232887 () List!62202)

(assert (=> d!1738418 (forall!14596 lt!2232887 lambda!290113)))

(declare-fun e!3382981 () List!62202)

(assert (=> d!1738418 (= lt!2232887 e!3382981)))

(declare-fun c!954711 () Bool)

(assert (=> d!1738418 (= c!954711 ((_ is Cons!62079) zl!343))))

(assert (=> d!1738418 (= (unfocusZipperList!743 zl!343) lt!2232887)))

(declare-fun b!5463578 () Bool)

(assert (=> b!5463578 (= e!3382981 (Cons!62078 (generalisedConcat!970 (exprs!5185 (h!68527 zl!343))) (unfocusZipperList!743 (t!375432 zl!343))))))

(declare-fun b!5463579 () Bool)

(assert (=> b!5463579 (= e!3382981 Nil!62078)))

(assert (= (and d!1738418 c!954711) b!5463578))

(assert (= (and d!1738418 (not c!954711)) b!5463579))

(declare-fun m!6484388 () Bool)

(assert (=> d!1738418 m!6484388))

(assert (=> b!5463578 m!6484108))

(declare-fun m!6484390 () Bool)

(assert (=> b!5463578 m!6484390))

(assert (=> b!5463078 d!1738418))

(declare-fun b!5463618 () Bool)

(declare-fun e!3382991 () Bool)

(declare-fun tp!1502706 () Bool)

(declare-fun tp!1502705 () Bool)

(assert (=> b!5463618 (= e!3382991 (and tp!1502706 tp!1502705))))

(declare-fun b!5463617 () Bool)

(declare-fun tp!1502703 () Bool)

(assert (=> b!5463617 (= e!3382991 tp!1502703)))

(assert (=> b!5463071 (= tp!1502649 e!3382991)))

(declare-fun b!5463616 () Bool)

(declare-fun tp!1502707 () Bool)

(declare-fun tp!1502704 () Bool)

(assert (=> b!5463616 (= e!3382991 (and tp!1502707 tp!1502704))))

(declare-fun b!5463615 () Bool)

(assert (=> b!5463615 (= e!3382991 tp_is_empty!39855)))

(assert (= (and b!5463071 ((_ is ElementMatch!15301) (reg!15630 r!7292))) b!5463615))

(assert (= (and b!5463071 ((_ is Concat!24146) (reg!15630 r!7292))) b!5463616))

(assert (= (and b!5463071 ((_ is Star!15301) (reg!15630 r!7292))) b!5463617))

(assert (= (and b!5463071 ((_ is Union!15301) (reg!15630 r!7292))) b!5463618))

(declare-fun b!5463634 () Bool)

(declare-fun e!3383000 () Bool)

(declare-fun tp!1502721 () Bool)

(assert (=> b!5463634 (= e!3383000 tp!1502721)))

(declare-fun tp!1502722 () Bool)

(declare-fun b!5463633 () Bool)

(declare-fun e!3382999 () Bool)

(assert (=> b!5463633 (= e!3382999 (and (inv!81499 (h!68527 (t!375432 zl!343))) e!3383000 tp!1502722))))

(assert (=> b!5463084 (= tp!1502648 e!3382999)))

(assert (= b!5463633 b!5463634))

(assert (= (and b!5463084 ((_ is Cons!62079) (t!375432 zl!343))) b!5463633))

(declare-fun m!6484392 () Bool)

(assert (=> b!5463633 m!6484392))

(declare-fun b!5463638 () Bool)

(declare-fun e!3383001 () Bool)

(declare-fun tp!1502726 () Bool)

(declare-fun tp!1502725 () Bool)

(assert (=> b!5463638 (= e!3383001 (and tp!1502726 tp!1502725))))

(declare-fun b!5463637 () Bool)

(declare-fun tp!1502723 () Bool)

(assert (=> b!5463637 (= e!3383001 tp!1502723)))

(assert (=> b!5463081 (= tp!1502650 e!3383001)))

(declare-fun b!5463636 () Bool)

(declare-fun tp!1502727 () Bool)

(declare-fun tp!1502724 () Bool)

(assert (=> b!5463636 (= e!3383001 (and tp!1502727 tp!1502724))))

(declare-fun b!5463635 () Bool)

(assert (=> b!5463635 (= e!3383001 tp_is_empty!39855)))

(assert (= (and b!5463081 ((_ is ElementMatch!15301) (regOne!31114 r!7292))) b!5463635))

(assert (= (and b!5463081 ((_ is Concat!24146) (regOne!31114 r!7292))) b!5463636))

(assert (= (and b!5463081 ((_ is Star!15301) (regOne!31114 r!7292))) b!5463637))

(assert (= (and b!5463081 ((_ is Union!15301) (regOne!31114 r!7292))) b!5463638))

(declare-fun b!5463643 () Bool)

(declare-fun e!3383003 () Bool)

(declare-fun tp!1502733 () Bool)

(declare-fun tp!1502732 () Bool)

(assert (=> b!5463643 (= e!3383003 (and tp!1502733 tp!1502732))))

(declare-fun b!5463642 () Bool)

(declare-fun tp!1502730 () Bool)

(assert (=> b!5463642 (= e!3383003 tp!1502730)))

(assert (=> b!5463081 (= tp!1502652 e!3383003)))

(declare-fun b!5463641 () Bool)

(declare-fun tp!1502734 () Bool)

(declare-fun tp!1502731 () Bool)

(assert (=> b!5463641 (= e!3383003 (and tp!1502734 tp!1502731))))

(declare-fun b!5463640 () Bool)

(assert (=> b!5463640 (= e!3383003 tp_is_empty!39855)))

(assert (= (and b!5463081 ((_ is ElementMatch!15301) (regTwo!31114 r!7292))) b!5463640))

(assert (= (and b!5463081 ((_ is Concat!24146) (regTwo!31114 r!7292))) b!5463641))

(assert (= (and b!5463081 ((_ is Star!15301) (regTwo!31114 r!7292))) b!5463642))

(assert (= (and b!5463081 ((_ is Union!15301) (regTwo!31114 r!7292))) b!5463643))

(declare-fun b!5463655 () Bool)

(declare-fun e!3383011 () Bool)

(declare-fun tp!1502745 () Bool)

(declare-fun tp!1502746 () Bool)

(assert (=> b!5463655 (= e!3383011 (and tp!1502745 tp!1502746))))

(assert (=> b!5463082 (= tp!1502646 e!3383011)))

(assert (= (and b!5463082 ((_ is Cons!62078) (exprs!5185 setElem!35767))) b!5463655))

(declare-fun condSetEmpty!35773 () Bool)

(assert (=> setNonEmpty!35767 (= condSetEmpty!35773 (= setRest!35767 ((as const (Array Context!9370 Bool)) false)))))

(declare-fun setRes!35773 () Bool)

(assert (=> setNonEmpty!35767 (= tp!1502645 setRes!35773)))

(declare-fun setIsEmpty!35773 () Bool)

(assert (=> setIsEmpty!35773 setRes!35773))

(declare-fun tp!1502753 () Bool)

(declare-fun e!3383016 () Bool)

(declare-fun setElem!35773 () Context!9370)

(declare-fun setNonEmpty!35773 () Bool)

(assert (=> setNonEmpty!35773 (= setRes!35773 (and tp!1502753 (inv!81499 setElem!35773) e!3383016))))

(declare-fun setRest!35773 () (InoxSet Context!9370))

(assert (=> setNonEmpty!35773 (= setRest!35767 ((_ map or) (store ((as const (Array Context!9370 Bool)) false) setElem!35773 true) setRest!35773))))

(declare-fun b!5463662 () Bool)

(declare-fun tp!1502754 () Bool)

(assert (=> b!5463662 (= e!3383016 tp!1502754)))

(assert (= (and setNonEmpty!35767 condSetEmpty!35773) setIsEmpty!35773))

(assert (= (and setNonEmpty!35767 (not condSetEmpty!35773)) setNonEmpty!35773))

(assert (= setNonEmpty!35773 b!5463662))

(declare-fun m!6484398 () Bool)

(assert (=> setNonEmpty!35773 m!6484398))

(declare-fun b!5463667 () Bool)

(declare-fun e!3383019 () Bool)

(declare-fun tp!1502757 () Bool)

(assert (=> b!5463667 (= e!3383019 (and tp_is_empty!39855 tp!1502757))))

(assert (=> b!5463073 (= tp!1502653 e!3383019)))

(assert (= (and b!5463073 ((_ is Cons!62080) (t!375433 s!2326))) b!5463667))

(declare-fun b!5463671 () Bool)

(declare-fun e!3383020 () Bool)

(declare-fun tp!1502761 () Bool)

(declare-fun tp!1502760 () Bool)

(assert (=> b!5463671 (= e!3383020 (and tp!1502761 tp!1502760))))

(declare-fun b!5463670 () Bool)

(declare-fun tp!1502758 () Bool)

(assert (=> b!5463670 (= e!3383020 tp!1502758)))

(assert (=> b!5463074 (= tp!1502647 e!3383020)))

(declare-fun b!5463669 () Bool)

(declare-fun tp!1502762 () Bool)

(declare-fun tp!1502759 () Bool)

(assert (=> b!5463669 (= e!3383020 (and tp!1502762 tp!1502759))))

(declare-fun b!5463668 () Bool)

(assert (=> b!5463668 (= e!3383020 tp_is_empty!39855)))

(assert (= (and b!5463074 ((_ is ElementMatch!15301) (regOne!31115 r!7292))) b!5463668))

(assert (= (and b!5463074 ((_ is Concat!24146) (regOne!31115 r!7292))) b!5463669))

(assert (= (and b!5463074 ((_ is Star!15301) (regOne!31115 r!7292))) b!5463670))

(assert (= (and b!5463074 ((_ is Union!15301) (regOne!31115 r!7292))) b!5463671))

(declare-fun b!5463675 () Bool)

(declare-fun e!3383021 () Bool)

(declare-fun tp!1502766 () Bool)

(declare-fun tp!1502765 () Bool)

(assert (=> b!5463675 (= e!3383021 (and tp!1502766 tp!1502765))))

(declare-fun b!5463674 () Bool)

(declare-fun tp!1502763 () Bool)

(assert (=> b!5463674 (= e!3383021 tp!1502763)))

(assert (=> b!5463074 (= tp!1502644 e!3383021)))

(declare-fun b!5463673 () Bool)

(declare-fun tp!1502767 () Bool)

(declare-fun tp!1502764 () Bool)

(assert (=> b!5463673 (= e!3383021 (and tp!1502767 tp!1502764))))

(declare-fun b!5463672 () Bool)

(assert (=> b!5463672 (= e!3383021 tp_is_empty!39855)))

(assert (= (and b!5463074 ((_ is ElementMatch!15301) (regTwo!31115 r!7292))) b!5463672))

(assert (= (and b!5463074 ((_ is Concat!24146) (regTwo!31115 r!7292))) b!5463673))

(assert (= (and b!5463074 ((_ is Star!15301) (regTwo!31115 r!7292))) b!5463674))

(assert (= (and b!5463074 ((_ is Union!15301) (regTwo!31115 r!7292))) b!5463675))

(declare-fun b!5463676 () Bool)

(declare-fun e!3383022 () Bool)

(declare-fun tp!1502768 () Bool)

(declare-fun tp!1502769 () Bool)

(assert (=> b!5463676 (= e!3383022 (and tp!1502768 tp!1502769))))

(assert (=> b!5463083 (= tp!1502651 e!3383022)))

(assert (= (and b!5463083 ((_ is Cons!62078) (exprs!5185 (h!68527 zl!343)))) b!5463676))

(check-sat (not bm!403224) (not b!5463503) (not d!1738358) (not b!5463496) (not b!5463498) (not b!5463341) (not b!5463675) (not b!5463244) (not d!1738352) (not d!1738406) (not d!1738414) (not b!5463494) (not bm!403225) (not b!5463390) (not d!1738410) (not b!5463618) (not b!5463493) (not b!5463544) (not b!5463249) (not d!1738366) (not b!5463247) (not b!5463669) (not b!5463389) (not b!5463443) (not b!5463655) (not b!5463445) tp_is_empty!39855 (not b!5463395) (not d!1738408) (not d!1738418) (not b!5463616) (not b!5463667) (not d!1738370) (not d!1738342) (not bm!403218) (not b!5463242) (not b!5463501) (not d!1738356) (not b!5463331) (not b!5463673) (not b!5463547) (not b!5463399) (not b!5463578) (not b!5463638) (not bm!403206) (not b!5463394) (not b!5463676) (not b!5463243) (not b!5463637) (not setNonEmpty!35773) (not b!5463662) (not b!5463671) (not b!5463670) (not b!5463246) (not b!5463549) (not bm!403223) (not d!1738348) (not b!5463553) (not d!1738382) (not b!5463674) (not b!5463641) (not bm!403208) (not b!5463643) (not b!5463492) (not b!5463393) (not d!1738344) (not b!5463552) (not b!5463633) (not b!5463642) (not d!1738334) (not b!5463617) (not d!1738378) (not b!5463550) (not b!5463634) (not b!5463636) (not b!5463551) (not b!5463497) (not bm!403227) (not d!1738340))
(check-sat)
