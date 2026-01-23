; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725482 () Bool)

(assert start!725482)

(declare-fun b!7496998 () Bool)

(assert (=> b!7496998 true))

(assert (=> b!7496998 true))

(assert (=> b!7496998 true))

(declare-fun lambda!464573 () Int)

(declare-fun lambda!464572 () Int)

(assert (=> b!7496998 (not (= lambda!464573 lambda!464572))))

(assert (=> b!7496998 true))

(assert (=> b!7496998 true))

(assert (=> b!7496998 true))

(declare-fun bs!1936229 () Bool)

(declare-fun b!7497005 () Bool)

(assert (= bs!1936229 (and b!7497005 b!7496998)))

(declare-datatypes ((C!39576 0))(
  ( (C!39577 (val!30186 Int)) )
))
(declare-datatypes ((Regex!19651 0))(
  ( (ElementMatch!19651 (c!1384094 C!39576)) (Concat!28496 (regOne!39814 Regex!19651) (regTwo!39814 Regex!19651)) (EmptyExpr!19651) (Star!19651 (reg!19980 Regex!19651)) (EmptyLang!19651) (Union!19651 (regOne!39815 Regex!19651) (regTwo!39815 Regex!19651)) )
))
(declare-fun lt!2630813 () Regex!19651)

(declare-fun r1!5845 () Regex!19651)

(declare-fun lambda!464574 () Int)

(assert (=> bs!1936229 (= (= r1!5845 lt!2630813) (= lambda!464574 lambda!464572))))

(assert (=> bs!1936229 (not (= lambda!464574 lambda!464573))))

(assert (=> b!7497005 true))

(assert (=> b!7497005 true))

(assert (=> b!7497005 true))

(declare-fun lambda!464575 () Int)

(assert (=> bs!1936229 (not (= lambda!464575 lambda!464572))))

(assert (=> bs!1936229 (= (= r1!5845 lt!2630813) (= lambda!464575 lambda!464573))))

(assert (=> b!7497005 (not (= lambda!464575 lambda!464574))))

(assert (=> b!7497005 true))

(assert (=> b!7497005 true))

(assert (=> b!7497005 true))

(declare-fun b!7496994 () Bool)

(declare-fun res!3007363 () Bool)

(declare-fun e!4469977 () Bool)

(assert (=> b!7496994 (=> (not res!3007363) (not e!4469977))))

(declare-fun rTail!78 () Regex!19651)

(declare-fun validRegex!10165 (Regex!19651) Bool)

(assert (=> b!7496994 (= res!3007363 (validRegex!10165 rTail!78))))

(declare-fun b!7496995 () Bool)

(declare-fun e!4469975 () Bool)

(declare-fun tp!2176327 () Bool)

(declare-fun tp!2176332 () Bool)

(assert (=> b!7496995 (= e!4469975 (and tp!2176327 tp!2176332))))

(declare-fun b!7496996 () Bool)

(declare-fun res!3007364 () Bool)

(assert (=> b!7496996 (=> (not res!3007364) (not e!4469977))))

(declare-fun r2!5783 () Regex!19651)

(assert (=> b!7496996 (= res!3007364 (validRegex!10165 r2!5783))))

(declare-fun b!7496997 () Bool)

(declare-fun tp!2176325 () Bool)

(declare-fun tp!2176333 () Bool)

(assert (=> b!7496997 (= e!4469975 (and tp!2176325 tp!2176333))))

(declare-fun e!4469976 () Bool)

(declare-fun e!4469974 () Bool)

(assert (=> b!7496998 (= e!4469976 e!4469974)))

(declare-fun res!3007362 () Bool)

(assert (=> b!7496998 (=> res!3007362 e!4469974)))

(declare-fun lt!2630808 () Bool)

(declare-fun lt!2630802 () Bool)

(assert (=> b!7496998 (= res!3007362 (or lt!2630808 (not lt!2630802)))))

(declare-fun Exists!4268 (Int) Bool)

(assert (=> b!7496998 (= (Exists!4268 lambda!464572) (Exists!4268 lambda!464573))))

(declare-datatypes ((List!72365 0))(
  ( (Nil!72241) (Cons!72241 (h!78689 C!39576) (t!386934 List!72365)) )
))
(declare-fun s!13591 () List!72365)

(declare-datatypes ((Unit!166133 0))(
  ( (Unit!166134) )
))
(declare-fun lt!2630809 () Unit!166133)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2592 (Regex!19651 Regex!19651 List!72365) Unit!166133)

(assert (=> b!7496998 (= lt!2630809 (lemmaExistCutMatchRandMatchRSpecEquivalent!2592 lt!2630813 rTail!78 s!13591))))

(assert (=> b!7496998 (= lt!2630808 (Exists!4268 lambda!464572))))

(declare-datatypes ((tuple2!68736 0))(
  ( (tuple2!68737 (_1!37671 List!72365) (_2!37671 List!72365)) )
))
(declare-datatypes ((Option!17200 0))(
  ( (None!17199) (Some!17199 (v!54328 tuple2!68736)) )
))
(declare-fun isDefined!13889 (Option!17200) Bool)

(declare-fun findConcatSeparation!3322 (Regex!19651 Regex!19651 List!72365 List!72365 List!72365) Option!17200)

(assert (=> b!7496998 (= lt!2630808 (isDefined!13889 (findConcatSeparation!3322 lt!2630813 rTail!78 Nil!72241 s!13591 s!13591)))))

(declare-fun lt!2630800 () Unit!166133)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3080 (Regex!19651 Regex!19651 List!72365) Unit!166133)

(assert (=> b!7496998 (= lt!2630800 (lemmaFindConcatSeparationEquivalentToExists!3080 lt!2630813 rTail!78 s!13591))))

(declare-fun b!7496999 () Bool)

(assert (=> b!7496999 (= e!4469977 (not e!4469976))))

(declare-fun res!3007365 () Bool)

(assert (=> b!7496999 (=> res!3007365 e!4469976)))

(declare-fun lt!2630812 () Bool)

(assert (=> b!7496999 (= res!3007365 lt!2630812)))

(declare-fun lt!2630805 () Regex!19651)

(declare-fun matchRSpec!4328 (Regex!19651 List!72365) Bool)

(assert (=> b!7496999 (= lt!2630802 (matchRSpec!4328 lt!2630805 s!13591))))

(declare-fun matchR!9413 (Regex!19651 List!72365) Bool)

(assert (=> b!7496999 (= lt!2630802 (matchR!9413 lt!2630805 s!13591))))

(declare-fun lt!2630815 () Unit!166133)

(declare-fun mainMatchTheorem!4322 (Regex!19651 List!72365) Unit!166133)

(assert (=> b!7496999 (= lt!2630815 (mainMatchTheorem!4322 lt!2630805 s!13591))))

(declare-fun lt!2630818 () Regex!19651)

(assert (=> b!7496999 (= lt!2630812 (matchRSpec!4328 lt!2630818 s!13591))))

(assert (=> b!7496999 (= lt!2630812 (matchR!9413 lt!2630818 s!13591))))

(declare-fun lt!2630797 () Unit!166133)

(assert (=> b!7496999 (= lt!2630797 (mainMatchTheorem!4322 lt!2630818 s!13591))))

(declare-fun lt!2630804 () Regex!19651)

(declare-fun lt!2630817 () Regex!19651)

(assert (=> b!7496999 (= lt!2630805 (Union!19651 lt!2630804 lt!2630817))))

(assert (=> b!7496999 (= lt!2630817 (Concat!28496 r2!5783 rTail!78))))

(assert (=> b!7496999 (= lt!2630804 (Concat!28496 r1!5845 rTail!78))))

(assert (=> b!7496999 (= lt!2630818 (Concat!28496 lt!2630813 rTail!78))))

(assert (=> b!7496999 (= lt!2630813 (Union!19651 r1!5845 r2!5783))))

(declare-fun b!7497001 () Bool)

(declare-fun e!4469973 () Bool)

(declare-fun tp!2176326 () Bool)

(declare-fun tp!2176330 () Bool)

(assert (=> b!7497001 (= e!4469973 (and tp!2176326 tp!2176330))))

(declare-fun b!7497002 () Bool)

(declare-fun e!4469971 () Bool)

(assert (=> b!7497002 (= e!4469971 false)))

(declare-fun lt!2630803 () tuple2!68736)

(declare-fun ++!17257 (List!72365 List!72365) List!72365)

(assert (=> b!7497002 (matchR!9413 lt!2630818 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803)))))

(declare-fun lt!2630806 () Unit!166133)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!408 (Regex!19651 Regex!19651 List!72365 List!72365) Unit!166133)

(assert (=> b!7497002 (= lt!2630806 (lemmaTwoRegexMatchThenConcatMatchesConcatString!408 lt!2630813 rTail!78 (_1!37671 lt!2630803) (_2!37671 lt!2630803)))))

(declare-fun b!7497003 () Bool)

(declare-fun tp_is_empty!49591 () Bool)

(assert (=> b!7497003 (= e!4469973 tp_is_empty!49591)))

(declare-fun b!7497004 () Bool)

(declare-fun tp!2176329 () Bool)

(declare-fun tp!2176320 () Bool)

(assert (=> b!7497004 (= e!4469973 (and tp!2176329 tp!2176320))))

(declare-fun e!4469969 () Bool)

(declare-fun e!4469972 () Bool)

(assert (=> b!7497005 (= e!4469969 e!4469972)))

(declare-fun res!3007358 () Bool)

(assert (=> b!7497005 (=> res!3007358 e!4469972)))

(assert (=> b!7497005 (= res!3007358 (not (matchR!9413 r1!5845 (_1!37671 lt!2630803))))))

(declare-fun lt!2630814 () Option!17200)

(declare-fun get!25332 (Option!17200) tuple2!68736)

(assert (=> b!7497005 (= lt!2630803 (get!25332 lt!2630814))))

(assert (=> b!7497005 (= (Exists!4268 lambda!464574) (Exists!4268 lambda!464575))))

(declare-fun lt!2630798 () Unit!166133)

(assert (=> b!7497005 (= lt!2630798 (lemmaExistCutMatchRandMatchRSpecEquivalent!2592 r1!5845 rTail!78 s!13591))))

(assert (=> b!7497005 (= (isDefined!13889 lt!2630814) (Exists!4268 lambda!464574))))

(assert (=> b!7497005 (= lt!2630814 (findConcatSeparation!3322 r1!5845 rTail!78 Nil!72241 s!13591 s!13591))))

(declare-fun lt!2630816 () Unit!166133)

(assert (=> b!7497005 (= lt!2630816 (lemmaFindConcatSeparationEquivalentToExists!3080 r1!5845 rTail!78 s!13591))))

(declare-fun b!7497006 () Bool)

(assert (=> b!7497006 (= e!4469974 e!4469969)))

(declare-fun res!3007366 () Bool)

(assert (=> b!7497006 (=> res!3007366 e!4469969)))

(declare-fun lt!2630810 () Bool)

(declare-fun lt!2630819 () Bool)

(assert (=> b!7497006 (= res!3007366 (or (and (not lt!2630810) (not lt!2630819)) (not lt!2630810)))))

(assert (=> b!7497006 (= lt!2630819 (matchRSpec!4328 lt!2630817 s!13591))))

(assert (=> b!7497006 (= lt!2630819 (matchR!9413 lt!2630817 s!13591))))

(declare-fun lt!2630799 () Unit!166133)

(assert (=> b!7497006 (= lt!2630799 (mainMatchTheorem!4322 lt!2630817 s!13591))))

(assert (=> b!7497006 (= lt!2630810 (matchRSpec!4328 lt!2630804 s!13591))))

(assert (=> b!7497006 (= lt!2630810 (matchR!9413 lt!2630804 s!13591))))

(declare-fun lt!2630811 () Unit!166133)

(assert (=> b!7497006 (= lt!2630811 (mainMatchTheorem!4322 lt!2630804 s!13591))))

(declare-fun b!7497007 () Bool)

(declare-fun tp!2176318 () Bool)

(assert (=> b!7497007 (= e!4469973 tp!2176318)))

(declare-fun res!3007360 () Bool)

(assert (=> start!725482 (=> (not res!3007360) (not e!4469977))))

(assert (=> start!725482 (= res!3007360 (validRegex!10165 r1!5845))))

(assert (=> start!725482 e!4469977))

(assert (=> start!725482 e!4469975))

(assert (=> start!725482 e!4469973))

(declare-fun e!4469978 () Bool)

(assert (=> start!725482 e!4469978))

(declare-fun e!4469970 () Bool)

(assert (=> start!725482 e!4469970))

(declare-fun b!7497000 () Bool)

(assert (=> b!7497000 (= e!4469975 tp_is_empty!49591)))

(declare-fun b!7497008 () Bool)

(declare-fun tp!2176331 () Bool)

(declare-fun tp!2176321 () Bool)

(assert (=> b!7497008 (= e!4469978 (and tp!2176331 tp!2176321))))

(declare-fun b!7497009 () Bool)

(declare-fun tp!2176322 () Bool)

(assert (=> b!7497009 (= e!4469970 (and tp_is_empty!49591 tp!2176322))))

(declare-fun b!7497010 () Bool)

(declare-fun tp!2176328 () Bool)

(assert (=> b!7497010 (= e!4469978 tp!2176328)))

(declare-fun b!7497011 () Bool)

(assert (=> b!7497011 (= e!4469978 tp_is_empty!49591)))

(declare-fun b!7497012 () Bool)

(assert (=> b!7497012 (= e!4469972 e!4469971)))

(declare-fun res!3007359 () Bool)

(assert (=> b!7497012 (=> res!3007359 e!4469971)))

(declare-fun lt!2630821 () Bool)

(assert (=> b!7497012 (= res!3007359 (not lt!2630821))))

(assert (=> b!7497012 (= (matchR!9413 r2!5783 (_1!37671 lt!2630803)) (matchRSpec!4328 r2!5783 (_1!37671 lt!2630803)))))

(declare-fun lt!2630801 () Unit!166133)

(assert (=> b!7497012 (= lt!2630801 (mainMatchTheorem!4322 r2!5783 (_1!37671 lt!2630803)))))

(assert (=> b!7497012 (matchRSpec!4328 r1!5845 (_1!37671 lt!2630803))))

(declare-fun lt!2630820 () Unit!166133)

(assert (=> b!7497012 (= lt!2630820 (mainMatchTheorem!4322 r1!5845 (_1!37671 lt!2630803)))))

(assert (=> b!7497012 (= lt!2630821 (matchRSpec!4328 lt!2630813 (_1!37671 lt!2630803)))))

(assert (=> b!7497012 (= lt!2630821 (matchR!9413 lt!2630813 (_1!37671 lt!2630803)))))

(declare-fun lt!2630807 () Unit!166133)

(assert (=> b!7497012 (= lt!2630807 (mainMatchTheorem!4322 lt!2630813 (_1!37671 lt!2630803)))))

(declare-fun b!7497013 () Bool)

(declare-fun tp!2176323 () Bool)

(assert (=> b!7497013 (= e!4469975 tp!2176323)))

(declare-fun b!7497014 () Bool)

(declare-fun res!3007361 () Bool)

(assert (=> b!7497014 (=> res!3007361 e!4469972)))

(assert (=> b!7497014 (= res!3007361 (not (matchR!9413 rTail!78 (_2!37671 lt!2630803))))))

(declare-fun b!7497015 () Bool)

(declare-fun tp!2176319 () Bool)

(declare-fun tp!2176324 () Bool)

(assert (=> b!7497015 (= e!4469978 (and tp!2176319 tp!2176324))))

(assert (= (and start!725482 res!3007360) b!7496996))

(assert (= (and b!7496996 res!3007364) b!7496994))

(assert (= (and b!7496994 res!3007363) b!7496999))

(assert (= (and b!7496999 (not res!3007365)) b!7496998))

(assert (= (and b!7496998 (not res!3007362)) b!7497006))

(assert (= (and b!7497006 (not res!3007366)) b!7497005))

(assert (= (and b!7497005 (not res!3007358)) b!7497014))

(assert (= (and b!7497014 (not res!3007361)) b!7497012))

(assert (= (and b!7497012 (not res!3007359)) b!7497002))

(get-info :version)

(assert (= (and start!725482 ((_ is ElementMatch!19651) r1!5845)) b!7497000))

(assert (= (and start!725482 ((_ is Concat!28496) r1!5845)) b!7496997))

(assert (= (and start!725482 ((_ is Star!19651) r1!5845)) b!7497013))

(assert (= (and start!725482 ((_ is Union!19651) r1!5845)) b!7496995))

(assert (= (and start!725482 ((_ is ElementMatch!19651) r2!5783)) b!7497003))

(assert (= (and start!725482 ((_ is Concat!28496) r2!5783)) b!7497004))

(assert (= (and start!725482 ((_ is Star!19651) r2!5783)) b!7497007))

(assert (= (and start!725482 ((_ is Union!19651) r2!5783)) b!7497001))

(assert (= (and start!725482 ((_ is ElementMatch!19651) rTail!78)) b!7497011))

(assert (= (and start!725482 ((_ is Concat!28496) rTail!78)) b!7497015))

(assert (= (and start!725482 ((_ is Star!19651) rTail!78)) b!7497010))

(assert (= (and start!725482 ((_ is Union!19651) rTail!78)) b!7497008))

(assert (= (and start!725482 ((_ is Cons!72241) s!13591)) b!7497009))

(declare-fun m!8080406 () Bool)

(assert (=> b!7497005 m!8080406))

(declare-fun m!8080408 () Bool)

(assert (=> b!7497005 m!8080408))

(assert (=> b!7497005 m!8080406))

(declare-fun m!8080410 () Bool)

(assert (=> b!7497005 m!8080410))

(declare-fun m!8080412 () Bool)

(assert (=> b!7497005 m!8080412))

(declare-fun m!8080414 () Bool)

(assert (=> b!7497005 m!8080414))

(declare-fun m!8080416 () Bool)

(assert (=> b!7497005 m!8080416))

(declare-fun m!8080418 () Bool)

(assert (=> b!7497005 m!8080418))

(declare-fun m!8080420 () Bool)

(assert (=> b!7497005 m!8080420))

(declare-fun m!8080422 () Bool)

(assert (=> b!7497006 m!8080422))

(declare-fun m!8080424 () Bool)

(assert (=> b!7497006 m!8080424))

(declare-fun m!8080426 () Bool)

(assert (=> b!7497006 m!8080426))

(declare-fun m!8080428 () Bool)

(assert (=> b!7497006 m!8080428))

(declare-fun m!8080430 () Bool)

(assert (=> b!7497006 m!8080430))

(declare-fun m!8080432 () Bool)

(assert (=> b!7497006 m!8080432))

(declare-fun m!8080434 () Bool)

(assert (=> b!7496998 m!8080434))

(declare-fun m!8080436 () Bool)

(assert (=> b!7496998 m!8080436))

(declare-fun m!8080438 () Bool)

(assert (=> b!7496998 m!8080438))

(declare-fun m!8080440 () Bool)

(assert (=> b!7496998 m!8080440))

(assert (=> b!7496998 m!8080436))

(declare-fun m!8080442 () Bool)

(assert (=> b!7496998 m!8080442))

(declare-fun m!8080444 () Bool)

(assert (=> b!7496998 m!8080444))

(assert (=> b!7496998 m!8080438))

(declare-fun m!8080446 () Bool)

(assert (=> b!7497012 m!8080446))

(declare-fun m!8080448 () Bool)

(assert (=> b!7497012 m!8080448))

(declare-fun m!8080450 () Bool)

(assert (=> b!7497012 m!8080450))

(declare-fun m!8080452 () Bool)

(assert (=> b!7497012 m!8080452))

(declare-fun m!8080454 () Bool)

(assert (=> b!7497012 m!8080454))

(declare-fun m!8080456 () Bool)

(assert (=> b!7497012 m!8080456))

(declare-fun m!8080458 () Bool)

(assert (=> b!7497012 m!8080458))

(declare-fun m!8080460 () Bool)

(assert (=> b!7497012 m!8080460))

(declare-fun m!8080462 () Bool)

(assert (=> b!7497014 m!8080462))

(declare-fun m!8080464 () Bool)

(assert (=> start!725482 m!8080464))

(declare-fun m!8080466 () Bool)

(assert (=> b!7497002 m!8080466))

(assert (=> b!7497002 m!8080466))

(declare-fun m!8080468 () Bool)

(assert (=> b!7497002 m!8080468))

(declare-fun m!8080470 () Bool)

(assert (=> b!7497002 m!8080470))

(declare-fun m!8080472 () Bool)

(assert (=> b!7496994 m!8080472))

(declare-fun m!8080474 () Bool)

(assert (=> b!7496996 m!8080474))

(declare-fun m!8080476 () Bool)

(assert (=> b!7496999 m!8080476))

(declare-fun m!8080478 () Bool)

(assert (=> b!7496999 m!8080478))

(declare-fun m!8080480 () Bool)

(assert (=> b!7496999 m!8080480))

(declare-fun m!8080482 () Bool)

(assert (=> b!7496999 m!8080482))

(declare-fun m!8080484 () Bool)

(assert (=> b!7496999 m!8080484))

(declare-fun m!8080486 () Bool)

(assert (=> b!7496999 m!8080486))

(check-sat (not b!7497005) (not b!7497008) (not b!7497006) (not start!725482) (not b!7497002) (not b!7497010) (not b!7497001) (not b!7497004) (not b!7497014) (not b!7496996) (not b!7496999) (not b!7497009) (not b!7497007) (not b!7496995) (not b!7497013) (not b!7497015) (not b!7496997) (not b!7496998) tp_is_empty!49591 (not b!7497012) (not b!7496994))
(check-sat)
(get-model)

(declare-fun bs!1936231 () Bool)

(declare-fun d!2301927 () Bool)

(assert (= bs!1936231 (and d!2301927 b!7496998)))

(declare-fun lambda!464580 () Int)

(assert (=> bs!1936231 (= lambda!464580 lambda!464572)))

(assert (=> bs!1936231 (not (= lambda!464580 lambda!464573))))

(declare-fun bs!1936232 () Bool)

(assert (= bs!1936232 (and d!2301927 b!7497005)))

(assert (=> bs!1936232 (= (= lt!2630813 r1!5845) (= lambda!464580 lambda!464574))))

(assert (=> bs!1936232 (not (= lambda!464580 lambda!464575))))

(assert (=> d!2301927 true))

(assert (=> d!2301927 true))

(assert (=> d!2301927 true))

(declare-fun lambda!464581 () Int)

(assert (=> bs!1936231 (= lambda!464581 lambda!464573)))

(assert (=> bs!1936232 (not (= lambda!464581 lambda!464574))))

(assert (=> bs!1936232 (= (= lt!2630813 r1!5845) (= lambda!464581 lambda!464575))))

(assert (=> bs!1936231 (not (= lambda!464581 lambda!464572))))

(declare-fun bs!1936233 () Bool)

(assert (= bs!1936233 d!2301927))

(assert (=> bs!1936233 (not (= lambda!464581 lambda!464580))))

(assert (=> d!2301927 true))

(assert (=> d!2301927 true))

(assert (=> d!2301927 true))

(assert (=> d!2301927 (= (Exists!4268 lambda!464580) (Exists!4268 lambda!464581))))

(declare-fun lt!2630824 () Unit!166133)

(declare-fun choose!57952 (Regex!19651 Regex!19651 List!72365) Unit!166133)

(assert (=> d!2301927 (= lt!2630824 (choose!57952 lt!2630813 rTail!78 s!13591))))

(assert (=> d!2301927 (validRegex!10165 lt!2630813)))

(assert (=> d!2301927 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2592 lt!2630813 rTail!78 s!13591) lt!2630824)))

(declare-fun m!8080490 () Bool)

(assert (=> bs!1936233 m!8080490))

(declare-fun m!8080492 () Bool)

(assert (=> bs!1936233 m!8080492))

(declare-fun m!8080494 () Bool)

(assert (=> bs!1936233 m!8080494))

(declare-fun m!8080496 () Bool)

(assert (=> bs!1936233 m!8080496))

(assert (=> b!7496998 d!2301927))

(declare-fun d!2301933 () Bool)

(declare-fun isEmpty!41278 (Option!17200) Bool)

(assert (=> d!2301933 (= (isDefined!13889 (findConcatSeparation!3322 lt!2630813 rTail!78 Nil!72241 s!13591 s!13591)) (not (isEmpty!41278 (findConcatSeparation!3322 lt!2630813 rTail!78 Nil!72241 s!13591 s!13591))))))

(declare-fun bs!1936234 () Bool)

(assert (= bs!1936234 d!2301933))

(assert (=> bs!1936234 m!8080438))

(declare-fun m!8080498 () Bool)

(assert (=> bs!1936234 m!8080498))

(assert (=> b!7496998 d!2301933))

(declare-fun d!2301935 () Bool)

(declare-fun choose!57953 (Int) Bool)

(assert (=> d!2301935 (= (Exists!4268 lambda!464573) (choose!57953 lambda!464573))))

(declare-fun bs!1936235 () Bool)

(assert (= bs!1936235 d!2301935))

(declare-fun m!8080500 () Bool)

(assert (=> bs!1936235 m!8080500))

(assert (=> b!7496998 d!2301935))

(declare-fun d!2301937 () Bool)

(assert (=> d!2301937 (= (Exists!4268 lambda!464572) (choose!57953 lambda!464572))))

(declare-fun bs!1936236 () Bool)

(assert (= bs!1936236 d!2301937))

(declare-fun m!8080502 () Bool)

(assert (=> bs!1936236 m!8080502))

(assert (=> b!7496998 d!2301937))

(declare-fun b!7497077 () Bool)

(declare-fun e!4470013 () Option!17200)

(declare-fun e!4470012 () Option!17200)

(assert (=> b!7497077 (= e!4470013 e!4470012)))

(declare-fun c!1384106 () Bool)

(assert (=> b!7497077 (= c!1384106 ((_ is Nil!72241) s!13591))))

(declare-fun b!7497078 () Bool)

(declare-fun e!4470010 () Bool)

(declare-fun lt!2630843 () Option!17200)

(assert (=> b!7497078 (= e!4470010 (= (++!17257 (_1!37671 (get!25332 lt!2630843)) (_2!37671 (get!25332 lt!2630843))) s!13591))))

(declare-fun b!7497079 () Bool)

(declare-fun res!3007408 () Bool)

(assert (=> b!7497079 (=> (not res!3007408) (not e!4470010))))

(assert (=> b!7497079 (= res!3007408 (matchR!9413 rTail!78 (_2!37671 (get!25332 lt!2630843))))))

(declare-fun b!7497080 () Bool)

(assert (=> b!7497080 (= e!4470012 None!17199)))

(declare-fun b!7497081 () Bool)

(declare-fun e!4470014 () Bool)

(assert (=> b!7497081 (= e!4470014 (not (isDefined!13889 lt!2630843)))))

(declare-fun b!7497082 () Bool)

(declare-fun e!4470011 () Bool)

(assert (=> b!7497082 (= e!4470011 (matchR!9413 rTail!78 s!13591))))

(declare-fun b!7497083 () Bool)

(declare-fun res!3007407 () Bool)

(assert (=> b!7497083 (=> (not res!3007407) (not e!4470010))))

(assert (=> b!7497083 (= res!3007407 (matchR!9413 lt!2630813 (_1!37671 (get!25332 lt!2630843))))))

(declare-fun d!2301939 () Bool)

(assert (=> d!2301939 e!4470014))

(declare-fun res!3007405 () Bool)

(assert (=> d!2301939 (=> res!3007405 e!4470014)))

(assert (=> d!2301939 (= res!3007405 e!4470010)))

(declare-fun res!3007406 () Bool)

(assert (=> d!2301939 (=> (not res!3007406) (not e!4470010))))

(assert (=> d!2301939 (= res!3007406 (isDefined!13889 lt!2630843))))

(assert (=> d!2301939 (= lt!2630843 e!4470013)))

(declare-fun c!1384105 () Bool)

(assert (=> d!2301939 (= c!1384105 e!4470011)))

(declare-fun res!3007404 () Bool)

(assert (=> d!2301939 (=> (not res!3007404) (not e!4470011))))

(assert (=> d!2301939 (= res!3007404 (matchR!9413 lt!2630813 Nil!72241))))

(assert (=> d!2301939 (validRegex!10165 lt!2630813)))

(assert (=> d!2301939 (= (findConcatSeparation!3322 lt!2630813 rTail!78 Nil!72241 s!13591 s!13591) lt!2630843)))

(declare-fun b!7497084 () Bool)

(declare-fun lt!2630844 () Unit!166133)

(declare-fun lt!2630842 () Unit!166133)

(assert (=> b!7497084 (= lt!2630844 lt!2630842)))

