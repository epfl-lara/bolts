; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597480 () Bool)

(assert start!597480)

(declare-fun b!5835033 () Bool)

(declare-fun e!3579508 () Bool)

(declare-fun tp!1613279 () Bool)

(declare-fun tp!1613273 () Bool)

(assert (=> b!5835033 (= e!3579508 (and tp!1613279 tp!1613273))))

(declare-fun b!5835034 () Bool)

(declare-fun e!3579509 () Bool)

(declare-fun tp!1613276 () Bool)

(assert (=> b!5835034 (= e!3579509 tp!1613276)))

(declare-fun res!2458588 () Bool)

(declare-fun e!3579512 () Bool)

(assert (=> start!597480 (=> (not res!2458588) (not e!3579512))))

(declare-datatypes ((C!32056 0))(
  ( (C!32057 (val!25730 Int)) )
))
(declare-datatypes ((Regex!15893 0))(
  ( (ElementMatch!15893 (c!1033769 C!32056)) (Concat!24738 (regOne!32298 Regex!15893) (regTwo!32298 Regex!15893)) (EmptyExpr!15893) (Star!15893 (reg!16222 Regex!15893)) (EmptyLang!15893) (Union!15893 (regOne!32299 Regex!15893) (regTwo!32299 Regex!15893)) )
))
(declare-fun r!7292 () Regex!15893)

(declare-fun validRegex!7629 (Regex!15893) Bool)

(assert (=> start!597480 (= res!2458588 (validRegex!7629 r!7292))))

(assert (=> start!597480 e!3579512))

(assert (=> start!597480 e!3579508))

(declare-fun condSetEmpty!39484 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63978 0))(
  ( (Nil!63854) (Cons!63854 (h!70302 Regex!15893) (t!377333 List!63978)) )
))
(declare-datatypes ((Context!10554 0))(
  ( (Context!10555 (exprs!5777 List!63978)) )
))
(declare-fun z!1189 () (InoxSet Context!10554))

(assert (=> start!597480 (= condSetEmpty!39484 (= z!1189 ((as const (Array Context!10554 Bool)) false)))))

(declare-fun setRes!39484 () Bool)

(assert (=> start!597480 setRes!39484))

(declare-fun e!3579510 () Bool)

(assert (=> start!597480 e!3579510))

(declare-fun e!3579514 () Bool)

(assert (=> start!597480 e!3579514))

(declare-fun setIsEmpty!39484 () Bool)

(assert (=> setIsEmpty!39484 setRes!39484))

(declare-fun b!5835035 () Bool)

(declare-fun tp!1613280 () Bool)

(declare-fun e!3579515 () Bool)

(declare-datatypes ((List!63979 0))(
  ( (Nil!63855) (Cons!63855 (h!70303 Context!10554) (t!377334 List!63979)) )
))
(declare-fun zl!343 () List!63979)

(declare-fun inv!82979 (Context!10554) Bool)

(assert (=> b!5835035 (= e!3579510 (and (inv!82979 (h!70303 zl!343)) e!3579515 tp!1613280))))

(declare-fun b!5835036 () Bool)

(declare-fun tp!1613272 () Bool)

(assert (=> b!5835036 (= e!3579508 tp!1613272)))

(declare-fun b!5835037 () Bool)

(declare-fun res!2458595 () Bool)

(declare-fun e!3579513 () Bool)

(assert (=> b!5835037 (=> res!2458595 e!3579513)))

(get-info :version)

(assert (=> b!5835037 (= res!2458595 (not ((_ is Cons!63854) (exprs!5777 (h!70303 zl!343)))))))

(declare-fun b!5835038 () Bool)

(declare-fun res!2458598 () Bool)

(assert (=> b!5835038 (=> (not res!2458598) (not e!3579512))))

(declare-fun unfocusZipper!1635 (List!63979) Regex!15893)

(assert (=> b!5835038 (= res!2458598 (= r!7292 (unfocusZipper!1635 zl!343)))))

(declare-fun b!5835039 () Bool)

(declare-fun tp_is_empty!41039 () Bool)

(assert (=> b!5835039 (= e!3579508 tp_is_empty!41039)))

(declare-fun b!5835040 () Bool)

(declare-fun res!2458594 () Bool)

(declare-fun e!3579511 () Bool)

(assert (=> b!5835040 (=> res!2458594 e!3579511)))

(declare-fun lt!2303122 () List!63978)

(declare-fun isEmpty!35721 (List!63978) Bool)

(assert (=> b!5835040 (= res!2458594 (isEmpty!35721 lt!2303122))))

(declare-fun b!5835041 () Bool)

(declare-fun tp!1613277 () Bool)

(assert (=> b!5835041 (= e!3579514 (and tp_is_empty!41039 tp!1613277))))

(declare-fun b!5835042 () Bool)

(declare-fun res!2458596 () Bool)

(assert (=> b!5835042 (=> res!2458596 e!3579513)))

(declare-fun generalisedConcat!1490 (List!63978) Regex!15893)

(assert (=> b!5835042 (= res!2458596 (not (= r!7292 (generalisedConcat!1490 (exprs!5777 (h!70303 zl!343))))))))

(declare-fun b!5835043 () Bool)

(declare-fun tp!1613271 () Bool)

(assert (=> b!5835043 (= e!3579515 tp!1613271)))

(declare-fun b!5835044 () Bool)

(declare-fun res!2458592 () Bool)

(assert (=> b!5835044 (=> res!2458592 e!3579513)))

(assert (=> b!5835044 (= res!2458592 (or ((_ is EmptyExpr!15893) r!7292) ((_ is EmptyLang!15893) r!7292) (not ((_ is ElementMatch!15893) r!7292))))))

(declare-fun setNonEmpty!39484 () Bool)

(declare-fun tp!1613275 () Bool)

(declare-fun setElem!39484 () Context!10554)

(assert (=> setNonEmpty!39484 (= setRes!39484 (and tp!1613275 (inv!82979 setElem!39484) e!3579509))))

(declare-fun setRest!39484 () (InoxSet Context!10554))

(assert (=> setNonEmpty!39484 (= z!1189 ((_ map or) (store ((as const (Array Context!10554 Bool)) false) setElem!39484 true) setRest!39484))))

(declare-fun b!5835045 () Bool)

(declare-fun tail!11432 (List!63978) List!63978)

(assert (=> b!5835045 (= e!3579511 (isEmpty!35721 (tail!11432 lt!2303122)))))

(declare-fun b!5835046 () Bool)

(declare-fun tp!1613274 () Bool)

(declare-fun tp!1613278 () Bool)

(assert (=> b!5835046 (= e!3579508 (and tp!1613274 tp!1613278))))

(declare-fun b!5835047 () Bool)

(declare-fun res!2458587 () Bool)

(assert (=> b!5835047 (=> res!2458587 e!3579511)))

(declare-fun lt!2303121 () Regex!15893)

(declare-fun head!12347 (List!63978) Regex!15893)

(assert (=> b!5835047 (= res!2458587 (not (= (head!12347 lt!2303122) lt!2303121)))))

(declare-fun b!5835048 () Bool)

(declare-fun res!2458589 () Bool)

(assert (=> b!5835048 (=> res!2458589 e!3579513)))

(declare-fun generalisedUnion!1737 (List!63978) Regex!15893)

(declare-fun unfocusZipperList!1314 (List!63979) List!63978)

(assert (=> b!5835048 (= res!2458589 (not (= r!7292 (generalisedUnion!1737 (unfocusZipperList!1314 zl!343)))))))

(declare-fun b!5835049 () Bool)

(declare-fun res!2458593 () Bool)

(assert (=> b!5835049 (=> (not res!2458593) (not e!3579512))))

(declare-fun toList!9677 ((InoxSet Context!10554)) List!63979)

