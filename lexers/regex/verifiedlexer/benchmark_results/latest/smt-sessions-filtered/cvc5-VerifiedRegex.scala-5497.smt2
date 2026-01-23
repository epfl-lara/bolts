; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277736 () Bool)

(assert start!277736)

(declare-fun b!2851759 () Bool)

(assert (=> b!2851759 true))

(assert (=> b!2851759 true))

(declare-fun e!1806874 () Bool)

(declare-fun e!1806871 () Bool)

(assert (=> b!2851759 (= e!1806874 (not e!1806871))))

(declare-fun res!1185419 () Bool)

(assert (=> b!2851759 (=> res!1185419 e!1806871)))

(declare-fun lambda!104896 () Int)

(declare-fun Exists!1274 (Int) Bool)

(assert (=> b!2851759 (= res!1185419 (not (Exists!1274 lambda!104896)))))

(assert (=> b!2851759 (Exists!1274 lambda!104896)))

(declare-datatypes ((Unit!47667 0))(
  ( (Unit!47668) )
))
(declare-fun lt!1013544 () Unit!47667)

(declare-datatypes ((C!17278 0))(
  ( (C!17279 (val!10673 Int)) )
))
(declare-datatypes ((Regex!8548 0))(
  ( (ElementMatch!8548 (c!459769 C!17278)) (Concat!13869 (regOne!17608 Regex!8548) (regTwo!17608 Regex!8548)) (EmptyExpr!8548) (Star!8548 (reg!8877 Regex!8548)) (EmptyLang!8548) (Union!8548 (regOne!17609 Regex!8548) (regTwo!17609 Regex!8548)) )
))
(declare-fun r!5723 () Regex!8548)

(declare-datatypes ((List!34109 0))(
  ( (Nil!33985) (Cons!33985 (h!39405 C!17278) (t!233140 List!34109)) )
))
(declare-fun prefix!862 () List!34109)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!322 (Regex!8548 List!34109) Unit!47667)

(assert (=> b!2851759 (= lt!1013544 (lemmaPrefixMatchThenExistsStringThatMatches!322 r!5723 prefix!862))))

(declare-fun b!2851760 () Bool)

(declare-fun e!1806876 () Bool)

(declare-datatypes ((List!34110 0))(
  ( (Nil!33986) (Cons!33986 (h!39406 Regex!8548) (t!233141 List!34110)) )
))
(declare-datatypes ((Context!5116 0))(
  ( (Context!5117 (exprs!3058 List!34110)) )
))
(declare-fun z!809 () (Set Context!5116))

(declare-fun prefixMatchZipper!280 ((Set Context!5116) List!34109) Bool)

(assert (=> b!2851760 (= e!1806876 (not (prefixMatchZipper!280 z!809 prefix!862)))))

(declare-fun b!2851761 () Bool)

(declare-fun e!1806872 () Bool)

(declare-fun tp_is_empty!14833 () Bool)

(assert (=> b!2851761 (= e!1806872 tp_is_empty!14833)))

(declare-fun b!2851762 () Bool)

(declare-fun matchR!3673 (Regex!8548 List!34109) Bool)

(declare-fun pickWitness!291 (Int) List!34109)

(assert (=> b!2851762 (= e!1806871 (matchR!3673 r!5723 (pickWitness!291 lambda!104896)))))

(declare-fun b!2851763 () Bool)

(declare-fun res!1185424 () Bool)

(declare-fun e!1806875 () Bool)

(assert (=> b!2851763 (=> (not res!1185424) (not e!1806875))))

(declare-datatypes ((List!34111 0))(
  ( (Nil!33987) (Cons!33987 (h!39407 Context!5116) (t!233142 List!34111)) )
))
(declare-fun zl!222 () List!34111)

(declare-fun unfocusZipper!220 (List!34111) Regex!8548)

(assert (=> b!2851763 (= res!1185424 (= r!5723 (unfocusZipper!220 zl!222)))))

(declare-fun b!2851764 () Bool)

(declare-fun tp!916408 () Bool)

(declare-fun tp!916401 () Bool)

(assert (=> b!2851764 (= e!1806872 (and tp!916408 tp!916401))))

(declare-fun b!2851765 () Bool)

(declare-fun res!1185425 () Bool)

(assert (=> b!2851765 (=> (not res!1185425) (not e!1806874))))

(assert (=> b!2851765 (= res!1185425 (not (prefixMatchZipper!280 z!809 prefix!862)))))

(declare-fun b!2851767 () Bool)

(assert (=> b!2851767 (= e!1806875 e!1806874)))

(declare-fun res!1185426 () Bool)

(assert (=> b!2851767 (=> (not res!1185426) (not e!1806874))))

(assert (=> b!2851767 (= res!1185426 e!1806876)))

(declare-fun res!1185422 () Bool)

(assert (=> b!2851767 (=> res!1185422 e!1806876)))

(declare-fun lt!1013545 () Bool)

(assert (=> b!2851767 (= res!1185422 lt!1013545)))

(declare-fun prefixMatch!856 (Regex!8548 List!34109) Bool)

(assert (=> b!2851767 (= lt!1013545 (prefixMatch!856 r!5723 prefix!862))))

(declare-fun b!2851768 () Bool)

(declare-fun tp!916407 () Bool)

(assert (=> b!2851768 (= e!1806872 tp!916407)))

(declare-fun tp!916403 () Bool)

(declare-fun e!1806877 () Bool)

(declare-fun b!2851769 () Bool)

(declare-fun e!1806873 () Bool)

(declare-fun inv!46008 (Context!5116) Bool)

(assert (=> b!2851769 (= e!1806877 (and (inv!46008 (h!39407 zl!222)) e!1806873 tp!916403))))

(declare-fun b!2851770 () Bool)

(declare-fun e!1806879 () Bool)

