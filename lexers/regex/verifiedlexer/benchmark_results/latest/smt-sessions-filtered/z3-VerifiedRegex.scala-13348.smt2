; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724130 () Bool)

(assert start!724130)

(declare-fun b!7467015 () Bool)

(assert (=> b!7467015 true))

(assert (=> b!7467015 true))

(assert (=> b!7467015 true))

(declare-fun lambda!462211 () Int)

(declare-fun lambda!462210 () Int)

(assert (=> b!7467015 (not (= lambda!462211 lambda!462210))))

(assert (=> b!7467015 true))

(assert (=> b!7467015 true))

(assert (=> b!7467015 true))

(declare-fun bs!1930301 () Bool)

(declare-fun b!7466998 () Bool)

(assert (= bs!1930301 (and b!7466998 b!7467015)))

(declare-fun lambda!462212 () Int)

(declare-datatypes ((C!39392 0))(
  ( (C!39393 (val!30094 Int)) )
))
(declare-datatypes ((Regex!19559 0))(
  ( (ElementMatch!19559 (c!1379992 C!39392)) (Concat!28404 (regOne!39630 Regex!19559) (regTwo!39630 Regex!19559)) (EmptyExpr!19559) (Star!19559 (reg!19888 Regex!19559)) (EmptyLang!19559) (Union!19559 (regOne!39631 Regex!19559) (regTwo!39631 Regex!19559)) )
))
(declare-fun r1!5845 () Regex!19559)

(declare-fun lt!2624286 () Regex!19559)

(assert (=> bs!1930301 (= (= r1!5845 lt!2624286) (= lambda!462212 lambda!462210))))

(assert (=> bs!1930301 (not (= lambda!462212 lambda!462211))))

(assert (=> b!7466998 true))

(assert (=> b!7466998 true))

(assert (=> b!7466998 true))

(declare-fun lambda!462213 () Int)

(assert (=> bs!1930301 (not (= lambda!462213 lambda!462210))))

(assert (=> bs!1930301 (= (= r1!5845 lt!2624286) (= lambda!462213 lambda!462211))))

(assert (=> b!7466998 (not (= lambda!462213 lambda!462212))))

(assert (=> b!7466998 true))

(assert (=> b!7466998 true))

(assert (=> b!7466998 true))

(declare-fun b!7466997 () Bool)

(declare-fun e!4455482 () Bool)

(declare-fun tp!2164787 () Bool)

(declare-fun tp!2164786 () Bool)

(assert (=> b!7466997 (= e!4455482 (and tp!2164787 tp!2164786))))

(declare-fun e!4455487 () Bool)

(declare-fun e!4455485 () Bool)

(assert (=> b!7466998 (= e!4455487 e!4455485)))

(declare-fun res!2995320 () Bool)

(assert (=> b!7466998 (=> res!2995320 e!4455485)))

(declare-datatypes ((List!72275 0))(
  ( (Nil!72151) (Cons!72151 (h!78599 C!39392) (t!386844 List!72275)) )
))
(declare-datatypes ((tuple2!68568 0))(
  ( (tuple2!68569 (_1!37587 List!72275) (_2!37587 List!72275)) )
))
(declare-fun lt!2624288 () tuple2!68568)

(declare-fun matchR!9323 (Regex!19559 List!72275) Bool)

(assert (=> b!7466998 (= res!2995320 (not (matchR!9323 r1!5845 (_1!37587 lt!2624288))))))

(declare-datatypes ((Option!17116 0))(
  ( (None!17115) (Some!17115 (v!54244 tuple2!68568)) )
))
(declare-fun lt!2624291 () Option!17116)

(declare-fun get!25206 (Option!17116) tuple2!68568)

(assert (=> b!7466998 (= lt!2624288 (get!25206 lt!2624291))))

(declare-fun Exists!4178 (Int) Bool)

(assert (=> b!7466998 (= (Exists!4178 lambda!462212) (Exists!4178 lambda!462213))))

(declare-fun s!13591 () List!72275)

(declare-datatypes ((Unit!165953 0))(
  ( (Unit!165954) )
))
(declare-fun lt!2624289 () Unit!165953)