(assert (=> b!5835049 (= res!2458593 (= (toList!9677 z!1189) zl!343))))

(declare-fun b!5835050 () Bool)

(assert (=> b!5835050 (= e!3579513 e!3579511)))

(declare-fun res!2458597 () Bool)

(assert (=> b!5835050 (=> res!2458597 e!3579511)))

(assert (=> b!5835050 (= res!2458597 (not (= z!1189 (store ((as const (Array Context!10554 Bool)) false) (Context!10555 lt!2303122) true))))))

(assert (=> b!5835050 (= lt!2303122 (Cons!63854 lt!2303121 Nil!63854))))

(assert (=> b!5835050 (= lt!2303121 (ElementMatch!15893 (c!1033769 r!7292)))))

(declare-fun b!5835051 () Bool)

(assert (=> b!5835051 (= e!3579512 (not e!3579513))))

(declare-fun res!2458591 () Bool)

(assert (=> b!5835051 (=> res!2458591 e!3579513)))

(assert (=> b!5835051 (= res!2458591 (not ((_ is Cons!63855) zl!343)))))

(declare-datatypes ((List!63980 0))(
  ( (Nil!63856) (Cons!63856 (h!70304 C!32056) (t!377335 List!63980)) )
))
(declare-fun s!2326 () List!63980)

(declare-fun matchR!8076 (Regex!15893 List!63980) Bool)

(declare-fun matchRSpec!2994 (Regex!15893 List!63980) Bool)

(assert (=> b!5835051 (= (matchR!8076 r!7292 s!2326) (matchRSpec!2994 r!7292 s!2326))))

(declare-datatypes ((Unit!157057 0))(
  ( (Unit!157058) )
))
(declare-fun lt!2303120 () Unit!157057)

(declare-fun mainMatchTheorem!2994 (Regex!15893 List!63980) Unit!157057)

(assert (=> b!5835051 (= lt!2303120 (mainMatchTheorem!2994 r!7292 s!2326))))

(declare-fun b!5835052 () Bool)

(declare-fun res!2458590 () Bool)

(assert (=> b!5835052 (=> res!2458590 e!3579513)))

(declare-fun isEmpty!35722 (List!63979) Bool)

(assert (=> b!5835052 (= res!2458590 (not (isEmpty!35722 (t!377334 zl!343))))))

(assert (= (and start!597480 res!2458588) b!5835049))

(assert (= (and b!5835049 res!2458593) b!5835038))

(assert (= (and b!5835038 res!2458598) b!5835051))

(assert (= (and b!5835051 (not res!2458591)) b!5835052))

(assert (= (and b!5835052 (not res!2458590)) b!5835042))

(assert (= (and b!5835042 (not res!2458596)) b!5835037))

(assert (= (and b!5835037 (not res!2458595)) b!5835048))

(assert (= (and b!5835048 (not res!2458589)) b!5835044))

(assert (= (and b!5835044 (not res!2458592)) b!5835050))

(assert (= (and b!5835050 (not res!2458597)) b!5835040))

(assert (= (and b!5835040 (not res!2458594)) b!5835047))

(assert (= (and b!5835047 (not res!2458587)) b!5835045))

(assert (= (and start!597480 ((_ is ElementMatch!15893) r!7292)) b!5835039))

(assert (= (and start!597480 ((_ is Concat!24738) r!7292)) b!5835046))

(assert (= (and start!597480 ((_ is Star!15893) r!7292)) b!5835036))

(assert (= (and start!597480 ((_ is Union!15893) r!7292)) b!5835033))

(assert (= (and start!597480 condSetEmpty!39484) setIsEmpty!39484))

(assert (= (and start!597480 (not condSetEmpty!39484)) setNonEmpty!39484))

(assert (= setNonEmpty!39484 b!5835034))

(assert (= b!5835035 b!5835043))

(assert (= (and start!597480 ((_ is Cons!63855) zl!343)) b!5835035))

(assert (= (and start!597480 ((_ is Cons!63856) s!2326)) b!5835041))

(declare-fun m!6762294 () Bool)

(assert (=> start!597480 m!6762294))

(declare-fun m!6762296 () Bool)

(assert (=> b!5835048 m!6762296))

(assert (=> b!5835048 m!6762296))

(declare-fun m!6762298 () Bool)

(assert (=> b!5835048 m!6762298))

(declare-fun m!6762300 () Bool)

(assert (=> b!5835042 m!6762300))

(declare-fun m!6762302 () Bool)

(assert (=> b!5835050 m!6762302))

(declare-fun m!6762304 () Bool)

(assert (=> b!5835052 m!6762304))

(declare-fun m!6762306 () Bool)

(assert (=> b!5835049 m!6762306))

(declare-fun m!6762308 () Bool)

(assert (=> b!5835038 m!6762308))

(declare-fun m!6762310 () Bool)

(assert (=> b!5835040 m!6762310))

(declare-fun m!6762312 () Bool)

(assert (=> setNonEmpty!39484 m!6762312))

(declare-fun m!6762314 () Bool)

(assert (=> b!5835035 m!6762314))

(declare-fun m!6762316 () Bool)

(assert (=> b!5835045 m!6762316))

(assert (=> b!5835045 m!6762316))

(declare-fun m!6762318 () Bool)

(assert (=> b!5835045 m!6762318))

(declare-fun m!6762320 () Bool)

(assert (=> b!5835047 m!6762320))

(declare-fun m!6762322 () Bool)

(assert (=> b!5835051 m!6762322))

(declare-fun m!6762324 () Bool)

(assert (=> b!5835051 m!6762324))

(declare-fun m!6762326 () Bool)

(assert (=> b!5835051 m!6762326))

(check-sat (not b!5835042) (not setNonEmpty!39484) (not b!5835051) (not b!5835047) tp_is_empty!41039 (not b!5835049) (not b!5835034) (not b!5835035) (not b!5835033) (not b!5835045) (not start!597480) (not b!5835043) (not b!5835041) (not b!5835052) (not b!5835040) (not b!5835036) (not b!5835038) (not b!5835046) (not b!5835048))
(check-sat)
(get-model)

(declare-fun b!5835109 () Bool)

(declare-fun e!3579546 () Bool)

(declare-fun lt!2303127 () Bool)

(declare-fun call!455705 () Bool)

(assert (=> b!5835109 (= e!3579546 (= lt!2303127 call!455705))))

(declare-fun d!1834278 () Bool)

(assert (=> d!1834278 e!3579546))

(declare-fun c!1033782 () Bool)

(assert (=> d!1834278 (= c!1033782 ((_ is EmptyExpr!15893) r!7292))))

(declare-fun e!3579544 () Bool)

(assert (=> d!1834278 (= lt!2303127 e!3579544)))

(declare-fun c!1033783 () Bool)

(declare-fun isEmpty!35724 (List!63980) Bool)

(assert (=> d!1834278 (= c!1033783 (isEmpty!35724 s!2326))))

(assert (=> d!1834278 (validRegex!7629 r!7292)))

(assert (=> d!1834278 (= (matchR!8076 r!7292 s!2326) lt!2303127)))

(declare-fun b!5835110 () Bool)

(declare-fun e!3579548 () Bool)

(assert (=> b!5835110 (= e!3579546 e!3579548)))

(declare-fun c!1033784 () Bool)

(assert (=> b!5835110 (= c!1033784 ((_ is EmptyLang!15893) r!7292))))

(declare-fun b!5835111 () Bool)

(declare-fun res!2458634 () Bool)

(declare-fun e!3579547 () Bool)

(assert (=> b!5835111 (=> (not res!2458634) (not e!3579547))))

(assert (=> b!5835111 (= res!2458634 (not call!455705))))

(declare-fun b!5835112 () Bool)

(declare-fun e!3579545 () Bool)

