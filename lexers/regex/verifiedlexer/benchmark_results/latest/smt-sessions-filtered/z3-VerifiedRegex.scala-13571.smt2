; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729896 () Bool)

(assert start!729896)

(declare-fun b!7548292 () Bool)

(declare-fun e!4496615 () Bool)

(declare-fun tp!2195851 () Bool)

(assert (=> b!7548292 (= e!4496615 tp!2195851)))

(declare-fun b!7548293 () Bool)

(declare-fun e!4496614 () Bool)

(declare-fun tp_is_empty!50229 () Bool)

(assert (=> b!7548293 (= e!4496614 tp_is_empty!50229)))

(declare-fun b!7548294 () Bool)

(declare-fun e!4496619 () Bool)

(declare-fun tp!2195856 () Bool)

(assert (=> b!7548294 (= e!4496619 (and tp_is_empty!50229 tp!2195856))))

(declare-fun b!7548295 () Bool)

(declare-fun tp!2195854 () Bool)

(declare-fun tp!2195853 () Bool)

(assert (=> b!7548295 (= e!4496615 (and tp!2195854 tp!2195853))))

(declare-fun b!7548296 () Bool)

(assert (=> b!7548296 (= e!4496615 tp_is_empty!50229)))

(declare-fun b!7548297 () Bool)

(declare-fun res!3025414 () Bool)

(declare-fun e!4496617 () Bool)

(assert (=> b!7548297 (=> res!3025414 e!4496617)))

(declare-datatypes ((C!40200 0))(
  ( (C!40201 (val!30540 Int)) )
))
(declare-datatypes ((Regex!19937 0))(
  ( (ElementMatch!19937 (c!1393288 C!40200)) (Concat!28782 (regOne!40386 Regex!19937) (regTwo!40386 Regex!19937)) (EmptyExpr!19937) (Star!19937 (reg!20266 Regex!19937)) (EmptyLang!19937) (Union!19937 (regOne!40387 Regex!19937) (regTwo!40387 Regex!19937)) )
))
(declare-fun r!24333 () Regex!19937)

(declare-fun lostCause!1729 (Regex!19937) Bool)

(assert (=> b!7548297 (= res!3025414 (lostCause!1729 r!24333))))

(declare-fun e!4496611 () Bool)

(declare-datatypes ((List!72820 0))(
  ( (Nil!72696) (Cons!72696 (h!79144 C!40200) (t!387537 List!72820)) )
))
(declare-fun lt!2645983 () List!72820)

(declare-fun input!7874 () List!72820)

(declare-fun testedP!423 () List!72820)

(declare-fun b!7548298 () Bool)

(declare-fun ++!17453 (List!72820 List!72820) List!72820)

(assert (=> b!7548298 (= e!4496611 (= (++!17453 testedP!423 lt!2645983) input!7874))))

(declare-fun b!7548299 () Bool)

(declare-fun res!3025413 () Bool)

(assert (=> b!7548299 (=> res!3025413 e!4496617)))

(declare-fun lt!2645989 () Int)

(declare-fun size!42433 (List!72820) Int)

(assert (=> b!7548299 (= res!3025413 (>= lt!2645989 (size!42433 input!7874)))))

(declare-fun b!7548300 () Bool)

(declare-fun e!4496612 () Bool)

(declare-fun tp!2195850 () Bool)

(assert (=> b!7548300 (= e!4496612 (and tp_is_empty!50229 tp!2195850))))

(declare-fun b!7548302 () Bool)

(declare-fun e!4496616 () Bool)

(assert (=> b!7548302 (= e!4496616 (not e!4496617))))

(declare-fun res!3025416 () Bool)

(assert (=> b!7548302 (=> res!3025416 e!4496617)))

(declare-fun lt!2645990 () List!72820)

(declare-fun matchR!9539 (Regex!19937 List!72820) Bool)

(assert (=> b!7548302 (= res!3025416 (not (matchR!9539 r!24333 lt!2645990)))))

(declare-fun knownP!30 () List!72820)

(declare-fun getSuffix!3623 (List!72820 List!72820) List!72820)

(assert (=> b!7548302 (= lt!2645990 (getSuffix!3623 knownP!30 testedP!423))))

(declare-fun isPrefix!6143 (List!72820 List!72820) Bool)

(assert (=> b!7548302 (isPrefix!6143 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166812 0))(
  ( (Unit!166813) )
))
(declare-fun lt!2645992 () Unit!166812)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!893 (List!72820 List!72820 List!72820) Unit!166812)

(assert (=> b!7548302 (= lt!2645992 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!893 knownP!30 testedP!423 input!7874))))

(declare-fun b!7548303 () Bool)

(declare-fun res!3025420 () Bool)

(assert (=> b!7548303 (=> res!3025420 e!4496617)))

(declare-fun lt!2645988 () Int)

(assert (=> b!7548303 (= res!3025420 (= lt!2645989 lt!2645988))))

(declare-fun b!7548304 () Bool)

(declare-fun tp!2195857 () Bool)

(assert (=> b!7548304 (= e!4496614 tp!2195857)))

(declare-fun b!7548305 () Bool)

(declare-fun res!3025412 () Bool)

(assert (=> b!7548305 (=> (not res!3025412) (not e!4496616))))

(declare-fun baseR!101 () Regex!19937)

(assert (=> b!7548305 (= res!3025412 (matchR!9539 baseR!101 knownP!30))))

(declare-fun b!7548306 () Bool)

(declare-fun res!3025415 () Bool)

(declare-fun e!4496613 () Bool)

(assert (=> b!7548306 (=> (not res!3025415) (not e!4496613))))

(declare-fun validRegex!10365 (Regex!19937) Bool)

(assert (=> b!7548306 (= res!3025415 (validRegex!10365 r!24333))))

(declare-fun b!7548307 () Bool)

(declare-fun tp!2195848 () Bool)

(declare-fun tp!2195845 () Bool)

(assert (=> b!7548307 (= e!4496615 (and tp!2195848 tp!2195845))))

(declare-fun b!7548308 () Bool)

(declare-fun res!3025421 () Bool)

(assert (=> b!7548308 (=> (not res!3025421) (not e!4496613))))

(assert (=> b!7548308 (= res!3025421 (isPrefix!6143 testedP!423 input!7874))))

(declare-fun b!7548309 () Bool)

(declare-fun tp!2195849 () Bool)

(declare-fun tp!2195846 () Bool)

(assert (=> b!7548309 (= e!4496614 (and tp!2195849 tp!2195846))))

(declare-fun b!7548310 () Bool)

(declare-fun e!4496618 () Bool)

(declare-fun tp!2195852 () Bool)

(assert (=> b!7548310 (= e!4496618 (and tp_is_empty!50229 tp!2195852))))

(declare-fun b!7548311 () Bool)

(declare-fun res!3025410 () Bool)

(assert (=> b!7548311 (=> res!3025410 e!4496611)))

(declare-fun lt!2645993 () List!72820)

(assert (=> b!7548311 (= res!3025410 (not (= (++!17453 (++!17453 testedP!423 lt!2645990) lt!2645993) input!7874)))))

(declare-fun b!7548312 () Bool)

(declare-fun res!3025422 () Bool)

(assert (=> b!7548312 (=> res!3025422 e!4496617)))

(declare-fun derivative!469 (Regex!19937 List!72820) Regex!19937)

