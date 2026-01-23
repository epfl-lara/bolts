; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723654 () Bool)

(assert start!723654)

(declare-fun b!7457022 () Bool)

(assert (=> b!7457022 true))

(assert (=> b!7457022 true))

(assert (=> b!7457022 true))

(declare-fun lambda!461345 () Int)

(declare-fun lambda!461344 () Int)

(assert (=> b!7457022 (not (= lambda!461345 lambda!461344))))

(assert (=> b!7457022 true))

(assert (=> b!7457022 true))

(assert (=> b!7457022 true))

(declare-fun b!7457006 () Bool)

(declare-fun e!4450655 () Bool)

(declare-fun tp_is_empty!49323 () Bool)

(assert (=> b!7457006 (= e!4450655 tp_is_empty!49323)))

(declare-fun b!7457007 () Bool)

(declare-fun e!4450656 () Bool)

(declare-fun tp!2161005 () Bool)

(declare-fun tp!2161019 () Bool)

(assert (=> b!7457007 (= e!4450656 (and tp!2161005 tp!2161019))))

(declare-fun b!7457008 () Bool)

(assert (=> b!7457008 (= e!4450656 tp_is_empty!49323)))

(declare-fun b!7457010 () Bool)

(declare-fun tp!2161018 () Bool)

(declare-fun tp!2161009 () Bool)

(assert (=> b!7457010 (= e!4450656 (and tp!2161018 tp!2161009))))

(declare-fun b!7457011 () Bool)

(declare-fun e!4450654 () Bool)

(declare-fun e!4450657 () Bool)

(assert (=> b!7457011 (= e!4450654 e!4450657)))

(declare-fun res!2991172 () Bool)

(assert (=> b!7457011 (=> res!2991172 e!4450657)))

(declare-fun lt!2621863 () Bool)

(declare-fun lt!2621847 () Bool)

(declare-fun lt!2621870 () Bool)

(assert (=> b!7457011 (= res!2991172 (not (= lt!2621863 (or lt!2621847 lt!2621870))))))

(declare-datatypes ((C!39308 0))(
  ( (C!39309 (val!30052 Int)) )
))
(declare-datatypes ((Regex!19517 0))(
  ( (ElementMatch!19517 (c!1378680 C!39308)) (Concat!28362 (regOne!39546 Regex!19517) (regTwo!39546 Regex!19517)) (EmptyExpr!19517) (Star!19517 (reg!19846 Regex!19517)) (EmptyLang!19517) (Union!19517 (regOne!39547 Regex!19517) (regTwo!39547 Regex!19517)) )
))
(declare-fun lt!2621859 () Regex!19517)

(declare-datatypes ((List!72233 0))(
  ( (Nil!72109) (Cons!72109 (h!78557 C!39308) (t!386802 List!72233)) )
))
(declare-fun s!13591 () List!72233)

(declare-fun matchRSpec!4196 (Regex!19517 List!72233) Bool)

(assert (=> b!7457011 (= lt!2621870 (matchRSpec!4196 lt!2621859 s!13591))))

(declare-fun matchR!9281 (Regex!19517 List!72233) Bool)

(assert (=> b!7457011 (= lt!2621870 (matchR!9281 lt!2621859 s!13591))))

(declare-datatypes ((Unit!165869 0))(
  ( (Unit!165870) )
))
(declare-fun lt!2621854 () Unit!165869)

(declare-fun mainMatchTheorem!4190 (Regex!19517 List!72233) Unit!165869)

(assert (=> b!7457011 (= lt!2621854 (mainMatchTheorem!4190 lt!2621859 s!13591))))

(declare-fun lt!2621869 () Regex!19517)

(assert (=> b!7457011 (= lt!2621847 (matchRSpec!4196 lt!2621869 s!13591))))

(assert (=> b!7457011 (= lt!2621847 (matchR!9281 lt!2621869 s!13591))))

(declare-fun lt!2621865 () Unit!165869)

(assert (=> b!7457011 (= lt!2621865 (mainMatchTheorem!4190 lt!2621869 s!13591))))

(declare-fun b!7457012 () Bool)

(declare-fun e!4450663 () Unit!165869)

(declare-fun lt!2621852 () Unit!165869)

(assert (=> b!7457012 (= e!4450663 lt!2621852)))

(declare-fun call!685049 () Unit!165869)

(assert (=> b!7457012 (= lt!2621852 call!685049)))

(declare-fun call!685050 () Bool)

(assert (=> b!7457012 call!685050))

(declare-fun b!7457013 () Bool)

(declare-fun e!4450658 () Bool)

(declare-fun tp!2161007 () Bool)

(declare-fun tp!2161016 () Bool)

(assert (=> b!7457013 (= e!4450658 (and tp!2161007 tp!2161016))))

(declare-fun b!7457014 () Bool)

(declare-fun e!4450664 () Bool)

(assert (=> b!7457014 (= e!4450657 e!4450664)))

(declare-fun res!2991167 () Bool)

(assert (=> b!7457014 (=> res!2991167 e!4450664)))

(assert (=> b!7457014 (= res!2991167 (not lt!2621863))))

(declare-fun lt!2621855 () Unit!165869)

(assert (=> b!7457014 (= lt!2621855 e!4450663)))

(declare-fun c!1378679 () Bool)

(declare-fun lt!2621851 () Bool)

(assert (=> b!7457014 (= c!1378679 lt!2621851)))

(declare-fun b!7457015 () Bool)

(declare-fun e!4450659 () Bool)

(assert (=> b!7457015 (= e!4450659 e!4450654)))

(declare-fun res!2991169 () Bool)

(assert (=> b!7457015 (=> res!2991169 e!4450654)))

(declare-fun lt!2621871 () Bool)

(assert (=> b!7457015 (= res!2991169 (and (not lt!2621851) (not lt!2621871)))))

(declare-fun r2!5783 () Regex!19517)

(declare-datatypes ((tuple2!68488 0))(
  ( (tuple2!68489 (_1!37547 List!72233) (_2!37547 List!72233)) )
))
(declare-fun lt!2621846 () tuple2!68488)

(assert (=> b!7457015 (= lt!2621871 (matchRSpec!4196 r2!5783 (_1!37547 lt!2621846)))))

(assert (=> b!7457015 (= lt!2621871 (matchR!9281 r2!5783 (_1!37547 lt!2621846)))))

(declare-fun lt!2621866 () Unit!165869)

(assert (=> b!7457015 (= lt!2621866 (mainMatchTheorem!4190 r2!5783 (_1!37547 lt!2621846)))))

(declare-fun r1!5845 () Regex!19517)

(assert (=> b!7457015 (= lt!2621851 (matchRSpec!4196 r1!5845 (_1!37547 lt!2621846)))))

(assert (=> b!7457015 (= lt!2621851 (matchR!9281 r1!5845 (_1!37547 lt!2621846)))))

(declare-fun lt!2621860 () Unit!165869)

(assert (=> b!7457015 (= lt!2621860 (mainMatchTheorem!4190 r1!5845 (_1!37547 lt!2621846)))))

(declare-fun rTail!78 () Regex!19517)

(assert (=> b!7457015 (matchRSpec!4196 rTail!78 (_2!37547 lt!2621846))))

(declare-fun lt!2621862 () Unit!165869)

(assert (=> b!7457015 (= lt!2621862 (mainMatchTheorem!4190 rTail!78 (_2!37547 lt!2621846)))))

(declare-fun lt!2621867 () Regex!19517)

(assert (=> b!7457015 (matchRSpec!4196 lt!2621867 (_1!37547 lt!2621846))))

(declare-fun lt!2621858 () Unit!165869)

(assert (=> b!7457015 (= lt!2621858 (mainMatchTheorem!4190 lt!2621867 (_1!37547 lt!2621846)))))

(declare-fun b!7457016 () Bool)

(declare-fun tp!2161010 () Bool)

(declare-fun tp!2161015 () Bool)

(assert (=> b!7457016 (= e!4450655 (and tp!2161010 tp!2161015))))

(declare-fun bm!685043 () Bool)

(declare-fun call!685048 () List!72233)

(declare-fun ++!17175 (List!72233 List!72233) List!72233)

(assert (=> bm!685043 (= call!685048 (++!17175 (_1!37547 lt!2621846) (_2!37547 lt!2621846)))))

(declare-fun b!7457017 () Bool)

(declare-fun res!2991170 () Bool)

(declare-fun e!4450662 () Bool)

(assert (=> b!7457017 (=> (not res!2991170) (not e!4450662))))

(declare-fun validRegex!10031 (Regex!19517) Bool)

(assert (=> b!7457017 (= res!2991170 (validRegex!10031 r2!5783))))

(declare-fun b!7457018 () Bool)

(declare-fun e!4450661 () Bool)

(declare-fun tp!2161006 () Bool)

(assert (=> b!7457018 (= e!4450661 (and tp_is_empty!49323 tp!2161006))))

(declare-fun bm!685044 () Bool)

(assert (=> bm!685044 (= call!685050 (matchR!9281 (ite c!1378679 lt!2621869 lt!2621859) call!685048))))

(declare-fun b!7457019 () Bool)

(declare-fun tp!2161012 () Bool)

(assert (=> b!7457019 (= e!4450655 tp!2161012)))

(declare-fun b!7457020 () Bool)

(declare-fun tp!2161008 () Bool)

(declare-fun tp!2161014 () Bool)

(assert (=> b!7457020 (= e!4450658 (and tp!2161008 tp!2161014))))

(declare-fun b!7457021 () Bool)

(assert (=> b!7457021 (= e!4450658 tp_is_empty!49323)))

(declare-fun bm!685045 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!396 (Regex!19517 Regex!19517 List!72233 List!72233) Unit!165869)

(assert (=> bm!685045 (= call!685049 (lemmaTwoRegexMatchThenConcatMatchesConcatString!396 (ite c!1378679 r1!5845 r2!5783) rTail!78 (_1!37547 lt!2621846) (_2!37547 lt!2621846)))))

(declare-fun e!4450660 () Bool)

(assert (=> b!7457022 (= e!4450660 e!4450659)))

(declare-fun res!2991165 () Bool)

(assert (=> b!7457022 (=> res!2991165 e!4450659)))

(assert (=> b!7457022 (= res!2991165 (not (matchR!9281 lt!2621867 (_1!37547 lt!2621846))))))

(declare-datatypes ((Option!17076 0))(
  ( (None!17075) (Some!17075 (v!54204 tuple2!68488)) )
))
(declare-fun lt!2621849 () Option!17076)

(declare-fun get!25159 (Option!17076) tuple2!68488)

(assert (=> b!7457022 (= lt!2621846 (get!25159 lt!2621849))))

(declare-fun Exists!4138 (Int) Bool)

(assert (=> b!7457022 (= (Exists!4138 lambda!461344) (Exists!4138 lambda!461345))))

(declare-fun lt!2621857 () Unit!165869)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2474 (Regex!19517 Regex!19517 List!72233) Unit!165869)

(assert (=> b!7457022 (= lt!2621857 (lemmaExistCutMatchRandMatchRSpecEquivalent!2474 lt!2621867 rTail!78 s!13591))))

(declare-fun isDefined!13765 (Option!17076) Bool)

(assert (=> b!7457022 (= (isDefined!13765 lt!2621849) (Exists!4138 lambda!461344))))

(declare-fun findConcatSeparation!3198 (Regex!19517 Regex!19517 List!72233 List!72233 List!72233) Option!17076)

(assert (=> b!7457022 (= lt!2621849 (findConcatSeparation!3198 lt!2621867 rTail!78 Nil!72109 s!13591 s!13591))))

(declare-fun lt!2621861 () Unit!165869)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2956 (Regex!19517 Regex!19517 List!72233) Unit!165869)

(assert (=> b!7457022 (= lt!2621861 (lemmaFindConcatSeparationEquivalentToExists!2956 lt!2621867 rTail!78 s!13591))))

(declare-fun b!7457023 () Bool)

(declare-fun tp!2161013 () Bool)

(assert (=> b!7457023 (= e!4450656 tp!2161013)))

(declare-fun b!7457024 () Bool)

(declare-fun tp!2161011 () Bool)

(declare-fun tp!2161017 () Bool)

(assert (=> b!7457024 (= e!4450655 (and tp!2161011 tp!2161017))))

(declare-fun b!7457025 () Bool)

(declare-fun tp!2161004 () Bool)

(assert (=> b!7457025 (= e!4450658 tp!2161004)))

(declare-fun b!7457026 () Bool)

(assert (=> b!7457026 (= e!4450662 (not e!4450660))))

(declare-fun res!2991164 () Bool)

(assert (=> b!7457026 (=> res!2991164 e!4450660)))

(declare-fun lt!2621868 () Bool)

(assert (=> b!7457026 (= res!2991164 (not lt!2621868))))

(declare-fun lt!2621864 () Regex!19517)

(assert (=> b!7457026 (= lt!2621863 (matchRSpec!4196 lt!2621864 s!13591))))

(assert (=> b!7457026 (= lt!2621863 (matchR!9281 lt!2621864 s!13591))))

(declare-fun lt!2621853 () Unit!165869)

(assert (=> b!7457026 (= lt!2621853 (mainMatchTheorem!4190 lt!2621864 s!13591))))

(declare-fun lt!2621856 () Regex!19517)

(assert (=> b!7457026 (= lt!2621868 (matchRSpec!4196 lt!2621856 s!13591))))

(assert (=> b!7457026 (= lt!2621868 (matchR!9281 lt!2621856 s!13591))))

(declare-fun lt!2621850 () Unit!165869)

(assert (=> b!7457026 (= lt!2621850 (mainMatchTheorem!4190 lt!2621856 s!13591))))

(assert (=> b!7457026 (= lt!2621864 (Union!19517 lt!2621869 lt!2621859))))

(assert (=> b!7457026 (= lt!2621859 (Concat!28362 r2!5783 rTail!78))))

(assert (=> b!7457026 (= lt!2621869 (Concat!28362 r1!5845 rTail!78))))

(assert (=> b!7457026 (= lt!2621856 (Concat!28362 lt!2621867 rTail!78))))

(assert (=> b!7457026 (= lt!2621867 (Union!19517 r1!5845 r2!5783))))

(declare-fun b!7457027 () Bool)

(declare-fun res!2991166 () Bool)

(assert (=> b!7457027 (=> res!2991166 e!4450659)))

(assert (=> b!7457027 (= res!2991166 (not (matchR!9281 rTail!78 (_2!37547 lt!2621846))))))

(declare-fun res!2991171 () Bool)

(assert (=> start!723654 (=> (not res!2991171) (not e!4450662))))

(assert (=> start!723654 (= res!2991171 (validRegex!10031 r1!5845))))

(assert (=> start!723654 e!4450662))

(assert (=> start!723654 e!4450656))

(assert (=> start!723654 e!4450658))

(assert (=> start!723654 e!4450655))

(assert (=> start!723654 e!4450661))

(declare-fun b!7457009 () Bool)

(declare-fun res!2991168 () Bool)

(assert (=> b!7457009 (=> (not res!2991168) (not e!4450662))))

(assert (=> b!7457009 (= res!2991168 (validRegex!10031 rTail!78))))

(declare-fun b!7457028 () Bool)

(assert (=> b!7457028 (= e!4450664 (validRegex!10031 lt!2621856))))

(declare-fun b!7457029 () Bool)

(declare-fun lt!2621848 () Unit!165869)

(assert (=> b!7457029 (= e!4450663 lt!2621848)))

(assert (=> b!7457029 (= lt!2621848 call!685049)))

(assert (=> b!7457029 call!685050))

(assert (= (and start!723654 res!2991171) b!7457017))

(assert (= (and b!7457017 res!2991170) b!7457009))

(assert (= (and b!7457009 res!2991168) b!7457026))

(assert (= (and b!7457026 (not res!2991164)) b!7457022))

(assert (= (and b!7457022 (not res!2991165)) b!7457027))

(assert (= (and b!7457027 (not res!2991166)) b!7457015))

(assert (= (and b!7457015 (not res!2991169)) b!7457011))

(assert (= (and b!7457011 (not res!2991172)) b!7457014))

(assert (= (and b!7457014 c!1378679) b!7457029))

(assert (= (and b!7457014 (not c!1378679)) b!7457012))

(assert (= (or b!7457029 b!7457012) bm!685045))

(assert (= (or b!7457029 b!7457012) bm!685043))

(assert (= (or b!7457029 b!7457012) bm!685044))

(assert (= (and b!7457014 (not res!2991167)) b!7457028))

(get-info :version)

(assert (= (and start!723654 ((_ is ElementMatch!19517) r1!5845)) b!7457008))

(assert (= (and start!723654 ((_ is Concat!28362) r1!5845)) b!7457010))

(assert (= (and start!723654 ((_ is Star!19517) r1!5845)) b!7457023))

(assert (= (and start!723654 ((_ is Union!19517) r1!5845)) b!7457007))

(assert (= (and start!723654 ((_ is ElementMatch!19517) r2!5783)) b!7457021))

(assert (= (and start!723654 ((_ is Concat!28362) r2!5783)) b!7457020))

(assert (= (and start!723654 ((_ is Star!19517) r2!5783)) b!7457025))

(assert (= (and start!723654 ((_ is Union!19517) r2!5783)) b!7457013))

(assert (= (and start!723654 ((_ is ElementMatch!19517) rTail!78)) b!7457006))

(assert (= (and start!723654 ((_ is Concat!28362) rTail!78)) b!7457024))

(assert (= (and start!723654 ((_ is Star!19517) rTail!78)) b!7457019))

(assert (= (and start!723654 ((_ is Union!19517) rTail!78)) b!7457016))

(assert (= (and start!723654 ((_ is Cons!72109) s!13591)) b!7457018))

(declare-fun m!8060424 () Bool)

(assert (=> bm!685044 m!8060424))

(declare-fun m!8060426 () Bool)

(assert (=> b!7457027 m!8060426))

(declare-fun m!8060428 () Bool)

(assert (=> bm!685043 m!8060428))

(declare-fun m!8060430 () Bool)

(assert (=> bm!685045 m!8060430))

(declare-fun m!8060432 () Bool)

(assert (=> b!7457028 m!8060432))

(declare-fun m!8060434 () Bool)

(assert (=> b!7457011 m!8060434))

(declare-fun m!8060436 () Bool)

(assert (=> b!7457011 m!8060436))

(declare-fun m!8060438 () Bool)

(assert (=> b!7457011 m!8060438))

(declare-fun m!8060440 () Bool)

(assert (=> b!7457011 m!8060440))

(declare-fun m!8060442 () Bool)

(assert (=> b!7457011 m!8060442))

(declare-fun m!8060444 () Bool)

(assert (=> b!7457011 m!8060444))

(declare-fun m!8060446 () Bool)

(assert (=> b!7457022 m!8060446))

(declare-fun m!8060448 () Bool)

(assert (=> b!7457022 m!8060448))

(declare-fun m!8060450 () Bool)

(assert (=> b!7457022 m!8060450))

(declare-fun m!8060452 () Bool)

(assert (=> b!7457022 m!8060452))

(declare-fun m!8060454 () Bool)

(assert (=> b!7457022 m!8060454))

(declare-fun m!8060456 () Bool)

(assert (=> b!7457022 m!8060456))

(declare-fun m!8060458 () Bool)

(assert (=> b!7457022 m!8060458))

(declare-fun m!8060460 () Bool)

(assert (=> b!7457022 m!8060460))

(assert (=> b!7457022 m!8060448))

(declare-fun m!8060462 () Bool)

(assert (=> b!7457015 m!8060462))

(declare-fun m!8060464 () Bool)

(assert (=> b!7457015 m!8060464))

(declare-fun m!8060466 () Bool)

(assert (=> b!7457015 m!8060466))

(declare-fun m!8060468 () Bool)

(assert (=> b!7457015 m!8060468))

(declare-fun m!8060470 () Bool)

(assert (=> b!7457015 m!8060470))

(declare-fun m!8060472 () Bool)

(assert (=> b!7457015 m!8060472))

(declare-fun m!8060474 () Bool)

(assert (=> b!7457015 m!8060474))

(declare-fun m!8060476 () Bool)

(assert (=> b!7457015 m!8060476))

(declare-fun m!8060478 () Bool)

(assert (=> b!7457015 m!8060478))

(declare-fun m!8060480 () Bool)

(assert (=> b!7457015 m!8060480))

(declare-fun m!8060482 () Bool)

(assert (=> b!7457026 m!8060482))

(declare-fun m!8060484 () Bool)

(assert (=> b!7457026 m!8060484))

(declare-fun m!8060486 () Bool)

(assert (=> b!7457026 m!8060486))

(declare-fun m!8060488 () Bool)

(assert (=> b!7457026 m!8060488))

(declare-fun m!8060490 () Bool)

(assert (=> b!7457026 m!8060490))

(declare-fun m!8060492 () Bool)

(assert (=> b!7457026 m!8060492))

(declare-fun m!8060494 () Bool)

(assert (=> b!7457009 m!8060494))

(declare-fun m!8060496 () Bool)

(assert (=> start!723654 m!8060496))

(declare-fun m!8060498 () Bool)

(assert (=> b!7457017 m!8060498))

(check-sat (not bm!685044) (not b!7457007) (not b!7457019) (not b!7457028) (not b!7457018) (not b!7457025) (not b!7457015) (not bm!685045) (not b!7457016) (not b!7457011) (not b!7457020) (not b!7457022) tp_is_empty!49323 (not b!7457010) (not b!7457027) (not b!7457024) (not bm!685043) (not b!7457009) (not start!723654) (not b!7457013) (not b!7457017) (not b!7457023) (not b!7457026))
(check-sat)
(get-model)

(declare-fun bs!1928540 () Bool)

(declare-fun b!7457098 () Bool)

(assert (= bs!1928540 (and b!7457098 b!7457022)))

(declare-fun lambda!461350 () Int)

(assert (=> bs!1928540 (not (= lambda!461350 lambda!461344))))

(assert (=> bs!1928540 (not (= lambda!461350 lambda!461345))))

(assert (=> b!7457098 true))

(assert (=> b!7457098 true))

(declare-fun bs!1928541 () Bool)

(declare-fun b!7457099 () Bool)

(assert (= bs!1928541 (and b!7457099 b!7457022)))

(declare-fun lambda!461351 () Int)

(assert (=> bs!1928541 (not (= lambda!461351 lambda!461344))))

(assert (=> bs!1928541 (= (and (= (regOne!39546 lt!2621859) lt!2621867) (= (regTwo!39546 lt!2621859) rTail!78)) (= lambda!461351 lambda!461345))))

(declare-fun bs!1928542 () Bool)

(assert (= bs!1928542 (and b!7457099 b!7457098)))

(assert (=> bs!1928542 (not (= lambda!461351 lambda!461350))))

(assert (=> b!7457099 true))

(assert (=> b!7457099 true))

(declare-fun b!7457094 () Bool)

(declare-fun e!4450701 () Bool)

(declare-fun call!685058 () Bool)

(assert (=> b!7457094 (= e!4450701 call!685058)))

(declare-fun b!7457095 () Bool)

(declare-fun e!4450702 () Bool)

(declare-fun e!4450703 () Bool)

(assert (=> b!7457095 (= e!4450702 e!4450703)))

(declare-fun res!2991207 () Bool)

(assert (=> b!7457095 (= res!2991207 (matchRSpec!4196 (regOne!39547 lt!2621859) s!13591))))

(assert (=> b!7457095 (=> res!2991207 e!4450703)))

(declare-fun c!1378698 () Bool)

(declare-fun call!685057 () Bool)

(declare-fun bm!685052 () Bool)

(assert (=> bm!685052 (= call!685057 (Exists!4138 (ite c!1378698 lambda!461350 lambda!461351)))))

(declare-fun b!7457097 () Bool)

(declare-fun c!1378695 () Bool)

(assert (=> b!7457097 (= c!1378695 ((_ is Union!19517) lt!2621859))))

(declare-fun e!4450697 () Bool)

(assert (=> b!7457097 (= e!4450697 e!4450702)))

(declare-fun e!4450699 () Bool)

(assert (=> b!7457098 (= e!4450699 call!685057)))

(declare-fun e!4450700 () Bool)

(assert (=> b!7457099 (= e!4450700 call!685057)))

(declare-fun b!7457100 () Bool)

(assert (=> b!7457100 (= e!4450697 (= s!13591 (Cons!72109 (c!1378680 lt!2621859) Nil!72109)))))

(declare-fun b!7457101 () Bool)

(declare-fun c!1378697 () Bool)

(assert (=> b!7457101 (= c!1378697 ((_ is ElementMatch!19517) lt!2621859))))

(declare-fun e!4450698 () Bool)

(assert (=> b!7457101 (= e!4450698 e!4450697)))

(declare-fun b!7457096 () Bool)

(assert (=> b!7457096 (= e!4450702 e!4450700)))

(assert (=> b!7457096 (= c!1378698 ((_ is Star!19517) lt!2621859))))

(declare-fun d!2297640 () Bool)

(declare-fun c!1378696 () Bool)

(assert (=> d!2297640 (= c!1378696 ((_ is EmptyExpr!19517) lt!2621859))))

(assert (=> d!2297640 (= (matchRSpec!4196 lt!2621859 s!13591) e!4450701)))

(declare-fun b!7457102 () Bool)

(assert (=> b!7457102 (= e!4450701 e!4450698)))

(declare-fun res!2991205 () Bool)

(assert (=> b!7457102 (= res!2991205 (not ((_ is EmptyLang!19517) lt!2621859)))))

(assert (=> b!7457102 (=> (not res!2991205) (not e!4450698))))

(declare-fun bm!685053 () Bool)

(declare-fun isEmpty!41119 (List!72233) Bool)

(assert (=> bm!685053 (= call!685058 (isEmpty!41119 s!13591))))

(declare-fun b!7457103 () Bool)

(declare-fun res!2991206 () Bool)

(assert (=> b!7457103 (=> res!2991206 e!4450699)))

(assert (=> b!7457103 (= res!2991206 call!685058)))

(assert (=> b!7457103 (= e!4450700 e!4450699)))

(declare-fun b!7457104 () Bool)

(assert (=> b!7457104 (= e!4450703 (matchRSpec!4196 (regTwo!39547 lt!2621859) s!13591))))

(assert (= (and d!2297640 c!1378696) b!7457094))

(assert (= (and d!2297640 (not c!1378696)) b!7457102))

(assert (= (and b!7457102 res!2991205) b!7457101))

(assert (= (and b!7457101 c!1378697) b!7457100))

(assert (= (and b!7457101 (not c!1378697)) b!7457097))

(assert (= (and b!7457097 c!1378695) b!7457095))

(assert (= (and b!7457097 (not c!1378695)) b!7457096))

(assert (= (and b!7457095 (not res!2991207)) b!7457104))

(assert (= (and b!7457096 c!1378698) b!7457103))

(assert (= (and b!7457096 (not c!1378698)) b!7457099))

(assert (= (and b!7457103 (not res!2991206)) b!7457098))

(assert (= (or b!7457098 b!7457099) bm!685052))

(assert (= (or b!7457094 b!7457103) bm!685053))

(declare-fun m!8060500 () Bool)

(assert (=> b!7457095 m!8060500))

(declare-fun m!8060502 () Bool)

(assert (=> bm!685052 m!8060502))

(declare-fun m!8060504 () Bool)

(assert (=> bm!685053 m!8060504))

(declare-fun m!8060506 () Bool)

(assert (=> b!7457104 m!8060506))

(assert (=> b!7457011 d!2297640))

(declare-fun d!2297644 () Bool)

(assert (=> d!2297644 (= (matchR!9281 lt!2621869 s!13591) (matchRSpec!4196 lt!2621869 s!13591))))

(declare-fun lt!2621877 () Unit!165869)

(declare-fun choose!57638 (Regex!19517 List!72233) Unit!165869)

(assert (=> d!2297644 (= lt!2621877 (choose!57638 lt!2621869 s!13591))))

(assert (=> d!2297644 (validRegex!10031 lt!2621869)))

(assert (=> d!2297644 (= (mainMatchTheorem!4190 lt!2621869 s!13591) lt!2621877)))

(declare-fun bs!1928546 () Bool)

(assert (= bs!1928546 d!2297644))

(assert (=> bs!1928546 m!8060444))

(assert (=> bs!1928546 m!8060434))

(declare-fun m!8060530 () Bool)

(assert (=> bs!1928546 m!8060530))

(declare-fun m!8060532 () Bool)

(assert (=> bs!1928546 m!8060532))

(assert (=> b!7457011 d!2297644))

(declare-fun b!7457165 () Bool)

(declare-fun res!2991249 () Bool)

(declare-fun e!4450734 () Bool)

(assert (=> b!7457165 (=> res!2991249 e!4450734)))

(declare-fun e!4450737 () Bool)

(assert (=> b!7457165 (= res!2991249 e!4450737)))

(declare-fun res!2991244 () Bool)

(assert (=> b!7457165 (=> (not res!2991244) (not e!4450737))))

(declare-fun lt!2621884 () Bool)

(assert (=> b!7457165 (= res!2991244 lt!2621884)))

(declare-fun b!7457166 () Bool)

(declare-fun e!4450740 () Bool)

(declare-fun nullable!8503 (Regex!19517) Bool)

(assert (=> b!7457166 (= e!4450740 (nullable!8503 lt!2621859))))