(declare-fun e!3579550 () Bool)

(assert (=> b!5835112 (= e!3579545 e!3579550)))

(declare-fun res!2458635 () Bool)

(assert (=> b!5835112 (=> res!2458635 e!3579550)))

(assert (=> b!5835112 (= res!2458635 call!455705)))

(declare-fun bm!455698 () Bool)

(assert (=> bm!455698 (= call!455705 (isEmpty!35724 s!2326))))

(declare-fun b!5835113 () Bool)

(declare-fun head!12349 (List!63980) C!32056)

(assert (=> b!5835113 (= e!3579550 (not (= (head!12349 s!2326) (c!1033769 r!7292))))))

(declare-fun b!5835114 () Bool)

(declare-fun res!2458633 () Bool)

(declare-fun e!3579549 () Bool)

(assert (=> b!5835114 (=> res!2458633 e!3579549)))

(assert (=> b!5835114 (= res!2458633 (not ((_ is ElementMatch!15893) r!7292)))))

(assert (=> b!5835114 (= e!3579548 e!3579549)))

(declare-fun b!5835115 () Bool)

(declare-fun derivativeStep!4635 (Regex!15893 C!32056) Regex!15893)

(declare-fun tail!11434 (List!63980) List!63980)

(assert (=> b!5835115 (= e!3579544 (matchR!8076 (derivativeStep!4635 r!7292 (head!12349 s!2326)) (tail!11434 s!2326)))))

(declare-fun b!5835116 () Bool)

(declare-fun res!2458632 () Bool)

(assert (=> b!5835116 (=> (not res!2458632) (not e!3579547))))

(assert (=> b!5835116 (= res!2458632 (isEmpty!35724 (tail!11434 s!2326)))))

(declare-fun b!5835117 () Bool)

(declare-fun res!2458637 () Bool)

(assert (=> b!5835117 (=> res!2458637 e!3579549)))

(assert (=> b!5835117 (= res!2458637 e!3579547)))

(declare-fun res!2458631 () Bool)

(assert (=> b!5835117 (=> (not res!2458631) (not e!3579547))))

(assert (=> b!5835117 (= res!2458631 lt!2303127)))

(declare-fun b!5835118 () Bool)

(assert (=> b!5835118 (= e!3579549 e!3579545)))

(declare-fun res!2458636 () Bool)

(assert (=> b!5835118 (=> (not res!2458636) (not e!3579545))))

(assert (=> b!5835118 (= res!2458636 (not lt!2303127))))

(declare-fun b!5835119 () Bool)

(declare-fun nullable!5895 (Regex!15893) Bool)

(assert (=> b!5835119 (= e!3579544 (nullable!5895 r!7292))))

(declare-fun b!5835120 () Bool)

(assert (=> b!5835120 (= e!3579548 (not lt!2303127))))

(declare-fun b!5835121 () Bool)

(assert (=> b!5835121 (= e!3579547 (= (head!12349 s!2326) (c!1033769 r!7292)))))

(declare-fun b!5835122 () Bool)

(declare-fun res!2458638 () Bool)

(assert (=> b!5835122 (=> res!2458638 e!3579550)))

(assert (=> b!5835122 (= res!2458638 (not (isEmpty!35724 (tail!11434 s!2326))))))

(assert (= (and d!1834278 c!1033783) b!5835119))

(assert (= (and d!1834278 (not c!1033783)) b!5835115))

(assert (= (and d!1834278 c!1033782) b!5835109))

(assert (= (and d!1834278 (not c!1033782)) b!5835110))

(assert (= (and b!5835110 c!1033784) b!5835120))

(assert (= (and b!5835110 (not c!1033784)) b!5835114))

(assert (= (and b!5835114 (not res!2458633)) b!5835117))

(assert (= (and b!5835117 res!2458631) b!5835111))

(assert (= (and b!5835111 res!2458634) b!5835116))

(assert (= (and b!5835116 res!2458632) b!5835121))

(assert (= (and b!5835117 (not res!2458637)) b!5835118))

(assert (= (and b!5835118 res!2458636) b!5835112))

(assert (= (and b!5835112 (not res!2458635)) b!5835122))

(assert (= (and b!5835122 (not res!2458638)) b!5835113))

(assert (= (or b!5835109 b!5835111 b!5835112) bm!455698))

(declare-fun m!6762328 () Bool)

(assert (=> b!5835116 m!6762328))

(assert (=> b!5835116 m!6762328))

(declare-fun m!6762330 () Bool)

(assert (=> b!5835116 m!6762330))

(declare-fun m!6762332 () Bool)

(assert (=> b!5835113 m!6762332))

(assert (=> b!5835115 m!6762332))

(assert (=> b!5835115 m!6762332))

(declare-fun m!6762334 () Bool)

(assert (=> b!5835115 m!6762334))

(assert (=> b!5835115 m!6762328))

(assert (=> b!5835115 m!6762334))

(assert (=> b!5835115 m!6762328))

(declare-fun m!6762336 () Bool)

(assert (=> b!5835115 m!6762336))

(declare-fun m!6762338 () Bool)

(assert (=> b!5835119 m!6762338))

(assert (=> b!5835122 m!6762328))

(assert (=> b!5835122 m!6762328))

(assert (=> b!5835122 m!6762330))

(declare-fun m!6762340 () Bool)

(assert (=> d!1834278 m!6762340))

(assert (=> d!1834278 m!6762294))

(assert (=> bm!455698 m!6762340))

(assert (=> b!5835121 m!6762332))

(assert (=> b!5835051 d!1834278))

(declare-fun b!5835367 () Bool)

(assert (=> b!5835367 true))

(assert (=> b!5835367 true))

(declare-fun bs!1375339 () Bool)

(declare-fun b!5835366 () Bool)

(assert (= bs!1375339 (and b!5835366 b!5835367)))

(declare-fun lambda!319217 () Int)

(declare-fun lambda!319216 () Int)

(assert (=> bs!1375339 (not (= lambda!319217 lambda!319216))))

(assert (=> b!5835366 true))

(assert (=> b!5835366 true))

(declare-fun e!3579688 () Bool)

(declare-fun call!455727 () Bool)

(assert (=> b!5835366 (= e!3579688 call!455727)))

(declare-fun e!3579687 () Bool)

(assert (=> b!5835367 (= e!3579687 call!455727)))

(declare-fun b!5835368 () Bool)

(declare-fun e!3579690 () Bool)

(declare-fun e!3579689 () Bool)

(assert (=> b!5835368 (= e!3579690 e!3579689)))

(declare-fun res!2458713 () Bool)

(assert (=> b!5835368 (= res!2458713 (not ((_ is EmptyLang!15893) r!7292)))))

(assert (=> b!5835368 (=> (not res!2458713) (not e!3579689))))

(declare-fun bm!455721 () Bool)

(declare-fun call!455726 () Bool)

(assert (=> bm!455721 (= call!455726 (isEmpty!35724 s!2326))))

(declare-fun b!5835369 () Bool)

(declare-fun e!3579691 () Bool)

(assert (=> b!5835369 (= e!3579691 (matchRSpec!2994 (regTwo!32299 r!7292) s!2326))))

(declare-fun b!5835370 () Bool)

(declare-fun e!3579692 () Bool)

(assert (=> b!5835370 (= e!3579692 e!3579688)))

(declare-fun c!1033843 () Bool)

(assert (=> b!5835370 (= c!1033843 ((_ is Star!15893) r!7292))))

(declare-fun b!5835371 () Bool)

(declare-fun e!3579693 () Bool)

(assert (=> b!5835371 (= e!3579693 (= s!2326 (Cons!63856 (c!1033769 r!7292) Nil!63856)))))

(declare-fun b!5835372 () Bool)

(declare-fun res!2458712 () Bool)