(assert (=> b!7548312 (= res!3025422 (not (= (derivative!469 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7548313 () Bool)

(declare-fun tp!2195847 () Bool)

(declare-fun tp!2195855 () Bool)

(assert (=> b!7548313 (= e!4496614 (and tp!2195847 tp!2195855))))

(declare-fun b!7548314 () Bool)

(declare-fun res!3025419 () Bool)

(assert (=> b!7548314 (=> (not res!3025419) (not e!4496613))))

(assert (=> b!7548314 (= res!3025419 (isPrefix!6143 knownP!30 input!7874))))

(declare-fun b!7548315 () Bool)

(assert (=> b!7548315 (= e!4496613 e!4496616)))

(declare-fun res!3025411 () Bool)

(assert (=> b!7548315 (=> (not res!3025411) (not e!4496616))))

(assert (=> b!7548315 (= res!3025411 (>= lt!2645988 lt!2645989))))

(assert (=> b!7548315 (= lt!2645989 (size!42433 testedP!423))))

(assert (=> b!7548315 (= lt!2645988 (size!42433 knownP!30))))

(declare-fun b!7548301 () Bool)

(assert (=> b!7548301 (= e!4496617 e!4496611)))

(declare-fun res!3025418 () Bool)

(assert (=> b!7548301 (=> res!3025418 e!4496611)))

(assert (=> b!7548301 (= res!3025418 (not (= (++!17453 knownP!30 lt!2645993) input!7874)))))

(assert (=> b!7548301 (= lt!2645993 (getSuffix!3623 input!7874 knownP!30))))

(declare-fun lt!2645984 () List!72820)

(declare-fun lt!2645994 () List!72820)

(assert (=> b!7548301 (= lt!2645984 (getSuffix!3623 knownP!30 lt!2645994))))

(assert (=> b!7548301 (isPrefix!6143 lt!2645994 knownP!30)))

(declare-fun lt!2645987 () Unit!166812)

(assert (=> b!7548301 (= lt!2645987 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!893 knownP!30 lt!2645994 input!7874))))

(declare-fun lt!2645986 () C!40200)

(declare-fun derivativeStep!5727 (Regex!19937 C!40200) Regex!19937)

(assert (=> b!7548301 (= (derivative!469 baseR!101 lt!2645994) (derivativeStep!5727 r!24333 lt!2645986))))

(declare-fun lt!2645991 () Unit!166812)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!171 (Regex!19937 Regex!19937 List!72820 C!40200) Unit!166812)

(assert (=> b!7548301 (= lt!2645991 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!171 baseR!101 r!24333 testedP!423 lt!2645986))))

(assert (=> b!7548301 (isPrefix!6143 lt!2645994 input!7874)))

(declare-fun lt!2645985 () Unit!166812)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1204 (List!72820 List!72820) Unit!166812)

(assert (=> b!7548301 (= lt!2645985 (lemmaAddHeadSuffixToPrefixStillPrefix!1204 testedP!423 input!7874))))

(assert (=> b!7548301 (= lt!2645994 (++!17453 testedP!423 (Cons!72696 lt!2645986 Nil!72696)))))

(declare-fun head!15527 (List!72820) C!40200)

(assert (=> b!7548301 (= lt!2645986 (head!15527 lt!2645983))))

(assert (=> b!7548301 (= lt!2645983 (getSuffix!3623 input!7874 testedP!423))))

(declare-fun res!3025417 () Bool)

(assert (=> start!729896 (=> (not res!3025417) (not e!4496613))))

(assert (=> start!729896 (= res!3025417 (validRegex!10365 baseR!101))))

(assert (=> start!729896 e!4496613))

(assert (=> start!729896 e!4496614))

(assert (=> start!729896 e!4496612))

(assert (=> start!729896 e!4496618))

(assert (=> start!729896 e!4496619))

(assert (=> start!729896 e!4496615))

(assert (= (and start!729896 res!3025417) b!7548306))

(assert (= (and b!7548306 res!3025415) b!7548308))

(assert (= (and b!7548308 res!3025421) b!7548314))

(assert (= (and b!7548314 res!3025419) b!7548315))

(assert (= (and b!7548315 res!3025411) b!7548305))

(assert (= (and b!7548305 res!3025412) b!7548302))

(assert (= (and b!7548302 (not res!3025416)) b!7548312))

(assert (= (and b!7548312 (not res!3025422)) b!7548297))

(assert (= (and b!7548297 (not res!3025414)) b!7548303))

(assert (= (and b!7548303 (not res!3025420)) b!7548299))

(assert (= (and b!7548299 (not res!3025413)) b!7548301))

(assert (= (and b!7548301 (not res!3025418)) b!7548311))

(assert (= (and b!7548311 (not res!3025410)) b!7548298))

(get-info :version)

(assert (= (and start!729896 ((_ is ElementMatch!19937) baseR!101)) b!7548293))

(assert (= (and start!729896 ((_ is Concat!28782) baseR!101)) b!7548309))

(assert (= (and start!729896 ((_ is Star!19937) baseR!101)) b!7548304))

(assert (= (and start!729896 ((_ is Union!19937) baseR!101)) b!7548313))

(assert (= (and start!729896 ((_ is Cons!72696) input!7874)) b!7548300))

(assert (= (and start!729896 ((_ is Cons!72696) knownP!30)) b!7548310))

(assert (= (and start!729896 ((_ is Cons!72696) testedP!423)) b!7548294))

(assert (= (and start!729896 ((_ is ElementMatch!19937) r!24333)) b!7548296))

(assert (= (and start!729896 ((_ is Concat!28782) r!24333)) b!7548295))

(assert (= (and start!729896 ((_ is Star!19937) r!24333)) b!7548292))

(assert (= (and start!729896 ((_ is Union!19937) r!24333)) b!7548307))

(declare-fun m!8115878 () Bool)

(assert (=> b!7548308 m!8115878))

(declare-fun m!8115880 () Bool)

(assert (=> b!7548298 m!8115880))

(declare-fun m!8115882 () Bool)

(assert (=> b!7548301 m!8115882))

(declare-fun m!8115884 () Bool)

(assert (=> b!7548301 m!8115884))

(declare-fun m!8115886 () Bool)

(assert (=> b!7548301 m!8115886))

(declare-fun m!8115888 () Bool)

(assert (=> b!7548301 m!8115888))

(declare-fun m!8115890 () Bool)

(assert (=> b!7548301 m!8115890))

(declare-fun m!8115892 () Bool)

(assert (=> b!7548301 m!8115892))

(declare-fun m!8115894 () Bool)

(assert (=> b!7548301 m!8115894))

(declare-fun m!8115896 () Bool)

(assert (=> b!7548301 m!8115896))

(declare-fun m!8115898 () Bool)

(assert (=> b!7548301 m!8115898))

(declare-fun m!8115900 () Bool)

(assert (=> b!7548301 m!8115900))

(declare-fun m!8115902 () Bool)

(assert (=> b!7548301 m!8115902))

(declare-fun m!8115904 () Bool)

(assert (=> b!7548301 m!8115904))

(declare-fun m!8115906 () Bool)

(assert (=> b!7548301 m!8115906))

(declare-fun m!8115908 () Bool)

(assert (=> b!7548311 m!8115908))

(assert (=> b!7548311 m!8115908))

(declare-fun m!8115910 () Bool)

(assert (=> b!7548311 m!8115910))

(declare-fun m!8115912 () Bool)

(assert (=> start!729896 m!8115912))

(declare-fun m!8115914 () Bool)

(assert (=> b!7548306 m!8115914))

(declare-fun m!8115916 () Bool)

(assert (=> b!7548305 m!8115916))

(declare-fun m!8115918 () Bool)

(assert (=> b!7548302 m!8115918))

(declare-fun m!8115920 () Bool)

(assert (=> b!7548302 m!8115920))

(declare-fun m!8115922 () Bool)

(assert (=> b!7548302 m!8115922))

(declare-fun m!8115924 () Bool)

(assert (=> b!7548302 m!8115924))

(declare-fun m!8115926 () Bool)

(assert (=> b!7548299 m!8115926))

(declare-fun m!8115928 () Bool)

(assert (=> b!7548297 m!8115928))

(declare-fun m!8115930 () Bool)

(assert (=> b!7548315 m!8115930))

(declare-fun m!8115932 () Bool)

(assert (=> b!7548315 m!8115932))

(declare-fun m!8115934 () Bool)

(assert (=> b!7548314 m!8115934))

(declare-fun m!8115936 () Bool)

(assert (=> b!7548312 m!8115936))

(check-sat tp_is_empty!50229 (not b!7548297) (not b!7548315) (not b!7548306) (not b!7548298) (not b!7548314) (not b!7548313) (not b!7548312) (not start!729896) (not b!7548292) (not b!7548294) (not b!7548309) (not b!7548305) (not b!7548307) (not b!7548311) (not b!7548299) (not b!7548310) (not b!7548300) (not b!7548295) (not b!7548301) (not b!7548302) (not b!7548308) (not b!7548304))
(check-sat)
(get-model)

(declare-fun b!7548334 () Bool)

(declare-fun e!4496630 () Bool)

(declare-fun tail!15073 (List!72820) List!72820)

(assert (=> b!7548334 (= e!4496630 (isPrefix!6143 (tail!15073 testedP!423) (tail!15073 input!7874)))))

(declare-fun d!2312450 () Bool)

(declare-fun e!4496631 () Bool)

(assert (=> d!2312450 e!4496631))

(declare-fun res!3025433 () Bool)

(assert (=> d!2312450 (=> res!3025433 e!4496631)))

(declare-fun lt!2646001 () Bool)

(assert (=> d!2312450 (= res!3025433 (not lt!2646001))))

(declare-fun e!4496632 () Bool)

(assert (=> d!2312450 (= lt!2646001 e!4496632)))

(declare-fun res!3025434 () Bool)

(assert (=> d!2312450 (=> res!3025434 e!4496632)))

(assert (=> d!2312450 (= res!3025434 ((_ is Nil!72696) testedP!423))))

(assert (=> d!2312450 (= (isPrefix!6143 testedP!423 input!7874) lt!2646001)))

(declare-fun b!7548333 () Bool)

(declare-fun res!3025431 () Bool)

(assert (=> b!7548333 (=> (not res!3025431) (not e!4496630))))

(assert (=> b!7548333 (= res!3025431 (= (head!15527 testedP!423) (head!15527 input!7874)))))

(declare-fun b!7548332 () Bool)

(assert (=> b!7548332 (= e!4496632 e!4496630)))

(declare-fun res!3025432 () Bool)

(assert (=> b!7548332 (=> (not res!3025432) (not e!4496630))))

(assert (=> b!7548332 (= res!3025432 (not ((_ is Nil!72696) input!7874)))))

(declare-fun b!7548335 () Bool)

(assert (=> b!7548335 (= e!4496631 (>= (size!42433 input!7874) (size!42433 testedP!423)))))

(assert (= (and d!2312450 (not res!3025434)) b!7548332))

(assert (= (and b!7548332 res!3025432) b!7548333))

(assert (= (and b!7548333 res!3025431) b!7548334))

(assert (= (and d!2312450 (not res!3025433)) b!7548335))

(declare-fun m!8115942 () Bool)

(assert (=> b!7548334 m!8115942))

(declare-fun m!8115944 () Bool)

(assert (=> b!7548334 m!8115944))

(assert (=> b!7548334 m!8115942))

(assert (=> b!7548334 m!8115944))

(declare-fun m!8115946 () Bool)

(assert (=> b!7548334 m!8115946))

(declare-fun m!8115948 () Bool)

(assert (=> b!7548333 m!8115948))

(declare-fun m!8115950 () Bool)

(assert (=> b!7548333 m!8115950))

(assert (=> b!7548335 m!8115926))

(assert (=> b!7548335 m!8115930))

(assert (=> b!7548308 d!2312450))

(declare-fun d!2312456 () Bool)

(declare-fun lostCauseFct!450 (Regex!19937) Bool)

(assert (=> d!2312456 (= (lostCause!1729 r!24333) (lostCauseFct!450 r!24333))))

(declare-fun bs!1940143 () Bool)

(assert (= bs!1940143 d!2312456))

(declare-fun m!8115952 () Bool)

(assert (=> bs!1940143 m!8115952))

(assert (=> b!7548297 d!2312456))

(declare-fun b!7548345 () Bool)

(declare-fun e!4496637 () List!72820)

(assert (=> b!7548345 (= e!4496637 (Cons!72696 (h!79144 testedP!423) (++!17453 (t!387537 testedP!423) lt!2645983)))))

(declare-fun d!2312458 () Bool)

(declare-fun e!4496638 () Bool)

(assert (=> d!2312458 e!4496638))

(declare-fun res!3025439 () Bool)

(assert (=> d!2312458 (=> (not res!3025439) (not e!4496638))))

(declare-fun lt!2646004 () List!72820)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15383 (List!72820) (InoxSet C!40200))

(assert (=> d!2312458 (= res!3025439 (= (content!15383 lt!2646004) ((_ map or) (content!15383 testedP!423) (content!15383 lt!2645983))))))

(assert (=> d!2312458 (= lt!2646004 e!4496637)))

(declare-fun c!1393295 () Bool)

(assert (=> d!2312458 (= c!1393295 ((_ is Nil!72696) testedP!423))))

(assert (=> d!2312458 (= (++!17453 testedP!423 lt!2645983) lt!2646004)))

(declare-fun b!7548347 () Bool)

(assert (=> b!7548347 (= e!4496638 (or (not (= lt!2645983 Nil!72696)) (= lt!2646004 testedP!423)))))

(declare-fun b!7548344 () Bool)

(assert (=> b!7548344 (= e!4496637 lt!2645983)))

(declare-fun b!7548346 () Bool)

(declare-fun res!3025440 () Bool)

(assert (=> b!7548346 (=> (not res!3025440) (not e!4496638))))

(assert (=> b!7548346 (= res!3025440 (= (size!42433 lt!2646004) (+ (size!42433 testedP!423) (size!42433 lt!2645983))))))

(assert (= (and d!2312458 c!1393295) b!7548344))

(assert (= (and d!2312458 (not c!1393295)) b!7548345))

(assert (= (and d!2312458 res!3025439) b!7548346))

(assert (= (and b!7548346 res!3025440) b!7548347))

(declare-fun m!8115954 () Bool)

(assert (=> b!7548345 m!8115954))

(declare-fun m!8115956 () Bool)

(assert (=> d!2312458 m!8115956))

(declare-fun m!8115958 () Bool)

(assert (=> d!2312458 m!8115958))

(declare-fun m!8115960 () Bool)

(assert (=> d!2312458 m!8115960))

(declare-fun m!8115962 () Bool)

(assert (=> b!7548346 m!8115962))

(assert (=> b!7548346 m!8115930))

(declare-fun m!8115964 () Bool)

(assert (=> b!7548346 m!8115964))

(assert (=> b!7548298 d!2312458))

(declare-fun d!2312460 () Bool)

(declare-fun lt!2646009 () Int)

(assert (=> d!2312460 (>= lt!2646009 0)))

(declare-fun e!4496647 () Int)

(assert (=> d!2312460 (= lt!2646009 e!4496647)))

(declare-fun c!1393304 () Bool)

(assert (=> d!2312460 (= c!1393304 ((_ is Nil!72696) input!7874))))

(assert (=> d!2312460 (= (size!42433 input!7874) lt!2646009)))

(declare-fun b!7548364 () Bool)

(assert (=> b!7548364 (= e!4496647 0)))

(declare-fun b!7548365 () Bool)

(assert (=> b!7548365 (= e!4496647 (+ 1 (size!42433 (t!387537 input!7874))))))

(assert (= (and d!2312460 c!1393304) b!7548364))

(assert (= (and d!2312460 (not c!1393304)) b!7548365))

(declare-fun m!8115966 () Bool)

(assert (=> b!7548365 m!8115966))

(assert (=> b!7548299 d!2312460))

(declare-fun d!2312462 () Bool)

(declare-fun lt!2646012 () Regex!19937)

(assert (=> d!2312462 (validRegex!10365 lt!2646012)))

(declare-fun e!4496658 () Regex!19937)

(assert (=> d!2312462 (= lt!2646012 e!4496658)))

(declare-fun c!1393307 () Bool)

(assert (=> d!2312462 (= c!1393307 ((_ is Cons!72696) testedP!423))))

(assert (=> d!2312462 (validRegex!10365 baseR!101)))

(assert (=> d!2312462 (= (derivative!469 baseR!101 testedP!423) lt!2646012)))

(declare-fun b!7548386 () Bool)

(assert (=> b!7548386 (= e!4496658 (derivative!469 (derivativeStep!5727 baseR!101 (h!79144 testedP!423)) (t!387537 testedP!423)))))

(declare-fun b!7548387 () Bool)

(assert (=> b!7548387 (= e!4496658 baseR!101)))

(assert (= (and d!2312462 c!1393307) b!7548386))

(assert (= (and d!2312462 (not c!1393307)) b!7548387))

(declare-fun m!8115968 () Bool)

(assert (=> d!2312462 m!8115968))

(assert (=> d!2312462 m!8115912))

(declare-fun m!8115970 () Bool)

(assert (=> b!7548386 m!8115970))

(assert (=> b!7548386 m!8115970))

(declare-fun m!8115972 () Bool)

(assert (=> b!7548386 m!8115972))

(assert (=> b!7548312 d!2312462))

(declare-fun d!2312464 () Bool)

(assert (=> d!2312464 (isPrefix!6143 lt!2645994 knownP!30)))

(declare-fun lt!2646015 () Unit!166812)

(declare-fun choose!58411 (List!72820 List!72820 List!72820) Unit!166812)

(assert (=> d!2312464 (= lt!2646015 (choose!58411 knownP!30 lt!2645994 input!7874))))

(assert (=> d!2312464 (isPrefix!6143 knownP!30 input!7874)))

(assert (=> d!2312464 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!893 knownP!30 lt!2645994 input!7874) lt!2646015)))

(declare-fun bs!1940144 () Bool)

(assert (= bs!1940144 d!2312464))

(assert (=> bs!1940144 m!8115894))

(declare-fun m!8115974 () Bool)

(assert (=> bs!1940144 m!8115974))

(assert (=> bs!1940144 m!8115934))

(assert (=> b!7548301 d!2312464))

(declare-fun b!7548389 () Bool)

(declare-fun e!4496659 () List!72820)

(assert (=> b!7548389 (= e!4496659 (Cons!72696 (h!79144 knownP!30) (++!17453 (t!387537 knownP!30) lt!2645993)))))

(declare-fun d!2312466 () Bool)

(declare-fun e!4496660 () Bool)

(assert (=> d!2312466 e!4496660))

(declare-fun res!3025457 () Bool)

(assert (=> d!2312466 (=> (not res!3025457) (not e!4496660))))

(declare-fun lt!2646016 () List!72820)

(assert (=> d!2312466 (= res!3025457 (= (content!15383 lt!2646016) ((_ map or) (content!15383 knownP!30) (content!15383 lt!2645993))))))

