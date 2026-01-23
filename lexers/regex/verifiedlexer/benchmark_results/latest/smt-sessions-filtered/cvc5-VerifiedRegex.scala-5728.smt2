; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284514 () Bool)

(assert start!284514)

(declare-fun b!2923260 () Bool)

(declare-fun e!1844045 () Bool)

(declare-fun tp!937732 () Bool)

(declare-fun tp!937733 () Bool)

(assert (=> b!2923260 (= e!1844045 (and tp!937732 tp!937733))))

(declare-fun b!2923261 () Bool)

(declare-fun e!1844044 () Bool)

(declare-fun tp_is_empty!15575 () Bool)

(declare-fun tp!937734 () Bool)

(assert (=> b!2923261 (= e!1844044 (and tp_is_empty!15575 tp!937734))))

(declare-fun b!2923262 () Bool)

(assert (=> b!2923262 (= e!1844045 tp_is_empty!15575)))

(declare-fun res!1206684 () Bool)

(declare-fun e!1844048 () Bool)

(assert (=> start!284514 (=> (not res!1206684) (not e!1844048))))

(declare-datatypes ((C!18198 0))(
  ( (C!18199 (val!11135 Int)) )
))
(declare-datatypes ((Regex!9006 0))(
  ( (ElementMatch!9006 (c!477172 C!18198)) (Concat!14327 (regOne!18524 Regex!9006) (regTwo!18524 Regex!9006)) (EmptyExpr!9006) (Star!9006 (reg!9335 Regex!9006)) (EmptyLang!9006) (Union!9006 (regOne!18525 Regex!9006) (regTwo!18525 Regex!9006)) )
))
(declare-fun r!17423 () Regex!9006)

(declare-fun validRegex!3739 (Regex!9006) Bool)

(assert (=> start!284514 (= res!1206684 (validRegex!3739 r!17423))))

(assert (=> start!284514 e!1844048))

(assert (=> start!284514 e!1844045))

(assert (=> start!284514 e!1844044))

(declare-fun b!2923263 () Bool)

(declare-fun e!1844047 () Bool)

(assert (=> b!2923263 (= e!1844048 (not e!1844047))))

(declare-fun res!1206682 () Bool)

(assert (=> b!2923263 (=> res!1206682 e!1844047)))

(declare-fun lt!1026134 () Bool)

(assert (=> b!2923263 (= res!1206682 (or (not lt!1026134) (is-Concat!14327 r!17423) (not (is-Union!9006 r!17423))))))

(declare-datatypes ((List!34871 0))(
  ( (Nil!34747) (Cons!34747 (h!40167 C!18198) (t!233936 List!34871)) )
))
(declare-fun s!11993 () List!34871)

(declare-fun matchRSpec!1143 (Regex!9006 List!34871) Bool)

(assert (=> b!2923263 (= lt!1026134 (matchRSpec!1143 r!17423 s!11993))))

(declare-fun matchR!3888 (Regex!9006 List!34871) Bool)

(assert (=> b!2923263 (= lt!1026134 (matchR!3888 r!17423 s!11993))))

(declare-datatypes ((Unit!48351 0))(
  ( (Unit!48352) )
))
(declare-fun lt!1026130 () Unit!48351)

(declare-fun mainMatchTheorem!1143 (Regex!9006 List!34871) Unit!48351)

(assert (=> b!2923263 (= lt!1026130 (mainMatchTheorem!1143 r!17423 s!11993))))

(declare-fun b!2923264 () Bool)

(declare-fun e!1844049 () Bool)

(assert (=> b!2923264 (= e!1844049 (validRegex!3739 (regTwo!18525 r!17423)))))

(declare-fun b!2923265 () Bool)

(declare-fun e!1844050 () Bool)

(assert (=> b!2923265 (= e!1844047 e!1844050)))

(declare-fun res!1206685 () Bool)

(assert (=> b!2923265 (=> res!1206685 e!1844050)))

(declare-fun lt!1026137 () Bool)

(assert (=> b!2923265 (= res!1206685 lt!1026137)))

(declare-fun e!1844046 () Bool)

(assert (=> b!2923265 e!1844046))

(declare-fun res!1206683 () Bool)

(assert (=> b!2923265 (=> res!1206683 e!1844046)))

(assert (=> b!2923265 (= res!1206683 lt!1026137)))

(assert (=> b!2923265 (= lt!1026137 (matchR!3888 (regOne!18525 r!17423) s!11993))))

(declare-fun lt!1026133 () Unit!48351)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!255 (Regex!9006 Regex!9006 List!34871) Unit!48351)

(assert (=> b!2923265 (= lt!1026133 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!255 (regOne!18525 r!17423) (regTwo!18525 r!17423) s!11993))))

(declare-fun b!2923266 () Bool)

(declare-fun tp!937731 () Bool)

(assert (=> b!2923266 (= e!1844045 tp!937731)))

(declare-fun b!2923267 () Bool)

(assert (=> b!2923267 (= e!1844050 e!1844049)))

(declare-fun res!1206681 () Bool)

(assert (=> b!2923267 (=> res!1206681 e!1844049)))

(declare-fun lt!1026135 () Bool)

(assert (=> b!2923267 (= res!1206681 (not lt!1026135))))

(declare-fun lt!1026136 () Bool)

(assert (=> b!2923267 (= lt!1026136 lt!1026135)))

(declare-fun lt!1026131 () Regex!9006)

(assert (=> b!2923267 (= lt!1026135 (matchR!3888 lt!1026131 s!11993))))

(assert (=> b!2923267 (= lt!1026136 (matchR!3888 (regTwo!18525 r!17423) s!11993))))

(declare-fun simplify!35 (Regex!9006) Regex!9006)

(assert (=> b!2923267 (= lt!1026131 (simplify!35 (regTwo!18525 r!17423)))))

(declare-fun lt!1026132 () Unit!48351)

(declare-fun lemmaSimplifySound!33 (Regex!9006 List!34871) Unit!48351)

(assert (=> b!2923267 (= lt!1026132 (lemmaSimplifySound!33 (regTwo!18525 r!17423) s!11993))))

(declare-fun b!2923268 () Bool)

(assert (=> b!2923268 (= e!1844046 (matchR!3888 (regTwo!18525 r!17423) s!11993))))

(declare-fun b!2923269 () Bool)

(declare-fun tp!937730 () Bool)

(declare-fun tp!937735 () Bool)

(assert (=> b!2923269 (= e!1844045 (and tp!937730 tp!937735))))

(assert (= (and start!284514 res!1206684) b!2923263))

(assert (= (and b!2923263 (not res!1206682)) b!2923265))

(assert (= (and b!2923265 (not res!1206683)) b!2923268))

(assert (= (and b!2923265 (not res!1206685)) b!2923267))

(assert (= (and b!2923267 (not res!1206681)) b!2923264))

(assert (= (and start!284514 (is-ElementMatch!9006 r!17423)) b!2923262))

(assert (= (and start!284514 (is-Concat!14327 r!17423)) b!2923269))

(assert (= (and start!284514 (is-Star!9006 r!17423)) b!2923266))

(assert (= (and start!284514 (is-Union!9006 r!17423)) b!2923260))

(assert (= (and start!284514 (is-Cons!34747 s!11993)) b!2923261))

(declare-fun m!3317865 () Bool)

(assert (=> b!2923265 m!3317865))

(declare-fun m!3317867 () Bool)

(assert (=> b!2923265 m!3317867))

(declare-fun m!3317869 () Bool)

(assert (=> b!2923267 m!3317869))

(declare-fun m!3317871 () Bool)

(assert (=> b!2923267 m!3317871))

(declare-fun m!3317873 () Bool)

(assert (=> b!2923267 m!3317873))

(declare-fun m!3317875 () Bool)

(assert (=> b!2923267 m!3317875))

(declare-fun m!3317877 () Bool)

(assert (=> b!2923263 m!3317877))

(declare-fun m!3317879 () Bool)

(assert (=> b!2923263 m!3317879))

(declare-fun m!3317881 () Bool)

(assert (=> b!2923263 m!3317881))

(declare-fun m!3317883 () Bool)

(assert (=> b!2923264 m!3317883))

(declare-fun m!3317885 () Bool)

(assert (=> start!284514 m!3317885))

(assert (=> b!2923268 m!3317871))

(push 1)

(assert (not b!2923267))

(assert (not b!2923265))

(assert (not b!2923266))

(assert (not b!2923260))

(assert (not b!2923264))

(assert (not b!2923269))

(assert (not start!284514))

(assert (not b!2923268))

(assert (not b!2923261))

(assert tp_is_empty!15575)