(declare-fun rTail!78 () Regex!19559)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2512 (Regex!19559 Regex!19559 List!72275) Unit!165953)

(assert (=> b!7466998 (= lt!2624289 (lemmaExistCutMatchRandMatchRSpecEquivalent!2512 r1!5845 rTail!78 s!13591))))

(declare-fun isDefined!13805 (Option!17116) Bool)

(assert (=> b!7466998 (= (isDefined!13805 lt!2624291) (Exists!4178 lambda!462212))))

(declare-fun findConcatSeparation!3238 (Regex!19559 Regex!19559 List!72275 List!72275 List!72275) Option!17116)

(assert (=> b!7466998 (= lt!2624291 (findConcatSeparation!3238 r1!5845 rTail!78 Nil!72151 s!13591 s!13591))))

(declare-fun lt!2624302 () Unit!165953)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2996 (Regex!19559 Regex!19559 List!72275) Unit!165953)

(assert (=> b!7466998 (= lt!2624302 (lemmaFindConcatSeparationEquivalentToExists!2996 r1!5845 rTail!78 s!13591))))

(declare-fun b!7466999 () Bool)

(declare-fun e!4455480 () Bool)

(declare-fun tp_is_empty!49407 () Bool)

(assert (=> b!7466999 (= e!4455480 tp_is_empty!49407)))

(declare-fun b!7467000 () Bool)

(declare-fun res!2995319 () Bool)

(assert (=> b!7467000 (=> res!2995319 e!4455485)))

(assert (=> b!7467000 (= res!2995319 (not (matchR!9323 rTail!78 (_2!37587 lt!2624288))))))

(declare-fun b!7467001 () Bool)

(declare-fun e!4455488 () Bool)

(assert (=> b!7467001 (= e!4455488 e!4455487)))

(declare-fun res!2995316 () Bool)

(assert (=> b!7467001 (=> res!2995316 e!4455487)))

(declare-fun lt!2624301 () Bool)

(declare-fun lt!2624299 () Bool)

(assert (=> b!7467001 (= res!2995316 (or (and (not lt!2624301) (not lt!2624299)) (not lt!2624301)))))

(declare-fun lt!2624292 () Regex!19559)

(declare-fun matchRSpec!4238 (Regex!19559 List!72275) Bool)

(assert (=> b!7467001 (= lt!2624299 (matchRSpec!4238 lt!2624292 s!13591))))

(assert (=> b!7467001 (= lt!2624299 (matchR!9323 lt!2624292 s!13591))))

(declare-fun lt!2624297 () Unit!165953)

(declare-fun mainMatchTheorem!4232 (Regex!19559 List!72275) Unit!165953)

(assert (=> b!7467001 (= lt!2624297 (mainMatchTheorem!4232 lt!2624292 s!13591))))

(declare-fun lt!2624290 () Regex!19559)

(assert (=> b!7467001 (= lt!2624301 (matchRSpec!4238 lt!2624290 s!13591))))

(assert (=> b!7467001 (= lt!2624301 (matchR!9323 lt!2624290 s!13591))))

(declare-fun lt!2624287 () Unit!165953)

(assert (=> b!7467001 (= lt!2624287 (mainMatchTheorem!4232 lt!2624290 s!13591))))

(declare-fun b!7467003 () Bool)

(assert (=> b!7467003 (= e!4455485 true)))

(assert (=> b!7467003 (matchRSpec!4238 r1!5845 (_1!37587 lt!2624288))))

(declare-fun lt!2624300 () Unit!165953)

(assert (=> b!7467003 (= lt!2624300 (mainMatchTheorem!4232 r1!5845 (_1!37587 lt!2624288)))))

(assert (=> b!7467003 (= (matchR!9323 lt!2624286 (_1!37587 lt!2624288)) (matchRSpec!4238 lt!2624286 (_1!37587 lt!2624288)))))

(declare-fun lt!2624285 () Unit!165953)

(assert (=> b!7467003 (= lt!2624285 (mainMatchTheorem!4232 lt!2624286 (_1!37587 lt!2624288)))))

