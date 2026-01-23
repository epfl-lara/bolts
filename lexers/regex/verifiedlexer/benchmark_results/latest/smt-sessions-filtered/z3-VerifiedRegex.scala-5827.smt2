; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286940 () Bool)

(assert start!286940)

(declare-fun b!2961911 () Bool)

(declare-fun e!1864374 () Bool)

(declare-fun e!1864375 () Bool)

(assert (=> b!2961911 (= e!1864374 e!1864375)))

(declare-fun res!1221987 () Bool)

(assert (=> b!2961911 (=> res!1221987 e!1864375)))

(declare-fun lt!1034385 () Bool)

(assert (=> b!2961911 (= res!1221987 lt!1034385)))

(declare-datatypes ((C!18596 0))(
  ( (C!18597 (val!11334 Int)) )
))
(declare-datatypes ((Regex!9205 0))(
  ( (ElementMatch!9205 (c!485435 C!18596)) (Concat!14526 (regOne!18922 Regex!9205) (regTwo!18922 Regex!9205)) (EmptyExpr!9205) (Star!9205 (reg!9534 Regex!9205)) (EmptyLang!9205) (Union!9205 (regOne!18923 Regex!9205) (regTwo!18923 Regex!9205)) )
))
(declare-fun lt!1034389 () Regex!9205)

(declare-datatypes ((List!35070 0))(
  ( (Nil!34946) (Cons!34946 (h!40366 C!18596) (t!234135 List!35070)) )
))
(declare-fun s!11993 () List!35070)

(declare-fun matchR!4087 (Regex!9205 List!35070) Bool)

(assert (=> b!2961911 (= lt!1034385 (matchR!4087 lt!1034389 s!11993))))

(declare-fun r!17423 () Regex!9205)

(assert (=> b!2961911 (= lt!1034385 (matchR!4087 (regTwo!18923 r!17423) s!11993))))

(declare-datatypes ((Unit!48789 0))(
  ( (Unit!48790) )
))
(declare-fun lt!1034387 () Unit!48789)

(declare-fun lemmaSimplifySound!134 (Regex!9205 List!35070) Unit!48789)

(assert (=> b!2961911 (= lt!1034387 (lemmaSimplifySound!134 (regTwo!18923 r!17423) s!11993))))

(declare-fun b!2961912 () Bool)

(declare-fun e!1864379 () Bool)

(declare-fun tp_is_empty!15973 () Bool)

(assert (=> b!2961912 (= e!1864379 tp_is_empty!15973)))

(declare-fun b!2961913 () Bool)

(declare-fun tp!945264 () Bool)

(declare-fun tp!945267 () Bool)

(assert (=> b!2961913 (= e!1864379 (and tp!945264 tp!945267))))

(declare-fun b!2961914 () Bool)

(declare-fun tp!945269 () Bool)

(declare-fun tp!945266 () Bool)

(assert (=> b!2961914 (= e!1864379 (and tp!945269 tp!945266))))

(declare-fun b!2961915 () Bool)

(declare-fun validRegex!3938 (Regex!9205) Bool)

(declare-fun simplify!208 (Regex!9205) Regex!9205)

(assert (=> b!2961915 (= e!1864375 (validRegex!3938 (simplify!208 r!17423)))))

(declare-fun b!2961916 () Bool)

(declare-fun e!1864378 () Bool)

(assert (=> b!2961916 (= e!1864378 e!1864374)))

(declare-fun res!1221990 () Bool)

(assert (=> b!2961916 (=> res!1221990 e!1864374)))

(declare-fun lt!1034386 () Regex!9205)

(declare-fun isEmptyLang!323 (Regex!9205) Bool)

(assert (=> b!2961916 (= res!1221990 (not (isEmptyLang!323 lt!1034386)))))

(assert (=> b!2961916 (= lt!1034389 (simplify!208 (regTwo!18923 r!17423)))))

(assert (=> b!2961916 (= lt!1034386 (simplify!208 (regOne!18923 r!17423)))))

(declare-fun b!2961917 () Bool)

(declare-fun e!1864377 () Bool)

(assert (=> b!2961917 (= e!1864377 (not e!1864378))))

(declare-fun res!1221989 () Bool)

(assert (=> b!2961917 (=> res!1221989 e!1864378)))

(declare-fun lt!1034388 () Bool)

(get-info :version)

(assert (=> b!2961917 (= res!1221989 (or lt!1034388 ((_ is Concat!14526) r!17423) (not ((_ is Union!9205) r!17423))))))

(declare-fun matchRSpec!1342 (Regex!9205 List!35070) Bool)

(assert (=> b!2961917 (= lt!1034388 (matchRSpec!1342 r!17423 s!11993))))

(assert (=> b!2961917 (= lt!1034388 (matchR!4087 r!17423 s!11993))))

(declare-fun lt!1034390 () Unit!48789)

(declare-fun mainMatchTheorem!1342 (Regex!9205 List!35070) Unit!48789)

(assert (=> b!2961917 (= lt!1034390 (mainMatchTheorem!1342 r!17423 s!11993))))

(declare-fun res!1221988 () Bool)

(assert (=> start!286940 (=> (not res!1221988) (not e!1864377))))

(assert (=> start!286940 (= res!1221988 (validRegex!3938 r!17423))))

(assert (=> start!286940 e!1864377))

(assert (=> start!286940 e!1864379))

(declare-fun e!1864376 () Bool)

(assert (=> start!286940 e!1864376))

(declare-fun b!2961918 () Bool)

(declare-fun tp!945265 () Bool)

(assert (=> b!2961918 (= e!1864379 tp!945265)))

(declare-fun b!2961919 () Bool)

(declare-fun tp!945268 () Bool)

(assert (=> b!2961919 (= e!1864376 (and tp_is_empty!15973 tp!945268))))

(assert (= (and start!286940 res!1221988) b!2961917))

(assert (= (and b!2961917 (not res!1221989)) b!2961916))

(assert (= (and b!2961916 (not res!1221990)) b!2961911))

(assert (= (and b!2961911 (not res!1221987)) b!2961915))

(assert (= (and start!286940 ((_ is ElementMatch!9205) r!17423)) b!2961912))

(assert (= (and start!286940 ((_ is Concat!14526) r!17423)) b!2961914))

(assert (= (and start!286940 ((_ is Star!9205) r!17423)) b!2961918))

(assert (= (and start!286940 ((_ is Union!9205) r!17423)) b!2961913))

(assert (= (and start!286940 ((_ is Cons!34946) s!11993)) b!2961919))

(declare-fun m!3334711 () Bool)

(assert (=> start!286940 m!3334711))

(declare-fun m!3334713 () Bool)

(assert (=> b!2961916 m!3334713))

(declare-fun m!3334715 () Bool)

(assert (=> b!2961916 m!3334715))

(declare-fun m!3334717 () Bool)

(assert (=> b!2961916 m!3334717))

(declare-fun m!3334719 () Bool)

(assert (=> b!2961917 m!3334719))

(declare-fun m!3334721 () Bool)

(assert (=> b!2961917 m!3334721))

(declare-fun m!3334723 () Bool)

(assert (=> b!2961917 m!3334723))

(declare-fun m!3334725 () Bool)

(assert (=> b!2961911 m!3334725))

(declare-fun m!3334727 () Bool)

(assert (=> b!2961911 m!3334727))

(declare-fun m!3334729 () Bool)

(assert (=> b!2961911 m!3334729))

(declare-fun m!3334731 () Bool)

(assert (=> b!2961915 m!3334731))

(assert (=> b!2961915 m!3334731))

(declare-fun m!3334733 () Bool)

(assert (=> b!2961915 m!3334733))

(check-sat (not b!2961911) (not b!2961917) (not b!2961914) (not b!2961913) tp_is_empty!15973 (not b!2961916) (not start!286940) (not b!2961918) (not b!2961915) (not b!2961919))
(check-sat)
(get-model)

(declare-fun b!2962265 () Bool)

(assert (=> b!2962265 true))

(assert (=> b!2962265 true))

(declare-fun bs!526359 () Bool)

(declare-fun b!2962274 () Bool)

(assert (= bs!526359 (and b!2962274 b!2962265)))

(declare-fun lambda!110398 () Int)

(declare-fun lambda!110397 () Int)

(assert (=> bs!526359 (not (= lambda!110398 lambda!110397))))

(assert (=> b!2962274 true))

(assert (=> b!2962274 true))

(declare-fun e!1864570 () Bool)

(declare-fun call!196542 () Bool)

(assert (=> b!2962265 (= e!1864570 call!196542)))

(declare-fun b!2962266 () Bool)

(declare-fun c!485535 () Bool)

(assert (=> b!2962266 (= c!485535 ((_ is Union!9205) r!17423))))

(declare-fun e!1864568 () Bool)

(declare-fun e!1864566 () Bool)

(assert (=> b!2962266 (= e!1864568 e!1864566)))

(declare-fun b!2962267 () Bool)

(declare-fun e!1864569 () Bool)

(assert (=> b!2962267 (= e!1864566 e!1864569)))

(declare-fun c!485534 () Bool)

(assert (=> b!2962267 (= c!485534 ((_ is Star!9205) r!17423))))

(declare-fun b!2962268 () Bool)

(declare-fun res!1222102 () Bool)

(assert (=> b!2962268 (=> res!1222102 e!1864570)))

(declare-fun call!196541 () Bool)

(assert (=> b!2962268 (= res!1222102 call!196541)))

(assert (=> b!2962268 (= e!1864569 e!1864570)))

(declare-fun bm!196536 () Bool)

(declare-fun isEmpty!19219 (List!35070) Bool)

(assert (=> bm!196536 (= call!196541 (isEmpty!19219 s!11993))))

(declare-fun b!2962269 () Bool)

(declare-fun c!485536 () Bool)

(assert (=> b!2962269 (= c!485536 ((_ is ElementMatch!9205) r!17423))))

(declare-fun e!1864572 () Bool)

(assert (=> b!2962269 (= e!1864572 e!1864568)))

(declare-fun bm!196537 () Bool)

(declare-fun Exists!1524 (Int) Bool)

(assert (=> bm!196537 (= call!196542 (Exists!1524 (ite c!485534 lambda!110397 lambda!110398)))))

(declare-fun b!2962270 () Bool)

(assert (=> b!2962270 (= e!1864568 (= s!11993 (Cons!34946 (c!485435 r!17423) Nil!34946)))))

(declare-fun b!2962272 () Bool)

(declare-fun e!1864567 () Bool)

(assert (=> b!2962272 (= e!1864567 e!1864572)))

(declare-fun res!1222101 () Bool)

(assert (=> b!2962272 (= res!1222101 (not ((_ is EmptyLang!9205) r!17423)))))

(assert (=> b!2962272 (=> (not res!1222101) (not e!1864572))))

(declare-fun b!2962273 () Bool)

(declare-fun e!1864571 () Bool)

(assert (=> b!2962273 (= e!1864566 e!1864571)))

(declare-fun res!1222103 () Bool)