(assert (not b!2923263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2923318 () Bool)

(declare-fun res!1206712 () Bool)

(declare-fun e!1844087 () Bool)

(assert (=> b!2923318 (=> res!1206712 e!1844087)))

(assert (=> b!2923318 (= res!1206712 (not (is-Concat!14327 r!17423)))))

(declare-fun e!1844088 () Bool)

(assert (=> b!2923318 (= e!1844088 e!1844087)))

(declare-fun b!2923319 () Bool)

(declare-fun e!1844091 () Bool)

(declare-fun call!191494 () Bool)

(assert (=> b!2923319 (= e!1844091 call!191494)))

(declare-fun bm!191488 () Bool)

(declare-fun call!191493 () Bool)

(assert (=> bm!191488 (= call!191494 call!191493)))

(declare-fun b!2923320 () Bool)

(declare-fun e!1844089 () Bool)

(declare-fun call!191495 () Bool)

(assert (=> b!2923320 (= e!1844089 call!191495)))

(declare-fun b!2923321 () Bool)

(declare-fun e!1844086 () Bool)

(declare-fun e!1844090 () Bool)

(assert (=> b!2923321 (= e!1844086 e!1844090)))

(declare-fun c!477179 () Bool)

(assert (=> b!2923321 (= c!477179 (is-Star!9006 r!17423))))

(declare-fun bm!191489 () Bool)

(declare-fun c!477178 () Bool)

(assert (=> bm!191489 (= call!191495 (validRegex!3739 (ite c!477178 (regOne!18525 r!17423) (regTwo!18524 r!17423))))))

(declare-fun bm!191490 () Bool)

(assert (=> bm!191490 (= call!191493 (validRegex!3739 (ite c!477179 (reg!9335 r!17423) (ite c!477178 (regTwo!18525 r!17423) (regOne!18524 r!17423)))))))

(declare-fun b!2923322 () Bool)

(declare-fun e!1844092 () Bool)

(assert (=> b!2923322 (= e!1844090 e!1844092)))

(declare-fun res!1206715 () Bool)

(declare-fun nullable!2826 (Regex!9006) Bool)

(assert (=> b!2923322 (= res!1206715 (not (nullable!2826 (reg!9335 r!17423))))))

(assert (=> b!2923322 (=> (not res!1206715) (not e!1844092))))

(declare-fun d!838721 () Bool)

(declare-fun res!1206711 () Bool)

(assert (=> d!838721 (=> res!1206711 e!1844086)))

(assert (=> d!838721 (= res!1206711 (is-ElementMatch!9006 r!17423))))

(assert (=> d!838721 (= (validRegex!3739 r!17423) e!1844086)))

(declare-fun b!2923323 () Bool)

(assert (=> b!2923323 (= e!1844090 e!1844088)))

(assert (=> b!2923323 (= c!477178 (is-Union!9006 r!17423))))

(declare-fun b!2923324 () Bool)

(assert (=> b!2923324 (= e!1844087 e!1844089)))

(declare-fun res!1206713 () Bool)

(assert (=> b!2923324 (=> (not res!1206713) (not e!1844089))))

(assert (=> b!2923324 (= res!1206713 call!191494)))

(declare-fun b!2923325 () Bool)

(declare-fun res!1206714 () Bool)

(assert (=> b!2923325 (=> (not res!1206714) (not e!1844091))))

(assert (=> b!2923325 (= res!1206714 call!191495)))

(assert (=> b!2923325 (= e!1844088 e!1844091)))

(declare-fun b!2923326 () Bool)

(assert (=> b!2923326 (= e!1844092 call!191493)))

(assert (= (and d!838721 (not res!1206711)) b!2923321))

(assert (= (and b!2923321 c!477179) b!2923322))

(assert (= (and b!2923321 (not c!477179)) b!2923323))

(assert (= (and b!2923322 res!1206715) b!2923326))

(assert (= (and b!2923323 c!477178) b!2923325))

(assert (= (and b!2923323 (not c!477178)) b!2923318))

(assert (= (and b!2923325 res!1206714) b!2923319))

(assert (= (and b!2923318 (not res!1206712)) b!2923324))

(assert (= (and b!2923324 res!1206713) b!2923320))

(assert (= (or b!2923325 b!2923320) bm!191489))

(assert (= (or b!2923319 b!2923324) bm!191488))

(assert (= (or b!2923326 bm!191488) bm!191490))

(declare-fun m!3317909 () Bool)

(assert (=> bm!191489 m!3317909))

(declare-fun m!3317911 () Bool)

(assert (=> bm!191490 m!3317911))

(declare-fun m!3317913 () Bool)

(assert (=> b!2923322 m!3317913))

(assert (=> start!284514 d!838721))

(declare-fun b!2923383 () Bool)

(declare-fun res!1206748 () Bool)

(declare-fun e!1844125 () Bool)

(assert (=> b!2923383 (=> (not res!1206748) (not e!1844125))))

(declare-fun isEmpty!18996 (List!34871) Bool)

(declare-fun tail!4725 (List!34871) List!34871)

(assert (=> b!2923383 (= res!1206748 (isEmpty!18996 (tail!4725 s!11993)))))

(declare-fun b!2923384 () Bool)

(declare-fun e!1844121 () Bool)

(declare-fun e!1844127 () Bool)

(assert (=> b!2923384 (= e!1844121 e!1844127)))

(declare-fun res!1206750 () Bool)

(assert (=> b!2923384 (=> (not res!1206750) (not e!1844127))))

(declare-fun lt!1026166 () Bool)

(assert (=> b!2923384 (= res!1206750 (not lt!1026166))))

(declare-fun b!2923385 () Bool)

(declare-fun res!1206754 () Bool)

(declare-fun e!1844123 () Bool)

(assert (=> b!2923385 (=> res!1206754 e!1844123)))

(assert (=> b!2923385 (= res!1206754 (not (isEmpty!18996 (tail!4725 s!11993))))))

(declare-fun b!2923386 () Bool)

(declare-fun res!1206752 () Bool)

(assert (=> b!2923386 (=> (not res!1206752) (not e!1844125))))

(declare-fun call!191500 () Bool)

(assert (=> b!2923386 (= res!1206752 (not call!191500))))

(declare-fun b!2923387 () Bool)

(assert (=> b!2923387 (= e!1844127 e!1844123)))

(declare-fun res!1206749 () Bool)

(assert (=> b!2923387 (=> res!1206749 e!1844123)))

(assert (=> b!2923387 (= res!1206749 call!191500)))

(declare-fun bm!191493 () Bool)

(assert (=> bm!191493 (= call!191500 (isEmpty!18996 s!11993))))

(declare-fun b!2923388 () Bool)

(declare-fun res!1206751 () Bool)

(assert (=> b!2923388 (=> res!1206751 e!1844121)))

(assert (=> b!2923388 (= res!1206751 e!1844125)))

(declare-fun res!1206755 () Bool)

(assert (=> b!2923388 (=> (not res!1206755) (not e!1844125))))

(assert (=> b!2923388 (= res!1206755 lt!1026166)))

(declare-fun b!2923389 () Bool)

(declare-fun e!1844126 () Bool)

(declare-fun derivativeStep!2440 (Regex!9006 C!18198) Regex!9006)

(declare-fun head!6499 (List!34871) C!18198)

(assert (=> b!2923389 (= e!1844126 (matchR!3888 (derivativeStep!2440 (regOne!18525 r!17423) (head!6499 s!11993)) (tail!4725 s!11993)))))

(declare-fun b!2923390 () Bool)

(declare-fun e!1844124 () Bool)

(declare-fun e!1844122 () Bool)

(assert (=> b!2923390 (= e!1844124 e!1844122)))

(declare-fun c!477193 () Bool)

(assert (=> b!2923390 (= c!477193 (is-EmptyLang!9006 (regOne!18525 r!17423)))))

(declare-fun b!2923391 () Bool)

(assert (=> b!2923391 (= e!1844126 (nullable!2826 (regOne!18525 r!17423)))))

(declare-fun d!838725 () Bool)

(assert (=> d!838725 e!1844124))

(declare-fun c!477192 () Bool)

(assert (=> d!838725 (= c!477192 (is-EmptyExpr!9006 (regOne!18525 r!17423)))))

(assert (=> d!838725 (= lt!1026166 e!1844126)))

(declare-fun c!477194 () Bool)

(assert (=> d!838725 (= c!477194 (isEmpty!18996 s!11993))))

(assert (=> d!838725 (validRegex!3739 (regOne!18525 r!17423))))

(assert (=> d!838725 (= (matchR!3888 (regOne!18525 r!17423) s!11993) lt!1026166)))

(declare-fun b!2923392 () Bool)

(assert (=> b!2923392 (= e!1844124 (= lt!1026166 call!191500))))

(declare-fun b!2923393 () Bool)

(declare-fun res!1206753 () Bool)

(assert (=> b!2923393 (=> res!1206753 e!1844121)))

(assert (=> b!2923393 (= res!1206753 (not (is-ElementMatch!9006 (regOne!18525 r!17423))))))

(assert (=> b!2923393 (= e!1844122 e!1844121)))

(declare-fun b!2923394 () Bool)

(assert (=> b!2923394 (= e!1844122 (not lt!1026166))))

(declare-fun b!2923395 () Bool)

(assert (=> b!2923395 (= e!1844125 (= (head!6499 s!11993) (c!477172 (regOne!18525 r!17423))))))

(declare-fun b!2923396 () Bool)

(assert (=> b!2923396 (= e!1844123 (not (= (head!6499 s!11993) (c!477172 (regOne!18525 r!17423)))))))

(assert (= (and d!838725 c!477194) b!2923391))

(assert (= (and d!838725 (not c!477194)) b!2923389))

(assert (= (and d!838725 c!477192) b!2923392))

(assert (= (and d!838725 (not c!477192)) b!2923390))

(assert (= (and b!2923390 c!477193) b!2923394))

(assert (= (and b!2923390 (not c!477193)) b!2923393))

(assert (= (and b!2923393 (not res!1206753)) b!2923388))

(assert (= (and b!2923388 res!1206755) b!2923386))

(assert (= (and b!2923386 res!1206752) b!2923383))

(assert (= (and b!2923383 res!1206748) b!2923395))

(assert (= (and b!2923388 (not res!1206751)) b!2923384))

(assert (= (and b!2923384 res!1206750) b!2923387))

(assert (= (and b!2923387 (not res!1206749)) b!2923385))

(assert (= (and b!2923385 (not res!1206754)) b!2923396))

(assert (= (or b!2923392 b!2923386 b!2923387) bm!191493))

(declare-fun m!3317915 () Bool)

(assert (=> b!2923391 m!3317915))

(declare-fun m!3317917 () Bool)

(assert (=> d!838725 m!3317917))

(declare-fun m!3317919 () Bool)

(assert (=> d!838725 m!3317919))

(declare-fun m!3317921 () Bool)

(assert (=> b!2923385 m!3317921))

(assert (=> b!2923385 m!3317921))

(declare-fun m!3317923 () Bool)

(assert (=> b!2923385 m!3317923))

(declare-fun m!3317925 () Bool)

(assert (=> b!2923396 m!3317925))

(assert (=> b!2923395 m!3317925))

(assert (=> bm!191493 m!3317917))

(assert (=> b!2923383 m!3317921))

(assert (=> b!2923383 m!3317921))

(assert (=> b!2923383 m!3317923))

(assert (=> b!2923389 m!3317925))

(assert (=> b!2923389 m!3317925))

(declare-fun m!3317927 () Bool)

(assert (=> b!2923389 m!3317927))

(assert (=> b!2923389 m!3317921))

(assert (=> b!2923389 m!3317927))

(assert (=> b!2923389 m!3317921))

(declare-fun m!3317929 () Bool)

(assert (=> b!2923389 m!3317929))

(assert (=> b!2923265 d!838725))

(declare-fun d!838727 () Bool)

(declare-fun e!1844133 () Bool)

(assert (=> d!838727 e!1844133))

(declare-fun res!1206760 () Bool)

(assert (=> d!838727 (=> res!1206760 e!1844133)))

(assert (=> d!838727 (= res!1206760 (matchR!3888 (regOne!18525 r!17423) s!11993))))

(declare-fun lt!1026169 () Unit!48351)

(declare-fun choose!17243 (Regex!9006 Regex!9006 List!34871) Unit!48351)

(assert (=> d!838727 (= lt!1026169 (choose!17243 (regOne!18525 r!17423) (regTwo!18525 r!17423) s!11993))))

(declare-fun e!1844132 () Bool)

(assert (=> d!838727 e!1844132))

(declare-fun res!1206761 () Bool)

(assert (=> d!838727 (=> (not res!1206761) (not e!1844132))))

(assert (=> d!838727 (= res!1206761 (validRegex!3739 (regOne!18525 r!17423)))))

(assert (=> d!838727 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!255 (regOne!18525 r!17423) (regTwo!18525 r!17423) s!11993) lt!1026169)))