(assert (=> b!7497084 (= (++!17257 (++!17257 Nil!72241 (Cons!72241 (h!78689 s!13591) Nil!72241)) (t!386934 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3131 (List!72365 C!39576 List!72365 List!72365) Unit!166133)

(assert (=> b!7497084 (= lt!2630842 (lemmaMoveElementToOtherListKeepsConcatEq!3131 Nil!72241 (h!78689 s!13591) (t!386934 s!13591) s!13591))))

(assert (=> b!7497084 (= e!4470012 (findConcatSeparation!3322 lt!2630813 rTail!78 (++!17257 Nil!72241 (Cons!72241 (h!78689 s!13591) Nil!72241)) (t!386934 s!13591) s!13591))))

(declare-fun b!7497085 () Bool)

(assert (=> b!7497085 (= e!4470013 (Some!17199 (tuple2!68737 Nil!72241 s!13591)))))

(assert (= (and d!2301939 res!3007404) b!7497082))

(assert (= (and d!2301939 c!1384105) b!7497085))

(assert (= (and d!2301939 (not c!1384105)) b!7497077))

(assert (= (and b!7497077 c!1384106) b!7497080))

(assert (= (and b!7497077 (not c!1384106)) b!7497084))

(assert (= (and d!2301939 res!3007406) b!7497083))

(assert (= (and b!7497083 res!3007407) b!7497079))

(assert (= (and b!7497079 res!3007408) b!7497078))

(assert (= (and d!2301939 (not res!3007405)) b!7497081))

(declare-fun m!8080530 () Bool)

(assert (=> b!7497079 m!8080530))

(declare-fun m!8080532 () Bool)

(assert (=> b!7497079 m!8080532))

(assert (=> b!7497078 m!8080530))

(declare-fun m!8080534 () Bool)

(assert (=> b!7497078 m!8080534))

(assert (=> b!7497083 m!8080530))

(declare-fun m!8080536 () Bool)

(assert (=> b!7497083 m!8080536))

(declare-fun m!8080538 () Bool)

(assert (=> d!2301939 m!8080538))

(declare-fun m!8080540 () Bool)

(assert (=> d!2301939 m!8080540))

(assert (=> d!2301939 m!8080496))

(assert (=> b!7497081 m!8080538))

(declare-fun m!8080542 () Bool)

(assert (=> b!7497082 m!8080542))

(declare-fun m!8080544 () Bool)

(assert (=> b!7497084 m!8080544))

(assert (=> b!7497084 m!8080544))

(declare-fun m!8080546 () Bool)

(assert (=> b!7497084 m!8080546))

(declare-fun m!8080548 () Bool)

(assert (=> b!7497084 m!8080548))

(assert (=> b!7497084 m!8080544))

(declare-fun m!8080550 () Bool)

(assert (=> b!7497084 m!8080550))

(assert (=> b!7496998 d!2301939))

(declare-fun bs!1936241 () Bool)

(declare-fun d!2301945 () Bool)

(assert (= bs!1936241 (and d!2301945 b!7496998)))

(declare-fun lambda!464589 () Int)

(assert (=> bs!1936241 (not (= lambda!464589 lambda!464573))))

(declare-fun bs!1936242 () Bool)

(assert (= bs!1936242 (and d!2301945 b!7497005)))

(assert (=> bs!1936242 (= (= lt!2630813 r1!5845) (= lambda!464589 lambda!464574))))

(declare-fun bs!1936243 () Bool)

(assert (= bs!1936243 (and d!2301945 d!2301927)))

(assert (=> bs!1936243 (not (= lambda!464589 lambda!464581))))

(assert (=> bs!1936242 (not (= lambda!464589 lambda!464575))))

(assert (=> bs!1936241 (= lambda!464589 lambda!464572)))

(assert (=> bs!1936243 (= lambda!464589 lambda!464580)))

(assert (=> d!2301945 true))

(assert (=> d!2301945 true))

(assert (=> d!2301945 true))

(assert (=> d!2301945 (= (isDefined!13889 (findConcatSeparation!3322 lt!2630813 rTail!78 Nil!72241 s!13591 s!13591)) (Exists!4268 lambda!464589))))

(declare-fun lt!2630850 () Unit!166133)

(declare-fun choose!57954 (Regex!19651 Regex!19651 List!72365) Unit!166133)

(assert (=> d!2301945 (= lt!2630850 (choose!57954 lt!2630813 rTail!78 s!13591))))

(assert (=> d!2301945 (validRegex!10165 lt!2630813)))

(assert (=> d!2301945 (= (lemmaFindConcatSeparationEquivalentToExists!3080 lt!2630813 rTail!78 s!13591) lt!2630850)))

(declare-fun bs!1936244 () Bool)

(assert (= bs!1936244 d!2301945))

(assert (=> bs!1936244 m!8080496))

(assert (=> bs!1936244 m!8080438))

(declare-fun m!8080556 () Bool)

(assert (=> bs!1936244 m!8080556))

(assert (=> bs!1936244 m!8080438))

(assert (=> bs!1936244 m!8080440))

(declare-fun m!8080558 () Bool)

(assert (=> bs!1936244 m!8080558))

(assert (=> b!7496998 d!2301945))

(declare-fun b!7497144 () Bool)

(declare-fun res!3007449 () Bool)

(declare-fun e!4470051 () Bool)

(assert (=> b!7497144 (=> res!3007449 e!4470051)))

(declare-fun isEmpty!41279 (List!72365) Bool)

(declare-fun tail!14952 (List!72365) List!72365)

(assert (=> b!7497144 (= res!3007449 (not (isEmpty!41279 (tail!14952 (_2!37671 lt!2630803)))))))

(declare-fun bm!688208 () Bool)

(declare-fun call!688213 () Bool)

(assert (=> bm!688208 (= call!688213 (isEmpty!41279 (_2!37671 lt!2630803)))))

(declare-fun b!7497145 () Bool)

(declare-fun res!3007448 () Bool)

(declare-fun e!4470055 () Bool)

(assert (=> b!7497145 (=> (not res!3007448) (not e!4470055))))

(assert (=> b!7497145 (= res!3007448 (not call!688213))))

(declare-fun b!7497146 () Bool)

(declare-fun e!4470053 () Bool)

(declare-fun e!4470052 () Bool)

(assert (=> b!7497146 (= e!4470053 e!4470052)))

(declare-fun res!3007452 () Bool)

(assert (=> b!7497146 (=> (not res!3007452) (not e!4470052))))

(declare-fun lt!2630854 () Bool)

(assert (=> b!7497146 (= res!3007452 (not lt!2630854))))

(declare-fun b!7497147 () Bool)

(declare-fun e!4470049 () Bool)

(assert (=> b!7497147 (= e!4470049 (not lt!2630854))))

(declare-fun b!7497148 () Bool)

(declare-fun e!4470050 () Bool)

(assert (=> b!7497148 (= e!4470050 (= lt!2630854 call!688213))))

(declare-fun d!2301949 () Bool)

(assert (=> d!2301949 e!4470050))

(declare-fun c!1384119 () Bool)

(assert (=> d!2301949 (= c!1384119 ((_ is EmptyExpr!19651) rTail!78))))

(declare-fun e!4470054 () Bool)

(assert (=> d!2301949 (= lt!2630854 e!4470054)))

(declare-fun c!1384118 () Bool)

(assert (=> d!2301949 (= c!1384118 (isEmpty!41279 (_2!37671 lt!2630803)))))

(assert (=> d!2301949 (validRegex!10165 rTail!78)))

(assert (=> d!2301949 (= (matchR!9413 rTail!78 (_2!37671 lt!2630803)) lt!2630854)))

(declare-fun b!7497149 () Bool)

(declare-fun head!15383 (List!72365) C!39576)

(assert (=> b!7497149 (= e!4470055 (= (head!15383 (_2!37671 lt!2630803)) (c!1384094 rTail!78)))))

(declare-fun b!7497150 () Bool)

(assert (=> b!7497150 (= e!4470050 e!4470049)))

(declare-fun c!1384117 () Bool)

(assert (=> b!7497150 (= c!1384117 ((_ is EmptyLang!19651) rTail!78))))

(declare-fun b!7497151 () Bool)

(declare-fun res!3007450 () Bool)

(assert (=> b!7497151 (=> res!3007450 e!4470053)))

(assert (=> b!7497151 (= res!3007450 (not ((_ is ElementMatch!19651) rTail!78)))))

(assert (=> b!7497151 (= e!4470049 e!4470053)))

(declare-fun b!7497152 () Bool)

(declare-fun res!3007451 () Bool)

(assert (=> b!7497152 (=> res!3007451 e!4470053)))

(assert (=> b!7497152 (= res!3007451 e!4470055)))

(declare-fun res!3007454 () Bool)

(assert (=> b!7497152 (=> (not res!3007454) (not e!4470055))))

(assert (=> b!7497152 (= res!3007454 lt!2630854)))

(declare-fun b!7497153 () Bool)

(declare-fun derivativeStep!5643 (Regex!19651 C!39576) Regex!19651)

(assert (=> b!7497153 (= e!4470054 (matchR!9413 (derivativeStep!5643 rTail!78 (head!15383 (_2!37671 lt!2630803))) (tail!14952 (_2!37671 lt!2630803))))))

(declare-fun b!7497154 () Bool)

(assert (=> b!7497154 (= e!4470051 (not (= (head!15383 (_2!37671 lt!2630803)) (c!1384094 rTail!78))))))

(declare-fun b!7497155 () Bool)

(declare-fun res!3007447 () Bool)

(assert (=> b!7497155 (=> (not res!3007447) (not e!4470055))))

(assert (=> b!7497155 (= res!3007447 (isEmpty!41279 (tail!14952 (_2!37671 lt!2630803))))))

(declare-fun b!7497156 () Bool)

(declare-fun nullable!8586 (Regex!19651) Bool)

(assert (=> b!7497156 (= e!4470054 (nullable!8586 rTail!78))))

(declare-fun b!7497157 () Bool)

(assert (=> b!7497157 (= e!4470052 e!4470051)))

(declare-fun res!3007453 () Bool)

(assert (=> b!7497157 (=> res!3007453 e!4470051)))

(assert (=> b!7497157 (= res!3007453 call!688213)))

(assert (= (and d!2301949 c!1384118) b!7497156))

(assert (= (and d!2301949 (not c!1384118)) b!7497153))

(assert (= (and d!2301949 c!1384119) b!7497148))

(assert (= (and d!2301949 (not c!1384119)) b!7497150))

(assert (= (and b!7497150 c!1384117) b!7497147))

(assert (= (and b!7497150 (not c!1384117)) b!7497151))

(assert (= (and b!7497151 (not res!3007450)) b!7497152))

(assert (= (and b!7497152 res!3007454) b!7497145))

(assert (= (and b!7497145 res!3007448) b!7497155))

(assert (= (and b!7497155 res!3007447) b!7497149))

(assert (= (and b!7497152 (not res!3007451)) b!7497146))

(assert (= (and b!7497146 res!3007452) b!7497157))

(assert (= (and b!7497157 (not res!3007453)) b!7497144))

(assert (= (and b!7497144 (not res!3007449)) b!7497154))

(assert (= (or b!7497148 b!7497145 b!7497157) bm!688208))

(declare-fun m!8080574 () Bool)

(assert (=> bm!688208 m!8080574))

(declare-fun m!8080576 () Bool)

(assert (=> b!7497154 m!8080576))

(declare-fun m!8080578 () Bool)

(assert (=> b!7497156 m!8080578))

(assert (=> b!7497153 m!8080576))

(assert (=> b!7497153 m!8080576))

(declare-fun m!8080580 () Bool)

(assert (=> b!7497153 m!8080580))

(declare-fun m!8080582 () Bool)

(assert (=> b!7497153 m!8080582))

(assert (=> b!7497153 m!8080580))

(assert (=> b!7497153 m!8080582))

(declare-fun m!8080584 () Bool)

(assert (=> b!7497153 m!8080584))

(assert (=> b!7497144 m!8080582))

(assert (=> b!7497144 m!8080582))

(declare-fun m!8080586 () Bool)

(assert (=> b!7497144 m!8080586))

(assert (=> b!7497149 m!8080576))

(assert (=> d!2301949 m!8080574))

(assert (=> d!2301949 m!8080472))

(assert (=> b!7497155 m!8080582))

(assert (=> b!7497155 m!8080582))

(assert (=> b!7497155 m!8080586))

(assert (=> b!7497014 d!2301949))

(declare-fun b!7497213 () Bool)

(declare-fun res!3007488 () Bool)

(declare-fun e!4470094 () Bool)

(assert (=> b!7497213 (=> (not res!3007488) (not e!4470094))))

(declare-fun call!688223 () Bool)

(assert (=> b!7497213 (= res!3007488 call!688223)))

(declare-fun e!4470095 () Bool)

(assert (=> b!7497213 (= e!4470095 e!4470094)))

(declare-fun bm!688218 () Bool)

(declare-fun c!1384132 () Bool)

(declare-fun call!688225 () Bool)

(declare-fun c!1384133 () Bool)

(assert (=> bm!688218 (= call!688225 (validRegex!10165 (ite c!1384132 (reg!19980 r1!5845) (ite c!1384133 (regOne!39815 r1!5845) (regOne!39814 r1!5845)))))))

(declare-fun bm!688219 () Bool)

(declare-fun call!688224 () Bool)

(assert (=> bm!688219 (= call!688224 (validRegex!10165 (ite c!1384133 (regTwo!39815 r1!5845) (regTwo!39814 r1!5845))))))

(declare-fun b!7497215 () Bool)

(declare-fun e!4470092 () Bool)

(declare-fun e!4470091 () Bool)

(assert (=> b!7497215 (= e!4470092 e!4470091)))

(assert (=> b!7497215 (= c!1384132 ((_ is Star!19651) r1!5845))))

(declare-fun b!7497216 () Bool)

(declare-fun e!4470093 () Bool)

(assert (=> b!7497216 (= e!4470091 e!4470093)))

(declare-fun res!3007490 () Bool)

(assert (=> b!7497216 (= res!3007490 (not (nullable!8586 (reg!19980 r1!5845))))))

(assert (=> b!7497216 (=> (not res!3007490) (not e!4470093))))

(declare-fun b!7497217 () Bool)

(declare-fun e!4470097 () Bool)

(declare-fun e!4470096 () Bool)

(assert (=> b!7497217 (= e!4470097 e!4470096)))

(declare-fun res!3007486 () Bool)

(assert (=> b!7497217 (=> (not res!3007486) (not e!4470096))))

(assert (=> b!7497217 (= res!3007486 call!688223)))

(declare-fun b!7497218 () Bool)

(assert (=> b!7497218 (= e!4470094 call!688224)))

(declare-fun b!7497219 () Bool)

(assert (=> b!7497219 (= e!4470093 call!688225)))

(declare-fun b!7497220 () Bool)

(assert (=> b!7497220 (= e!4470091 e!4470095)))

(assert (=> b!7497220 (= c!1384133 ((_ is Union!19651) r1!5845))))

(declare-fun bm!688220 () Bool)

(assert (=> bm!688220 (= call!688223 call!688225)))

(declare-fun b!7497221 () Bool)

(assert (=> b!7497221 (= e!4470096 call!688224)))

(declare-fun b!7497214 () Bool)

(declare-fun res!3007489 () Bool)

(assert (=> b!7497214 (=> res!3007489 e!4470097)))

(assert (=> b!7497214 (= res!3007489 (not ((_ is Concat!28496) r1!5845)))))

(assert (=> b!7497214 (= e!4470095 e!4470097)))

(declare-fun d!2301957 () Bool)

(declare-fun res!3007487 () Bool)

(assert (=> d!2301957 (=> res!3007487 e!4470092)))

(assert (=> d!2301957 (= res!3007487 ((_ is ElementMatch!19651) r1!5845))))

(assert (=> d!2301957 (= (validRegex!10165 r1!5845) e!4470092)))

(assert (= (and d!2301957 (not res!3007487)) b!7497215))

(assert (= (and b!7497215 c!1384132) b!7497216))

(assert (= (and b!7497215 (not c!1384132)) b!7497220))

(assert (= (and b!7497216 res!3007490) b!7497219))

(assert (= (and b!7497220 c!1384133) b!7497213))

(assert (= (and b!7497220 (not c!1384133)) b!7497214))

(assert (= (and b!7497213 res!3007488) b!7497218))

(assert (= (and b!7497214 (not res!3007489)) b!7497217))

(assert (= (and b!7497217 res!3007486) b!7497221))

(assert (= (or b!7497218 b!7497221) bm!688219))

(assert (= (or b!7497213 b!7497217) bm!688220))

(assert (= (or b!7497219 bm!688220) bm!688218))

(declare-fun m!8080588 () Bool)

(assert (=> bm!688218 m!8080588))

(declare-fun m!8080590 () Bool)

(assert (=> bm!688219 m!8080590))

(declare-fun m!8080592 () Bool)

(assert (=> b!7497216 m!8080592))

(assert (=> start!725482 d!2301957))

(declare-fun bs!1936250 () Bool)

(declare-fun b!7497299 () Bool)

(assert (= bs!1936250 (and b!7497299 b!7496998)))

(declare-fun lambda!464598 () Int)

(assert (=> bs!1936250 (not (= lambda!464598 lambda!464573))))

(declare-fun bs!1936251 () Bool)

(assert (= bs!1936251 (and b!7497299 b!7497005)))

(assert (=> bs!1936251 (not (= lambda!464598 lambda!464574))))

(declare-fun bs!1936252 () Bool)

(assert (= bs!1936252 (and b!7497299 d!2301927)))

(assert (=> bs!1936252 (not (= lambda!464598 lambda!464581))))

(assert (=> bs!1936251 (not (= lambda!464598 lambda!464575))))

(assert (=> bs!1936250 (not (= lambda!464598 lambda!464572))))

(declare-fun bs!1936253 () Bool)

(assert (= bs!1936253 (and b!7497299 d!2301945)))

(assert (=> bs!1936253 (not (= lambda!464598 lambda!464589))))

(assert (=> bs!1936252 (not (= lambda!464598 lambda!464580))))

(assert (=> b!7497299 true))

(assert (=> b!7497299 true))

(declare-fun bs!1936254 () Bool)

(declare-fun b!7497302 () Bool)

(assert (= bs!1936254 (and b!7497302 b!7496998)))

(declare-fun lambda!464599 () Int)

(assert (=> bs!1936254 (= (and (= (regOne!39814 lt!2630818) lt!2630813) (= (regTwo!39814 lt!2630818) rTail!78)) (= lambda!464599 lambda!464573))))

(declare-fun bs!1936255 () Bool)

(assert (= bs!1936255 (and b!7497302 b!7497005)))

(assert (=> bs!1936255 (not (= lambda!464599 lambda!464574))))

(declare-fun bs!1936256 () Bool)

(assert (= bs!1936256 (and b!7497302 d!2301927)))

(assert (=> bs!1936256 (= (and (= (regOne!39814 lt!2630818) lt!2630813) (= (regTwo!39814 lt!2630818) rTail!78)) (= lambda!464599 lambda!464581))))

(declare-fun bs!1936257 () Bool)

(assert (= bs!1936257 (and b!7497302 b!7497299)))

(assert (=> bs!1936257 (not (= lambda!464599 lambda!464598))))

(assert (=> bs!1936255 (= (and (= (regOne!39814 lt!2630818) r1!5845) (= (regTwo!39814 lt!2630818) rTail!78)) (= lambda!464599 lambda!464575))))

(assert (=> bs!1936254 (not (= lambda!464599 lambda!464572))))

(declare-fun bs!1936258 () Bool)

(assert (= bs!1936258 (and b!7497302 d!2301945)))

(assert (=> bs!1936258 (not (= lambda!464599 lambda!464589))))

(assert (=> bs!1936256 (not (= lambda!464599 lambda!464580))))

(assert (=> b!7497302 true))

(assert (=> b!7497302 true))

(declare-fun b!7497297 () Bool)

(declare-fun c!1384151 () Bool)

(assert (=> b!7497297 (= c!1384151 ((_ is Union!19651) lt!2630818))))

(declare-fun e!4470140 () Bool)

(declare-fun e!4470145 () Bool)

(assert (=> b!7497297 (= e!4470140 e!4470145)))

(declare-fun b!7497298 () Bool)

(declare-fun e!4470139 () Bool)

(assert (=> b!7497298 (= e!4470145 e!4470139)))

(declare-fun c!1384153 () Bool)

(assert (=> b!7497298 (= c!1384153 ((_ is Star!19651) lt!2630818))))

(declare-fun bm!688229 () Bool)

(declare-fun call!688234 () Bool)

(assert (=> bm!688229 (= call!688234 (Exists!4268 (ite c!1384153 lambda!464598 lambda!464599)))))

(declare-fun d!2301959 () Bool)

(declare-fun c!1384152 () Bool)

(assert (=> d!2301959 (= c!1384152 ((_ is EmptyExpr!19651) lt!2630818))))

(declare-fun e!4470142 () Bool)

(assert (=> d!2301959 (= (matchRSpec!4328 lt!2630818 s!13591) e!4470142)))

(declare-fun e!4470143 () Bool)

(assert (=> b!7497299 (= e!4470143 call!688234)))

(declare-fun b!7497300 () Bool)

(declare-fun e!4470144 () Bool)

(assert (=> b!7497300 (= e!4470144 (matchRSpec!4328 (regTwo!39815 lt!2630818) s!13591))))

(declare-fun b!7497301 () Bool)

(declare-fun e!4470141 () Bool)

(assert (=> b!7497301 (= e!4470142 e!4470141)))

(declare-fun res!3007534 () Bool)

(assert (=> b!7497301 (= res!3007534 (not ((_ is EmptyLang!19651) lt!2630818)))))

(assert (=> b!7497301 (=> (not res!3007534) (not e!4470141))))

(assert (=> b!7497302 (= e!4470139 call!688234)))

(declare-fun bm!688230 () Bool)

(declare-fun call!688235 () Bool)

(assert (=> bm!688230 (= call!688235 (isEmpty!41279 s!13591))))

(declare-fun b!7497303 () Bool)

(assert (=> b!7497303 (= e!4470142 call!688235)))

(declare-fun b!7497304 () Bool)

(assert (=> b!7497304 (= e!4470145 e!4470144)))

(declare-fun res!3007532 () Bool)

(assert (=> b!7497304 (= res!3007532 (matchRSpec!4328 (regOne!39815 lt!2630818) s!13591))))

(assert (=> b!7497304 (=> res!3007532 e!4470144)))

(declare-fun b!7497305 () Bool)

(declare-fun c!1384154 () Bool)

(assert (=> b!7497305 (= c!1384154 ((_ is ElementMatch!19651) lt!2630818))))

(assert (=> b!7497305 (= e!4470141 e!4470140)))

(declare-fun b!7497306 () Bool)

(assert (=> b!7497306 (= e!4470140 (= s!13591 (Cons!72241 (c!1384094 lt!2630818) Nil!72241)))))

(declare-fun b!7497307 () Bool)

(declare-fun res!3007533 () Bool)

(assert (=> b!7497307 (=> res!3007533 e!4470143)))

(assert (=> b!7497307 (= res!3007533 call!688235)))

(assert (=> b!7497307 (= e!4470139 e!4470143)))

(assert (= (and d!2301959 c!1384152) b!7497303))

(assert (= (and d!2301959 (not c!1384152)) b!7497301))

(assert (= (and b!7497301 res!3007534) b!7497305))

(assert (= (and b!7497305 c!1384154) b!7497306))

(assert (= (and b!7497305 (not c!1384154)) b!7497297))

(assert (= (and b!7497297 c!1384151) b!7497304))

(assert (= (and b!7497297 (not c!1384151)) b!7497298))

(assert (= (and b!7497304 (not res!3007532)) b!7497300))

(assert (= (and b!7497298 c!1384153) b!7497307))

(assert (= (and b!7497298 (not c!1384153)) b!7497302))

(assert (= (and b!7497307 (not res!3007533)) b!7497299))

(assert (= (or b!7497299 b!7497302) bm!688229))

(assert (= (or b!7497303 b!7497307) bm!688230))

(declare-fun m!8080642 () Bool)

(assert (=> bm!688229 m!8080642))

(declare-fun m!8080646 () Bool)

(assert (=> b!7497300 m!8080646))

(declare-fun m!8080650 () Bool)

(assert (=> bm!688230 m!8080650))

(declare-fun m!8080652 () Bool)

(assert (=> b!7497304 m!8080652))

(assert (=> b!7496999 d!2301959))

(declare-fun b!7497308 () Bool)

(declare-fun res!3007537 () Bool)

(declare-fun e!4470148 () Bool)

(assert (=> b!7497308 (=> res!3007537 e!4470148)))

(assert (=> b!7497308 (= res!3007537 (not (isEmpty!41279 (tail!14952 s!13591))))))

(declare-fun bm!688231 () Bool)

(declare-fun call!688236 () Bool)

(assert (=> bm!688231 (= call!688236 (isEmpty!41279 s!13591))))

(declare-fun b!7497309 () Bool)

(declare-fun res!3007536 () Bool)

(declare-fun e!4470152 () Bool)

(assert (=> b!7497309 (=> (not res!3007536) (not e!4470152))))

(assert (=> b!7497309 (= res!3007536 (not call!688236))))

(declare-fun b!7497310 () Bool)

(declare-fun e!4470150 () Bool)

(declare-fun e!4470149 () Bool)

(assert (=> b!7497310 (= e!4470150 e!4470149)))

(declare-fun res!3007540 () Bool)

(assert (=> b!7497310 (=> (not res!3007540) (not e!4470149))))

(declare-fun lt!2630868 () Bool)

(assert (=> b!7497310 (= res!3007540 (not lt!2630868))))

(declare-fun b!7497311 () Bool)

(declare-fun e!4470146 () Bool)

(assert (=> b!7497311 (= e!4470146 (not lt!2630868))))

(declare-fun b!7497312 () Bool)

(declare-fun e!4470147 () Bool)

(assert (=> b!7497312 (= e!4470147 (= lt!2630868 call!688236))))

(declare-fun d!2301971 () Bool)

(assert (=> d!2301971 e!4470147))

(declare-fun c!1384157 () Bool)

(assert (=> d!2301971 (= c!1384157 ((_ is EmptyExpr!19651) lt!2630818))))

(declare-fun e!4470151 () Bool)

(assert (=> d!2301971 (= lt!2630868 e!4470151)))

(declare-fun c!1384156 () Bool)

(assert (=> d!2301971 (= c!1384156 (isEmpty!41279 s!13591))))

(assert (=> d!2301971 (validRegex!10165 lt!2630818)))

(assert (=> d!2301971 (= (matchR!9413 lt!2630818 s!13591) lt!2630868)))

(declare-fun b!7497313 () Bool)

(assert (=> b!7497313 (= e!4470152 (= (head!15383 s!13591) (c!1384094 lt!2630818)))))

(declare-fun b!7497314 () Bool)

(assert (=> b!7497314 (= e!4470147 e!4470146)))

(declare-fun c!1384155 () Bool)

(assert (=> b!7497314 (= c!1384155 ((_ is EmptyLang!19651) lt!2630818))))

(declare-fun b!7497315 () Bool)

(declare-fun res!3007538 () Bool)

(assert (=> b!7497315 (=> res!3007538 e!4470150)))

(assert (=> b!7497315 (= res!3007538 (not ((_ is ElementMatch!19651) lt!2630818)))))

(assert (=> b!7497315 (= e!4470146 e!4470150)))

(declare-fun b!7497316 () Bool)

(declare-fun res!3007539 () Bool)

(assert (=> b!7497316 (=> res!3007539 e!4470150)))

(assert (=> b!7497316 (= res!3007539 e!4470152)))

(declare-fun res!3007542 () Bool)

(assert (=> b!7497316 (=> (not res!3007542) (not e!4470152))))

(assert (=> b!7497316 (= res!3007542 lt!2630868)))

(declare-fun b!7497317 () Bool)

(assert (=> b!7497317 (= e!4470151 (matchR!9413 (derivativeStep!5643 lt!2630818 (head!15383 s!13591)) (tail!14952 s!13591)))))

(declare-fun b!7497318 () Bool)

(assert (=> b!7497318 (= e!4470148 (not (= (head!15383 s!13591) (c!1384094 lt!2630818))))))

(declare-fun b!7497319 () Bool)

(declare-fun res!3007535 () Bool)

(assert (=> b!7497319 (=> (not res!3007535) (not e!4470152))))

(assert (=> b!7497319 (= res!3007535 (isEmpty!41279 (tail!14952 s!13591)))))

(declare-fun b!7497320 () Bool)

(assert (=> b!7497320 (= e!4470151 (nullable!8586 lt!2630818))))

(declare-fun b!7497321 () Bool)

(assert (=> b!7497321 (= e!4470149 e!4470148)))

(declare-fun res!3007541 () Bool)

(assert (=> b!7497321 (=> res!3007541 e!4470148)))

(assert (=> b!7497321 (= res!3007541 call!688236)))

(assert (= (and d!2301971 c!1384156) b!7497320))

(assert (= (and d!2301971 (not c!1384156)) b!7497317))

(assert (= (and d!2301971 c!1384157) b!7497312))

(assert (= (and d!2301971 (not c!1384157)) b!7497314))

(assert (= (and b!7497314 c!1384155) b!7497311))

(assert (= (and b!7497314 (not c!1384155)) b!7497315))

(assert (= (and b!7497315 (not res!3007538)) b!7497316))

(assert (= (and b!7497316 res!3007542) b!7497309))

(assert (= (and b!7497309 res!3007536) b!7497319))

(assert (= (and b!7497319 res!3007535) b!7497313))

(assert (= (and b!7497316 (not res!3007539)) b!7497310))

(assert (= (and b!7497310 res!3007540) b!7497321))

(assert (= (and b!7497321 (not res!3007541)) b!7497308))

(assert (= (and b!7497308 (not res!3007537)) b!7497318))

(assert (= (or b!7497312 b!7497309 b!7497321) bm!688231))

(assert (=> bm!688231 m!8080650))

(declare-fun m!8080654 () Bool)

(assert (=> b!7497318 m!8080654))

(declare-fun m!8080656 () Bool)

(assert (=> b!7497320 m!8080656))

(assert (=> b!7497317 m!8080654))

(assert (=> b!7497317 m!8080654))

(declare-fun m!8080658 () Bool)

(assert (=> b!7497317 m!8080658))

(declare-fun m!8080660 () Bool)

(assert (=> b!7497317 m!8080660))

(assert (=> b!7497317 m!8080658))

(assert (=> b!7497317 m!8080660))

(declare-fun m!8080662 () Bool)

(assert (=> b!7497317 m!8080662))

(assert (=> b!7497308 m!8080660))

(assert (=> b!7497308 m!8080660))

(declare-fun m!8080664 () Bool)

(assert (=> b!7497308 m!8080664))

(assert (=> b!7497313 m!8080654))

(assert (=> d!2301971 m!8080650))

(declare-fun m!8080666 () Bool)

(assert (=> d!2301971 m!8080666))

(assert (=> b!7497319 m!8080660))

(assert (=> b!7497319 m!8080660))

(assert (=> b!7497319 m!8080664))

(assert (=> b!7496999 d!2301971))

(declare-fun d!2301973 () Bool)

(assert (=> d!2301973 (= (matchR!9413 lt!2630818 s!13591) (matchRSpec!4328 lt!2630818 s!13591))))

(declare-fun lt!2630871 () Unit!166133)

(declare-fun choose!57958 (Regex!19651 List!72365) Unit!166133)

(assert (=> d!2301973 (= lt!2630871 (choose!57958 lt!2630818 s!13591))))

(assert (=> d!2301973 (validRegex!10165 lt!2630818)))

(assert (=> d!2301973 (= (mainMatchTheorem!4322 lt!2630818 s!13591) lt!2630871)))

(declare-fun bs!1936260 () Bool)

(assert (= bs!1936260 d!2301973))

(assert (=> bs!1936260 m!8080486))

(assert (=> bs!1936260 m!8080482))

(declare-fun m!8080668 () Bool)

(assert (=> bs!1936260 m!8080668))

(assert (=> bs!1936260 m!8080666))

(assert (=> b!7496999 d!2301973))

(declare-fun b!7497324 () Bool)

(declare-fun res!3007545 () Bool)

(declare-fun e!4470155 () Bool)

(assert (=> b!7497324 (=> res!3007545 e!4470155)))

(assert (=> b!7497324 (= res!3007545 (not (isEmpty!41279 (tail!14952 s!13591))))))

(declare-fun bm!688232 () Bool)

(declare-fun call!688237 () Bool)

(assert (=> bm!688232 (= call!688237 (isEmpty!41279 s!13591))))

(declare-fun b!7497325 () Bool)

(declare-fun res!3007544 () Bool)

(declare-fun e!4470159 () Bool)

(assert (=> b!7497325 (=> (not res!3007544) (not e!4470159))))

(assert (=> b!7497325 (= res!3007544 (not call!688237))))

(declare-fun b!7497326 () Bool)

(declare-fun e!4470157 () Bool)

(declare-fun e!4470156 () Bool)

(assert (=> b!7497326 (= e!4470157 e!4470156)))

(declare-fun res!3007548 () Bool)

(assert (=> b!7497326 (=> (not res!3007548) (not e!4470156))))

(declare-fun lt!2630872 () Bool)

(assert (=> b!7497326 (= res!3007548 (not lt!2630872))))

(declare-fun b!7497327 () Bool)

(declare-fun e!4470153 () Bool)

(assert (=> b!7497327 (= e!4470153 (not lt!2630872))))

(declare-fun b!7497328 () Bool)

(declare-fun e!4470154 () Bool)

(assert (=> b!7497328 (= e!4470154 (= lt!2630872 call!688237))))

(declare-fun d!2301975 () Bool)

(assert (=> d!2301975 e!4470154))

(declare-fun c!1384160 () Bool)

(assert (=> d!2301975 (= c!1384160 ((_ is EmptyExpr!19651) lt!2630805))))

(declare-fun e!4470158 () Bool)

(assert (=> d!2301975 (= lt!2630872 e!4470158)))

(declare-fun c!1384159 () Bool)

(assert (=> d!2301975 (= c!1384159 (isEmpty!41279 s!13591))))

(assert (=> d!2301975 (validRegex!10165 lt!2630805)))

(assert (=> d!2301975 (= (matchR!9413 lt!2630805 s!13591) lt!2630872)))

(declare-fun b!7497329 () Bool)

(assert (=> b!7497329 (= e!4470159 (= (head!15383 s!13591) (c!1384094 lt!2630805)))))

(declare-fun b!7497330 () Bool)

(assert (=> b!7497330 (= e!4470154 e!4470153)))

(declare-fun c!1384158 () Bool)

(assert (=> b!7497330 (= c!1384158 ((_ is EmptyLang!19651) lt!2630805))))

(declare-fun b!7497331 () Bool)

(declare-fun res!3007546 () Bool)

(assert (=> b!7497331 (=> res!3007546 e!4470157)))

(assert (=> b!7497331 (= res!3007546 (not ((_ is ElementMatch!19651) lt!2630805)))))

(assert (=> b!7497331 (= e!4470153 e!4470157)))

(declare-fun b!7497332 () Bool)

(declare-fun res!3007547 () Bool)

(assert (=> b!7497332 (=> res!3007547 e!4470157)))

(assert (=> b!7497332 (= res!3007547 e!4470159)))

(declare-fun res!3007550 () Bool)

(assert (=> b!7497332 (=> (not res!3007550) (not e!4470159))))

(assert (=> b!7497332 (= res!3007550 lt!2630872)))

(declare-fun b!7497333 () Bool)

(assert (=> b!7497333 (= e!4470158 (matchR!9413 (derivativeStep!5643 lt!2630805 (head!15383 s!13591)) (tail!14952 s!13591)))))

(declare-fun b!7497334 () Bool)

(assert (=> b!7497334 (= e!4470155 (not (= (head!15383 s!13591) (c!1384094 lt!2630805))))))

(declare-fun b!7497335 () Bool)

(declare-fun res!3007543 () Bool)

(assert (=> b!7497335 (=> (not res!3007543) (not e!4470159))))

(assert (=> b!7497335 (= res!3007543 (isEmpty!41279 (tail!14952 s!13591)))))

(declare-fun b!7497336 () Bool)

(assert (=> b!7497336 (= e!4470158 (nullable!8586 lt!2630805))))

(declare-fun b!7497337 () Bool)

(assert (=> b!7497337 (= e!4470156 e!4470155)))

(declare-fun res!3007549 () Bool)

(assert (=> b!7497337 (=> res!3007549 e!4470155)))

(assert (=> b!7497337 (= res!3007549 call!688237)))

(assert (= (and d!2301975 c!1384159) b!7497336))

(assert (= (and d!2301975 (not c!1384159)) b!7497333))

(assert (= (and d!2301975 c!1384160) b!7497328))

(assert (= (and d!2301975 (not c!1384160)) b!7497330))

(assert (= (and b!7497330 c!1384158) b!7497327))

(assert (= (and b!7497330 (not c!1384158)) b!7497331))

(assert (= (and b!7497331 (not res!3007546)) b!7497332))

(assert (= (and b!7497332 res!3007550) b!7497325))

(assert (= (and b!7497325 res!3007544) b!7497335))

(assert (= (and b!7497335 res!3007543) b!7497329))

(assert (= (and b!7497332 (not res!3007547)) b!7497326))

(assert (= (and b!7497326 res!3007548) b!7497337))

(assert (= (and b!7497337 (not res!3007549)) b!7497324))

(assert (= (and b!7497324 (not res!3007545)) b!7497334))

(assert (= (or b!7497328 b!7497325 b!7497337) bm!688232))

(assert (=> bm!688232 m!8080650))

(assert (=> b!7497334 m!8080654))

(declare-fun m!8080670 () Bool)

(assert (=> b!7497336 m!8080670))

(assert (=> b!7497333 m!8080654))

(assert (=> b!7497333 m!8080654))

(declare-fun m!8080672 () Bool)

(assert (=> b!7497333 m!8080672))

(assert (=> b!7497333 m!8080660))

(assert (=> b!7497333 m!8080672))

(assert (=> b!7497333 m!8080660))

(declare-fun m!8080674 () Bool)

(assert (=> b!7497333 m!8080674))

(assert (=> b!7497324 m!8080660))

(assert (=> b!7497324 m!8080660))

(assert (=> b!7497324 m!8080664))

(assert (=> b!7497329 m!8080654))

(assert (=> d!2301975 m!8080650))

(declare-fun m!8080676 () Bool)

(assert (=> d!2301975 m!8080676))

(assert (=> b!7497335 m!8080660))

(assert (=> b!7497335 m!8080660))

(assert (=> b!7497335 m!8080664))

(assert (=> b!7496999 d!2301975))

(declare-fun bs!1936261 () Bool)

(declare-fun b!7497360 () Bool)

(assert (= bs!1936261 (and b!7497360 b!7496998)))

(declare-fun lambda!464600 () Int)

(assert (=> bs!1936261 (not (= lambda!464600 lambda!464573))))

(declare-fun bs!1936262 () Bool)

(assert (= bs!1936262 (and b!7497360 b!7497005)))

(assert (=> bs!1936262 (not (= lambda!464600 lambda!464574))))

(declare-fun bs!1936263 () Bool)

(assert (= bs!1936263 (and b!7497360 d!2301927)))

(assert (=> bs!1936263 (not (= lambda!464600 lambda!464581))))

(declare-fun bs!1936264 () Bool)

(assert (= bs!1936264 (and b!7497360 b!7497299)))

(assert (=> bs!1936264 (= (and (= (reg!19980 lt!2630805) (reg!19980 lt!2630818)) (= lt!2630805 lt!2630818)) (= lambda!464600 lambda!464598))))

(assert (=> bs!1936262 (not (= lambda!464600 lambda!464575))))

(assert (=> bs!1936261 (not (= lambda!464600 lambda!464572))))

(declare-fun bs!1936265 () Bool)

(assert (= bs!1936265 (and b!7497360 d!2301945)))

(assert (=> bs!1936265 (not (= lambda!464600 lambda!464589))))

(assert (=> bs!1936263 (not (= lambda!464600 lambda!464580))))

(declare-fun bs!1936266 () Bool)

(assert (= bs!1936266 (and b!7497360 b!7497302)))

(assert (=> bs!1936266 (not (= lambda!464600 lambda!464599))))

(assert (=> b!7497360 true))

(assert (=> b!7497360 true))

(declare-fun bs!1936267 () Bool)

(declare-fun b!7497363 () Bool)

(assert (= bs!1936267 (and b!7497363 b!7496998)))

(declare-fun lambda!464603 () Int)

(assert (=> bs!1936267 (= (and (= (regOne!39814 lt!2630805) lt!2630813) (= (regTwo!39814 lt!2630805) rTail!78)) (= lambda!464603 lambda!464573))))

(declare-fun bs!1936268 () Bool)

(assert (= bs!1936268 (and b!7497363 b!7497005)))

(assert (=> bs!1936268 (not (= lambda!464603 lambda!464574))))

(declare-fun bs!1936269 () Bool)

(assert (= bs!1936269 (and b!7497363 d!2301927)))

(assert (=> bs!1936269 (= (and (= (regOne!39814 lt!2630805) lt!2630813) (= (regTwo!39814 lt!2630805) rTail!78)) (= lambda!464603 lambda!464581))))

(assert (=> bs!1936268 (= (and (= (regOne!39814 lt!2630805) r1!5845) (= (regTwo!39814 lt!2630805) rTail!78)) (= lambda!464603 lambda!464575))))

(assert (=> bs!1936267 (not (= lambda!464603 lambda!464572))))

(declare-fun bs!1936270 () Bool)

(assert (= bs!1936270 (and b!7497363 d!2301945)))

(assert (=> bs!1936270 (not (= lambda!464603 lambda!464589))))

(assert (=> bs!1936269 (not (= lambda!464603 lambda!464580))))

(declare-fun bs!1936271 () Bool)

(assert (= bs!1936271 (and b!7497363 b!7497302)))

(assert (=> bs!1936271 (= (and (= (regOne!39814 lt!2630805) (regOne!39814 lt!2630818)) (= (regTwo!39814 lt!2630805) (regTwo!39814 lt!2630818))) (= lambda!464603 lambda!464599))))

(declare-fun bs!1936272 () Bool)

(assert (= bs!1936272 (and b!7497363 b!7497360)))

(assert (=> bs!1936272 (not (= lambda!464603 lambda!464600))))

(declare-fun bs!1936273 () Bool)

(assert (= bs!1936273 (and b!7497363 b!7497299)))

(assert (=> bs!1936273 (not (= lambda!464603 lambda!464598))))

(assert (=> b!7497363 true))

(assert (=> b!7497363 true))

(declare-fun b!7497358 () Bool)

(declare-fun c!1384169 () Bool)

(assert (=> b!7497358 (= c!1384169 ((_ is Union!19651) lt!2630805))))

(declare-fun e!4470175 () Bool)

(declare-fun e!4470180 () Bool)

(assert (=> b!7497358 (= e!4470175 e!4470180)))

(declare-fun b!7497359 () Bool)

(declare-fun e!4470174 () Bool)

(assert (=> b!7497359 (= e!4470180 e!4470174)))

(declare-fun c!1384171 () Bool)

(assert (=> b!7497359 (= c!1384171 ((_ is Star!19651) lt!2630805))))

(declare-fun bm!688233 () Bool)

(declare-fun call!688238 () Bool)

(assert (=> bm!688233 (= call!688238 (Exists!4268 (ite c!1384171 lambda!464600 lambda!464603)))))

(declare-fun d!2301977 () Bool)

(declare-fun c!1384170 () Bool)

(assert (=> d!2301977 (= c!1384170 ((_ is EmptyExpr!19651) lt!2630805))))

(declare-fun e!4470177 () Bool)

(assert (=> d!2301977 (= (matchRSpec!4328 lt!2630805 s!13591) e!4470177)))

(declare-fun e!4470178 () Bool)

(assert (=> b!7497360 (= e!4470178 call!688238)))

(declare-fun b!7497361 () Bool)

(declare-fun e!4470179 () Bool)

(assert (=> b!7497361 (= e!4470179 (matchRSpec!4328 (regTwo!39815 lt!2630805) s!13591))))

(declare-fun b!7497362 () Bool)

(declare-fun e!4470176 () Bool)

(assert (=> b!7497362 (= e!4470177 e!4470176)))

(declare-fun res!3007559 () Bool)

(assert (=> b!7497362 (= res!3007559 (not ((_ is EmptyLang!19651) lt!2630805)))))

(assert (=> b!7497362 (=> (not res!3007559) (not e!4470176))))

(assert (=> b!7497363 (= e!4470174 call!688238)))

(declare-fun bm!688234 () Bool)

(declare-fun call!688239 () Bool)

(assert (=> bm!688234 (= call!688239 (isEmpty!41279 s!13591))))

(declare-fun b!7497364 () Bool)

(assert (=> b!7497364 (= e!4470177 call!688239)))

(declare-fun b!7497365 () Bool)

(assert (=> b!7497365 (= e!4470180 e!4470179)))

(declare-fun res!3007557 () Bool)

(assert (=> b!7497365 (= res!3007557 (matchRSpec!4328 (regOne!39815 lt!2630805) s!13591))))

(assert (=> b!7497365 (=> res!3007557 e!4470179)))

(declare-fun b!7497366 () Bool)

(declare-fun c!1384172 () Bool)

(assert (=> b!7497366 (= c!1384172 ((_ is ElementMatch!19651) lt!2630805))))

(assert (=> b!7497366 (= e!4470176 e!4470175)))

(declare-fun b!7497367 () Bool)

(assert (=> b!7497367 (= e!4470175 (= s!13591 (Cons!72241 (c!1384094 lt!2630805) Nil!72241)))))

(declare-fun b!7497368 () Bool)

(declare-fun res!3007558 () Bool)

(assert (=> b!7497368 (=> res!3007558 e!4470178)))

(assert (=> b!7497368 (= res!3007558 call!688239)))

(assert (=> b!7497368 (= e!4470174 e!4470178)))

(assert (= (and d!2301977 c!1384170) b!7497364))

(assert (= (and d!2301977 (not c!1384170)) b!7497362))

(assert (= (and b!7497362 res!3007559) b!7497366))

(assert (= (and b!7497366 c!1384172) b!7497367))

(assert (= (and b!7497366 (not c!1384172)) b!7497358))

(assert (= (and b!7497358 c!1384169) b!7497365))

(assert (= (and b!7497358 (not c!1384169)) b!7497359))

(assert (= (and b!7497365 (not res!3007557)) b!7497361))

(assert (= (and b!7497359 c!1384171) b!7497368))

(assert (= (and b!7497359 (not c!1384171)) b!7497363))

(assert (= (and b!7497368 (not res!3007558)) b!7497360))

(assert (= (or b!7497360 b!7497363) bm!688233))

(assert (= (or b!7497364 b!7497368) bm!688234))

(declare-fun m!8080678 () Bool)

(assert (=> bm!688233 m!8080678))

(declare-fun m!8080680 () Bool)

(assert (=> b!7497361 m!8080680))

(assert (=> bm!688234 m!8080650))

(declare-fun m!8080682 () Bool)

(assert (=> b!7497365 m!8080682))

(assert (=> b!7496999 d!2301977))

(declare-fun d!2301979 () Bool)

(assert (=> d!2301979 (= (matchR!9413 lt!2630805 s!13591) (matchRSpec!4328 lt!2630805 s!13591))))

(declare-fun lt!2630873 () Unit!166133)

(assert (=> d!2301979 (= lt!2630873 (choose!57958 lt!2630805 s!13591))))

(assert (=> d!2301979 (validRegex!10165 lt!2630805)))

(assert (=> d!2301979 (= (mainMatchTheorem!4322 lt!2630805 s!13591) lt!2630873)))

(declare-fun bs!1936274 () Bool)

(assert (= bs!1936274 d!2301979))

(assert (=> bs!1936274 m!8080480))

(assert (=> bs!1936274 m!8080484))

(declare-fun m!8080684 () Bool)

(assert (=> bs!1936274 m!8080684))

(assert (=> bs!1936274 m!8080676))

(assert (=> b!7496999 d!2301979))

(declare-fun b!7497379 () Bool)

(declare-fun res!3007572 () Bool)

(declare-fun e!4470188 () Bool)

(assert (=> b!7497379 (=> (not res!3007572) (not e!4470188))))

(declare-fun call!688242 () Bool)

(assert (=> b!7497379 (= res!3007572 call!688242)))

(declare-fun e!4470189 () Bool)

(assert (=> b!7497379 (= e!4470189 e!4470188)))

(declare-fun call!688244 () Bool)

(declare-fun c!1384174 () Bool)

(declare-fun bm!688237 () Bool)

(declare-fun c!1384173 () Bool)

(assert (=> bm!688237 (= call!688244 (validRegex!10165 (ite c!1384173 (reg!19980 rTail!78) (ite c!1384174 (regOne!39815 rTail!78) (regOne!39814 rTail!78)))))))

(declare-fun bm!688238 () Bool)

(declare-fun call!688243 () Bool)

(assert (=> bm!688238 (= call!688243 (validRegex!10165 (ite c!1384174 (regTwo!39815 rTail!78) (regTwo!39814 rTail!78))))))

(declare-fun b!7497381 () Bool)

(declare-fun e!4470186 () Bool)

(declare-fun e!4470185 () Bool)

(assert (=> b!7497381 (= e!4470186 e!4470185)))

(assert (=> b!7497381 (= c!1384173 ((_ is Star!19651) rTail!78))))

(declare-fun b!7497382 () Bool)

(declare-fun e!4470187 () Bool)

(assert (=> b!7497382 (= e!4470185 e!4470187)))

(declare-fun res!3007574 () Bool)

(assert (=> b!7497382 (= res!3007574 (not (nullable!8586 (reg!19980 rTail!78))))))

(assert (=> b!7497382 (=> (not res!3007574) (not e!4470187))))

(declare-fun b!7497383 () Bool)

(declare-fun e!4470191 () Bool)

(declare-fun e!4470190 () Bool)

(assert (=> b!7497383 (= e!4470191 e!4470190)))

(declare-fun res!3007570 () Bool)

(assert (=> b!7497383 (=> (not res!3007570) (not e!4470190))))

(assert (=> b!7497383 (= res!3007570 call!688242)))

(declare-fun b!7497384 () Bool)

(assert (=> b!7497384 (= e!4470188 call!688243)))

(declare-fun b!7497385 () Bool)

(assert (=> b!7497385 (= e!4470187 call!688244)))

(declare-fun b!7497386 () Bool)

(assert (=> b!7497386 (= e!4470185 e!4470189)))

(assert (=> b!7497386 (= c!1384174 ((_ is Union!19651) rTail!78))))

(declare-fun bm!688239 () Bool)

(assert (=> bm!688239 (= call!688242 call!688244)))

(declare-fun b!7497387 () Bool)

(assert (=> b!7497387 (= e!4470190 call!688243)))

(declare-fun b!7497380 () Bool)

(declare-fun res!3007573 () Bool)

(assert (=> b!7497380 (=> res!3007573 e!4470191)))

(assert (=> b!7497380 (= res!3007573 (not ((_ is Concat!28496) rTail!78)))))

(assert (=> b!7497380 (= e!4470189 e!4470191)))

(declare-fun d!2301981 () Bool)

(declare-fun res!3007571 () Bool)

(assert (=> d!2301981 (=> res!3007571 e!4470186)))

(assert (=> d!2301981 (= res!3007571 ((_ is ElementMatch!19651) rTail!78))))

(assert (=> d!2301981 (= (validRegex!10165 rTail!78) e!4470186)))

(assert (= (and d!2301981 (not res!3007571)) b!7497381))

(assert (= (and b!7497381 c!1384173) b!7497382))

(assert (= (and b!7497381 (not c!1384173)) b!7497386))

(assert (= (and b!7497382 res!3007574) b!7497385))

(assert (= (and b!7497386 c!1384174) b!7497379))

(assert (= (and b!7497386 (not c!1384174)) b!7497380))

(assert (= (and b!7497379 res!3007572) b!7497384))

(assert (= (and b!7497380 (not res!3007573)) b!7497383))

(assert (= (and b!7497383 res!3007570) b!7497387))

(assert (= (or b!7497384 b!7497387) bm!688238))

(assert (= (or b!7497379 b!7497383) bm!688239))

(assert (= (or b!7497385 bm!688239) bm!688237))

(declare-fun m!8080686 () Bool)

(assert (=> bm!688237 m!8080686))

(declare-fun m!8080688 () Bool)

(assert (=> bm!688238 m!8080688))

(declare-fun m!8080690 () Bool)

(assert (=> b!7497382 m!8080690))

(assert (=> b!7496994 d!2301981))

(declare-fun bs!1936275 () Bool)

(declare-fun b!7497390 () Bool)

(assert (= bs!1936275 (and b!7497390 b!7496998)))

(declare-fun lambda!464606 () Int)

(assert (=> bs!1936275 (not (= lambda!464606 lambda!464573))))

(declare-fun bs!1936276 () Bool)

(assert (= bs!1936276 (and b!7497390 b!7497005)))

(assert (=> bs!1936276 (not (= lambda!464606 lambda!464574))))

(declare-fun bs!1936277 () Bool)

(assert (= bs!1936277 (and b!7497390 d!2301927)))

(assert (=> bs!1936277 (not (= lambda!464606 lambda!464581))))

(assert (=> bs!1936276 (not (= lambda!464606 lambda!464575))))

(assert (=> bs!1936275 (not (= lambda!464606 lambda!464572))))

(declare-fun bs!1936278 () Bool)

(assert (= bs!1936278 (and b!7497390 d!2301945)))

(assert (=> bs!1936278 (not (= lambda!464606 lambda!464589))))

(assert (=> bs!1936277 (not (= lambda!464606 lambda!464580))))

(declare-fun bs!1936279 () Bool)

(assert (= bs!1936279 (and b!7497390 b!7497302)))

(assert (=> bs!1936279 (not (= lambda!464606 lambda!464599))))

(declare-fun bs!1936280 () Bool)

(assert (= bs!1936280 (and b!7497390 b!7497363)))

(assert (=> bs!1936280 (not (= lambda!464606 lambda!464603))))

(declare-fun bs!1936281 () Bool)

(assert (= bs!1936281 (and b!7497390 b!7497360)))

(assert (=> bs!1936281 (= (and (= (reg!19980 lt!2630804) (reg!19980 lt!2630805)) (= lt!2630804 lt!2630805)) (= lambda!464606 lambda!464600))))

(declare-fun bs!1936282 () Bool)

(assert (= bs!1936282 (and b!7497390 b!7497299)))

(assert (=> bs!1936282 (= (and (= (reg!19980 lt!2630804) (reg!19980 lt!2630818)) (= lt!2630804 lt!2630818)) (= lambda!464606 lambda!464598))))

(assert (=> b!7497390 true))

(assert (=> b!7497390 true))

(declare-fun bs!1936283 () Bool)

(declare-fun b!7497393 () Bool)

(assert (= bs!1936283 (and b!7497393 b!7496998)))

(declare-fun lambda!464607 () Int)

(assert (=> bs!1936283 (= (and (= (regOne!39814 lt!2630804) lt!2630813) (= (regTwo!39814 lt!2630804) rTail!78)) (= lambda!464607 lambda!464573))))

(declare-fun bs!1936284 () Bool)

(assert (= bs!1936284 (and b!7497393 b!7497005)))

(assert (=> bs!1936284 (not (= lambda!464607 lambda!464574))))

(declare-fun bs!1936285 () Bool)

(assert (= bs!1936285 (and b!7497393 d!2301927)))

(assert (=> bs!1936285 (= (and (= (regOne!39814 lt!2630804) lt!2630813) (= (regTwo!39814 lt!2630804) rTail!78)) (= lambda!464607 lambda!464581))))

(assert (=> bs!1936284 (= (and (= (regOne!39814 lt!2630804) r1!5845) (= (regTwo!39814 lt!2630804) rTail!78)) (= lambda!464607 lambda!464575))))

(declare-fun bs!1936286 () Bool)

(assert (= bs!1936286 (and b!7497393 b!7497390)))

(assert (=> bs!1936286 (not (= lambda!464607 lambda!464606))))

(assert (=> bs!1936283 (not (= lambda!464607 lambda!464572))))

(declare-fun bs!1936287 () Bool)

(assert (= bs!1936287 (and b!7497393 d!2301945)))

(assert (=> bs!1936287 (not (= lambda!464607 lambda!464589))))

(assert (=> bs!1936285 (not (= lambda!464607 lambda!464580))))

(declare-fun bs!1936288 () Bool)

(assert (= bs!1936288 (and b!7497393 b!7497302)))

(assert (=> bs!1936288 (= (and (= (regOne!39814 lt!2630804) (regOne!39814 lt!2630818)) (= (regTwo!39814 lt!2630804) (regTwo!39814 lt!2630818))) (= lambda!464607 lambda!464599))))

(declare-fun bs!1936289 () Bool)

(assert (= bs!1936289 (and b!7497393 b!7497363)))

(assert (=> bs!1936289 (= (and (= (regOne!39814 lt!2630804) (regOne!39814 lt!2630805)) (= (regTwo!39814 lt!2630804) (regTwo!39814 lt!2630805))) (= lambda!464607 lambda!464603))))

(declare-fun bs!1936291 () Bool)

(assert (= bs!1936291 (and b!7497393 b!7497360)))

(assert (=> bs!1936291 (not (= lambda!464607 lambda!464600))))

(declare-fun bs!1936292 () Bool)

(assert (= bs!1936292 (and b!7497393 b!7497299)))

(assert (=> bs!1936292 (not (= lambda!464607 lambda!464598))))

(assert (=> b!7497393 true))

(assert (=> b!7497393 true))

(declare-fun b!7497388 () Bool)

(declare-fun c!1384175 () Bool)

(assert (=> b!7497388 (= c!1384175 ((_ is Union!19651) lt!2630804))))

(declare-fun e!4470193 () Bool)

(declare-fun e!4470198 () Bool)

(assert (=> b!7497388 (= e!4470193 e!4470198)))

(declare-fun b!7497389 () Bool)

(declare-fun e!4470192 () Bool)

(assert (=> b!7497389 (= e!4470198 e!4470192)))

(declare-fun c!1384177 () Bool)

(assert (=> b!7497389 (= c!1384177 ((_ is Star!19651) lt!2630804))))

(declare-fun bm!688240 () Bool)

(declare-fun call!688245 () Bool)

(assert (=> bm!688240 (= call!688245 (Exists!4268 (ite c!1384177 lambda!464606 lambda!464607)))))

(declare-fun d!2301983 () Bool)

(declare-fun c!1384176 () Bool)

(assert (=> d!2301983 (= c!1384176 ((_ is EmptyExpr!19651) lt!2630804))))

(declare-fun e!4470195 () Bool)

(assert (=> d!2301983 (= (matchRSpec!4328 lt!2630804 s!13591) e!4470195)))

(declare-fun e!4470196 () Bool)

(assert (=> b!7497390 (= e!4470196 call!688245)))

(declare-fun b!7497391 () Bool)

(declare-fun e!4470197 () Bool)

(assert (=> b!7497391 (= e!4470197 (matchRSpec!4328 (regTwo!39815 lt!2630804) s!13591))))

(declare-fun b!7497392 () Bool)

(declare-fun e!4470194 () Bool)

(assert (=> b!7497392 (= e!4470195 e!4470194)))

(declare-fun res!3007577 () Bool)

(assert (=> b!7497392 (= res!3007577 (not ((_ is EmptyLang!19651) lt!2630804)))))

(assert (=> b!7497392 (=> (not res!3007577) (not e!4470194))))

(assert (=> b!7497393 (= e!4470192 call!688245)))

(declare-fun bm!688241 () Bool)

(declare-fun call!688246 () Bool)

(assert (=> bm!688241 (= call!688246 (isEmpty!41279 s!13591))))

(declare-fun b!7497394 () Bool)

(assert (=> b!7497394 (= e!4470195 call!688246)))

(declare-fun b!7497395 () Bool)

(assert (=> b!7497395 (= e!4470198 e!4470197)))

(declare-fun res!3007575 () Bool)

(assert (=> b!7497395 (= res!3007575 (matchRSpec!4328 (regOne!39815 lt!2630804) s!13591))))

(assert (=> b!7497395 (=> res!3007575 e!4470197)))

(declare-fun b!7497396 () Bool)

(declare-fun c!1384178 () Bool)

(assert (=> b!7497396 (= c!1384178 ((_ is ElementMatch!19651) lt!2630804))))

(assert (=> b!7497396 (= e!4470194 e!4470193)))

(declare-fun b!7497397 () Bool)

(assert (=> b!7497397 (= e!4470193 (= s!13591 (Cons!72241 (c!1384094 lt!2630804) Nil!72241)))))

(declare-fun b!7497398 () Bool)

(declare-fun res!3007576 () Bool)

(assert (=> b!7497398 (=> res!3007576 e!4470196)))

(assert (=> b!7497398 (= res!3007576 call!688246)))

(assert (=> b!7497398 (= e!4470192 e!4470196)))

(assert (= (and d!2301983 c!1384176) b!7497394))

(assert (= (and d!2301983 (not c!1384176)) b!7497392))

(assert (= (and b!7497392 res!3007577) b!7497396))

(assert (= (and b!7497396 c!1384178) b!7497397))

(assert (= (and b!7497396 (not c!1384178)) b!7497388))

(assert (= (and b!7497388 c!1384175) b!7497395))

(assert (= (and b!7497388 (not c!1384175)) b!7497389))

(assert (= (and b!7497395 (not res!3007575)) b!7497391))

(assert (= (and b!7497389 c!1384177) b!7497398))

(assert (= (and b!7497389 (not c!1384177)) b!7497393))

(assert (= (and b!7497398 (not res!3007576)) b!7497390))

(assert (= (or b!7497390 b!7497393) bm!688240))

(assert (= (or b!7497394 b!7497398) bm!688241))

(declare-fun m!8080692 () Bool)

(assert (=> bm!688240 m!8080692))

(declare-fun m!8080694 () Bool)

(assert (=> b!7497391 m!8080694))

(assert (=> bm!688241 m!8080650))

(declare-fun m!8080696 () Bool)

(assert (=> b!7497395 m!8080696))

(assert (=> b!7497006 d!2301983))

(declare-fun d!2301985 () Bool)

(assert (=> d!2301985 (= (matchR!9413 lt!2630817 s!13591) (matchRSpec!4328 lt!2630817 s!13591))))

(declare-fun lt!2630874 () Unit!166133)

(assert (=> d!2301985 (= lt!2630874 (choose!57958 lt!2630817 s!13591))))

(assert (=> d!2301985 (validRegex!10165 lt!2630817)))

(assert (=> d!2301985 (= (mainMatchTheorem!4322 lt!2630817 s!13591) lt!2630874)))

(declare-fun bs!1936296 () Bool)

(assert (= bs!1936296 d!2301985))

(assert (=> bs!1936296 m!8080422))

(assert (=> bs!1936296 m!8080432))

(declare-fun m!8080698 () Bool)

(assert (=> bs!1936296 m!8080698))

(declare-fun m!8080700 () Bool)

(assert (=> bs!1936296 m!8080700))

(assert (=> b!7497006 d!2301985))

(declare-fun bs!1936300 () Bool)

(declare-fun b!7497412 () Bool)

(assert (= bs!1936300 (and b!7497412 b!7497005)))

(declare-fun lambda!464610 () Int)

(assert (=> bs!1936300 (not (= lambda!464610 lambda!464574))))

(declare-fun bs!1936302 () Bool)

(assert (= bs!1936302 (and b!7497412 d!2301927)))

(assert (=> bs!1936302 (not (= lambda!464610 lambda!464581))))

(assert (=> bs!1936300 (not (= lambda!464610 lambda!464575))))

(declare-fun bs!1936304 () Bool)

(assert (= bs!1936304 (and b!7497412 b!7497390)))

(assert (=> bs!1936304 (= (and (= (reg!19980 lt!2630817) (reg!19980 lt!2630804)) (= lt!2630817 lt!2630804)) (= lambda!464610 lambda!464606))))

(declare-fun bs!1936305 () Bool)

(assert (= bs!1936305 (and b!7497412 b!7496998)))

(assert (=> bs!1936305 (not (= lambda!464610 lambda!464572))))

(declare-fun bs!1936306 () Bool)

(assert (= bs!1936306 (and b!7497412 d!2301945)))

(assert (=> bs!1936306 (not (= lambda!464610 lambda!464589))))

(assert (=> bs!1936302 (not (= lambda!464610 lambda!464580))))

(declare-fun bs!1936307 () Bool)

(assert (= bs!1936307 (and b!7497412 b!7497302)))

(assert (=> bs!1936307 (not (= lambda!464610 lambda!464599))))

(declare-fun bs!1936308 () Bool)

(assert (= bs!1936308 (and b!7497412 b!7497363)))

(assert (=> bs!1936308 (not (= lambda!464610 lambda!464603))))

(assert (=> bs!1936305 (not (= lambda!464610 lambda!464573))))

(declare-fun bs!1936309 () Bool)

(assert (= bs!1936309 (and b!7497412 b!7497393)))

(assert (=> bs!1936309 (not (= lambda!464610 lambda!464607))))

(declare-fun bs!1936310 () Bool)

(assert (= bs!1936310 (and b!7497412 b!7497360)))

(assert (=> bs!1936310 (= (and (= (reg!19980 lt!2630817) (reg!19980 lt!2630805)) (= lt!2630817 lt!2630805)) (= lambda!464610 lambda!464600))))

(declare-fun bs!1936311 () Bool)

(assert (= bs!1936311 (and b!7497412 b!7497299)))

(assert (=> bs!1936311 (= (and (= (reg!19980 lt!2630817) (reg!19980 lt!2630818)) (= lt!2630817 lt!2630818)) (= lambda!464610 lambda!464598))))

(assert (=> b!7497412 true))

(assert (=> b!7497412 true))

(declare-fun bs!1936312 () Bool)

(declare-fun b!7497415 () Bool)

(assert (= bs!1936312 (and b!7497415 b!7497005)))

(declare-fun lambda!464611 () Int)

(assert (=> bs!1936312 (not (= lambda!464611 lambda!464574))))

(declare-fun bs!1936313 () Bool)

(assert (= bs!1936313 (and b!7497415 b!7497412)))

(assert (=> bs!1936313 (not (= lambda!464611 lambda!464610))))

(declare-fun bs!1936314 () Bool)

(assert (= bs!1936314 (and b!7497415 d!2301927)))

(assert (=> bs!1936314 (= (and (= (regOne!39814 lt!2630817) lt!2630813) (= (regTwo!39814 lt!2630817) rTail!78)) (= lambda!464611 lambda!464581))))

(assert (=> bs!1936312 (= (and (= (regOne!39814 lt!2630817) r1!5845) (= (regTwo!39814 lt!2630817) rTail!78)) (= lambda!464611 lambda!464575))))

(declare-fun bs!1936315 () Bool)

(assert (= bs!1936315 (and b!7497415 b!7497390)))

(assert (=> bs!1936315 (not (= lambda!464611 lambda!464606))))

(declare-fun bs!1936316 () Bool)

(assert (= bs!1936316 (and b!7497415 b!7496998)))

(assert (=> bs!1936316 (not (= lambda!464611 lambda!464572))))

(declare-fun bs!1936317 () Bool)

(assert (= bs!1936317 (and b!7497415 d!2301945)))

(assert (=> bs!1936317 (not (= lambda!464611 lambda!464589))))

(assert (=> bs!1936314 (not (= lambda!464611 lambda!464580))))

(declare-fun bs!1936318 () Bool)

(assert (= bs!1936318 (and b!7497415 b!7497302)))

(assert (=> bs!1936318 (= (and (= (regOne!39814 lt!2630817) (regOne!39814 lt!2630818)) (= (regTwo!39814 lt!2630817) (regTwo!39814 lt!2630818))) (= lambda!464611 lambda!464599))))

(declare-fun bs!1936319 () Bool)

(assert (= bs!1936319 (and b!7497415 b!7497363)))

(assert (=> bs!1936319 (= (and (= (regOne!39814 lt!2630817) (regOne!39814 lt!2630805)) (= (regTwo!39814 lt!2630817) (regTwo!39814 lt!2630805))) (= lambda!464611 lambda!464603))))

(assert (=> bs!1936316 (= (and (= (regOne!39814 lt!2630817) lt!2630813) (= (regTwo!39814 lt!2630817) rTail!78)) (= lambda!464611 lambda!464573))))

(declare-fun bs!1936321 () Bool)

(assert (= bs!1936321 (and b!7497415 b!7497393)))

(assert (=> bs!1936321 (= (and (= (regOne!39814 lt!2630817) (regOne!39814 lt!2630804)) (= (regTwo!39814 lt!2630817) (regTwo!39814 lt!2630804))) (= lambda!464611 lambda!464607))))

(declare-fun bs!1936323 () Bool)

(assert (= bs!1936323 (and b!7497415 b!7497360)))

(assert (=> bs!1936323 (not (= lambda!464611 lambda!464600))))

(declare-fun bs!1936324 () Bool)

(assert (= bs!1936324 (and b!7497415 b!7497299)))

(assert (=> bs!1936324 (not (= lambda!464611 lambda!464598))))

(assert (=> b!7497415 true))

(assert (=> b!7497415 true))

(declare-fun b!7497410 () Bool)

(declare-fun c!1384183 () Bool)

(assert (=> b!7497410 (= c!1384183 ((_ is Union!19651) lt!2630817))))

(declare-fun e!4470207 () Bool)

(declare-fun e!4470212 () Bool)

(assert (=> b!7497410 (= e!4470207 e!4470212)))

(declare-fun b!7497411 () Bool)

(declare-fun e!4470206 () Bool)

(assert (=> b!7497411 (= e!4470212 e!4470206)))

(declare-fun c!1384185 () Bool)

(assert (=> b!7497411 (= c!1384185 ((_ is Star!19651) lt!2630817))))

(declare-fun call!688251 () Bool)

(declare-fun bm!688246 () Bool)

(assert (=> bm!688246 (= call!688251 (Exists!4268 (ite c!1384185 lambda!464610 lambda!464611)))))

(declare-fun d!2301987 () Bool)

(declare-fun c!1384184 () Bool)

(assert (=> d!2301987 (= c!1384184 ((_ is EmptyExpr!19651) lt!2630817))))

(declare-fun e!4470209 () Bool)

(assert (=> d!2301987 (= (matchRSpec!4328 lt!2630817 s!13591) e!4470209)))

(declare-fun e!4470210 () Bool)

(assert (=> b!7497412 (= e!4470210 call!688251)))

(declare-fun b!7497413 () Bool)

(declare-fun e!4470211 () Bool)

(assert (=> b!7497413 (= e!4470211 (matchRSpec!4328 (regTwo!39815 lt!2630817) s!13591))))

(declare-fun b!7497414 () Bool)

(declare-fun e!4470208 () Bool)

(assert (=> b!7497414 (= e!4470209 e!4470208)))

(declare-fun res!3007583 () Bool)

(assert (=> b!7497414 (= res!3007583 (not ((_ is EmptyLang!19651) lt!2630817)))))

(assert (=> b!7497414 (=> (not res!3007583) (not e!4470208))))

(assert (=> b!7497415 (= e!4470206 call!688251)))

(declare-fun bm!688247 () Bool)

(declare-fun call!688252 () Bool)

(assert (=> bm!688247 (= call!688252 (isEmpty!41279 s!13591))))

(declare-fun b!7497416 () Bool)

(assert (=> b!7497416 (= e!4470209 call!688252)))

(declare-fun b!7497417 () Bool)

(assert (=> b!7497417 (= e!4470212 e!4470211)))

(declare-fun res!3007581 () Bool)

(assert (=> b!7497417 (= res!3007581 (matchRSpec!4328 (regOne!39815 lt!2630817) s!13591))))

(assert (=> b!7497417 (=> res!3007581 e!4470211)))

(declare-fun b!7497418 () Bool)

(declare-fun c!1384186 () Bool)

(assert (=> b!7497418 (= c!1384186 ((_ is ElementMatch!19651) lt!2630817))))

(assert (=> b!7497418 (= e!4470208 e!4470207)))

(declare-fun b!7497419 () Bool)

(assert (=> b!7497419 (= e!4470207 (= s!13591 (Cons!72241 (c!1384094 lt!2630817) Nil!72241)))))

(declare-fun b!7497420 () Bool)

(declare-fun res!3007582 () Bool)

(assert (=> b!7497420 (=> res!3007582 e!4470210)))

(assert (=> b!7497420 (= res!3007582 call!688252)))

(assert (=> b!7497420 (= e!4470206 e!4470210)))

(assert (= (and d!2301987 c!1384184) b!7497416))

(assert (= (and d!2301987 (not c!1384184)) b!7497414))

(assert (= (and b!7497414 res!3007583) b!7497418))

(assert (= (and b!7497418 c!1384186) b!7497419))

(assert (= (and b!7497418 (not c!1384186)) b!7497410))

(assert (= (and b!7497410 c!1384183) b!7497417))

(assert (= (and b!7497410 (not c!1384183)) b!7497411))

(assert (= (and b!7497417 (not res!3007581)) b!7497413))

(assert (= (and b!7497411 c!1384185) b!7497420))

(assert (= (and b!7497411 (not c!1384185)) b!7497415))

(assert (= (and b!7497420 (not res!3007582)) b!7497412))

(assert (= (or b!7497412 b!7497415) bm!688246))

(assert (= (or b!7497416 b!7497420) bm!688247))

(declare-fun m!8080724 () Bool)

(assert (=> bm!688246 m!8080724))

(declare-fun m!8080726 () Bool)

(assert (=> b!7497413 m!8080726))

(assert (=> bm!688247 m!8080650))

(declare-fun m!8080728 () Bool)

(assert (=> b!7497417 m!8080728))

(assert (=> b!7497006 d!2301987))

(declare-fun b!7497446 () Bool)

(declare-fun res!3007597 () Bool)

(declare-fun e!4470229 () Bool)

(assert (=> b!7497446 (=> res!3007597 e!4470229)))

(assert (=> b!7497446 (= res!3007597 (not (isEmpty!41279 (tail!14952 s!13591))))))

(declare-fun bm!688251 () Bool)

(declare-fun call!688256 () Bool)

(assert (=> bm!688251 (= call!688256 (isEmpty!41279 s!13591))))

(declare-fun b!7497447 () Bool)

(declare-fun res!3007596 () Bool)

(declare-fun e!4470233 () Bool)

(assert (=> b!7497447 (=> (not res!3007596) (not e!4470233))))

(assert (=> b!7497447 (= res!3007596 (not call!688256))))

(declare-fun b!7497448 () Bool)

(declare-fun e!4470231 () Bool)

(declare-fun e!4470230 () Bool)

(assert (=> b!7497448 (= e!4470231 e!4470230)))

(declare-fun res!3007600 () Bool)

(assert (=> b!7497448 (=> (not res!3007600) (not e!4470230))))

(declare-fun lt!2630876 () Bool)

(assert (=> b!7497448 (= res!3007600 (not lt!2630876))))

(declare-fun b!7497449 () Bool)

(declare-fun e!4470227 () Bool)

(assert (=> b!7497449 (= e!4470227 (not lt!2630876))))

(declare-fun b!7497450 () Bool)

(declare-fun e!4470228 () Bool)

(assert (=> b!7497450 (= e!4470228 (= lt!2630876 call!688256))))

(declare-fun d!2301993 () Bool)

(assert (=> d!2301993 e!4470228))

(declare-fun c!1384196 () Bool)

(assert (=> d!2301993 (= c!1384196 ((_ is EmptyExpr!19651) lt!2630804))))

(declare-fun e!4470232 () Bool)

(assert (=> d!2301993 (= lt!2630876 e!4470232)))

(declare-fun c!1384195 () Bool)

(assert (=> d!2301993 (= c!1384195 (isEmpty!41279 s!13591))))

(assert (=> d!2301993 (validRegex!10165 lt!2630804)))

(assert (=> d!2301993 (= (matchR!9413 lt!2630804 s!13591) lt!2630876)))

(declare-fun b!7497451 () Bool)

(assert (=> b!7497451 (= e!4470233 (= (head!15383 s!13591) (c!1384094 lt!2630804)))))

(declare-fun b!7497452 () Bool)

(assert (=> b!7497452 (= e!4470228 e!4470227)))

(declare-fun c!1384194 () Bool)

(assert (=> b!7497452 (= c!1384194 ((_ is EmptyLang!19651) lt!2630804))))

(declare-fun b!7497453 () Bool)

(declare-fun res!3007598 () Bool)

(assert (=> b!7497453 (=> res!3007598 e!4470231)))

(assert (=> b!7497453 (= res!3007598 (not ((_ is ElementMatch!19651) lt!2630804)))))

(assert (=> b!7497453 (= e!4470227 e!4470231)))

(declare-fun b!7497454 () Bool)

(declare-fun res!3007599 () Bool)

(assert (=> b!7497454 (=> res!3007599 e!4470231)))

(assert (=> b!7497454 (= res!3007599 e!4470233)))

(declare-fun res!3007602 () Bool)

(assert (=> b!7497454 (=> (not res!3007602) (not e!4470233))))

(assert (=> b!7497454 (= res!3007602 lt!2630876)))

(declare-fun b!7497455 () Bool)

(assert (=> b!7497455 (= e!4470232 (matchR!9413 (derivativeStep!5643 lt!2630804 (head!15383 s!13591)) (tail!14952 s!13591)))))

(declare-fun b!7497456 () Bool)

(assert (=> b!7497456 (= e!4470229 (not (= (head!15383 s!13591) (c!1384094 lt!2630804))))))

(declare-fun b!7497457 () Bool)

(declare-fun res!3007595 () Bool)

(assert (=> b!7497457 (=> (not res!3007595) (not e!4470233))))

(assert (=> b!7497457 (= res!3007595 (isEmpty!41279 (tail!14952 s!13591)))))

(declare-fun b!7497458 () Bool)

(assert (=> b!7497458 (= e!4470232 (nullable!8586 lt!2630804))))

(declare-fun b!7497459 () Bool)

(assert (=> b!7497459 (= e!4470230 e!4470229)))

(declare-fun res!3007601 () Bool)

(assert (=> b!7497459 (=> res!3007601 e!4470229)))

(assert (=> b!7497459 (= res!3007601 call!688256)))

(assert (= (and d!2301993 c!1384195) b!7497458))

(assert (= (and d!2301993 (not c!1384195)) b!7497455))

(assert (= (and d!2301993 c!1384196) b!7497450))

(assert (= (and d!2301993 (not c!1384196)) b!7497452))

(assert (= (and b!7497452 c!1384194) b!7497449))

(assert (= (and b!7497452 (not c!1384194)) b!7497453))

(assert (= (and b!7497453 (not res!3007598)) b!7497454))

(assert (= (and b!7497454 res!3007602) b!7497447))

(assert (= (and b!7497447 res!3007596) b!7497457))

(assert (= (and b!7497457 res!3007595) b!7497451))

(assert (= (and b!7497454 (not res!3007599)) b!7497448))

(assert (= (and b!7497448 res!3007600) b!7497459))

(assert (= (and b!7497459 (not res!3007601)) b!7497446))

(assert (= (and b!7497446 (not res!3007597)) b!7497456))

(assert (= (or b!7497450 b!7497447 b!7497459) bm!688251))

(assert (=> bm!688251 m!8080650))

(assert (=> b!7497456 m!8080654))

(declare-fun m!8080730 () Bool)

(assert (=> b!7497458 m!8080730))

(assert (=> b!7497455 m!8080654))

(assert (=> b!7497455 m!8080654))

(declare-fun m!8080732 () Bool)

(assert (=> b!7497455 m!8080732))

(assert (=> b!7497455 m!8080660))

(assert (=> b!7497455 m!8080732))

(assert (=> b!7497455 m!8080660))

(declare-fun m!8080734 () Bool)

(assert (=> b!7497455 m!8080734))

(assert (=> b!7497446 m!8080660))

(assert (=> b!7497446 m!8080660))

(assert (=> b!7497446 m!8080664))

(assert (=> b!7497451 m!8080654))

(assert (=> d!2301993 m!8080650))

(declare-fun m!8080736 () Bool)

(assert (=> d!2301993 m!8080736))

(assert (=> b!7497457 m!8080660))

(assert (=> b!7497457 m!8080660))

(assert (=> b!7497457 m!8080664))

(assert (=> b!7497006 d!2301993))

(declare-fun d!2301995 () Bool)

(assert (=> d!2301995 (= (matchR!9413 lt!2630804 s!13591) (matchRSpec!4328 lt!2630804 s!13591))))

(declare-fun lt!2630877 () Unit!166133)

(assert (=> d!2301995 (= lt!2630877 (choose!57958 lt!2630804 s!13591))))

(assert (=> d!2301995 (validRegex!10165 lt!2630804)))

(assert (=> d!2301995 (= (mainMatchTheorem!4322 lt!2630804 s!13591) lt!2630877)))

(declare-fun bs!1936333 () Bool)

(assert (= bs!1936333 d!2301995))

(assert (=> bs!1936333 m!8080430))

(assert (=> bs!1936333 m!8080426))

(declare-fun m!8080738 () Bool)

(assert (=> bs!1936333 m!8080738))

(assert (=> bs!1936333 m!8080736))

(assert (=> b!7497006 d!2301995))

(declare-fun b!7497460 () Bool)

(declare-fun res!3007605 () Bool)

(declare-fun e!4470236 () Bool)

(assert (=> b!7497460 (=> res!3007605 e!4470236)))

(assert (=> b!7497460 (= res!3007605 (not (isEmpty!41279 (tail!14952 s!13591))))))

(declare-fun bm!688252 () Bool)

(declare-fun call!688257 () Bool)

(assert (=> bm!688252 (= call!688257 (isEmpty!41279 s!13591))))

(declare-fun b!7497461 () Bool)

(declare-fun res!3007604 () Bool)

(declare-fun e!4470240 () Bool)

(assert (=> b!7497461 (=> (not res!3007604) (not e!4470240))))

(assert (=> b!7497461 (= res!3007604 (not call!688257))))

(declare-fun b!7497462 () Bool)

(declare-fun e!4470238 () Bool)

(declare-fun e!4470237 () Bool)

(assert (=> b!7497462 (= e!4470238 e!4470237)))

(declare-fun res!3007608 () Bool)

(assert (=> b!7497462 (=> (not res!3007608) (not e!4470237))))

(declare-fun lt!2630878 () Bool)

(assert (=> b!7497462 (= res!3007608 (not lt!2630878))))

(declare-fun b!7497463 () Bool)

(declare-fun e!4470234 () Bool)

(assert (=> b!7497463 (= e!4470234 (not lt!2630878))))

(declare-fun b!7497464 () Bool)

(declare-fun e!4470235 () Bool)

(assert (=> b!7497464 (= e!4470235 (= lt!2630878 call!688257))))

(declare-fun d!2301997 () Bool)

(assert (=> d!2301997 e!4470235))

(declare-fun c!1384199 () Bool)

(assert (=> d!2301997 (= c!1384199 ((_ is EmptyExpr!19651) lt!2630817))))

(declare-fun e!4470239 () Bool)

(assert (=> d!2301997 (= lt!2630878 e!4470239)))

(declare-fun c!1384198 () Bool)

(assert (=> d!2301997 (= c!1384198 (isEmpty!41279 s!13591))))

(assert (=> d!2301997 (validRegex!10165 lt!2630817)))

(assert (=> d!2301997 (= (matchR!9413 lt!2630817 s!13591) lt!2630878)))

(declare-fun b!7497465 () Bool)

(assert (=> b!7497465 (= e!4470240 (= (head!15383 s!13591) (c!1384094 lt!2630817)))))

(declare-fun b!7497466 () Bool)

(assert (=> b!7497466 (= e!4470235 e!4470234)))

(declare-fun c!1384197 () Bool)

(assert (=> b!7497466 (= c!1384197 ((_ is EmptyLang!19651) lt!2630817))))

(declare-fun b!7497467 () Bool)

(declare-fun res!3007606 () Bool)

(assert (=> b!7497467 (=> res!3007606 e!4470238)))

(assert (=> b!7497467 (= res!3007606 (not ((_ is ElementMatch!19651) lt!2630817)))))

(assert (=> b!7497467 (= e!4470234 e!4470238)))

(declare-fun b!7497468 () Bool)

(declare-fun res!3007607 () Bool)

(assert (=> b!7497468 (=> res!3007607 e!4470238)))

(assert (=> b!7497468 (= res!3007607 e!4470240)))

(declare-fun res!3007610 () Bool)

(assert (=> b!7497468 (=> (not res!3007610) (not e!4470240))))

(assert (=> b!7497468 (= res!3007610 lt!2630878)))

(declare-fun b!7497469 () Bool)

(assert (=> b!7497469 (= e!4470239 (matchR!9413 (derivativeStep!5643 lt!2630817 (head!15383 s!13591)) (tail!14952 s!13591)))))

(declare-fun b!7497470 () Bool)

(assert (=> b!7497470 (= e!4470236 (not (= (head!15383 s!13591) (c!1384094 lt!2630817))))))

(declare-fun b!7497471 () Bool)

(declare-fun res!3007603 () Bool)

(assert (=> b!7497471 (=> (not res!3007603) (not e!4470240))))

(assert (=> b!7497471 (= res!3007603 (isEmpty!41279 (tail!14952 s!13591)))))

(declare-fun b!7497472 () Bool)

(assert (=> b!7497472 (= e!4470239 (nullable!8586 lt!2630817))))

(declare-fun b!7497473 () Bool)

(assert (=> b!7497473 (= e!4470237 e!4470236)))

(declare-fun res!3007609 () Bool)

(assert (=> b!7497473 (=> res!3007609 e!4470236)))

(assert (=> b!7497473 (= res!3007609 call!688257)))

(assert (= (and d!2301997 c!1384198) b!7497472))

(assert (= (and d!2301997 (not c!1384198)) b!7497469))

(assert (= (and d!2301997 c!1384199) b!7497464))

(assert (= (and d!2301997 (not c!1384199)) b!7497466))

(assert (= (and b!7497466 c!1384197) b!7497463))

(assert (= (and b!7497466 (not c!1384197)) b!7497467))

(assert (= (and b!7497467 (not res!3007606)) b!7497468))

(assert (= (and b!7497468 res!3007610) b!7497461))

(assert (= (and b!7497461 res!3007604) b!7497471))

(assert (= (and b!7497471 res!3007603) b!7497465))

(assert (= (and b!7497468 (not res!3007607)) b!7497462))

(assert (= (and b!7497462 res!3007608) b!7497473))

(assert (= (and b!7497473 (not res!3007609)) b!7497460))

(assert (= (and b!7497460 (not res!3007605)) b!7497470))

(assert (= (or b!7497464 b!7497461 b!7497473) bm!688252))

(assert (=> bm!688252 m!8080650))

(assert (=> b!7497470 m!8080654))

(declare-fun m!8080740 () Bool)

(assert (=> b!7497472 m!8080740))

(assert (=> b!7497469 m!8080654))

(assert (=> b!7497469 m!8080654))

(declare-fun m!8080742 () Bool)

(assert (=> b!7497469 m!8080742))

(assert (=> b!7497469 m!8080660))

(assert (=> b!7497469 m!8080742))

(assert (=> b!7497469 m!8080660))

(declare-fun m!8080744 () Bool)

(assert (=> b!7497469 m!8080744))

(assert (=> b!7497460 m!8080660))

(assert (=> b!7497460 m!8080660))

(assert (=> b!7497460 m!8080664))

(assert (=> b!7497465 m!8080654))

(assert (=> d!2301997 m!8080650))

(assert (=> d!2301997 m!8080700))

(assert (=> b!7497471 m!8080660))

(assert (=> b!7497471 m!8080660))

(assert (=> b!7497471 m!8080664))

(assert (=> b!7497006 d!2301997))

(declare-fun b!7497474 () Bool)

(declare-fun e!4470244 () Option!17200)

(declare-fun e!4470243 () Option!17200)

(assert (=> b!7497474 (= e!4470244 e!4470243)))

(declare-fun c!1384201 () Bool)

(assert (=> b!7497474 (= c!1384201 ((_ is Nil!72241) s!13591))))

(declare-fun b!7497475 () Bool)

(declare-fun e!4470241 () Bool)

(declare-fun lt!2630880 () Option!17200)

(assert (=> b!7497475 (= e!4470241 (= (++!17257 (_1!37671 (get!25332 lt!2630880)) (_2!37671 (get!25332 lt!2630880))) s!13591))))

(declare-fun b!7497476 () Bool)

(declare-fun res!3007615 () Bool)

(assert (=> b!7497476 (=> (not res!3007615) (not e!4470241))))

(assert (=> b!7497476 (= res!3007615 (matchR!9413 rTail!78 (_2!37671 (get!25332 lt!2630880))))))

(declare-fun b!7497477 () Bool)

(assert (=> b!7497477 (= e!4470243 None!17199)))

(declare-fun b!7497478 () Bool)

(declare-fun e!4470245 () Bool)

(assert (=> b!7497478 (= e!4470245 (not (isDefined!13889 lt!2630880)))))

(declare-fun b!7497479 () Bool)

(declare-fun e!4470242 () Bool)

(assert (=> b!7497479 (= e!4470242 (matchR!9413 rTail!78 s!13591))))

(declare-fun b!7497480 () Bool)

(declare-fun res!3007614 () Bool)

(assert (=> b!7497480 (=> (not res!3007614) (not e!4470241))))

(assert (=> b!7497480 (= res!3007614 (matchR!9413 r1!5845 (_1!37671 (get!25332 lt!2630880))))))

(declare-fun d!2301999 () Bool)

(assert (=> d!2301999 e!4470245))

(declare-fun res!3007612 () Bool)

(assert (=> d!2301999 (=> res!3007612 e!4470245)))

(assert (=> d!2301999 (= res!3007612 e!4470241)))

(declare-fun res!3007613 () Bool)

(assert (=> d!2301999 (=> (not res!3007613) (not e!4470241))))

(assert (=> d!2301999 (= res!3007613 (isDefined!13889 lt!2630880))))

(assert (=> d!2301999 (= lt!2630880 e!4470244)))

(declare-fun c!1384200 () Bool)

(assert (=> d!2301999 (= c!1384200 e!4470242)))

(declare-fun res!3007611 () Bool)

(assert (=> d!2301999 (=> (not res!3007611) (not e!4470242))))

(assert (=> d!2301999 (= res!3007611 (matchR!9413 r1!5845 Nil!72241))))

(assert (=> d!2301999 (validRegex!10165 r1!5845)))

(assert (=> d!2301999 (= (findConcatSeparation!3322 r1!5845 rTail!78 Nil!72241 s!13591 s!13591) lt!2630880)))

(declare-fun b!7497481 () Bool)

(declare-fun lt!2630882 () Unit!166133)

(declare-fun lt!2630879 () Unit!166133)

(assert (=> b!7497481 (= lt!2630882 lt!2630879)))

(assert (=> b!7497481 (= (++!17257 (++!17257 Nil!72241 (Cons!72241 (h!78689 s!13591) Nil!72241)) (t!386934 s!13591)) s!13591)))

(assert (=> b!7497481 (= lt!2630879 (lemmaMoveElementToOtherListKeepsConcatEq!3131 Nil!72241 (h!78689 s!13591) (t!386934 s!13591) s!13591))))

(assert (=> b!7497481 (= e!4470243 (findConcatSeparation!3322 r1!5845 rTail!78 (++!17257 Nil!72241 (Cons!72241 (h!78689 s!13591) Nil!72241)) (t!386934 s!13591) s!13591))))

(declare-fun b!7497482 () Bool)

(assert (=> b!7497482 (= e!4470244 (Some!17199 (tuple2!68737 Nil!72241 s!13591)))))

(assert (= (and d!2301999 res!3007611) b!7497479))

(assert (= (and d!2301999 c!1384200) b!7497482))

(assert (= (and d!2301999 (not c!1384200)) b!7497474))

(assert (= (and b!7497474 c!1384201) b!7497477))

(assert (= (and b!7497474 (not c!1384201)) b!7497481))

(assert (= (and d!2301999 res!3007613) b!7497480))

(assert (= (and b!7497480 res!3007614) b!7497476))

(assert (= (and b!7497476 res!3007615) b!7497475))

(assert (= (and d!2301999 (not res!3007612)) b!7497478))

(declare-fun m!8080754 () Bool)

(assert (=> b!7497476 m!8080754))

(declare-fun m!8080756 () Bool)

(assert (=> b!7497476 m!8080756))

(assert (=> b!7497475 m!8080754))

(declare-fun m!8080760 () Bool)

(assert (=> b!7497475 m!8080760))

(assert (=> b!7497480 m!8080754))

(declare-fun m!8080764 () Bool)

(assert (=> b!7497480 m!8080764))

(declare-fun m!8080766 () Bool)

(assert (=> d!2301999 m!8080766))

(declare-fun m!8080768 () Bool)

(assert (=> d!2301999 m!8080768))

(assert (=> d!2301999 m!8080464))

(assert (=> b!7497478 m!8080766))

(assert (=> b!7497479 m!8080542))

(assert (=> b!7497481 m!8080544))

(assert (=> b!7497481 m!8080544))

(assert (=> b!7497481 m!8080546))

(assert (=> b!7497481 m!8080548))

(assert (=> b!7497481 m!8080544))

(declare-fun m!8080772 () Bool)

(assert (=> b!7497481 m!8080772))

(assert (=> b!7497005 d!2301999))

(declare-fun bs!1936338 () Bool)

(declare-fun d!2302007 () Bool)

(assert (= bs!1936338 (and d!2302007 b!7497005)))

(declare-fun lambda!464614 () Int)

(assert (=> bs!1936338 (= lambda!464614 lambda!464574)))

(declare-fun bs!1936339 () Bool)

(assert (= bs!1936339 (and d!2302007 b!7497412)))

(assert (=> bs!1936339 (not (= lambda!464614 lambda!464610))))

(assert (=> bs!1936338 (not (= lambda!464614 lambda!464575))))

(declare-fun bs!1936340 () Bool)

(assert (= bs!1936340 (and d!2302007 b!7497390)))

(assert (=> bs!1936340 (not (= lambda!464614 lambda!464606))))

(declare-fun bs!1936342 () Bool)

(assert (= bs!1936342 (and d!2302007 b!7496998)))

(assert (=> bs!1936342 (= (= r1!5845 lt!2630813) (= lambda!464614 lambda!464572))))

(declare-fun bs!1936343 () Bool)

(assert (= bs!1936343 (and d!2302007 d!2301945)))

(assert (=> bs!1936343 (= (= r1!5845 lt!2630813) (= lambda!464614 lambda!464589))))

(declare-fun bs!1936344 () Bool)

(assert (= bs!1936344 (and d!2302007 d!2301927)))

(assert (=> bs!1936344 (= (= r1!5845 lt!2630813) (= lambda!464614 lambda!464580))))

(declare-fun bs!1936345 () Bool)

(assert (= bs!1936345 (and d!2302007 b!7497302)))

(assert (=> bs!1936345 (not (= lambda!464614 lambda!464599))))

(declare-fun bs!1936346 () Bool)

(assert (= bs!1936346 (and d!2302007 b!7497363)))

(assert (=> bs!1936346 (not (= lambda!464614 lambda!464603))))

(assert (=> bs!1936342 (not (= lambda!464614 lambda!464573))))

(declare-fun bs!1936347 () Bool)

(assert (= bs!1936347 (and d!2302007 b!7497393)))

(assert (=> bs!1936347 (not (= lambda!464614 lambda!464607))))

(assert (=> bs!1936344 (not (= lambda!464614 lambda!464581))))

(declare-fun bs!1936348 () Bool)

(assert (= bs!1936348 (and d!2302007 b!7497415)))

(assert (=> bs!1936348 (not (= lambda!464614 lambda!464611))))

(declare-fun bs!1936349 () Bool)

(assert (= bs!1936349 (and d!2302007 b!7497360)))

(assert (=> bs!1936349 (not (= lambda!464614 lambda!464600))))

(declare-fun bs!1936350 () Bool)

(assert (= bs!1936350 (and d!2302007 b!7497299)))

(assert (=> bs!1936350 (not (= lambda!464614 lambda!464598))))

(assert (=> d!2302007 true))

(assert (=> d!2302007 true))

(assert (=> d!2302007 true))

(assert (=> d!2302007 (= (isDefined!13889 (findConcatSeparation!3322 r1!5845 rTail!78 Nil!72241 s!13591 s!13591)) (Exists!4268 lambda!464614))))

(declare-fun lt!2630885 () Unit!166133)

(assert (=> d!2302007 (= lt!2630885 (choose!57954 r1!5845 rTail!78 s!13591))))

(assert (=> d!2302007 (validRegex!10165 r1!5845)))

(assert (=> d!2302007 (= (lemmaFindConcatSeparationEquivalentToExists!3080 r1!5845 rTail!78 s!13591) lt!2630885)))

(declare-fun bs!1936351 () Bool)

(assert (= bs!1936351 d!2302007))

(assert (=> bs!1936351 m!8080464))

(assert (=> bs!1936351 m!8080418))

(declare-fun m!8080788 () Bool)

(assert (=> bs!1936351 m!8080788))

(assert (=> bs!1936351 m!8080418))

(declare-fun m!8080790 () Bool)

(assert (=> bs!1936351 m!8080790))

(declare-fun m!8080792 () Bool)

(assert (=> bs!1936351 m!8080792))

(assert (=> b!7497005 d!2302007))

(declare-fun d!2302015 () Bool)

(assert (=> d!2302015 (= (get!25332 lt!2630814) (v!54328 lt!2630814))))

(assert (=> b!7497005 d!2302015))

(declare-fun b!7497536 () Bool)

(declare-fun res!3007645 () Bool)

(declare-fun e!4470276 () Bool)

(assert (=> b!7497536 (=> res!3007645 e!4470276)))

(assert (=> b!7497536 (= res!3007645 (not (isEmpty!41279 (tail!14952 (_1!37671 lt!2630803)))))))

(declare-fun bm!688258 () Bool)

(declare-fun call!688263 () Bool)

(assert (=> bm!688258 (= call!688263 (isEmpty!41279 (_1!37671 lt!2630803)))))

(declare-fun b!7497537 () Bool)

(declare-fun res!3007644 () Bool)

(declare-fun e!4470280 () Bool)

(assert (=> b!7497537 (=> (not res!3007644) (not e!4470280))))

(assert (=> b!7497537 (= res!3007644 (not call!688263))))

(declare-fun b!7497538 () Bool)

(declare-fun e!4470278 () Bool)

(declare-fun e!4470277 () Bool)

(assert (=> b!7497538 (= e!4470278 e!4470277)))

(declare-fun res!3007648 () Bool)

(assert (=> b!7497538 (=> (not res!3007648) (not e!4470277))))

(declare-fun lt!2630888 () Bool)

(assert (=> b!7497538 (= res!3007648 (not lt!2630888))))

(declare-fun b!7497539 () Bool)

(declare-fun e!4470274 () Bool)

(assert (=> b!7497539 (= e!4470274 (not lt!2630888))))

(declare-fun b!7497540 () Bool)

(declare-fun e!4470275 () Bool)

(assert (=> b!7497540 (= e!4470275 (= lt!2630888 call!688263))))

(declare-fun d!2302017 () Bool)

(assert (=> d!2302017 e!4470275))

(declare-fun c!1384217 () Bool)

(assert (=> d!2302017 (= c!1384217 ((_ is EmptyExpr!19651) r1!5845))))

(declare-fun e!4470279 () Bool)

(assert (=> d!2302017 (= lt!2630888 e!4470279)))

(declare-fun c!1384216 () Bool)

(assert (=> d!2302017 (= c!1384216 (isEmpty!41279 (_1!37671 lt!2630803)))))

(assert (=> d!2302017 (validRegex!10165 r1!5845)))

(assert (=> d!2302017 (= (matchR!9413 r1!5845 (_1!37671 lt!2630803)) lt!2630888)))

(declare-fun b!7497541 () Bool)

(assert (=> b!7497541 (= e!4470280 (= (head!15383 (_1!37671 lt!2630803)) (c!1384094 r1!5845)))))

(declare-fun b!7497542 () Bool)

(assert (=> b!7497542 (= e!4470275 e!4470274)))

(declare-fun c!1384215 () Bool)

(assert (=> b!7497542 (= c!1384215 ((_ is EmptyLang!19651) r1!5845))))

(declare-fun b!7497543 () Bool)

(declare-fun res!3007646 () Bool)

(assert (=> b!7497543 (=> res!3007646 e!4470278)))

(assert (=> b!7497543 (= res!3007646 (not ((_ is ElementMatch!19651) r1!5845)))))

(assert (=> b!7497543 (= e!4470274 e!4470278)))

(declare-fun b!7497544 () Bool)

(declare-fun res!3007647 () Bool)

(assert (=> b!7497544 (=> res!3007647 e!4470278)))

(assert (=> b!7497544 (= res!3007647 e!4470280)))

(declare-fun res!3007650 () Bool)

(assert (=> b!7497544 (=> (not res!3007650) (not e!4470280))))

(assert (=> b!7497544 (= res!3007650 lt!2630888)))

(declare-fun b!7497545 () Bool)

(assert (=> b!7497545 (= e!4470279 (matchR!9413 (derivativeStep!5643 r1!5845 (head!15383 (_1!37671 lt!2630803))) (tail!14952 (_1!37671 lt!2630803))))))

(declare-fun b!7497546 () Bool)

(assert (=> b!7497546 (= e!4470276 (not (= (head!15383 (_1!37671 lt!2630803)) (c!1384094 r1!5845))))))

(declare-fun b!7497547 () Bool)

(declare-fun res!3007643 () Bool)

(assert (=> b!7497547 (=> (not res!3007643) (not e!4470280))))

(assert (=> b!7497547 (= res!3007643 (isEmpty!41279 (tail!14952 (_1!37671 lt!2630803))))))

(declare-fun b!7497548 () Bool)

(assert (=> b!7497548 (= e!4470279 (nullable!8586 r1!5845))))

(declare-fun b!7497549 () Bool)

(assert (=> b!7497549 (= e!4470277 e!4470276)))

(declare-fun res!3007649 () Bool)

(assert (=> b!7497549 (=> res!3007649 e!4470276)))

(assert (=> b!7497549 (= res!3007649 call!688263)))

(assert (= (and d!2302017 c!1384216) b!7497548))

(assert (= (and d!2302017 (not c!1384216)) b!7497545))

(assert (= (and d!2302017 c!1384217) b!7497540))

(assert (= (and d!2302017 (not c!1384217)) b!7497542))

(assert (= (and b!7497542 c!1384215) b!7497539))

(assert (= (and b!7497542 (not c!1384215)) b!7497543))

(assert (= (and b!7497543 (not res!3007646)) b!7497544))

(assert (= (and b!7497544 res!3007650) b!7497537))

(assert (= (and b!7497537 res!3007644) b!7497547))

(assert (= (and b!7497547 res!3007643) b!7497541))

(assert (= (and b!7497544 (not res!3007647)) b!7497538))

(assert (= (and b!7497538 res!3007648) b!7497549))

(assert (= (and b!7497549 (not res!3007649)) b!7497536))

(assert (= (and b!7497536 (not res!3007645)) b!7497546))

(assert (= (or b!7497540 b!7497537 b!7497549) bm!688258))

(declare-fun m!8080794 () Bool)

(assert (=> bm!688258 m!8080794))

(declare-fun m!8080796 () Bool)

(assert (=> b!7497546 m!8080796))

(declare-fun m!8080798 () Bool)

(assert (=> b!7497548 m!8080798))

(assert (=> b!7497545 m!8080796))

(assert (=> b!7497545 m!8080796))

(declare-fun m!8080800 () Bool)

(assert (=> b!7497545 m!8080800))

(declare-fun m!8080802 () Bool)

(assert (=> b!7497545 m!8080802))

(assert (=> b!7497545 m!8080800))

(assert (=> b!7497545 m!8080802))

(declare-fun m!8080804 () Bool)

(assert (=> b!7497545 m!8080804))

(assert (=> b!7497536 m!8080802))

(assert (=> b!7497536 m!8080802))

(declare-fun m!8080806 () Bool)

(assert (=> b!7497536 m!8080806))

(assert (=> b!7497541 m!8080796))

(assert (=> d!2302017 m!8080794))

(assert (=> d!2302017 m!8080464))

(assert (=> b!7497547 m!8080802))

(assert (=> b!7497547 m!8080802))

(assert (=> b!7497547 m!8080806))

(assert (=> b!7497005 d!2302017))

(declare-fun d!2302019 () Bool)

(assert (=> d!2302019 (= (Exists!4268 lambda!464574) (choose!57953 lambda!464574))))

(declare-fun bs!1936360 () Bool)

(assert (= bs!1936360 d!2302019))

(declare-fun m!8080808 () Bool)

(assert (=> bs!1936360 m!8080808))

(assert (=> b!7497005 d!2302019))

(declare-fun d!2302021 () Bool)

(assert (=> d!2302021 (= (Exists!4268 lambda!464575) (choose!57953 lambda!464575))))

(declare-fun bs!1936362 () Bool)

(assert (= bs!1936362 d!2302021))

(declare-fun m!8080810 () Bool)

(assert (=> bs!1936362 m!8080810))

(assert (=> b!7497005 d!2302021))

(declare-fun bs!1936368 () Bool)

(declare-fun d!2302023 () Bool)

(assert (= bs!1936368 (and d!2302023 b!7497005)))

(declare-fun lambda!464617 () Int)

(assert (=> bs!1936368 (= lambda!464617 lambda!464574)))

(declare-fun bs!1936370 () Bool)

(assert (= bs!1936370 (and d!2302023 b!7497412)))

(assert (=> bs!1936370 (not (= lambda!464617 lambda!464610))))

(assert (=> bs!1936368 (not (= lambda!464617 lambda!464575))))

(declare-fun bs!1936372 () Bool)

(assert (= bs!1936372 (and d!2302023 b!7497390)))

(assert (=> bs!1936372 (not (= lambda!464617 lambda!464606))))

(declare-fun bs!1936374 () Bool)

(assert (= bs!1936374 (and d!2302023 b!7496998)))

(assert (=> bs!1936374 (= (= r1!5845 lt!2630813) (= lambda!464617 lambda!464572))))

(declare-fun bs!1936375 () Bool)

(assert (= bs!1936375 (and d!2302023 d!2301945)))

(assert (=> bs!1936375 (= (= r1!5845 lt!2630813) (= lambda!464617 lambda!464589))))

(declare-fun bs!1936376 () Bool)

(assert (= bs!1936376 (and d!2302023 d!2301927)))

(assert (=> bs!1936376 (= (= r1!5845 lt!2630813) (= lambda!464617 lambda!464580))))

(declare-fun bs!1936377 () Bool)

(assert (= bs!1936377 (and d!2302023 b!7497302)))

(assert (=> bs!1936377 (not (= lambda!464617 lambda!464599))))

(declare-fun bs!1936378 () Bool)

(assert (= bs!1936378 (and d!2302023 b!7497363)))

(assert (=> bs!1936378 (not (= lambda!464617 lambda!464603))))

(assert (=> bs!1936374 (not (= lambda!464617 lambda!464573))))

(declare-fun bs!1936379 () Bool)

(assert (= bs!1936379 (and d!2302023 b!7497393)))

(assert (=> bs!1936379 (not (= lambda!464617 lambda!464607))))

(assert (=> bs!1936376 (not (= lambda!464617 lambda!464581))))

(declare-fun bs!1936380 () Bool)

(assert (= bs!1936380 (and d!2302023 b!7497415)))

(assert (=> bs!1936380 (not (= lambda!464617 lambda!464611))))

(declare-fun bs!1936382 () Bool)

(assert (= bs!1936382 (and d!2302023 b!7497360)))

(assert (=> bs!1936382 (not (= lambda!464617 lambda!464600))))

(declare-fun bs!1936383 () Bool)

(assert (= bs!1936383 (and d!2302023 d!2302007)))

(assert (=> bs!1936383 (= lambda!464617 lambda!464614)))

(declare-fun bs!1936384 () Bool)

(assert (= bs!1936384 (and d!2302023 b!7497299)))

(assert (=> bs!1936384 (not (= lambda!464617 lambda!464598))))

(assert (=> d!2302023 true))

(assert (=> d!2302023 true))

(assert (=> d!2302023 true))

(declare-fun lambda!464619 () Int)

(assert (=> bs!1936368 (not (= lambda!464619 lambda!464574))))

(assert (=> bs!1936370 (not (= lambda!464619 lambda!464610))))

(declare-fun bs!1936388 () Bool)

(assert (= bs!1936388 d!2302023))

(assert (=> bs!1936388 (not (= lambda!464619 lambda!464617))))

(assert (=> bs!1936368 (= lambda!464619 lambda!464575)))

(assert (=> bs!1936372 (not (= lambda!464619 lambda!464606))))

(assert (=> bs!1936374 (not (= lambda!464619 lambda!464572))))

(assert (=> bs!1936375 (not (= lambda!464619 lambda!464589))))

(assert (=> bs!1936376 (not (= lambda!464619 lambda!464580))))

(assert (=> bs!1936377 (= (and (= r1!5845 (regOne!39814 lt!2630818)) (= rTail!78 (regTwo!39814 lt!2630818))) (= lambda!464619 lambda!464599))))

(assert (=> bs!1936378 (= (and (= r1!5845 (regOne!39814 lt!2630805)) (= rTail!78 (regTwo!39814 lt!2630805))) (= lambda!464619 lambda!464603))))

(assert (=> bs!1936374 (= (= r1!5845 lt!2630813) (= lambda!464619 lambda!464573))))

(assert (=> bs!1936379 (= (and (= r1!5845 (regOne!39814 lt!2630804)) (= rTail!78 (regTwo!39814 lt!2630804))) (= lambda!464619 lambda!464607))))

(assert (=> bs!1936376 (= (= r1!5845 lt!2630813) (= lambda!464619 lambda!464581))))

(assert (=> bs!1936380 (= (and (= r1!5845 (regOne!39814 lt!2630817)) (= rTail!78 (regTwo!39814 lt!2630817))) (= lambda!464619 lambda!464611))))

(assert (=> bs!1936382 (not (= lambda!464619 lambda!464600))))

(assert (=> bs!1936383 (not (= lambda!464619 lambda!464614))))

(assert (=> bs!1936384 (not (= lambda!464619 lambda!464598))))

(assert (=> d!2302023 true))

(assert (=> d!2302023 true))

(assert (=> d!2302023 true))

(assert (=> d!2302023 (= (Exists!4268 lambda!464617) (Exists!4268 lambda!464619))))

(declare-fun lt!2630889 () Unit!166133)

(assert (=> d!2302023 (= lt!2630889 (choose!57952 r1!5845 rTail!78 s!13591))))

(assert (=> d!2302023 (validRegex!10165 r1!5845)))

(assert (=> d!2302023 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2592 r1!5845 rTail!78 s!13591) lt!2630889)))

(declare-fun m!8080820 () Bool)

(assert (=> bs!1936388 m!8080820))

(declare-fun m!8080822 () Bool)

(assert (=> bs!1936388 m!8080822))

(declare-fun m!8080824 () Bool)

(assert (=> bs!1936388 m!8080824))

(assert (=> bs!1936388 m!8080464))

(assert (=> b!7497005 d!2302023))

(declare-fun d!2302029 () Bool)

(assert (=> d!2302029 (= (isDefined!13889 lt!2630814) (not (isEmpty!41278 lt!2630814)))))

(declare-fun bs!1936398 () Bool)

(assert (= bs!1936398 d!2302029))

(declare-fun m!8080826 () Bool)

(assert (=> bs!1936398 m!8080826))

(assert (=> b!7497005 d!2302029))

(declare-fun b!7497561 () Bool)

(declare-fun res!3007656 () Bool)

(declare-fun e!4470290 () Bool)

(assert (=> b!7497561 (=> res!3007656 e!4470290)))

(assert (=> b!7497561 (= res!3007656 (not (isEmpty!41279 (tail!14952 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803))))))))