(declare-fun tp!916405 () Bool)

(assert (=> b!2851770 (= e!1806879 tp!916405)))

(declare-fun setIsEmpty!25169 () Bool)

(declare-fun setRes!25169 () Bool)

(assert (=> setIsEmpty!25169 setRes!25169))

(declare-fun b!2851771 () Bool)

(declare-fun res!1185423 () Bool)

(assert (=> b!2851771 (=> (not res!1185423) (not e!1806875))))

(declare-fun toList!1961 ((Set Context!5116)) List!34111)

(assert (=> b!2851771 (= res!1185423 (= (toList!1961 z!809) zl!222))))

(declare-fun b!2851772 () Bool)

(declare-fun res!1185420 () Bool)

(assert (=> b!2851772 (=> (not res!1185420) (not e!1806874))))

(assert (=> b!2851772 (= res!1185420 lt!1013545)))

(declare-fun b!2851766 () Bool)

(declare-fun tp!916410 () Bool)

(assert (=> b!2851766 (= e!1806873 tp!916410)))

(declare-fun res!1185421 () Bool)

(assert (=> start!277736 (=> (not res!1185421) (not e!1806875))))

(declare-fun validRegex!3418 (Regex!8548) Bool)

(assert (=> start!277736 (= res!1185421 (validRegex!3418 r!5723))))

(assert (=> start!277736 e!1806875))

(assert (=> start!277736 e!1806872))

(declare-fun condSetEmpty!25169 () Bool)

(assert (=> start!277736 (= condSetEmpty!25169 (= z!809 (as set.empty (Set Context!5116))))))

(assert (=> start!277736 setRes!25169))

(assert (=> start!277736 e!1806877))

(declare-fun e!1806878 () Bool)

(assert (=> start!277736 e!1806878))

(declare-fun b!2851773 () Bool)

(declare-fun tp!916409 () Bool)

(assert (=> b!2851773 (= e!1806878 (and tp_is_empty!14833 tp!916409))))

(declare-fun tp!916404 () Bool)

(declare-fun setNonEmpty!25169 () Bool)

(declare-fun setElem!25169 () Context!5116)

(assert (=> setNonEmpty!25169 (= setRes!25169 (and tp!916404 (inv!46008 setElem!25169) e!1806879))))

(declare-fun setRest!25169 () (Set Context!5116))

(assert (=> setNonEmpty!25169 (= z!809 (set.union (set.insert setElem!25169 (as set.empty (Set Context!5116))) setRest!25169))))

(declare-fun b!2851774 () Bool)

(declare-fun tp!916402 () Bool)

(declare-fun tp!916406 () Bool)

(assert (=> b!2851774 (= e!1806872 (and tp!916402 tp!916406))))

(assert (= (and start!277736 res!1185421) b!2851771))

(assert (= (and b!2851771 res!1185423) b!2851763))

(assert (= (and b!2851763 res!1185424) b!2851767))

(assert (= (and b!2851767 (not res!1185422)) b!2851760))

(assert (= (and b!2851767 res!1185426) b!2851772))

(assert (= (and b!2851772 res!1185420) b!2851765))

(assert (= (and b!2851765 res!1185425) b!2851759))

(assert (= (and b!2851759 (not res!1185419)) b!2851762))

(assert (= (and start!277736 (is-ElementMatch!8548 r!5723)) b!2851761))

(assert (= (and start!277736 (is-Concat!13869 r!5723)) b!2851764))

(assert (= (and start!277736 (is-Star!8548 r!5723)) b!2851768))

(assert (= (and start!277736 (is-Union!8548 r!5723)) b!2851774))

(assert (= (and start!277736 condSetEmpty!25169) setIsEmpty!25169))

(assert (= (and start!277736 (not condSetEmpty!25169)) setNonEmpty!25169))

(assert (= setNonEmpty!25169 b!2851770))

(assert (= b!2851769 b!2851766))

(assert (= (and start!277736 (is-Cons!33987 zl!222)) b!2851769))

(assert (= (and start!277736 (is-Cons!33985 prefix!862)) b!2851773))

(declare-fun m!3277217 () Bool)

(assert (=> b!2851759 m!3277217))

(assert (=> b!2851759 m!3277217))

(declare-fun m!3277219 () Bool)

(assert (=> b!2851759 m!3277219))

(declare-fun m!3277221 () Bool)

(assert (=> b!2851765 m!3277221))

(declare-fun m!3277223 () Bool)

(assert (=> b!2851763 m!3277223))

(declare-fun m!3277225 () Bool)

(assert (=> setNonEmpty!25169 m!3277225))

(declare-fun m!3277227 () Bool)

(assert (=> start!277736 m!3277227))

(declare-fun m!3277229 () Bool)

(assert (=> b!2851767 m!3277229))

(assert (=> b!2851760 m!3277221))

(declare-fun m!3277231 () Bool)

(assert (=> b!2851769 m!3277231))

(declare-fun m!3277233 () Bool)

(assert (=> b!2851771 m!3277233))

(declare-fun m!3277235 () Bool)

(assert (=> b!2851762 m!3277235))

(assert (=> b!2851762 m!3277235))

(declare-fun m!3277237 () Bool)

(assert (=> b!2851762 m!3277237))

(push 1)

(assert (not b!2851762))

(assert (not start!277736))

(assert (not b!2851773))

(assert (not b!2851768))

(assert (not b!2851763))

(assert (not b!2851769))

(assert (not b!2851765))

(assert (not b!2851760))

(assert (not b!2851771))

(assert (not setNonEmpty!25169))

(assert (not b!2851766))

(assert (not b!2851767))

(assert (not b!2851770))

(assert (not b!2851759))

(assert (not b!2851764))

(assert (not b!2851774))

(assert tp_is_empty!14833)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!826074 () Bool)

(declare-fun lt!1013554 () Regex!8548)