(declare-fun b!2923401 () Bool)

(assert (=> b!2923401 (= e!1844132 (validRegex!3739 (regTwo!18525 r!17423)))))

(declare-fun b!2923402 () Bool)

(assert (=> b!2923402 (= e!1844133 (matchR!3888 (regTwo!18525 r!17423) s!11993))))

(assert (= (and d!838727 res!1206761) b!2923401))

(assert (= (and d!838727 (not res!1206760)) b!2923402))

(assert (=> d!838727 m!3317865))

(declare-fun m!3317931 () Bool)

(assert (=> d!838727 m!3317931))

(assert (=> d!838727 m!3317919))

(assert (=> b!2923401 m!3317883))

(assert (=> b!2923402 m!3317871))

(assert (=> b!2923265 d!838727))

(declare-fun b!2923403 () Bool)

(declare-fun res!1206763 () Bool)

(declare-fun e!1844135 () Bool)

(assert (=> b!2923403 (=> res!1206763 e!1844135)))

(assert (=> b!2923403 (= res!1206763 (not (is-Concat!14327 (regTwo!18525 r!17423))))))

(declare-fun e!1844136 () Bool)

(assert (=> b!2923403 (= e!1844136 e!1844135)))

(declare-fun b!2923404 () Bool)

(declare-fun e!1844139 () Bool)

(declare-fun call!191502 () Bool)

(assert (=> b!2923404 (= e!1844139 call!191502)))

(declare-fun bm!191496 () Bool)

(declare-fun call!191501 () Bool)

(assert (=> bm!191496 (= call!191502 call!191501)))

(declare-fun b!2923405 () Bool)

(declare-fun e!1844137 () Bool)

(declare-fun call!191503 () Bool)

(assert (=> b!2923405 (= e!1844137 call!191503)))

(declare-fun b!2923406 () Bool)

(declare-fun e!1844134 () Bool)

(declare-fun e!1844138 () Bool)

(assert (=> b!2923406 (= e!1844134 e!1844138)))

(declare-fun c!477196 () Bool)

(assert (=> b!2923406 (= c!477196 (is-Star!9006 (regTwo!18525 r!17423)))))

(declare-fun bm!191497 () Bool)

(declare-fun c!477195 () Bool)

(assert (=> bm!191497 (= call!191503 (validRegex!3739 (ite c!477195 (regOne!18525 (regTwo!18525 r!17423)) (regTwo!18524 (regTwo!18525 r!17423)))))))

(declare-fun bm!191498 () Bool)

(assert (=> bm!191498 (= call!191501 (validRegex!3739 (ite c!477196 (reg!9335 (regTwo!18525 r!17423)) (ite c!477195 (regTwo!18525 (regTwo!18525 r!17423)) (regOne!18524 (regTwo!18525 r!17423))))))))

(declare-fun b!2923407 () Bool)

(declare-fun e!1844140 () Bool)

(assert (=> b!2923407 (= e!1844138 e!1844140)))

(declare-fun res!1206766 () Bool)

(assert (=> b!2923407 (= res!1206766 (not (nullable!2826 (reg!9335 (regTwo!18525 r!17423)))))))

(assert (=> b!2923407 (=> (not res!1206766) (not e!1844140))))

(declare-fun d!838729 () Bool)

(declare-fun res!1206762 () Bool)

(assert (=> d!838729 (=> res!1206762 e!1844134)))

(assert (=> d!838729 (= res!1206762 (is-ElementMatch!9006 (regTwo!18525 r!17423)))))

(assert (=> d!838729 (= (validRegex!3739 (regTwo!18525 r!17423)) e!1844134)))

(declare-fun b!2923408 () Bool)

(assert (=> b!2923408 (= e!1844138 e!1844136)))

(assert (=> b!2923408 (= c!477195 (is-Union!9006 (regTwo!18525 r!17423)))))

(declare-fun b!2923409 () Bool)

(assert (=> b!2923409 (= e!1844135 e!1844137)))

(declare-fun res!1206764 () Bool)

(assert (=> b!2923409 (=> (not res!1206764) (not e!1844137))))

(assert (=> b!2923409 (= res!1206764 call!191502)))

(declare-fun b!2923410 () Bool)

(declare-fun res!1206765 () Bool)

(assert (=> b!2923410 (=> (not res!1206765) (not e!1844139))))

(assert (=> b!2923410 (= res!1206765 call!191503)))

(assert (=> b!2923410 (= e!1844136 e!1844139)))

(declare-fun b!2923411 () Bool)

(assert (=> b!2923411 (= e!1844140 call!191501)))

(assert (= (and d!838729 (not res!1206762)) b!2923406))

(assert (= (and b!2923406 c!477196) b!2923407))

(assert (= (and b!2923406 (not c!477196)) b!2923408))

(assert (= (and b!2923407 res!1206766) b!2923411))

(assert (= (and b!2923408 c!477195) b!2923410))

(assert (= (and b!2923408 (not c!477195)) b!2923403))

(assert (= (and b!2923410 res!1206765) b!2923404))

(assert (= (and b!2923403 (not res!1206763)) b!2923409))

(assert (= (and b!2923409 res!1206764) b!2923405))

(assert (= (or b!2923410 b!2923405) bm!191497))

(assert (= (or b!2923404 b!2923409) bm!191496))

(assert (= (or b!2923411 bm!191496) bm!191498))

(declare-fun m!3317933 () Bool)

(assert (=> bm!191497 m!3317933))

(declare-fun m!3317935 () Bool)

(assert (=> bm!191498 m!3317935))

(declare-fun m!3317937 () Bool)

(assert (=> b!2923407 m!3317937))

(assert (=> b!2923264 d!838729))

(declare-fun b!2923628 () Bool)

(assert (=> b!2923628 true))

(assert (=> b!2923628 true))

(declare-fun bs!524988 () Bool)

(declare-fun b!2923627 () Bool)

(assert (= bs!524988 (and b!2923627 b!2923628)))

(declare-fun lambda!108696 () Int)

(declare-fun lambda!108695 () Int)

(assert (=> bs!524988 (not (= lambda!108696 lambda!108695))))

(assert (=> b!2923627 true))

(assert (=> b!2923627 true))

(declare-fun b!2923625 () Bool)

(declare-fun e!1844270 () Bool)

(declare-fun e!1844275 () Bool)

(assert (=> b!2923625 (= e!1844270 e!1844275)))

(declare-fun res!1206849 () Bool)

(assert (=> b!2923625 (= res!1206849 (matchRSpec!1143 (regOne!18525 r!17423) s!11993))))

(assert (=> b!2923625 (=> res!1206849 e!1844275)))

