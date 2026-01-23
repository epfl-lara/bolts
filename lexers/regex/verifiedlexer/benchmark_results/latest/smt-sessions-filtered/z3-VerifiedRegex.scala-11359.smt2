; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601620 () Bool)

(assert start!601620)

(declare-fun b!5914055 () Bool)

(assert (=> b!5914055 true))

(assert (=> b!5914055 true))

(declare-fun lambda!322622 () Int)

(declare-fun lambda!322621 () Int)

(assert (=> b!5914055 (not (= lambda!322622 lambda!322621))))

(assert (=> b!5914055 true))

(assert (=> b!5914055 true))

(declare-fun b!5914045 () Bool)

(declare-fun e!3621247 () Bool)

(declare-fun tp!1643200 () Bool)

(declare-fun tp!1643197 () Bool)

(assert (=> b!5914045 (= e!3621247 (and tp!1643200 tp!1643197))))

(declare-fun b!5914046 () Bool)

(declare-fun e!3621250 () Bool)

(declare-fun e!3621251 () Bool)

(assert (=> b!5914046 (= e!3621250 (not e!3621251))))

(declare-fun res!2479771 () Bool)

(assert (=> b!5914046 (=> res!2479771 e!3621251)))

(declare-datatypes ((C!32200 0))(
  ( (C!32201 (val!25802 Int)) )
))
(declare-datatypes ((Regex!15965 0))(
  ( (ElementMatch!15965 (c!1051011 C!32200)) (Concat!24810 (regOne!32442 Regex!15965) (regTwo!32442 Regex!15965)) (EmptyExpr!15965) (Star!15965 (reg!16294 Regex!15965)) (EmptyLang!15965) (Union!15965 (regOne!32443 Regex!15965) (regTwo!32443 Regex!15965)) )
))
(declare-datatypes ((List!64194 0))(
  ( (Nil!64070) (Cons!64070 (h!70518 Regex!15965) (t!377583 List!64194)) )
))
(declare-datatypes ((Context!10698 0))(
  ( (Context!10699 (exprs!5849 List!64194)) )
))
(declare-datatypes ((List!64195 0))(
  ( (Nil!64071) (Cons!64071 (h!70519 Context!10698) (t!377584 List!64195)) )
))
(declare-fun zl!343 () List!64195)

(get-info :version)

(assert (=> b!5914046 (= res!2479771 (not ((_ is Cons!64071) zl!343)))))

(declare-fun lt!2309444 () Bool)

(declare-fun r!7292 () Regex!15965)

(declare-datatypes ((List!64196 0))(
  ( (Nil!64072) (Cons!64072 (h!70520 C!32200) (t!377585 List!64196)) )
))
(declare-fun s!2326 () List!64196)

(declare-fun matchRSpec!3066 (Regex!15965 List!64196) Bool)

(assert (=> b!5914046 (= lt!2309444 (matchRSpec!3066 r!7292 s!2326))))

(declare-fun matchR!8148 (Regex!15965 List!64196) Bool)

(assert (=> b!5914046 (= lt!2309444 (matchR!8148 r!7292 s!2326))))

(declare-datatypes ((Unit!157201 0))(
  ( (Unit!157202) )
))
(declare-fun lt!2309440 () Unit!157201)

(declare-fun mainMatchTheorem!3066 (Regex!15965 List!64196) Unit!157201)

(assert (=> b!5914046 (= lt!2309440 (mainMatchTheorem!3066 r!7292 s!2326))))

(declare-fun b!5914047 () Bool)

(declare-fun tp!1643204 () Bool)

(assert (=> b!5914047 (= e!3621247 tp!1643204)))

(declare-fun b!5914048 () Bool)

(declare-fun res!2479769 () Bool)

(declare-fun e!3621249 () Bool)

(assert (=> b!5914048 (=> res!2479769 e!3621249)))

(declare-fun isEmpty!35921 (List!64194) Bool)

(assert (=> b!5914048 (= res!2479769 (not (isEmpty!35921 (t!377583 (exprs!5849 (h!70519 zl!343))))))))

(declare-fun b!5914049 () Bool)

(declare-fun tp_is_empty!41183 () Bool)

(assert (=> b!5914049 (= e!3621247 tp_is_empty!41183)))

(declare-fun b!5914050 () Bool)

(declare-fun res!2479774 () Bool)

(assert (=> b!5914050 (=> res!2479774 e!3621251)))

(declare-fun isEmpty!35922 (List!64195) Bool)

(assert (=> b!5914050 (= res!2479774 (not (isEmpty!35922 (t!377584 zl!343))))))

(declare-fun e!3621253 () Bool)

(declare-fun b!5914051 () Bool)

(declare-fun tp!1643206 () Bool)

(declare-fun e!3621252 () Bool)

(declare-fun inv!83159 (Context!10698) Bool)

(assert (=> b!5914051 (= e!3621252 (and (inv!83159 (h!70519 zl!343)) e!3621253 tp!1643206))))

(declare-fun b!5914052 () Bool)

(declare-fun res!2479776 () Bool)

(assert (=> b!5914052 (=> (not res!2479776) (not e!3621250))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10698))

(declare-fun toList!9749 ((InoxSet Context!10698)) List!64195)

(assert (=> b!5914052 (= res!2479776 (= (toList!9749 z!1189) zl!343))))

(declare-fun b!5914053 () Bool)

(declare-fun res!2479770 () Bool)

(assert (=> b!5914053 (=> res!2479770 e!3621251)))

(declare-fun generalisedUnion!1809 (List!64194) Regex!15965)

(declare-fun unfocusZipperList!1386 (List!64195) List!64194)

(assert (=> b!5914053 (= res!2479770 (not (= r!7292 (generalisedUnion!1809 (unfocusZipperList!1386 zl!343)))))))

(declare-fun setElem!40134 () Context!10698)

(declare-fun setNonEmpty!40134 () Bool)

(declare-fun setRes!40134 () Bool)

(declare-fun tp!1643203 () Bool)

(declare-fun e!3621248 () Bool)

(assert (=> setNonEmpty!40134 (= setRes!40134 (and tp!1643203 (inv!83159 setElem!40134) e!3621248))))

(declare-fun setRest!40134 () (InoxSet Context!10698))

(assert (=> setNonEmpty!40134 (= z!1189 ((_ map or) (store ((as const (Array Context!10698 Bool)) false) setElem!40134 true) setRest!40134))))

(declare-fun b!5914054 () Bool)

(declare-fun res!2479767 () Bool)

(assert (=> b!5914054 (=> res!2479767 e!3621251)))

(assert (=> b!5914054 (= res!2479767 (not ((_ is Cons!64070) (exprs!5849 (h!70519 zl!343)))))))

(declare-fun res!2479768 () Bool)

(assert (=> start!601620 (=> (not res!2479768) (not e!3621250))))

(declare-fun validRegex!7701 (Regex!15965) Bool)

(assert (=> start!601620 (= res!2479768 (validRegex!7701 r!7292))))

(assert (=> start!601620 e!3621250))

(assert (=> start!601620 e!3621247))

(declare-fun condSetEmpty!40134 () Bool)

(assert (=> start!601620 (= condSetEmpty!40134 (= z!1189 ((as const (Array Context!10698 Bool)) false)))))

(assert (=> start!601620 setRes!40134))

(assert (=> start!601620 e!3621252))

(declare-fun e!3621246 () Bool)

(assert (=> start!601620 e!3621246))

(declare-fun b!5914044 () Bool)

(declare-fun res!2479772 () Bool)

(assert (=> b!5914044 (=> res!2479772 e!3621251)))

(assert (=> b!5914044 (= res!2479772 (or ((_ is EmptyExpr!15965) r!7292) ((_ is EmptyLang!15965) r!7292) ((_ is ElementMatch!15965) r!7292) ((_ is Union!15965) r!7292) (not ((_ is Concat!24810) r!7292))))))

(assert (=> b!5914055 (= e!3621251 e!3621249)))

(declare-fun res!2479775 () Bool)

(assert (=> b!5914055 (=> res!2479775 e!3621249)))

(declare-fun lt!2309441 () Bool)

(assert (=> b!5914055 (= res!2479775 (or (not (= lt!2309444 lt!2309441)) ((_ is Nil!64072) s!2326)))))

(declare-fun Exists!3035 (Int) Bool)

(assert (=> b!5914055 (= (Exists!3035 lambda!322621) (Exists!3035 lambda!322622))))

(declare-fun lt!2309442 () Unit!157201)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1572 (Regex!15965 Regex!15965 List!64196) Unit!157201)

(assert (=> b!5914055 (= lt!2309442 (lemmaExistCutMatchRandMatchRSpecEquivalent!1572 (regOne!32442 r!7292) (regTwo!32442 r!7292) s!2326))))

(assert (=> b!5914055 (= lt!2309441 (Exists!3035 lambda!322621))))

(declare-datatypes ((tuple2!65888 0))(
  ( (tuple2!65889 (_1!36247 List!64196) (_2!36247 List!64196)) )
))
(declare-datatypes ((Option!15856 0))(
  ( (None!15855) (Some!15855 (v!51949 tuple2!65888)) )
))
(declare-fun isDefined!12559 (Option!15856) Bool)

(declare-fun findConcatSeparation!2270 (Regex!15965 Regex!15965 List!64196 List!64196 List!64196) Option!15856)

(assert (=> b!5914055 (= lt!2309441 (isDefined!12559 (findConcatSeparation!2270 (regOne!32442 r!7292) (regTwo!32442 r!7292) Nil!64072 s!2326 s!2326)))))

(declare-fun lt!2309443 () Unit!157201)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2034 (Regex!15965 Regex!15965 List!64196) Unit!157201)

(assert (=> b!5914055 (= lt!2309443 (lemmaFindConcatSeparationEquivalentToExists!2034 (regOne!32442 r!7292) (regTwo!32442 r!7292) s!2326))))