(declare-fun b!7457167 () Bool)

(declare-fun res!2991246 () Bool)

(assert (=> b!7457167 (=> (not res!2991246) (not e!4450737))))

(declare-fun tail!14871 (List!72233) List!72233)

(assert (=> b!7457167 (= res!2991246 (isEmpty!41119 (tail!14871 s!13591)))))

(declare-fun b!7457168 () Bool)

(declare-fun e!4450735 () Bool)

(declare-fun e!4450739 () Bool)

(assert (=> b!7457168 (= e!4450735 e!4450739)))

(declare-fun res!2991251 () Bool)

(assert (=> b!7457168 (=> res!2991251 e!4450739)))

(declare-fun call!685063 () Bool)

(assert (=> b!7457168 (= res!2991251 call!685063)))

(declare-fun d!2297654 () Bool)

(declare-fun e!4450738 () Bool)

(assert (=> d!2297654 e!4450738))

(declare-fun c!1378713 () Bool)

(assert (=> d!2297654 (= c!1378713 ((_ is EmptyExpr!19517) lt!2621859))))

(assert (=> d!2297654 (= lt!2621884 e!4450740)))

(declare-fun c!1378711 () Bool)

(assert (=> d!2297654 (= c!1378711 (isEmpty!41119 s!13591))))

(assert (=> d!2297654 (validRegex!10031 lt!2621859)))

(assert (=> d!2297654 (= (matchR!9281 lt!2621859 s!13591) lt!2621884)))

(declare-fun b!7457169 () Bool)

(declare-fun head!15302 (List!72233) C!39308)

(assert (=> b!7457169 (= e!4450739 (not (= (head!15302 s!13591) (c!1378680 lt!2621859))))))

(declare-fun b!7457170 () Bool)

(declare-fun e!4450736 () Bool)

(assert (=> b!7457170 (= e!4450738 e!4450736)))

(declare-fun c!1378712 () Bool)

(assert (=> b!7457170 (= c!1378712 ((_ is EmptyLang!19517) lt!2621859))))

(declare-fun b!7457171 () Bool)

(assert (=> b!7457171 (= e!4450737 (= (head!15302 s!13591) (c!1378680 lt!2621859)))))

(declare-fun b!7457172 () Bool)

(declare-fun res!2991248 () Bool)

(assert (=> b!7457172 (=> (not res!2991248) (not e!4450737))))

(assert (=> b!7457172 (= res!2991248 (not call!685063))))

(declare-fun b!7457173 () Bool)

(assert (=> b!7457173 (= e!4450734 e!4450735)))

(declare-fun res!2991245 () Bool)

(assert (=> b!7457173 (=> (not res!2991245) (not e!4450735))))

(assert (=> b!7457173 (= res!2991245 (not lt!2621884))))

(declare-fun b!7457174 () Bool)

(assert (=> b!7457174 (= e!4450738 (= lt!2621884 call!685063))))

(declare-fun b!7457175 () Bool)

(declare-fun res!2991247 () Bool)

(assert (=> b!7457175 (=> res!2991247 e!4450734)))

(assert (=> b!7457175 (= res!2991247 (not ((_ is ElementMatch!19517) lt!2621859)))))

(assert (=> b!7457175 (= e!4450736 e!4450734)))

(declare-fun bm!685058 () Bool)

(assert (=> bm!685058 (= call!685063 (isEmpty!41119 s!13591))))

(declare-fun b!7457176 () Bool)

(declare-fun res!2991250 () Bool)

(assert (=> b!7457176 (=> res!2991250 e!4450739)))

(assert (=> b!7457176 (= res!2991250 (not (isEmpty!41119 (tail!14871 s!13591))))))

(declare-fun b!7457177 () Bool)

(declare-fun derivativeStep!5562 (Regex!19517 C!39308) Regex!19517)

(assert (=> b!7457177 (= e!4450740 (matchR!9281 (derivativeStep!5562 lt!2621859 (head!15302 s!13591)) (tail!14871 s!13591)))))

(declare-fun b!7457178 () Bool)

(assert (=> b!7457178 (= e!4450736 (not lt!2621884))))

(assert (= (and d!2297654 c!1378711) b!7457166))

(assert (= (and d!2297654 (not c!1378711)) b!7457177))

(assert (= (and d!2297654 c!1378713) b!7457174))

(assert (= (and d!2297654 (not c!1378713)) b!7457170))

(assert (= (and b!7457170 c!1378712) b!7457178))

(assert (= (and b!7457170 (not c!1378712)) b!7457175))

(assert (= (and b!7457175 (not res!2991247)) b!7457165))

(assert (= (and b!7457165 res!2991244) b!7457172))

(assert (= (and b!7457172 res!2991248) b!7457167))

(assert (= (and b!7457167 res!2991246) b!7457171))

(assert (= (and b!7457165 (not res!2991249)) b!7457173))

(assert (= (and b!7457173 res!2991245) b!7457168))

(assert (= (and b!7457168 (not res!2991251)) b!7457176))

(assert (= (and b!7457176 (not res!2991250)) b!7457169))

(assert (= (or b!7457174 b!7457168 b!7457172) bm!685058))

(declare-fun m!8060556 () Bool)

(assert (=> b!7457177 m!8060556))

(assert (=> b!7457177 m!8060556))

(declare-fun m!8060558 () Bool)

(assert (=> b!7457177 m!8060558))

(declare-fun m!8060560 () Bool)

(assert (=> b!7457177 m!8060560))

(assert (=> b!7457177 m!8060558))

(assert (=> b!7457177 m!8060560))

(declare-fun m!8060562 () Bool)

(assert (=> b!7457177 m!8060562))

(assert (=> b!7457171 m!8060556))

(assert (=> d!2297654 m!8060504))

(declare-fun m!8060564 () Bool)

(assert (=> d!2297654 m!8060564))

(assert (=> b!7457176 m!8060560))

(assert (=> b!7457176 m!8060560))

(declare-fun m!8060566 () Bool)

(assert (=> b!7457176 m!8060566))

(declare-fun m!8060568 () Bool)

(assert (=> b!7457166 m!8060568))

(assert (=> bm!685058 m!8060504))

(assert (=> b!7457167 m!8060560))

(assert (=> b!7457167 m!8060560))

(assert (=> b!7457167 m!8060566))

(assert (=> b!7457169 m!8060556))

(assert (=> b!7457011 d!2297654))

(declare-fun bs!1928549 () Bool)

(declare-fun b!7457183 () Bool)

(assert (= bs!1928549 (and b!7457183 b!7457022)))

(declare-fun lambda!461355 () Int)

(assert (=> bs!1928549 (not (= lambda!461355 lambda!461344))))

(assert (=> bs!1928549 (not (= lambda!461355 lambda!461345))))

(declare-fun bs!1928550 () Bool)

(assert (= bs!1928550 (and b!7457183 b!7457098)))

(assert (=> bs!1928550 (= (and (= (reg!19846 lt!2621869) (reg!19846 lt!2621859)) (= lt!2621869 lt!2621859)) (= lambda!461355 lambda!461350))))

(declare-fun bs!1928551 () Bool)

(assert (= bs!1928551 (and b!7457183 b!7457099)))

(assert (=> bs!1928551 (not (= lambda!461355 lambda!461351))))

(assert (=> b!7457183 true))

(assert (=> b!7457183 true))

(declare-fun bs!1928552 () Bool)

(declare-fun b!7457184 () Bool)

(assert (= bs!1928552 (and b!7457184 b!7457098)))

(declare-fun lambda!461356 () Int)

(assert (=> bs!1928552 (not (= lambda!461356 lambda!461350))))

(declare-fun bs!1928553 () Bool)

(assert (= bs!1928553 (and b!7457184 b!7457022)))

(assert (=> bs!1928553 (= (and (= (regOne!39546 lt!2621869) lt!2621867) (= (regTwo!39546 lt!2621869) rTail!78)) (= lambda!461356 lambda!461345))))

(declare-fun bs!1928554 () Bool)

(assert (= bs!1928554 (and b!7457184 b!7457099)))

(assert (=> bs!1928554 (= (and (= (regOne!39546 lt!2621869) (regOne!39546 lt!2621859)) (= (regTwo!39546 lt!2621869) (regTwo!39546 lt!2621859))) (= lambda!461356 lambda!461351))))

(declare-fun bs!1928555 () Bool)

(assert (= bs!1928555 (and b!7457184 b!7457183)))

(assert (=> bs!1928555 (not (= lambda!461356 lambda!461355))))

(assert (=> bs!1928553 (not (= lambda!461356 lambda!461344))))

(assert (=> b!7457184 true))

(assert (=> b!7457184 true))

(declare-fun b!7457179 () Bool)

(declare-fun e!4450745 () Bool)

(declare-fun call!685065 () Bool)

(assert (=> b!7457179 (= e!4450745 call!685065)))

(declare-fun b!7457180 () Bool)

(declare-fun e!4450746 () Bool)

(declare-fun e!4450747 () Bool)

(assert (=> b!7457180 (= e!4450746 e!4450747)))

(declare-fun res!2991254 () Bool)

(assert (=> b!7457180 (= res!2991254 (matchRSpec!4196 (regOne!39547 lt!2621869) s!13591))))

(assert (=> b!7457180 (=> res!2991254 e!4450747)))

(declare-fun call!685064 () Bool)

(declare-fun bm!685059 () Bool)

(declare-fun c!1378717 () Bool)

(assert (=> bm!685059 (= call!685064 (Exists!4138 (ite c!1378717 lambda!461355 lambda!461356)))))

(declare-fun b!7457182 () Bool)

(declare-fun c!1378714 () Bool)

(assert (=> b!7457182 (= c!1378714 ((_ is Union!19517) lt!2621869))))

(declare-fun e!4450741 () Bool)

(assert (=> b!7457182 (= e!4450741 e!4450746)))

(declare-fun e!4450743 () Bool)

(assert (=> b!7457183 (= e!4450743 call!685064)))

(declare-fun e!4450744 () Bool)

(assert (=> b!7457184 (= e!4450744 call!685064)))

(declare-fun b!7457185 () Bool)

(assert (=> b!7457185 (= e!4450741 (= s!13591 (Cons!72109 (c!1378680 lt!2621869) Nil!72109)))))

(declare-fun b!7457186 () Bool)

(declare-fun c!1378716 () Bool)

(assert (=> b!7457186 (= c!1378716 ((_ is ElementMatch!19517) lt!2621869))))

(declare-fun e!4450742 () Bool)

(assert (=> b!7457186 (= e!4450742 e!4450741)))

(declare-fun b!7457181 () Bool)

(assert (=> b!7457181 (= e!4450746 e!4450744)))

(assert (=> b!7457181 (= c!1378717 ((_ is Star!19517) lt!2621869))))

(declare-fun d!2297660 () Bool)

(declare-fun c!1378715 () Bool)

(assert (=> d!2297660 (= c!1378715 ((_ is EmptyExpr!19517) lt!2621869))))

(assert (=> d!2297660 (= (matchRSpec!4196 lt!2621869 s!13591) e!4450745)))

(declare-fun b!7457187 () Bool)

(assert (=> b!7457187 (= e!4450745 e!4450742)))

(declare-fun res!2991252 () Bool)

(assert (=> b!7457187 (= res!2991252 (not ((_ is EmptyLang!19517) lt!2621869)))))

(assert (=> b!7457187 (=> (not res!2991252) (not e!4450742))))

(declare-fun bm!685060 () Bool)

(assert (=> bm!685060 (= call!685065 (isEmpty!41119 s!13591))))

(declare-fun b!7457188 () Bool)

(declare-fun res!2991253 () Bool)

(assert (=> b!7457188 (=> res!2991253 e!4450743)))

(assert (=> b!7457188 (= res!2991253 call!685065)))

(assert (=> b!7457188 (= e!4450744 e!4450743)))

(declare-fun b!7457189 () Bool)

(assert (=> b!7457189 (= e!4450747 (matchRSpec!4196 (regTwo!39547 lt!2621869) s!13591))))

(assert (= (and d!2297660 c!1378715) b!7457179))

(assert (= (and d!2297660 (not c!1378715)) b!7457187))

(assert (= (and b!7457187 res!2991252) b!7457186))

(assert (= (and b!7457186 c!1378716) b!7457185))

(assert (= (and b!7457186 (not c!1378716)) b!7457182))

(assert (= (and b!7457182 c!1378714) b!7457180))

(assert (= (and b!7457182 (not c!1378714)) b!7457181))

(assert (= (and b!7457180 (not res!2991254)) b!7457189))

(assert (= (and b!7457181 c!1378717) b!7457188))

(assert (= (and b!7457181 (not c!1378717)) b!7457184))

(assert (= (and b!7457188 (not res!2991253)) b!7457183))

(assert (= (or b!7457183 b!7457184) bm!685059))

(assert (= (or b!7457179 b!7457188) bm!685060))

(declare-fun m!8060570 () Bool)

(assert (=> b!7457180 m!8060570))

(declare-fun m!8060572 () Bool)

(assert (=> bm!685059 m!8060572))

(assert (=> bm!685060 m!8060504))

(declare-fun m!8060574 () Bool)

(assert (=> b!7457189 m!8060574))

(assert (=> b!7457011 d!2297660))

(declare-fun b!7457190 () Bool)

(declare-fun res!2991260 () Bool)

(declare-fun e!4450748 () Bool)

(assert (=> b!7457190 (=> res!2991260 e!4450748)))

(declare-fun e!4450751 () Bool)

(assert (=> b!7457190 (= res!2991260 e!4450751)))

(declare-fun res!2991255 () Bool)

(assert (=> b!7457190 (=> (not res!2991255) (not e!4450751))))

(declare-fun lt!2621887 () Bool)

(assert (=> b!7457190 (= res!2991255 lt!2621887)))

(declare-fun b!7457191 () Bool)

(declare-fun e!4450754 () Bool)

(assert (=> b!7457191 (= e!4450754 (nullable!8503 lt!2621869))))

(declare-fun b!7457192 () Bool)

(declare-fun res!2991257 () Bool)

(assert (=> b!7457192 (=> (not res!2991257) (not e!4450751))))

(assert (=> b!7457192 (= res!2991257 (isEmpty!41119 (tail!14871 s!13591)))))

(declare-fun b!7457193 () Bool)

(declare-fun e!4450749 () Bool)

(declare-fun e!4450753 () Bool)

(assert (=> b!7457193 (= e!4450749 e!4450753)))

(declare-fun res!2991262 () Bool)

(assert (=> b!7457193 (=> res!2991262 e!4450753)))

(declare-fun call!685066 () Bool)

(assert (=> b!7457193 (= res!2991262 call!685066)))

(declare-fun d!2297662 () Bool)

(declare-fun e!4450752 () Bool)

(assert (=> d!2297662 e!4450752))

(declare-fun c!1378720 () Bool)

(assert (=> d!2297662 (= c!1378720 ((_ is EmptyExpr!19517) lt!2621869))))

(assert (=> d!2297662 (= lt!2621887 e!4450754)))

(declare-fun c!1378718 () Bool)

(assert (=> d!2297662 (= c!1378718 (isEmpty!41119 s!13591))))

(assert (=> d!2297662 (validRegex!10031 lt!2621869)))

(assert (=> d!2297662 (= (matchR!9281 lt!2621869 s!13591) lt!2621887)))

(declare-fun b!7457194 () Bool)

(assert (=> b!7457194 (= e!4450753 (not (= (head!15302 s!13591) (c!1378680 lt!2621869))))))

(declare-fun b!7457195 () Bool)

(declare-fun e!4450750 () Bool)

(assert (=> b!7457195 (= e!4450752 e!4450750)))

(declare-fun c!1378719 () Bool)

(assert (=> b!7457195 (= c!1378719 ((_ is EmptyLang!19517) lt!2621869))))

(declare-fun b!7457196 () Bool)

(assert (=> b!7457196 (= e!4450751 (= (head!15302 s!13591) (c!1378680 lt!2621869)))))

(declare-fun b!7457197 () Bool)

(declare-fun res!2991259 () Bool)

(assert (=> b!7457197 (=> (not res!2991259) (not e!4450751))))

(assert (=> b!7457197 (= res!2991259 (not call!685066))))

(declare-fun b!7457198 () Bool)

(assert (=> b!7457198 (= e!4450748 e!4450749)))

(declare-fun res!2991256 () Bool)

(assert (=> b!7457198 (=> (not res!2991256) (not e!4450749))))

(assert (=> b!7457198 (= res!2991256 (not lt!2621887))))

(declare-fun b!7457199 () Bool)

(assert (=> b!7457199 (= e!4450752 (= lt!2621887 call!685066))))

(declare-fun b!7457200 () Bool)

(declare-fun res!2991258 () Bool)

(assert (=> b!7457200 (=> res!2991258 e!4450748)))

(assert (=> b!7457200 (= res!2991258 (not ((_ is ElementMatch!19517) lt!2621869)))))

(assert (=> b!7457200 (= e!4450750 e!4450748)))

(declare-fun bm!685061 () Bool)

(assert (=> bm!685061 (= call!685066 (isEmpty!41119 s!13591))))

(declare-fun b!7457201 () Bool)

(declare-fun res!2991261 () Bool)

(assert (=> b!7457201 (=> res!2991261 e!4450753)))

(assert (=> b!7457201 (= res!2991261 (not (isEmpty!41119 (tail!14871 s!13591))))))

(declare-fun b!7457202 () Bool)

(assert (=> b!7457202 (= e!4450754 (matchR!9281 (derivativeStep!5562 lt!2621869 (head!15302 s!13591)) (tail!14871 s!13591)))))

(declare-fun b!7457203 () Bool)

(assert (=> b!7457203 (= e!4450750 (not lt!2621887))))

(assert (= (and d!2297662 c!1378718) b!7457191))

(assert (= (and d!2297662 (not c!1378718)) b!7457202))

(assert (= (and d!2297662 c!1378720) b!7457199))

(assert (= (and d!2297662 (not c!1378720)) b!7457195))

(assert (= (and b!7457195 c!1378719) b!7457203))

(assert (= (and b!7457195 (not c!1378719)) b!7457200))

(assert (= (and b!7457200 (not res!2991258)) b!7457190))

(assert (= (and b!7457190 res!2991255) b!7457197))

(assert (= (and b!7457197 res!2991259) b!7457192))

(assert (= (and b!7457192 res!2991257) b!7457196))

(assert (= (and b!7457190 (not res!2991260)) b!7457198))

(assert (= (and b!7457198 res!2991256) b!7457193))

(assert (= (and b!7457193 (not res!2991262)) b!7457201))

(assert (= (and b!7457201 (not res!2991261)) b!7457194))

(assert (= (or b!7457199 b!7457193 b!7457197) bm!685061))

(assert (=> b!7457202 m!8060556))

(assert (=> b!7457202 m!8060556))

(declare-fun m!8060576 () Bool)

(assert (=> b!7457202 m!8060576))

(assert (=> b!7457202 m!8060560))

(assert (=> b!7457202 m!8060576))

(assert (=> b!7457202 m!8060560))

(declare-fun m!8060578 () Bool)

(assert (=> b!7457202 m!8060578))

(assert (=> b!7457196 m!8060556))

(assert (=> d!2297662 m!8060504))

(assert (=> d!2297662 m!8060532))

(assert (=> b!7457201 m!8060560))

(assert (=> b!7457201 m!8060560))

(assert (=> b!7457201 m!8060566))

(declare-fun m!8060580 () Bool)

(assert (=> b!7457191 m!8060580))

(assert (=> bm!685061 m!8060504))

(assert (=> b!7457192 m!8060560))

(assert (=> b!7457192 m!8060560))

(assert (=> b!7457192 m!8060566))

(assert (=> b!7457194 m!8060556))

(assert (=> b!7457011 d!2297662))

(declare-fun d!2297664 () Bool)

(assert (=> d!2297664 (= (matchR!9281 lt!2621859 s!13591) (matchRSpec!4196 lt!2621859 s!13591))))

(declare-fun lt!2621888 () Unit!165869)

(assert (=> d!2297664 (= lt!2621888 (choose!57638 lt!2621859 s!13591))))

(assert (=> d!2297664 (validRegex!10031 lt!2621859)))

(assert (=> d!2297664 (= (mainMatchTheorem!4190 lt!2621859 s!13591) lt!2621888)))

(declare-fun bs!1928556 () Bool)

(assert (= bs!1928556 d!2297664))

(assert (=> bs!1928556 m!8060436))

(assert (=> bs!1928556 m!8060442))

(declare-fun m!8060582 () Bool)

(assert (=> bs!1928556 m!8060582))

(assert (=> bs!1928556 m!8060564))

(assert (=> b!7457011 d!2297664))

(declare-fun d!2297666 () Bool)

(assert (=> d!2297666 (matchR!9281 (Concat!28362 (ite c!1378679 r1!5845 r2!5783) rTail!78) (++!17175 (_1!37547 lt!2621846) (_2!37547 lt!2621846)))))

(declare-fun lt!2621892 () Unit!165869)

(declare-fun choose!57642 (Regex!19517 Regex!19517 List!72233 List!72233) Unit!165869)

(assert (=> d!2297666 (= lt!2621892 (choose!57642 (ite c!1378679 r1!5845 r2!5783) rTail!78 (_1!37547 lt!2621846) (_2!37547 lt!2621846)))))

(declare-fun e!4450761 () Bool)

(assert (=> d!2297666 e!4450761))

(declare-fun res!2991273 () Bool)

(assert (=> d!2297666 (=> (not res!2991273) (not e!4450761))))

(assert (=> d!2297666 (= res!2991273 (validRegex!10031 (ite c!1378679 r1!5845 r2!5783)))))

(assert (=> d!2297666 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!396 (ite c!1378679 r1!5845 r2!5783) rTail!78 (_1!37547 lt!2621846) (_2!37547 lt!2621846)) lt!2621892)))

(declare-fun b!7457214 () Bool)

(assert (=> b!7457214 (= e!4450761 (validRegex!10031 rTail!78))))

(assert (= (and d!2297666 res!2991273) b!7457214))

(assert (=> d!2297666 m!8060428))

(assert (=> d!2297666 m!8060428))

(declare-fun m!8060584 () Bool)

(assert (=> d!2297666 m!8060584))

(declare-fun m!8060586 () Bool)

(assert (=> d!2297666 m!8060586))

(declare-fun m!8060588 () Bool)

(assert (=> d!2297666 m!8060588))

(assert (=> b!7457214 m!8060494))

(assert (=> bm!685045 d!2297666))

(declare-fun call!685073 () Bool)

(declare-fun c!1378726 () Bool)

(declare-fun c!1378725 () Bool)

(declare-fun bm!685068 () Bool)

(assert (=> bm!685068 (= call!685073 (validRegex!10031 (ite c!1378726 (reg!19846 rTail!78) (ite c!1378725 (regTwo!39547 rTail!78) (regTwo!39546 rTail!78)))))))

(declare-fun b!7457233 () Bool)

(declare-fun e!4450776 () Bool)

(declare-fun e!4450782 () Bool)

(assert (=> b!7457233 (= e!4450776 e!4450782)))

(declare-fun res!2991286 () Bool)

(assert (=> b!7457233 (=> (not res!2991286) (not e!4450782))))

(declare-fun call!685075 () Bool)

(assert (=> b!7457233 (= res!2991286 call!685075)))

(declare-fun b!7457234 () Bool)

(declare-fun e!4450778 () Bool)

(assert (=> b!7457234 (= e!4450778 call!685073)))

(declare-fun bm!685069 () Bool)

(declare-fun call!685074 () Bool)

(assert (=> bm!685069 (= call!685074 call!685073)))

(declare-fun bm!685070 () Bool)

(assert (=> bm!685070 (= call!685075 (validRegex!10031 (ite c!1378725 (regOne!39547 rTail!78) (regOne!39546 rTail!78))))))

(declare-fun b!7457235 () Bool)

(declare-fun e!4450777 () Bool)

(declare-fun e!4450779 () Bool)

(assert (=> b!7457235 (= e!4450777 e!4450779)))

(assert (=> b!7457235 (= c!1378725 ((_ is Union!19517) rTail!78))))

(declare-fun b!7457236 () Bool)

(declare-fun e!4450781 () Bool)

(assert (=> b!7457236 (= e!4450781 call!685074)))

(declare-fun b!7457237 () Bool)

(declare-fun e!4450780 () Bool)

(assert (=> b!7457237 (= e!4450780 e!4450777)))

(assert (=> b!7457237 (= c!1378726 ((_ is Star!19517) rTail!78))))

(declare-fun b!7457238 () Bool)

(assert (=> b!7457238 (= e!4450782 call!685074)))

(declare-fun d!2297668 () Bool)

(declare-fun res!2991288 () Bool)

(assert (=> d!2297668 (=> res!2991288 e!4450780)))

(assert (=> d!2297668 (= res!2991288 ((_ is ElementMatch!19517) rTail!78))))

(assert (=> d!2297668 (= (validRegex!10031 rTail!78) e!4450780)))

(declare-fun b!7457239 () Bool)

(declare-fun res!2991284 () Bool)

(assert (=> b!7457239 (=> (not res!2991284) (not e!4450781))))

(assert (=> b!7457239 (= res!2991284 call!685075)))

(assert (=> b!7457239 (= e!4450779 e!4450781)))

(declare-fun b!7457240 () Bool)

(assert (=> b!7457240 (= e!4450777 e!4450778)))

(declare-fun res!2991287 () Bool)

(assert (=> b!7457240 (= res!2991287 (not (nullable!8503 (reg!19846 rTail!78))))))

(assert (=> b!7457240 (=> (not res!2991287) (not e!4450778))))

(declare-fun b!7457241 () Bool)

(declare-fun res!2991285 () Bool)

(assert (=> b!7457241 (=> res!2991285 e!4450776)))

(assert (=> b!7457241 (= res!2991285 (not ((_ is Concat!28362) rTail!78)))))

(assert (=> b!7457241 (= e!4450779 e!4450776)))

(assert (= (and d!2297668 (not res!2991288)) b!7457237))

(assert (= (and b!7457237 c!1378726) b!7457240))

(assert (= (and b!7457237 (not c!1378726)) b!7457235))

(assert (= (and b!7457240 res!2991287) b!7457234))

(assert (= (and b!7457235 c!1378725) b!7457239))

(assert (= (and b!7457235 (not c!1378725)) b!7457241))

(assert (= (and b!7457239 res!2991284) b!7457236))

(assert (= (and b!7457241 (not res!2991285)) b!7457233))

(assert (= (and b!7457233 res!2991286) b!7457238))

(assert (= (or b!7457236 b!7457238) bm!685069))

(assert (= (or b!7457239 b!7457233) bm!685070))

(assert (= (or b!7457234 bm!685069) bm!685068))

(declare-fun m!8060596 () Bool)

(assert (=> bm!685068 m!8060596))

(declare-fun m!8060598 () Bool)

(assert (=> bm!685070 m!8060598))

(declare-fun m!8060600 () Bool)

(assert (=> b!7457240 m!8060600))

(assert (=> b!7457009 d!2297668))

(declare-fun b!7457242 () Bool)

(declare-fun res!2991294 () Bool)

(declare-fun e!4450783 () Bool)

(assert (=> b!7457242 (=> res!2991294 e!4450783)))

(declare-fun e!4450786 () Bool)

(assert (=> b!7457242 (= res!2991294 e!4450786)))

(declare-fun res!2991289 () Bool)

(assert (=> b!7457242 (=> (not res!2991289) (not e!4450786))))

(declare-fun lt!2621893 () Bool)

(assert (=> b!7457242 (= res!2991289 lt!2621893)))

(declare-fun e!4450789 () Bool)

(declare-fun b!7457243 () Bool)

(assert (=> b!7457243 (= e!4450789 (nullable!8503 (ite c!1378679 lt!2621869 lt!2621859)))))

(declare-fun b!7457244 () Bool)

(declare-fun res!2991291 () Bool)

(assert (=> b!7457244 (=> (not res!2991291) (not e!4450786))))

(assert (=> b!7457244 (= res!2991291 (isEmpty!41119 (tail!14871 call!685048)))))

(declare-fun b!7457245 () Bool)

(declare-fun e!4450784 () Bool)

(declare-fun e!4450788 () Bool)

(assert (=> b!7457245 (= e!4450784 e!4450788)))

(declare-fun res!2991296 () Bool)

(assert (=> b!7457245 (=> res!2991296 e!4450788)))

(declare-fun call!685076 () Bool)

(assert (=> b!7457245 (= res!2991296 call!685076)))

(declare-fun d!2297672 () Bool)

(declare-fun e!4450787 () Bool)

(assert (=> d!2297672 e!4450787))

(declare-fun c!1378729 () Bool)

(assert (=> d!2297672 (= c!1378729 ((_ is EmptyExpr!19517) (ite c!1378679 lt!2621869 lt!2621859)))))

(assert (=> d!2297672 (= lt!2621893 e!4450789)))

(declare-fun c!1378727 () Bool)

(assert (=> d!2297672 (= c!1378727 (isEmpty!41119 call!685048))))

(assert (=> d!2297672 (validRegex!10031 (ite c!1378679 lt!2621869 lt!2621859))))

(assert (=> d!2297672 (= (matchR!9281 (ite c!1378679 lt!2621869 lt!2621859) call!685048) lt!2621893)))

(declare-fun b!7457246 () Bool)