(assert (=> d!826074 (validRegex!3418 lt!1013554)))

(declare-fun generalisedUnion!550 (List!34110) Regex!8548)

(declare-fun unfocusZipperList!63 (List!34111) List!34110)

(assert (=> d!826074 (= lt!1013554 (generalisedUnion!550 (unfocusZipperList!63 zl!222)))))

(assert (=> d!826074 (= (unfocusZipper!220 zl!222) lt!1013554)))

(declare-fun bs!520155 () Bool)

(assert (= bs!520155 d!826074))

(declare-fun m!3277261 () Bool)

(assert (=> bs!520155 m!3277261))

(declare-fun m!3277263 () Bool)

(assert (=> bs!520155 m!3277263))

(assert (=> bs!520155 m!3277263))

(declare-fun m!3277265 () Bool)

(assert (=> bs!520155 m!3277265))

(assert (=> b!2851763 d!826074))

(declare-fun d!826078 () Bool)

(declare-fun lambda!104906 () Int)

(declare-fun forall!6957 (List!34110 Int) Bool)

(assert (=> d!826078 (= (inv!46008 (h!39407 zl!222)) (forall!6957 (exprs!3058 (h!39407 zl!222)) lambda!104906))))

(declare-fun bs!520156 () Bool)

(assert (= bs!520156 d!826078))

(declare-fun m!3277267 () Bool)

(assert (=> bs!520156 m!3277267))

(assert (=> b!2851769 d!826078))

(declare-fun d!826080 () Bool)

(declare-fun e!1806915 () Bool)

(assert (=> d!826080 e!1806915))

(declare-fun res!1185459 () Bool)

(assert (=> d!826080 (=> (not res!1185459) (not e!1806915))))

(declare-fun lt!1013557 () List!34111)

(declare-fun noDuplicate!560 (List!34111) Bool)

(assert (=> d!826080 (= res!1185459 (noDuplicate!560 lt!1013557))))

(declare-fun choose!16773 ((Set Context!5116)) List!34111)

(assert (=> d!826080 (= lt!1013557 (choose!16773 z!809))))

(assert (=> d!826080 (= (toList!1961 z!809) lt!1013557)))

(declare-fun b!2851839 () Bool)

(declare-fun content!4660 (List!34111) (Set Context!5116))

(assert (=> b!2851839 (= e!1806915 (= (content!4660 lt!1013557) z!809))))

(assert (= (and d!826080 res!1185459) b!2851839))

(declare-fun m!3277269 () Bool)

(assert (=> d!826080 m!3277269))

(declare-fun m!3277271 () Bool)

(assert (=> d!826080 m!3277271))

(declare-fun m!3277273 () Bool)

(assert (=> b!2851839 m!3277273))

(assert (=> b!2851771 d!826080))

(declare-fun d!826082 () Bool)

(declare-fun c!459773 () Bool)

(declare-fun isEmpty!18586 (List!34109) Bool)

(assert (=> d!826082 (= c!459773 (isEmpty!18586 prefix!862))))

(declare-fun e!1806918 () Bool)

(assert (=> d!826082 (= (prefixMatch!856 r!5723 prefix!862) e!1806918)))

(declare-fun b!2851844 () Bool)

(declare-fun lostCause!734 (Regex!8548) Bool)

(assert (=> b!2851844 (= e!1806918 (not (lostCause!734 r!5723)))))

(declare-fun b!2851845 () Bool)

(declare-fun derivativeStep!2259 (Regex!8548 C!17278) Regex!8548)

(declare-fun head!6263 (List!34109) C!17278)

(declare-fun tail!4488 (List!34109) List!34109)

(assert (=> b!2851845 (= e!1806918 (prefixMatch!856 (derivativeStep!2259 r!5723 (head!6263 prefix!862)) (tail!4488 prefix!862)))))

(assert (= (and d!826082 c!459773) b!2851844))

(assert (= (and d!826082 (not c!459773)) b!2851845))

(declare-fun m!3277275 () Bool)

(assert (=> d!826082 m!3277275))

(declare-fun m!3277277 () Bool)

(assert (=> b!2851844 m!3277277))

(declare-fun m!3277279 () Bool)

(assert (=> b!2851845 m!3277279))

(assert (=> b!2851845 m!3277279))

(declare-fun m!3277281 () Bool)

(assert (=> b!2851845 m!3277281))

(declare-fun m!3277283 () Bool)

(assert (=> b!2851845 m!3277283))

(assert (=> b!2851845 m!3277281))

(assert (=> b!2851845 m!3277283))

(declare-fun m!3277285 () Bool)

(assert (=> b!2851845 m!3277285))

(assert (=> b!2851767 d!826082))

(declare-fun d!826084 () Bool)

(declare-fun e!1806937 () Bool)

(assert (=> d!826084 e!1806937))

(declare-fun c!459783 () Bool)

(assert (=> d!826084 (= c!459783 (is-EmptyExpr!8548 r!5723))))

(declare-fun lt!1013560 () Bool)

(declare-fun e!1806939 () Bool)

(assert (=> d!826084 (= lt!1013560 e!1806939)))

(declare-fun c!459785 () Bool)

(assert (=> d!826084 (= c!459785 (isEmpty!18586 (pickWitness!291 lambda!104896)))))

(assert (=> d!826084 (validRegex!3418 r!5723)))

(assert (=> d!826084 (= (matchR!3673 r!5723 (pickWitness!291 lambda!104896)) lt!1013560)))

(declare-fun b!2851880 () Bool)

(declare-fun e!1806941 () Bool)

(assert (=> b!2851880 (= e!1806937 e!1806941)))

(declare-fun c!459784 () Bool)

(assert (=> b!2851880 (= c!459784 (is-EmptyLang!8548 r!5723))))

(declare-fun b!2851881 () Bool)