(declare-fun bm!688261 () Bool)

(declare-fun call!688266 () Bool)

(assert (=> bm!688261 (= call!688266 (isEmpty!41279 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803))))))

(declare-fun b!7497562 () Bool)

(declare-fun res!3007655 () Bool)

(declare-fun e!4470294 () Bool)

(assert (=> b!7497562 (=> (not res!3007655) (not e!4470294))))

(assert (=> b!7497562 (= res!3007655 (not call!688266))))

(declare-fun b!7497563 () Bool)

(declare-fun e!4470292 () Bool)

(declare-fun e!4470291 () Bool)

(assert (=> b!7497563 (= e!4470292 e!4470291)))

(declare-fun res!3007659 () Bool)

(assert (=> b!7497563 (=> (not res!3007659) (not e!4470291))))

(declare-fun lt!2630891 () Bool)

(assert (=> b!7497563 (= res!3007659 (not lt!2630891))))

(declare-fun b!7497564 () Bool)

(declare-fun e!4470288 () Bool)

(assert (=> b!7497564 (= e!4470288 (not lt!2630891))))

(declare-fun b!7497565 () Bool)

(declare-fun e!4470289 () Bool)

(assert (=> b!7497565 (= e!4470289 (= lt!2630891 call!688266))))

(declare-fun d!2302031 () Bool)