(assert (=> b!5835372 (=> res!2458712 e!3579687)))

(assert (=> b!5835372 (= res!2458712 call!455726)))

(assert (=> b!5835372 (= e!3579688 e!3579687)))

(declare-fun d!1834282 () Bool)

(declare-fun c!1033844 () Bool)

(assert (=> d!1834282 (= c!1033844 ((_ is EmptyExpr!15893) r!7292))))

(assert (=> d!1834282 (= (matchRSpec!2994 r!7292 s!2326) e!3579690)))

(declare-fun b!5835373 () Bool)

(assert (=> b!5835373 (= e!3579692 e!3579691)))

(declare-fun res!2458714 () Bool)

(assert (=> b!5835373 (= res!2458714 (matchRSpec!2994 (regOne!32299 r!7292) s!2326))))

(assert (=> b!5835373 (=> res!2458714 e!3579691)))

(declare-fun b!5835374 () Bool)

(assert (=> b!5835374 (= e!3579690 call!455726)))

(declare-fun b!5835375 () Bool)

(declare-fun c!1033841 () Bool)

(assert (=> b!5835375 (= c!1033841 ((_ is Union!15893) r!7292))))

(assert (=> b!5835375 (= e!3579693 e!3579692)))

(declare-fun bm!455722 () Bool)

(declare-fun Exists!2969 (Int) Bool)

(assert (=> bm!455722 (= call!455727 (Exists!2969 (ite c!1033843 lambda!319216 lambda!319217)))))

(declare-fun b!5835376 () Bool)

(declare-fun c!1033842 () Bool)

(assert (=> b!5835376 (= c!1033842 ((_ is ElementMatch!15893) r!7292))))

(assert (=> b!5835376 (= e!3579689 e!3579693)))

(assert (= (and d!1834282 c!1033844) b!5835374))

(assert (= (and d!1834282 (not c!1033844)) b!5835368))

(assert (= (and b!5835368 res!2458713) b!5835376))

(assert (= (and b!5835376 c!1033842) b!5835371))

(assert (= (and b!5835376 (not c!1033842)) b!5835375))

(assert (= (and b!5835375 c!1033841) b!5835373))

(assert (= (and b!5835375 (not c!1033841)) b!5835370))

(assert (= (and b!5835373 (not res!2458714)) b!5835369))

(assert (= (and b!5835370 c!1033843) b!5835372))

(assert (= (and b!5835370 (not c!1033843)) b!5835366))

(assert (= (and b!5835372 (not res!2458712)) b!5835367))

(assert (= (or b!5835367 b!5835366) bm!455722))

(assert (= (or b!5835374 b!5835372) bm!455721))

(assert (=> bm!455721 m!6762340))

(declare-fun m!6762430 () Bool)

(assert (=> b!5835369 m!6762430))

(declare-fun m!6762432 () Bool)

(assert (=> b!5835373 m!6762432))

(declare-fun m!6762434 () Bool)

(assert (=> bm!455722 m!6762434))

(assert (=> b!5835051 d!1834282))

(declare-fun d!1834314 () Bool)

(assert (=> d!1834314 (= (matchR!8076 r!7292 s!2326) (matchRSpec!2994 r!7292 s!2326))))

(declare-fun lt!2303149 () Unit!157057)

(declare-fun choose!44308 (Regex!15893 List!63980) Unit!157057)

(assert (=> d!1834314 (= lt!2303149 (choose!44308 r!7292 s!2326))))

(assert (=> d!1834314 (validRegex!7629 r!7292)))

(assert (=> d!1834314 (= (mainMatchTheorem!2994 r!7292 s!2326) lt!2303149)))

(declare-fun bs!1375340 () Bool)

(assert (= bs!1375340 d!1834314))

(assert (=> bs!1375340 m!6762322))

(assert (=> bs!1375340 m!6762324))

(declare-fun m!6762436 () Bool)

(assert (=> bs!1375340 m!6762436))

(assert (=> bs!1375340 m!6762294))

(assert (=> b!5835051 d!1834314))

(declare-fun b!5835401 () Bool)

(declare-fun e!3579707 () Bool)

(declare-fun e!3579710 () Bool)

(assert (=> b!5835401 (= e!3579707 e!3579710)))

(declare-fun c!1033856 () Bool)

(assert (=> b!5835401 (= c!1033856 (isEmpty!35721 (exprs!5777 (h!70303 zl!343))))))

(declare-fun b!5835402 () Bool)

(declare-fun e!3579706 () Bool)

(assert (=> b!5835402 (= e!3579710 e!3579706)))

(declare-fun c!1033854 () Bool)

(assert (=> b!5835402 (= c!1033854 (isEmpty!35721 (tail!11432 (exprs!5777 (h!70303 zl!343)))))))

(declare-fun b!5835403 () Bool)

(declare-fun lt!2303152 () Regex!15893)

(assert (=> b!5835403 (= e!3579706 (= lt!2303152 (head!12347 (exprs!5777 (h!70303 zl!343)))))))

(declare-fun d!1834316 () Bool)

(assert (=> d!1834316 e!3579707))

(declare-fun res!2458719 () Bool)

(assert (=> d!1834316 (=> (not res!2458719) (not e!3579707))))

(assert (=> d!1834316 (= res!2458719 (validRegex!7629 lt!2303152))))

(declare-fun e!3579711 () Regex!15893)

(assert (=> d!1834316 (= lt!2303152 e!3579711)))

(declare-fun c!1033853 () Bool)

(declare-fun e!3579709 () Bool)

(assert (=> d!1834316 (= c!1033853 e!3579709)))

(declare-fun res!2458720 () Bool)

(assert (=> d!1834316 (=> (not res!2458720) (not e!3579709))))

(assert (=> d!1834316 (= res!2458720 ((_ is Cons!63854) (exprs!5777 (h!70303 zl!343))))))

(declare-fun lambda!319220 () Int)

(declare-fun forall!14984 (List!63978 Int) Bool)

(assert (=> d!1834316 (forall!14984 (exprs!5777 (h!70303 zl!343)) lambda!319220)))

(assert (=> d!1834316 (= (generalisedConcat!1490 (exprs!5777 (h!70303 zl!343))) lt!2303152)))

(declare-fun b!5835404 () Bool)

(assert (=> b!5835404 (= e!3579709 (isEmpty!35721 (t!377333 (exprs!5777 (h!70303 zl!343)))))))

(declare-fun b!5835405 () Bool)

(declare-fun e!3579708 () Regex!15893)

(assert (=> b!5835405 (= e!3579711 e!3579708)))

(declare-fun c!1033855 () Bool)

(assert (=> b!5835405 (= c!1033855 ((_ is Cons!63854) (exprs!5777 (h!70303 zl!343))))))

(declare-fun b!5835406 () Bool)

(declare-fun isEmptyExpr!1332 (Regex!15893) Bool)

(assert (=> b!5835406 (= e!3579710 (isEmptyExpr!1332 lt!2303152))))

(declare-fun b!5835407 () Bool)

(assert (=> b!5835407 (= e!3579708 (Concat!24738 (h!70302 (exprs!5777 (h!70303 zl!343))) (generalisedConcat!1490 (t!377333 (exprs!5777 (h!70303 zl!343))))))))

(declare-fun b!5835408 () Bool)

(declare-fun isConcat!855 (Regex!15893) Bool)

(assert (=> b!5835408 (= e!3579706 (isConcat!855 lt!2303152))))

(declare-fun b!5835409 () Bool)

(assert (=> b!5835409 (= e!3579708 EmptyExpr!15893)))

(declare-fun b!5835410 () Bool)

(assert (=> b!5835410 (= e!3579711 (h!70302 (exprs!5777 (h!70303 zl!343))))))

(assert (= (and d!1834316 res!2458720) b!5835404))