(declare-fun b!7467004 () Bool)

(declare-fun tp!2164793 () Bool)

(declare-fun tp!2164788 () Bool)

(assert (=> b!7467004 (= e!4455480 (and tp!2164793 tp!2164788))))

(declare-fun b!7467005 () Bool)

(declare-fun e!4455486 () Bool)

(declare-fun tp!2164794 () Bool)

(declare-fun tp!2164785 () Bool)

(assert (=> b!7467005 (= e!4455486 (and tp!2164794 tp!2164785))))

(declare-fun b!7467006 () Bool)

(declare-fun res!2995317 () Bool)

(declare-fun e!4455484 () Bool)

(assert (=> b!7467006 (=> (not res!2995317) (not e!4455484))))

(declare-fun r2!5783 () Regex!19559)

(declare-fun validRegex!10073 (Regex!19559) Bool)

(assert (=> b!7467006 (= res!2995317 (validRegex!10073 r2!5783))))

(declare-fun b!7467007 () Bool)

(declare-fun res!2995318 () Bool)

(assert (=> b!7467007 (=> (not res!2995318) (not e!4455484))))

(assert (=> b!7467007 (= res!2995318 (validRegex!10073 rTail!78))))

(declare-fun b!7467008 () Bool)

(declare-fun tp!2164790 () Bool)

(assert (=> b!7467008 (= e!4455482 tp!2164790)))

(declare-fun b!7467009 () Bool)

(declare-fun e!4455481 () Bool)

(declare-fun tp!2164795 () Bool)

(assert (=> b!7467009 (= e!4455481 (and tp_is_empty!49407 tp!2164795))))

(declare-fun b!7467010 () Bool)

(declare-fun tp!2164781 () Bool)

(declare-fun tp!2164792 () Bool)

(assert (=> b!7467010 (= e!4455486 (and tp!2164781 tp!2164792))))

(declare-fun b!7467011 () Bool)

(declare-fun tp!2164789 () Bool)

(assert (=> b!7467011 (= e!4455486 tp!2164789)))

(declare-fun b!7467012 () Bool)

(assert (=> b!7467012 (= e!4455482 tp_is_empty!49407)))

(declare-fun res!2995321 () Bool)

(assert (=> start!724130 (=> (not res!2995321) (not e!4455484))))

(assert (=> start!724130 (= res!2995321 (validRegex!10073 r1!5845))))

(assert (=> start!724130 e!4455484))

(assert (=> start!724130 e!4455482))

(assert (=> start!724130 e!4455480))

(assert (=> start!724130 e!4455486))

(assert (=> start!724130 e!4455481))

(declare-fun b!7467002 () Bool)

(declare-fun tp!2164780 () Bool)

(declare-fun tp!2164783 () Bool)

(assert (=> b!7467002 (= e!4455480 (and tp!2164780 tp!2164783))))

(declare-fun b!7467013 () Bool)

(declare-fun tp!2164791 () Bool)

(assert (=> b!7467013 (= e!4455480 tp!2164791)))

(declare-fun b!7467014 () Bool)

(declare-fun tp!2164782 () Bool)

(declare-fun tp!2164784 () Bool)

(assert (=> b!7467014 (= e!4455482 (and tp!2164782 tp!2164784))))

(declare-fun e!4455483 () Bool)

(assert (=> b!7467015 (= e!4455483 e!4455488)))

(declare-fun res!2995322 () Bool)

(assert (=> b!7467015 (=> res!2995322 e!4455488)))

(declare-fun lt!2624296 () Bool)

(declare-fun lt!2624298 () Bool)

(assert (=> b!7467015 (= res!2995322 (or lt!2624296 (not lt!2624298)))))

(assert (=> b!7467015 (= (Exists!4178 lambda!462210) (Exists!4178 lambda!462211))))

(declare-fun lt!2624294 () Unit!165953)

(assert (=> b!7467015 (= lt!2624294 (lemmaExistCutMatchRandMatchRSpecEquivalent!2512 lt!2624286 rTail!78 s!13591))))