(assert (=> d!2312466 (= lt!2646016 e!4496659)))

(declare-fun c!1393308 () Bool)

(assert (=> d!2312466 (= c!1393308 ((_ is Nil!72696) knownP!30))))

(assert (=> d!2312466 (= (++!17453 knownP!30 lt!2645993) lt!2646016)))

(declare-fun b!7548391 () Bool)

(assert (=> b!7548391 (= e!4496660 (or (not (= lt!2645993 Nil!72696)) (= lt!2646016 knownP!30)))))

(declare-fun b!7548388 () Bool)

(assert (=> b!7548388 (= e!4496659 lt!2645993)))

(declare-fun b!7548390 () Bool)

(declare-fun res!3025458 () Bool)

(assert (=> b!7548390 (=> (not res!3025458) (not e!4496660))))

(assert (=> b!7548390 (= res!3025458 (= (size!42433 lt!2646016) (+ (size!42433 knownP!30) (size!42433 lt!2645993))))))

(assert (= (and d!2312466 c!1393308) b!7548388))

(assert (= (and d!2312466 (not c!1393308)) b!7548389))

(assert (= (and d!2312466 res!3025457) b!7548390))

(assert (= (and b!7548390 res!3025458) b!7548391))

(declare-fun m!8115976 () Bool)

(assert (=> b!7548389 m!8115976))

(declare-fun m!8115978 () Bool)

(assert (=> d!2312466 m!8115978))

(declare-fun m!8115980 () Bool)

(assert (=> d!2312466 m!8115980))

(declare-fun m!8115982 () Bool)

(assert (=> d!2312466 m!8115982))

(declare-fun m!8115984 () Bool)

(assert (=> b!7548390 m!8115984))

(assert (=> b!7548390 m!8115932))

(declare-fun m!8115986 () Bool)

(assert (=> b!7548390 m!8115986))

(assert (=> b!7548301 d!2312466))

(declare-fun b!7548408 () Bool)

(declare-fun e!4496668 () Bool)

(assert (=> b!7548408 (= e!4496668 (isPrefix!6143 (tail!15073 lt!2645994) (tail!15073 input!7874)))))

(declare-fun d!2312468 () Bool)

(declare-fun e!4496669 () Bool)

(assert (=> d!2312468 e!4496669))

(declare-fun res!3025469 () Bool)

(assert (=> d!2312468 (=> res!3025469 e!4496669)))

(declare-fun lt!2646018 () Bool)

(assert (=> d!2312468 (= res!3025469 (not lt!2646018))))

(declare-fun e!4496670 () Bool)

(assert (=> d!2312468 (= lt!2646018 e!4496670)))

(declare-fun res!3025470 () Bool)

(assert (=> d!2312468 (=> res!3025470 e!4496670)))

(assert (=> d!2312468 (= res!3025470 ((_ is Nil!72696) lt!2645994))))

(assert (=> d!2312468 (= (isPrefix!6143 lt!2645994 input!7874) lt!2646018)))

(declare-fun b!7548407 () Bool)

(declare-fun res!3025467 () Bool)

(assert (=> b!7548407 (=> (not res!3025467) (not e!4496668))))

(assert (=> b!7548407 (= res!3025467 (= (head!15527 lt!2645994) (head!15527 input!7874)))))

(declare-fun b!7548406 () Bool)

(assert (=> b!7548406 (= e!4496670 e!4496668)))

(declare-fun res!3025468 () Bool)

(assert (=> b!7548406 (=> (not res!3025468) (not e!4496668))))

(assert (=> b!7548406 (= res!3025468 (not ((_ is Nil!72696) input!7874)))))

(declare-fun b!7548409 () Bool)

(assert (=> b!7548409 (= e!4496669 (>= (size!42433 input!7874) (size!42433 lt!2645994)))))

(assert (= (and d!2312468 (not res!3025470)) b!7548406))

(assert (= (and b!7548406 res!3025468) b!7548407))

(assert (= (and b!7548407 res!3025467) b!7548408))

(assert (= (and d!2312468 (not res!3025469)) b!7548409))

(declare-fun m!8115996 () Bool)

(assert (=> b!7548408 m!8115996))

(assert (=> b!7548408 m!8115944))

(assert (=> b!7548408 m!8115996))

(assert (=> b!7548408 m!8115944))

(declare-fun m!8116000 () Bool)

(assert (=> b!7548408 m!8116000))

(declare-fun m!8116002 () Bool)

(assert (=> b!7548407 m!8116002))

(assert (=> b!7548407 m!8115950))

(assert (=> b!7548409 m!8115926))

(declare-fun m!8116006 () Bool)

(assert (=> b!7548409 m!8116006))

(assert (=> b!7548301 d!2312468))

(declare-fun d!2312470 () Bool)

(declare-fun lt!2646024 () List!72820)

(assert (=> d!2312470 (= (++!17453 testedP!423 lt!2646024) input!7874)))

(declare-fun e!4496676 () List!72820)

(assert (=> d!2312470 (= lt!2646024 e!4496676)))

(declare-fun c!1393317 () Bool)

(assert (=> d!2312470 (= c!1393317 ((_ is Cons!72696) testedP!423))))

(assert (=> d!2312470 (>= (size!42433 input!7874) (size!42433 testedP!423))))

(assert (=> d!2312470 (= (getSuffix!3623 input!7874 testedP!423) lt!2646024)))

(declare-fun b!7548420 () Bool)

(assert (=> b!7548420 (= e!4496676 (getSuffix!3623 (tail!15073 input!7874) (t!387537 testedP!423)))))

(declare-fun b!7548421 () Bool)

(assert (=> b!7548421 (= e!4496676 input!7874)))

(assert (= (and d!2312470 c!1393317) b!7548420))

(assert (= (and d!2312470 (not c!1393317)) b!7548421))

(declare-fun m!8116016 () Bool)

(assert (=> d!2312470 m!8116016))

(assert (=> d!2312470 m!8115926))

(assert (=> d!2312470 m!8115930))

(assert (=> b!7548420 m!8115944))

(assert (=> b!7548420 m!8115944))

(declare-fun m!8116018 () Bool)

(assert (=> b!7548420 m!8116018))

(assert (=> b!7548301 d!2312470))

(declare-fun d!2312476 () Bool)

(assert (=> d!2312476 (= (derivative!469 baseR!101 (++!17453 testedP!423 (Cons!72696 lt!2645986 Nil!72696))) (derivativeStep!5727 r!24333 lt!2645986))))

(declare-fun lt!2646030 () Unit!166812)

(declare-fun choose!58412 (Regex!19937 Regex!19937 List!72820 C!40200) Unit!166812)

(assert (=> d!2312476 (= lt!2646030 (choose!58412 baseR!101 r!24333 testedP!423 lt!2645986))))

(assert (=> d!2312476 (validRegex!10365 baseR!101)))

(assert (=> d!2312476 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!171 baseR!101 r!24333 testedP!423 lt!2645986) lt!2646030)))

(declare-fun bs!1940145 () Bool)

(assert (= bs!1940145 d!2312476))

(assert (=> bs!1940145 m!8115912))

(assert (=> bs!1940145 m!8115904))

(declare-fun m!8116028 () Bool)

(assert (=> bs!1940145 m!8116028))

(assert (=> bs!1940145 m!8115904))

(declare-fun m!8116030 () Bool)

(assert (=> bs!1940145 m!8116030))

(assert (=> bs!1940145 m!8115896))

(assert (=> b!7548301 d!2312476))

(declare-fun b!7548435 () Bool)

(declare-fun e!4496686 () List!72820)

(assert (=> b!7548435 (= e!4496686 (Cons!72696 (h!79144 testedP!423) (++!17453 (t!387537 testedP!423) (Cons!72696 lt!2645986 Nil!72696))))))

(declare-fun d!2312480 () Bool)

(declare-fun e!4496687 () Bool)

(assert (=> d!2312480 e!4496687))

(declare-fun res!3025483 () Bool)

(assert (=> d!2312480 (=> (not res!3025483) (not e!4496687))))

(declare-fun lt!2646031 () List!72820)

(assert (=> d!2312480 (= res!3025483 (= (content!15383 lt!2646031) ((_ map or) (content!15383 testedP!423) (content!15383 (Cons!72696 lt!2645986 Nil!72696)))))))

(assert (=> d!2312480 (= lt!2646031 e!4496686)))

(declare-fun c!1393319 () Bool)

(assert (=> d!2312480 (= c!1393319 ((_ is Nil!72696) testedP!423))))

(assert (=> d!2312480 (= (++!17453 testedP!423 (Cons!72696 lt!2645986 Nil!72696)) lt!2646031)))

(declare-fun b!7548437 () Bool)

(assert (=> b!7548437 (= e!4496687 (or (not (= (Cons!72696 lt!2645986 Nil!72696) Nil!72696)) (= lt!2646031 testedP!423)))))

(declare-fun b!7548434 () Bool)

(assert (=> b!7548434 (= e!4496686 (Cons!72696 lt!2645986 Nil!72696))))

(declare-fun b!7548436 () Bool)

(declare-fun res!3025484 () Bool)

(assert (=> b!7548436 (=> (not res!3025484) (not e!4496687))))

(assert (=> b!7548436 (= res!3025484 (= (size!42433 lt!2646031) (+ (size!42433 testedP!423) (size!42433 (Cons!72696 lt!2645986 Nil!72696)))))))

(assert (= (and d!2312480 c!1393319) b!7548434))

(assert (= (and d!2312480 (not c!1393319)) b!7548435))

(assert (= (and d!2312480 res!3025483) b!7548436))

(assert (= (and b!7548436 res!3025484) b!7548437))

(declare-fun m!8116032 () Bool)

(assert (=> b!7548435 m!8116032))

(declare-fun m!8116034 () Bool)

(assert (=> d!2312480 m!8116034))

(assert (=> d!2312480 m!8115958))

(declare-fun m!8116036 () Bool)

(assert (=> d!2312480 m!8116036))

(declare-fun m!8116038 () Bool)

(assert (=> b!7548436 m!8116038))

(assert (=> b!7548436 m!8115930))

(declare-fun m!8116040 () Bool)

(assert (=> b!7548436 m!8116040))

(assert (=> b!7548301 d!2312480))

(declare-fun d!2312482 () Bool)

(declare-fun lt!2646034 () List!72820)

(assert (=> d!2312482 (= (++!17453 knownP!30 lt!2646034) input!7874)))

(declare-fun e!4496688 () List!72820)

(assert (=> d!2312482 (= lt!2646034 e!4496688)))

(declare-fun c!1393320 () Bool)

(assert (=> d!2312482 (= c!1393320 ((_ is Cons!72696) knownP!30))))

(assert (=> d!2312482 (>= (size!42433 input!7874) (size!42433 knownP!30))))

(assert (=> d!2312482 (= (getSuffix!3623 input!7874 knownP!30) lt!2646034)))

(declare-fun b!7548438 () Bool)

(assert (=> b!7548438 (= e!4496688 (getSuffix!3623 (tail!15073 input!7874) (t!387537 knownP!30)))))

(declare-fun b!7548439 () Bool)

(assert (=> b!7548439 (= e!4496688 input!7874)))

(assert (= (and d!2312482 c!1393320) b!7548438))

(assert (= (and d!2312482 (not c!1393320)) b!7548439))

(declare-fun m!8116042 () Bool)

(assert (=> d!2312482 m!8116042))

(assert (=> d!2312482 m!8115926))

(assert (=> d!2312482 m!8115932))

(assert (=> b!7548438 m!8115944))

(assert (=> b!7548438 m!8115944))

(declare-fun m!8116044 () Bool)

(assert (=> b!7548438 m!8116044))

(assert (=> b!7548301 d!2312482))

(declare-fun d!2312484 () Bool)

(declare-fun lt!2646036 () Regex!19937)

(assert (=> d!2312484 (validRegex!10365 lt!2646036)))

(declare-fun e!4496689 () Regex!19937)

(assert (=> d!2312484 (= lt!2646036 e!4496689)))

(declare-fun c!1393321 () Bool)

(assert (=> d!2312484 (= c!1393321 ((_ is Cons!72696) lt!2645994))))

(assert (=> d!2312484 (validRegex!10365 baseR!101)))

(assert (=> d!2312484 (= (derivative!469 baseR!101 lt!2645994) lt!2646036)))

(declare-fun b!7548440 () Bool)

(assert (=> b!7548440 (= e!4496689 (derivative!469 (derivativeStep!5727 baseR!101 (h!79144 lt!2645994)) (t!387537 lt!2645994)))))

(declare-fun b!7548441 () Bool)

(assert (=> b!7548441 (= e!4496689 baseR!101)))

(assert (= (and d!2312484 c!1393321) b!7548440))

(assert (= (and d!2312484 (not c!1393321)) b!7548441))

(declare-fun m!8116048 () Bool)

(assert (=> d!2312484 m!8116048))

(assert (=> d!2312484 m!8115912))

(declare-fun m!8116050 () Bool)

(assert (=> b!7548440 m!8116050))

(assert (=> b!7548440 m!8116050))

(declare-fun m!8116052 () Bool)

(assert (=> b!7548440 m!8116052))