(assert (=> b!7457246 (= e!4450788 (not (= (head!15302 call!685048) (c!1378680 (ite c!1378679 lt!2621869 lt!2621859)))))))

(declare-fun b!7457247 () Bool)

(declare-fun e!4450785 () Bool)

(assert (=> b!7457247 (= e!4450787 e!4450785)))

(declare-fun c!1378728 () Bool)

(assert (=> b!7457247 (= c!1378728 ((_ is EmptyLang!19517) (ite c!1378679 lt!2621869 lt!2621859)))))

(declare-fun b!7457248 () Bool)

(assert (=> b!7457248 (= e!4450786 (= (head!15302 call!685048) (c!1378680 (ite c!1378679 lt!2621869 lt!2621859))))))

(declare-fun b!7457249 () Bool)

(declare-fun res!2991293 () Bool)

(assert (=> b!7457249 (=> (not res!2991293) (not e!4450786))))

(assert (=> b!7457249 (= res!2991293 (not call!685076))))

(declare-fun b!7457250 () Bool)

(assert (=> b!7457250 (= e!4450783 e!4450784)))

(declare-fun res!2991290 () Bool)

(assert (=> b!7457250 (=> (not res!2991290) (not e!4450784))))

(assert (=> b!7457250 (= res!2991290 (not lt!2621893))))

(declare-fun b!7457251 () Bool)

(assert (=> b!7457251 (= e!4450787 (= lt!2621893 call!685076))))

(declare-fun b!7457252 () Bool)

(declare-fun res!2991292 () Bool)

(assert (=> b!7457252 (=> res!2991292 e!4450783)))

(assert (=> b!7457252 (= res!2991292 (not ((_ is ElementMatch!19517) (ite c!1378679 lt!2621869 lt!2621859))))))

(assert (=> b!7457252 (= e!4450785 e!4450783)))

(declare-fun bm!685071 () Bool)

(assert (=> bm!685071 (= call!685076 (isEmpty!41119 call!685048))))

(declare-fun b!7457253 () Bool)

(declare-fun res!2991295 () Bool)

(assert (=> b!7457253 (=> res!2991295 e!4450788)))

(assert (=> b!7457253 (= res!2991295 (not (isEmpty!41119 (tail!14871 call!685048))))))

(declare-fun b!7457254 () Bool)

(assert (=> b!7457254 (= e!4450789 (matchR!9281 (derivativeStep!5562 (ite c!1378679 lt!2621869 lt!2621859) (head!15302 call!685048)) (tail!14871 call!685048)))))

(declare-fun b!7457255 () Bool)

(assert (=> b!7457255 (= e!4450785 (not lt!2621893))))

(assert (= (and d!2297672 c!1378727) b!7457243))

(assert (= (and d!2297672 (not c!1378727)) b!7457254))

(assert (= (and d!2297672 c!1378729) b!7457251))

(assert (= (and d!2297672 (not c!1378729)) b!7457247))

(assert (= (and b!7457247 c!1378728) b!7457255))

(assert (= (and b!7457247 (not c!1378728)) b!7457252))

(assert (= (and b!7457252 (not res!2991292)) b!7457242))

(assert (= (and b!7457242 res!2991289) b!7457249))

(assert (= (and b!7457249 res!2991293) b!7457244))

(assert (= (and b!7457244 res!2991291) b!7457248))

(assert (= (and b!7457242 (not res!2991294)) b!7457250))

(assert (= (and b!7457250 res!2991290) b!7457245))

(assert (= (and b!7457245 (not res!2991296)) b!7457253))

(assert (= (and b!7457253 (not res!2991295)) b!7457246))

(assert (= (or b!7457251 b!7457245 b!7457249) bm!685071))

(declare-fun m!8060602 () Bool)

(assert (=> b!7457254 m!8060602))

(assert (=> b!7457254 m!8060602))

(declare-fun m!8060604 () Bool)

(assert (=> b!7457254 m!8060604))

(declare-fun m!8060606 () Bool)

(assert (=> b!7457254 m!8060606))

(assert (=> b!7457254 m!8060604))

(assert (=> b!7457254 m!8060606))

(declare-fun m!8060608 () Bool)

(assert (=> b!7457254 m!8060608))

(assert (=> b!7457248 m!8060602))

(declare-fun m!8060610 () Bool)

(assert (=> d!2297672 m!8060610))

(declare-fun m!8060612 () Bool)

(assert (=> d!2297672 m!8060612))

(assert (=> b!7457253 m!8060606))

(assert (=> b!7457253 m!8060606))

(declare-fun m!8060614 () Bool)

(assert (=> b!7457253 m!8060614))

(declare-fun m!8060616 () Bool)

(assert (=> b!7457243 m!8060616))

(assert (=> bm!685071 m!8060610))

(assert (=> b!7457244 m!8060606))

(assert (=> b!7457244 m!8060606))

(assert (=> b!7457244 m!8060614))

(assert (=> b!7457246 m!8060602))

(assert (=> bm!685044 d!2297672))

(declare-fun b!7457256 () Bool)

(declare-fun res!2991302 () Bool)

(declare-fun e!4450790 () Bool)

(assert (=> b!7457256 (=> res!2991302 e!4450790)))

(declare-fun e!4450793 () Bool)

(assert (=> b!7457256 (= res!2991302 e!4450793)))

(declare-fun res!2991297 () Bool)

(assert (=> b!7457256 (=> (not res!2991297) (not e!4450793))))

(declare-fun lt!2621894 () Bool)

(assert (=> b!7457256 (= res!2991297 lt!2621894)))

(declare-fun b!7457257 () Bool)

(declare-fun e!4450796 () Bool)

(assert (=> b!7457257 (= e!4450796 (nullable!8503 rTail!78))))

(declare-fun b!7457258 () Bool)

(declare-fun res!2991299 () Bool)

(assert (=> b!7457258 (=> (not res!2991299) (not e!4450793))))

(assert (=> b!7457258 (= res!2991299 (isEmpty!41119 (tail!14871 (_2!37547 lt!2621846))))))

(declare-fun b!7457259 () Bool)

(declare-fun e!4450791 () Bool)

(declare-fun e!4450795 () Bool)

(assert (=> b!7457259 (= e!4450791 e!4450795)))

(declare-fun res!2991304 () Bool)

(assert (=> b!7457259 (=> res!2991304 e!4450795)))

(declare-fun call!685077 () Bool)

(assert (=> b!7457259 (= res!2991304 call!685077)))

(declare-fun d!2297674 () Bool)

(declare-fun e!4450794 () Bool)

(assert (=> d!2297674 e!4450794))

(declare-fun c!1378732 () Bool)

(assert (=> d!2297674 (= c!1378732 ((_ is EmptyExpr!19517) rTail!78))))

(assert (=> d!2297674 (= lt!2621894 e!4450796)))

(declare-fun c!1378730 () Bool)

(assert (=> d!2297674 (= c!1378730 (isEmpty!41119 (_2!37547 lt!2621846)))))

(assert (=> d!2297674 (validRegex!10031 rTail!78)))

(assert (=> d!2297674 (= (matchR!9281 rTail!78 (_2!37547 lt!2621846)) lt!2621894)))

(declare-fun b!7457260 () Bool)

(assert (=> b!7457260 (= e!4450795 (not (= (head!15302 (_2!37547 lt!2621846)) (c!1378680 rTail!78))))))

(declare-fun b!7457261 () Bool)

(declare-fun e!4450792 () Bool)

(assert (=> b!7457261 (= e!4450794 e!4450792)))

(declare-fun c!1378731 () Bool)

(assert (=> b!7457261 (= c!1378731 ((_ is EmptyLang!19517) rTail!78))))

(declare-fun b!7457262 () Bool)

(assert (=> b!7457262 (= e!4450793 (= (head!15302 (_2!37547 lt!2621846)) (c!1378680 rTail!78)))))

(declare-fun b!7457263 () Bool)

(declare-fun res!2991301 () Bool)

(assert (=> b!7457263 (=> (not res!2991301) (not e!4450793))))

(assert (=> b!7457263 (= res!2991301 (not call!685077))))

(declare-fun b!7457264 () Bool)

(assert (=> b!7457264 (= e!4450790 e!4450791)))

(declare-fun res!2991298 () Bool)

(assert (=> b!7457264 (=> (not res!2991298) (not e!4450791))))

(assert (=> b!7457264 (= res!2991298 (not lt!2621894))))

(declare-fun b!7457265 () Bool)

(assert (=> b!7457265 (= e!4450794 (= lt!2621894 call!685077))))

(declare-fun b!7457266 () Bool)

(declare-fun res!2991300 () Bool)

(assert (=> b!7457266 (=> res!2991300 e!4450790)))

(assert (=> b!7457266 (= res!2991300 (not ((_ is ElementMatch!19517) rTail!78)))))

(assert (=> b!7457266 (= e!4450792 e!4450790)))

(declare-fun bm!685072 () Bool)

(assert (=> bm!685072 (= call!685077 (isEmpty!41119 (_2!37547 lt!2621846)))))

(declare-fun b!7457267 () Bool)

(declare-fun res!2991303 () Bool)

(assert (=> b!7457267 (=> res!2991303 e!4450795)))

(assert (=> b!7457267 (= res!2991303 (not (isEmpty!41119 (tail!14871 (_2!37547 lt!2621846)))))))

(declare-fun b!7457268 () Bool)

(assert (=> b!7457268 (= e!4450796 (matchR!9281 (derivativeStep!5562 rTail!78 (head!15302 (_2!37547 lt!2621846))) (tail!14871 (_2!37547 lt!2621846))))))

(declare-fun b!7457269 () Bool)

(assert (=> b!7457269 (= e!4450792 (not lt!2621894))))

(assert (= (and d!2297674 c!1378730) b!7457257))

(assert (= (and d!2297674 (not c!1378730)) b!7457268))

(assert (= (and d!2297674 c!1378732) b!7457265))

(assert (= (and d!2297674 (not c!1378732)) b!7457261))

(assert (= (and b!7457261 c!1378731) b!7457269))

(assert (= (and b!7457261 (not c!1378731)) b!7457266))

(assert (= (and b!7457266 (not res!2991300)) b!7457256))

(assert (= (and b!7457256 res!2991297) b!7457263))

(assert (= (and b!7457263 res!2991301) b!7457258))

(assert (= (and b!7457258 res!2991299) b!7457262))

(assert (= (and b!7457256 (not res!2991302)) b!7457264))

(assert (= (and b!7457264 res!2991298) b!7457259))

(assert (= (and b!7457259 (not res!2991304)) b!7457267))

(assert (= (and b!7457267 (not res!2991303)) b!7457260))

(assert (= (or b!7457265 b!7457259 b!7457263) bm!685072))

(declare-fun m!8060618 () Bool)

(assert (=> b!7457268 m!8060618))

(assert (=> b!7457268 m!8060618))

(declare-fun m!8060620 () Bool)

(assert (=> b!7457268 m!8060620))

(declare-fun m!8060622 () Bool)

(assert (=> b!7457268 m!8060622))

(assert (=> b!7457268 m!8060620))

(assert (=> b!7457268 m!8060622))

(declare-fun m!8060624 () Bool)

(assert (=> b!7457268 m!8060624))

(assert (=> b!7457262 m!8060618))

(declare-fun m!8060626 () Bool)

(assert (=> d!2297674 m!8060626))

(assert (=> d!2297674 m!8060494))

(assert (=> b!7457267 m!8060622))

(assert (=> b!7457267 m!8060622))

(declare-fun m!8060628 () Bool)

(assert (=> b!7457267 m!8060628))

(declare-fun m!8060630 () Bool)

(assert (=> b!7457257 m!8060630))

(assert (=> bm!685072 m!8060626))

(assert (=> b!7457258 m!8060622))

(assert (=> b!7457258 m!8060622))

(assert (=> b!7457258 m!8060628))

(assert (=> b!7457260 m!8060618))

(assert (=> b!7457027 d!2297674))

(declare-fun call!685078 () Bool)

(declare-fun c!1378733 () Bool)

(declare-fun bm!685073 () Bool)

(declare-fun c!1378734 () Bool)

(assert (=> bm!685073 (= call!685078 (validRegex!10031 (ite c!1378734 (reg!19846 lt!2621856) (ite c!1378733 (regTwo!39547 lt!2621856) (regTwo!39546 lt!2621856)))))))

(declare-fun b!7457270 () Bool)

(declare-fun e!4450797 () Bool)

(declare-fun e!4450803 () Bool)

(assert (=> b!7457270 (= e!4450797 e!4450803)))

(declare-fun res!2991307 () Bool)

(assert (=> b!7457270 (=> (not res!2991307) (not e!4450803))))

(declare-fun call!685080 () Bool)

(assert (=> b!7457270 (= res!2991307 call!685080)))

(declare-fun b!7457271 () Bool)

(declare-fun e!4450799 () Bool)

(assert (=> b!7457271 (= e!4450799 call!685078)))

(declare-fun bm!685074 () Bool)

(declare-fun call!685079 () Bool)

(assert (=> bm!685074 (= call!685079 call!685078)))

(declare-fun bm!685075 () Bool)

(assert (=> bm!685075 (= call!685080 (validRegex!10031 (ite c!1378733 (regOne!39547 lt!2621856) (regOne!39546 lt!2621856))))))

(declare-fun b!7457272 () Bool)

(declare-fun e!4450798 () Bool)

(declare-fun e!4450800 () Bool)

(assert (=> b!7457272 (= e!4450798 e!4450800)))

(assert (=> b!7457272 (= c!1378733 ((_ is Union!19517) lt!2621856))))

(declare-fun b!7457273 () Bool)

(declare-fun e!4450802 () Bool)

(assert (=> b!7457273 (= e!4450802 call!685079)))

(declare-fun b!7457274 () Bool)

(declare-fun e!4450801 () Bool)

(assert (=> b!7457274 (= e!4450801 e!4450798)))

(assert (=> b!7457274 (= c!1378734 ((_ is Star!19517) lt!2621856))))

(declare-fun b!7457275 () Bool)

(assert (=> b!7457275 (= e!4450803 call!685079)))

(declare-fun d!2297676 () Bool)

(declare-fun res!2991309 () Bool)

(assert (=> d!2297676 (=> res!2991309 e!4450801)))

(assert (=> d!2297676 (= res!2991309 ((_ is ElementMatch!19517) lt!2621856))))

(assert (=> d!2297676 (= (validRegex!10031 lt!2621856) e!4450801)))

(declare-fun b!7457276 () Bool)

(declare-fun res!2991305 () Bool)

(assert (=> b!7457276 (=> (not res!2991305) (not e!4450802))))

(assert (=> b!7457276 (= res!2991305 call!685080)))

(assert (=> b!7457276 (= e!4450800 e!4450802)))

(declare-fun b!7457277 () Bool)

(assert (=> b!7457277 (= e!4450798 e!4450799)))

(declare-fun res!2991308 () Bool)

(assert (=> b!7457277 (= res!2991308 (not (nullable!8503 (reg!19846 lt!2621856))))))

(assert (=> b!7457277 (=> (not res!2991308) (not e!4450799))))

(declare-fun b!7457278 () Bool)

(declare-fun res!2991306 () Bool)

(assert (=> b!7457278 (=> res!2991306 e!4450797)))

(assert (=> b!7457278 (= res!2991306 (not ((_ is Concat!28362) lt!2621856)))))

(assert (=> b!7457278 (= e!4450800 e!4450797)))

(assert (= (and d!2297676 (not res!2991309)) b!7457274))

(assert (= (and b!7457274 c!1378734) b!7457277))

(assert (= (and b!7457274 (not c!1378734)) b!7457272))

(assert (= (and b!7457277 res!2991308) b!7457271))

(assert (= (and b!7457272 c!1378733) b!7457276))

(assert (= (and b!7457272 (not c!1378733)) b!7457278))

(assert (= (and b!7457276 res!2991305) b!7457273))

(assert (= (and b!7457278 (not res!2991306)) b!7457270))

(assert (= (and b!7457270 res!2991307) b!7457275))

(assert (= (or b!7457273 b!7457275) bm!685074))

(assert (= (or b!7457276 b!7457270) bm!685075))

(assert (= (or b!7457271 bm!685074) bm!685073))

(declare-fun m!8060632 () Bool)

(assert (=> bm!685073 m!8060632))

(declare-fun m!8060634 () Bool)

(assert (=> bm!685075 m!8060634))

(declare-fun m!8060636 () Bool)

(assert (=> b!7457277 m!8060636))

(assert (=> b!7457028 d!2297676))

(declare-fun b!7457308 () Bool)

(declare-fun e!4450818 () Bool)

(declare-fun lt!2621903 () List!72233)

(assert (=> b!7457308 (= e!4450818 (or (not (= (_2!37547 lt!2621846) Nil!72109)) (= lt!2621903 (_1!37547 lt!2621846))))))

(declare-fun b!7457306 () Bool)

(declare-fun e!4450819 () List!72233)

(assert (=> b!7457306 (= e!4450819 (Cons!72109 (h!78557 (_1!37547 lt!2621846)) (++!17175 (t!386802 (_1!37547 lt!2621846)) (_2!37547 lt!2621846))))))

(declare-fun b!7457305 () Bool)

(assert (=> b!7457305 (= e!4450819 (_2!37547 lt!2621846))))

(declare-fun d!2297678 () Bool)

(assert (=> d!2297678 e!4450818))

(declare-fun res!2991324 () Bool)