(declare-fun b!2923626 () Bool)

(declare-fun e!1844272 () Bool)

(assert (=> b!2923626 (= e!1844270 e!1844272)))

(declare-fun c!477266 () Bool)

(assert (=> b!2923626 (= c!477266 (is-Star!9006 r!17423))))

(declare-fun d!838731 () Bool)

(declare-fun c!477263 () Bool)

(assert (=> d!838731 (= c!477263 (is-EmptyExpr!9006 r!17423))))

(declare-fun e!1844276 () Bool)

(assert (=> d!838731 (= (matchRSpec!1143 r!17423 s!11993) e!1844276)))

(declare-fun call!191544 () Bool)

(assert (=> b!2923627 (= e!1844272 call!191544)))

(declare-fun e!1844274 () Bool)

(assert (=> b!2923628 (= e!1844274 call!191544)))

(declare-fun b!2923629 () Bool)

(declare-fun c!477265 () Bool)

(assert (=> b!2923629 (= c!477265 (is-ElementMatch!9006 r!17423))))

(declare-fun e!1844273 () Bool)

(declare-fun e!1844271 () Bool)

(assert (=> b!2923629 (= e!1844273 e!1844271)))

(declare-fun b!2923630 () Bool)

(assert (=> b!2923630 (= e!1844276 e!1844273)))

(declare-fun res!1206848 () Bool)

(assert (=> b!2923630 (= res!1206848 (not (is-EmptyLang!9006 r!17423)))))

(assert (=> b!2923630 (=> (not res!1206848) (not e!1844273))))

(declare-fun b!2923631 () Bool)

(assert (=> b!2923631 (= e!1844275 (matchRSpec!1143 (regTwo!18525 r!17423) s!11993))))

(declare-fun bm!191539 () Bool)

(declare-fun call!191545 () Bool)

(assert (=> bm!191539 (= call!191545 (isEmpty!18996 s!11993))))

(declare-fun bm!191540 () Bool)

(declare-fun Exists!1376 (Int) Bool)

(assert (=> bm!191540 (= call!191544 (Exists!1376 (ite c!477266 lambda!108695 lambda!108696)))))

(declare-fun b!2923632 () Bool)

(assert (=> b!2923632 (= e!1844271 (= s!11993 (Cons!34747 (c!477172 r!17423) Nil!34747)))))

(declare-fun b!2923633 () Bool)

(declare-fun c!477264 () Bool)

(assert (=> b!2923633 (= c!477264 (is-Union!9006 r!17423))))

(assert (=> b!2923633 (= e!1844271 e!1844270)))

(declare-fun b!2923634 () Bool)

(assert (=> b!2923634 (= e!1844276 call!191545)))

(declare-fun b!2923635 () Bool)

(declare-fun res!1206850 () Bool)

(assert (=> b!2923635 (=> res!1206850 e!1844274)))

(assert (=> b!2923635 (= res!1206850 call!191545)))

(assert (=> b!2923635 (= e!1844272 e!1844274)))

(assert (= (and d!838731 c!477263) b!2923634))

(assert (= (and d!838731 (not c!477263)) b!2923630))

(assert (= (and b!2923630 res!1206848) b!2923629))

(assert (= (and b!2923629 c!477265) b!2923632))

(assert (= (and b!2923629 (not c!477265)) b!2923633))

(assert (= (and b!2923633 c!477264) b!2923625))

(assert (= (and b!2923633 (not c!477264)) b!2923626))

(assert (= (and b!2923625 (not res!1206849)) b!2923631))

(assert (= (and b!2923626 c!477266) b!2923635))

(assert (= (and b!2923626 (not c!477266)) b!2923627))

(assert (= (and b!2923635 (not res!1206850)) b!2923628))

(assert (= (or b!2923628 b!2923627) bm!191540))

(assert (= (or b!2923634 b!2923635) bm!191539))

(declare-fun m!3318003 () Bool)

(assert (=> b!2923625 m!3318003))

(declare-fun m!3318005 () Bool)

(assert (=> b!2923631 m!3318005))

(assert (=> bm!191539 m!3317917))

(declare-fun m!3318007 () Bool)

(assert (=> bm!191540 m!3318007))

(assert (=> b!2923263 d!838731))

(declare-fun b!2923640 () Bool)

(declare-fun res!1206851 () Bool)

(declare-fun e!1844281 () Bool)

(assert (=> b!2923640 (=> (not res!1206851) (not e!1844281))))

(assert (=> b!2923640 (= res!1206851 (isEmpty!18996 (tail!4725 s!11993)))))

(declare-fun b!2923641 () Bool)

(declare-fun e!1844277 () Bool)

(declare-fun e!1844283 () Bool)

(assert (=> b!2923641 (= e!1844277 e!1844283)))

(declare-fun res!1206853 () Bool)

(assert (=> b!2923641 (=> (not res!1206853) (not e!1844283))))

(declare-fun lt!1026197 () Bool)

(assert (=> b!2923641 (= res!1206853 (not lt!1026197))))

(declare-fun b!2923642 () Bool)

(declare-fun res!1206857 () Bool)

(declare-fun e!1844279 () Bool)

(assert (=> b!2923642 (=> res!1206857 e!1844279)))

(assert (=> b!2923642 (= res!1206857 (not (isEmpty!18996 (tail!4725 s!11993))))))

(declare-fun b!2923643 () Bool)

(declare-fun res!1206855 () Bool)

(assert (=> b!2923643 (=> (not res!1206855) (not e!1844281))))

(declare-fun call!191546 () Bool)

(assert (=> b!2923643 (= res!1206855 (not call!191546))))

(declare-fun b!2923644 () Bool)

(assert (=> b!2923644 (= e!1844283 e!1844279)))

(declare-fun res!1206852 () Bool)

(assert (=> b!2923644 (=> res!1206852 e!1844279)))

(assert (=> b!2923644 (= res!1206852 call!191546)))

(declare-fun bm!191541 () Bool)

(assert (=> bm!191541 (= call!191546 (isEmpty!18996 s!11993))))

(declare-fun b!2923645 () Bool)

(declare-fun res!1206854 () Bool)

(assert (=> b!2923645 (=> res!1206854 e!1844277)))

(assert (=> b!2923645 (= res!1206854 e!1844281)))

(declare-fun res!1206858 () Bool)

(assert (=> b!2923645 (=> (not res!1206858) (not e!1844281))))

(assert (=> b!2923645 (= res!1206858 lt!1026197)))

(declare-fun b!2923646 () Bool)

(declare-fun e!1844282 () Bool)

(assert (=> b!2923646 (= e!1844282 (matchR!3888 (derivativeStep!2440 r!17423 (head!6499 s!11993)) (tail!4725 s!11993)))))

(declare-fun b!2923647 () Bool)

(declare-fun e!1844280 () Bool)

(declare-fun e!1844278 () Bool)

(assert (=> b!2923647 (= e!1844280 e!1844278)))

(declare-fun c!477268 () Bool)

(assert (=> b!2923647 (= c!477268 (is-EmptyLang!9006 r!17423))))

(declare-fun b!2923648 () Bool)

(assert (=> b!2923648 (= e!1844282 (nullable!2826 r!17423))))

(declare-fun d!838749 () Bool)

(assert (=> d!838749 e!1844280))

(declare-fun c!477267 () Bool)

(assert (=> d!838749 (= c!477267 (is-EmptyExpr!9006 r!17423))))

(assert (=> d!838749 (= lt!1026197 e!1844282)))

(declare-fun c!477269 () Bool)

(assert (=> d!838749 (= c!477269 (isEmpty!18996 s!11993))))

(assert (=> d!838749 (validRegex!3739 r!17423)))

(assert (=> d!838749 (= (matchR!3888 r!17423 s!11993) lt!1026197)))

(declare-fun b!2923649 () Bool)

(assert (=> b!2923649 (= e!1844280 (= lt!1026197 call!191546))))

(declare-fun b!2923650 () Bool)

(declare-fun res!1206856 () Bool)

(assert (=> b!2923650 (=> res!1206856 e!1844277)))

(assert (=> b!2923650 (= res!1206856 (not (is-ElementMatch!9006 r!17423)))))

(assert (=> b!2923650 (= e!1844278 e!1844277)))

(declare-fun b!2923651 () Bool)

(assert (=> b!2923651 (= e!1844278 (not lt!1026197))))

(declare-fun b!2923652 () Bool)

(assert (=> b!2923652 (= e!1844281 (= (head!6499 s!11993) (c!477172 r!17423)))))

(declare-fun b!2923653 () Bool)

(assert (=> b!2923653 (= e!1844279 (not (= (head!6499 s!11993) (c!477172 r!17423))))))

(assert (= (and d!838749 c!477269) b!2923648))

(assert (= (and d!838749 (not c!477269)) b!2923646))

(assert (= (and d!838749 c!477267) b!2923649))

(assert (= (and d!838749 (not c!477267)) b!2923647))

(assert (= (and b!2923647 c!477268) b!2923651))

(assert (= (and b!2923647 (not c!477268)) b!2923650))

(assert (= (and b!2923650 (not res!1206856)) b!2923645))

(assert (= (and b!2923645 res!1206858) b!2923643))

(assert (= (and b!2923643 res!1206855) b!2923640))

(assert (= (and b!2923640 res!1206851) b!2923652))

(assert (= (and b!2923645 (not res!1206854)) b!2923641))

(assert (= (and b!2923641 res!1206853) b!2923644))