(assert (= (and d!1834316 c!1033853) b!5835410))

(assert (= (and d!1834316 (not c!1033853)) b!5835405))

(assert (= (and b!5835405 c!1033855) b!5835407))

(assert (= (and b!5835405 (not c!1033855)) b!5835409))

(assert (= (and d!1834316 res!2458719) b!5835401))

(assert (= (and b!5835401 c!1033856) b!5835406))

(assert (= (and b!5835401 (not c!1033856)) b!5835402))

(assert (= (and b!5835402 c!1033854) b!5835403))

(assert (= (and b!5835402 (not c!1033854)) b!5835408))

(declare-fun m!6762438 () Bool)

(assert (=> d!1834316 m!6762438))

(declare-fun m!6762440 () Bool)

(assert (=> d!1834316 m!6762440))

(declare-fun m!6762442 () Bool)

(assert (=> b!5835404 m!6762442))

(declare-fun m!6762444 () Bool)

(assert (=> b!5835403 m!6762444))

(declare-fun m!6762446 () Bool)

(assert (=> b!5835407 m!6762446))

(declare-fun m!6762448 () Bool)

(assert (=> b!5835401 m!6762448))

(declare-fun m!6762450 () Bool)

(assert (=> b!5835408 m!6762450))

(declare-fun m!6762452 () Bool)

(assert (=> b!5835406 m!6762452))

(declare-fun m!6762454 () Bool)

(assert (=> b!5835402 m!6762454))

(assert (=> b!5835402 m!6762454))

(declare-fun m!6762456 () Bool)

(assert (=> b!5835402 m!6762456))

(assert (=> b!5835042 d!1834316))

(declare-fun d!1834318 () Bool)

(assert (=> d!1834318 (= (isEmpty!35721 lt!2303122) ((_ is Nil!63854) lt!2303122))))

(assert (=> b!5835040 d!1834318))

(declare-fun b!5835429 () Bool)

(declare-fun e!3579730 () Bool)

(declare-fun call!455735 () Bool)

(assert (=> b!5835429 (= e!3579730 call!455735)))

(declare-fun b!5835430 () Bool)

(declare-fun e!3579729 () Bool)

(declare-fun e!3579727 () Bool)

(assert (=> b!5835430 (= e!3579729 e!3579727)))

(declare-fun res!2458733 () Bool)

(assert (=> b!5835430 (=> (not res!2458733) (not e!3579727))))

(declare-fun call!455736 () Bool)

(assert (=> b!5835430 (= res!2458733 call!455736)))

(declare-fun b!5835431 () Bool)

(declare-fun e!3579728 () Bool)

(declare-fun e!3579726 () Bool)

(assert (=> b!5835431 (= e!3579728 e!3579726)))

(declare-fun res!2458734 () Bool)

(assert (=> b!5835431 (= res!2458734 (not (nullable!5895 (reg!16222 r!7292))))))

(assert (=> b!5835431 (=> (not res!2458734) (not e!3579726))))

(declare-fun b!5835432 () Bool)

(declare-fun res!2458731 () Bool)

(assert (=> b!5835432 (=> res!2458731 e!3579729)))

(assert (=> b!5835432 (= res!2458731 (not ((_ is Concat!24738) r!7292)))))

(declare-fun e!3579732 () Bool)

(assert (=> b!5835432 (= e!3579732 e!3579729)))

(declare-fun c!1033861 () Bool)

(declare-fun c!1033862 () Bool)

(declare-fun bm!455729 () Bool)

(declare-fun call!455734 () Bool)

(assert (=> bm!455729 (= call!455734 (validRegex!7629 (ite c!1033861 (reg!16222 r!7292) (ite c!1033862 (regTwo!32299 r!7292) (regTwo!32298 r!7292)))))))

(declare-fun b!5835433 () Bool)

(assert (=> b!5835433 (= e!3579727 call!455735)))

(declare-fun b!5835434 () Bool)

(declare-fun e!3579731 () Bool)

(assert (=> b!5835434 (= e!3579731 e!3579728)))

(assert (=> b!5835434 (= c!1033861 ((_ is Star!15893) r!7292))))

(declare-fun b!5835435 () Bool)

(declare-fun res!2458735 () Bool)

(assert (=> b!5835435 (=> (not res!2458735) (not e!3579730))))

(assert (=> b!5835435 (= res!2458735 call!455736)))

(assert (=> b!5835435 (= e!3579732 e!3579730)))

(declare-fun b!5835436 () Bool)

(assert (=> b!5835436 (= e!3579728 e!3579732)))

(assert (=> b!5835436 (= c!1033862 ((_ is Union!15893) r!7292))))

(declare-fun bm!455730 () Bool)

(assert (=> bm!455730 (= call!455736 (validRegex!7629 (ite c!1033862 (regOne!32299 r!7292) (regOne!32298 r!7292))))))

(declare-fun bm!455731 () Bool)

(assert (=> bm!455731 (= call!455735 call!455734)))

(declare-fun d!1834320 () Bool)

(declare-fun res!2458732 () Bool)

(assert (=> d!1834320 (=> res!2458732 e!3579731)))

(assert (=> d!1834320 (= res!2458732 ((_ is ElementMatch!15893) r!7292))))

(assert (=> d!1834320 (= (validRegex!7629 r!7292) e!3579731)))

(declare-fun b!5835437 () Bool)

(assert (=> b!5835437 (= e!3579726 call!455734)))

(assert (= (and d!1834320 (not res!2458732)) b!5835434))

(assert (= (and b!5835434 c!1033861) b!5835431))

(assert (= (and b!5835434 (not c!1033861)) b!5835436))

(assert (= (and b!5835431 res!2458734) b!5835437))

(assert (= (and b!5835436 c!1033862) b!5835435))

(assert (= (and b!5835436 (not c!1033862)) b!5835432))

(assert (= (and b!5835435 res!2458735) b!5835429))

(assert (= (and b!5835432 (not res!2458731)) b!5835430))

(assert (= (and b!5835430 res!2458733) b!5835433))

(assert (= (or b!5835429 b!5835433) bm!455731))

(assert (= (or b!5835435 b!5835430) bm!455730))

(assert (= (or b!5835437 bm!455731) bm!455729))

(declare-fun m!6762458 () Bool)

(assert (=> b!5835431 m!6762458))

(declare-fun m!6762460 () Bool)

(assert (=> bm!455729 m!6762460))

(declare-fun m!6762462 () Bool)

(assert (=> bm!455730 m!6762462))

(assert (=> start!597480 d!1834320))

(declare-fun d!1834322 () Bool)

(assert (=> d!1834322 (= (isEmpty!35722 (t!377334 zl!343)) ((_ is Nil!63855) (t!377334 zl!343)))))

(assert (=> b!5835052 d!1834322))

(declare-fun bs!1375341 () Bool)

(declare-fun d!1834324 () Bool)

(assert (= bs!1375341 (and d!1834324 d!1834316)))

(declare-fun lambda!319223 () Int)

(assert (=> bs!1375341 (= lambda!319223 lambda!319220)))

(assert (=> d!1834324 (= (inv!82979 setElem!39484) (forall!14984 (exprs!5777 setElem!39484) lambda!319223))))

(declare-fun bs!1375342 () Bool)

(assert (= bs!1375342 d!1834324))

(declare-fun m!6762464 () Bool)

(assert (=> bs!1375342 m!6762464))

(assert (=> setNonEmpty!39484 d!1834324))

(declare-fun d!1834326 () Bool)

(assert (=> d!1834326 (= (isEmpty!35721 (tail!11432 lt!2303122)) ((_ is Nil!63854) (tail!11432 lt!2303122)))))

(assert (=> b!5835045 d!1834326))

(declare-fun d!1834328 () Bool)

(assert (=> d!1834328 (= (tail!11432 lt!2303122) (t!377333 lt!2303122))))