(assert (=> d!2302031 e!4470289))

(declare-fun c!1384224 () Bool)

(assert (=> d!2302031 (= c!1384224 ((_ is EmptyExpr!19651) lt!2630818))))

(declare-fun e!4470293 () Bool)

(assert (=> d!2302031 (= lt!2630891 e!4470293)))

(declare-fun c!1384223 () Bool)

(assert (=> d!2302031 (= c!1384223 (isEmpty!41279 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803))))))

(assert (=> d!2302031 (validRegex!10165 lt!2630818)))

(assert (=> d!2302031 (= (matchR!9413 lt!2630818 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803))) lt!2630891)))

(declare-fun b!7497566 () Bool)

(assert (=> b!7497566 (= e!4470294 (= (head!15383 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803))) (c!1384094 lt!2630818)))))

(declare-fun b!7497567 () Bool)

(assert (=> b!7497567 (= e!4470289 e!4470288)))

(declare-fun c!1384222 () Bool)

(assert (=> b!7497567 (= c!1384222 ((_ is EmptyLang!19651) lt!2630818))))

(declare-fun b!7497568 () Bool)

(declare-fun res!3007657 () Bool)

(assert (=> b!7497568 (=> res!3007657 e!4470292)))

(assert (=> b!7497568 (= res!3007657 (not ((_ is ElementMatch!19651) lt!2630818)))))