(assert (=> d!2297678 (=> (not res!2991324) (not e!4450818))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15253 (List!72233) (InoxSet C!39308))

(assert (=> d!2297678 (= res!2991324 (= (content!15253 lt!2621903) ((_ map or) (content!15253 (_1!37547 lt!2621846)) (content!15253 (_2!37547 lt!2621846)))))))

(assert (=> d!2297678 (= lt!2621903 e!4450819)))

(declare-fun c!1378741 () Bool)

(assert (=> d!2297678 (= c!1378741 ((_ is Nil!72109) (_1!37547 lt!2621846)))))

(assert (=> d!2297678 (= (++!17175 (_1!37547 lt!2621846) (_2!37547 lt!2621846)) lt!2621903)))

(declare-fun b!7457307 () Bool)

(declare-fun res!2991325 () Bool)

(assert (=> b!7457307 (=> (not res!2991325) (not e!4450818))))

(declare-fun size!42189 (List!72233) Int)

(assert (=> b!7457307 (= res!2991325 (= (size!42189 lt!2621903) (+ (size!42189 (_1!37547 lt!2621846)) (size!42189 (_2!37547 lt!2621846)))))))

(assert (= (and d!2297678 c!1378741) b!7457305))

(assert (= (and d!2297678 (not c!1378741)) b!7457306))

(assert (= (and d!2297678 res!2991324) b!7457307))

(assert (= (and b!7457307 res!2991325) b!7457308))

(declare-fun m!8060638 () Bool)

(assert (=> b!7457306 m!8060638))

(declare-fun m!8060640 () Bool)

(assert (=> d!2297678 m!8060640))

(declare-fun m!8060642 () Bool)

(assert (=> d!2297678 m!8060642))

(declare-fun m!8060644 () Bool)

(assert (=> d!2297678 m!8060644))

(declare-fun m!8060646 () Bool)

(assert (=> b!7457307 m!8060646))

(declare-fun m!8060648 () Bool)

(assert (=> b!7457307 m!8060648))

(declare-fun m!8060650 () Bool)

(assert (=> b!7457307 m!8060650))

(assert (=> bm!685043 d!2297678))

(declare-fun b!7457309 () Bool)

(declare-fun res!2991331 () Bool)

(declare-fun e!4450820 () Bool)

(assert (=> b!7457309 (=> res!2991331 e!4450820)))

(declare-fun e!4450823 () Bool)

(assert (=> b!7457309 (= res!2991331 e!4450823)))

(declare-fun res!2991326 () Bool)

(assert (=> b!7457309 (=> (not res!2991326) (not e!4450823))))

(declare-fun lt!2621904 () Bool)

(assert (=> b!7457309 (= res!2991326 lt!2621904)))

(declare-fun b!7457310 () Bool)

(declare-fun e!4450826 () Bool)

(assert (=> b!7457310 (= e!4450826 (nullable!8503 lt!2621856))))

(declare-fun b!7457311 () Bool)

(declare-fun res!2991328 () Bool)

(assert (=> b!7457311 (=> (not res!2991328) (not e!4450823))))

(assert (=> b!7457311 (= res!2991328 (isEmpty!41119 (tail!14871 s!13591)))))

(declare-fun b!7457312 () Bool)

(declare-fun e!4450821 () Bool)

(declare-fun e!4450825 () Bool)

(assert (=> b!7457312 (= e!4450821 e!4450825)))

(declare-fun res!2991333 () Bool)

(assert (=> b!7457312 (=> res!2991333 e!4450825)))

(declare-fun call!685081 () Bool)

(assert (=> b!7457312 (= res!2991333 call!685081)))

(declare-fun d!2297680 () Bool)

(declare-fun e!4450824 () Bool)

(assert (=> d!2297680 e!4450824))

(declare-fun c!1378744 () Bool)

(assert (=> d!2297680 (= c!1378744 ((_ is EmptyExpr!19517) lt!2621856))))

(assert (=> d!2297680 (= lt!2621904 e!4450826)))

(declare-fun c!1378742 () Bool)

(assert (=> d!2297680 (= c!1378742 (isEmpty!41119 s!13591))))

(assert (=> d!2297680 (validRegex!10031 lt!2621856)))

(assert (=> d!2297680 (= (matchR!9281 lt!2621856 s!13591) lt!2621904)))

(declare-fun b!7457313 () Bool)

(assert (=> b!7457313 (= e!4450825 (not (= (head!15302 s!13591) (c!1378680 lt!2621856))))))

(declare-fun b!7457314 () Bool)

(declare-fun e!4450822 () Bool)

(assert (=> b!7457314 (= e!4450824 e!4450822)))

(declare-fun c!1378743 () Bool)

(assert (=> b!7457314 (= c!1378743 ((_ is EmptyLang!19517) lt!2621856))))

(declare-fun b!7457315 () Bool)

(assert (=> b!7457315 (= e!4450823 (= (head!15302 s!13591) (c!1378680 lt!2621856)))))

(declare-fun b!7457316 () Bool)

(declare-fun res!2991330 () Bool)

(assert (=> b!7457316 (=> (not res!2991330) (not e!4450823))))

(assert (=> b!7457316 (= res!2991330 (not call!685081))))

(declare-fun b!7457317 () Bool)

(assert (=> b!7457317 (= e!4450820 e!4450821)))

(declare-fun res!2991327 () Bool)

(assert (=> b!7457317 (=> (not res!2991327) (not e!4450821))))

(assert (=> b!7457317 (= res!2991327 (not lt!2621904))))

(declare-fun b!7457318 () Bool)

(assert (=> b!7457318 (= e!4450824 (= lt!2621904 call!685081))))

(declare-fun b!7457319 () Bool)

(declare-fun res!2991329 () Bool)

(assert (=> b!7457319 (=> res!2991329 e!4450820)))

(assert (=> b!7457319 (= res!2991329 (not ((_ is ElementMatch!19517) lt!2621856)))))

(assert (=> b!7457319 (= e!4450822 e!4450820)))

(declare-fun bm!685076 () Bool)

(assert (=> bm!685076 (= call!685081 (isEmpty!41119 s!13591))))

(declare-fun b!7457320 () Bool)

(declare-fun res!2991332 () Bool)

(assert (=> b!7457320 (=> res!2991332 e!4450825)))

(assert (=> b!7457320 (= res!2991332 (not (isEmpty!41119 (tail!14871 s!13591))))))

(declare-fun b!7457321 () Bool)

(assert (=> b!7457321 (= e!4450826 (matchR!9281 (derivativeStep!5562 lt!2621856 (head!15302 s!13591)) (tail!14871 s!13591)))))

(declare-fun b!7457322 () Bool)

(assert (=> b!7457322 (= e!4450822 (not lt!2621904))))

(assert (= (and d!2297680 c!1378742) b!7457310))

(assert (= (and d!2297680 (not c!1378742)) b!7457321))

(assert (= (and d!2297680 c!1378744) b!7457318))

(assert (= (and d!2297680 (not c!1378744)) b!7457314))

(assert (= (and b!7457314 c!1378743) b!7457322))

(assert (= (and b!7457314 (not c!1378743)) b!7457319))

(assert (= (and b!7457319 (not res!2991329)) b!7457309))

(assert (= (and b!7457309 res!2991326) b!7457316))

(assert (= (and b!7457316 res!2991330) b!7457311))

(assert (= (and b!7457311 res!2991328) b!7457315))

(assert (= (and b!7457309 (not res!2991331)) b!7457317))

(assert (= (and b!7457317 res!2991327) b!7457312))

(assert (= (and b!7457312 (not res!2991333)) b!7457320))

(assert (= (and b!7457320 (not res!2991332)) b!7457313))

(assert (= (or b!7457318 b!7457312 b!7457316) bm!685076))

(assert (=> b!7457321 m!8060556))

(assert (=> b!7457321 m!8060556))

(declare-fun m!8060652 () Bool)

(assert (=> b!7457321 m!8060652))

(assert (=> b!7457321 m!8060560))

(assert (=> b!7457321 m!8060652))

(assert (=> b!7457321 m!8060560))

(declare-fun m!8060654 () Bool)

(assert (=> b!7457321 m!8060654))

(assert (=> b!7457315 m!8060556))

(assert (=> d!2297680 m!8060504))

(assert (=> d!2297680 m!8060432))

(assert (=> b!7457320 m!8060560))

(assert (=> b!7457320 m!8060560))

(assert (=> b!7457320 m!8060566))

(declare-fun m!8060656 () Bool)

(assert (=> b!7457310 m!8060656))

(assert (=> bm!685076 m!8060504))

(assert (=> b!7457311 m!8060560))

(assert (=> b!7457311 m!8060560))

(assert (=> b!7457311 m!8060566))

(assert (=> b!7457313 m!8060556))

(assert (=> b!7457026 d!2297680))

(declare-fun d!2297682 () Bool)

(assert (=> d!2297682 (= (matchR!9281 lt!2621864 s!13591) (matchRSpec!4196 lt!2621864 s!13591))))

(declare-fun lt!2621908 () Unit!165869)

(assert (=> d!2297682 (= lt!2621908 (choose!57638 lt!2621864 s!13591))))

(assert (=> d!2297682 (validRegex!10031 lt!2621864)))

(assert (=> d!2297682 (= (mainMatchTheorem!4190 lt!2621864 s!13591) lt!2621908)))

(declare-fun bs!1928560 () Bool)

(assert (= bs!1928560 d!2297682))

(assert (=> bs!1928560 m!8060486))

(assert (=> bs!1928560 m!8060482))

(declare-fun m!8060658 () Bool)

(assert (=> bs!1928560 m!8060658))

(declare-fun m!8060660 () Bool)

(assert (=> bs!1928560 m!8060660))

(assert (=> b!7457026 d!2297682))

(declare-fun bs!1928561 () Bool)

(declare-fun b!7457336 () Bool)

(assert (= bs!1928561 (and b!7457336 b!7457098)))

(declare-fun lambda!461363 () Int)

(assert (=> bs!1928561 (= (and (= (reg!19846 lt!2621864) (reg!19846 lt!2621859)) (= lt!2621864 lt!2621859)) (= lambda!461363 lambda!461350))))

(declare-fun bs!1928562 () Bool)

(assert (= bs!1928562 (and b!7457336 b!7457022)))

(assert (=> bs!1928562 (not (= lambda!461363 lambda!461345))))

(declare-fun bs!1928563 () Bool)

(assert (= bs!1928563 (and b!7457336 b!7457099)))

(assert (=> bs!1928563 (not (= lambda!461363 lambda!461351))))

(declare-fun bs!1928564 () Bool)

(assert (= bs!1928564 (and b!7457336 b!7457184)))

(assert (=> bs!1928564 (not (= lambda!461363 lambda!461356))))

(declare-fun bs!1928565 () Bool)

(assert (= bs!1928565 (and b!7457336 b!7457183)))

(assert (=> bs!1928565 (= (and (= (reg!19846 lt!2621864) (reg!19846 lt!2621869)) (= lt!2621864 lt!2621869)) (= lambda!461363 lambda!461355))))

(assert (=> bs!1928562 (not (= lambda!461363 lambda!461344))))

(assert (=> b!7457336 true))

(assert (=> b!7457336 true))

(declare-fun bs!1928566 () Bool)

(declare-fun b!7457337 () Bool)

(assert (= bs!1928566 (and b!7457337 b!7457098)))

(declare-fun lambda!461364 () Int)

(assert (=> bs!1928566 (not (= lambda!461364 lambda!461350))))

(declare-fun bs!1928567 () Bool)

(assert (= bs!1928567 (and b!7457337 b!7457022)))

(assert (=> bs!1928567 (= (and (= (regOne!39546 lt!2621864) lt!2621867) (= (regTwo!39546 lt!2621864) rTail!78)) (= lambda!461364 lambda!461345))))

(declare-fun bs!1928568 () Bool)

(assert (= bs!1928568 (and b!7457337 b!7457099)))

(assert (=> bs!1928568 (= (and (= (regOne!39546 lt!2621864) (regOne!39546 lt!2621859)) (= (regTwo!39546 lt!2621864) (regTwo!39546 lt!2621859))) (= lambda!461364 lambda!461351))))

(declare-fun bs!1928569 () Bool)

(assert (= bs!1928569 (and b!7457337 b!7457184)))

(assert (=> bs!1928569 (= (and (= (regOne!39546 lt!2621864) (regOne!39546 lt!2621869)) (= (regTwo!39546 lt!2621864) (regTwo!39546 lt!2621869))) (= lambda!461364 lambda!461356))))

(declare-fun bs!1928570 () Bool)

(assert (= bs!1928570 (and b!7457337 b!7457183)))

(assert (=> bs!1928570 (not (= lambda!461364 lambda!461355))))

(assert (=> bs!1928567 (not (= lambda!461364 lambda!461344))))

(declare-fun bs!1928571 () Bool)

(assert (= bs!1928571 (and b!7457337 b!7457336)))

(assert (=> bs!1928571 (not (= lambda!461364 lambda!461363))))

(assert (=> b!7457337 true))

(assert (=> b!7457337 true))

(declare-fun b!7457332 () Bool)

(declare-fun e!4450836 () Bool)

(declare-fun call!685083 () Bool)

(assert (=> b!7457332 (= e!4450836 call!685083)))

(declare-fun b!7457333 () Bool)

(declare-fun e!4450837 () Bool)

(declare-fun e!4450838 () Bool)

(assert (=> b!7457333 (= e!4450837 e!4450838)))

(declare-fun res!2991341 () Bool)

(assert (=> b!7457333 (= res!2991341 (matchRSpec!4196 (regOne!39547 lt!2621864) s!13591))))

(assert (=> b!7457333 (=> res!2991341 e!4450838)))

(declare-fun bm!685077 () Bool)

(declare-fun c!1378750 () Bool)

(declare-fun call!685082 () Bool)

(assert (=> bm!685077 (= call!685082 (Exists!4138 (ite c!1378750 lambda!461363 lambda!461364)))))

(declare-fun b!7457335 () Bool)

(declare-fun c!1378747 () Bool)

(assert (=> b!7457335 (= c!1378747 ((_ is Union!19517) lt!2621864))))

(declare-fun e!4450832 () Bool)

(assert (=> b!7457335 (= e!4450832 e!4450837)))

(declare-fun e!4450834 () Bool)

(assert (=> b!7457336 (= e!4450834 call!685082)))

(declare-fun e!4450835 () Bool)

(assert (=> b!7457337 (= e!4450835 call!685082)))

(declare-fun b!7457338 () Bool)

(assert (=> b!7457338 (= e!4450832 (= s!13591 (Cons!72109 (c!1378680 lt!2621864) Nil!72109)))))

(declare-fun b!7457339 () Bool)

(declare-fun c!1378749 () Bool)

(assert (=> b!7457339 (= c!1378749 ((_ is ElementMatch!19517) lt!2621864))))

(declare-fun e!4450833 () Bool)

(assert (=> b!7457339 (= e!4450833 e!4450832)))

(declare-fun b!7457334 () Bool)

(assert (=> b!7457334 (= e!4450837 e!4450835)))

(assert (=> b!7457334 (= c!1378750 ((_ is Star!19517) lt!2621864))))

(declare-fun d!2297684 () Bool)

(declare-fun c!1378748 () Bool)

(assert (=> d!2297684 (= c!1378748 ((_ is EmptyExpr!19517) lt!2621864))))

(assert (=> d!2297684 (= (matchRSpec!4196 lt!2621864 s!13591) e!4450836)))

(declare-fun b!7457340 () Bool)

(assert (=> b!7457340 (= e!4450836 e!4450833)))

(declare-fun res!2991339 () Bool)

(assert (=> b!7457340 (= res!2991339 (not ((_ is EmptyLang!19517) lt!2621864)))))

(assert (=> b!7457340 (=> (not res!2991339) (not e!4450833))))

(declare-fun bm!685078 () Bool)

(assert (=> bm!685078 (= call!685083 (isEmpty!41119 s!13591))))

(declare-fun b!7457341 () Bool)

(declare-fun res!2991340 () Bool)

(assert (=> b!7457341 (=> res!2991340 e!4450834)))

(assert (=> b!7457341 (= res!2991340 call!685083)))

(assert (=> b!7457341 (= e!4450835 e!4450834)))

(declare-fun b!7457342 () Bool)

(assert (=> b!7457342 (= e!4450838 (matchRSpec!4196 (regTwo!39547 lt!2621864) s!13591))))

(assert (= (and d!2297684 c!1378748) b!7457332))

(assert (= (and d!2297684 (not c!1378748)) b!7457340))

(assert (= (and b!7457340 res!2991339) b!7457339))

(assert (= (and b!7457339 c!1378749) b!7457338))

(assert (= (and b!7457339 (not c!1378749)) b!7457335))

(assert (= (and b!7457335 c!1378747) b!7457333))

(assert (= (and b!7457335 (not c!1378747)) b!7457334))

(assert (= (and b!7457333 (not res!2991341)) b!7457342))

(assert (= (and b!7457334 c!1378750) b!7457341))

(assert (= (and b!7457334 (not c!1378750)) b!7457337))

(assert (= (and b!7457341 (not res!2991340)) b!7457336))

(assert (= (or b!7457336 b!7457337) bm!685077))

(assert (= (or b!7457332 b!7457341) bm!685078))

(declare-fun m!8060684 () Bool)

(assert (=> b!7457333 m!8060684))

(declare-fun m!8060686 () Bool)

(assert (=> bm!685077 m!8060686))

(assert (=> bm!685078 m!8060504))

(declare-fun m!8060688 () Bool)

(assert (=> b!7457342 m!8060688))

(assert (=> b!7457026 d!2297684))

(declare-fun d!2297690 () Bool)

(assert (=> d!2297690 (= (matchR!9281 lt!2621856 s!13591) (matchRSpec!4196 lt!2621856 s!13591))))

(declare-fun lt!2621909 () Unit!165869)

(assert (=> d!2297690 (= lt!2621909 (choose!57638 lt!2621856 s!13591))))

(assert (=> d!2297690 (validRegex!10031 lt!2621856)))

(assert (=> d!2297690 (= (mainMatchTheorem!4190 lt!2621856 s!13591) lt!2621909)))

(declare-fun bs!1928572 () Bool)

(assert (= bs!1928572 d!2297690))

(assert (=> bs!1928572 m!8060492))

(assert (=> bs!1928572 m!8060488))

(declare-fun m!8060690 () Bool)

(assert (=> bs!1928572 m!8060690))

(assert (=> bs!1928572 m!8060432))

(assert (=> b!7457026 d!2297690))

(declare-fun b!7457361 () Bool)

(declare-fun res!2991357 () Bool)

(declare-fun e!4450853 () Bool)

(assert (=> b!7457361 (=> res!2991357 e!4450853)))

(declare-fun e!4450856 () Bool)

(assert (=> b!7457361 (= res!2991357 e!4450856)))

(declare-fun res!2991352 () Bool)

(assert (=> b!7457361 (=> (not res!2991352) (not e!4450856))))

(declare-fun lt!2621910 () Bool)

(assert (=> b!7457361 (= res!2991352 lt!2621910)))

(declare-fun b!7457362 () Bool)

(declare-fun e!4450859 () Bool)

(assert (=> b!7457362 (= e!4450859 (nullable!8503 lt!2621864))))

(declare-fun b!7457363 () Bool)

(declare-fun res!2991354 () Bool)

(assert (=> b!7457363 (=> (not res!2991354) (not e!4450856))))

(assert (=> b!7457363 (= res!2991354 (isEmpty!41119 (tail!14871 s!13591)))))

(declare-fun b!7457364 () Bool)

(declare-fun e!4450854 () Bool)

(declare-fun e!4450858 () Bool)

(assert (=> b!7457364 (= e!4450854 e!4450858)))

(declare-fun res!2991359 () Bool)

(assert (=> b!7457364 (=> res!2991359 e!4450858)))

(declare-fun call!685089 () Bool)

(assert (=> b!7457364 (= res!2991359 call!685089)))

(declare-fun d!2297692 () Bool)

(declare-fun e!4450857 () Bool)

(assert (=> d!2297692 e!4450857))

(declare-fun c!1378757 () Bool)

(assert (=> d!2297692 (= c!1378757 ((_ is EmptyExpr!19517) lt!2621864))))

(assert (=> d!2297692 (= lt!2621910 e!4450859)))

(declare-fun c!1378755 () Bool)

(assert (=> d!2297692 (= c!1378755 (isEmpty!41119 s!13591))))

(assert (=> d!2297692 (validRegex!10031 lt!2621864)))

(assert (=> d!2297692 (= (matchR!9281 lt!2621864 s!13591) lt!2621910)))

(declare-fun b!7457365 () Bool)

(assert (=> b!7457365 (= e!4450858 (not (= (head!15302 s!13591) (c!1378680 lt!2621864))))))

(declare-fun b!7457366 () Bool)

(declare-fun e!4450855 () Bool)

(assert (=> b!7457366 (= e!4450857 e!4450855)))

(declare-fun c!1378756 () Bool)

(assert (=> b!7457366 (= c!1378756 ((_ is EmptyLang!19517) lt!2621864))))

(declare-fun b!7457367 () Bool)

(assert (=> b!7457367 (= e!4450856 (= (head!15302 s!13591) (c!1378680 lt!2621864)))))

(declare-fun b!7457368 () Bool)

(declare-fun res!2991356 () Bool)

(assert (=> b!7457368 (=> (not res!2991356) (not e!4450856))))

(assert (=> b!7457368 (= res!2991356 (not call!685089))))

(declare-fun b!7457369 () Bool)

(assert (=> b!7457369 (= e!4450853 e!4450854)))

(declare-fun res!2991353 () Bool)

(assert (=> b!7457369 (=> (not res!2991353) (not e!4450854))))

(assert (=> b!7457369 (= res!2991353 (not lt!2621910))))

(declare-fun b!7457370 () Bool)

(assert (=> b!7457370 (= e!4450857 (= lt!2621910 call!685089))))

(declare-fun b!7457371 () Bool)

(declare-fun res!2991355 () Bool)

(assert (=> b!7457371 (=> res!2991355 e!4450853)))

(assert (=> b!7457371 (= res!2991355 (not ((_ is ElementMatch!19517) lt!2621864)))))

(assert (=> b!7457371 (= e!4450855 e!4450853)))

(declare-fun bm!685083 () Bool)

(assert (=> bm!685083 (= call!685089 (isEmpty!41119 s!13591))))

(declare-fun b!7457372 () Bool)

(declare-fun res!2991358 () Bool)

(assert (=> b!7457372 (=> res!2991358 e!4450858)))

(assert (=> b!7457372 (= res!2991358 (not (isEmpty!41119 (tail!14871 s!13591))))))

(declare-fun b!7457373 () Bool)

(assert (=> b!7457373 (= e!4450859 (matchR!9281 (derivativeStep!5562 lt!2621864 (head!15302 s!13591)) (tail!14871 s!13591)))))

(declare-fun b!7457374 () Bool)

(assert (=> b!7457374 (= e!4450855 (not lt!2621910))))

(assert (= (and d!2297692 c!1378755) b!7457362))

(assert (= (and d!2297692 (not c!1378755)) b!7457373))

(assert (= (and d!2297692 c!1378757) b!7457370))

(assert (= (and d!2297692 (not c!1378757)) b!7457366))

(assert (= (and b!7457366 c!1378756) b!7457374))

(assert (= (and b!7457366 (not c!1378756)) b!7457371))

(assert (= (and b!7457371 (not res!2991355)) b!7457361))

(assert (= (and b!7457361 res!2991352) b!7457368))

(assert (= (and b!7457368 res!2991356) b!7457363))

(assert (= (and b!7457363 res!2991354) b!7457367))

(assert (= (and b!7457361 (not res!2991357)) b!7457369))

(assert (= (and b!7457369 res!2991353) b!7457364))

(assert (= (and b!7457364 (not res!2991359)) b!7457372))

(assert (= (and b!7457372 (not res!2991358)) b!7457365))

(assert (= (or b!7457370 b!7457364 b!7457368) bm!685083))

(assert (=> b!7457373 m!8060556))

(assert (=> b!7457373 m!8060556))

(declare-fun m!8060692 () Bool)

(assert (=> b!7457373 m!8060692))

(assert (=> b!7457373 m!8060560))

(assert (=> b!7457373 m!8060692))

(assert (=> b!7457373 m!8060560))

(declare-fun m!8060694 () Bool)

(assert (=> b!7457373 m!8060694))

(assert (=> b!7457367 m!8060556))

(assert (=> d!2297692 m!8060504))

(assert (=> d!2297692 m!8060660))

(assert (=> b!7457372 m!8060560))

(assert (=> b!7457372 m!8060560))

(assert (=> b!7457372 m!8060566))

(declare-fun m!8060696 () Bool)

(assert (=> b!7457362 m!8060696))

(assert (=> bm!685083 m!8060504))

(assert (=> b!7457363 m!8060560))

(assert (=> b!7457363 m!8060560))

(assert (=> b!7457363 m!8060566))

(assert (=> b!7457365 m!8060556))

(assert (=> b!7457026 d!2297692))

(declare-fun bs!1928573 () Bool)

(declare-fun b!7457379 () Bool)

(assert (= bs!1928573 (and b!7457379 b!7457098)))

(declare-fun lambda!461365 () Int)

(assert (=> bs!1928573 (= (and (= (reg!19846 lt!2621856) (reg!19846 lt!2621859)) (= lt!2621856 lt!2621859)) (= lambda!461365 lambda!461350))))

(declare-fun bs!1928574 () Bool)

(assert (= bs!1928574 (and b!7457379 b!7457022)))

(assert (=> bs!1928574 (not (= lambda!461365 lambda!461345))))

(declare-fun bs!1928575 () Bool)

(assert (= bs!1928575 (and b!7457379 b!7457099)))

(assert (=> bs!1928575 (not (= lambda!461365 lambda!461351))))

(declare-fun bs!1928576 () Bool)

(assert (= bs!1928576 (and b!7457379 b!7457184)))

(assert (=> bs!1928576 (not (= lambda!461365 lambda!461356))))

(declare-fun bs!1928577 () Bool)

(assert (= bs!1928577 (and b!7457379 b!7457183)))

(assert (=> bs!1928577 (= (and (= (reg!19846 lt!2621856) (reg!19846 lt!2621869)) (= lt!2621856 lt!2621869)) (= lambda!461365 lambda!461355))))

(assert (=> bs!1928574 (not (= lambda!461365 lambda!461344))))

(declare-fun bs!1928578 () Bool)

(assert (= bs!1928578 (and b!7457379 b!7457336)))

(assert (=> bs!1928578 (= (and (= (reg!19846 lt!2621856) (reg!19846 lt!2621864)) (= lt!2621856 lt!2621864)) (= lambda!461365 lambda!461363))))

(declare-fun bs!1928579 () Bool)

(assert (= bs!1928579 (and b!7457379 b!7457337)))

(assert (=> bs!1928579 (not (= lambda!461365 lambda!461364))))

(assert (=> b!7457379 true))

(assert (=> b!7457379 true))

(declare-fun bs!1928580 () Bool)

(declare-fun b!7457380 () Bool)

(assert (= bs!1928580 (and b!7457380 b!7457098)))

(declare-fun lambda!461366 () Int)

(assert (=> bs!1928580 (not (= lambda!461366 lambda!461350))))

(declare-fun bs!1928581 () Bool)

(assert (= bs!1928581 (and b!7457380 b!7457379)))

(assert (=> bs!1928581 (not (= lambda!461366 lambda!461365))))

(declare-fun bs!1928582 () Bool)

(assert (= bs!1928582 (and b!7457380 b!7457022)))

(assert (=> bs!1928582 (= (and (= (regOne!39546 lt!2621856) lt!2621867) (= (regTwo!39546 lt!2621856) rTail!78)) (= lambda!461366 lambda!461345))))

(declare-fun bs!1928583 () Bool)

(assert (= bs!1928583 (and b!7457380 b!7457099)))

(assert (=> bs!1928583 (= (and (= (regOne!39546 lt!2621856) (regOne!39546 lt!2621859)) (= (regTwo!39546 lt!2621856) (regTwo!39546 lt!2621859))) (= lambda!461366 lambda!461351))))

(declare-fun bs!1928584 () Bool)

(assert (= bs!1928584 (and b!7457380 b!7457184)))

(assert (=> bs!1928584 (= (and (= (regOne!39546 lt!2621856) (regOne!39546 lt!2621869)) (= (regTwo!39546 lt!2621856) (regTwo!39546 lt!2621869))) (= lambda!461366 lambda!461356))))

(declare-fun bs!1928585 () Bool)

(assert (= bs!1928585 (and b!7457380 b!7457183)))

(assert (=> bs!1928585 (not (= lambda!461366 lambda!461355))))

(assert (=> bs!1928582 (not (= lambda!461366 lambda!461344))))

(declare-fun bs!1928586 () Bool)

(assert (= bs!1928586 (and b!7457380 b!7457336)))

(assert (=> bs!1928586 (not (= lambda!461366 lambda!461363))))

(declare-fun bs!1928587 () Bool)

(assert (= bs!1928587 (and b!7457380 b!7457337)))

(assert (=> bs!1928587 (= (and (= (regOne!39546 lt!2621856) (regOne!39546 lt!2621864)) (= (regTwo!39546 lt!2621856) (regTwo!39546 lt!2621864))) (= lambda!461366 lambda!461364))))

(assert (=> b!7457380 true))

(assert (=> b!7457380 true))

(declare-fun b!7457375 () Bool)

(declare-fun e!4450864 () Bool)

(declare-fun call!685092 () Bool)

(assert (=> b!7457375 (= e!4450864 call!685092)))

(declare-fun b!7457376 () Bool)

(declare-fun e!4450865 () Bool)

(declare-fun e!4450866 () Bool)

(assert (=> b!7457376 (= e!4450865 e!4450866)))

(declare-fun res!2991362 () Bool)

(assert (=> b!7457376 (= res!2991362 (matchRSpec!4196 (regOne!39547 lt!2621856) s!13591))))

(assert (=> b!7457376 (=> res!2991362 e!4450866)))

(declare-fun c!1378761 () Bool)

(declare-fun bm!685086 () Bool)

(declare-fun call!685091 () Bool)

(assert (=> bm!685086 (= call!685091 (Exists!4138 (ite c!1378761 lambda!461365 lambda!461366)))))

(declare-fun b!7457378 () Bool)

(declare-fun c!1378758 () Bool)

(assert (=> b!7457378 (= c!1378758 ((_ is Union!19517) lt!2621856))))

(declare-fun e!4450860 () Bool)

(assert (=> b!7457378 (= e!4450860 e!4450865)))

(declare-fun e!4450862 () Bool)

(assert (=> b!7457379 (= e!4450862 call!685091)))

(declare-fun e!4450863 () Bool)

(assert (=> b!7457380 (= e!4450863 call!685091)))

(declare-fun b!7457381 () Bool)

(assert (=> b!7457381 (= e!4450860 (= s!13591 (Cons!72109 (c!1378680 lt!2621856) Nil!72109)))))

(declare-fun b!7457382 () Bool)

(declare-fun c!1378760 () Bool)

(assert (=> b!7457382 (= c!1378760 ((_ is ElementMatch!19517) lt!2621856))))

(declare-fun e!4450861 () Bool)

(assert (=> b!7457382 (= e!4450861 e!4450860)))

(declare-fun b!7457377 () Bool)

(assert (=> b!7457377 (= e!4450865 e!4450863)))

(assert (=> b!7457377 (= c!1378761 ((_ is Star!19517) lt!2621856))))

(declare-fun d!2297694 () Bool)

(declare-fun c!1378759 () Bool)

(assert (=> d!2297694 (= c!1378759 ((_ is EmptyExpr!19517) lt!2621856))))

(assert (=> d!2297694 (= (matchRSpec!4196 lt!2621856 s!13591) e!4450864)))

(declare-fun b!7457383 () Bool)

(assert (=> b!7457383 (= e!4450864 e!4450861)))

(declare-fun res!2991360 () Bool)

(assert (=> b!7457383 (= res!2991360 (not ((_ is EmptyLang!19517) lt!2621856)))))

(assert (=> b!7457383 (=> (not res!2991360) (not e!4450861))))

(declare-fun bm!685087 () Bool)

(assert (=> bm!685087 (= call!685092 (isEmpty!41119 s!13591))))

(declare-fun b!7457384 () Bool)

(declare-fun res!2991361 () Bool)

(assert (=> b!7457384 (=> res!2991361 e!4450862)))

(assert (=> b!7457384 (= res!2991361 call!685092)))

(assert (=> b!7457384 (= e!4450863 e!4450862)))

(declare-fun b!7457385 () Bool)

(assert (=> b!7457385 (= e!4450866 (matchRSpec!4196 (regTwo!39547 lt!2621856) s!13591))))

(assert (= (and d!2297694 c!1378759) b!7457375))

(assert (= (and d!2297694 (not c!1378759)) b!7457383))

(assert (= (and b!7457383 res!2991360) b!7457382))

(assert (= (and b!7457382 c!1378760) b!7457381))

(assert (= (and b!7457382 (not c!1378760)) b!7457378))

(assert (= (and b!7457378 c!1378758) b!7457376))

(assert (= (and b!7457378 (not c!1378758)) b!7457377))

(assert (= (and b!7457376 (not res!2991362)) b!7457385))

(assert (= (and b!7457377 c!1378761) b!7457384))

(assert (= (and b!7457377 (not c!1378761)) b!7457380))

(assert (= (and b!7457384 (not res!2991361)) b!7457379))

(assert (= (or b!7457379 b!7457380) bm!685086))

(assert (= (or b!7457375 b!7457384) bm!685087))

(declare-fun m!8060710 () Bool)

(assert (=> b!7457376 m!8060710))

(declare-fun m!8060712 () Bool)

(assert (=> bm!685086 m!8060712))

(assert (=> bm!685087 m!8060504))

(declare-fun m!8060714 () Bool)

(assert (=> b!7457385 m!8060714))

(assert (=> b!7457026 d!2297694))

(declare-fun c!1378766 () Bool)

(declare-fun call!685099 () Bool)

(declare-fun c!1378767 () Bool)

(declare-fun bm!685094 () Bool)

(assert (=> bm!685094 (= call!685099 (validRegex!10031 (ite c!1378767 (reg!19846 r2!5783) (ite c!1378766 (regTwo!39547 r2!5783) (regTwo!39546 r2!5783)))))))

(declare-fun b!7457404 () Bool)

(declare-fun e!4450881 () Bool)

(declare-fun e!4450887 () Bool)

(assert (=> b!7457404 (= e!4450881 e!4450887)))

(declare-fun res!2991375 () Bool)

(assert (=> b!7457404 (=> (not res!2991375) (not e!4450887))))

(declare-fun call!685101 () Bool)

(assert (=> b!7457404 (= res!2991375 call!685101)))

(declare-fun b!7457405 () Bool)

(declare-fun e!4450883 () Bool)

(assert (=> b!7457405 (= e!4450883 call!685099)))

(declare-fun bm!685095 () Bool)

(declare-fun call!685100 () Bool)

(assert (=> bm!685095 (= call!685100 call!685099)))

(declare-fun bm!685096 () Bool)

(assert (=> bm!685096 (= call!685101 (validRegex!10031 (ite c!1378766 (regOne!39547 r2!5783) (regOne!39546 r2!5783))))))

(declare-fun b!7457406 () Bool)

(declare-fun e!4450882 () Bool)

(declare-fun e!4450884 () Bool)

(assert (=> b!7457406 (= e!4450882 e!4450884)))

(assert (=> b!7457406 (= c!1378766 ((_ is Union!19517) r2!5783))))

(declare-fun b!7457407 () Bool)

(declare-fun e!4450886 () Bool)

(assert (=> b!7457407 (= e!4450886 call!685100)))

(declare-fun b!7457408 () Bool)

(declare-fun e!4450885 () Bool)

(assert (=> b!7457408 (= e!4450885 e!4450882)))

(assert (=> b!7457408 (= c!1378767 ((_ is Star!19517) r2!5783))))

(declare-fun b!7457409 () Bool)

(assert (=> b!7457409 (= e!4450887 call!685100)))

(declare-fun d!2297700 () Bool)

(declare-fun res!2991377 () Bool)

(assert (=> d!2297700 (=> res!2991377 e!4450885)))

(assert (=> d!2297700 (= res!2991377 ((_ is ElementMatch!19517) r2!5783))))

(assert (=> d!2297700 (= (validRegex!10031 r2!5783) e!4450885)))

(declare-fun b!7457410 () Bool)

(declare-fun res!2991373 () Bool)

(assert (=> b!7457410 (=> (not res!2991373) (not e!4450886))))

(assert (=> b!7457410 (= res!2991373 call!685101)))

(assert (=> b!7457410 (= e!4450884 e!4450886)))

(declare-fun b!7457411 () Bool)

(assert (=> b!7457411 (= e!4450882 e!4450883)))

(declare-fun res!2991376 () Bool)

(assert (=> b!7457411 (= res!2991376 (not (nullable!8503 (reg!19846 r2!5783))))))

(assert (=> b!7457411 (=> (not res!2991376) (not e!4450883))))

(declare-fun b!7457412 () Bool)

(declare-fun res!2991374 () Bool)

(assert (=> b!7457412 (=> res!2991374 e!4450881)))

(assert (=> b!7457412 (= res!2991374 (not ((_ is Concat!28362) r2!5783)))))

(assert (=> b!7457412 (= e!4450884 e!4450881)))

(assert (= (and d!2297700 (not res!2991377)) b!7457408))

(assert (= (and b!7457408 c!1378767) b!7457411))

(assert (= (and b!7457408 (not c!1378767)) b!7457406))

(assert (= (and b!7457411 res!2991376) b!7457405))

(assert (= (and b!7457406 c!1378766) b!7457410))

(assert (= (and b!7457406 (not c!1378766)) b!7457412))

(assert (= (and b!7457410 res!2991373) b!7457407))

(assert (= (and b!7457412 (not res!2991374)) b!7457404))

(assert (= (and b!7457404 res!2991375) b!7457409))

(assert (= (or b!7457407 b!7457409) bm!685095))

(assert (= (or b!7457410 b!7457404) bm!685096))

(assert (= (or b!7457405 bm!685095) bm!685094))

(declare-fun m!8060716 () Bool)

(assert (=> bm!685094 m!8060716))

(declare-fun m!8060718 () Bool)

(assert (=> bm!685096 m!8060718))

(declare-fun m!8060720 () Bool)

(assert (=> b!7457411 m!8060720))

(assert (=> b!7457017 d!2297700))

(declare-fun d!2297702 () Bool)

(assert (=> d!2297702 (= (get!25159 lt!2621849) (v!54204 lt!2621849))))

(assert (=> b!7457022 d!2297702))

(declare-fun bs!1928588 () Bool)

(declare-fun d!2297704 () Bool)

(assert (= bs!1928588 (and d!2297704 b!7457098)))

(declare-fun lambda!461373 () Int)

(assert (=> bs!1928588 (not (= lambda!461373 lambda!461350))))

(declare-fun bs!1928589 () Bool)

(assert (= bs!1928589 (and d!2297704 b!7457379)))

(assert (=> bs!1928589 (not (= lambda!461373 lambda!461365))))

(declare-fun bs!1928590 () Bool)

(assert (= bs!1928590 (and d!2297704 b!7457022)))

(assert (=> bs!1928590 (not (= lambda!461373 lambda!461345))))

(declare-fun bs!1928591 () Bool)

(assert (= bs!1928591 (and d!2297704 b!7457099)))

(assert (=> bs!1928591 (not (= lambda!461373 lambda!461351))))

(declare-fun bs!1928592 () Bool)

(assert (= bs!1928592 (and d!2297704 b!7457380)))

(assert (=> bs!1928592 (not (= lambda!461373 lambda!461366))))

(declare-fun bs!1928593 () Bool)

(assert (= bs!1928593 (and d!2297704 b!7457184)))

(assert (=> bs!1928593 (not (= lambda!461373 lambda!461356))))

(declare-fun bs!1928594 () Bool)

(assert (= bs!1928594 (and d!2297704 b!7457183)))

(assert (=> bs!1928594 (not (= lambda!461373 lambda!461355))))

(assert (=> bs!1928590 (= lambda!461373 lambda!461344)))

(declare-fun bs!1928595 () Bool)

(assert (= bs!1928595 (and d!2297704 b!7457336)))

(assert (=> bs!1928595 (not (= lambda!461373 lambda!461363))))

(declare-fun bs!1928596 () Bool)

(assert (= bs!1928596 (and d!2297704 b!7457337)))

(assert (=> bs!1928596 (not (= lambda!461373 lambda!461364))))

(assert (=> d!2297704 true))

(assert (=> d!2297704 true))

(assert (=> d!2297704 true))

(assert (=> d!2297704 (= (isDefined!13765 (findConcatSeparation!3198 lt!2621867 rTail!78 Nil!72109 s!13591 s!13591)) (Exists!4138 lambda!461373))))

(declare-fun lt!2621913 () Unit!165869)

(declare-fun choose!57645 (Regex!19517 Regex!19517 List!72233) Unit!165869)

(assert (=> d!2297704 (= lt!2621913 (choose!57645 lt!2621867 rTail!78 s!13591))))

(assert (=> d!2297704 (validRegex!10031 lt!2621867)))

(assert (=> d!2297704 (= (lemmaFindConcatSeparationEquivalentToExists!2956 lt!2621867 rTail!78 s!13591) lt!2621913)))

(declare-fun bs!1928597 () Bool)

(assert (= bs!1928597 d!2297704))

(declare-fun m!8060722 () Bool)

(assert (=> bs!1928597 m!8060722))

(assert (=> bs!1928597 m!8060454))

(declare-fun m!8060724 () Bool)

(assert (=> bs!1928597 m!8060724))

(assert (=> bs!1928597 m!8060454))

(declare-fun m!8060726 () Bool)

(assert (=> bs!1928597 m!8060726))

(declare-fun m!8060728 () Bool)

(assert (=> bs!1928597 m!8060728))

(assert (=> b!7457022 d!2297704))

(declare-fun d!2297706 () Bool)

(declare-fun choose!57646 (Int) Bool)

(assert (=> d!2297706 (= (Exists!4138 lambda!461345) (choose!57646 lambda!461345))))

(declare-fun bs!1928598 () Bool)

(assert (= bs!1928598 d!2297706))

(declare-fun m!8060730 () Bool)

(assert (=> bs!1928598 m!8060730))

(assert (=> b!7457022 d!2297706))

(declare-fun d!2297708 () Bool)

(declare-fun isEmpty!41122 (Option!17076) Bool)

(assert (=> d!2297708 (= (isDefined!13765 lt!2621849) (not (isEmpty!41122 lt!2621849)))))

(declare-fun bs!1928599 () Bool)

(assert (= bs!1928599 d!2297708))

(declare-fun m!8060732 () Bool)

(assert (=> bs!1928599 m!8060732))

(assert (=> b!7457022 d!2297708))

(declare-fun bs!1928618 () Bool)

(declare-fun d!2297710 () Bool)

(assert (= bs!1928618 (and d!2297710 b!7457098)))

(declare-fun lambda!461382 () Int)

(assert (=> bs!1928618 (not (= lambda!461382 lambda!461350))))

(declare-fun bs!1928619 () Bool)

(assert (= bs!1928619 (and d!2297710 b!7457379)))

(assert (=> bs!1928619 (not (= lambda!461382 lambda!461365))))

(declare-fun bs!1928620 () Bool)

(assert (= bs!1928620 (and d!2297710 b!7457022)))

(assert (=> bs!1928620 (not (= lambda!461382 lambda!461345))))

(declare-fun bs!1928621 () Bool)

(assert (= bs!1928621 (and d!2297710 b!7457099)))

(assert (=> bs!1928621 (not (= lambda!461382 lambda!461351))))

(declare-fun bs!1928622 () Bool)

(assert (= bs!1928622 (and d!2297710 b!7457380)))

(assert (=> bs!1928622 (not (= lambda!461382 lambda!461366))))

(declare-fun bs!1928623 () Bool)

(assert (= bs!1928623 (and d!2297710 b!7457184)))

(assert (=> bs!1928623 (not (= lambda!461382 lambda!461356))))

(declare-fun bs!1928624 () Bool)

(assert (= bs!1928624 (and d!2297710 b!7457183)))

(assert (=> bs!1928624 (not (= lambda!461382 lambda!461355))))

(assert (=> bs!1928620 (= lambda!461382 lambda!461344)))

(declare-fun bs!1928625 () Bool)

(assert (= bs!1928625 (and d!2297710 b!7457337)))

(assert (=> bs!1928625 (not (= lambda!461382 lambda!461364))))

(declare-fun bs!1928626 () Bool)

(assert (= bs!1928626 (and d!2297710 b!7457336)))

(assert (=> bs!1928626 (not (= lambda!461382 lambda!461363))))

(declare-fun bs!1928627 () Bool)

(assert (= bs!1928627 (and d!2297710 d!2297704)))

(assert (=> bs!1928627 (= lambda!461382 lambda!461373)))

(assert (=> d!2297710 true))

(assert (=> d!2297710 true))

(assert (=> d!2297710 true))

(declare-fun lambda!461383 () Int)

(assert (=> bs!1928619 (not (= lambda!461383 lambda!461365))))

(assert (=> bs!1928620 (= lambda!461383 lambda!461345)))

(assert (=> bs!1928621 (= (and (= lt!2621867 (regOne!39546 lt!2621859)) (= rTail!78 (regTwo!39546 lt!2621859))) (= lambda!461383 lambda!461351))))

(assert (=> bs!1928622 (= (and (= lt!2621867 (regOne!39546 lt!2621856)) (= rTail!78 (regTwo!39546 lt!2621856))) (= lambda!461383 lambda!461366))))

(assert (=> bs!1928623 (= (and (= lt!2621867 (regOne!39546 lt!2621869)) (= rTail!78 (regTwo!39546 lt!2621869))) (= lambda!461383 lambda!461356))))

(assert (=> bs!1928624 (not (= lambda!461383 lambda!461355))))

(assert (=> bs!1928620 (not (= lambda!461383 lambda!461344))))

(assert (=> bs!1928625 (= (and (= lt!2621867 (regOne!39546 lt!2621864)) (= rTail!78 (regTwo!39546 lt!2621864))) (= lambda!461383 lambda!461364))))

(declare-fun bs!1928629 () Bool)

(assert (= bs!1928629 d!2297710))

(assert (=> bs!1928629 (not (= lambda!461383 lambda!461382))))

(assert (=> bs!1928618 (not (= lambda!461383 lambda!461350))))

(assert (=> bs!1928626 (not (= lambda!461383 lambda!461363))))

(assert (=> bs!1928627 (not (= lambda!461383 lambda!461373))))

(assert (=> d!2297710 true))

(assert (=> d!2297710 true))

(assert (=> d!2297710 true))

(assert (=> d!2297710 (= (Exists!4138 lambda!461382) (Exists!4138 lambda!461383))))

(declare-fun lt!2621916 () Unit!165869)

(declare-fun choose!57647 (Regex!19517 Regex!19517 List!72233) Unit!165869)

(assert (=> d!2297710 (= lt!2621916 (choose!57647 lt!2621867 rTail!78 s!13591))))

(assert (=> d!2297710 (validRegex!10031 lt!2621867)))

(assert (=> d!2297710 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2474 lt!2621867 rTail!78 s!13591) lt!2621916)))