(assert (=> b!2962273 (= res!1222103 (matchRSpec!1342 (regOne!18923 r!17423) s!11993))))

(assert (=> b!2962273 (=> res!1222103 e!1864571)))

(declare-fun d!842070 () Bool)

(declare-fun c!485537 () Bool)

(assert (=> d!842070 (= c!485537 ((_ is EmptyExpr!9205) r!17423))))

(assert (=> d!842070 (= (matchRSpec!1342 r!17423 s!11993) e!1864567)))

(declare-fun b!2962271 () Bool)

(assert (=> b!2962271 (= e!1864571 (matchRSpec!1342 (regTwo!18923 r!17423) s!11993))))

(assert (=> b!2962274 (= e!1864569 call!196542)))

(declare-fun b!2962275 () Bool)

(assert (=> b!2962275 (= e!1864567 call!196541)))

(assert (= (and d!842070 c!485537) b!2962275))

(assert (= (and d!842070 (not c!485537)) b!2962272))

(assert (= (and b!2962272 res!1222101) b!2962269))

(assert (= (and b!2962269 c!485536) b!2962270))

(assert (= (and b!2962269 (not c!485536)) b!2962266))

(assert (= (and b!2962266 c!485535) b!2962273))

(assert (= (and b!2962266 (not c!485535)) b!2962267))

(assert (= (and b!2962273 (not res!1222103)) b!2962271))

(assert (= (and b!2962267 c!485534) b!2962268))

(assert (= (and b!2962267 (not c!485534)) b!2962274))

(assert (= (and b!2962268 (not res!1222102)) b!2962265))

(assert (= (or b!2962265 b!2962274) bm!196537))

(assert (= (or b!2962275 b!2962268) bm!196536))

(declare-fun m!3334841 () Bool)

(assert (=> bm!196536 m!3334841))

(declare-fun m!3334843 () Bool)

(assert (=> bm!196537 m!3334843))

(declare-fun m!3334845 () Bool)

(assert (=> b!2962273 m!3334845))

(declare-fun m!3334847 () Bool)

(assert (=> b!2962271 m!3334847))

(assert (=> b!2961917 d!842070))

(declare-fun b!2962308 () Bool)

(declare-fun e!1864591 () Bool)

(declare-fun head!6599 (List!35070) C!18596)

(assert (=> b!2962308 (= e!1864591 (= (head!6599 s!11993) (c!485435 r!17423)))))

(declare-fun b!2962309 () Bool)

(declare-fun e!1864589 () Bool)

(declare-fun lt!1034434 () Bool)

(assert (=> b!2962309 (= e!1864589 (not lt!1034434))))

(declare-fun b!2962310 () Bool)

(declare-fun res!1222126 () Bool)

(assert (=> b!2962310 (=> (not res!1222126) (not e!1864591))))

(declare-fun call!196545 () Bool)

(assert (=> b!2962310 (= res!1222126 (not call!196545))))

(declare-fun b!2962311 () Bool)

(declare-fun e!1864593 () Bool)

(assert (=> b!2962311 (= e!1864593 (not (= (head!6599 s!11993) (c!485435 r!17423))))))

(declare-fun b!2962312 () Bool)

(declare-fun e!1864587 () Bool)

(declare-fun nullable!2938 (Regex!9205) Bool)

(assert (=> b!2962312 (= e!1864587 (nullable!2938 r!17423))))

(declare-fun d!842092 () Bool)

(declare-fun e!1864590 () Bool)

(assert (=> d!842092 e!1864590))

(declare-fun c!485545 () Bool)

(assert (=> d!842092 (= c!485545 ((_ is EmptyExpr!9205) r!17423))))

(assert (=> d!842092 (= lt!1034434 e!1864587)))

(declare-fun c!485544 () Bool)

(assert (=> d!842092 (= c!485544 (isEmpty!19219 s!11993))))

(assert (=> d!842092 (validRegex!3938 r!17423)))

(assert (=> d!842092 (= (matchR!4087 r!17423 s!11993) lt!1034434)))

(declare-fun b!2962313 () Bool)

(declare-fun res!1222127 () Bool)

(assert (=> b!2962313 (=> res!1222127 e!1864593)))

(declare-fun tail!4825 (List!35070) List!35070)

(assert (=> b!2962313 (= res!1222127 (not (isEmpty!19219 (tail!4825 s!11993))))))

(declare-fun bm!196540 () Bool)

(assert (=> bm!196540 (= call!196545 (isEmpty!19219 s!11993))))

(declare-fun b!2962314 () Bool)

(declare-fun e!1864588 () Bool)

(declare-fun e!1864592 () Bool)

(assert (=> b!2962314 (= e!1864588 e!1864592)))

(declare-fun res!1222123 () Bool)

(assert (=> b!2962314 (=> (not res!1222123) (not e!1864592))))

(assert (=> b!2962314 (= res!1222123 (not lt!1034434))))

(declare-fun b!2962315 () Bool)

(declare-fun res!1222124 () Bool)

(assert (=> b!2962315 (=> res!1222124 e!1864588)))

(assert (=> b!2962315 (= res!1222124 e!1864591)))

(declare-fun res!1222125 () Bool)

(assert (=> b!2962315 (=> (not res!1222125) (not e!1864591))))

(assert (=> b!2962315 (= res!1222125 lt!1034434)))

(declare-fun b!2962316 () Bool)

(declare-fun res!1222120 () Bool)

(assert (=> b!2962316 (=> res!1222120 e!1864588)))

(assert (=> b!2962316 (= res!1222120 (not ((_ is ElementMatch!9205) r!17423)))))

(assert (=> b!2962316 (= e!1864589 e!1864588)))

(declare-fun b!2962317 () Bool)

(assert (=> b!2962317 (= e!1864590 e!1864589)))

(declare-fun c!485546 () Bool)

(assert (=> b!2962317 (= c!485546 ((_ is EmptyLang!9205) r!17423))))

(declare-fun b!2962318 () Bool)

(declare-fun res!1222122 () Bool)

(assert (=> b!2962318 (=> (not res!1222122) (not e!1864591))))

(assert (=> b!2962318 (= res!1222122 (isEmpty!19219 (tail!4825 s!11993)))))

(declare-fun b!2962319 () Bool)

(assert (=> b!2962319 (= e!1864590 (= lt!1034434 call!196545))))

(declare-fun b!2962320 () Bool)

(assert (=> b!2962320 (= e!1864592 e!1864593)))

(declare-fun res!1222121 () Bool)

(assert (=> b!2962320 (=> res!1222121 e!1864593)))

(assert (=> b!2962320 (= res!1222121 call!196545)))

(declare-fun b!2962321 () Bool)

(declare-fun derivativeStep!2540 (Regex!9205 C!18596) Regex!9205)

(assert (=> b!2962321 (= e!1864587 (matchR!4087 (derivativeStep!2540 r!17423 (head!6599 s!11993)) (tail!4825 s!11993)))))

(assert (= (and d!842092 c!485544) b!2962312))

(assert (= (and d!842092 (not c!485544)) b!2962321))

(assert (= (and d!842092 c!485545) b!2962319))

(assert (= (and d!842092 (not c!485545)) b!2962317))

(assert (= (and b!2962317 c!485546) b!2962309))

(assert (= (and b!2962317 (not c!485546)) b!2962316))

(assert (= (and b!2962316 (not res!1222120)) b!2962315))

(assert (= (and b!2962315 res!1222125) b!2962310))

(assert (= (and b!2962310 res!1222126) b!2962318))

(assert (= (and b!2962318 res!1222122) b!2962308))

(assert (= (and b!2962315 (not res!1222124)) b!2962314))

(assert (= (and b!2962314 res!1222123) b!2962320))

(assert (= (and b!2962320 (not res!1222121)) b!2962313))

(assert (= (and b!2962313 (not res!1222127)) b!2962311))

(assert (= (or b!2962319 b!2962310 b!2962320) bm!196540))

(declare-fun m!3334849 () Bool)

(assert (=> b!2962311 m!3334849))

(declare-fun m!3334851 () Bool)

(assert (=> b!2962318 m!3334851))

(assert (=> b!2962318 m!3334851))

(declare-fun m!3334853 () Bool)

(assert (=> b!2962318 m!3334853))

(assert (=> b!2962308 m!3334849))

(declare-fun m!3334855 () Bool)

(assert (=> b!2962312 m!3334855))

(assert (=> b!2962313 m!3334851))

(assert (=> b!2962313 m!3334851))

(assert (=> b!2962313 m!3334853))

(assert (=> bm!196540 m!3334841))

(assert (=> d!842092 m!3334841))

(assert (=> d!842092 m!3334711))

(assert (=> b!2962321 m!3334849))

(assert (=> b!2962321 m!3334849))

(declare-fun m!3334857 () Bool)

(assert (=> b!2962321 m!3334857))

(assert (=> b!2962321 m!3334851))

(assert (=> b!2962321 m!3334857))

(assert (=> b!2962321 m!3334851))

(declare-fun m!3334859 () Bool)

(assert (=> b!2962321 m!3334859))

(assert (=> b!2961917 d!842092))

(declare-fun d!842094 () Bool)

(assert (=> d!842094 (= (matchR!4087 r!17423 s!11993) (matchRSpec!1342 r!17423 s!11993))))

(declare-fun lt!1034437 () Unit!48789)

(declare-fun choose!17523 (Regex!9205 List!35070) Unit!48789)

(assert (=> d!842094 (= lt!1034437 (choose!17523 r!17423 s!11993))))

(assert (=> d!842094 (validRegex!3938 r!17423)))

(assert (=> d!842094 (= (mainMatchTheorem!1342 r!17423 s!11993) lt!1034437)))

(declare-fun bs!526360 () Bool)

(assert (= bs!526360 d!842094))

(assert (=> bs!526360 m!3334721))

(assert (=> bs!526360 m!3334719))

(declare-fun m!3334861 () Bool)

(assert (=> bs!526360 m!3334861))

(assert (=> bs!526360 m!3334711))

(assert (=> b!2961917 d!842094))

(declare-fun b!2962341 () Bool)

(declare-fun e!1864609 () Bool)

(declare-fun e!1864608 () Bool)

(assert (=> b!2962341 (= e!1864609 e!1864608)))

(declare-fun res!1222138 () Bool)

(assert (=> b!2962341 (=> (not res!1222138) (not e!1864608))))

(declare-fun call!196552 () Bool)

(assert (=> b!2962341 (= res!1222138 call!196552)))

(declare-fun bm!196547 () Bool)

(declare-fun call!196553 () Bool)

(declare-fun call!196554 () Bool)

(assert (=> bm!196547 (= call!196553 call!196554)))

(declare-fun c!485552 () Bool)

(declare-fun bm!196548 () Bool)

(declare-fun c!485551 () Bool)

(assert (=> bm!196548 (= call!196554 (validRegex!3938 (ite c!485552 (reg!9534 (simplify!208 r!17423)) (ite c!485551 (regOne!18923 (simplify!208 r!17423)) (regTwo!18922 (simplify!208 r!17423))))))))