(declare-fun setIsEmpty!40134 () Bool)

(assert (=> setIsEmpty!40134 setRes!40134))

(declare-fun b!5914056 () Bool)

(declare-fun tp!1643205 () Bool)

(declare-fun tp!1643202 () Bool)

(assert (=> b!5914056 (= e!3621247 (and tp!1643205 tp!1643202))))

(declare-fun b!5914057 () Bool)

(declare-fun tp!1643198 () Bool)

(assert (=> b!5914057 (= e!3621246 (and tp_is_empty!41183 tp!1643198))))

(declare-fun b!5914058 () Bool)

(declare-fun tp!1643201 () Bool)

(assert (=> b!5914058 (= e!3621248 tp!1643201)))

(declare-fun b!5914059 () Bool)

(declare-fun res!2479766 () Bool)

(assert (=> b!5914059 (=> (not res!2479766) (not e!3621250))))

(declare-fun unfocusZipper!1707 (List!64195) Regex!15965)

(assert (=> b!5914059 (= res!2479766 (= r!7292 (unfocusZipper!1707 zl!343)))))

(declare-fun b!5914060 () Bool)

(assert (=> b!5914060 (= e!3621249 (inv!83159 (Context!10699 (Cons!64070 r!7292 Nil!64070))))))

(declare-fun b!5914061 () Bool)

(declare-fun tp!1643199 () Bool)

(assert (=> b!5914061 (= e!3621253 tp!1643199)))

(declare-fun b!5914062 () Bool)

(declare-fun res!2479773 () Bool)

(assert (=> b!5914062 (=> res!2479773 e!3621251)))

(declare-fun generalisedConcat!1562 (List!64194) Regex!15965)

(assert (=> b!5914062 (= res!2479773 (not (= r!7292 (generalisedConcat!1562 (exprs!5849 (h!70519 zl!343))))))))

(assert (= (and start!601620 res!2479768) b!5914052))

(assert (= (and b!5914052 res!2479776) b!5914059))

(assert (= (and b!5914059 res!2479766) b!5914046))

(assert (= (and b!5914046 (not res!2479771)) b!5914050))

(assert (= (and b!5914050 (not res!2479774)) b!5914062))

(assert (= (and b!5914062 (not res!2479773)) b!5914054))

(assert (= (and b!5914054 (not res!2479767)) b!5914053))

(assert (= (and b!5914053 (not res!2479770)) b!5914044))

(assert (= (and b!5914044 (not res!2479772)) b!5914055))

(assert (= (and b!5914055 (not res!2479775)) b!5914048))

(assert (= (and b!5914048 (not res!2479769)) b!5914060))

(assert (= (and start!601620 ((_ is ElementMatch!15965) r!7292)) b!5914049))

(assert (= (and start!601620 ((_ is Concat!24810) r!7292)) b!5914045))

(assert (= (and start!601620 ((_ is Star!15965) r!7292)) b!5914047))

(assert (= (and start!601620 ((_ is Union!15965) r!7292)) b!5914056))

(assert (= (and start!601620 condSetEmpty!40134) setIsEmpty!40134))

(assert (= (and start!601620 (not condSetEmpty!40134)) setNonEmpty!40134))

(assert (= setNonEmpty!40134 b!5914058))

(assert (= b!5914051 b!5914061))

(assert (= (and start!601620 ((_ is Cons!64071) zl!343)) b!5914051))

(assert (= (and start!601620 ((_ is Cons!64072) s!2326)) b!5914057))

(declare-fun m!6812772 () Bool)

(assert (=> b!5914052 m!6812772))

(declare-fun m!6812774 () Bool)

(assert (=> start!601620 m!6812774))

(declare-fun m!6812776 () Bool)

(assert (=> b!5914050 m!6812776))

(declare-fun m!6812778 () Bool)

(assert (=> b!5914046 m!6812778))

(declare-fun m!6812780 () Bool)

(assert (=> b!5914046 m!6812780))

(declare-fun m!6812782 () Bool)

(assert (=> b!5914046 m!6812782))

(declare-fun m!6812784 () Bool)

(assert (=> b!5914062 m!6812784))

(declare-fun m!6812786 () Bool)

(assert (=> b!5914060 m!6812786))

(declare-fun m!6812788 () Bool)

(assert (=> b!5914051 m!6812788))

(declare-fun m!6812790 () Bool)

(assert (=> b!5914048 m!6812790))

(declare-fun m!6812792 () Bool)

(assert (=> b!5914055 m!6812792))

(declare-fun m!6812794 () Bool)

(assert (=> b!5914055 m!6812794))

(declare-fun m!6812796 () Bool)

(assert (=> b!5914055 m!6812796))

(assert (=> b!5914055 m!6812792))

(declare-fun m!6812798 () Bool)

(assert (=> b!5914055 m!6812798))

(declare-fun m!6812800 () Bool)

(assert (=> b!5914055 m!6812800))

(assert (=> b!5914055 m!6812794))

(declare-fun m!6812802 () Bool)

(assert (=> b!5914055 m!6812802))

(declare-fun m!6812804 () Bool)

(assert (=> setNonEmpty!40134 m!6812804))

(declare-fun m!6812806 () Bool)

(assert (=> b!5914053 m!6812806))

(assert (=> b!5914053 m!6812806))

(declare-fun m!6812808 () Bool)

(assert (=> b!5914053 m!6812808))

(declare-fun m!6812810 () Bool)

(assert (=> b!5914059 m!6812810))

(check-sat (not b!5914062) (not b!5914055) (not b!5914052) (not b!5914051) (not setNonEmpty!40134) (not b!5914059) (not b!5914057) tp_is_empty!41183 (not b!5914058) (not b!5914053) (not b!5914045) (not b!5914046) (not b!5914047) (not b!5914061) (not start!601620) (not b!5914050) (not b!5914048) (not b!5914060) (not b!5914056))
(check-sat)
(get-model)

(declare-fun d!1855126 () Bool)

(assert (=> d!1855126 (= (isEmpty!35922 (t!377584 zl!343)) ((_ is Nil!64071) (t!377584 zl!343)))))

(assert (=> b!5914050 d!1855126))

(declare-fun d!1855128 () Bool)

(assert (=> d!1855128 (= (isEmpty!35921 (t!377583 (exprs!5849 (h!70519 zl!343)))) ((_ is Nil!64070) (t!377583 (exprs!5849 (h!70519 zl!343)))))))

(assert (=> b!5914048 d!1855128))

(declare-fun bs!1400281 () Bool)

(declare-fun b!5914176 () Bool)

(assert (= bs!1400281 (and b!5914176 b!5914055)))

(declare-fun lambda!322644 () Int)

(assert (=> bs!1400281 (not (= lambda!322644 lambda!322621))))

(assert (=> bs!1400281 (not (= lambda!322644 lambda!322622))))

(assert (=> b!5914176 true))

(assert (=> b!5914176 true))

(declare-fun bs!1400282 () Bool)

(declare-fun b!5914179 () Bool)

(assert (= bs!1400282 (and b!5914179 b!5914055)))

(declare-fun lambda!322645 () Int)

(assert (=> bs!1400282 (not (= lambda!322645 lambda!322621))))

(assert (=> bs!1400282 (= lambda!322645 lambda!322622)))

(declare-fun bs!1400283 () Bool)

(assert (= bs!1400283 (and b!5914179 b!5914176)))

(assert (=> bs!1400283 (not (= lambda!322645 lambda!322644))))

(assert (=> b!5914179 true))

(assert (=> b!5914179 true))

(declare-fun b!5914169 () Bool)

(declare-fun e!3621316 () Bool)

(assert (=> b!5914169 (= e!3621316 (= s!2326 (Cons!64072 (c!1051011 r!7292) Nil!64072)))))

(declare-fun b!5914170 () Bool)

(declare-fun e!3621317 () Bool)

(declare-fun e!3621318 () Bool)

(assert (=> b!5914170 (= e!3621317 e!3621318)))

(declare-fun c!1051035 () Bool)

(assert (=> b!5914170 (= c!1051035 ((_ is Star!15965) r!7292))))

(declare-fun bm!468690 () Bool)

(declare-fun call!468695 () Bool)

(declare-fun isEmpty!35925 (List!64196) Bool)

(assert (=> bm!468690 (= call!468695 (isEmpty!35925 s!2326))))

(declare-fun bm!468691 () Bool)

(declare-fun call!468696 () Bool)

(assert (=> bm!468691 (= call!468696 (Exists!3035 (ite c!1051035 lambda!322644 lambda!322645)))))

(declare-fun b!5914172 () Bool)

(declare-fun c!1051036 () Bool)

(assert (=> b!5914172 (= c!1051036 ((_ is Union!15965) r!7292))))

(assert (=> b!5914172 (= e!3621316 e!3621317)))

(declare-fun b!5914173 () Bool)

(declare-fun res!2479835 () Bool)

(declare-fun e!3621314 () Bool)

(assert (=> b!5914173 (=> res!2479835 e!3621314)))

(assert (=> b!5914173 (= res!2479835 call!468695)))

(assert (=> b!5914173 (= e!3621318 e!3621314)))

(declare-fun b!5914174 () Bool)

(declare-fun e!3621313 () Bool)

(assert (=> b!5914174 (= e!3621317 e!3621313)))

(declare-fun res!2479836 () Bool)

(assert (=> b!5914174 (= res!2479836 (matchRSpec!3066 (regOne!32443 r!7292) s!2326))))

(assert (=> b!5914174 (=> res!2479836 e!3621313)))

(declare-fun b!5914175 () Bool)

(declare-fun e!3621315 () Bool)

(declare-fun e!3621312 () Bool)

(assert (=> b!5914175 (= e!3621315 e!3621312)))

(declare-fun res!2479837 () Bool)