(assert (=> b!7548301 d!2312484))

(declare-fun b!7548444 () Bool)

(declare-fun e!4496690 () Bool)

(assert (=> b!7548444 (= e!4496690 (isPrefix!6143 (tail!15073 lt!2645994) (tail!15073 knownP!30)))))

(declare-fun d!2312488 () Bool)

(declare-fun e!4496691 () Bool)

(assert (=> d!2312488 e!4496691))

(declare-fun res!3025487 () Bool)

(assert (=> d!2312488 (=> res!3025487 e!4496691)))

(declare-fun lt!2646037 () Bool)

(assert (=> d!2312488 (= res!3025487 (not lt!2646037))))

(declare-fun e!4496692 () Bool)

(assert (=> d!2312488 (= lt!2646037 e!4496692)))

(declare-fun res!3025488 () Bool)

(assert (=> d!2312488 (=> res!3025488 e!4496692)))

(assert (=> d!2312488 (= res!3025488 ((_ is Nil!72696) lt!2645994))))

(assert (=> d!2312488 (= (isPrefix!6143 lt!2645994 knownP!30) lt!2646037)))

(declare-fun b!7548443 () Bool)

(declare-fun res!3025485 () Bool)

(assert (=> b!7548443 (=> (not res!3025485) (not e!4496690))))

(assert (=> b!7548443 (= res!3025485 (= (head!15527 lt!2645994) (head!15527 knownP!30)))))

(declare-fun b!7548442 () Bool)

(assert (=> b!7548442 (= e!4496692 e!4496690)))

(declare-fun res!3025486 () Bool)

(assert (=> b!7548442 (=> (not res!3025486) (not e!4496690))))

(assert (=> b!7548442 (= res!3025486 (not ((_ is Nil!72696) knownP!30)))))

(declare-fun b!7548445 () Bool)

(assert (=> b!7548445 (= e!4496691 (>= (size!42433 knownP!30) (size!42433 lt!2645994)))))

(assert (= (and d!2312488 (not res!3025488)) b!7548442))

(assert (= (and b!7548442 res!3025486) b!7548443))

(assert (= (and b!7548443 res!3025485) b!7548444))

(assert (= (and d!2312488 (not res!3025487)) b!7548445))

(assert (=> b!7548444 m!8115996))

(declare-fun m!8116054 () Bool)

(assert (=> b!7548444 m!8116054))

(assert (=> b!7548444 m!8115996))

(assert (=> b!7548444 m!8116054))

(declare-fun m!8116056 () Bool)

(assert (=> b!7548444 m!8116056))

(assert (=> b!7548443 m!8116002))

(declare-fun m!8116058 () Bool)

(assert (=> b!7548443 m!8116058))

(assert (=> b!7548445 m!8115932))

(assert (=> b!7548445 m!8116006))

(assert (=> b!7548301 d!2312488))

(declare-fun d!2312490 () Bool)

(assert (=> d!2312490 (= (head!15527 lt!2645983) (h!79144 lt!2645983))))

(assert (=> b!7548301 d!2312490))

(declare-fun d!2312492 () Bool)

(declare-fun lt!2646038 () List!72820)

(assert (=> d!2312492 (= (++!17453 lt!2645994 lt!2646038) knownP!30)))

(declare-fun e!4496693 () List!72820)

(assert (=> d!2312492 (= lt!2646038 e!4496693)))

(declare-fun c!1393322 () Bool)

(assert (=> d!2312492 (= c!1393322 ((_ is Cons!72696) lt!2645994))))

(assert (=> d!2312492 (>= (size!42433 knownP!30) (size!42433 lt!2645994))))

(assert (=> d!2312492 (= (getSuffix!3623 knownP!30 lt!2645994) lt!2646038)))

(declare-fun b!7548446 () Bool)

(assert (=> b!7548446 (= e!4496693 (getSuffix!3623 (tail!15073 knownP!30) (t!387537 lt!2645994)))))

(declare-fun b!7548447 () Bool)

(assert (=> b!7548447 (= e!4496693 knownP!30)))

(assert (= (and d!2312492 c!1393322) b!7548446))

(assert (= (and d!2312492 (not c!1393322)) b!7548447))

(declare-fun m!8116060 () Bool)

(assert (=> d!2312492 m!8116060))

(assert (=> d!2312492 m!8115932))

(assert (=> d!2312492 m!8116006))

(assert (=> b!7548446 m!8116054))

(assert (=> b!7548446 m!8116054))

(declare-fun m!8116062 () Bool)

(assert (=> b!7548446 m!8116062))

(assert (=> b!7548301 d!2312492))

(declare-fun d!2312494 () Bool)

(assert (=> d!2312494 (isPrefix!6143 (++!17453 testedP!423 (Cons!72696 (head!15527 (getSuffix!3623 input!7874 testedP!423)) Nil!72696)) input!7874)))

(declare-fun lt!2646041 () Unit!166812)

(declare-fun choose!58414 (List!72820 List!72820) Unit!166812)

(assert (=> d!2312494 (= lt!2646041 (choose!58414 testedP!423 input!7874))))

(assert (=> d!2312494 (isPrefix!6143 testedP!423 input!7874)))

(assert (=> d!2312494 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1204 testedP!423 input!7874) lt!2646041)))

(declare-fun bs!1940147 () Bool)

(assert (= bs!1940147 d!2312494))

(assert (=> bs!1940147 m!8115878))

(assert (=> bs!1940147 m!8115892))

(declare-fun m!8116064 () Bool)

(assert (=> bs!1940147 m!8116064))

(declare-fun m!8116066 () Bool)

(assert (=> bs!1940147 m!8116066))

(assert (=> bs!1940147 m!8116066))

(declare-fun m!8116068 () Bool)

(assert (=> bs!1940147 m!8116068))

(assert (=> bs!1940147 m!8115892))

(declare-fun m!8116070 () Bool)

(assert (=> bs!1940147 m!8116070))

(assert (=> b!7548301 d!2312494))

(declare-fun b!7548534 () Bool)

(declare-fun c!1393352 () Bool)

(assert (=> b!7548534 (= c!1393352 ((_ is Union!19937) r!24333))))

(declare-fun e!4496749 () Regex!19937)

(declare-fun e!4496748 () Regex!19937)

(assert (=> b!7548534 (= e!4496749 e!4496748)))

(declare-fun call!692199 () Regex!19937)

(declare-fun call!692198 () Regex!19937)

(declare-fun e!4496747 () Regex!19937)

(declare-fun b!7548535 () Bool)

(assert (=> b!7548535 (= e!4496747 (Union!19937 (Concat!28782 call!692199 (regTwo!40386 r!24333)) call!692198))))

(declare-fun bm!692191 () Bool)

(declare-fun call!692196 () Regex!19937)

(assert (=> bm!692191 (= call!692199 call!692196)))

(declare-fun b!7548536 () Bool)

(assert (=> b!7548536 (= e!4496749 (ite (= lt!2645986 (c!1393288 r!24333)) EmptyExpr!19937 EmptyLang!19937))))

(declare-fun b!7548537 () Bool)

(declare-fun e!4496750 () Regex!19937)

(assert (=> b!7548537 (= e!4496748 e!4496750)))

(declare-fun c!1393351 () Bool)

(assert (=> b!7548537 (= c!1393351 ((_ is Star!19937) r!24333))))

(declare-fun b!7548538 () Bool)

(declare-fun call!692197 () Regex!19937)

(assert (=> b!7548538 (= e!4496748 (Union!19937 call!692198 call!692197))))

(declare-fun d!2312496 () Bool)

(declare-fun lt!2646057 () Regex!19937)

(assert (=> d!2312496 (validRegex!10365 lt!2646057)))

(declare-fun e!4496751 () Regex!19937)

(assert (=> d!2312496 (= lt!2646057 e!4496751)))

(declare-fun c!1393353 () Bool)

(assert (=> d!2312496 (= c!1393353 (or ((_ is EmptyExpr!19937) r!24333) ((_ is EmptyLang!19937) r!24333)))))

(assert (=> d!2312496 (validRegex!10365 r!24333)))

(assert (=> d!2312496 (= (derivativeStep!5727 r!24333 lt!2645986) lt!2646057)))

(declare-fun b!7548539 () Bool)

(assert (=> b!7548539 (= e!4496751 EmptyLang!19937)))

(declare-fun b!7548540 () Bool)

(assert (=> b!7548540 (= e!4496747 (Union!19937 (Concat!28782 call!692199 (regTwo!40386 r!24333)) EmptyLang!19937))))

(declare-fun b!7548541 () Bool)

(declare-fun c!1393355 () Bool)

(declare-fun nullable!8697 (Regex!19937) Bool)

(assert (=> b!7548541 (= c!1393355 (nullable!8697 (regOne!40386 r!24333)))))

(assert (=> b!7548541 (= e!4496750 e!4496747)))

(declare-fun b!7548542 () Bool)

(assert (=> b!7548542 (= e!4496750 (Concat!28782 call!692196 r!24333))))

(declare-fun bm!692192 () Bool)

(assert (=> bm!692192 (= call!692198 (derivativeStep!5727 (ite c!1393352 (regOne!40387 r!24333) (regTwo!40386 r!24333)) lt!2645986))))

(declare-fun b!7548543 () Bool)

(assert (=> b!7548543 (= e!4496751 e!4496749)))

(declare-fun c!1393354 () Bool)

(assert (=> b!7548543 (= c!1393354 ((_ is ElementMatch!19937) r!24333))))

(declare-fun bm!692193 () Bool)

(assert (=> bm!692193 (= call!692196 call!692197)))

(declare-fun bm!692194 () Bool)

(assert (=> bm!692194 (= call!692197 (derivativeStep!5727 (ite c!1393352 (regTwo!40387 r!24333) (ite c!1393351 (reg!20266 r!24333) (regOne!40386 r!24333))) lt!2645986))))

(assert (= (and d!2312496 c!1393353) b!7548539))

(assert (= (and d!2312496 (not c!1393353)) b!7548543))

(assert (= (and b!7548543 c!1393354) b!7548536))

(assert (= (and b!7548543 (not c!1393354)) b!7548534))

(assert (= (and b!7548534 c!1393352) b!7548538))

(assert (= (and b!7548534 (not c!1393352)) b!7548537))

(assert (= (and b!7548537 c!1393351) b!7548542))

(assert (= (and b!7548537 (not c!1393351)) b!7548541))

(assert (= (and b!7548541 c!1393355) b!7548535))

(assert (= (and b!7548541 (not c!1393355)) b!7548540))

(assert (= (or b!7548535 b!7548540) bm!692191))

(assert (= (or b!7548542 bm!692191) bm!692193))

(assert (= (or b!7548538 bm!692193) bm!692194))

(assert (= (or b!7548538 b!7548535) bm!692192))

(declare-fun m!8116148 () Bool)

(assert (=> d!2312496 m!8116148))

(assert (=> d!2312496 m!8115914))

(declare-fun m!8116150 () Bool)

(assert (=> b!7548541 m!8116150))

(declare-fun m!8116152 () Bool)

(assert (=> bm!692192 m!8116152))

(declare-fun m!8116154 () Bool)

(assert (=> bm!692194 m!8116154))

(assert (=> b!7548301 d!2312496))

(declare-fun e!4496752 () List!72820)

(declare-fun b!7548545 () Bool)

(assert (=> b!7548545 (= e!4496752 (Cons!72696 (h!79144 (++!17453 testedP!423 lt!2645990)) (++!17453 (t!387537 (++!17453 testedP!423 lt!2645990)) lt!2645993)))))

(declare-fun d!2312520 () Bool)

(declare-fun e!4496753 () Bool)

(assert (=> d!2312520 e!4496753))

(declare-fun res!3025521 () Bool)

(assert (=> d!2312520 (=> (not res!3025521) (not e!4496753))))

(declare-fun lt!2646058 () List!72820)

(assert (=> d!2312520 (= res!3025521 (= (content!15383 lt!2646058) ((_ map or) (content!15383 (++!17453 testedP!423 lt!2645990)) (content!15383 lt!2645993))))))

(assert (=> d!2312520 (= lt!2646058 e!4496752)))

(declare-fun c!1393356 () Bool)

(assert (=> d!2312520 (= c!1393356 ((_ is Nil!72696) (++!17453 testedP!423 lt!2645990)))))

(assert (=> d!2312520 (= (++!17453 (++!17453 testedP!423 lt!2645990) lt!2645993) lt!2646058)))

(declare-fun b!7548547 () Bool)

(assert (=> b!7548547 (= e!4496753 (or (not (= lt!2645993 Nil!72696)) (= lt!2646058 (++!17453 testedP!423 lt!2645990))))))

(declare-fun b!7548544 () Bool)

(assert (=> b!7548544 (= e!4496752 lt!2645993)))

(declare-fun b!7548546 () Bool)

(declare-fun res!3025522 () Bool)

(assert (=> b!7548546 (=> (not res!3025522) (not e!4496753))))

(assert (=> b!7548546 (= res!3025522 (= (size!42433 lt!2646058) (+ (size!42433 (++!17453 testedP!423 lt!2645990)) (size!42433 lt!2645993))))))

(assert (= (and d!2312520 c!1393356) b!7548544))