(declare-fun b!2962342 () Bool)

(declare-fun e!1864612 () Bool)

(declare-fun e!1864613 () Bool)

(assert (=> b!2962342 (= e!1864612 e!1864613)))

(assert (=> b!2962342 (= c!485551 ((_ is Union!9205) (simplify!208 r!17423)))))

(declare-fun b!2962343 () Bool)

(declare-fun e!1864614 () Bool)

(assert (=> b!2962343 (= e!1864614 e!1864612)))

(assert (=> b!2962343 (= c!485552 ((_ is Star!9205) (simplify!208 r!17423)))))

(declare-fun bm!196549 () Bool)

(assert (=> bm!196549 (= call!196552 (validRegex!3938 (ite c!485551 (regTwo!18923 (simplify!208 r!17423)) (regOne!18922 (simplify!208 r!17423)))))))

(declare-fun b!2962344 () Bool)

(declare-fun res!1222139 () Bool)

(assert (=> b!2962344 (=> res!1222139 e!1864609)))

(assert (=> b!2962344 (= res!1222139 (not ((_ is Concat!14526) (simplify!208 r!17423))))))

(assert (=> b!2962344 (= e!1864613 e!1864609)))

(declare-fun b!2962345 () Bool)

(declare-fun e!1864610 () Bool)

(assert (=> b!2962345 (= e!1864612 e!1864610)))

(declare-fun res!1222141 () Bool)

(assert (=> b!2962345 (= res!1222141 (not (nullable!2938 (reg!9534 (simplify!208 r!17423)))))))

(assert (=> b!2962345 (=> (not res!1222141) (not e!1864610))))

(declare-fun d!842096 () Bool)

(declare-fun res!1222140 () Bool)

(assert (=> d!842096 (=> res!1222140 e!1864614)))

(assert (=> d!842096 (= res!1222140 ((_ is ElementMatch!9205) (simplify!208 r!17423)))))

(assert (=> d!842096 (= (validRegex!3938 (simplify!208 r!17423)) e!1864614)))

(declare-fun b!2962340 () Bool)

(declare-fun e!1864611 () Bool)

(assert (=> b!2962340 (= e!1864611 call!196552)))

(declare-fun b!2962346 () Bool)

(assert (=> b!2962346 (= e!1864610 call!196554)))

(declare-fun b!2962347 () Bool)

(assert (=> b!2962347 (= e!1864608 call!196553)))

(declare-fun b!2962348 () Bool)

(declare-fun res!1222142 () Bool)

(assert (=> b!2962348 (=> (not res!1222142) (not e!1864611))))

(assert (=> b!2962348 (= res!1222142 call!196553)))

(assert (=> b!2962348 (= e!1864613 e!1864611)))

(assert (= (and d!842096 (not res!1222140)) b!2962343))

(assert (= (and b!2962343 c!485552) b!2962345))

(assert (= (and b!2962343 (not c!485552)) b!2962342))

(assert (= (and b!2962345 res!1222141) b!2962346))

(assert (= (and b!2962342 c!485551) b!2962348))

(assert (= (and b!2962342 (not c!485551)) b!2962344))

(assert (= (and b!2962348 res!1222142) b!2962340))

(assert (= (and b!2962344 (not res!1222139)) b!2962341))

(assert (= (and b!2962341 res!1222138) b!2962347))

(assert (= (or b!2962348 b!2962347) bm!196547))

(assert (= (or b!2962340 b!2962341) bm!196549))

(assert (= (or b!2962346 bm!196547) bm!196548))

(declare-fun m!3334863 () Bool)

(assert (=> bm!196548 m!3334863))

(declare-fun m!3334865 () Bool)

(assert (=> bm!196549 m!3334865))

(declare-fun m!3334867 () Bool)

(assert (=> b!2962345 m!3334867))

(assert (=> b!2961915 d!842096))

(declare-fun b!2962399 () Bool)

(declare-fun e!1864648 () Regex!9205)

(declare-fun e!1864655 () Regex!9205)

(assert (=> b!2962399 (= e!1864648 e!1864655)))

(declare-fun lt!1034450 () Regex!9205)

(declare-fun call!196570 () Regex!9205)

(assert (=> b!2962399 (= lt!1034450 call!196570)))

(declare-fun lt!1034452 () Regex!9205)

(declare-fun call!196575 () Regex!9205)

(assert (=> b!2962399 (= lt!1034452 call!196575)))

(declare-fun c!485585 () Bool)

(declare-fun call!196573 () Bool)

(assert (=> b!2962399 (= c!485585 call!196573)))

(declare-fun b!2962400 () Bool)

(declare-fun e!1864656 () Regex!9205)

(assert (=> b!2962400 (= e!1864656 EmptyLang!9205)))

(declare-fun b!2962401 () Bool)

(declare-fun c!485575 () Bool)

(assert (=> b!2962401 (= c!485575 ((_ is Union!9205) r!17423))))

(declare-fun e!1864647 () Regex!9205)

(assert (=> b!2962401 (= e!1864647 e!1864648)))

(declare-fun b!2962402 () Bool)

(assert (=> b!2962402 (= e!1864655 lt!1034452)))

(declare-fun b!2962403 () Bool)

(declare-fun e!1864652 () Regex!9205)

(assert (=> b!2962403 (= e!1864652 (Union!9205 lt!1034450 lt!1034452))))

(declare-fun b!2962404 () Bool)

(declare-fun e!1864644 () Bool)

(declare-fun call!196571 () Bool)

(assert (=> b!2962404 (= e!1864644 call!196571)))

(declare-fun b!2962405 () Bool)

(declare-fun e!1864645 () Regex!9205)

(assert (=> b!2962405 (= e!1864645 EmptyExpr!9205)))

(declare-fun bm!196565 () Bool)

(declare-fun lt!1034451 () Regex!9205)

(declare-fun call!196569 () Bool)

(declare-fun c!485584 () Bool)

(declare-fun lt!1034454 () Regex!9205)

(declare-fun isEmptyExpr!396 (Regex!9205) Bool)

(assert (=> bm!196565 (= call!196569 (isEmptyExpr!396 (ite c!485584 lt!1034451 lt!1034454)))))

(declare-fun b!2962406 () Bool)

(declare-fun c!485578 () Bool)

(assert (=> b!2962406 (= c!485578 call!196571)))

(assert (=> b!2962406 (= e!1864655 e!1864652)))

(declare-fun b!2962407 () Bool)

(assert (=> b!2962407 (= e!1864652 lt!1034450)))

(declare-fun bm!196566 () Bool)

(declare-fun call!196574 () Bool)

(assert (=> bm!196566 (= call!196571 call!196574)))

(declare-fun b!2962408 () Bool)

(declare-fun e!1864646 () Regex!9205)

(declare-fun lt!1034455 () Regex!9205)

(assert (=> b!2962408 (= e!1864646 (Concat!14526 lt!1034455 lt!1034454))))

(declare-fun b!2962409 () Bool)

(declare-fun e!1864650 () Regex!9205)

(assert (=> b!2962409 (= e!1864656 e!1864650)))

(declare-fun c!485580 () Bool)

(assert (=> b!2962409 (= c!485580 ((_ is ElementMatch!9205) r!17423))))

(declare-fun b!2962410 () Bool)

(declare-fun c!485581 () Bool)

(assert (=> b!2962410 (= c!485581 ((_ is EmptyExpr!9205) r!17423))))

(declare-fun e!1864651 () Regex!9205)

(assert (=> b!2962410 (= e!1864650 e!1864651)))

(declare-fun bm!196567 () Bool)

(assert (=> bm!196567 (= call!196574 (isEmptyLang!323 (ite c!485584 lt!1034451 (ite c!485575 lt!1034452 lt!1034454))))))

(declare-fun bm!196564 () Bool)

(assert (=> bm!196564 (= call!196573 (isEmptyLang!323 (ite c!485575 lt!1034450 lt!1034455)))))

(declare-fun d!842098 () Bool)

(declare-fun e!1864649 () Bool)

(assert (=> d!842098 e!1864649))

(declare-fun res!1222149 () Bool)

(assert (=> d!842098 (=> (not res!1222149) (not e!1864649))))

(declare-fun lt!1034453 () Regex!9205)

(assert (=> d!842098 (= res!1222149 (validRegex!3938 lt!1034453))))

(assert (=> d!842098 (= lt!1034453 e!1864656)))

(declare-fun c!485576 () Bool)

(assert (=> d!842098 (= c!485576 ((_ is EmptyLang!9205) r!17423))))

(assert (=> d!842098 (validRegex!3938 r!17423)))

(assert (=> d!842098 (= (simplify!208 r!17423) lt!1034453)))

(declare-fun b!2962411 () Bool)

(assert (=> b!2962411 (= e!1864650 r!17423)))

(declare-fun b!2962412 () Bool)

(assert (=> b!2962412 (= e!1864651 e!1864647)))

(assert (=> b!2962412 (= c!485584 ((_ is Star!9205) r!17423))))

(declare-fun b!2962413 () Bool)

(declare-fun e!1864654 () Bool)

(assert (=> b!2962413 (= e!1864654 call!196569)))

(declare-fun b!2962414 () Bool)

(assert (=> b!2962414 (= e!1864651 EmptyExpr!9205)))

(declare-fun b!2962415 () Bool)

(declare-fun c!485582 () Bool)

(assert (=> b!2962415 (= c!485582 (isEmptyExpr!396 lt!1034455))))

(declare-fun e!1864653 () Regex!9205)

(declare-fun e!1864643 () Regex!9205)

(assert (=> b!2962415 (= e!1864653 e!1864643)))

(declare-fun bm!196568 () Bool)

(assert (=> bm!196568 (= call!196575 (simplify!208 (ite c!485575 (regTwo!18923 r!17423) (regOne!18922 r!17423))))))

(declare-fun b!2962416 () Bool)

(assert (=> b!2962416 (= e!1864648 e!1864653)))

(assert (=> b!2962416 (= lt!1034455 call!196575)))

(assert (=> b!2962416 (= lt!1034454 call!196570)))

(declare-fun res!1222151 () Bool)

(assert (=> b!2962416 (= res!1222151 call!196573)))

(assert (=> b!2962416 (=> res!1222151 e!1864644)))

(declare-fun c!485583 () Bool)

(assert (=> b!2962416 (= c!485583 e!1864644)))

(declare-fun b!2962417 () Bool)

(assert (=> b!2962417 (= e!1864653 EmptyLang!9205)))

(declare-fun b!2962418 () Bool)

(assert (=> b!2962418 (= e!1864645 (Star!9205 lt!1034451))))

(declare-fun bm!196569 () Bool)

(declare-fun call!196572 () Regex!9205)

(assert (=> bm!196569 (= call!196570 call!196572)))

(declare-fun b!2962419 () Bool)

(assert (=> b!2962419 (= e!1864643 lt!1034454)))

(declare-fun b!2962420 () Bool)

(assert (=> b!2962420 (= e!1864646 lt!1034455)))

(declare-fun bm!196570 () Bool)