(assert (=> b!5914175 (= res!2479837 (not ((_ is EmptyLang!15965) r!7292)))))

(assert (=> b!5914175 (=> (not res!2479837) (not e!3621312))))

(assert (=> b!5914176 (= e!3621314 call!468696)))

(declare-fun d!1855130 () Bool)

(declare-fun c!1051034 () Bool)

(assert (=> d!1855130 (= c!1051034 ((_ is EmptyExpr!15965) r!7292))))

(assert (=> d!1855130 (= (matchRSpec!3066 r!7292 s!2326) e!3621315)))

(declare-fun b!5914171 () Bool)

(declare-fun c!1051037 () Bool)

(assert (=> b!5914171 (= c!1051037 ((_ is ElementMatch!15965) r!7292))))

(assert (=> b!5914171 (= e!3621312 e!3621316)))

(declare-fun b!5914177 () Bool)

(assert (=> b!5914177 (= e!3621315 call!468695)))

(declare-fun b!5914178 () Bool)

(assert (=> b!5914178 (= e!3621313 (matchRSpec!3066 (regTwo!32443 r!7292) s!2326))))

(assert (=> b!5914179 (= e!3621318 call!468696)))

(assert (= (and d!1855130 c!1051034) b!5914177))

(assert (= (and d!1855130 (not c!1051034)) b!5914175))

(assert (= (and b!5914175 res!2479837) b!5914171))

(assert (= (and b!5914171 c!1051037) b!5914169))

(assert (= (and b!5914171 (not c!1051037)) b!5914172))

(assert (= (and b!5914172 c!1051036) b!5914174))

(assert (= (and b!5914172 (not c!1051036)) b!5914170))

(assert (= (and b!5914174 (not res!2479836)) b!5914178))

(assert (= (and b!5914170 c!1051035) b!5914173))

(assert (= (and b!5914170 (not c!1051035)) b!5914179))

(assert (= (and b!5914173 (not res!2479835)) b!5914176))

(assert (= (or b!5914176 b!5914179) bm!468691))

(assert (= (or b!5914177 b!5914173) bm!468690))

(declare-fun m!6812862 () Bool)

(assert (=> bm!468690 m!6812862))

(declare-fun m!6812864 () Bool)

(assert (=> bm!468691 m!6812864))

(declare-fun m!6812866 () Bool)

(assert (=> b!5914174 m!6812866))

(declare-fun m!6812868 () Bool)

(assert (=> b!5914178 m!6812868))

(assert (=> b!5914046 d!1855130))

(declare-fun b!5914275 () Bool)

(declare-fun res!2479889 () Bool)

(declare-fun e!3621374 () Bool)

(assert (=> b!5914275 (=> res!2479889 e!3621374)))

(declare-fun tail!11556 (List!64196) List!64196)

(assert (=> b!5914275 (= res!2479889 (not (isEmpty!35925 (tail!11556 s!2326))))))

(declare-fun b!5914276 () Bool)

(declare-fun head!12471 (List!64196) C!32200)

(assert (=> b!5914276 (= e!3621374 (not (= (head!12471 s!2326) (c!1051011 r!7292))))))

(declare-fun b!5914277 () Bool)

(declare-fun e!3621375 () Bool)

(declare-fun e!3621373 () Bool)

(assert (=> b!5914277 (= e!3621375 e!3621373)))

(declare-fun c!1051062 () Bool)

(assert (=> b!5914277 (= c!1051062 ((_ is EmptyLang!15965) r!7292))))

(declare-fun b!5914278 () Bool)

(declare-fun res!2479893 () Bool)

(declare-fun e!3621370 () Bool)

(assert (=> b!5914278 (=> res!2479893 e!3621370)))

(assert (=> b!5914278 (= res!2479893 (not ((_ is ElementMatch!15965) r!7292)))))

(assert (=> b!5914278 (= e!3621373 e!3621370)))

(declare-fun b!5914279 () Bool)

(declare-fun e!3621371 () Bool)

(assert (=> b!5914279 (= e!3621371 (= (head!12471 s!2326) (c!1051011 r!7292)))))

(declare-fun b!5914280 () Bool)

(declare-fun lt!2309476 () Bool)

(assert (=> b!5914280 (= e!3621373 (not lt!2309476))))

(declare-fun d!1855150 () Bool)

(assert (=> d!1855150 e!3621375))

(declare-fun c!1051061 () Bool)

(assert (=> d!1855150 (= c!1051061 ((_ is EmptyExpr!15965) r!7292))))

(declare-fun e!3621369 () Bool)

(assert (=> d!1855150 (= lt!2309476 e!3621369)))

(declare-fun c!1051063 () Bool)

(assert (=> d!1855150 (= c!1051063 (isEmpty!35925 s!2326))))

(assert (=> d!1855150 (validRegex!7701 r!7292)))

(assert (=> d!1855150 (= (matchR!8148 r!7292 s!2326) lt!2309476)))

(declare-fun b!5914283 () Bool)

(declare-fun res!2479887 () Bool)

(assert (=> b!5914283 (=> res!2479887 e!3621370)))

(assert (=> b!5914283 (= res!2479887 e!3621371)))

(declare-fun res!2479888 () Bool)

(assert (=> b!5914283 (=> (not res!2479888) (not e!3621371))))

(assert (=> b!5914283 (= res!2479888 lt!2309476)))

(declare-fun b!5914284 () Bool)

(declare-fun nullable!5960 (Regex!15965) Bool)

(assert (=> b!5914284 (= e!3621369 (nullable!5960 r!7292))))

(declare-fun b!5914285 () Bool)

(declare-fun call!468708 () Bool)

(assert (=> b!5914285 (= e!3621375 (= lt!2309476 call!468708))))

(declare-fun b!5914286 () Bool)

(declare-fun e!3621372 () Bool)

(assert (=> b!5914286 (= e!3621372 e!3621374)))

(declare-fun res!2479892 () Bool)

(assert (=> b!5914286 (=> res!2479892 e!3621374)))

(assert (=> b!5914286 (= res!2479892 call!468708)))

(declare-fun b!5914287 () Bool)

(declare-fun res!2479891 () Bool)

(assert (=> b!5914287 (=> (not res!2479891) (not e!3621371))))

(assert (=> b!5914287 (= res!2479891 (not call!468708))))

(declare-fun b!5914288 () Bool)

(assert (=> b!5914288 (= e!3621370 e!3621372)))

(declare-fun res!2479890 () Bool)

(assert (=> b!5914288 (=> (not res!2479890) (not e!3621372))))

(assert (=> b!5914288 (= res!2479890 (not lt!2309476))))

(declare-fun b!5914289 () Bool)

(declare-fun derivativeStep!4696 (Regex!15965 C!32200) Regex!15965)

(assert (=> b!5914289 (= e!3621369 (matchR!8148 (derivativeStep!4696 r!7292 (head!12471 s!2326)) (tail!11556 s!2326)))))

(declare-fun bm!468703 () Bool)

(assert (=> bm!468703 (= call!468708 (isEmpty!35925 s!2326))))

(declare-fun b!5914292 () Bool)

(declare-fun res!2479894 () Bool)

(assert (=> b!5914292 (=> (not res!2479894) (not e!3621371))))

(assert (=> b!5914292 (= res!2479894 (isEmpty!35925 (tail!11556 s!2326)))))

(assert (= (and d!1855150 c!1051063) b!5914284))

(assert (= (and d!1855150 (not c!1051063)) b!5914289))

(assert (= (and d!1855150 c!1051061) b!5914285))

(assert (= (and d!1855150 (not c!1051061)) b!5914277))

(assert (= (and b!5914277 c!1051062) b!5914280))

(assert (= (and b!5914277 (not c!1051062)) b!5914278))

(assert (= (and b!5914278 (not res!2479893)) b!5914283))

(assert (= (and b!5914283 res!2479888) b!5914287))

(assert (= (and b!5914287 res!2479891) b!5914292))

(assert (= (and b!5914292 res!2479894) b!5914279))

(assert (= (and b!5914283 (not res!2479887)) b!5914288))

(assert (= (and b!5914288 res!2479890) b!5914286))

(assert (= (and b!5914286 (not res!2479892)) b!5914275))

(assert (= (and b!5914275 (not res!2479889)) b!5914276))

(assert (= (or b!5914285 b!5914286 b!5914287) bm!468703))

(assert (=> d!1855150 m!6812862))

(assert (=> d!1855150 m!6812774))

(declare-fun m!6812894 () Bool)

(assert (=> b!5914275 m!6812894))

(assert (=> b!5914275 m!6812894))

(declare-fun m!6812896 () Bool)

(assert (=> b!5914275 m!6812896))

(declare-fun m!6812898 () Bool)

(assert (=> b!5914279 m!6812898))

(assert (=> bm!468703 m!6812862))

(declare-fun m!6812900 () Bool)

(assert (=> b!5914284 m!6812900))

(assert (=> b!5914289 m!6812898))

(assert (=> b!5914289 m!6812898))

(declare-fun m!6812902 () Bool)

(assert (=> b!5914289 m!6812902))

(assert (=> b!5914289 m!6812894))

(assert (=> b!5914289 m!6812902))

(assert (=> b!5914289 m!6812894))

(declare-fun m!6812904 () Bool)

(assert (=> b!5914289 m!6812904))

(assert (=> b!5914292 m!6812894))

(assert (=> b!5914292 m!6812894))

(assert (=> b!5914292 m!6812896))

(assert (=> b!5914276 m!6812898))

(assert (=> b!5914046 d!1855150))

(declare-fun d!1855160 () Bool)

(assert (=> d!1855160 (= (matchR!8148 r!7292 s!2326) (matchRSpec!3066 r!7292 s!2326))))

(declare-fun lt!2309483 () Unit!157201)

(declare-fun choose!44615 (Regex!15965 List!64196) Unit!157201)