(assert (= (and b!2923644 (not res!1206852)) b!2923642))

(assert (= (and b!2923642 (not res!1206857)) b!2923653))

(assert (= (or b!2923649 b!2923643 b!2923644) bm!191541))

(declare-fun m!3318009 () Bool)

(assert (=> b!2923648 m!3318009))

(assert (=> d!838749 m!3317917))

(assert (=> d!838749 m!3317885))

(assert (=> b!2923642 m!3317921))

(assert (=> b!2923642 m!3317921))

(assert (=> b!2923642 m!3317923))

(assert (=> b!2923653 m!3317925))

(assert (=> b!2923652 m!3317925))

(assert (=> bm!191541 m!3317917))

(assert (=> b!2923640 m!3317921))

(assert (=> b!2923640 m!3317921))

(assert (=> b!2923640 m!3317923))

(assert (=> b!2923646 m!3317925))

(assert (=> b!2923646 m!3317925))

(declare-fun m!3318011 () Bool)

(assert (=> b!2923646 m!3318011))

(assert (=> b!2923646 m!3317921))

(assert (=> b!2923646 m!3318011))

(assert (=> b!2923646 m!3317921))

(declare-fun m!3318013 () Bool)

(assert (=> b!2923646 m!3318013))

(assert (=> b!2923263 d!838749))

(declare-fun d!838751 () Bool)

(assert (=> d!838751 (= (matchR!3888 r!17423 s!11993) (matchRSpec!1143 r!17423 s!11993))))

(declare-fun lt!1026200 () Unit!48351)

(declare-fun choose!17244 (Regex!9006 List!34871) Unit!48351)

(assert (=> d!838751 (= lt!1026200 (choose!17244 r!17423 s!11993))))

(assert (=> d!838751 (validRegex!3739 r!17423)))

(assert (=> d!838751 (= (mainMatchTheorem!1143 r!17423 s!11993) lt!1026200)))

(declare-fun bs!524989 () Bool)

(assert (= bs!524989 d!838751))

(assert (=> bs!524989 m!3317879))

(assert (=> bs!524989 m!3317877))

(declare-fun m!3318015 () Bool)

(assert (=> bs!524989 m!3318015))

(assert (=> bs!524989 m!3317885))

(assert (=> b!2923263 d!838751))

(declare-fun b!2923654 () Bool)

(declare-fun res!1206859 () Bool)

(declare-fun e!1844288 () Bool)

(assert (=> b!2923654 (=> (not res!1206859) (not e!1844288))))

(assert (=> b!2923654 (= res!1206859 (isEmpty!18996 (tail!4725 s!11993)))))

(declare-fun b!2923655 () Bool)

(declare-fun e!1844284 () Bool)

(declare-fun e!1844290 () Bool)

(assert (=> b!2923655 (= e!1844284 e!1844290)))

(declare-fun res!1206861 () Bool)

(assert (=> b!2923655 (=> (not res!1206861) (not e!1844290))))

(declare-fun lt!1026201 () Bool)

(assert (=> b!2923655 (= res!1206861 (not lt!1026201))))

(declare-fun b!2923656 () Bool)

(declare-fun res!1206865 () Bool)

(declare-fun e!1844286 () Bool)

(assert (=> b!2923656 (=> res!1206865 e!1844286)))

(assert (=> b!2923656 (= res!1206865 (not (isEmpty!18996 (tail!4725 s!11993))))))

(declare-fun b!2923657 () Bool)

(declare-fun res!1206863 () Bool)

(assert (=> b!2923657 (=> (not res!1206863) (not e!1844288))))

(declare-fun call!191547 () Bool)

(assert (=> b!2923657 (= res!1206863 (not call!191547))))

(declare-fun b!2923658 () Bool)

(assert (=> b!2923658 (= e!1844290 e!1844286)))

(declare-fun res!1206860 () Bool)

(assert (=> b!2923658 (=> res!1206860 e!1844286)))

(assert (=> b!2923658 (= res!1206860 call!191547)))

(declare-fun bm!191542 () Bool)

(assert (=> bm!191542 (= call!191547 (isEmpty!18996 s!11993))))

(declare-fun b!2923659 () Bool)

(declare-fun res!1206862 () Bool)

(assert (=> b!2923659 (=> res!1206862 e!1844284)))

(assert (=> b!2923659 (= res!1206862 e!1844288)))

(declare-fun res!1206866 () Bool)

(assert (=> b!2923659 (=> (not res!1206866) (not e!1844288))))

(assert (=> b!2923659 (= res!1206866 lt!1026201)))

(declare-fun b!2923660 () Bool)

(declare-fun e!1844289 () Bool)

(assert (=> b!2923660 (= e!1844289 (matchR!3888 (derivativeStep!2440 (regTwo!18525 r!17423) (head!6499 s!11993)) (tail!4725 s!11993)))))

(declare-fun b!2923661 () Bool)

(declare-fun e!1844287 () Bool)

(declare-fun e!1844285 () Bool)

(assert (=> b!2923661 (= e!1844287 e!1844285)))

(declare-fun c!477271 () Bool)

(assert (=> b!2923661 (= c!477271 (is-EmptyLang!9006 (regTwo!18525 r!17423)))))

(declare-fun b!2923662 () Bool)

(assert (=> b!2923662 (= e!1844289 (nullable!2826 (regTwo!18525 r!17423)))))

(declare-fun d!838753 () Bool)

(assert (=> d!838753 e!1844287))

(declare-fun c!477270 () Bool)

(assert (=> d!838753 (= c!477270 (is-EmptyExpr!9006 (regTwo!18525 r!17423)))))

(assert (=> d!838753 (= lt!1026201 e!1844289)))

(declare-fun c!477272 () Bool)

(assert (=> d!838753 (= c!477272 (isEmpty!18996 s!11993))))

(assert (=> d!838753 (validRegex!3739 (regTwo!18525 r!17423))))

(assert (=> d!838753 (= (matchR!3888 (regTwo!18525 r!17423) s!11993) lt!1026201)))

(declare-fun b!2923663 () Bool)

(assert (=> b!2923663 (= e!1844287 (= lt!1026201 call!191547))))

(declare-fun b!2923664 () Bool)

(declare-fun res!1206864 () Bool)

(assert (=> b!2923664 (=> res!1206864 e!1844284)))

(assert (=> b!2923664 (= res!1206864 (not (is-ElementMatch!9006 (regTwo!18525 r!17423))))))

(assert (=> b!2923664 (= e!1844285 e!1844284)))

(declare-fun b!2923665 () Bool)

(assert (=> b!2923665 (= e!1844285 (not lt!1026201))))

(declare-fun b!2923666 () Bool)

(assert (=> b!2923666 (= e!1844288 (= (head!6499 s!11993) (c!477172 (regTwo!18525 r!17423))))))

(declare-fun b!2923667 () Bool)

(assert (=> b!2923667 (= e!1844286 (not (= (head!6499 s!11993) (c!477172 (regTwo!18525 r!17423)))))))

(assert (= (and d!838753 c!477272) b!2923662))

(assert (= (and d!838753 (not c!477272)) b!2923660))

(assert (= (and d!838753 c!477270) b!2923663))

(assert (= (and d!838753 (not c!477270)) b!2923661))

(assert (= (and b!2923661 c!477271) b!2923665))

(assert (= (and b!2923661 (not c!477271)) b!2923664))

(assert (= (and b!2923664 (not res!1206864)) b!2923659))

(assert (= (and b!2923659 res!1206866) b!2923657))

(assert (= (and b!2923657 res!1206863) b!2923654))

(assert (= (and b!2923654 res!1206859) b!2923666))

(assert (= (and b!2923659 (not res!1206862)) b!2923655))

(assert (= (and b!2923655 res!1206861) b!2923658))

(assert (= (and b!2923658 (not res!1206860)) b!2923656))

(assert (= (and b!2923656 (not res!1206865)) b!2923667))

(assert (= (or b!2923663 b!2923657 b!2923658) bm!191542))

(declare-fun m!3318017 () Bool)

(assert (=> b!2923662 m!3318017))

(assert (=> d!838753 m!3317917))

(assert (=> d!838753 m!3317883))

(assert (=> b!2923656 m!3317921))

(assert (=> b!2923656 m!3317921))

(assert (=> b!2923656 m!3317923))

(assert (=> b!2923667 m!3317925))

(assert (=> b!2923666 m!3317925))

(assert (=> bm!191542 m!3317917))

(assert (=> b!2923654 m!3317921))

(assert (=> b!2923654 m!3317921))

(assert (=> b!2923654 m!3317923))

(assert (=> b!2923660 m!3317925))

(assert (=> b!2923660 m!3317925))

(declare-fun m!3318019 () Bool)

(assert (=> b!2923660 m!3318019))

(assert (=> b!2923660 m!3317921))

(assert (=> b!2923660 m!3318019))

(assert (=> b!2923660 m!3317921))

(declare-fun m!3318021 () Bool)

(assert (=> b!2923660 m!3318021))

(assert (=> b!2923268 d!838753))

(declare-fun b!2923668 () Bool)

(declare-fun res!1206867 () Bool)

(declare-fun e!1844295 () Bool)

(assert (=> b!2923668 (=> (not res!1206867) (not e!1844295))))

(assert (=> b!2923668 (= res!1206867 (isEmpty!18996 (tail!4725 s!11993)))))

(declare-fun b!2923669 () Bool)