(assert (=> bm!196570 (= call!196572 (simplify!208 (ite c!485584 (reg!9534 r!17423) (ite c!485575 (regOne!18923 r!17423) (regTwo!18922 r!17423)))))))

(declare-fun b!2962421 () Bool)

(declare-fun c!485579 () Bool)

(assert (=> b!2962421 (= c!485579 e!1864654)))

(declare-fun res!1222150 () Bool)

(assert (=> b!2962421 (=> res!1222150 e!1864654)))

(assert (=> b!2962421 (= res!1222150 call!196574)))

(assert (=> b!2962421 (= lt!1034451 call!196572)))

(assert (=> b!2962421 (= e!1864647 e!1864645)))

(declare-fun b!2962422 () Bool)

(assert (=> b!2962422 (= e!1864649 (= (nullable!2938 lt!1034453) (nullable!2938 r!17423)))))

(declare-fun b!2962423 () Bool)

(assert (=> b!2962423 (= e!1864643 e!1864646)))

(declare-fun c!485577 () Bool)

(assert (=> b!2962423 (= c!485577 call!196569)))

(assert (= (and d!842098 c!485576) b!2962400))

(assert (= (and d!842098 (not c!485576)) b!2962409))

(assert (= (and b!2962409 c!485580) b!2962411))

(assert (= (and b!2962409 (not c!485580)) b!2962410))

(assert (= (and b!2962410 c!485581) b!2962414))

(assert (= (and b!2962410 (not c!485581)) b!2962412))

(assert (= (and b!2962412 c!485584) b!2962421))

(assert (= (and b!2962412 (not c!485584)) b!2962401))

(assert (= (and b!2962421 (not res!1222150)) b!2962413))

(assert (= (and b!2962421 c!485579) b!2962405))

(assert (= (and b!2962421 (not c!485579)) b!2962418))

(assert (= (and b!2962401 c!485575) b!2962399))

(assert (= (and b!2962401 (not c!485575)) b!2962416))

(assert (= (and b!2962399 c!485585) b!2962402))

(assert (= (and b!2962399 (not c!485585)) b!2962406))

(assert (= (and b!2962406 c!485578) b!2962407))

(assert (= (and b!2962406 (not c!485578)) b!2962403))

(assert (= (and b!2962416 (not res!1222151)) b!2962404))

(assert (= (and b!2962416 c!485583) b!2962417))

(assert (= (and b!2962416 (not c!485583)) b!2962415))

(assert (= (and b!2962415 c!485582) b!2962419))

(assert (= (and b!2962415 (not c!485582)) b!2962423))

(assert (= (and b!2962423 c!485577) b!2962420))

(assert (= (and b!2962423 (not c!485577)) b!2962408))

(assert (= (or b!2962399 b!2962416) bm!196569))

(assert (= (or b!2962399 b!2962416) bm!196568))

(assert (= (or b!2962406 b!2962404) bm!196566))

(assert (= (or b!2962399 b!2962416) bm!196564))

(assert (= (or b!2962413 b!2962423) bm!196565))

(assert (= (or b!2962421 bm!196569) bm!196570))

(assert (= (or b!2962421 bm!196566) bm!196567))

(assert (= (and d!842098 res!1222149) b!2962422))

(declare-fun m!3334869 () Bool)

(assert (=> b!2962415 m!3334869))

(declare-fun m!3334871 () Bool)

(assert (=> bm!196570 m!3334871))

(declare-fun m!3334873 () Bool)

(assert (=> bm!196565 m!3334873))

(declare-fun m!3334875 () Bool)

(assert (=> b!2962422 m!3334875))

(assert (=> b!2962422 m!3334855))

(declare-fun m!3334877 () Bool)

(assert (=> d!842098 m!3334877))

(assert (=> d!842098 m!3334711))

(declare-fun m!3334879 () Bool)

(assert (=> bm!196567 m!3334879))

(declare-fun m!3334881 () Bool)

(assert (=> bm!196564 m!3334881))

(declare-fun m!3334883 () Bool)

(assert (=> bm!196568 m!3334883))

(assert (=> b!2961915 d!842098))

(declare-fun b!2962425 () Bool)

(declare-fun e!1864658 () Bool)

(declare-fun e!1864657 () Bool)

(assert (=> b!2962425 (= e!1864658 e!1864657)))

(declare-fun res!1222152 () Bool)

(assert (=> b!2962425 (=> (not res!1222152) (not e!1864657))))

(declare-fun call!196576 () Bool)

(assert (=> b!2962425 (= res!1222152 call!196576)))

(declare-fun bm!196571 () Bool)

(declare-fun call!196577 () Bool)

(declare-fun call!196578 () Bool)

(assert (=> bm!196571 (= call!196577 call!196578)))

(declare-fun bm!196572 () Bool)

(declare-fun c!485587 () Bool)

(declare-fun c!485586 () Bool)

(assert (=> bm!196572 (= call!196578 (validRegex!3938 (ite c!485587 (reg!9534 r!17423) (ite c!485586 (regOne!18923 r!17423) (regTwo!18922 r!17423)))))))

(declare-fun b!2962426 () Bool)

(declare-fun e!1864661 () Bool)

(declare-fun e!1864662 () Bool)

(assert (=> b!2962426 (= e!1864661 e!1864662)))

(assert (=> b!2962426 (= c!485586 ((_ is Union!9205) r!17423))))

(declare-fun b!2962427 () Bool)

(declare-fun e!1864663 () Bool)

(assert (=> b!2962427 (= e!1864663 e!1864661)))

(assert (=> b!2962427 (= c!485587 ((_ is Star!9205) r!17423))))

(declare-fun bm!196573 () Bool)

(assert (=> bm!196573 (= call!196576 (validRegex!3938 (ite c!485586 (regTwo!18923 r!17423) (regOne!18922 r!17423))))))

(declare-fun b!2962428 () Bool)

(declare-fun res!1222153 () Bool)

(assert (=> b!2962428 (=> res!1222153 e!1864658)))

(assert (=> b!2962428 (= res!1222153 (not ((_ is Concat!14526) r!17423)))))

(assert (=> b!2962428 (= e!1864662 e!1864658)))

(declare-fun b!2962429 () Bool)

(declare-fun e!1864659 () Bool)

(assert (=> b!2962429 (= e!1864661 e!1864659)))

(declare-fun res!1222155 () Bool)

(assert (=> b!2962429 (= res!1222155 (not (nullable!2938 (reg!9534 r!17423))))))

(assert (=> b!2962429 (=> (not res!1222155) (not e!1864659))))

(declare-fun d!842100 () Bool)

(declare-fun res!1222154 () Bool)

(assert (=> d!842100 (=> res!1222154 e!1864663)))

(assert (=> d!842100 (= res!1222154 ((_ is ElementMatch!9205) r!17423))))

(assert (=> d!842100 (= (validRegex!3938 r!17423) e!1864663)))

(declare-fun b!2962424 () Bool)

(declare-fun e!1864660 () Bool)

(assert (=> b!2962424 (= e!1864660 call!196576)))

(declare-fun b!2962430 () Bool)

(assert (=> b!2962430 (= e!1864659 call!196578)))

(declare-fun b!2962431 () Bool)

(assert (=> b!2962431 (= e!1864657 call!196577)))

(declare-fun b!2962432 () Bool)

(declare-fun res!1222156 () Bool)

(assert (=> b!2962432 (=> (not res!1222156) (not e!1864660))))

(assert (=> b!2962432 (= res!1222156 call!196577)))

(assert (=> b!2962432 (= e!1864662 e!1864660)))

(assert (= (and d!842100 (not res!1222154)) b!2962427))

(assert (= (and b!2962427 c!485587) b!2962429))

(assert (= (and b!2962427 (not c!485587)) b!2962426))

(assert (= (and b!2962429 res!1222155) b!2962430))

(assert (= (and b!2962426 c!485586) b!2962432))

(assert (= (and b!2962426 (not c!485586)) b!2962428))

(assert (= (and b!2962432 res!1222156) b!2962424))

(assert (= (and b!2962428 (not res!1222153)) b!2962425))

(assert (= (and b!2962425 res!1222152) b!2962431))

(assert (= (or b!2962432 b!2962431) bm!196571))

(assert (= (or b!2962424 b!2962425) bm!196573))

(assert (= (or b!2962430 bm!196571) bm!196572))

(declare-fun m!3334885 () Bool)

(assert (=> bm!196572 m!3334885))

(declare-fun m!3334887 () Bool)

(assert (=> bm!196573 m!3334887))

(declare-fun m!3334889 () Bool)

(assert (=> b!2962429 m!3334889))

(assert (=> start!286940 d!842100))

(declare-fun b!2962433 () Bool)

(declare-fun e!1864668 () Bool)

(assert (=> b!2962433 (= e!1864668 (= (head!6599 s!11993) (c!485435 lt!1034389)))))

(declare-fun b!2962434 () Bool)

(declare-fun e!1864666 () Bool)

(declare-fun lt!1034456 () Bool)

(assert (=> b!2962434 (= e!1864666 (not lt!1034456))))

(declare-fun b!2962435 () Bool)

(declare-fun res!1222163 () Bool)

(assert (=> b!2962435 (=> (not res!1222163) (not e!1864668))))

(declare-fun call!196579 () Bool)

(assert (=> b!2962435 (= res!1222163 (not call!196579))))

(declare-fun b!2962436 () Bool)

(declare-fun e!1864670 () Bool)

(assert (=> b!2962436 (= e!1864670 (not (= (head!6599 s!11993) (c!485435 lt!1034389))))))

(declare-fun b!2962437 () Bool)

(declare-fun e!1864664 () Bool)

(assert (=> b!2962437 (= e!1864664 (nullable!2938 lt!1034389))))

(declare-fun d!842102 () Bool)

(declare-fun e!1864667 () Bool)

(assert (=> d!842102 e!1864667))

(declare-fun c!485589 () Bool)

(assert (=> d!842102 (= c!485589 ((_ is EmptyExpr!9205) lt!1034389))))

(assert (=> d!842102 (= lt!1034456 e!1864664)))

(declare-fun c!485588 () Bool)

(assert (=> d!842102 (= c!485588 (isEmpty!19219 s!11993))))

(assert (=> d!842102 (validRegex!3938 lt!1034389)))

(assert (=> d!842102 (= (matchR!4087 lt!1034389 s!11993) lt!1034456)))

(declare-fun b!2962438 () Bool)

(declare-fun res!1222164 () Bool)

(assert (=> b!2962438 (=> res!1222164 e!1864670)))

(assert (=> b!2962438 (= res!1222164 (not (isEmpty!19219 (tail!4825 s!11993))))))

(declare-fun bm!196574 () Bool)

(assert (=> bm!196574 (= call!196579 (isEmpty!19219 s!11993))))

(declare-fun b!2962439 () Bool)

(declare-fun e!1864665 () Bool)

(declare-fun e!1864669 () Bool)

(assert (=> b!2962439 (= e!1864665 e!1864669)))

(declare-fun res!1222160 () Bool)