(declare-fun res!1185480 () Bool)

(declare-fun e!1806940 () Bool)

(assert (=> b!2851881 (=> res!1185480 e!1806940)))

(assert (=> b!2851881 (= res!1185480 (not (is-ElementMatch!8548 r!5723)))))

(assert (=> b!2851881 (= e!1806941 e!1806940)))

(declare-fun b!2851882 () Bool)

(declare-fun res!1185482 () Bool)

(declare-fun e!1806936 () Bool)

(assert (=> b!2851882 (=> (not res!1185482) (not e!1806936))))

(assert (=> b!2851882 (= res!1185482 (isEmpty!18586 (tail!4488 (pickWitness!291 lambda!104896))))))

(declare-fun b!2851883 () Bool)

(declare-fun e!1806942 () Bool)

(declare-fun e!1806938 () Bool)

(assert (=> b!2851883 (= e!1806942 e!1806938)))

(declare-fun res!1185478 () Bool)

(assert (=> b!2851883 (=> res!1185478 e!1806938)))

(declare-fun call!183699 () Bool)

(assert (=> b!2851883 (= res!1185478 call!183699)))

(declare-fun b!2851884 () Bool)

(assert (=> b!2851884 (= e!1806936 (= (head!6263 (pickWitness!291 lambda!104896)) (c!459769 r!5723)))))

(declare-fun b!2851885 () Bool)

(assert (=> b!2851885 (= e!1806939 (matchR!3673 (derivativeStep!2259 r!5723 (head!6263 (pickWitness!291 lambda!104896))) (tail!4488 (pickWitness!291 lambda!104896))))))

(declare-fun b!2851886 () Bool)

(assert (=> b!2851886 (= e!1806940 e!1806942)))

(declare-fun res!1185476 () Bool)

(assert (=> b!2851886 (=> (not res!1185476) (not e!1806942))))

(assert (=> b!2851886 (= res!1185476 (not lt!1013560))))

(declare-fun b!2851887 () Bool)

(assert (=> b!2851887 (= e!1806941 (not lt!1013560))))

(declare-fun b!2851888 () Bool)

(assert (=> b!2851888 (= e!1806938 (not (= (head!6263 (pickWitness!291 lambda!104896)) (c!459769 r!5723))))))

(declare-fun b!2851889 () Bool)

(declare-fun res!1185479 () Bool)

(assert (=> b!2851889 (=> (not res!1185479) (not e!1806936))))

(assert (=> b!2851889 (= res!1185479 (not call!183699))))

(declare-fun b!2851890 () Bool)

(declare-fun res!1185483 () Bool)

(assert (=> b!2851890 (=> res!1185483 e!1806938)))

(assert (=> b!2851890 (= res!1185483 (not (isEmpty!18586 (tail!4488 (pickWitness!291 lambda!104896)))))))

(declare-fun bm!183694 () Bool)

(assert (=> bm!183694 (= call!183699 (isEmpty!18586 (pickWitness!291 lambda!104896)))))

(declare-fun b!2851891 () Bool)

(declare-fun nullable!2636 (Regex!8548) Bool)

(assert (=> b!2851891 (= e!1806939 (nullable!2636 r!5723))))

(declare-fun b!2851892 () Bool)

(assert (=> b!2851892 (= e!1806937 (= lt!1013560 call!183699))))

(declare-fun b!2851893 () Bool)

(declare-fun res!1185477 () Bool)

(assert (=> b!2851893 (=> res!1185477 e!1806940)))

(assert (=> b!2851893 (= res!1185477 e!1806936)))

(declare-fun res!1185481 () Bool)

(assert (=> b!2851893 (=> (not res!1185481) (not e!1806936))))

(assert (=> b!2851893 (= res!1185481 lt!1013560)))

(assert (= (and d!826084 c!459785) b!2851891))

(assert (= (and d!826084 (not c!459785)) b!2851885))

(assert (= (and d!826084 c!459783) b!2851892))

(assert (= (and d!826084 (not c!459783)) b!2851880))

(assert (= (and b!2851880 c!459784) b!2851887))

(assert (= (and b!2851880 (not c!459784)) b!2851881))

(assert (= (and b!2851881 (not res!1185480)) b!2851893))

(assert (= (and b!2851893 res!1185481) b!2851889))

(assert (= (and b!2851889 res!1185479) b!2851882))

(assert (= (and b!2851882 res!1185482) b!2851884))

(assert (= (and b!2851893 (not res!1185477)) b!2851886))

(assert (= (and b!2851886 res!1185476) b!2851883))

(assert (= (and b!2851883 (not res!1185478)) b!2851890))

(assert (= (and b!2851890 (not res!1185483)) b!2851888))

(assert (= (or b!2851892 b!2851883 b!2851889) bm!183694))

(declare-fun m!3277299 () Bool)

(assert (=> b!2851891 m!3277299))

(assert (=> b!2851882 m!3277235))

(declare-fun m!3277301 () Bool)

(assert (=> b!2851882 m!3277301))

(assert (=> b!2851882 m!3277301))

(declare-fun m!3277303 () Bool)

(assert (=> b!2851882 m!3277303))

(assert (=> bm!183694 m!3277235))

(declare-fun m!3277305 () Bool)

(assert (=> bm!183694 m!3277305))

(assert (=> b!2851888 m!3277235))

(declare-fun m!3277307 () Bool)

(assert (=> b!2851888 m!3277307))

(assert (=> b!2851885 m!3277235))

(assert (=> b!2851885 m!3277307))

(assert (=> b!2851885 m!3277307))

(declare-fun m!3277309 () Bool)

(assert (=> b!2851885 m!3277309))

(assert (=> b!2851885 m!3277235))

(assert (=> b!2851885 m!3277301))

(assert (=> b!2851885 m!3277309))