(assert (= (and d!2312520 (not c!1393356)) b!7548545))

(assert (= (and d!2312520 res!3025521) b!7548546))

(assert (= (and b!7548546 res!3025522) b!7548547))

(declare-fun m!8116156 () Bool)

(assert (=> b!7548545 m!8116156))

(declare-fun m!8116158 () Bool)

(assert (=> d!2312520 m!8116158))

(assert (=> d!2312520 m!8115908))

(declare-fun m!8116160 () Bool)

(assert (=> d!2312520 m!8116160))

(assert (=> d!2312520 m!8115982))

(declare-fun m!8116162 () Bool)

(assert (=> b!7548546 m!8116162))

(assert (=> b!7548546 m!8115908))

(declare-fun m!8116164 () Bool)

(assert (=> b!7548546 m!8116164))

(assert (=> b!7548546 m!8115986))

(assert (=> b!7548311 d!2312520))

(declare-fun b!7548549 () Bool)

(declare-fun e!4496754 () List!72820)

(assert (=> b!7548549 (= e!4496754 (Cons!72696 (h!79144 testedP!423) (++!17453 (t!387537 testedP!423) lt!2645990)))))

(declare-fun d!2312522 () Bool)

(declare-fun e!4496755 () Bool)

(assert (=> d!2312522 e!4496755))

(declare-fun res!3025523 () Bool)

(assert (=> d!2312522 (=> (not res!3025523) (not e!4496755))))

(declare-fun lt!2646059 () List!72820)

(assert (=> d!2312522 (= res!3025523 (= (content!15383 lt!2646059) ((_ map or) (content!15383 testedP!423) (content!15383 lt!2645990))))))

(assert (=> d!2312522 (= lt!2646059 e!4496754)))

(declare-fun c!1393357 () Bool)

(assert (=> d!2312522 (= c!1393357 ((_ is Nil!72696) testedP!423))))

(assert (=> d!2312522 (= (++!17453 testedP!423 lt!2645990) lt!2646059)))

(declare-fun b!7548551 () Bool)

(assert (=> b!7548551 (= e!4496755 (or (not (= lt!2645990 Nil!72696)) (= lt!2646059 testedP!423)))))

(declare-fun b!7548548 () Bool)

(assert (=> b!7548548 (= e!4496754 lt!2645990)))

(declare-fun b!7548550 () Bool)

(declare-fun res!3025524 () Bool)

(assert (=> b!7548550 (=> (not res!3025524) (not e!4496755))))

(assert (=> b!7548550 (= res!3025524 (= (size!42433 lt!2646059) (+ (size!42433 testedP!423) (size!42433 lt!2645990))))))

(assert (= (and d!2312522 c!1393357) b!7548548))

(assert (= (and d!2312522 (not c!1393357)) b!7548549))

(assert (= (and d!2312522 res!3025523) b!7548550))

(assert (= (and b!7548550 res!3025524) b!7548551))

(declare-fun m!8116166 () Bool)

(assert (=> b!7548549 m!8116166))

(declare-fun m!8116168 () Bool)

(assert (=> d!2312522 m!8116168))

(assert (=> d!2312522 m!8115958))

(declare-fun m!8116170 () Bool)

(assert (=> d!2312522 m!8116170))

(declare-fun m!8116172 () Bool)

(assert (=> b!7548550 m!8116172))

(assert (=> b!7548550 m!8115930))

(declare-fun m!8116174 () Bool)

(assert (=> b!7548550 m!8116174))

(assert (=> b!7548311 d!2312522))

(declare-fun b!7548711 () Bool)

(declare-fun e!4496830 () Bool)

(assert (=> b!7548711 (= e!4496830 (nullable!8697 r!24333))))

(declare-fun b!7548712 () Bool)

(declare-fun res!3025570 () Bool)

(declare-fun e!4496832 () Bool)

(assert (=> b!7548712 (=> res!3025570 e!4496832)))

(declare-fun isEmpty!41393 (List!72820) Bool)

(assert (=> b!7548712 (= res!3025570 (not (isEmpty!41393 (tail!15073 lt!2645990))))))

(declare-fun b!7548713 () Bool)

(declare-fun e!4496831 () Bool)

(assert (=> b!7548713 (= e!4496831 e!4496832)))

(declare-fun res!3025567 () Bool)

(assert (=> b!7548713 (=> res!3025567 e!4496832)))

(declare-fun call!692215 () Bool)

(assert (=> b!7548713 (= res!3025567 call!692215)))

(declare-fun d!2312524 () Bool)

(declare-fun e!4496828 () Bool)

(assert (=> d!2312524 e!4496828))

(declare-fun c!1393390 () Bool)

(assert (=> d!2312524 (= c!1393390 ((_ is EmptyExpr!19937) r!24333))))

(declare-fun lt!2646079 () Bool)

(assert (=> d!2312524 (= lt!2646079 e!4496830)))

(declare-fun c!1393388 () Bool)

(assert (=> d!2312524 (= c!1393388 (isEmpty!41393 lt!2645990))))

(assert (=> d!2312524 (validRegex!10365 r!24333)))

(assert (=> d!2312524 (= (matchR!9539 r!24333 lt!2645990) lt!2646079)))

(declare-fun b!7548714 () Bool)

(declare-fun res!3025574 () Bool)

(declare-fun e!4496834 () Bool)

(assert (=> b!7548714 (=> (not res!3025574) (not e!4496834))))

(assert (=> b!7548714 (= res!3025574 (not call!692215))))

(declare-fun b!7548715 () Bool)

(assert (=> b!7548715 (= e!4496832 (not (= (head!15527 lt!2645990) (c!1393288 r!24333))))))

(declare-fun b!7548716 () Bool)

(assert (=> b!7548716 (= e!4496834 (= (head!15527 lt!2645990) (c!1393288 r!24333)))))

(declare-fun b!7548717 () Bool)

(declare-fun res!3025568 () Bool)

(assert (=> b!7548717 (=> (not res!3025568) (not e!4496834))))

(assert (=> b!7548717 (= res!3025568 (isEmpty!41393 (tail!15073 lt!2645990)))))

(declare-fun b!7548718 () Bool)

(assert (=> b!7548718 (= e!4496830 (matchR!9539 (derivativeStep!5727 r!24333 (head!15527 lt!2645990)) (tail!15073 lt!2645990)))))

(declare-fun bm!692210 () Bool)

(assert (=> bm!692210 (= call!692215 (isEmpty!41393 lt!2645990))))

(declare-fun b!7548719 () Bool)

(declare-fun e!4496833 () Bool)

(assert (=> b!7548719 (= e!4496833 (not lt!2646079))))

(declare-fun b!7548720 () Bool)

(declare-fun e!4496829 () Bool)

(assert (=> b!7548720 (= e!4496829 e!4496831)))

(declare-fun res!3025573 () Bool)

(assert (=> b!7548720 (=> (not res!3025573) (not e!4496831))))

(assert (=> b!7548720 (= res!3025573 (not lt!2646079))))

(declare-fun b!7548721 () Bool)

(declare-fun res!3025572 () Bool)

(assert (=> b!7548721 (=> res!3025572 e!4496829)))

(assert (=> b!7548721 (= res!3025572 e!4496834)))

(declare-fun res!3025569 () Bool)

(assert (=> b!7548721 (=> (not res!3025569) (not e!4496834))))

(assert (=> b!7548721 (= res!3025569 lt!2646079)))

(declare-fun b!7548722 () Bool)

(assert (=> b!7548722 (= e!4496828 (= lt!2646079 call!692215))))

(declare-fun b!7548723 () Bool)

(assert (=> b!7548723 (= e!4496828 e!4496833)))

(declare-fun c!1393389 () Bool)

(assert (=> b!7548723 (= c!1393389 ((_ is EmptyLang!19937) r!24333))))

(declare-fun b!7548724 () Bool)

(declare-fun res!3025571 () Bool)

(assert (=> b!7548724 (=> res!3025571 e!4496829)))

(assert (=> b!7548724 (= res!3025571 (not ((_ is ElementMatch!19937) r!24333)))))

(assert (=> b!7548724 (= e!4496833 e!4496829)))

(assert (= (and d!2312524 c!1393388) b!7548711))

(assert (= (and d!2312524 (not c!1393388)) b!7548718))

(assert (= (and d!2312524 c!1393390) b!7548722))

(assert (= (and d!2312524 (not c!1393390)) b!7548723))

(assert (= (and b!7548723 c!1393389) b!7548719))

(assert (= (and b!7548723 (not c!1393389)) b!7548724))

(assert (= (and b!7548724 (not res!3025571)) b!7548721))

(assert (= (and b!7548721 res!3025569) b!7548714))

(assert (= (and b!7548714 res!3025574) b!7548717))

(assert (= (and b!7548717 res!3025568) b!7548716))

(assert (= (and b!7548721 (not res!3025572)) b!7548720))

(assert (= (and b!7548720 res!3025573) b!7548713))

(assert (= (and b!7548713 (not res!3025567)) b!7548712))

(assert (= (and b!7548712 (not res!3025570)) b!7548715))

(assert (= (or b!7548722 b!7548713 b!7548714) bm!692210))

(declare-fun m!8116244 () Bool)

(assert (=> b!7548716 m!8116244))

(declare-fun m!8116246 () Bool)

(assert (=> b!7548717 m!8116246))

(assert (=> b!7548717 m!8116246))

(declare-fun m!8116248 () Bool)

(assert (=> b!7548717 m!8116248))

(declare-fun m!8116250 () Bool)

(assert (=> b!7548711 m!8116250))

(declare-fun m!8116252 () Bool)

(assert (=> d!2312524 m!8116252))

(assert (=> d!2312524 m!8115914))

(assert (=> b!7548715 m!8116244))

(assert (=> b!7548718 m!8116244))

(assert (=> b!7548718 m!8116244))

(declare-fun m!8116254 () Bool)

(assert (=> b!7548718 m!8116254))

(assert (=> b!7548718 m!8116246))

(assert (=> b!7548718 m!8116254))

(assert (=> b!7548718 m!8116246))

(declare-fun m!8116256 () Bool)

(assert (=> b!7548718 m!8116256))

(assert (=> b!7548712 m!8116246))

(assert (=> b!7548712 m!8116246))

(assert (=> b!7548712 m!8116248))

(assert (=> bm!692210 m!8116252))

(assert (=> b!7548302 d!2312524))

(declare-fun d!2312550 () Bool)

(declare-fun lt!2646080 () List!72820)

(assert (=> d!2312550 (= (++!17453 testedP!423 lt!2646080) knownP!30)))

(declare-fun e!4496835 () List!72820)

(assert (=> d!2312550 (= lt!2646080 e!4496835)))

(declare-fun c!1393391 () Bool)

(assert (=> d!2312550 (= c!1393391 ((_ is Cons!72696) testedP!423))))

(assert (=> d!2312550 (>= (size!42433 knownP!30) (size!42433 testedP!423))))

(assert (=> d!2312550 (= (getSuffix!3623 knownP!30 testedP!423) lt!2646080)))

(declare-fun b!7548725 () Bool)

(assert (=> b!7548725 (= e!4496835 (getSuffix!3623 (tail!15073 knownP!30) (t!387537 testedP!423)))))

(declare-fun b!7548726 () Bool)

(assert (=> b!7548726 (= e!4496835 knownP!30)))

(assert (= (and d!2312550 c!1393391) b!7548725))

(assert (= (and d!2312550 (not c!1393391)) b!7548726))

(declare-fun m!8116258 () Bool)

(assert (=> d!2312550 m!8116258))

(assert (=> d!2312550 m!8115932))

(assert (=> d!2312550 m!8115930))

(assert (=> b!7548725 m!8116054))

(assert (=> b!7548725 m!8116054))

(declare-fun m!8116260 () Bool)

(assert (=> b!7548725 m!8116260))

(assert (=> b!7548302 d!2312550))

(declare-fun b!7548729 () Bool)

(declare-fun e!4496836 () Bool)

(assert (=> b!7548729 (= e!4496836 (isPrefix!6143 (tail!15073 testedP!423) (tail!15073 knownP!30)))))

(declare-fun d!2312552 () Bool)

(declare-fun e!4496837 () Bool)

(assert (=> d!2312552 e!4496837))

(declare-fun res!3025577 () Bool)

(assert (=> d!2312552 (=> res!3025577 e!4496837)))

(declare-fun lt!2646081 () Bool)

(assert (=> d!2312552 (= res!3025577 (not lt!2646081))))

(declare-fun e!4496838 () Bool)

(assert (=> d!2312552 (= lt!2646081 e!4496838)))

(declare-fun res!3025578 () Bool)

(assert (=> d!2312552 (=> res!3025578 e!4496838)))

(assert (=> d!2312552 (= res!3025578 ((_ is Nil!72696) testedP!423))))

(assert (=> d!2312552 (= (isPrefix!6143 testedP!423 knownP!30) lt!2646081)))

(declare-fun b!7548728 () Bool)

(declare-fun res!3025575 () Bool)

(assert (=> b!7548728 (=> (not res!3025575) (not e!4496836))))

(assert (=> b!7548728 (= res!3025575 (= (head!15527 testedP!423) (head!15527 knownP!30)))))