(assert (=> b!7497568 (= e!4470288 e!4470292)))

(declare-fun b!7497569 () Bool)

(declare-fun res!3007658 () Bool)

(assert (=> b!7497569 (=> res!3007658 e!4470292)))

(assert (=> b!7497569 (= res!3007658 e!4470294)))

(declare-fun res!3007661 () Bool)

(assert (=> b!7497569 (=> (not res!3007661) (not e!4470294))))

(assert (=> b!7497569 (= res!3007661 lt!2630891)))

(declare-fun b!7497570 () Bool)

(assert (=> b!7497570 (= e!4470293 (matchR!9413 (derivativeStep!5643 lt!2630818 (head!15383 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803)))) (tail!14952 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803)))))))

(declare-fun b!7497571 () Bool)

(assert (=> b!7497571 (= e!4470290 (not (= (head!15383 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803))) (c!1384094 lt!2630818))))))

(declare-fun b!7497572 () Bool)

(declare-fun res!3007654 () Bool)

(assert (=> b!7497572 (=> (not res!3007654) (not e!4470294))))

(assert (=> b!7497572 (= res!3007654 (isEmpty!41279 (tail!14952 (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803)))))))

(declare-fun b!7497573 () Bool)

(assert (=> b!7497573 (= e!4470293 (nullable!8586 lt!2630818))))

(declare-fun b!7497574 () Bool)

(assert (=> b!7497574 (= e!4470291 e!4470290)))

(declare-fun res!3007660 () Bool)

(assert (=> b!7497574 (=> res!3007660 e!4470290)))

(assert (=> b!7497574 (= res!3007660 call!688266)))

(assert (= (and d!2302031 c!1384223) b!7497573))

(assert (= (and d!2302031 (not c!1384223)) b!7497570))

(assert (= (and d!2302031 c!1384224) b!7497565))

(assert (= (and d!2302031 (not c!1384224)) b!7497567))

(assert (= (and b!7497567 c!1384222) b!7497564))

(assert (= (and b!7497567 (not c!1384222)) b!7497568))

(assert (= (and b!7497568 (not res!3007657)) b!7497569))

(assert (= (and b!7497569 res!3007661) b!7497562))

(assert (= (and b!7497562 res!3007655) b!7497572))

(assert (= (and b!7497572 res!3007654) b!7497566))

(assert (= (and b!7497569 (not res!3007658)) b!7497563))

(assert (= (and b!7497563 res!3007659) b!7497574))

(assert (= (and b!7497574 (not res!3007660)) b!7497561))

(assert (= (and b!7497561 (not res!3007656)) b!7497571))

(assert (= (or b!7497565 b!7497562 b!7497574) bm!688261))

(assert (=> bm!688261 m!8080466))

(declare-fun m!8080828 () Bool)

(assert (=> bm!688261 m!8080828))

(assert (=> b!7497571 m!8080466))

(declare-fun m!8080830 () Bool)

(assert (=> b!7497571 m!8080830))

(assert (=> b!7497573 m!8080656))

(assert (=> b!7497570 m!8080466))

(assert (=> b!7497570 m!8080830))

(assert (=> b!7497570 m!8080830))

(declare-fun m!8080832 () Bool)

(assert (=> b!7497570 m!8080832))

(assert (=> b!7497570 m!8080466))

(declare-fun m!8080834 () Bool)

(assert (=> b!7497570 m!8080834))

(assert (=> b!7497570 m!8080832))

(assert (=> b!7497570 m!8080834))

(declare-fun m!8080836 () Bool)

(assert (=> b!7497570 m!8080836))

(assert (=> b!7497561 m!8080466))

(assert (=> b!7497561 m!8080834))

(assert (=> b!7497561 m!8080834))

(declare-fun m!8080838 () Bool)

(assert (=> b!7497561 m!8080838))

(assert (=> b!7497566 m!8080466))

(assert (=> b!7497566 m!8080830))

(assert (=> d!2302031 m!8080466))

(assert (=> d!2302031 m!8080828))

(assert (=> d!2302031 m!8080666))

(assert (=> b!7497572 m!8080466))

(assert (=> b!7497572 m!8080834))

(assert (=> b!7497572 m!8080834))

(assert (=> b!7497572 m!8080838))

(assert (=> b!7497002 d!2302031))

(declare-fun b!7497625 () Bool)

(declare-fun e!4470321 () Bool)

(declare-fun lt!2630896 () List!72365)

(assert (=> b!7497625 (= e!4470321 (or (not (= (_2!37671 lt!2630803) Nil!72241)) (= lt!2630896 (_1!37671 lt!2630803))))))

(declare-fun b!7497623 () Bool)

(declare-fun e!4470320 () List!72365)

(assert (=> b!7497623 (= e!4470320 (Cons!72241 (h!78689 (_1!37671 lt!2630803)) (++!17257 (t!386934 (_1!37671 lt!2630803)) (_2!37671 lt!2630803))))))

(declare-fun b!7497624 () Bool)

(declare-fun res!3007685 () Bool)

(assert (=> b!7497624 (=> (not res!3007685) (not e!4470321))))

(declare-fun size!42202 (List!72365) Int)

(assert (=> b!7497624 (= res!3007685 (= (size!42202 lt!2630896) (+ (size!42202 (_1!37671 lt!2630803)) (size!42202 (_2!37671 lt!2630803)))))))

(declare-fun b!7497622 () Bool)