(assert (=> b!2851885 m!3277301))

(declare-fun m!3277311 () Bool)

(assert (=> b!2851885 m!3277311))

(assert (=> b!2851890 m!3277235))

(assert (=> b!2851890 m!3277301))

(assert (=> b!2851890 m!3277301))

(assert (=> b!2851890 m!3277303))

(assert (=> d!826084 m!3277235))

(assert (=> d!826084 m!3277305))

(assert (=> d!826084 m!3277227))

(assert (=> b!2851884 m!3277235))

(assert (=> b!2851884 m!3277307))

(assert (=> b!2851762 d!826084))

(declare-fun d!826088 () Bool)

(declare-fun lt!1013563 () List!34109)

(declare-fun dynLambda!14226 (Int List!34109) Bool)

(assert (=> d!826088 (dynLambda!14226 lambda!104896 lt!1013563)))

(declare-fun choose!16774 (Int) List!34109)

(assert (=> d!826088 (= lt!1013563 (choose!16774 lambda!104896))))

(assert (=> d!826088 (Exists!1274 lambda!104896)))

(assert (=> d!826088 (= (pickWitness!291 lambda!104896) lt!1013563)))

(declare-fun b_lambda!85659 () Bool)

(assert (=> (not b_lambda!85659) (not d!826088)))

(declare-fun bs!520157 () Bool)

(assert (= bs!520157 d!826088))

(declare-fun m!3277313 () Bool)

(assert (=> bs!520157 m!3277313))

(declare-fun m!3277315 () Bool)

(assert (=> bs!520157 m!3277315))

(assert (=> bs!520157 m!3277217))

(assert (=> b!2851762 d!826088))

(declare-fun b!2851918 () Bool)

(declare-fun e!1806962 () Bool)

(declare-fun e!1806965 () Bool)

(assert (=> b!2851918 (= e!1806962 e!1806965)))

(declare-fun c!459793 () Bool)

(assert (=> b!2851918 (= c!459793 (is-Union!8548 r!5723))))

(declare-fun b!2851919 () Bool)

(declare-fun e!1806966 () Bool)

(declare-fun e!1806961 () Bool)

(assert (=> b!2851919 (= e!1806966 e!1806961)))

(declare-fun res!1185497 () Bool)

(assert (=> b!2851919 (=> (not res!1185497) (not e!1806961))))

(declare-fun call!183708 () Bool)

(assert (=> b!2851919 (= res!1185497 call!183708)))

(declare-fun bm!183701 () Bool)

(declare-fun call!183707 () Bool)

(declare-fun call!183706 () Bool)

(assert (=> bm!183701 (= call!183707 call!183706)))

(declare-fun b!2851920 () Bool)

(declare-fun e!1806963 () Bool)

(assert (=> b!2851920 (= e!1806963 e!1806962)))

(declare-fun c!459794 () Bool)

(assert (=> b!2851920 (= c!459794 (is-Star!8548 r!5723))))

(declare-fun b!2851921 () Bool)

(declare-fun e!1806964 () Bool)

(assert (=> b!2851921 (= e!1806964 call!183707)))

(declare-fun b!2851922 () Bool)

(assert (=> b!2851922 (= e!1806961 call!183707)))

(declare-fun b!2851923 () Bool)

(declare-fun res!1185496 () Bool)

(assert (=> b!2851923 (=> res!1185496 e!1806966)))

(assert (=> b!2851923 (= res!1185496 (not (is-Concat!13869 r!5723)))))

(assert (=> b!2851923 (= e!1806965 e!1806966)))

(declare-fun b!2851925 () Bool)

(declare-fun e!1806960 () Bool)

(assert (=> b!2851925 (= e!1806962 e!1806960)))

(declare-fun res!1185495 () Bool)

(assert (=> b!2851925 (= res!1185495 (not (nullable!2636 (reg!8877 r!5723))))))

(assert (=> b!2851925 (=> (not res!1185495) (not e!1806960))))

(declare-fun bm!183702 () Bool)

(assert (=> bm!183702 (= call!183706 (validRegex!3418 (ite c!459794 (reg!8877 r!5723) (ite c!459793 (regTwo!17609 r!5723) (regTwo!17608 r!5723)))))))

(declare-fun bm!183703 () Bool)

(assert (=> bm!183703 (= call!183708 (validRegex!3418 (ite c!459793 (regOne!17609 r!5723) (regOne!17608 r!5723))))))

(declare-fun b!2851926 () Bool)

(assert (=> b!2851926 (= e!1806960 call!183706)))

(declare-fun b!2851924 () Bool)

(declare-fun res!1185498 () Bool)

(assert (=> b!2851924 (=> (not res!1185498) (not e!1806964))))

(assert (=> b!2851924 (= res!1185498 call!183708)))

(assert (=> b!2851924 (= e!1806965 e!1806964)))

(declare-fun d!826090 () Bool)

(declare-fun res!1185494 () Bool)

(assert (=> d!826090 (=> res!1185494 e!1806963)))

(assert (=> d!826090 (= res!1185494 (is-ElementMatch!8548 r!5723))))

(assert (=> d!826090 (= (validRegex!3418 r!5723) e!1806963)))

(assert (= (and d!826090 (not res!1185494)) b!2851920))

(assert (= (and b!2851920 c!459794) b!2851925))

(assert (= (and b!2851920 (not c!459794)) b!2851918))

(assert (= (and b!2851925 res!1185495) b!2851926))

(assert (= (and b!2851918 c!459793) b!2851924))

(assert (= (and b!2851918 (not c!459793)) b!2851923))

(assert (= (and b!2851924 res!1185498) b!2851921))

(assert (= (and b!2851923 (not res!1185496)) b!2851919))

(assert (= (and b!2851919 res!1185497) b!2851922))

(assert (= (or b!2851924 b!2851919) bm!183703))