(declare-fun b!7548727 () Bool)

(assert (=> b!7548727 (= e!4496838 e!4496836)))

(declare-fun res!3025576 () Bool)

(assert (=> b!7548727 (=> (not res!3025576) (not e!4496836))))

(assert (=> b!7548727 (= res!3025576 (not ((_ is Nil!72696) knownP!30)))))

(declare-fun b!7548730 () Bool)

(assert (=> b!7548730 (= e!4496837 (>= (size!42433 knownP!30) (size!42433 testedP!423)))))

(assert (= (and d!2312552 (not res!3025578)) b!7548727))

(assert (= (and b!7548727 res!3025576) b!7548728))

(assert (= (and b!7548728 res!3025575) b!7548729))

(assert (= (and d!2312552 (not res!3025577)) b!7548730))

(assert (=> b!7548729 m!8115942))

(assert (=> b!7548729 m!8116054))

(assert (=> b!7548729 m!8115942))

(assert (=> b!7548729 m!8116054))

(declare-fun m!8116262 () Bool)

(assert (=> b!7548729 m!8116262))

(assert (=> b!7548728 m!8115948))

(assert (=> b!7548728 m!8116058))

(assert (=> b!7548730 m!8115932))

(assert (=> b!7548730 m!8115930))

(assert (=> b!7548302 d!2312552))

(declare-fun d!2312554 () Bool)

(assert (=> d!2312554 (isPrefix!6143 testedP!423 knownP!30)))

(declare-fun lt!2646082 () Unit!166812)

(assert (=> d!2312554 (= lt!2646082 (choose!58411 knownP!30 testedP!423 input!7874))))

(assert (=> d!2312554 (isPrefix!6143 knownP!30 input!7874)))

(assert (=> d!2312554 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!893 knownP!30 testedP!423 input!7874) lt!2646082)))

(declare-fun bs!1940152 () Bool)

(assert (= bs!1940152 d!2312554))

(assert (=> bs!1940152 m!8115922))

(declare-fun m!8116264 () Bool)

(assert (=> bs!1940152 m!8116264))

(assert (=> bs!1940152 m!8115934))

(assert (=> b!7548302 d!2312554))

(declare-fun b!7548733 () Bool)

(declare-fun e!4496839 () Bool)

(assert (=> b!7548733 (= e!4496839 (isPrefix!6143 (tail!15073 knownP!30) (tail!15073 input!7874)))))

(declare-fun d!2312556 () Bool)

(declare-fun e!4496840 () Bool)

(assert (=> d!2312556 e!4496840))

(declare-fun res!3025581 () Bool)

(assert (=> d!2312556 (=> res!3025581 e!4496840)))

(declare-fun lt!2646083 () Bool)

(assert (=> d!2312556 (= res!3025581 (not lt!2646083))))

(declare-fun e!4496841 () Bool)

(assert (=> d!2312556 (= lt!2646083 e!4496841)))

(declare-fun res!3025582 () Bool)

(assert (=> d!2312556 (=> res!3025582 e!4496841)))

(assert (=> d!2312556 (= res!3025582 ((_ is Nil!72696) knownP!30))))

(assert (=> d!2312556 (= (isPrefix!6143 knownP!30 input!7874) lt!2646083)))

(declare-fun b!7548732 () Bool)

(declare-fun res!3025579 () Bool)

(assert (=> b!7548732 (=> (not res!3025579) (not e!4496839))))

(assert (=> b!7548732 (= res!3025579 (= (head!15527 knownP!30) (head!15527 input!7874)))))

(declare-fun b!7548731 () Bool)

(assert (=> b!7548731 (= e!4496841 e!4496839)))

(declare-fun res!3025580 () Bool)

(assert (=> b!7548731 (=> (not res!3025580) (not e!4496839))))

(assert (=> b!7548731 (= res!3025580 (not ((_ is Nil!72696) input!7874)))))

(declare-fun b!7548734 () Bool)

(assert (=> b!7548734 (= e!4496840 (>= (size!42433 input!7874) (size!42433 knownP!30)))))

(assert (= (and d!2312556 (not res!3025582)) b!7548731))

(assert (= (and b!7548731 res!3025580) b!7548732))

(assert (= (and b!7548732 res!3025579) b!7548733))

(assert (= (and d!2312556 (not res!3025581)) b!7548734))

(assert (=> b!7548733 m!8116054))

(assert (=> b!7548733 m!8115944))

(assert (=> b!7548733 m!8116054))

(assert (=> b!7548733 m!8115944))

(declare-fun m!8116266 () Bool)

(assert (=> b!7548733 m!8116266))

(assert (=> b!7548732 m!8116058))

(assert (=> b!7548732 m!8115950))

(assert (=> b!7548734 m!8115926))

(assert (=> b!7548734 m!8115932))

(assert (=> b!7548314 d!2312556))

(declare-fun b!7548753 () Bool)

(declare-fun res!3025595 () Bool)

(declare-fun e!4496858 () Bool)

(assert (=> b!7548753 (=> res!3025595 e!4496858)))

(assert (=> b!7548753 (= res!3025595 (not ((_ is Concat!28782) baseR!101)))))

(declare-fun e!4496857 () Bool)

(assert (=> b!7548753 (= e!4496857 e!4496858)))

(declare-fun b!7548754 () Bool)

(declare-fun e!4496862 () Bool)

(declare-fun call!692222 () Bool)

(assert (=> b!7548754 (= e!4496862 call!692222)))

(declare-fun b!7548755 () Bool)

(declare-fun e!4496859 () Bool)

(declare-fun e!4496860 () Bool)

(assert (=> b!7548755 (= e!4496859 e!4496860)))

(declare-fun c!1393397 () Bool)

(assert (=> b!7548755 (= c!1393397 ((_ is Star!19937) baseR!101))))

(declare-fun b!7548756 () Bool)

(declare-fun res!3025593 () Bool)

(declare-fun e!4496861 () Bool)

(assert (=> b!7548756 (=> (not res!3025593) (not e!4496861))))

(declare-fun call!692224 () Bool)

(assert (=> b!7548756 (= res!3025593 call!692224)))

(assert (=> b!7548756 (= e!4496857 e!4496861)))

(declare-fun bm!692217 () Bool)

(declare-fun call!692223 () Bool)

(assert (=> bm!692217 (= call!692222 call!692223)))

(declare-fun bm!692218 () Bool)

(declare-fun c!1393396 () Bool)

(assert (=> bm!692218 (= call!692224 (validRegex!10365 (ite c!1393396 (regOne!40387 baseR!101) (regOne!40386 baseR!101))))))

(declare-fun b!7548757 () Bool)

(declare-fun e!4496856 () Bool)

(assert (=> b!7548757 (= e!4496860 e!4496856)))

(declare-fun res!3025596 () Bool)

(assert (=> b!7548757 (= res!3025596 (not (nullable!8697 (reg!20266 baseR!101))))))

(assert (=> b!7548757 (=> (not res!3025596) (not e!4496856))))

(declare-fun d!2312558 () Bool)

(declare-fun res!3025594 () Bool)

(assert (=> d!2312558 (=> res!3025594 e!4496859)))

(assert (=> d!2312558 (= res!3025594 ((_ is ElementMatch!19937) baseR!101))))

(assert (=> d!2312558 (= (validRegex!10365 baseR!101) e!4496859)))

(declare-fun b!7548758 () Bool)

(assert (=> b!7548758 (= e!4496858 e!4496862)))

(declare-fun res!3025597 () Bool)

(assert (=> b!7548758 (=> (not res!3025597) (not e!4496862))))

(assert (=> b!7548758 (= res!3025597 call!692224)))

(declare-fun b!7548759 () Bool)

(assert (=> b!7548759 (= e!4496856 call!692223)))

(declare-fun bm!692219 () Bool)

(assert (=> bm!692219 (= call!692223 (validRegex!10365 (ite c!1393397 (reg!20266 baseR!101) (ite c!1393396 (regTwo!40387 baseR!101) (regTwo!40386 baseR!101)))))))

(declare-fun b!7548760 () Bool)

(assert (=> b!7548760 (= e!4496861 call!692222)))

(declare-fun b!7548761 () Bool)

(assert (=> b!7548761 (= e!4496860 e!4496857)))

(assert (=> b!7548761 (= c!1393396 ((_ is Union!19937) baseR!101))))

(assert (= (and d!2312558 (not res!3025594)) b!7548755))

(assert (= (and b!7548755 c!1393397) b!7548757))

(assert (= (and b!7548755 (not c!1393397)) b!7548761))

(assert (= (and b!7548757 res!3025596) b!7548759))

(assert (= (and b!7548761 c!1393396) b!7548756))

(assert (= (and b!7548761 (not c!1393396)) b!7548753))

(assert (= (and b!7548756 res!3025593) b!7548760))

(assert (= (and b!7548753 (not res!3025595)) b!7548758))

(assert (= (and b!7548758 res!3025597) b!7548754))

(assert (= (or b!7548756 b!7548758) bm!692218))

(assert (= (or b!7548760 b!7548754) bm!692217))

(assert (= (or b!7548759 bm!692217) bm!692219))

(declare-fun m!8116268 () Bool)

(assert (=> bm!692218 m!8116268))

(declare-fun m!8116270 () Bool)

(assert (=> b!7548757 m!8116270))

(declare-fun m!8116272 () Bool)

(assert (=> bm!692219 m!8116272))

(assert (=> start!729896 d!2312558))

(declare-fun b!7548762 () Bool)

(declare-fun e!4496865 () Bool)

(assert (=> b!7548762 (= e!4496865 (nullable!8697 baseR!101))))

(declare-fun b!7548763 () Bool)

(declare-fun res!3025601 () Bool)

(declare-fun e!4496867 () Bool)

(assert (=> b!7548763 (=> res!3025601 e!4496867)))

(assert (=> b!7548763 (= res!3025601 (not (isEmpty!41393 (tail!15073 knownP!30))))))

(declare-fun b!7548764 () Bool)

(declare-fun e!4496866 () Bool)

(assert (=> b!7548764 (= e!4496866 e!4496867)))

(declare-fun res!3025598 () Bool)

(assert (=> b!7548764 (=> res!3025598 e!4496867)))

(declare-fun call!692225 () Bool)

(assert (=> b!7548764 (= res!3025598 call!692225)))

(declare-fun d!2312560 () Bool)

(declare-fun e!4496863 () Bool)

(assert (=> d!2312560 e!4496863))

(declare-fun c!1393400 () Bool)

(assert (=> d!2312560 (= c!1393400 ((_ is EmptyExpr!19937) baseR!101))))

(declare-fun lt!2646084 () Bool)

(assert (=> d!2312560 (= lt!2646084 e!4496865)))

(declare-fun c!1393398 () Bool)

(assert (=> d!2312560 (= c!1393398 (isEmpty!41393 knownP!30))))

(assert (=> d!2312560 (validRegex!10365 baseR!101)))

(assert (=> d!2312560 (= (matchR!9539 baseR!101 knownP!30) lt!2646084)))

(declare-fun b!7548765 () Bool)

(declare-fun res!3025605 () Bool)

(declare-fun e!4496869 () Bool)

(assert (=> b!7548765 (=> (not res!3025605) (not e!4496869))))

(assert (=> b!7548765 (= res!3025605 (not call!692225))))

(declare-fun b!7548766 () Bool)

(assert (=> b!7548766 (= e!4496867 (not (= (head!15527 knownP!30) (c!1393288 baseR!101))))))

(declare-fun b!7548767 () Bool)

(assert (=> b!7548767 (= e!4496869 (= (head!15527 knownP!30) (c!1393288 baseR!101)))))

(declare-fun b!7548768 () Bool)

(declare-fun res!3025599 () Bool)

(assert (=> b!7548768 (=> (not res!3025599) (not e!4496869))))

(assert (=> b!7548768 (= res!3025599 (isEmpty!41393 (tail!15073 knownP!30)))))

(declare-fun b!7548769 () Bool)

(assert (=> b!7548769 (= e!4496865 (matchR!9539 (derivativeStep!5727 baseR!101 (head!15527 knownP!30)) (tail!15073 knownP!30)))))

(declare-fun bm!692220 () Bool)

(assert (=> bm!692220 (= call!692225 (isEmpty!41393 knownP!30))))

(declare-fun b!7548770 () Bool)

(declare-fun e!4496868 () Bool)

(assert (=> b!7548770 (= e!4496868 (not lt!2646084))))

(declare-fun b!7548771 () Bool)

(declare-fun e!4496864 () Bool)

(assert (=> b!7548771 (= e!4496864 e!4496866)))

(declare-fun res!3025604 () Bool)

(assert (=> b!7548771 (=> (not res!3025604) (not e!4496866))))

(assert (=> b!7548771 (= res!3025604 (not lt!2646084))))

(declare-fun b!7548772 () Bool)

(declare-fun res!3025603 () Bool)

(assert (=> b!7548772 (=> res!3025603 e!4496864)))

(assert (=> b!7548772 (= res!3025603 e!4496869)))

(declare-fun res!3025600 () Bool)

(assert (=> b!7548772 (=> (not res!3025600) (not e!4496869))))

(assert (=> b!7548772 (= res!3025600 lt!2646084)))