(assert (=> b!2962439 (=> (not res!1222160) (not e!1864669))))

(assert (=> b!2962439 (= res!1222160 (not lt!1034456))))

(declare-fun b!2962440 () Bool)

(declare-fun res!1222161 () Bool)

(assert (=> b!2962440 (=> res!1222161 e!1864665)))

(assert (=> b!2962440 (= res!1222161 e!1864668)))

(declare-fun res!1222162 () Bool)

(assert (=> b!2962440 (=> (not res!1222162) (not e!1864668))))

(assert (=> b!2962440 (= res!1222162 lt!1034456)))

(declare-fun b!2962441 () Bool)

(declare-fun res!1222157 () Bool)

(assert (=> b!2962441 (=> res!1222157 e!1864665)))

(assert (=> b!2962441 (= res!1222157 (not ((_ is ElementMatch!9205) lt!1034389)))))

(assert (=> b!2962441 (= e!1864666 e!1864665)))

(declare-fun b!2962442 () Bool)

(assert (=> b!2962442 (= e!1864667 e!1864666)))

(declare-fun c!485590 () Bool)

(assert (=> b!2962442 (= c!485590 ((_ is EmptyLang!9205) lt!1034389))))

(declare-fun b!2962443 () Bool)

(declare-fun res!1222159 () Bool)

(assert (=> b!2962443 (=> (not res!1222159) (not e!1864668))))

(assert (=> b!2962443 (= res!1222159 (isEmpty!19219 (tail!4825 s!11993)))))

(declare-fun b!2962444 () Bool)

(assert (=> b!2962444 (= e!1864667 (= lt!1034456 call!196579))))

(declare-fun b!2962445 () Bool)

(assert (=> b!2962445 (= e!1864669 e!1864670)))

(declare-fun res!1222158 () Bool)

(assert (=> b!2962445 (=> res!1222158 e!1864670)))

(assert (=> b!2962445 (= res!1222158 call!196579)))

(declare-fun b!2962446 () Bool)

(assert (=> b!2962446 (= e!1864664 (matchR!4087 (derivativeStep!2540 lt!1034389 (head!6599 s!11993)) (tail!4825 s!11993)))))

(assert (= (and d!842102 c!485588) b!2962437))

(assert (= (and d!842102 (not c!485588)) b!2962446))

(assert (= (and d!842102 c!485589) b!2962444))

(assert (= (and d!842102 (not c!485589)) b!2962442))

(assert (= (and b!2962442 c!485590) b!2962434))

(assert (= (and b!2962442 (not c!485590)) b!2962441))

(assert (= (and b!2962441 (not res!1222157)) b!2962440))

(assert (= (and b!2962440 res!1222162) b!2962435))

(assert (= (and b!2962435 res!1222163) b!2962443))

(assert (= (and b!2962443 res!1222159) b!2962433))

(assert (= (and b!2962440 (not res!1222161)) b!2962439))

(assert (= (and b!2962439 res!1222160) b!2962445))

(assert (= (and b!2962445 (not res!1222158)) b!2962438))

(assert (= (and b!2962438 (not res!1222164)) b!2962436))

(assert (= (or b!2962444 b!2962435 b!2962445) bm!196574))

(assert (=> b!2962436 m!3334849))

(assert (=> b!2962443 m!3334851))

(assert (=> b!2962443 m!3334851))

(assert (=> b!2962443 m!3334853))

(assert (=> b!2962433 m!3334849))

(declare-fun m!3334891 () Bool)

(assert (=> b!2962437 m!3334891))

(assert (=> b!2962438 m!3334851))

(assert (=> b!2962438 m!3334851))

(assert (=> b!2962438 m!3334853))

(assert (=> bm!196574 m!3334841))

(assert (=> d!842102 m!3334841))

(declare-fun m!3334893 () Bool)

(assert (=> d!842102 m!3334893))

(assert (=> b!2962446 m!3334849))

(assert (=> b!2962446 m!3334849))

(declare-fun m!3334895 () Bool)

(assert (=> b!2962446 m!3334895))

(assert (=> b!2962446 m!3334851))

(assert (=> b!2962446 m!3334895))

(assert (=> b!2962446 m!3334851))

(declare-fun m!3334897 () Bool)

(assert (=> b!2962446 m!3334897))

(assert (=> b!2961911 d!842102))

(declare-fun b!2962447 () Bool)

(declare-fun e!1864675 () Bool)

(assert (=> b!2962447 (= e!1864675 (= (head!6599 s!11993) (c!485435 (regTwo!18923 r!17423))))))

(declare-fun b!2962448 () Bool)

(declare-fun e!1864673 () Bool)

(declare-fun lt!1034457 () Bool)

(assert (=> b!2962448 (= e!1864673 (not lt!1034457))))

(declare-fun b!2962449 () Bool)

(declare-fun res!1222171 () Bool)

(assert (=> b!2962449 (=> (not res!1222171) (not e!1864675))))

(declare-fun call!196580 () Bool)

(assert (=> b!2962449 (= res!1222171 (not call!196580))))

(declare-fun b!2962450 () Bool)

(declare-fun e!1864677 () Bool)

(assert (=> b!2962450 (= e!1864677 (not (= (head!6599 s!11993) (c!485435 (regTwo!18923 r!17423)))))))

(declare-fun b!2962451 () Bool)

(declare-fun e!1864671 () Bool)

(assert (=> b!2962451 (= e!1864671 (nullable!2938 (regTwo!18923 r!17423)))))

(declare-fun d!842104 () Bool)

(declare-fun e!1864674 () Bool)

(assert (=> d!842104 e!1864674))

(declare-fun c!485592 () Bool)

(assert (=> d!842104 (= c!485592 ((_ is EmptyExpr!9205) (regTwo!18923 r!17423)))))

(assert (=> d!842104 (= lt!1034457 e!1864671)))

(declare-fun c!485591 () Bool)

(assert (=> d!842104 (= c!485591 (isEmpty!19219 s!11993))))

(assert (=> d!842104 (validRegex!3938 (regTwo!18923 r!17423))))

(assert (=> d!842104 (= (matchR!4087 (regTwo!18923 r!17423) s!11993) lt!1034457)))

(declare-fun b!2962452 () Bool)

(declare-fun res!1222172 () Bool)

(assert (=> b!2962452 (=> res!1222172 e!1864677)))

(assert (=> b!2962452 (= res!1222172 (not (isEmpty!19219 (tail!4825 s!11993))))))

(declare-fun bm!196575 () Bool)

(assert (=> bm!196575 (= call!196580 (isEmpty!19219 s!11993))))

(declare-fun b!2962453 () Bool)

(declare-fun e!1864672 () Bool)

(declare-fun e!1864676 () Bool)

(assert (=> b!2962453 (= e!1864672 e!1864676)))

(declare-fun res!1222168 () Bool)

(assert (=> b!2962453 (=> (not res!1222168) (not e!1864676))))

(assert (=> b!2962453 (= res!1222168 (not lt!1034457))))

(declare-fun b!2962454 () Bool)

(declare-fun res!1222169 () Bool)

(assert (=> b!2962454 (=> res!1222169 e!1864672)))

(assert (=> b!2962454 (= res!1222169 e!1864675)))

(declare-fun res!1222170 () Bool)

(assert (=> b!2962454 (=> (not res!1222170) (not e!1864675))))

(assert (=> b!2962454 (= res!1222170 lt!1034457)))

(declare-fun b!2962455 () Bool)

(declare-fun res!1222165 () Bool)

(assert (=> b!2962455 (=> res!1222165 e!1864672)))

(assert (=> b!2962455 (= res!1222165 (not ((_ is ElementMatch!9205) (regTwo!18923 r!17423))))))

(assert (=> b!2962455 (= e!1864673 e!1864672)))

(declare-fun b!2962456 () Bool)

(assert (=> b!2962456 (= e!1864674 e!1864673)))

(declare-fun c!485593 () Bool)

(assert (=> b!2962456 (= c!485593 ((_ is EmptyLang!9205) (regTwo!18923 r!17423)))))

(declare-fun b!2962457 () Bool)

(declare-fun res!1222167 () Bool)

(assert (=> b!2962457 (=> (not res!1222167) (not e!1864675))))

(assert (=> b!2962457 (= res!1222167 (isEmpty!19219 (tail!4825 s!11993)))))

(declare-fun b!2962458 () Bool)

(assert (=> b!2962458 (= e!1864674 (= lt!1034457 call!196580))))

(declare-fun b!2962459 () Bool)

(assert (=> b!2962459 (= e!1864676 e!1864677)))

(declare-fun res!1222166 () Bool)

(assert (=> b!2962459 (=> res!1222166 e!1864677)))

(assert (=> b!2962459 (= res!1222166 call!196580)))

(declare-fun b!2962460 () Bool)

(assert (=> b!2962460 (= e!1864671 (matchR!4087 (derivativeStep!2540 (regTwo!18923 r!17423) (head!6599 s!11993)) (tail!4825 s!11993)))))

(assert (= (and d!842104 c!485591) b!2962451))

(assert (= (and d!842104 (not c!485591)) b!2962460))

(assert (= (and d!842104 c!485592) b!2962458))

(assert (= (and d!842104 (not c!485592)) b!2962456))

(assert (= (and b!2962456 c!485593) b!2962448))

(assert (= (and b!2962456 (not c!485593)) b!2962455))

(assert (= (and b!2962455 (not res!1222165)) b!2962454))

(assert (= (and b!2962454 res!1222170) b!2962449))

(assert (= (and b!2962449 res!1222171) b!2962457))

(assert (= (and b!2962457 res!1222167) b!2962447))

(assert (= (and b!2962454 (not res!1222169)) b!2962453))

(assert (= (and b!2962453 res!1222168) b!2962459))

(assert (= (and b!2962459 (not res!1222166)) b!2962452))

(assert (= (and b!2962452 (not res!1222172)) b!2962450))

(assert (= (or b!2962458 b!2962449 b!2962459) bm!196575))

(assert (=> b!2962450 m!3334849))

(assert (=> b!2962457 m!3334851))

(assert (=> b!2962457 m!3334851))

(assert (=> b!2962457 m!3334853))

(assert (=> b!2962447 m!3334849))

(declare-fun m!3334899 () Bool)

(assert (=> b!2962451 m!3334899))

(assert (=> b!2962452 m!3334851))

(assert (=> b!2962452 m!3334851))

(assert (=> b!2962452 m!3334853))

(assert (=> bm!196575 m!3334841))

(assert (=> d!842104 m!3334841))

(declare-fun m!3334901 () Bool)

(assert (=> d!842104 m!3334901))

(assert (=> b!2962460 m!3334849))

(assert (=> b!2962460 m!3334849))

(declare-fun m!3334903 () Bool)

(assert (=> b!2962460 m!3334903))

(assert (=> b!2962460 m!3334851))

(assert (=> b!2962460 m!3334903))

(assert (=> b!2962460 m!3334851))

(declare-fun m!3334905 () Bool)

(assert (=> b!2962460 m!3334905))