(assert (= (or b!2851921 b!2851922) bm!183701))

(assert (= (or b!2851926 bm!183701) bm!183702))

(declare-fun m!3277323 () Bool)

(assert (=> b!2851925 m!3277323))

(declare-fun m!3277325 () Bool)

(assert (=> bm!183702 m!3277325))

(declare-fun m!3277327 () Bool)

(assert (=> bm!183703 m!3277327))

(assert (=> start!277736 d!826090))

(declare-fun d!826094 () Bool)

(declare-fun c!459801 () Bool)

(assert (=> d!826094 (= c!459801 (isEmpty!18586 prefix!862))))

(declare-fun e!1806983 () Bool)

(assert (=> d!826094 (= (prefixMatchZipper!280 z!809 prefix!862) e!1806983)))

(declare-fun b!2851949 () Bool)

(declare-fun lostCauseZipper!532 ((Set Context!5116)) Bool)

(assert (=> b!2851949 (= e!1806983 (not (lostCauseZipper!532 z!809)))))

(declare-fun b!2851950 () Bool)

(declare-fun derivationStepZipper!416 ((Set Context!5116) C!17278) (Set Context!5116))

(assert (=> b!2851950 (= e!1806983 (prefixMatchZipper!280 (derivationStepZipper!416 z!809 (head!6263 prefix!862)) (tail!4488 prefix!862)))))

(assert (= (and d!826094 c!459801) b!2851949))

(assert (= (and d!826094 (not c!459801)) b!2851950))

(assert (=> d!826094 m!3277275))

(declare-fun m!3277329 () Bool)

(assert (=> b!2851949 m!3277329))

(assert (=> b!2851950 m!3277279))

(assert (=> b!2851950 m!3277279))

(declare-fun m!3277331 () Bool)

(assert (=> b!2851950 m!3277331))

(assert (=> b!2851950 m!3277283))

(assert (=> b!2851950 m!3277331))

(assert (=> b!2851950 m!3277283))

(declare-fun m!3277333 () Bool)

(assert (=> b!2851950 m!3277333))

(assert (=> b!2851760 d!826094))

(declare-fun bs!520158 () Bool)

(declare-fun d!826096 () Bool)

(assert (= bs!520158 (and d!826096 d!826078)))

(declare-fun lambda!104907 () Int)

(assert (=> bs!520158 (= lambda!104907 lambda!104906)))

(assert (=> d!826096 (= (inv!46008 setElem!25169) (forall!6957 (exprs!3058 setElem!25169) lambda!104907))))

(declare-fun bs!520159 () Bool)

(assert (= bs!520159 d!826096))

(declare-fun m!3277335 () Bool)

(assert (=> bs!520159 m!3277335))

(assert (=> setNonEmpty!25169 d!826096))

(declare-fun d!826098 () Bool)

(declare-fun choose!16775 (Int) Bool)

(assert (=> d!826098 (= (Exists!1274 lambda!104896) (choose!16775 lambda!104896))))

(declare-fun bs!520160 () Bool)

(assert (= bs!520160 d!826098))

(declare-fun m!3277337 () Bool)

(assert (=> bs!520160 m!3277337))

(assert (=> b!2851759 d!826098))

(declare-fun bs!520161 () Bool)

(declare-fun d!826100 () Bool)

(assert (= bs!520161 (and d!826100 b!2851759)))

(declare-fun lambda!104910 () Int)

(assert (=> bs!520161 (= lambda!104910 lambda!104896)))

(assert (=> d!826100 true))

(assert (=> d!826100 true))

(assert (=> d!826100 (Exists!1274 lambda!104910)))

(declare-fun lt!1013566 () Unit!47667)

(declare-fun choose!16776 (Regex!8548 List!34109) Unit!47667)

(assert (=> d!826100 (= lt!1013566 (choose!16776 r!5723 prefix!862))))

(assert (=> d!826100 (validRegex!3418 r!5723)))

(assert (=> d!826100 (= (lemmaPrefixMatchThenExistsStringThatMatches!322 r!5723 prefix!862) lt!1013566)))

(declare-fun bs!520162 () Bool)

(assert (= bs!520162 d!826100))

(declare-fun m!3277339 () Bool)

(assert (=> bs!520162 m!3277339))

(declare-fun m!3277341 () Bool)

(assert (=> bs!520162 m!3277341))

(assert (=> bs!520162 m!3277227))

(assert (=> b!2851759 d!826100))

(assert (=> b!2851765 d!826094))

(declare-fun b!2851975 () Bool)

(declare-fun e!1806995 () Bool)

(declare-fun tp!916452 () Bool)

(declare-fun tp!916454 () Bool)

(assert (=> b!2851975 (= e!1806995 (and tp!916452 tp!916454))))

(assert (=> b!2851768 (= tp!916407 e!1806995)))

(declare-fun b!2851973 () Bool)

(declare-fun tp!916453 () Bool)

(declare-fun tp!916455 () Bool)

(assert (=> b!2851973 (= e!1806995 (and tp!916453 tp!916455))))

(declare-fun b!2851972 () Bool)

(assert (=> b!2851972 (= e!1806995 tp_is_empty!14833)))

(declare-fun b!2851974 () Bool)

(declare-fun tp!916451 () Bool)

(assert (=> b!2851974 (= e!1806995 tp!916451)))

(assert (= (and b!2851768 (is-ElementMatch!8548 (reg!8877 r!5723))) b!2851972))

(assert (= (and b!2851768 (is-Concat!13869 (reg!8877 r!5723))) b!2851973))

(assert (= (and b!2851768 (is-Star!8548 (reg!8877 r!5723))) b!2851974))

(assert (= (and b!2851768 (is-Union!8548 (reg!8877 r!5723))) b!2851975))

(declare-fun b!2851980 () Bool)