(declare-fun e!1844291 () Bool)

(declare-fun e!1844297 () Bool)

(assert (=> b!2923669 (= e!1844291 e!1844297)))

(declare-fun res!1206869 () Bool)

(assert (=> b!2923669 (=> (not res!1206869) (not e!1844297))))

(declare-fun lt!1026202 () Bool)

(assert (=> b!2923669 (= res!1206869 (not lt!1026202))))

(declare-fun b!2923670 () Bool)

(declare-fun res!1206873 () Bool)

(declare-fun e!1844293 () Bool)

(assert (=> b!2923670 (=> res!1206873 e!1844293)))

(assert (=> b!2923670 (= res!1206873 (not (isEmpty!18996 (tail!4725 s!11993))))))

(declare-fun b!2923671 () Bool)

(declare-fun res!1206871 () Bool)

(assert (=> b!2923671 (=> (not res!1206871) (not e!1844295))))

(declare-fun call!191548 () Bool)

(assert (=> b!2923671 (= res!1206871 (not call!191548))))

(declare-fun b!2923672 () Bool)

(assert (=> b!2923672 (= e!1844297 e!1844293)))

(declare-fun res!1206868 () Bool)

(assert (=> b!2923672 (=> res!1206868 e!1844293)))

(assert (=> b!2923672 (= res!1206868 call!191548)))

(declare-fun bm!191543 () Bool)

(assert (=> bm!191543 (= call!191548 (isEmpty!18996 s!11993))))

(declare-fun b!2923673 () Bool)

(declare-fun res!1206870 () Bool)

(assert (=> b!2923673 (=> res!1206870 e!1844291)))

(assert (=> b!2923673 (= res!1206870 e!1844295)))

(declare-fun res!1206874 () Bool)

(assert (=> b!2923673 (=> (not res!1206874) (not e!1844295))))

(assert (=> b!2923673 (= res!1206874 lt!1026202)))

(declare-fun b!2923674 () Bool)

(declare-fun e!1844296 () Bool)

(assert (=> b!2923674 (= e!1844296 (matchR!3888 (derivativeStep!2440 lt!1026131 (head!6499 s!11993)) (tail!4725 s!11993)))))

(declare-fun b!2923675 () Bool)

(declare-fun e!1844294 () Bool)

(declare-fun e!1844292 () Bool)

(assert (=> b!2923675 (= e!1844294 e!1844292)))

(declare-fun c!477274 () Bool)

(assert (=> b!2923675 (= c!477274 (is-EmptyLang!9006 lt!1026131))))

(declare-fun b!2923676 () Bool)

(assert (=> b!2923676 (= e!1844296 (nullable!2826 lt!1026131))))

(declare-fun d!838755 () Bool)

(assert (=> d!838755 e!1844294))

(declare-fun c!477273 () Bool)

(assert (=> d!838755 (= c!477273 (is-EmptyExpr!9006 lt!1026131))))

(assert (=> d!838755 (= lt!1026202 e!1844296)))

(declare-fun c!477275 () Bool)

(assert (=> d!838755 (= c!477275 (isEmpty!18996 s!11993))))

(assert (=> d!838755 (validRegex!3739 lt!1026131)))

(assert (=> d!838755 (= (matchR!3888 lt!1026131 s!11993) lt!1026202)))

(declare-fun b!2923677 () Bool)

(assert (=> b!2923677 (= e!1844294 (= lt!1026202 call!191548))))

(declare-fun b!2923678 () Bool)

(declare-fun res!1206872 () Bool)

(assert (=> b!2923678 (=> res!1206872 e!1844291)))

(assert (=> b!2923678 (= res!1206872 (not (is-ElementMatch!9006 lt!1026131)))))

(assert (=> b!2923678 (= e!1844292 e!1844291)))

(declare-fun b!2923679 () Bool)

(assert (=> b!2923679 (= e!1844292 (not lt!1026202))))

(declare-fun b!2923680 () Bool)

(assert (=> b!2923680 (= e!1844295 (= (head!6499 s!11993) (c!477172 lt!1026131)))))

(declare-fun b!2923681 () Bool)

(assert (=> b!2923681 (= e!1844293 (not (= (head!6499 s!11993) (c!477172 lt!1026131))))))

(assert (= (and d!838755 c!477275) b!2923676))

(assert (= (and d!838755 (not c!477275)) b!2923674))

(assert (= (and d!838755 c!477273) b!2923677))

(assert (= (and d!838755 (not c!477273)) b!2923675))

(assert (= (and b!2923675 c!477274) b!2923679))

(assert (= (and b!2923675 (not c!477274)) b!2923678))

(assert (= (and b!2923678 (not res!1206872)) b!2923673))

(assert (= (and b!2923673 res!1206874) b!2923671))

(assert (= (and b!2923671 res!1206871) b!2923668))

(assert (= (and b!2923668 res!1206867) b!2923680))

(assert (= (and b!2923673 (not res!1206870)) b!2923669))

(assert (= (and b!2923669 res!1206869) b!2923672))

(assert (= (and b!2923672 (not res!1206868)) b!2923670))

(assert (= (and b!2923670 (not res!1206873)) b!2923681))

(assert (= (or b!2923677 b!2923671 b!2923672) bm!191543))

(declare-fun m!3318023 () Bool)

(assert (=> b!2923676 m!3318023))

(assert (=> d!838755 m!3317917))

(declare-fun m!3318025 () Bool)

(assert (=> d!838755 m!3318025))

(assert (=> b!2923670 m!3317921))

(assert (=> b!2923670 m!3317921))

(assert (=> b!2923670 m!3317923))

(assert (=> b!2923681 m!3317925))

(assert (=> b!2923680 m!3317925))

(assert (=> bm!191543 m!3317917))

(assert (=> b!2923668 m!3317921))

(assert (=> b!2923668 m!3317921))

(assert (=> b!2923668 m!3317923))

(assert (=> b!2923674 m!3317925))

(assert (=> b!2923674 m!3317925))

(declare-fun m!3318027 () Bool)

(assert (=> b!2923674 m!3318027))

(assert (=> b!2923674 m!3317921))

(assert (=> b!2923674 m!3318027))

(assert (=> b!2923674 m!3317921))

(declare-fun m!3318029 () Bool)

(assert (=> b!2923674 m!3318029))

(assert (=> b!2923267 d!838755))

(assert (=> b!2923267 d!838753))

(declare-fun b!2923732 () Bool)

(declare-fun e!1844330 () Regex!9006)

(declare-fun lt!1026215 () Regex!9006)

(declare-fun lt!1026216 () Regex!9006)

(assert (=> b!2923732 (= e!1844330 (Union!9006 lt!1026215 lt!1026216))))

(declare-fun b!2923733 () Bool)

(declare-fun c!477298 () Bool)

(declare-fun lt!1026217 () Regex!9006)

(declare-fun isEmptyExpr!264 (Regex!9006) Bool)

(assert (=> b!2923733 (= c!477298 (isEmptyExpr!264 lt!1026217))))

(declare-fun e!1844329 () Regex!9006)

(declare-fun e!1844328 () Regex!9006)

(assert (=> b!2923733 (= e!1844329 e!1844328)))

(declare-fun b!2923734 () Bool)

(declare-fun e!1844339 () Regex!9006)

(declare-fun lt!1026220 () Regex!9006)

(assert (=> b!2923734 (= e!1844339 (Star!9006 lt!1026220))))

(declare-fun bm!191558 () Bool)

(declare-fun call!191564 () Regex!9006)

(declare-fun c!477306 () Bool)

(assert (=> bm!191558 (= call!191564 (simplify!35 (ite c!477306 (regTwo!18525 (regTwo!18525 r!17423)) (regOne!18524 (regTwo!18525 r!17423)))))))

(declare-fun b!2923735 () Bool)

(assert (=> b!2923735 (= c!477306 (is-Union!9006 (regTwo!18525 r!17423)))))

(declare-fun e!1844333 () Regex!9006)

(declare-fun e!1844327 () Regex!9006)

(assert (=> b!2923735 (= e!1844333 e!1844327)))

(declare-fun b!2923736 () Bool)

(assert (=> b!2923736 (= e!1844339 EmptyExpr!9006)))

(declare-fun b!2923737 () Bool)

(declare-fun e!1844338 () Regex!9006)

(assert (=> b!2923737 (= e!1844338 lt!1026216)))

(declare-fun bm!191559 () Bool)

(declare-fun call!191565 () Bool)

(declare-fun call!191568 () Bool)

(assert (=> bm!191559 (= call!191565 call!191568)))

(declare-fun b!2923738 () Bool)

(declare-fun e!1844336 () Bool)

(declare-fun lt!1026219 () Regex!9006)

(assert (=> b!2923738 (= e!1844336 (= (nullable!2826 lt!1026219) (nullable!2826 (regTwo!18525 r!17423))))))

(declare-fun b!2923739 () Bool)

(declare-fun e!1844335 () Regex!9006)

(declare-fun lt!1026218 () Regex!9006)

(assert (=> b!2923739 (= e!1844335 (Concat!14327 lt!1026217 lt!1026218))))

(declare-fun b!2923740 () Bool)

(declare-fun c!477302 () Bool)

(assert (=> b!2923740 (= c!477302 call!191565)))

(assert (=> b!2923740 (= e!1844338 e!1844330)))

(declare-fun b!2923741 () Bool)

(declare-fun c!477300 () Bool)