(assert (=> b!2961911 d!842104))

(declare-fun d!842106 () Bool)

(assert (=> d!842106 (= (matchR!4087 (regTwo!18923 r!17423) s!11993) (matchR!4087 (simplify!208 (regTwo!18923 r!17423)) s!11993))))

(declare-fun lt!1034460 () Unit!48789)

(declare-fun choose!17525 (Regex!9205 List!35070) Unit!48789)

(assert (=> d!842106 (= lt!1034460 (choose!17525 (regTwo!18923 r!17423) s!11993))))

(assert (=> d!842106 (validRegex!3938 (regTwo!18923 r!17423))))

(assert (=> d!842106 (= (lemmaSimplifySound!134 (regTwo!18923 r!17423) s!11993) lt!1034460)))

(declare-fun bs!526361 () Bool)

(assert (= bs!526361 d!842106))

(assert (=> bs!526361 m!3334715))

(assert (=> bs!526361 m!3334727))

(declare-fun m!3334907 () Bool)

(assert (=> bs!526361 m!3334907))

(assert (=> bs!526361 m!3334715))

(declare-fun m!3334909 () Bool)

(assert (=> bs!526361 m!3334909))

(assert (=> bs!526361 m!3334901))

(assert (=> b!2961911 d!842106))

(declare-fun d!842108 () Bool)

(assert (=> d!842108 (= (isEmptyLang!323 lt!1034386) ((_ is EmptyLang!9205) lt!1034386))))

(assert (=> b!2961916 d!842108))

(declare-fun b!2962461 () Bool)

(declare-fun e!1864683 () Regex!9205)

(declare-fun e!1864690 () Regex!9205)

(assert (=> b!2962461 (= e!1864683 e!1864690)))

(declare-fun lt!1034461 () Regex!9205)

(declare-fun call!196582 () Regex!9205)

(assert (=> b!2962461 (= lt!1034461 call!196582)))

(declare-fun lt!1034463 () Regex!9205)

(declare-fun call!196587 () Regex!9205)

(assert (=> b!2962461 (= lt!1034463 call!196587)))

(declare-fun c!485604 () Bool)

(declare-fun call!196585 () Bool)

(assert (=> b!2962461 (= c!485604 call!196585)))

(declare-fun b!2962462 () Bool)

(declare-fun e!1864691 () Regex!9205)

(assert (=> b!2962462 (= e!1864691 EmptyLang!9205)))

(declare-fun b!2962463 () Bool)

(declare-fun c!485594 () Bool)

(assert (=> b!2962463 (= c!485594 ((_ is Union!9205) (regTwo!18923 r!17423)))))

(declare-fun e!1864682 () Regex!9205)

(assert (=> b!2962463 (= e!1864682 e!1864683)))

(declare-fun b!2962464 () Bool)

(assert (=> b!2962464 (= e!1864690 lt!1034463)))

(declare-fun b!2962465 () Bool)

(declare-fun e!1864687 () Regex!9205)

(assert (=> b!2962465 (= e!1864687 (Union!9205 lt!1034461 lt!1034463))))

(declare-fun b!2962466 () Bool)

(declare-fun e!1864679 () Bool)

(declare-fun call!196583 () Bool)

(assert (=> b!2962466 (= e!1864679 call!196583)))

(declare-fun b!2962467 () Bool)

(declare-fun e!1864680 () Regex!9205)

(assert (=> b!2962467 (= e!1864680 EmptyExpr!9205)))

(declare-fun bm!196577 () Bool)

(declare-fun call!196581 () Bool)

(declare-fun lt!1034462 () Regex!9205)

(declare-fun c!485603 () Bool)

(declare-fun lt!1034465 () Regex!9205)

(assert (=> bm!196577 (= call!196581 (isEmptyExpr!396 (ite c!485603 lt!1034462 lt!1034465)))))

(declare-fun b!2962468 () Bool)

(declare-fun c!485597 () Bool)

(assert (=> b!2962468 (= c!485597 call!196583)))

(assert (=> b!2962468 (= e!1864690 e!1864687)))

(declare-fun b!2962469 () Bool)

(assert (=> b!2962469 (= e!1864687 lt!1034461)))

(declare-fun bm!196578 () Bool)

(declare-fun call!196586 () Bool)

(assert (=> bm!196578 (= call!196583 call!196586)))

(declare-fun b!2962470 () Bool)

(declare-fun e!1864681 () Regex!9205)

(declare-fun lt!1034466 () Regex!9205)

(assert (=> b!2962470 (= e!1864681 (Concat!14526 lt!1034466 lt!1034465))))

(declare-fun b!2962471 () Bool)

(declare-fun e!1864685 () Regex!9205)

(assert (=> b!2962471 (= e!1864691 e!1864685)))

(declare-fun c!485599 () Bool)

(assert (=> b!2962471 (= c!485599 ((_ is ElementMatch!9205) (regTwo!18923 r!17423)))))

(declare-fun b!2962472 () Bool)

(declare-fun c!485600 () Bool)

(assert (=> b!2962472 (= c!485600 ((_ is EmptyExpr!9205) (regTwo!18923 r!17423)))))

(declare-fun e!1864686 () Regex!9205)

(assert (=> b!2962472 (= e!1864685 e!1864686)))

(declare-fun bm!196579 () Bool)

(assert (=> bm!196579 (= call!196586 (isEmptyLang!323 (ite c!485603 lt!1034462 (ite c!485594 lt!1034463 lt!1034465))))))

(declare-fun bm!196576 () Bool)

(assert (=> bm!196576 (= call!196585 (isEmptyLang!323 (ite c!485594 lt!1034461 lt!1034466)))))

(declare-fun d!842110 () Bool)

(declare-fun e!1864684 () Bool)

(assert (=> d!842110 e!1864684))

(declare-fun res!1222173 () Bool)

(assert (=> d!842110 (=> (not res!1222173) (not e!1864684))))

(declare-fun lt!1034464 () Regex!9205)

(assert (=> d!842110 (= res!1222173 (validRegex!3938 lt!1034464))))

(assert (=> d!842110 (= lt!1034464 e!1864691)))

(declare-fun c!485595 () Bool)

(assert (=> d!842110 (= c!485595 ((_ is EmptyLang!9205) (regTwo!18923 r!17423)))))

(assert (=> d!842110 (validRegex!3938 (regTwo!18923 r!17423))))

(assert (=> d!842110 (= (simplify!208 (regTwo!18923 r!17423)) lt!1034464)))

(declare-fun b!2962473 () Bool)

(assert (=> b!2962473 (= e!1864685 (regTwo!18923 r!17423))))

(declare-fun b!2962474 () Bool)

(assert (=> b!2962474 (= e!1864686 e!1864682)))

(assert (=> b!2962474 (= c!485603 ((_ is Star!9205) (regTwo!18923 r!17423)))))

(declare-fun b!2962475 () Bool)

(declare-fun e!1864689 () Bool)

(assert (=> b!2962475 (= e!1864689 call!196581)))

(declare-fun b!2962476 () Bool)

(assert (=> b!2962476 (= e!1864686 EmptyExpr!9205)))

(declare-fun b!2962477 () Bool)

(declare-fun c!485601 () Bool)

(assert (=> b!2962477 (= c!485601 (isEmptyExpr!396 lt!1034466))))

(declare-fun e!1864688 () Regex!9205)

(declare-fun e!1864678 () Regex!9205)

(assert (=> b!2962477 (= e!1864688 e!1864678)))

(declare-fun bm!196580 () Bool)

(assert (=> bm!196580 (= call!196587 (simplify!208 (ite c!485594 (regTwo!18923 (regTwo!18923 r!17423)) (regOne!18922 (regTwo!18923 r!17423)))))))

(declare-fun b!2962478 () Bool)

(assert (=> b!2962478 (= e!1864683 e!1864688)))

(assert (=> b!2962478 (= lt!1034466 call!196587)))

(assert (=> b!2962478 (= lt!1034465 call!196582)))

(declare-fun res!1222175 () Bool)

(assert (=> b!2962478 (= res!1222175 call!196585)))

(assert (=> b!2962478 (=> res!1222175 e!1864679)))

(declare-fun c!485602 () Bool)

(assert (=> b!2962478 (= c!485602 e!1864679)))

(declare-fun b!2962479 () Bool)

(assert (=> b!2962479 (= e!1864688 EmptyLang!9205)))

(declare-fun b!2962480 () Bool)

(assert (=> b!2962480 (= e!1864680 (Star!9205 lt!1034462))))

(declare-fun bm!196581 () Bool)

(declare-fun call!196584 () Regex!9205)

(assert (=> bm!196581 (= call!196582 call!196584)))

(declare-fun b!2962481 () Bool)

(assert (=> b!2962481 (= e!1864678 lt!1034465)))

(declare-fun b!2962482 () Bool)

(assert (=> b!2962482 (= e!1864681 lt!1034466)))

(declare-fun bm!196582 () Bool)

(assert (=> bm!196582 (= call!196584 (simplify!208 (ite c!485603 (reg!9534 (regTwo!18923 r!17423)) (ite c!485594 (regOne!18923 (regTwo!18923 r!17423)) (regTwo!18922 (regTwo!18923 r!17423))))))))

(declare-fun b!2962483 () Bool)

(declare-fun c!485598 () Bool)

(assert (=> b!2962483 (= c!485598 e!1864689)))

(declare-fun res!1222174 () Bool)

(assert (=> b!2962483 (=> res!1222174 e!1864689)))

(assert (=> b!2962483 (= res!1222174 call!196586)))

(assert (=> b!2962483 (= lt!1034462 call!196584)))

(assert (=> b!2962483 (= e!1864682 e!1864680)))

(declare-fun b!2962484 () Bool)

(assert (=> b!2962484 (= e!1864684 (= (nullable!2938 lt!1034464) (nullable!2938 (regTwo!18923 r!17423))))))

(declare-fun b!2962485 () Bool)

(assert (=> b!2962485 (= e!1864678 e!1864681)))

(declare-fun c!485596 () Bool)

(assert (=> b!2962485 (= c!485596 call!196581)))

(assert (= (and d!842110 c!485595) b!2962462))

(assert (= (and d!842110 (not c!485595)) b!2962471))

(assert (= (and b!2962471 c!485599) b!2962473))

(assert (= (and b!2962471 (not c!485599)) b!2962472))

(assert (= (and b!2962472 c!485600) b!2962476))

(assert (= (and b!2962472 (not c!485600)) b!2962474))

(assert (= (and b!2962474 c!485603) b!2962483))

(assert (= (and b!2962474 (not c!485603)) b!2962463))

(assert (= (and b!2962483 (not res!1222174)) b!2962475))

(assert (= (and b!2962483 c!485598) b!2962467))

(assert (= (and b!2962483 (not c!485598)) b!2962480))

(assert (= (and b!2962463 c!485594) b!2962461))

(assert (= (and b!2962463 (not c!485594)) b!2962478))

(assert (= (and b!2962461 c!485604) b!2962464))

(assert (= (and b!2962461 (not c!485604)) b!2962468))