(declare-fun e!1806998 () Bool)

(declare-fun tp!916458 () Bool)

(assert (=> b!2851980 (= e!1806998 (and tp_is_empty!14833 tp!916458))))

(assert (=> b!2851773 (= tp!916409 e!1806998)))

(assert (= (and b!2851773 (is-Cons!33985 (t!233140 prefix!862))) b!2851980))

(declare-fun b!2851988 () Bool)

(declare-fun e!1807004 () Bool)

(declare-fun tp!916463 () Bool)

(assert (=> b!2851988 (= e!1807004 tp!916463)))

(declare-fun tp!916464 () Bool)

(declare-fun b!2851987 () Bool)

(declare-fun e!1807003 () Bool)

(assert (=> b!2851987 (= e!1807003 (and (inv!46008 (h!39407 (t!233142 zl!222))) e!1807004 tp!916464))))

(assert (=> b!2851769 (= tp!916403 e!1807003)))

(assert (= b!2851987 b!2851988))

(assert (= (and b!2851769 (is-Cons!33987 (t!233142 zl!222))) b!2851987))

(declare-fun m!3277345 () Bool)

(assert (=> b!2851987 m!3277345))

(declare-fun b!2851992 () Bool)

(declare-fun e!1807005 () Bool)

(declare-fun tp!916466 () Bool)

(declare-fun tp!916468 () Bool)

(assert (=> b!2851992 (= e!1807005 (and tp!916466 tp!916468))))

(assert (=> b!2851774 (= tp!916402 e!1807005)))

(declare-fun b!2851990 () Bool)

(declare-fun tp!916467 () Bool)

(declare-fun tp!916469 () Bool)

(assert (=> b!2851990 (= e!1807005 (and tp!916467 tp!916469))))

(declare-fun b!2851989 () Bool)

(assert (=> b!2851989 (= e!1807005 tp_is_empty!14833)))

(declare-fun b!2851991 () Bool)

(declare-fun tp!916465 () Bool)

(assert (=> b!2851991 (= e!1807005 tp!916465)))

(assert (= (and b!2851774 (is-ElementMatch!8548 (regOne!17609 r!5723))) b!2851989))

(assert (= (and b!2851774 (is-Concat!13869 (regOne!17609 r!5723))) b!2851990))

(assert (= (and b!2851774 (is-Star!8548 (regOne!17609 r!5723))) b!2851991))

(assert (= (and b!2851774 (is-Union!8548 (regOne!17609 r!5723))) b!2851992))

(declare-fun b!2851996 () Bool)

(declare-fun e!1807006 () Bool)

(declare-fun tp!916471 () Bool)

(declare-fun tp!916473 () Bool)

(assert (=> b!2851996 (= e!1807006 (and tp!916471 tp!916473))))

(assert (=> b!2851774 (= tp!916406 e!1807006)))

(declare-fun b!2851994 () Bool)

(declare-fun tp!916472 () Bool)

(declare-fun tp!916474 () Bool)

(assert (=> b!2851994 (= e!1807006 (and tp!916472 tp!916474))))

(declare-fun b!2851993 () Bool)

(assert (=> b!2851993 (= e!1807006 tp_is_empty!14833)))

(declare-fun b!2851995 () Bool)

(declare-fun tp!916470 () Bool)

(assert (=> b!2851995 (= e!1807006 tp!916470)))

(assert (= (and b!2851774 (is-ElementMatch!8548 (regTwo!17609 r!5723))) b!2851993))

(assert (= (and b!2851774 (is-Concat!13869 (regTwo!17609 r!5723))) b!2851994))

(assert (= (and b!2851774 (is-Star!8548 (regTwo!17609 r!5723))) b!2851995))

(assert (= (and b!2851774 (is-Union!8548 (regTwo!17609 r!5723))) b!2851996))

(declare-fun b!2852001 () Bool)

(declare-fun e!1807009 () Bool)

(declare-fun tp!916479 () Bool)

(declare-fun tp!916480 () Bool)

(assert (=> b!2852001 (= e!1807009 (and tp!916479 tp!916480))))

(assert (=> b!2851766 (= tp!916410 e!1807009)))

(assert (= (and b!2851766 (is-Cons!33986 (exprs!3058 (h!39407 zl!222)))) b!2852001))

(declare-fun b!2852005 () Bool)

(declare-fun e!1807010 () Bool)

(declare-fun tp!916482 () Bool)

(declare-fun tp!916484 () Bool)

(assert (=> b!2852005 (= e!1807010 (and tp!916482 tp!916484))))

(assert (=> b!2851764 (= tp!916408 e!1807010)))

(declare-fun b!2852003 () Bool)

(declare-fun tp!916483 () Bool)

(declare-fun tp!916485 () Bool)

(assert (=> b!2852003 (= e!1807010 (and tp!916483 tp!916485))))

(declare-fun b!2852002 () Bool)

(assert (=> b!2852002 (= e!1807010 tp_is_empty!14833)))

(declare-fun b!2852004 () Bool)

(declare-fun tp!916481 () Bool)

(assert (=> b!2852004 (= e!1807010 tp!916481)))

(assert (= (and b!2851764 (is-ElementMatch!8548 (regOne!17608 r!5723))) b!2852002))

(assert (= (and b!2851764 (is-Concat!13869 (regOne!17608 r!5723))) b!2852003))

(assert (= (and b!2851764 (is-Star!8548 (regOne!17608 r!5723))) b!2852004))

(assert (= (and b!2851764 (is-Union!8548 (regOne!17608 r!5723))) b!2852005))

(declare-fun b!2852009 () Bool)

(declare-fun e!1807011 () Bool)

(declare-fun tp!916487 () Bool)

(declare-fun tp!916489 () Bool)

(assert (=> b!2852009 (= e!1807011 (and tp!916487 tp!916489))))