(assert (=> b!5835045 d!1834328))

(declare-fun bs!1375343 () Bool)

(declare-fun d!1834330 () Bool)

(assert (= bs!1375343 (and d!1834330 d!1834316)))

(declare-fun lambda!319224 () Int)

(assert (=> bs!1375343 (= lambda!319224 lambda!319220)))

(declare-fun bs!1375344 () Bool)

(assert (= bs!1375344 (and d!1834330 d!1834324)))

(assert (=> bs!1375344 (= lambda!319224 lambda!319223)))

(assert (=> d!1834330 (= (inv!82979 (h!70303 zl!343)) (forall!14984 (exprs!5777 (h!70303 zl!343)) lambda!319224))))

(declare-fun bs!1375345 () Bool)

(assert (= bs!1375345 d!1834330))

(declare-fun m!6762466 () Bool)

(assert (=> bs!1375345 m!6762466))

(assert (=> b!5835035 d!1834330))

(declare-fun bs!1375346 () Bool)

(declare-fun d!1834332 () Bool)

(assert (= bs!1375346 (and d!1834332 d!1834316)))

(declare-fun lambda!319227 () Int)

(assert (=> bs!1375346 (= lambda!319227 lambda!319220)))

(declare-fun bs!1375347 () Bool)

(assert (= bs!1375347 (and d!1834332 d!1834324)))

(assert (=> bs!1375347 (= lambda!319227 lambda!319223)))

(declare-fun bs!1375348 () Bool)

(assert (= bs!1375348 (and d!1834332 d!1834330)))

(assert (=> bs!1375348 (= lambda!319227 lambda!319224)))

(declare-fun b!5835458 () Bool)

(declare-fun e!3579749 () Regex!15893)

(assert (=> b!5835458 (= e!3579749 (Union!15893 (h!70302 (unfocusZipperList!1314 zl!343)) (generalisedUnion!1737 (t!377333 (unfocusZipperList!1314 zl!343)))))))

(declare-fun b!5835459 () Bool)

(declare-fun e!3579750 () Regex!15893)

(assert (=> b!5835459 (= e!3579750 (h!70302 (unfocusZipperList!1314 zl!343)))))

(declare-fun b!5835461 () Bool)

(declare-fun e!3579748 () Bool)

(declare-fun e!3579746 () Bool)

(assert (=> b!5835461 (= e!3579748 e!3579746)))

(declare-fun c!1033872 () Bool)

(assert (=> b!5835461 (= c!1033872 (isEmpty!35721 (tail!11432 (unfocusZipperList!1314 zl!343))))))

(declare-fun b!5835462 () Bool)

(declare-fun lt!2303155 () Regex!15893)

(assert (=> b!5835462 (= e!3579746 (= lt!2303155 (head!12347 (unfocusZipperList!1314 zl!343))))))

(declare-fun b!5835463 () Bool)

(declare-fun e!3579747 () Bool)

(assert (=> b!5835463 (= e!3579747 e!3579748)))

(declare-fun c!1033874 () Bool)

(assert (=> b!5835463 (= c!1033874 (isEmpty!35721 (unfocusZipperList!1314 zl!343)))))

(declare-fun b!5835464 () Bool)

(declare-fun e!3579745 () Bool)

(assert (=> b!5835464 (= e!3579745 (isEmpty!35721 (t!377333 (unfocusZipperList!1314 zl!343))))))

(declare-fun b!5835465 () Bool)

(declare-fun isUnion!770 (Regex!15893) Bool)

(assert (=> b!5835465 (= e!3579746 (isUnion!770 lt!2303155))))

(declare-fun b!5835466 () Bool)

(assert (=> b!5835466 (= e!3579749 EmptyLang!15893)))

(declare-fun b!5835467 () Bool)

(declare-fun isEmptyLang!1340 (Regex!15893) Bool)

(assert (=> b!5835467 (= e!3579748 (isEmptyLang!1340 lt!2303155))))

(declare-fun b!5835460 () Bool)

(assert (=> b!5835460 (= e!3579750 e!3579749)))

(declare-fun c!1033873 () Bool)

(assert (=> b!5835460 (= c!1033873 ((_ is Cons!63854) (unfocusZipperList!1314 zl!343)))))

(assert (=> d!1834332 e!3579747))

(declare-fun res!2458741 () Bool)

(assert (=> d!1834332 (=> (not res!2458741) (not e!3579747))))

(assert (=> d!1834332 (= res!2458741 (validRegex!7629 lt!2303155))))

(assert (=> d!1834332 (= lt!2303155 e!3579750)))

(declare-fun c!1033871 () Bool)

(assert (=> d!1834332 (= c!1033871 e!3579745)))

(declare-fun res!2458740 () Bool)

(assert (=> d!1834332 (=> (not res!2458740) (not e!3579745))))

(assert (=> d!1834332 (= res!2458740 ((_ is Cons!63854) (unfocusZipperList!1314 zl!343)))))

(assert (=> d!1834332 (forall!14984 (unfocusZipperList!1314 zl!343) lambda!319227)))

(assert (=> d!1834332 (= (generalisedUnion!1737 (unfocusZipperList!1314 zl!343)) lt!2303155)))

(assert (= (and d!1834332 res!2458740) b!5835464))

(assert (= (and d!1834332 c!1033871) b!5835459))

(assert (= (and d!1834332 (not c!1033871)) b!5835460))

(assert (= (and b!5835460 c!1033873) b!5835458))

(assert (= (and b!5835460 (not c!1033873)) b!5835466))

(assert (= (and d!1834332 res!2458741) b!5835463))

(assert (= (and b!5835463 c!1033874) b!5835467))

(assert (= (and b!5835463 (not c!1033874)) b!5835461))

(assert (= (and b!5835461 c!1033872) b!5835462))

(assert (= (and b!5835461 (not c!1033872)) b!5835465))

(declare-fun m!6762468 () Bool)

(assert (=> b!5835467 m!6762468))

(assert (=> b!5835462 m!6762296))

(declare-fun m!6762470 () Bool)

(assert (=> b!5835462 m!6762470))

(assert (=> b!5835463 m!6762296))

(declare-fun m!6762472 () Bool)

(assert (=> b!5835463 m!6762472))

(declare-fun m!6762474 () Bool)

(assert (=> b!5835458 m!6762474))

(declare-fun m!6762476 () Bool)

(assert (=> b!5835465 m!6762476))

(assert (=> b!5835461 m!6762296))

(declare-fun m!6762478 () Bool)

(assert (=> b!5835461 m!6762478))

(assert (=> b!5835461 m!6762478))

(declare-fun m!6762480 () Bool)

(assert (=> b!5835461 m!6762480))

(declare-fun m!6762482 () Bool)

(assert (=> b!5835464 m!6762482))

(declare-fun m!6762484 () Bool)

(assert (=> d!1834332 m!6762484))

(assert (=> d!1834332 m!6762296))

(declare-fun m!6762486 () Bool)

(assert (=> d!1834332 m!6762486))

(assert (=> b!5835048 d!1834332))

(declare-fun bs!1375349 () Bool)

(declare-fun d!1834334 () Bool)

(assert (= bs!1375349 (and d!1834334 d!1834316)))

(declare-fun lambda!319230 () Int)

(assert (=> bs!1375349 (= lambda!319230 lambda!319220)))

(declare-fun bs!1375350 () Bool)

(assert (= bs!1375350 (and d!1834334 d!1834324)))

(assert (=> bs!1375350 (= lambda!319230 lambda!319223)))

(declare-fun bs!1375351 () Bool)

(assert (= bs!1375351 (and d!1834334 d!1834330)))

(assert (=> bs!1375351 (= lambda!319230 lambda!319224)))

(declare-fun bs!1375352 () Bool)