(declare-fun b!7548773 () Bool)

(assert (=> b!7548773 (= e!4496863 (= lt!2646084 call!692225))))

(declare-fun b!7548774 () Bool)

(assert (=> b!7548774 (= e!4496863 e!4496868)))

(declare-fun c!1393399 () Bool)

(assert (=> b!7548774 (= c!1393399 ((_ is EmptyLang!19937) baseR!101))))

(declare-fun b!7548775 () Bool)

(declare-fun res!3025602 () Bool)

(assert (=> b!7548775 (=> res!3025602 e!4496864)))

(assert (=> b!7548775 (= res!3025602 (not ((_ is ElementMatch!19937) baseR!101)))))

(assert (=> b!7548775 (= e!4496868 e!4496864)))

(assert (= (and d!2312560 c!1393398) b!7548762))

(assert (= (and d!2312560 (not c!1393398)) b!7548769))

(assert (= (and d!2312560 c!1393400) b!7548773))

(assert (= (and d!2312560 (not c!1393400)) b!7548774))

(assert (= (and b!7548774 c!1393399) b!7548770))

(assert (= (and b!7548774 (not c!1393399)) b!7548775))

(assert (= (and b!7548775 (not res!3025602)) b!7548772))

(assert (= (and b!7548772 res!3025600) b!7548765))

(assert (= (and b!7548765 res!3025605) b!7548768))

(assert (= (and b!7548768 res!3025599) b!7548767))

(assert (= (and b!7548772 (not res!3025603)) b!7548771))

(assert (= (and b!7548771 res!3025604) b!7548764))

(assert (= (and b!7548764 (not res!3025598)) b!7548763))

(assert (= (and b!7548763 (not res!3025601)) b!7548766))

(assert (= (or b!7548773 b!7548764 b!7548765) bm!692220))

(assert (=> b!7548767 m!8116058))

(assert (=> b!7548768 m!8116054))

(assert (=> b!7548768 m!8116054))

(declare-fun m!8116274 () Bool)

(assert (=> b!7548768 m!8116274))

(declare-fun m!8116276 () Bool)

(assert (=> b!7548762 m!8116276))

(declare-fun m!8116278 () Bool)

(assert (=> d!2312560 m!8116278))

(assert (=> d!2312560 m!8115912))

(assert (=> b!7548766 m!8116058))

(assert (=> b!7548769 m!8116058))

(assert (=> b!7548769 m!8116058))

(declare-fun m!8116280 () Bool)

(assert (=> b!7548769 m!8116280))

(assert (=> b!7548769 m!8116054))

(assert (=> b!7548769 m!8116280))

(assert (=> b!7548769 m!8116054))

(declare-fun m!8116282 () Bool)

(assert (=> b!7548769 m!8116282))

(assert (=> b!7548763 m!8116054))

(assert (=> b!7548763 m!8116054))

(assert (=> b!7548763 m!8116274))

(assert (=> bm!692220 m!8116278))

(assert (=> b!7548305 d!2312560))

(declare-fun d!2312562 () Bool)

(declare-fun lt!2646085 () Int)

(assert (=> d!2312562 (>= lt!2646085 0)))

(declare-fun e!4496870 () Int)

(assert (=> d!2312562 (= lt!2646085 e!4496870)))

(declare-fun c!1393401 () Bool)

(assert (=> d!2312562 (= c!1393401 ((_ is Nil!72696) testedP!423))))

(assert (=> d!2312562 (= (size!42433 testedP!423) lt!2646085)))

(declare-fun b!7548776 () Bool)

(assert (=> b!7548776 (= e!4496870 0)))

(declare-fun b!7548777 () Bool)

(assert (=> b!7548777 (= e!4496870 (+ 1 (size!42433 (t!387537 testedP!423))))))

(assert (= (and d!2312562 c!1393401) b!7548776))

(assert (= (and d!2312562 (not c!1393401)) b!7548777))

(declare-fun m!8116284 () Bool)

(assert (=> b!7548777 m!8116284))

(assert (=> b!7548315 d!2312562))

(declare-fun d!2312564 () Bool)

(declare-fun lt!2646086 () Int)

(assert (=> d!2312564 (>= lt!2646086 0)))

(declare-fun e!4496871 () Int)

(assert (=> d!2312564 (= lt!2646086 e!4496871)))

(declare-fun c!1393402 () Bool)

(assert (=> d!2312564 (= c!1393402 ((_ is Nil!72696) knownP!30))))

(assert (=> d!2312564 (= (size!42433 knownP!30) lt!2646086)))

(declare-fun b!7548778 () Bool)

(assert (=> b!7548778 (= e!4496871 0)))

(declare-fun b!7548779 () Bool)

(assert (=> b!7548779 (= e!4496871 (+ 1 (size!42433 (t!387537 knownP!30))))))

(assert (= (and d!2312564 c!1393402) b!7548778))

(assert (= (and d!2312564 (not c!1393402)) b!7548779))

(declare-fun m!8116286 () Bool)

(assert (=> b!7548779 m!8116286))

(assert (=> b!7548315 d!2312564))

(declare-fun b!7548780 () Bool)

(declare-fun res!3025608 () Bool)

(declare-fun e!4496874 () Bool)

(assert (=> b!7548780 (=> res!3025608 e!4496874)))

(assert (=> b!7548780 (= res!3025608 (not ((_ is Concat!28782) r!24333)))))

(declare-fun e!4496873 () Bool)

(assert (=> b!7548780 (= e!4496873 e!4496874)))

(declare-fun b!7548781 () Bool)

(declare-fun e!4496878 () Bool)

(declare-fun call!692226 () Bool)

(assert (=> b!7548781 (= e!4496878 call!692226)))

(declare-fun b!7548782 () Bool)

(declare-fun e!4496875 () Bool)

(declare-fun e!4496876 () Bool)

(assert (=> b!7548782 (= e!4496875 e!4496876)))

(declare-fun c!1393404 () Bool)

(assert (=> b!7548782 (= c!1393404 ((_ is Star!19937) r!24333))))

(declare-fun b!7548783 () Bool)

(declare-fun res!3025606 () Bool)

(declare-fun e!4496877 () Bool)

(assert (=> b!7548783 (=> (not res!3025606) (not e!4496877))))

(declare-fun call!692228 () Bool)

(assert (=> b!7548783 (= res!3025606 call!692228)))

(assert (=> b!7548783 (= e!4496873 e!4496877)))

(declare-fun bm!692221 () Bool)

(declare-fun call!692227 () Bool)

(assert (=> bm!692221 (= call!692226 call!692227)))

(declare-fun bm!692222 () Bool)

(declare-fun c!1393403 () Bool)

(assert (=> bm!692222 (= call!692228 (validRegex!10365 (ite c!1393403 (regOne!40387 r!24333) (regOne!40386 r!24333))))))

(declare-fun b!7548784 () Bool)

(declare-fun e!4496872 () Bool)

(assert (=> b!7548784 (= e!4496876 e!4496872)))

(declare-fun res!3025609 () Bool)

(assert (=> b!7548784 (= res!3025609 (not (nullable!8697 (reg!20266 r!24333))))))

(assert (=> b!7548784 (=> (not res!3025609) (not e!4496872))))

(declare-fun d!2312566 () Bool)

(declare-fun res!3025607 () Bool)

(assert (=> d!2312566 (=> res!3025607 e!4496875)))

(assert (=> d!2312566 (= res!3025607 ((_ is ElementMatch!19937) r!24333))))

(assert (=> d!2312566 (= (validRegex!10365 r!24333) e!4496875)))

(declare-fun b!7548785 () Bool)

(assert (=> b!7548785 (= e!4496874 e!4496878)))

(declare-fun res!3025610 () Bool)

(assert (=> b!7548785 (=> (not res!3025610) (not e!4496878))))

(assert (=> b!7548785 (= res!3025610 call!692228)))

(declare-fun b!7548786 () Bool)

(assert (=> b!7548786 (= e!4496872 call!692227)))

(declare-fun bm!692223 () Bool)

(assert (=> bm!692223 (= call!692227 (validRegex!10365 (ite c!1393404 (reg!20266 r!24333) (ite c!1393403 (regTwo!40387 r!24333) (regTwo!40386 r!24333)))))))

(declare-fun b!7548787 () Bool)

(assert (=> b!7548787 (= e!4496877 call!692226)))

(declare-fun b!7548788 () Bool)

(assert (=> b!7548788 (= e!4496876 e!4496873)))

(assert (=> b!7548788 (= c!1393403 ((_ is Union!19937) r!24333))))

(assert (= (and d!2312566 (not res!3025607)) b!7548782))

(assert (= (and b!7548782 c!1393404) b!7548784))

(assert (= (and b!7548782 (not c!1393404)) b!7548788))

(assert (= (and b!7548784 res!3025609) b!7548786))

(assert (= (and b!7548788 c!1393403) b!7548783))

(assert (= (and b!7548788 (not c!1393403)) b!7548780))

(assert (= (and b!7548783 res!3025606) b!7548787))

(assert (= (and b!7548780 (not res!3025608)) b!7548785))

(assert (= (and b!7548785 res!3025610) b!7548781))

(assert (= (or b!7548783 b!7548785) bm!692222))

(assert (= (or b!7548787 b!7548781) bm!692221))

(assert (= (or b!7548786 bm!692221) bm!692223))

(declare-fun m!8116288 () Bool)

(assert (=> bm!692222 m!8116288))

(declare-fun m!8116290 () Bool)

(assert (=> b!7548784 m!8116290))

(declare-fun m!8116292 () Bool)

(assert (=> bm!692223 m!8116292))

(assert (=> b!7548306 d!2312566))

(declare-fun e!4496881 () Bool)

(assert (=> b!7548292 (= tp!2195851 e!4496881)))

(declare-fun b!7548802 () Bool)

(declare-fun tp!2195935 () Bool)

(declare-fun tp!2195936 () Bool)

(assert (=> b!7548802 (= e!4496881 (and tp!2195935 tp!2195936))))

(declare-fun b!7548801 () Bool)

(declare-fun tp!2195933 () Bool)

(assert (=> b!7548801 (= e!4496881 tp!2195933)))

(declare-fun b!7548799 () Bool)

(assert (=> b!7548799 (= e!4496881 tp_is_empty!50229)))

(declare-fun b!7548800 () Bool)

(declare-fun tp!2195934 () Bool)

(declare-fun tp!2195937 () Bool)

(assert (=> b!7548800 (= e!4496881 (and tp!2195934 tp!2195937))))

(assert (= (and b!7548292 ((_ is ElementMatch!19937) (reg!20266 r!24333))) b!7548799))

(assert (= (and b!7548292 ((_ is Concat!28782) (reg!20266 r!24333))) b!7548800))

(assert (= (and b!7548292 ((_ is Star!19937) (reg!20266 r!24333))) b!7548801))

(assert (= (and b!7548292 ((_ is Union!19937) (reg!20266 r!24333))) b!7548802))

(declare-fun e!4496882 () Bool)

(assert (=> b!7548313 (= tp!2195847 e!4496882)))

(declare-fun b!7548806 () Bool)

(declare-fun tp!2195940 () Bool)

(declare-fun tp!2195941 () Bool)

(assert (=> b!7548806 (= e!4496882 (and tp!2195940 tp!2195941))))

(declare-fun b!7548805 () Bool)

(declare-fun tp!2195938 () Bool)

(assert (=> b!7548805 (= e!4496882 tp!2195938)))

(declare-fun b!7548803 () Bool)

(assert (=> b!7548803 (= e!4496882 tp_is_empty!50229)))

(declare-fun b!7548804 () Bool)

(declare-fun tp!2195939 () Bool)

(declare-fun tp!2195942 () Bool)

(assert (=> b!7548804 (= e!4496882 (and tp!2195939 tp!2195942))))

(assert (= (and b!7548313 ((_ is ElementMatch!19937) (regOne!40387 baseR!101))) b!7548803))

(assert (= (and b!7548313 ((_ is Concat!28782) (regOne!40387 baseR!101))) b!7548804))

(assert (= (and b!7548313 ((_ is Star!19937) (regOne!40387 baseR!101))) b!7548805))

(assert (= (and b!7548313 ((_ is Union!19937) (regOne!40387 baseR!101))) b!7548806))

(declare-fun e!4496883 () Bool)

(assert (=> b!7548313 (= tp!2195855 e!4496883)))

(declare-fun b!7548810 () Bool)

(declare-fun tp!2195945 () Bool)

(declare-fun tp!2195946 () Bool)

(assert (=> b!7548810 (= e!4496883 (and tp!2195945 tp!2195946))))

(declare-fun b!7548809 () Bool)

(declare-fun tp!2195943 () Bool)

(assert (=> b!7548809 (= e!4496883 tp!2195943)))

(declare-fun b!7548807 () Bool)

(assert (=> b!7548807 (= e!4496883 tp_is_empty!50229)))

(declare-fun b!7548808 () Bool)

(declare-fun tp!2195944 () Bool)

(declare-fun tp!2195947 () Bool)

(assert (=> b!7548808 (= e!4496883 (and tp!2195944 tp!2195947))))