(declare-fun m!8060764 () Bool)

(assert (=> bs!1928629 m!8060764))

(declare-fun m!8060766 () Bool)

(assert (=> bs!1928629 m!8060766))

(declare-fun m!8060768 () Bool)

(assert (=> bs!1928629 m!8060768))

(assert (=> bs!1928629 m!8060722))

(assert (=> b!7457022 d!2297710))

(declare-fun b!7457507 () Bool)

(declare-fun res!2991433 () Bool)

(declare-fun e!4450940 () Bool)

(assert (=> b!7457507 (=> res!2991433 e!4450940)))

(declare-fun e!4450943 () Bool)

(assert (=> b!7457507 (= res!2991433 e!4450943)))

(declare-fun res!2991428 () Bool)

(assert (=> b!7457507 (=> (not res!2991428) (not e!4450943))))

(declare-fun lt!2621922 () Bool)

(assert (=> b!7457507 (= res!2991428 lt!2621922)))

(declare-fun b!7457508 () Bool)

(declare-fun e!4450946 () Bool)

(assert (=> b!7457508 (= e!4450946 (nullable!8503 lt!2621867))))

(declare-fun b!7457509 () Bool)

(declare-fun res!2991430 () Bool)

(assert (=> b!7457509 (=> (not res!2991430) (not e!4450943))))

(assert (=> b!7457509 (= res!2991430 (isEmpty!41119 (tail!14871 (_1!37547 lt!2621846))))))

(declare-fun b!7457510 () Bool)

(declare-fun e!4450941 () Bool)

(declare-fun e!4450945 () Bool)

(assert (=> b!7457510 (= e!4450941 e!4450945)))

(declare-fun res!2991435 () Bool)

(assert (=> b!7457510 (=> res!2991435 e!4450945)))

(declare-fun call!685112 () Bool)

(assert (=> b!7457510 (= res!2991435 call!685112)))

(declare-fun d!2297720 () Bool)

(declare-fun e!4450944 () Bool)

(assert (=> d!2297720 e!4450944))

(declare-fun c!1378792 () Bool)

(assert (=> d!2297720 (= c!1378792 ((_ is EmptyExpr!19517) lt!2621867))))

(assert (=> d!2297720 (= lt!2621922 e!4450946)))

(declare-fun c!1378790 () Bool)

(assert (=> d!2297720 (= c!1378790 (isEmpty!41119 (_1!37547 lt!2621846)))))

(assert (=> d!2297720 (validRegex!10031 lt!2621867)))

(assert (=> d!2297720 (= (matchR!9281 lt!2621867 (_1!37547 lt!2621846)) lt!2621922)))

(declare-fun b!7457511 () Bool)

(assert (=> b!7457511 (= e!4450945 (not (= (head!15302 (_1!37547 lt!2621846)) (c!1378680 lt!2621867))))))

(declare-fun b!7457512 () Bool)

(declare-fun e!4450942 () Bool)

(assert (=> b!7457512 (= e!4450944 e!4450942)))

(declare-fun c!1378791 () Bool)

(assert (=> b!7457512 (= c!1378791 ((_ is EmptyLang!19517) lt!2621867))))

(declare-fun b!7457513 () Bool)

(assert (=> b!7457513 (= e!4450943 (= (head!15302 (_1!37547 lt!2621846)) (c!1378680 lt!2621867)))))

(declare-fun b!7457514 () Bool)

(declare-fun res!2991432 () Bool)

(assert (=> b!7457514 (=> (not res!2991432) (not e!4450943))))

(assert (=> b!7457514 (= res!2991432 (not call!685112))))

(declare-fun b!7457515 () Bool)

(assert (=> b!7457515 (= e!4450940 e!4450941)))

(declare-fun res!2991429 () Bool)

(assert (=> b!7457515 (=> (not res!2991429) (not e!4450941))))

(assert (=> b!7457515 (= res!2991429 (not lt!2621922))))

(declare-fun b!7457516 () Bool)

(assert (=> b!7457516 (= e!4450944 (= lt!2621922 call!685112))))

(declare-fun b!7457517 () Bool)

(declare-fun res!2991431 () Bool)

(assert (=> b!7457517 (=> res!2991431 e!4450940)))

(assert (=> b!7457517 (= res!2991431 (not ((_ is ElementMatch!19517) lt!2621867)))))

(assert (=> b!7457517 (= e!4450942 e!4450940)))

(declare-fun bm!685107 () Bool)

(assert (=> bm!685107 (= call!685112 (isEmpty!41119 (_1!37547 lt!2621846)))))

(declare-fun b!7457518 () Bool)

(declare-fun res!2991434 () Bool)

(assert (=> b!7457518 (=> res!2991434 e!4450945)))

(assert (=> b!7457518 (= res!2991434 (not (isEmpty!41119 (tail!14871 (_1!37547 lt!2621846)))))))

(declare-fun b!7457519 () Bool)

(assert (=> b!7457519 (= e!4450946 (matchR!9281 (derivativeStep!5562 lt!2621867 (head!15302 (_1!37547 lt!2621846))) (tail!14871 (_1!37547 lt!2621846))))))

(declare-fun b!7457520 () Bool)

(assert (=> b!7457520 (= e!4450942 (not lt!2621922))))

(assert (= (and d!2297720 c!1378790) b!7457508))

(assert (= (and d!2297720 (not c!1378790)) b!7457519))

(assert (= (and d!2297720 c!1378792) b!7457516))

(assert (= (and d!2297720 (not c!1378792)) b!7457512))

(assert (= (and b!7457512 c!1378791) b!7457520))

(assert (= (and b!7457512 (not c!1378791)) b!7457517))

(assert (= (and b!7457517 (not res!2991431)) b!7457507))

(assert (= (and b!7457507 res!2991428) b!7457514))

(assert (= (and b!7457514 res!2991432) b!7457509))

(assert (= (and b!7457509 res!2991430) b!7457513))

(assert (= (and b!7457507 (not res!2991433)) b!7457515))

(assert (= (and b!7457515 res!2991429) b!7457510))

(assert (= (and b!7457510 (not res!2991435)) b!7457518))

(assert (= (and b!7457518 (not res!2991434)) b!7457511))

(assert (= (or b!7457516 b!7457510 b!7457514) bm!685107))

(declare-fun m!8060778 () Bool)

(assert (=> b!7457519 m!8060778))

(assert (=> b!7457519 m!8060778))

(declare-fun m!8060780 () Bool)

(assert (=> b!7457519 m!8060780))

(declare-fun m!8060782 () Bool)

(assert (=> b!7457519 m!8060782))

(assert (=> b!7457519 m!8060780))

(assert (=> b!7457519 m!8060782))

(declare-fun m!8060784 () Bool)

(assert (=> b!7457519 m!8060784))

(assert (=> b!7457513 m!8060778))

(declare-fun m!8060786 () Bool)

(assert (=> d!2297720 m!8060786))

(assert (=> d!2297720 m!8060722))

(assert (=> b!7457518 m!8060782))

(assert (=> b!7457518 m!8060782))

(declare-fun m!8060788 () Bool)

(assert (=> b!7457518 m!8060788))

(declare-fun m!8060790 () Bool)

(assert (=> b!7457508 m!8060790))

(assert (=> bm!685107 m!8060786))

(assert (=> b!7457509 m!8060782))

(assert (=> b!7457509 m!8060782))

(assert (=> b!7457509 m!8060788))

(assert (=> b!7457511 m!8060778))

(assert (=> b!7457022 d!2297720))

(declare-fun b!7457585 () Bool)

(declare-fun res!2991469 () Bool)

(declare-fun e!4450990 () Bool)

(assert (=> b!7457585 (=> (not res!2991469) (not e!4450990))))

(declare-fun lt!2621938 () Option!17076)

(assert (=> b!7457585 (= res!2991469 (matchR!9281 lt!2621867 (_1!37547 (get!25159 lt!2621938))))))

(declare-fun b!7457586 () Bool)

(declare-fun res!2991468 () Bool)

(assert (=> b!7457586 (=> (not res!2991468) (not e!4450990))))

(assert (=> b!7457586 (= res!2991468 (matchR!9281 rTail!78 (_2!37547 (get!25159 lt!2621938))))))

(declare-fun b!7457588 () Bool)

(assert (=> b!7457588 (= e!4450990 (= (++!17175 (_1!37547 (get!25159 lt!2621938)) (_2!37547 (get!25159 lt!2621938))) s!13591))))

(declare-fun b!7457589 () Bool)

(declare-fun e!4450988 () Option!17076)

(assert (=> b!7457589 (= e!4450988 (Some!17075 (tuple2!68489 Nil!72109 s!13591)))))

(declare-fun b!7457590 () Bool)

(declare-fun e!4450987 () Bool)

(assert (=> b!7457590 (= e!4450987 (matchR!9281 rTail!78 s!13591))))

(declare-fun b!7457587 () Bool)

(declare-fun e!4450991 () Option!17076)

(assert (=> b!7457587 (= e!4450991 None!17075)))

(declare-fun d!2297726 () Bool)

(declare-fun e!4450989 () Bool)

(assert (=> d!2297726 e!4450989))

(declare-fun res!2991466 () Bool)

(assert (=> d!2297726 (=> res!2991466 e!4450989)))

(assert (=> d!2297726 (= res!2991466 e!4450990)))

(declare-fun res!2991470 () Bool)

(assert (=> d!2297726 (=> (not res!2991470) (not e!4450990))))

(assert (=> d!2297726 (= res!2991470 (isDefined!13765 lt!2621938))))

(assert (=> d!2297726 (= lt!2621938 e!4450988)))

(declare-fun c!1378810 () Bool)

(assert (=> d!2297726 (= c!1378810 e!4450987)))

(declare-fun res!2991467 () Bool)

(assert (=> d!2297726 (=> (not res!2991467) (not e!4450987))))

(assert (=> d!2297726 (= res!2991467 (matchR!9281 lt!2621867 Nil!72109))))

(assert (=> d!2297726 (validRegex!10031 lt!2621867)))

(assert (=> d!2297726 (= (findConcatSeparation!3198 lt!2621867 rTail!78 Nil!72109 s!13591 s!13591) lt!2621938)))

(declare-fun b!7457591 () Bool)

(assert (=> b!7457591 (= e!4450989 (not (isDefined!13765 lt!2621938)))))

(declare-fun b!7457592 () Bool)

(assert (=> b!7457592 (= e!4450988 e!4450991)))

(declare-fun c!1378811 () Bool)

(assert (=> b!7457592 (= c!1378811 ((_ is Nil!72109) s!13591))))

(declare-fun b!7457593 () Bool)

(declare-fun lt!2621937 () Unit!165869)

(declare-fun lt!2621936 () Unit!165869)

(assert (=> b!7457593 (= lt!2621937 lt!2621936)))

(assert (=> b!7457593 (= (++!17175 (++!17175 Nil!72109 (Cons!72109 (h!78557 s!13591) Nil!72109)) (t!386802 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3055 (List!72233 C!39308 List!72233 List!72233) Unit!165869)

(assert (=> b!7457593 (= lt!2621936 (lemmaMoveElementToOtherListKeepsConcatEq!3055 Nil!72109 (h!78557 s!13591) (t!386802 s!13591) s!13591))))

(assert (=> b!7457593 (= e!4450991 (findConcatSeparation!3198 lt!2621867 rTail!78 (++!17175 Nil!72109 (Cons!72109 (h!78557 s!13591) Nil!72109)) (t!386802 s!13591) s!13591))))

(assert (= (and d!2297726 res!2991467) b!7457590))

(assert (= (and d!2297726 c!1378810) b!7457589))

(assert (= (and d!2297726 (not c!1378810)) b!7457592))

(assert (= (and b!7457592 c!1378811) b!7457587))

(assert (= (and b!7457592 (not c!1378811)) b!7457593))

(assert (= (and d!2297726 res!2991470) b!7457585))

(assert (= (and b!7457585 res!2991469) b!7457586))

(assert (= (and b!7457586 res!2991468) b!7457588))

(assert (= (and d!2297726 (not res!2991466)) b!7457591))

(declare-fun m!8060824 () Bool)

(assert (=> b!7457586 m!8060824))

(declare-fun m!8060826 () Bool)

(assert (=> b!7457586 m!8060826))

(declare-fun m!8060828 () Bool)

(assert (=> d!2297726 m!8060828))

(declare-fun m!8060830 () Bool)

(assert (=> d!2297726 m!8060830))

(assert (=> d!2297726 m!8060722))

(declare-fun m!8060832 () Bool)

(assert (=> b!7457590 m!8060832))

(assert (=> b!7457588 m!8060824))

(declare-fun m!8060834 () Bool)

(assert (=> b!7457588 m!8060834))

(assert (=> b!7457585 m!8060824))

(declare-fun m!8060836 () Bool)

(assert (=> b!7457585 m!8060836))

(declare-fun m!8060838 () Bool)

(assert (=> b!7457593 m!8060838))

(assert (=> b!7457593 m!8060838))

(declare-fun m!8060840 () Bool)

(assert (=> b!7457593 m!8060840))

(declare-fun m!8060842 () Bool)

(assert (=> b!7457593 m!8060842))

(assert (=> b!7457593 m!8060838))

(declare-fun m!8060844 () Bool)

(assert (=> b!7457593 m!8060844))

(assert (=> b!7457591 m!8060828))

(assert (=> b!7457022 d!2297726))

(declare-fun d!2297736 () Bool)

(assert (=> d!2297736 (= (Exists!4138 lambda!461344) (choose!57646 lambda!461344))))

(declare-fun bs!1928655 () Bool)

(assert (= bs!1928655 d!2297736))

(declare-fun m!8060846 () Bool)

(assert (=> bs!1928655 m!8060846))

(assert (=> b!7457022 d!2297736))

(declare-fun c!1378812 () Bool)

(declare-fun bm!685115 () Bool)

(declare-fun call!685120 () Bool)

(declare-fun c!1378813 () Bool)

(assert (=> bm!685115 (= call!685120 (validRegex!10031 (ite c!1378813 (reg!19846 r1!5845) (ite c!1378812 (regTwo!39547 r1!5845) (regTwo!39546 r1!5845)))))))

(declare-fun b!7457594 () Bool)

(declare-fun e!4450992 () Bool)

(declare-fun e!4450998 () Bool)

(assert (=> b!7457594 (= e!4450992 e!4450998)))

(declare-fun res!2991473 () Bool)

(assert (=> b!7457594 (=> (not res!2991473) (not e!4450998))))

(declare-fun call!685122 () Bool)

(assert (=> b!7457594 (= res!2991473 call!685122)))

(declare-fun b!7457595 () Bool)

(declare-fun e!4450994 () Bool)

(assert (=> b!7457595 (= e!4450994 call!685120)))

(declare-fun bm!685116 () Bool)

(declare-fun call!685121 () Bool)

(assert (=> bm!685116 (= call!685121 call!685120)))

(declare-fun bm!685117 () Bool)

(assert (=> bm!685117 (= call!685122 (validRegex!10031 (ite c!1378812 (regOne!39547 r1!5845) (regOne!39546 r1!5845))))))

(declare-fun b!7457596 () Bool)

(declare-fun e!4450993 () Bool)

(declare-fun e!4450995 () Bool)

(assert (=> b!7457596 (= e!4450993 e!4450995)))

(assert (=> b!7457596 (= c!1378812 ((_ is Union!19517) r1!5845))))

(declare-fun b!7457597 () Bool)

(declare-fun e!4450997 () Bool)

(assert (=> b!7457597 (= e!4450997 call!685121)))

(declare-fun b!7457598 () Bool)

(declare-fun e!4450996 () Bool)

(assert (=> b!7457598 (= e!4450996 e!4450993)))

(assert (=> b!7457598 (= c!1378813 ((_ is Star!19517) r1!5845))))

(declare-fun b!7457599 () Bool)

(assert (=> b!7457599 (= e!4450998 call!685121)))

(declare-fun d!2297738 () Bool)

(declare-fun res!2991475 () Bool)

(assert (=> d!2297738 (=> res!2991475 e!4450996)))

(assert (=> d!2297738 (= res!2991475 ((_ is ElementMatch!19517) r1!5845))))

(assert (=> d!2297738 (= (validRegex!10031 r1!5845) e!4450996)))

(declare-fun b!7457600 () Bool)

(declare-fun res!2991471 () Bool)

(assert (=> b!7457600 (=> (not res!2991471) (not e!4450997))))

(assert (=> b!7457600 (= res!2991471 call!685122)))

(assert (=> b!7457600 (= e!4450995 e!4450997)))

(declare-fun b!7457601 () Bool)

(assert (=> b!7457601 (= e!4450993 e!4450994)))

(declare-fun res!2991474 () Bool)

(assert (=> b!7457601 (= res!2991474 (not (nullable!8503 (reg!19846 r1!5845))))))

(assert (=> b!7457601 (=> (not res!2991474) (not e!4450994))))

(declare-fun b!7457602 () Bool)

(declare-fun res!2991472 () Bool)

(assert (=> b!7457602 (=> res!2991472 e!4450992)))

(assert (=> b!7457602 (= res!2991472 (not ((_ is Concat!28362) r1!5845)))))

(assert (=> b!7457602 (= e!4450995 e!4450992)))

(assert (= (and d!2297738 (not res!2991475)) b!7457598))

(assert (= (and b!7457598 c!1378813) b!7457601))

(assert (= (and b!7457598 (not c!1378813)) b!7457596))

(assert (= (and b!7457601 res!2991474) b!7457595))

(assert (= (and b!7457596 c!1378812) b!7457600))

(assert (= (and b!7457596 (not c!1378812)) b!7457602))

(assert (= (and b!7457600 res!2991471) b!7457597))

(assert (= (and b!7457602 (not res!2991472)) b!7457594))

(assert (= (and b!7457594 res!2991473) b!7457599))

(assert (= (or b!7457597 b!7457599) bm!685116))

(assert (= (or b!7457600 b!7457594) bm!685117))

(assert (= (or b!7457595 bm!685116) bm!685115))

(declare-fun m!8060848 () Bool)

(assert (=> bm!685115 m!8060848))

(declare-fun m!8060850 () Bool)

(assert (=> bm!685117 m!8060850))

(declare-fun m!8060852 () Bool)

(assert (=> b!7457601 m!8060852))

(assert (=> start!723654 d!2297738))

(declare-fun bs!1928665 () Bool)

(declare-fun b!7457607 () Bool)

(assert (= bs!1928665 (and b!7457607 b!7457379)))

(declare-fun lambda!461388 () Int)

(assert (=> bs!1928665 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 r2!5783) (reg!19846 lt!2621856)) (= r2!5783 lt!2621856)) (= lambda!461388 lambda!461365))))

(declare-fun bs!1928667 () Bool)

(assert (= bs!1928667 (and b!7457607 b!7457022)))

(assert (=> bs!1928667 (not (= lambda!461388 lambda!461345))))

(declare-fun bs!1928668 () Bool)

(assert (= bs!1928668 (and b!7457607 b!7457099)))

(assert (=> bs!1928668 (not (= lambda!461388 lambda!461351))))

(declare-fun bs!1928669 () Bool)

(assert (= bs!1928669 (and b!7457607 b!7457380)))

(assert (=> bs!1928669 (not (= lambda!461388 lambda!461366))))

(declare-fun bs!1928670 () Bool)

(assert (= bs!1928670 (and b!7457607 b!7457184)))

(assert (=> bs!1928670 (not (= lambda!461388 lambda!461356))))

(declare-fun bs!1928671 () Bool)

(assert (= bs!1928671 (and b!7457607 b!7457183)))

(assert (=> bs!1928671 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 r2!5783) (reg!19846 lt!2621869)) (= r2!5783 lt!2621869)) (= lambda!461388 lambda!461355))))

(assert (=> bs!1928667 (not (= lambda!461388 lambda!461344))))

(declare-fun bs!1928672 () Bool)

(assert (= bs!1928672 (and b!7457607 d!2297710)))

(assert (=> bs!1928672 (not (= lambda!461388 lambda!461383))))

(declare-fun bs!1928673 () Bool)

(assert (= bs!1928673 (and b!7457607 b!7457337)))

(assert (=> bs!1928673 (not (= lambda!461388 lambda!461364))))

(assert (=> bs!1928672 (not (= lambda!461388 lambda!461382))))

(declare-fun bs!1928674 () Bool)

(assert (= bs!1928674 (and b!7457607 b!7457098)))

(assert (=> bs!1928674 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 r2!5783) (reg!19846 lt!2621859)) (= r2!5783 lt!2621859)) (= lambda!461388 lambda!461350))))

(declare-fun bs!1928675 () Bool)

(assert (= bs!1928675 (and b!7457607 b!7457336)))

(assert (=> bs!1928675 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 r2!5783) (reg!19846 lt!2621864)) (= r2!5783 lt!2621864)) (= lambda!461388 lambda!461363))))

(declare-fun bs!1928676 () Bool)

(assert (= bs!1928676 (and b!7457607 d!2297704)))

(assert (=> bs!1928676 (not (= lambda!461388 lambda!461373))))

(assert (=> b!7457607 true))

(assert (=> b!7457607 true))

(declare-fun bs!1928677 () Bool)

(declare-fun b!7457608 () Bool)

(assert (= bs!1928677 (and b!7457608 b!7457379)))

(declare-fun lambda!461389 () Int)

(assert (=> bs!1928677 (not (= lambda!461389 lambda!461365))))

(declare-fun bs!1928678 () Bool)

(assert (= bs!1928678 (and b!7457608 b!7457022)))

(assert (=> bs!1928678 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r2!5783) lt!2621867) (= (regTwo!39546 r2!5783) rTail!78)) (= lambda!461389 lambda!461345))))

(declare-fun bs!1928679 () Bool)

(assert (= bs!1928679 (and b!7457608 b!7457099)))

(assert (=> bs!1928679 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r2!5783) (regOne!39546 lt!2621859)) (= (regTwo!39546 r2!5783) (regTwo!39546 lt!2621859))) (= lambda!461389 lambda!461351))))

(declare-fun bs!1928680 () Bool)

(assert (= bs!1928680 (and b!7457608 b!7457380)))

(assert (=> bs!1928680 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r2!5783) (regOne!39546 lt!2621856)) (= (regTwo!39546 r2!5783) (regTwo!39546 lt!2621856))) (= lambda!461389 lambda!461366))))

(declare-fun bs!1928681 () Bool)

(assert (= bs!1928681 (and b!7457608 b!7457183)))

(assert (=> bs!1928681 (not (= lambda!461389 lambda!461355))))

(assert (=> bs!1928678 (not (= lambda!461389 lambda!461344))))

(declare-fun bs!1928683 () Bool)

(assert (= bs!1928683 (and b!7457608 d!2297710)))

(assert (=> bs!1928683 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r2!5783) lt!2621867) (= (regTwo!39546 r2!5783) rTail!78)) (= lambda!461389 lambda!461383))))

(declare-fun bs!1928685 () Bool)

(assert (= bs!1928685 (and b!7457608 b!7457337)))

(assert (=> bs!1928685 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r2!5783) (regOne!39546 lt!2621864)) (= (regTwo!39546 r2!5783) (regTwo!39546 lt!2621864))) (= lambda!461389 lambda!461364))))