(assert (=> d!1855160 (= lt!2309483 (choose!44615 r!7292 s!2326))))

(assert (=> d!1855160 (validRegex!7701 r!7292)))

(assert (=> d!1855160 (= (mainMatchTheorem!3066 r!7292 s!2326) lt!2309483)))

(declare-fun bs!1400303 () Bool)

(assert (= bs!1400303 d!1855160))

(assert (=> bs!1400303 m!6812780))

(assert (=> bs!1400303 m!6812778))

(declare-fun m!6812932 () Bool)

(assert (=> bs!1400303 m!6812932))

(assert (=> bs!1400303 m!6812774))

(assert (=> b!5914046 d!1855160))

(declare-fun d!1855170 () Bool)

(declare-fun e!3621467 () Bool)

(assert (=> d!1855170 e!3621467))

(declare-fun res!2479934 () Bool)

(assert (=> d!1855170 (=> res!2479934 e!3621467)))

(declare-fun e!3621464 () Bool)

(assert (=> d!1855170 (= res!2479934 e!3621464)))

(declare-fun res!2479932 () Bool)

(assert (=> d!1855170 (=> (not res!2479932) (not e!3621464))))

(declare-fun lt!2309494 () Option!15856)

(assert (=> d!1855170 (= res!2479932 (isDefined!12559 lt!2309494))))

(declare-fun e!3621466 () Option!15856)

(assert (=> d!1855170 (= lt!2309494 e!3621466)))

(declare-fun c!1051098 () Bool)

(declare-fun e!3621465 () Bool)

(assert (=> d!1855170 (= c!1051098 e!3621465)))

(declare-fun res!2479931 () Bool)

(assert (=> d!1855170 (=> (not res!2479931) (not e!3621465))))

(assert (=> d!1855170 (= res!2479931 (matchR!8148 (regOne!32442 r!7292) Nil!64072))))

(assert (=> d!1855170 (validRegex!7701 (regOne!32442 r!7292))))

(assert (=> d!1855170 (= (findConcatSeparation!2270 (regOne!32442 r!7292) (regTwo!32442 r!7292) Nil!64072 s!2326 s!2326) lt!2309494)))

(declare-fun b!5914444 () Bool)

(assert (=> b!5914444 (= e!3621465 (matchR!8148 (regTwo!32442 r!7292) s!2326))))

(declare-fun b!5914445 () Bool)

(declare-fun res!2479933 () Bool)

(assert (=> b!5914445 (=> (not res!2479933) (not e!3621464))))

(declare-fun get!22060 (Option!15856) tuple2!65888)

(assert (=> b!5914445 (= res!2479933 (matchR!8148 (regTwo!32442 r!7292) (_2!36247 (get!22060 lt!2309494))))))

(declare-fun b!5914446 () Bool)

(assert (=> b!5914446 (= e!3621466 (Some!15855 (tuple2!65889 Nil!64072 s!2326)))))

(declare-fun b!5914447 () Bool)

(declare-fun ++!14062 (List!64196 List!64196) List!64196)

(assert (=> b!5914447 (= e!3621464 (= (++!14062 (_1!36247 (get!22060 lt!2309494)) (_2!36247 (get!22060 lt!2309494))) s!2326))))

(declare-fun b!5914448 () Bool)

(assert (=> b!5914448 (= e!3621467 (not (isDefined!12559 lt!2309494)))))

(declare-fun b!5914449 () Bool)

(declare-fun res!2479930 () Bool)

(assert (=> b!5914449 (=> (not res!2479930) (not e!3621464))))

(assert (=> b!5914449 (= res!2479930 (matchR!8148 (regOne!32442 r!7292) (_1!36247 (get!22060 lt!2309494))))))

(declare-fun b!5914450 () Bool)

(declare-fun e!3621463 () Option!15856)

(assert (=> b!5914450 (= e!3621466 e!3621463)))

(declare-fun c!1051097 () Bool)

(assert (=> b!5914450 (= c!1051097 ((_ is Nil!64072) s!2326))))

(declare-fun b!5914451 () Bool)

(assert (=> b!5914451 (= e!3621463 None!15855)))

(declare-fun b!5914452 () Bool)

(declare-fun lt!2309495 () Unit!157201)

(declare-fun lt!2309493 () Unit!157201)

(assert (=> b!5914452 (= lt!2309495 lt!2309493)))