(assert (=> b!7497622 (= e!4470320 (_2!37671 lt!2630803))))

(declare-fun d!2302033 () Bool)

(assert (=> d!2302033 e!4470321))

(declare-fun res!3007686 () Bool)

(assert (=> d!2302033 (=> (not res!3007686) (not e!4470321))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15266 (List!72365) (InoxSet C!39576))

(assert (=> d!2302033 (= res!3007686 (= (content!15266 lt!2630896) ((_ map or) (content!15266 (_1!37671 lt!2630803)) (content!15266 (_2!37671 lt!2630803)))))))

(assert (=> d!2302033 (= lt!2630896 e!4470320)))

(declare-fun c!1384237 () Bool)

(assert (=> d!2302033 (= c!1384237 ((_ is Nil!72241) (_1!37671 lt!2630803)))))

(assert (=> d!2302033 (= (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803)) lt!2630896)))

(assert (= (and d!2302033 c!1384237) b!7497622))

(assert (= (and d!2302033 (not c!1384237)) b!7497623))

(assert (= (and d!2302033 res!3007686) b!7497624))

(assert (= (and b!7497624 res!3007685) b!7497625))

(declare-fun m!8080866 () Bool)

(assert (=> b!7497623 m!8080866))

(declare-fun m!8080868 () Bool)

(assert (=> b!7497624 m!8080868))

(declare-fun m!8080870 () Bool)

(assert (=> b!7497624 m!8080870))

(declare-fun m!8080872 () Bool)

(assert (=> b!7497624 m!8080872))

(declare-fun m!8080874 () Bool)

(assert (=> d!2302033 m!8080874))

(declare-fun m!8080876 () Bool)

(assert (=> d!2302033 m!8080876))

(declare-fun m!8080878 () Bool)

(assert (=> d!2302033 m!8080878))

(assert (=> b!7497002 d!2302033))

(declare-fun d!2302041 () Bool)

(assert (=> d!2302041 (matchR!9413 (Concat!28496 lt!2630813 rTail!78) (++!17257 (_1!37671 lt!2630803) (_2!37671 lt!2630803)))))

(declare-fun lt!2630899 () Unit!166133)

(declare-fun choose!57961 (Regex!19651 Regex!19651 List!72365 List!72365) Unit!166133)

(assert (=> d!2302041 (= lt!2630899 (choose!57961 lt!2630813 rTail!78 (_1!37671 lt!2630803) (_2!37671 lt!2630803)))))

(declare-fun e!4470331 () Bool)

(assert (=> d!2302041 e!4470331))

(declare-fun res!3007692 () Bool)

(assert (=> d!2302041 (=> (not res!3007692) (not e!4470331))))

(assert (=> d!2302041 (= res!3007692 (validRegex!10165 lt!2630813))))

(assert (=> d!2302041 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!408 lt!2630813 rTail!78 (_1!37671 lt!2630803) (_2!37671 lt!2630803)) lt!2630899)))

(declare-fun b!7497628 () Bool)

(assert (=> b!7497628 (= e!4470331 (validRegex!10165 rTail!78))))

(assert (= (and d!2302041 res!3007692) b!7497628))

(assert (=> d!2302041 m!8080466))

(assert (=> d!2302041 m!8080466))

(declare-fun m!8080886 () Bool)

(assert (=> d!2302041 m!8080886))

(declare-fun m!8080888 () Bool)

(assert (=> d!2302041 m!8080888))

(assert (=> d!2302041 m!8080496))

(assert (=> b!7497628 m!8080472))

(assert (=> b!7497002 d!2302041))

(declare-fun b!7497640 () Bool)

(declare-fun res!3007695 () Bool)

(declare-fun e!4470335 () Bool)

(assert (=> b!7497640 (=> (not res!3007695) (not e!4470335))))

(declare-fun call!688273 () Bool)

(assert (=> b!7497640 (= res!3007695 call!688273)))

(declare-fun e!4470336 () Bool)

(assert (=> b!7497640 (= e!4470336 e!4470335)))

(declare-fun bm!688268 () Bool)

(declare-fun c!1384242 () Bool)

(declare-fun call!688275 () Bool)

(declare-fun c!1384243 () Bool)

(assert (=> bm!688268 (= call!688275 (validRegex!10165 (ite c!1384242 (reg!19980 r2!5783) (ite c!1384243 (regOne!39815 r2!5783) (regOne!39814 r2!5783)))))))

(declare-fun bm!688269 () Bool)

(declare-fun call!688274 () Bool)

(assert (=> bm!688269 (= call!688274 (validRegex!10165 (ite c!1384243 (regTwo!39815 r2!5783) (regTwo!39814 r2!5783))))))

(declare-fun b!7497642 () Bool)

(declare-fun e!4470333 () Bool)

(declare-fun e!4470332 () Bool)

(assert (=> b!7497642 (= e!4470333 e!4470332)))

(assert (=> b!7497642 (= c!1384242 ((_ is Star!19651) r2!5783))))

(declare-fun b!7497643 () Bool)

(declare-fun e!4470334 () Bool)

(assert (=> b!7497643 (= e!4470332 e!4470334)))

(declare-fun res!3007697 () Bool)

(assert (=> b!7497643 (= res!3007697 (not (nullable!8586 (reg!19980 r2!5783))))))

(assert (=> b!7497643 (=> (not res!3007697) (not e!4470334))))

(declare-fun b!7497644 () Bool)

(declare-fun e!4470338 () Bool)

(declare-fun e!4470337 () Bool)

(assert (=> b!7497644 (= e!4470338 e!4470337)))

(declare-fun res!3007693 () Bool)

(assert (=> b!7497644 (=> (not res!3007693) (not e!4470337))))

(assert (=> b!7497644 (= res!3007693 call!688273)))

(declare-fun b!7497645 () Bool)

(assert (=> b!7497645 (= e!4470335 call!688274)))

(declare-fun b!7497646 () Bool)

(assert (=> b!7497646 (= e!4470334 call!688275)))

(declare-fun b!7497647 () Bool)

(assert (=> b!7497647 (= e!4470332 e!4470336)))

(assert (=> b!7497647 (= c!1384243 ((_ is Union!19651) r2!5783))))

(declare-fun bm!688270 () Bool)

(assert (=> bm!688270 (= call!688273 call!688275)))

(declare-fun b!7497648 () Bool)

(assert (=> b!7497648 (= e!4470337 call!688274)))

(declare-fun b!7497641 () Bool)

(declare-fun res!3007696 () Bool)

(assert (=> b!7497641 (=> res!3007696 e!4470338)))

(assert (=> b!7497641 (= res!3007696 (not ((_ is Concat!28496) r2!5783)))))

(assert (=> b!7497641 (= e!4470336 e!4470338)))

(declare-fun d!2302045 () Bool)

(declare-fun res!3007694 () Bool)

(assert (=> d!2302045 (=> res!3007694 e!4470333)))

(assert (=> d!2302045 (= res!3007694 ((_ is ElementMatch!19651) r2!5783))))

(assert (=> d!2302045 (= (validRegex!10165 r2!5783) e!4470333)))

(assert (= (and d!2302045 (not res!3007694)) b!7497642))

(assert (= (and b!7497642 c!1384242) b!7497643))

(assert (= (and b!7497642 (not c!1384242)) b!7497647))

(assert (= (and b!7497643 res!3007697) b!7497646))

(assert (= (and b!7497647 c!1384243) b!7497640))

(assert (= (and b!7497647 (not c!1384243)) b!7497641))

(assert (= (and b!7497640 res!3007695) b!7497645))

(assert (= (and b!7497641 (not res!3007696)) b!7497644))

(assert (= (and b!7497644 res!3007693) b!7497648))

(assert (= (or b!7497645 b!7497648) bm!688269))

(assert (= (or b!7497640 b!7497644) bm!688270))

(assert (= (or b!7497646 bm!688270) bm!688268))

(declare-fun m!8080890 () Bool)

(assert (=> bm!688268 m!8080890))

(declare-fun m!8080892 () Bool)

(assert (=> bm!688269 m!8080892))

(declare-fun m!8080894 () Bool)

(assert (=> b!7497643 m!8080894))

(assert (=> b!7496996 d!2302045))

(declare-fun bs!1936441 () Bool)

(declare-fun b!7497651 () Bool)

(assert (= bs!1936441 (and b!7497651 b!7497005)))

(declare-fun lambda!464624 () Int)

(assert (=> bs!1936441 (not (= lambda!464624 lambda!464574))))

(declare-fun bs!1936444 () Bool)

(assert (= bs!1936444 (and b!7497651 b!7497412)))

(assert (=> bs!1936444 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 r2!5783) (reg!19980 lt!2630817)) (= r2!5783 lt!2630817)) (= lambda!464624 lambda!464610))))

(declare-fun bs!1936446 () Bool)

(assert (= bs!1936446 (and b!7497651 d!2302023)))

(assert (=> bs!1936446 (not (= lambda!464624 lambda!464617))))

(assert (=> bs!1936446 (not (= lambda!464624 lambda!464619))))

(assert (=> bs!1936441 (not (= lambda!464624 lambda!464575))))

(declare-fun bs!1936450 () Bool)

(assert (= bs!1936450 (and b!7497651 b!7497390)))

(assert (=> bs!1936450 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 r2!5783) (reg!19980 lt!2630804)) (= r2!5783 lt!2630804)) (= lambda!464624 lambda!464606))))

(declare-fun bs!1936451 () Bool)

(assert (= bs!1936451 (and b!7497651 b!7496998)))

(assert (=> bs!1936451 (not (= lambda!464624 lambda!464572))))

(declare-fun bs!1936452 () Bool)

(assert (= bs!1936452 (and b!7497651 d!2301945)))

(assert (=> bs!1936452 (not (= lambda!464624 lambda!464589))))

(declare-fun bs!1936453 () Bool)

(assert (= bs!1936453 (and b!7497651 d!2301927)))

(assert (=> bs!1936453 (not (= lambda!464624 lambda!464580))))

(declare-fun bs!1936454 () Bool)

(assert (= bs!1936454 (and b!7497651 b!7497302)))

(assert (=> bs!1936454 (not (= lambda!464624 lambda!464599))))

(declare-fun bs!1936455 () Bool)

(assert (= bs!1936455 (and b!7497651 b!7497363)))

(assert (=> bs!1936455 (not (= lambda!464624 lambda!464603))))

(assert (=> bs!1936451 (not (= lambda!464624 lambda!464573))))

(declare-fun bs!1936458 () Bool)

(assert (= bs!1936458 (and b!7497651 b!7497393)))

(assert (=> bs!1936458 (not (= lambda!464624 lambda!464607))))

(assert (=> bs!1936453 (not (= lambda!464624 lambda!464581))))

(declare-fun bs!1936461 () Bool)

(assert (= bs!1936461 (and b!7497651 b!7497415)))

(assert (=> bs!1936461 (not (= lambda!464624 lambda!464611))))

(declare-fun bs!1936463 () Bool)

(assert (= bs!1936463 (and b!7497651 b!7497360)))

(assert (=> bs!1936463 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 r2!5783) (reg!19980 lt!2630805)) (= r2!5783 lt!2630805)) (= lambda!464624 lambda!464600))))

(declare-fun bs!1936465 () Bool)

(assert (= bs!1936465 (and b!7497651 d!2302007)))

(assert (=> bs!1936465 (not (= lambda!464624 lambda!464614))))

(declare-fun bs!1936466 () Bool)

(assert (= bs!1936466 (and b!7497651 b!7497299)))

(assert (=> bs!1936466 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 r2!5783) (reg!19980 lt!2630818)) (= r2!5783 lt!2630818)) (= lambda!464624 lambda!464598))))

(assert (=> b!7497651 true))

(assert (=> b!7497651 true))

(declare-fun bs!1936472 () Bool)

(declare-fun b!7497654 () Bool)

(assert (= bs!1936472 (and b!7497654 b!7497005)))

(declare-fun lambda!464626 () Int)

(assert (=> bs!1936472 (not (= lambda!464626 lambda!464574))))

(declare-fun bs!1936474 () Bool)

(assert (= bs!1936474 (and b!7497654 b!7497412)))

(assert (=> bs!1936474 (not (= lambda!464626 lambda!464610))))

(declare-fun bs!1936476 () Bool)

(assert (= bs!1936476 (and b!7497654 d!2302023)))

(assert (=> bs!1936476 (not (= lambda!464626 lambda!464617))))

(assert (=> bs!1936476 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r2!5783) r1!5845) (= (regTwo!39814 r2!5783) rTail!78)) (= lambda!464626 lambda!464619))))

(assert (=> bs!1936472 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r2!5783) r1!5845) (= (regTwo!39814 r2!5783) rTail!78)) (= lambda!464626 lambda!464575))))

(declare-fun bs!1936479 () Bool)

(assert (= bs!1936479 (and b!7497654 b!7497390)))

(assert (=> bs!1936479 (not (= lambda!464626 lambda!464606))))

(declare-fun bs!1936480 () Bool)

(assert (= bs!1936480 (and b!7497654 d!2301945)))

(assert (=> bs!1936480 (not (= lambda!464626 lambda!464589))))

(declare-fun bs!1936481 () Bool)

(assert (= bs!1936481 (and b!7497654 d!2301927)))

(assert (=> bs!1936481 (not (= lambda!464626 lambda!464580))))

(declare-fun bs!1936482 () Bool)

(assert (= bs!1936482 (and b!7497654 b!7497302)))

(assert (=> bs!1936482 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r2!5783) (regOne!39814 lt!2630818)) (= (regTwo!39814 r2!5783) (regTwo!39814 lt!2630818))) (= lambda!464626 lambda!464599))))

(declare-fun bs!1936483 () Bool)

(assert (= bs!1936483 (and b!7497654 b!7497363)))

(assert (=> bs!1936483 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r2!5783) (regOne!39814 lt!2630805)) (= (regTwo!39814 r2!5783) (regTwo!39814 lt!2630805))) (= lambda!464626 lambda!464603))))

(declare-fun bs!1936484 () Bool)

(assert (= bs!1936484 (and b!7497654 b!7496998)))

(assert (=> bs!1936484 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r2!5783) lt!2630813) (= (regTwo!39814 r2!5783) rTail!78)) (= lambda!464626 lambda!464573))))

(declare-fun bs!1936485 () Bool)

(assert (= bs!1936485 (and b!7497654 b!7497393)))

(assert (=> bs!1936485 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r2!5783) (regOne!39814 lt!2630804)) (= (regTwo!39814 r2!5783) (regTwo!39814 lt!2630804))) (= lambda!464626 lambda!464607))))

(assert (=> bs!1936481 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r2!5783) lt!2630813) (= (regTwo!39814 r2!5783) rTail!78)) (= lambda!464626 lambda!464581))))

(declare-fun bs!1936488 () Bool)

(assert (= bs!1936488 (and b!7497654 b!7497415)))

(assert (=> bs!1936488 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r2!5783) (regOne!39814 lt!2630817)) (= (regTwo!39814 r2!5783) (regTwo!39814 lt!2630817))) (= lambda!464626 lambda!464611))))

(declare-fun bs!1936489 () Bool)

(assert (= bs!1936489 (and b!7497654 b!7497360)))

(assert (=> bs!1936489 (not (= lambda!464626 lambda!464600))))

(declare-fun bs!1936490 () Bool)

(assert (= bs!1936490 (and b!7497654 d!2302007)))

(assert (=> bs!1936490 (not (= lambda!464626 lambda!464614))))

(declare-fun bs!1936491 () Bool)

(assert (= bs!1936491 (and b!7497654 b!7497299)))

(assert (=> bs!1936491 (not (= lambda!464626 lambda!464598))))

(assert (=> bs!1936484 (not (= lambda!464626 lambda!464572))))

(declare-fun bs!1936492 () Bool)

(assert (= bs!1936492 (and b!7497654 b!7497651)))

(assert (=> bs!1936492 (not (= lambda!464626 lambda!464624))))

(assert (=> b!7497654 true))

(assert (=> b!7497654 true))

(declare-fun b!7497649 () Bool)

(declare-fun c!1384244 () Bool)

(assert (=> b!7497649 (= c!1384244 ((_ is Union!19651) r2!5783))))

(declare-fun e!4470340 () Bool)

(declare-fun e!4470345 () Bool)

(assert (=> b!7497649 (= e!4470340 e!4470345)))

(declare-fun b!7497650 () Bool)

(declare-fun e!4470339 () Bool)

(assert (=> b!7497650 (= e!4470345 e!4470339)))

(declare-fun c!1384246 () Bool)

(assert (=> b!7497650 (= c!1384246 ((_ is Star!19651) r2!5783))))

(declare-fun call!688276 () Bool)

(declare-fun bm!688271 () Bool)

(assert (=> bm!688271 (= call!688276 (Exists!4268 (ite c!1384246 lambda!464624 lambda!464626)))))

(declare-fun d!2302047 () Bool)

(declare-fun c!1384245 () Bool)

(assert (=> d!2302047 (= c!1384245 ((_ is EmptyExpr!19651) r2!5783))))

(declare-fun e!4470342 () Bool)

(assert (=> d!2302047 (= (matchRSpec!4328 r2!5783 (_1!37671 lt!2630803)) e!4470342)))

(declare-fun e!4470343 () Bool)

(assert (=> b!7497651 (= e!4470343 call!688276)))

(declare-fun b!7497652 () Bool)

(declare-fun e!4470344 () Bool)

(assert (=> b!7497652 (= e!4470344 (matchRSpec!4328 (regTwo!39815 r2!5783) (_1!37671 lt!2630803)))))

(declare-fun b!7497653 () Bool)

(declare-fun e!4470341 () Bool)

(assert (=> b!7497653 (= e!4470342 e!4470341)))

(declare-fun res!3007700 () Bool)

(assert (=> b!7497653 (= res!3007700 (not ((_ is EmptyLang!19651) r2!5783)))))

(assert (=> b!7497653 (=> (not res!3007700) (not e!4470341))))

(assert (=> b!7497654 (= e!4470339 call!688276)))

(declare-fun bm!688272 () Bool)

(declare-fun call!688277 () Bool)

(assert (=> bm!688272 (= call!688277 (isEmpty!41279 (_1!37671 lt!2630803)))))

(declare-fun b!7497655 () Bool)

(assert (=> b!7497655 (= e!4470342 call!688277)))

(declare-fun b!7497656 () Bool)

(assert (=> b!7497656 (= e!4470345 e!4470344)))

(declare-fun res!3007698 () Bool)

(assert (=> b!7497656 (= res!3007698 (matchRSpec!4328 (regOne!39815 r2!5783) (_1!37671 lt!2630803)))))

(assert (=> b!7497656 (=> res!3007698 e!4470344)))

(declare-fun b!7497657 () Bool)

(declare-fun c!1384247 () Bool)

(assert (=> b!7497657 (= c!1384247 ((_ is ElementMatch!19651) r2!5783))))

(assert (=> b!7497657 (= e!4470341 e!4470340)))

(declare-fun b!7497658 () Bool)

(assert (=> b!7497658 (= e!4470340 (= (_1!37671 lt!2630803) (Cons!72241 (c!1384094 r2!5783) Nil!72241)))))

(declare-fun b!7497659 () Bool)

(declare-fun res!3007699 () Bool)

(assert (=> b!7497659 (=> res!3007699 e!4470343)))

(assert (=> b!7497659 (= res!3007699 call!688277)))

(assert (=> b!7497659 (= e!4470339 e!4470343)))

(assert (= (and d!2302047 c!1384245) b!7497655))

(assert (= (and d!2302047 (not c!1384245)) b!7497653))

(assert (= (and b!7497653 res!3007700) b!7497657))

(assert (= (and b!7497657 c!1384247) b!7497658))

(assert (= (and b!7497657 (not c!1384247)) b!7497649))

(assert (= (and b!7497649 c!1384244) b!7497656))

(assert (= (and b!7497649 (not c!1384244)) b!7497650))

(assert (= (and b!7497656 (not res!3007698)) b!7497652))

(assert (= (and b!7497650 c!1384246) b!7497659))

(assert (= (and b!7497650 (not c!1384246)) b!7497654))

(assert (= (and b!7497659 (not res!3007699)) b!7497651))

(assert (= (or b!7497651 b!7497654) bm!688271))

(assert (= (or b!7497655 b!7497659) bm!688272))

(declare-fun m!8080906 () Bool)

(assert (=> bm!688271 m!8080906))

(declare-fun m!8080908 () Bool)

(assert (=> b!7497652 m!8080908))

(assert (=> bm!688272 m!8080794))

(declare-fun m!8080910 () Bool)

(assert (=> b!7497656 m!8080910))

(assert (=> b!7497012 d!2302047))

(declare-fun d!2302055 () Bool)

(assert (=> d!2302055 (= (matchR!9413 r1!5845 (_1!37671 lt!2630803)) (matchRSpec!4328 r1!5845 (_1!37671 lt!2630803)))))

(declare-fun lt!2630902 () Unit!166133)

(assert (=> d!2302055 (= lt!2630902 (choose!57958 r1!5845 (_1!37671 lt!2630803)))))

(assert (=> d!2302055 (validRegex!10165 r1!5845)))

(assert (=> d!2302055 (= (mainMatchTheorem!4322 r1!5845 (_1!37671 lt!2630803)) lt!2630902)))

(declare-fun bs!1936499 () Bool)

(assert (= bs!1936499 d!2302055))

(assert (=> bs!1936499 m!8080412))

(assert (=> bs!1936499 m!8080452))

(declare-fun m!8080912 () Bool)

(assert (=> bs!1936499 m!8080912))

(assert (=> bs!1936499 m!8080464))

(assert (=> b!7497012 d!2302055))

(declare-fun d!2302057 () Bool)

(assert (=> d!2302057 (= (matchR!9413 lt!2630813 (_1!37671 lt!2630803)) (matchRSpec!4328 lt!2630813 (_1!37671 lt!2630803)))))

(declare-fun lt!2630903 () Unit!166133)

(assert (=> d!2302057 (= lt!2630903 (choose!57958 lt!2630813 (_1!37671 lt!2630803)))))

(assert (=> d!2302057 (validRegex!10165 lt!2630813)))

(assert (=> d!2302057 (= (mainMatchTheorem!4322 lt!2630813 (_1!37671 lt!2630803)) lt!2630903)))

(declare-fun bs!1936501 () Bool)

(assert (= bs!1936501 d!2302057))

(assert (=> bs!1936501 m!8080460))

(assert (=> bs!1936501 m!8080456))

(declare-fun m!8080914 () Bool)

(assert (=> bs!1936501 m!8080914))

(assert (=> bs!1936501 m!8080496))

(assert (=> b!7497012 d!2302057))

(declare-fun d!2302059 () Bool)

(assert (=> d!2302059 (= (matchR!9413 r2!5783 (_1!37671 lt!2630803)) (matchRSpec!4328 r2!5783 (_1!37671 lt!2630803)))))

(declare-fun lt!2630904 () Unit!166133)

(assert (=> d!2302059 (= lt!2630904 (choose!57958 r2!5783 (_1!37671 lt!2630803)))))

(assert (=> d!2302059 (validRegex!10165 r2!5783)))

(assert (=> d!2302059 (= (mainMatchTheorem!4322 r2!5783 (_1!37671 lt!2630803)) lt!2630904)))

(declare-fun bs!1936504 () Bool)

(assert (= bs!1936504 d!2302059))

(assert (=> bs!1936504 m!8080458))

(assert (=> bs!1936504 m!8080448))

(declare-fun m!8080916 () Bool)

(assert (=> bs!1936504 m!8080916))

(assert (=> bs!1936504 m!8080474))

(assert (=> b!7497012 d!2302059))

(declare-fun b!7497671 () Bool)

(declare-fun res!3007706 () Bool)

(declare-fun e!4470355 () Bool)

(assert (=> b!7497671 (=> res!3007706 e!4470355)))

(assert (=> b!7497671 (= res!3007706 (not (isEmpty!41279 (tail!14952 (_1!37671 lt!2630803)))))))

(declare-fun bm!688275 () Bool)

(declare-fun call!688280 () Bool)

(assert (=> bm!688275 (= call!688280 (isEmpty!41279 (_1!37671 lt!2630803)))))

(declare-fun b!7497672 () Bool)

(declare-fun res!3007705 () Bool)

(declare-fun e!4470359 () Bool)

(assert (=> b!7497672 (=> (not res!3007705) (not e!4470359))))

(assert (=> b!7497672 (= res!3007705 (not call!688280))))

(declare-fun b!7497673 () Bool)

(declare-fun e!4470357 () Bool)

(declare-fun e!4470356 () Bool)

(assert (=> b!7497673 (= e!4470357 e!4470356)))

(declare-fun res!3007709 () Bool)

(assert (=> b!7497673 (=> (not res!3007709) (not e!4470356))))

(declare-fun lt!2630905 () Bool)

(assert (=> b!7497673 (= res!3007709 (not lt!2630905))))

(declare-fun b!7497674 () Bool)

(declare-fun e!4470353 () Bool)

(assert (=> b!7497674 (= e!4470353 (not lt!2630905))))

(declare-fun b!7497675 () Bool)

(declare-fun e!4470354 () Bool)

(assert (=> b!7497675 (= e!4470354 (= lt!2630905 call!688280))))

(declare-fun d!2302061 () Bool)

(assert (=> d!2302061 e!4470354))

(declare-fun c!1384254 () Bool)

(assert (=> d!2302061 (= c!1384254 ((_ is EmptyExpr!19651) lt!2630813))))

(declare-fun e!4470358 () Bool)

(assert (=> d!2302061 (= lt!2630905 e!4470358)))

(declare-fun c!1384253 () Bool)

(assert (=> d!2302061 (= c!1384253 (isEmpty!41279 (_1!37671 lt!2630803)))))

(assert (=> d!2302061 (validRegex!10165 lt!2630813)))

(assert (=> d!2302061 (= (matchR!9413 lt!2630813 (_1!37671 lt!2630803)) lt!2630905)))

(declare-fun b!7497676 () Bool)

(assert (=> b!7497676 (= e!4470359 (= (head!15383 (_1!37671 lt!2630803)) (c!1384094 lt!2630813)))))

(declare-fun b!7497677 () Bool)

(assert (=> b!7497677 (= e!4470354 e!4470353)))

(declare-fun c!1384252 () Bool)

(assert (=> b!7497677 (= c!1384252 ((_ is EmptyLang!19651) lt!2630813))))

(declare-fun b!7497678 () Bool)

(declare-fun res!3007707 () Bool)

(assert (=> b!7497678 (=> res!3007707 e!4470357)))

(assert (=> b!7497678 (= res!3007707 (not ((_ is ElementMatch!19651) lt!2630813)))))

(assert (=> b!7497678 (= e!4470353 e!4470357)))

(declare-fun b!7497679 () Bool)

(declare-fun res!3007708 () Bool)

(assert (=> b!7497679 (=> res!3007708 e!4470357)))

(assert (=> b!7497679 (= res!3007708 e!4470359)))

(declare-fun res!3007711 () Bool)

(assert (=> b!7497679 (=> (not res!3007711) (not e!4470359))))

(assert (=> b!7497679 (= res!3007711 lt!2630905)))

(declare-fun b!7497680 () Bool)

(assert (=> b!7497680 (= e!4470358 (matchR!9413 (derivativeStep!5643 lt!2630813 (head!15383 (_1!37671 lt!2630803))) (tail!14952 (_1!37671 lt!2630803))))))

(declare-fun b!7497681 () Bool)

(assert (=> b!7497681 (= e!4470355 (not (= (head!15383 (_1!37671 lt!2630803)) (c!1384094 lt!2630813))))))

(declare-fun b!7497682 () Bool)

(declare-fun res!3007704 () Bool)

(assert (=> b!7497682 (=> (not res!3007704) (not e!4470359))))

(assert (=> b!7497682 (= res!3007704 (isEmpty!41279 (tail!14952 (_1!37671 lt!2630803))))))

(declare-fun b!7497683 () Bool)

(assert (=> b!7497683 (= e!4470358 (nullable!8586 lt!2630813))))

(declare-fun b!7497684 () Bool)

(assert (=> b!7497684 (= e!4470356 e!4470355)))

(declare-fun res!3007710 () Bool)

(assert (=> b!7497684 (=> res!3007710 e!4470355)))

(assert (=> b!7497684 (= res!3007710 call!688280)))

(assert (= (and d!2302061 c!1384253) b!7497683))

(assert (= (and d!2302061 (not c!1384253)) b!7497680))

(assert (= (and d!2302061 c!1384254) b!7497675))

(assert (= (and d!2302061 (not c!1384254)) b!7497677))

(assert (= (and b!7497677 c!1384252) b!7497674))

(assert (= (and b!7497677 (not c!1384252)) b!7497678))

(assert (= (and b!7497678 (not res!3007707)) b!7497679))

(assert (= (and b!7497679 res!3007711) b!7497672))

(assert (= (and b!7497672 res!3007705) b!7497682))

(assert (= (and b!7497682 res!3007704) b!7497676))

(assert (= (and b!7497679 (not res!3007708)) b!7497673))

(assert (= (and b!7497673 res!3007709) b!7497684))

(assert (= (and b!7497684 (not res!3007710)) b!7497671))

(assert (= (and b!7497671 (not res!3007706)) b!7497681))

(assert (= (or b!7497675 b!7497672 b!7497684) bm!688275))

(assert (=> bm!688275 m!8080794))

(assert (=> b!7497681 m!8080796))

(declare-fun m!8080918 () Bool)

(assert (=> b!7497683 m!8080918))

(assert (=> b!7497680 m!8080796))

(assert (=> b!7497680 m!8080796))

(declare-fun m!8080920 () Bool)

(assert (=> b!7497680 m!8080920))

(assert (=> b!7497680 m!8080802))

(assert (=> b!7497680 m!8080920))

(assert (=> b!7497680 m!8080802))

(declare-fun m!8080922 () Bool)