(assert (= (and b!2962468 c!485597) b!2962469))

(assert (= (and b!2962468 (not c!485597)) b!2962465))

(assert (= (and b!2962478 (not res!1222175)) b!2962466))

(assert (= (and b!2962478 c!485602) b!2962479))

(assert (= (and b!2962478 (not c!485602)) b!2962477))

(assert (= (and b!2962477 c!485601) b!2962481))

(assert (= (and b!2962477 (not c!485601)) b!2962485))

(assert (= (and b!2962485 c!485596) b!2962482))

(assert (= (and b!2962485 (not c!485596)) b!2962470))

(assert (= (or b!2962461 b!2962478) bm!196581))

(assert (= (or b!2962461 b!2962478) bm!196580))

(assert (= (or b!2962468 b!2962466) bm!196578))

(assert (= (or b!2962461 b!2962478) bm!196576))

(assert (= (or b!2962475 b!2962485) bm!196577))

(assert (= (or b!2962483 bm!196581) bm!196582))

(assert (= (or b!2962483 bm!196578) bm!196579))

(assert (= (and d!842110 res!1222173) b!2962484))

(declare-fun m!3334911 () Bool)

(assert (=> b!2962477 m!3334911))

(declare-fun m!3334913 () Bool)

(assert (=> bm!196582 m!3334913))

(declare-fun m!3334915 () Bool)

(assert (=> bm!196577 m!3334915))

(declare-fun m!3334917 () Bool)

(assert (=> b!2962484 m!3334917))

(assert (=> b!2962484 m!3334899))

(declare-fun m!3334919 () Bool)

(assert (=> d!842110 m!3334919))

(assert (=> d!842110 m!3334901))

(declare-fun m!3334921 () Bool)

(assert (=> bm!196579 m!3334921))

(declare-fun m!3334923 () Bool)

(assert (=> bm!196576 m!3334923))

(declare-fun m!3334925 () Bool)

(assert (=> bm!196580 m!3334925))

(assert (=> b!2961916 d!842110))

(declare-fun b!2962486 () Bool)

(declare-fun e!1864697 () Regex!9205)

(declare-fun e!1864704 () Regex!9205)

(assert (=> b!2962486 (= e!1864697 e!1864704)))

(declare-fun lt!1034467 () Regex!9205)

(declare-fun call!196589 () Regex!9205)

(assert (=> b!2962486 (= lt!1034467 call!196589)))

(declare-fun lt!1034469 () Regex!9205)

(declare-fun call!196594 () Regex!9205)

(assert (=> b!2962486 (= lt!1034469 call!196594)))

(declare-fun c!485615 () Bool)

(declare-fun call!196592 () Bool)

(assert (=> b!2962486 (= c!485615 call!196592)))

(declare-fun b!2962487 () Bool)

(declare-fun e!1864705 () Regex!9205)

(assert (=> b!2962487 (= e!1864705 EmptyLang!9205)))

(declare-fun b!2962488 () Bool)

(declare-fun c!485605 () Bool)

(assert (=> b!2962488 (= c!485605 ((_ is Union!9205) (regOne!18923 r!17423)))))

(declare-fun e!1864696 () Regex!9205)

(assert (=> b!2962488 (= e!1864696 e!1864697)))

(declare-fun b!2962489 () Bool)

(assert (=> b!2962489 (= e!1864704 lt!1034469)))

(declare-fun b!2962490 () Bool)

(declare-fun e!1864701 () Regex!9205)

(assert (=> b!2962490 (= e!1864701 (Union!9205 lt!1034467 lt!1034469))))

(declare-fun b!2962491 () Bool)

(declare-fun e!1864693 () Bool)

(declare-fun call!196590 () Bool)

(assert (=> b!2962491 (= e!1864693 call!196590)))

(declare-fun b!2962492 () Bool)

(declare-fun e!1864694 () Regex!9205)

(assert (=> b!2962492 (= e!1864694 EmptyExpr!9205)))

(declare-fun bm!196584 () Bool)

(declare-fun lt!1034471 () Regex!9205)

(declare-fun c!485614 () Bool)

(declare-fun call!196588 () Bool)

(declare-fun lt!1034468 () Regex!9205)

(assert (=> bm!196584 (= call!196588 (isEmptyExpr!396 (ite c!485614 lt!1034468 lt!1034471)))))

(declare-fun b!2962493 () Bool)

(declare-fun c!485608 () Bool)

(assert (=> b!2962493 (= c!485608 call!196590)))

(assert (=> b!2962493 (= e!1864704 e!1864701)))

(declare-fun b!2962494 () Bool)

(assert (=> b!2962494 (= e!1864701 lt!1034467)))

(declare-fun bm!196585 () Bool)

(declare-fun call!196593 () Bool)

(assert (=> bm!196585 (= call!196590 call!196593)))

(declare-fun b!2962495 () Bool)

(declare-fun e!1864695 () Regex!9205)

(declare-fun lt!1034472 () Regex!9205)

(assert (=> b!2962495 (= e!1864695 (Concat!14526 lt!1034472 lt!1034471))))

(declare-fun b!2962496 () Bool)

(declare-fun e!1864699 () Regex!9205)

(assert (=> b!2962496 (= e!1864705 e!1864699)))

(declare-fun c!485610 () Bool)

(assert (=> b!2962496 (= c!485610 ((_ is ElementMatch!9205) (regOne!18923 r!17423)))))

(declare-fun b!2962497 () Bool)

(declare-fun c!485611 () Bool)

(assert (=> b!2962497 (= c!485611 ((_ is EmptyExpr!9205) (regOne!18923 r!17423)))))

(declare-fun e!1864700 () Regex!9205)

(assert (=> b!2962497 (= e!1864699 e!1864700)))

(declare-fun bm!196586 () Bool)

(assert (=> bm!196586 (= call!196593 (isEmptyLang!323 (ite c!485614 lt!1034468 (ite c!485605 lt!1034469 lt!1034471))))))

(declare-fun bm!196583 () Bool)

(assert (=> bm!196583 (= call!196592 (isEmptyLang!323 (ite c!485605 lt!1034467 lt!1034472)))))

(declare-fun d!842112 () Bool)

(declare-fun e!1864698 () Bool)

(assert (=> d!842112 e!1864698))

(declare-fun res!1222176 () Bool)

(assert (=> d!842112 (=> (not res!1222176) (not e!1864698))))

(declare-fun lt!1034470 () Regex!9205)

(assert (=> d!842112 (= res!1222176 (validRegex!3938 lt!1034470))))

(assert (=> d!842112 (= lt!1034470 e!1864705)))

(declare-fun c!485606 () Bool)

(assert (=> d!842112 (= c!485606 ((_ is EmptyLang!9205) (regOne!18923 r!17423)))))

(assert (=> d!842112 (validRegex!3938 (regOne!18923 r!17423))))

(assert (=> d!842112 (= (simplify!208 (regOne!18923 r!17423)) lt!1034470)))

(declare-fun b!2962498 () Bool)

(assert (=> b!2962498 (= e!1864699 (regOne!18923 r!17423))))

(declare-fun b!2962499 () Bool)

(assert (=> b!2962499 (= e!1864700 e!1864696)))

(assert (=> b!2962499 (= c!485614 ((_ is Star!9205) (regOne!18923 r!17423)))))

(declare-fun b!2962500 () Bool)

(declare-fun e!1864703 () Bool)

(assert (=> b!2962500 (= e!1864703 call!196588)))

(declare-fun b!2962501 () Bool)

(assert (=> b!2962501 (= e!1864700 EmptyExpr!9205)))

(declare-fun b!2962502 () Bool)

(declare-fun c!485612 () Bool)

(assert (=> b!2962502 (= c!485612 (isEmptyExpr!396 lt!1034472))))

(declare-fun e!1864702 () Regex!9205)

(declare-fun e!1864692 () Regex!9205)

(assert (=> b!2962502 (= e!1864702 e!1864692)))

(declare-fun bm!196587 () Bool)

(assert (=> bm!196587 (= call!196594 (simplify!208 (ite c!485605 (regTwo!18923 (regOne!18923 r!17423)) (regOne!18922 (regOne!18923 r!17423)))))))

(declare-fun b!2962503 () Bool)

(assert (=> b!2962503 (= e!1864697 e!1864702)))

(assert (=> b!2962503 (= lt!1034472 call!196594)))

(assert (=> b!2962503 (= lt!1034471 call!196589)))

(declare-fun res!1222178 () Bool)

(assert (=> b!2962503 (= res!1222178 call!196592)))

(assert (=> b!2962503 (=> res!1222178 e!1864693)))

(declare-fun c!485613 () Bool)

(assert (=> b!2962503 (= c!485613 e!1864693)))

(declare-fun b!2962504 () Bool)

(assert (=> b!2962504 (= e!1864702 EmptyLang!9205)))

(declare-fun b!2962505 () Bool)

(assert (=> b!2962505 (= e!1864694 (Star!9205 lt!1034468))))

(declare-fun bm!196588 () Bool)

(declare-fun call!196591 () Regex!9205)

(assert (=> bm!196588 (= call!196589 call!196591)))

(declare-fun b!2962506 () Bool)

(assert (=> b!2962506 (= e!1864692 lt!1034471)))

(declare-fun b!2962507 () Bool)

(assert (=> b!2962507 (= e!1864695 lt!1034472)))

(declare-fun bm!196589 () Bool)

(assert (=> bm!196589 (= call!196591 (simplify!208 (ite c!485614 (reg!9534 (regOne!18923 r!17423)) (ite c!485605 (regOne!18923 (regOne!18923 r!17423)) (regTwo!18922 (regOne!18923 r!17423))))))))

(declare-fun b!2962508 () Bool)

(declare-fun c!485609 () Bool)

(assert (=> b!2962508 (= c!485609 e!1864703)))

(declare-fun res!1222177 () Bool)

(assert (=> b!2962508 (=> res!1222177 e!1864703)))

(assert (=> b!2962508 (= res!1222177 call!196593)))

(assert (=> b!2962508 (= lt!1034468 call!196591)))

(assert (=> b!2962508 (= e!1864696 e!1864694)))

(declare-fun b!2962509 () Bool)

(assert (=> b!2962509 (= e!1864698 (= (nullable!2938 lt!1034470) (nullable!2938 (regOne!18923 r!17423))))))

(declare-fun b!2962510 () Bool)

(assert (=> b!2962510 (= e!1864692 e!1864695)))

(declare-fun c!485607 () Bool)

(assert (=> b!2962510 (= c!485607 call!196588)))

(assert (= (and d!842112 c!485606) b!2962487))

(assert (= (and d!842112 (not c!485606)) b!2962496))

(assert (= (and b!2962496 c!485610) b!2962498))

(assert (= (and b!2962496 (not c!485610)) b!2962497))

(assert (= (and b!2962497 c!485611) b!2962501))

(assert (= (and b!2962497 (not c!485611)) b!2962499))

(assert (= (and b!2962499 c!485614) b!2962508))