(assert (=> bs!1928683 (not (= lambda!461389 lambda!461382))))

(declare-fun bs!1928688 () Bool)

(assert (= bs!1928688 (and b!7457608 b!7457098)))

(assert (=> bs!1928688 (not (= lambda!461389 lambda!461350))))

(declare-fun bs!1928690 () Bool)

(assert (= bs!1928690 (and b!7457608 b!7457607)))

(assert (=> bs!1928690 (not (= lambda!461389 lambda!461388))))

(declare-fun bs!1928692 () Bool)

(assert (= bs!1928692 (and b!7457608 b!7457184)))

(assert (=> bs!1928692 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r2!5783) (regOne!39546 lt!2621869)) (= (regTwo!39546 r2!5783) (regTwo!39546 lt!2621869))) (= lambda!461389 lambda!461356))))

(declare-fun bs!1928694 () Bool)

(assert (= bs!1928694 (and b!7457608 b!7457336)))

(assert (=> bs!1928694 (not (= lambda!461389 lambda!461363))))

(declare-fun bs!1928696 () Bool)

(assert (= bs!1928696 (and b!7457608 d!2297704)))

(assert (=> bs!1928696 (not (= lambda!461389 lambda!461373))))

(assert (=> b!7457608 true))

(assert (=> b!7457608 true))

(declare-fun b!7457603 () Bool)

(declare-fun e!4451003 () Bool)

(declare-fun call!685124 () Bool)

(assert (=> b!7457603 (= e!4451003 call!685124)))

(declare-fun b!7457604 () Bool)

(declare-fun e!4451004 () Bool)

(declare-fun e!4451005 () Bool)

(assert (=> b!7457604 (= e!4451004 e!4451005)))

(declare-fun res!2991478 () Bool)

(assert (=> b!7457604 (= res!2991478 (matchRSpec!4196 (regOne!39547 r2!5783) (_1!37547 lt!2621846)))))

(assert (=> b!7457604 (=> res!2991478 e!4451005)))

(declare-fun bm!685118 () Bool)

(declare-fun c!1378817 () Bool)

(declare-fun call!685123 () Bool)

(assert (=> bm!685118 (= call!685123 (Exists!4138 (ite c!1378817 lambda!461388 lambda!461389)))))

(declare-fun b!7457606 () Bool)

(declare-fun c!1378814 () Bool)

(assert (=> b!7457606 (= c!1378814 ((_ is Union!19517) r2!5783))))

(declare-fun e!4450999 () Bool)

(assert (=> b!7457606 (= e!4450999 e!4451004)))

(declare-fun e!4451001 () Bool)

(assert (=> b!7457607 (= e!4451001 call!685123)))

(declare-fun e!4451002 () Bool)

(assert (=> b!7457608 (= e!4451002 call!685123)))

(declare-fun b!7457609 () Bool)

(assert (=> b!7457609 (= e!4450999 (= (_1!37547 lt!2621846) (Cons!72109 (c!1378680 r2!5783) Nil!72109)))))

(declare-fun b!7457610 () Bool)

(declare-fun c!1378816 () Bool)

(assert (=> b!7457610 (= c!1378816 ((_ is ElementMatch!19517) r2!5783))))

(declare-fun e!4451000 () Bool)

(assert (=> b!7457610 (= e!4451000 e!4450999)))

(declare-fun b!7457605 () Bool)

(assert (=> b!7457605 (= e!4451004 e!4451002)))

(assert (=> b!7457605 (= c!1378817 ((_ is Star!19517) r2!5783))))

(declare-fun d!2297740 () Bool)

(declare-fun c!1378815 () Bool)

(assert (=> d!2297740 (= c!1378815 ((_ is EmptyExpr!19517) r2!5783))))

(assert (=> d!2297740 (= (matchRSpec!4196 r2!5783 (_1!37547 lt!2621846)) e!4451003)))

(declare-fun b!7457611 () Bool)

(assert (=> b!7457611 (= e!4451003 e!4451000)))

(declare-fun res!2991476 () Bool)

(assert (=> b!7457611 (= res!2991476 (not ((_ is EmptyLang!19517) r2!5783)))))

(assert (=> b!7457611 (=> (not res!2991476) (not e!4451000))))

(declare-fun bm!685119 () Bool)

(assert (=> bm!685119 (= call!685124 (isEmpty!41119 (_1!37547 lt!2621846)))))

(declare-fun b!7457612 () Bool)

(declare-fun res!2991477 () Bool)

(assert (=> b!7457612 (=> res!2991477 e!4451001)))

(assert (=> b!7457612 (= res!2991477 call!685124)))

(assert (=> b!7457612 (= e!4451002 e!4451001)))

(declare-fun b!7457613 () Bool)

(assert (=> b!7457613 (= e!4451005 (matchRSpec!4196 (regTwo!39547 r2!5783) (_1!37547 lt!2621846)))))

(assert (= (and d!2297740 c!1378815) b!7457603))

(assert (= (and d!2297740 (not c!1378815)) b!7457611))

(assert (= (and b!7457611 res!2991476) b!7457610))

(assert (= (and b!7457610 c!1378816) b!7457609))

(assert (= (and b!7457610 (not c!1378816)) b!7457606))

(assert (= (and b!7457606 c!1378814) b!7457604))

(assert (= (and b!7457606 (not c!1378814)) b!7457605))

(assert (= (and b!7457604 (not res!2991478)) b!7457613))

(assert (= (and b!7457605 c!1378817) b!7457612))

(assert (= (and b!7457605 (not c!1378817)) b!7457608))

(assert (= (and b!7457612 (not res!2991477)) b!7457607))

(assert (= (or b!7457607 b!7457608) bm!685118))

(assert (= (or b!7457603 b!7457612) bm!685119))

(declare-fun m!8060868 () Bool)

(assert (=> b!7457604 m!8060868))

(declare-fun m!8060870 () Bool)

(assert (=> bm!685118 m!8060870))

(assert (=> bm!685119 m!8060786))

(declare-fun m!8060872 () Bool)

(assert (=> b!7457613 m!8060872))

(assert (=> b!7457015 d!2297740))

(declare-fun d!2297746 () Bool)

(assert (=> d!2297746 (= (matchR!9281 r2!5783 (_1!37547 lt!2621846)) (matchRSpec!4196 r2!5783 (_1!37547 lt!2621846)))))

(declare-fun lt!2621940 () Unit!165869)

(assert (=> d!2297746 (= lt!2621940 (choose!57638 r2!5783 (_1!37547 lt!2621846)))))

(assert (=> d!2297746 (validRegex!10031 r2!5783)))

(assert (=> d!2297746 (= (mainMatchTheorem!4190 r2!5783 (_1!37547 lt!2621846)) lt!2621940)))

(declare-fun bs!1928700 () Bool)

(assert (= bs!1928700 d!2297746))

(assert (=> bs!1928700 m!8060466))

(assert (=> bs!1928700 m!8060480))

(declare-fun m!8060874 () Bool)

(assert (=> bs!1928700 m!8060874))

(assert (=> bs!1928700 m!8060498))

(assert (=> b!7457015 d!2297746))

(declare-fun bs!1928706 () Bool)

(declare-fun b!7457643 () Bool)

(assert (= bs!1928706 (and b!7457643 b!7457379)))

(declare-fun lambda!461392 () Int)

(assert (=> bs!1928706 (= (and (= (_2!37547 lt!2621846) s!13591) (= (reg!19846 rTail!78) (reg!19846 lt!2621856)) (= rTail!78 lt!2621856)) (= lambda!461392 lambda!461365))))

(declare-fun bs!1928708 () Bool)

(assert (= bs!1928708 (and b!7457643 b!7457022)))

(assert (=> bs!1928708 (not (= lambda!461392 lambda!461345))))

(declare-fun bs!1928710 () Bool)

(assert (= bs!1928710 (and b!7457643 b!7457099)))

(assert (=> bs!1928710 (not (= lambda!461392 lambda!461351))))

(declare-fun bs!1928712 () Bool)

(assert (= bs!1928712 (and b!7457643 b!7457380)))

(assert (=> bs!1928712 (not (= lambda!461392 lambda!461366))))

(declare-fun bs!1928714 () Bool)

(assert (= bs!1928714 (and b!7457643 b!7457183)))

(assert (=> bs!1928714 (= (and (= (_2!37547 lt!2621846) s!13591) (= (reg!19846 rTail!78) (reg!19846 lt!2621869)) (= rTail!78 lt!2621869)) (= lambda!461392 lambda!461355))))

(assert (=> bs!1928708 (not (= lambda!461392 lambda!461344))))

(declare-fun bs!1928717 () Bool)

(assert (= bs!1928717 (and b!7457643 d!2297710)))

(assert (=> bs!1928717 (not (= lambda!461392 lambda!461383))))

(declare-fun bs!1928718 () Bool)

(assert (= bs!1928718 (and b!7457643 b!7457608)))

(assert (=> bs!1928718 (not (= lambda!461392 lambda!461389))))

(declare-fun bs!1928720 () Bool)

(assert (= bs!1928720 (and b!7457643 b!7457337)))

(assert (=> bs!1928720 (not (= lambda!461392 lambda!461364))))

(assert (=> bs!1928717 (not (= lambda!461392 lambda!461382))))

(declare-fun bs!1928721 () Bool)

(assert (= bs!1928721 (and b!7457643 b!7457098)))

(assert (=> bs!1928721 (= (and (= (_2!37547 lt!2621846) s!13591) (= (reg!19846 rTail!78) (reg!19846 lt!2621859)) (= rTail!78 lt!2621859)) (= lambda!461392 lambda!461350))))

(declare-fun bs!1928722 () Bool)

(assert (= bs!1928722 (and b!7457643 b!7457607)))

(assert (=> bs!1928722 (= (and (= (_2!37547 lt!2621846) (_1!37547 lt!2621846)) (= (reg!19846 rTail!78) (reg!19846 r2!5783)) (= rTail!78 r2!5783)) (= lambda!461392 lambda!461388))))

(declare-fun bs!1928723 () Bool)

(assert (= bs!1928723 (and b!7457643 b!7457184)))

(assert (=> bs!1928723 (not (= lambda!461392 lambda!461356))))

(declare-fun bs!1928724 () Bool)

(assert (= bs!1928724 (and b!7457643 b!7457336)))

(assert (=> bs!1928724 (= (and (= (_2!37547 lt!2621846) s!13591) (= (reg!19846 rTail!78) (reg!19846 lt!2621864)) (= rTail!78 lt!2621864)) (= lambda!461392 lambda!461363))))

(declare-fun bs!1928725 () Bool)

(assert (= bs!1928725 (and b!7457643 d!2297704)))

(assert (=> bs!1928725 (not (= lambda!461392 lambda!461373))))

(assert (=> b!7457643 true))

(assert (=> b!7457643 true))

(declare-fun bs!1928727 () Bool)

(declare-fun b!7457644 () Bool)

(assert (= bs!1928727 (and b!7457644 b!7457379)))

(declare-fun lambda!461393 () Int)

(assert (=> bs!1928727 (not (= lambda!461393 lambda!461365))))

(declare-fun bs!1928728 () Bool)

(assert (= bs!1928728 (and b!7457644 b!7457022)))

(assert (=> bs!1928728 (= (and (= (_2!37547 lt!2621846) s!13591) (= (regOne!39546 rTail!78) lt!2621867) (= (regTwo!39546 rTail!78) rTail!78)) (= lambda!461393 lambda!461345))))

(declare-fun bs!1928730 () Bool)

(assert (= bs!1928730 (and b!7457644 b!7457099)))

(assert (=> bs!1928730 (= (and (= (_2!37547 lt!2621846) s!13591) (= (regOne!39546 rTail!78) (regOne!39546 lt!2621859)) (= (regTwo!39546 rTail!78) (regTwo!39546 lt!2621859))) (= lambda!461393 lambda!461351))))

(declare-fun bs!1928732 () Bool)

(assert (= bs!1928732 (and b!7457644 b!7457183)))

(assert (=> bs!1928732 (not (= lambda!461393 lambda!461355))))

(assert (=> bs!1928728 (not (= lambda!461393 lambda!461344))))

(declare-fun bs!1928734 () Bool)

(assert (= bs!1928734 (and b!7457644 d!2297710)))

(assert (=> bs!1928734 (= (and (= (_2!37547 lt!2621846) s!13591) (= (regOne!39546 rTail!78) lt!2621867) (= (regTwo!39546 rTail!78) rTail!78)) (= lambda!461393 lambda!461383))))

(declare-fun bs!1928736 () Bool)

(assert (= bs!1928736 (and b!7457644 b!7457608)))

(assert (=> bs!1928736 (= (and (= (_2!37547 lt!2621846) (_1!37547 lt!2621846)) (= (regOne!39546 rTail!78) (regOne!39546 r2!5783)) (= (regTwo!39546 rTail!78) (regTwo!39546 r2!5783))) (= lambda!461393 lambda!461389))))

(declare-fun bs!1928738 () Bool)

(assert (= bs!1928738 (and b!7457644 b!7457337)))

(assert (=> bs!1928738 (= (and (= (_2!37547 lt!2621846) s!13591) (= (regOne!39546 rTail!78) (regOne!39546 lt!2621864)) (= (regTwo!39546 rTail!78) (regTwo!39546 lt!2621864))) (= lambda!461393 lambda!461364))))

(assert (=> bs!1928734 (not (= lambda!461393 lambda!461382))))

(declare-fun bs!1928741 () Bool)

(assert (= bs!1928741 (and b!7457644 b!7457098)))

(assert (=> bs!1928741 (not (= lambda!461393 lambda!461350))))

(declare-fun bs!1928743 () Bool)

(assert (= bs!1928743 (and b!7457644 b!7457380)))

(assert (=> bs!1928743 (= (and (= (_2!37547 lt!2621846) s!13591) (= (regOne!39546 rTail!78) (regOne!39546 lt!2621856)) (= (regTwo!39546 rTail!78) (regTwo!39546 lt!2621856))) (= lambda!461393 lambda!461366))))

(declare-fun bs!1928745 () Bool)

(assert (= bs!1928745 (and b!7457644 b!7457643)))

(assert (=> bs!1928745 (not (= lambda!461393 lambda!461392))))

(declare-fun bs!1928747 () Bool)

(assert (= bs!1928747 (and b!7457644 b!7457607)))

(assert (=> bs!1928747 (not (= lambda!461393 lambda!461388))))

(declare-fun bs!1928749 () Bool)

(assert (= bs!1928749 (and b!7457644 b!7457184)))

(assert (=> bs!1928749 (= (and (= (_2!37547 lt!2621846) s!13591) (= (regOne!39546 rTail!78) (regOne!39546 lt!2621869)) (= (regTwo!39546 rTail!78) (regTwo!39546 lt!2621869))) (= lambda!461393 lambda!461356))))

(declare-fun bs!1928750 () Bool)

(assert (= bs!1928750 (and b!7457644 b!7457336)))

(assert (=> bs!1928750 (not (= lambda!461393 lambda!461363))))

(declare-fun bs!1928752 () Bool)

(assert (= bs!1928752 (and b!7457644 d!2297704)))

(assert (=> bs!1928752 (not (= lambda!461393 lambda!461373))))

(assert (=> b!7457644 true))

(assert (=> b!7457644 true))

(declare-fun b!7457639 () Bool)

(declare-fun e!4451024 () Bool)

(declare-fun call!685129 () Bool)

(assert (=> b!7457639 (= e!4451024 call!685129)))

(declare-fun b!7457640 () Bool)

(declare-fun e!4451025 () Bool)

(declare-fun e!4451026 () Bool)

(assert (=> b!7457640 (= e!4451025 e!4451026)))

(declare-fun res!2991492 () Bool)

(assert (=> b!7457640 (= res!2991492 (matchRSpec!4196 (regOne!39547 rTail!78) (_2!37547 lt!2621846)))))

(assert (=> b!7457640 (=> res!2991492 e!4451026)))

(declare-fun bm!685123 () Bool)

(declare-fun c!1378828 () Bool)

(declare-fun call!685128 () Bool)

(assert (=> bm!685123 (= call!685128 (Exists!4138 (ite c!1378828 lambda!461392 lambda!461393)))))

(declare-fun b!7457642 () Bool)

(declare-fun c!1378825 () Bool)

(assert (=> b!7457642 (= c!1378825 ((_ is Union!19517) rTail!78))))

(declare-fun e!4451020 () Bool)

(assert (=> b!7457642 (= e!4451020 e!4451025)))

(declare-fun e!4451022 () Bool)

(assert (=> b!7457643 (= e!4451022 call!685128)))

(declare-fun e!4451023 () Bool)

(assert (=> b!7457644 (= e!4451023 call!685128)))

(declare-fun b!7457645 () Bool)

(assert (=> b!7457645 (= e!4451020 (= (_2!37547 lt!2621846) (Cons!72109 (c!1378680 rTail!78) Nil!72109)))))

(declare-fun b!7457646 () Bool)

(declare-fun c!1378827 () Bool)

(assert (=> b!7457646 (= c!1378827 ((_ is ElementMatch!19517) rTail!78))))

(declare-fun e!4451021 () Bool)

(assert (=> b!7457646 (= e!4451021 e!4451020)))

(declare-fun b!7457641 () Bool)

(assert (=> b!7457641 (= e!4451025 e!4451023)))

(assert (=> b!7457641 (= c!1378828 ((_ is Star!19517) rTail!78))))

(declare-fun d!2297748 () Bool)

(declare-fun c!1378826 () Bool)

(assert (=> d!2297748 (= c!1378826 ((_ is EmptyExpr!19517) rTail!78))))

(assert (=> d!2297748 (= (matchRSpec!4196 rTail!78 (_2!37547 lt!2621846)) e!4451024)))

(declare-fun b!7457647 () Bool)

(assert (=> b!7457647 (= e!4451024 e!4451021)))

(declare-fun res!2991490 () Bool)

(assert (=> b!7457647 (= res!2991490 (not ((_ is EmptyLang!19517) rTail!78)))))

(assert (=> b!7457647 (=> (not res!2991490) (not e!4451021))))

(declare-fun bm!685124 () Bool)

(assert (=> bm!685124 (= call!685129 (isEmpty!41119 (_2!37547 lt!2621846)))))

(declare-fun b!7457648 () Bool)

(declare-fun res!2991491 () Bool)

(assert (=> b!7457648 (=> res!2991491 e!4451022)))

(assert (=> b!7457648 (= res!2991491 call!685129)))

(assert (=> b!7457648 (= e!4451023 e!4451022)))

(declare-fun b!7457649 () Bool)

(assert (=> b!7457649 (= e!4451026 (matchRSpec!4196 (regTwo!39547 rTail!78) (_2!37547 lt!2621846)))))

(assert (= (and d!2297748 c!1378826) b!7457639))

(assert (= (and d!2297748 (not c!1378826)) b!7457647))

(assert (= (and b!7457647 res!2991490) b!7457646))

(assert (= (and b!7457646 c!1378827) b!7457645))

(assert (= (and b!7457646 (not c!1378827)) b!7457642))

(assert (= (and b!7457642 c!1378825) b!7457640))

(assert (= (and b!7457642 (not c!1378825)) b!7457641))

(assert (= (and b!7457640 (not res!2991492)) b!7457649))

(assert (= (and b!7457641 c!1378828) b!7457648))

(assert (= (and b!7457641 (not c!1378828)) b!7457644))

(assert (= (and b!7457648 (not res!2991491)) b!7457643))

(assert (= (or b!7457643 b!7457644) bm!685123))

(assert (= (or b!7457639 b!7457648) bm!685124))

(declare-fun m!8060884 () Bool)

(assert (=> b!7457640 m!8060884))

(declare-fun m!8060886 () Bool)

(assert (=> bm!685123 m!8060886))

(assert (=> bm!685124 m!8060626))

(declare-fun m!8060888 () Bool)

(assert (=> b!7457649 m!8060888))

(assert (=> b!7457015 d!2297748))

(declare-fun bs!1928760 () Bool)

(declare-fun b!7457665 () Bool)

(assert (= bs!1928760 (and b!7457665 b!7457379)))

(declare-fun lambda!461396 () Int)

(assert (=> bs!1928760 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 r1!5845) (reg!19846 lt!2621856)) (= r1!5845 lt!2621856)) (= lambda!461396 lambda!461365))))

(declare-fun bs!1928762 () Bool)

(assert (= bs!1928762 (and b!7457665 b!7457022)))

(assert (=> bs!1928762 (not (= lambda!461396 lambda!461345))))

(declare-fun bs!1928764 () Bool)

(assert (= bs!1928764 (and b!7457665 b!7457099)))

(assert (=> bs!1928764 (not (= lambda!461396 lambda!461351))))

(declare-fun bs!1928766 () Bool)

(assert (= bs!1928766 (and b!7457665 b!7457183)))

(assert (=> bs!1928766 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 r1!5845) (reg!19846 lt!2621869)) (= r1!5845 lt!2621869)) (= lambda!461396 lambda!461355))))

(assert (=> bs!1928762 (not (= lambda!461396 lambda!461344))))

(declare-fun bs!1928769 () Bool)

(assert (= bs!1928769 (and b!7457665 d!2297710)))

(assert (=> bs!1928769 (not (= lambda!461396 lambda!461383))))

(declare-fun bs!1928771 () Bool)

(assert (= bs!1928771 (and b!7457665 b!7457644)))

(assert (=> bs!1928771 (not (= lambda!461396 lambda!461393))))

(declare-fun bs!1928772 () Bool)

(assert (= bs!1928772 (and b!7457665 b!7457608)))

(assert (=> bs!1928772 (not (= lambda!461396 lambda!461389))))

(declare-fun bs!1928774 () Bool)

(assert (= bs!1928774 (and b!7457665 b!7457337)))

(assert (=> bs!1928774 (not (= lambda!461396 lambda!461364))))

(assert (=> bs!1928769 (not (= lambda!461396 lambda!461382))))

(declare-fun bs!1928776 () Bool)

(assert (= bs!1928776 (and b!7457665 b!7457098)))

(assert (=> bs!1928776 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 r1!5845) (reg!19846 lt!2621859)) (= r1!5845 lt!2621859)) (= lambda!461396 lambda!461350))))

(declare-fun bs!1928777 () Bool)

(assert (= bs!1928777 (and b!7457665 b!7457380)))

(assert (=> bs!1928777 (not (= lambda!461396 lambda!461366))))

(declare-fun bs!1928778 () Bool)

(assert (= bs!1928778 (and b!7457665 b!7457643)))

(assert (=> bs!1928778 (= (and (= (_1!37547 lt!2621846) (_2!37547 lt!2621846)) (= (reg!19846 r1!5845) (reg!19846 rTail!78)) (= r1!5845 rTail!78)) (= lambda!461396 lambda!461392))))

(declare-fun bs!1928779 () Bool)

(assert (= bs!1928779 (and b!7457665 b!7457607)))

(assert (=> bs!1928779 (= (and (= (reg!19846 r1!5845) (reg!19846 r2!5783)) (= r1!5845 r2!5783)) (= lambda!461396 lambda!461388))))

(declare-fun bs!1928780 () Bool)

(assert (= bs!1928780 (and b!7457665 b!7457184)))

(assert (=> bs!1928780 (not (= lambda!461396 lambda!461356))))

(declare-fun bs!1928781 () Bool)

(assert (= bs!1928781 (and b!7457665 b!7457336)))

(assert (=> bs!1928781 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 r1!5845) (reg!19846 lt!2621864)) (= r1!5845 lt!2621864)) (= lambda!461396 lambda!461363))))

(declare-fun bs!1928782 () Bool)

(assert (= bs!1928782 (and b!7457665 d!2297704)))

(assert (=> bs!1928782 (not (= lambda!461396 lambda!461373))))

(assert (=> b!7457665 true))

(assert (=> b!7457665 true))

(declare-fun bs!1928783 () Bool)

(declare-fun b!7457666 () Bool)

(assert (= bs!1928783 (and b!7457666 b!7457379)))

(declare-fun lambda!461397 () Int)

(assert (=> bs!1928783 (not (= lambda!461397 lambda!461365))))

(declare-fun bs!1928784 () Bool)

(assert (= bs!1928784 (and b!7457666 b!7457665)))

(assert (=> bs!1928784 (not (= lambda!461397 lambda!461396))))

(declare-fun bs!1928785 () Bool)

(assert (= bs!1928785 (and b!7457666 b!7457022)))

(assert (=> bs!1928785 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r1!5845) lt!2621867) (= (regTwo!39546 r1!5845) rTail!78)) (= lambda!461397 lambda!461345))))

(declare-fun bs!1928786 () Bool)

(assert (= bs!1928786 (and b!7457666 b!7457099)))

(assert (=> bs!1928786 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r1!5845) (regOne!39546 lt!2621859)) (= (regTwo!39546 r1!5845) (regTwo!39546 lt!2621859))) (= lambda!461397 lambda!461351))))

(declare-fun bs!1928787 () Bool)

(assert (= bs!1928787 (and b!7457666 b!7457183)))

(assert (=> bs!1928787 (not (= lambda!461397 lambda!461355))))

(assert (=> bs!1928785 (not (= lambda!461397 lambda!461344))))

(declare-fun bs!1928789 () Bool)

(assert (= bs!1928789 (and b!7457666 d!2297710)))

(assert (=> bs!1928789 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r1!5845) lt!2621867) (= (regTwo!39546 r1!5845) rTail!78)) (= lambda!461397 lambda!461383))))

(declare-fun bs!1928791 () Bool)

(assert (= bs!1928791 (and b!7457666 b!7457644)))

(assert (=> bs!1928791 (= (and (= (_1!37547 lt!2621846) (_2!37547 lt!2621846)) (= (regOne!39546 r1!5845) (regOne!39546 rTail!78)) (= (regTwo!39546 r1!5845) (regTwo!39546 rTail!78))) (= lambda!461397 lambda!461393))))

(declare-fun bs!1928793 () Bool)

(assert (= bs!1928793 (and b!7457666 b!7457608)))

(assert (=> bs!1928793 (= (and (= (regOne!39546 r1!5845) (regOne!39546 r2!5783)) (= (regTwo!39546 r1!5845) (regTwo!39546 r2!5783))) (= lambda!461397 lambda!461389))))

(declare-fun bs!1928794 () Bool)

(assert (= bs!1928794 (and b!7457666 b!7457337)))

(assert (=> bs!1928794 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r1!5845) (regOne!39546 lt!2621864)) (= (regTwo!39546 r1!5845) (regTwo!39546 lt!2621864))) (= lambda!461397 lambda!461364))))

(assert (=> bs!1928789 (not (= lambda!461397 lambda!461382))))

(declare-fun bs!1928795 () Bool)

(assert (= bs!1928795 (and b!7457666 b!7457098)))

(assert (=> bs!1928795 (not (= lambda!461397 lambda!461350))))

(declare-fun bs!1928796 () Bool)

(assert (= bs!1928796 (and b!7457666 b!7457380)))

(assert (=> bs!1928796 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r1!5845) (regOne!39546 lt!2621856)) (= (regTwo!39546 r1!5845) (regTwo!39546 lt!2621856))) (= lambda!461397 lambda!461366))))

(declare-fun bs!1928797 () Bool)

(assert (= bs!1928797 (and b!7457666 b!7457643)))

(assert (=> bs!1928797 (not (= lambda!461397 lambda!461392))))

(declare-fun bs!1928798 () Bool)

(assert (= bs!1928798 (and b!7457666 b!7457607)))

(assert (=> bs!1928798 (not (= lambda!461397 lambda!461388))))

(declare-fun bs!1928799 () Bool)

(assert (= bs!1928799 (and b!7457666 b!7457184)))

(assert (=> bs!1928799 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 r1!5845) (regOne!39546 lt!2621869)) (= (regTwo!39546 r1!5845) (regTwo!39546 lt!2621869))) (= lambda!461397 lambda!461356))))

(declare-fun bs!1928800 () Bool)

(assert (= bs!1928800 (and b!7457666 b!7457336)))

(assert (=> bs!1928800 (not (= lambda!461397 lambda!461363))))

(declare-fun bs!1928801 () Bool)

(assert (= bs!1928801 (and b!7457666 d!2297704)))

(assert (=> bs!1928801 (not (= lambda!461397 lambda!461373))))

(assert (=> b!7457666 true))

(assert (=> b!7457666 true))

(declare-fun b!7457661 () Bool)

(declare-fun e!4451038 () Bool)

(declare-fun call!685133 () Bool)

(assert (=> b!7457661 (= e!4451038 call!685133)))

(declare-fun b!7457662 () Bool)

(declare-fun e!4451039 () Bool)

(declare-fun e!4451040 () Bool)

(assert (=> b!7457662 (= e!4451039 e!4451040)))

(declare-fun res!2991498 () Bool)

(assert (=> b!7457662 (= res!2991498 (matchRSpec!4196 (regOne!39547 r1!5845) (_1!37547 lt!2621846)))))

(assert (=> b!7457662 (=> res!2991498 e!4451040)))

(declare-fun c!1378836 () Bool)

(declare-fun bm!685127 () Bool)

(declare-fun call!685132 () Bool)

(assert (=> bm!685127 (= call!685132 (Exists!4138 (ite c!1378836 lambda!461396 lambda!461397)))))

(declare-fun b!7457664 () Bool)