(assert (= bs!1375352 (and d!1834334 d!1834332)))

(assert (=> bs!1375352 (= lambda!319230 lambda!319227)))

(declare-fun lt!2303158 () List!63978)

(assert (=> d!1834334 (forall!14984 lt!2303158 lambda!319230)))

(declare-fun e!3579753 () List!63978)

(assert (=> d!1834334 (= lt!2303158 e!3579753)))

(declare-fun c!1033877 () Bool)

(assert (=> d!1834334 (= c!1033877 ((_ is Cons!63855) zl!343))))

(assert (=> d!1834334 (= (unfocusZipperList!1314 zl!343) lt!2303158)))

(declare-fun b!5835472 () Bool)

(assert (=> b!5835472 (= e!3579753 (Cons!63854 (generalisedConcat!1490 (exprs!5777 (h!70303 zl!343))) (unfocusZipperList!1314 (t!377334 zl!343))))))

(declare-fun b!5835473 () Bool)

(assert (=> b!5835473 (= e!3579753 Nil!63854)))

(assert (= (and d!1834334 c!1033877) b!5835472))

(assert (= (and d!1834334 (not c!1033877)) b!5835473))

(declare-fun m!6762488 () Bool)

(assert (=> d!1834334 m!6762488))

(assert (=> b!5835472 m!6762300))

(declare-fun m!6762490 () Bool)

(assert (=> b!5835472 m!6762490))

(assert (=> b!5835048 d!1834334))

(declare-fun d!1834336 () Bool)

(declare-fun e!3579756 () Bool)

(assert (=> d!1834336 e!3579756))

(declare-fun res!2458744 () Bool)

(assert (=> d!1834336 (=> (not res!2458744) (not e!3579756))))

(declare-fun lt!2303161 () List!63979)

(declare-fun noDuplicate!1762 (List!63979) Bool)

(assert (=> d!1834336 (= res!2458744 (noDuplicate!1762 lt!2303161))))

(declare-fun choose!44309 ((InoxSet Context!10554)) List!63979)

(assert (=> d!1834336 (= lt!2303161 (choose!44309 z!1189))))

(assert (=> d!1834336 (= (toList!9677 z!1189) lt!2303161)))

(declare-fun b!5835476 () Bool)

(declare-fun content!11727 (List!63979) (InoxSet Context!10554))

(assert (=> b!5835476 (= e!3579756 (= (content!11727 lt!2303161) z!1189))))

(assert (= (and d!1834336 res!2458744) b!5835476))

(declare-fun m!6762492 () Bool)

(assert (=> d!1834336 m!6762492))

(declare-fun m!6762494 () Bool)

(assert (=> d!1834336 m!6762494))

(declare-fun m!6762496 () Bool)

(assert (=> b!5835476 m!6762496))

(assert (=> b!5835049 d!1834336))

(declare-fun d!1834338 () Bool)

(assert (=> d!1834338 (= (head!12347 lt!2303122) (h!70302 lt!2303122))))

(assert (=> b!5835047 d!1834338))

(declare-fun d!1834340 () Bool)

(declare-fun lt!2303164 () Regex!15893)

(assert (=> d!1834340 (validRegex!7629 lt!2303164)))

(assert (=> d!1834340 (= lt!2303164 (generalisedUnion!1737 (unfocusZipperList!1314 zl!343)))))

(assert (=> d!1834340 (= (unfocusZipper!1635 zl!343) lt!2303164)))

(declare-fun bs!1375353 () Bool)

(assert (= bs!1375353 d!1834340))

(declare-fun m!6762498 () Bool)

(assert (=> bs!1375353 m!6762498))

(assert (=> bs!1375353 m!6762296))

(assert (=> bs!1375353 m!6762296))

(assert (=> bs!1375353 m!6762298))

(assert (=> b!5835038 d!1834340))

(declare-fun b!5835487 () Bool)

(declare-fun e!3579759 () Bool)

(assert (=> b!5835487 (= e!3579759 tp_is_empty!41039)))

(declare-fun b!5835489 () Bool)

(declare-fun tp!1613352 () Bool)

(assert (=> b!5835489 (= e!3579759 tp!1613352)))

(declare-fun b!5835490 () Bool)

(declare-fun tp!1613349 () Bool)

(declare-fun tp!1613353 () Bool)

(assert (=> b!5835490 (= e!3579759 (and tp!1613349 tp!1613353))))

(declare-fun b!5835488 () Bool)

(declare-fun tp!1613350 () Bool)

(declare-fun tp!1613351 () Bool)

(assert (=> b!5835488 (= e!3579759 (and tp!1613350 tp!1613351))))

(assert (=> b!5835036 (= tp!1613272 e!3579759)))

(assert (= (and b!5835036 ((_ is ElementMatch!15893) (reg!16222 r!7292))) b!5835487))

(assert (= (and b!5835036 ((_ is Concat!24738) (reg!16222 r!7292))) b!5835488))

(assert (= (and b!5835036 ((_ is Star!15893) (reg!16222 r!7292))) b!5835489))

(assert (= (and b!5835036 ((_ is Union!15893) (reg!16222 r!7292))) b!5835490))

(declare-fun b!5835495 () Bool)

(declare-fun e!3579762 () Bool)

(declare-fun tp!1613356 () Bool)

(assert (=> b!5835495 (= e!3579762 (and tp_is_empty!41039 tp!1613356))))

(assert (=> b!5835041 (= tp!1613277 e!3579762)))

(assert (= (and b!5835041 ((_ is Cons!63856) (t!377335 s!2326))) b!5835495))

(declare-fun b!5835496 () Bool)

(declare-fun e!3579763 () Bool)

(assert (=> b!5835496 (= e!3579763 tp_is_empty!41039)))

(declare-fun b!5835498 () Bool)

(declare-fun tp!1613360 () Bool)

(assert (=> b!5835498 (= e!3579763 tp!1613360)))

(declare-fun b!5835499 () Bool)

(declare-fun tp!1613357 () Bool)

(declare-fun tp!1613361 () Bool)

(assert (=> b!5835499 (= e!3579763 (and tp!1613357 tp!1613361))))

(declare-fun b!5835497 () Bool)

(declare-fun tp!1613358 () Bool)

(declare-fun tp!1613359 () Bool)

(assert (=> b!5835497 (= e!3579763 (and tp!1613358 tp!1613359))))

(assert (=> b!5835046 (= tp!1613274 e!3579763)))

(assert (= (and b!5835046 ((_ is ElementMatch!15893) (regOne!32298 r!7292))) b!5835496))

(assert (= (and b!5835046 ((_ is Concat!24738) (regOne!32298 r!7292))) b!5835497))

(assert (= (and b!5835046 ((_ is Star!15893) (regOne!32298 r!7292))) b!5835498))

(assert (= (and b!5835046 ((_ is Union!15893) (regOne!32298 r!7292))) b!5835499))

(declare-fun b!5835500 () Bool)

(declare-fun e!3579764 () Bool)

(assert (=> b!5835500 (= e!3579764 tp_is_empty!41039)))

(declare-fun b!5835502 () Bool)

(declare-fun tp!1613365 () Bool)

(assert (=> b!5835502 (= e!3579764 tp!1613365)))

(declare-fun b!5835503 () Bool)

(declare-fun tp!1613362 () Bool)

(declare-fun tp!1613366 () Bool)

(assert (=> b!5835503 (= e!3579764 (and tp!1613362 tp!1613366))))

(declare-fun b!5835501 () Bool)

(declare-fun tp!1613363 () Bool)

(declare-fun tp!1613364 () Bool)

(assert (=> b!5835501 (= e!3579764 (and tp!1613363 tp!1613364))))

(assert (=> b!5835046 (= tp!1613278 e!3579764)))

