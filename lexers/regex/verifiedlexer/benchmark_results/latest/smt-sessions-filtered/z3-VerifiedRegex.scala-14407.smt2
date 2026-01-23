; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750844 () Bool)

(assert start!750844)

(declare-fun b!7960197 () Bool)

(declare-fun e!4694486 () Bool)

(declare-fun e!4694490 () Bool)

(assert (=> b!7960197 (= e!4694486 (not e!4694490))))

(declare-fun res!3155103 () Bool)

(assert (=> b!7960197 (=> res!3155103 e!4694490)))

(declare-fun lt!2703002 () Int)

(declare-fun lt!2702998 () Int)

(assert (=> b!7960197 (= res!3155103 (>= lt!2703002 lt!2702998))))

(declare-datatypes ((Unit!170010 0))(
  ( (Unit!170011) )
))
(declare-fun lt!2702996 () Unit!170010)

(declare-fun e!4694485 () Unit!170010)

(assert (=> b!7960197 (= lt!2702996 e!4694485)))

(declare-fun c!1461831 () Bool)

(assert (=> b!7960197 (= c!1461831 (= lt!2703002 lt!2702998))))

(assert (=> b!7960197 (<= lt!2703002 lt!2702998)))

(declare-fun lt!2702999 () Unit!170010)

(declare-datatypes ((C!43328 0))(
  ( (C!43329 (val!32212 Int)) )
))
(declare-datatypes ((List!74724 0))(
  ( (Nil!74600) (Cons!74600 (h!81048 C!43328) (t!390467 List!74724)) )
))
(declare-fun testedP!447 () List!74724)

(declare-fun input!7927 () List!74724)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1112 (List!74724 List!74724) Unit!170010)

(assert (=> b!7960197 (= lt!2702999 (lemmaIsPrefixThenSmallerEqSize!1112 testedP!447 input!7927))))

(declare-fun b!7960198 () Bool)

(declare-fun e!4694491 () Bool)

(declare-fun tp!2371571 () Bool)

(assert (=> b!7960198 (= e!4694491 tp!2371571)))

(declare-fun b!7960199 () Bool)

(declare-fun res!3155099 () Bool)

(assert (=> b!7960199 (=> (not res!3155099) (not e!4694486))))

(assert (=> b!7960199 (= res!3155099 (not (= testedP!447 input!7927)))))

(declare-fun b!7960200 () Bool)

(declare-fun e!4694483 () Bool)

(declare-fun tp!2371572 () Bool)

(declare-fun tp!2371567 () Bool)

(assert (=> b!7960200 (= e!4694483 (and tp!2371572 tp!2371567))))

(declare-fun b!7960201 () Bool)

(declare-fun e!4694484 () Bool)

(assert (=> b!7960201 (= e!4694490 e!4694484)))

(declare-fun res!3155102 () Bool)

(assert (=> b!7960201 (=> res!3155102 e!4694484)))

(declare-datatypes ((Regex!21495 0))(
  ( (ElementMatch!21495 (c!1461832 C!43328)) (Concat!30494 (regOne!43502 Regex!21495) (regTwo!43502 Regex!21495)) (EmptyExpr!21495) (Star!21495 (reg!21824 Regex!21495)) (EmptyLang!21495) (Union!21495 (regOne!43503 Regex!21495) (regTwo!43503 Regex!21495)) )
))
(declare-fun r!24602 () Regex!21495)

(declare-fun nullable!9596 (Regex!21495) Bool)

(assert (=> b!7960201 (= res!3155102 (not (nullable!9596 r!24602)))))

(declare-fun lt!2703005 () List!74724)

(declare-fun isPrefix!6595 (List!74724 List!74724) Bool)

(assert (=> b!7960201 (isPrefix!6595 lt!2703005 input!7927)))

(declare-fun lt!2703003 () Unit!170010)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1322 (List!74724 List!74724) Unit!170010)

(assert (=> b!7960201 (= lt!2703003 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 testedP!447 input!7927))))

(declare-fun lt!2703001 () C!43328)

(declare-fun ++!18365 (List!74724 List!74724) List!74724)

(assert (=> b!7960201 (= lt!2703005 (++!18365 testedP!447 (Cons!74600 lt!2703001 Nil!74600)))))

(declare-fun lt!2703000 () List!74724)

(declare-fun head!16247 (List!74724) C!43328)

(assert (=> b!7960201 (= lt!2703001 (head!16247 lt!2703000))))

(declare-fun b!7960202 () Bool)

(declare-fun tp_is_empty!53533 () Bool)

(assert (=> b!7960202 (= e!4694491 tp_is_empty!53533)))

(declare-fun b!7960203 () Bool)

(declare-fun res!3155100 () Bool)

(declare-fun e!4694488 () Bool)

(assert (=> b!7960203 (=> (not res!3155100) (not e!4694488))))

(declare-fun baseR!116 () Regex!21495)

(declare-fun derivative!681 (Regex!21495 List!74724) Regex!21495)

(assert (=> b!7960203 (= res!3155100 (= (derivative!681 baseR!116 testedP!447) r!24602))))

(declare-fun b!7960204 () Bool)

(declare-fun tp!2371569 () Bool)

(declare-fun tp!2371570 () Bool)

(assert (=> b!7960204 (= e!4694491 (and tp!2371569 tp!2371570))))

(declare-fun res!3155101 () Bool)

(assert (=> start!750844 (=> (not res!3155101) (not e!4694488))))

(declare-fun validRegex!11799 (Regex!21495) Bool)

(assert (=> start!750844 (= res!3155101 (validRegex!11799 baseR!116))))

(assert (=> start!750844 e!4694488))

(assert (=> start!750844 e!4694483))

(declare-fun e!4694489 () Bool)

(assert (=> start!750844 e!4694489))

(declare-fun e!4694487 () Bool)

(assert (=> start!750844 e!4694487))

(assert (=> start!750844 e!4694491))

(declare-fun b!7960205 () Bool)

(declare-fun Unit!170012 () Unit!170010)

(assert (=> b!7960205 (= e!4694485 Unit!170012)))

(declare-fun lt!2703004 () Unit!170010)

(declare-fun lemmaIsPrefixRefl!4063 (List!74724 List!74724) Unit!170010)

(assert (=> b!7960205 (= lt!2703004 (lemmaIsPrefixRefl!4063 input!7927 input!7927))))

(assert (=> b!7960205 (isPrefix!6595 input!7927 input!7927)))

(declare-fun lt!2702997 () Unit!170010)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1643 (List!74724 List!74724 List!74724) Unit!170010)

(assert (=> b!7960205 (= lt!2702997 (lemmaIsPrefixSameLengthThenSameList!1643 input!7927 testedP!447 input!7927))))

(assert (=> b!7960205 false))

(declare-fun b!7960206 () Bool)

(declare-fun tp!2371565 () Bool)

(assert (=> b!7960206 (= e!4694487 (and tp_is_empty!53533 tp!2371565))))

(declare-fun b!7960207 () Bool)

(assert (=> b!7960207 (= e!4694484 (not (= lt!2703000 Nil!74600)))))

(declare-fun b!7960208 () Bool)

(declare-fun Unit!170013 () Unit!170010)

(assert (=> b!7960208 (= e!4694485 Unit!170013)))

(declare-fun b!7960209 () Bool)

(declare-fun res!3155097 () Bool)

(assert (=> b!7960209 (=> res!3155097 e!4694484)))

(declare-fun isEmpty!42901 (List!74724) Bool)

(declare-datatypes ((tuple2!70652 0))(
  ( (tuple2!70653 (_1!38629 List!74724) (_2!38629 List!74724)) )
))
(declare-fun findLongestMatchInner!2276 (Regex!21495 List!74724 Int List!74724 List!74724 Int) tuple2!70652)

(declare-fun derivativeStep!6523 (Regex!21495 C!43328) Regex!21495)

(declare-fun tail!15784 (List!74724) List!74724)

(assert (=> b!7960209 (= res!3155097 (isEmpty!42901 (_1!38629 (findLongestMatchInner!2276 (derivativeStep!6523 r!24602 lt!2703001) lt!2703005 (+ 1 lt!2703002) (tail!15784 lt!2703000) input!7927 lt!2702998))))))

(declare-fun b!7960210 () Bool)

(assert (=> b!7960210 (= e!4694488 e!4694486)))

(declare-fun res!3155098 () Bool)

(assert (=> b!7960210 (=> (not res!3155098) (not e!4694486))))

(assert (=> b!7960210 (= res!3155098 (not (isEmpty!42901 (_1!38629 (findLongestMatchInner!2276 r!24602 testedP!447 lt!2703002 lt!2703000 input!7927 lt!2702998)))))))

(declare-fun size!43431 (List!74724) Int)

(assert (=> b!7960210 (= lt!2702998 (size!43431 input!7927))))

(declare-fun getSuffix!3798 (List!74724 List!74724) List!74724)

(assert (=> b!7960210 (= lt!2703000 (getSuffix!3798 input!7927 testedP!447))))

(assert (=> b!7960210 (= lt!2703002 (size!43431 testedP!447))))

(declare-fun b!7960211 () Bool)

(declare-fun tp!2371566 () Bool)

(assert (=> b!7960211 (= e!4694483 tp!2371566)))

(declare-fun b!7960212 () Bool)

(declare-fun tp!2371574 () Bool)

(declare-fun tp!2371573 () Bool)

(assert (=> b!7960212 (= e!4694491 (and tp!2371574 tp!2371573))))

(declare-fun b!7960213 () Bool)

(declare-fun tp!2371563 () Bool)

(assert (=> b!7960213 (= e!4694489 (and tp_is_empty!53533 tp!2371563))))

(declare-fun b!7960214 () Bool)

(assert (=> b!7960214 (= e!4694483 tp_is_empty!53533)))

(declare-fun b!7960215 () Bool)

(declare-fun tp!2371568 () Bool)

(declare-fun tp!2371564 () Bool)

(assert (=> b!7960215 (= e!4694483 (and tp!2371568 tp!2371564))))

(declare-fun b!7960216 () Bool)

(declare-fun res!3155104 () Bool)

(assert (=> b!7960216 (=> (not res!3155104) (not e!4694488))))

(assert (=> b!7960216 (= res!3155104 (isPrefix!6595 testedP!447 input!7927))))

(assert (= (and start!750844 res!3155101) b!7960216))

(assert (= (and b!7960216 res!3155104) b!7960203))

(assert (= (and b!7960203 res!3155100) b!7960210))

(assert (= (and b!7960210 res!3155098) b!7960199))

(assert (= (and b!7960199 res!3155099) b!7960197))

(assert (= (and b!7960197 c!1461831) b!7960205))

(assert (= (and b!7960197 (not c!1461831)) b!7960208))

(assert (= (and b!7960197 (not res!3155103)) b!7960201))

(assert (= (and b!7960201 (not res!3155102)) b!7960209))

(assert (= (and b!7960209 (not res!3155097)) b!7960207))

(get-info :version)

(assert (= (and start!750844 ((_ is ElementMatch!21495) baseR!116)) b!7960214))

(assert (= (and start!750844 ((_ is Concat!30494) baseR!116)) b!7960215))

(assert (= (and start!750844 ((_ is Star!21495) baseR!116)) b!7960211))

(assert (= (and start!750844 ((_ is Union!21495) baseR!116)) b!7960200))

(assert (= (and start!750844 ((_ is Cons!74600) testedP!447)) b!7960213))

(assert (= (and start!750844 ((_ is Cons!74600) input!7927)) b!7960206))

(assert (= (and start!750844 ((_ is ElementMatch!21495) r!24602)) b!7960202))

(assert (= (and start!750844 ((_ is Concat!30494) r!24602)) b!7960212))

(assert (= (and start!750844 ((_ is Star!21495) r!24602)) b!7960198))

(assert (= (and start!750844 ((_ is Union!21495) r!24602)) b!7960204))

(declare-fun m!8340744 () Bool)

(assert (=> start!750844 m!8340744))

(declare-fun m!8340746 () Bool)

(assert (=> b!7960197 m!8340746))

(declare-fun m!8340748 () Bool)

(assert (=> b!7960210 m!8340748))

(declare-fun m!8340750 () Bool)

(assert (=> b!7960210 m!8340750))

(declare-fun m!8340752 () Bool)

(assert (=> b!7960210 m!8340752))

(declare-fun m!8340754 () Bool)

(assert (=> b!7960210 m!8340754))

(declare-fun m!8340756 () Bool)

(assert (=> b!7960210 m!8340756))

(declare-fun m!8340758 () Bool)

(assert (=> b!7960205 m!8340758))

(declare-fun m!8340760 () Bool)

(assert (=> b!7960205 m!8340760))

(declare-fun m!8340762 () Bool)

(assert (=> b!7960205 m!8340762))

(declare-fun m!8340764 () Bool)

(assert (=> b!7960203 m!8340764))

(declare-fun m!8340766 () Bool)

(assert (=> b!7960216 m!8340766))

(declare-fun m!8340768 () Bool)

(assert (=> b!7960209 m!8340768))

(declare-fun m!8340770 () Bool)

(assert (=> b!7960209 m!8340770))

(assert (=> b!7960209 m!8340768))

(assert (=> b!7960209 m!8340770))

(declare-fun m!8340772 () Bool)

(assert (=> b!7960209 m!8340772))

(declare-fun m!8340774 () Bool)

(assert (=> b!7960209 m!8340774))

(declare-fun m!8340776 () Bool)

(assert (=> b!7960201 m!8340776))

(declare-fun m!8340778 () Bool)

(assert (=> b!7960201 m!8340778))

(declare-fun m!8340780 () Bool)

(assert (=> b!7960201 m!8340780))

(declare-fun m!8340782 () Bool)

(assert (=> b!7960201 m!8340782))

(declare-fun m!8340784 () Bool)

(assert (=> b!7960201 m!8340784))

(check-sat (not b!7960201) (not b!7960210) tp_is_empty!53533 (not b!7960200) (not b!7960213) (not b!7960212) (not b!7960206) (not b!7960203) (not b!7960198) (not b!7960211) (not b!7960205) (not b!7960204) (not b!7960197) (not b!7960216) (not start!750844) (not b!7960215) (not b!7960209))
(check-sat)
(get-model)

(declare-fun d!2377792 () Bool)

(assert (=> d!2377792 (isPrefix!6595 (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600)) input!7927)))

(declare-fun lt!2703008 () Unit!170010)

(declare-fun choose!59980 (List!74724 List!74724) Unit!170010)

(assert (=> d!2377792 (= lt!2703008 (choose!59980 testedP!447 input!7927))))

(assert (=> d!2377792 (isPrefix!6595 testedP!447 input!7927)))

(assert (=> d!2377792 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1322 testedP!447 input!7927) lt!2703008)))

(declare-fun bs!1969713 () Bool)

(assert (= bs!1969713 d!2377792))

(assert (=> bs!1969713 m!8340766))

(assert (=> bs!1969713 m!8340756))

(declare-fun m!8340786 () Bool)

(assert (=> bs!1969713 m!8340786))

(declare-fun m!8340788 () Bool)

(assert (=> bs!1969713 m!8340788))

(assert (=> bs!1969713 m!8340786))

(assert (=> bs!1969713 m!8340756))

(declare-fun m!8340790 () Bool)

(assert (=> bs!1969713 m!8340790))

(declare-fun m!8340792 () Bool)

(assert (=> bs!1969713 m!8340792))

(assert (=> b!7960201 d!2377792))

(declare-fun d!2377794 () Bool)

(declare-fun e!4694497 () Bool)

(assert (=> d!2377794 e!4694497))

(declare-fun res!3155110 () Bool)

(assert (=> d!2377794 (=> (not res!3155110) (not e!4694497))))

(declare-fun lt!2703011 () List!74724)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15841 (List!74724) (InoxSet C!43328))

(assert (=> d!2377794 (= res!3155110 (= (content!15841 lt!2703011) ((_ map or) (content!15841 testedP!447) (content!15841 (Cons!74600 lt!2703001 Nil!74600)))))))

(declare-fun e!4694496 () List!74724)

(assert (=> d!2377794 (= lt!2703011 e!4694496)))

(declare-fun c!1461835 () Bool)

(assert (=> d!2377794 (= c!1461835 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377794 (= (++!18365 testedP!447 (Cons!74600 lt!2703001 Nil!74600)) lt!2703011)))

(declare-fun b!7960226 () Bool)

(assert (=> b!7960226 (= e!4694496 (Cons!74600 (h!81048 testedP!447) (++!18365 (t!390467 testedP!447) (Cons!74600 lt!2703001 Nil!74600))))))

(declare-fun b!7960228 () Bool)

(assert (=> b!7960228 (= e!4694497 (or (not (= (Cons!74600 lt!2703001 Nil!74600) Nil!74600)) (= lt!2703011 testedP!447)))))

(declare-fun b!7960227 () Bool)

(declare-fun res!3155109 () Bool)

(assert (=> b!7960227 (=> (not res!3155109) (not e!4694497))))

(assert (=> b!7960227 (= res!3155109 (= (size!43431 lt!2703011) (+ (size!43431 testedP!447) (size!43431 (Cons!74600 lt!2703001 Nil!74600)))))))

(declare-fun b!7960225 () Bool)

(assert (=> b!7960225 (= e!4694496 (Cons!74600 lt!2703001 Nil!74600))))

(assert (= (and d!2377794 c!1461835) b!7960225))

(assert (= (and d!2377794 (not c!1461835)) b!7960226))

(assert (= (and d!2377794 res!3155110) b!7960227))

(assert (= (and b!7960227 res!3155109) b!7960228))

(declare-fun m!8340794 () Bool)

(assert (=> d!2377794 m!8340794))

(declare-fun m!8340796 () Bool)

(assert (=> d!2377794 m!8340796))

(declare-fun m!8340798 () Bool)

(assert (=> d!2377794 m!8340798))

(declare-fun m!8340800 () Bool)

(assert (=> b!7960226 m!8340800))

(declare-fun m!8340802 () Bool)

(assert (=> b!7960227 m!8340802))

(assert (=> b!7960227 m!8340750))

(declare-fun m!8340804 () Bool)

(assert (=> b!7960227 m!8340804))

(assert (=> b!7960201 d!2377794))

(declare-fun d!2377796 () Bool)

(declare-fun nullableFct!3783 (Regex!21495) Bool)

(assert (=> d!2377796 (= (nullable!9596 r!24602) (nullableFct!3783 r!24602))))

(declare-fun bs!1969714 () Bool)

(assert (= bs!1969714 d!2377796))

(declare-fun m!8340806 () Bool)

(assert (=> bs!1969714 m!8340806))

(assert (=> b!7960201 d!2377796))

(declare-fun b!7960248 () Bool)

(declare-fun e!4694509 () Bool)

(assert (=> b!7960248 (= e!4694509 (>= (size!43431 input!7927) (size!43431 lt!2703005)))))

(declare-fun d!2377798 () Bool)

(assert (=> d!2377798 e!4694509))

(declare-fun res!3155122 () Bool)

(assert (=> d!2377798 (=> res!3155122 e!4694509)))

(declare-fun lt!2703018 () Bool)

(assert (=> d!2377798 (= res!3155122 (not lt!2703018))))

(declare-fun e!4694510 () Bool)

(assert (=> d!2377798 (= lt!2703018 e!4694510)))

(declare-fun res!3155120 () Bool)

(assert (=> d!2377798 (=> res!3155120 e!4694510)))

(assert (=> d!2377798 (= res!3155120 ((_ is Nil!74600) lt!2703005))))

(assert (=> d!2377798 (= (isPrefix!6595 lt!2703005 input!7927) lt!2703018)))

(declare-fun b!7960247 () Bool)

(declare-fun e!4694508 () Bool)

(assert (=> b!7960247 (= e!4694508 (isPrefix!6595 (tail!15784 lt!2703005) (tail!15784 input!7927)))))

(declare-fun b!7960245 () Bool)

(assert (=> b!7960245 (= e!4694510 e!4694508)))

(declare-fun res!3155121 () Bool)

(assert (=> b!7960245 (=> (not res!3155121) (not e!4694508))))

(assert (=> b!7960245 (= res!3155121 (not ((_ is Nil!74600) input!7927)))))

(declare-fun b!7960246 () Bool)

(declare-fun res!3155119 () Bool)

(assert (=> b!7960246 (=> (not res!3155119) (not e!4694508))))

(assert (=> b!7960246 (= res!3155119 (= (head!16247 lt!2703005) (head!16247 input!7927)))))

(assert (= (and d!2377798 (not res!3155120)) b!7960245))

(assert (= (and b!7960245 res!3155121) b!7960246))

(assert (= (and b!7960246 res!3155119) b!7960247))

(assert (= (and d!2377798 (not res!3155122)) b!7960248))

(assert (=> b!7960248 m!8340752))

(declare-fun m!8340812 () Bool)

(assert (=> b!7960248 m!8340812))

(declare-fun m!8340814 () Bool)

(assert (=> b!7960247 m!8340814))

(declare-fun m!8340816 () Bool)

(assert (=> b!7960247 m!8340816))

(assert (=> b!7960247 m!8340814))

(assert (=> b!7960247 m!8340816))

(declare-fun m!8340818 () Bool)

(assert (=> b!7960247 m!8340818))

(declare-fun m!8340820 () Bool)

(assert (=> b!7960246 m!8340820))

(declare-fun m!8340822 () Bool)

(assert (=> b!7960246 m!8340822))

(assert (=> b!7960201 d!2377798))

(declare-fun d!2377808 () Bool)

(assert (=> d!2377808 (= (head!16247 lt!2703000) (h!81048 lt!2703000))))

(assert (=> b!7960201 d!2377808))

(declare-fun b!7960252 () Bool)

(declare-fun e!4694512 () Bool)

(assert (=> b!7960252 (= e!4694512 (>= (size!43431 input!7927) (size!43431 testedP!447)))))

(declare-fun d!2377810 () Bool)

(assert (=> d!2377810 e!4694512))

(declare-fun res!3155126 () Bool)

(assert (=> d!2377810 (=> res!3155126 e!4694512)))

(declare-fun lt!2703019 () Bool)

(assert (=> d!2377810 (= res!3155126 (not lt!2703019))))

(declare-fun e!4694513 () Bool)

(assert (=> d!2377810 (= lt!2703019 e!4694513)))

(declare-fun res!3155124 () Bool)

(assert (=> d!2377810 (=> res!3155124 e!4694513)))

(assert (=> d!2377810 (= res!3155124 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377810 (= (isPrefix!6595 testedP!447 input!7927) lt!2703019)))

(declare-fun b!7960251 () Bool)

(declare-fun e!4694511 () Bool)

(assert (=> b!7960251 (= e!4694511 (isPrefix!6595 (tail!15784 testedP!447) (tail!15784 input!7927)))))

(declare-fun b!7960249 () Bool)

(assert (=> b!7960249 (= e!4694513 e!4694511)))

(declare-fun res!3155125 () Bool)

(assert (=> b!7960249 (=> (not res!3155125) (not e!4694511))))

(assert (=> b!7960249 (= res!3155125 (not ((_ is Nil!74600) input!7927)))))

(declare-fun b!7960250 () Bool)

(declare-fun res!3155123 () Bool)

(assert (=> b!7960250 (=> (not res!3155123) (not e!4694511))))

(assert (=> b!7960250 (= res!3155123 (= (head!16247 testedP!447) (head!16247 input!7927)))))

(assert (= (and d!2377810 (not res!3155124)) b!7960249))

(assert (= (and b!7960249 res!3155125) b!7960250))

(assert (= (and b!7960250 res!3155123) b!7960251))

(assert (= (and d!2377810 (not res!3155126)) b!7960252))

(assert (=> b!7960252 m!8340752))

(assert (=> b!7960252 m!8340750))

(declare-fun m!8340824 () Bool)

(assert (=> b!7960251 m!8340824))

(assert (=> b!7960251 m!8340816))

(assert (=> b!7960251 m!8340824))

(assert (=> b!7960251 m!8340816))

(declare-fun m!8340826 () Bool)

(assert (=> b!7960251 m!8340826))

(declare-fun m!8340828 () Bool)

(assert (=> b!7960250 m!8340828))

(assert (=> b!7960250 m!8340822))

(assert (=> b!7960216 d!2377810))

(declare-fun b!7960271 () Bool)

(declare-fun e!4694533 () Bool)

(declare-fun e!4694530 () Bool)

(assert (=> b!7960271 (= e!4694533 e!4694530)))

(declare-fun res!3155141 () Bool)

(assert (=> b!7960271 (= res!3155141 (not (nullable!9596 (reg!21824 baseR!116))))))

(assert (=> b!7960271 (=> (not res!3155141) (not e!4694530))))

(declare-fun b!7960272 () Bool)

(declare-fun e!4694534 () Bool)

(declare-fun call!738091 () Bool)

(assert (=> b!7960272 (= e!4694534 call!738091)))

(declare-fun b!7960273 () Bool)

(declare-fun res!3155137 () Bool)

(assert (=> b!7960273 (=> (not res!3155137) (not e!4694534))))

(declare-fun call!738093 () Bool)

(assert (=> b!7960273 (= res!3155137 call!738093)))

(declare-fun e!4694532 () Bool)

(assert (=> b!7960273 (= e!4694532 e!4694534)))

(declare-fun bm!738086 () Bool)

(declare-fun call!738092 () Bool)

(assert (=> bm!738086 (= call!738093 call!738092)))

(declare-fun bm!738087 () Bool)

(declare-fun c!1461845 () Bool)

(declare-fun c!1461844 () Bool)

(assert (=> bm!738087 (= call!738092 (validRegex!11799 (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))))))

(declare-fun b!7960274 () Bool)

(assert (=> b!7960274 (= e!4694533 e!4694532)))

(assert (=> b!7960274 (= c!1461845 ((_ is Union!21495) baseR!116))))

(declare-fun b!7960275 () Bool)

(declare-fun res!3155140 () Bool)

(declare-fun e!4694529 () Bool)

(assert (=> b!7960275 (=> res!3155140 e!4694529)))

(assert (=> b!7960275 (= res!3155140 (not ((_ is Concat!30494) baseR!116)))))

(assert (=> b!7960275 (= e!4694532 e!4694529)))

(declare-fun d!2377812 () Bool)

(declare-fun res!3155139 () Bool)

(declare-fun e!4694528 () Bool)

(assert (=> d!2377812 (=> res!3155139 e!4694528)))

(assert (=> d!2377812 (= res!3155139 ((_ is ElementMatch!21495) baseR!116))))

(assert (=> d!2377812 (= (validRegex!11799 baseR!116) e!4694528)))

(declare-fun bm!738088 () Bool)

(assert (=> bm!738088 (= call!738091 (validRegex!11799 (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))))))

(declare-fun b!7960276 () Bool)

(assert (=> b!7960276 (= e!4694528 e!4694533)))

(assert (=> b!7960276 (= c!1461844 ((_ is Star!21495) baseR!116))))

(declare-fun b!7960277 () Bool)

(declare-fun e!4694531 () Bool)

(assert (=> b!7960277 (= e!4694531 call!738091)))

(declare-fun b!7960278 () Bool)

(assert (=> b!7960278 (= e!4694530 call!738092)))

(declare-fun b!7960279 () Bool)

(assert (=> b!7960279 (= e!4694529 e!4694531)))

(declare-fun res!3155138 () Bool)

(assert (=> b!7960279 (=> (not res!3155138) (not e!4694531))))

(assert (=> b!7960279 (= res!3155138 call!738093)))

(assert (= (and d!2377812 (not res!3155139)) b!7960276))

(assert (= (and b!7960276 c!1461844) b!7960271))

(assert (= (and b!7960276 (not c!1461844)) b!7960274))

(assert (= (and b!7960271 res!3155141) b!7960278))

(assert (= (and b!7960274 c!1461845) b!7960273))

(assert (= (and b!7960274 (not c!1461845)) b!7960275))

(assert (= (and b!7960273 res!3155137) b!7960272))

(assert (= (and b!7960275 (not res!3155140)) b!7960279))

(assert (= (and b!7960279 res!3155138) b!7960277))

(assert (= (or b!7960272 b!7960277) bm!738088))

(assert (= (or b!7960273 b!7960279) bm!738086))

(assert (= (or b!7960278 bm!738086) bm!738087))

(declare-fun m!8340830 () Bool)

(assert (=> b!7960271 m!8340830))

(declare-fun m!8340832 () Bool)

(assert (=> bm!738087 m!8340832))

(declare-fun m!8340834 () Bool)

(assert (=> bm!738088 m!8340834))

(assert (=> start!750844 d!2377812))

(declare-fun d!2377814 () Bool)

(declare-fun lt!2703022 () Int)

(assert (=> d!2377814 (>= lt!2703022 0)))

(declare-fun e!4694537 () Int)

(assert (=> d!2377814 (= lt!2703022 e!4694537)))

(declare-fun c!1461848 () Bool)

(assert (=> d!2377814 (= c!1461848 ((_ is Nil!74600) input!7927))))

(assert (=> d!2377814 (= (size!43431 input!7927) lt!2703022)))

(declare-fun b!7960284 () Bool)

(assert (=> b!7960284 (= e!4694537 0)))

(declare-fun b!7960285 () Bool)

(assert (=> b!7960285 (= e!4694537 (+ 1 (size!43431 (t!390467 input!7927))))))

(assert (= (and d!2377814 c!1461848) b!7960284))

(assert (= (and d!2377814 (not c!1461848)) b!7960285))

(declare-fun m!8340836 () Bool)

(assert (=> b!7960285 m!8340836))

(assert (=> b!7960210 d!2377814))

(declare-fun b!7960366 () Bool)

(declare-fun e!4694587 () tuple2!70652)

(assert (=> b!7960366 (= e!4694587 (tuple2!70653 testedP!447 lt!2703000))))

(declare-fun b!7960367 () Bool)

(declare-fun e!4694589 () tuple2!70652)

(assert (=> b!7960367 (= e!4694589 (tuple2!70653 testedP!447 Nil!74600))))

(declare-fun b!7960368 () Bool)

(declare-fun e!4694584 () Bool)

(declare-fun lt!2703178 () tuple2!70652)

(assert (=> b!7960368 (= e!4694584 (>= (size!43431 (_1!38629 lt!2703178)) (size!43431 testedP!447)))))

(declare-fun b!7960369 () Bool)

(declare-fun e!4694590 () Unit!170010)

(declare-fun Unit!170017 () Unit!170010)

(assert (=> b!7960369 (= e!4694590 Unit!170017)))

(declare-fun lt!2703170 () Unit!170010)

(declare-fun call!738135 () Unit!170010)

(assert (=> b!7960369 (= lt!2703170 call!738135)))

(declare-fun call!738136 () Bool)

(assert (=> b!7960369 call!738136))

(declare-fun lt!2703189 () Unit!170010)

(assert (=> b!7960369 (= lt!2703189 lt!2703170)))

(declare-fun lt!2703188 () Unit!170010)

(declare-fun call!738139 () Unit!170010)

(assert (=> b!7960369 (= lt!2703188 call!738139)))

(assert (=> b!7960369 (= input!7927 testedP!447)))

(declare-fun lt!2703194 () Unit!170010)

(assert (=> b!7960369 (= lt!2703194 lt!2703188)))

(assert (=> b!7960369 false))

(declare-fun bm!738129 () Bool)

(assert (=> bm!738129 (= call!738139 (lemmaIsPrefixSameLengthThenSameList!1643 input!7927 testedP!447 input!7927))))

(declare-fun b!7960370 () Bool)

(declare-fun c!1461885 () Bool)

(declare-fun call!738137 () Bool)

(assert (=> b!7960370 (= c!1461885 call!738137)))

(declare-fun lt!2703184 () Unit!170010)

(declare-fun lt!2703187 () Unit!170010)

(assert (=> b!7960370 (= lt!2703184 lt!2703187)))

(assert (=> b!7960370 (= input!7927 testedP!447)))

(assert (=> b!7960370 (= lt!2703187 call!738139)))

(declare-fun lt!2703191 () Unit!170010)

(declare-fun lt!2703173 () Unit!170010)

(assert (=> b!7960370 (= lt!2703191 lt!2703173)))

(assert (=> b!7960370 call!738136))

(assert (=> b!7960370 (= lt!2703173 call!738135)))

(declare-fun e!4694586 () tuple2!70652)

(assert (=> b!7960370 (= e!4694586 e!4694589)))

(declare-fun b!7960371 () Bool)

(declare-fun Unit!170018 () Unit!170010)

(assert (=> b!7960371 (= e!4694590 Unit!170018)))

(declare-fun d!2377816 () Bool)

(declare-fun e!4694588 () Bool)

(assert (=> d!2377816 e!4694588))

(declare-fun res!3155152 () Bool)

(assert (=> d!2377816 (=> (not res!3155152) (not e!4694588))))

(assert (=> d!2377816 (= res!3155152 (= (++!18365 (_1!38629 lt!2703178) (_2!38629 lt!2703178)) input!7927))))

(declare-fun e!4694583 () tuple2!70652)

(assert (=> d!2377816 (= lt!2703178 e!4694583)))

(declare-fun c!1461889 () Bool)

(declare-fun lostCause!1974 (Regex!21495) Bool)

(assert (=> d!2377816 (= c!1461889 (lostCause!1974 r!24602))))

(declare-fun lt!2703169 () Unit!170010)

(declare-fun Unit!170019 () Unit!170010)

(assert (=> d!2377816 (= lt!2703169 Unit!170019)))

(assert (=> d!2377816 (= (getSuffix!3798 input!7927 testedP!447) lt!2703000)))

(declare-fun lt!2703172 () Unit!170010)

(declare-fun lt!2703193 () Unit!170010)

(assert (=> d!2377816 (= lt!2703172 lt!2703193)))

(declare-fun lt!2703181 () List!74724)

(assert (=> d!2377816 (= lt!2703000 lt!2703181)))

(declare-fun lemmaSamePrefixThenSameSuffix!2990 (List!74724 List!74724 List!74724 List!74724 List!74724) Unit!170010)

(assert (=> d!2377816 (= lt!2703193 (lemmaSamePrefixThenSameSuffix!2990 testedP!447 lt!2703000 testedP!447 lt!2703181 input!7927))))

(assert (=> d!2377816 (= lt!2703181 (getSuffix!3798 input!7927 testedP!447))))

(declare-fun lt!2703174 () Unit!170010)

(declare-fun lt!2703177 () Unit!170010)

(assert (=> d!2377816 (= lt!2703174 lt!2703177)))

(assert (=> d!2377816 (isPrefix!6595 testedP!447 (++!18365 testedP!447 lt!2703000))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3852 (List!74724 List!74724) Unit!170010)

(assert (=> d!2377816 (= lt!2703177 (lemmaConcatTwoListThenFirstIsPrefix!3852 testedP!447 lt!2703000))))

(assert (=> d!2377816 (validRegex!11799 r!24602)))

(assert (=> d!2377816 (= (findLongestMatchInner!2276 r!24602 testedP!447 lt!2703002 lt!2703000 input!7927 lt!2702998) lt!2703178)))

(declare-fun b!7960372 () Bool)

(assert (=> b!7960372 (= e!4694583 (tuple2!70653 Nil!74600 input!7927))))

(declare-fun bm!738130 () Bool)

(assert (=> bm!738130 (= call!738136 (isPrefix!6595 input!7927 input!7927))))

(declare-fun b!7960373 () Bool)

(declare-fun e!4694585 () tuple2!70652)

(assert (=> b!7960373 (= e!4694585 e!4694587)))

(declare-fun lt!2703190 () tuple2!70652)

(declare-fun call!738134 () tuple2!70652)

(assert (=> b!7960373 (= lt!2703190 call!738134)))

(declare-fun c!1461886 () Bool)

(assert (=> b!7960373 (= c!1461886 (isEmpty!42901 (_1!38629 lt!2703190)))))

(declare-fun call!738138 () Regex!21495)

(declare-fun lt!2703171 () List!74724)

(declare-fun call!738141 () List!74724)

(declare-fun bm!738131 () Bool)

(assert (=> bm!738131 (= call!738134 (findLongestMatchInner!2276 call!738138 lt!2703171 (+ lt!2703002 1) call!738141 input!7927 lt!2702998))))

(declare-fun bm!738132 () Bool)

(assert (=> bm!738132 (= call!738137 (nullable!9596 r!24602))))

(declare-fun b!7960374 () Bool)

(assert (=> b!7960374 (= e!4694588 e!4694584)))

(declare-fun res!3155153 () Bool)

(assert (=> b!7960374 (=> res!3155153 e!4694584)))

(assert (=> b!7960374 (= res!3155153 (isEmpty!42901 (_1!38629 lt!2703178)))))

(declare-fun b!7960375 () Bool)

(declare-fun c!1461888 () Bool)

(assert (=> b!7960375 (= c!1461888 call!738137)))

(declare-fun lt!2703195 () Unit!170010)

(declare-fun lt!2703180 () Unit!170010)

(assert (=> b!7960375 (= lt!2703195 lt!2703180)))

(declare-fun lt!2703185 () C!43328)

(declare-fun lt!2703168 () List!74724)

(assert (=> b!7960375 (= (++!18365 (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600)) lt!2703168) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3530 (List!74724 C!43328 List!74724 List!74724) Unit!170010)

(assert (=> b!7960375 (= lt!2703180 (lemmaMoveElementToOtherListKeepsConcatEq!3530 testedP!447 lt!2703185 lt!2703168 input!7927))))

(assert (=> b!7960375 (= lt!2703168 (tail!15784 lt!2703000))))

(assert (=> b!7960375 (= lt!2703185 (head!16247 lt!2703000))))

(declare-fun lt!2703183 () Unit!170010)

(declare-fun lt!2703175 () Unit!170010)

(assert (=> b!7960375 (= lt!2703183 lt!2703175)))

(assert (=> b!7960375 (isPrefix!6595 (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600)) input!7927)))

(assert (=> b!7960375 (= lt!2703175 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 testedP!447 input!7927))))

(declare-fun lt!2703182 () Unit!170010)

(declare-fun lt!2703186 () Unit!170010)

(assert (=> b!7960375 (= lt!2703182 lt!2703186)))

(assert (=> b!7960375 (= lt!2703186 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 testedP!447 input!7927))))

(assert (=> b!7960375 (= lt!2703171 (++!18365 testedP!447 (Cons!74600 (head!16247 lt!2703000) Nil!74600)))))

(declare-fun lt!2703179 () Unit!170010)

(assert (=> b!7960375 (= lt!2703179 e!4694590)))

(declare-fun c!1461884 () Bool)

(assert (=> b!7960375 (= c!1461884 (= (size!43431 testedP!447) (size!43431 input!7927)))))

(declare-fun lt!2703192 () Unit!170010)

(declare-fun lt!2703176 () Unit!170010)

(assert (=> b!7960375 (= lt!2703192 lt!2703176)))

(assert (=> b!7960375 (<= (size!43431 testedP!447) (size!43431 input!7927))))

(assert (=> b!7960375 (= lt!2703176 (lemmaIsPrefixThenSmallerEqSize!1112 testedP!447 input!7927))))

(assert (=> b!7960375 (= e!4694586 e!4694585)))

(declare-fun b!7960376 () Bool)

(assert (=> b!7960376 (= e!4694585 call!738134)))

(declare-fun b!7960377 () Bool)

(assert (=> b!7960377 (= e!4694587 lt!2703190)))

(declare-fun bm!738133 () Bool)

(declare-fun call!738140 () C!43328)

(assert (=> bm!738133 (= call!738140 (head!16247 lt!2703000))))

(declare-fun bm!738134 () Bool)

(assert (=> bm!738134 (= call!738138 (derivativeStep!6523 r!24602 call!738140))))

(declare-fun bm!738135 () Bool)

(assert (=> bm!738135 (= call!738135 (lemmaIsPrefixRefl!4063 input!7927 input!7927))))

(declare-fun b!7960378 () Bool)

(assert (=> b!7960378 (= e!4694589 (tuple2!70653 Nil!74600 input!7927))))

(declare-fun bm!738136 () Bool)

(assert (=> bm!738136 (= call!738141 (tail!15784 lt!2703000))))

(declare-fun b!7960379 () Bool)

(assert (=> b!7960379 (= e!4694583 e!4694586)))

(declare-fun c!1461887 () Bool)

(assert (=> b!7960379 (= c!1461887 (= lt!2703002 lt!2702998))))

(assert (= (and d!2377816 c!1461889) b!7960372))

(assert (= (and d!2377816 (not c!1461889)) b!7960379))

(assert (= (and b!7960379 c!1461887) b!7960370))

(assert (= (and b!7960379 (not c!1461887)) b!7960375))

(assert (= (and b!7960370 c!1461885) b!7960367))

(assert (= (and b!7960370 (not c!1461885)) b!7960378))

(assert (= (and b!7960375 c!1461884) b!7960369))

(assert (= (and b!7960375 (not c!1461884)) b!7960371))

(assert (= (and b!7960375 c!1461888) b!7960373))

(assert (= (and b!7960375 (not c!1461888)) b!7960376))

(assert (= (and b!7960373 c!1461886) b!7960366))

(assert (= (and b!7960373 (not c!1461886)) b!7960377))

(assert (= (or b!7960373 b!7960376) bm!738133))

(assert (= (or b!7960373 b!7960376) bm!738136))

(assert (= (or b!7960373 b!7960376) bm!738134))

(assert (= (or b!7960373 b!7960376) bm!738131))

(assert (= (or b!7960370 b!7960375) bm!738132))

(assert (= (or b!7960370 b!7960369) bm!738129))

(assert (= (or b!7960370 b!7960369) bm!738135))

(assert (= (or b!7960370 b!7960369) bm!738130))

(assert (= (and d!2377816 res!3155152) b!7960374))

(assert (= (and b!7960374 (not res!3155153)) b!7960368))

(assert (=> bm!738132 m!8340778))

(declare-fun m!8340888 () Bool)

(assert (=> bm!738134 m!8340888))

(declare-fun m!8340890 () Bool)

(assert (=> b!7960374 m!8340890))

(assert (=> bm!738130 m!8340760))

(assert (=> bm!738129 m!8340762))

(assert (=> bm!738135 m!8340758))

(declare-fun m!8340892 () Bool)

(assert (=> b!7960368 m!8340892))

(assert (=> b!7960368 m!8340750))

(declare-fun m!8340894 () Bool)

(assert (=> bm!738131 m!8340894))

(assert (=> bm!738136 m!8340770))

(assert (=> bm!738133 m!8340780))

(declare-fun m!8340896 () Bool)

(assert (=> b!7960373 m!8340896))

(assert (=> b!7960375 m!8340750))

(assert (=> b!7960375 m!8340786))

(assert (=> b!7960375 m!8340756))

(assert (=> b!7960375 m!8340790))

(assert (=> b!7960375 m!8340784))

(assert (=> b!7960375 m!8340752))

(assert (=> b!7960375 m!8340786))

(assert (=> b!7960375 m!8340788))

(declare-fun m!8340898 () Bool)

(assert (=> b!7960375 m!8340898))

(assert (=> b!7960375 m!8340756))

(declare-fun m!8340900 () Bool)

(assert (=> b!7960375 m!8340900))

(assert (=> b!7960375 m!8340746))

(assert (=> b!7960375 m!8340770))

(declare-fun m!8340902 () Bool)

(assert (=> b!7960375 m!8340902))

(assert (=> b!7960375 m!8340780))

(assert (=> b!7960375 m!8340898))

(declare-fun m!8340904 () Bool)

(assert (=> b!7960375 m!8340904))

(declare-fun m!8340906 () Bool)

(assert (=> d!2377816 m!8340906))

(assert (=> d!2377816 m!8340756))

(declare-fun m!8340908 () Bool)

(assert (=> d!2377816 m!8340908))

(declare-fun m!8340910 () Bool)

(assert (=> d!2377816 m!8340910))

(declare-fun m!8340912 () Bool)

(assert (=> d!2377816 m!8340912))

(declare-fun m!8340914 () Bool)

(assert (=> d!2377816 m!8340914))

(assert (=> d!2377816 m!8340908))

(declare-fun m!8340916 () Bool)

(assert (=> d!2377816 m!8340916))

(declare-fun m!8340918 () Bool)

(assert (=> d!2377816 m!8340918))

(assert (=> b!7960210 d!2377816))

(declare-fun d!2377824 () Bool)

(assert (=> d!2377824 (= (isEmpty!42901 (_1!38629 (findLongestMatchInner!2276 r!24602 testedP!447 lt!2703002 lt!2703000 input!7927 lt!2702998))) ((_ is Nil!74600) (_1!38629 (findLongestMatchInner!2276 r!24602 testedP!447 lt!2703002 lt!2703000 input!7927 lt!2702998))))))

(assert (=> b!7960210 d!2377824))

(declare-fun d!2377826 () Bool)

(declare-fun lt!2703227 () List!74724)

(assert (=> d!2377826 (= (++!18365 testedP!447 lt!2703227) input!7927)))

(declare-fun e!4694623 () List!74724)

(assert (=> d!2377826 (= lt!2703227 e!4694623)))

(declare-fun c!1461905 () Bool)

(assert (=> d!2377826 (= c!1461905 ((_ is Cons!74600) testedP!447))))

(assert (=> d!2377826 (>= (size!43431 input!7927) (size!43431 testedP!447))))

(assert (=> d!2377826 (= (getSuffix!3798 input!7927 testedP!447) lt!2703227)))

(declare-fun b!7960427 () Bool)

(assert (=> b!7960427 (= e!4694623 (getSuffix!3798 (tail!15784 input!7927) (t!390467 testedP!447)))))

(declare-fun b!7960428 () Bool)

(assert (=> b!7960428 (= e!4694623 input!7927)))

(assert (= (and d!2377826 c!1461905) b!7960427))

(assert (= (and d!2377826 (not c!1461905)) b!7960428))

(declare-fun m!8340926 () Bool)

(assert (=> d!2377826 m!8340926))

(assert (=> d!2377826 m!8340752))

(assert (=> d!2377826 m!8340750))

(assert (=> b!7960427 m!8340816))

(assert (=> b!7960427 m!8340816))

(declare-fun m!8340928 () Bool)

(assert (=> b!7960427 m!8340928))

(assert (=> b!7960210 d!2377826))

(declare-fun d!2377832 () Bool)

(declare-fun lt!2703228 () Int)

(assert (=> d!2377832 (>= lt!2703228 0)))

(declare-fun e!4694624 () Int)

(assert (=> d!2377832 (= lt!2703228 e!4694624)))

(declare-fun c!1461906 () Bool)

(assert (=> d!2377832 (= c!1461906 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377832 (= (size!43431 testedP!447) lt!2703228)))

(declare-fun b!7960429 () Bool)

(assert (=> b!7960429 (= e!4694624 0)))

(declare-fun b!7960430 () Bool)

(assert (=> b!7960430 (= e!4694624 (+ 1 (size!43431 (t!390467 testedP!447))))))

(assert (= (and d!2377832 c!1461906) b!7960429))

(assert (= (and d!2377832 (not c!1461906)) b!7960430))

(declare-fun m!8340950 () Bool)

(assert (=> b!7960430 m!8340950))

(assert (=> b!7960210 d!2377832))

(declare-fun d!2377834 () Bool)

(assert (=> d!2377834 (isPrefix!6595 input!7927 input!7927)))

(declare-fun lt!2703231 () Unit!170010)

(declare-fun choose!59981 (List!74724 List!74724) Unit!170010)

(assert (=> d!2377834 (= lt!2703231 (choose!59981 input!7927 input!7927))))

(assert (=> d!2377834 (= (lemmaIsPrefixRefl!4063 input!7927 input!7927) lt!2703231)))

(declare-fun bs!1969715 () Bool)

(assert (= bs!1969715 d!2377834))

(assert (=> bs!1969715 m!8340760))

(declare-fun m!8340986 () Bool)

(assert (=> bs!1969715 m!8340986))

(assert (=> b!7960205 d!2377834))

(declare-fun b!7960434 () Bool)

(declare-fun e!4694626 () Bool)

(assert (=> b!7960434 (= e!4694626 (>= (size!43431 input!7927) (size!43431 input!7927)))))

(declare-fun d!2377838 () Bool)

(assert (=> d!2377838 e!4694626))

(declare-fun res!3155174 () Bool)

(assert (=> d!2377838 (=> res!3155174 e!4694626)))

(declare-fun lt!2703232 () Bool)

(assert (=> d!2377838 (= res!3155174 (not lt!2703232))))

(declare-fun e!4694627 () Bool)

(assert (=> d!2377838 (= lt!2703232 e!4694627)))

(declare-fun res!3155172 () Bool)

(assert (=> d!2377838 (=> res!3155172 e!4694627)))

(assert (=> d!2377838 (= res!3155172 ((_ is Nil!74600) input!7927))))

(assert (=> d!2377838 (= (isPrefix!6595 input!7927 input!7927) lt!2703232)))

(declare-fun b!7960433 () Bool)

(declare-fun e!4694625 () Bool)

(assert (=> b!7960433 (= e!4694625 (isPrefix!6595 (tail!15784 input!7927) (tail!15784 input!7927)))))

(declare-fun b!7960431 () Bool)

(assert (=> b!7960431 (= e!4694627 e!4694625)))

(declare-fun res!3155173 () Bool)

(assert (=> b!7960431 (=> (not res!3155173) (not e!4694625))))

(assert (=> b!7960431 (= res!3155173 (not ((_ is Nil!74600) input!7927)))))

(declare-fun b!7960432 () Bool)

(declare-fun res!3155171 () Bool)

(assert (=> b!7960432 (=> (not res!3155171) (not e!4694625))))

(assert (=> b!7960432 (= res!3155171 (= (head!16247 input!7927) (head!16247 input!7927)))))

(assert (= (and d!2377838 (not res!3155172)) b!7960431))

(assert (= (and b!7960431 res!3155173) b!7960432))

(assert (= (and b!7960432 res!3155171) b!7960433))

(assert (= (and d!2377838 (not res!3155174)) b!7960434))

(assert (=> b!7960434 m!8340752))

(assert (=> b!7960434 m!8340752))

(assert (=> b!7960433 m!8340816))

(assert (=> b!7960433 m!8340816))

(assert (=> b!7960433 m!8340816))

(assert (=> b!7960433 m!8340816))

(declare-fun m!8340988 () Bool)

(assert (=> b!7960433 m!8340988))

(assert (=> b!7960432 m!8340822))

(assert (=> b!7960432 m!8340822))

(assert (=> b!7960205 d!2377838))

(declare-fun d!2377840 () Bool)

(assert (=> d!2377840 (= input!7927 testedP!447)))

(declare-fun lt!2703237 () Unit!170010)

(declare-fun choose!59982 (List!74724 List!74724 List!74724) Unit!170010)

(assert (=> d!2377840 (= lt!2703237 (choose!59982 input!7927 testedP!447 input!7927))))

(assert (=> d!2377840 (isPrefix!6595 input!7927 input!7927)))

(assert (=> d!2377840 (= (lemmaIsPrefixSameLengthThenSameList!1643 input!7927 testedP!447 input!7927) lt!2703237)))

(declare-fun bs!1969716 () Bool)

(assert (= bs!1969716 d!2377840))

(declare-fun m!8340990 () Bool)

(assert (=> bs!1969716 m!8340990))

(assert (=> bs!1969716 m!8340760))

(assert (=> b!7960205 d!2377840))

(declare-fun d!2377842 () Bool)

(assert (=> d!2377842 (= (isEmpty!42901 (_1!38629 (findLongestMatchInner!2276 (derivativeStep!6523 r!24602 lt!2703001) lt!2703005 (+ 1 lt!2703002) (tail!15784 lt!2703000) input!7927 lt!2702998))) ((_ is Nil!74600) (_1!38629 (findLongestMatchInner!2276 (derivativeStep!6523 r!24602 lt!2703001) lt!2703005 (+ 1 lt!2703002) (tail!15784 lt!2703000) input!7927 lt!2702998))))))

(assert (=> b!7960209 d!2377842))

(declare-fun b!7960455 () Bool)

(declare-fun e!4694642 () tuple2!70652)

(assert (=> b!7960455 (= e!4694642 (tuple2!70653 lt!2703005 (tail!15784 lt!2703000)))))

(declare-fun b!7960456 () Bool)

(declare-fun e!4694644 () tuple2!70652)

(assert (=> b!7960456 (= e!4694644 (tuple2!70653 lt!2703005 Nil!74600))))

(declare-fun b!7960457 () Bool)

(declare-fun e!4694639 () Bool)

(declare-fun lt!2703248 () tuple2!70652)

(assert (=> b!7960457 (= e!4694639 (>= (size!43431 (_1!38629 lt!2703248)) (size!43431 lt!2703005)))))

(declare-fun b!7960458 () Bool)

(declare-fun e!4694645 () Unit!170010)

(declare-fun Unit!170023 () Unit!170010)

(assert (=> b!7960458 (= e!4694645 Unit!170023)))

(declare-fun lt!2703240 () Unit!170010)

(declare-fun call!738162 () Unit!170010)

(assert (=> b!7960458 (= lt!2703240 call!738162)))

(declare-fun call!738163 () Bool)

(assert (=> b!7960458 call!738163))

(declare-fun lt!2703259 () Unit!170010)

(assert (=> b!7960458 (= lt!2703259 lt!2703240)))

(declare-fun lt!2703258 () Unit!170010)

(declare-fun call!738166 () Unit!170010)

(assert (=> b!7960458 (= lt!2703258 call!738166)))

(assert (=> b!7960458 (= input!7927 lt!2703005)))

(declare-fun lt!2703264 () Unit!170010)

(assert (=> b!7960458 (= lt!2703264 lt!2703258)))

(assert (=> b!7960458 false))

(declare-fun bm!738156 () Bool)

(assert (=> bm!738156 (= call!738166 (lemmaIsPrefixSameLengthThenSameList!1643 input!7927 lt!2703005 input!7927))))

(declare-fun b!7960459 () Bool)

(declare-fun c!1461918 () Bool)

(declare-fun call!738164 () Bool)

(assert (=> b!7960459 (= c!1461918 call!738164)))

(declare-fun lt!2703254 () Unit!170010)

(declare-fun lt!2703257 () Unit!170010)

(assert (=> b!7960459 (= lt!2703254 lt!2703257)))

(assert (=> b!7960459 (= input!7927 lt!2703005)))

(assert (=> b!7960459 (= lt!2703257 call!738166)))

(declare-fun lt!2703261 () Unit!170010)

(declare-fun lt!2703243 () Unit!170010)

(assert (=> b!7960459 (= lt!2703261 lt!2703243)))

(assert (=> b!7960459 call!738163))

(assert (=> b!7960459 (= lt!2703243 call!738162)))

(declare-fun e!4694641 () tuple2!70652)

(assert (=> b!7960459 (= e!4694641 e!4694644)))

(declare-fun b!7960460 () Bool)

(declare-fun Unit!170024 () Unit!170010)

(assert (=> b!7960460 (= e!4694645 Unit!170024)))

(declare-fun d!2377844 () Bool)

(declare-fun e!4694643 () Bool)

(assert (=> d!2377844 e!4694643))

(declare-fun res!3155175 () Bool)

(assert (=> d!2377844 (=> (not res!3155175) (not e!4694643))))

(assert (=> d!2377844 (= res!3155175 (= (++!18365 (_1!38629 lt!2703248) (_2!38629 lt!2703248)) input!7927))))

(declare-fun e!4694638 () tuple2!70652)

(assert (=> d!2377844 (= lt!2703248 e!4694638)))

(declare-fun c!1461922 () Bool)

(assert (=> d!2377844 (= c!1461922 (lostCause!1974 (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun lt!2703239 () Unit!170010)

(declare-fun Unit!170025 () Unit!170010)

(assert (=> d!2377844 (= lt!2703239 Unit!170025)))

(assert (=> d!2377844 (= (getSuffix!3798 input!7927 lt!2703005) (tail!15784 lt!2703000))))

(declare-fun lt!2703242 () Unit!170010)

(declare-fun lt!2703263 () Unit!170010)

(assert (=> d!2377844 (= lt!2703242 lt!2703263)))

(declare-fun lt!2703251 () List!74724)

(assert (=> d!2377844 (= (tail!15784 lt!2703000) lt!2703251)))

(assert (=> d!2377844 (= lt!2703263 (lemmaSamePrefixThenSameSuffix!2990 lt!2703005 (tail!15784 lt!2703000) lt!2703005 lt!2703251 input!7927))))

(assert (=> d!2377844 (= lt!2703251 (getSuffix!3798 input!7927 lt!2703005))))

(declare-fun lt!2703244 () Unit!170010)

(declare-fun lt!2703247 () Unit!170010)

(assert (=> d!2377844 (= lt!2703244 lt!2703247)))

(assert (=> d!2377844 (isPrefix!6595 lt!2703005 (++!18365 lt!2703005 (tail!15784 lt!2703000)))))

(assert (=> d!2377844 (= lt!2703247 (lemmaConcatTwoListThenFirstIsPrefix!3852 lt!2703005 (tail!15784 lt!2703000)))))

(assert (=> d!2377844 (validRegex!11799 (derivativeStep!6523 r!24602 lt!2703001))))

(assert (=> d!2377844 (= (findLongestMatchInner!2276 (derivativeStep!6523 r!24602 lt!2703001) lt!2703005 (+ 1 lt!2703002) (tail!15784 lt!2703000) input!7927 lt!2702998) lt!2703248)))

(declare-fun b!7960461 () Bool)

(assert (=> b!7960461 (= e!4694638 (tuple2!70653 Nil!74600 input!7927))))

(declare-fun bm!738157 () Bool)

(assert (=> bm!738157 (= call!738163 (isPrefix!6595 input!7927 input!7927))))

(declare-fun b!7960462 () Bool)

(declare-fun e!4694640 () tuple2!70652)

(assert (=> b!7960462 (= e!4694640 e!4694642)))

(declare-fun lt!2703260 () tuple2!70652)

(declare-fun call!738161 () tuple2!70652)

(assert (=> b!7960462 (= lt!2703260 call!738161)))

(declare-fun c!1461919 () Bool)

(assert (=> b!7960462 (= c!1461919 (isEmpty!42901 (_1!38629 lt!2703260)))))

(declare-fun bm!738158 () Bool)

(declare-fun call!738165 () Regex!21495)

(declare-fun call!738168 () List!74724)

(declare-fun lt!2703241 () List!74724)

(assert (=> bm!738158 (= call!738161 (findLongestMatchInner!2276 call!738165 lt!2703241 (+ 1 lt!2703002 1) call!738168 input!7927 lt!2702998))))

(declare-fun bm!738159 () Bool)

(assert (=> bm!738159 (= call!738164 (nullable!9596 (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun b!7960463 () Bool)

(assert (=> b!7960463 (= e!4694643 e!4694639)))

(declare-fun res!3155176 () Bool)

(assert (=> b!7960463 (=> res!3155176 e!4694639)))

(assert (=> b!7960463 (= res!3155176 (isEmpty!42901 (_1!38629 lt!2703248)))))

(declare-fun b!7960464 () Bool)

(declare-fun c!1461921 () Bool)

(assert (=> b!7960464 (= c!1461921 call!738164)))

(declare-fun lt!2703265 () Unit!170010)

(declare-fun lt!2703250 () Unit!170010)

(assert (=> b!7960464 (= lt!2703265 lt!2703250)))

(declare-fun lt!2703238 () List!74724)

(declare-fun lt!2703255 () C!43328)

(assert (=> b!7960464 (= (++!18365 (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600)) lt!2703238) input!7927)))

(assert (=> b!7960464 (= lt!2703250 (lemmaMoveElementToOtherListKeepsConcatEq!3530 lt!2703005 lt!2703255 lt!2703238 input!7927))))

(assert (=> b!7960464 (= lt!2703238 (tail!15784 (tail!15784 lt!2703000)))))

(assert (=> b!7960464 (= lt!2703255 (head!16247 (tail!15784 lt!2703000)))))

(declare-fun lt!2703253 () Unit!170010)

(declare-fun lt!2703245 () Unit!170010)

(assert (=> b!7960464 (= lt!2703253 lt!2703245)))

(assert (=> b!7960464 (isPrefix!6595 (++!18365 lt!2703005 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600)) input!7927)))

(assert (=> b!7960464 (= lt!2703245 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 lt!2703005 input!7927))))

(declare-fun lt!2703252 () Unit!170010)

(declare-fun lt!2703256 () Unit!170010)

(assert (=> b!7960464 (= lt!2703252 lt!2703256)))

(assert (=> b!7960464 (= lt!2703256 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 lt!2703005 input!7927))))

(assert (=> b!7960464 (= lt!2703241 (++!18365 lt!2703005 (Cons!74600 (head!16247 (tail!15784 lt!2703000)) Nil!74600)))))

(declare-fun lt!2703249 () Unit!170010)

(assert (=> b!7960464 (= lt!2703249 e!4694645)))

(declare-fun c!1461917 () Bool)

(assert (=> b!7960464 (= c!1461917 (= (size!43431 lt!2703005) (size!43431 input!7927)))))

(declare-fun lt!2703262 () Unit!170010)

(declare-fun lt!2703246 () Unit!170010)

(assert (=> b!7960464 (= lt!2703262 lt!2703246)))

(assert (=> b!7960464 (<= (size!43431 lt!2703005) (size!43431 input!7927))))

(assert (=> b!7960464 (= lt!2703246 (lemmaIsPrefixThenSmallerEqSize!1112 lt!2703005 input!7927))))

(assert (=> b!7960464 (= e!4694641 e!4694640)))

(declare-fun b!7960465 () Bool)

(assert (=> b!7960465 (= e!4694640 call!738161)))

(declare-fun b!7960466 () Bool)

(assert (=> b!7960466 (= e!4694642 lt!2703260)))

(declare-fun bm!738160 () Bool)

(declare-fun call!738167 () C!43328)

(assert (=> bm!738160 (= call!738167 (head!16247 (tail!15784 lt!2703000)))))

(declare-fun bm!738161 () Bool)

(assert (=> bm!738161 (= call!738165 (derivativeStep!6523 (derivativeStep!6523 r!24602 lt!2703001) call!738167))))

(declare-fun bm!738162 () Bool)

(assert (=> bm!738162 (= call!738162 (lemmaIsPrefixRefl!4063 input!7927 input!7927))))

(declare-fun b!7960467 () Bool)

(assert (=> b!7960467 (= e!4694644 (tuple2!70653 Nil!74600 input!7927))))

(declare-fun bm!738163 () Bool)

(assert (=> bm!738163 (= call!738168 (tail!15784 (tail!15784 lt!2703000)))))

(declare-fun b!7960468 () Bool)

(assert (=> b!7960468 (= e!4694638 e!4694641)))

(declare-fun c!1461920 () Bool)

(assert (=> b!7960468 (= c!1461920 (= (+ 1 lt!2703002) lt!2702998))))

(assert (= (and d!2377844 c!1461922) b!7960461))

(assert (= (and d!2377844 (not c!1461922)) b!7960468))

(assert (= (and b!7960468 c!1461920) b!7960459))

(assert (= (and b!7960468 (not c!1461920)) b!7960464))

(assert (= (and b!7960459 c!1461918) b!7960456))

(assert (= (and b!7960459 (not c!1461918)) b!7960467))

(assert (= (and b!7960464 c!1461917) b!7960458))

(assert (= (and b!7960464 (not c!1461917)) b!7960460))

(assert (= (and b!7960464 c!1461921) b!7960462))

(assert (= (and b!7960464 (not c!1461921)) b!7960465))

(assert (= (and b!7960462 c!1461919) b!7960455))

(assert (= (and b!7960462 (not c!1461919)) b!7960466))

(assert (= (or b!7960462 b!7960465) bm!738160))

(assert (= (or b!7960462 b!7960465) bm!738163))

(assert (= (or b!7960462 b!7960465) bm!738161))

(assert (= (or b!7960462 b!7960465) bm!738158))

(assert (= (or b!7960459 b!7960464) bm!738159))

(assert (= (or b!7960459 b!7960458) bm!738156))

(assert (= (or b!7960459 b!7960458) bm!738162))

(assert (= (or b!7960459 b!7960458) bm!738157))

(assert (= (and d!2377844 res!3155175) b!7960463))

(assert (= (and b!7960463 (not res!3155176)) b!7960457))

(assert (=> bm!738159 m!8340768))

(declare-fun m!8340992 () Bool)

(assert (=> bm!738159 m!8340992))

(assert (=> bm!738161 m!8340768))

(declare-fun m!8340994 () Bool)

(assert (=> bm!738161 m!8340994))

(declare-fun m!8340996 () Bool)

(assert (=> b!7960463 m!8340996))

(assert (=> bm!738157 m!8340760))

(declare-fun m!8340998 () Bool)

(assert (=> bm!738156 m!8340998))

(assert (=> bm!738162 m!8340758))

(declare-fun m!8341000 () Bool)

(assert (=> b!7960457 m!8341000))

(assert (=> b!7960457 m!8340812))

(declare-fun m!8341002 () Bool)

(assert (=> bm!738158 m!8341002))

(assert (=> bm!738163 m!8340770))

(declare-fun m!8341004 () Bool)

(assert (=> bm!738163 m!8341004))

(assert (=> bm!738160 m!8340770))

(declare-fun m!8341006 () Bool)

(assert (=> bm!738160 m!8341006))

(declare-fun m!8341008 () Bool)

(assert (=> b!7960462 m!8341008))

(assert (=> b!7960464 m!8340812))

(declare-fun m!8341010 () Bool)

(assert (=> b!7960464 m!8341010))

(declare-fun m!8341012 () Bool)

(assert (=> b!7960464 m!8341012))

(declare-fun m!8341014 () Bool)

(assert (=> b!7960464 m!8341014))

(declare-fun m!8341016 () Bool)

(assert (=> b!7960464 m!8341016))

(assert (=> b!7960464 m!8340752))

(assert (=> b!7960464 m!8341010))

(declare-fun m!8341018 () Bool)

(assert (=> b!7960464 m!8341018))

(declare-fun m!8341020 () Bool)

(assert (=> b!7960464 m!8341020))

(assert (=> b!7960464 m!8341012))

(declare-fun m!8341022 () Bool)

(assert (=> b!7960464 m!8341022))

(declare-fun m!8341024 () Bool)

(assert (=> b!7960464 m!8341024))

(assert (=> b!7960464 m!8340770))

(assert (=> b!7960464 m!8341004))

(declare-fun m!8341026 () Bool)

(assert (=> b!7960464 m!8341026))

(assert (=> b!7960464 m!8340770))

(assert (=> b!7960464 m!8341006))

(assert (=> b!7960464 m!8341020))

(declare-fun m!8341028 () Bool)

(assert (=> b!7960464 m!8341028))

(declare-fun m!8341030 () Bool)

(assert (=> d!2377844 m!8341030))

(assert (=> d!2377844 m!8341012))

(declare-fun m!8341032 () Bool)

(assert (=> d!2377844 m!8341032))

(declare-fun m!8341034 () Bool)

(assert (=> d!2377844 m!8341034))

(assert (=> d!2377844 m!8340770))

(declare-fun m!8341036 () Bool)

(assert (=> d!2377844 m!8341036))

(assert (=> d!2377844 m!8340770))

(declare-fun m!8341038 () Bool)

(assert (=> d!2377844 m!8341038))

(assert (=> d!2377844 m!8340770))

(assert (=> d!2377844 m!8341032))

(assert (=> d!2377844 m!8340768))

(declare-fun m!8341040 () Bool)

(assert (=> d!2377844 m!8341040))

(assert (=> d!2377844 m!8340768))

(declare-fun m!8341042 () Bool)

(assert (=> d!2377844 m!8341042))

(assert (=> b!7960209 d!2377844))

(declare-fun bm!738182 () Bool)

(declare-fun call!738188 () Regex!21495)

(declare-fun call!738190 () Regex!21495)

(assert (=> bm!738182 (= call!738188 call!738190)))

(declare-fun b!7960515 () Bool)

(declare-fun e!4694674 () Regex!21495)

(declare-fun call!738187 () Regex!21495)

(assert (=> b!7960515 (= e!4694674 (Union!21495 (Concat!30494 call!738187 (regTwo!43502 r!24602)) EmptyLang!21495))))

(declare-fun b!7960516 () Bool)

(declare-fun e!4694676 () Regex!21495)

(assert (=> b!7960516 (= e!4694676 (Concat!30494 call!738188 r!24602))))

(declare-fun d!2377846 () Bool)

(declare-fun lt!2703276 () Regex!21495)

(assert (=> d!2377846 (validRegex!11799 lt!2703276)))

(declare-fun e!4694675 () Regex!21495)

(assert (=> d!2377846 (= lt!2703276 e!4694675)))

(declare-fun c!1461941 () Bool)

(assert (=> d!2377846 (= c!1461941 (or ((_ is EmptyExpr!21495) r!24602) ((_ is EmptyLang!21495) r!24602)))))

(assert (=> d!2377846 (validRegex!11799 r!24602)))

(assert (=> d!2377846 (= (derivativeStep!6523 r!24602 lt!2703001) lt!2703276)))

(declare-fun b!7960517 () Bool)

(declare-fun e!4694677 () Regex!21495)

(assert (=> b!7960517 (= e!4694677 e!4694676)))

(declare-fun c!1461940 () Bool)

(assert (=> b!7960517 (= c!1461940 ((_ is Star!21495) r!24602))))

(declare-fun c!1461938 () Bool)

(declare-fun c!1461942 () Bool)

(declare-fun bm!738183 () Bool)

(assert (=> bm!738183 (= call!738190 (derivativeStep!6523 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))) lt!2703001))))

(declare-fun b!7960518 () Bool)

(assert (=> b!7960518 (= e!4694675 EmptyLang!21495)))

(declare-fun b!7960519 () Bool)

(declare-fun e!4694673 () Regex!21495)

(assert (=> b!7960519 (= e!4694673 (ite (= lt!2703001 (c!1461832 r!24602)) EmptyExpr!21495 EmptyLang!21495))))

(declare-fun call!738189 () Regex!21495)

(declare-fun b!7960520 () Bool)

(assert (=> b!7960520 (= e!4694674 (Union!21495 (Concat!30494 call!738189 (regTwo!43502 r!24602)) call!738187))))

(declare-fun bm!738184 () Bool)

(assert (=> bm!738184 (= call!738187 call!738188)))

(declare-fun bm!738185 () Bool)

(assert (=> bm!738185 (= call!738189 (derivativeStep!6523 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)) lt!2703001))))

(declare-fun b!7960521 () Bool)

(assert (=> b!7960521 (= c!1461942 (nullable!9596 (regOne!43502 r!24602)))))

(assert (=> b!7960521 (= e!4694676 e!4694674)))

(declare-fun b!7960522 () Bool)

(assert (=> b!7960522 (= e!4694675 e!4694673)))

(declare-fun c!1461939 () Bool)

(assert (=> b!7960522 (= c!1461939 ((_ is ElementMatch!21495) r!24602))))

(declare-fun b!7960523 () Bool)

(assert (=> b!7960523 (= c!1461938 ((_ is Union!21495) r!24602))))

(assert (=> b!7960523 (= e!4694673 e!4694677)))

(declare-fun b!7960524 () Bool)

(assert (=> b!7960524 (= e!4694677 (Union!21495 call!738189 call!738190))))

(assert (= (and d!2377846 c!1461941) b!7960518))

(assert (= (and d!2377846 (not c!1461941)) b!7960522))

(assert (= (and b!7960522 c!1461939) b!7960519))

(assert (= (and b!7960522 (not c!1461939)) b!7960523))

(assert (= (and b!7960523 c!1461938) b!7960524))

(assert (= (and b!7960523 (not c!1461938)) b!7960517))

(assert (= (and b!7960517 c!1461940) b!7960516))

(assert (= (and b!7960517 (not c!1461940)) b!7960521))

(assert (= (and b!7960521 c!1461942) b!7960520))

(assert (= (and b!7960521 (not c!1461942)) b!7960515))

(assert (= (or b!7960520 b!7960515) bm!738184))

(assert (= (or b!7960516 bm!738184) bm!738182))

(assert (= (or b!7960524 bm!738182) bm!738183))

(assert (= (or b!7960524 b!7960520) bm!738185))

(declare-fun m!8341064 () Bool)

(assert (=> d!2377846 m!8341064))

(assert (=> d!2377846 m!8340918))

(declare-fun m!8341066 () Bool)

(assert (=> bm!738183 m!8341066))

(declare-fun m!8341068 () Bool)

(assert (=> bm!738185 m!8341068))

(declare-fun m!8341070 () Bool)

(assert (=> b!7960521 m!8341070))

(assert (=> b!7960209 d!2377846))

(declare-fun d!2377858 () Bool)

(assert (=> d!2377858 (= (tail!15784 lt!2703000) (t!390467 lt!2703000))))

(assert (=> b!7960209 d!2377858))

(declare-fun d!2377862 () Bool)

(declare-fun lt!2703286 () Regex!21495)

(assert (=> d!2377862 (validRegex!11799 lt!2703286)))

(declare-fun e!4694683 () Regex!21495)

(assert (=> d!2377862 (= lt!2703286 e!4694683)))

(declare-fun c!1461945 () Bool)

(assert (=> d!2377862 (= c!1461945 ((_ is Cons!74600) testedP!447))))

(assert (=> d!2377862 (validRegex!11799 baseR!116)))

(assert (=> d!2377862 (= (derivative!681 baseR!116 testedP!447) lt!2703286)))

(declare-fun b!7960533 () Bool)

(assert (=> b!7960533 (= e!4694683 (derivative!681 (derivativeStep!6523 baseR!116 (h!81048 testedP!447)) (t!390467 testedP!447)))))

(declare-fun b!7960534 () Bool)

(assert (=> b!7960534 (= e!4694683 baseR!116)))

(assert (= (and d!2377862 c!1461945) b!7960533))

(assert (= (and d!2377862 (not c!1461945)) b!7960534))

(declare-fun m!8341082 () Bool)

(assert (=> d!2377862 m!8341082))

(assert (=> d!2377862 m!8340744))

(declare-fun m!8341084 () Bool)

(assert (=> b!7960533 m!8341084))

(assert (=> b!7960533 m!8341084))

(declare-fun m!8341086 () Bool)

(assert (=> b!7960533 m!8341086))

(assert (=> b!7960203 d!2377862))

(declare-fun d!2377868 () Bool)

(assert (=> d!2377868 (<= (size!43431 testedP!447) (size!43431 input!7927))))

(declare-fun lt!2703292 () Unit!170010)

(declare-fun choose!59986 (List!74724 List!74724) Unit!170010)

(assert (=> d!2377868 (= lt!2703292 (choose!59986 testedP!447 input!7927))))

(assert (=> d!2377868 (isPrefix!6595 testedP!447 input!7927)))

(assert (=> d!2377868 (= (lemmaIsPrefixThenSmallerEqSize!1112 testedP!447 input!7927) lt!2703292)))

(declare-fun bs!1969721 () Bool)

(assert (= bs!1969721 d!2377868))

(assert (=> bs!1969721 m!8340750))

(assert (=> bs!1969721 m!8340752))

(declare-fun m!8341090 () Bool)

(assert (=> bs!1969721 m!8341090))

(assert (=> bs!1969721 m!8340766))

(assert (=> b!7960197 d!2377868))

(declare-fun b!7960539 () Bool)

(declare-fun e!4694686 () Bool)

(declare-fun tp!2371577 () Bool)

(assert (=> b!7960539 (= e!4694686 (and tp_is_empty!53533 tp!2371577))))

(assert (=> b!7960206 (= tp!2371565 e!4694686)))

(assert (= (and b!7960206 ((_ is Cons!74600) (t!390467 input!7927))) b!7960539))

(declare-fun b!7960553 () Bool)

(declare-fun e!4694689 () Bool)

(declare-fun tp!2371589 () Bool)

(declare-fun tp!2371590 () Bool)

(assert (=> b!7960553 (= e!4694689 (and tp!2371589 tp!2371590))))

(declare-fun b!7960550 () Bool)

(assert (=> b!7960550 (= e!4694689 tp_is_empty!53533)))

(declare-fun b!7960551 () Bool)

(declare-fun tp!2371592 () Bool)

(declare-fun tp!2371588 () Bool)

(assert (=> b!7960551 (= e!4694689 (and tp!2371592 tp!2371588))))

(assert (=> b!7960200 (= tp!2371572 e!4694689)))

(declare-fun b!7960552 () Bool)

(declare-fun tp!2371591 () Bool)

(assert (=> b!7960552 (= e!4694689 tp!2371591)))

(assert (= (and b!7960200 ((_ is ElementMatch!21495) (regOne!43503 baseR!116))) b!7960550))

(assert (= (and b!7960200 ((_ is Concat!30494) (regOne!43503 baseR!116))) b!7960551))

(assert (= (and b!7960200 ((_ is Star!21495) (regOne!43503 baseR!116))) b!7960552))

(assert (= (and b!7960200 ((_ is Union!21495) (regOne!43503 baseR!116))) b!7960553))

(declare-fun b!7960557 () Bool)

(declare-fun e!4694690 () Bool)

(declare-fun tp!2371594 () Bool)

(declare-fun tp!2371595 () Bool)

(assert (=> b!7960557 (= e!4694690 (and tp!2371594 tp!2371595))))

(declare-fun b!7960554 () Bool)

(assert (=> b!7960554 (= e!4694690 tp_is_empty!53533)))

(declare-fun b!7960555 () Bool)

(declare-fun tp!2371597 () Bool)

(declare-fun tp!2371593 () Bool)

(assert (=> b!7960555 (= e!4694690 (and tp!2371597 tp!2371593))))

(assert (=> b!7960200 (= tp!2371567 e!4694690)))

(declare-fun b!7960556 () Bool)

(declare-fun tp!2371596 () Bool)

(assert (=> b!7960556 (= e!4694690 tp!2371596)))

(assert (= (and b!7960200 ((_ is ElementMatch!21495) (regTwo!43503 baseR!116))) b!7960554))

(assert (= (and b!7960200 ((_ is Concat!30494) (regTwo!43503 baseR!116))) b!7960555))

(assert (= (and b!7960200 ((_ is Star!21495) (regTwo!43503 baseR!116))) b!7960556))

(assert (= (and b!7960200 ((_ is Union!21495) (regTwo!43503 baseR!116))) b!7960557))

(declare-fun b!7960561 () Bool)

(declare-fun e!4694691 () Bool)

(declare-fun tp!2371599 () Bool)

(declare-fun tp!2371600 () Bool)

(assert (=> b!7960561 (= e!4694691 (and tp!2371599 tp!2371600))))

(declare-fun b!7960558 () Bool)

(assert (=> b!7960558 (= e!4694691 tp_is_empty!53533)))

(declare-fun b!7960559 () Bool)

(declare-fun tp!2371602 () Bool)

(declare-fun tp!2371598 () Bool)

(assert (=> b!7960559 (= e!4694691 (and tp!2371602 tp!2371598))))

(assert (=> b!7960211 (= tp!2371566 e!4694691)))

(declare-fun b!7960560 () Bool)

(declare-fun tp!2371601 () Bool)

(assert (=> b!7960560 (= e!4694691 tp!2371601)))

(assert (= (and b!7960211 ((_ is ElementMatch!21495) (reg!21824 baseR!116))) b!7960558))

(assert (= (and b!7960211 ((_ is Concat!30494) (reg!21824 baseR!116))) b!7960559))

(assert (= (and b!7960211 ((_ is Star!21495) (reg!21824 baseR!116))) b!7960560))

(assert (= (and b!7960211 ((_ is Union!21495) (reg!21824 baseR!116))) b!7960561))

(declare-fun b!7960565 () Bool)

(declare-fun e!4694692 () Bool)

(declare-fun tp!2371604 () Bool)

(declare-fun tp!2371605 () Bool)

(assert (=> b!7960565 (= e!4694692 (and tp!2371604 tp!2371605))))

(declare-fun b!7960562 () Bool)

(assert (=> b!7960562 (= e!4694692 tp_is_empty!53533)))

(declare-fun b!7960563 () Bool)

(declare-fun tp!2371607 () Bool)

(declare-fun tp!2371603 () Bool)

(assert (=> b!7960563 (= e!4694692 (and tp!2371607 tp!2371603))))

(assert (=> b!7960204 (= tp!2371569 e!4694692)))

(declare-fun b!7960564 () Bool)

(declare-fun tp!2371606 () Bool)

(assert (=> b!7960564 (= e!4694692 tp!2371606)))

(assert (= (and b!7960204 ((_ is ElementMatch!21495) (regOne!43503 r!24602))) b!7960562))

(assert (= (and b!7960204 ((_ is Concat!30494) (regOne!43503 r!24602))) b!7960563))

(assert (= (and b!7960204 ((_ is Star!21495) (regOne!43503 r!24602))) b!7960564))

(assert (= (and b!7960204 ((_ is Union!21495) (regOne!43503 r!24602))) b!7960565))

(declare-fun b!7960569 () Bool)

(declare-fun e!4694693 () Bool)

(declare-fun tp!2371609 () Bool)

(declare-fun tp!2371610 () Bool)

(assert (=> b!7960569 (= e!4694693 (and tp!2371609 tp!2371610))))

(declare-fun b!7960566 () Bool)

(assert (=> b!7960566 (= e!4694693 tp_is_empty!53533)))

(declare-fun b!7960567 () Bool)

(declare-fun tp!2371612 () Bool)

(declare-fun tp!2371608 () Bool)

(assert (=> b!7960567 (= e!4694693 (and tp!2371612 tp!2371608))))

(assert (=> b!7960204 (= tp!2371570 e!4694693)))

(declare-fun b!7960568 () Bool)

(declare-fun tp!2371611 () Bool)

(assert (=> b!7960568 (= e!4694693 tp!2371611)))

(assert (= (and b!7960204 ((_ is ElementMatch!21495) (regTwo!43503 r!24602))) b!7960566))

(assert (= (and b!7960204 ((_ is Concat!30494) (regTwo!43503 r!24602))) b!7960567))

(assert (= (and b!7960204 ((_ is Star!21495) (regTwo!43503 r!24602))) b!7960568))

(assert (= (and b!7960204 ((_ is Union!21495) (regTwo!43503 r!24602))) b!7960569))

(declare-fun b!7960573 () Bool)

(declare-fun e!4694694 () Bool)

(declare-fun tp!2371614 () Bool)

(declare-fun tp!2371615 () Bool)

(assert (=> b!7960573 (= e!4694694 (and tp!2371614 tp!2371615))))

(declare-fun b!7960570 () Bool)

(assert (=> b!7960570 (= e!4694694 tp_is_empty!53533)))

(declare-fun b!7960571 () Bool)

(declare-fun tp!2371617 () Bool)

(declare-fun tp!2371613 () Bool)

(assert (=> b!7960571 (= e!4694694 (and tp!2371617 tp!2371613))))

(assert (=> b!7960215 (= tp!2371568 e!4694694)))

(declare-fun b!7960572 () Bool)

(declare-fun tp!2371616 () Bool)

(assert (=> b!7960572 (= e!4694694 tp!2371616)))

(assert (= (and b!7960215 ((_ is ElementMatch!21495) (regOne!43502 baseR!116))) b!7960570))

(assert (= (and b!7960215 ((_ is Concat!30494) (regOne!43502 baseR!116))) b!7960571))

(assert (= (and b!7960215 ((_ is Star!21495) (regOne!43502 baseR!116))) b!7960572))

(assert (= (and b!7960215 ((_ is Union!21495) (regOne!43502 baseR!116))) b!7960573))

(declare-fun b!7960577 () Bool)

(declare-fun e!4694695 () Bool)

(declare-fun tp!2371619 () Bool)

(declare-fun tp!2371620 () Bool)

(assert (=> b!7960577 (= e!4694695 (and tp!2371619 tp!2371620))))

(declare-fun b!7960574 () Bool)

(assert (=> b!7960574 (= e!4694695 tp_is_empty!53533)))

(declare-fun b!7960575 () Bool)

(declare-fun tp!2371622 () Bool)

(declare-fun tp!2371618 () Bool)

(assert (=> b!7960575 (= e!4694695 (and tp!2371622 tp!2371618))))

(assert (=> b!7960215 (= tp!2371564 e!4694695)))

(declare-fun b!7960576 () Bool)

(declare-fun tp!2371621 () Bool)

(assert (=> b!7960576 (= e!4694695 tp!2371621)))

(assert (= (and b!7960215 ((_ is ElementMatch!21495) (regTwo!43502 baseR!116))) b!7960574))

(assert (= (and b!7960215 ((_ is Concat!30494) (regTwo!43502 baseR!116))) b!7960575))

(assert (= (and b!7960215 ((_ is Star!21495) (regTwo!43502 baseR!116))) b!7960576))

(assert (= (and b!7960215 ((_ is Union!21495) (regTwo!43502 baseR!116))) b!7960577))

(declare-fun b!7960581 () Bool)

(declare-fun e!4694696 () Bool)

(declare-fun tp!2371624 () Bool)

(declare-fun tp!2371625 () Bool)

(assert (=> b!7960581 (= e!4694696 (and tp!2371624 tp!2371625))))

(declare-fun b!7960578 () Bool)

(assert (=> b!7960578 (= e!4694696 tp_is_empty!53533)))

(declare-fun b!7960579 () Bool)

(declare-fun tp!2371627 () Bool)

(declare-fun tp!2371623 () Bool)

(assert (=> b!7960579 (= e!4694696 (and tp!2371627 tp!2371623))))

(assert (=> b!7960198 (= tp!2371571 e!4694696)))

(declare-fun b!7960580 () Bool)

(declare-fun tp!2371626 () Bool)

(assert (=> b!7960580 (= e!4694696 tp!2371626)))

(assert (= (and b!7960198 ((_ is ElementMatch!21495) (reg!21824 r!24602))) b!7960578))

(assert (= (and b!7960198 ((_ is Concat!30494) (reg!21824 r!24602))) b!7960579))

(assert (= (and b!7960198 ((_ is Star!21495) (reg!21824 r!24602))) b!7960580))

(assert (= (and b!7960198 ((_ is Union!21495) (reg!21824 r!24602))) b!7960581))

(declare-fun b!7960582 () Bool)

(declare-fun e!4694697 () Bool)

(declare-fun tp!2371628 () Bool)

(assert (=> b!7960582 (= e!4694697 (and tp_is_empty!53533 tp!2371628))))

(assert (=> b!7960213 (= tp!2371563 e!4694697)))

(assert (= (and b!7960213 ((_ is Cons!74600) (t!390467 testedP!447))) b!7960582))

(declare-fun b!7960586 () Bool)

(declare-fun e!4694698 () Bool)

(declare-fun tp!2371630 () Bool)

(declare-fun tp!2371631 () Bool)

(assert (=> b!7960586 (= e!4694698 (and tp!2371630 tp!2371631))))

(declare-fun b!7960583 () Bool)

(assert (=> b!7960583 (= e!4694698 tp_is_empty!53533)))

(declare-fun b!7960584 () Bool)

(declare-fun tp!2371633 () Bool)

(declare-fun tp!2371629 () Bool)

(assert (=> b!7960584 (= e!4694698 (and tp!2371633 tp!2371629))))

(assert (=> b!7960212 (= tp!2371574 e!4694698)))

(declare-fun b!7960585 () Bool)

(declare-fun tp!2371632 () Bool)

(assert (=> b!7960585 (= e!4694698 tp!2371632)))

(assert (= (and b!7960212 ((_ is ElementMatch!21495) (regOne!43502 r!24602))) b!7960583))

(assert (= (and b!7960212 ((_ is Concat!30494) (regOne!43502 r!24602))) b!7960584))

(assert (= (and b!7960212 ((_ is Star!21495) (regOne!43502 r!24602))) b!7960585))

(assert (= (and b!7960212 ((_ is Union!21495) (regOne!43502 r!24602))) b!7960586))

(declare-fun b!7960594 () Bool)

(declare-fun e!4694701 () Bool)

(declare-fun tp!2371635 () Bool)

(declare-fun tp!2371636 () Bool)

(assert (=> b!7960594 (= e!4694701 (and tp!2371635 tp!2371636))))

(declare-fun b!7960591 () Bool)

(assert (=> b!7960591 (= e!4694701 tp_is_empty!53533)))

(declare-fun b!7960592 () Bool)

(declare-fun tp!2371638 () Bool)

(declare-fun tp!2371634 () Bool)

(assert (=> b!7960592 (= e!4694701 (and tp!2371638 tp!2371634))))

(assert (=> b!7960212 (= tp!2371573 e!4694701)))

(declare-fun b!7960593 () Bool)

(declare-fun tp!2371637 () Bool)

(assert (=> b!7960593 (= e!4694701 tp!2371637)))

(assert (= (and b!7960212 ((_ is ElementMatch!21495) (regTwo!43502 r!24602))) b!7960591))

(assert (= (and b!7960212 ((_ is Concat!30494) (regTwo!43502 r!24602))) b!7960592))

(assert (= (and b!7960212 ((_ is Star!21495) (regTwo!43502 r!24602))) b!7960593))

(assert (= (and b!7960212 ((_ is Union!21495) (regTwo!43502 r!24602))) b!7960594))

(check-sat (not b!7960552) (not b!7960521) (not b!7960585) tp_is_empty!53533 (not b!7960555) (not bm!738134) (not b!7960572) (not bm!738156) (not d!2377862) (not d!2377816) (not b!7960559) (not bm!738135) (not d!2377794) (not b!7960557) (not b!7960561) (not bm!738129) (not bm!738132) (not d!2377796) (not b!7960573) (not b!7960433) (not b!7960432) (not b!7960375) (not b!7960571) (not bm!738160) (not b!7960251) (not b!7960539) (not b!7960568) (not b!7960576) (not b!7960226) (not b!7960594) (not d!2377834) (not b!7960434) (not bm!738162) (not d!2377846) (not bm!738136) (not bm!738157) (not d!2377844) (not b!7960592) (not bm!738159) (not b!7960247) (not b!7960593) (not b!7960368) (not bm!738183) (not b!7960373) (not bm!738161) (not bm!738158) (not bm!738131) (not d!2377792) (not d!2377826) (not b!7960580) (not b!7960563) (not b!7960567) (not bm!738163) (not b!7960564) (not bm!738133) (not b!7960250) (not d!2377840) (not b!7960246) (not d!2377868) (not bm!738088) (not b!7960533) (not bm!738185) (not bm!738130) (not bm!738087) (not b!7960575) (not b!7960252) (not b!7960553) (not b!7960463) (not b!7960579) (not b!7960227) (not b!7960374) (not b!7960271) (not b!7960577) (not b!7960582) (not b!7960581) (not b!7960462) (not b!7960569) (not b!7960285) (not b!7960430) (not b!7960457) (not b!7960556) (not b!7960560) (not b!7960427) (not b!7960551) (not b!7960584) (not b!7960464) (not b!7960248) (not b!7960586) (not b!7960565))
(check-sat)
(get-model)

(declare-fun d!2377876 () Bool)

(declare-fun lt!2703296 () List!74724)

(assert (=> d!2377876 (= (++!18365 (t!390467 testedP!447) lt!2703296) (tail!15784 input!7927))))

(declare-fun e!4694722 () List!74724)

(assert (=> d!2377876 (= lt!2703296 e!4694722)))

(declare-fun c!1461949 () Bool)

(assert (=> d!2377876 (= c!1461949 ((_ is Cons!74600) (t!390467 testedP!447)))))

(assert (=> d!2377876 (>= (size!43431 (tail!15784 input!7927)) (size!43431 (t!390467 testedP!447)))))

(assert (=> d!2377876 (= (getSuffix!3798 (tail!15784 input!7927) (t!390467 testedP!447)) lt!2703296)))

(declare-fun b!7960659 () Bool)

(assert (=> b!7960659 (= e!4694722 (getSuffix!3798 (tail!15784 (tail!15784 input!7927)) (t!390467 (t!390467 testedP!447))))))

(declare-fun b!7960660 () Bool)

(assert (=> b!7960660 (= e!4694722 (tail!15784 input!7927))))

(assert (= (and d!2377876 c!1461949) b!7960659))

(assert (= (and d!2377876 (not c!1461949)) b!7960660))

(declare-fun m!8341106 () Bool)

(assert (=> d!2377876 m!8341106))

(assert (=> d!2377876 m!8340816))

(declare-fun m!8341108 () Bool)

(assert (=> d!2377876 m!8341108))

(assert (=> d!2377876 m!8340950))

(assert (=> b!7960659 m!8340816))

(declare-fun m!8341110 () Bool)

(assert (=> b!7960659 m!8341110))

(assert (=> b!7960659 m!8341110))

(declare-fun m!8341112 () Bool)

(assert (=> b!7960659 m!8341112))

(assert (=> b!7960427 d!2377876))

(declare-fun d!2377878 () Bool)

(assert (=> d!2377878 (= (tail!15784 input!7927) (t!390467 input!7927))))

(assert (=> b!7960427 d!2377878))

(declare-fun d!2377880 () Bool)

(assert (=> d!2377880 (= (isEmpty!42901 (_1!38629 lt!2703190)) ((_ is Nil!74600) (_1!38629 lt!2703190)))))

(assert (=> b!7960373 d!2377880))

(declare-fun d!2377882 () Bool)

(declare-fun lt!2703297 () Regex!21495)

(assert (=> d!2377882 (validRegex!11799 lt!2703297)))

(declare-fun e!4694723 () Regex!21495)

(assert (=> d!2377882 (= lt!2703297 e!4694723)))

(declare-fun c!1461950 () Bool)

(assert (=> d!2377882 (= c!1461950 ((_ is Cons!74600) (t!390467 testedP!447)))))

(assert (=> d!2377882 (validRegex!11799 (derivativeStep!6523 baseR!116 (h!81048 testedP!447)))))

(assert (=> d!2377882 (= (derivative!681 (derivativeStep!6523 baseR!116 (h!81048 testedP!447)) (t!390467 testedP!447)) lt!2703297)))

(declare-fun b!7960661 () Bool)

(assert (=> b!7960661 (= e!4694723 (derivative!681 (derivativeStep!6523 (derivativeStep!6523 baseR!116 (h!81048 testedP!447)) (h!81048 (t!390467 testedP!447))) (t!390467 (t!390467 testedP!447))))))

(declare-fun b!7960662 () Bool)

(assert (=> b!7960662 (= e!4694723 (derivativeStep!6523 baseR!116 (h!81048 testedP!447)))))

(assert (= (and d!2377882 c!1461950) b!7960661))

(assert (= (and d!2377882 (not c!1461950)) b!7960662))

(declare-fun m!8341114 () Bool)

(assert (=> d!2377882 m!8341114))

(assert (=> d!2377882 m!8341084))

(declare-fun m!8341116 () Bool)

(assert (=> d!2377882 m!8341116))

(assert (=> b!7960661 m!8341084))

(declare-fun m!8341118 () Bool)

(assert (=> b!7960661 m!8341118))

(assert (=> b!7960661 m!8341118))

(declare-fun m!8341120 () Bool)

(assert (=> b!7960661 m!8341120))

(assert (=> b!7960533 d!2377882))

(declare-fun bm!738186 () Bool)

(declare-fun call!738192 () Regex!21495)

(declare-fun call!738194 () Regex!21495)

(assert (=> bm!738186 (= call!738192 call!738194)))

(declare-fun b!7960663 () Bool)

(declare-fun e!4694725 () Regex!21495)

(declare-fun call!738191 () Regex!21495)

(assert (=> b!7960663 (= e!4694725 (Union!21495 (Concat!30494 call!738191 (regTwo!43502 baseR!116)) EmptyLang!21495))))

(declare-fun b!7960664 () Bool)

(declare-fun e!4694727 () Regex!21495)

(assert (=> b!7960664 (= e!4694727 (Concat!30494 call!738192 baseR!116))))

(declare-fun d!2377884 () Bool)

(declare-fun lt!2703298 () Regex!21495)

(assert (=> d!2377884 (validRegex!11799 lt!2703298)))

(declare-fun e!4694726 () Regex!21495)

(assert (=> d!2377884 (= lt!2703298 e!4694726)))

(declare-fun c!1461954 () Bool)

(assert (=> d!2377884 (= c!1461954 (or ((_ is EmptyExpr!21495) baseR!116) ((_ is EmptyLang!21495) baseR!116)))))

(assert (=> d!2377884 (validRegex!11799 baseR!116)))

(assert (=> d!2377884 (= (derivativeStep!6523 baseR!116 (h!81048 testedP!447)) lt!2703298)))

(declare-fun b!7960665 () Bool)

(declare-fun e!4694728 () Regex!21495)

(assert (=> b!7960665 (= e!4694728 e!4694727)))

(declare-fun c!1461953 () Bool)

(assert (=> b!7960665 (= c!1461953 ((_ is Star!21495) baseR!116))))

(declare-fun c!1461955 () Bool)

(declare-fun bm!738187 () Bool)

(declare-fun c!1461951 () Bool)

(assert (=> bm!738187 (= call!738194 (derivativeStep!6523 (ite c!1461951 (regTwo!43503 baseR!116) (ite c!1461953 (reg!21824 baseR!116) (ite c!1461955 (regTwo!43502 baseR!116) (regOne!43502 baseR!116)))) (h!81048 testedP!447)))))

(declare-fun b!7960666 () Bool)

(assert (=> b!7960666 (= e!4694726 EmptyLang!21495)))

(declare-fun b!7960667 () Bool)

(declare-fun e!4694724 () Regex!21495)

(assert (=> b!7960667 (= e!4694724 (ite (= (h!81048 testedP!447) (c!1461832 baseR!116)) EmptyExpr!21495 EmptyLang!21495))))

(declare-fun b!7960668 () Bool)

(declare-fun call!738193 () Regex!21495)

(assert (=> b!7960668 (= e!4694725 (Union!21495 (Concat!30494 call!738193 (regTwo!43502 baseR!116)) call!738191))))

(declare-fun bm!738188 () Bool)

(assert (=> bm!738188 (= call!738191 call!738192)))

(declare-fun bm!738189 () Bool)

(assert (=> bm!738189 (= call!738193 (derivativeStep!6523 (ite c!1461951 (regOne!43503 baseR!116) (regOne!43502 baseR!116)) (h!81048 testedP!447)))))

(declare-fun b!7960669 () Bool)

(assert (=> b!7960669 (= c!1461955 (nullable!9596 (regOne!43502 baseR!116)))))

(assert (=> b!7960669 (= e!4694727 e!4694725)))

(declare-fun b!7960670 () Bool)

(assert (=> b!7960670 (= e!4694726 e!4694724)))

(declare-fun c!1461952 () Bool)

(assert (=> b!7960670 (= c!1461952 ((_ is ElementMatch!21495) baseR!116))))

(declare-fun b!7960671 () Bool)

(assert (=> b!7960671 (= c!1461951 ((_ is Union!21495) baseR!116))))

(assert (=> b!7960671 (= e!4694724 e!4694728)))

(declare-fun b!7960672 () Bool)

(assert (=> b!7960672 (= e!4694728 (Union!21495 call!738193 call!738194))))

(assert (= (and d!2377884 c!1461954) b!7960666))

(assert (= (and d!2377884 (not c!1461954)) b!7960670))

(assert (= (and b!7960670 c!1461952) b!7960667))

(assert (= (and b!7960670 (not c!1461952)) b!7960671))

(assert (= (and b!7960671 c!1461951) b!7960672))

(assert (= (and b!7960671 (not c!1461951)) b!7960665))

(assert (= (and b!7960665 c!1461953) b!7960664))

(assert (= (and b!7960665 (not c!1461953)) b!7960669))

(assert (= (and b!7960669 c!1461955) b!7960668))

(assert (= (and b!7960669 (not c!1461955)) b!7960663))

(assert (= (or b!7960668 b!7960663) bm!738188))

(assert (= (or b!7960664 bm!738188) bm!738186))

(assert (= (or b!7960672 bm!738186) bm!738187))

(assert (= (or b!7960672 b!7960668) bm!738189))

(declare-fun m!8341122 () Bool)

(assert (=> d!2377884 m!8341122))

(assert (=> d!2377884 m!8340744))

(declare-fun m!8341124 () Bool)

(assert (=> bm!738187 m!8341124))

(declare-fun m!8341126 () Bool)

(assert (=> bm!738189 m!8341126))

(declare-fun m!8341128 () Bool)

(assert (=> b!7960669 m!8341128))

(assert (=> b!7960533 d!2377884))

(assert (=> b!7960464 d!2377814))

(declare-fun b!7960676 () Bool)

(declare-fun e!4694730 () Bool)

(assert (=> b!7960676 (= e!4694730 (>= (size!43431 input!7927) (size!43431 (++!18365 lt!2703005 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600)))))))

(declare-fun d!2377886 () Bool)

(assert (=> d!2377886 e!4694730))

(declare-fun res!3155206 () Bool)

(assert (=> d!2377886 (=> res!3155206 e!4694730)))

(declare-fun lt!2703299 () Bool)

(assert (=> d!2377886 (= res!3155206 (not lt!2703299))))

(declare-fun e!4694731 () Bool)

(assert (=> d!2377886 (= lt!2703299 e!4694731)))

(declare-fun res!3155204 () Bool)

(assert (=> d!2377886 (=> res!3155204 e!4694731)))

(assert (=> d!2377886 (= res!3155204 ((_ is Nil!74600) (++!18365 lt!2703005 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600))))))

(assert (=> d!2377886 (= (isPrefix!6595 (++!18365 lt!2703005 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600)) input!7927) lt!2703299)))

(declare-fun b!7960675 () Bool)

(declare-fun e!4694729 () Bool)

(assert (=> b!7960675 (= e!4694729 (isPrefix!6595 (tail!15784 (++!18365 lt!2703005 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600))) (tail!15784 input!7927)))))

(declare-fun b!7960673 () Bool)

(assert (=> b!7960673 (= e!4694731 e!4694729)))

(declare-fun res!3155205 () Bool)

(assert (=> b!7960673 (=> (not res!3155205) (not e!4694729))))

(assert (=> b!7960673 (= res!3155205 (not ((_ is Nil!74600) input!7927)))))

(declare-fun b!7960674 () Bool)

(declare-fun res!3155203 () Bool)

(assert (=> b!7960674 (=> (not res!3155203) (not e!4694729))))

(assert (=> b!7960674 (= res!3155203 (= (head!16247 (++!18365 lt!2703005 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600))) (head!16247 input!7927)))))

(assert (= (and d!2377886 (not res!3155204)) b!7960673))

(assert (= (and b!7960673 res!3155205) b!7960674))

(assert (= (and b!7960674 res!3155203) b!7960675))

(assert (= (and d!2377886 (not res!3155206)) b!7960676))

(assert (=> b!7960676 m!8340752))

(assert (=> b!7960676 m!8341010))

(declare-fun m!8341130 () Bool)

(assert (=> b!7960676 m!8341130))

(assert (=> b!7960675 m!8341010))

(declare-fun m!8341132 () Bool)

(assert (=> b!7960675 m!8341132))

(assert (=> b!7960675 m!8340816))

(assert (=> b!7960675 m!8341132))

(assert (=> b!7960675 m!8340816))

(declare-fun m!8341134 () Bool)

(assert (=> b!7960675 m!8341134))

(assert (=> b!7960674 m!8341010))

(declare-fun m!8341136 () Bool)

(assert (=> b!7960674 m!8341136))

(assert (=> b!7960674 m!8340822))

(assert (=> b!7960464 d!2377886))

(declare-fun d!2377888 () Bool)

(assert (=> d!2377888 (= (++!18365 (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600)) lt!2703238) input!7927)))

(declare-fun lt!2703302 () Unit!170010)

(declare-fun choose!59988 (List!74724 C!43328 List!74724 List!74724) Unit!170010)

(assert (=> d!2377888 (= lt!2703302 (choose!59988 lt!2703005 lt!2703255 lt!2703238 input!7927))))

(assert (=> d!2377888 (= (++!18365 lt!2703005 (Cons!74600 lt!2703255 lt!2703238)) input!7927)))

(assert (=> d!2377888 (= (lemmaMoveElementToOtherListKeepsConcatEq!3530 lt!2703005 lt!2703255 lt!2703238 input!7927) lt!2703302)))

(declare-fun bs!1969723 () Bool)

(assert (= bs!1969723 d!2377888))

(assert (=> bs!1969723 m!8341020))

(assert (=> bs!1969723 m!8341020))

(assert (=> bs!1969723 m!8341028))

(declare-fun m!8341138 () Bool)

(assert (=> bs!1969723 m!8341138))

(declare-fun m!8341140 () Bool)

(assert (=> bs!1969723 m!8341140))

(assert (=> b!7960464 d!2377888))

(declare-fun d!2377890 () Bool)

(assert (=> d!2377890 (= (head!16247 (tail!15784 lt!2703000)) (h!81048 (tail!15784 lt!2703000)))))

(assert (=> b!7960464 d!2377890))

(declare-fun d!2377892 () Bool)

(declare-fun e!4694733 () Bool)

(assert (=> d!2377892 e!4694733))

(declare-fun res!3155208 () Bool)

(assert (=> d!2377892 (=> (not res!3155208) (not e!4694733))))

(declare-fun lt!2703303 () List!74724)

(assert (=> d!2377892 (= res!3155208 (= (content!15841 lt!2703303) ((_ map or) (content!15841 lt!2703005) (content!15841 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600)))))))

(declare-fun e!4694732 () List!74724)

(assert (=> d!2377892 (= lt!2703303 e!4694732)))

(declare-fun c!1461956 () Bool)

(assert (=> d!2377892 (= c!1461956 ((_ is Nil!74600) lt!2703005))))

(assert (=> d!2377892 (= (++!18365 lt!2703005 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600)) lt!2703303)))

(declare-fun b!7960678 () Bool)

(assert (=> b!7960678 (= e!4694732 (Cons!74600 (h!81048 lt!2703005) (++!18365 (t!390467 lt!2703005) (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600))))))

(declare-fun b!7960680 () Bool)

(assert (=> b!7960680 (= e!4694733 (or (not (= (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600) Nil!74600)) (= lt!2703303 lt!2703005)))))

(declare-fun b!7960679 () Bool)

(declare-fun res!3155207 () Bool)

(assert (=> b!7960679 (=> (not res!3155207) (not e!4694733))))

(assert (=> b!7960679 (= res!3155207 (= (size!43431 lt!2703303) (+ (size!43431 lt!2703005) (size!43431 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600)))))))

(declare-fun b!7960677 () Bool)

(assert (=> b!7960677 (= e!4694732 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600))))

(assert (= (and d!2377892 c!1461956) b!7960677))

(assert (= (and d!2377892 (not c!1461956)) b!7960678))

(assert (= (and d!2377892 res!3155208) b!7960679))

(assert (= (and b!7960679 res!3155207) b!7960680))

(declare-fun m!8341142 () Bool)

(assert (=> d!2377892 m!8341142))

(declare-fun m!8341144 () Bool)

(assert (=> d!2377892 m!8341144))

(declare-fun m!8341146 () Bool)

(assert (=> d!2377892 m!8341146))

(declare-fun m!8341148 () Bool)

(assert (=> b!7960678 m!8341148))

(declare-fun m!8341150 () Bool)

(assert (=> b!7960679 m!8341150))

(assert (=> b!7960679 m!8340812))

(declare-fun m!8341152 () Bool)

(assert (=> b!7960679 m!8341152))

(assert (=> b!7960464 d!2377892))

(declare-fun d!2377894 () Bool)

(assert (=> d!2377894 (= (head!16247 (getSuffix!3798 input!7927 lt!2703005)) (h!81048 (getSuffix!3798 input!7927 lt!2703005)))))

(assert (=> b!7960464 d!2377894))

(declare-fun d!2377896 () Bool)

(declare-fun lt!2703304 () List!74724)

(assert (=> d!2377896 (= (++!18365 lt!2703005 lt!2703304) input!7927)))

(declare-fun e!4694734 () List!74724)

(assert (=> d!2377896 (= lt!2703304 e!4694734)))

(declare-fun c!1461957 () Bool)

(assert (=> d!2377896 (= c!1461957 ((_ is Cons!74600) lt!2703005))))

(assert (=> d!2377896 (>= (size!43431 input!7927) (size!43431 lt!2703005))))

(assert (=> d!2377896 (= (getSuffix!3798 input!7927 lt!2703005) lt!2703304)))

(declare-fun b!7960681 () Bool)

(assert (=> b!7960681 (= e!4694734 (getSuffix!3798 (tail!15784 input!7927) (t!390467 lt!2703005)))))

(declare-fun b!7960682 () Bool)

(assert (=> b!7960682 (= e!4694734 input!7927)))

(assert (= (and d!2377896 c!1461957) b!7960681))

(assert (= (and d!2377896 (not c!1461957)) b!7960682))

(declare-fun m!8341154 () Bool)

(assert (=> d!2377896 m!8341154))

(assert (=> d!2377896 m!8340752))

(assert (=> d!2377896 m!8340812))

(assert (=> b!7960681 m!8340816))

(assert (=> b!7960681 m!8340816))

(declare-fun m!8341156 () Bool)

(assert (=> b!7960681 m!8341156))

(assert (=> b!7960464 d!2377896))

(declare-fun d!2377898 () Bool)

(declare-fun e!4694736 () Bool)

(assert (=> d!2377898 e!4694736))

(declare-fun res!3155210 () Bool)

(assert (=> d!2377898 (=> (not res!3155210) (not e!4694736))))

(declare-fun lt!2703305 () List!74724)

(assert (=> d!2377898 (= res!3155210 (= (content!15841 lt!2703305) ((_ map or) (content!15841 lt!2703005) (content!15841 (Cons!74600 lt!2703255 Nil!74600)))))))

(declare-fun e!4694735 () List!74724)

(assert (=> d!2377898 (= lt!2703305 e!4694735)))

(declare-fun c!1461958 () Bool)

(assert (=> d!2377898 (= c!1461958 ((_ is Nil!74600) lt!2703005))))

(assert (=> d!2377898 (= (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600)) lt!2703305)))

(declare-fun b!7960684 () Bool)

(assert (=> b!7960684 (= e!4694735 (Cons!74600 (h!81048 lt!2703005) (++!18365 (t!390467 lt!2703005) (Cons!74600 lt!2703255 Nil!74600))))))

(declare-fun b!7960686 () Bool)

(assert (=> b!7960686 (= e!4694736 (or (not (= (Cons!74600 lt!2703255 Nil!74600) Nil!74600)) (= lt!2703305 lt!2703005)))))

(declare-fun b!7960685 () Bool)

(declare-fun res!3155209 () Bool)

(assert (=> b!7960685 (=> (not res!3155209) (not e!4694736))))

(assert (=> b!7960685 (= res!3155209 (= (size!43431 lt!2703305) (+ (size!43431 lt!2703005) (size!43431 (Cons!74600 lt!2703255 Nil!74600)))))))

(declare-fun b!7960683 () Bool)

(assert (=> b!7960683 (= e!4694735 (Cons!74600 lt!2703255 Nil!74600))))

(assert (= (and d!2377898 c!1461958) b!7960683))

(assert (= (and d!2377898 (not c!1461958)) b!7960684))

(assert (= (and d!2377898 res!3155210) b!7960685))

(assert (= (and b!7960685 res!3155209) b!7960686))

(declare-fun m!8341158 () Bool)

(assert (=> d!2377898 m!8341158))

(assert (=> d!2377898 m!8341144))

(declare-fun m!8341160 () Bool)

(assert (=> d!2377898 m!8341160))

(declare-fun m!8341162 () Bool)

(assert (=> b!7960684 m!8341162))

(declare-fun m!8341164 () Bool)

(assert (=> b!7960685 m!8341164))

(assert (=> b!7960685 m!8340812))

(declare-fun m!8341166 () Bool)

(assert (=> b!7960685 m!8341166))

(assert (=> b!7960464 d!2377898))

(declare-fun d!2377900 () Bool)

(assert (=> d!2377900 (= (tail!15784 (tail!15784 lt!2703000)) (t!390467 (tail!15784 lt!2703000)))))

(assert (=> b!7960464 d!2377900))

(declare-fun d!2377902 () Bool)

(declare-fun e!4694738 () Bool)

(assert (=> d!2377902 e!4694738))

(declare-fun res!3155212 () Bool)

(assert (=> d!2377902 (=> (not res!3155212) (not e!4694738))))

(declare-fun lt!2703306 () List!74724)

(assert (=> d!2377902 (= res!3155212 (= (content!15841 lt!2703306) ((_ map or) (content!15841 lt!2703005) (content!15841 (Cons!74600 (head!16247 (tail!15784 lt!2703000)) Nil!74600)))))))

(declare-fun e!4694737 () List!74724)

(assert (=> d!2377902 (= lt!2703306 e!4694737)))

(declare-fun c!1461959 () Bool)

(assert (=> d!2377902 (= c!1461959 ((_ is Nil!74600) lt!2703005))))

(assert (=> d!2377902 (= (++!18365 lt!2703005 (Cons!74600 (head!16247 (tail!15784 lt!2703000)) Nil!74600)) lt!2703306)))

(declare-fun b!7960688 () Bool)

(assert (=> b!7960688 (= e!4694737 (Cons!74600 (h!81048 lt!2703005) (++!18365 (t!390467 lt!2703005) (Cons!74600 (head!16247 (tail!15784 lt!2703000)) Nil!74600))))))

(declare-fun b!7960690 () Bool)

(assert (=> b!7960690 (= e!4694738 (or (not (= (Cons!74600 (head!16247 (tail!15784 lt!2703000)) Nil!74600) Nil!74600)) (= lt!2703306 lt!2703005)))))

(declare-fun b!7960689 () Bool)

(declare-fun res!3155211 () Bool)

(assert (=> b!7960689 (=> (not res!3155211) (not e!4694738))))

(assert (=> b!7960689 (= res!3155211 (= (size!43431 lt!2703306) (+ (size!43431 lt!2703005) (size!43431 (Cons!74600 (head!16247 (tail!15784 lt!2703000)) Nil!74600)))))))

(declare-fun b!7960687 () Bool)

(assert (=> b!7960687 (= e!4694737 (Cons!74600 (head!16247 (tail!15784 lt!2703000)) Nil!74600))))

(assert (= (and d!2377902 c!1461959) b!7960687))

(assert (= (and d!2377902 (not c!1461959)) b!7960688))

(assert (= (and d!2377902 res!3155212) b!7960689))

(assert (= (and b!7960689 res!3155211) b!7960690))

(declare-fun m!8341168 () Bool)

(assert (=> d!2377902 m!8341168))

(assert (=> d!2377902 m!8341144))

(declare-fun m!8341170 () Bool)

(assert (=> d!2377902 m!8341170))

(declare-fun m!8341172 () Bool)

(assert (=> b!7960688 m!8341172))

(declare-fun m!8341174 () Bool)

(assert (=> b!7960689 m!8341174))

(assert (=> b!7960689 m!8340812))

(declare-fun m!8341176 () Bool)

(assert (=> b!7960689 m!8341176))

(assert (=> b!7960464 d!2377902))

(declare-fun d!2377904 () Bool)

(assert (=> d!2377904 (<= (size!43431 lt!2703005) (size!43431 input!7927))))

(declare-fun lt!2703307 () Unit!170010)

(assert (=> d!2377904 (= lt!2703307 (choose!59986 lt!2703005 input!7927))))

(assert (=> d!2377904 (isPrefix!6595 lt!2703005 input!7927)))

(assert (=> d!2377904 (= (lemmaIsPrefixThenSmallerEqSize!1112 lt!2703005 input!7927) lt!2703307)))

(declare-fun bs!1969724 () Bool)

(assert (= bs!1969724 d!2377904))

(assert (=> bs!1969724 m!8340812))

(assert (=> bs!1969724 m!8340752))

(declare-fun m!8341178 () Bool)

(assert (=> bs!1969724 m!8341178))

(assert (=> bs!1969724 m!8340776))

(assert (=> b!7960464 d!2377904))

(declare-fun d!2377906 () Bool)

(assert (=> d!2377906 (isPrefix!6595 (++!18365 lt!2703005 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703005)) Nil!74600)) input!7927)))

(declare-fun lt!2703308 () Unit!170010)

(assert (=> d!2377906 (= lt!2703308 (choose!59980 lt!2703005 input!7927))))

(assert (=> d!2377906 (isPrefix!6595 lt!2703005 input!7927)))

(assert (=> d!2377906 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1322 lt!2703005 input!7927) lt!2703308)))

(declare-fun bs!1969725 () Bool)

(assert (= bs!1969725 d!2377906))

(assert (=> bs!1969725 m!8340776))

(assert (=> bs!1969725 m!8341012))

(assert (=> bs!1969725 m!8341010))

(assert (=> bs!1969725 m!8341018))

(assert (=> bs!1969725 m!8341010))

(assert (=> bs!1969725 m!8341012))

(assert (=> bs!1969725 m!8341014))

(declare-fun m!8341180 () Bool)

(assert (=> bs!1969725 m!8341180))

(assert (=> b!7960464 d!2377906))

(declare-fun d!2377908 () Bool)

(declare-fun lt!2703309 () Int)

(assert (=> d!2377908 (>= lt!2703309 0)))

(declare-fun e!4694739 () Int)

(assert (=> d!2377908 (= lt!2703309 e!4694739)))

(declare-fun c!1461960 () Bool)

(assert (=> d!2377908 (= c!1461960 ((_ is Nil!74600) lt!2703005))))

(assert (=> d!2377908 (= (size!43431 lt!2703005) lt!2703309)))

(declare-fun b!7960691 () Bool)

(assert (=> b!7960691 (= e!4694739 0)))

(declare-fun b!7960692 () Bool)

(assert (=> b!7960692 (= e!4694739 (+ 1 (size!43431 (t!390467 lt!2703005))))))

(assert (= (and d!2377908 c!1461960) b!7960691))

(assert (= (and d!2377908 (not c!1461960)) b!7960692))

(declare-fun m!8341182 () Bool)

(assert (=> b!7960692 m!8341182))

(assert (=> b!7960464 d!2377908))

(declare-fun d!2377910 () Bool)

(declare-fun e!4694741 () Bool)

(assert (=> d!2377910 e!4694741))

(declare-fun res!3155214 () Bool)

(assert (=> d!2377910 (=> (not res!3155214) (not e!4694741))))

(declare-fun lt!2703310 () List!74724)

(assert (=> d!2377910 (= res!3155214 (= (content!15841 lt!2703310) ((_ map or) (content!15841 (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600))) (content!15841 lt!2703238))))))

(declare-fun e!4694740 () List!74724)

(assert (=> d!2377910 (= lt!2703310 e!4694740)))

(declare-fun c!1461961 () Bool)

(assert (=> d!2377910 (= c!1461961 ((_ is Nil!74600) (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600))))))

(assert (=> d!2377910 (= (++!18365 (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600)) lt!2703238) lt!2703310)))

(declare-fun b!7960694 () Bool)

(assert (=> b!7960694 (= e!4694740 (Cons!74600 (h!81048 (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600))) (++!18365 (t!390467 (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600))) lt!2703238)))))

(declare-fun b!7960696 () Bool)

(assert (=> b!7960696 (= e!4694741 (or (not (= lt!2703238 Nil!74600)) (= lt!2703310 (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600)))))))

(declare-fun b!7960695 () Bool)

(declare-fun res!3155213 () Bool)

(assert (=> b!7960695 (=> (not res!3155213) (not e!4694741))))

(assert (=> b!7960695 (= res!3155213 (= (size!43431 lt!2703310) (+ (size!43431 (++!18365 lt!2703005 (Cons!74600 lt!2703255 Nil!74600))) (size!43431 lt!2703238))))))

(declare-fun b!7960693 () Bool)

(assert (=> b!7960693 (= e!4694740 lt!2703238)))

(assert (= (and d!2377910 c!1461961) b!7960693))

(assert (= (and d!2377910 (not c!1461961)) b!7960694))

(assert (= (and d!2377910 res!3155214) b!7960695))

(assert (= (and b!7960695 res!3155213) b!7960696))

(declare-fun m!8341184 () Bool)

(assert (=> d!2377910 m!8341184))

(assert (=> d!2377910 m!8341020))

(declare-fun m!8341186 () Bool)

(assert (=> d!2377910 m!8341186))

(declare-fun m!8341188 () Bool)

(assert (=> d!2377910 m!8341188))

(declare-fun m!8341190 () Bool)

(assert (=> b!7960694 m!8341190))

(declare-fun m!8341192 () Bool)

(assert (=> b!7960695 m!8341192))

(assert (=> b!7960695 m!8341020))

(declare-fun m!8341194 () Bool)

(assert (=> b!7960695 m!8341194))

(declare-fun m!8341196 () Bool)

(assert (=> b!7960695 m!8341196))

(assert (=> b!7960464 d!2377910))

(assert (=> d!2377834 d!2377838))

(declare-fun d!2377912 () Bool)

(assert (=> d!2377912 (isPrefix!6595 input!7927 input!7927)))

(assert (=> d!2377912 true))

(declare-fun _$45!2470 () Unit!170010)

(assert (=> d!2377912 (= (choose!59981 input!7927 input!7927) _$45!2470)))

(declare-fun bs!1969726 () Bool)

(assert (= bs!1969726 d!2377912))

(assert (=> bs!1969726 m!8340760))

(assert (=> d!2377834 d!2377912))

(assert (=> b!7960252 d!2377814))

(assert (=> b!7960252 d!2377832))

(declare-fun d!2377914 () Bool)

(assert (=> d!2377914 (isPrefix!6595 testedP!447 (++!18365 testedP!447 lt!2703000))))

(declare-fun lt!2703313 () Unit!170010)

(declare-fun choose!59989 (List!74724 List!74724) Unit!170010)

(assert (=> d!2377914 (= lt!2703313 (choose!59989 testedP!447 lt!2703000))))

(assert (=> d!2377914 (= (lemmaConcatTwoListThenFirstIsPrefix!3852 testedP!447 lt!2703000) lt!2703313)))

(declare-fun bs!1969727 () Bool)

(assert (= bs!1969727 d!2377914))

(assert (=> bs!1969727 m!8340908))

(assert (=> bs!1969727 m!8340908))

(assert (=> bs!1969727 m!8340910))

(declare-fun m!8341198 () Bool)

(assert (=> bs!1969727 m!8341198))

(assert (=> d!2377816 d!2377914))

(declare-fun d!2377916 () Bool)

(declare-fun e!4694743 () Bool)

(assert (=> d!2377916 e!4694743))

(declare-fun res!3155216 () Bool)

(assert (=> d!2377916 (=> (not res!3155216) (not e!4694743))))

(declare-fun lt!2703314 () List!74724)

(assert (=> d!2377916 (= res!3155216 (= (content!15841 lt!2703314) ((_ map or) (content!15841 testedP!447) (content!15841 lt!2703000))))))

(declare-fun e!4694742 () List!74724)

(assert (=> d!2377916 (= lt!2703314 e!4694742)))

(declare-fun c!1461962 () Bool)

(assert (=> d!2377916 (= c!1461962 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377916 (= (++!18365 testedP!447 lt!2703000) lt!2703314)))

(declare-fun b!7960698 () Bool)

(assert (=> b!7960698 (= e!4694742 (Cons!74600 (h!81048 testedP!447) (++!18365 (t!390467 testedP!447) lt!2703000)))))

(declare-fun b!7960700 () Bool)

(assert (=> b!7960700 (= e!4694743 (or (not (= lt!2703000 Nil!74600)) (= lt!2703314 testedP!447)))))

(declare-fun b!7960699 () Bool)

(declare-fun res!3155215 () Bool)

(assert (=> b!7960699 (=> (not res!3155215) (not e!4694743))))

(assert (=> b!7960699 (= res!3155215 (= (size!43431 lt!2703314) (+ (size!43431 testedP!447) (size!43431 lt!2703000))))))

(declare-fun b!7960697 () Bool)

(assert (=> b!7960697 (= e!4694742 lt!2703000)))

(assert (= (and d!2377916 c!1461962) b!7960697))

(assert (= (and d!2377916 (not c!1461962)) b!7960698))

(assert (= (and d!2377916 res!3155216) b!7960699))

(assert (= (and b!7960699 res!3155215) b!7960700))

(declare-fun m!8341200 () Bool)

(assert (=> d!2377916 m!8341200))

(assert (=> d!2377916 m!8340796))

(declare-fun m!8341202 () Bool)

(assert (=> d!2377916 m!8341202))

(declare-fun m!8341204 () Bool)

(assert (=> b!7960698 m!8341204))

(declare-fun m!8341206 () Bool)

(assert (=> b!7960699 m!8341206))

(assert (=> b!7960699 m!8340750))

(declare-fun m!8341208 () Bool)

(assert (=> b!7960699 m!8341208))

(assert (=> d!2377816 d!2377916))

(declare-fun d!2377918 () Bool)

(assert (=> d!2377918 (= lt!2703000 lt!2703181)))

(declare-fun lt!2703317 () Unit!170010)

(declare-fun choose!59990 (List!74724 List!74724 List!74724 List!74724 List!74724) Unit!170010)

(assert (=> d!2377918 (= lt!2703317 (choose!59990 testedP!447 lt!2703000 testedP!447 lt!2703181 input!7927))))

(assert (=> d!2377918 (isPrefix!6595 testedP!447 input!7927)))

(assert (=> d!2377918 (= (lemmaSamePrefixThenSameSuffix!2990 testedP!447 lt!2703000 testedP!447 lt!2703181 input!7927) lt!2703317)))

(declare-fun bs!1969728 () Bool)

(assert (= bs!1969728 d!2377918))

(declare-fun m!8341210 () Bool)

(assert (=> bs!1969728 m!8341210))

(assert (=> bs!1969728 m!8340766))

(assert (=> d!2377816 d!2377918))

(declare-fun d!2377920 () Bool)

(declare-fun e!4694745 () Bool)

(assert (=> d!2377920 e!4694745))

(declare-fun res!3155218 () Bool)

(assert (=> d!2377920 (=> (not res!3155218) (not e!4694745))))

(declare-fun lt!2703318 () List!74724)

(assert (=> d!2377920 (= res!3155218 (= (content!15841 lt!2703318) ((_ map or) (content!15841 (_1!38629 lt!2703178)) (content!15841 (_2!38629 lt!2703178)))))))

(declare-fun e!4694744 () List!74724)

(assert (=> d!2377920 (= lt!2703318 e!4694744)))

(declare-fun c!1461963 () Bool)

(assert (=> d!2377920 (= c!1461963 ((_ is Nil!74600) (_1!38629 lt!2703178)))))

(assert (=> d!2377920 (= (++!18365 (_1!38629 lt!2703178) (_2!38629 lt!2703178)) lt!2703318)))

(declare-fun b!7960702 () Bool)

(assert (=> b!7960702 (= e!4694744 (Cons!74600 (h!81048 (_1!38629 lt!2703178)) (++!18365 (t!390467 (_1!38629 lt!2703178)) (_2!38629 lt!2703178))))))

(declare-fun b!7960704 () Bool)

(assert (=> b!7960704 (= e!4694745 (or (not (= (_2!38629 lt!2703178) Nil!74600)) (= lt!2703318 (_1!38629 lt!2703178))))))

(declare-fun b!7960703 () Bool)

(declare-fun res!3155217 () Bool)

(assert (=> b!7960703 (=> (not res!3155217) (not e!4694745))))

(assert (=> b!7960703 (= res!3155217 (= (size!43431 lt!2703318) (+ (size!43431 (_1!38629 lt!2703178)) (size!43431 (_2!38629 lt!2703178)))))))

(declare-fun b!7960701 () Bool)

(assert (=> b!7960701 (= e!4694744 (_2!38629 lt!2703178))))

(assert (= (and d!2377920 c!1461963) b!7960701))

(assert (= (and d!2377920 (not c!1461963)) b!7960702))

(assert (= (and d!2377920 res!3155218) b!7960703))

(assert (= (and b!7960703 res!3155217) b!7960704))

(declare-fun m!8341212 () Bool)

(assert (=> d!2377920 m!8341212))

(declare-fun m!8341214 () Bool)

(assert (=> d!2377920 m!8341214))

(declare-fun m!8341216 () Bool)

(assert (=> d!2377920 m!8341216))

(declare-fun m!8341218 () Bool)

(assert (=> b!7960702 m!8341218))

(declare-fun m!8341220 () Bool)

(assert (=> b!7960703 m!8341220))

(assert (=> b!7960703 m!8340892))

(declare-fun m!8341222 () Bool)

(assert (=> b!7960703 m!8341222))

(assert (=> d!2377816 d!2377920))

(assert (=> d!2377816 d!2377826))

(declare-fun d!2377922 () Bool)

(declare-fun lostCauseFct!569 (Regex!21495) Bool)

(assert (=> d!2377922 (= (lostCause!1974 r!24602) (lostCauseFct!569 r!24602))))

(declare-fun bs!1969729 () Bool)

(assert (= bs!1969729 d!2377922))

(declare-fun m!8341224 () Bool)

(assert (=> bs!1969729 m!8341224))

(assert (=> d!2377816 d!2377922))

(declare-fun b!7960708 () Bool)

(declare-fun e!4694747 () Bool)

(assert (=> b!7960708 (= e!4694747 (>= (size!43431 (++!18365 testedP!447 lt!2703000)) (size!43431 testedP!447)))))

(declare-fun d!2377924 () Bool)

(assert (=> d!2377924 e!4694747))

(declare-fun res!3155222 () Bool)

(assert (=> d!2377924 (=> res!3155222 e!4694747)))

(declare-fun lt!2703319 () Bool)

(assert (=> d!2377924 (= res!3155222 (not lt!2703319))))

(declare-fun e!4694748 () Bool)

(assert (=> d!2377924 (= lt!2703319 e!4694748)))

(declare-fun res!3155220 () Bool)

(assert (=> d!2377924 (=> res!3155220 e!4694748)))

(assert (=> d!2377924 (= res!3155220 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377924 (= (isPrefix!6595 testedP!447 (++!18365 testedP!447 lt!2703000)) lt!2703319)))

(declare-fun b!7960707 () Bool)

(declare-fun e!4694746 () Bool)

(assert (=> b!7960707 (= e!4694746 (isPrefix!6595 (tail!15784 testedP!447) (tail!15784 (++!18365 testedP!447 lt!2703000))))))

(declare-fun b!7960705 () Bool)

(assert (=> b!7960705 (= e!4694748 e!4694746)))

(declare-fun res!3155221 () Bool)

(assert (=> b!7960705 (=> (not res!3155221) (not e!4694746))))

(assert (=> b!7960705 (= res!3155221 (not ((_ is Nil!74600) (++!18365 testedP!447 lt!2703000))))))

(declare-fun b!7960706 () Bool)

(declare-fun res!3155219 () Bool)

(assert (=> b!7960706 (=> (not res!3155219) (not e!4694746))))

(assert (=> b!7960706 (= res!3155219 (= (head!16247 testedP!447) (head!16247 (++!18365 testedP!447 lt!2703000))))))

(assert (= (and d!2377924 (not res!3155220)) b!7960705))

(assert (= (and b!7960705 res!3155221) b!7960706))

(assert (= (and b!7960706 res!3155219) b!7960707))

(assert (= (and d!2377924 (not res!3155222)) b!7960708))

(assert (=> b!7960708 m!8340908))

(declare-fun m!8341226 () Bool)

(assert (=> b!7960708 m!8341226))

(assert (=> b!7960708 m!8340750))

(assert (=> b!7960707 m!8340824))

(assert (=> b!7960707 m!8340908))

(declare-fun m!8341228 () Bool)

(assert (=> b!7960707 m!8341228))

(assert (=> b!7960707 m!8340824))

(assert (=> b!7960707 m!8341228))

(declare-fun m!8341230 () Bool)

(assert (=> b!7960707 m!8341230))

(assert (=> b!7960706 m!8340828))

(assert (=> b!7960706 m!8340908))

(declare-fun m!8341232 () Bool)

(assert (=> b!7960706 m!8341232))

(assert (=> d!2377816 d!2377924))

(declare-fun b!7960709 () Bool)

(declare-fun e!4694754 () Bool)

(declare-fun e!4694751 () Bool)

(assert (=> b!7960709 (= e!4694754 e!4694751)))

(declare-fun res!3155227 () Bool)

(assert (=> b!7960709 (= res!3155227 (not (nullable!9596 (reg!21824 r!24602))))))

(assert (=> b!7960709 (=> (not res!3155227) (not e!4694751))))

(declare-fun b!7960710 () Bool)

(declare-fun e!4694755 () Bool)

(declare-fun call!738195 () Bool)

(assert (=> b!7960710 (= e!4694755 call!738195)))

(declare-fun b!7960711 () Bool)

(declare-fun res!3155223 () Bool)

(assert (=> b!7960711 (=> (not res!3155223) (not e!4694755))))

(declare-fun call!738197 () Bool)

(assert (=> b!7960711 (= res!3155223 call!738197)))

(declare-fun e!4694753 () Bool)

(assert (=> b!7960711 (= e!4694753 e!4694755)))

(declare-fun bm!738190 () Bool)

(declare-fun call!738196 () Bool)

(assert (=> bm!738190 (= call!738197 call!738196)))

(declare-fun c!1461964 () Bool)

(declare-fun c!1461965 () Bool)

(declare-fun bm!738191 () Bool)

(assert (=> bm!738191 (= call!738196 (validRegex!11799 (ite c!1461964 (reg!21824 r!24602) (ite c!1461965 (regOne!43503 r!24602) (regOne!43502 r!24602)))))))

(declare-fun b!7960712 () Bool)

(assert (=> b!7960712 (= e!4694754 e!4694753)))

(assert (=> b!7960712 (= c!1461965 ((_ is Union!21495) r!24602))))

(declare-fun b!7960713 () Bool)

(declare-fun res!3155226 () Bool)

(declare-fun e!4694750 () Bool)

(assert (=> b!7960713 (=> res!3155226 e!4694750)))

(assert (=> b!7960713 (= res!3155226 (not ((_ is Concat!30494) r!24602)))))

(assert (=> b!7960713 (= e!4694753 e!4694750)))

(declare-fun d!2377926 () Bool)

(declare-fun res!3155225 () Bool)

(declare-fun e!4694749 () Bool)

(assert (=> d!2377926 (=> res!3155225 e!4694749)))

(assert (=> d!2377926 (= res!3155225 ((_ is ElementMatch!21495) r!24602))))

(assert (=> d!2377926 (= (validRegex!11799 r!24602) e!4694749)))

(declare-fun bm!738192 () Bool)

(assert (=> bm!738192 (= call!738195 (validRegex!11799 (ite c!1461965 (regTwo!43503 r!24602) (regTwo!43502 r!24602))))))

(declare-fun b!7960714 () Bool)

(assert (=> b!7960714 (= e!4694749 e!4694754)))

(assert (=> b!7960714 (= c!1461964 ((_ is Star!21495) r!24602))))

(declare-fun b!7960715 () Bool)

(declare-fun e!4694752 () Bool)

(assert (=> b!7960715 (= e!4694752 call!738195)))

(declare-fun b!7960716 () Bool)

(assert (=> b!7960716 (= e!4694751 call!738196)))

(declare-fun b!7960717 () Bool)

(assert (=> b!7960717 (= e!4694750 e!4694752)))

(declare-fun res!3155224 () Bool)

(assert (=> b!7960717 (=> (not res!3155224) (not e!4694752))))

(assert (=> b!7960717 (= res!3155224 call!738197)))

(assert (= (and d!2377926 (not res!3155225)) b!7960714))

(assert (= (and b!7960714 c!1461964) b!7960709))

(assert (= (and b!7960714 (not c!1461964)) b!7960712))

(assert (= (and b!7960709 res!3155227) b!7960716))

(assert (= (and b!7960712 c!1461965) b!7960711))

(assert (= (and b!7960712 (not c!1461965)) b!7960713))

(assert (= (and b!7960711 res!3155223) b!7960710))

(assert (= (and b!7960713 (not res!3155226)) b!7960717))

(assert (= (and b!7960717 res!3155224) b!7960715))

(assert (= (or b!7960710 b!7960715) bm!738192))

(assert (= (or b!7960711 b!7960717) bm!738190))

(assert (= (or b!7960716 bm!738190) bm!738191))

(declare-fun m!8341234 () Bool)

(assert (=> b!7960709 m!8341234))

(declare-fun m!8341236 () Bool)

(assert (=> bm!738191 m!8341236))

(declare-fun m!8341238 () Bool)

(assert (=> bm!738192 m!8341238))

(assert (=> d!2377816 d!2377926))

(assert (=> b!7960375 d!2377814))

(assert (=> b!7960375 d!2377792))

(declare-fun d!2377928 () Bool)

(declare-fun e!4694757 () Bool)

(assert (=> d!2377928 e!4694757))

(declare-fun res!3155229 () Bool)

(assert (=> d!2377928 (=> (not res!3155229) (not e!4694757))))

(declare-fun lt!2703320 () List!74724)

(assert (=> d!2377928 (= res!3155229 (= (content!15841 lt!2703320) ((_ map or) (content!15841 testedP!447) (content!15841 (Cons!74600 (head!16247 lt!2703000) Nil!74600)))))))

(declare-fun e!4694756 () List!74724)

(assert (=> d!2377928 (= lt!2703320 e!4694756)))

(declare-fun c!1461966 () Bool)

(assert (=> d!2377928 (= c!1461966 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377928 (= (++!18365 testedP!447 (Cons!74600 (head!16247 lt!2703000) Nil!74600)) lt!2703320)))

(declare-fun b!7960719 () Bool)

(assert (=> b!7960719 (= e!4694756 (Cons!74600 (h!81048 testedP!447) (++!18365 (t!390467 testedP!447) (Cons!74600 (head!16247 lt!2703000) Nil!74600))))))

(declare-fun b!7960721 () Bool)

(assert (=> b!7960721 (= e!4694757 (or (not (= (Cons!74600 (head!16247 lt!2703000) Nil!74600) Nil!74600)) (= lt!2703320 testedP!447)))))

(declare-fun b!7960720 () Bool)

(declare-fun res!3155228 () Bool)

(assert (=> b!7960720 (=> (not res!3155228) (not e!4694757))))

(assert (=> b!7960720 (= res!3155228 (= (size!43431 lt!2703320) (+ (size!43431 testedP!447) (size!43431 (Cons!74600 (head!16247 lt!2703000) Nil!74600)))))))

(declare-fun b!7960718 () Bool)

(assert (=> b!7960718 (= e!4694756 (Cons!74600 (head!16247 lt!2703000) Nil!74600))))

(assert (= (and d!2377928 c!1461966) b!7960718))

(assert (= (and d!2377928 (not c!1461966)) b!7960719))

(assert (= (and d!2377928 res!3155229) b!7960720))

(assert (= (and b!7960720 res!3155228) b!7960721))

(declare-fun m!8341240 () Bool)

(assert (=> d!2377928 m!8341240))

(assert (=> d!2377928 m!8340796))

(declare-fun m!8341242 () Bool)

(assert (=> d!2377928 m!8341242))

(declare-fun m!8341244 () Bool)

(assert (=> b!7960719 m!8341244))

(declare-fun m!8341246 () Bool)

(assert (=> b!7960720 m!8341246))

(assert (=> b!7960720 m!8340750))

(declare-fun m!8341248 () Bool)

(assert (=> b!7960720 m!8341248))

(assert (=> b!7960375 d!2377928))

(declare-fun d!2377930 () Bool)

(assert (=> d!2377930 (= (head!16247 (getSuffix!3798 input!7927 testedP!447)) (h!81048 (getSuffix!3798 input!7927 testedP!447)))))

(assert (=> b!7960375 d!2377930))

(declare-fun d!2377932 () Bool)

(declare-fun e!4694759 () Bool)

(assert (=> d!2377932 e!4694759))

(declare-fun res!3155231 () Bool)

(assert (=> d!2377932 (=> (not res!3155231) (not e!4694759))))

(declare-fun lt!2703321 () List!74724)

(assert (=> d!2377932 (= res!3155231 (= (content!15841 lt!2703321) ((_ map or) (content!15841 testedP!447) (content!15841 (Cons!74600 lt!2703185 Nil!74600)))))))

(declare-fun e!4694758 () List!74724)

(assert (=> d!2377932 (= lt!2703321 e!4694758)))

(declare-fun c!1461967 () Bool)

(assert (=> d!2377932 (= c!1461967 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377932 (= (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600)) lt!2703321)))

(declare-fun b!7960723 () Bool)

(assert (=> b!7960723 (= e!4694758 (Cons!74600 (h!81048 testedP!447) (++!18365 (t!390467 testedP!447) (Cons!74600 lt!2703185 Nil!74600))))))

(declare-fun b!7960725 () Bool)

(assert (=> b!7960725 (= e!4694759 (or (not (= (Cons!74600 lt!2703185 Nil!74600) Nil!74600)) (= lt!2703321 testedP!447)))))

(declare-fun b!7960724 () Bool)

(declare-fun res!3155230 () Bool)

(assert (=> b!7960724 (=> (not res!3155230) (not e!4694759))))

(assert (=> b!7960724 (= res!3155230 (= (size!43431 lt!2703321) (+ (size!43431 testedP!447) (size!43431 (Cons!74600 lt!2703185 Nil!74600)))))))

(declare-fun b!7960722 () Bool)

(assert (=> b!7960722 (= e!4694758 (Cons!74600 lt!2703185 Nil!74600))))

(assert (= (and d!2377932 c!1461967) b!7960722))

(assert (= (and d!2377932 (not c!1461967)) b!7960723))

(assert (= (and d!2377932 res!3155231) b!7960724))

(assert (= (and b!7960724 res!3155230) b!7960725))

(declare-fun m!8341250 () Bool)

(assert (=> d!2377932 m!8341250))

(assert (=> d!2377932 m!8340796))

(declare-fun m!8341252 () Bool)

(assert (=> d!2377932 m!8341252))

(declare-fun m!8341254 () Bool)

(assert (=> b!7960723 m!8341254))

(declare-fun m!8341256 () Bool)

(assert (=> b!7960724 m!8341256))

(assert (=> b!7960724 m!8340750))

(declare-fun m!8341258 () Bool)

(assert (=> b!7960724 m!8341258))

(assert (=> b!7960375 d!2377932))

(declare-fun b!7960729 () Bool)

(declare-fun e!4694761 () Bool)

(assert (=> b!7960729 (= e!4694761 (>= (size!43431 input!7927) (size!43431 (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600)))))))

(declare-fun d!2377934 () Bool)

(assert (=> d!2377934 e!4694761))

(declare-fun res!3155235 () Bool)

(assert (=> d!2377934 (=> res!3155235 e!4694761)))

(declare-fun lt!2703322 () Bool)

(assert (=> d!2377934 (= res!3155235 (not lt!2703322))))

(declare-fun e!4694762 () Bool)

(assert (=> d!2377934 (= lt!2703322 e!4694762)))

(declare-fun res!3155233 () Bool)

(assert (=> d!2377934 (=> res!3155233 e!4694762)))

(assert (=> d!2377934 (= res!3155233 ((_ is Nil!74600) (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600))))))

(assert (=> d!2377934 (= (isPrefix!6595 (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600)) input!7927) lt!2703322)))

(declare-fun b!7960728 () Bool)

(declare-fun e!4694760 () Bool)

(assert (=> b!7960728 (= e!4694760 (isPrefix!6595 (tail!15784 (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600))) (tail!15784 input!7927)))))

(declare-fun b!7960726 () Bool)

(assert (=> b!7960726 (= e!4694762 e!4694760)))

(declare-fun res!3155234 () Bool)

(assert (=> b!7960726 (=> (not res!3155234) (not e!4694760))))

(assert (=> b!7960726 (= res!3155234 (not ((_ is Nil!74600) input!7927)))))

(declare-fun b!7960727 () Bool)

(declare-fun res!3155232 () Bool)

(assert (=> b!7960727 (=> (not res!3155232) (not e!4694760))))

(assert (=> b!7960727 (= res!3155232 (= (head!16247 (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600))) (head!16247 input!7927)))))

(assert (= (and d!2377934 (not res!3155233)) b!7960726))

(assert (= (and b!7960726 res!3155234) b!7960727))

(assert (= (and b!7960727 res!3155232) b!7960728))

(assert (= (and d!2377934 (not res!3155235)) b!7960729))

(assert (=> b!7960729 m!8340752))

(assert (=> b!7960729 m!8340786))

(declare-fun m!8341260 () Bool)

(assert (=> b!7960729 m!8341260))

(assert (=> b!7960728 m!8340786))

(declare-fun m!8341262 () Bool)

(assert (=> b!7960728 m!8341262))

(assert (=> b!7960728 m!8340816))

(assert (=> b!7960728 m!8341262))

(assert (=> b!7960728 m!8340816))

(declare-fun m!8341264 () Bool)

(assert (=> b!7960728 m!8341264))

(assert (=> b!7960727 m!8340786))

(declare-fun m!8341266 () Bool)

(assert (=> b!7960727 m!8341266))

(assert (=> b!7960727 m!8340822))

(assert (=> b!7960375 d!2377934))

(assert (=> b!7960375 d!2377826))

(assert (=> b!7960375 d!2377868))

(assert (=> b!7960375 d!2377832))

(assert (=> b!7960375 d!2377858))

(declare-fun d!2377936 () Bool)

(declare-fun e!4694764 () Bool)

(assert (=> d!2377936 e!4694764))

(declare-fun res!3155237 () Bool)

(assert (=> d!2377936 (=> (not res!3155237) (not e!4694764))))

(declare-fun lt!2703323 () List!74724)

(assert (=> d!2377936 (= res!3155237 (= (content!15841 lt!2703323) ((_ map or) (content!15841 (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600))) (content!15841 lt!2703168))))))

(declare-fun e!4694763 () List!74724)

(assert (=> d!2377936 (= lt!2703323 e!4694763)))

(declare-fun c!1461968 () Bool)

(assert (=> d!2377936 (= c!1461968 ((_ is Nil!74600) (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600))))))

(assert (=> d!2377936 (= (++!18365 (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600)) lt!2703168) lt!2703323)))

(declare-fun b!7960731 () Bool)

(assert (=> b!7960731 (= e!4694763 (Cons!74600 (h!81048 (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600))) (++!18365 (t!390467 (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600))) lt!2703168)))))

(declare-fun b!7960733 () Bool)

(assert (=> b!7960733 (= e!4694764 (or (not (= lt!2703168 Nil!74600)) (= lt!2703323 (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600)))))))

(declare-fun b!7960732 () Bool)

(declare-fun res!3155236 () Bool)

(assert (=> b!7960732 (=> (not res!3155236) (not e!4694764))))

(assert (=> b!7960732 (= res!3155236 (= (size!43431 lt!2703323) (+ (size!43431 (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600))) (size!43431 lt!2703168))))))

(declare-fun b!7960730 () Bool)

(assert (=> b!7960730 (= e!4694763 lt!2703168)))

(assert (= (and d!2377936 c!1461968) b!7960730))

(assert (= (and d!2377936 (not c!1461968)) b!7960731))

(assert (= (and d!2377936 res!3155237) b!7960732))

(assert (= (and b!7960732 res!3155236) b!7960733))

(declare-fun m!8341268 () Bool)

(assert (=> d!2377936 m!8341268))

(assert (=> d!2377936 m!8340898))

(declare-fun m!8341270 () Bool)

(assert (=> d!2377936 m!8341270))

(declare-fun m!8341272 () Bool)

(assert (=> d!2377936 m!8341272))

(declare-fun m!8341274 () Bool)

(assert (=> b!7960731 m!8341274))

(declare-fun m!8341276 () Bool)

(assert (=> b!7960732 m!8341276))

(assert (=> b!7960732 m!8340898))

(declare-fun m!8341278 () Bool)

(assert (=> b!7960732 m!8341278))

(declare-fun m!8341280 () Bool)

(assert (=> b!7960732 m!8341280))

(assert (=> b!7960375 d!2377936))

(assert (=> b!7960375 d!2377808))

(declare-fun d!2377938 () Bool)

(assert (=> d!2377938 (= (++!18365 (++!18365 testedP!447 (Cons!74600 lt!2703185 Nil!74600)) lt!2703168) input!7927)))

(declare-fun lt!2703324 () Unit!170010)

(assert (=> d!2377938 (= lt!2703324 (choose!59988 testedP!447 lt!2703185 lt!2703168 input!7927))))

(assert (=> d!2377938 (= (++!18365 testedP!447 (Cons!74600 lt!2703185 lt!2703168)) input!7927)))

(assert (=> d!2377938 (= (lemmaMoveElementToOtherListKeepsConcatEq!3530 testedP!447 lt!2703185 lt!2703168 input!7927) lt!2703324)))

(declare-fun bs!1969730 () Bool)

(assert (= bs!1969730 d!2377938))

(assert (=> bs!1969730 m!8340898))

(assert (=> bs!1969730 m!8340898))

(assert (=> bs!1969730 m!8340904))

(declare-fun m!8341282 () Bool)

(assert (=> bs!1969730 m!8341282))

(declare-fun m!8341284 () Bool)

(assert (=> bs!1969730 m!8341284))

(assert (=> b!7960375 d!2377938))

(declare-fun d!2377940 () Bool)

(declare-fun e!4694766 () Bool)

(assert (=> d!2377940 e!4694766))

(declare-fun res!3155239 () Bool)

(assert (=> d!2377940 (=> (not res!3155239) (not e!4694766))))

(declare-fun lt!2703325 () List!74724)

(assert (=> d!2377940 (= res!3155239 (= (content!15841 lt!2703325) ((_ map or) (content!15841 testedP!447) (content!15841 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600)))))))

(declare-fun e!4694765 () List!74724)

(assert (=> d!2377940 (= lt!2703325 e!4694765)))

(declare-fun c!1461969 () Bool)

(assert (=> d!2377940 (= c!1461969 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377940 (= (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600)) lt!2703325)))

(declare-fun b!7960735 () Bool)

(assert (=> b!7960735 (= e!4694765 (Cons!74600 (h!81048 testedP!447) (++!18365 (t!390467 testedP!447) (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600))))))

(declare-fun b!7960737 () Bool)

(assert (=> b!7960737 (= e!4694766 (or (not (= (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600) Nil!74600)) (= lt!2703325 testedP!447)))))

(declare-fun b!7960736 () Bool)

(declare-fun res!3155238 () Bool)

(assert (=> b!7960736 (=> (not res!3155238) (not e!4694766))))

(assert (=> b!7960736 (= res!3155238 (= (size!43431 lt!2703325) (+ (size!43431 testedP!447) (size!43431 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600)))))))

(declare-fun b!7960734 () Bool)

(assert (=> b!7960734 (= e!4694765 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600))))

(assert (= (and d!2377940 c!1461969) b!7960734))

(assert (= (and d!2377940 (not c!1461969)) b!7960735))

(assert (= (and d!2377940 res!3155239) b!7960736))

(assert (= (and b!7960736 res!3155238) b!7960737))

(declare-fun m!8341286 () Bool)

(assert (=> d!2377940 m!8341286))

(assert (=> d!2377940 m!8340796))

(declare-fun m!8341288 () Bool)

(assert (=> d!2377940 m!8341288))

(declare-fun m!8341290 () Bool)

(assert (=> b!7960735 m!8341290))

(declare-fun m!8341292 () Bool)

(assert (=> b!7960736 m!8341292))

(assert (=> b!7960736 m!8340750))

(declare-fun m!8341294 () Bool)

(assert (=> b!7960736 m!8341294))

(assert (=> b!7960375 d!2377940))

(declare-fun d!2377942 () Bool)

(assert (=> d!2377942 (= (head!16247 testedP!447) (h!81048 testedP!447))))

(assert (=> b!7960250 d!2377942))

(declare-fun d!2377944 () Bool)

(assert (=> d!2377944 (= (head!16247 input!7927) (h!81048 input!7927))))

(assert (=> b!7960250 d!2377944))

(assert (=> bm!738132 d!2377796))

(declare-fun bm!738193 () Bool)

(declare-fun call!738199 () Regex!21495)

(declare-fun call!738201 () Regex!21495)

(assert (=> bm!738193 (= call!738199 call!738201)))

(declare-fun e!4694768 () Regex!21495)

(declare-fun b!7960738 () Bool)

(declare-fun call!738198 () Regex!21495)

(assert (=> b!7960738 (= e!4694768 (Union!21495 (Concat!30494 call!738198 (regTwo!43502 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)))) EmptyLang!21495))))

(declare-fun e!4694770 () Regex!21495)

(declare-fun b!7960739 () Bool)

(assert (=> b!7960739 (= e!4694770 (Concat!30494 call!738199 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))))))

(declare-fun d!2377946 () Bool)

(declare-fun lt!2703326 () Regex!21495)

(assert (=> d!2377946 (validRegex!11799 lt!2703326)))

(declare-fun e!4694769 () Regex!21495)

(assert (=> d!2377946 (= lt!2703326 e!4694769)))

(declare-fun c!1461973 () Bool)

(assert (=> d!2377946 (= c!1461973 (or ((_ is EmptyExpr!21495) (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))) ((_ is EmptyLang!21495) (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)))))))

(assert (=> d!2377946 (validRegex!11799 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)))))

(assert (=> d!2377946 (= (derivativeStep!6523 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)) lt!2703001) lt!2703326)))

(declare-fun b!7960740 () Bool)

(declare-fun e!4694771 () Regex!21495)

(assert (=> b!7960740 (= e!4694771 e!4694770)))

(declare-fun c!1461972 () Bool)

(assert (=> b!7960740 (= c!1461972 ((_ is Star!21495) (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))))))

(declare-fun c!1461970 () Bool)

(declare-fun c!1461974 () Bool)

(declare-fun bm!738194 () Bool)

(assert (=> bm!738194 (= call!738201 (derivativeStep!6523 (ite c!1461970 (regTwo!43503 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))) (ite c!1461972 (reg!21824 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))) (ite c!1461974 (regTwo!43502 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))) (regOne!43502 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)))))) lt!2703001))))

(declare-fun b!7960741 () Bool)

(assert (=> b!7960741 (= e!4694769 EmptyLang!21495)))

(declare-fun b!7960742 () Bool)

(declare-fun e!4694767 () Regex!21495)

(assert (=> b!7960742 (= e!4694767 (ite (= lt!2703001 (c!1461832 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)))) EmptyExpr!21495 EmptyLang!21495))))

(declare-fun b!7960743 () Bool)

(declare-fun call!738200 () Regex!21495)

(assert (=> b!7960743 (= e!4694768 (Union!21495 (Concat!30494 call!738200 (regTwo!43502 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)))) call!738198))))

(declare-fun bm!738195 () Bool)

(assert (=> bm!738195 (= call!738198 call!738199)))

(declare-fun bm!738196 () Bool)

(assert (=> bm!738196 (= call!738200 (derivativeStep!6523 (ite c!1461970 (regOne!43503 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))) (regOne!43502 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)))) lt!2703001))))

(declare-fun b!7960744 () Bool)

(assert (=> b!7960744 (= c!1461974 (nullable!9596 (regOne!43502 (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602)))))))

(assert (=> b!7960744 (= e!4694770 e!4694768)))

(declare-fun b!7960745 () Bool)

(assert (=> b!7960745 (= e!4694769 e!4694767)))

(declare-fun c!1461971 () Bool)

(assert (=> b!7960745 (= c!1461971 ((_ is ElementMatch!21495) (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))))))

(declare-fun b!7960746 () Bool)

(assert (=> b!7960746 (= c!1461970 ((_ is Union!21495) (ite c!1461938 (regOne!43503 r!24602) (regOne!43502 r!24602))))))

(assert (=> b!7960746 (= e!4694767 e!4694771)))

(declare-fun b!7960747 () Bool)

(assert (=> b!7960747 (= e!4694771 (Union!21495 call!738200 call!738201))))

(assert (= (and d!2377946 c!1461973) b!7960741))

(assert (= (and d!2377946 (not c!1461973)) b!7960745))

(assert (= (and b!7960745 c!1461971) b!7960742))

(assert (= (and b!7960745 (not c!1461971)) b!7960746))

(assert (= (and b!7960746 c!1461970) b!7960747))

(assert (= (and b!7960746 (not c!1461970)) b!7960740))

(assert (= (and b!7960740 c!1461972) b!7960739))

(assert (= (and b!7960740 (not c!1461972)) b!7960744))

(assert (= (and b!7960744 c!1461974) b!7960743))

(assert (= (and b!7960744 (not c!1461974)) b!7960738))

(assert (= (or b!7960743 b!7960738) bm!738195))

(assert (= (or b!7960739 bm!738195) bm!738193))

(assert (= (or b!7960747 bm!738193) bm!738194))

(assert (= (or b!7960747 b!7960743) bm!738196))

(declare-fun m!8341296 () Bool)

(assert (=> d!2377946 m!8341296))

(declare-fun m!8341298 () Bool)

(assert (=> d!2377946 m!8341298))

(declare-fun m!8341300 () Bool)

(assert (=> bm!738194 m!8341300))

(declare-fun m!8341302 () Bool)

(assert (=> bm!738196 m!8341302))

(declare-fun m!8341304 () Bool)

(assert (=> b!7960744 m!8341304))

(assert (=> bm!738185 d!2377946))

(declare-fun bm!738197 () Bool)

(declare-fun call!738203 () Regex!21495)

(declare-fun call!738205 () Regex!21495)

(assert (=> bm!738197 (= call!738203 call!738205)))

(declare-fun e!4694773 () Regex!21495)

(declare-fun b!7960748 () Bool)

(declare-fun call!738202 () Regex!21495)

(assert (=> b!7960748 (= e!4694773 (Union!21495 (Concat!30494 call!738202 (regTwo!43502 (derivativeStep!6523 r!24602 lt!2703001))) EmptyLang!21495))))

(declare-fun e!4694775 () Regex!21495)

(declare-fun b!7960749 () Bool)

(assert (=> b!7960749 (= e!4694775 (Concat!30494 call!738203 (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun d!2377948 () Bool)

(declare-fun lt!2703327 () Regex!21495)

(assert (=> d!2377948 (validRegex!11799 lt!2703327)))

(declare-fun e!4694774 () Regex!21495)

(assert (=> d!2377948 (= lt!2703327 e!4694774)))

(declare-fun c!1461978 () Bool)

(assert (=> d!2377948 (= c!1461978 (or ((_ is EmptyExpr!21495) (derivativeStep!6523 r!24602 lt!2703001)) ((_ is EmptyLang!21495) (derivativeStep!6523 r!24602 lt!2703001))))))

(assert (=> d!2377948 (validRegex!11799 (derivativeStep!6523 r!24602 lt!2703001))))

(assert (=> d!2377948 (= (derivativeStep!6523 (derivativeStep!6523 r!24602 lt!2703001) call!738167) lt!2703327)))

(declare-fun b!7960750 () Bool)

(declare-fun e!4694776 () Regex!21495)

(assert (=> b!7960750 (= e!4694776 e!4694775)))

(declare-fun c!1461977 () Bool)

(assert (=> b!7960750 (= c!1461977 ((_ is Star!21495) (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun c!1461975 () Bool)

(declare-fun bm!738198 () Bool)

(declare-fun c!1461979 () Bool)

(assert (=> bm!738198 (= call!738205 (derivativeStep!6523 (ite c!1461975 (regTwo!43503 (derivativeStep!6523 r!24602 lt!2703001)) (ite c!1461977 (reg!21824 (derivativeStep!6523 r!24602 lt!2703001)) (ite c!1461979 (regTwo!43502 (derivativeStep!6523 r!24602 lt!2703001)) (regOne!43502 (derivativeStep!6523 r!24602 lt!2703001))))) call!738167))))

(declare-fun b!7960751 () Bool)

(assert (=> b!7960751 (= e!4694774 EmptyLang!21495)))

(declare-fun e!4694772 () Regex!21495)

(declare-fun b!7960752 () Bool)

(assert (=> b!7960752 (= e!4694772 (ite (= call!738167 (c!1461832 (derivativeStep!6523 r!24602 lt!2703001))) EmptyExpr!21495 EmptyLang!21495))))

(declare-fun call!738204 () Regex!21495)

(declare-fun b!7960753 () Bool)

(assert (=> b!7960753 (= e!4694773 (Union!21495 (Concat!30494 call!738204 (regTwo!43502 (derivativeStep!6523 r!24602 lt!2703001))) call!738202))))

(declare-fun bm!738199 () Bool)

(assert (=> bm!738199 (= call!738202 call!738203)))

(declare-fun bm!738200 () Bool)

(assert (=> bm!738200 (= call!738204 (derivativeStep!6523 (ite c!1461975 (regOne!43503 (derivativeStep!6523 r!24602 lt!2703001)) (regOne!43502 (derivativeStep!6523 r!24602 lt!2703001))) call!738167))))

(declare-fun b!7960754 () Bool)

(assert (=> b!7960754 (= c!1461979 (nullable!9596 (regOne!43502 (derivativeStep!6523 r!24602 lt!2703001))))))

(assert (=> b!7960754 (= e!4694775 e!4694773)))

(declare-fun b!7960755 () Bool)

(assert (=> b!7960755 (= e!4694774 e!4694772)))

(declare-fun c!1461976 () Bool)

(assert (=> b!7960755 (= c!1461976 ((_ is ElementMatch!21495) (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun b!7960756 () Bool)

(assert (=> b!7960756 (= c!1461975 ((_ is Union!21495) (derivativeStep!6523 r!24602 lt!2703001)))))

(assert (=> b!7960756 (= e!4694772 e!4694776)))

(declare-fun b!7960757 () Bool)

(assert (=> b!7960757 (= e!4694776 (Union!21495 call!738204 call!738205))))

(assert (= (and d!2377948 c!1461978) b!7960751))

(assert (= (and d!2377948 (not c!1461978)) b!7960755))

(assert (= (and b!7960755 c!1461976) b!7960752))

(assert (= (and b!7960755 (not c!1461976)) b!7960756))

(assert (= (and b!7960756 c!1461975) b!7960757))

(assert (= (and b!7960756 (not c!1461975)) b!7960750))

(assert (= (and b!7960750 c!1461977) b!7960749))

(assert (= (and b!7960750 (not c!1461977)) b!7960754))

(assert (= (and b!7960754 c!1461979) b!7960753))

(assert (= (and b!7960754 (not c!1461979)) b!7960748))

(assert (= (or b!7960753 b!7960748) bm!738199))

(assert (= (or b!7960749 bm!738199) bm!738197))

(assert (= (or b!7960757 bm!738197) bm!738198))

(assert (= (or b!7960757 b!7960753) bm!738200))

(declare-fun m!8341306 () Bool)

(assert (=> d!2377948 m!8341306))

(assert (=> d!2377948 m!8340768))

(assert (=> d!2377948 m!8341042))

(declare-fun m!8341308 () Bool)

(assert (=> bm!738198 m!8341308))

(declare-fun m!8341310 () Bool)

(assert (=> bm!738200 m!8341310))

(declare-fun m!8341312 () Bool)

(assert (=> b!7960754 m!8341312))

(assert (=> bm!738161 d!2377948))

(declare-fun d!2377950 () Bool)

(declare-fun lt!2703328 () Int)

(assert (=> d!2377950 (>= lt!2703328 0)))

(declare-fun e!4694777 () Int)

(assert (=> d!2377950 (= lt!2703328 e!4694777)))

(declare-fun c!1461980 () Bool)

(assert (=> d!2377950 (= c!1461980 ((_ is Nil!74600) lt!2703011))))

(assert (=> d!2377950 (= (size!43431 lt!2703011) lt!2703328)))

(declare-fun b!7960758 () Bool)

(assert (=> b!7960758 (= e!4694777 0)))

(declare-fun b!7960759 () Bool)

(assert (=> b!7960759 (= e!4694777 (+ 1 (size!43431 (t!390467 lt!2703011))))))

(assert (= (and d!2377950 c!1461980) b!7960758))

(assert (= (and d!2377950 (not c!1461980)) b!7960759))

(declare-fun m!8341314 () Bool)

(assert (=> b!7960759 m!8341314))

(assert (=> b!7960227 d!2377950))

(assert (=> b!7960227 d!2377832))

(declare-fun d!2377952 () Bool)

(declare-fun lt!2703329 () Int)

(assert (=> d!2377952 (>= lt!2703329 0)))

(declare-fun e!4694778 () Int)

(assert (=> d!2377952 (= lt!2703329 e!4694778)))

(declare-fun c!1461981 () Bool)

(assert (=> d!2377952 (= c!1461981 ((_ is Nil!74600) (Cons!74600 lt!2703001 Nil!74600)))))

(assert (=> d!2377952 (= (size!43431 (Cons!74600 lt!2703001 Nil!74600)) lt!2703329)))

(declare-fun b!7960760 () Bool)

(assert (=> b!7960760 (= e!4694778 0)))

(declare-fun b!7960761 () Bool)

(assert (=> b!7960761 (= e!4694778 (+ 1 (size!43431 (t!390467 (Cons!74600 lt!2703001 Nil!74600)))))))

(assert (= (and d!2377952 c!1461981) b!7960760))

(assert (= (and d!2377952 (not c!1461981)) b!7960761))

(declare-fun m!8341316 () Bool)

(assert (=> b!7960761 m!8341316))

(assert (=> b!7960227 d!2377952))

(declare-fun d!2377954 () Bool)

(declare-fun lt!2703330 () Int)

(assert (=> d!2377954 (>= lt!2703330 0)))

(declare-fun e!4694779 () Int)

(assert (=> d!2377954 (= lt!2703330 e!4694779)))

(declare-fun c!1461982 () Bool)

(assert (=> d!2377954 (= c!1461982 ((_ is Nil!74600) (t!390467 input!7927)))))

(assert (=> d!2377954 (= (size!43431 (t!390467 input!7927)) lt!2703330)))

(declare-fun b!7960762 () Bool)

(assert (=> b!7960762 (= e!4694779 0)))

(declare-fun b!7960763 () Bool)

(assert (=> b!7960763 (= e!4694779 (+ 1 (size!43431 (t!390467 (t!390467 input!7927)))))))

(assert (= (and d!2377954 c!1461982) b!7960762))

(assert (= (and d!2377954 (not c!1461982)) b!7960763))

(declare-fun m!8341318 () Bool)

(assert (=> b!7960763 m!8341318))

(assert (=> b!7960285 d!2377954))

(assert (=> b!7960434 d!2377814))

(assert (=> b!7960432 d!2377944))

(declare-fun d!2377956 () Bool)

(assert (=> d!2377956 (= input!7927 lt!2703005)))

(declare-fun lt!2703331 () Unit!170010)

(assert (=> d!2377956 (= lt!2703331 (choose!59982 input!7927 lt!2703005 input!7927))))

(assert (=> d!2377956 (isPrefix!6595 input!7927 input!7927)))

(assert (=> d!2377956 (= (lemmaIsPrefixSameLengthThenSameList!1643 input!7927 lt!2703005 input!7927) lt!2703331)))

(declare-fun bs!1969731 () Bool)

(assert (= bs!1969731 d!2377956))

(declare-fun m!8341320 () Bool)

(assert (=> bs!1969731 m!8341320))

(assert (=> bs!1969731 m!8340760))

(assert (=> bm!738156 d!2377956))

(declare-fun bm!738201 () Bool)

(declare-fun call!738207 () Regex!21495)

(declare-fun call!738209 () Regex!21495)

(assert (=> bm!738201 (= call!738207 call!738209)))

(declare-fun b!7960764 () Bool)

(declare-fun e!4694781 () Regex!21495)

(declare-fun call!738206 () Regex!21495)

(assert (=> b!7960764 (= e!4694781 (Union!21495 (Concat!30494 call!738206 (regTwo!43502 r!24602)) EmptyLang!21495))))

(declare-fun b!7960765 () Bool)

(declare-fun e!4694783 () Regex!21495)

(assert (=> b!7960765 (= e!4694783 (Concat!30494 call!738207 r!24602))))

(declare-fun d!2377958 () Bool)

(declare-fun lt!2703332 () Regex!21495)

(assert (=> d!2377958 (validRegex!11799 lt!2703332)))

(declare-fun e!4694782 () Regex!21495)

(assert (=> d!2377958 (= lt!2703332 e!4694782)))

(declare-fun c!1461986 () Bool)

(assert (=> d!2377958 (= c!1461986 (or ((_ is EmptyExpr!21495) r!24602) ((_ is EmptyLang!21495) r!24602)))))

(assert (=> d!2377958 (validRegex!11799 r!24602)))

(assert (=> d!2377958 (= (derivativeStep!6523 r!24602 call!738140) lt!2703332)))

(declare-fun b!7960766 () Bool)

(declare-fun e!4694784 () Regex!21495)

(assert (=> b!7960766 (= e!4694784 e!4694783)))

(declare-fun c!1461985 () Bool)

(assert (=> b!7960766 (= c!1461985 ((_ is Star!21495) r!24602))))

(declare-fun c!1461983 () Bool)

(declare-fun bm!738202 () Bool)

(declare-fun c!1461987 () Bool)

(assert (=> bm!738202 (= call!738209 (derivativeStep!6523 (ite c!1461983 (regTwo!43503 r!24602) (ite c!1461985 (reg!21824 r!24602) (ite c!1461987 (regTwo!43502 r!24602) (regOne!43502 r!24602)))) call!738140))))

(declare-fun b!7960767 () Bool)

(assert (=> b!7960767 (= e!4694782 EmptyLang!21495)))

(declare-fun b!7960768 () Bool)

(declare-fun e!4694780 () Regex!21495)

(assert (=> b!7960768 (= e!4694780 (ite (= call!738140 (c!1461832 r!24602)) EmptyExpr!21495 EmptyLang!21495))))

(declare-fun call!738208 () Regex!21495)

(declare-fun b!7960769 () Bool)

(assert (=> b!7960769 (= e!4694781 (Union!21495 (Concat!30494 call!738208 (regTwo!43502 r!24602)) call!738206))))

(declare-fun bm!738203 () Bool)

(assert (=> bm!738203 (= call!738206 call!738207)))

(declare-fun bm!738204 () Bool)

(assert (=> bm!738204 (= call!738208 (derivativeStep!6523 (ite c!1461983 (regOne!43503 r!24602) (regOne!43502 r!24602)) call!738140))))

(declare-fun b!7960770 () Bool)

(assert (=> b!7960770 (= c!1461987 (nullable!9596 (regOne!43502 r!24602)))))

(assert (=> b!7960770 (= e!4694783 e!4694781)))

(declare-fun b!7960771 () Bool)

(assert (=> b!7960771 (= e!4694782 e!4694780)))

(declare-fun c!1461984 () Bool)

(assert (=> b!7960771 (= c!1461984 ((_ is ElementMatch!21495) r!24602))))

(declare-fun b!7960772 () Bool)

(assert (=> b!7960772 (= c!1461983 ((_ is Union!21495) r!24602))))

(assert (=> b!7960772 (= e!4694780 e!4694784)))

(declare-fun b!7960773 () Bool)

(assert (=> b!7960773 (= e!4694784 (Union!21495 call!738208 call!738209))))

(assert (= (and d!2377958 c!1461986) b!7960767))

(assert (= (and d!2377958 (not c!1461986)) b!7960771))

(assert (= (and b!7960771 c!1461984) b!7960768))

(assert (= (and b!7960771 (not c!1461984)) b!7960772))

(assert (= (and b!7960772 c!1461983) b!7960773))

(assert (= (and b!7960772 (not c!1461983)) b!7960766))

(assert (= (and b!7960766 c!1461985) b!7960765))

(assert (= (and b!7960766 (not c!1461985)) b!7960770))

(assert (= (and b!7960770 c!1461987) b!7960769))

(assert (= (and b!7960770 (not c!1461987)) b!7960764))

(assert (= (or b!7960769 b!7960764) bm!738203))

(assert (= (or b!7960765 bm!738203) bm!738201))

(assert (= (or b!7960773 bm!738201) bm!738202))

(assert (= (or b!7960773 b!7960769) bm!738204))

(declare-fun m!8341322 () Bool)

(assert (=> d!2377958 m!8341322))

(assert (=> d!2377958 m!8340918))

(declare-fun m!8341324 () Bool)

(assert (=> bm!738202 m!8341324))

(declare-fun m!8341326 () Bool)

(assert (=> bm!738204 m!8341326))

(assert (=> b!7960770 m!8341070))

(assert (=> bm!738134 d!2377958))

(declare-fun d!2377960 () Bool)

(declare-fun lt!2703333 () Int)

(assert (=> d!2377960 (>= lt!2703333 0)))

(declare-fun e!4694785 () Int)

(assert (=> d!2377960 (= lt!2703333 e!4694785)))

(declare-fun c!1461988 () Bool)

(assert (=> d!2377960 (= c!1461988 ((_ is Nil!74600) (_1!38629 lt!2703248)))))

(assert (=> d!2377960 (= (size!43431 (_1!38629 lt!2703248)) lt!2703333)))

(declare-fun b!7960774 () Bool)

(assert (=> b!7960774 (= e!4694785 0)))

(declare-fun b!7960775 () Bool)

(assert (=> b!7960775 (= e!4694785 (+ 1 (size!43431 (t!390467 (_1!38629 lt!2703248)))))))

(assert (= (and d!2377960 c!1461988) b!7960774))

(assert (= (and d!2377960 (not c!1461988)) b!7960775))

(declare-fun m!8341328 () Bool)

(assert (=> b!7960775 m!8341328))

(assert (=> b!7960457 d!2377960))

(assert (=> b!7960457 d!2377908))

(declare-fun b!7960779 () Bool)

(declare-fun e!4694787 () Bool)

(assert (=> b!7960779 (= e!4694787 (>= (size!43431 (tail!15784 input!7927)) (size!43431 (tail!15784 lt!2703005))))))

(declare-fun d!2377962 () Bool)

(assert (=> d!2377962 e!4694787))

(declare-fun res!3155243 () Bool)

(assert (=> d!2377962 (=> res!3155243 e!4694787)))

(declare-fun lt!2703334 () Bool)

(assert (=> d!2377962 (= res!3155243 (not lt!2703334))))

(declare-fun e!4694788 () Bool)

(assert (=> d!2377962 (= lt!2703334 e!4694788)))

(declare-fun res!3155241 () Bool)

(assert (=> d!2377962 (=> res!3155241 e!4694788)))

(assert (=> d!2377962 (= res!3155241 ((_ is Nil!74600) (tail!15784 lt!2703005)))))

(assert (=> d!2377962 (= (isPrefix!6595 (tail!15784 lt!2703005) (tail!15784 input!7927)) lt!2703334)))

(declare-fun b!7960778 () Bool)

(declare-fun e!4694786 () Bool)

(assert (=> b!7960778 (= e!4694786 (isPrefix!6595 (tail!15784 (tail!15784 lt!2703005)) (tail!15784 (tail!15784 input!7927))))))

(declare-fun b!7960776 () Bool)

(assert (=> b!7960776 (= e!4694788 e!4694786)))

(declare-fun res!3155242 () Bool)

(assert (=> b!7960776 (=> (not res!3155242) (not e!4694786))))

(assert (=> b!7960776 (= res!3155242 (not ((_ is Nil!74600) (tail!15784 input!7927))))))

(declare-fun b!7960777 () Bool)

(declare-fun res!3155240 () Bool)

(assert (=> b!7960777 (=> (not res!3155240) (not e!4694786))))

(assert (=> b!7960777 (= res!3155240 (= (head!16247 (tail!15784 lt!2703005)) (head!16247 (tail!15784 input!7927))))))

(assert (= (and d!2377962 (not res!3155241)) b!7960776))

(assert (= (and b!7960776 res!3155242) b!7960777))

(assert (= (and b!7960777 res!3155240) b!7960778))

(assert (= (and d!2377962 (not res!3155243)) b!7960779))

(assert (=> b!7960779 m!8340816))

(assert (=> b!7960779 m!8341108))

(assert (=> b!7960779 m!8340814))

(declare-fun m!8341330 () Bool)

(assert (=> b!7960779 m!8341330))

(assert (=> b!7960778 m!8340814))

(declare-fun m!8341332 () Bool)

(assert (=> b!7960778 m!8341332))

(assert (=> b!7960778 m!8340816))

(assert (=> b!7960778 m!8341110))

(assert (=> b!7960778 m!8341332))

(assert (=> b!7960778 m!8341110))

(declare-fun m!8341334 () Bool)

(assert (=> b!7960778 m!8341334))

(assert (=> b!7960777 m!8340814))

(declare-fun m!8341336 () Bool)

(assert (=> b!7960777 m!8341336))

(assert (=> b!7960777 m!8340816))

(declare-fun m!8341338 () Bool)

(assert (=> b!7960777 m!8341338))

(assert (=> b!7960247 d!2377962))

(declare-fun d!2377964 () Bool)

(assert (=> d!2377964 (= (tail!15784 lt!2703005) (t!390467 lt!2703005))))

(assert (=> b!7960247 d!2377964))

(assert (=> b!7960247 d!2377878))

(declare-fun d!2377966 () Bool)

(assert (=> d!2377966 (= (tail!15784 lt!2703000) lt!2703251)))

(declare-fun lt!2703335 () Unit!170010)

(assert (=> d!2377966 (= lt!2703335 (choose!59990 lt!2703005 (tail!15784 lt!2703000) lt!2703005 lt!2703251 input!7927))))

(assert (=> d!2377966 (isPrefix!6595 lt!2703005 input!7927)))

(assert (=> d!2377966 (= (lemmaSamePrefixThenSameSuffix!2990 lt!2703005 (tail!15784 lt!2703000) lt!2703005 lt!2703251 input!7927) lt!2703335)))

(declare-fun bs!1969732 () Bool)

(assert (= bs!1969732 d!2377966))

(assert (=> bs!1969732 m!8340770))

(declare-fun m!8341340 () Bool)

(assert (=> bs!1969732 m!8341340))

(assert (=> bs!1969732 m!8340776))

(assert (=> d!2377844 d!2377966))

(declare-fun d!2377968 () Bool)

(assert (=> d!2377968 (isPrefix!6595 lt!2703005 (++!18365 lt!2703005 (tail!15784 lt!2703000)))))

(declare-fun lt!2703336 () Unit!170010)

(assert (=> d!2377968 (= lt!2703336 (choose!59989 lt!2703005 (tail!15784 lt!2703000)))))

(assert (=> d!2377968 (= (lemmaConcatTwoListThenFirstIsPrefix!3852 lt!2703005 (tail!15784 lt!2703000)) lt!2703336)))

(declare-fun bs!1969733 () Bool)

(assert (= bs!1969733 d!2377968))

(assert (=> bs!1969733 m!8340770))

(assert (=> bs!1969733 m!8341032))

(assert (=> bs!1969733 m!8341032))

(assert (=> bs!1969733 m!8341034))

(assert (=> bs!1969733 m!8340770))

(declare-fun m!8341342 () Bool)

(assert (=> bs!1969733 m!8341342))

(assert (=> d!2377844 d!2377968))

(assert (=> d!2377844 d!2377896))

(declare-fun b!7960780 () Bool)

(declare-fun e!4694794 () Bool)

(declare-fun e!4694791 () Bool)

(assert (=> b!7960780 (= e!4694794 e!4694791)))

(declare-fun res!3155248 () Bool)

(assert (=> b!7960780 (= res!3155248 (not (nullable!9596 (reg!21824 (derivativeStep!6523 r!24602 lt!2703001)))))))

(assert (=> b!7960780 (=> (not res!3155248) (not e!4694791))))

(declare-fun b!7960781 () Bool)

(declare-fun e!4694795 () Bool)

(declare-fun call!738210 () Bool)

(assert (=> b!7960781 (= e!4694795 call!738210)))

(declare-fun b!7960782 () Bool)

(declare-fun res!3155244 () Bool)

(assert (=> b!7960782 (=> (not res!3155244) (not e!4694795))))

(declare-fun call!738212 () Bool)

(assert (=> b!7960782 (= res!3155244 call!738212)))

(declare-fun e!4694793 () Bool)

(assert (=> b!7960782 (= e!4694793 e!4694795)))

(declare-fun bm!738205 () Bool)

(declare-fun call!738211 () Bool)

(assert (=> bm!738205 (= call!738212 call!738211)))

(declare-fun c!1461990 () Bool)

(declare-fun bm!738206 () Bool)

(declare-fun c!1461989 () Bool)

(assert (=> bm!738206 (= call!738211 (validRegex!11799 (ite c!1461989 (reg!21824 (derivativeStep!6523 r!24602 lt!2703001)) (ite c!1461990 (regOne!43503 (derivativeStep!6523 r!24602 lt!2703001)) (regOne!43502 (derivativeStep!6523 r!24602 lt!2703001))))))))

(declare-fun b!7960783 () Bool)

(assert (=> b!7960783 (= e!4694794 e!4694793)))

(assert (=> b!7960783 (= c!1461990 ((_ is Union!21495) (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun b!7960784 () Bool)

(declare-fun res!3155247 () Bool)

(declare-fun e!4694790 () Bool)

(assert (=> b!7960784 (=> res!3155247 e!4694790)))

(assert (=> b!7960784 (= res!3155247 (not ((_ is Concat!30494) (derivativeStep!6523 r!24602 lt!2703001))))))

(assert (=> b!7960784 (= e!4694793 e!4694790)))

(declare-fun d!2377970 () Bool)

(declare-fun res!3155246 () Bool)

(declare-fun e!4694789 () Bool)

(assert (=> d!2377970 (=> res!3155246 e!4694789)))

(assert (=> d!2377970 (= res!3155246 ((_ is ElementMatch!21495) (derivativeStep!6523 r!24602 lt!2703001)))))

(assert (=> d!2377970 (= (validRegex!11799 (derivativeStep!6523 r!24602 lt!2703001)) e!4694789)))

(declare-fun bm!738207 () Bool)

(assert (=> bm!738207 (= call!738210 (validRegex!11799 (ite c!1461990 (regTwo!43503 (derivativeStep!6523 r!24602 lt!2703001)) (regTwo!43502 (derivativeStep!6523 r!24602 lt!2703001)))))))

(declare-fun b!7960785 () Bool)

(assert (=> b!7960785 (= e!4694789 e!4694794)))

(assert (=> b!7960785 (= c!1461989 ((_ is Star!21495) (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun b!7960786 () Bool)

(declare-fun e!4694792 () Bool)

(assert (=> b!7960786 (= e!4694792 call!738210)))

(declare-fun b!7960787 () Bool)

(assert (=> b!7960787 (= e!4694791 call!738211)))

(declare-fun b!7960788 () Bool)

(assert (=> b!7960788 (= e!4694790 e!4694792)))

(declare-fun res!3155245 () Bool)

(assert (=> b!7960788 (=> (not res!3155245) (not e!4694792))))

(assert (=> b!7960788 (= res!3155245 call!738212)))

(assert (= (and d!2377970 (not res!3155246)) b!7960785))

(assert (= (and b!7960785 c!1461989) b!7960780))

(assert (= (and b!7960785 (not c!1461989)) b!7960783))

(assert (= (and b!7960780 res!3155248) b!7960787))

(assert (= (and b!7960783 c!1461990) b!7960782))

(assert (= (and b!7960783 (not c!1461990)) b!7960784))

(assert (= (and b!7960782 res!3155244) b!7960781))

(assert (= (and b!7960784 (not res!3155247)) b!7960788))

(assert (= (and b!7960788 res!3155245) b!7960786))

(assert (= (or b!7960781 b!7960786) bm!738207))

(assert (= (or b!7960782 b!7960788) bm!738205))

(assert (= (or b!7960787 bm!738205) bm!738206))

(declare-fun m!8341344 () Bool)

(assert (=> b!7960780 m!8341344))

(declare-fun m!8341346 () Bool)

(assert (=> bm!738206 m!8341346))

(declare-fun m!8341348 () Bool)

(assert (=> bm!738207 m!8341348))

(assert (=> d!2377844 d!2377970))

(declare-fun d!2377972 () Bool)

(assert (=> d!2377972 (= (lostCause!1974 (derivativeStep!6523 r!24602 lt!2703001)) (lostCauseFct!569 (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun bs!1969734 () Bool)

(assert (= bs!1969734 d!2377972))

(assert (=> bs!1969734 m!8340768))

(declare-fun m!8341350 () Bool)

(assert (=> bs!1969734 m!8341350))

(assert (=> d!2377844 d!2377972))

(declare-fun b!7960792 () Bool)

(declare-fun e!4694797 () Bool)

(assert (=> b!7960792 (= e!4694797 (>= (size!43431 (++!18365 lt!2703005 (tail!15784 lt!2703000))) (size!43431 lt!2703005)))))

(declare-fun d!2377974 () Bool)

(assert (=> d!2377974 e!4694797))

(declare-fun res!3155252 () Bool)

(assert (=> d!2377974 (=> res!3155252 e!4694797)))

(declare-fun lt!2703337 () Bool)

(assert (=> d!2377974 (= res!3155252 (not lt!2703337))))

(declare-fun e!4694798 () Bool)

(assert (=> d!2377974 (= lt!2703337 e!4694798)))

(declare-fun res!3155250 () Bool)

(assert (=> d!2377974 (=> res!3155250 e!4694798)))

(assert (=> d!2377974 (= res!3155250 ((_ is Nil!74600) lt!2703005))))

(assert (=> d!2377974 (= (isPrefix!6595 lt!2703005 (++!18365 lt!2703005 (tail!15784 lt!2703000))) lt!2703337)))

(declare-fun b!7960791 () Bool)

(declare-fun e!4694796 () Bool)

(assert (=> b!7960791 (= e!4694796 (isPrefix!6595 (tail!15784 lt!2703005) (tail!15784 (++!18365 lt!2703005 (tail!15784 lt!2703000)))))))

(declare-fun b!7960789 () Bool)

(assert (=> b!7960789 (= e!4694798 e!4694796)))

(declare-fun res!3155251 () Bool)

(assert (=> b!7960789 (=> (not res!3155251) (not e!4694796))))

(assert (=> b!7960789 (= res!3155251 (not ((_ is Nil!74600) (++!18365 lt!2703005 (tail!15784 lt!2703000)))))))

(declare-fun b!7960790 () Bool)

(declare-fun res!3155249 () Bool)

(assert (=> b!7960790 (=> (not res!3155249) (not e!4694796))))

(assert (=> b!7960790 (= res!3155249 (= (head!16247 lt!2703005) (head!16247 (++!18365 lt!2703005 (tail!15784 lt!2703000)))))))

(assert (= (and d!2377974 (not res!3155250)) b!7960789))

(assert (= (and b!7960789 res!3155251) b!7960790))

(assert (= (and b!7960790 res!3155249) b!7960791))

(assert (= (and d!2377974 (not res!3155252)) b!7960792))

(assert (=> b!7960792 m!8341032))

(declare-fun m!8341352 () Bool)

(assert (=> b!7960792 m!8341352))

(assert (=> b!7960792 m!8340812))

(assert (=> b!7960791 m!8340814))

(assert (=> b!7960791 m!8341032))

(declare-fun m!8341354 () Bool)

(assert (=> b!7960791 m!8341354))

(assert (=> b!7960791 m!8340814))

(assert (=> b!7960791 m!8341354))

(declare-fun m!8341356 () Bool)

(assert (=> b!7960791 m!8341356))

(assert (=> b!7960790 m!8340820))

(assert (=> b!7960790 m!8341032))

(declare-fun m!8341358 () Bool)

(assert (=> b!7960790 m!8341358))

(assert (=> d!2377844 d!2377974))

(declare-fun d!2377976 () Bool)

(declare-fun e!4694800 () Bool)

(assert (=> d!2377976 e!4694800))

(declare-fun res!3155254 () Bool)

(assert (=> d!2377976 (=> (not res!3155254) (not e!4694800))))

(declare-fun lt!2703338 () List!74724)

(assert (=> d!2377976 (= res!3155254 (= (content!15841 lt!2703338) ((_ map or) (content!15841 lt!2703005) (content!15841 (tail!15784 lt!2703000)))))))

(declare-fun e!4694799 () List!74724)

(assert (=> d!2377976 (= lt!2703338 e!4694799)))

(declare-fun c!1461991 () Bool)

(assert (=> d!2377976 (= c!1461991 ((_ is Nil!74600) lt!2703005))))

(assert (=> d!2377976 (= (++!18365 lt!2703005 (tail!15784 lt!2703000)) lt!2703338)))

(declare-fun b!7960794 () Bool)

(assert (=> b!7960794 (= e!4694799 (Cons!74600 (h!81048 lt!2703005) (++!18365 (t!390467 lt!2703005) (tail!15784 lt!2703000))))))

(declare-fun b!7960796 () Bool)

(assert (=> b!7960796 (= e!4694800 (or (not (= (tail!15784 lt!2703000) Nil!74600)) (= lt!2703338 lt!2703005)))))

(declare-fun b!7960795 () Bool)

(declare-fun res!3155253 () Bool)

(assert (=> b!7960795 (=> (not res!3155253) (not e!4694800))))

(assert (=> b!7960795 (= res!3155253 (= (size!43431 lt!2703338) (+ (size!43431 lt!2703005) (size!43431 (tail!15784 lt!2703000)))))))

(declare-fun b!7960793 () Bool)

(assert (=> b!7960793 (= e!4694799 (tail!15784 lt!2703000))))

(assert (= (and d!2377976 c!1461991) b!7960793))

(assert (= (and d!2377976 (not c!1461991)) b!7960794))

(assert (= (and d!2377976 res!3155254) b!7960795))

(assert (= (and b!7960795 res!3155253) b!7960796))

(declare-fun m!8341360 () Bool)

(assert (=> d!2377976 m!8341360))

(assert (=> d!2377976 m!8341144))

(assert (=> d!2377976 m!8340770))

(declare-fun m!8341362 () Bool)

(assert (=> d!2377976 m!8341362))

(assert (=> b!7960794 m!8340770))

(declare-fun m!8341364 () Bool)

(assert (=> b!7960794 m!8341364))

(declare-fun m!8341366 () Bool)

(assert (=> b!7960795 m!8341366))

(assert (=> b!7960795 m!8340812))

(assert (=> b!7960795 m!8340770))

(declare-fun m!8341368 () Bool)

(assert (=> b!7960795 m!8341368))

(assert (=> d!2377844 d!2377976))

(declare-fun d!2377978 () Bool)

(declare-fun e!4694802 () Bool)

(assert (=> d!2377978 e!4694802))

(declare-fun res!3155256 () Bool)

(assert (=> d!2377978 (=> (not res!3155256) (not e!4694802))))

(declare-fun lt!2703339 () List!74724)

(assert (=> d!2377978 (= res!3155256 (= (content!15841 lt!2703339) ((_ map or) (content!15841 (_1!38629 lt!2703248)) (content!15841 (_2!38629 lt!2703248)))))))

(declare-fun e!4694801 () List!74724)

(assert (=> d!2377978 (= lt!2703339 e!4694801)))

(declare-fun c!1461992 () Bool)

(assert (=> d!2377978 (= c!1461992 ((_ is Nil!74600) (_1!38629 lt!2703248)))))

(assert (=> d!2377978 (= (++!18365 (_1!38629 lt!2703248) (_2!38629 lt!2703248)) lt!2703339)))

(declare-fun b!7960798 () Bool)

(assert (=> b!7960798 (= e!4694801 (Cons!74600 (h!81048 (_1!38629 lt!2703248)) (++!18365 (t!390467 (_1!38629 lt!2703248)) (_2!38629 lt!2703248))))))

(declare-fun b!7960800 () Bool)

(assert (=> b!7960800 (= e!4694802 (or (not (= (_2!38629 lt!2703248) Nil!74600)) (= lt!2703339 (_1!38629 lt!2703248))))))

(declare-fun b!7960799 () Bool)

(declare-fun res!3155255 () Bool)

(assert (=> b!7960799 (=> (not res!3155255) (not e!4694802))))

(assert (=> b!7960799 (= res!3155255 (= (size!43431 lt!2703339) (+ (size!43431 (_1!38629 lt!2703248)) (size!43431 (_2!38629 lt!2703248)))))))

(declare-fun b!7960797 () Bool)

(assert (=> b!7960797 (= e!4694801 (_2!38629 lt!2703248))))

(assert (= (and d!2377978 c!1461992) b!7960797))

(assert (= (and d!2377978 (not c!1461992)) b!7960798))

(assert (= (and d!2377978 res!3155256) b!7960799))

(assert (= (and b!7960799 res!3155255) b!7960800))

(declare-fun m!8341370 () Bool)

(assert (=> d!2377978 m!8341370))

(declare-fun m!8341372 () Bool)

(assert (=> d!2377978 m!8341372))

(declare-fun m!8341374 () Bool)

(assert (=> d!2377978 m!8341374))

(declare-fun m!8341376 () Bool)

(assert (=> b!7960798 m!8341376))

(declare-fun m!8341378 () Bool)

(assert (=> b!7960799 m!8341378))

(assert (=> b!7960799 m!8341000))

(declare-fun m!8341380 () Bool)

(assert (=> b!7960799 m!8341380))

(assert (=> d!2377844 d!2377978))

(declare-fun d!2377980 () Bool)

(assert (=> d!2377980 (= input!7927 testedP!447)))

(assert (=> d!2377980 true))

(declare-fun _$60!1330 () Unit!170010)

(assert (=> d!2377980 (= (choose!59982 input!7927 testedP!447 input!7927) _$60!1330)))

(assert (=> d!2377840 d!2377980))

(assert (=> d!2377840 d!2377838))

(declare-fun b!7960801 () Bool)

(declare-fun e!4694807 () tuple2!70652)

(assert (=> b!7960801 (= e!4694807 (tuple2!70653 lt!2703241 call!738168))))

(declare-fun b!7960802 () Bool)

(declare-fun e!4694809 () tuple2!70652)

(assert (=> b!7960802 (= e!4694809 (tuple2!70653 lt!2703241 Nil!74600))))

(declare-fun b!7960803 () Bool)

(declare-fun e!4694804 () Bool)

(declare-fun lt!2703350 () tuple2!70652)

(assert (=> b!7960803 (= e!4694804 (>= (size!43431 (_1!38629 lt!2703350)) (size!43431 lt!2703241)))))

(declare-fun b!7960804 () Bool)

(declare-fun e!4694810 () Unit!170010)

(declare-fun Unit!170026 () Unit!170010)

(assert (=> b!7960804 (= e!4694810 Unit!170026)))

(declare-fun lt!2703342 () Unit!170010)

(declare-fun call!738214 () Unit!170010)

(assert (=> b!7960804 (= lt!2703342 call!738214)))

(declare-fun call!738215 () Bool)

(assert (=> b!7960804 call!738215))

(declare-fun lt!2703361 () Unit!170010)

(assert (=> b!7960804 (= lt!2703361 lt!2703342)))

(declare-fun lt!2703360 () Unit!170010)

(declare-fun call!738218 () Unit!170010)

(assert (=> b!7960804 (= lt!2703360 call!738218)))

(assert (=> b!7960804 (= input!7927 lt!2703241)))

(declare-fun lt!2703366 () Unit!170010)

(assert (=> b!7960804 (= lt!2703366 lt!2703360)))

(assert (=> b!7960804 false))

(declare-fun bm!738208 () Bool)

(assert (=> bm!738208 (= call!738218 (lemmaIsPrefixSameLengthThenSameList!1643 input!7927 lt!2703241 input!7927))))

(declare-fun b!7960805 () Bool)

(declare-fun c!1461994 () Bool)

(declare-fun call!738216 () Bool)

(assert (=> b!7960805 (= c!1461994 call!738216)))

(declare-fun lt!2703356 () Unit!170010)

(declare-fun lt!2703359 () Unit!170010)

(assert (=> b!7960805 (= lt!2703356 lt!2703359)))

(assert (=> b!7960805 (= input!7927 lt!2703241)))

(assert (=> b!7960805 (= lt!2703359 call!738218)))

(declare-fun lt!2703363 () Unit!170010)

(declare-fun lt!2703345 () Unit!170010)

(assert (=> b!7960805 (= lt!2703363 lt!2703345)))

(assert (=> b!7960805 call!738215))

(assert (=> b!7960805 (= lt!2703345 call!738214)))

(declare-fun e!4694806 () tuple2!70652)

(assert (=> b!7960805 (= e!4694806 e!4694809)))

(declare-fun b!7960806 () Bool)

(declare-fun Unit!170027 () Unit!170010)

(assert (=> b!7960806 (= e!4694810 Unit!170027)))

(declare-fun d!2377982 () Bool)

(declare-fun e!4694808 () Bool)

(assert (=> d!2377982 e!4694808))

(declare-fun res!3155257 () Bool)

(assert (=> d!2377982 (=> (not res!3155257) (not e!4694808))))

(assert (=> d!2377982 (= res!3155257 (= (++!18365 (_1!38629 lt!2703350) (_2!38629 lt!2703350)) input!7927))))

(declare-fun e!4694803 () tuple2!70652)

(assert (=> d!2377982 (= lt!2703350 e!4694803)))

(declare-fun c!1461998 () Bool)

(assert (=> d!2377982 (= c!1461998 (lostCause!1974 call!738165))))

(declare-fun lt!2703341 () Unit!170010)

(declare-fun Unit!170028 () Unit!170010)

(assert (=> d!2377982 (= lt!2703341 Unit!170028)))

(assert (=> d!2377982 (= (getSuffix!3798 input!7927 lt!2703241) call!738168)))

(declare-fun lt!2703344 () Unit!170010)

(declare-fun lt!2703365 () Unit!170010)

(assert (=> d!2377982 (= lt!2703344 lt!2703365)))

(declare-fun lt!2703353 () List!74724)

(assert (=> d!2377982 (= call!738168 lt!2703353)))

(assert (=> d!2377982 (= lt!2703365 (lemmaSamePrefixThenSameSuffix!2990 lt!2703241 call!738168 lt!2703241 lt!2703353 input!7927))))

(assert (=> d!2377982 (= lt!2703353 (getSuffix!3798 input!7927 lt!2703241))))

(declare-fun lt!2703346 () Unit!170010)

(declare-fun lt!2703349 () Unit!170010)

(assert (=> d!2377982 (= lt!2703346 lt!2703349)))

(assert (=> d!2377982 (isPrefix!6595 lt!2703241 (++!18365 lt!2703241 call!738168))))

(assert (=> d!2377982 (= lt!2703349 (lemmaConcatTwoListThenFirstIsPrefix!3852 lt!2703241 call!738168))))

(assert (=> d!2377982 (validRegex!11799 call!738165)))

(assert (=> d!2377982 (= (findLongestMatchInner!2276 call!738165 lt!2703241 (+ 1 lt!2703002 1) call!738168 input!7927 lt!2702998) lt!2703350)))

(declare-fun b!7960807 () Bool)

(assert (=> b!7960807 (= e!4694803 (tuple2!70653 Nil!74600 input!7927))))

(declare-fun bm!738209 () Bool)

(assert (=> bm!738209 (= call!738215 (isPrefix!6595 input!7927 input!7927))))

(declare-fun b!7960808 () Bool)

(declare-fun e!4694805 () tuple2!70652)

(assert (=> b!7960808 (= e!4694805 e!4694807)))

(declare-fun lt!2703362 () tuple2!70652)

(declare-fun call!738213 () tuple2!70652)

(assert (=> b!7960808 (= lt!2703362 call!738213)))

(declare-fun c!1461995 () Bool)

(assert (=> b!7960808 (= c!1461995 (isEmpty!42901 (_1!38629 lt!2703362)))))

(declare-fun call!738220 () List!74724)

(declare-fun lt!2703343 () List!74724)

(declare-fun bm!738210 () Bool)

(declare-fun call!738217 () Regex!21495)

(assert (=> bm!738210 (= call!738213 (findLongestMatchInner!2276 call!738217 lt!2703343 (+ 1 lt!2703002 1 1) call!738220 input!7927 lt!2702998))))

(declare-fun bm!738211 () Bool)

(assert (=> bm!738211 (= call!738216 (nullable!9596 call!738165))))

(declare-fun b!7960809 () Bool)

(assert (=> b!7960809 (= e!4694808 e!4694804)))

(declare-fun res!3155258 () Bool)

(assert (=> b!7960809 (=> res!3155258 e!4694804)))

(assert (=> b!7960809 (= res!3155258 (isEmpty!42901 (_1!38629 lt!2703350)))))

(declare-fun b!7960810 () Bool)

(declare-fun c!1461997 () Bool)

(assert (=> b!7960810 (= c!1461997 call!738216)))

(declare-fun lt!2703367 () Unit!170010)

(declare-fun lt!2703352 () Unit!170010)

(assert (=> b!7960810 (= lt!2703367 lt!2703352)))

(declare-fun lt!2703340 () List!74724)

(declare-fun lt!2703357 () C!43328)

(assert (=> b!7960810 (= (++!18365 (++!18365 lt!2703241 (Cons!74600 lt!2703357 Nil!74600)) lt!2703340) input!7927)))

(assert (=> b!7960810 (= lt!2703352 (lemmaMoveElementToOtherListKeepsConcatEq!3530 lt!2703241 lt!2703357 lt!2703340 input!7927))))

(assert (=> b!7960810 (= lt!2703340 (tail!15784 call!738168))))

(assert (=> b!7960810 (= lt!2703357 (head!16247 call!738168))))

(declare-fun lt!2703355 () Unit!170010)

(declare-fun lt!2703347 () Unit!170010)

(assert (=> b!7960810 (= lt!2703355 lt!2703347)))

(assert (=> b!7960810 (isPrefix!6595 (++!18365 lt!2703241 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703241)) Nil!74600)) input!7927)))

(assert (=> b!7960810 (= lt!2703347 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 lt!2703241 input!7927))))

(declare-fun lt!2703354 () Unit!170010)

(declare-fun lt!2703358 () Unit!170010)

(assert (=> b!7960810 (= lt!2703354 lt!2703358)))

(assert (=> b!7960810 (= lt!2703358 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 lt!2703241 input!7927))))

(assert (=> b!7960810 (= lt!2703343 (++!18365 lt!2703241 (Cons!74600 (head!16247 call!738168) Nil!74600)))))

(declare-fun lt!2703351 () Unit!170010)

(assert (=> b!7960810 (= lt!2703351 e!4694810)))

(declare-fun c!1461993 () Bool)

(assert (=> b!7960810 (= c!1461993 (= (size!43431 lt!2703241) (size!43431 input!7927)))))

(declare-fun lt!2703364 () Unit!170010)

(declare-fun lt!2703348 () Unit!170010)

(assert (=> b!7960810 (= lt!2703364 lt!2703348)))

(assert (=> b!7960810 (<= (size!43431 lt!2703241) (size!43431 input!7927))))

(assert (=> b!7960810 (= lt!2703348 (lemmaIsPrefixThenSmallerEqSize!1112 lt!2703241 input!7927))))

(assert (=> b!7960810 (= e!4694806 e!4694805)))

(declare-fun b!7960811 () Bool)

(assert (=> b!7960811 (= e!4694805 call!738213)))

(declare-fun b!7960812 () Bool)

(assert (=> b!7960812 (= e!4694807 lt!2703362)))

(declare-fun bm!738212 () Bool)

(declare-fun call!738219 () C!43328)

(assert (=> bm!738212 (= call!738219 (head!16247 call!738168))))

(declare-fun bm!738213 () Bool)

(assert (=> bm!738213 (= call!738217 (derivativeStep!6523 call!738165 call!738219))))

(declare-fun bm!738214 () Bool)

(assert (=> bm!738214 (= call!738214 (lemmaIsPrefixRefl!4063 input!7927 input!7927))))

(declare-fun b!7960813 () Bool)

(assert (=> b!7960813 (= e!4694809 (tuple2!70653 Nil!74600 input!7927))))

(declare-fun bm!738215 () Bool)

(assert (=> bm!738215 (= call!738220 (tail!15784 call!738168))))

(declare-fun b!7960814 () Bool)

(assert (=> b!7960814 (= e!4694803 e!4694806)))

(declare-fun c!1461996 () Bool)

(assert (=> b!7960814 (= c!1461996 (= (+ 1 lt!2703002 1) lt!2702998))))

(assert (= (and d!2377982 c!1461998) b!7960807))

(assert (= (and d!2377982 (not c!1461998)) b!7960814))

(assert (= (and b!7960814 c!1461996) b!7960805))

(assert (= (and b!7960814 (not c!1461996)) b!7960810))

(assert (= (and b!7960805 c!1461994) b!7960802))

(assert (= (and b!7960805 (not c!1461994)) b!7960813))

(assert (= (and b!7960810 c!1461993) b!7960804))

(assert (= (and b!7960810 (not c!1461993)) b!7960806))

(assert (= (and b!7960810 c!1461997) b!7960808))

(assert (= (and b!7960810 (not c!1461997)) b!7960811))

(assert (= (and b!7960808 c!1461995) b!7960801))

(assert (= (and b!7960808 (not c!1461995)) b!7960812))

(assert (= (or b!7960808 b!7960811) bm!738212))

(assert (= (or b!7960808 b!7960811) bm!738215))

(assert (= (or b!7960808 b!7960811) bm!738213))

(assert (= (or b!7960808 b!7960811) bm!738210))

(assert (= (or b!7960805 b!7960810) bm!738211))

(assert (= (or b!7960805 b!7960804) bm!738208))

(assert (= (or b!7960805 b!7960804) bm!738214))

(assert (= (or b!7960805 b!7960804) bm!738209))

(assert (= (and d!2377982 res!3155257) b!7960809))

(assert (= (and b!7960809 (not res!3155258)) b!7960803))

(declare-fun m!8341382 () Bool)

(assert (=> bm!738211 m!8341382))

(declare-fun m!8341384 () Bool)

(assert (=> bm!738213 m!8341384))

(declare-fun m!8341386 () Bool)

(assert (=> b!7960809 m!8341386))

(assert (=> bm!738209 m!8340760))

(declare-fun m!8341388 () Bool)

(assert (=> bm!738208 m!8341388))

(assert (=> bm!738214 m!8340758))

(declare-fun m!8341390 () Bool)

(assert (=> b!7960803 m!8341390))

(declare-fun m!8341392 () Bool)

(assert (=> b!7960803 m!8341392))

(declare-fun m!8341394 () Bool)

(assert (=> bm!738210 m!8341394))

(declare-fun m!8341396 () Bool)

(assert (=> bm!738215 m!8341396))

(declare-fun m!8341398 () Bool)

(assert (=> bm!738212 m!8341398))

(declare-fun m!8341400 () Bool)

(assert (=> b!7960808 m!8341400))

(assert (=> b!7960810 m!8341392))

(declare-fun m!8341402 () Bool)

(assert (=> b!7960810 m!8341402))

(declare-fun m!8341404 () Bool)

(assert (=> b!7960810 m!8341404))

(declare-fun m!8341406 () Bool)

(assert (=> b!7960810 m!8341406))

(declare-fun m!8341408 () Bool)

(assert (=> b!7960810 m!8341408))

(assert (=> b!7960810 m!8340752))

(assert (=> b!7960810 m!8341402))

(declare-fun m!8341410 () Bool)

(assert (=> b!7960810 m!8341410))

(declare-fun m!8341412 () Bool)

(assert (=> b!7960810 m!8341412))

(assert (=> b!7960810 m!8341404))

(declare-fun m!8341414 () Bool)

(assert (=> b!7960810 m!8341414))

(declare-fun m!8341416 () Bool)

(assert (=> b!7960810 m!8341416))

(assert (=> b!7960810 m!8341396))

(declare-fun m!8341418 () Bool)

(assert (=> b!7960810 m!8341418))

(assert (=> b!7960810 m!8341398))

(assert (=> b!7960810 m!8341412))

(declare-fun m!8341420 () Bool)

(assert (=> b!7960810 m!8341420))

(declare-fun m!8341422 () Bool)

(assert (=> d!2377982 m!8341422))

(assert (=> d!2377982 m!8341404))

(declare-fun m!8341424 () Bool)

(assert (=> d!2377982 m!8341424))

(declare-fun m!8341426 () Bool)

(assert (=> d!2377982 m!8341426))

(declare-fun m!8341428 () Bool)

(assert (=> d!2377982 m!8341428))

(declare-fun m!8341430 () Bool)

(assert (=> d!2377982 m!8341430))

(assert (=> d!2377982 m!8341424))

(declare-fun m!8341432 () Bool)

(assert (=> d!2377982 m!8341432))

(declare-fun m!8341434 () Bool)

(assert (=> d!2377982 m!8341434))

(assert (=> bm!738158 d!2377982))

(declare-fun d!2377984 () Bool)

(declare-fun lt!2703368 () Int)

(assert (=> d!2377984 (>= lt!2703368 0)))

(declare-fun e!4694811 () Int)

(assert (=> d!2377984 (= lt!2703368 e!4694811)))

(declare-fun c!1461999 () Bool)

(assert (=> d!2377984 (= c!1461999 ((_ is Nil!74600) (_1!38629 lt!2703178)))))

(assert (=> d!2377984 (= (size!43431 (_1!38629 lt!2703178)) lt!2703368)))

(declare-fun b!7960815 () Bool)

(assert (=> b!7960815 (= e!4694811 0)))

(declare-fun b!7960816 () Bool)

(assert (=> b!7960816 (= e!4694811 (+ 1 (size!43431 (t!390467 (_1!38629 lt!2703178)))))))

(assert (= (and d!2377984 c!1461999) b!7960815))

(assert (= (and d!2377984 (not c!1461999)) b!7960816))

(declare-fun m!8341436 () Bool)

(assert (=> b!7960816 m!8341436))

(assert (=> b!7960368 d!2377984))

(assert (=> b!7960368 d!2377832))

(declare-fun d!2377986 () Bool)

(declare-fun e!4694813 () Bool)

(assert (=> d!2377986 e!4694813))

(declare-fun res!3155260 () Bool)

(assert (=> d!2377986 (=> (not res!3155260) (not e!4694813))))

(declare-fun lt!2703369 () List!74724)

(assert (=> d!2377986 (= res!3155260 (= (content!15841 lt!2703369) ((_ map or) (content!15841 testedP!447) (content!15841 lt!2703227))))))

(declare-fun e!4694812 () List!74724)

(assert (=> d!2377986 (= lt!2703369 e!4694812)))

(declare-fun c!1462000 () Bool)

(assert (=> d!2377986 (= c!1462000 ((_ is Nil!74600) testedP!447))))

(assert (=> d!2377986 (= (++!18365 testedP!447 lt!2703227) lt!2703369)))

(declare-fun b!7960818 () Bool)

(assert (=> b!7960818 (= e!4694812 (Cons!74600 (h!81048 testedP!447) (++!18365 (t!390467 testedP!447) lt!2703227)))))

(declare-fun b!7960820 () Bool)

(assert (=> b!7960820 (= e!4694813 (or (not (= lt!2703227 Nil!74600)) (= lt!2703369 testedP!447)))))

(declare-fun b!7960819 () Bool)

(declare-fun res!3155259 () Bool)

(assert (=> b!7960819 (=> (not res!3155259) (not e!4694813))))

(assert (=> b!7960819 (= res!3155259 (= (size!43431 lt!2703369) (+ (size!43431 testedP!447) (size!43431 lt!2703227))))))

(declare-fun b!7960817 () Bool)

(assert (=> b!7960817 (= e!4694812 lt!2703227)))

(assert (= (and d!2377986 c!1462000) b!7960817))

(assert (= (and d!2377986 (not c!1462000)) b!7960818))

(assert (= (and d!2377986 res!3155260) b!7960819))

(assert (= (and b!7960819 res!3155259) b!7960820))

(declare-fun m!8341438 () Bool)

(assert (=> d!2377986 m!8341438))

(assert (=> d!2377986 m!8340796))

(declare-fun m!8341440 () Bool)

(assert (=> d!2377986 m!8341440))

(declare-fun m!8341442 () Bool)

(assert (=> b!7960818 m!8341442))

(declare-fun m!8341444 () Bool)

(assert (=> b!7960819 m!8341444))

(assert (=> b!7960819 m!8340750))

(declare-fun m!8341446 () Bool)

(assert (=> b!7960819 m!8341446))

(assert (=> d!2377826 d!2377986))

(assert (=> d!2377826 d!2377814))

(assert (=> d!2377826 d!2377832))

(declare-fun b!7960821 () Bool)

(declare-fun e!4694819 () Bool)

(declare-fun e!4694816 () Bool)

(assert (=> b!7960821 (= e!4694819 e!4694816)))

(declare-fun res!3155265 () Bool)

(assert (=> b!7960821 (= res!3155265 (not (nullable!9596 (reg!21824 (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))))))))

(assert (=> b!7960821 (=> (not res!3155265) (not e!4694816))))

(declare-fun b!7960822 () Bool)

(declare-fun e!4694820 () Bool)

(declare-fun call!738221 () Bool)

(assert (=> b!7960822 (= e!4694820 call!738221)))

(declare-fun b!7960823 () Bool)

(declare-fun res!3155261 () Bool)

(assert (=> b!7960823 (=> (not res!3155261) (not e!4694820))))

(declare-fun call!738223 () Bool)

(assert (=> b!7960823 (= res!3155261 call!738223)))

(declare-fun e!4694818 () Bool)

(assert (=> b!7960823 (= e!4694818 e!4694820)))

(declare-fun bm!738216 () Bool)

(declare-fun call!738222 () Bool)

(assert (=> bm!738216 (= call!738223 call!738222)))

(declare-fun c!1462001 () Bool)

(declare-fun c!1462002 () Bool)

(declare-fun bm!738217 () Bool)

(assert (=> bm!738217 (= call!738222 (validRegex!11799 (ite c!1462001 (reg!21824 (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))) (ite c!1462002 (regOne!43503 (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))) (regOne!43502 (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116)))))))))

(declare-fun b!7960824 () Bool)

(assert (=> b!7960824 (= e!4694819 e!4694818)))

(assert (=> b!7960824 (= c!1462002 ((_ is Union!21495) (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))))))

(declare-fun b!7960825 () Bool)

(declare-fun res!3155264 () Bool)

(declare-fun e!4694815 () Bool)

(assert (=> b!7960825 (=> res!3155264 e!4694815)))

(assert (=> b!7960825 (= res!3155264 (not ((_ is Concat!30494) (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116)))))))

(assert (=> b!7960825 (= e!4694818 e!4694815)))

(declare-fun d!2377988 () Bool)

(declare-fun res!3155263 () Bool)

(declare-fun e!4694814 () Bool)

(assert (=> d!2377988 (=> res!3155263 e!4694814)))

(assert (=> d!2377988 (= res!3155263 ((_ is ElementMatch!21495) (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))))))

(assert (=> d!2377988 (= (validRegex!11799 (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))) e!4694814)))

(declare-fun bm!738218 () Bool)

(assert (=> bm!738218 (= call!738221 (validRegex!11799 (ite c!1462002 (regTwo!43503 (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))) (regTwo!43502 (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))))))))

(declare-fun b!7960826 () Bool)

(assert (=> b!7960826 (= e!4694814 e!4694819)))

(assert (=> b!7960826 (= c!1462001 ((_ is Star!21495) (ite c!1461845 (regTwo!43503 baseR!116) (regTwo!43502 baseR!116))))))

(declare-fun b!7960827 () Bool)

(declare-fun e!4694817 () Bool)

(assert (=> b!7960827 (= e!4694817 call!738221)))

(declare-fun b!7960828 () Bool)

(assert (=> b!7960828 (= e!4694816 call!738222)))

(declare-fun b!7960829 () Bool)

(assert (=> b!7960829 (= e!4694815 e!4694817)))

(declare-fun res!3155262 () Bool)

(assert (=> b!7960829 (=> (not res!3155262) (not e!4694817))))

(assert (=> b!7960829 (= res!3155262 call!738223)))

(assert (= (and d!2377988 (not res!3155263)) b!7960826))

(assert (= (and b!7960826 c!1462001) b!7960821))

(assert (= (and b!7960826 (not c!1462001)) b!7960824))

(assert (= (and b!7960821 res!3155265) b!7960828))

(assert (= (and b!7960824 c!1462002) b!7960823))

(assert (= (and b!7960824 (not c!1462002)) b!7960825))

(assert (= (and b!7960823 res!3155261) b!7960822))

(assert (= (and b!7960825 (not res!3155264)) b!7960829))

(assert (= (and b!7960829 res!3155262) b!7960827))

(assert (= (or b!7960822 b!7960827) bm!738218))

(assert (= (or b!7960823 b!7960829) bm!738216))

(assert (= (or b!7960828 bm!738216) bm!738217))

(declare-fun m!8341448 () Bool)

(assert (=> b!7960821 m!8341448))

(declare-fun m!8341450 () Bool)

(assert (=> bm!738217 m!8341450))

(declare-fun m!8341452 () Bool)

(assert (=> bm!738218 m!8341452))

(assert (=> bm!738088 d!2377988))

(assert (=> bm!738157 d!2377838))

(assert (=> d!2377792 d!2377930))

(declare-fun d!2377990 () Bool)

(assert (=> d!2377990 (isPrefix!6595 (++!18365 testedP!447 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 testedP!447)) Nil!74600)) input!7927)))

(assert (=> d!2377990 true))

(declare-fun _$65!1943 () Unit!170010)

(assert (=> d!2377990 (= (choose!59980 testedP!447 input!7927) _$65!1943)))

(declare-fun bs!1969735 () Bool)

(assert (= bs!1969735 d!2377990))

(assert (=> bs!1969735 m!8340756))

(assert (=> bs!1969735 m!8340756))

(assert (=> bs!1969735 m!8340790))

(assert (=> bs!1969735 m!8340786))

(assert (=> bs!1969735 m!8340786))

(assert (=> bs!1969735 m!8340788))

(assert (=> d!2377792 d!2377990))

(assert (=> d!2377792 d!2377940))

(assert (=> d!2377792 d!2377934))

(assert (=> d!2377792 d!2377810))

(assert (=> d!2377792 d!2377826))

(declare-fun d!2377992 () Bool)

(declare-fun lt!2703370 () Int)

(assert (=> d!2377992 (>= lt!2703370 0)))

(declare-fun e!4694821 () Int)

(assert (=> d!2377992 (= lt!2703370 e!4694821)))

(declare-fun c!1462003 () Bool)

(assert (=> d!2377992 (= c!1462003 ((_ is Nil!74600) (t!390467 testedP!447)))))

(assert (=> d!2377992 (= (size!43431 (t!390467 testedP!447)) lt!2703370)))

(declare-fun b!7960830 () Bool)

(assert (=> b!7960830 (= e!4694821 0)))

(declare-fun b!7960831 () Bool)

(assert (=> b!7960831 (= e!4694821 (+ 1 (size!43431 (t!390467 (t!390467 testedP!447)))))))

(assert (= (and d!2377992 c!1462003) b!7960830))

(assert (= (and d!2377992 (not c!1462003)) b!7960831))

(declare-fun m!8341454 () Bool)

(assert (=> b!7960831 m!8341454))

(assert (=> b!7960430 d!2377992))

(assert (=> bm!738160 d!2377890))

(assert (=> bm!738130 d!2377838))

(declare-fun d!2377994 () Bool)

(declare-fun e!4694823 () Bool)

(assert (=> d!2377994 e!4694823))

(declare-fun res!3155267 () Bool)

(assert (=> d!2377994 (=> (not res!3155267) (not e!4694823))))

(declare-fun lt!2703371 () List!74724)

(assert (=> d!2377994 (= res!3155267 (= (content!15841 lt!2703371) ((_ map or) (content!15841 (t!390467 testedP!447)) (content!15841 (Cons!74600 lt!2703001 Nil!74600)))))))

(declare-fun e!4694822 () List!74724)

(assert (=> d!2377994 (= lt!2703371 e!4694822)))

(declare-fun c!1462004 () Bool)

(assert (=> d!2377994 (= c!1462004 ((_ is Nil!74600) (t!390467 testedP!447)))))

(assert (=> d!2377994 (= (++!18365 (t!390467 testedP!447) (Cons!74600 lt!2703001 Nil!74600)) lt!2703371)))

(declare-fun b!7960833 () Bool)

(assert (=> b!7960833 (= e!4694822 (Cons!74600 (h!81048 (t!390467 testedP!447)) (++!18365 (t!390467 (t!390467 testedP!447)) (Cons!74600 lt!2703001 Nil!74600))))))

(declare-fun b!7960835 () Bool)

(assert (=> b!7960835 (= e!4694823 (or (not (= (Cons!74600 lt!2703001 Nil!74600) Nil!74600)) (= lt!2703371 (t!390467 testedP!447))))))

(declare-fun b!7960834 () Bool)

(declare-fun res!3155266 () Bool)

(assert (=> b!7960834 (=> (not res!3155266) (not e!4694823))))

(assert (=> b!7960834 (= res!3155266 (= (size!43431 lt!2703371) (+ (size!43431 (t!390467 testedP!447)) (size!43431 (Cons!74600 lt!2703001 Nil!74600)))))))

(declare-fun b!7960832 () Bool)

(assert (=> b!7960832 (= e!4694822 (Cons!74600 lt!2703001 Nil!74600))))

(assert (= (and d!2377994 c!1462004) b!7960832))

(assert (= (and d!2377994 (not c!1462004)) b!7960833))

(assert (= (and d!2377994 res!3155267) b!7960834))

(assert (= (and b!7960834 res!3155266) b!7960835))

(declare-fun m!8341456 () Bool)

(assert (=> d!2377994 m!8341456))

(declare-fun m!8341458 () Bool)

(assert (=> d!2377994 m!8341458))

(assert (=> d!2377994 m!8340798))

(declare-fun m!8341460 () Bool)

(assert (=> b!7960833 m!8341460))

(declare-fun m!8341462 () Bool)

(assert (=> b!7960834 m!8341462))

(assert (=> b!7960834 m!8340950))

(assert (=> b!7960834 m!8340804))

(assert (=> b!7960226 d!2377994))

(declare-fun bm!738219 () Bool)

(declare-fun call!738225 () Regex!21495)

(declare-fun call!738227 () Regex!21495)

(assert (=> bm!738219 (= call!738225 call!738227)))

(declare-fun b!7960836 () Bool)

(declare-fun e!4694825 () Regex!21495)

(declare-fun call!738224 () Regex!21495)

(assert (=> b!7960836 (= e!4694825 (Union!21495 (Concat!30494 call!738224 (regTwo!43502 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))))) EmptyLang!21495))))

(declare-fun e!4694827 () Regex!21495)

(declare-fun b!7960837 () Bool)

(assert (=> b!7960837 (= e!4694827 (Concat!30494 call!738225 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))))))

(declare-fun d!2377996 () Bool)

(declare-fun lt!2703372 () Regex!21495)

(assert (=> d!2377996 (validRegex!11799 lt!2703372)))

(declare-fun e!4694826 () Regex!21495)

(assert (=> d!2377996 (= lt!2703372 e!4694826)))

(declare-fun c!1462008 () Bool)

(assert (=> d!2377996 (= c!1462008 (or ((_ is EmptyExpr!21495) (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))) ((_ is EmptyLang!21495) (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))))))))

(assert (=> d!2377996 (validRegex!11799 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))))))

(assert (=> d!2377996 (= (derivativeStep!6523 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))) lt!2703001) lt!2703372)))

(declare-fun b!7960838 () Bool)

(declare-fun e!4694828 () Regex!21495)

(assert (=> b!7960838 (= e!4694828 e!4694827)))

(declare-fun c!1462007 () Bool)

(assert (=> b!7960838 (= c!1462007 ((_ is Star!21495) (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))))))

(declare-fun c!1462005 () Bool)

(declare-fun c!1462009 () Bool)

(declare-fun bm!738220 () Bool)

(assert (=> bm!738220 (= call!738227 (derivativeStep!6523 (ite c!1462005 (regTwo!43503 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))) (ite c!1462007 (reg!21824 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))) (ite c!1462009 (regTwo!43502 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))) (regOne!43502 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))))))) lt!2703001))))

(declare-fun b!7960839 () Bool)

(assert (=> b!7960839 (= e!4694826 EmptyLang!21495)))

(declare-fun e!4694824 () Regex!21495)

(declare-fun b!7960840 () Bool)

(assert (=> b!7960840 (= e!4694824 (ite (= lt!2703001 (c!1461832 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))))) EmptyExpr!21495 EmptyLang!21495))))

(declare-fun call!738226 () Regex!21495)

(declare-fun b!7960841 () Bool)

(assert (=> b!7960841 (= e!4694825 (Union!21495 (Concat!30494 call!738226 (regTwo!43502 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))))) call!738224))))

(declare-fun bm!738221 () Bool)

(assert (=> bm!738221 (= call!738224 call!738225)))

(declare-fun bm!738222 () Bool)

(assert (=> bm!738222 (= call!738226 (derivativeStep!6523 (ite c!1462005 (regOne!43503 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))) (regOne!43502 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))))) lt!2703001))))

(declare-fun b!7960842 () Bool)

(assert (=> b!7960842 (= c!1462009 (nullable!9596 (regOne!43502 (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602)))))))))

(assert (=> b!7960842 (= e!4694827 e!4694825)))

(declare-fun b!7960843 () Bool)

(assert (=> b!7960843 (= e!4694826 e!4694824)))

(declare-fun c!1462006 () Bool)

(assert (=> b!7960843 (= c!1462006 ((_ is ElementMatch!21495) (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))))))

(declare-fun b!7960844 () Bool)

(assert (=> b!7960844 (= c!1462005 ((_ is Union!21495) (ite c!1461938 (regTwo!43503 r!24602) (ite c!1461940 (reg!21824 r!24602) (ite c!1461942 (regTwo!43502 r!24602) (regOne!43502 r!24602))))))))

(assert (=> b!7960844 (= e!4694824 e!4694828)))

(declare-fun b!7960845 () Bool)

(assert (=> b!7960845 (= e!4694828 (Union!21495 call!738226 call!738227))))

(assert (= (and d!2377996 c!1462008) b!7960839))

(assert (= (and d!2377996 (not c!1462008)) b!7960843))

(assert (= (and b!7960843 c!1462006) b!7960840))

(assert (= (and b!7960843 (not c!1462006)) b!7960844))

(assert (= (and b!7960844 c!1462005) b!7960845))

(assert (= (and b!7960844 (not c!1462005)) b!7960838))

(assert (= (and b!7960838 c!1462007) b!7960837))

(assert (= (and b!7960838 (not c!1462007)) b!7960842))

(assert (= (and b!7960842 c!1462009) b!7960841))

(assert (= (and b!7960842 (not c!1462009)) b!7960836))

(assert (= (or b!7960841 b!7960836) bm!738221))

(assert (= (or b!7960837 bm!738221) bm!738219))

(assert (= (or b!7960845 bm!738219) bm!738220))

(assert (= (or b!7960845 b!7960841) bm!738222))

(declare-fun m!8341464 () Bool)

(assert (=> d!2377996 m!8341464))

(declare-fun m!8341466 () Bool)

(assert (=> d!2377996 m!8341466))

(declare-fun m!8341468 () Bool)

(assert (=> bm!738220 m!8341468))

(declare-fun m!8341470 () Bool)

(assert (=> bm!738222 m!8341470))

(declare-fun m!8341472 () Bool)

(assert (=> b!7960842 m!8341472))

(assert (=> bm!738183 d!2377996))

(declare-fun d!2377998 () Bool)

(assert (=> d!2377998 (= (isEmpty!42901 (_1!38629 lt!2703248)) ((_ is Nil!74600) (_1!38629 lt!2703248)))))

(assert (=> b!7960463 d!2377998))

(assert (=> bm!738129 d!2377840))

(assert (=> bm!738163 d!2377900))

(declare-fun d!2378000 () Bool)

(assert (=> d!2378000 (= (nullable!9596 (regOne!43502 r!24602)) (nullableFct!3783 (regOne!43502 r!24602)))))

(declare-fun bs!1969736 () Bool)

(assert (= bs!1969736 d!2378000))

(declare-fun m!8341474 () Bool)

(assert (=> bs!1969736 m!8341474))

(assert (=> b!7960521 d!2378000))

(declare-fun d!2378002 () Bool)

(assert (=> d!2378002 (= (isEmpty!42901 (_1!38629 lt!2703178)) ((_ is Nil!74600) (_1!38629 lt!2703178)))))

(assert (=> b!7960374 d!2378002))

(declare-fun b!7960849 () Bool)

(declare-fun e!4694830 () Bool)

(assert (=> b!7960849 (= e!4694830 (>= (size!43431 (tail!15784 input!7927)) (size!43431 (tail!15784 testedP!447))))))

(declare-fun d!2378004 () Bool)

(assert (=> d!2378004 e!4694830))

(declare-fun res!3155271 () Bool)

(assert (=> d!2378004 (=> res!3155271 e!4694830)))

(declare-fun lt!2703373 () Bool)

(assert (=> d!2378004 (= res!3155271 (not lt!2703373))))

(declare-fun e!4694831 () Bool)

(assert (=> d!2378004 (= lt!2703373 e!4694831)))

(declare-fun res!3155269 () Bool)

(assert (=> d!2378004 (=> res!3155269 e!4694831)))

(assert (=> d!2378004 (= res!3155269 ((_ is Nil!74600) (tail!15784 testedP!447)))))

(assert (=> d!2378004 (= (isPrefix!6595 (tail!15784 testedP!447) (tail!15784 input!7927)) lt!2703373)))

(declare-fun b!7960848 () Bool)

(declare-fun e!4694829 () Bool)

(assert (=> b!7960848 (= e!4694829 (isPrefix!6595 (tail!15784 (tail!15784 testedP!447)) (tail!15784 (tail!15784 input!7927))))))

(declare-fun b!7960846 () Bool)

(assert (=> b!7960846 (= e!4694831 e!4694829)))

(declare-fun res!3155270 () Bool)

(assert (=> b!7960846 (=> (not res!3155270) (not e!4694829))))

(assert (=> b!7960846 (= res!3155270 (not ((_ is Nil!74600) (tail!15784 input!7927))))))

(declare-fun b!7960847 () Bool)

(declare-fun res!3155268 () Bool)

(assert (=> b!7960847 (=> (not res!3155268) (not e!4694829))))

(assert (=> b!7960847 (= res!3155268 (= (head!16247 (tail!15784 testedP!447)) (head!16247 (tail!15784 input!7927))))))

(assert (= (and d!2378004 (not res!3155269)) b!7960846))

(assert (= (and b!7960846 res!3155270) b!7960847))

(assert (= (and b!7960847 res!3155268) b!7960848))

(assert (= (and d!2378004 (not res!3155271)) b!7960849))

(assert (=> b!7960849 m!8340816))

(assert (=> b!7960849 m!8341108))

(assert (=> b!7960849 m!8340824))

(declare-fun m!8341476 () Bool)

(assert (=> b!7960849 m!8341476))

(assert (=> b!7960848 m!8340824))

(declare-fun m!8341478 () Bool)

(assert (=> b!7960848 m!8341478))

(assert (=> b!7960848 m!8340816))

(assert (=> b!7960848 m!8341110))

(assert (=> b!7960848 m!8341478))

(assert (=> b!7960848 m!8341110))

(declare-fun m!8341480 () Bool)

(assert (=> b!7960848 m!8341480))

(assert (=> b!7960847 m!8340824))

(declare-fun m!8341482 () Bool)

(assert (=> b!7960847 m!8341482))

(assert (=> b!7960847 m!8340816))

(assert (=> b!7960847 m!8341338))

(assert (=> b!7960251 d!2378004))

(declare-fun d!2378006 () Bool)

(assert (=> d!2378006 (= (tail!15784 testedP!447) (t!390467 testedP!447))))

(assert (=> b!7960251 d!2378006))

(assert (=> b!7960251 d!2377878))

(assert (=> bm!738162 d!2377834))

(declare-fun b!7960850 () Bool)

(declare-fun e!4694836 () tuple2!70652)

(assert (=> b!7960850 (= e!4694836 (tuple2!70653 lt!2703171 call!738141))))

(declare-fun b!7960851 () Bool)

(declare-fun e!4694838 () tuple2!70652)

(assert (=> b!7960851 (= e!4694838 (tuple2!70653 lt!2703171 Nil!74600))))

(declare-fun b!7960852 () Bool)

(declare-fun e!4694833 () Bool)

(declare-fun lt!2703384 () tuple2!70652)

(assert (=> b!7960852 (= e!4694833 (>= (size!43431 (_1!38629 lt!2703384)) (size!43431 lt!2703171)))))

(declare-fun b!7960853 () Bool)

(declare-fun e!4694839 () Unit!170010)

(declare-fun Unit!170032 () Unit!170010)

(assert (=> b!7960853 (= e!4694839 Unit!170032)))

(declare-fun lt!2703376 () Unit!170010)

(declare-fun call!738229 () Unit!170010)

(assert (=> b!7960853 (= lt!2703376 call!738229)))

(declare-fun call!738230 () Bool)

(assert (=> b!7960853 call!738230))

(declare-fun lt!2703395 () Unit!170010)

(assert (=> b!7960853 (= lt!2703395 lt!2703376)))

(declare-fun lt!2703394 () Unit!170010)

(declare-fun call!738233 () Unit!170010)

(assert (=> b!7960853 (= lt!2703394 call!738233)))

(assert (=> b!7960853 (= input!7927 lt!2703171)))

(declare-fun lt!2703400 () Unit!170010)

(assert (=> b!7960853 (= lt!2703400 lt!2703394)))

(assert (=> b!7960853 false))

(declare-fun bm!738223 () Bool)

(assert (=> bm!738223 (= call!738233 (lemmaIsPrefixSameLengthThenSameList!1643 input!7927 lt!2703171 input!7927))))

(declare-fun b!7960854 () Bool)

(declare-fun c!1462011 () Bool)

(declare-fun call!738231 () Bool)

(assert (=> b!7960854 (= c!1462011 call!738231)))

(declare-fun lt!2703390 () Unit!170010)

(declare-fun lt!2703393 () Unit!170010)

(assert (=> b!7960854 (= lt!2703390 lt!2703393)))

(assert (=> b!7960854 (= input!7927 lt!2703171)))

(assert (=> b!7960854 (= lt!2703393 call!738233)))

(declare-fun lt!2703397 () Unit!170010)

(declare-fun lt!2703379 () Unit!170010)

(assert (=> b!7960854 (= lt!2703397 lt!2703379)))

(assert (=> b!7960854 call!738230))

(assert (=> b!7960854 (= lt!2703379 call!738229)))

(declare-fun e!4694835 () tuple2!70652)

(assert (=> b!7960854 (= e!4694835 e!4694838)))

(declare-fun b!7960855 () Bool)

(declare-fun Unit!170033 () Unit!170010)

(assert (=> b!7960855 (= e!4694839 Unit!170033)))

(declare-fun d!2378008 () Bool)

(declare-fun e!4694837 () Bool)

(assert (=> d!2378008 e!4694837))

(declare-fun res!3155272 () Bool)

(assert (=> d!2378008 (=> (not res!3155272) (not e!4694837))))

(assert (=> d!2378008 (= res!3155272 (= (++!18365 (_1!38629 lt!2703384) (_2!38629 lt!2703384)) input!7927))))

(declare-fun e!4694832 () tuple2!70652)

(assert (=> d!2378008 (= lt!2703384 e!4694832)))

(declare-fun c!1462015 () Bool)

(assert (=> d!2378008 (= c!1462015 (lostCause!1974 call!738138))))

(declare-fun lt!2703375 () Unit!170010)

(declare-fun Unit!170034 () Unit!170010)

(assert (=> d!2378008 (= lt!2703375 Unit!170034)))

(assert (=> d!2378008 (= (getSuffix!3798 input!7927 lt!2703171) call!738141)))

(declare-fun lt!2703378 () Unit!170010)

(declare-fun lt!2703399 () Unit!170010)

(assert (=> d!2378008 (= lt!2703378 lt!2703399)))

(declare-fun lt!2703387 () List!74724)

(assert (=> d!2378008 (= call!738141 lt!2703387)))

(assert (=> d!2378008 (= lt!2703399 (lemmaSamePrefixThenSameSuffix!2990 lt!2703171 call!738141 lt!2703171 lt!2703387 input!7927))))

(assert (=> d!2378008 (= lt!2703387 (getSuffix!3798 input!7927 lt!2703171))))

(declare-fun lt!2703380 () Unit!170010)

(declare-fun lt!2703383 () Unit!170010)

(assert (=> d!2378008 (= lt!2703380 lt!2703383)))

(assert (=> d!2378008 (isPrefix!6595 lt!2703171 (++!18365 lt!2703171 call!738141))))

(assert (=> d!2378008 (= lt!2703383 (lemmaConcatTwoListThenFirstIsPrefix!3852 lt!2703171 call!738141))))

(assert (=> d!2378008 (validRegex!11799 call!738138)))

(assert (=> d!2378008 (= (findLongestMatchInner!2276 call!738138 lt!2703171 (+ lt!2703002 1) call!738141 input!7927 lt!2702998) lt!2703384)))

(declare-fun b!7960856 () Bool)

(assert (=> b!7960856 (= e!4694832 (tuple2!70653 Nil!74600 input!7927))))

(declare-fun bm!738224 () Bool)

(assert (=> bm!738224 (= call!738230 (isPrefix!6595 input!7927 input!7927))))

(declare-fun b!7960857 () Bool)

(declare-fun e!4694834 () tuple2!70652)

(assert (=> b!7960857 (= e!4694834 e!4694836)))

(declare-fun lt!2703396 () tuple2!70652)

(declare-fun call!738228 () tuple2!70652)

(assert (=> b!7960857 (= lt!2703396 call!738228)))

(declare-fun c!1462012 () Bool)

(assert (=> b!7960857 (= c!1462012 (isEmpty!42901 (_1!38629 lt!2703396)))))

(declare-fun bm!738225 () Bool)

(declare-fun lt!2703377 () List!74724)

(declare-fun call!738232 () Regex!21495)

(declare-fun call!738235 () List!74724)

(assert (=> bm!738225 (= call!738228 (findLongestMatchInner!2276 call!738232 lt!2703377 (+ lt!2703002 1 1) call!738235 input!7927 lt!2702998))))

(declare-fun bm!738226 () Bool)

(assert (=> bm!738226 (= call!738231 (nullable!9596 call!738138))))

(declare-fun b!7960858 () Bool)

(assert (=> b!7960858 (= e!4694837 e!4694833)))

(declare-fun res!3155273 () Bool)

(assert (=> b!7960858 (=> res!3155273 e!4694833)))

(assert (=> b!7960858 (= res!3155273 (isEmpty!42901 (_1!38629 lt!2703384)))))

(declare-fun b!7960859 () Bool)

(declare-fun c!1462014 () Bool)

(assert (=> b!7960859 (= c!1462014 call!738231)))

(declare-fun lt!2703401 () Unit!170010)

(declare-fun lt!2703386 () Unit!170010)

(assert (=> b!7960859 (= lt!2703401 lt!2703386)))

(declare-fun lt!2703374 () List!74724)

(declare-fun lt!2703391 () C!43328)

(assert (=> b!7960859 (= (++!18365 (++!18365 lt!2703171 (Cons!74600 lt!2703391 Nil!74600)) lt!2703374) input!7927)))

(assert (=> b!7960859 (= lt!2703386 (lemmaMoveElementToOtherListKeepsConcatEq!3530 lt!2703171 lt!2703391 lt!2703374 input!7927))))

(assert (=> b!7960859 (= lt!2703374 (tail!15784 call!738141))))

(assert (=> b!7960859 (= lt!2703391 (head!16247 call!738141))))

(declare-fun lt!2703389 () Unit!170010)

(declare-fun lt!2703381 () Unit!170010)

(assert (=> b!7960859 (= lt!2703389 lt!2703381)))

(assert (=> b!7960859 (isPrefix!6595 (++!18365 lt!2703171 (Cons!74600 (head!16247 (getSuffix!3798 input!7927 lt!2703171)) Nil!74600)) input!7927)))

(assert (=> b!7960859 (= lt!2703381 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 lt!2703171 input!7927))))

(declare-fun lt!2703388 () Unit!170010)

(declare-fun lt!2703392 () Unit!170010)

(assert (=> b!7960859 (= lt!2703388 lt!2703392)))

(assert (=> b!7960859 (= lt!2703392 (lemmaAddHeadSuffixToPrefixStillPrefix!1322 lt!2703171 input!7927))))

(assert (=> b!7960859 (= lt!2703377 (++!18365 lt!2703171 (Cons!74600 (head!16247 call!738141) Nil!74600)))))

(declare-fun lt!2703385 () Unit!170010)

(assert (=> b!7960859 (= lt!2703385 e!4694839)))

(declare-fun c!1462010 () Bool)

(assert (=> b!7960859 (= c!1462010 (= (size!43431 lt!2703171) (size!43431 input!7927)))))

(declare-fun lt!2703398 () Unit!170010)

(declare-fun lt!2703382 () Unit!170010)

(assert (=> b!7960859 (= lt!2703398 lt!2703382)))

(assert (=> b!7960859 (<= (size!43431 lt!2703171) (size!43431 input!7927))))

(assert (=> b!7960859 (= lt!2703382 (lemmaIsPrefixThenSmallerEqSize!1112 lt!2703171 input!7927))))

(assert (=> b!7960859 (= e!4694835 e!4694834)))

(declare-fun b!7960860 () Bool)

(assert (=> b!7960860 (= e!4694834 call!738228)))

(declare-fun b!7960861 () Bool)

(assert (=> b!7960861 (= e!4694836 lt!2703396)))

(declare-fun bm!738227 () Bool)

(declare-fun call!738234 () C!43328)

(assert (=> bm!738227 (= call!738234 (head!16247 call!738141))))

(declare-fun bm!738228 () Bool)

(assert (=> bm!738228 (= call!738232 (derivativeStep!6523 call!738138 call!738234))))

(declare-fun bm!738229 () Bool)

(assert (=> bm!738229 (= call!738229 (lemmaIsPrefixRefl!4063 input!7927 input!7927))))

(declare-fun b!7960862 () Bool)

(assert (=> b!7960862 (= e!4694838 (tuple2!70653 Nil!74600 input!7927))))

(declare-fun bm!738230 () Bool)

(assert (=> bm!738230 (= call!738235 (tail!15784 call!738141))))

(declare-fun b!7960863 () Bool)

(assert (=> b!7960863 (= e!4694832 e!4694835)))

(declare-fun c!1462013 () Bool)

(assert (=> b!7960863 (= c!1462013 (= (+ lt!2703002 1) lt!2702998))))

(assert (= (and d!2378008 c!1462015) b!7960856))

(assert (= (and d!2378008 (not c!1462015)) b!7960863))

(assert (= (and b!7960863 c!1462013) b!7960854))

(assert (= (and b!7960863 (not c!1462013)) b!7960859))

(assert (= (and b!7960854 c!1462011) b!7960851))

(assert (= (and b!7960854 (not c!1462011)) b!7960862))

(assert (= (and b!7960859 c!1462010) b!7960853))

(assert (= (and b!7960859 (not c!1462010)) b!7960855))

(assert (= (and b!7960859 c!1462014) b!7960857))

(assert (= (and b!7960859 (not c!1462014)) b!7960860))

(assert (= (and b!7960857 c!1462012) b!7960850))

(assert (= (and b!7960857 (not c!1462012)) b!7960861))

(assert (= (or b!7960857 b!7960860) bm!738227))

(assert (= (or b!7960857 b!7960860) bm!738230))

(assert (= (or b!7960857 b!7960860) bm!738228))

(assert (= (or b!7960857 b!7960860) bm!738225))

(assert (= (or b!7960854 b!7960859) bm!738226))

(assert (= (or b!7960854 b!7960853) bm!738223))

(assert (= (or b!7960854 b!7960853) bm!738229))

(assert (= (or b!7960854 b!7960853) bm!738224))

(assert (= (and d!2378008 res!3155272) b!7960858))

(assert (= (and b!7960858 (not res!3155273)) b!7960852))

(declare-fun m!8341484 () Bool)

(assert (=> bm!738226 m!8341484))

(declare-fun m!8341486 () Bool)

(assert (=> bm!738228 m!8341486))

(declare-fun m!8341488 () Bool)

(assert (=> b!7960858 m!8341488))

(assert (=> bm!738224 m!8340760))

(declare-fun m!8341490 () Bool)

(assert (=> bm!738223 m!8341490))

(assert (=> bm!738229 m!8340758))

(declare-fun m!8341492 () Bool)

(assert (=> b!7960852 m!8341492))

(declare-fun m!8341494 () Bool)

(assert (=> b!7960852 m!8341494))

(declare-fun m!8341496 () Bool)

(assert (=> bm!738225 m!8341496))

(declare-fun m!8341498 () Bool)

(assert (=> bm!738230 m!8341498))

(declare-fun m!8341500 () Bool)

(assert (=> bm!738227 m!8341500))

(declare-fun m!8341502 () Bool)

(assert (=> b!7960857 m!8341502))

(assert (=> b!7960859 m!8341494))

(declare-fun m!8341504 () Bool)

(assert (=> b!7960859 m!8341504))

(declare-fun m!8341506 () Bool)

(assert (=> b!7960859 m!8341506))

(declare-fun m!8341508 () Bool)

(assert (=> b!7960859 m!8341508))

(declare-fun m!8341510 () Bool)

(assert (=> b!7960859 m!8341510))

(assert (=> b!7960859 m!8340752))

(assert (=> b!7960859 m!8341504))

(declare-fun m!8341512 () Bool)

(assert (=> b!7960859 m!8341512))

(declare-fun m!8341514 () Bool)

(assert (=> b!7960859 m!8341514))

(assert (=> b!7960859 m!8341506))

(declare-fun m!8341516 () Bool)

(assert (=> b!7960859 m!8341516))

(declare-fun m!8341518 () Bool)

(assert (=> b!7960859 m!8341518))

(assert (=> b!7960859 m!8341498))

(declare-fun m!8341520 () Bool)

(assert (=> b!7960859 m!8341520))

(assert (=> b!7960859 m!8341500))

(assert (=> b!7960859 m!8341514))

(declare-fun m!8341522 () Bool)

(assert (=> b!7960859 m!8341522))

(declare-fun m!8341524 () Bool)

(assert (=> d!2378008 m!8341524))

(assert (=> d!2378008 m!8341506))

(declare-fun m!8341526 () Bool)

(assert (=> d!2378008 m!8341526))

(declare-fun m!8341528 () Bool)

(assert (=> d!2378008 m!8341528))

(declare-fun m!8341530 () Bool)

(assert (=> d!2378008 m!8341530))

(declare-fun m!8341532 () Bool)

(assert (=> d!2378008 m!8341532))

(assert (=> d!2378008 m!8341526))

(declare-fun m!8341534 () Bool)

(assert (=> d!2378008 m!8341534))

(declare-fun m!8341536 () Bool)

(assert (=> d!2378008 m!8341536))

(assert (=> bm!738131 d!2378008))

(declare-fun b!7960867 () Bool)

(declare-fun e!4694841 () Bool)

(assert (=> b!7960867 (= e!4694841 (>= (size!43431 (tail!15784 input!7927)) (size!43431 (tail!15784 input!7927))))))

(declare-fun d!2378010 () Bool)

(assert (=> d!2378010 e!4694841))

(declare-fun res!3155277 () Bool)

(assert (=> d!2378010 (=> res!3155277 e!4694841)))

(declare-fun lt!2703402 () Bool)

(assert (=> d!2378010 (= res!3155277 (not lt!2703402))))

(declare-fun e!4694842 () Bool)

(assert (=> d!2378010 (= lt!2703402 e!4694842)))

(declare-fun res!3155275 () Bool)

(assert (=> d!2378010 (=> res!3155275 e!4694842)))

(assert (=> d!2378010 (= res!3155275 ((_ is Nil!74600) (tail!15784 input!7927)))))

(assert (=> d!2378010 (= (isPrefix!6595 (tail!15784 input!7927) (tail!15784 input!7927)) lt!2703402)))

(declare-fun b!7960866 () Bool)

(declare-fun e!4694840 () Bool)

(assert (=> b!7960866 (= e!4694840 (isPrefix!6595 (tail!15784 (tail!15784 input!7927)) (tail!15784 (tail!15784 input!7927))))))

(declare-fun b!7960864 () Bool)

(assert (=> b!7960864 (= e!4694842 e!4694840)))

(declare-fun res!3155276 () Bool)

(assert (=> b!7960864 (=> (not res!3155276) (not e!4694840))))

(assert (=> b!7960864 (= res!3155276 (not ((_ is Nil!74600) (tail!15784 input!7927))))))

(declare-fun b!7960865 () Bool)

(declare-fun res!3155274 () Bool)

(assert (=> b!7960865 (=> (not res!3155274) (not e!4694840))))

(assert (=> b!7960865 (= res!3155274 (= (head!16247 (tail!15784 input!7927)) (head!16247 (tail!15784 input!7927))))))

(assert (= (and d!2378010 (not res!3155275)) b!7960864))

(assert (= (and b!7960864 res!3155276) b!7960865))

(assert (= (and b!7960865 res!3155274) b!7960866))

(assert (= (and d!2378010 (not res!3155277)) b!7960867))

(assert (=> b!7960867 m!8340816))

(assert (=> b!7960867 m!8341108))

(assert (=> b!7960867 m!8340816))

(assert (=> b!7960867 m!8341108))

(assert (=> b!7960866 m!8340816))

(assert (=> b!7960866 m!8341110))

(assert (=> b!7960866 m!8340816))

(assert (=> b!7960866 m!8341110))

(assert (=> b!7960866 m!8341110))

(assert (=> b!7960866 m!8341110))

(declare-fun m!8341538 () Bool)

(assert (=> b!7960866 m!8341538))

(assert (=> b!7960865 m!8340816))

(assert (=> b!7960865 m!8341338))

(assert (=> b!7960865 m!8340816))

(assert (=> b!7960865 m!8341338))

(assert (=> b!7960433 d!2378010))

(assert (=> b!7960433 d!2377878))

(declare-fun d!2378012 () Bool)

(declare-fun c!1462018 () Bool)

(assert (=> d!2378012 (= c!1462018 ((_ is Nil!74600) lt!2703011))))

(declare-fun e!4694845 () (InoxSet C!43328))

(assert (=> d!2378012 (= (content!15841 lt!2703011) e!4694845)))

(declare-fun b!7960872 () Bool)

(assert (=> b!7960872 (= e!4694845 ((as const (Array C!43328 Bool)) false))))

(declare-fun b!7960873 () Bool)

(assert (=> b!7960873 (= e!4694845 ((_ map or) (store ((as const (Array C!43328 Bool)) false) (h!81048 lt!2703011) true) (content!15841 (t!390467 lt!2703011))))))

(assert (= (and d!2378012 c!1462018) b!7960872))

(assert (= (and d!2378012 (not c!1462018)) b!7960873))

(declare-fun m!8341540 () Bool)

(assert (=> b!7960873 m!8341540))

(declare-fun m!8341542 () Bool)

(assert (=> b!7960873 m!8341542))

(assert (=> d!2377794 d!2378012))

(declare-fun d!2378014 () Bool)

(declare-fun c!1462019 () Bool)

(assert (=> d!2378014 (= c!1462019 ((_ is Nil!74600) testedP!447))))

(declare-fun e!4694846 () (InoxSet C!43328))

(assert (=> d!2378014 (= (content!15841 testedP!447) e!4694846)))

(declare-fun b!7960874 () Bool)

(assert (=> b!7960874 (= e!4694846 ((as const (Array C!43328 Bool)) false))))

(declare-fun b!7960875 () Bool)

(assert (=> b!7960875 (= e!4694846 ((_ map or) (store ((as const (Array C!43328 Bool)) false) (h!81048 testedP!447) true) (content!15841 (t!390467 testedP!447))))))

(assert (= (and d!2378014 c!1462019) b!7960874))

(assert (= (and d!2378014 (not c!1462019)) b!7960875))

(declare-fun m!8341544 () Bool)

(assert (=> b!7960875 m!8341544))

(assert (=> b!7960875 m!8341458))

(assert (=> d!2377794 d!2378014))

(declare-fun d!2378016 () Bool)

(declare-fun c!1462020 () Bool)

(assert (=> d!2378016 (= c!1462020 ((_ is Nil!74600) (Cons!74600 lt!2703001 Nil!74600)))))

(declare-fun e!4694847 () (InoxSet C!43328))

(assert (=> d!2378016 (= (content!15841 (Cons!74600 lt!2703001 Nil!74600)) e!4694847)))

(declare-fun b!7960876 () Bool)

(assert (=> b!7960876 (= e!4694847 ((as const (Array C!43328 Bool)) false))))

(declare-fun b!7960877 () Bool)

(assert (=> b!7960877 (= e!4694847 ((_ map or) (store ((as const (Array C!43328 Bool)) false) (h!81048 (Cons!74600 lt!2703001 Nil!74600)) true) (content!15841 (t!390467 (Cons!74600 lt!2703001 Nil!74600)))))))

(assert (= (and d!2378016 c!1462020) b!7960876))

(assert (= (and d!2378016 (not c!1462020)) b!7960877))

(declare-fun m!8341546 () Bool)

(assert (=> b!7960877 m!8341546))

(declare-fun m!8341548 () Bool)

(assert (=> b!7960877 m!8341548))

(assert (=> d!2377794 d!2378016))

(declare-fun b!7960878 () Bool)

(declare-fun e!4694853 () Bool)

(declare-fun e!4694850 () Bool)

(assert (=> b!7960878 (= e!4694853 e!4694850)))

(declare-fun res!3155282 () Bool)

(assert (=> b!7960878 (= res!3155282 (not (nullable!9596 (reg!21824 (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))))))))

(assert (=> b!7960878 (=> (not res!3155282) (not e!4694850))))

(declare-fun b!7960879 () Bool)

(declare-fun e!4694854 () Bool)

(declare-fun call!738236 () Bool)

(assert (=> b!7960879 (= e!4694854 call!738236)))

(declare-fun b!7960880 () Bool)

(declare-fun res!3155278 () Bool)

(assert (=> b!7960880 (=> (not res!3155278) (not e!4694854))))

(declare-fun call!738238 () Bool)

(assert (=> b!7960880 (= res!3155278 call!738238)))

(declare-fun e!4694852 () Bool)

(assert (=> b!7960880 (= e!4694852 e!4694854)))

(declare-fun bm!738231 () Bool)

(declare-fun call!738237 () Bool)

(assert (=> bm!738231 (= call!738238 call!738237)))

(declare-fun c!1462022 () Bool)

(declare-fun bm!738232 () Bool)

(declare-fun c!1462021 () Bool)

(assert (=> bm!738232 (= call!738237 (validRegex!11799 (ite c!1462021 (reg!21824 (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))) (ite c!1462022 (regOne!43503 (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))) (regOne!43502 (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116))))))))))

(declare-fun b!7960881 () Bool)

(assert (=> b!7960881 (= e!4694853 e!4694852)))

(assert (=> b!7960881 (= c!1462022 ((_ is Union!21495) (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))))))

(declare-fun b!7960882 () Bool)

(declare-fun res!3155281 () Bool)

(declare-fun e!4694849 () Bool)

(assert (=> b!7960882 (=> res!3155281 e!4694849)))

(assert (=> b!7960882 (= res!3155281 (not ((_ is Concat!30494) (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116))))))))

(assert (=> b!7960882 (= e!4694852 e!4694849)))

(declare-fun d!2378018 () Bool)

(declare-fun res!3155280 () Bool)

(declare-fun e!4694848 () Bool)

(assert (=> d!2378018 (=> res!3155280 e!4694848)))

(assert (=> d!2378018 (= res!3155280 ((_ is ElementMatch!21495) (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))))))

(assert (=> d!2378018 (= (validRegex!11799 (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))) e!4694848)))

(declare-fun bm!738233 () Bool)

(assert (=> bm!738233 (= call!738236 (validRegex!11799 (ite c!1462022 (regTwo!43503 (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))) (regTwo!43502 (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))))))))

(declare-fun b!7960883 () Bool)

(assert (=> b!7960883 (= e!4694848 e!4694853)))

(assert (=> b!7960883 (= c!1462021 ((_ is Star!21495) (ite c!1461844 (reg!21824 baseR!116) (ite c!1461845 (regOne!43503 baseR!116) (regOne!43502 baseR!116)))))))

(declare-fun b!7960884 () Bool)

(declare-fun e!4694851 () Bool)

(assert (=> b!7960884 (= e!4694851 call!738236)))

(declare-fun b!7960885 () Bool)

(assert (=> b!7960885 (= e!4694850 call!738237)))

(declare-fun b!7960886 () Bool)

(assert (=> b!7960886 (= e!4694849 e!4694851)))

(declare-fun res!3155279 () Bool)

(assert (=> b!7960886 (=> (not res!3155279) (not e!4694851))))

(assert (=> b!7960886 (= res!3155279 call!738238)))

(assert (= (and d!2378018 (not res!3155280)) b!7960883))

(assert (= (and b!7960883 c!1462021) b!7960878))

(assert (= (and b!7960883 (not c!1462021)) b!7960881))

(assert (= (and b!7960878 res!3155282) b!7960885))

(assert (= (and b!7960881 c!1462022) b!7960880))

(assert (= (and b!7960881 (not c!1462022)) b!7960882))

(assert (= (and b!7960880 res!3155278) b!7960879))

(assert (= (and b!7960882 (not res!3155281)) b!7960886))

(assert (= (and b!7960886 res!3155279) b!7960884))

(assert (= (or b!7960879 b!7960884) bm!738233))

(assert (= (or b!7960880 b!7960886) bm!738231))

(assert (= (or b!7960885 bm!738231) bm!738232))

(declare-fun m!8341550 () Bool)

(assert (=> b!7960878 m!8341550))

(declare-fun m!8341552 () Bool)

(assert (=> bm!738232 m!8341552))

(declare-fun m!8341554 () Bool)

(assert (=> bm!738233 m!8341554))

(assert (=> bm!738087 d!2378018))

(assert (=> bm!738135 d!2377834))

(assert (=> bm!738133 d!2377808))

(assert (=> d!2377868 d!2377832))

(assert (=> d!2377868 d!2377814))

(declare-fun d!2378020 () Bool)

(assert (=> d!2378020 (<= (size!43431 testedP!447) (size!43431 input!7927))))

(assert (=> d!2378020 true))

(declare-fun _$64!916 () Unit!170010)

(assert (=> d!2378020 (= (choose!59986 testedP!447 input!7927) _$64!916)))

(declare-fun bs!1969737 () Bool)

(assert (= bs!1969737 d!2378020))

(assert (=> bs!1969737 m!8340750))

(assert (=> bs!1969737 m!8340752))

(assert (=> d!2377868 d!2378020))

(assert (=> d!2377868 d!2377810))

(declare-fun d!2378022 () Bool)

(assert (=> d!2378022 (= (nullable!9596 (reg!21824 baseR!116)) (nullableFct!3783 (reg!21824 baseR!116)))))

(declare-fun bs!1969738 () Bool)

(assert (= bs!1969738 d!2378022))

(declare-fun m!8341556 () Bool)

(assert (=> bs!1969738 m!8341556))

(assert (=> b!7960271 d!2378022))

(declare-fun b!7960887 () Bool)

(declare-fun e!4694860 () Bool)

(declare-fun e!4694857 () Bool)

(assert (=> b!7960887 (= e!4694860 e!4694857)))

(declare-fun res!3155287 () Bool)

(assert (=> b!7960887 (= res!3155287 (not (nullable!9596 (reg!21824 lt!2703276))))))

(assert (=> b!7960887 (=> (not res!3155287) (not e!4694857))))

(declare-fun b!7960888 () Bool)

(declare-fun e!4694861 () Bool)

(declare-fun call!738239 () Bool)

(assert (=> b!7960888 (= e!4694861 call!738239)))

(declare-fun b!7960889 () Bool)

(declare-fun res!3155283 () Bool)

(assert (=> b!7960889 (=> (not res!3155283) (not e!4694861))))

(declare-fun call!738241 () Bool)

(assert (=> b!7960889 (= res!3155283 call!738241)))

(declare-fun e!4694859 () Bool)

(assert (=> b!7960889 (= e!4694859 e!4694861)))

(declare-fun bm!738234 () Bool)

(declare-fun call!738240 () Bool)

(assert (=> bm!738234 (= call!738241 call!738240)))

(declare-fun c!1462023 () Bool)

(declare-fun c!1462024 () Bool)

(declare-fun bm!738235 () Bool)

(assert (=> bm!738235 (= call!738240 (validRegex!11799 (ite c!1462023 (reg!21824 lt!2703276) (ite c!1462024 (regOne!43503 lt!2703276) (regOne!43502 lt!2703276)))))))

(declare-fun b!7960890 () Bool)

(assert (=> b!7960890 (= e!4694860 e!4694859)))

(assert (=> b!7960890 (= c!1462024 ((_ is Union!21495) lt!2703276))))

(declare-fun b!7960891 () Bool)

(declare-fun res!3155286 () Bool)

(declare-fun e!4694856 () Bool)

(assert (=> b!7960891 (=> res!3155286 e!4694856)))

(assert (=> b!7960891 (= res!3155286 (not ((_ is Concat!30494) lt!2703276)))))

(assert (=> b!7960891 (= e!4694859 e!4694856)))

(declare-fun d!2378024 () Bool)

(declare-fun res!3155285 () Bool)

(declare-fun e!4694855 () Bool)

(assert (=> d!2378024 (=> res!3155285 e!4694855)))

(assert (=> d!2378024 (= res!3155285 ((_ is ElementMatch!21495) lt!2703276))))

(assert (=> d!2378024 (= (validRegex!11799 lt!2703276) e!4694855)))

(declare-fun bm!738236 () Bool)

(assert (=> bm!738236 (= call!738239 (validRegex!11799 (ite c!1462024 (regTwo!43503 lt!2703276) (regTwo!43502 lt!2703276))))))

(declare-fun b!7960892 () Bool)

(assert (=> b!7960892 (= e!4694855 e!4694860)))

(assert (=> b!7960892 (= c!1462023 ((_ is Star!21495) lt!2703276))))

(declare-fun b!7960893 () Bool)

(declare-fun e!4694858 () Bool)

(assert (=> b!7960893 (= e!4694858 call!738239)))

(declare-fun b!7960894 () Bool)

(assert (=> b!7960894 (= e!4694857 call!738240)))

(declare-fun b!7960895 () Bool)

(assert (=> b!7960895 (= e!4694856 e!4694858)))

(declare-fun res!3155284 () Bool)

(assert (=> b!7960895 (=> (not res!3155284) (not e!4694858))))

(assert (=> b!7960895 (= res!3155284 call!738241)))

(assert (= (and d!2378024 (not res!3155285)) b!7960892))

(assert (= (and b!7960892 c!1462023) b!7960887))

(assert (= (and b!7960892 (not c!1462023)) b!7960890))

(assert (= (and b!7960887 res!3155287) b!7960894))

(assert (= (and b!7960890 c!1462024) b!7960889))

(assert (= (and b!7960890 (not c!1462024)) b!7960891))

(assert (= (and b!7960889 res!3155283) b!7960888))

(assert (= (and b!7960891 (not res!3155286)) b!7960895))

(assert (= (and b!7960895 res!3155284) b!7960893))

(assert (= (or b!7960888 b!7960893) bm!738236))

(assert (= (or b!7960889 b!7960895) bm!738234))

(assert (= (or b!7960894 bm!738234) bm!738235))

(declare-fun m!8341558 () Bool)

(assert (=> b!7960887 m!8341558))

(declare-fun m!8341560 () Bool)

(assert (=> bm!738235 m!8341560))

(declare-fun m!8341562 () Bool)

(assert (=> bm!738236 m!8341562))

(assert (=> d!2377846 d!2378024))

(assert (=> d!2377846 d!2377926))

(assert (=> b!7960248 d!2377814))

(assert (=> b!7960248 d!2377908))

(declare-fun b!7960910 () Bool)

(declare-fun e!4694874 () Bool)

(declare-fun e!4694876 () Bool)

(assert (=> b!7960910 (= e!4694874 e!4694876)))

(declare-fun res!3155302 () Bool)

(declare-fun call!738246 () Bool)

(assert (=> b!7960910 (= res!3155302 call!738246)))

(assert (=> b!7960910 (=> res!3155302 e!4694876)))

(declare-fun d!2378026 () Bool)

(declare-fun res!3155298 () Bool)

(declare-fun e!4694879 () Bool)

(assert (=> d!2378026 (=> res!3155298 e!4694879)))

(assert (=> d!2378026 (= res!3155298 ((_ is EmptyExpr!21495) r!24602))))

(assert (=> d!2378026 (= (nullableFct!3783 r!24602) e!4694879)))

(declare-fun bm!738241 () Bool)

(declare-fun call!738247 () Bool)

(declare-fun c!1462027 () Bool)

(assert (=> bm!738241 (= call!738247 (nullable!9596 (ite c!1462027 (regTwo!43503 r!24602) (regOne!43502 r!24602))))))

(declare-fun b!7960911 () Bool)

(declare-fun e!4694877 () Bool)

(assert (=> b!7960911 (= e!4694874 e!4694877)))

(declare-fun res!3155300 () Bool)

(assert (=> b!7960911 (= res!3155300 call!738247)))

(assert (=> b!7960911 (=> (not res!3155300) (not e!4694877))))

(declare-fun b!7960912 () Bool)

(declare-fun e!4694875 () Bool)

(assert (=> b!7960912 (= e!4694879 e!4694875)))

(declare-fun res!3155299 () Bool)

(assert (=> b!7960912 (=> (not res!3155299) (not e!4694875))))

(assert (=> b!7960912 (= res!3155299 (and (not ((_ is EmptyLang!21495) r!24602)) (not ((_ is ElementMatch!21495) r!24602))))))

(declare-fun bm!738242 () Bool)

(assert (=> bm!738242 (= call!738246 (nullable!9596 (ite c!1462027 (regOne!43503 r!24602) (regTwo!43502 r!24602))))))

(declare-fun b!7960913 () Bool)

(declare-fun e!4694878 () Bool)

(assert (=> b!7960913 (= e!4694875 e!4694878)))

(declare-fun res!3155301 () Bool)

(assert (=> b!7960913 (=> res!3155301 e!4694878)))

(assert (=> b!7960913 (= res!3155301 ((_ is Star!21495) r!24602))))

(declare-fun b!7960914 () Bool)

(assert (=> b!7960914 (= e!4694876 call!738247)))

(declare-fun b!7960915 () Bool)

(assert (=> b!7960915 (= e!4694878 e!4694874)))

(assert (=> b!7960915 (= c!1462027 ((_ is Union!21495) r!24602))))

(declare-fun b!7960916 () Bool)

(assert (=> b!7960916 (= e!4694877 call!738246)))

(assert (= (and d!2378026 (not res!3155298)) b!7960912))

(assert (= (and b!7960912 res!3155299) b!7960913))

(assert (= (and b!7960913 (not res!3155301)) b!7960915))

(assert (= (and b!7960915 c!1462027) b!7960910))

(assert (= (and b!7960915 (not c!1462027)) b!7960911))

(assert (= (and b!7960910 (not res!3155302)) b!7960914))

(assert (= (and b!7960911 res!3155300) b!7960916))

(assert (= (or b!7960910 b!7960916) bm!738242))

(assert (= (or b!7960914 b!7960911) bm!738241))

(declare-fun m!8341564 () Bool)

(assert (=> bm!738241 m!8341564))

(declare-fun m!8341566 () Bool)

(assert (=> bm!738242 m!8341566))

(assert (=> d!2377796 d!2378026))

(declare-fun d!2378028 () Bool)

(assert (=> d!2378028 (= (nullable!9596 (derivativeStep!6523 r!24602 lt!2703001)) (nullableFct!3783 (derivativeStep!6523 r!24602 lt!2703001)))))

(declare-fun bs!1969739 () Bool)

(assert (= bs!1969739 d!2378028))

(assert (=> bs!1969739 m!8340768))

(declare-fun m!8341568 () Bool)

(assert (=> bs!1969739 m!8341568))

(assert (=> bm!738159 d!2378028))

(declare-fun d!2378030 () Bool)

(assert (=> d!2378030 (= (isEmpty!42901 (_1!38629 lt!2703260)) ((_ is Nil!74600) (_1!38629 lt!2703260)))))

(assert (=> b!7960462 d!2378030))

(declare-fun d!2378032 () Bool)

(assert (=> d!2378032 (= (head!16247 lt!2703005) (h!81048 lt!2703005))))

(assert (=> b!7960246 d!2378032))

(assert (=> b!7960246 d!2377944))

(declare-fun b!7960917 () Bool)

(declare-fun e!4694885 () Bool)

(declare-fun e!4694882 () Bool)

(assert (=> b!7960917 (= e!4694885 e!4694882)))

(declare-fun res!3155307 () Bool)

(assert (=> b!7960917 (= res!3155307 (not (nullable!9596 (reg!21824 lt!2703286))))))

(assert (=> b!7960917 (=> (not res!3155307) (not e!4694882))))

(declare-fun b!7960918 () Bool)

(declare-fun e!4694886 () Bool)

(declare-fun call!738248 () Bool)

(assert (=> b!7960918 (= e!4694886 call!738248)))

(declare-fun b!7960919 () Bool)

(declare-fun res!3155303 () Bool)

(assert (=> b!7960919 (=> (not res!3155303) (not e!4694886))))

(declare-fun call!738250 () Bool)

(assert (=> b!7960919 (= res!3155303 call!738250)))

(declare-fun e!4694884 () Bool)

(assert (=> b!7960919 (= e!4694884 e!4694886)))

(declare-fun bm!738243 () Bool)

(declare-fun call!738249 () Bool)

(assert (=> bm!738243 (= call!738250 call!738249)))

(declare-fun bm!738244 () Bool)

(declare-fun c!1462028 () Bool)

(declare-fun c!1462029 () Bool)

(assert (=> bm!738244 (= call!738249 (validRegex!11799 (ite c!1462028 (reg!21824 lt!2703286) (ite c!1462029 (regOne!43503 lt!2703286) (regOne!43502 lt!2703286)))))))

(declare-fun b!7960920 () Bool)

(assert (=> b!7960920 (= e!4694885 e!4694884)))

(assert (=> b!7960920 (= c!1462029 ((_ is Union!21495) lt!2703286))))

(declare-fun b!7960921 () Bool)

(declare-fun res!3155306 () Bool)

(declare-fun e!4694881 () Bool)

(assert (=> b!7960921 (=> res!3155306 e!4694881)))

(assert (=> b!7960921 (= res!3155306 (not ((_ is Concat!30494) lt!2703286)))))

(assert (=> b!7960921 (= e!4694884 e!4694881)))

(declare-fun d!2378034 () Bool)

(declare-fun res!3155305 () Bool)

(declare-fun e!4694880 () Bool)

(assert (=> d!2378034 (=> res!3155305 e!4694880)))

(assert (=> d!2378034 (= res!3155305 ((_ is ElementMatch!21495) lt!2703286))))

(assert (=> d!2378034 (= (validRegex!11799 lt!2703286) e!4694880)))

(declare-fun bm!738245 () Bool)

(assert (=> bm!738245 (= call!738248 (validRegex!11799 (ite c!1462029 (regTwo!43503 lt!2703286) (regTwo!43502 lt!2703286))))))

(declare-fun b!7960922 () Bool)

(assert (=> b!7960922 (= e!4694880 e!4694885)))

(assert (=> b!7960922 (= c!1462028 ((_ is Star!21495) lt!2703286))))

(declare-fun b!7960923 () Bool)

(declare-fun e!4694883 () Bool)

(assert (=> b!7960923 (= e!4694883 call!738248)))

(declare-fun b!7960924 () Bool)

(assert (=> b!7960924 (= e!4694882 call!738249)))

(declare-fun b!7960925 () Bool)

(assert (=> b!7960925 (= e!4694881 e!4694883)))

(declare-fun res!3155304 () Bool)

(assert (=> b!7960925 (=> (not res!3155304) (not e!4694883))))

(assert (=> b!7960925 (= res!3155304 call!738250)))

(assert (= (and d!2378034 (not res!3155305)) b!7960922))

(assert (= (and b!7960922 c!1462028) b!7960917))

(assert (= (and b!7960922 (not c!1462028)) b!7960920))

(assert (= (and b!7960917 res!3155307) b!7960924))

(assert (= (and b!7960920 c!1462029) b!7960919))

(assert (= (and b!7960920 (not c!1462029)) b!7960921))

(assert (= (and b!7960919 res!3155303) b!7960918))

(assert (= (and b!7960921 (not res!3155306)) b!7960925))

(assert (= (and b!7960925 res!3155304) b!7960923))

(assert (= (or b!7960918 b!7960923) bm!738245))

(assert (= (or b!7960919 b!7960925) bm!738243))

(assert (= (or b!7960924 bm!738243) bm!738244))

(declare-fun m!8341570 () Bool)

(assert (=> b!7960917 m!8341570))

(declare-fun m!8341572 () Bool)

(assert (=> bm!738244 m!8341572))

(declare-fun m!8341574 () Bool)

(assert (=> bm!738245 m!8341574))

(assert (=> d!2377862 d!2378034))

(assert (=> d!2377862 d!2377812))

(assert (=> bm!738136 d!2377858))

(declare-fun b!7960929 () Bool)

(declare-fun e!4694887 () Bool)

(declare-fun tp!2371704 () Bool)

(declare-fun tp!2371705 () Bool)

(assert (=> b!7960929 (= e!4694887 (and tp!2371704 tp!2371705))))

(declare-fun b!7960926 () Bool)

(assert (=> b!7960926 (= e!4694887 tp_is_empty!53533)))

(declare-fun b!7960927 () Bool)

(declare-fun tp!2371707 () Bool)

(declare-fun tp!2371703 () Bool)

(assert (=> b!7960927 (= e!4694887 (and tp!2371707 tp!2371703))))

(assert (=> b!7960557 (= tp!2371594 e!4694887)))

(declare-fun b!7960928 () Bool)

(declare-fun tp!2371706 () Bool)

(assert (=> b!7960928 (= e!4694887 tp!2371706)))

(assert (= (and b!7960557 ((_ is ElementMatch!21495) (regOne!43503 (regTwo!43503 baseR!116)))) b!7960926))

(assert (= (and b!7960557 ((_ is Concat!30494) (regOne!43503 (regTwo!43503 baseR!116)))) b!7960927))

(assert (= (and b!7960557 ((_ is Star!21495) (regOne!43503 (regTwo!43503 baseR!116)))) b!7960928))

(assert (= (and b!7960557 ((_ is Union!21495) (regOne!43503 (regTwo!43503 baseR!116)))) b!7960929))

(declare-fun b!7960933 () Bool)

(declare-fun e!4694888 () Bool)

(declare-fun tp!2371709 () Bool)

(declare-fun tp!2371710 () Bool)

(assert (=> b!7960933 (= e!4694888 (and tp!2371709 tp!2371710))))

(declare-fun b!7960930 () Bool)

(assert (=> b!7960930 (= e!4694888 tp_is_empty!53533)))

(declare-fun b!7960931 () Bool)

(declare-fun tp!2371712 () Bool)

(declare-fun tp!2371708 () Bool)

(assert (=> b!7960931 (= e!4694888 (and tp!2371712 tp!2371708))))

(assert (=> b!7960557 (= tp!2371595 e!4694888)))

(declare-fun b!7960932 () Bool)

(declare-fun tp!2371711 () Bool)

(assert (=> b!7960932 (= e!4694888 tp!2371711)))

(assert (= (and b!7960557 ((_ is ElementMatch!21495) (regTwo!43503 (regTwo!43503 baseR!116)))) b!7960930))

(assert (= (and b!7960557 ((_ is Concat!30494) (regTwo!43503 (regTwo!43503 baseR!116)))) b!7960931))

(assert (= (and b!7960557 ((_ is Star!21495) (regTwo!43503 (regTwo!43503 baseR!116)))) b!7960932))

(assert (= (and b!7960557 ((_ is Union!21495) (regTwo!43503 (regTwo!43503 baseR!116)))) b!7960933))

(declare-fun b!7960937 () Bool)

(declare-fun e!4694889 () Bool)

(declare-fun tp!2371714 () Bool)

(declare-fun tp!2371715 () Bool)

(assert (=> b!7960937 (= e!4694889 (and tp!2371714 tp!2371715))))

(declare-fun b!7960934 () Bool)

(assert (=> b!7960934 (= e!4694889 tp_is_empty!53533)))

(declare-fun b!7960935 () Bool)

(declare-fun tp!2371717 () Bool)

(declare-fun tp!2371713 () Bool)

(assert (=> b!7960935 (= e!4694889 (and tp!2371717 tp!2371713))))

(assert (=> b!7960555 (= tp!2371597 e!4694889)))

(declare-fun b!7960936 () Bool)

(declare-fun tp!2371716 () Bool)

(assert (=> b!7960936 (= e!4694889 tp!2371716)))

(assert (= (and b!7960555 ((_ is ElementMatch!21495) (regOne!43502 (regTwo!43503 baseR!116)))) b!7960934))

(assert (= (and b!7960555 ((_ is Concat!30494) (regOne!43502 (regTwo!43503 baseR!116)))) b!7960935))

(assert (= (and b!7960555 ((_ is Star!21495) (regOne!43502 (regTwo!43503 baseR!116)))) b!7960936))

(assert (= (and b!7960555 ((_ is Union!21495) (regOne!43502 (regTwo!43503 baseR!116)))) b!7960937))

(declare-fun b!7960941 () Bool)

(declare-fun e!4694890 () Bool)

(declare-fun tp!2371719 () Bool)

(declare-fun tp!2371720 () Bool)

(assert (=> b!7960941 (= e!4694890 (and tp!2371719 tp!2371720))))

(declare-fun b!7960938 () Bool)

(assert (=> b!7960938 (= e!4694890 tp_is_empty!53533)))

(declare-fun b!7960939 () Bool)

(declare-fun tp!2371722 () Bool)

(declare-fun tp!2371718 () Bool)

(assert (=> b!7960939 (= e!4694890 (and tp!2371722 tp!2371718))))

(assert (=> b!7960555 (= tp!2371593 e!4694890)))

(declare-fun b!7960940 () Bool)

(declare-fun tp!2371721 () Bool)

(assert (=> b!7960940 (= e!4694890 tp!2371721)))

(assert (= (and b!7960555 ((_ is ElementMatch!21495) (regTwo!43502 (regTwo!43503 baseR!116)))) b!7960938))

(assert (= (and b!7960555 ((_ is Concat!30494) (regTwo!43502 (regTwo!43503 baseR!116)))) b!7960939))

(assert (= (and b!7960555 ((_ is Star!21495) (regTwo!43502 (regTwo!43503 baseR!116)))) b!7960940))

(assert (= (and b!7960555 ((_ is Union!21495) (regTwo!43502 (regTwo!43503 baseR!116)))) b!7960941))

(declare-fun b!7960945 () Bool)

(declare-fun e!4694891 () Bool)

(declare-fun tp!2371724 () Bool)

(declare-fun tp!2371725 () Bool)

(assert (=> b!7960945 (= e!4694891 (and tp!2371724 tp!2371725))))

(declare-fun b!7960942 () Bool)

(assert (=> b!7960942 (= e!4694891 tp_is_empty!53533)))

(declare-fun b!7960943 () Bool)

(declare-fun tp!2371727 () Bool)

(declare-fun tp!2371723 () Bool)

(assert (=> b!7960943 (= e!4694891 (and tp!2371727 tp!2371723))))

(assert (=> b!7960565 (= tp!2371604 e!4694891)))

(declare-fun b!7960944 () Bool)

(declare-fun tp!2371726 () Bool)

(assert (=> b!7960944 (= e!4694891 tp!2371726)))

(assert (= (and b!7960565 ((_ is ElementMatch!21495) (regOne!43503 (regOne!43503 r!24602)))) b!7960942))

(assert (= (and b!7960565 ((_ is Concat!30494) (regOne!43503 (regOne!43503 r!24602)))) b!7960943))

(assert (= (and b!7960565 ((_ is Star!21495) (regOne!43503 (regOne!43503 r!24602)))) b!7960944))

(assert (= (and b!7960565 ((_ is Union!21495) (regOne!43503 (regOne!43503 r!24602)))) b!7960945))

(declare-fun b!7960949 () Bool)

(declare-fun e!4694892 () Bool)

(declare-fun tp!2371729 () Bool)

(declare-fun tp!2371730 () Bool)

(assert (=> b!7960949 (= e!4694892 (and tp!2371729 tp!2371730))))

(declare-fun b!7960946 () Bool)

(assert (=> b!7960946 (= e!4694892 tp_is_empty!53533)))

(declare-fun b!7960947 () Bool)

(declare-fun tp!2371732 () Bool)

(declare-fun tp!2371728 () Bool)

(assert (=> b!7960947 (= e!4694892 (and tp!2371732 tp!2371728))))

(assert (=> b!7960565 (= tp!2371605 e!4694892)))

(declare-fun b!7960948 () Bool)

(declare-fun tp!2371731 () Bool)

(assert (=> b!7960948 (= e!4694892 tp!2371731)))

(assert (= (and b!7960565 ((_ is ElementMatch!21495) (regTwo!43503 (regOne!43503 r!24602)))) b!7960946))

(assert (= (and b!7960565 ((_ is Concat!30494) (regTwo!43503 (regOne!43503 r!24602)))) b!7960947))

(assert (= (and b!7960565 ((_ is Star!21495) (regTwo!43503 (regOne!43503 r!24602)))) b!7960948))

(assert (= (and b!7960565 ((_ is Union!21495) (regTwo!43503 (regOne!43503 r!24602)))) b!7960949))

(declare-fun b!7960953 () Bool)

(declare-fun e!4694893 () Bool)

(declare-fun tp!2371734 () Bool)

(declare-fun tp!2371735 () Bool)

(assert (=> b!7960953 (= e!4694893 (and tp!2371734 tp!2371735))))

(declare-fun b!7960950 () Bool)

(assert (=> b!7960950 (= e!4694893 tp_is_empty!53533)))

(declare-fun b!7960951 () Bool)

(declare-fun tp!2371737 () Bool)

(declare-fun tp!2371733 () Bool)

(assert (=> b!7960951 (= e!4694893 (and tp!2371737 tp!2371733))))

(assert (=> b!7960556 (= tp!2371596 e!4694893)))

(declare-fun b!7960952 () Bool)

(declare-fun tp!2371736 () Bool)

(assert (=> b!7960952 (= e!4694893 tp!2371736)))

(assert (= (and b!7960556 ((_ is ElementMatch!21495) (reg!21824 (regTwo!43503 baseR!116)))) b!7960950))

(assert (= (and b!7960556 ((_ is Concat!30494) (reg!21824 (regTwo!43503 baseR!116)))) b!7960951))

(assert (= (and b!7960556 ((_ is Star!21495) (reg!21824 (regTwo!43503 baseR!116)))) b!7960952))

(assert (= (and b!7960556 ((_ is Union!21495) (reg!21824 (regTwo!43503 baseR!116)))) b!7960953))

(declare-fun b!7960954 () Bool)

(declare-fun e!4694894 () Bool)

(declare-fun tp!2371738 () Bool)

(assert (=> b!7960954 (= e!4694894 (and tp_is_empty!53533 tp!2371738))))

(assert (=> b!7960582 (= tp!2371628 e!4694894)))

(assert (= (and b!7960582 ((_ is Cons!74600) (t!390467 (t!390467 testedP!447)))) b!7960954))

(declare-fun b!7960958 () Bool)

(declare-fun e!4694895 () Bool)

(declare-fun tp!2371740 () Bool)

(declare-fun tp!2371741 () Bool)

(assert (=> b!7960958 (= e!4694895 (and tp!2371740 tp!2371741))))

(declare-fun b!7960955 () Bool)

(assert (=> b!7960955 (= e!4694895 tp_is_empty!53533)))

(declare-fun b!7960956 () Bool)

(declare-fun tp!2371743 () Bool)

(declare-fun tp!2371739 () Bool)

(assert (=> b!7960956 (= e!4694895 (and tp!2371743 tp!2371739))))

(assert (=> b!7960577 (= tp!2371619 e!4694895)))

(declare-fun b!7960957 () Bool)

(declare-fun tp!2371742 () Bool)

(assert (=> b!7960957 (= e!4694895 tp!2371742)))

(assert (= (and b!7960577 ((_ is ElementMatch!21495) (regOne!43503 (regTwo!43502 baseR!116)))) b!7960955))

(assert (= (and b!7960577 ((_ is Concat!30494) (regOne!43503 (regTwo!43502 baseR!116)))) b!7960956))

(assert (= (and b!7960577 ((_ is Star!21495) (regOne!43503 (regTwo!43502 baseR!116)))) b!7960957))

(assert (= (and b!7960577 ((_ is Union!21495) (regOne!43503 (regTwo!43502 baseR!116)))) b!7960958))

(declare-fun b!7960962 () Bool)

(declare-fun e!4694896 () Bool)

(declare-fun tp!2371745 () Bool)

(declare-fun tp!2371746 () Bool)

(assert (=> b!7960962 (= e!4694896 (and tp!2371745 tp!2371746))))

(declare-fun b!7960959 () Bool)

(assert (=> b!7960959 (= e!4694896 tp_is_empty!53533)))

(declare-fun b!7960960 () Bool)

(declare-fun tp!2371748 () Bool)

(declare-fun tp!2371744 () Bool)

(assert (=> b!7960960 (= e!4694896 (and tp!2371748 tp!2371744))))

(assert (=> b!7960577 (= tp!2371620 e!4694896)))

(declare-fun b!7960961 () Bool)

(declare-fun tp!2371747 () Bool)

(assert (=> b!7960961 (= e!4694896 tp!2371747)))

(assert (= (and b!7960577 ((_ is ElementMatch!21495) (regTwo!43503 (regTwo!43502 baseR!116)))) b!7960959))

(assert (= (and b!7960577 ((_ is Concat!30494) (regTwo!43503 (regTwo!43502 baseR!116)))) b!7960960))

(assert (= (and b!7960577 ((_ is Star!21495) (regTwo!43503 (regTwo!43502 baseR!116)))) b!7960961))

(assert (= (and b!7960577 ((_ is Union!21495) (regTwo!43503 (regTwo!43502 baseR!116)))) b!7960962))

(declare-fun b!7960966 () Bool)

(declare-fun e!4694897 () Bool)

(declare-fun tp!2371750 () Bool)

(declare-fun tp!2371751 () Bool)

(assert (=> b!7960966 (= e!4694897 (and tp!2371750 tp!2371751))))

(declare-fun b!7960963 () Bool)

(assert (=> b!7960963 (= e!4694897 tp_is_empty!53533)))

(declare-fun b!7960964 () Bool)

(declare-fun tp!2371753 () Bool)

(declare-fun tp!2371749 () Bool)

(assert (=> b!7960964 (= e!4694897 (and tp!2371753 tp!2371749))))

(assert (=> b!7960568 (= tp!2371611 e!4694897)))

(declare-fun b!7960965 () Bool)

(declare-fun tp!2371752 () Bool)

(assert (=> b!7960965 (= e!4694897 tp!2371752)))

(assert (= (and b!7960568 ((_ is ElementMatch!21495) (reg!21824 (regTwo!43503 r!24602)))) b!7960963))

(assert (= (and b!7960568 ((_ is Concat!30494) (reg!21824 (regTwo!43503 r!24602)))) b!7960964))

(assert (= (and b!7960568 ((_ is Star!21495) (reg!21824 (regTwo!43503 r!24602)))) b!7960965))

(assert (= (and b!7960568 ((_ is Union!21495) (reg!21824 (regTwo!43503 r!24602)))) b!7960966))

(declare-fun b!7960970 () Bool)

(declare-fun e!4694898 () Bool)

(declare-fun tp!2371755 () Bool)

(declare-fun tp!2371756 () Bool)

(assert (=> b!7960970 (= e!4694898 (and tp!2371755 tp!2371756))))

(declare-fun b!7960967 () Bool)

(assert (=> b!7960967 (= e!4694898 tp_is_empty!53533)))

(declare-fun b!7960968 () Bool)

(declare-fun tp!2371758 () Bool)

(declare-fun tp!2371754 () Bool)

(assert (=> b!7960968 (= e!4694898 (and tp!2371758 tp!2371754))))

(assert (=> b!7960559 (= tp!2371602 e!4694898)))

(declare-fun b!7960969 () Bool)

(declare-fun tp!2371757 () Bool)

(assert (=> b!7960969 (= e!4694898 tp!2371757)))

(assert (= (and b!7960559 ((_ is ElementMatch!21495) (regOne!43502 (reg!21824 baseR!116)))) b!7960967))

(assert (= (and b!7960559 ((_ is Concat!30494) (regOne!43502 (reg!21824 baseR!116)))) b!7960968))

(assert (= (and b!7960559 ((_ is Star!21495) (regOne!43502 (reg!21824 baseR!116)))) b!7960969))

(assert (= (and b!7960559 ((_ is Union!21495) (regOne!43502 (reg!21824 baseR!116)))) b!7960970))

(declare-fun b!7960974 () Bool)

(declare-fun e!4694899 () Bool)

(declare-fun tp!2371760 () Bool)

(declare-fun tp!2371761 () Bool)

(assert (=> b!7960974 (= e!4694899 (and tp!2371760 tp!2371761))))

(declare-fun b!7960971 () Bool)

(assert (=> b!7960971 (= e!4694899 tp_is_empty!53533)))

(declare-fun b!7960972 () Bool)

(declare-fun tp!2371763 () Bool)

(declare-fun tp!2371759 () Bool)

(assert (=> b!7960972 (= e!4694899 (and tp!2371763 tp!2371759))))

(assert (=> b!7960559 (= tp!2371598 e!4694899)))

(declare-fun b!7960973 () Bool)

(declare-fun tp!2371762 () Bool)

(assert (=> b!7960973 (= e!4694899 tp!2371762)))

(assert (= (and b!7960559 ((_ is ElementMatch!21495) (regTwo!43502 (reg!21824 baseR!116)))) b!7960971))

(assert (= (and b!7960559 ((_ is Concat!30494) (regTwo!43502 (reg!21824 baseR!116)))) b!7960972))

(assert (= (and b!7960559 ((_ is Star!21495) (regTwo!43502 (reg!21824 baseR!116)))) b!7960973))

(assert (= (and b!7960559 ((_ is Union!21495) (regTwo!43502 (reg!21824 baseR!116)))) b!7960974))

(declare-fun b!7960975 () Bool)

(declare-fun e!4694900 () Bool)

(declare-fun tp!2371764 () Bool)

(assert (=> b!7960975 (= e!4694900 (and tp_is_empty!53533 tp!2371764))))

(assert (=> b!7960539 (= tp!2371577 e!4694900)))

(assert (= (and b!7960539 ((_ is Cons!74600) (t!390467 (t!390467 input!7927)))) b!7960975))

(declare-fun b!7960979 () Bool)

(declare-fun e!4694901 () Bool)

(declare-fun tp!2371766 () Bool)

(declare-fun tp!2371767 () Bool)

(assert (=> b!7960979 (= e!4694901 (and tp!2371766 tp!2371767))))

(declare-fun b!7960976 () Bool)

(assert (=> b!7960976 (= e!4694901 tp_is_empty!53533)))

(declare-fun b!7960977 () Bool)

(declare-fun tp!2371769 () Bool)

(declare-fun tp!2371765 () Bool)

(assert (=> b!7960977 (= e!4694901 (and tp!2371769 tp!2371765))))

(assert (=> b!7960585 (= tp!2371632 e!4694901)))

(declare-fun b!7960978 () Bool)

(declare-fun tp!2371768 () Bool)

(assert (=> b!7960978 (= e!4694901 tp!2371768)))

(assert (= (and b!7960585 ((_ is ElementMatch!21495) (reg!21824 (regOne!43502 r!24602)))) b!7960976))

(assert (= (and b!7960585 ((_ is Concat!30494) (reg!21824 (regOne!43502 r!24602)))) b!7960977))

(assert (= (and b!7960585 ((_ is Star!21495) (reg!21824 (regOne!43502 r!24602)))) b!7960978))

(assert (= (and b!7960585 ((_ is Union!21495) (reg!21824 (regOne!43502 r!24602)))) b!7960979))

(declare-fun b!7960983 () Bool)

(declare-fun e!4694902 () Bool)

(declare-fun tp!2371771 () Bool)

(declare-fun tp!2371772 () Bool)

(assert (=> b!7960983 (= e!4694902 (and tp!2371771 tp!2371772))))

(declare-fun b!7960980 () Bool)

(assert (=> b!7960980 (= e!4694902 tp_is_empty!53533)))

(declare-fun b!7960981 () Bool)

(declare-fun tp!2371774 () Bool)

(declare-fun tp!2371770 () Bool)

(assert (=> b!7960981 (= e!4694902 (and tp!2371774 tp!2371770))))

(assert (=> b!7960576 (= tp!2371621 e!4694902)))

(declare-fun b!7960982 () Bool)

(declare-fun tp!2371773 () Bool)

(assert (=> b!7960982 (= e!4694902 tp!2371773)))

(assert (= (and b!7960576 ((_ is ElementMatch!21495) (reg!21824 (regTwo!43502 baseR!116)))) b!7960980))

(assert (= (and b!7960576 ((_ is Concat!30494) (reg!21824 (regTwo!43502 baseR!116)))) b!7960981))

(assert (= (and b!7960576 ((_ is Star!21495) (reg!21824 (regTwo!43502 baseR!116)))) b!7960982))

(assert (= (and b!7960576 ((_ is Union!21495) (reg!21824 (regTwo!43502 baseR!116)))) b!7960983))

(declare-fun b!7960987 () Bool)

(declare-fun e!4694903 () Bool)

(declare-fun tp!2371776 () Bool)

(declare-fun tp!2371777 () Bool)

(assert (=> b!7960987 (= e!4694903 (and tp!2371776 tp!2371777))))

(declare-fun b!7960984 () Bool)

(assert (=> b!7960984 (= e!4694903 tp_is_empty!53533)))

(declare-fun b!7960985 () Bool)

(declare-fun tp!2371779 () Bool)

(declare-fun tp!2371775 () Bool)

(assert (=> b!7960985 (= e!4694903 (and tp!2371779 tp!2371775))))

(assert (=> b!7960567 (= tp!2371612 e!4694903)))

(declare-fun b!7960986 () Bool)

(declare-fun tp!2371778 () Bool)

(assert (=> b!7960986 (= e!4694903 tp!2371778)))

(assert (= (and b!7960567 ((_ is ElementMatch!21495) (regOne!43502 (regTwo!43503 r!24602)))) b!7960984))

(assert (= (and b!7960567 ((_ is Concat!30494) (regOne!43502 (regTwo!43503 r!24602)))) b!7960985))

(assert (= (and b!7960567 ((_ is Star!21495) (regOne!43502 (regTwo!43503 r!24602)))) b!7960986))

(assert (= (and b!7960567 ((_ is Union!21495) (regOne!43502 (regTwo!43503 r!24602)))) b!7960987))

(declare-fun b!7960991 () Bool)

(declare-fun e!4694904 () Bool)

(declare-fun tp!2371781 () Bool)

(declare-fun tp!2371782 () Bool)

(assert (=> b!7960991 (= e!4694904 (and tp!2371781 tp!2371782))))

(declare-fun b!7960988 () Bool)

(assert (=> b!7960988 (= e!4694904 tp_is_empty!53533)))

(declare-fun b!7960989 () Bool)

(declare-fun tp!2371784 () Bool)

(declare-fun tp!2371780 () Bool)

(assert (=> b!7960989 (= e!4694904 (and tp!2371784 tp!2371780))))

(assert (=> b!7960567 (= tp!2371608 e!4694904)))

(declare-fun b!7960990 () Bool)

(declare-fun tp!2371783 () Bool)

(assert (=> b!7960990 (= e!4694904 tp!2371783)))

(assert (= (and b!7960567 ((_ is ElementMatch!21495) (regTwo!43502 (regTwo!43503 r!24602)))) b!7960988))

(assert (= (and b!7960567 ((_ is Concat!30494) (regTwo!43502 (regTwo!43503 r!24602)))) b!7960989))

(assert (= (and b!7960567 ((_ is Star!21495) (regTwo!43502 (regTwo!43503 r!24602)))) b!7960990))

(assert (= (and b!7960567 ((_ is Union!21495) (regTwo!43502 (regTwo!43503 r!24602)))) b!7960991))

(declare-fun b!7960995 () Bool)

(declare-fun e!4694905 () Bool)

(declare-fun tp!2371786 () Bool)

(declare-fun tp!2371787 () Bool)

(assert (=> b!7960995 (= e!4694905 (and tp!2371786 tp!2371787))))

(declare-fun b!7960992 () Bool)

(assert (=> b!7960992 (= e!4694905 tp_is_empty!53533)))

(declare-fun b!7960993 () Bool)

(declare-fun tp!2371789 () Bool)

(declare-fun tp!2371785 () Bool)

(assert (=> b!7960993 (= e!4694905 (and tp!2371789 tp!2371785))))

(assert (=> b!7960584 (= tp!2371633 e!4694905)))

(declare-fun b!7960994 () Bool)

(declare-fun tp!2371788 () Bool)

(assert (=> b!7960994 (= e!4694905 tp!2371788)))

(assert (= (and b!7960584 ((_ is ElementMatch!21495) (regOne!43502 (regOne!43502 r!24602)))) b!7960992))

(assert (= (and b!7960584 ((_ is Concat!30494) (regOne!43502 (regOne!43502 r!24602)))) b!7960993))

(assert (= (and b!7960584 ((_ is Star!21495) (regOne!43502 (regOne!43502 r!24602)))) b!7960994))

(assert (= (and b!7960584 ((_ is Union!21495) (regOne!43502 (regOne!43502 r!24602)))) b!7960995))

(declare-fun b!7960999 () Bool)

(declare-fun e!4694906 () Bool)

(declare-fun tp!2371791 () Bool)

(declare-fun tp!2371792 () Bool)

(assert (=> b!7960999 (= e!4694906 (and tp!2371791 tp!2371792))))

(declare-fun b!7960996 () Bool)

(assert (=> b!7960996 (= e!4694906 tp_is_empty!53533)))

(declare-fun b!7960997 () Bool)

(declare-fun tp!2371794 () Bool)

(declare-fun tp!2371790 () Bool)

(assert (=> b!7960997 (= e!4694906 (and tp!2371794 tp!2371790))))

(assert (=> b!7960584 (= tp!2371629 e!4694906)))

(declare-fun b!7960998 () Bool)

(declare-fun tp!2371793 () Bool)

(assert (=> b!7960998 (= e!4694906 tp!2371793)))

(assert (= (and b!7960584 ((_ is ElementMatch!21495) (regTwo!43502 (regOne!43502 r!24602)))) b!7960996))

(assert (= (and b!7960584 ((_ is Concat!30494) (regTwo!43502 (regOne!43502 r!24602)))) b!7960997))

(assert (= (and b!7960584 ((_ is Star!21495) (regTwo!43502 (regOne!43502 r!24602)))) b!7960998))

(assert (= (and b!7960584 ((_ is Union!21495) (regTwo!43502 (regOne!43502 r!24602)))) b!7960999))

(declare-fun b!7961003 () Bool)

(declare-fun e!4694907 () Bool)

(declare-fun tp!2371796 () Bool)

(declare-fun tp!2371797 () Bool)

(assert (=> b!7961003 (= e!4694907 (and tp!2371796 tp!2371797))))

(declare-fun b!7961000 () Bool)

(assert (=> b!7961000 (= e!4694907 tp_is_empty!53533)))

(declare-fun b!7961001 () Bool)

(declare-fun tp!2371799 () Bool)

(declare-fun tp!2371795 () Bool)

(assert (=> b!7961001 (= e!4694907 (and tp!2371799 tp!2371795))))

(assert (=> b!7960575 (= tp!2371622 e!4694907)))

(declare-fun b!7961002 () Bool)

(declare-fun tp!2371798 () Bool)

(assert (=> b!7961002 (= e!4694907 tp!2371798)))

(assert (= (and b!7960575 ((_ is ElementMatch!21495) (regOne!43502 (regTwo!43502 baseR!116)))) b!7961000))

(assert (= (and b!7960575 ((_ is Concat!30494) (regOne!43502 (regTwo!43502 baseR!116)))) b!7961001))

(assert (= (and b!7960575 ((_ is Star!21495) (regOne!43502 (regTwo!43502 baseR!116)))) b!7961002))

(assert (= (and b!7960575 ((_ is Union!21495) (regOne!43502 (regTwo!43502 baseR!116)))) b!7961003))

(declare-fun b!7961007 () Bool)

(declare-fun e!4694908 () Bool)

(declare-fun tp!2371801 () Bool)

(declare-fun tp!2371802 () Bool)

(assert (=> b!7961007 (= e!4694908 (and tp!2371801 tp!2371802))))

(declare-fun b!7961004 () Bool)

(assert (=> b!7961004 (= e!4694908 tp_is_empty!53533)))

(declare-fun b!7961005 () Bool)

(declare-fun tp!2371804 () Bool)

(declare-fun tp!2371800 () Bool)

(assert (=> b!7961005 (= e!4694908 (and tp!2371804 tp!2371800))))

(assert (=> b!7960575 (= tp!2371618 e!4694908)))

(declare-fun b!7961006 () Bool)

(declare-fun tp!2371803 () Bool)

(assert (=> b!7961006 (= e!4694908 tp!2371803)))

(assert (= (and b!7960575 ((_ is ElementMatch!21495) (regTwo!43502 (regTwo!43502 baseR!116)))) b!7961004))

(assert (= (and b!7960575 ((_ is Concat!30494) (regTwo!43502 (regTwo!43502 baseR!116)))) b!7961005))

(assert (= (and b!7960575 ((_ is Star!21495) (regTwo!43502 (regTwo!43502 baseR!116)))) b!7961006))

(assert (= (and b!7960575 ((_ is Union!21495) (regTwo!43502 (regTwo!43502 baseR!116)))) b!7961007))

(declare-fun b!7961011 () Bool)

(declare-fun e!4694909 () Bool)

(declare-fun tp!2371806 () Bool)

(declare-fun tp!2371807 () Bool)

(assert (=> b!7961011 (= e!4694909 (and tp!2371806 tp!2371807))))

(declare-fun b!7961008 () Bool)

(assert (=> b!7961008 (= e!4694909 tp_is_empty!53533)))

(declare-fun b!7961009 () Bool)

(declare-fun tp!2371809 () Bool)

(declare-fun tp!2371805 () Bool)

(assert (=> b!7961009 (= e!4694909 (and tp!2371809 tp!2371805))))

(assert (=> b!7960553 (= tp!2371589 e!4694909)))

(declare-fun b!7961010 () Bool)

(declare-fun tp!2371808 () Bool)

(assert (=> b!7961010 (= e!4694909 tp!2371808)))

(assert (= (and b!7960553 ((_ is ElementMatch!21495) (regOne!43503 (regOne!43503 baseR!116)))) b!7961008))

(assert (= (and b!7960553 ((_ is Concat!30494) (regOne!43503 (regOne!43503 baseR!116)))) b!7961009))

(assert (= (and b!7960553 ((_ is Star!21495) (regOne!43503 (regOne!43503 baseR!116)))) b!7961010))

(assert (= (and b!7960553 ((_ is Union!21495) (regOne!43503 (regOne!43503 baseR!116)))) b!7961011))

(declare-fun b!7961015 () Bool)

(declare-fun e!4694910 () Bool)

(declare-fun tp!2371811 () Bool)

(declare-fun tp!2371812 () Bool)

(assert (=> b!7961015 (= e!4694910 (and tp!2371811 tp!2371812))))

(declare-fun b!7961012 () Bool)

(assert (=> b!7961012 (= e!4694910 tp_is_empty!53533)))

(declare-fun b!7961013 () Bool)

(declare-fun tp!2371814 () Bool)

(declare-fun tp!2371810 () Bool)

(assert (=> b!7961013 (= e!4694910 (and tp!2371814 tp!2371810))))

(assert (=> b!7960553 (= tp!2371590 e!4694910)))

(declare-fun b!7961014 () Bool)

(declare-fun tp!2371813 () Bool)

(assert (=> b!7961014 (= e!4694910 tp!2371813)))

(assert (= (and b!7960553 ((_ is ElementMatch!21495) (regTwo!43503 (regOne!43503 baseR!116)))) b!7961012))

(assert (= (and b!7960553 ((_ is Concat!30494) (regTwo!43503 (regOne!43503 baseR!116)))) b!7961013))

(assert (= (and b!7960553 ((_ is Star!21495) (regTwo!43503 (regOne!43503 baseR!116)))) b!7961014))

(assert (= (and b!7960553 ((_ is Union!21495) (regTwo!43503 (regOne!43503 baseR!116)))) b!7961015))

(declare-fun b!7961019 () Bool)

(declare-fun e!4694911 () Bool)

(declare-fun tp!2371816 () Bool)

(declare-fun tp!2371817 () Bool)

(assert (=> b!7961019 (= e!4694911 (and tp!2371816 tp!2371817))))

(declare-fun b!7961016 () Bool)

(assert (=> b!7961016 (= e!4694911 tp_is_empty!53533)))

(declare-fun b!7961017 () Bool)

(declare-fun tp!2371819 () Bool)

(declare-fun tp!2371815 () Bool)

(assert (=> b!7961017 (= e!4694911 (and tp!2371819 tp!2371815))))

(assert (=> b!7960594 (= tp!2371635 e!4694911)))

(declare-fun b!7961018 () Bool)

(declare-fun tp!2371818 () Bool)

(assert (=> b!7961018 (= e!4694911 tp!2371818)))

(assert (= (and b!7960594 ((_ is ElementMatch!21495) (regOne!43503 (regTwo!43502 r!24602)))) b!7961016))

(assert (= (and b!7960594 ((_ is Concat!30494) (regOne!43503 (regTwo!43502 r!24602)))) b!7961017))

(assert (= (and b!7960594 ((_ is Star!21495) (regOne!43503 (regTwo!43502 r!24602)))) b!7961018))

(assert (= (and b!7960594 ((_ is Union!21495) (regOne!43503 (regTwo!43502 r!24602)))) b!7961019))

(declare-fun b!7961023 () Bool)

(declare-fun e!4694912 () Bool)

(declare-fun tp!2371821 () Bool)

(declare-fun tp!2371822 () Bool)

(assert (=> b!7961023 (= e!4694912 (and tp!2371821 tp!2371822))))

(declare-fun b!7961020 () Bool)

(assert (=> b!7961020 (= e!4694912 tp_is_empty!53533)))

(declare-fun b!7961021 () Bool)

(declare-fun tp!2371824 () Bool)

(declare-fun tp!2371820 () Bool)

(assert (=> b!7961021 (= e!4694912 (and tp!2371824 tp!2371820))))

(assert (=> b!7960594 (= tp!2371636 e!4694912)))

(declare-fun b!7961022 () Bool)

(declare-fun tp!2371823 () Bool)

(assert (=> b!7961022 (= e!4694912 tp!2371823)))

(assert (= (and b!7960594 ((_ is ElementMatch!21495) (regTwo!43503 (regTwo!43502 r!24602)))) b!7961020))

(assert (= (and b!7960594 ((_ is Concat!30494) (regTwo!43503 (regTwo!43502 r!24602)))) b!7961021))

(assert (= (and b!7960594 ((_ is Star!21495) (regTwo!43503 (regTwo!43502 r!24602)))) b!7961022))

(assert (= (and b!7960594 ((_ is Union!21495) (regTwo!43503 (regTwo!43502 r!24602)))) b!7961023))

(declare-fun b!7961027 () Bool)

(declare-fun e!4694913 () Bool)

(declare-fun tp!2371826 () Bool)

(declare-fun tp!2371827 () Bool)

(assert (=> b!7961027 (= e!4694913 (and tp!2371826 tp!2371827))))

(declare-fun b!7961024 () Bool)

(assert (=> b!7961024 (= e!4694913 tp_is_empty!53533)))

(declare-fun b!7961025 () Bool)

(declare-fun tp!2371829 () Bool)

(declare-fun tp!2371825 () Bool)

(assert (=> b!7961025 (= e!4694913 (and tp!2371829 tp!2371825))))

(assert (=> b!7960561 (= tp!2371599 e!4694913)))

(declare-fun b!7961026 () Bool)

(declare-fun tp!2371828 () Bool)

(assert (=> b!7961026 (= e!4694913 tp!2371828)))

(assert (= (and b!7960561 ((_ is ElementMatch!21495) (regOne!43503 (reg!21824 baseR!116)))) b!7961024))

(assert (= (and b!7960561 ((_ is Concat!30494) (regOne!43503 (reg!21824 baseR!116)))) b!7961025))

(assert (= (and b!7960561 ((_ is Star!21495) (regOne!43503 (reg!21824 baseR!116)))) b!7961026))

(assert (= (and b!7960561 ((_ is Union!21495) (regOne!43503 (reg!21824 baseR!116)))) b!7961027))

(declare-fun b!7961031 () Bool)

(declare-fun e!4694914 () Bool)

(declare-fun tp!2371831 () Bool)

(declare-fun tp!2371832 () Bool)

(assert (=> b!7961031 (= e!4694914 (and tp!2371831 tp!2371832))))

(declare-fun b!7961028 () Bool)

(assert (=> b!7961028 (= e!4694914 tp_is_empty!53533)))

(declare-fun b!7961029 () Bool)

(declare-fun tp!2371834 () Bool)

(declare-fun tp!2371830 () Bool)

(assert (=> b!7961029 (= e!4694914 (and tp!2371834 tp!2371830))))

(assert (=> b!7960561 (= tp!2371600 e!4694914)))

(declare-fun b!7961030 () Bool)

(declare-fun tp!2371833 () Bool)

(assert (=> b!7961030 (= e!4694914 tp!2371833)))

(assert (= (and b!7960561 ((_ is ElementMatch!21495) (regTwo!43503 (reg!21824 baseR!116)))) b!7961028))

(assert (= (and b!7960561 ((_ is Concat!30494) (regTwo!43503 (reg!21824 baseR!116)))) b!7961029))

(assert (= (and b!7960561 ((_ is Star!21495) (regTwo!43503 (reg!21824 baseR!116)))) b!7961030))

(assert (= (and b!7960561 ((_ is Union!21495) (regTwo!43503 (reg!21824 baseR!116)))) b!7961031))

(declare-fun b!7961035 () Bool)

(declare-fun e!4694915 () Bool)

(declare-fun tp!2371836 () Bool)

(declare-fun tp!2371837 () Bool)

(assert (=> b!7961035 (= e!4694915 (and tp!2371836 tp!2371837))))

(declare-fun b!7961032 () Bool)

(assert (=> b!7961032 (= e!4694915 tp_is_empty!53533)))

(declare-fun b!7961033 () Bool)

(declare-fun tp!2371839 () Bool)

(declare-fun tp!2371835 () Bool)

(assert (=> b!7961033 (= e!4694915 (and tp!2371839 tp!2371835))))

(assert (=> b!7960552 (= tp!2371591 e!4694915)))

(declare-fun b!7961034 () Bool)

(declare-fun tp!2371838 () Bool)

(assert (=> b!7961034 (= e!4694915 tp!2371838)))

(assert (= (and b!7960552 ((_ is ElementMatch!21495) (reg!21824 (regOne!43503 baseR!116)))) b!7961032))

(assert (= (and b!7960552 ((_ is Concat!30494) (reg!21824 (regOne!43503 baseR!116)))) b!7961033))

(assert (= (and b!7960552 ((_ is Star!21495) (reg!21824 (regOne!43503 baseR!116)))) b!7961034))

(assert (= (and b!7960552 ((_ is Union!21495) (reg!21824 (regOne!43503 baseR!116)))) b!7961035))

(declare-fun b!7961039 () Bool)

(declare-fun e!4694916 () Bool)

(declare-fun tp!2371841 () Bool)

(declare-fun tp!2371842 () Bool)

(assert (=> b!7961039 (= e!4694916 (and tp!2371841 tp!2371842))))

(declare-fun b!7961036 () Bool)

(assert (=> b!7961036 (= e!4694916 tp_is_empty!53533)))

(declare-fun b!7961037 () Bool)

(declare-fun tp!2371844 () Bool)

(declare-fun tp!2371840 () Bool)

(assert (=> b!7961037 (= e!4694916 (and tp!2371844 tp!2371840))))

(assert (=> b!7960593 (= tp!2371637 e!4694916)))

(declare-fun b!7961038 () Bool)

(declare-fun tp!2371843 () Bool)

(assert (=> b!7961038 (= e!4694916 tp!2371843)))

(assert (= (and b!7960593 ((_ is ElementMatch!21495) (reg!21824 (regTwo!43502 r!24602)))) b!7961036))

(assert (= (and b!7960593 ((_ is Concat!30494) (reg!21824 (regTwo!43502 r!24602)))) b!7961037))

(assert (= (and b!7960593 ((_ is Star!21495) (reg!21824 (regTwo!43502 r!24602)))) b!7961038))

(assert (= (and b!7960593 ((_ is Union!21495) (reg!21824 (regTwo!43502 r!24602)))) b!7961039))

(declare-fun b!7961043 () Bool)

(declare-fun e!4694917 () Bool)

(declare-fun tp!2371846 () Bool)

(declare-fun tp!2371847 () Bool)

(assert (=> b!7961043 (= e!4694917 (and tp!2371846 tp!2371847))))

(declare-fun b!7961040 () Bool)

(assert (=> b!7961040 (= e!4694917 tp_is_empty!53533)))

(declare-fun b!7961041 () Bool)

(declare-fun tp!2371849 () Bool)

(declare-fun tp!2371845 () Bool)

(assert (=> b!7961041 (= e!4694917 (and tp!2371849 tp!2371845))))

(assert (=> b!7960569 (= tp!2371609 e!4694917)))

(declare-fun b!7961042 () Bool)

(declare-fun tp!2371848 () Bool)

(assert (=> b!7961042 (= e!4694917 tp!2371848)))

(assert (= (and b!7960569 ((_ is ElementMatch!21495) (regOne!43503 (regTwo!43503 r!24602)))) b!7961040))

(assert (= (and b!7960569 ((_ is Concat!30494) (regOne!43503 (regTwo!43503 r!24602)))) b!7961041))

(assert (= (and b!7960569 ((_ is Star!21495) (regOne!43503 (regTwo!43503 r!24602)))) b!7961042))

(assert (= (and b!7960569 ((_ is Union!21495) (regOne!43503 (regTwo!43503 r!24602)))) b!7961043))

(declare-fun b!7961047 () Bool)

(declare-fun e!4694918 () Bool)

(declare-fun tp!2371851 () Bool)

(declare-fun tp!2371852 () Bool)

(assert (=> b!7961047 (= e!4694918 (and tp!2371851 tp!2371852))))

(declare-fun b!7961044 () Bool)

(assert (=> b!7961044 (= e!4694918 tp_is_empty!53533)))

(declare-fun b!7961045 () Bool)

(declare-fun tp!2371854 () Bool)

(declare-fun tp!2371850 () Bool)

(assert (=> b!7961045 (= e!4694918 (and tp!2371854 tp!2371850))))

(assert (=> b!7960569 (= tp!2371610 e!4694918)))

(declare-fun b!7961046 () Bool)

(declare-fun tp!2371853 () Bool)

(assert (=> b!7961046 (= e!4694918 tp!2371853)))

(assert (= (and b!7960569 ((_ is ElementMatch!21495) (regTwo!43503 (regTwo!43503 r!24602)))) b!7961044))

(assert (= (and b!7960569 ((_ is Concat!30494) (regTwo!43503 (regTwo!43503 r!24602)))) b!7961045))

(assert (= (and b!7960569 ((_ is Star!21495) (regTwo!43503 (regTwo!43503 r!24602)))) b!7961046))

(assert (= (and b!7960569 ((_ is Union!21495) (regTwo!43503 (regTwo!43503 r!24602)))) b!7961047))

(declare-fun b!7961051 () Bool)

(declare-fun e!4694919 () Bool)

(declare-fun tp!2371856 () Bool)

(declare-fun tp!2371857 () Bool)

(assert (=> b!7961051 (= e!4694919 (and tp!2371856 tp!2371857))))

(declare-fun b!7961048 () Bool)

(assert (=> b!7961048 (= e!4694919 tp_is_empty!53533)))

(declare-fun b!7961049 () Bool)

(declare-fun tp!2371859 () Bool)

(declare-fun tp!2371855 () Bool)

(assert (=> b!7961049 (= e!4694919 (and tp!2371859 tp!2371855))))

(assert (=> b!7960560 (= tp!2371601 e!4694919)))

(declare-fun b!7961050 () Bool)

(declare-fun tp!2371858 () Bool)

(assert (=> b!7961050 (= e!4694919 tp!2371858)))

(assert (= (and b!7960560 ((_ is ElementMatch!21495) (reg!21824 (reg!21824 baseR!116)))) b!7961048))

(assert (= (and b!7960560 ((_ is Concat!30494) (reg!21824 (reg!21824 baseR!116)))) b!7961049))

(assert (= (and b!7960560 ((_ is Star!21495) (reg!21824 (reg!21824 baseR!116)))) b!7961050))

(assert (= (and b!7960560 ((_ is Union!21495) (reg!21824 (reg!21824 baseR!116)))) b!7961051))

(declare-fun b!7961055 () Bool)

(declare-fun e!4694920 () Bool)

(declare-fun tp!2371861 () Bool)

(declare-fun tp!2371862 () Bool)

(assert (=> b!7961055 (= e!4694920 (and tp!2371861 tp!2371862))))

(declare-fun b!7961052 () Bool)

(assert (=> b!7961052 (= e!4694920 tp_is_empty!53533)))

(declare-fun b!7961053 () Bool)

(declare-fun tp!2371864 () Bool)

(declare-fun tp!2371860 () Bool)

(assert (=> b!7961053 (= e!4694920 (and tp!2371864 tp!2371860))))

(assert (=> b!7960586 (= tp!2371630 e!4694920)))

(declare-fun b!7961054 () Bool)

(declare-fun tp!2371863 () Bool)

(assert (=> b!7961054 (= e!4694920 tp!2371863)))

(assert (= (and b!7960586 ((_ is ElementMatch!21495) (regOne!43503 (regOne!43502 r!24602)))) b!7961052))

(assert (= (and b!7960586 ((_ is Concat!30494) (regOne!43503 (regOne!43502 r!24602)))) b!7961053))

(assert (= (and b!7960586 ((_ is Star!21495) (regOne!43503 (regOne!43502 r!24602)))) b!7961054))

(assert (= (and b!7960586 ((_ is Union!21495) (regOne!43503 (regOne!43502 r!24602)))) b!7961055))

(declare-fun b!7961059 () Bool)

(declare-fun e!4694921 () Bool)

(declare-fun tp!2371866 () Bool)

(declare-fun tp!2371867 () Bool)

(assert (=> b!7961059 (= e!4694921 (and tp!2371866 tp!2371867))))

(declare-fun b!7961056 () Bool)

(assert (=> b!7961056 (= e!4694921 tp_is_empty!53533)))

(declare-fun b!7961057 () Bool)

(declare-fun tp!2371869 () Bool)

(declare-fun tp!2371865 () Bool)

(assert (=> b!7961057 (= e!4694921 (and tp!2371869 tp!2371865))))

(assert (=> b!7960586 (= tp!2371631 e!4694921)))

(declare-fun b!7961058 () Bool)

(declare-fun tp!2371868 () Bool)

(assert (=> b!7961058 (= e!4694921 tp!2371868)))

(assert (= (and b!7960586 ((_ is ElementMatch!21495) (regTwo!43503 (regOne!43502 r!24602)))) b!7961056))

(assert (= (and b!7960586 ((_ is Concat!30494) (regTwo!43503 (regOne!43502 r!24602)))) b!7961057))

(assert (= (and b!7960586 ((_ is Star!21495) (regTwo!43503 (regOne!43502 r!24602)))) b!7961058))

(assert (= (and b!7960586 ((_ is Union!21495) (regTwo!43503 (regOne!43502 r!24602)))) b!7961059))

(declare-fun b!7961063 () Bool)

(declare-fun e!4694922 () Bool)

(declare-fun tp!2371871 () Bool)

(declare-fun tp!2371872 () Bool)

(assert (=> b!7961063 (= e!4694922 (and tp!2371871 tp!2371872))))

(declare-fun b!7961060 () Bool)

(assert (=> b!7961060 (= e!4694922 tp_is_empty!53533)))

(declare-fun b!7961061 () Bool)

(declare-fun tp!2371874 () Bool)

(declare-fun tp!2371870 () Bool)

(assert (=> b!7961061 (= e!4694922 (and tp!2371874 tp!2371870))))

(assert (=> b!7960551 (= tp!2371592 e!4694922)))

(declare-fun b!7961062 () Bool)

(declare-fun tp!2371873 () Bool)

(assert (=> b!7961062 (= e!4694922 tp!2371873)))

(assert (= (and b!7960551 ((_ is ElementMatch!21495) (regOne!43502 (regOne!43503 baseR!116)))) b!7961060))

(assert (= (and b!7960551 ((_ is Concat!30494) (regOne!43502 (regOne!43503 baseR!116)))) b!7961061))

(assert (= (and b!7960551 ((_ is Star!21495) (regOne!43502 (regOne!43503 baseR!116)))) b!7961062))

(assert (= (and b!7960551 ((_ is Union!21495) (regOne!43502 (regOne!43503 baseR!116)))) b!7961063))

(declare-fun b!7961067 () Bool)

(declare-fun e!4694923 () Bool)

(declare-fun tp!2371876 () Bool)

(declare-fun tp!2371877 () Bool)

(assert (=> b!7961067 (= e!4694923 (and tp!2371876 tp!2371877))))

(declare-fun b!7961064 () Bool)

(assert (=> b!7961064 (= e!4694923 tp_is_empty!53533)))

(declare-fun b!7961065 () Bool)

(declare-fun tp!2371879 () Bool)

(declare-fun tp!2371875 () Bool)

(assert (=> b!7961065 (= e!4694923 (and tp!2371879 tp!2371875))))

(assert (=> b!7960551 (= tp!2371588 e!4694923)))

(declare-fun b!7961066 () Bool)

(declare-fun tp!2371878 () Bool)

(assert (=> b!7961066 (= e!4694923 tp!2371878)))

(assert (= (and b!7960551 ((_ is ElementMatch!21495) (regTwo!43502 (regOne!43503 baseR!116)))) b!7961064))

(assert (= (and b!7960551 ((_ is Concat!30494) (regTwo!43502 (regOne!43503 baseR!116)))) b!7961065))

(assert (= (and b!7960551 ((_ is Star!21495) (regTwo!43502 (regOne!43503 baseR!116)))) b!7961066))

(assert (= (and b!7960551 ((_ is Union!21495) (regTwo!43502 (regOne!43503 baseR!116)))) b!7961067))

(declare-fun b!7961071 () Bool)

(declare-fun e!4694924 () Bool)

(declare-fun tp!2371881 () Bool)

(declare-fun tp!2371882 () Bool)

(assert (=> b!7961071 (= e!4694924 (and tp!2371881 tp!2371882))))

(declare-fun b!7961068 () Bool)

(assert (=> b!7961068 (= e!4694924 tp_is_empty!53533)))

(declare-fun b!7961069 () Bool)

(declare-fun tp!2371884 () Bool)

(declare-fun tp!2371880 () Bool)

(assert (=> b!7961069 (= e!4694924 (and tp!2371884 tp!2371880))))

(assert (=> b!7960592 (= tp!2371638 e!4694924)))

(declare-fun b!7961070 () Bool)

(declare-fun tp!2371883 () Bool)

(assert (=> b!7961070 (= e!4694924 tp!2371883)))

(assert (= (and b!7960592 ((_ is ElementMatch!21495) (regOne!43502 (regTwo!43502 r!24602)))) b!7961068))

(assert (= (and b!7960592 ((_ is Concat!30494) (regOne!43502 (regTwo!43502 r!24602)))) b!7961069))

(assert (= (and b!7960592 ((_ is Star!21495) (regOne!43502 (regTwo!43502 r!24602)))) b!7961070))

(assert (= (and b!7960592 ((_ is Union!21495) (regOne!43502 (regTwo!43502 r!24602)))) b!7961071))

(declare-fun b!7961075 () Bool)

(declare-fun e!4694925 () Bool)

(declare-fun tp!2371886 () Bool)

(declare-fun tp!2371887 () Bool)

(assert (=> b!7961075 (= e!4694925 (and tp!2371886 tp!2371887))))

(declare-fun b!7961072 () Bool)

(assert (=> b!7961072 (= e!4694925 tp_is_empty!53533)))

(declare-fun b!7961073 () Bool)

(declare-fun tp!2371889 () Bool)

(declare-fun tp!2371885 () Bool)

(assert (=> b!7961073 (= e!4694925 (and tp!2371889 tp!2371885))))

(assert (=> b!7960592 (= tp!2371634 e!4694925)))

(declare-fun b!7961074 () Bool)

(declare-fun tp!2371888 () Bool)

(assert (=> b!7961074 (= e!4694925 tp!2371888)))

(assert (= (and b!7960592 ((_ is ElementMatch!21495) (regTwo!43502 (regTwo!43502 r!24602)))) b!7961072))

(assert (= (and b!7960592 ((_ is Concat!30494) (regTwo!43502 (regTwo!43502 r!24602)))) b!7961073))

(assert (= (and b!7960592 ((_ is Star!21495) (regTwo!43502 (regTwo!43502 r!24602)))) b!7961074))

(assert (= (and b!7960592 ((_ is Union!21495) (regTwo!43502 (regTwo!43502 r!24602)))) b!7961075))

(declare-fun b!7961079 () Bool)

(declare-fun e!4694926 () Bool)

(declare-fun tp!2371891 () Bool)

(declare-fun tp!2371892 () Bool)

(assert (=> b!7961079 (= e!4694926 (and tp!2371891 tp!2371892))))

(declare-fun b!7961076 () Bool)

(assert (=> b!7961076 (= e!4694926 tp_is_empty!53533)))

(declare-fun b!7961077 () Bool)

(declare-fun tp!2371894 () Bool)

(declare-fun tp!2371890 () Bool)

(assert (=> b!7961077 (= e!4694926 (and tp!2371894 tp!2371890))))

(assert (=> b!7960563 (= tp!2371607 e!4694926)))

(declare-fun b!7961078 () Bool)

(declare-fun tp!2371893 () Bool)

(assert (=> b!7961078 (= e!4694926 tp!2371893)))

(assert (= (and b!7960563 ((_ is ElementMatch!21495) (regOne!43502 (regOne!43503 r!24602)))) b!7961076))

(assert (= (and b!7960563 ((_ is Concat!30494) (regOne!43502 (regOne!43503 r!24602)))) b!7961077))

(assert (= (and b!7960563 ((_ is Star!21495) (regOne!43502 (regOne!43503 r!24602)))) b!7961078))

(assert (= (and b!7960563 ((_ is Union!21495) (regOne!43502 (regOne!43503 r!24602)))) b!7961079))

(declare-fun b!7961083 () Bool)

(declare-fun e!4694927 () Bool)

(declare-fun tp!2371896 () Bool)

(declare-fun tp!2371897 () Bool)

(assert (=> b!7961083 (= e!4694927 (and tp!2371896 tp!2371897))))

(declare-fun b!7961080 () Bool)

(assert (=> b!7961080 (= e!4694927 tp_is_empty!53533)))

(declare-fun b!7961081 () Bool)

(declare-fun tp!2371899 () Bool)

(declare-fun tp!2371895 () Bool)

(assert (=> b!7961081 (= e!4694927 (and tp!2371899 tp!2371895))))

(assert (=> b!7960563 (= tp!2371603 e!4694927)))

(declare-fun b!7961082 () Bool)

(declare-fun tp!2371898 () Bool)

(assert (=> b!7961082 (= e!4694927 tp!2371898)))

(assert (= (and b!7960563 ((_ is ElementMatch!21495) (regTwo!43502 (regOne!43503 r!24602)))) b!7961080))

(assert (= (and b!7960563 ((_ is Concat!30494) (regTwo!43502 (regOne!43503 r!24602)))) b!7961081))

(assert (= (and b!7960563 ((_ is Star!21495) (regTwo!43502 (regOne!43503 r!24602)))) b!7961082))

(assert (= (and b!7960563 ((_ is Union!21495) (regTwo!43502 (regOne!43503 r!24602)))) b!7961083))

(declare-fun b!7961087 () Bool)

(declare-fun e!4694928 () Bool)

(declare-fun tp!2371901 () Bool)

(declare-fun tp!2371902 () Bool)

(assert (=> b!7961087 (= e!4694928 (and tp!2371901 tp!2371902))))

(declare-fun b!7961084 () Bool)

(assert (=> b!7961084 (= e!4694928 tp_is_empty!53533)))

(declare-fun b!7961085 () Bool)

(declare-fun tp!2371904 () Bool)

(declare-fun tp!2371900 () Bool)

(assert (=> b!7961085 (= e!4694928 (and tp!2371904 tp!2371900))))

(assert (=> b!7960573 (= tp!2371614 e!4694928)))

(declare-fun b!7961086 () Bool)

(declare-fun tp!2371903 () Bool)

(assert (=> b!7961086 (= e!4694928 tp!2371903)))

(assert (= (and b!7960573 ((_ is ElementMatch!21495) (regOne!43503 (regOne!43502 baseR!116)))) b!7961084))

(assert (= (and b!7960573 ((_ is Concat!30494) (regOne!43503 (regOne!43502 baseR!116)))) b!7961085))

(assert (= (and b!7960573 ((_ is Star!21495) (regOne!43503 (regOne!43502 baseR!116)))) b!7961086))

(assert (= (and b!7960573 ((_ is Union!21495) (regOne!43503 (regOne!43502 baseR!116)))) b!7961087))

(declare-fun b!7961091 () Bool)

(declare-fun e!4694929 () Bool)

(declare-fun tp!2371906 () Bool)

(declare-fun tp!2371907 () Bool)

(assert (=> b!7961091 (= e!4694929 (and tp!2371906 tp!2371907))))

(declare-fun b!7961088 () Bool)

(assert (=> b!7961088 (= e!4694929 tp_is_empty!53533)))

(declare-fun b!7961089 () Bool)

(declare-fun tp!2371909 () Bool)

(declare-fun tp!2371905 () Bool)

(assert (=> b!7961089 (= e!4694929 (and tp!2371909 tp!2371905))))

(assert (=> b!7960573 (= tp!2371615 e!4694929)))

(declare-fun b!7961090 () Bool)

(declare-fun tp!2371908 () Bool)

(assert (=> b!7961090 (= e!4694929 tp!2371908)))

(assert (= (and b!7960573 ((_ is ElementMatch!21495) (regTwo!43503 (regOne!43502 baseR!116)))) b!7961088))

(assert (= (and b!7960573 ((_ is Concat!30494) (regTwo!43503 (regOne!43502 baseR!116)))) b!7961089))

(assert (= (and b!7960573 ((_ is Star!21495) (regTwo!43503 (regOne!43502 baseR!116)))) b!7961090))

(assert (= (and b!7960573 ((_ is Union!21495) (regTwo!43503 (regOne!43502 baseR!116)))) b!7961091))

(declare-fun b!7961095 () Bool)

(declare-fun e!4694930 () Bool)

(declare-fun tp!2371911 () Bool)

(declare-fun tp!2371912 () Bool)

(assert (=> b!7961095 (= e!4694930 (and tp!2371911 tp!2371912))))

(declare-fun b!7961092 () Bool)

(assert (=> b!7961092 (= e!4694930 tp_is_empty!53533)))

(declare-fun b!7961093 () Bool)

(declare-fun tp!2371914 () Bool)

(declare-fun tp!2371910 () Bool)

(assert (=> b!7961093 (= e!4694930 (and tp!2371914 tp!2371910))))

(assert (=> b!7960564 (= tp!2371606 e!4694930)))

(declare-fun b!7961094 () Bool)

(declare-fun tp!2371913 () Bool)

(assert (=> b!7961094 (= e!4694930 tp!2371913)))

(assert (= (and b!7960564 ((_ is ElementMatch!21495) (reg!21824 (regOne!43503 r!24602)))) b!7961092))

(assert (= (and b!7960564 ((_ is Concat!30494) (reg!21824 (regOne!43503 r!24602)))) b!7961093))

(assert (= (and b!7960564 ((_ is Star!21495) (reg!21824 (regOne!43503 r!24602)))) b!7961094))

(assert (= (and b!7960564 ((_ is Union!21495) (reg!21824 (regOne!43503 r!24602)))) b!7961095))

(declare-fun b!7961099 () Bool)

(declare-fun e!4694931 () Bool)

(declare-fun tp!2371916 () Bool)

(declare-fun tp!2371917 () Bool)

(assert (=> b!7961099 (= e!4694931 (and tp!2371916 tp!2371917))))

(declare-fun b!7961096 () Bool)

(assert (=> b!7961096 (= e!4694931 tp_is_empty!53533)))

(declare-fun b!7961097 () Bool)

(declare-fun tp!2371919 () Bool)

(declare-fun tp!2371915 () Bool)

(assert (=> b!7961097 (= e!4694931 (and tp!2371919 tp!2371915))))

(assert (=> b!7960571 (= tp!2371617 e!4694931)))

(declare-fun b!7961098 () Bool)

(declare-fun tp!2371918 () Bool)

(assert (=> b!7961098 (= e!4694931 tp!2371918)))

(assert (= (and b!7960571 ((_ is ElementMatch!21495) (regOne!43502 (regOne!43502 baseR!116)))) b!7961096))

(assert (= (and b!7960571 ((_ is Concat!30494) (regOne!43502 (regOne!43502 baseR!116)))) b!7961097))

(assert (= (and b!7960571 ((_ is Star!21495) (regOne!43502 (regOne!43502 baseR!116)))) b!7961098))

(assert (= (and b!7960571 ((_ is Union!21495) (regOne!43502 (regOne!43502 baseR!116)))) b!7961099))

(declare-fun b!7961103 () Bool)

(declare-fun e!4694932 () Bool)

(declare-fun tp!2371921 () Bool)

(declare-fun tp!2371922 () Bool)

(assert (=> b!7961103 (= e!4694932 (and tp!2371921 tp!2371922))))

(declare-fun b!7961100 () Bool)

(assert (=> b!7961100 (= e!4694932 tp_is_empty!53533)))

(declare-fun b!7961101 () Bool)

(declare-fun tp!2371924 () Bool)

(declare-fun tp!2371920 () Bool)

(assert (=> b!7961101 (= e!4694932 (and tp!2371924 tp!2371920))))

(assert (=> b!7960571 (= tp!2371613 e!4694932)))

(declare-fun b!7961102 () Bool)

(declare-fun tp!2371923 () Bool)

(assert (=> b!7961102 (= e!4694932 tp!2371923)))

(assert (= (and b!7960571 ((_ is ElementMatch!21495) (regTwo!43502 (regOne!43502 baseR!116)))) b!7961100))

(assert (= (and b!7960571 ((_ is Concat!30494) (regTwo!43502 (regOne!43502 baseR!116)))) b!7961101))

(assert (= (and b!7960571 ((_ is Star!21495) (regTwo!43502 (regOne!43502 baseR!116)))) b!7961102))

(assert (= (and b!7960571 ((_ is Union!21495) (regTwo!43502 (regOne!43502 baseR!116)))) b!7961103))

(declare-fun b!7961107 () Bool)

(declare-fun e!4694933 () Bool)

(declare-fun tp!2371926 () Bool)

(declare-fun tp!2371927 () Bool)

(assert (=> b!7961107 (= e!4694933 (and tp!2371926 tp!2371927))))

(declare-fun b!7961104 () Bool)

(assert (=> b!7961104 (= e!4694933 tp_is_empty!53533)))

(declare-fun b!7961105 () Bool)

(declare-fun tp!2371929 () Bool)

(declare-fun tp!2371925 () Bool)

(assert (=> b!7961105 (= e!4694933 (and tp!2371929 tp!2371925))))

(assert (=> b!7960581 (= tp!2371624 e!4694933)))

(declare-fun b!7961106 () Bool)

(declare-fun tp!2371928 () Bool)

(assert (=> b!7961106 (= e!4694933 tp!2371928)))

(assert (= (and b!7960581 ((_ is ElementMatch!21495) (regOne!43503 (reg!21824 r!24602)))) b!7961104))

(assert (= (and b!7960581 ((_ is Concat!30494) (regOne!43503 (reg!21824 r!24602)))) b!7961105))

(assert (= (and b!7960581 ((_ is Star!21495) (regOne!43503 (reg!21824 r!24602)))) b!7961106))

(assert (= (and b!7960581 ((_ is Union!21495) (regOne!43503 (reg!21824 r!24602)))) b!7961107))

(declare-fun b!7961111 () Bool)

(declare-fun e!4694934 () Bool)

(declare-fun tp!2371931 () Bool)

(declare-fun tp!2371932 () Bool)

(assert (=> b!7961111 (= e!4694934 (and tp!2371931 tp!2371932))))

(declare-fun b!7961108 () Bool)

(assert (=> b!7961108 (= e!4694934 tp_is_empty!53533)))

(declare-fun b!7961109 () Bool)

(declare-fun tp!2371934 () Bool)

(declare-fun tp!2371930 () Bool)

(assert (=> b!7961109 (= e!4694934 (and tp!2371934 tp!2371930))))

(assert (=> b!7960581 (= tp!2371625 e!4694934)))

(declare-fun b!7961110 () Bool)

(declare-fun tp!2371933 () Bool)

(assert (=> b!7961110 (= e!4694934 tp!2371933)))

(assert (= (and b!7960581 ((_ is ElementMatch!21495) (regTwo!43503 (reg!21824 r!24602)))) b!7961108))

(assert (= (and b!7960581 ((_ is Concat!30494) (regTwo!43503 (reg!21824 r!24602)))) b!7961109))

(assert (= (and b!7960581 ((_ is Star!21495) (regTwo!43503 (reg!21824 r!24602)))) b!7961110))

(assert (= (and b!7960581 ((_ is Union!21495) (regTwo!43503 (reg!21824 r!24602)))) b!7961111))

(declare-fun b!7961115 () Bool)

(declare-fun e!4694935 () Bool)

(declare-fun tp!2371936 () Bool)

(declare-fun tp!2371937 () Bool)

(assert (=> b!7961115 (= e!4694935 (and tp!2371936 tp!2371937))))

(declare-fun b!7961112 () Bool)

(assert (=> b!7961112 (= e!4694935 tp_is_empty!53533)))

(declare-fun b!7961113 () Bool)

(declare-fun tp!2371939 () Bool)

(declare-fun tp!2371935 () Bool)

(assert (=> b!7961113 (= e!4694935 (and tp!2371939 tp!2371935))))

(assert (=> b!7960572 (= tp!2371616 e!4694935)))

(declare-fun b!7961114 () Bool)

(declare-fun tp!2371938 () Bool)

(assert (=> b!7961114 (= e!4694935 tp!2371938)))

(assert (= (and b!7960572 ((_ is ElementMatch!21495) (reg!21824 (regOne!43502 baseR!116)))) b!7961112))

(assert (= (and b!7960572 ((_ is Concat!30494) (reg!21824 (regOne!43502 baseR!116)))) b!7961113))

(assert (= (and b!7960572 ((_ is Star!21495) (reg!21824 (regOne!43502 baseR!116)))) b!7961114))

(assert (= (and b!7960572 ((_ is Union!21495) (reg!21824 (regOne!43502 baseR!116)))) b!7961115))

(declare-fun b!7961119 () Bool)

(declare-fun e!4694936 () Bool)

(declare-fun tp!2371941 () Bool)

(declare-fun tp!2371942 () Bool)

(assert (=> b!7961119 (= e!4694936 (and tp!2371941 tp!2371942))))

(declare-fun b!7961116 () Bool)

(assert (=> b!7961116 (= e!4694936 tp_is_empty!53533)))

(declare-fun b!7961117 () Bool)

(declare-fun tp!2371944 () Bool)

(declare-fun tp!2371940 () Bool)

(assert (=> b!7961117 (= e!4694936 (and tp!2371944 tp!2371940))))

(assert (=> b!7960579 (= tp!2371627 e!4694936)))

(declare-fun b!7961118 () Bool)

(declare-fun tp!2371943 () Bool)

(assert (=> b!7961118 (= e!4694936 tp!2371943)))

(assert (= (and b!7960579 ((_ is ElementMatch!21495) (regOne!43502 (reg!21824 r!24602)))) b!7961116))

(assert (= (and b!7960579 ((_ is Concat!30494) (regOne!43502 (reg!21824 r!24602)))) b!7961117))

(assert (= (and b!7960579 ((_ is Star!21495) (regOne!43502 (reg!21824 r!24602)))) b!7961118))

(assert (= (and b!7960579 ((_ is Union!21495) (regOne!43502 (reg!21824 r!24602)))) b!7961119))

(declare-fun b!7961123 () Bool)

(declare-fun e!4694937 () Bool)

(declare-fun tp!2371946 () Bool)

(declare-fun tp!2371947 () Bool)

(assert (=> b!7961123 (= e!4694937 (and tp!2371946 tp!2371947))))

(declare-fun b!7961120 () Bool)

(assert (=> b!7961120 (= e!4694937 tp_is_empty!53533)))

(declare-fun b!7961121 () Bool)

(declare-fun tp!2371949 () Bool)

(declare-fun tp!2371945 () Bool)

(assert (=> b!7961121 (= e!4694937 (and tp!2371949 tp!2371945))))

(assert (=> b!7960579 (= tp!2371623 e!4694937)))

(declare-fun b!7961122 () Bool)

(declare-fun tp!2371948 () Bool)

(assert (=> b!7961122 (= e!4694937 tp!2371948)))

(assert (= (and b!7960579 ((_ is ElementMatch!21495) (regTwo!43502 (reg!21824 r!24602)))) b!7961120))

(assert (= (and b!7960579 ((_ is Concat!30494) (regTwo!43502 (reg!21824 r!24602)))) b!7961121))

(assert (= (and b!7960579 ((_ is Star!21495) (regTwo!43502 (reg!21824 r!24602)))) b!7961122))

(assert (= (and b!7960579 ((_ is Union!21495) (regTwo!43502 (reg!21824 r!24602)))) b!7961123))

(declare-fun b!7961127 () Bool)

(declare-fun e!4694938 () Bool)

(declare-fun tp!2371951 () Bool)

(declare-fun tp!2371952 () Bool)

(assert (=> b!7961127 (= e!4694938 (and tp!2371951 tp!2371952))))

(declare-fun b!7961124 () Bool)

(assert (=> b!7961124 (= e!4694938 tp_is_empty!53533)))

(declare-fun b!7961125 () Bool)

(declare-fun tp!2371954 () Bool)

(declare-fun tp!2371950 () Bool)

(assert (=> b!7961125 (= e!4694938 (and tp!2371954 tp!2371950))))

(assert (=> b!7960580 (= tp!2371626 e!4694938)))

(declare-fun b!7961126 () Bool)

(declare-fun tp!2371953 () Bool)

(assert (=> b!7961126 (= e!4694938 tp!2371953)))

(assert (= (and b!7960580 ((_ is ElementMatch!21495) (reg!21824 (reg!21824 r!24602)))) b!7961124))

(assert (= (and b!7960580 ((_ is Concat!30494) (reg!21824 (reg!21824 r!24602)))) b!7961125))

(assert (= (and b!7960580 ((_ is Star!21495) (reg!21824 (reg!21824 r!24602)))) b!7961126))

(assert (= (and b!7960580 ((_ is Union!21495) (reg!21824 (reg!21824 r!24602)))) b!7961127))

(check-sat (not b!7960987) (not bm!738235) (not b!7960834) (not b!7961014) (not b!7961105) (not b!7961083) (not b!7960795) (not b!7960848) (not b!7961119) (not b!7960778) (not d!2377888) (not b!7961115) (not b!7961010) (not b!7960709) (not b!7961018) (not b!7961086) (not b!7960852) (not bm!738211) (not b!7960917) (not bm!738192) (not b!7961023) (not bm!738244) (not b!7960979) (not bm!738225) (not b!7961081) (not b!7961061) (not b!7961091) (not b!7961035) (not bm!738212) (not b!7960708) (not b!7960940) (not bm!738228) (not bm!738187) (not b!7960949) (not d!2377986) (not b!7960994) (not b!7961090) (not b!7961127) (not b!7960759) (not b!7961106) (not b!7960977) (not b!7961099) (not b!7961034) (not b!7960953) (not bm!738200) (not b!7961002) (not b!7960659) (not b!7961117) (not d!2377982) (not b!7960998) (not b!7960736) (not d!2377882) (not b!7961054) (not d!2377922) (not b!7961059) (not b!7960952) (not b!7960780) (not bm!738224) (not bm!738229) (not b!7960974) (not b!7960941) (not b!7960661) (not b!7960675) (not b!7961009) (not b!7961075) (not b!7960698) (not bm!738245) (not d!2377956) (not b!7961110) (not b!7960928) (not b!7960821) (not bm!738209) (not b!7960935) (not b!7960799) (not b!7960798) (not b!7960689) (not b!7960972) (not b!7960865) (not b!7961062) (not b!7961093) (not d!2377906) (not b!7960720) (not d!2377978) (not b!7960970) (not b!7960770) (not b!7960702) (not b!7961030) (not b!7960966) (not b!7960958) (not b!7960944) (not b!7960961) (not b!7960816) (not b!7961005) (not b!7960754) (not b!7960779) (not bm!738215) (not bm!738230) (not b!7961011) (not b!7961053) (not b!7960719) (not b!7961122) (not b!7960995) (not d!2377876) (not b!7960969) (not d!2378028) (not b!7960724) (not b!7960951) (not b!7960676) (not b!7961057) (not b!7960931) (not b!7960818) (not d!2377884) (not b!7961021) (not b!7960986) (not bm!738202) (not b!7960990) (not b!7960688) (not d!2377896) (not b!7961058) (not b!7960775) (not b!7960945) (not bm!738233) tp_is_empty!53533 (not b!7961027) (not b!7961085) (not d!2377976) (not b!7960933) (not b!7960810) (not b!7960831) (not b!7961065) (not b!7961066) (not b!7960985) (not b!7961015) (not b!7961094) (not b!7960867) (not d!2377910) (not b!7961001) (not b!7960975) (not b!7960989) (not d!2378022) (not bm!738218) (not bm!738220) (not b!7960991) (not b!7960997) (not b!7961073) (not b!7960849) (not b!7961019) (not b!7960674) (not d!2377902) (not b!7960937) (not b!7961070) (not b!7960927) (not b!7960695) (not d!2377996) (not b!7961050) (not d!2377994) (not b!7960744) (not bm!738223) (not b!7960692) (not b!7961069) (not bm!738242) (not d!2377898) (not b!7960981) (not d!2377912) (not d!2378020) (not bm!738194) (not b!7961113) (not d!2377904) (not b!7960999) (not d!2377914) (not b!7961111) (not b!7960809) (not bm!738208) (not b!7960877) (not b!7960728) (not b!7960684) (not b!7961026) (not d!2377966) (not b!7960847) (not b!7961042) (not b!7960777) (not bm!738198) (not b!7961013) (not bm!738210) (not b!7960956) (not b!7961022) (not b!7961063) (not d!2377958) (not b!7960954) (not b!7961046) (not b!7960729) (not b!7961033) (not bm!738213) (not b!7961097) (not bm!738207) (not b!7960803) (not b!7960878) (not b!7961045) (not bm!738236) (not b!7960794) (not bm!738204) (not b!7960681) (not b!7960790) (not b!7961107) (not b!7960957) (not b!7961089) (not b!7961118) (not b!7961125) (not b!7961071) (not b!7960859) (not d!2377932) (not b!7961109) (not b!7961067) (not b!7961006) (not b!7960858) (not b!7961007) (not bm!738217) (not b!7960983) (not b!7961077) (not b!7961123) (not b!7961003) (not b!7961114) (not b!7960842) (not b!7960819) (not b!7961037) (not b!7960833) (not b!7960875) (not b!7961041) (not b!7960723) (not b!7960763) (not b!7961126) (not bm!738196) (not d!2377968) (not b!7961017) (not b!7960943) (not d!2377936) (not b!7960866) (not b!7960936) (not b!7961055) (not b!7960792) (not b!7960973) (not d!2377916) (not d!2377940) (not bm!738226) (not b!7960685) (not b!7961074) (not b!7961039) (not bm!738241) (not b!7960948) (not b!7961087) (not b!7961051) (not b!7960939) (not b!7960873) (not bm!738232) (not d!2377972) (not b!7961029) (not b!7961031) (not bm!738222) (not b!7961043) (not b!7960978) (not b!7960669) (not d!2378008) (not b!7960982) (not b!7960707) (not b!7961098) (not d!2378000) (not b!7960699) (not b!7961102) (not b!7960678) (not b!7961095) (not b!7961078) (not b!7960727) (not b!7961047) (not d!2377892) (not b!7961082) (not b!7960965) (not bm!738206) (not d!2377938) (not b!7960735) (not b!7960947) (not b!7960791) (not b!7960964) (not b!7960962) (not b!7960857) (not d!2377918) (not d!2377920) (not b!7961121) (not b!7960960) (not d!2377990) (not b!7960761) (not d!2377928) (not b!7961103) (not b!7960929) (not b!7960732) (not b!7961049) (not bm!738214) (not b!7960703) (not b!7961025) (not b!7960887) (not b!7960694) (not b!7960968) (not b!7960993) (not bm!738227) (not bm!738189) (not b!7961079) (not bm!738191) (not d!2377948) (not b!7960679) (not b!7961101) (not d!2377946) (not b!7960706) (not b!7960808) (not b!7960731) (not b!7961038) (not b!7960932))
(check-sat)