(declare-fun c!1378833 () Bool)

(assert (=> b!7457664 (= c!1378833 ((_ is Union!19517) r1!5845))))

(declare-fun e!4451034 () Bool)

(assert (=> b!7457664 (= e!4451034 e!4451039)))

(declare-fun e!4451036 () Bool)

(assert (=> b!7457665 (= e!4451036 call!685132)))

(declare-fun e!4451037 () Bool)

(assert (=> b!7457666 (= e!4451037 call!685132)))

(declare-fun b!7457667 () Bool)

(assert (=> b!7457667 (= e!4451034 (= (_1!37547 lt!2621846) (Cons!72109 (c!1378680 r1!5845) Nil!72109)))))

(declare-fun b!7457668 () Bool)

(declare-fun c!1378835 () Bool)

(assert (=> b!7457668 (= c!1378835 ((_ is ElementMatch!19517) r1!5845))))

(declare-fun e!4451035 () Bool)

(assert (=> b!7457668 (= e!4451035 e!4451034)))

(declare-fun b!7457663 () Bool)

(assert (=> b!7457663 (= e!4451039 e!4451037)))

(assert (=> b!7457663 (= c!1378836 ((_ is Star!19517) r1!5845))))

(declare-fun d!2297754 () Bool)

(declare-fun c!1378834 () Bool)

(assert (=> d!2297754 (= c!1378834 ((_ is EmptyExpr!19517) r1!5845))))

(assert (=> d!2297754 (= (matchRSpec!4196 r1!5845 (_1!37547 lt!2621846)) e!4451038)))

(declare-fun b!7457669 () Bool)

(assert (=> b!7457669 (= e!4451038 e!4451035)))

(declare-fun res!2991496 () Bool)

(assert (=> b!7457669 (= res!2991496 (not ((_ is EmptyLang!19517) r1!5845)))))

(assert (=> b!7457669 (=> (not res!2991496) (not e!4451035))))

(declare-fun bm!685128 () Bool)

(assert (=> bm!685128 (= call!685133 (isEmpty!41119 (_1!37547 lt!2621846)))))

(declare-fun b!7457670 () Bool)

(declare-fun res!2991497 () Bool)

(assert (=> b!7457670 (=> res!2991497 e!4451036)))

(assert (=> b!7457670 (= res!2991497 call!685133)))

(assert (=> b!7457670 (= e!4451037 e!4451036)))

(declare-fun b!7457671 () Bool)

(assert (=> b!7457671 (= e!4451040 (matchRSpec!4196 (regTwo!39547 r1!5845) (_1!37547 lt!2621846)))))

(assert (= (and d!2297754 c!1378834) b!7457661))

(assert (= (and d!2297754 (not c!1378834)) b!7457669))

(assert (= (and b!7457669 res!2991496) b!7457668))

(assert (= (and b!7457668 c!1378835) b!7457667))

(assert (= (and b!7457668 (not c!1378835)) b!7457664))

(assert (= (and b!7457664 c!1378833) b!7457662))

(assert (= (and b!7457664 (not c!1378833)) b!7457663))

(assert (= (and b!7457662 (not res!2991498)) b!7457671))

(assert (= (and b!7457663 c!1378836) b!7457670))

(assert (= (and b!7457663 (not c!1378836)) b!7457666))

(assert (= (and b!7457670 (not res!2991497)) b!7457665))

(assert (= (or b!7457665 b!7457666) bm!685127))

(assert (= (or b!7457661 b!7457670) bm!685128))

(declare-fun m!8060920 () Bool)

(assert (=> b!7457662 m!8060920))

(declare-fun m!8060924 () Bool)

(assert (=> bm!685127 m!8060924))

(assert (=> bm!685128 m!8060786))

(declare-fun m!8060926 () Bool)

(assert (=> b!7457671 m!8060926))

(assert (=> b!7457015 d!2297754))

(declare-fun b!7457709 () Bool)

(declare-fun res!2991525 () Bool)

(declare-fun e!4451062 () Bool)

(assert (=> b!7457709 (=> res!2991525 e!4451062)))

(declare-fun e!4451065 () Bool)

(assert (=> b!7457709 (= res!2991525 e!4451065)))

(declare-fun res!2991520 () Bool)

(assert (=> b!7457709 (=> (not res!2991520) (not e!4451065))))

(declare-fun lt!2621947 () Bool)

(assert (=> b!7457709 (= res!2991520 lt!2621947)))

(declare-fun b!7457710 () Bool)

(declare-fun e!4451068 () Bool)

(assert (=> b!7457710 (= e!4451068 (nullable!8503 r1!5845))))

(declare-fun b!7457711 () Bool)

(declare-fun res!2991522 () Bool)

(assert (=> b!7457711 (=> (not res!2991522) (not e!4451065))))

(assert (=> b!7457711 (= res!2991522 (isEmpty!41119 (tail!14871 (_1!37547 lt!2621846))))))

(declare-fun b!7457712 () Bool)

(declare-fun e!4451063 () Bool)

(declare-fun e!4451067 () Bool)

(assert (=> b!7457712 (= e!4451063 e!4451067)))

(declare-fun res!2991527 () Bool)

(assert (=> b!7457712 (=> res!2991527 e!4451067)))

(declare-fun call!685139 () Bool)

(assert (=> b!7457712 (= res!2991527 call!685139)))

(declare-fun d!2297768 () Bool)

(declare-fun e!4451066 () Bool)

(assert (=> d!2297768 e!4451066))

(declare-fun c!1378847 () Bool)

(assert (=> d!2297768 (= c!1378847 ((_ is EmptyExpr!19517) r1!5845))))

(assert (=> d!2297768 (= lt!2621947 e!4451068)))

(declare-fun c!1378845 () Bool)

(assert (=> d!2297768 (= c!1378845 (isEmpty!41119 (_1!37547 lt!2621846)))))

(assert (=> d!2297768 (validRegex!10031 r1!5845)))

(assert (=> d!2297768 (= (matchR!9281 r1!5845 (_1!37547 lt!2621846)) lt!2621947)))

(declare-fun b!7457713 () Bool)

(assert (=> b!7457713 (= e!4451067 (not (= (head!15302 (_1!37547 lt!2621846)) (c!1378680 r1!5845))))))

(declare-fun b!7457714 () Bool)

(declare-fun e!4451064 () Bool)

(assert (=> b!7457714 (= e!4451066 e!4451064)))

(declare-fun c!1378846 () Bool)

(assert (=> b!7457714 (= c!1378846 ((_ is EmptyLang!19517) r1!5845))))

(declare-fun b!7457715 () Bool)

(assert (=> b!7457715 (= e!4451065 (= (head!15302 (_1!37547 lt!2621846)) (c!1378680 r1!5845)))))

(declare-fun b!7457716 () Bool)

(declare-fun res!2991524 () Bool)

(assert (=> b!7457716 (=> (not res!2991524) (not e!4451065))))

(assert (=> b!7457716 (= res!2991524 (not call!685139))))

(declare-fun b!7457717 () Bool)

(assert (=> b!7457717 (= e!4451062 e!4451063)))

(declare-fun res!2991521 () Bool)

(assert (=> b!7457717 (=> (not res!2991521) (not e!4451063))))

(assert (=> b!7457717 (= res!2991521 (not lt!2621947))))

(declare-fun b!7457718 () Bool)

(assert (=> b!7457718 (= e!4451066 (= lt!2621947 call!685139))))

(declare-fun b!7457719 () Bool)

(declare-fun res!2991523 () Bool)

(assert (=> b!7457719 (=> res!2991523 e!4451062)))

(assert (=> b!7457719 (= res!2991523 (not ((_ is ElementMatch!19517) r1!5845)))))

(assert (=> b!7457719 (= e!4451064 e!4451062)))

(declare-fun bm!685134 () Bool)

(assert (=> bm!685134 (= call!685139 (isEmpty!41119 (_1!37547 lt!2621846)))))

(declare-fun b!7457720 () Bool)

(declare-fun res!2991526 () Bool)

(assert (=> b!7457720 (=> res!2991526 e!4451067)))

(assert (=> b!7457720 (= res!2991526 (not (isEmpty!41119 (tail!14871 (_1!37547 lt!2621846)))))))

(declare-fun b!7457721 () Bool)

(assert (=> b!7457721 (= e!4451068 (matchR!9281 (derivativeStep!5562 r1!5845 (head!15302 (_1!37547 lt!2621846))) (tail!14871 (_1!37547 lt!2621846))))))

(declare-fun b!7457722 () Bool)

(assert (=> b!7457722 (= e!4451064 (not lt!2621947))))

(assert (= (and d!2297768 c!1378845) b!7457710))

(assert (= (and d!2297768 (not c!1378845)) b!7457721))

(assert (= (and d!2297768 c!1378847) b!7457718))

(assert (= (and d!2297768 (not c!1378847)) b!7457714))

(assert (= (and b!7457714 c!1378846) b!7457722))

(assert (= (and b!7457714 (not c!1378846)) b!7457719))

(assert (= (and b!7457719 (not res!2991523)) b!7457709))

(assert (= (and b!7457709 res!2991520) b!7457716))

(assert (= (and b!7457716 res!2991524) b!7457711))

(assert (= (and b!7457711 res!2991522) b!7457715))

(assert (= (and b!7457709 (not res!2991525)) b!7457717))

(assert (= (and b!7457717 res!2991521) b!7457712))

(assert (= (and b!7457712 (not res!2991527)) b!7457720))

(assert (= (and b!7457720 (not res!2991526)) b!7457713))

(assert (= (or b!7457718 b!7457712 b!7457716) bm!685134))

(assert (=> b!7457721 m!8060778))

(assert (=> b!7457721 m!8060778))

(declare-fun m!8060934 () Bool)

(assert (=> b!7457721 m!8060934))

(assert (=> b!7457721 m!8060782))

(assert (=> b!7457721 m!8060934))

(assert (=> b!7457721 m!8060782))

(declare-fun m!8060938 () Bool)

(assert (=> b!7457721 m!8060938))

(assert (=> b!7457715 m!8060778))

(assert (=> d!2297768 m!8060786))

(assert (=> d!2297768 m!8060496))

(assert (=> b!7457720 m!8060782))

(assert (=> b!7457720 m!8060782))

(assert (=> b!7457720 m!8060788))

(declare-fun m!8060944 () Bool)

(assert (=> b!7457710 m!8060944))

(assert (=> bm!685134 m!8060786))

(assert (=> b!7457711 m!8060782))

(assert (=> b!7457711 m!8060782))

(assert (=> b!7457711 m!8060788))

(assert (=> b!7457713 m!8060778))

(assert (=> b!7457015 d!2297768))

(declare-fun d!2297774 () Bool)

(assert (=> d!2297774 (= (matchR!9281 r1!5845 (_1!37547 lt!2621846)) (matchRSpec!4196 r1!5845 (_1!37547 lt!2621846)))))

(declare-fun lt!2621950 () Unit!165869)

(assert (=> d!2297774 (= lt!2621950 (choose!57638 r1!5845 (_1!37547 lt!2621846)))))

(assert (=> d!2297774 (validRegex!10031 r1!5845)))

(assert (=> d!2297774 (= (mainMatchTheorem!4190 r1!5845 (_1!37547 lt!2621846)) lt!2621950)))

(declare-fun bs!1928803 () Bool)

(assert (= bs!1928803 d!2297774))

(assert (=> bs!1928803 m!8060478))

(assert (=> bs!1928803 m!8060462))

(declare-fun m!8060948 () Bool)

(assert (=> bs!1928803 m!8060948))

(assert (=> bs!1928803 m!8060496))

(assert (=> b!7457015 d!2297774))

(declare-fun d!2297778 () Bool)

(assert (=> d!2297778 (= (matchR!9281 rTail!78 (_2!37547 lt!2621846)) (matchRSpec!4196 rTail!78 (_2!37547 lt!2621846)))))

(declare-fun lt!2621951 () Unit!165869)

(assert (=> d!2297778 (= lt!2621951 (choose!57638 rTail!78 (_2!37547 lt!2621846)))))

(assert (=> d!2297778 (validRegex!10031 rTail!78)))

(assert (=> d!2297778 (= (mainMatchTheorem!4190 rTail!78 (_2!37547 lt!2621846)) lt!2621951)))

(declare-fun bs!1928804 () Bool)

(assert (= bs!1928804 d!2297778))

(assert (=> bs!1928804 m!8060426))

(assert (=> bs!1928804 m!8060472))

(declare-fun m!8060950 () Bool)

(assert (=> bs!1928804 m!8060950))

(assert (=> bs!1928804 m!8060494))

(assert (=> b!7457015 d!2297778))

(declare-fun bs!1928807 () Bool)

(declare-fun b!7457752 () Bool)

(assert (= bs!1928807 (and b!7457752 b!7457666)))

(declare-fun lambda!461399 () Int)

(assert (=> bs!1928807 (not (= lambda!461399 lambda!461397))))

(declare-fun bs!1928809 () Bool)

(assert (= bs!1928809 (and b!7457752 b!7457379)))

(assert (=> bs!1928809 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 lt!2621867) (reg!19846 lt!2621856)) (= lt!2621867 lt!2621856)) (= lambda!461399 lambda!461365))))

(declare-fun bs!1928812 () Bool)

(assert (= bs!1928812 (and b!7457752 b!7457665)))

(assert (=> bs!1928812 (= (and (= (reg!19846 lt!2621867) (reg!19846 r1!5845)) (= lt!2621867 r1!5845)) (= lambda!461399 lambda!461396))))

(declare-fun bs!1928814 () Bool)

(assert (= bs!1928814 (and b!7457752 b!7457022)))

(assert (=> bs!1928814 (not (= lambda!461399 lambda!461345))))

(declare-fun bs!1928815 () Bool)

(assert (= bs!1928815 (and b!7457752 b!7457099)))

(assert (=> bs!1928815 (not (= lambda!461399 lambda!461351))))

(declare-fun bs!1928817 () Bool)

(assert (= bs!1928817 (and b!7457752 b!7457183)))

(assert (=> bs!1928817 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 lt!2621867) (reg!19846 lt!2621869)) (= lt!2621867 lt!2621869)) (= lambda!461399 lambda!461355))))

(assert (=> bs!1928814 (not (= lambda!461399 lambda!461344))))

(declare-fun bs!1928821 () Bool)

(assert (= bs!1928821 (and b!7457752 d!2297710)))

(assert (=> bs!1928821 (not (= lambda!461399 lambda!461383))))

(declare-fun bs!1928823 () Bool)

(assert (= bs!1928823 (and b!7457752 b!7457644)))

(assert (=> bs!1928823 (not (= lambda!461399 lambda!461393))))

(declare-fun bs!1928825 () Bool)

(assert (= bs!1928825 (and b!7457752 b!7457608)))

(assert (=> bs!1928825 (not (= lambda!461399 lambda!461389))))

(declare-fun bs!1928826 () Bool)

(assert (= bs!1928826 (and b!7457752 b!7457337)))

(assert (=> bs!1928826 (not (= lambda!461399 lambda!461364))))

(assert (=> bs!1928821 (not (= lambda!461399 lambda!461382))))

(declare-fun bs!1928828 () Bool)

(assert (= bs!1928828 (and b!7457752 b!7457098)))

(assert (=> bs!1928828 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 lt!2621867) (reg!19846 lt!2621859)) (= lt!2621867 lt!2621859)) (= lambda!461399 lambda!461350))))

(declare-fun bs!1928831 () Bool)

(assert (= bs!1928831 (and b!7457752 b!7457380)))

(assert (=> bs!1928831 (not (= lambda!461399 lambda!461366))))

(declare-fun bs!1928832 () Bool)

(assert (= bs!1928832 (and b!7457752 b!7457643)))

(assert (=> bs!1928832 (= (and (= (_1!37547 lt!2621846) (_2!37547 lt!2621846)) (= (reg!19846 lt!2621867) (reg!19846 rTail!78)) (= lt!2621867 rTail!78)) (= lambda!461399 lambda!461392))))

(declare-fun bs!1928833 () Bool)

(assert (= bs!1928833 (and b!7457752 b!7457607)))

(assert (=> bs!1928833 (= (and (= (reg!19846 lt!2621867) (reg!19846 r2!5783)) (= lt!2621867 r2!5783)) (= lambda!461399 lambda!461388))))

(declare-fun bs!1928834 () Bool)

(assert (= bs!1928834 (and b!7457752 b!7457184)))

(assert (=> bs!1928834 (not (= lambda!461399 lambda!461356))))

(declare-fun bs!1928835 () Bool)

(assert (= bs!1928835 (and b!7457752 b!7457336)))

(assert (=> bs!1928835 (= (and (= (_1!37547 lt!2621846) s!13591) (= (reg!19846 lt!2621867) (reg!19846 lt!2621864)) (= lt!2621867 lt!2621864)) (= lambda!461399 lambda!461363))))

(declare-fun bs!1928836 () Bool)

(assert (= bs!1928836 (and b!7457752 d!2297704)))

(assert (=> bs!1928836 (not (= lambda!461399 lambda!461373))))

(assert (=> b!7457752 true))

(assert (=> b!7457752 true))

(declare-fun bs!1928842 () Bool)

(declare-fun b!7457753 () Bool)

(assert (= bs!1928842 (and b!7457753 b!7457666)))

(declare-fun lambda!461401 () Int)

(assert (=> bs!1928842 (= (and (= (regOne!39546 lt!2621867) (regOne!39546 r1!5845)) (= (regTwo!39546 lt!2621867) (regTwo!39546 r1!5845))) (= lambda!461401 lambda!461397))))

(declare-fun bs!1928844 () Bool)

(assert (= bs!1928844 (and b!7457753 b!7457379)))

(assert (=> bs!1928844 (not (= lambda!461401 lambda!461365))))

(declare-fun bs!1928846 () Bool)

(assert (= bs!1928846 (and b!7457753 b!7457665)))

(assert (=> bs!1928846 (not (= lambda!461401 lambda!461396))))

(declare-fun bs!1928848 () Bool)

(assert (= bs!1928848 (and b!7457753 b!7457022)))

(assert (=> bs!1928848 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 lt!2621867) lt!2621867) (= (regTwo!39546 lt!2621867) rTail!78)) (= lambda!461401 lambda!461345))))

(declare-fun bs!1928850 () Bool)

(assert (= bs!1928850 (and b!7457753 b!7457099)))

(assert (=> bs!1928850 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 lt!2621867) (regOne!39546 lt!2621859)) (= (regTwo!39546 lt!2621867) (regTwo!39546 lt!2621859))) (= lambda!461401 lambda!461351))))

(assert (=> bs!1928848 (not (= lambda!461401 lambda!461344))))

(declare-fun bs!1928853 () Bool)

(assert (= bs!1928853 (and b!7457753 d!2297710)))

(assert (=> bs!1928853 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 lt!2621867) lt!2621867) (= (regTwo!39546 lt!2621867) rTail!78)) (= lambda!461401 lambda!461383))))

(declare-fun bs!1928855 () Bool)

(assert (= bs!1928855 (and b!7457753 b!7457644)))

(assert (=> bs!1928855 (= (and (= (_1!37547 lt!2621846) (_2!37547 lt!2621846)) (= (regOne!39546 lt!2621867) (regOne!39546 rTail!78)) (= (regTwo!39546 lt!2621867) (regTwo!39546 rTail!78))) (= lambda!461401 lambda!461393))))

(declare-fun bs!1928856 () Bool)

(assert (= bs!1928856 (and b!7457753 b!7457608)))

(assert (=> bs!1928856 (= (and (= (regOne!39546 lt!2621867) (regOne!39546 r2!5783)) (= (regTwo!39546 lt!2621867) (regTwo!39546 r2!5783))) (= lambda!461401 lambda!461389))))

(declare-fun bs!1928858 () Bool)

(assert (= bs!1928858 (and b!7457753 b!7457337)))

(assert (=> bs!1928858 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 lt!2621867) (regOne!39546 lt!2621864)) (= (regTwo!39546 lt!2621867) (regTwo!39546 lt!2621864))) (= lambda!461401 lambda!461364))))

(assert (=> bs!1928853 (not (= lambda!461401 lambda!461382))))

(declare-fun bs!1928861 () Bool)

(assert (= bs!1928861 (and b!7457753 b!7457098)))

(assert (=> bs!1928861 (not (= lambda!461401 lambda!461350))))

(declare-fun bs!1928863 () Bool)

(assert (= bs!1928863 (and b!7457753 b!7457380)))

(assert (=> bs!1928863 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 lt!2621867) (regOne!39546 lt!2621856)) (= (regTwo!39546 lt!2621867) (regTwo!39546 lt!2621856))) (= lambda!461401 lambda!461366))))

(declare-fun bs!1928864 () Bool)

(assert (= bs!1928864 (and b!7457753 b!7457643)))

(assert (=> bs!1928864 (not (= lambda!461401 lambda!461392))))

(declare-fun bs!1928865 () Bool)

(assert (= bs!1928865 (and b!7457753 b!7457607)))

(assert (=> bs!1928865 (not (= lambda!461401 lambda!461388))))

(declare-fun bs!1928866 () Bool)

(assert (= bs!1928866 (and b!7457753 b!7457184)))

(assert (=> bs!1928866 (= (and (= (_1!37547 lt!2621846) s!13591) (= (regOne!39546 lt!2621867) (regOne!39546 lt!2621869)) (= (regTwo!39546 lt!2621867) (regTwo!39546 lt!2621869))) (= lambda!461401 lambda!461356))))

(declare-fun bs!1928867 () Bool)

(assert (= bs!1928867 (and b!7457753 b!7457752)))

(assert (=> bs!1928867 (not (= lambda!461401 lambda!461399))))

(declare-fun bs!1928868 () Bool)

(assert (= bs!1928868 (and b!7457753 b!7457183)))

(assert (=> bs!1928868 (not (= lambda!461401 lambda!461355))))

(declare-fun bs!1928869 () Bool)

(assert (= bs!1928869 (and b!7457753 b!7457336)))

(assert (=> bs!1928869 (not (= lambda!461401 lambda!461363))))

(declare-fun bs!1928870 () Bool)

(assert (= bs!1928870 (and b!7457753 d!2297704)))

(assert (=> bs!1928870 (not (= lambda!461401 lambda!461373))))

(assert (=> b!7457753 true))

(assert (=> b!7457753 true))

(declare-fun b!7457748 () Bool)

(declare-fun e!4451087 () Bool)

(declare-fun call!685144 () Bool)

(assert (=> b!7457748 (= e!4451087 call!685144)))

(declare-fun b!7457749 () Bool)

(declare-fun e!4451088 () Bool)

(declare-fun e!4451089 () Bool)

(assert (=> b!7457749 (= e!4451088 e!4451089)))

(declare-fun res!2991541 () Bool)

(assert (=> b!7457749 (= res!2991541 (matchRSpec!4196 (regOne!39547 lt!2621867) (_1!37547 lt!2621846)))))

(assert (=> b!7457749 (=> res!2991541 e!4451089)))

(declare-fun c!1378858 () Bool)

(declare-fun bm!685138 () Bool)

(declare-fun call!685143 () Bool)

(assert (=> bm!685138 (= call!685143 (Exists!4138 (ite c!1378858 lambda!461399 lambda!461401)))))

(declare-fun b!7457751 () Bool)

(declare-fun c!1378855 () Bool)

(assert (=> b!7457751 (= c!1378855 ((_ is Union!19517) lt!2621867))))

(declare-fun e!4451083 () Bool)

(assert (=> b!7457751 (= e!4451083 e!4451088)))

(declare-fun e!4451085 () Bool)

(assert (=> b!7457752 (= e!4451085 call!685143)))

(declare-fun e!4451086 () Bool)

(assert (=> b!7457753 (= e!4451086 call!685143)))

(declare-fun b!7457754 () Bool)

(assert (=> b!7457754 (= e!4451083 (= (_1!37547 lt!2621846) (Cons!72109 (c!1378680 lt!2621867) Nil!72109)))))

(declare-fun b!7457755 () Bool)

(declare-fun c!1378857 () Bool)

(assert (=> b!7457755 (= c!1378857 ((_ is ElementMatch!19517) lt!2621867))))

(declare-fun e!4451084 () Bool)

(assert (=> b!7457755 (= e!4451084 e!4451083)))

(declare-fun b!7457750 () Bool)

(assert (=> b!7457750 (= e!4451088 e!4451086)))

(assert (=> b!7457750 (= c!1378858 ((_ is Star!19517) lt!2621867))))

(declare-fun d!2297780 () Bool)

(declare-fun c!1378856 () Bool)

(assert (=> d!2297780 (= c!1378856 ((_ is EmptyExpr!19517) lt!2621867))))

(assert (=> d!2297780 (= (matchRSpec!4196 lt!2621867 (_1!37547 lt!2621846)) e!4451087)))

(declare-fun b!7457756 () Bool)

(assert (=> b!7457756 (= e!4451087 e!4451084)))

(declare-fun res!2991539 () Bool)

(assert (=> b!7457756 (= res!2991539 (not ((_ is EmptyLang!19517) lt!2621867)))))

(assert (=> b!7457756 (=> (not res!2991539) (not e!4451084))))

(declare-fun bm!685139 () Bool)

(assert (=> bm!685139 (= call!685144 (isEmpty!41119 (_1!37547 lt!2621846)))))

(declare-fun b!7457757 () Bool)

(declare-fun res!2991540 () Bool)

(assert (=> b!7457757 (=> res!2991540 e!4451085)))

(assert (=> b!7457757 (= res!2991540 call!685144)))

(assert (=> b!7457757 (= e!4451086 e!4451085)))

(declare-fun b!7457758 () Bool)

(assert (=> b!7457758 (= e!4451089 (matchRSpec!4196 (regTwo!39547 lt!2621867) (_1!37547 lt!2621846)))))

(assert (= (and d!2297780 c!1378856) b!7457748))

(assert (= (and d!2297780 (not c!1378856)) b!7457756))

(assert (= (and b!7457756 res!2991539) b!7457755))

(assert (= (and b!7457755 c!1378857) b!7457754))

(assert (= (and b!7457755 (not c!1378857)) b!7457751))

(assert (= (and b!7457751 c!1378855) b!7457749))

(assert (= (and b!7457751 (not c!1378855)) b!7457750))

(assert (= (and b!7457749 (not res!2991541)) b!7457758))

(assert (= (and b!7457750 c!1378858) b!7457757))

(assert (= (and b!7457750 (not c!1378858)) b!7457753))

(assert (= (and b!7457757 (not res!2991540)) b!7457752))

(assert (= (or b!7457752 b!7457753) bm!685138))

(assert (= (or b!7457748 b!7457757) bm!685139))

(declare-fun m!8060958 () Bool)

(assert (=> b!7457749 m!8060958))

(declare-fun m!8060960 () Bool)

(assert (=> bm!685138 m!8060960))

(assert (=> bm!685139 m!8060786))

(declare-fun m!8060962 () Bool)

(assert (=> b!7457758 m!8060962))

(assert (=> b!7457015 d!2297780))

(declare-fun d!2297784 () Bool)

(assert (=> d!2297784 (= (matchR!9281 lt!2621867 (_1!37547 lt!2621846)) (matchRSpec!4196 lt!2621867 (_1!37547 lt!2621846)))))

(declare-fun lt!2621952 () Unit!165869)

(assert (=> d!2297784 (= lt!2621952 (choose!57638 lt!2621867 (_1!37547 lt!2621846)))))

(assert (=> d!2297784 (validRegex!10031 lt!2621867)))

(assert (=> d!2297784 (= (mainMatchTheorem!4190 lt!2621867 (_1!37547 lt!2621846)) lt!2621952)))

(declare-fun bs!1928873 () Bool)

(assert (= bs!1928873 d!2297784))

(assert (=> bs!1928873 m!8060460))

(assert (=> bs!1928873 m!8060468))

(declare-fun m!8060964 () Bool)

(assert (=> bs!1928873 m!8060964))

(assert (=> bs!1928873 m!8060722))

(assert (=> b!7457015 d!2297784))

(declare-fun b!7457770 () Bool)

(declare-fun res!2991550 () Bool)

(declare-fun e!4451097 () Bool)

(assert (=> b!7457770 (=> res!2991550 e!4451097)))

(declare-fun e!4451100 () Bool)

(assert (=> b!7457770 (= res!2991550 e!4451100)))

(declare-fun res!2991545 () Bool)

(assert (=> b!7457770 (=> (not res!2991545) (not e!4451100))))

(declare-fun lt!2621953 () Bool)

(assert (=> b!7457770 (= res!2991545 lt!2621953)))

(declare-fun b!7457771 () Bool)

(declare-fun e!4451103 () Bool)

(assert (=> b!7457771 (= e!4451103 (nullable!8503 r2!5783))))

(declare-fun b!7457772 () Bool)

(declare-fun res!2991547 () Bool)

(assert (=> b!7457772 (=> (not res!2991547) (not e!4451100))))

(assert (=> b!7457772 (= res!2991547 (isEmpty!41119 (tail!14871 (_1!37547 lt!2621846))))))

(declare-fun b!7457773 () Bool)

(declare-fun e!4451098 () Bool)

(declare-fun e!4451102 () Bool)

(assert (=> b!7457773 (= e!4451098 e!4451102)))

(declare-fun res!2991552 () Bool)

(assert (=> b!7457773 (=> res!2991552 e!4451102)))