(assert (=> b!7467015 (= lt!2624296 (Exists!4178 lambda!462210))))

(assert (=> b!7467015 (= lt!2624296 (isDefined!13805 (findConcatSeparation!3238 lt!2624286 rTail!78 Nil!72151 s!13591 s!13591)))))

(declare-fun lt!2624284 () Unit!165953)

(assert (=> b!7467015 (= lt!2624284 (lemmaFindConcatSeparationEquivalentToExists!2996 lt!2624286 rTail!78 s!13591))))

(declare-fun b!7467016 () Bool)

(assert (=> b!7467016 (= e!4455486 tp_is_empty!49407)))

(declare-fun b!7467017 () Bool)

(assert (=> b!7467017 (= e!4455484 (not e!4455483))))

(declare-fun res!2995315 () Bool)

(assert (=> b!7467017 (=> res!2995315 e!4455483)))

(declare-fun lt!2624282 () Bool)

(assert (=> b!7467017 (= res!2995315 lt!2624282)))

(declare-fun lt!2624303 () Regex!19559)

(assert (=> b!7467017 (= lt!2624298 (matchRSpec!4238 lt!2624303 s!13591))))

(assert (=> b!7467017 (= lt!2624298 (matchR!9323 lt!2624303 s!13591))))

(declare-fun lt!2624295 () Unit!165953)

(assert (=> b!7467017 (= lt!2624295 (mainMatchTheorem!4232 lt!2624303 s!13591))))

(declare-fun lt!2624283 () Regex!19559)

(assert (=> b!7467017 (= lt!2624282 (matchRSpec!4238 lt!2624283 s!13591))))

(assert (=> b!7467017 (= lt!2624282 (matchR!9323 lt!2624283 s!13591))))

(declare-fun lt!2624293 () Unit!165953)

(assert (=> b!7467017 (= lt!2624293 (mainMatchTheorem!4232 lt!2624283 s!13591))))

(assert (=> b!7467017 (= lt!2624303 (Union!19559 lt!2624290 lt!2624292))))

(assert (=> b!7467017 (= lt!2624292 (Concat!28404 r2!5783 rTail!78))))

(assert (=> b!7467017 (= lt!2624290 (Concat!28404 r1!5845 rTail!78))))

(assert (=> b!7467017 (= lt!2624283 (Concat!28404 lt!2624286 rTail!78))))

(assert (=> b!7467017 (= lt!2624286 (Union!19559 r1!5845 r2!5783))))

(assert (= (and start!724130 res!2995321) b!7467006))

(assert (= (and b!7467006 res!2995317) b!7467007))

(assert (= (and b!7467007 res!2995318) b!7467017))

(assert (= (and b!7467017 (not res!2995315)) b!7467015))

(assert (= (and b!7467015 (not res!2995322)) b!7467001))

(assert (= (and b!7467001 (not res!2995316)) b!7466998))

(assert (= (and b!7466998 (not res!2995320)) b!7467000))

(assert (= (and b!7467000 (not res!2995319)) b!7467003))

(get-info :version)

(assert (= (and start!724130 ((_ is ElementMatch!19559) r1!5845)) b!7467012))

(assert (= (and start!724130 ((_ is Concat!28404) r1!5845)) b!7466997))

(assert (= (and start!724130 ((_ is Star!19559) r1!5845)) b!7467008))

(assert (= (and start!724130 ((_ is Union!19559) r1!5845)) b!7467014))

(assert (= (and start!724130 ((_ is ElementMatch!19559) r2!5783)) b!7466999))

(assert (= (and start!724130 ((_ is Concat!28404) r2!5783)) b!7467002))

(assert (= (and start!724130 ((_ is Star!19559) r2!5783)) b!7467013))

(assert (= (and start!724130 ((_ is Union!19559) r2!5783)) b!7467004))

(assert (= (and start!724130 ((_ is ElementMatch!19559) rTail!78)) b!7467016))

(assert (= (and start!724130 ((_ is Concat!28404) rTail!78)) b!7467010))

(assert (= (and start!724130 ((_ is Star!19559) rTail!78)) b!7467011))