(assert (= (and b!5835046 ((_ is ElementMatch!15893) (regTwo!32298 r!7292))) b!5835500))

(assert (= (and b!5835046 ((_ is Concat!24738) (regTwo!32298 r!7292))) b!5835501))

(assert (= (and b!5835046 ((_ is Star!15893) (regTwo!32298 r!7292))) b!5835502))

(assert (= (and b!5835046 ((_ is Union!15893) (regTwo!32298 r!7292))) b!5835503))

(declare-fun condSetEmpty!39490 () Bool)

(assert (=> setNonEmpty!39484 (= condSetEmpty!39490 (= setRest!39484 ((as const (Array Context!10554 Bool)) false)))))

(declare-fun setRes!39490 () Bool)

(assert (=> setNonEmpty!39484 (= tp!1613275 setRes!39490)))

(declare-fun setIsEmpty!39490 () Bool)

(assert (=> setIsEmpty!39490 setRes!39490))

(declare-fun e!3579767 () Bool)

(declare-fun setNonEmpty!39490 () Bool)

(declare-fun setElem!39490 () Context!10554)

(declare-fun tp!1613371 () Bool)

(assert (=> setNonEmpty!39490 (= setRes!39490 (and tp!1613371 (inv!82979 setElem!39490) e!3579767))))

(declare-fun setRest!39490 () (InoxSet Context!10554))

(assert (=> setNonEmpty!39490 (= setRest!39484 ((_ map or) (store ((as const (Array Context!10554 Bool)) false) setElem!39490 true) setRest!39490))))

(declare-fun b!5835508 () Bool)

(declare-fun tp!1613372 () Bool)

(assert (=> b!5835508 (= e!3579767 tp!1613372)))

(assert (= (and setNonEmpty!39484 condSetEmpty!39490) setIsEmpty!39490))

(assert (= (and setNonEmpty!39484 (not condSetEmpty!39490)) setNonEmpty!39490))

(assert (= setNonEmpty!39490 b!5835508))

(declare-fun m!6762500 () Bool)

(assert (=> setNonEmpty!39490 m!6762500))

(declare-fun b!5835516 () Bool)

(declare-fun e!3579773 () Bool)

(declare-fun tp!1613377 () Bool)

(assert (=> b!5835516 (= e!3579773 tp!1613377)))

(declare-fun b!5835515 () Bool)

(declare-fun e!3579772 () Bool)

(declare-fun tp!1613378 () Bool)

(assert (=> b!5835515 (= e!3579772 (and (inv!82979 (h!70303 (t!377334 zl!343))) e!3579773 tp!1613378))))

(assert (=> b!5835035 (= tp!1613280 e!3579772)))

(assert (= b!5835515 b!5835516))

(assert (= (and b!5835035 ((_ is Cons!63855) (t!377334 zl!343))) b!5835515))

(declare-fun m!6762502 () Bool)

(assert (=> b!5835515 m!6762502))

(declare-fun b!5835521 () Bool)

(declare-fun e!3579776 () Bool)

(declare-fun tp!1613383 () Bool)

(declare-fun tp!1613384 () Bool)

(assert (=> b!5835521 (= e!3579776 (and tp!1613383 tp!1613384))))

(assert (=> b!5835034 (= tp!1613276 e!3579776)))

(assert (= (and b!5835034 ((_ is Cons!63854) (exprs!5777 setElem!39484))) b!5835521))

(declare-fun b!5835522 () Bool)

(declare-fun e!3579777 () Bool)

(assert (=> b!5835522 (= e!3579777 tp_is_empty!41039)))

(declare-fun b!5835524 () Bool)

(declare-fun tp!1613388 () Bool)

(assert (=> b!5835524 (= e!3579777 tp!1613388)))

(declare-fun b!5835525 () Bool)

(declare-fun tp!1613385 () Bool)

(declare-fun tp!1613389 () Bool)

(assert (=> b!5835525 (= e!3579777 (and tp!1613385 tp!1613389))))

(declare-fun b!5835523 () Bool)

(declare-fun tp!1613386 () Bool)

(declare-fun tp!1613387 () Bool)

(assert (=> b!5835523 (= e!3579777 (and tp!1613386 tp!1613387))))

(assert (=> b!5835033 (= tp!1613279 e!3579777)))

(assert (= (and b!5835033 ((_ is ElementMatch!15893) (regOne!32299 r!7292))) b!5835522))

(assert (= (and b!5835033 ((_ is Concat!24738) (regOne!32299 r!7292))) b!5835523))

(assert (= (and b!5835033 ((_ is Star!15893) (regOne!32299 r!7292))) b!5835524))

(assert (= (and b!5835033 ((_ is Union!15893) (regOne!32299 r!7292))) b!5835525))

(declare-fun b!5835526 () Bool)

(declare-fun e!3579778 () Bool)

(assert (=> b!5835526 (= e!3579778 tp_is_empty!41039)))

(declare-fun b!5835528 () Bool)

(declare-fun tp!1613393 () Bool)

(assert (=> b!5835528 (= e!3579778 tp!1613393)))

(declare-fun b!5835529 () Bool)

(declare-fun tp!1613390 () Bool)

(declare-fun tp!1613394 () Bool)

(assert (=> b!5835529 (= e!3579778 (and tp!1613390 tp!1613394))))

(declare-fun b!5835527 () Bool)

(declare-fun tp!1613391 () Bool)

(declare-fun tp!1613392 () Bool)

(assert (=> b!5835527 (= e!3579778 (and tp!1613391 tp!1613392))))

(assert (=> b!5835033 (= tp!1613273 e!3579778)))

(assert (= (and b!5835033 ((_ is ElementMatch!15893) (regTwo!32299 r!7292))) b!5835526))

(assert (= (and b!5835033 ((_ is Concat!24738) (regTwo!32299 r!7292))) b!5835527))

(assert (= (and b!5835033 ((_ is Star!15893) (regTwo!32299 r!7292))) b!5835528))

(assert (= (and b!5835033 ((_ is Union!15893) (regTwo!32299 r!7292))) b!5835529))

(declare-fun b!5835530 () Bool)

(declare-fun e!3579779 () Bool)

(declare-fun tp!1613395 () Bool)

(declare-fun tp!1613396 () Bool)

(assert (=> b!5835530 (= e!3579779 (and tp!1613395 tp!1613396))))

(assert (=> b!5835043 (= tp!1613271 e!3579779)))

(assert (= (and b!5835043 ((_ is Cons!63854) (exprs!5777 (h!70303 zl!343)))) b!5835530))

(check-sat (not b!5835488) (not b!5835525) (not b!5835467) (not d!1834332) (not b!5835122) (not b!5835528) (not b!5835472) (not b!5835515) (not b!5835523) (not b!5835521) (not b!5835406) (not d!1834324) (not b!5835476) (not d!1834330) (not b!5835529) (not d!1834334) (not d!1834314) (not b!5835121) (not b!5835465) (not b!5835508) (not b!5835527) (not b!5835373) (not b!5835463) (not b!5835458) (not bm!455729) (not b!5835116) (not b!5835530) (not b!5835403) (not bm!455698) (not bm!455722) (not b!5835516) (not b!5835498) (not d!1834316) (not b!5835113) (not b!5835402) (not b!5835401) tp_is_empty!41039 (not b!5835524) (not b!5835462) (not b!5835490) (not bm!455730) (not b!5835369) (not b!5835501) (not b!5835495) (not b!5835408) (not b!5835502) (not b!5835489) (not d!1834340) (not b!5835461) (not b!5835503) (not b!5835497) (not b!5835407) (not d!1834336) (not b!5835115) (not bm!455721) (not b!5835404) (not b!5835499) (not d!1834278) (not b!5835431) (not b!5835464) (not setNonEmpty!39490) (not b!5835119))
(check-sat)