(declare-fun call!685147 () Bool)

(assert (=> b!7457773 (= res!2991552 call!685147)))

(declare-fun d!2297786 () Bool)

(declare-fun e!4451101 () Bool)

(assert (=> d!2297786 e!4451101))

(declare-fun c!1378865 () Bool)

(assert (=> d!2297786 (= c!1378865 ((_ is EmptyExpr!19517) r2!5783))))

(assert (=> d!2297786 (= lt!2621953 e!4451103)))

(declare-fun c!1378863 () Bool)

(assert (=> d!2297786 (= c!1378863 (isEmpty!41119 (_1!37547 lt!2621846)))))

(assert (=> d!2297786 (validRegex!10031 r2!5783)))

(assert (=> d!2297786 (= (matchR!9281 r2!5783 (_1!37547 lt!2621846)) lt!2621953)))

(declare-fun b!7457774 () Bool)

(assert (=> b!7457774 (= e!4451102 (not (= (head!15302 (_1!37547 lt!2621846)) (c!1378680 r2!5783))))))

(declare-fun b!7457775 () Bool)

(declare-fun e!4451099 () Bool)

(assert (=> b!7457775 (= e!4451101 e!4451099)))

(declare-fun c!1378864 () Bool)

(assert (=> b!7457775 (= c!1378864 ((_ is EmptyLang!19517) r2!5783))))

(declare-fun b!7457776 () Bool)

(assert (=> b!7457776 (= e!4451100 (= (head!15302 (_1!37547 lt!2621846)) (c!1378680 r2!5783)))))

(declare-fun b!7457777 () Bool)

(declare-fun res!2991549 () Bool)

(assert (=> b!7457777 (=> (not res!2991549) (not e!4451100))))

(assert (=> b!7457777 (= res!2991549 (not call!685147))))

(declare-fun b!7457778 () Bool)

(assert (=> b!7457778 (= e!4451097 e!4451098)))

(declare-fun res!2991546 () Bool)

(assert (=> b!7457778 (=> (not res!2991546) (not e!4451098))))

(assert (=> b!7457778 (= res!2991546 (not lt!2621953))))

(declare-fun b!7457779 () Bool)

(assert (=> b!7457779 (= e!4451101 (= lt!2621953 call!685147))))

(declare-fun b!7457780 () Bool)

(declare-fun res!2991548 () Bool)

(assert (=> b!7457780 (=> res!2991548 e!4451097)))

(assert (=> b!7457780 (= res!2991548 (not ((_ is ElementMatch!19517) r2!5783)))))

(assert (=> b!7457780 (= e!4451099 e!4451097)))

(declare-fun bm!685142 () Bool)

(assert (=> bm!685142 (= call!685147 (isEmpty!41119 (_1!37547 lt!2621846)))))

(declare-fun b!7457781 () Bool)

(declare-fun res!2991551 () Bool)

(assert (=> b!7457781 (=> res!2991551 e!4451102)))

(assert (=> b!7457781 (= res!2991551 (not (isEmpty!41119 (tail!14871 (_1!37547 lt!2621846)))))))

(declare-fun b!7457782 () Bool)

(assert (=> b!7457782 (= e!4451103 (matchR!9281 (derivativeStep!5562 r2!5783 (head!15302 (_1!37547 lt!2621846))) (tail!14871 (_1!37547 lt!2621846))))))

(declare-fun b!7457783 () Bool)

(assert (=> b!7457783 (= e!4451099 (not lt!2621953))))

(assert (= (and d!2297786 c!1378863) b!7457771))

(assert (= (and d!2297786 (not c!1378863)) b!7457782))

(assert (= (and d!2297786 c!1378865) b!7457779))

(assert (= (and d!2297786 (not c!1378865)) b!7457775))

(assert (= (and b!7457775 c!1378864) b!7457783))

(assert (= (and b!7457775 (not c!1378864)) b!7457780))

(assert (= (and b!7457780 (not res!2991548)) b!7457770))

(assert (= (and b!7457770 res!2991545) b!7457777))

(assert (= (and b!7457777 res!2991549) b!7457772))

(assert (= (and b!7457772 res!2991547) b!7457776))

(assert (= (and b!7457770 (not res!2991550)) b!7457778))

(assert (= (and b!7457778 res!2991546) b!7457773))

(assert (= (and b!7457773 (not res!2991552)) b!7457781))

(assert (= (and b!7457781 (not res!2991551)) b!7457774))

(assert (= (or b!7457779 b!7457773 b!7457777) bm!685142))

(assert (=> b!7457782 m!8060778))

(assert (=> b!7457782 m!8060778))

(declare-fun m!8060966 () Bool)

(assert (=> b!7457782 m!8060966))

(assert (=> b!7457782 m!8060782))

(assert (=> b!7457782 m!8060966))

(assert (=> b!7457782 m!8060782))

(declare-fun m!8060968 () Bool)

(assert (=> b!7457782 m!8060968))

(assert (=> b!7457776 m!8060778))

(assert (=> d!2297786 m!8060786))

(assert (=> d!2297786 m!8060498))

(assert (=> b!7457781 m!8060782))

(assert (=> b!7457781 m!8060782))

(assert (=> b!7457781 m!8060788))

(declare-fun m!8060970 () Bool)

(assert (=> b!7457771 m!8060970))

(assert (=> bm!685142 m!8060786))

(assert (=> b!7457772 m!8060782))

(assert (=> b!7457772 m!8060782))

(assert (=> b!7457772 m!8060788))

(assert (=> b!7457774 m!8060778))

(assert (=> b!7457015 d!2297786))

(declare-fun b!7457794 () Bool)

(declare-fun e!4451106 () Bool)

(assert (=> b!7457794 (= e!4451106 tp_is_empty!49323)))

(assert (=> b!7457025 (= tp!2161004 e!4451106)))

(declare-fun b!7457797 () Bool)

(declare-fun tp!2161030 () Bool)

(declare-fun tp!2161031 () Bool)

(assert (=> b!7457797 (= e!4451106 (and tp!2161030 tp!2161031))))

(declare-fun b!7457796 () Bool)

(declare-fun tp!2161034 () Bool)

(assert (=> b!7457796 (= e!4451106 tp!2161034)))

(declare-fun b!7457795 () Bool)

(declare-fun tp!2161033 () Bool)

(declare-fun tp!2161032 () Bool)

(assert (=> b!7457795 (= e!4451106 (and tp!2161033 tp!2161032))))

(assert (= (and b!7457025 ((_ is ElementMatch!19517) (reg!19846 r2!5783))) b!7457794))

(assert (= (and b!7457025 ((_ is Concat!28362) (reg!19846 r2!5783))) b!7457795))

(assert (= (and b!7457025 ((_ is Star!19517) (reg!19846 r2!5783))) b!7457796))

(assert (= (and b!7457025 ((_ is Union!19517) (reg!19846 r2!5783))) b!7457797))

(declare-fun b!7457798 () Bool)

(declare-fun e!4451107 () Bool)

(assert (=> b!7457798 (= e!4451107 tp_is_empty!49323)))

(assert (=> b!7457024 (= tp!2161011 e!4451107)))

(declare-fun b!7457801 () Bool)

(declare-fun tp!2161035 () Bool)

(declare-fun tp!2161036 () Bool)

(assert (=> b!7457801 (= e!4451107 (and tp!2161035 tp!2161036))))

(declare-fun b!7457800 () Bool)

(declare-fun tp!2161039 () Bool)

(assert (=> b!7457800 (= e!4451107 tp!2161039)))

(declare-fun b!7457799 () Bool)

(declare-fun tp!2161038 () Bool)

(declare-fun tp!2161037 () Bool)

(assert (=> b!7457799 (= e!4451107 (and tp!2161038 tp!2161037))))

(assert (= (and b!7457024 ((_ is ElementMatch!19517) (regOne!39546 rTail!78))) b!7457798))

(assert (= (and b!7457024 ((_ is Concat!28362) (regOne!39546 rTail!78))) b!7457799))

(assert (= (and b!7457024 ((_ is Star!19517) (regOne!39546 rTail!78))) b!7457800))

(assert (= (and b!7457024 ((_ is Union!19517) (regOne!39546 rTail!78))) b!7457801))

(declare-fun b!7457802 () Bool)

(declare-fun e!4451108 () Bool)

(assert (=> b!7457802 (= e!4451108 tp_is_empty!49323)))

(assert (=> b!7457024 (= tp!2161017 e!4451108)))

(declare-fun b!7457805 () Bool)

(declare-fun tp!2161040 () Bool)

(declare-fun tp!2161041 () Bool)

(assert (=> b!7457805 (= e!4451108 (and tp!2161040 tp!2161041))))

(declare-fun b!7457804 () Bool)

(declare-fun tp!2161044 () Bool)

(assert (=> b!7457804 (= e!4451108 tp!2161044)))

(declare-fun b!7457803 () Bool)

(declare-fun tp!2161043 () Bool)

(declare-fun tp!2161042 () Bool)

(assert (=> b!7457803 (= e!4451108 (and tp!2161043 tp!2161042))))

(assert (= (and b!7457024 ((_ is ElementMatch!19517) (regTwo!39546 rTail!78))) b!7457802))

(assert (= (and b!7457024 ((_ is Concat!28362) (regTwo!39546 rTail!78))) b!7457803))

(assert (= (and b!7457024 ((_ is Star!19517) (regTwo!39546 rTail!78))) b!7457804))

(assert (= (and b!7457024 ((_ is Union!19517) (regTwo!39546 rTail!78))) b!7457805))

(declare-fun b!7457806 () Bool)

(declare-fun e!4451109 () Bool)

(assert (=> b!7457806 (= e!4451109 tp_is_empty!49323)))

(assert (=> b!7457020 (= tp!2161008 e!4451109)))

(declare-fun b!7457809 () Bool)

(declare-fun tp!2161045 () Bool)

(declare-fun tp!2161046 () Bool)

(assert (=> b!7457809 (= e!4451109 (and tp!2161045 tp!2161046))))

(declare-fun b!7457808 () Bool)

(declare-fun tp!2161049 () Bool)

(assert (=> b!7457808 (= e!4451109 tp!2161049)))

(declare-fun b!7457807 () Bool)

(declare-fun tp!2161048 () Bool)

(declare-fun tp!2161047 () Bool)

(assert (=> b!7457807 (= e!4451109 (and tp!2161048 tp!2161047))))

(assert (= (and b!7457020 ((_ is ElementMatch!19517) (regOne!39546 r2!5783))) b!7457806))

(assert (= (and b!7457020 ((_ is Concat!28362) (regOne!39546 r2!5783))) b!7457807))

(assert (= (and b!7457020 ((_ is Star!19517) (regOne!39546 r2!5783))) b!7457808))

(assert (= (and b!7457020 ((_ is Union!19517) (regOne!39546 r2!5783))) b!7457809))

(declare-fun b!7457810 () Bool)

(declare-fun e!4451110 () Bool)

(assert (=> b!7457810 (= e!4451110 tp_is_empty!49323)))

(assert (=> b!7457020 (= tp!2161014 e!4451110)))

(declare-fun b!7457813 () Bool)

(declare-fun tp!2161050 () Bool)

(declare-fun tp!2161051 () Bool)

(assert (=> b!7457813 (= e!4451110 (and tp!2161050 tp!2161051))))

(declare-fun b!7457812 () Bool)

(declare-fun tp!2161054 () Bool)

(assert (=> b!7457812 (= e!4451110 tp!2161054)))

(declare-fun b!7457811 () Bool)

(declare-fun tp!2161053 () Bool)

(declare-fun tp!2161052 () Bool)

(assert (=> b!7457811 (= e!4451110 (and tp!2161053 tp!2161052))))

(assert (= (and b!7457020 ((_ is ElementMatch!19517) (regTwo!39546 r2!5783))) b!7457810))

(assert (= (and b!7457020 ((_ is Concat!28362) (regTwo!39546 r2!5783))) b!7457811))

(assert (= (and b!7457020 ((_ is Star!19517) (regTwo!39546 r2!5783))) b!7457812))

(assert (= (and b!7457020 ((_ is Union!19517) (regTwo!39546 r2!5783))) b!7457813))

(declare-fun b!7457814 () Bool)

(declare-fun e!4451111 () Bool)

(assert (=> b!7457814 (= e!4451111 tp_is_empty!49323)))

(assert (=> b!7457013 (= tp!2161007 e!4451111)))

(declare-fun b!7457817 () Bool)

(declare-fun tp!2161055 () Bool)

(declare-fun tp!2161056 () Bool)

(assert (=> b!7457817 (= e!4451111 (and tp!2161055 tp!2161056))))

(declare-fun b!7457816 () Bool)

(declare-fun tp!2161059 () Bool)

(assert (=> b!7457816 (= e!4451111 tp!2161059)))

(declare-fun b!7457815 () Bool)

(declare-fun tp!2161058 () Bool)

(declare-fun tp!2161057 () Bool)

(assert (=> b!7457815 (= e!4451111 (and tp!2161058 tp!2161057))))

(assert (= (and b!7457013 ((_ is ElementMatch!19517) (regOne!39547 r2!5783))) b!7457814))

(assert (= (and b!7457013 ((_ is Concat!28362) (regOne!39547 r2!5783))) b!7457815))

(assert (= (and b!7457013 ((_ is Star!19517) (regOne!39547 r2!5783))) b!7457816))

(assert (= (and b!7457013 ((_ is Union!19517) (regOne!39547 r2!5783))) b!7457817))

(declare-fun b!7457818 () Bool)

(declare-fun e!4451112 () Bool)

(assert (=> b!7457818 (= e!4451112 tp_is_empty!49323)))

(assert (=> b!7457013 (= tp!2161016 e!4451112)))

(declare-fun b!7457821 () Bool)

(declare-fun tp!2161060 () Bool)

(declare-fun tp!2161061 () Bool)

(assert (=> b!7457821 (= e!4451112 (and tp!2161060 tp!2161061))))

(declare-fun b!7457820 () Bool)

(declare-fun tp!2161064 () Bool)

(assert (=> b!7457820 (= e!4451112 tp!2161064)))

(declare-fun b!7457819 () Bool)

(declare-fun tp!2161063 () Bool)

(declare-fun tp!2161062 () Bool)

(assert (=> b!7457819 (= e!4451112 (and tp!2161063 tp!2161062))))

(assert (= (and b!7457013 ((_ is ElementMatch!19517) (regTwo!39547 r2!5783))) b!7457818))

(assert (= (and b!7457013 ((_ is Concat!28362) (regTwo!39547 r2!5783))) b!7457819))

(assert (= (and b!7457013 ((_ is Star!19517) (regTwo!39547 r2!5783))) b!7457820))

(assert (= (and b!7457013 ((_ is Union!19517) (regTwo!39547 r2!5783))) b!7457821))

(declare-fun b!7457822 () Bool)

(declare-fun e!4451113 () Bool)

(assert (=> b!7457822 (= e!4451113 tp_is_empty!49323)))

(assert (=> b!7457007 (= tp!2161005 e!4451113)))

(declare-fun b!7457825 () Bool)

(declare-fun tp!2161065 () Bool)

(declare-fun tp!2161066 () Bool)

(assert (=> b!7457825 (= e!4451113 (and tp!2161065 tp!2161066))))

(declare-fun b!7457824 () Bool)

(declare-fun tp!2161069 () Bool)

(assert (=> b!7457824 (= e!4451113 tp!2161069)))

(declare-fun b!7457823 () Bool)

(declare-fun tp!2161068 () Bool)

(declare-fun tp!2161067 () Bool)

(assert (=> b!7457823 (= e!4451113 (and tp!2161068 tp!2161067))))

(assert (= (and b!7457007 ((_ is ElementMatch!19517) (regOne!39547 r1!5845))) b!7457822))

(assert (= (and b!7457007 ((_ is Concat!28362) (regOne!39547 r1!5845))) b!7457823))

(assert (= (and b!7457007 ((_ is Star!19517) (regOne!39547 r1!5845))) b!7457824))

(assert (= (and b!7457007 ((_ is Union!19517) (regOne!39547 r1!5845))) b!7457825))

(declare-fun b!7457826 () Bool)

(declare-fun e!4451114 () Bool)

(assert (=> b!7457826 (= e!4451114 tp_is_empty!49323)))

(assert (=> b!7457007 (= tp!2161019 e!4451114)))

(declare-fun b!7457829 () Bool)

(declare-fun tp!2161070 () Bool)

(declare-fun tp!2161071 () Bool)

(assert (=> b!7457829 (= e!4451114 (and tp!2161070 tp!2161071))))

(declare-fun b!7457828 () Bool)

(declare-fun tp!2161074 () Bool)

(assert (=> b!7457828 (= e!4451114 tp!2161074)))

(declare-fun b!7457827 () Bool)

(declare-fun tp!2161073 () Bool)

(declare-fun tp!2161072 () Bool)

(assert (=> b!7457827 (= e!4451114 (and tp!2161073 tp!2161072))))

(assert (= (and b!7457007 ((_ is ElementMatch!19517) (regTwo!39547 r1!5845))) b!7457826))

(assert (= (and b!7457007 ((_ is Concat!28362) (regTwo!39547 r1!5845))) b!7457827))

(assert (= (and b!7457007 ((_ is Star!19517) (regTwo!39547 r1!5845))) b!7457828))

(assert (= (and b!7457007 ((_ is Union!19517) (regTwo!39547 r1!5845))) b!7457829))

(declare-fun b!7457834 () Bool)

(declare-fun e!4451117 () Bool)

(declare-fun tp!2161077 () Bool)

(assert (=> b!7457834 (= e!4451117 (and tp_is_empty!49323 tp!2161077))))

(assert (=> b!7457018 (= tp!2161006 e!4451117)))

(assert (= (and b!7457018 ((_ is Cons!72109) (t!386802 s!13591))) b!7457834))

(declare-fun b!7457835 () Bool)

(declare-fun e!4451118 () Bool)

(assert (=> b!7457835 (= e!4451118 tp_is_empty!49323)))

(assert (=> b!7457019 (= tp!2161012 e!4451118)))

(declare-fun b!7457838 () Bool)

(declare-fun tp!2161078 () Bool)

(declare-fun tp!2161079 () Bool)

(assert (=> b!7457838 (= e!4451118 (and tp!2161078 tp!2161079))))

(declare-fun b!7457837 () Bool)

(declare-fun tp!2161082 () Bool)

(assert (=> b!7457837 (= e!4451118 tp!2161082)))

(declare-fun b!7457836 () Bool)

(declare-fun tp!2161081 () Bool)

(declare-fun tp!2161080 () Bool)

(assert (=> b!7457836 (= e!4451118 (and tp!2161081 tp!2161080))))

(assert (= (and b!7457019 ((_ is ElementMatch!19517) (reg!19846 rTail!78))) b!7457835))

(assert (= (and b!7457019 ((_ is Concat!28362) (reg!19846 rTail!78))) b!7457836))

(assert (= (and b!7457019 ((_ is Star!19517) (reg!19846 rTail!78))) b!7457837))

(assert (= (and b!7457019 ((_ is Union!19517) (reg!19846 rTail!78))) b!7457838))

(declare-fun b!7457839 () Bool)

(declare-fun e!4451119 () Bool)

(assert (=> b!7457839 (= e!4451119 tp_is_empty!49323)))

(assert (=> b!7457016 (= tp!2161010 e!4451119)))

(declare-fun b!7457842 () Bool)

(declare-fun tp!2161083 () Bool)

(declare-fun tp!2161084 () Bool)

(assert (=> b!7457842 (= e!4451119 (and tp!2161083 tp!2161084))))

(declare-fun b!7457841 () Bool)

(declare-fun tp!2161087 () Bool)

(assert (=> b!7457841 (= e!4451119 tp!2161087)))

(declare-fun b!7457840 () Bool)

(declare-fun tp!2161086 () Bool)

(declare-fun tp!2161085 () Bool)

(assert (=> b!7457840 (= e!4451119 (and tp!2161086 tp!2161085))))

(assert (= (and b!7457016 ((_ is ElementMatch!19517) (regOne!39547 rTail!78))) b!7457839))

(assert (= (and b!7457016 ((_ is Concat!28362) (regOne!39547 rTail!78))) b!7457840))

(assert (= (and b!7457016 ((_ is Star!19517) (regOne!39547 rTail!78))) b!7457841))

(assert (= (and b!7457016 ((_ is Union!19517) (regOne!39547 rTail!78))) b!7457842))

(declare-fun b!7457843 () Bool)

(declare-fun e!4451120 () Bool)

(assert (=> b!7457843 (= e!4451120 tp_is_empty!49323)))

(assert (=> b!7457016 (= tp!2161015 e!4451120)))

(declare-fun b!7457846 () Bool)

(declare-fun tp!2161088 () Bool)

(declare-fun tp!2161089 () Bool)

(assert (=> b!7457846 (= e!4451120 (and tp!2161088 tp!2161089))))

(declare-fun b!7457845 () Bool)

(declare-fun tp!2161092 () Bool)

(assert (=> b!7457845 (= e!4451120 tp!2161092)))

(declare-fun b!7457844 () Bool)

(declare-fun tp!2161091 () Bool)

(declare-fun tp!2161090 () Bool)

(assert (=> b!7457844 (= e!4451120 (and tp!2161091 tp!2161090))))

(assert (= (and b!7457016 ((_ is ElementMatch!19517) (regTwo!39547 rTail!78))) b!7457843))

(assert (= (and b!7457016 ((_ is Concat!28362) (regTwo!39547 rTail!78))) b!7457844))

(assert (= (and b!7457016 ((_ is Star!19517) (regTwo!39547 rTail!78))) b!7457845))

(assert (= (and b!7457016 ((_ is Union!19517) (regTwo!39547 rTail!78))) b!7457846))

(declare-fun b!7457847 () Bool)

(declare-fun e!4451121 () Bool)

(assert (=> b!7457847 (= e!4451121 tp_is_empty!49323)))

(assert (=> b!7457010 (= tp!2161018 e!4451121)))

(declare-fun b!7457850 () Bool)

(declare-fun tp!2161093 () Bool)

(declare-fun tp!2161094 () Bool)

(assert (=> b!7457850 (= e!4451121 (and tp!2161093 tp!2161094))))

(declare-fun b!7457849 () Bool)

(declare-fun tp!2161097 () Bool)

(assert (=> b!7457849 (= e!4451121 tp!2161097)))

(declare-fun b!7457848 () Bool)

(declare-fun tp!2161096 () Bool)

(declare-fun tp!2161095 () Bool)

(assert (=> b!7457848 (= e!4451121 (and tp!2161096 tp!2161095))))

(assert (= (and b!7457010 ((_ is ElementMatch!19517) (regOne!39546 r1!5845))) b!7457847))

(assert (= (and b!7457010 ((_ is Concat!28362) (regOne!39546 r1!5845))) b!7457848))

(assert (= (and b!7457010 ((_ is Star!19517) (regOne!39546 r1!5845))) b!7457849))

(assert (= (and b!7457010 ((_ is Union!19517) (regOne!39546 r1!5845))) b!7457850))

(declare-fun b!7457851 () Bool)

(declare-fun e!4451122 () Bool)

(assert (=> b!7457851 (= e!4451122 tp_is_empty!49323)))

(assert (=> b!7457010 (= tp!2161009 e!4451122)))

(declare-fun b!7457854 () Bool)

(declare-fun tp!2161098 () Bool)

(declare-fun tp!2161099 () Bool)

(assert (=> b!7457854 (= e!4451122 (and tp!2161098 tp!2161099))))

(declare-fun b!7457853 () Bool)

(declare-fun tp!2161102 () Bool)

(assert (=> b!7457853 (= e!4451122 tp!2161102)))

(declare-fun b!7457852 () Bool)

(declare-fun tp!2161101 () Bool)

(declare-fun tp!2161100 () Bool)

(assert (=> b!7457852 (= e!4451122 (and tp!2161101 tp!2161100))))

(assert (= (and b!7457010 ((_ is ElementMatch!19517) (regTwo!39546 r1!5845))) b!7457851))

(assert (= (and b!7457010 ((_ is Concat!28362) (regTwo!39546 r1!5845))) b!7457852))

(assert (= (and b!7457010 ((_ is Star!19517) (regTwo!39546 r1!5845))) b!7457853))

(assert (= (and b!7457010 ((_ is Union!19517) (regTwo!39546 r1!5845))) b!7457854))

(declare-fun b!7457855 () Bool)

(declare-fun e!4451123 () Bool)

(assert (=> b!7457855 (= e!4451123 tp_is_empty!49323)))

(assert (=> b!7457023 (= tp!2161013 e!4451123)))

(declare-fun b!7457858 () Bool)

(declare-fun tp!2161103 () Bool)

(declare-fun tp!2161104 () Bool)

(assert (=> b!7457858 (= e!4451123 (and tp!2161103 tp!2161104))))

(declare-fun b!7457857 () Bool)

(declare-fun tp!2161107 () Bool)

(assert (=> b!7457857 (= e!4451123 tp!2161107)))

(declare-fun b!7457856 () Bool)

(declare-fun tp!2161106 () Bool)

(declare-fun tp!2161105 () Bool)

(assert (=> b!7457856 (= e!4451123 (and tp!2161106 tp!2161105))))

(assert (= (and b!7457023 ((_ is ElementMatch!19517) (reg!19846 r1!5845))) b!7457855))

(assert (= (and b!7457023 ((_ is Concat!28362) (reg!19846 r1!5845))) b!7457856))

(assert (= (and b!7457023 ((_ is Star!19517) (reg!19846 r1!5845))) b!7457857))

(assert (= (and b!7457023 ((_ is Union!19517) (reg!19846 r1!5845))) b!7457858))

(check-sat (not bm!685119) (not b!7457844) (not b!7457797) (not b!7457772) (not b!7457240) (not b!7457834) (not b!7457411) (not d!2297654) (not b!7457513) (not b!7457268) (not b!7457362) (not b!7457816) (not b!7457306) (not b!7457248) (not d!2297666) (not b!7457857) (not bm!685058) (not b!7457774) (not b!7457813) (not b!7457711) (not b!7457715) (not b!7457315) (not b!7457825) (not b!7457260) (not b!7457385) (not b!7457320) (not d!2297706) (not b!7457613) (not bm!685134) (not bm!685124) (not b!7457311) (not b!7457511) (not b!7457856) (not bm!685086) (not b!7457662) (not b!7457176) (not b!7457805) (not b!7457848) (not bm!685075) (not b!7457782) (not b!7457591) (not b!7457710) (not b!7457821) (not b!7457771) (not d!2297664) (not bm!685073) (not bm!685072) (not b!7457796) (not b!7457167) (not b!7457713) (not b!7457166) (not b!7457853) (not b!7457776) (not b!7457815) (not b!7457518) (not bm!685053) (not b!7457671) (not bm!685123) (not bm!685127) (not b!7457721) (not b!7457267) (not b!7457590) (not b!7457808) (not b!7457758) (not d!2297778) (not b!7457307) (not b!7457823) (not b!7457586) (not bm!685068) (not d!2297710) (not b!7457854) (not b!7457253) (not b!7457177) (not b!7457342) (not d!2297774) (not b!7457372) (not d!2297768) (not b!7457196) (not bm!685076) (not b!7457095) (not b!7457849) (not b!7457828) (not b!7457171) (not d!2297692) (not b!7457852) (not b!7457858) (not b!7457180) (not d!2297708) (not bm!685061) (not b!7457749) (not b!7457376) (not b!7457812) (not bm!685094) (not b!7457201) (not b!7457277) (not b!7457519) (not d!2297786) (not b!7457781) (not b!7457601) tp_is_empty!49323 (not b!7457194) (not d!2297644) (not b!7457720) (not b!7457838) (not bm!685142) (not b!7457795) (not b!7457824) (not b!7457333) (not b!7457837) (not b!7457262) (not d!2297678) (not d!2297736) (not bm!685118) (not b!7457840) (not bm!685087) (not d!2297672) (not bm!685071) (not b!7457850) (not b!7457649) (not b!7457588) (not b!7457801) (not bm!685139) (not b!7457804) (not b!7457365) (not b!7457842) (not b!7457799) (not b!7457373) (not bm!685078) (not bm!685115) (not b!7457807) (not b!7457819) (not bm!685083) (not b!7457214) (not b!7457841) (not d!2297720) (not b!7457509) (not d!2297784) (not b!7457202) (not d!2297680) (not b!7457244) (not bm!685138) (not b!7457257) (not d!2297662) (not bm!685107) (not bm!685128) (not d!2297690) (not b!7457811) (not b!7457800) (not b!7457593) (not b!7457803) (not b!7457189) (not b!7457191) (not b!7457258) (not b!7457508) (not bm!685077) (not d!2297704) (not b!7457585) (not b!7457104) (not b!7457246) (not b!7457827) (not b!7457845) (not b!7457846) (not b!7457310) (not d!2297682) (not b!7457367) (not b!7457820) (not b!7457829) (not b!7457817) (not bm!685052) (not bm!685059) (not b!7457604) (not b!7457363) (not bm!685060) (not d!2297746) (not b!7457243) (not bm!685070) (not bm!685117) (not b!7457836) (not d!2297674) (not b!7457809) (not b!7457169) (not bm!685096) (not b!7457313) (not b!7457254) (not b!7457640) (not b!7457321) (not b!7457192) (not d!2297726))
(check-sat)