(declare-fun e!1844337 () Bool)

(assert (=> b!2923741 (= c!477300 e!1844337)))

(declare-fun res!1206882 () Bool)

(assert (=> b!2923741 (=> res!1206882 e!1844337)))

(assert (=> b!2923741 (= res!1206882 call!191568)))

(declare-fun call!191567 () Regex!9006)

(assert (=> b!2923741 (= lt!1026220 call!191567)))

(assert (=> b!2923741 (= e!1844333 e!1844339)))

(declare-fun bm!191560 () Bool)

(declare-fun call!191566 () Regex!9006)

(assert (=> bm!191560 (= call!191566 call!191567)))

(declare-fun b!2923742 () Bool)

(declare-fun call!191563 () Bool)

(assert (=> b!2923742 (= e!1844337 call!191563)))

(declare-fun c!477299 () Bool)

(declare-fun bm!191561 () Bool)

(declare-fun isEmptyLang!179 (Regex!9006) Bool)

(assert (=> bm!191561 (= call!191568 (isEmptyLang!179 (ite c!477299 lt!1026220 (ite c!477306 lt!1026216 lt!1026217))))))

(declare-fun b!2923743 () Bool)

(declare-fun e!1844326 () Regex!9006)

(assert (=> b!2923743 (= e!1844326 (regTwo!18525 r!17423))))

(declare-fun b!2923744 () Bool)

(declare-fun e!1844334 () Regex!9006)

(assert (=> b!2923744 (= e!1844334 e!1844333)))

(assert (=> b!2923744 (= c!477299 (is-Star!9006 (regTwo!18525 r!17423)))))

(declare-fun b!2923745 () Bool)

(assert (=> b!2923745 (= e!1844328 lt!1026218)))

(declare-fun b!2923746 () Bool)

(assert (=> b!2923746 (= e!1844334 EmptyExpr!9006)))

(declare-fun b!2923747 () Bool)

(declare-fun c!477307 () Bool)

(assert (=> b!2923747 (= c!477307 (is-EmptyExpr!9006 (regTwo!18525 r!17423)))))

(assert (=> b!2923747 (= e!1844326 e!1844334)))

(declare-fun bm!191562 () Bool)

(declare-fun call!191569 () Bool)

(assert (=> bm!191562 (= call!191569 (isEmptyLang!179 (ite c!477306 lt!1026215 lt!1026218)))))

(declare-fun bm!191563 () Bool)

(assert (=> bm!191563 (= call!191567 (simplify!35 (ite c!477299 (reg!9335 (regTwo!18525 r!17423)) (ite c!477306 (regOne!18525 (regTwo!18525 r!17423)) (regTwo!18524 (regTwo!18525 r!17423))))))))

(declare-fun b!2923748 () Bool)

(declare-fun e!1844331 () Regex!9006)

(assert (=> b!2923748 (= e!1844331 e!1844326)))

(declare-fun c!477304 () Bool)

(assert (=> b!2923748 (= c!477304 (is-ElementMatch!9006 (regTwo!18525 r!17423)))))

(declare-fun b!2923749 () Bool)

(assert (=> b!2923749 (= e!1844328 e!1844335)))

(declare-fun c!477308 () Bool)

(assert (=> b!2923749 (= c!477308 call!191563)))

(declare-fun b!2923750 () Bool)

(assert (=> b!2923750 (= e!1844335 lt!1026217)))

(declare-fun b!2923751 () Bool)

(assert (=> b!2923751 (= e!1844330 lt!1026215)))

(declare-fun b!2923752 () Bool)

(assert (=> b!2923752 (= e!1844329 EmptyLang!9006)))

(declare-fun b!2923754 () Bool)

(declare-fun e!1844332 () Bool)

(assert (=> b!2923754 (= e!1844332 call!191569)))

(declare-fun b!2923753 () Bool)

(assert (=> b!2923753 (= e!1844327 e!1844338)))

(assert (=> b!2923753 (= lt!1026215 call!191566)))

(assert (=> b!2923753 (= lt!1026216 call!191564)))

(declare-fun c!477303 () Bool)

(assert (=> b!2923753 (= c!477303 call!191569)))

(declare-fun d!838757 () Bool)

(assert (=> d!838757 e!1844336))

(declare-fun res!1206881 () Bool)

(assert (=> d!838757 (=> (not res!1206881) (not e!1844336))))

(assert (=> d!838757 (= res!1206881 (validRegex!3739 lt!1026219))))

(assert (=> d!838757 (= lt!1026219 e!1844331)))

(declare-fun c!477305 () Bool)

(assert (=> d!838757 (= c!477305 (is-EmptyLang!9006 (regTwo!18525 r!17423)))))

(assert (=> d!838757 (validRegex!3739 (regTwo!18525 r!17423))))

(assert (=> d!838757 (= (simplify!35 (regTwo!18525 r!17423)) lt!1026219)))

(declare-fun b!2923755 () Bool)

(assert (=> b!2923755 (= e!1844331 EmptyLang!9006)))

(declare-fun b!2923756 () Bool)

(assert (=> b!2923756 (= e!1844327 e!1844329)))

(assert (=> b!2923756 (= lt!1026217 call!191564)))

(assert (=> b!2923756 (= lt!1026218 call!191566)))

(declare-fun res!1206883 () Bool)

(assert (=> b!2923756 (= res!1206883 call!191565)))

(assert (=> b!2923756 (=> res!1206883 e!1844332)))

(declare-fun c!477301 () Bool)

(assert (=> b!2923756 (= c!477301 e!1844332)))

(declare-fun bm!191564 () Bool)

(assert (=> bm!191564 (= call!191563 (isEmptyExpr!264 (ite c!477299 lt!1026220 lt!1026218)))))

(assert (= (and d!838757 c!477305) b!2923755))

(assert (= (and d!838757 (not c!477305)) b!2923748))

(assert (= (and b!2923748 c!477304) b!2923743))

(assert (= (and b!2923748 (not c!477304)) b!2923747))

(assert (= (and b!2923747 c!477307) b!2923746))

(assert (= (and b!2923747 (not c!477307)) b!2923744))

(assert (= (and b!2923744 c!477299) b!2923741))

(assert (= (and b!2923744 (not c!477299)) b!2923735))

(assert (= (and b!2923741 (not res!1206882)) b!2923742))

(assert (= (and b!2923741 c!477300) b!2923736))

(assert (= (and b!2923741 (not c!477300)) b!2923734))

(assert (= (and b!2923735 c!477306) b!2923753))

(assert (= (and b!2923735 (not c!477306)) b!2923756))

(assert (= (and b!2923753 c!477303) b!2923737))

(assert (= (and b!2923753 (not c!477303)) b!2923740))

(assert (= (and b!2923740 c!477302) b!2923751))

(assert (= (and b!2923740 (not c!477302)) b!2923732))

(assert (= (and b!2923756 (not res!1206883)) b!2923754))

(assert (= (and b!2923756 c!477301) b!2923752))

(assert (= (and b!2923756 (not c!477301)) b!2923733))

(assert (= (and b!2923733 c!477298) b!2923745))

(assert (= (and b!2923733 (not c!477298)) b!2923749))

(assert (= (and b!2923749 c!477308) b!2923750))

(assert (= (and b!2923749 (not c!477308)) b!2923739))

(assert (= (or b!2923753 b!2923756) bm!191560))

(assert (= (or b!2923753 b!2923756) bm!191558))

(assert (= (or b!2923753 b!2923754) bm!191562))

(assert (= (or b!2923740 b!2923756) bm!191559))

(assert (= (or b!2923742 b!2923749) bm!191564))

(assert (= (or b!2923741 bm!191560) bm!191563))

(assert (= (or b!2923741 bm!191559) bm!191561))

(assert (= (and d!838757 res!1206881) b!2923738))

(declare-fun m!3318031 () Bool)

(assert (=> d!838757 m!3318031))

(assert (=> d!838757 m!3317883))

(declare-fun m!3318033 () Bool)

(assert (=> b!2923738 m!3318033))

(assert (=> b!2923738 m!3318017))

(declare-fun m!3318035 () Bool)

(assert (=> bm!191561 m!3318035))

(declare-fun m!3318037 () Bool)

(assert (=> bm!191558 m!3318037))

(declare-fun m!3318039 () Bool)

(assert (=> bm!191564 m!3318039))

(declare-fun m!3318041 () Bool)

(assert (=> b!2923733 m!3318041))

(declare-fun m!3318043 () Bool)

(assert (=> bm!191562 m!3318043))

(declare-fun m!3318045 () Bool)

(assert (=> bm!191563 m!3318045))

(assert (=> b!2923267 d!838757))

(declare-fun d!838759 () Bool)

(assert (=> d!838759 (= (matchR!3888 (regTwo!18525 r!17423) s!11993) (matchR!3888 (simplify!35 (regTwo!18525 r!17423)) s!11993))))

(declare-fun lt!1026223 () Unit!48351)

(declare-fun choose!17245 (Regex!9006 List!34871) Unit!48351)

(assert (=> d!838759 (= lt!1026223 (choose!17245 (regTwo!18525 r!17423) s!11993))))

(assert (=> d!838759 (validRegex!3739 (regTwo!18525 r!17423))))

(assert (=> d!838759 (= (lemmaSimplifySound!33 (regTwo!18525 r!17423) s!11993) lt!1026223)))

(declare-fun bs!524990 () Bool)

(assert (= bs!524990 d!838759))