(assert (=> b!7497680 m!8080922))

(assert (=> b!7497671 m!8080802))

(assert (=> b!7497671 m!8080802))

(assert (=> b!7497671 m!8080806))

(assert (=> b!7497676 m!8080796))

(assert (=> d!2302061 m!8080794))

(assert (=> d!2302061 m!8080496))

(assert (=> b!7497682 m!8080802))

(assert (=> b!7497682 m!8080802))

(assert (=> b!7497682 m!8080806))

(assert (=> b!7497012 d!2302061))

(declare-fun bs!1936516 () Bool)

(declare-fun b!7497687 () Bool)

(assert (= bs!1936516 (and b!7497687 b!7497005)))

(declare-fun lambda!464629 () Int)

(assert (=> bs!1936516 (not (= lambda!464629 lambda!464574))))

(declare-fun bs!1936518 () Bool)

(assert (= bs!1936518 (and b!7497687 b!7497412)))

(assert (=> bs!1936518 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 lt!2630813) (reg!19980 lt!2630817)) (= lt!2630813 lt!2630817)) (= lambda!464629 lambda!464610))))

(declare-fun bs!1936520 () Bool)

(assert (= bs!1936520 (and b!7497687 d!2302023)))

(assert (=> bs!1936520 (not (= lambda!464629 lambda!464617))))

(assert (=> bs!1936520 (not (= lambda!464629 lambda!464619))))

(assert (=> bs!1936516 (not (= lambda!464629 lambda!464575))))

(declare-fun bs!1936523 () Bool)

(assert (= bs!1936523 (and b!7497687 b!7497390)))

(assert (=> bs!1936523 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 lt!2630813) (reg!19980 lt!2630804)) (= lt!2630813 lt!2630804)) (= lambda!464629 lambda!464606))))

(declare-fun bs!1936525 () Bool)

(assert (= bs!1936525 (and b!7497687 d!2301945)))

(assert (=> bs!1936525 (not (= lambda!464629 lambda!464589))))

(declare-fun bs!1936527 () Bool)

(assert (= bs!1936527 (and b!7497687 d!2301927)))

(assert (=> bs!1936527 (not (= lambda!464629 lambda!464580))))

(declare-fun bs!1936528 () Bool)

(assert (= bs!1936528 (and b!7497687 b!7497302)))

(assert (=> bs!1936528 (not (= lambda!464629 lambda!464599))))

(declare-fun bs!1936530 () Bool)

(assert (= bs!1936530 (and b!7497687 b!7497654)))

(assert (=> bs!1936530 (not (= lambda!464629 lambda!464626))))

(declare-fun bs!1936531 () Bool)

(assert (= bs!1936531 (and b!7497687 b!7497363)))

(assert (=> bs!1936531 (not (= lambda!464629 lambda!464603))))

(declare-fun bs!1936533 () Bool)

(assert (= bs!1936533 (and b!7497687 b!7496998)))

(assert (=> bs!1936533 (not (= lambda!464629 lambda!464573))))

(declare-fun bs!1936535 () Bool)

(assert (= bs!1936535 (and b!7497687 b!7497393)))

(assert (=> bs!1936535 (not (= lambda!464629 lambda!464607))))

(assert (=> bs!1936527 (not (= lambda!464629 lambda!464581))))

(declare-fun bs!1936538 () Bool)

(assert (= bs!1936538 (and b!7497687 b!7497415)))

(assert (=> bs!1936538 (not (= lambda!464629 lambda!464611))))

(declare-fun bs!1936540 () Bool)

(assert (= bs!1936540 (and b!7497687 b!7497360)))

(assert (=> bs!1936540 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 lt!2630813) (reg!19980 lt!2630805)) (= lt!2630813 lt!2630805)) (= lambda!464629 lambda!464600))))

(declare-fun bs!1936542 () Bool)

(assert (= bs!1936542 (and b!7497687 d!2302007)))

(assert (=> bs!1936542 (not (= lambda!464629 lambda!464614))))

(declare-fun bs!1936543 () Bool)

(assert (= bs!1936543 (and b!7497687 b!7497299)))

(assert (=> bs!1936543 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 lt!2630813) (reg!19980 lt!2630818)) (= lt!2630813 lt!2630818)) (= lambda!464629 lambda!464598))))

(assert (=> bs!1936533 (not (= lambda!464629 lambda!464572))))

(declare-fun bs!1936544 () Bool)

(assert (= bs!1936544 (and b!7497687 b!7497651)))

(assert (=> bs!1936544 (= (and (= (reg!19980 lt!2630813) (reg!19980 r2!5783)) (= lt!2630813 r2!5783)) (= lambda!464629 lambda!464624))))

(assert (=> b!7497687 true))

(assert (=> b!7497687 true))

(declare-fun bs!1936546 () Bool)

(declare-fun b!7497690 () Bool)

(assert (= bs!1936546 (and b!7497690 b!7497005)))

(declare-fun lambda!464630 () Int)

(assert (=> bs!1936546 (not (= lambda!464630 lambda!464574))))

(declare-fun bs!1936547 () Bool)

(assert (= bs!1936547 (and b!7497690 b!7497412)))

(assert (=> bs!1936547 (not (= lambda!464630 lambda!464610))))

(declare-fun bs!1936548 () Bool)

(assert (= bs!1936548 (and b!7497690 d!2302023)))

(assert (=> bs!1936548 (not (= lambda!464630 lambda!464617))))

(assert (=> bs!1936548 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 lt!2630813) r1!5845) (= (regTwo!39814 lt!2630813) rTail!78)) (= lambda!464630 lambda!464619))))

(assert (=> bs!1936546 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 lt!2630813) r1!5845) (= (regTwo!39814 lt!2630813) rTail!78)) (= lambda!464630 lambda!464575))))

(declare-fun bs!1936549 () Bool)

(assert (= bs!1936549 (and b!7497690 b!7497390)))

(assert (=> bs!1936549 (not (= lambda!464630 lambda!464606))))

(declare-fun bs!1936550 () Bool)

(assert (= bs!1936550 (and b!7497690 d!2301945)))

(assert (=> bs!1936550 (not (= lambda!464630 lambda!464589))))

(declare-fun bs!1936551 () Bool)

(assert (= bs!1936551 (and b!7497690 b!7497302)))

(assert (=> bs!1936551 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 lt!2630813) (regOne!39814 lt!2630818)) (= (regTwo!39814 lt!2630813) (regTwo!39814 lt!2630818))) (= lambda!464630 lambda!464599))))

(declare-fun bs!1936552 () Bool)

(assert (= bs!1936552 (and b!7497690 b!7497654)))

(assert (=> bs!1936552 (= (and (= (regOne!39814 lt!2630813) (regOne!39814 r2!5783)) (= (regTwo!39814 lt!2630813) (regTwo!39814 r2!5783))) (= lambda!464630 lambda!464626))))

(declare-fun bs!1936553 () Bool)

(assert (= bs!1936553 (and b!7497690 b!7497363)))

(assert (=> bs!1936553 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 lt!2630813) (regOne!39814 lt!2630805)) (= (regTwo!39814 lt!2630813) (regTwo!39814 lt!2630805))) (= lambda!464630 lambda!464603))))

(declare-fun bs!1936554 () Bool)

(assert (= bs!1936554 (and b!7497690 b!7496998)))

(assert (=> bs!1936554 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 lt!2630813) lt!2630813) (= (regTwo!39814 lt!2630813) rTail!78)) (= lambda!464630 lambda!464573))))

(declare-fun bs!1936555 () Bool)

(assert (= bs!1936555 (and b!7497690 b!7497393)))

(assert (=> bs!1936555 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 lt!2630813) (regOne!39814 lt!2630804)) (= (regTwo!39814 lt!2630813) (regTwo!39814 lt!2630804))) (= lambda!464630 lambda!464607))))

(declare-fun bs!1936556 () Bool)

(assert (= bs!1936556 (and b!7497690 d!2301927)))

(assert (=> bs!1936556 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 lt!2630813) lt!2630813) (= (regTwo!39814 lt!2630813) rTail!78)) (= lambda!464630 lambda!464581))))

(declare-fun bs!1936557 () Bool)

(assert (= bs!1936557 (and b!7497690 b!7497415)))

(assert (=> bs!1936557 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 lt!2630813) (regOne!39814 lt!2630817)) (= (regTwo!39814 lt!2630813) (regTwo!39814 lt!2630817))) (= lambda!464630 lambda!464611))))

(declare-fun bs!1936558 () Bool)

(assert (= bs!1936558 (and b!7497690 b!7497360)))

(assert (=> bs!1936558 (not (= lambda!464630 lambda!464600))))

(declare-fun bs!1936559 () Bool)

(assert (= bs!1936559 (and b!7497690 d!2302007)))

(assert (=> bs!1936559 (not (= lambda!464630 lambda!464614))))

(declare-fun bs!1936560 () Bool)

(assert (= bs!1936560 (and b!7497690 b!7497299)))

(assert (=> bs!1936560 (not (= lambda!464630 lambda!464598))))

(assert (=> bs!1936554 (not (= lambda!464630 lambda!464572))))

(declare-fun bs!1936561 () Bool)

(assert (= bs!1936561 (and b!7497690 b!7497651)))

(assert (=> bs!1936561 (not (= lambda!464630 lambda!464624))))

(declare-fun bs!1936562 () Bool)

(assert (= bs!1936562 (and b!7497690 b!7497687)))

(assert (=> bs!1936562 (not (= lambda!464630 lambda!464629))))

(assert (=> bs!1936556 (not (= lambda!464630 lambda!464580))))

(assert (=> b!7497690 true))

(assert (=> b!7497690 true))

(declare-fun b!7497685 () Bool)

(declare-fun c!1384255 () Bool)

(assert (=> b!7497685 (= c!1384255 ((_ is Union!19651) lt!2630813))))

(declare-fun e!4470361 () Bool)

(declare-fun e!4470366 () Bool)

(assert (=> b!7497685 (= e!4470361 e!4470366)))

(declare-fun b!7497686 () Bool)

(declare-fun e!4470360 () Bool)

(assert (=> b!7497686 (= e!4470366 e!4470360)))

(declare-fun c!1384257 () Bool)

(assert (=> b!7497686 (= c!1384257 ((_ is Star!19651) lt!2630813))))

(declare-fun call!688281 () Bool)

(declare-fun bm!688276 () Bool)

(assert (=> bm!688276 (= call!688281 (Exists!4268 (ite c!1384257 lambda!464629 lambda!464630)))))

(declare-fun d!2302063 () Bool)

(declare-fun c!1384256 () Bool)

(assert (=> d!2302063 (= c!1384256 ((_ is EmptyExpr!19651) lt!2630813))))

(declare-fun e!4470363 () Bool)

(assert (=> d!2302063 (= (matchRSpec!4328 lt!2630813 (_1!37671 lt!2630803)) e!4470363)))

(declare-fun e!4470364 () Bool)

(assert (=> b!7497687 (= e!4470364 call!688281)))

(declare-fun b!7497688 () Bool)

(declare-fun e!4470365 () Bool)

(assert (=> b!7497688 (= e!4470365 (matchRSpec!4328 (regTwo!39815 lt!2630813) (_1!37671 lt!2630803)))))

(declare-fun b!7497689 () Bool)

(declare-fun e!4470362 () Bool)

(assert (=> b!7497689 (= e!4470363 e!4470362)))

(declare-fun res!3007714 () Bool)

(assert (=> b!7497689 (= res!3007714 (not ((_ is EmptyLang!19651) lt!2630813)))))

(assert (=> b!7497689 (=> (not res!3007714) (not e!4470362))))

(assert (=> b!7497690 (= e!4470360 call!688281)))

(declare-fun bm!688277 () Bool)

(declare-fun call!688282 () Bool)

(assert (=> bm!688277 (= call!688282 (isEmpty!41279 (_1!37671 lt!2630803)))))

(declare-fun b!7497691 () Bool)

(assert (=> b!7497691 (= e!4470363 call!688282)))

(declare-fun b!7497692 () Bool)

(assert (=> b!7497692 (= e!4470366 e!4470365)))

(declare-fun res!3007712 () Bool)

(assert (=> b!7497692 (= res!3007712 (matchRSpec!4328 (regOne!39815 lt!2630813) (_1!37671 lt!2630803)))))

(assert (=> b!7497692 (=> res!3007712 e!4470365)))

(declare-fun b!7497693 () Bool)

(declare-fun c!1384258 () Bool)

(assert (=> b!7497693 (= c!1384258 ((_ is ElementMatch!19651) lt!2630813))))

(assert (=> b!7497693 (= e!4470362 e!4470361)))

(declare-fun b!7497694 () Bool)

(assert (=> b!7497694 (= e!4470361 (= (_1!37671 lt!2630803) (Cons!72241 (c!1384094 lt!2630813) Nil!72241)))))

(declare-fun b!7497695 () Bool)

(declare-fun res!3007713 () Bool)

(assert (=> b!7497695 (=> res!3007713 e!4470364)))

(assert (=> b!7497695 (= res!3007713 call!688282)))

(assert (=> b!7497695 (= e!4470360 e!4470364)))

(assert (= (and d!2302063 c!1384256) b!7497691))

(assert (= (and d!2302063 (not c!1384256)) b!7497689))

(assert (= (and b!7497689 res!3007714) b!7497693))

(assert (= (and b!7497693 c!1384258) b!7497694))

(assert (= (and b!7497693 (not c!1384258)) b!7497685))

(assert (= (and b!7497685 c!1384255) b!7497692))

(assert (= (and b!7497685 (not c!1384255)) b!7497686))

(assert (= (and b!7497692 (not res!3007712)) b!7497688))

(assert (= (and b!7497686 c!1384257) b!7497695))

(assert (= (and b!7497686 (not c!1384257)) b!7497690))

(assert (= (and b!7497695 (not res!3007713)) b!7497687))

(assert (= (or b!7497687 b!7497690) bm!688276))

(assert (= (or b!7497691 b!7497695) bm!688277))

(declare-fun m!8080952 () Bool)

(assert (=> bm!688276 m!8080952))

(declare-fun m!8080954 () Bool)

(assert (=> b!7497688 m!8080954))

(assert (=> bm!688277 m!8080794))

(declare-fun m!8080956 () Bool)

(assert (=> b!7497692 m!8080956))

(assert (=> b!7497012 d!2302063))

(declare-fun b!7497714 () Bool)

(declare-fun res!3007727 () Bool)

(declare-fun e!4470381 () Bool)

(assert (=> b!7497714 (=> res!3007727 e!4470381)))

(assert (=> b!7497714 (= res!3007727 (not (isEmpty!41279 (tail!14952 (_1!37671 lt!2630803)))))))

(declare-fun bm!688281 () Bool)

(declare-fun call!688286 () Bool)

(assert (=> bm!688281 (= call!688286 (isEmpty!41279 (_1!37671 lt!2630803)))))

(declare-fun b!7497715 () Bool)

(declare-fun res!3007726 () Bool)

(declare-fun e!4470385 () Bool)

(assert (=> b!7497715 (=> (not res!3007726) (not e!4470385))))

(assert (=> b!7497715 (= res!3007726 (not call!688286))))

(declare-fun b!7497716 () Bool)

(declare-fun e!4470383 () Bool)

(declare-fun e!4470382 () Bool)

(assert (=> b!7497716 (= e!4470383 e!4470382)))

(declare-fun res!3007730 () Bool)

(assert (=> b!7497716 (=> (not res!3007730) (not e!4470382))))

(declare-fun lt!2630911 () Bool)

(assert (=> b!7497716 (= res!3007730 (not lt!2630911))))

(declare-fun b!7497717 () Bool)

(declare-fun e!4470379 () Bool)

(assert (=> b!7497717 (= e!4470379 (not lt!2630911))))

(declare-fun b!7497718 () Bool)

(declare-fun e!4470380 () Bool)

(assert (=> b!7497718 (= e!4470380 (= lt!2630911 call!688286))))

(declare-fun d!2302073 () Bool)

(assert (=> d!2302073 e!4470380))

(declare-fun c!1384265 () Bool)

(assert (=> d!2302073 (= c!1384265 ((_ is EmptyExpr!19651) r2!5783))))

(declare-fun e!4470384 () Bool)

(assert (=> d!2302073 (= lt!2630911 e!4470384)))

(declare-fun c!1384264 () Bool)

(assert (=> d!2302073 (= c!1384264 (isEmpty!41279 (_1!37671 lt!2630803)))))

(assert (=> d!2302073 (validRegex!10165 r2!5783)))

(assert (=> d!2302073 (= (matchR!9413 r2!5783 (_1!37671 lt!2630803)) lt!2630911)))

(declare-fun b!7497719 () Bool)

(assert (=> b!7497719 (= e!4470385 (= (head!15383 (_1!37671 lt!2630803)) (c!1384094 r2!5783)))))

(declare-fun b!7497720 () Bool)

(assert (=> b!7497720 (= e!4470380 e!4470379)))

(declare-fun c!1384263 () Bool)

(assert (=> b!7497720 (= c!1384263 ((_ is EmptyLang!19651) r2!5783))))

(declare-fun b!7497721 () Bool)

(declare-fun res!3007728 () Bool)

(assert (=> b!7497721 (=> res!3007728 e!4470383)))

(assert (=> b!7497721 (= res!3007728 (not ((_ is ElementMatch!19651) r2!5783)))))

(assert (=> b!7497721 (= e!4470379 e!4470383)))

(declare-fun b!7497722 () Bool)

(declare-fun res!3007729 () Bool)

(assert (=> b!7497722 (=> res!3007729 e!4470383)))

(assert (=> b!7497722 (= res!3007729 e!4470385)))

(declare-fun res!3007732 () Bool)

(assert (=> b!7497722 (=> (not res!3007732) (not e!4470385))))

(assert (=> b!7497722 (= res!3007732 lt!2630911)))

(declare-fun b!7497723 () Bool)

(assert (=> b!7497723 (= e!4470384 (matchR!9413 (derivativeStep!5643 r2!5783 (head!15383 (_1!37671 lt!2630803))) (tail!14952 (_1!37671 lt!2630803))))))

(declare-fun b!7497724 () Bool)

(assert (=> b!7497724 (= e!4470381 (not (= (head!15383 (_1!37671 lt!2630803)) (c!1384094 r2!5783))))))

(declare-fun b!7497725 () Bool)

(declare-fun res!3007725 () Bool)

(assert (=> b!7497725 (=> (not res!3007725) (not e!4470385))))

(assert (=> b!7497725 (= res!3007725 (isEmpty!41279 (tail!14952 (_1!37671 lt!2630803))))))

(declare-fun b!7497726 () Bool)

(assert (=> b!7497726 (= e!4470384 (nullable!8586 r2!5783))))

(declare-fun b!7497727 () Bool)

(assert (=> b!7497727 (= e!4470382 e!4470381)))

(declare-fun res!3007731 () Bool)

(assert (=> b!7497727 (=> res!3007731 e!4470381)))

(assert (=> b!7497727 (= res!3007731 call!688286)))

(assert (= (and d!2302073 c!1384264) b!7497726))

(assert (= (and d!2302073 (not c!1384264)) b!7497723))

(assert (= (and d!2302073 c!1384265) b!7497718))

(assert (= (and d!2302073 (not c!1384265)) b!7497720))

(assert (= (and b!7497720 c!1384263) b!7497717))

(assert (= (and b!7497720 (not c!1384263)) b!7497721))

(assert (= (and b!7497721 (not res!3007728)) b!7497722))

(assert (= (and b!7497722 res!3007732) b!7497715))

(assert (= (and b!7497715 res!3007726) b!7497725))

(assert (= (and b!7497725 res!3007725) b!7497719))

(assert (= (and b!7497722 (not res!3007729)) b!7497716))

(assert (= (and b!7497716 res!3007730) b!7497727))

(assert (= (and b!7497727 (not res!3007731)) b!7497714))

(assert (= (and b!7497714 (not res!3007727)) b!7497724))

(assert (= (or b!7497718 b!7497715 b!7497727) bm!688281))

(assert (=> bm!688281 m!8080794))

(assert (=> b!7497724 m!8080796))

(declare-fun m!8080958 () Bool)

(assert (=> b!7497726 m!8080958))

(assert (=> b!7497723 m!8080796))

(assert (=> b!7497723 m!8080796))

(declare-fun m!8080960 () Bool)

(assert (=> b!7497723 m!8080960))

(assert (=> b!7497723 m!8080802))

(assert (=> b!7497723 m!8080960))

(assert (=> b!7497723 m!8080802))

(declare-fun m!8080962 () Bool)

(assert (=> b!7497723 m!8080962))

(assert (=> b!7497714 m!8080802))

(assert (=> b!7497714 m!8080802))

(assert (=> b!7497714 m!8080806))

(assert (=> b!7497719 m!8080796))

(assert (=> d!2302073 m!8080794))

(assert (=> d!2302073 m!8080474))

(assert (=> b!7497725 m!8080802))

(assert (=> b!7497725 m!8080802))

(assert (=> b!7497725 m!8080806))

(assert (=> b!7497012 d!2302073))

(declare-fun bs!1936577 () Bool)

(declare-fun b!7497730 () Bool)

(assert (= bs!1936577 (and b!7497730 b!7497005)))

(declare-fun lambda!464632 () Int)

(assert (=> bs!1936577 (not (= lambda!464632 lambda!464574))))

(declare-fun bs!1936580 () Bool)

(assert (= bs!1936580 (and b!7497730 d!2302023)))

(assert (=> bs!1936580 (not (= lambda!464632 lambda!464617))))

(assert (=> bs!1936580 (not (= lambda!464632 lambda!464619))))

(assert (=> bs!1936577 (not (= lambda!464632 lambda!464575))))

(declare-fun bs!1936583 () Bool)

(assert (= bs!1936583 (and b!7497730 b!7497390)))

(assert (=> bs!1936583 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 r1!5845) (reg!19980 lt!2630804)) (= r1!5845 lt!2630804)) (= lambda!464632 lambda!464606))))

(declare-fun bs!1936584 () Bool)

(assert (= bs!1936584 (and b!7497730 d!2301945)))

(assert (=> bs!1936584 (not (= lambda!464632 lambda!464589))))

(declare-fun bs!1936585 () Bool)

(assert (= bs!1936585 (and b!7497730 b!7497302)))

(assert (=> bs!1936585 (not (= lambda!464632 lambda!464599))))

(declare-fun bs!1936587 () Bool)

(assert (= bs!1936587 (and b!7497730 b!7497654)))

(assert (=> bs!1936587 (not (= lambda!464632 lambda!464626))))

(declare-fun bs!1936588 () Bool)

(assert (= bs!1936588 (and b!7497730 b!7497363)))

(assert (=> bs!1936588 (not (= lambda!464632 lambda!464603))))

(declare-fun bs!1936590 () Bool)

(assert (= bs!1936590 (and b!7497730 b!7496998)))

(assert (=> bs!1936590 (not (= lambda!464632 lambda!464573))))

(declare-fun bs!1936592 () Bool)

(assert (= bs!1936592 (and b!7497730 b!7497393)))

(assert (=> bs!1936592 (not (= lambda!464632 lambda!464607))))

(declare-fun bs!1936593 () Bool)

(assert (= bs!1936593 (and b!7497730 b!7497690)))

(assert (=> bs!1936593 (not (= lambda!464632 lambda!464630))))

(declare-fun bs!1936594 () Bool)

(assert (= bs!1936594 (and b!7497730 b!7497412)))

(assert (=> bs!1936594 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 r1!5845) (reg!19980 lt!2630817)) (= r1!5845 lt!2630817)) (= lambda!464632 lambda!464610))))

(declare-fun bs!1936595 () Bool)

(assert (= bs!1936595 (and b!7497730 d!2301927)))

(assert (=> bs!1936595 (not (= lambda!464632 lambda!464581))))

(declare-fun bs!1936596 () Bool)

(assert (= bs!1936596 (and b!7497730 b!7497415)))

(assert (=> bs!1936596 (not (= lambda!464632 lambda!464611))))

(declare-fun bs!1936597 () Bool)

(assert (= bs!1936597 (and b!7497730 b!7497360)))

(assert (=> bs!1936597 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 r1!5845) (reg!19980 lt!2630805)) (= r1!5845 lt!2630805)) (= lambda!464632 lambda!464600))))

(declare-fun bs!1936598 () Bool)

(assert (= bs!1936598 (and b!7497730 d!2302007)))

(assert (=> bs!1936598 (not (= lambda!464632 lambda!464614))))

(declare-fun bs!1936600 () Bool)

(assert (= bs!1936600 (and b!7497730 b!7497299)))

(assert (=> bs!1936600 (= (and (= (_1!37671 lt!2630803) s!13591) (= (reg!19980 r1!5845) (reg!19980 lt!2630818)) (= r1!5845 lt!2630818)) (= lambda!464632 lambda!464598))))

(assert (=> bs!1936590 (not (= lambda!464632 lambda!464572))))

(declare-fun bs!1936601 () Bool)

(assert (= bs!1936601 (and b!7497730 b!7497651)))

(assert (=> bs!1936601 (= (and (= (reg!19980 r1!5845) (reg!19980 r2!5783)) (= r1!5845 r2!5783)) (= lambda!464632 lambda!464624))))

(declare-fun bs!1936602 () Bool)

(assert (= bs!1936602 (and b!7497730 b!7497687)))

(assert (=> bs!1936602 (= (and (= (reg!19980 r1!5845) (reg!19980 lt!2630813)) (= r1!5845 lt!2630813)) (= lambda!464632 lambda!464629))))

(assert (=> bs!1936595 (not (= lambda!464632 lambda!464580))))

(assert (=> b!7497730 true))

(assert (=> b!7497730 true))

(declare-fun bs!1936603 () Bool)

(declare-fun b!7497733 () Bool)

(assert (= bs!1936603 (and b!7497733 b!7497005)))

(declare-fun lambda!464633 () Int)

(assert (=> bs!1936603 (not (= lambda!464633 lambda!464574))))

(declare-fun bs!1936604 () Bool)

(assert (= bs!1936604 (and b!7497733 d!2302023)))

(assert (=> bs!1936604 (not (= lambda!464633 lambda!464617))))

(assert (=> bs!1936604 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r1!5845) r1!5845) (= (regTwo!39814 r1!5845) rTail!78)) (= lambda!464633 lambda!464619))))

(assert (=> bs!1936603 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r1!5845) r1!5845) (= (regTwo!39814 r1!5845) rTail!78)) (= lambda!464633 lambda!464575))))

(declare-fun bs!1936605 () Bool)

(assert (= bs!1936605 (and b!7497733 b!7497390)))

(assert (=> bs!1936605 (not (= lambda!464633 lambda!464606))))

(declare-fun bs!1936607 () Bool)

(assert (= bs!1936607 (and b!7497733 b!7497730)))

(assert (=> bs!1936607 (not (= lambda!464633 lambda!464632))))

(declare-fun bs!1936610 () Bool)

(assert (= bs!1936610 (and b!7497733 d!2301945)))

(assert (=> bs!1936610 (not (= lambda!464633 lambda!464589))))

(declare-fun bs!1936612 () Bool)

(assert (= bs!1936612 (and b!7497733 b!7497302)))

(assert (=> bs!1936612 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r1!5845) (regOne!39814 lt!2630818)) (= (regTwo!39814 r1!5845) (regTwo!39814 lt!2630818))) (= lambda!464633 lambda!464599))))

(declare-fun bs!1936614 () Bool)

(assert (= bs!1936614 (and b!7497733 b!7497654)))

(assert (=> bs!1936614 (= (and (= (regOne!39814 r1!5845) (regOne!39814 r2!5783)) (= (regTwo!39814 r1!5845) (regTwo!39814 r2!5783))) (= lambda!464633 lambda!464626))))

(declare-fun bs!1936615 () Bool)

(assert (= bs!1936615 (and b!7497733 b!7497363)))

(assert (=> bs!1936615 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r1!5845) (regOne!39814 lt!2630805)) (= (regTwo!39814 r1!5845) (regTwo!39814 lt!2630805))) (= lambda!464633 lambda!464603))))

(declare-fun bs!1936617 () Bool)

(assert (= bs!1936617 (and b!7497733 b!7496998)))

(assert (=> bs!1936617 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r1!5845) lt!2630813) (= (regTwo!39814 r1!5845) rTail!78)) (= lambda!464633 lambda!464573))))

(declare-fun bs!1936619 () Bool)

(assert (= bs!1936619 (and b!7497733 b!7497393)))

(assert (=> bs!1936619 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r1!5845) (regOne!39814 lt!2630804)) (= (regTwo!39814 r1!5845) (regTwo!39814 lt!2630804))) (= lambda!464633 lambda!464607))))

(declare-fun bs!1936621 () Bool)

(assert (= bs!1936621 (and b!7497733 b!7497690)))

(assert (=> bs!1936621 (= (and (= (regOne!39814 r1!5845) (regOne!39814 lt!2630813)) (= (regTwo!39814 r1!5845) (regTwo!39814 lt!2630813))) (= lambda!464633 lambda!464630))))

(declare-fun bs!1936623 () Bool)

(assert (= bs!1936623 (and b!7497733 b!7497412)))

(assert (=> bs!1936623 (not (= lambda!464633 lambda!464610))))

(declare-fun bs!1936625 () Bool)

(assert (= bs!1936625 (and b!7497733 d!2301927)))

(assert (=> bs!1936625 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r1!5845) lt!2630813) (= (regTwo!39814 r1!5845) rTail!78)) (= lambda!464633 lambda!464581))))

(declare-fun bs!1936626 () Bool)

(assert (= bs!1936626 (and b!7497733 b!7497415)))

(assert (=> bs!1936626 (= (and (= (_1!37671 lt!2630803) s!13591) (= (regOne!39814 r1!5845) (regOne!39814 lt!2630817)) (= (regTwo!39814 r1!5845) (regTwo!39814 lt!2630817))) (= lambda!464633 lambda!464611))))