(assert (= (and start!724130 ((_ is Union!19559) rTail!78)) b!7467005))

(assert (= (and start!724130 ((_ is Cons!72151) s!13591)) b!7467009))

(declare-fun m!8065430 () Bool)

(assert (=> b!7467001 m!8065430))

(declare-fun m!8065432 () Bool)

(assert (=> b!7467001 m!8065432))

(declare-fun m!8065434 () Bool)

(assert (=> b!7467001 m!8065434))

(declare-fun m!8065436 () Bool)

(assert (=> b!7467001 m!8065436))

(declare-fun m!8065438 () Bool)

(assert (=> b!7467001 m!8065438))

(declare-fun m!8065440 () Bool)

(assert (=> b!7467001 m!8065440))

(declare-fun m!8065442 () Bool)

(assert (=> b!7467017 m!8065442))

(declare-fun m!8065444 () Bool)

(assert (=> b!7467017 m!8065444))

(declare-fun m!8065446 () Bool)

(assert (=> b!7467017 m!8065446))

(declare-fun m!8065448 () Bool)

(assert (=> b!7467017 m!8065448))

(declare-fun m!8065450 () Bool)

(assert (=> b!7467017 m!8065450))

(declare-fun m!8065452 () Bool)

(assert (=> b!7467017 m!8065452))

(declare-fun m!8065454 () Bool)

(assert (=> b!7467007 m!8065454))

(declare-fun m!8065456 () Bool)

(assert (=> b!7467006 m!8065456))

(declare-fun m!8065458 () Bool)

(assert (=> b!7467000 m!8065458))

(declare-fun m!8065460 () Bool)

(assert (=> b!7467003 m!8065460))

(declare-fun m!8065462 () Bool)

(assert (=> b!7467003 m!8065462))

(declare-fun m!8065464 () Bool)

(assert (=> b!7467003 m!8065464))

(declare-fun m!8065466 () Bool)

(assert (=> b!7467003 m!8065466))

(declare-fun m!8065468 () Bool)

(assert (=> b!7467003 m!8065468))

(declare-fun m!8065470 () Bool)

(assert (=> b!7467015 m!8065470))

(declare-fun m!8065472 () Bool)

(assert (=> b!7467015 m!8065472))

(assert (=> b!7467015 m!8065470))

(assert (=> b!7467015 m!8065472))

(declare-fun m!8065474 () Bool)

(assert (=> b!7467015 m!8065474))

(declare-fun m!8065476 () Bool)

(assert (=> b!7467015 m!8065476))

(declare-fun m!8065478 () Bool)

(assert (=> b!7467015 m!8065478))

(declare-fun m!8065480 () Bool)

(assert (=> b!7467015 m!8065480))

(declare-fun m!8065482 () Bool)

(assert (=> start!724130 m!8065482))

(declare-fun m!8065484 () Bool)

(assert (=> b!7466998 m!8065484))

(assert (=> b!7466998 m!8065484))

(declare-fun m!8065486 () Bool)

(assert (=> b!7466998 m!8065486))

(declare-fun m!8065488 () Bool)

(assert (=> b!7466998 m!8065488))

(declare-fun m!8065490 () Bool)

(assert (=> b!7466998 m!8065490))

(declare-fun m!8065492 () Bool)

(assert (=> b!7466998 m!8065492))

(declare-fun m!8065494 () Bool)

(assert (=> b!7466998 m!8065494))

(declare-fun m!8065496 () Bool)

(assert (=> b!7466998 m!8065496))

(declare-fun m!8065498 () Bool)

(assert (=> b!7466998 m!8065498))

(check-sat (not b!7466997) (not b!7467011) (not b!7467005) (not b!7467013) tp_is_empty!49407 (not b!7467017) (not start!724130) (not b!7467006) (not b!7467014) (not b!7467010) (not b!7466998) (not b!7467009) (not b!7467007) (not b!7467003) (not b!7467015) (not b!7467000) (not b!7467004) (not b!7467001) (not b!7467008) (not b!7467002))
(check-sat)