(assert (= (and b!7548313 ((_ is ElementMatch!19937) (regTwo!40387 baseR!101))) b!7548807))

(assert (= (and b!7548313 ((_ is Concat!28782) (regTwo!40387 baseR!101))) b!7548808))

(assert (= (and b!7548313 ((_ is Star!19937) (regTwo!40387 baseR!101))) b!7548809))

(assert (= (and b!7548313 ((_ is Union!19937) (regTwo!40387 baseR!101))) b!7548810))

(declare-fun e!4496884 () Bool)

(assert (=> b!7548307 (= tp!2195848 e!4496884)))

(declare-fun b!7548814 () Bool)

(declare-fun tp!2195950 () Bool)

(declare-fun tp!2195951 () Bool)

(assert (=> b!7548814 (= e!4496884 (and tp!2195950 tp!2195951))))

(declare-fun b!7548813 () Bool)

(declare-fun tp!2195948 () Bool)

(assert (=> b!7548813 (= e!4496884 tp!2195948)))

(declare-fun b!7548811 () Bool)

(assert (=> b!7548811 (= e!4496884 tp_is_empty!50229)))

(declare-fun b!7548812 () Bool)

(declare-fun tp!2195949 () Bool)

(declare-fun tp!2195952 () Bool)

(assert (=> b!7548812 (= e!4496884 (and tp!2195949 tp!2195952))))

(assert (= (and b!7548307 ((_ is ElementMatch!19937) (regOne!40387 r!24333))) b!7548811))

(assert (= (and b!7548307 ((_ is Concat!28782) (regOne!40387 r!24333))) b!7548812))

(assert (= (and b!7548307 ((_ is Star!19937) (regOne!40387 r!24333))) b!7548813))

(assert (= (and b!7548307 ((_ is Union!19937) (regOne!40387 r!24333))) b!7548814))

(declare-fun e!4496885 () Bool)

(assert (=> b!7548307 (= tp!2195845 e!4496885)))

(declare-fun b!7548818 () Bool)

(declare-fun tp!2195955 () Bool)

(declare-fun tp!2195956 () Bool)

(assert (=> b!7548818 (= e!4496885 (and tp!2195955 tp!2195956))))

(declare-fun b!7548817 () Bool)

(declare-fun tp!2195953 () Bool)

(assert (=> b!7548817 (= e!4496885 tp!2195953)))

(declare-fun b!7548815 () Bool)

(assert (=> b!7548815 (= e!4496885 tp_is_empty!50229)))

(declare-fun b!7548816 () Bool)

(declare-fun tp!2195954 () Bool)

(declare-fun tp!2195957 () Bool)

(assert (=> b!7548816 (= e!4496885 (and tp!2195954 tp!2195957))))

(assert (= (and b!7548307 ((_ is ElementMatch!19937) (regTwo!40387 r!24333))) b!7548815))

(assert (= (and b!7548307 ((_ is Concat!28782) (regTwo!40387 r!24333))) b!7548816))

(assert (= (and b!7548307 ((_ is Star!19937) (regTwo!40387 r!24333))) b!7548817))

(assert (= (and b!7548307 ((_ is Union!19937) (regTwo!40387 r!24333))) b!7548818))

(declare-fun e!4496886 () Bool)

(assert (=> b!7548304 (= tp!2195857 e!4496886)))

(declare-fun b!7548822 () Bool)

(declare-fun tp!2195960 () Bool)

(declare-fun tp!2195961 () Bool)

(assert (=> b!7548822 (= e!4496886 (and tp!2195960 tp!2195961))))

(declare-fun b!7548821 () Bool)

(declare-fun tp!2195958 () Bool)

(assert (=> b!7548821 (= e!4496886 tp!2195958)))

(declare-fun b!7548819 () Bool)

(assert (=> b!7548819 (= e!4496886 tp_is_empty!50229)))

(declare-fun b!7548820 () Bool)

(declare-fun tp!2195959 () Bool)

(declare-fun tp!2195962 () Bool)

(assert (=> b!7548820 (= e!4496886 (and tp!2195959 tp!2195962))))

(assert (= (and b!7548304 ((_ is ElementMatch!19937) (reg!20266 baseR!101))) b!7548819))

(assert (= (and b!7548304 ((_ is Concat!28782) (reg!20266 baseR!101))) b!7548820))

(assert (= (and b!7548304 ((_ is Star!19937) (reg!20266 baseR!101))) b!7548821))

(assert (= (and b!7548304 ((_ is Union!19937) (reg!20266 baseR!101))) b!7548822))

(declare-fun e!4496887 () Bool)

(assert (=> b!7548309 (= tp!2195849 e!4496887)))

(declare-fun b!7548826 () Bool)

(declare-fun tp!2195965 () Bool)

(declare-fun tp!2195966 () Bool)

(assert (=> b!7548826 (= e!4496887 (and tp!2195965 tp!2195966))))

(declare-fun b!7548825 () Bool)

(declare-fun tp!2195963 () Bool)

(assert (=> b!7548825 (= e!4496887 tp!2195963)))

(declare-fun b!7548823 () Bool)

(assert (=> b!7548823 (= e!4496887 tp_is_empty!50229)))

(declare-fun b!7548824 () Bool)

(declare-fun tp!2195964 () Bool)

(declare-fun tp!2195967 () Bool)

(assert (=> b!7548824 (= e!4496887 (and tp!2195964 tp!2195967))))

(assert (= (and b!7548309 ((_ is ElementMatch!19937) (regOne!40386 baseR!101))) b!7548823))

(assert (= (and b!7548309 ((_ is Concat!28782) (regOne!40386 baseR!101))) b!7548824))

(assert (= (and b!7548309 ((_ is Star!19937) (regOne!40386 baseR!101))) b!7548825))

(assert (= (and b!7548309 ((_ is Union!19937) (regOne!40386 baseR!101))) b!7548826))

(declare-fun e!4496888 () Bool)

(assert (=> b!7548309 (= tp!2195846 e!4496888)))

(declare-fun b!7548830 () Bool)

(declare-fun tp!2195970 () Bool)

(declare-fun tp!2195971 () Bool)

(assert (=> b!7548830 (= e!4496888 (and tp!2195970 tp!2195971))))

(declare-fun b!7548829 () Bool)

(declare-fun tp!2195968 () Bool)

(assert (=> b!7548829 (= e!4496888 tp!2195968)))

(declare-fun b!7548827 () Bool)

(assert (=> b!7548827 (= e!4496888 tp_is_empty!50229)))

(declare-fun b!7548828 () Bool)

(declare-fun tp!2195969 () Bool)

(declare-fun tp!2195972 () Bool)

(assert (=> b!7548828 (= e!4496888 (and tp!2195969 tp!2195972))))

(assert (= (and b!7548309 ((_ is ElementMatch!19937) (regTwo!40386 baseR!101))) b!7548827))

(assert (= (and b!7548309 ((_ is Concat!28782) (regTwo!40386 baseR!101))) b!7548828))

(assert (= (and b!7548309 ((_ is Star!19937) (regTwo!40386 baseR!101))) b!7548829))

(assert (= (and b!7548309 ((_ is Union!19937) (regTwo!40386 baseR!101))) b!7548830))

(declare-fun b!7548835 () Bool)

(declare-fun e!4496891 () Bool)

(declare-fun tp!2195975 () Bool)

(assert (=> b!7548835 (= e!4496891 (and tp_is_empty!50229 tp!2195975))))

(assert (=> b!7548300 (= tp!2195850 e!4496891)))

(assert (= (and b!7548300 ((_ is Cons!72696) (t!387537 input!7874))) b!7548835))

(declare-fun b!7548836 () Bool)

(declare-fun e!4496892 () Bool)

(declare-fun tp!2195976 () Bool)

(assert (=> b!7548836 (= e!4496892 (and tp_is_empty!50229 tp!2195976))))

(assert (=> b!7548294 (= tp!2195856 e!4496892)))

(assert (= (and b!7548294 ((_ is Cons!72696) (t!387537 testedP!423))) b!7548836))

(declare-fun b!7548837 () Bool)

(declare-fun e!4496893 () Bool)

(declare-fun tp!2195977 () Bool)

(assert (=> b!7548837 (= e!4496893 (and tp_is_empty!50229 tp!2195977))))

(assert (=> b!7548310 (= tp!2195852 e!4496893)))

(assert (= (and b!7548310 ((_ is Cons!72696) (t!387537 knownP!30))) b!7548837))

(declare-fun e!4496894 () Bool)

(assert (=> b!7548295 (= tp!2195854 e!4496894)))

(declare-fun b!7548841 () Bool)

(declare-fun tp!2195980 () Bool)

(declare-fun tp!2195981 () Bool)

(assert (=> b!7548841 (= e!4496894 (and tp!2195980 tp!2195981))))

(declare-fun b!7548840 () Bool)

(declare-fun tp!2195978 () Bool)

(assert (=> b!7548840 (= e!4496894 tp!2195978)))

(declare-fun b!7548838 () Bool)

(assert (=> b!7548838 (= e!4496894 tp_is_empty!50229)))

(declare-fun b!7548839 () Bool)

(declare-fun tp!2195979 () Bool)

(declare-fun tp!2195982 () Bool)

(assert (=> b!7548839 (= e!4496894 (and tp!2195979 tp!2195982))))

(assert (= (and b!7548295 ((_ is ElementMatch!19937) (regOne!40386 r!24333))) b!7548838))

(assert (= (and b!7548295 ((_ is Concat!28782) (regOne!40386 r!24333))) b!7548839))

(assert (= (and b!7548295 ((_ is Star!19937) (regOne!40386 r!24333))) b!7548840))

(assert (= (and b!7548295 ((_ is Union!19937) (regOne!40386 r!24333))) b!7548841))

(declare-fun e!4496895 () Bool)

(assert (=> b!7548295 (= tp!2195853 e!4496895)))

(declare-fun b!7548845 () Bool)

(declare-fun tp!2195985 () Bool)

(declare-fun tp!2195986 () Bool)

(assert (=> b!7548845 (= e!4496895 (and tp!2195985 tp!2195986))))

(declare-fun b!7548844 () Bool)

(declare-fun tp!2195983 () Bool)

(assert (=> b!7548844 (= e!4496895 tp!2195983)))

(declare-fun b!7548842 () Bool)

(assert (=> b!7548842 (= e!4496895 tp_is_empty!50229)))

(declare-fun b!7548843 () Bool)

(declare-fun tp!2195984 () Bool)

(declare-fun tp!2195987 () Bool)

(assert (=> b!7548843 (= e!4496895 (and tp!2195984 tp!2195987))))

(assert (= (and b!7548295 ((_ is ElementMatch!19937) (regTwo!40386 r!24333))) b!7548842))

(assert (= (and b!7548295 ((_ is Concat!28782) (regTwo!40386 r!24333))) b!7548843))

(assert (= (and b!7548295 ((_ is Star!19937) (regTwo!40386 r!24333))) b!7548844))

(assert (= (and b!7548295 ((_ is Union!19937) (regTwo!40386 r!24333))) b!7548845))

(check-sat (not b!7548757) (not b!7548546) (not b!7548440) (not b!7548729) (not b!7548801) (not b!7548762) (not b!7548408) (not b!7548814) (not d!2312496) (not b!7548386) (not b!7548845) (not d!2312476) (not b!7548837) (not d!2312464) tp_is_empty!50229 (not d!2312494) (not b!7548812) (not b!7548820) (not b!7548550) (not d!2312520) (not d!2312560) (not b!7548335) (not d!2312484) (not b!7548826) (not b!7548717) (not b!7548730) (not b!7548446) (not b!7548809) (not b!7548549) (not d!2312480) (not b!7548829) (not b!7548766) (not b!7548444) (not b!7548813) (not b!7548718) (not b!7548389) (not b!7548767) (not d!2312554) (not b!7548844) (not b!7548808) (not d!2312466) (not b!7548445) (not b!7548816) (not b!7548334) (not b!7548443) (not b!7548715) (not d!2312524) (not b!7548810) (not bm!692192) (not d!2312492) (not b!7548438) (not b!7548800) (not b!7548817) (not b!7548728) (not b!7548545) (not bm!692218) (not b!7548841) (not b!7548711) (not bm!692210) (not b!7548732) (not b!7548825) (not d!2312550) (not b!7548733) (not bm!692219) (not b!7548806) (not b!7548843) (not b!7548436) (not b!7548818) (not d!2312482) (not b!7548824) (not b!7548725) (not b!7548828) (not b!7548712) (not b!7548839) (not b!7548769) (not b!7548734) (not b!7548822) (not bm!692223) (not b!7548840) (not b!7548763) (not d!2312456) (not d!2312462) (not d!2312458) (not d!2312470) (not b!7548836) (not b!7548716) (not b!7548779) (not b!7548541) (not b!7548777) (not b!7548409) (not b!7548821) (not b!7548333) (not bm!692222) (not b!7548830) (not b!7548804) (not bm!692220) (not b!7548805) (not b!7548768) (not b!7548345) (not b!7548802) (not b!7548365) (not b!7548420) (not b!7548835) (not b!7548784) (not d!2312522) (not b!7548407) (not b!7548435) (not b!7548346) (not bm!692194) (not b!7548390))
(check-sat)