(assert (=> b!2851764 (= tp!916401 e!1807011)))

(declare-fun b!2852007 () Bool)

(declare-fun tp!916488 () Bool)

(declare-fun tp!916490 () Bool)

(assert (=> b!2852007 (= e!1807011 (and tp!916488 tp!916490))))

(declare-fun b!2852006 () Bool)

(assert (=> b!2852006 (= e!1807011 tp_is_empty!14833)))

(declare-fun b!2852008 () Bool)

(declare-fun tp!916486 () Bool)

(assert (=> b!2852008 (= e!1807011 tp!916486)))

(assert (= (and b!2851764 (is-ElementMatch!8548 (regTwo!17608 r!5723))) b!2852006))

(assert (= (and b!2851764 (is-Concat!13869 (regTwo!17608 r!5723))) b!2852007))

(assert (= (and b!2851764 (is-Star!8548 (regTwo!17608 r!5723))) b!2852008))

(assert (= (and b!2851764 (is-Union!8548 (regTwo!17608 r!5723))) b!2852009))

(declare-fun condSetEmpty!25175 () Bool)

(assert (=> setNonEmpty!25169 (= condSetEmpty!25175 (= setRest!25169 (as set.empty (Set Context!5116))))))

(declare-fun setRes!25175 () Bool)

(assert (=> setNonEmpty!25169 (= tp!916404 setRes!25175)))

(declare-fun setIsEmpty!25175 () Bool)

(assert (=> setIsEmpty!25175 setRes!25175))

(declare-fun tp!916496 () Bool)

(declare-fun setElem!25175 () Context!5116)

(declare-fun e!1807014 () Bool)

(declare-fun setNonEmpty!25175 () Bool)

(assert (=> setNonEmpty!25175 (= setRes!25175 (and tp!916496 (inv!46008 setElem!25175) e!1807014))))

(declare-fun setRest!25175 () (Set Context!5116))

(assert (=> setNonEmpty!25175 (= setRest!25169 (set.union (set.insert setElem!25175 (as set.empty (Set Context!5116))) setRest!25175))))

(declare-fun b!2852014 () Bool)

(declare-fun tp!916495 () Bool)

(assert (=> b!2852014 (= e!1807014 tp!916495)))

(assert (= (and setNonEmpty!25169 condSetEmpty!25175) setIsEmpty!25175))

(assert (= (and setNonEmpty!25169 (not condSetEmpty!25175)) setNonEmpty!25175))

(assert (= setNonEmpty!25175 b!2852014))

(declare-fun m!3277351 () Bool)

(assert (=> setNonEmpty!25175 m!3277351))

(declare-fun b!2852015 () Bool)

(declare-fun e!1807015 () Bool)

(declare-fun tp!916497 () Bool)

(declare-fun tp!916498 () Bool)

(assert (=> b!2852015 (= e!1807015 (and tp!916497 tp!916498))))

(assert (=> b!2851770 (= tp!916405 e!1807015)))

(assert (= (and b!2851770 (is-Cons!33986 (exprs!3058 setElem!25169))) b!2852015))

(declare-fun b_lambda!85661 () Bool)

(assert (= b_lambda!85659 (or b!2851759 b_lambda!85661)))

(declare-fun bs!520163 () Bool)

(declare-fun d!826104 () Bool)

(assert (= bs!520163 (and d!826104 b!2851759)))

(declare-fun res!1185516 () Bool)

(declare-fun e!1807016 () Bool)

(assert (=> bs!520163 (=> (not res!1185516) (not e!1807016))))

(assert (=> bs!520163 (= res!1185516 (matchR!3673 r!5723 lt!1013563))))

(assert (=> bs!520163 (= (dynLambda!14226 lambda!104896 lt!1013563) e!1807016)))

(declare-fun b!2852016 () Bool)

(declare-fun isPrefix!2655 (List!34109 List!34109) Bool)

(assert (=> b!2852016 (= e!1807016 (isPrefix!2655 prefix!862 lt!1013563))))

(assert (= (and bs!520163 res!1185516) b!2852016))

(declare-fun m!3277353 () Bool)

(assert (=> bs!520163 m!3277353))

(declare-fun m!3277355 () Bool)

(assert (=> b!2852016 m!3277355))

(assert (=> d!826088 d!826104))

(push 1)

(assert (not b!2851845))

(assert (not b!2852007))

(assert (not b!2852004))

(assert (not b!2851925))

(assert (not bm!183694))

(assert (not b!2851991))

(assert (not d!826082))

(assert (not b!2851994))

(assert (not b!2851949))

(assert (not b!2852009))

(assert (not d!826096))

(assert (not d!826084))

(assert (not d!826098))

(assert tp_is_empty!14833)

(assert (not b!2851973))

(assert (not b!2852003))

(assert (not b!2852001))

(assert (not d!826080))

(assert (not b!2851980))

(assert (not bm!183703))

(assert (not b!2851844))

(assert (not b_lambda!85661))

(assert (not b!2852014))

(assert (not b!2851995))

(assert (not d!826078))

(assert (not bs!520163))

(assert (not b!2851888))

(assert (not b!2851987))

(assert (not b!2851990))

(assert (not b!2851884))

(assert (not b!2851975))

(assert (not d!826088))

(assert (not d!826100))

(assert (not b!2851992))

(assert (not b!2852008))

(assert (not b!2852016))

(assert (not bm!183702))

(assert (not b!2851839))

(assert (not b!2852015))

(assert (not b!2851890))

(assert (not d!826074))

(assert (not b!2851885))

(assert (not d!826094))

(assert (not setNonEmpty!25175))

(assert (not b!2851891))

(assert (not b!2852005))

(assert (not b!2851996))

(assert (not b!2851974))

(assert (not b!2851988))

(assert (not b!2851882))

(assert (not b!2851950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