(assert (=> b!5914452 (= (++!14062 (++!14062 Nil!64072 (Cons!64072 (h!70520 s!2326) Nil!64072)) (t!377585 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2157 (List!64196 C!32200 List!64196 List!64196) Unit!157201)

(assert (=> b!5914452 (= lt!2309493 (lemmaMoveElementToOtherListKeepsConcatEq!2157 Nil!64072 (h!70520 s!2326) (t!377585 s!2326) s!2326))))

(assert (=> b!5914452 (= e!3621463 (findConcatSeparation!2270 (regOne!32442 r!7292) (regTwo!32442 r!7292) (++!14062 Nil!64072 (Cons!64072 (h!70520 s!2326) Nil!64072)) (t!377585 s!2326) s!2326))))

(assert (= (and d!1855170 res!2479931) b!5914444))

(assert (= (and d!1855170 c!1051098) b!5914446))

(assert (= (and d!1855170 (not c!1051098)) b!5914450))

(assert (= (and b!5914450 c!1051097) b!5914451))

(assert (= (and b!5914450 (not c!1051097)) b!5914452))

(assert (= (and d!1855170 res!2479932) b!5914449))

(assert (= (and b!5914449 res!2479930) b!5914445))

(assert (= (and b!5914445 res!2479933) b!5914447))

(assert (= (and d!1855170 (not res!2479934)) b!5914448))

(declare-fun m!6812962 () Bool)

(assert (=> b!5914447 m!6812962))

(declare-fun m!6812964 () Bool)

(assert (=> b!5914447 m!6812964))

(assert (=> b!5914445 m!6812962))

(declare-fun m!6812966 () Bool)

(assert (=> b!5914445 m!6812966))

(declare-fun m!6812968 () Bool)

(assert (=> b!5914448 m!6812968))

(declare-fun m!6812970 () Bool)

(assert (=> b!5914452 m!6812970))

(assert (=> b!5914452 m!6812970))

(declare-fun m!6812972 () Bool)

(assert (=> b!5914452 m!6812972))

(declare-fun m!6812974 () Bool)

(assert (=> b!5914452 m!6812974))

(assert (=> b!5914452 m!6812970))

(declare-fun m!6812976 () Bool)

(assert (=> b!5914452 m!6812976))

(assert (=> d!1855170 m!6812968))

(declare-fun m!6812978 () Bool)

(assert (=> d!1855170 m!6812978))

(declare-fun m!6812980 () Bool)

(assert (=> d!1855170 m!6812980))

(assert (=> b!5914449 m!6812962))

(declare-fun m!6812982 () Bool)

(assert (=> b!5914449 m!6812982))

(declare-fun m!6812984 () Bool)

(assert (=> b!5914444 m!6812984))

(assert (=> b!5914055 d!1855170))

(declare-fun d!1855174 () Bool)

(declare-fun choose!44616 (Int) Bool)

(assert (=> d!1855174 (= (Exists!3035 lambda!322622) (choose!44616 lambda!322622))))

(declare-fun bs!1400309 () Bool)

(assert (= bs!1400309 d!1855174))

(declare-fun m!6812986 () Bool)

(assert (=> bs!1400309 m!6812986))

(assert (=> b!5914055 d!1855174))

(declare-fun d!1855176 () Bool)

(assert (=> d!1855176 (= (Exists!3035 lambda!322621) (choose!44616 lambda!322621))))

(declare-fun bs!1400310 () Bool)

(assert (= bs!1400310 d!1855176))

(declare-fun m!6812988 () Bool)

(assert (=> bs!1400310 m!6812988))

(assert (=> b!5914055 d!1855176))

(declare-fun bs!1400311 () Bool)

(declare-fun d!1855178 () Bool)

(assert (= bs!1400311 (and d!1855178 b!5914055)))

(declare-fun lambda!322660 () Int)

(assert (=> bs!1400311 (= lambda!322660 lambda!322621)))

(assert (=> bs!1400311 (not (= lambda!322660 lambda!322622))))

(declare-fun bs!1400312 () Bool)

(assert (= bs!1400312 (and d!1855178 b!5914176)))

(assert (=> bs!1400312 (not (= lambda!322660 lambda!322644))))

(declare-fun bs!1400313 () Bool)

(assert (= bs!1400313 (and d!1855178 b!5914179)))

(assert (=> bs!1400313 (not (= lambda!322660 lambda!322645))))

(assert (=> d!1855178 true))

(assert (=> d!1855178 true))

(assert (=> d!1855178 true))

(assert (=> d!1855178 (= (isDefined!12559 (findConcatSeparation!2270 (regOne!32442 r!7292) (regTwo!32442 r!7292) Nil!64072 s!2326 s!2326)) (Exists!3035 lambda!322660))))

(declare-fun lt!2309498 () Unit!157201)

(declare-fun choose!44617 (Regex!15965 Regex!15965 List!64196) Unit!157201)

(assert (=> d!1855178 (= lt!2309498 (choose!44617 (regOne!32442 r!7292) (regTwo!32442 r!7292) s!2326))))

(assert (=> d!1855178 (validRegex!7701 (regOne!32442 r!7292))))

(assert (=> d!1855178 (= (lemmaFindConcatSeparationEquivalentToExists!2034 (regOne!32442 r!7292) (regTwo!32442 r!7292) s!2326) lt!2309498)))

(declare-fun bs!1400314 () Bool)

(assert (= bs!1400314 d!1855178))

(assert (=> bs!1400314 m!6812794))

(declare-fun m!6812990 () Bool)

(assert (=> bs!1400314 m!6812990))

(assert (=> bs!1400314 m!6812980))

(declare-fun m!6812992 () Bool)

(assert (=> bs!1400314 m!6812992))

(assert (=> bs!1400314 m!6812794))

(assert (=> bs!1400314 m!6812796))

(assert (=> b!5914055 d!1855178))

(declare-fun bs!1400315 () Bool)

(declare-fun d!1855180 () Bool)

(assert (= bs!1400315 (and d!1855180 b!5914055)))

(declare-fun lambda!322665 () Int)

(assert (=> bs!1400315 (not (= lambda!322665 lambda!322622))))

(declare-fun bs!1400316 () Bool)

(assert (= bs!1400316 (and d!1855180 d!1855178)))

(assert (=> bs!1400316 (= lambda!322665 lambda!322660)))

(assert (=> bs!1400315 (= lambda!322665 lambda!322621)))

(declare-fun bs!1400317 () Bool)

(assert (= bs!1400317 (and d!1855180 b!5914176)))

(assert (=> bs!1400317 (not (= lambda!322665 lambda!322644))))

(declare-fun bs!1400318 () Bool)

(assert (= bs!1400318 (and d!1855180 b!5914179)))

(assert (=> bs!1400318 (not (= lambda!322665 lambda!322645))))

(assert (=> d!1855180 true))

(assert (=> d!1855180 true))

(assert (=> d!1855180 true))

(declare-fun lambda!322666 () Int)

(assert (=> bs!1400315 (= lambda!322666 lambda!322622)))

(assert (=> bs!1400316 (not (= lambda!322666 lambda!322660))))

(assert (=> bs!1400315 (not (= lambda!322666 lambda!322621))))

(declare-fun bs!1400319 () Bool)

(assert (= bs!1400319 d!1855180))

(assert (=> bs!1400319 (not (= lambda!322666 lambda!322665))))

(assert (=> bs!1400317 (not (= lambda!322666 lambda!322644))))

(assert (=> bs!1400318 (= lambda!322666 lambda!322645)))

(assert (=> d!1855180 true))

(assert (=> d!1855180 true))

(assert (=> d!1855180 true))

(assert (=> d!1855180 (= (Exists!3035 lambda!322665) (Exists!3035 lambda!322666))))

(declare-fun lt!2309501 () Unit!157201)

(declare-fun choose!44618 (Regex!15965 Regex!15965 List!64196) Unit!157201)

(assert (=> d!1855180 (= lt!2309501 (choose!44618 (regOne!32442 r!7292) (regTwo!32442 r!7292) s!2326))))

(assert (=> d!1855180 (validRegex!7701 (regOne!32442 r!7292))))

(assert (=> d!1855180 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1572 (regOne!32442 r!7292) (regTwo!32442 r!7292) s!2326) lt!2309501)))

(declare-fun m!6812994 () Bool)

(assert (=> bs!1400319 m!6812994))

(declare-fun m!6812996 () Bool)

(assert (=> bs!1400319 m!6812996))

(declare-fun m!6812998 () Bool)

(assert (=> bs!1400319 m!6812998))

(assert (=> bs!1400319 m!6812980))

(assert (=> b!5914055 d!1855180))

(declare-fun d!1855182 () Bool)

(declare-fun isEmpty!35926 (Option!15856) Bool)

(assert (=> d!1855182 (= (isDefined!12559 (findConcatSeparation!2270 (regOne!32442 r!7292) (regTwo!32442 r!7292) Nil!64072 s!2326 s!2326)) (not (isEmpty!35926 (findConcatSeparation!2270 (regOne!32442 r!7292) (regTwo!32442 r!7292) Nil!64072 s!2326 s!2326))))))

(declare-fun bs!1400320 () Bool)

(assert (= bs!1400320 d!1855182))

(assert (=> bs!1400320 m!6812794))

(declare-fun m!6813000 () Bool)

(assert (=> bs!1400320 m!6813000))

(assert (=> b!5914055 d!1855182))

(declare-fun d!1855184 () Bool)

(declare-fun lambda!322669 () Int)

(declare-fun forall!15048 (List!64194 Int) Bool)

(assert (=> d!1855184 (= (inv!83159 setElem!40134) (forall!15048 (exprs!5849 setElem!40134) lambda!322669))))

(declare-fun bs!1400321 () Bool)

(assert (= bs!1400321 d!1855184))

(declare-fun m!6813002 () Bool)

(assert (=> bs!1400321 m!6813002))

(assert (=> setNonEmpty!40134 d!1855184))

(declare-fun b!5914483 () Bool)

(declare-fun e!3621489 () Bool)

(declare-fun call!468726 () Bool)

(assert (=> b!5914483 (= e!3621489 call!468726)))

(declare-fun b!5914484 () Bool)

(declare-fun e!3621491 () Bool)

(declare-fun e!3621490 () Bool)

(assert (=> b!5914484 (= e!3621491 e!3621490)))

(declare-fun res!2479959 () Bool)

(assert (=> b!5914484 (=> (not res!2479959) (not e!3621490))))

(declare-fun call!468725 () Bool)

(assert (=> b!5914484 (= res!2479959 call!468725)))

(declare-fun b!5914485 () Bool)

(declare-fun e!3621494 () Bool)

(assert (=> b!5914485 (= e!3621494 e!3621489)))

(declare-fun res!2479960 () Bool)

(assert (=> b!5914485 (= res!2479960 (not (nullable!5960 (reg!16294 r!7292))))))

(assert (=> b!5914485 (=> (not res!2479960) (not e!3621489))))

(declare-fun bm!468719 () Bool)

(assert (=> bm!468719 (= call!468725 call!468726)))

(declare-fun b!5914487 () Bool)

(declare-fun e!3621492 () Bool)

(assert (=> b!5914487 (= e!3621494 e!3621492)))

(declare-fun c!1051103 () Bool)

(assert (=> b!5914487 (= c!1051103 ((_ is Union!15965) r!7292))))

(declare-fun bm!468720 () Bool)

(declare-fun call!468724 () Bool)

(assert (=> bm!468720 (= call!468724 (validRegex!7701 (ite c!1051103 (regTwo!32443 r!7292) (regTwo!32442 r!7292))))))

(declare-fun b!5914488 () Bool)

(declare-fun e!3621493 () Bool)

(assert (=> b!5914488 (= e!3621493 call!468724)))

(declare-fun b!5914489 () Bool)

(declare-fun e!3621488 () Bool)

(assert (=> b!5914489 (= e!3621488 e!3621494)))

(declare-fun c!1051104 () Bool)

(assert (=> b!5914489 (= c!1051104 ((_ is Star!15965) r!7292))))

(declare-fun bm!468721 () Bool)

(assert (=> bm!468721 (= call!468726 (validRegex!7701 (ite c!1051104 (reg!16294 r!7292) (ite c!1051103 (regOne!32443 r!7292) (regOne!32442 r!7292)))))))

(declare-fun b!5914490 () Bool)

(assert (=> b!5914490 (= e!3621490 call!468724)))

(declare-fun b!5914491 () Bool)

(declare-fun res!2479961 () Bool)

(assert (=> b!5914491 (=> res!2479961 e!3621491)))

(assert (=> b!5914491 (= res!2479961 (not ((_ is Concat!24810) r!7292)))))

(assert (=> b!5914491 (= e!3621492 e!3621491)))

(declare-fun b!5914486 () Bool)

(declare-fun res!2479957 () Bool)

(assert (=> b!5914486 (=> (not res!2479957) (not e!3621493))))

(assert (=> b!5914486 (= res!2479957 call!468725)))

(assert (=> b!5914486 (= e!3621492 e!3621493)))

(declare-fun d!1855186 () Bool)

(declare-fun res!2479958 () Bool)

(assert (=> d!1855186 (=> res!2479958 e!3621488)))

(assert (=> d!1855186 (= res!2479958 ((_ is ElementMatch!15965) r!7292))))

(assert (=> d!1855186 (= (validRegex!7701 r!7292) e!3621488)))

(assert (= (and d!1855186 (not res!2479958)) b!5914489))

(assert (= (and b!5914489 c!1051104) b!5914485))

(assert (= (and b!5914489 (not c!1051104)) b!5914487))

(assert (= (and b!5914485 res!2479960) b!5914483))

(assert (= (and b!5914487 c!1051103) b!5914486))

(assert (= (and b!5914487 (not c!1051103)) b!5914491))

(assert (= (and b!5914486 res!2479957) b!5914488))

(assert (= (and b!5914491 (not res!2479961)) b!5914484))

(assert (= (and b!5914484 res!2479959) b!5914490))

(assert (= (or b!5914488 b!5914490) bm!468720))

(assert (= (or b!5914486 b!5914484) bm!468719))

(assert (= (or b!5914483 bm!468719) bm!468721))

(declare-fun m!6813004 () Bool)

(assert (=> b!5914485 m!6813004))

(declare-fun m!6813006 () Bool)

(assert (=> bm!468720 m!6813006))

(declare-fun m!6813008 () Bool)

(assert (=> bm!468721 m!6813008))

(assert (=> start!601620 d!1855186))

(declare-fun bs!1400322 () Bool)

(declare-fun d!1855188 () Bool)

(assert (= bs!1400322 (and d!1855188 d!1855184)))

(declare-fun lambda!322672 () Int)

(assert (=> bs!1400322 (= lambda!322672 lambda!322669)))

(declare-fun b!5914512 () Bool)

(declare-fun e!3621507 () Bool)

(declare-fun e!3621510 () Bool)

(assert (=> b!5914512 (= e!3621507 e!3621510)))

(declare-fun c!1051115 () Bool)

(declare-fun tail!11557 (List!64194) List!64194)

(assert (=> b!5914512 (= c!1051115 (isEmpty!35921 (tail!11557 (unfocusZipperList!1386 zl!343))))))

(declare-fun b!5914513 () Bool)

(declare-fun lt!2309504 () Regex!15965)

(declare-fun head!12472 (List!64194) Regex!15965)

(assert (=> b!5914513 (= e!3621510 (= lt!2309504 (head!12472 (unfocusZipperList!1386 zl!343))))))

(declare-fun b!5914514 () Bool)

(declare-fun e!3621509 () Regex!15965)

(assert (=> b!5914514 (= e!3621509 (Union!15965 (h!70518 (unfocusZipperList!1386 zl!343)) (generalisedUnion!1809 (t!377583 (unfocusZipperList!1386 zl!343)))))))

(declare-fun b!5914515 () Bool)

(declare-fun e!3621512 () Bool)

(assert (=> b!5914515 (= e!3621512 (isEmpty!35921 (t!377583 (unfocusZipperList!1386 zl!343))))))

(declare-fun b!5914516 () Bool)

(declare-fun e!3621508 () Regex!15965)

(assert (=> b!5914516 (= e!3621508 (h!70518 (unfocusZipperList!1386 zl!343)))))

(declare-fun b!5914517 () Bool)

(declare-fun isUnion!832 (Regex!15965) Bool)

(assert (=> b!5914517 (= e!3621510 (isUnion!832 lt!2309504))))

(declare-fun b!5914518 () Bool)

(assert (=> b!5914518 (= e!3621508 e!3621509)))

(declare-fun c!1051113 () Bool)

(assert (=> b!5914518 (= c!1051113 ((_ is Cons!64070) (unfocusZipperList!1386 zl!343)))))

(declare-fun e!3621511 () Bool)

(assert (=> d!1855188 e!3621511))

(declare-fun res!2479967 () Bool)

(assert (=> d!1855188 (=> (not res!2479967) (not e!3621511))))

(assert (=> d!1855188 (= res!2479967 (validRegex!7701 lt!2309504))))

(assert (=> d!1855188 (= lt!2309504 e!3621508)))

(declare-fun c!1051116 () Bool)

(assert (=> d!1855188 (= c!1051116 e!3621512)))

(declare-fun res!2479966 () Bool)

(assert (=> d!1855188 (=> (not res!2479966) (not e!3621512))))

(assert (=> d!1855188 (= res!2479966 ((_ is Cons!64070) (unfocusZipperList!1386 zl!343)))))

(assert (=> d!1855188 (forall!15048 (unfocusZipperList!1386 zl!343) lambda!322672)))

(assert (=> d!1855188 (= (generalisedUnion!1809 (unfocusZipperList!1386 zl!343)) lt!2309504)))

(declare-fun b!5914519 () Bool)

(declare-fun isEmptyLang!1402 (Regex!15965) Bool)

(assert (=> b!5914519 (= e!3621507 (isEmptyLang!1402 lt!2309504))))

(declare-fun b!5914520 () Bool)

(assert (=> b!5914520 (= e!3621511 e!3621507)))

(declare-fun c!1051114 () Bool)

(assert (=> b!5914520 (= c!1051114 (isEmpty!35921 (unfocusZipperList!1386 zl!343)))))

(declare-fun b!5914521 () Bool)

(assert (=> b!5914521 (= e!3621509 EmptyLang!15965)))

(assert (= (and d!1855188 res!2479966) b!5914515))

(assert (= (and d!1855188 c!1051116) b!5914516))

(assert (= (and d!1855188 (not c!1051116)) b!5914518))

(assert (= (and b!5914518 c!1051113) b!5914514))

(assert (= (and b!5914518 (not c!1051113)) b!5914521))

(assert (= (and d!1855188 res!2479967) b!5914520))

(assert (= (and b!5914520 c!1051114) b!5914519))

(assert (= (and b!5914520 (not c!1051114)) b!5914512))

(assert (= (and b!5914512 c!1051115) b!5914513))

(assert (= (and b!5914512 (not c!1051115)) b!5914517))

(assert (=> b!5914512 m!6812806))

(declare-fun m!6813010 () Bool)

(assert (=> b!5914512 m!6813010))

(assert (=> b!5914512 m!6813010))

(declare-fun m!6813012 () Bool)

(assert (=> b!5914512 m!6813012))

(assert (=> b!5914513 m!6812806))

(declare-fun m!6813014 () Bool)

(assert (=> b!5914513 m!6813014))

(declare-fun m!6813016 () Bool)

(assert (=> d!1855188 m!6813016))

(assert (=> d!1855188 m!6812806))

(declare-fun m!6813018 () Bool)

(assert (=> d!1855188 m!6813018))

(declare-fun m!6813020 () Bool)

(assert (=> b!5914515 m!6813020))

(assert (=> b!5914520 m!6812806))

(declare-fun m!6813022 () Bool)

(assert (=> b!5914520 m!6813022))

(declare-fun m!6813024 () Bool)

(assert (=> b!5914517 m!6813024))

(declare-fun m!6813026 () Bool)

(assert (=> b!5914514 m!6813026))

(declare-fun m!6813028 () Bool)

(assert (=> b!5914519 m!6813028))

(assert (=> b!5914053 d!1855188))

(declare-fun bs!1400323 () Bool)

(declare-fun d!1855190 () Bool)

(assert (= bs!1400323 (and d!1855190 d!1855184)))

(declare-fun lambda!322675 () Int)

(assert (=> bs!1400323 (= lambda!322675 lambda!322669)))

(declare-fun bs!1400324 () Bool)

(assert (= bs!1400324 (and d!1855190 d!1855188)))

(assert (=> bs!1400324 (= lambda!322675 lambda!322672)))

(declare-fun lt!2309507 () List!64194)

(assert (=> d!1855190 (forall!15048 lt!2309507 lambda!322675)))

(declare-fun e!3621515 () List!64194)

(assert (=> d!1855190 (= lt!2309507 e!3621515)))

(declare-fun c!1051119 () Bool)

(assert (=> d!1855190 (= c!1051119 ((_ is Cons!64071) zl!343))))

(assert (=> d!1855190 (= (unfocusZipperList!1386 zl!343) lt!2309507)))

(declare-fun b!5914526 () Bool)

(assert (=> b!5914526 (= e!3621515 (Cons!64070 (generalisedConcat!1562 (exprs!5849 (h!70519 zl!343))) (unfocusZipperList!1386 (t!377584 zl!343))))))

(declare-fun b!5914527 () Bool)

(assert (=> b!5914527 (= e!3621515 Nil!64070)))

(assert (= (and d!1855190 c!1051119) b!5914526))

(assert (= (and d!1855190 (not c!1051119)) b!5914527))

(declare-fun m!6813030 () Bool)

(assert (=> d!1855190 m!6813030))

(assert (=> b!5914526 m!6812784))

(declare-fun m!6813032 () Bool)

(assert (=> b!5914526 m!6813032))

(assert (=> b!5914053 d!1855190))

(declare-fun bs!1400325 () Bool)

(declare-fun d!1855192 () Bool)

(assert (= bs!1400325 (and d!1855192 d!1855184)))

(declare-fun lambda!322678 () Int)

(assert (=> bs!1400325 (= lambda!322678 lambda!322669)))

(declare-fun bs!1400326 () Bool)

(assert (= bs!1400326 (and d!1855192 d!1855188)))

(assert (=> bs!1400326 (= lambda!322678 lambda!322672)))

(declare-fun bs!1400327 () Bool)

(assert (= bs!1400327 (and d!1855192 d!1855190)))

(assert (=> bs!1400327 (= lambda!322678 lambda!322675)))

(declare-fun b!5914548 () Bool)

(declare-fun e!3621531 () Regex!15965)

(assert (=> b!5914548 (= e!3621531 (Concat!24810 (h!70518 (exprs!5849 (h!70519 zl!343))) (generalisedConcat!1562 (t!377583 (exprs!5849 (h!70519 zl!343))))))))

(declare-fun b!5914549 () Bool)

(declare-fun e!3621529 () Regex!15965)

(assert (=> b!5914549 (= e!3621529 e!3621531)))

(declare-fun c!1051129 () Bool)

(assert (=> b!5914549 (= c!1051129 ((_ is Cons!64070) (exprs!5849 (h!70519 zl!343))))))

(declare-fun e!3621533 () Bool)

(assert (=> d!1855192 e!3621533))

(declare-fun res!2479973 () Bool)

(assert (=> d!1855192 (=> (not res!2479973) (not e!3621533))))

(declare-fun lt!2309510 () Regex!15965)

(assert (=> d!1855192 (= res!2479973 (validRegex!7701 lt!2309510))))

(assert (=> d!1855192 (= lt!2309510 e!3621529)))

(declare-fun c!1051131 () Bool)

(declare-fun e!3621528 () Bool)

(assert (=> d!1855192 (= c!1051131 e!3621528)))

(declare-fun res!2479972 () Bool)

(assert (=> d!1855192 (=> (not res!2479972) (not e!3621528))))

(assert (=> d!1855192 (= res!2479972 ((_ is Cons!64070) (exprs!5849 (h!70519 zl!343))))))

(assert (=> d!1855192 (forall!15048 (exprs!5849 (h!70519 zl!343)) lambda!322678)))

(assert (=> d!1855192 (= (generalisedConcat!1562 (exprs!5849 (h!70519 zl!343))) lt!2309510)))

(declare-fun b!5914550 () Bool)

(assert (=> b!5914550 (= e!3621529 (h!70518 (exprs!5849 (h!70519 zl!343))))))

(declare-fun b!5914551 () Bool)

(declare-fun e!3621532 () Bool)

(declare-fun isConcat!916 (Regex!15965) Bool)

(assert (=> b!5914551 (= e!3621532 (isConcat!916 lt!2309510))))

(declare-fun b!5914552 () Bool)

(assert (=> b!5914552 (= e!3621528 (isEmpty!35921 (t!377583 (exprs!5849 (h!70519 zl!343)))))))

(declare-fun b!5914553 () Bool)

(declare-fun e!3621530 () Bool)

(assert (=> b!5914553 (= e!3621533 e!3621530)))

(declare-fun c!1051128 () Bool)

(assert (=> b!5914553 (= c!1051128 (isEmpty!35921 (exprs!5849 (h!70519 zl!343))))))

(declare-fun b!5914554 () Bool)

(assert (=> b!5914554 (= e!3621530 e!3621532)))

(declare-fun c!1051130 () Bool)

(assert (=> b!5914554 (= c!1051130 (isEmpty!35921 (tail!11557 (exprs!5849 (h!70519 zl!343)))))))

(declare-fun b!5914555 () Bool)

(declare-fun isEmptyExpr!1393 (Regex!15965) Bool)

(assert (=> b!5914555 (= e!3621530 (isEmptyExpr!1393 lt!2309510))))

(declare-fun b!5914556 () Bool)

(assert (=> b!5914556 (= e!3621532 (= lt!2309510 (head!12472 (exprs!5849 (h!70519 zl!343)))))))

(declare-fun b!5914557 () Bool)

(assert (=> b!5914557 (= e!3621531 EmptyExpr!15965)))

(assert (= (and d!1855192 res!2479972) b!5914552))

(assert (= (and d!1855192 c!1051131) b!5914550))

(assert (= (and d!1855192 (not c!1051131)) b!5914549))

(assert (= (and b!5914549 c!1051129) b!5914548))

(assert (= (and b!5914549 (not c!1051129)) b!5914557))

(assert (= (and d!1855192 res!2479973) b!5914553))

(assert (= (and b!5914553 c!1051128) b!5914555))

(assert (= (and b!5914553 (not c!1051128)) b!5914554))

(assert (= (and b!5914554 c!1051130) b!5914556))

(assert (= (and b!5914554 (not c!1051130)) b!5914551))

(declare-fun m!6813034 () Bool)

(assert (=> b!5914555 m!6813034))

(declare-fun m!6813036 () Bool)

(assert (=> d!1855192 m!6813036))

(declare-fun m!6813038 () Bool)

(assert (=> d!1855192 m!6813038))

(declare-fun m!6813040 () Bool)

(assert (=> b!5914554 m!6813040))

(assert (=> b!5914554 m!6813040))

(declare-fun m!6813042 () Bool)

(assert (=> b!5914554 m!6813042))

(declare-fun m!6813044 () Bool)

(assert (=> b!5914548 m!6813044))

(assert (=> b!5914552 m!6812790))

(declare-fun m!6813046 () Bool)

(assert (=> b!5914553 m!6813046))

(declare-fun m!6813048 () Bool)

(assert (=> b!5914551 m!6813048))

(declare-fun m!6813050 () Bool)

(assert (=> b!5914556 m!6813050))

(assert (=> b!5914062 d!1855192))

(declare-fun d!1855194 () Bool)

(declare-fun e!3621536 () Bool)

(assert (=> d!1855194 e!3621536))

(declare-fun res!2479976 () Bool)

(assert (=> d!1855194 (=> (not res!2479976) (not e!3621536))))

(declare-fun lt!2309513 () List!64195)

(declare-fun noDuplicate!1823 (List!64195) Bool)

(assert (=> d!1855194 (= res!2479976 (noDuplicate!1823 lt!2309513))))

(declare-fun choose!44619 ((InoxSet Context!10698)) List!64195)

(assert (=> d!1855194 (= lt!2309513 (choose!44619 z!1189))))

(assert (=> d!1855194 (= (toList!9749 z!1189) lt!2309513)))

(declare-fun b!5914560 () Bool)

(declare-fun content!11790 (List!64195) (InoxSet Context!10698))

(assert (=> b!5914560 (= e!3621536 (= (content!11790 lt!2309513) z!1189))))

(assert (= (and d!1855194 res!2479976) b!5914560))

(declare-fun m!6813052 () Bool)

(assert (=> d!1855194 m!6813052))

(declare-fun m!6813054 () Bool)

(assert (=> d!1855194 m!6813054))

(declare-fun m!6813056 () Bool)

(assert (=> b!5914560 m!6813056))

(assert (=> b!5914052 d!1855194))

(declare-fun bs!1400328 () Bool)

(declare-fun d!1855196 () Bool)

(assert (= bs!1400328 (and d!1855196 d!1855184)))

(declare-fun lambda!322679 () Int)

(assert (=> bs!1400328 (= lambda!322679 lambda!322669)))

(declare-fun bs!1400329 () Bool)

(assert (= bs!1400329 (and d!1855196 d!1855188)))

(assert (=> bs!1400329 (= lambda!322679 lambda!322672)))

(declare-fun bs!1400330 () Bool)

(assert (= bs!1400330 (and d!1855196 d!1855190)))

(assert (=> bs!1400330 (= lambda!322679 lambda!322675)))

(declare-fun bs!1400331 () Bool)

(assert (= bs!1400331 (and d!1855196 d!1855192)))

(assert (=> bs!1400331 (= lambda!322679 lambda!322678)))

(assert (=> d!1855196 (= (inv!83159 (h!70519 zl!343)) (forall!15048 (exprs!5849 (h!70519 zl!343)) lambda!322679))))

(declare-fun bs!1400332 () Bool)

(assert (= bs!1400332 d!1855196))

(declare-fun m!6813058 () Bool)

(assert (=> bs!1400332 m!6813058))

(assert (=> b!5914051 d!1855196))

(declare-fun bs!1400333 () Bool)

(declare-fun d!1855198 () Bool)

(assert (= bs!1400333 (and d!1855198 d!1855196)))

(declare-fun lambda!322680 () Int)

(assert (=> bs!1400333 (= lambda!322680 lambda!322679)))

(declare-fun bs!1400334 () Bool)

(assert (= bs!1400334 (and d!1855198 d!1855184)))

(assert (=> bs!1400334 (= lambda!322680 lambda!322669)))

(declare-fun bs!1400335 () Bool)

(assert (= bs!1400335 (and d!1855198 d!1855188)))

(assert (=> bs!1400335 (= lambda!322680 lambda!322672)))

(declare-fun bs!1400336 () Bool)

(assert (= bs!1400336 (and d!1855198 d!1855190)))

(assert (=> bs!1400336 (= lambda!322680 lambda!322675)))

(declare-fun bs!1400337 () Bool)

(assert (= bs!1400337 (and d!1855198 d!1855192)))

(assert (=> bs!1400337 (= lambda!322680 lambda!322678)))

(assert (=> d!1855198 (= (inv!83159 (Context!10699 (Cons!64070 r!7292 Nil!64070))) (forall!15048 (exprs!5849 (Context!10699 (Cons!64070 r!7292 Nil!64070))) lambda!322680))))

(declare-fun bs!1400338 () Bool)

(assert (= bs!1400338 d!1855198))

(declare-fun m!6813060 () Bool)

(assert (=> bs!1400338 m!6813060))

(assert (=> b!5914060 d!1855198))

(declare-fun d!1855200 () Bool)

(declare-fun lt!2309516 () Regex!15965)

(assert (=> d!1855200 (validRegex!7701 lt!2309516)))

(assert (=> d!1855200 (= lt!2309516 (generalisedUnion!1809 (unfocusZipperList!1386 zl!343)))))

(assert (=> d!1855200 (= (unfocusZipper!1707 zl!343) lt!2309516)))

(declare-fun bs!1400339 () Bool)

(assert (= bs!1400339 d!1855200))

(declare-fun m!6813062 () Bool)

(assert (=> bs!1400339 m!6813062))

(assert (=> bs!1400339 m!6812806))

(assert (=> bs!1400339 m!6812806))

(assert (=> bs!1400339 m!6812808))

(assert (=> b!5914059 d!1855200))

(declare-fun b!5914565 () Bool)

(declare-fun e!3621539 () Bool)

(declare-fun tp!1643269 () Bool)

(declare-fun tp!1643270 () Bool)

(assert (=> b!5914565 (= e!3621539 (and tp!1643269 tp!1643270))))

(assert (=> b!5914058 (= tp!1643201 e!3621539)))

(assert (= (and b!5914058 ((_ is Cons!64070) (exprs!5849 setElem!40134))) b!5914565))

(declare-fun b!5914570 () Bool)

(declare-fun e!3621542 () Bool)

(declare-fun tp!1643273 () Bool)

(assert (=> b!5914570 (= e!3621542 (and tp_is_empty!41183 tp!1643273))))

(assert (=> b!5914057 (= tp!1643198 e!3621542)))

(assert (= (and b!5914057 ((_ is Cons!64072) (t!377585 s!2326))) b!5914570))

(declare-fun condSetEmpty!40140 () Bool)

(assert (=> setNonEmpty!40134 (= condSetEmpty!40140 (= setRest!40134 ((as const (Array Context!10698 Bool)) false)))))

(declare-fun setRes!40140 () Bool)

(assert (=> setNonEmpty!40134 (= tp!1643203 setRes!40140)))

(declare-fun setIsEmpty!40140 () Bool)

(assert (=> setIsEmpty!40140 setRes!40140))

(declare-fun tp!1643278 () Bool)

(declare-fun setNonEmpty!40140 () Bool)

(declare-fun setElem!40140 () Context!10698)

(declare-fun e!3621545 () Bool)

(assert (=> setNonEmpty!40140 (= setRes!40140 (and tp!1643278 (inv!83159 setElem!40140) e!3621545))))

(declare-fun setRest!40140 () (InoxSet Context!10698))

(assert (=> setNonEmpty!40140 (= setRest!40134 ((_ map or) (store ((as const (Array Context!10698 Bool)) false) setElem!40140 true) setRest!40140))))

(declare-fun b!5914575 () Bool)

(declare-fun tp!1643279 () Bool)

(assert (=> b!5914575 (= e!3621545 tp!1643279)))

(assert (= (and setNonEmpty!40134 condSetEmpty!40140) setIsEmpty!40140))

(assert (= (and setNonEmpty!40134 (not condSetEmpty!40140)) setNonEmpty!40140))

(assert (= setNonEmpty!40140 b!5914575))

(declare-fun m!6813064 () Bool)

(assert (=> setNonEmpty!40140 m!6813064))

(declare-fun b!5914589 () Bool)

(declare-fun e!3621548 () Bool)

(declare-fun tp!1643292 () Bool)

(declare-fun tp!1643290 () Bool)

(assert (=> b!5914589 (= e!3621548 (and tp!1643292 tp!1643290))))

(declare-fun b!5914588 () Bool)

(declare-fun tp!1643291 () Bool)

(assert (=> b!5914588 (= e!3621548 tp!1643291)))

(assert (=> b!5914047 (= tp!1643204 e!3621548)))

(declare-fun b!5914586 () Bool)

(assert (=> b!5914586 (= e!3621548 tp_is_empty!41183)))

(declare-fun b!5914587 () Bool)

(declare-fun tp!1643293 () Bool)

(declare-fun tp!1643294 () Bool)

(assert (=> b!5914587 (= e!3621548 (and tp!1643293 tp!1643294))))

(assert (= (and b!5914047 ((_ is ElementMatch!15965) (reg!16294 r!7292))) b!5914586))

(assert (= (and b!5914047 ((_ is Concat!24810) (reg!16294 r!7292))) b!5914587))

(assert (= (and b!5914047 ((_ is Star!15965) (reg!16294 r!7292))) b!5914588))

(assert (= (and b!5914047 ((_ is Union!15965) (reg!16294 r!7292))) b!5914589))

(declare-fun b!5914590 () Bool)

(declare-fun e!3621549 () Bool)

(declare-fun tp!1643295 () Bool)

(declare-fun tp!1643296 () Bool)

(assert (=> b!5914590 (= e!3621549 (and tp!1643295 tp!1643296))))

(assert (=> b!5914061 (= tp!1643199 e!3621549)))

(assert (= (and b!5914061 ((_ is Cons!64070) (exprs!5849 (h!70519 zl!343)))) b!5914590))

(declare-fun b!5914594 () Bool)

(declare-fun e!3621550 () Bool)

(declare-fun tp!1643299 () Bool)

(declare-fun tp!1643297 () Bool)

(assert (=> b!5914594 (= e!3621550 (and tp!1643299 tp!1643297))))

(declare-fun b!5914593 () Bool)

(declare-fun tp!1643298 () Bool)

(assert (=> b!5914593 (= e!3621550 tp!1643298)))

(assert (=> b!5914056 (= tp!1643205 e!3621550)))

(declare-fun b!5914591 () Bool)

(assert (=> b!5914591 (= e!3621550 tp_is_empty!41183)))

(declare-fun b!5914592 () Bool)

(declare-fun tp!1643300 () Bool)

(declare-fun tp!1643301 () Bool)

(assert (=> b!5914592 (= e!3621550 (and tp!1643300 tp!1643301))))

(assert (= (and b!5914056 ((_ is ElementMatch!15965) (regOne!32443 r!7292))) b!5914591))

(assert (= (and b!5914056 ((_ is Concat!24810) (regOne!32443 r!7292))) b!5914592))

(assert (= (and b!5914056 ((_ is Star!15965) (regOne!32443 r!7292))) b!5914593))

(assert (= (and b!5914056 ((_ is Union!15965) (regOne!32443 r!7292))) b!5914594))

(declare-fun b!5914598 () Bool)

(declare-fun e!3621551 () Bool)

(declare-fun tp!1643304 () Bool)

(declare-fun tp!1643302 () Bool)

(assert (=> b!5914598 (= e!3621551 (and tp!1643304 tp!1643302))))

(declare-fun b!5914597 () Bool)

(declare-fun tp!1643303 () Bool)

(assert (=> b!5914597 (= e!3621551 tp!1643303)))

(assert (=> b!5914056 (= tp!1643202 e!3621551)))

(declare-fun b!5914595 () Bool)

(assert (=> b!5914595 (= e!3621551 tp_is_empty!41183)))

(declare-fun b!5914596 () Bool)

(declare-fun tp!1643305 () Bool)

(declare-fun tp!1643306 () Bool)

(assert (=> b!5914596 (= e!3621551 (and tp!1643305 tp!1643306))))

(assert (= (and b!5914056 ((_ is ElementMatch!15965) (regTwo!32443 r!7292))) b!5914595))

(assert (= (and b!5914056 ((_ is Concat!24810) (regTwo!32443 r!7292))) b!5914596))

(assert (= (and b!5914056 ((_ is Star!15965) (regTwo!32443 r!7292))) b!5914597))

(assert (= (and b!5914056 ((_ is Union!15965) (regTwo!32443 r!7292))) b!5914598))

(declare-fun b!5914606 () Bool)

(declare-fun e!3621557 () Bool)

(declare-fun tp!1643311 () Bool)

(assert (=> b!5914606 (= e!3621557 tp!1643311)))

(declare-fun e!3621556 () Bool)

(declare-fun b!5914605 () Bool)

(declare-fun tp!1643312 () Bool)

(assert (=> b!5914605 (= e!3621556 (and (inv!83159 (h!70519 (t!377584 zl!343))) e!3621557 tp!1643312))))

(assert (=> b!5914051 (= tp!1643206 e!3621556)))

(assert (= b!5914605 b!5914606))

(assert (= (and b!5914051 ((_ is Cons!64071) (t!377584 zl!343))) b!5914605))

(declare-fun m!6813066 () Bool)

(assert (=> b!5914605 m!6813066))

(declare-fun b!5914610 () Bool)

(declare-fun e!3621558 () Bool)

(declare-fun tp!1643315 () Bool)

(declare-fun tp!1643313 () Bool)

(assert (=> b!5914610 (= e!3621558 (and tp!1643315 tp!1643313))))

(declare-fun b!5914609 () Bool)

(declare-fun tp!1643314 () Bool)

(assert (=> b!5914609 (= e!3621558 tp!1643314)))

(assert (=> b!5914045 (= tp!1643200 e!3621558)))

(declare-fun b!5914607 () Bool)

(assert (=> b!5914607 (= e!3621558 tp_is_empty!41183)))

(declare-fun b!5914608 () Bool)

(declare-fun tp!1643316 () Bool)

(declare-fun tp!1643317 () Bool)

(assert (=> b!5914608 (= e!3621558 (and tp!1643316 tp!1643317))))

(assert (= (and b!5914045 ((_ is ElementMatch!15965) (regOne!32442 r!7292))) b!5914607))

(assert (= (and b!5914045 ((_ is Concat!24810) (regOne!32442 r!7292))) b!5914608))

(assert (= (and b!5914045 ((_ is Star!15965) (regOne!32442 r!7292))) b!5914609))

(assert (= (and b!5914045 ((_ is Union!15965) (regOne!32442 r!7292))) b!5914610))

(declare-fun b!5914614 () Bool)

(declare-fun e!3621559 () Bool)

(declare-fun tp!1643320 () Bool)

(declare-fun tp!1643318 () Bool)

(assert (=> b!5914614 (= e!3621559 (and tp!1643320 tp!1643318))))

(declare-fun b!5914613 () Bool)

(declare-fun tp!1643319 () Bool)

(assert (=> b!5914613 (= e!3621559 tp!1643319)))

(assert (=> b!5914045 (= tp!1643197 e!3621559)))

(declare-fun b!5914611 () Bool)

(assert (=> b!5914611 (= e!3621559 tp_is_empty!41183)))

(declare-fun b!5914612 () Bool)

(declare-fun tp!1643321 () Bool)

(declare-fun tp!1643322 () Bool)

(assert (=> b!5914612 (= e!3621559 (and tp!1643321 tp!1643322))))

(assert (= (and b!5914045 ((_ is ElementMatch!15965) (regTwo!32442 r!7292))) b!5914611))

(assert (= (and b!5914045 ((_ is Concat!24810) (regTwo!32442 r!7292))) b!5914612))

(assert (= (and b!5914045 ((_ is Star!15965) (regTwo!32442 r!7292))) b!5914613))

(assert (= (and b!5914045 ((_ is Union!15965) (regTwo!32442 r!7292))) b!5914614))

(check-sat (not b!5914608) (not b!5914174) (not d!1855194) (not d!1855174) (not b!5914519) (not b!5914276) (not b!5914592) (not b!5914556) (not b!5914614) (not b!5914551) (not b!5914598) (not b!5914554) (not d!1855150) (not b!5914445) (not d!1855192) (not bm!468690) (not b!5914275) (not b!5914565) (not d!1855170) (not d!1855182) (not d!1855200) (not b!5914449) (not b!5914514) (not b!5914178) (not b!5914593) (not b!5914594) (not b!5914284) (not b!5914597) (not b!5914596) (not d!1855198) (not b!5914448) (not d!1855180) (not b!5914612) (not bm!468720) (not b!5914610) (not b!5914548) (not b!5914292) (not b!5914613) (not b!5914485) (not b!5914452) (not b!5914575) (not b!5914589) (not b!5914515) (not bm!468691) (not b!5914590) (not bm!468721) (not b!5914553) (not d!1855176) (not b!5914552) (not d!1855196) (not b!5914588) (not b!5914279) (not b!5914560) (not d!1855190) (not bm!468703) (not b!5914520) (not b!5914289) (not b!5914605) (not d!1855178) (not b!5914555) (not d!1855160) (not b!5914444) tp_is_empty!41183 (not setNonEmpty!40140) (not b!5914606) (not b!5914587) (not b!5914609) (not b!5914570) (not d!1855188) (not b!5914513) (not b!5914512) (not d!1855184) (not b!5914517) (not b!5914447) (not b!5914526))
(check-sat)