(assert (= (and b!2962499 (not c!485614)) b!2962488))

(assert (= (and b!2962508 (not res!1222177)) b!2962500))

(assert (= (and b!2962508 c!485609) b!2962492))

(assert (= (and b!2962508 (not c!485609)) b!2962505))

(assert (= (and b!2962488 c!485605) b!2962486))

(assert (= (and b!2962488 (not c!485605)) b!2962503))

(assert (= (and b!2962486 c!485615) b!2962489))

(assert (= (and b!2962486 (not c!485615)) b!2962493))

(assert (= (and b!2962493 c!485608) b!2962494))

(assert (= (and b!2962493 (not c!485608)) b!2962490))

(assert (= (and b!2962503 (not res!1222178)) b!2962491))

(assert (= (and b!2962503 c!485613) b!2962504))

(assert (= (and b!2962503 (not c!485613)) b!2962502))

(assert (= (and b!2962502 c!485612) b!2962506))

(assert (= (and b!2962502 (not c!485612)) b!2962510))

(assert (= (and b!2962510 c!485607) b!2962507))

(assert (= (and b!2962510 (not c!485607)) b!2962495))

(assert (= (or b!2962486 b!2962503) bm!196588))

(assert (= (or b!2962486 b!2962503) bm!196587))

(assert (= (or b!2962493 b!2962491) bm!196585))

(assert (= (or b!2962486 b!2962503) bm!196583))

(assert (= (or b!2962500 b!2962510) bm!196584))

(assert (= (or b!2962508 bm!196588) bm!196589))

(assert (= (or b!2962508 bm!196585) bm!196586))

(assert (= (and d!842112 res!1222176) b!2962509))

(declare-fun m!3334927 () Bool)

(assert (=> b!2962502 m!3334927))

(declare-fun m!3334929 () Bool)

(assert (=> bm!196589 m!3334929))

(declare-fun m!3334931 () Bool)

(assert (=> bm!196584 m!3334931))

(declare-fun m!3334933 () Bool)

(assert (=> b!2962509 m!3334933))

(declare-fun m!3334935 () Bool)

(assert (=> b!2962509 m!3334935))

(declare-fun m!3334937 () Bool)

(assert (=> d!842112 m!3334937))

(declare-fun m!3334939 () Bool)

(assert (=> d!842112 m!3334939))

(declare-fun m!3334941 () Bool)

(assert (=> bm!196586 m!3334941))

(declare-fun m!3334943 () Bool)

(assert (=> bm!196583 m!3334943))

(declare-fun m!3334945 () Bool)

(assert (=> bm!196587 m!3334945))

(assert (=> b!2961916 d!842112))

(declare-fun e!1864708 () Bool)

(assert (=> b!2961918 (= tp!945265 e!1864708)))

(declare-fun b!2962521 () Bool)

(assert (=> b!2962521 (= e!1864708 tp_is_empty!15973)))

(declare-fun b!2962522 () Bool)

(declare-fun tp!945321 () Bool)

(declare-fun tp!945322 () Bool)

(assert (=> b!2962522 (= e!1864708 (and tp!945321 tp!945322))))

(declare-fun b!2962523 () Bool)

(declare-fun tp!945318 () Bool)

(assert (=> b!2962523 (= e!1864708 tp!945318)))

(declare-fun b!2962524 () Bool)

(declare-fun tp!945320 () Bool)

(declare-fun tp!945319 () Bool)

(assert (=> b!2962524 (= e!1864708 (and tp!945320 tp!945319))))

(assert (= (and b!2961918 ((_ is ElementMatch!9205) (reg!9534 r!17423))) b!2962521))

(assert (= (and b!2961918 ((_ is Concat!14526) (reg!9534 r!17423))) b!2962522))

(assert (= (and b!2961918 ((_ is Star!9205) (reg!9534 r!17423))) b!2962523))

(assert (= (and b!2961918 ((_ is Union!9205) (reg!9534 r!17423))) b!2962524))

(declare-fun e!1864709 () Bool)

(assert (=> b!2961914 (= tp!945269 e!1864709)))

(declare-fun b!2962525 () Bool)

(assert (=> b!2962525 (= e!1864709 tp_is_empty!15973)))

(declare-fun b!2962526 () Bool)

(declare-fun tp!945326 () Bool)

(declare-fun tp!945327 () Bool)

(assert (=> b!2962526 (= e!1864709 (and tp!945326 tp!945327))))

(declare-fun b!2962527 () Bool)

(declare-fun tp!945323 () Bool)

(assert (=> b!2962527 (= e!1864709 tp!945323)))

(declare-fun b!2962528 () Bool)

(declare-fun tp!945325 () Bool)

(declare-fun tp!945324 () Bool)

(assert (=> b!2962528 (= e!1864709 (and tp!945325 tp!945324))))

(assert (= (and b!2961914 ((_ is ElementMatch!9205) (regOne!18922 r!17423))) b!2962525))

(assert (= (and b!2961914 ((_ is Concat!14526) (regOne!18922 r!17423))) b!2962526))

(assert (= (and b!2961914 ((_ is Star!9205) (regOne!18922 r!17423))) b!2962527))

(assert (= (and b!2961914 ((_ is Union!9205) (regOne!18922 r!17423))) b!2962528))

(declare-fun e!1864710 () Bool)

(assert (=> b!2961914 (= tp!945266 e!1864710)))

(declare-fun b!2962529 () Bool)

(assert (=> b!2962529 (= e!1864710 tp_is_empty!15973)))

(declare-fun b!2962530 () Bool)

(declare-fun tp!945331 () Bool)

(declare-fun tp!945332 () Bool)

(assert (=> b!2962530 (= e!1864710 (and tp!945331 tp!945332))))

(declare-fun b!2962531 () Bool)

(declare-fun tp!945328 () Bool)

(assert (=> b!2962531 (= e!1864710 tp!945328)))

(declare-fun b!2962532 () Bool)

(declare-fun tp!945330 () Bool)

(declare-fun tp!945329 () Bool)

(assert (=> b!2962532 (= e!1864710 (and tp!945330 tp!945329))))

(assert (= (and b!2961914 ((_ is ElementMatch!9205) (regTwo!18922 r!17423))) b!2962529))

(assert (= (and b!2961914 ((_ is Concat!14526) (regTwo!18922 r!17423))) b!2962530))

(assert (= (and b!2961914 ((_ is Star!9205) (regTwo!18922 r!17423))) b!2962531))

(assert (= (and b!2961914 ((_ is Union!9205) (regTwo!18922 r!17423))) b!2962532))

(declare-fun b!2962537 () Bool)

(declare-fun e!1864713 () Bool)

(declare-fun tp!945335 () Bool)

(assert (=> b!2962537 (= e!1864713 (and tp_is_empty!15973 tp!945335))))

(assert (=> b!2961919 (= tp!945268 e!1864713)))

(assert (= (and b!2961919 ((_ is Cons!34946) (t!234135 s!11993))) b!2962537))

(declare-fun e!1864714 () Bool)

(assert (=> b!2961913 (= tp!945264 e!1864714)))

(declare-fun b!2962538 () Bool)

(assert (=> b!2962538 (= e!1864714 tp_is_empty!15973)))

(declare-fun b!2962539 () Bool)

(declare-fun tp!945339 () Bool)

(declare-fun tp!945340 () Bool)

(assert (=> b!2962539 (= e!1864714 (and tp!945339 tp!945340))))

(declare-fun b!2962540 () Bool)

(declare-fun tp!945336 () Bool)

(assert (=> b!2962540 (= e!1864714 tp!945336)))

(declare-fun b!2962541 () Bool)

(declare-fun tp!945338 () Bool)

(declare-fun tp!945337 () Bool)

(assert (=> b!2962541 (= e!1864714 (and tp!945338 tp!945337))))

(assert (= (and b!2961913 ((_ is ElementMatch!9205) (regOne!18923 r!17423))) b!2962538))

(assert (= (and b!2961913 ((_ is Concat!14526) (regOne!18923 r!17423))) b!2962539))

(assert (= (and b!2961913 ((_ is Star!9205) (regOne!18923 r!17423))) b!2962540))

(assert (= (and b!2961913 ((_ is Union!9205) (regOne!18923 r!17423))) b!2962541))

(declare-fun e!1864715 () Bool)

(assert (=> b!2961913 (= tp!945267 e!1864715)))

(declare-fun b!2962542 () Bool)

(assert (=> b!2962542 (= e!1864715 tp_is_empty!15973)))

(declare-fun b!2962543 () Bool)

(declare-fun tp!945344 () Bool)

(declare-fun tp!945345 () Bool)

(assert (=> b!2962543 (= e!1864715 (and tp!945344 tp!945345))))

(declare-fun b!2962544 () Bool)

(declare-fun tp!945341 () Bool)

(assert (=> b!2962544 (= e!1864715 tp!945341)))

(declare-fun b!2962545 () Bool)

(declare-fun tp!945343 () Bool)

(declare-fun tp!945342 () Bool)

(assert (=> b!2962545 (= e!1864715 (and tp!945343 tp!945342))))

(assert (= (and b!2961913 ((_ is ElementMatch!9205) (regTwo!18923 r!17423))) b!2962542))

(assert (= (and b!2961913 ((_ is Concat!14526) (regTwo!18923 r!17423))) b!2962543))

(assert (= (and b!2961913 ((_ is Star!9205) (regTwo!18923 r!17423))) b!2962544))

(assert (= (and b!2961913 ((_ is Union!9205) (regTwo!18923 r!17423))) b!2962545))

(check-sat (not bm!196536) (not b!2962460) (not bm!196575) (not b!2962543) (not bm!196565) (not bm!196572) (not bm!196580) (not b!2962530) (not b!2962443) (not d!842112) (not b!2962313) (not b!2962447) (not bm!196586) (not d!842098) (not b!2962273) (not b!2962271) (not bm!196579) (not b!2962523) (not b!2962532) (not b!2962540) (not b!2962541) (not bm!196568) (not b!2962526) (not b!2962415) (not b!2962502) (not b!2962345) (not b!2962446) (not d!842092) (not d!842110) (not bm!196584) (not bm!196583) (not d!842106) (not b!2962311) (not bm!196537) (not b!2962437) (not bm!196573) (not b!2962433) (not bm!196564) (not b!2962477) (not bm!196567) (not b!2962429) (not b!2962436) (not bm!196574) (not d!842094) tp_is_empty!15973 (not b!2962545) (not b!2962524) (not d!842104) (not bm!196549) (not b!2962452) (not d!842102) (not b!2962321) (not bm!196540) (not bm!196570) (not b!2962457) (not bm!196548) (not b!2962438) (not b!2962312) (not bm!196587) (not b!2962318) (not b!2962450) (not b!2962544) (not b!2962484) (not b!2962509) (not b!2962522) (not bm!196576) (not b!2962539) (not b!2962531) (not bm!196582) (not b!2962308) (not b!2962527) (not b!2962451) (not bm!196577) (not b!2962422) (not b!2962537) (not bm!196589) (not b!2962528))
(check-sat)