(assert (=> bs!524990 m!3317873))

(declare-fun m!3318047 () Bool)

(assert (=> bs!524990 m!3318047))

(assert (=> bs!524990 m!3317873))

(assert (=> bs!524990 m!3317883))

(assert (=> bs!524990 m!3317871))

(declare-fun m!3318049 () Bool)

(assert (=> bs!524990 m!3318049))

(assert (=> b!2923267 d!838759))

(declare-fun b!2923761 () Bool)

(declare-fun e!1844342 () Bool)

(declare-fun tp!937756 () Bool)

(assert (=> b!2923761 (= e!1844342 (and tp_is_empty!15575 tp!937756))))

(assert (=> b!2923261 (= tp!937734 e!1844342)))

(assert (= (and b!2923261 (is-Cons!34747 (t!233936 s!11993))) b!2923761))

(declare-fun b!2923774 () Bool)

(declare-fun e!1844345 () Bool)

(declare-fun tp!937769 () Bool)

(assert (=> b!2923774 (= e!1844345 tp!937769)))

(declare-fun b!2923775 () Bool)

(declare-fun tp!937770 () Bool)

(declare-fun tp!937771 () Bool)

(assert (=> b!2923775 (= e!1844345 (and tp!937770 tp!937771))))

(declare-fun b!2923772 () Bool)

(assert (=> b!2923772 (= e!1844345 tp_is_empty!15575)))

(assert (=> b!2923266 (= tp!937731 e!1844345)))

(declare-fun b!2923773 () Bool)

(declare-fun tp!937767 () Bool)

(declare-fun tp!937768 () Bool)

(assert (=> b!2923773 (= e!1844345 (and tp!937767 tp!937768))))

(assert (= (and b!2923266 (is-ElementMatch!9006 (reg!9335 r!17423))) b!2923772))

(assert (= (and b!2923266 (is-Concat!14327 (reg!9335 r!17423))) b!2923773))

(assert (= (and b!2923266 (is-Star!9006 (reg!9335 r!17423))) b!2923774))

(assert (= (and b!2923266 (is-Union!9006 (reg!9335 r!17423))) b!2923775))

(declare-fun b!2923778 () Bool)

(declare-fun e!1844346 () Bool)

(declare-fun tp!937774 () Bool)

(assert (=> b!2923778 (= e!1844346 tp!937774)))

(declare-fun b!2923779 () Bool)

(declare-fun tp!937775 () Bool)

(declare-fun tp!937776 () Bool)

(assert (=> b!2923779 (= e!1844346 (and tp!937775 tp!937776))))

(declare-fun b!2923776 () Bool)

(assert (=> b!2923776 (= e!1844346 tp_is_empty!15575)))

(assert (=> b!2923260 (= tp!937732 e!1844346)))

(declare-fun b!2923777 () Bool)

(declare-fun tp!937772 () Bool)

(declare-fun tp!937773 () Bool)

(assert (=> b!2923777 (= e!1844346 (and tp!937772 tp!937773))))

(assert (= (and b!2923260 (is-ElementMatch!9006 (regOne!18525 r!17423))) b!2923776))

(assert (= (and b!2923260 (is-Concat!14327 (regOne!18525 r!17423))) b!2923777))

(assert (= (and b!2923260 (is-Star!9006 (regOne!18525 r!17423))) b!2923778))

(assert (= (and b!2923260 (is-Union!9006 (regOne!18525 r!17423))) b!2923779))

(declare-fun b!2923782 () Bool)

(declare-fun e!1844347 () Bool)

(declare-fun tp!937779 () Bool)

(assert (=> b!2923782 (= e!1844347 tp!937779)))

(declare-fun b!2923783 () Bool)

(declare-fun tp!937780 () Bool)

(declare-fun tp!937781 () Bool)

(assert (=> b!2923783 (= e!1844347 (and tp!937780 tp!937781))))

(declare-fun b!2923780 () Bool)

(assert (=> b!2923780 (= e!1844347 tp_is_empty!15575)))

(assert (=> b!2923260 (= tp!937733 e!1844347)))

(declare-fun b!2923781 () Bool)

(declare-fun tp!937777 () Bool)

(declare-fun tp!937778 () Bool)

(assert (=> b!2923781 (= e!1844347 (and tp!937777 tp!937778))))

(assert (= (and b!2923260 (is-ElementMatch!9006 (regTwo!18525 r!17423))) b!2923780))

(assert (= (and b!2923260 (is-Concat!14327 (regTwo!18525 r!17423))) b!2923781))

(assert (= (and b!2923260 (is-Star!9006 (regTwo!18525 r!17423))) b!2923782))

(assert (= (and b!2923260 (is-Union!9006 (regTwo!18525 r!17423))) b!2923783))

(declare-fun b!2923786 () Bool)

(declare-fun e!1844348 () Bool)

(declare-fun tp!937784 () Bool)

(assert (=> b!2923786 (= e!1844348 tp!937784)))

(declare-fun b!2923787 () Bool)

(declare-fun tp!937785 () Bool)

(declare-fun tp!937786 () Bool)

(assert (=> b!2923787 (= e!1844348 (and tp!937785 tp!937786))))

(declare-fun b!2923784 () Bool)

(assert (=> b!2923784 (= e!1844348 tp_is_empty!15575)))

(assert (=> b!2923269 (= tp!937730 e!1844348)))

(declare-fun b!2923785 () Bool)

(declare-fun tp!937782 () Bool)

(declare-fun tp!937783 () Bool)

(assert (=> b!2923785 (= e!1844348 (and tp!937782 tp!937783))))

(assert (= (and b!2923269 (is-ElementMatch!9006 (regOne!18524 r!17423))) b!2923784))

(assert (= (and b!2923269 (is-Concat!14327 (regOne!18524 r!17423))) b!2923785))

(assert (= (and b!2923269 (is-Star!9006 (regOne!18524 r!17423))) b!2923786))

(assert (= (and b!2923269 (is-Union!9006 (regOne!18524 r!17423))) b!2923787))

(declare-fun b!2923790 () Bool)

(declare-fun e!1844349 () Bool)

(declare-fun tp!937789 () Bool)

(assert (=> b!2923790 (= e!1844349 tp!937789)))

(declare-fun b!2923791 () Bool)

(declare-fun tp!937790 () Bool)

(declare-fun tp!937791 () Bool)

(assert (=> b!2923791 (= e!1844349 (and tp!937790 tp!937791))))

(declare-fun b!2923788 () Bool)

(assert (=> b!2923788 (= e!1844349 tp_is_empty!15575)))

(assert (=> b!2923269 (= tp!937735 e!1844349)))

(declare-fun b!2923789 () Bool)

(declare-fun tp!937787 () Bool)

(declare-fun tp!937788 () Bool)

(assert (=> b!2923789 (= e!1844349 (and tp!937787 tp!937788))))

(assert (= (and b!2923269 (is-ElementMatch!9006 (regTwo!18524 r!17423))) b!2923788))

(assert (= (and b!2923269 (is-Concat!14327 (regTwo!18524 r!17423))) b!2923789))

(assert (= (and b!2923269 (is-Star!9006 (regTwo!18524 r!17423))) b!2923790))

(assert (= (and b!2923269 (is-Union!9006 (regTwo!18524 r!17423))) b!2923791))

(push 1)

(assert (not b!2923395))

(assert (not bm!191542))

(assert (not d!838749))

(assert (not d!838751))

(assert (not bm!191558))

(assert (not b!2923786))

(assert (not b!2923666))

(assert (not bm!191539))

(assert (not d!838757))

(assert (not b!2923625))

(assert (not b!2923782))

(assert (not bm!191541))

(assert (not b!2923774))

(assert (not b!2923631))

(assert (not b!2923642))

(assert (not b!2923668))

(assert (not bm!191561))

(assert (not b!2923646))

(assert (not b!2923407))

(assert (not b!2923389))

(assert (not b!2923648))

(assert (not b!2923652))

(assert (not b!2923396))

(assert (not b!2923777))

(assert (not bm!191489))

(assert (not b!2923401))

(assert (not b!2923662))

(assert (not b!2923785))

(assert (not b!2923738))

(assert (not bm!191493))

(assert (not b!2923674))

(assert (not b!2923761))

(assert (not b!2923676))

(assert (not b!2923783))

(assert (not d!838725))

(assert (not b!2923680))

(assert (not d!838753))

(assert (not b!2923733))

(assert (not b!2923656))

(assert (not b!2923775))

(assert (not b!2923790))

(assert (not b!2923779))

(assert (not b!2923789))

(assert (not b!2923654))

(assert (not b!2923391))

(assert (not d!838755))

(assert (not b!2923667))

(assert (not b!2923402))

(assert (not b!2923383))

(assert (not bm!191497))

(assert (not b!2923791))

(assert (not bm!191540))

(assert (not bm!191490))

(assert (not b!2923660))

(assert (not b!2923781))

(assert (not bm!191563))

(assert (not d!838727))

(assert (not b!2923385))

(assert (not b!2923653))

(assert (not b!2923681))

(assert (not b!2923778))

(assert (not b!2923773))

(assert (not bm!191498))

(assert (not b!2923640))

(assert (not b!2923670))

(assert (not b!2923787))

(assert (not b!2923322))

(assert tp_is_empty!15575)

(assert (not d!838759))

(assert (not bm!191562))

(assert (not bm!191543))

(assert (not bm!191564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