(declare-fun bs!1936628 () Bool)

(assert (= bs!1936628 (and b!7497733 b!7497360)))

(assert (=> bs!1936628 (not (= lambda!464633 lambda!464600))))

(declare-fun bs!1936630 () Bool)

(assert (= bs!1936630 (and b!7497733 d!2302007)))

(assert (=> bs!1936630 (not (= lambda!464633 lambda!464614))))

(declare-fun bs!1936631 () Bool)

(assert (= bs!1936631 (and b!7497733 b!7497299)))

(assert (=> bs!1936631 (not (= lambda!464633 lambda!464598))))

(assert (=> bs!1936617 (not (= lambda!464633 lambda!464572))))

(declare-fun bs!1936633 () Bool)

(assert (= bs!1936633 (and b!7497733 b!7497651)))

(assert (=> bs!1936633 (not (= lambda!464633 lambda!464624))))

(declare-fun bs!1936635 () Bool)

(assert (= bs!1936635 (and b!7497733 b!7497687)))

(assert (=> bs!1936635 (not (= lambda!464633 lambda!464629))))

(assert (=> bs!1936625 (not (= lambda!464633 lambda!464580))))

(assert (=> b!7497733 true))

(assert (=> b!7497733 true))

(declare-fun b!7497728 () Bool)

(declare-fun c!1384266 () Bool)

(assert (=> b!7497728 (= c!1384266 ((_ is Union!19651) r1!5845))))

(declare-fun e!4470387 () Bool)

(declare-fun e!4470392 () Bool)

(assert (=> b!7497728 (= e!4470387 e!4470392)))

(declare-fun b!7497729 () Bool)

(declare-fun e!4470386 () Bool)

(assert (=> b!7497729 (= e!4470392 e!4470386)))

(declare-fun c!1384268 () Bool)

(assert (=> b!7497729 (= c!1384268 ((_ is Star!19651) r1!5845))))

(declare-fun call!688287 () Bool)

(declare-fun bm!688282 () Bool)

(assert (=> bm!688282 (= call!688287 (Exists!4268 (ite c!1384268 lambda!464632 lambda!464633)))))

(declare-fun d!2302075 () Bool)

(declare-fun c!1384267 () Bool)

(assert (=> d!2302075 (= c!1384267 ((_ is EmptyExpr!19651) r1!5845))))

(declare-fun e!4470389 () Bool)

(assert (=> d!2302075 (= (matchRSpec!4328 r1!5845 (_1!37671 lt!2630803)) e!4470389)))

(declare-fun e!4470390 () Bool)

(assert (=> b!7497730 (= e!4470390 call!688287)))

(declare-fun b!7497731 () Bool)

(declare-fun e!4470391 () Bool)

(assert (=> b!7497731 (= e!4470391 (matchRSpec!4328 (regTwo!39815 r1!5845) (_1!37671 lt!2630803)))))

(declare-fun b!7497732 () Bool)

(declare-fun e!4470388 () Bool)

(assert (=> b!7497732 (= e!4470389 e!4470388)))

(declare-fun res!3007735 () Bool)

(assert (=> b!7497732 (= res!3007735 (not ((_ is EmptyLang!19651) r1!5845)))))

(assert (=> b!7497732 (=> (not res!3007735) (not e!4470388))))

(assert (=> b!7497733 (= e!4470386 call!688287)))

(declare-fun bm!688283 () Bool)

(declare-fun call!688288 () Bool)

(assert (=> bm!688283 (= call!688288 (isEmpty!41279 (_1!37671 lt!2630803)))))

(declare-fun b!7497734 () Bool)

(assert (=> b!7497734 (= e!4470389 call!688288)))

(declare-fun b!7497735 () Bool)

(assert (=> b!7497735 (= e!4470392 e!4470391)))

(declare-fun res!3007733 () Bool)

(assert (=> b!7497735 (= res!3007733 (matchRSpec!4328 (regOne!39815 r1!5845) (_1!37671 lt!2630803)))))

(assert (=> b!7497735 (=> res!3007733 e!4470391)))

(declare-fun b!7497736 () Bool)

(declare-fun c!1384269 () Bool)

(assert (=> b!7497736 (= c!1384269 ((_ is ElementMatch!19651) r1!5845))))

(assert (=> b!7497736 (= e!4470388 e!4470387)))

(declare-fun b!7497737 () Bool)

(assert (=> b!7497737 (= e!4470387 (= (_1!37671 lt!2630803) (Cons!72241 (c!1384094 r1!5845) Nil!72241)))))

(declare-fun b!7497738 () Bool)

(declare-fun res!3007734 () Bool)

(assert (=> b!7497738 (=> res!3007734 e!4470390)))

(assert (=> b!7497738 (= res!3007734 call!688288)))

(assert (=> b!7497738 (= e!4470386 e!4470390)))

(assert (= (and d!2302075 c!1384267) b!7497734))

(assert (= (and d!2302075 (not c!1384267)) b!7497732))

(assert (= (and b!7497732 res!3007735) b!7497736))

(assert (= (and b!7497736 c!1384269) b!7497737))

(assert (= (and b!7497736 (not c!1384269)) b!7497728))

(assert (= (and b!7497728 c!1384266) b!7497735))

(assert (= (and b!7497728 (not c!1384266)) b!7497729))

(assert (= (and b!7497735 (not res!3007733)) b!7497731))

(assert (= (and b!7497729 c!1384268) b!7497738))

(assert (= (and b!7497729 (not c!1384268)) b!7497733))

(assert (= (and b!7497738 (not res!3007734)) b!7497730))

(assert (= (or b!7497730 b!7497733) bm!688282))

(assert (= (or b!7497734 b!7497738) bm!688283))

(declare-fun m!8080982 () Bool)

(assert (=> bm!688282 m!8080982))

(declare-fun m!8080984 () Bool)

(assert (=> b!7497731 m!8080984))

(assert (=> bm!688283 m!8080794))

(declare-fun m!8080986 () Bool)

(assert (=> b!7497735 m!8080986))

(assert (=> b!7497012 d!2302075))

(declare-fun b!7497766 () Bool)

(declare-fun e!4470402 () Bool)

(declare-fun tp!2176345 () Bool)

(declare-fun tp!2176344 () Bool)

(assert (=> b!7497766 (= e!4470402 (and tp!2176345 tp!2176344))))

(declare-fun b!7497763 () Bool)

(assert (=> b!7497763 (= e!4470402 tp_is_empty!49591)))

(assert (=> b!7496997 (= tp!2176325 e!4470402)))

(declare-fun b!7497765 () Bool)

(declare-fun tp!2176346 () Bool)

(assert (=> b!7497765 (= e!4470402 tp!2176346)))

(declare-fun b!7497764 () Bool)

(declare-fun tp!2176348 () Bool)

(declare-fun tp!2176347 () Bool)

(assert (=> b!7497764 (= e!4470402 (and tp!2176348 tp!2176347))))

(assert (= (and b!7496997 ((_ is ElementMatch!19651) (regOne!39814 r1!5845))) b!7497763))

(assert (= (and b!7496997 ((_ is Concat!28496) (regOne!39814 r1!5845))) b!7497764))

(assert (= (and b!7496997 ((_ is Star!19651) (regOne!39814 r1!5845))) b!7497765))

(assert (= (and b!7496997 ((_ is Union!19651) (regOne!39814 r1!5845))) b!7497766))

(declare-fun b!7497770 () Bool)

(declare-fun e!4470403 () Bool)

(declare-fun tp!2176350 () Bool)

(declare-fun tp!2176349 () Bool)

(assert (=> b!7497770 (= e!4470403 (and tp!2176350 tp!2176349))))

(declare-fun b!7497767 () Bool)

(assert (=> b!7497767 (= e!4470403 tp_is_empty!49591)))

(assert (=> b!7496997 (= tp!2176333 e!4470403)))

(declare-fun b!7497769 () Bool)

(declare-fun tp!2176351 () Bool)

(assert (=> b!7497769 (= e!4470403 tp!2176351)))

(declare-fun b!7497768 () Bool)

(declare-fun tp!2176353 () Bool)

(declare-fun tp!2176352 () Bool)

(assert (=> b!7497768 (= e!4470403 (and tp!2176353 tp!2176352))))

(assert (= (and b!7496997 ((_ is ElementMatch!19651) (regTwo!39814 r1!5845))) b!7497767))

(assert (= (and b!7496997 ((_ is Concat!28496) (regTwo!39814 r1!5845))) b!7497768))

(assert (= (and b!7496997 ((_ is Star!19651) (regTwo!39814 r1!5845))) b!7497769))

(assert (= (and b!7496997 ((_ is Union!19651) (regTwo!39814 r1!5845))) b!7497770))

(declare-fun b!7497774 () Bool)

(declare-fun e!4470404 () Bool)

(declare-fun tp!2176355 () Bool)

(declare-fun tp!2176354 () Bool)

(assert (=> b!7497774 (= e!4470404 (and tp!2176355 tp!2176354))))

(declare-fun b!7497771 () Bool)

(assert (=> b!7497771 (= e!4470404 tp_is_empty!49591)))

(assert (=> b!7497013 (= tp!2176323 e!4470404)))

(declare-fun b!7497773 () Bool)

(declare-fun tp!2176356 () Bool)

(assert (=> b!7497773 (= e!4470404 tp!2176356)))

(declare-fun b!7497772 () Bool)

(declare-fun tp!2176358 () Bool)

(declare-fun tp!2176357 () Bool)

(assert (=> b!7497772 (= e!4470404 (and tp!2176358 tp!2176357))))

(assert (= (and b!7497013 ((_ is ElementMatch!19651) (reg!19980 r1!5845))) b!7497771))

(assert (= (and b!7497013 ((_ is Concat!28496) (reg!19980 r1!5845))) b!7497772))

(assert (= (and b!7497013 ((_ is Star!19651) (reg!19980 r1!5845))) b!7497773))

(assert (= (and b!7497013 ((_ is Union!19651) (reg!19980 r1!5845))) b!7497774))

(declare-fun b!7497778 () Bool)

(declare-fun e!4470405 () Bool)

(declare-fun tp!2176360 () Bool)

(declare-fun tp!2176359 () Bool)

(assert (=> b!7497778 (= e!4470405 (and tp!2176360 tp!2176359))))

(declare-fun b!7497775 () Bool)

(assert (=> b!7497775 (= e!4470405 tp_is_empty!49591)))

(assert (=> b!7497008 (= tp!2176331 e!4470405)))

(declare-fun b!7497777 () Bool)

(declare-fun tp!2176361 () Bool)

(assert (=> b!7497777 (= e!4470405 tp!2176361)))

(declare-fun b!7497776 () Bool)

(declare-fun tp!2176363 () Bool)

(declare-fun tp!2176362 () Bool)

(assert (=> b!7497776 (= e!4470405 (and tp!2176363 tp!2176362))))

(assert (= (and b!7497008 ((_ is ElementMatch!19651) (regOne!39815 rTail!78))) b!7497775))

(assert (= (and b!7497008 ((_ is Concat!28496) (regOne!39815 rTail!78))) b!7497776))

(assert (= (and b!7497008 ((_ is Star!19651) (regOne!39815 rTail!78))) b!7497777))

(assert (= (and b!7497008 ((_ is Union!19651) (regOne!39815 rTail!78))) b!7497778))

(declare-fun b!7497782 () Bool)

(declare-fun e!4470406 () Bool)

(declare-fun tp!2176365 () Bool)

(declare-fun tp!2176364 () Bool)

(assert (=> b!7497782 (= e!4470406 (and tp!2176365 tp!2176364))))

(declare-fun b!7497779 () Bool)

(assert (=> b!7497779 (= e!4470406 tp_is_empty!49591)))

(assert (=> b!7497008 (= tp!2176321 e!4470406)))

(declare-fun b!7497781 () Bool)

(declare-fun tp!2176366 () Bool)

(assert (=> b!7497781 (= e!4470406 tp!2176366)))

(declare-fun b!7497780 () Bool)

(declare-fun tp!2176368 () Bool)

(declare-fun tp!2176367 () Bool)

(assert (=> b!7497780 (= e!4470406 (and tp!2176368 tp!2176367))))

(assert (= (and b!7497008 ((_ is ElementMatch!19651) (regTwo!39815 rTail!78))) b!7497779))

(assert (= (and b!7497008 ((_ is Concat!28496) (regTwo!39815 rTail!78))) b!7497780))

(assert (= (and b!7497008 ((_ is Star!19651) (regTwo!39815 rTail!78))) b!7497781))

(assert (= (and b!7497008 ((_ is Union!19651) (regTwo!39815 rTail!78))) b!7497782))

(declare-fun b!7497786 () Bool)

(declare-fun e!4470407 () Bool)

(declare-fun tp!2176370 () Bool)

(declare-fun tp!2176369 () Bool)

(assert (=> b!7497786 (= e!4470407 (and tp!2176370 tp!2176369))))

(declare-fun b!7497783 () Bool)

(assert (=> b!7497783 (= e!4470407 tp_is_empty!49591)))

(assert (=> b!7497015 (= tp!2176319 e!4470407)))

(declare-fun b!7497785 () Bool)

(declare-fun tp!2176371 () Bool)

(assert (=> b!7497785 (= e!4470407 tp!2176371)))

(declare-fun b!7497784 () Bool)

(declare-fun tp!2176373 () Bool)

(declare-fun tp!2176372 () Bool)

(assert (=> b!7497784 (= e!4470407 (and tp!2176373 tp!2176372))))

(assert (= (and b!7497015 ((_ is ElementMatch!19651) (regOne!39814 rTail!78))) b!7497783))

(assert (= (and b!7497015 ((_ is Concat!28496) (regOne!39814 rTail!78))) b!7497784))

(assert (= (and b!7497015 ((_ is Star!19651) (regOne!39814 rTail!78))) b!7497785))

(assert (= (and b!7497015 ((_ is Union!19651) (regOne!39814 rTail!78))) b!7497786))

(declare-fun b!7497790 () Bool)

(declare-fun e!4470408 () Bool)

(declare-fun tp!2176375 () Bool)

(declare-fun tp!2176374 () Bool)

(assert (=> b!7497790 (= e!4470408 (and tp!2176375 tp!2176374))))

(declare-fun b!7497787 () Bool)

(assert (=> b!7497787 (= e!4470408 tp_is_empty!49591)))

(assert (=> b!7497015 (= tp!2176324 e!4470408)))

(declare-fun b!7497789 () Bool)

(declare-fun tp!2176376 () Bool)

(assert (=> b!7497789 (= e!4470408 tp!2176376)))

(declare-fun b!7497788 () Bool)

(declare-fun tp!2176378 () Bool)

(declare-fun tp!2176377 () Bool)

(assert (=> b!7497788 (= e!4470408 (and tp!2176378 tp!2176377))))

(assert (= (and b!7497015 ((_ is ElementMatch!19651) (regTwo!39814 rTail!78))) b!7497787))

(assert (= (and b!7497015 ((_ is Concat!28496) (regTwo!39814 rTail!78))) b!7497788))

(assert (= (and b!7497015 ((_ is Star!19651) (regTwo!39814 rTail!78))) b!7497789))

(assert (= (and b!7497015 ((_ is Union!19651) (regTwo!39814 rTail!78))) b!7497790))

(declare-fun b!7497794 () Bool)

(declare-fun e!4470409 () Bool)

(declare-fun tp!2176380 () Bool)

(declare-fun tp!2176379 () Bool)

(assert (=> b!7497794 (= e!4470409 (and tp!2176380 tp!2176379))))

(declare-fun b!7497791 () Bool)

(assert (=> b!7497791 (= e!4470409 tp_is_empty!49591)))

(assert (=> b!7497010 (= tp!2176328 e!4470409)))

(declare-fun b!7497793 () Bool)

(declare-fun tp!2176381 () Bool)

(assert (=> b!7497793 (= e!4470409 tp!2176381)))

(declare-fun b!7497792 () Bool)

(declare-fun tp!2176383 () Bool)

(declare-fun tp!2176382 () Bool)

(assert (=> b!7497792 (= e!4470409 (and tp!2176383 tp!2176382))))

(assert (= (and b!7497010 ((_ is ElementMatch!19651) (reg!19980 rTail!78))) b!7497791))

(assert (= (and b!7497010 ((_ is Concat!28496) (reg!19980 rTail!78))) b!7497792))

(assert (= (and b!7497010 ((_ is Star!19651) (reg!19980 rTail!78))) b!7497793))

(assert (= (and b!7497010 ((_ is Union!19651) (reg!19980 rTail!78))) b!7497794))

(declare-fun b!7497799 () Bool)

(declare-fun e!4470412 () Bool)

(declare-fun tp!2176386 () Bool)

(assert (=> b!7497799 (= e!4470412 (and tp_is_empty!49591 tp!2176386))))

(assert (=> b!7497009 (= tp!2176322 e!4470412)))

(assert (= (and b!7497009 ((_ is Cons!72241) (t!386934 s!13591))) b!7497799))

(declare-fun b!7497803 () Bool)

(declare-fun e!4470414 () Bool)

(declare-fun tp!2176388 () Bool)

(declare-fun tp!2176387 () Bool)

(assert (=> b!7497803 (= e!4470414 (and tp!2176388 tp!2176387))))

(declare-fun b!7497800 () Bool)

(assert (=> b!7497800 (= e!4470414 tp_is_empty!49591)))

(assert (=> b!7497004 (= tp!2176329 e!4470414)))

(declare-fun b!7497802 () Bool)

(declare-fun tp!2176389 () Bool)

(assert (=> b!7497802 (= e!4470414 tp!2176389)))

(declare-fun b!7497801 () Bool)

(declare-fun tp!2176391 () Bool)

(declare-fun tp!2176390 () Bool)

(assert (=> b!7497801 (= e!4470414 (and tp!2176391 tp!2176390))))

(assert (= (and b!7497004 ((_ is ElementMatch!19651) (regOne!39814 r2!5783))) b!7497800))

(assert (= (and b!7497004 ((_ is Concat!28496) (regOne!39814 r2!5783))) b!7497801))

(assert (= (and b!7497004 ((_ is Star!19651) (regOne!39814 r2!5783))) b!7497802))

(assert (= (and b!7497004 ((_ is Union!19651) (regOne!39814 r2!5783))) b!7497803))

(declare-fun b!7497816 () Bool)

(declare-fun e!4470421 () Bool)

(declare-fun tp!2176393 () Bool)

(declare-fun tp!2176392 () Bool)

(assert (=> b!7497816 (= e!4470421 (and tp!2176393 tp!2176392))))

(declare-fun b!7497813 () Bool)

(assert (=> b!7497813 (= e!4470421 tp_is_empty!49591)))

(assert (=> b!7497004 (= tp!2176320 e!4470421)))

(declare-fun b!7497815 () Bool)

(declare-fun tp!2176394 () Bool)

(assert (=> b!7497815 (= e!4470421 tp!2176394)))

(declare-fun b!7497814 () Bool)

(declare-fun tp!2176396 () Bool)

(declare-fun tp!2176395 () Bool)

(assert (=> b!7497814 (= e!4470421 (and tp!2176396 tp!2176395))))

(assert (= (and b!7497004 ((_ is ElementMatch!19651) (regTwo!39814 r2!5783))) b!7497813))

(assert (= (and b!7497004 ((_ is Concat!28496) (regTwo!39814 r2!5783))) b!7497814))

(assert (= (and b!7497004 ((_ is Star!19651) (regTwo!39814 r2!5783))) b!7497815))

(assert (= (and b!7497004 ((_ is Union!19651) (regTwo!39814 r2!5783))) b!7497816))

(declare-fun b!7497820 () Bool)

(declare-fun e!4470422 () Bool)

(declare-fun tp!2176398 () Bool)

(declare-fun tp!2176397 () Bool)

(assert (=> b!7497820 (= e!4470422 (and tp!2176398 tp!2176397))))

(declare-fun b!7497817 () Bool)

(assert (=> b!7497817 (= e!4470422 tp_is_empty!49591)))

(assert (=> b!7496995 (= tp!2176327 e!4470422)))

(declare-fun b!7497819 () Bool)

(declare-fun tp!2176399 () Bool)

(assert (=> b!7497819 (= e!4470422 tp!2176399)))

(declare-fun b!7497818 () Bool)

(declare-fun tp!2176401 () Bool)

(declare-fun tp!2176400 () Bool)

(assert (=> b!7497818 (= e!4470422 (and tp!2176401 tp!2176400))))

(assert (= (and b!7496995 ((_ is ElementMatch!19651) (regOne!39815 r1!5845))) b!7497817))

(assert (= (and b!7496995 ((_ is Concat!28496) (regOne!39815 r1!5845))) b!7497818))

(assert (= (and b!7496995 ((_ is Star!19651) (regOne!39815 r1!5845))) b!7497819))

(assert (= (and b!7496995 ((_ is Union!19651) (regOne!39815 r1!5845))) b!7497820))

(declare-fun b!7497824 () Bool)

(declare-fun e!4470423 () Bool)

(declare-fun tp!2176403 () Bool)

(declare-fun tp!2176402 () Bool)

(assert (=> b!7497824 (= e!4470423 (and tp!2176403 tp!2176402))))

(declare-fun b!7497821 () Bool)

(assert (=> b!7497821 (= e!4470423 tp_is_empty!49591)))

(assert (=> b!7496995 (= tp!2176332 e!4470423)))

(declare-fun b!7497823 () Bool)

(declare-fun tp!2176404 () Bool)

(assert (=> b!7497823 (= e!4470423 tp!2176404)))

(declare-fun b!7497822 () Bool)

(declare-fun tp!2176406 () Bool)

(declare-fun tp!2176405 () Bool)

(assert (=> b!7497822 (= e!4470423 (and tp!2176406 tp!2176405))))

(assert (= (and b!7496995 ((_ is ElementMatch!19651) (regTwo!39815 r1!5845))) b!7497821))

(assert (= (and b!7496995 ((_ is Concat!28496) (regTwo!39815 r1!5845))) b!7497822))

(assert (= (and b!7496995 ((_ is Star!19651) (regTwo!39815 r1!5845))) b!7497823))

(assert (= (and b!7496995 ((_ is Union!19651) (regTwo!39815 r1!5845))) b!7497824))

(declare-fun b!7497828 () Bool)

(declare-fun e!4470424 () Bool)

(declare-fun tp!2176408 () Bool)

(declare-fun tp!2176407 () Bool)

(assert (=> b!7497828 (= e!4470424 (and tp!2176408 tp!2176407))))

(declare-fun b!7497825 () Bool)

(assert (=> b!7497825 (= e!4470424 tp_is_empty!49591)))

(assert (=> b!7497007 (= tp!2176318 e!4470424)))

(declare-fun b!7497827 () Bool)

(declare-fun tp!2176409 () Bool)

(assert (=> b!7497827 (= e!4470424 tp!2176409)))

(declare-fun b!7497826 () Bool)

(declare-fun tp!2176411 () Bool)

(declare-fun tp!2176410 () Bool)

(assert (=> b!7497826 (= e!4470424 (and tp!2176411 tp!2176410))))

(assert (= (and b!7497007 ((_ is ElementMatch!19651) (reg!19980 r2!5783))) b!7497825))

(assert (= (and b!7497007 ((_ is Concat!28496) (reg!19980 r2!5783))) b!7497826))

(assert (= (and b!7497007 ((_ is Star!19651) (reg!19980 r2!5783))) b!7497827))

(assert (= (and b!7497007 ((_ is Union!19651) (reg!19980 r2!5783))) b!7497828))

(declare-fun b!7497838 () Bool)

(declare-fun e!4470427 () Bool)

(declare-fun tp!2176413 () Bool)

(declare-fun tp!2176412 () Bool)

(assert (=> b!7497838 (= e!4470427 (and tp!2176413 tp!2176412))))

(declare-fun b!7497835 () Bool)

(assert (=> b!7497835 (= e!4470427 tp_is_empty!49591)))

(assert (=> b!7497001 (= tp!2176326 e!4470427)))

(declare-fun b!7497837 () Bool)

(declare-fun tp!2176414 () Bool)

(assert (=> b!7497837 (= e!4470427 tp!2176414)))

(declare-fun b!7497836 () Bool)

(declare-fun tp!2176416 () Bool)

(declare-fun tp!2176415 () Bool)

(assert (=> b!7497836 (= e!4470427 (and tp!2176416 tp!2176415))))

(assert (= (and b!7497001 ((_ is ElementMatch!19651) (regOne!39815 r2!5783))) b!7497835))

(assert (= (and b!7497001 ((_ is Concat!28496) (regOne!39815 r2!5783))) b!7497836))

(assert (= (and b!7497001 ((_ is Star!19651) (regOne!39815 r2!5783))) b!7497837))

(assert (= (and b!7497001 ((_ is Union!19651) (regOne!39815 r2!5783))) b!7497838))

(declare-fun b!7497844 () Bool)

(declare-fun e!4470428 () Bool)

(declare-fun tp!2176422 () Bool)

(declare-fun tp!2176421 () Bool)

(assert (=> b!7497844 (= e!4470428 (and tp!2176422 tp!2176421))))

(declare-fun b!7497839 () Bool)

(assert (=> b!7497839 (= e!4470428 tp_is_empty!49591)))

(assert (=> b!7497001 (= tp!2176330 e!4470428)))

(declare-fun b!7497843 () Bool)

(declare-fun tp!2176423 () Bool)

(assert (=> b!7497843 (= e!4470428 tp!2176423)))

(declare-fun b!7497840 () Bool)

(declare-fun tp!2176425 () Bool)

(declare-fun tp!2176424 () Bool)

(assert (=> b!7497840 (= e!4470428 (and tp!2176425 tp!2176424))))

(assert (= (and b!7497001 ((_ is ElementMatch!19651) (regTwo!39815 r2!5783))) b!7497839))

(assert (= (and b!7497001 ((_ is Concat!28496) (regTwo!39815 r2!5783))) b!7497840))

(assert (= (and b!7497001 ((_ is Star!19651) (regTwo!39815 r2!5783))) b!7497843))

(assert (= (and b!7497001 ((_ is Union!19651) (regTwo!39815 r2!5783))) b!7497844))

(check-sat (not b!7497451) (not b!7497335) (not b!7497643) (not b!7497726) (not b!7497545) (not b!7497382) (not b!7497802) (not b!7497765) (not b!7497815) (not b!7497480) (not b!7497719) (not b!7497714) (not b!7497334) (not b!7497820) (not b!7497413) (not b!7497792) (not d!2301975) (not b!7497300) (not b!7497561) (not b!7497723) (not bm!688282) (not b!7497216) (not d!2302073) (not b!7497573) (not b!7497333) (not b!7497481) (not b!7497793) (not b!7497774) (not d!2302007) (not bm!688275) (not b!7497078) (not d!2302033) (not b!7497329) (not b!7497541) (not bm!688241) (not d!2302041) (not d!2302021) (not b!7497682) (not b!7497683) (not d!2302061) (not b!7497079) (not b!7497476) (not b!7497084) (not bm!688281) (not d!2301999) (not b!7497768) (not d!2301935) (not b!7497784) (not b!7497624) (not b!7497548) (not bm!688271) (not b!7497313) (not b!7497794) (not bm!688258) (not bm!688261) (not bm!688247) (not b!7497458) (not b!7497770) (not d!2301971) (not b!7497156) (not b!7497777) (not b!7497681) (not d!2301927) (not b!7497680) (not d!2302055) (not b!7497656) (not bm!688276) (not bm!688233) (not bm!688231) (not b!7497652) (not b!7497336) (not b!7497838) (not b!7497081) (not d!2301997) (not b!7497155) (not bm!688218) (not b!7497153) (not d!2301949) (not b!7497324) (not b!7497478) (not b!7497472) (not b!7497844) (not bm!688230) (not b!7497816) (not b!7497144) (not b!7497628) (not b!7497318) (not b!7497786) (not b!7497317) (not b!7497319) (not b!7497570) (not b!7497688) (not b!7497470) (not d!2301979) (not b!7497149) (not b!7497778) (not b!7497823) (not b!7497731) (not b!7497475) (not b!7497546) (not b!7497818) (not bm!688238) (not b!7497623) (not bm!688277) (not b!7497790) (not b!7497365) (not d!2301933) (not b!7497566) (not b!7497671) (not d!2302057) (not d!2302023) (not b!7497769) (not b!7497801) tp_is_empty!49591 (not bm!688272) (not b!7497455) (not d!2301937) (not b!7497827) (not b!7497799) (not d!2301945) (not b!7497814) (not b!7497780) (not b!7497479) (not b!7497082) (not d!2301995) (not b!7497083) (not bm!688251) (not b!7497824) (not b!7497361) (not bm!688234) (not b!7497735) (not b!7497788) (not d!2302031) (not b!7497457) (not b!7497154) (not b!7497571) (not b!7497465) (not b!7497395) (not bm!688240) (not b!7497789) (not b!7497773) (not b!7497456) (not b!7497837) (not d!2301993) (not d!2302019) (not b!7497446) (not b!7497391) (not b!7497471) (not b!7497692) (not d!2301985) (not b!7497572) (not b!7497826) (not b!7497819) (not bm!688219) (not bm!688252) (not b!7497724) (not d!2301973) (not b!7497766) (not b!7497304) (not b!7497781) (not bm!688268) (not b!7497417) (not b!7497469) (not b!7497547) (not bm!688232) (not b!7497782) (not bm!688269) (not b!7497803) (not bm!688237) (not b!7497822) (not b!7497460) (not b!7497772) (not b!7497785) (not b!7497776) (not bm!688208) (not b!7497836) (not bm!688246) (not b!7497725) (not b!7497764) (not b!7497676) (not bm!688283) (not b!7497828) (not b!7497308) (not d!2302029) (not d!2301939) (not b!7497320) (not d!2302017) (not b!7497840) (not bm!688229) (not d!2302059) (not b!7497536) (not b!7497843))
(check-sat)
