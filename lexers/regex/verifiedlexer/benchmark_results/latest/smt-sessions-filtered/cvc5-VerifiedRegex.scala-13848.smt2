; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736222 () Bool)

(assert start!736222)

(declare-fun b!7667177 () Bool)

(assert (=> b!7667177 true))

(assert (=> b!7667177 true))

(declare-fun b!7667166 () Bool)

(declare-fun e!4553818 () Bool)

(declare-datatypes ((C!41306 0))(
  ( (C!41307 (val!31093 Int)) )
))
(declare-datatypes ((List!73341 0))(
  ( (Nil!73217) (Cons!73217 (h!79665 C!41306) (t!388076 List!73341)) )
))
(declare-fun s!9605 () List!73341)

(declare-datatypes ((tuple2!69442 0))(
  ( (tuple2!69443 (_1!38024 List!73341) (_2!38024 List!73341)) )
))
(declare-fun lt!2662163 () tuple2!69442)

(declare-fun ++!17712 (List!73341 List!73341) List!73341)

(assert (=> b!7667166 (= e!4553818 (= s!9605 (++!17712 (_1!38024 lt!2662163) (_2!38024 lt!2662163))))))

(declare-fun b!7667167 () Bool)

(declare-fun res!3066616 () Bool)

(assert (=> b!7667167 (=> res!3066616 e!4553818)))

(declare-datatypes ((Regex!20490 0))(
  ( (ElementMatch!20490 (c!1412095 C!41306)) (Concat!29335 (regOne!41492 Regex!20490) (regTwo!41492 Regex!20490)) (EmptyExpr!20490) (Star!20490 (reg!20819 Regex!20490)) (EmptyLang!20490) (Union!20490 (regOne!41493 Regex!20490) (regTwo!41493 Regex!20490)) )
))
(declare-fun r!14126 () Regex!20490)

(declare-fun validRegex!10908 (Regex!20490) Bool)

(assert (=> b!7667167 (= res!3066616 (not (validRegex!10908 (reg!20819 r!14126))))))

(declare-fun b!7667168 () Bool)

(declare-fun res!3066617 () Bool)

(assert (=> b!7667168 (=> res!3066617 e!4553818)))

(assert (=> b!7667168 (= res!3066617 (not (validRegex!10908 r!14126)))))

(declare-fun b!7667169 () Bool)

(declare-fun res!3066611 () Bool)

(declare-fun e!4553819 () Bool)

(assert (=> b!7667169 (=> (not res!3066611) (not e!4553819))))

(declare-fun isEmpty!41849 (List!73341) Bool)

(assert (=> b!7667169 (= res!3066611 (not (isEmpty!41849 s!9605)))))

(declare-fun b!7667170 () Bool)

(declare-fun e!4553820 () Bool)

(assert (=> b!7667170 (= e!4553820 e!4553818)))

(declare-fun res!3066613 () Bool)

(assert (=> b!7667170 (=> res!3066613 e!4553818)))

(declare-fun matchR!9986 (Regex!20490 List!73341) Bool)

(assert (=> b!7667170 (= res!3066613 (matchR!9986 r!14126 s!9605))))

(declare-fun matchRSpec!4591 (Regex!20490 List!73341) Bool)

(assert (=> b!7667170 (= (matchR!9986 r!14126 (_2!38024 lt!2662163)) (matchRSpec!4591 r!14126 (_2!38024 lt!2662163)))))

(declare-datatypes ((Unit!167992 0))(
  ( (Unit!167993) )
))
(declare-fun lt!2662161 () Unit!167992)

(declare-fun mainMatchTheorem!4569 (Regex!20490 List!73341) Unit!167992)

(assert (=> b!7667170 (= lt!2662161 (mainMatchTheorem!4569 r!14126 (_2!38024 lt!2662163)))))

(assert (=> b!7667170 (= (matchR!9986 (reg!20819 r!14126) (_1!38024 lt!2662163)) (matchRSpec!4591 (reg!20819 r!14126) (_1!38024 lt!2662163)))))

(declare-fun lt!2662160 () Unit!167992)

(assert (=> b!7667170 (= lt!2662160 (mainMatchTheorem!4569 (reg!20819 r!14126) (_1!38024 lt!2662163)))))

(declare-datatypes ((Option!17515 0))(
  ( (None!17514) (Some!17514 (v!54649 tuple2!69442)) )
))
(declare-fun lt!2662164 () Option!17515)

(declare-fun get!25947 (Option!17515) tuple2!69442)

(assert (=> b!7667170 (= lt!2662163 (get!25947 lt!2662164))))

(declare-fun b!7667171 () Bool)

(declare-fun e!4553822 () Bool)

(declare-fun tp!2243680 () Bool)

(declare-fun tp!2243678 () Bool)

(assert (=> b!7667171 (= e!4553822 (and tp!2243680 tp!2243678))))

(declare-fun b!7667172 () Bool)

(declare-fun e!4553821 () Bool)

(declare-fun tp_is_empty!51335 () Bool)

(declare-fun tp!2243681 () Bool)

(assert (=> b!7667172 (= e!4553821 (and tp_is_empty!51335 tp!2243681))))

(declare-fun b!7667173 () Bool)

(declare-fun tp!2243683 () Bool)

(assert (=> b!7667173 (= e!4553822 tp!2243683)))

(declare-fun b!7667174 () Bool)

(declare-fun tp!2243682 () Bool)

(declare-fun tp!2243679 () Bool)

(assert (=> b!7667174 (= e!4553822 (and tp!2243682 tp!2243679))))

(declare-fun res!3066614 () Bool)

(assert (=> start!736222 (=> (not res!3066614) (not e!4553819))))

(assert (=> start!736222 (= res!3066614 (validRegex!10908 r!14126))))

(assert (=> start!736222 e!4553819))

(assert (=> start!736222 e!4553822))

(assert (=> start!736222 e!4553821))

(declare-fun b!7667175 () Bool)

(declare-fun res!3066612 () Bool)

(assert (=> b!7667175 (=> (not res!3066612) (not e!4553819))))

(assert (=> b!7667175 (= res!3066612 (and (not (is-EmptyExpr!20490 r!14126)) (not (is-EmptyLang!20490 r!14126)) (not (is-ElementMatch!20490 r!14126)) (not (is-Union!20490 r!14126)) (is-Star!20490 r!14126)))))

(declare-fun b!7667176 () Bool)

(assert (=> b!7667176 (= e!4553822 tp_is_empty!51335)))

(assert (=> b!7667177 (= e!4553819 (not e!4553820))))

(declare-fun res!3066615 () Bool)

(assert (=> b!7667177 (=> res!3066615 e!4553820)))

(declare-fun lt!2662162 () Bool)

(assert (=> b!7667177 (= res!3066615 (not lt!2662162))))

(declare-fun lambda!469930 () Int)

(declare-fun Exists!4615 (Int) Bool)

(assert (=> b!7667177 (= lt!2662162 (Exists!4615 lambda!469930))))

(declare-fun isDefined!14131 (Option!17515) Bool)

(assert (=> b!7667177 (= lt!2662162 (isDefined!14131 lt!2662164))))

(declare-fun findConcatSeparation!3545 (Regex!20490 Regex!20490 List!73341 List!73341 List!73341) Option!17515)

(assert (=> b!7667177 (= lt!2662164 (findConcatSeparation!3545 (reg!20819 r!14126) r!14126 Nil!73217 s!9605 s!9605))))

(declare-fun lt!2662159 () Unit!167992)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3303 (Regex!20490 Regex!20490 List!73341) Unit!167992)

(assert (=> b!7667177 (= lt!2662159 (lemmaFindConcatSeparationEquivalentToExists!3303 (reg!20819 r!14126) r!14126 s!9605))))

(assert (= (and start!736222 res!3066614) b!7667175))

(assert (= (and b!7667175 res!3066612) b!7667169))

(assert (= (and b!7667169 res!3066611) b!7667177))

(assert (= (and b!7667177 (not res!3066615)) b!7667170))

(assert (= (and b!7667170 (not res!3066613)) b!7667167))

(assert (= (and b!7667167 (not res!3066616)) b!7667168))

(assert (= (and b!7667168 (not res!3066617)) b!7667166))

(assert (= (and start!736222 (is-ElementMatch!20490 r!14126)) b!7667176))

(assert (= (and start!736222 (is-Concat!29335 r!14126)) b!7667174))

(assert (= (and start!736222 (is-Star!20490 r!14126)) b!7667173))

(assert (= (and start!736222 (is-Union!20490 r!14126)) b!7667171))

(assert (= (and start!736222 (is-Cons!73217 s!9605)) b!7667172))

(declare-fun m!8172646 () Bool)

(assert (=> b!7667168 m!8172646))

(declare-fun m!8172648 () Bool)

(assert (=> b!7667166 m!8172648))

(assert (=> start!736222 m!8172646))

(declare-fun m!8172650 () Bool)

(assert (=> b!7667169 m!8172650))

(declare-fun m!8172652 () Bool)

(assert (=> b!7667170 m!8172652))

(declare-fun m!8172654 () Bool)

(assert (=> b!7667170 m!8172654))

(declare-fun m!8172656 () Bool)

(assert (=> b!7667170 m!8172656))

(declare-fun m!8172658 () Bool)

(assert (=> b!7667170 m!8172658))

(declare-fun m!8172660 () Bool)

(assert (=> b!7667170 m!8172660))

(declare-fun m!8172662 () Bool)

(assert (=> b!7667170 m!8172662))

(declare-fun m!8172664 () Bool)

(assert (=> b!7667170 m!8172664))

(declare-fun m!8172666 () Bool)

(assert (=> b!7667170 m!8172666))

(declare-fun m!8172668 () Bool)

(assert (=> b!7667177 m!8172668))

(declare-fun m!8172670 () Bool)

(assert (=> b!7667177 m!8172670))

(declare-fun m!8172672 () Bool)

(assert (=> b!7667177 m!8172672))

(declare-fun m!8172674 () Bool)

(assert (=> b!7667177 m!8172674))

(declare-fun m!8172676 () Bool)

(assert (=> b!7667167 m!8172676))

(push 1)

(assert (not b!7667166))

(assert (not b!7667171))

(assert (not b!7667172))

(assert (not b!7667167))

(assert (not start!736222))

(assert (not b!7667168))

(assert tp_is_empty!51335)

(assert (not b!7667169))

(assert (not b!7667177))

(assert (not b!7667173))

(assert (not b!7667174))

(assert (not b!7667170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!705054 () Bool)

(declare-fun call!705061 () Bool)

(declare-fun c!1412102 () Bool)

(declare-fun c!1412101 () Bool)

(assert (=> bm!705054 (= call!705061 (validRegex!10908 (ite c!1412101 (reg!20819 (reg!20819 r!14126)) (ite c!1412102 (regTwo!41493 (reg!20819 r!14126)) (regTwo!41492 (reg!20819 r!14126))))))))

(declare-fun b!7667244 () Bool)

(declare-fun e!4553860 () Bool)

(declare-fun e!4553859 () Bool)

(assert (=> b!7667244 (= e!4553860 e!4553859)))

(declare-fun res!3066654 () Bool)

(assert (=> b!7667244 (=> (not res!3066654) (not e!4553859))))

(declare-fun call!705059 () Bool)

(assert (=> b!7667244 (= res!3066654 call!705059)))

(declare-fun b!7667245 () Bool)

(declare-fun e!4553854 () Bool)

(declare-fun e!4553858 () Bool)

(assert (=> b!7667245 (= e!4553854 e!4553858)))

(declare-fun res!3066656 () Bool)

(declare-fun nullable!8985 (Regex!20490) Bool)

(assert (=> b!7667245 (= res!3066656 (not (nullable!8985 (reg!20819 (reg!20819 r!14126)))))))

(assert (=> b!7667245 (=> (not res!3066656) (not e!4553858))))

(declare-fun b!7667246 () Bool)

(declare-fun e!4553856 () Bool)

(declare-fun call!705060 () Bool)

(assert (=> b!7667246 (= e!4553856 call!705060)))

(declare-fun b!7667247 () Bool)

(assert (=> b!7667247 (= e!4553858 call!705061)))

(declare-fun b!7667248 () Bool)

(assert (=> b!7667248 (= e!4553859 call!705060)))

(declare-fun d!2328321 () Bool)

(declare-fun res!3066657 () Bool)

(declare-fun e!4553855 () Bool)

(assert (=> d!2328321 (=> res!3066657 e!4553855)))

(assert (=> d!2328321 (= res!3066657 (is-ElementMatch!20490 (reg!20819 r!14126)))))

(assert (=> d!2328321 (= (validRegex!10908 (reg!20819 r!14126)) e!4553855)))

(declare-fun bm!705055 () Bool)

(assert (=> bm!705055 (= call!705060 call!705061)))

(declare-fun b!7667249 () Bool)

(declare-fun res!3066655 () Bool)

(assert (=> b!7667249 (=> (not res!3066655) (not e!4553856))))

(assert (=> b!7667249 (= res!3066655 call!705059)))

(declare-fun e!4553857 () Bool)

(assert (=> b!7667249 (= e!4553857 e!4553856)))

(declare-fun b!7667250 () Bool)

(assert (=> b!7667250 (= e!4553855 e!4553854)))

(assert (=> b!7667250 (= c!1412101 (is-Star!20490 (reg!20819 r!14126)))))

(declare-fun bm!705056 () Bool)

(assert (=> bm!705056 (= call!705059 (validRegex!10908 (ite c!1412102 (regOne!41493 (reg!20819 r!14126)) (regOne!41492 (reg!20819 r!14126)))))))

(declare-fun b!7667251 () Bool)

(assert (=> b!7667251 (= e!4553854 e!4553857)))

(assert (=> b!7667251 (= c!1412102 (is-Union!20490 (reg!20819 r!14126)))))

(declare-fun b!7667252 () Bool)

(declare-fun res!3066653 () Bool)

(assert (=> b!7667252 (=> res!3066653 e!4553860)))

(assert (=> b!7667252 (= res!3066653 (not (is-Concat!29335 (reg!20819 r!14126))))))

(assert (=> b!7667252 (= e!4553857 e!4553860)))

(assert (= (and d!2328321 (not res!3066657)) b!7667250))

(assert (= (and b!7667250 c!1412101) b!7667245))

(assert (= (and b!7667250 (not c!1412101)) b!7667251))

(assert (= (and b!7667245 res!3066656) b!7667247))

(assert (= (and b!7667251 c!1412102) b!7667249))

(assert (= (and b!7667251 (not c!1412102)) b!7667252))

(assert (= (and b!7667249 res!3066655) b!7667246))

(assert (= (and b!7667252 (not res!3066653)) b!7667244))

(assert (= (and b!7667244 res!3066654) b!7667248))

(assert (= (or b!7667249 b!7667244) bm!705056))

(assert (= (or b!7667246 b!7667248) bm!705055))

(assert (= (or b!7667247 bm!705055) bm!705054))

(declare-fun m!8172710 () Bool)

(assert (=> bm!705054 m!8172710))

(declare-fun m!8172712 () Bool)

(assert (=> b!7667245 m!8172712))

(declare-fun m!8172714 () Bool)

(assert (=> bm!705056 m!8172714))

(assert (=> b!7667167 d!2328321))

(declare-fun d!2328327 () Bool)

(declare-fun choose!59073 (Int) Bool)

(assert (=> d!2328327 (= (Exists!4615 lambda!469930) (choose!59073 lambda!469930))))

(declare-fun bs!1946309 () Bool)

(assert (= bs!1946309 d!2328327))

(declare-fun m!8172716 () Bool)

(assert (=> bs!1946309 m!8172716))

(assert (=> b!7667177 d!2328327))

(declare-fun d!2328329 () Bool)

(declare-fun isEmpty!41851 (Option!17515) Bool)

(assert (=> d!2328329 (= (isDefined!14131 lt!2662164) (not (isEmpty!41851 lt!2662164)))))

(declare-fun bs!1946310 () Bool)

(assert (= bs!1946310 d!2328329))

(declare-fun m!8172718 () Bool)

(assert (=> bs!1946310 m!8172718))

(assert (=> b!7667177 d!2328329))

(declare-fun b!7667298 () Bool)

(declare-fun e!4553892 () Bool)

(declare-fun lt!2662190 () Option!17515)

(assert (=> b!7667298 (= e!4553892 (not (isDefined!14131 lt!2662190)))))

(declare-fun b!7667299 () Bool)

(declare-fun e!4553894 () Bool)

(assert (=> b!7667299 (= e!4553894 (matchR!9986 r!14126 s!9605))))

(declare-fun b!7667300 () Bool)

(declare-fun res!3066683 () Bool)

(declare-fun e!4553893 () Bool)

(assert (=> b!7667300 (=> (not res!3066683) (not e!4553893))))

(assert (=> b!7667300 (= res!3066683 (matchR!9986 (reg!20819 r!14126) (_1!38024 (get!25947 lt!2662190))))))

(declare-fun b!7667301 () Bool)

(declare-fun lt!2662189 () Unit!167992)

(declare-fun lt!2662191 () Unit!167992)

(assert (=> b!7667301 (= lt!2662189 lt!2662191)))

(assert (=> b!7667301 (= (++!17712 (++!17712 Nil!73217 (Cons!73217 (h!79665 s!9605) Nil!73217)) (t!388076 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3270 (List!73341 C!41306 List!73341 List!73341) Unit!167992)

(assert (=> b!7667301 (= lt!2662191 (lemmaMoveElementToOtherListKeepsConcatEq!3270 Nil!73217 (h!79665 s!9605) (t!388076 s!9605) s!9605))))

(declare-fun e!4553896 () Option!17515)

(assert (=> b!7667301 (= e!4553896 (findConcatSeparation!3545 (reg!20819 r!14126) r!14126 (++!17712 Nil!73217 (Cons!73217 (h!79665 s!9605) Nil!73217)) (t!388076 s!9605) s!9605))))

(declare-fun b!7667302 () Bool)

(assert (=> b!7667302 (= e!4553896 None!17514)))

(declare-fun b!7667303 () Bool)

(assert (=> b!7667303 (= e!4553893 (= (++!17712 (_1!38024 (get!25947 lt!2662190)) (_2!38024 (get!25947 lt!2662190))) s!9605))))

(declare-fun b!7667305 () Bool)

(declare-fun e!4553895 () Option!17515)

(assert (=> b!7667305 (= e!4553895 e!4553896)))

(declare-fun c!1412114 () Bool)

(assert (=> b!7667305 (= c!1412114 (is-Nil!73217 s!9605))))

(declare-fun b!7667306 () Bool)

(declare-fun res!3066685 () Bool)

(assert (=> b!7667306 (=> (not res!3066685) (not e!4553893))))

(assert (=> b!7667306 (= res!3066685 (matchR!9986 r!14126 (_2!38024 (get!25947 lt!2662190))))))

(declare-fun b!7667304 () Bool)

(assert (=> b!7667304 (= e!4553895 (Some!17514 (tuple2!69443 Nil!73217 s!9605)))))

(declare-fun d!2328331 () Bool)

(assert (=> d!2328331 e!4553892))

(declare-fun res!3066686 () Bool)

(assert (=> d!2328331 (=> res!3066686 e!4553892)))

(assert (=> d!2328331 (= res!3066686 e!4553893)))

(declare-fun res!3066687 () Bool)

(assert (=> d!2328331 (=> (not res!3066687) (not e!4553893))))

(assert (=> d!2328331 (= res!3066687 (isDefined!14131 lt!2662190))))

(assert (=> d!2328331 (= lt!2662190 e!4553895)))

(declare-fun c!1412113 () Bool)

(assert (=> d!2328331 (= c!1412113 e!4553894)))

(declare-fun res!3066684 () Bool)

(assert (=> d!2328331 (=> (not res!3066684) (not e!4553894))))

(assert (=> d!2328331 (= res!3066684 (matchR!9986 (reg!20819 r!14126) Nil!73217))))

(assert (=> d!2328331 (validRegex!10908 (reg!20819 r!14126))))

(assert (=> d!2328331 (= (findConcatSeparation!3545 (reg!20819 r!14126) r!14126 Nil!73217 s!9605 s!9605) lt!2662190)))

(assert (= (and d!2328331 res!3066684) b!7667299))

(assert (= (and d!2328331 c!1412113) b!7667304))

(assert (= (and d!2328331 (not c!1412113)) b!7667305))

(assert (= (and b!7667305 c!1412114) b!7667302))

(assert (= (and b!7667305 (not c!1412114)) b!7667301))

(assert (= (and d!2328331 res!3066687) b!7667300))

(assert (= (and b!7667300 res!3066683) b!7667306))

(assert (= (and b!7667306 res!3066685) b!7667303))

(assert (= (and d!2328331 (not res!3066686)) b!7667298))

(declare-fun m!8172722 () Bool)

(assert (=> b!7667298 m!8172722))

(declare-fun m!8172724 () Bool)

(assert (=> b!7667300 m!8172724))

(declare-fun m!8172728 () Bool)

(assert (=> b!7667300 m!8172728))

(assert (=> d!2328331 m!8172722))

(declare-fun m!8172732 () Bool)

(assert (=> d!2328331 m!8172732))

(assert (=> d!2328331 m!8172676))

(declare-fun m!8172734 () Bool)

(assert (=> b!7667301 m!8172734))

(assert (=> b!7667301 m!8172734))

(declare-fun m!8172736 () Bool)

(assert (=> b!7667301 m!8172736))

(declare-fun m!8172738 () Bool)

(assert (=> b!7667301 m!8172738))

(assert (=> b!7667301 m!8172734))

(declare-fun m!8172740 () Bool)

(assert (=> b!7667301 m!8172740))

(assert (=> b!7667306 m!8172724))

(declare-fun m!8172742 () Bool)

(assert (=> b!7667306 m!8172742))

(assert (=> b!7667303 m!8172724))

(declare-fun m!8172744 () Bool)

(assert (=> b!7667303 m!8172744))

(assert (=> b!7667299 m!8172664))

(assert (=> b!7667177 d!2328331))

(declare-fun bs!1946311 () Bool)

(declare-fun d!2328335 () Bool)

(assert (= bs!1946311 (and d!2328335 b!7667177)))

(declare-fun lambda!469936 () Int)

(assert (=> bs!1946311 (= lambda!469936 lambda!469930)))

(assert (=> d!2328335 true))

(assert (=> d!2328335 true))

(assert (=> d!2328335 true))

(assert (=> d!2328335 (= (isDefined!14131 (findConcatSeparation!3545 (reg!20819 r!14126) r!14126 Nil!73217 s!9605 s!9605)) (Exists!4615 lambda!469936))))

(declare-fun lt!2662196 () Unit!167992)

(declare-fun choose!59074 (Regex!20490 Regex!20490 List!73341) Unit!167992)

(assert (=> d!2328335 (= lt!2662196 (choose!59074 (reg!20819 r!14126) r!14126 s!9605))))

(assert (=> d!2328335 (validRegex!10908 (reg!20819 r!14126))))

(assert (=> d!2328335 (= (lemmaFindConcatSeparationEquivalentToExists!3303 (reg!20819 r!14126) r!14126 s!9605) lt!2662196)))

(declare-fun bs!1946312 () Bool)

(assert (= bs!1946312 d!2328335))

(declare-fun m!8172746 () Bool)

(assert (=> bs!1946312 m!8172746))

(assert (=> bs!1946312 m!8172676))

(assert (=> bs!1946312 m!8172672))

(declare-fun m!8172748 () Bool)

(assert (=> bs!1946312 m!8172748))

(assert (=> bs!1946312 m!8172672))

(declare-fun m!8172750 () Bool)

(assert (=> bs!1946312 m!8172750))

(assert (=> b!7667177 d!2328335))

(declare-fun b!7667331 () Bool)

(declare-fun e!4553910 () List!73341)

(assert (=> b!7667331 (= e!4553910 (_2!38024 lt!2662163))))

(declare-fun b!7667334 () Bool)

(declare-fun e!4553909 () Bool)

(declare-fun lt!2662200 () List!73341)

(assert (=> b!7667334 (= e!4553909 (or (not (= (_2!38024 lt!2662163) Nil!73217)) (= lt!2662200 (_1!38024 lt!2662163))))))

(declare-fun d!2328337 () Bool)

(assert (=> d!2328337 e!4553909))

(declare-fun res!3066703 () Bool)

(assert (=> d!2328337 (=> (not res!3066703) (not e!4553909))))

(declare-fun content!15495 (List!73341) (Set C!41306))

(assert (=> d!2328337 (= res!3066703 (= (content!15495 lt!2662200) (set.union (content!15495 (_1!38024 lt!2662163)) (content!15495 (_2!38024 lt!2662163)))))))

(assert (=> d!2328337 (= lt!2662200 e!4553910)))

(declare-fun c!1412120 () Bool)

(assert (=> d!2328337 (= c!1412120 (is-Nil!73217 (_1!38024 lt!2662163)))))

(assert (=> d!2328337 (= (++!17712 (_1!38024 lt!2662163) (_2!38024 lt!2662163)) lt!2662200)))

(declare-fun b!7667332 () Bool)

(assert (=> b!7667332 (= e!4553910 (Cons!73217 (h!79665 (_1!38024 lt!2662163)) (++!17712 (t!388076 (_1!38024 lt!2662163)) (_2!38024 lt!2662163))))))

(declare-fun b!7667333 () Bool)

(declare-fun res!3066702 () Bool)

(assert (=> b!7667333 (=> (not res!3066702) (not e!4553909))))

(declare-fun size!42598 (List!73341) Int)

(assert (=> b!7667333 (= res!3066702 (= (size!42598 lt!2662200) (+ (size!42598 (_1!38024 lt!2662163)) (size!42598 (_2!38024 lt!2662163)))))))

(assert (= (and d!2328337 c!1412120) b!7667331))

(assert (= (and d!2328337 (not c!1412120)) b!7667332))

(assert (= (and d!2328337 res!3066703) b!7667333))

(assert (= (and b!7667333 res!3066702) b!7667334))

(declare-fun m!8172766 () Bool)

(assert (=> d!2328337 m!8172766))

(declare-fun m!8172768 () Bool)

(assert (=> d!2328337 m!8172768))

(declare-fun m!8172770 () Bool)

(assert (=> d!2328337 m!8172770))

(declare-fun m!8172772 () Bool)

(assert (=> b!7667332 m!8172772))

(declare-fun m!8172774 () Bool)

(assert (=> b!7667333 m!8172774))

(declare-fun m!8172776 () Bool)

(assert (=> b!7667333 m!8172776))

(declare-fun m!8172778 () Bool)

(assert (=> b!7667333 m!8172778))

(assert (=> b!7667166 d!2328337))

(declare-fun b!7667363 () Bool)

(declare-fun e!4553929 () Bool)

(assert (=> b!7667363 (= e!4553929 (nullable!8985 r!14126))))

(declare-fun d!2328341 () Bool)

(declare-fun e!4553930 () Bool)

(assert (=> d!2328341 e!4553930))

(declare-fun c!1412128 () Bool)

(assert (=> d!2328341 (= c!1412128 (is-EmptyExpr!20490 r!14126))))

(declare-fun lt!2662203 () Bool)

(assert (=> d!2328341 (= lt!2662203 e!4553929)))

(declare-fun c!1412127 () Bool)

(assert (=> d!2328341 (= c!1412127 (isEmpty!41849 s!9605))))

(assert (=> d!2328341 (validRegex!10908 r!14126)))

(assert (=> d!2328341 (= (matchR!9986 r!14126 s!9605) lt!2662203)))

(declare-fun b!7667364 () Bool)

(declare-fun e!4553925 () Bool)

(declare-fun e!4553927 () Bool)

(assert (=> b!7667364 (= e!4553925 e!4553927)))

(declare-fun res!3066720 () Bool)

(assert (=> b!7667364 (=> (not res!3066720) (not e!4553927))))

(assert (=> b!7667364 (= res!3066720 (not lt!2662203))))

(declare-fun b!7667365 () Bool)

(declare-fun res!3066725 () Bool)

(declare-fun e!4553931 () Bool)

(assert (=> b!7667365 (=> res!3066725 e!4553931)))

(declare-fun tail!15291 (List!73341) List!73341)

(assert (=> b!7667365 (= res!3066725 (not (isEmpty!41849 (tail!15291 s!9605))))))

(declare-fun b!7667366 () Bool)

(declare-fun call!705073 () Bool)

(assert (=> b!7667366 (= e!4553930 (= lt!2662203 call!705073))))

(declare-fun b!7667367 () Bool)

(assert (=> b!7667367 (= e!4553927 e!4553931)))

(declare-fun res!3066723 () Bool)

(assert (=> b!7667367 (=> res!3066723 e!4553931)))

(assert (=> b!7667367 (= res!3066723 call!705073)))

(declare-fun b!7667368 () Bool)

(declare-fun res!3066722 () Bool)

(declare-fun e!4553926 () Bool)

(assert (=> b!7667368 (=> (not res!3066722) (not e!4553926))))

(assert (=> b!7667368 (= res!3066722 (not call!705073))))

(declare-fun b!7667369 () Bool)

(declare-fun res!3066721 () Bool)

(assert (=> b!7667369 (=> res!3066721 e!4553925)))

(assert (=> b!7667369 (= res!3066721 (not (is-ElementMatch!20490 r!14126)))))

(declare-fun e!4553928 () Bool)

(assert (=> b!7667369 (= e!4553928 e!4553925)))

(declare-fun b!7667370 () Bool)

(declare-fun head!15751 (List!73341) C!41306)

(assert (=> b!7667370 (= e!4553931 (not (= (head!15751 s!9605) (c!1412095 r!14126))))))

(declare-fun b!7667371 () Bool)

(assert (=> b!7667371 (= e!4553928 (not lt!2662203))))

(declare-fun b!7667372 () Bool)

(declare-fun derivativeStep!5951 (Regex!20490 C!41306) Regex!20490)

(assert (=> b!7667372 (= e!4553929 (matchR!9986 (derivativeStep!5951 r!14126 (head!15751 s!9605)) (tail!15291 s!9605)))))

(declare-fun b!7667373 () Bool)

(assert (=> b!7667373 (= e!4553930 e!4553928)))

(declare-fun c!1412129 () Bool)

(assert (=> b!7667373 (= c!1412129 (is-EmptyLang!20490 r!14126))))

(declare-fun b!7667374 () Bool)

(declare-fun res!3066727 () Bool)

(assert (=> b!7667374 (=> (not res!3066727) (not e!4553926))))

(assert (=> b!7667374 (= res!3066727 (isEmpty!41849 (tail!15291 s!9605)))))

(declare-fun b!7667375 () Bool)

(declare-fun res!3066724 () Bool)

(assert (=> b!7667375 (=> res!3066724 e!4553925)))

(assert (=> b!7667375 (= res!3066724 e!4553926)))

(declare-fun res!3066726 () Bool)

(assert (=> b!7667375 (=> (not res!3066726) (not e!4553926))))

(assert (=> b!7667375 (= res!3066726 lt!2662203)))

(declare-fun bm!705068 () Bool)

(assert (=> bm!705068 (= call!705073 (isEmpty!41849 s!9605))))

(declare-fun b!7667376 () Bool)

(assert (=> b!7667376 (= e!4553926 (= (head!15751 s!9605) (c!1412095 r!14126)))))

(assert (= (and d!2328341 c!1412127) b!7667363))

(assert (= (and d!2328341 (not c!1412127)) b!7667372))

(assert (= (and d!2328341 c!1412128) b!7667366))

(assert (= (and d!2328341 (not c!1412128)) b!7667373))

(assert (= (and b!7667373 c!1412129) b!7667371))

(assert (= (and b!7667373 (not c!1412129)) b!7667369))

(assert (= (and b!7667369 (not res!3066721)) b!7667375))

(assert (= (and b!7667375 res!3066726) b!7667368))

(assert (= (and b!7667368 res!3066722) b!7667374))

(assert (= (and b!7667374 res!3066727) b!7667376))

(assert (= (and b!7667375 (not res!3066724)) b!7667364))

(assert (= (and b!7667364 res!3066720) b!7667367))

(assert (= (and b!7667367 (not res!3066723)) b!7667365))

(assert (= (and b!7667365 (not res!3066725)) b!7667370))

(assert (= (or b!7667366 b!7667367 b!7667368) bm!705068))

(declare-fun m!8172784 () Bool)

(assert (=> b!7667372 m!8172784))

(assert (=> b!7667372 m!8172784))

(declare-fun m!8172786 () Bool)

(assert (=> b!7667372 m!8172786))

(declare-fun m!8172788 () Bool)

(assert (=> b!7667372 m!8172788))

(assert (=> b!7667372 m!8172786))

(assert (=> b!7667372 m!8172788))

(declare-fun m!8172790 () Bool)

(assert (=> b!7667372 m!8172790))

(assert (=> b!7667370 m!8172784))

(assert (=> d!2328341 m!8172650))

(assert (=> d!2328341 m!8172646))

(assert (=> bm!705068 m!8172650))

(assert (=> b!7667365 m!8172788))

(assert (=> b!7667365 m!8172788))

(declare-fun m!8172792 () Bool)

(assert (=> b!7667365 m!8172792))

(assert (=> b!7667376 m!8172784))

(assert (=> b!7667374 m!8172788))

(assert (=> b!7667374 m!8172788))

(assert (=> b!7667374 m!8172792))

(declare-fun m!8172794 () Bool)

(assert (=> b!7667363 m!8172794))

(assert (=> b!7667170 d!2328341))

(declare-fun d!2328347 () Bool)

(assert (=> d!2328347 (= (get!25947 lt!2662164) (v!54649 lt!2662164))))

(assert (=> b!7667170 d!2328347))

(declare-fun d!2328349 () Bool)

(assert (=> d!2328349 (= (matchR!9986 r!14126 (_2!38024 lt!2662163)) (matchRSpec!4591 r!14126 (_2!38024 lt!2662163)))))

(declare-fun lt!2662206 () Unit!167992)

(declare-fun choose!59075 (Regex!20490 List!73341) Unit!167992)

(assert (=> d!2328349 (= lt!2662206 (choose!59075 r!14126 (_2!38024 lt!2662163)))))

(assert (=> d!2328349 (validRegex!10908 r!14126)))

(assert (=> d!2328349 (= (mainMatchTheorem!4569 r!14126 (_2!38024 lt!2662163)) lt!2662206)))

(declare-fun bs!1946315 () Bool)

(assert (= bs!1946315 d!2328349))

(assert (=> bs!1946315 m!8172654))

(assert (=> bs!1946315 m!8172666))

(declare-fun m!8172796 () Bool)

(assert (=> bs!1946315 m!8172796))

(assert (=> bs!1946315 m!8172646))

(assert (=> b!7667170 d!2328349))

(declare-fun b!7667377 () Bool)

(declare-fun e!4553936 () Bool)

(assert (=> b!7667377 (= e!4553936 (nullable!8985 (reg!20819 r!14126)))))

(declare-fun d!2328351 () Bool)

(declare-fun e!4553937 () Bool)

(assert (=> d!2328351 e!4553937))

(declare-fun c!1412131 () Bool)

(assert (=> d!2328351 (= c!1412131 (is-EmptyExpr!20490 (reg!20819 r!14126)))))

(declare-fun lt!2662207 () Bool)

(assert (=> d!2328351 (= lt!2662207 e!4553936)))

(declare-fun c!1412130 () Bool)

(assert (=> d!2328351 (= c!1412130 (isEmpty!41849 (_1!38024 lt!2662163)))))

(assert (=> d!2328351 (validRegex!10908 (reg!20819 r!14126))))

(assert (=> d!2328351 (= (matchR!9986 (reg!20819 r!14126) (_1!38024 lt!2662163)) lt!2662207)))

(declare-fun b!7667378 () Bool)

(declare-fun e!4553932 () Bool)

(declare-fun e!4553934 () Bool)

(assert (=> b!7667378 (= e!4553932 e!4553934)))

(declare-fun res!3066728 () Bool)

(assert (=> b!7667378 (=> (not res!3066728) (not e!4553934))))

(assert (=> b!7667378 (= res!3066728 (not lt!2662207))))

(declare-fun b!7667379 () Bool)

(declare-fun res!3066733 () Bool)

(declare-fun e!4553938 () Bool)

(assert (=> b!7667379 (=> res!3066733 e!4553938)))

(assert (=> b!7667379 (= res!3066733 (not (isEmpty!41849 (tail!15291 (_1!38024 lt!2662163)))))))

(declare-fun b!7667380 () Bool)

(declare-fun call!705074 () Bool)

(assert (=> b!7667380 (= e!4553937 (= lt!2662207 call!705074))))

(declare-fun b!7667381 () Bool)

(assert (=> b!7667381 (= e!4553934 e!4553938)))

(declare-fun res!3066731 () Bool)

(assert (=> b!7667381 (=> res!3066731 e!4553938)))

(assert (=> b!7667381 (= res!3066731 call!705074)))

(declare-fun b!7667382 () Bool)

(declare-fun res!3066730 () Bool)

(declare-fun e!4553933 () Bool)

(assert (=> b!7667382 (=> (not res!3066730) (not e!4553933))))

(assert (=> b!7667382 (= res!3066730 (not call!705074))))

(declare-fun b!7667383 () Bool)

(declare-fun res!3066729 () Bool)

(assert (=> b!7667383 (=> res!3066729 e!4553932)))

(assert (=> b!7667383 (= res!3066729 (not (is-ElementMatch!20490 (reg!20819 r!14126))))))

(declare-fun e!4553935 () Bool)

(assert (=> b!7667383 (= e!4553935 e!4553932)))

(declare-fun b!7667384 () Bool)

(assert (=> b!7667384 (= e!4553938 (not (= (head!15751 (_1!38024 lt!2662163)) (c!1412095 (reg!20819 r!14126)))))))

(declare-fun b!7667385 () Bool)

(assert (=> b!7667385 (= e!4553935 (not lt!2662207))))

(declare-fun b!7667386 () Bool)

(assert (=> b!7667386 (= e!4553936 (matchR!9986 (derivativeStep!5951 (reg!20819 r!14126) (head!15751 (_1!38024 lt!2662163))) (tail!15291 (_1!38024 lt!2662163))))))

(declare-fun b!7667387 () Bool)

(assert (=> b!7667387 (= e!4553937 e!4553935)))

(declare-fun c!1412132 () Bool)

(assert (=> b!7667387 (= c!1412132 (is-EmptyLang!20490 (reg!20819 r!14126)))))

(declare-fun b!7667388 () Bool)

(declare-fun res!3066735 () Bool)

(assert (=> b!7667388 (=> (not res!3066735) (not e!4553933))))

(assert (=> b!7667388 (= res!3066735 (isEmpty!41849 (tail!15291 (_1!38024 lt!2662163))))))

(declare-fun b!7667389 () Bool)

(declare-fun res!3066732 () Bool)

(assert (=> b!7667389 (=> res!3066732 e!4553932)))

(assert (=> b!7667389 (= res!3066732 e!4553933)))

(declare-fun res!3066734 () Bool)

(assert (=> b!7667389 (=> (not res!3066734) (not e!4553933))))

(assert (=> b!7667389 (= res!3066734 lt!2662207)))

(declare-fun bm!705069 () Bool)

(assert (=> bm!705069 (= call!705074 (isEmpty!41849 (_1!38024 lt!2662163)))))

(declare-fun b!7667390 () Bool)

(assert (=> b!7667390 (= e!4553933 (= (head!15751 (_1!38024 lt!2662163)) (c!1412095 (reg!20819 r!14126))))))

(assert (= (and d!2328351 c!1412130) b!7667377))

(assert (= (and d!2328351 (not c!1412130)) b!7667386))

(assert (= (and d!2328351 c!1412131) b!7667380))

(assert (= (and d!2328351 (not c!1412131)) b!7667387))

(assert (= (and b!7667387 c!1412132) b!7667385))

(assert (= (and b!7667387 (not c!1412132)) b!7667383))

(assert (= (and b!7667383 (not res!3066729)) b!7667389))

(assert (= (and b!7667389 res!3066734) b!7667382))

(assert (= (and b!7667382 res!3066730) b!7667388))

(assert (= (and b!7667388 res!3066735) b!7667390))

(assert (= (and b!7667389 (not res!3066732)) b!7667378))

(assert (= (and b!7667378 res!3066728) b!7667381))

(assert (= (and b!7667381 (not res!3066731)) b!7667379))

(assert (= (and b!7667379 (not res!3066733)) b!7667384))

(assert (= (or b!7667380 b!7667381 b!7667382) bm!705069))

(declare-fun m!8172798 () Bool)

(assert (=> b!7667386 m!8172798))

(assert (=> b!7667386 m!8172798))

(declare-fun m!8172800 () Bool)

(assert (=> b!7667386 m!8172800))

(declare-fun m!8172802 () Bool)

(assert (=> b!7667386 m!8172802))

(assert (=> b!7667386 m!8172800))

(assert (=> b!7667386 m!8172802))

(declare-fun m!8172804 () Bool)

(assert (=> b!7667386 m!8172804))

(assert (=> b!7667384 m!8172798))

(declare-fun m!8172806 () Bool)

(assert (=> d!2328351 m!8172806))

(assert (=> d!2328351 m!8172676))

(assert (=> bm!705069 m!8172806))

(assert (=> b!7667379 m!8172802))

(assert (=> b!7667379 m!8172802))

(declare-fun m!8172808 () Bool)

(assert (=> b!7667379 m!8172808))

(assert (=> b!7667390 m!8172798))

(assert (=> b!7667388 m!8172802))

(assert (=> b!7667388 m!8172802))

(assert (=> b!7667388 m!8172808))

(declare-fun m!8172810 () Bool)

(assert (=> b!7667377 m!8172810))

(assert (=> b!7667170 d!2328351))

(declare-fun bs!1946316 () Bool)

(declare-fun b!7667451 () Bool)

(assert (= bs!1946316 (and b!7667451 b!7667177)))

(declare-fun lambda!469941 () Int)

(assert (=> bs!1946316 (not (= lambda!469941 lambda!469930))))

(declare-fun bs!1946317 () Bool)

(assert (= bs!1946317 (and b!7667451 d!2328335)))

(assert (=> bs!1946317 (not (= lambda!469941 lambda!469936))))

(assert (=> b!7667451 true))

(assert (=> b!7667451 true))

(declare-fun bs!1946318 () Bool)

(declare-fun b!7667441 () Bool)

(assert (= bs!1946318 (and b!7667441 b!7667177)))

(declare-fun lambda!469942 () Int)

(assert (=> bs!1946318 (not (= lambda!469942 lambda!469930))))

(declare-fun bs!1946319 () Bool)

(assert (= bs!1946319 (and b!7667441 d!2328335)))

(assert (=> bs!1946319 (not (= lambda!469942 lambda!469936))))

(declare-fun bs!1946320 () Bool)

(assert (= bs!1946320 (and b!7667441 b!7667451)))

(assert (=> bs!1946320 (not (= lambda!469942 lambda!469941))))

(assert (=> b!7667441 true))

(assert (=> b!7667441 true))

(declare-fun e!4553971 () Bool)

(declare-fun call!705079 () Bool)

(assert (=> b!7667441 (= e!4553971 call!705079)))

(declare-fun b!7667442 () Bool)

(declare-fun e!4553968 () Bool)

(assert (=> b!7667442 (= e!4553968 (matchRSpec!4591 (regTwo!41493 (reg!20819 r!14126)) (_1!38024 lt!2662163)))))

(declare-fun b!7667443 () Bool)

(declare-fun res!3066764 () Bool)

(declare-fun e!4553969 () Bool)

(assert (=> b!7667443 (=> res!3066764 e!4553969)))

(declare-fun call!705080 () Bool)

(assert (=> b!7667443 (= res!3066764 call!705080)))

(assert (=> b!7667443 (= e!4553971 e!4553969)))

(declare-fun d!2328353 () Bool)

(declare-fun c!1412145 () Bool)

(assert (=> d!2328353 (= c!1412145 (is-EmptyExpr!20490 (reg!20819 r!14126)))))

(declare-fun e!4553970 () Bool)

(assert (=> d!2328353 (= (matchRSpec!4591 (reg!20819 r!14126) (_1!38024 lt!2662163)) e!4553970)))

(declare-fun b!7667444 () Bool)

(declare-fun e!4553967 () Bool)

(assert (=> b!7667444 (= e!4553967 e!4553968)))

(declare-fun res!3066762 () Bool)

(assert (=> b!7667444 (= res!3066762 (matchRSpec!4591 (regOne!41493 (reg!20819 r!14126)) (_1!38024 lt!2662163)))))

(assert (=> b!7667444 (=> res!3066762 e!4553968)))

(declare-fun b!7667445 () Bool)

(assert (=> b!7667445 (= e!4553970 call!705080)))

(declare-fun b!7667446 () Bool)

(declare-fun e!4553973 () Bool)

(assert (=> b!7667446 (= e!4553973 (= (_1!38024 lt!2662163) (Cons!73217 (c!1412095 (reg!20819 r!14126)) Nil!73217)))))

(declare-fun b!7667447 () Bool)

(assert (=> b!7667447 (= e!4553967 e!4553971)))

(declare-fun c!1412148 () Bool)

(assert (=> b!7667447 (= c!1412148 (is-Star!20490 (reg!20819 r!14126)))))

(declare-fun b!7667448 () Bool)

(declare-fun c!1412146 () Bool)

(assert (=> b!7667448 (= c!1412146 (is-ElementMatch!20490 (reg!20819 r!14126)))))

(declare-fun e!4553972 () Bool)

(assert (=> b!7667448 (= e!4553972 e!4553973)))

(declare-fun bm!705074 () Bool)

(assert (=> bm!705074 (= call!705080 (isEmpty!41849 (_1!38024 lt!2662163)))))

(declare-fun b!7667449 () Bool)

(assert (=> b!7667449 (= e!4553970 e!4553972)))

(declare-fun res!3066763 () Bool)

(assert (=> b!7667449 (= res!3066763 (not (is-EmptyLang!20490 (reg!20819 r!14126))))))

(assert (=> b!7667449 (=> (not res!3066763) (not e!4553972))))

(declare-fun b!7667450 () Bool)

(declare-fun c!1412147 () Bool)

(assert (=> b!7667450 (= c!1412147 (is-Union!20490 (reg!20819 r!14126)))))

(assert (=> b!7667450 (= e!4553973 e!4553967)))

(declare-fun bm!705075 () Bool)

(assert (=> bm!705075 (= call!705079 (Exists!4615 (ite c!1412148 lambda!469941 lambda!469942)))))

(assert (=> b!7667451 (= e!4553969 call!705079)))

(assert (= (and d!2328353 c!1412145) b!7667445))

(assert (= (and d!2328353 (not c!1412145)) b!7667449))

(assert (= (and b!7667449 res!3066763) b!7667448))

(assert (= (and b!7667448 c!1412146) b!7667446))

(assert (= (and b!7667448 (not c!1412146)) b!7667450))

(assert (= (and b!7667450 c!1412147) b!7667444))

(assert (= (and b!7667450 (not c!1412147)) b!7667447))

(assert (= (and b!7667444 (not res!3066762)) b!7667442))

(assert (= (and b!7667447 c!1412148) b!7667443))

(assert (= (and b!7667447 (not c!1412148)) b!7667441))

(assert (= (and b!7667443 (not res!3066764)) b!7667451))

(assert (= (or b!7667451 b!7667441) bm!705075))

(assert (= (or b!7667445 b!7667443) bm!705074))

(declare-fun m!8172812 () Bool)

(assert (=> b!7667442 m!8172812))

(declare-fun m!8172814 () Bool)

(assert (=> b!7667444 m!8172814))

(assert (=> bm!705074 m!8172806))

(declare-fun m!8172816 () Bool)

(assert (=> bm!705075 m!8172816))

(assert (=> b!7667170 d!2328353))

(declare-fun b!7667452 () Bool)

(declare-fun e!4553978 () Bool)

(assert (=> b!7667452 (= e!4553978 (nullable!8985 r!14126))))

(declare-fun d!2328355 () Bool)

(declare-fun e!4553979 () Bool)

(assert (=> d!2328355 e!4553979))

(declare-fun c!1412150 () Bool)

(assert (=> d!2328355 (= c!1412150 (is-EmptyExpr!20490 r!14126))))

(declare-fun lt!2662214 () Bool)

(assert (=> d!2328355 (= lt!2662214 e!4553978)))

(declare-fun c!1412149 () Bool)

(assert (=> d!2328355 (= c!1412149 (isEmpty!41849 (_2!38024 lt!2662163)))))

(assert (=> d!2328355 (validRegex!10908 r!14126)))

(assert (=> d!2328355 (= (matchR!9986 r!14126 (_2!38024 lt!2662163)) lt!2662214)))

(declare-fun b!7667453 () Bool)

(declare-fun e!4553974 () Bool)

(declare-fun e!4553976 () Bool)

(assert (=> b!7667453 (= e!4553974 e!4553976)))

(declare-fun res!3066765 () Bool)

(assert (=> b!7667453 (=> (not res!3066765) (not e!4553976))))

(assert (=> b!7667453 (= res!3066765 (not lt!2662214))))

(declare-fun b!7667454 () Bool)

(declare-fun res!3066770 () Bool)

(declare-fun e!4553980 () Bool)

(assert (=> b!7667454 (=> res!3066770 e!4553980)))

(assert (=> b!7667454 (= res!3066770 (not (isEmpty!41849 (tail!15291 (_2!38024 lt!2662163)))))))

(declare-fun b!7667455 () Bool)

(declare-fun call!705081 () Bool)

(assert (=> b!7667455 (= e!4553979 (= lt!2662214 call!705081))))

(declare-fun b!7667456 () Bool)

(assert (=> b!7667456 (= e!4553976 e!4553980)))

(declare-fun res!3066768 () Bool)

(assert (=> b!7667456 (=> res!3066768 e!4553980)))

(assert (=> b!7667456 (= res!3066768 call!705081)))

(declare-fun b!7667457 () Bool)

(declare-fun res!3066767 () Bool)

(declare-fun e!4553975 () Bool)

(assert (=> b!7667457 (=> (not res!3066767) (not e!4553975))))

(assert (=> b!7667457 (= res!3066767 (not call!705081))))

(declare-fun b!7667458 () Bool)

(declare-fun res!3066766 () Bool)

(assert (=> b!7667458 (=> res!3066766 e!4553974)))

(assert (=> b!7667458 (= res!3066766 (not (is-ElementMatch!20490 r!14126)))))

(declare-fun e!4553977 () Bool)

(assert (=> b!7667458 (= e!4553977 e!4553974)))

(declare-fun b!7667459 () Bool)

(assert (=> b!7667459 (= e!4553980 (not (= (head!15751 (_2!38024 lt!2662163)) (c!1412095 r!14126))))))

(declare-fun b!7667460 () Bool)

(assert (=> b!7667460 (= e!4553977 (not lt!2662214))))

(declare-fun b!7667461 () Bool)

(assert (=> b!7667461 (= e!4553978 (matchR!9986 (derivativeStep!5951 r!14126 (head!15751 (_2!38024 lt!2662163))) (tail!15291 (_2!38024 lt!2662163))))))

(declare-fun b!7667462 () Bool)

(assert (=> b!7667462 (= e!4553979 e!4553977)))

(declare-fun c!1412151 () Bool)

(assert (=> b!7667462 (= c!1412151 (is-EmptyLang!20490 r!14126))))

(declare-fun b!7667463 () Bool)

(declare-fun res!3066772 () Bool)

(assert (=> b!7667463 (=> (not res!3066772) (not e!4553975))))

(assert (=> b!7667463 (= res!3066772 (isEmpty!41849 (tail!15291 (_2!38024 lt!2662163))))))

(declare-fun b!7667464 () Bool)

(declare-fun res!3066769 () Bool)

(assert (=> b!7667464 (=> res!3066769 e!4553974)))

(assert (=> b!7667464 (= res!3066769 e!4553975)))

(declare-fun res!3066771 () Bool)

(assert (=> b!7667464 (=> (not res!3066771) (not e!4553975))))

(assert (=> b!7667464 (= res!3066771 lt!2662214)))

(declare-fun bm!705076 () Bool)

(assert (=> bm!705076 (= call!705081 (isEmpty!41849 (_2!38024 lt!2662163)))))

(declare-fun b!7667465 () Bool)

(assert (=> b!7667465 (= e!4553975 (= (head!15751 (_2!38024 lt!2662163)) (c!1412095 r!14126)))))

(assert (= (and d!2328355 c!1412149) b!7667452))

(assert (= (and d!2328355 (not c!1412149)) b!7667461))

(assert (= (and d!2328355 c!1412150) b!7667455))

(assert (= (and d!2328355 (not c!1412150)) b!7667462))

(assert (= (and b!7667462 c!1412151) b!7667460))

(assert (= (and b!7667462 (not c!1412151)) b!7667458))

(assert (= (and b!7667458 (not res!3066766)) b!7667464))

(assert (= (and b!7667464 res!3066771) b!7667457))

(assert (= (and b!7667457 res!3066767) b!7667463))

(assert (= (and b!7667463 res!3066772) b!7667465))

(assert (= (and b!7667464 (not res!3066769)) b!7667453))

(assert (= (and b!7667453 res!3066765) b!7667456))

(assert (= (and b!7667456 (not res!3066768)) b!7667454))

(assert (= (and b!7667454 (not res!3066770)) b!7667459))

(assert (= (or b!7667455 b!7667456 b!7667457) bm!705076))

(declare-fun m!8172818 () Bool)

(assert (=> b!7667461 m!8172818))

(assert (=> b!7667461 m!8172818))

(declare-fun m!8172820 () Bool)

(assert (=> b!7667461 m!8172820))

(declare-fun m!8172822 () Bool)

(assert (=> b!7667461 m!8172822))

(assert (=> b!7667461 m!8172820))

(assert (=> b!7667461 m!8172822))

(declare-fun m!8172824 () Bool)

(assert (=> b!7667461 m!8172824))

(assert (=> b!7667459 m!8172818))

(declare-fun m!8172826 () Bool)

(assert (=> d!2328355 m!8172826))

(assert (=> d!2328355 m!8172646))

(assert (=> bm!705076 m!8172826))

(assert (=> b!7667454 m!8172822))

(assert (=> b!7667454 m!8172822))

(declare-fun m!8172828 () Bool)

(assert (=> b!7667454 m!8172828))

(assert (=> b!7667465 m!8172818))

(assert (=> b!7667463 m!8172822))

(assert (=> b!7667463 m!8172822))

(assert (=> b!7667463 m!8172828))

(assert (=> b!7667452 m!8172794))

(assert (=> b!7667170 d!2328355))

(declare-fun bs!1946321 () Bool)

(declare-fun b!7667476 () Bool)

(assert (= bs!1946321 (and b!7667476 b!7667177)))

(declare-fun lambda!469943 () Int)

(assert (=> bs!1946321 (not (= lambda!469943 lambda!469930))))

(declare-fun bs!1946322 () Bool)

(assert (= bs!1946322 (and b!7667476 d!2328335)))

(assert (=> bs!1946322 (not (= lambda!469943 lambda!469936))))

(declare-fun bs!1946323 () Bool)

(assert (= bs!1946323 (and b!7667476 b!7667451)))

(assert (=> bs!1946323 (= (and (= (_2!38024 lt!2662163) (_1!38024 lt!2662163)) (= (reg!20819 r!14126) (reg!20819 (reg!20819 r!14126))) (= r!14126 (reg!20819 r!14126))) (= lambda!469943 lambda!469941))))

(declare-fun bs!1946324 () Bool)

(assert (= bs!1946324 (and b!7667476 b!7667441)))

(assert (=> bs!1946324 (not (= lambda!469943 lambda!469942))))

(assert (=> b!7667476 true))

(assert (=> b!7667476 true))

(declare-fun bs!1946325 () Bool)

(declare-fun b!7667466 () Bool)

(assert (= bs!1946325 (and b!7667466 d!2328335)))

(declare-fun lambda!469944 () Int)

(assert (=> bs!1946325 (not (= lambda!469944 lambda!469936))))

(declare-fun bs!1946326 () Bool)

(assert (= bs!1946326 (and b!7667466 b!7667441)))

(assert (=> bs!1946326 (= (and (= (_2!38024 lt!2662163) (_1!38024 lt!2662163)) (= (regOne!41492 r!14126) (regOne!41492 (reg!20819 r!14126))) (= (regTwo!41492 r!14126) (regTwo!41492 (reg!20819 r!14126)))) (= lambda!469944 lambda!469942))))

(declare-fun bs!1946327 () Bool)

(assert (= bs!1946327 (and b!7667466 b!7667476)))

(assert (=> bs!1946327 (not (= lambda!469944 lambda!469943))))

(declare-fun bs!1946328 () Bool)

(assert (= bs!1946328 (and b!7667466 b!7667451)))

(assert (=> bs!1946328 (not (= lambda!469944 lambda!469941))))

(declare-fun bs!1946329 () Bool)

(assert (= bs!1946329 (and b!7667466 b!7667177)))

(assert (=> bs!1946329 (not (= lambda!469944 lambda!469930))))

(assert (=> b!7667466 true))

(assert (=> b!7667466 true))

(declare-fun e!4553985 () Bool)

(declare-fun call!705082 () Bool)

(assert (=> b!7667466 (= e!4553985 call!705082)))

(declare-fun b!7667467 () Bool)

(declare-fun e!4553982 () Bool)

(assert (=> b!7667467 (= e!4553982 (matchRSpec!4591 (regTwo!41493 r!14126) (_2!38024 lt!2662163)))))

(declare-fun b!7667468 () Bool)

(declare-fun res!3066775 () Bool)

(declare-fun e!4553983 () Bool)

(assert (=> b!7667468 (=> res!3066775 e!4553983)))

(declare-fun call!705083 () Bool)

(assert (=> b!7667468 (= res!3066775 call!705083)))

(assert (=> b!7667468 (= e!4553985 e!4553983)))

(declare-fun d!2328357 () Bool)

(declare-fun c!1412152 () Bool)

(assert (=> d!2328357 (= c!1412152 (is-EmptyExpr!20490 r!14126))))

(declare-fun e!4553984 () Bool)

(assert (=> d!2328357 (= (matchRSpec!4591 r!14126 (_2!38024 lt!2662163)) e!4553984)))

(declare-fun b!7667469 () Bool)

(declare-fun e!4553981 () Bool)

(assert (=> b!7667469 (= e!4553981 e!4553982)))

(declare-fun res!3066773 () Bool)

(assert (=> b!7667469 (= res!3066773 (matchRSpec!4591 (regOne!41493 r!14126) (_2!38024 lt!2662163)))))

(assert (=> b!7667469 (=> res!3066773 e!4553982)))

(declare-fun b!7667470 () Bool)

(assert (=> b!7667470 (= e!4553984 call!705083)))

(declare-fun b!7667471 () Bool)

(declare-fun e!4553987 () Bool)

(assert (=> b!7667471 (= e!4553987 (= (_2!38024 lt!2662163) (Cons!73217 (c!1412095 r!14126) Nil!73217)))))

(declare-fun b!7667472 () Bool)

(assert (=> b!7667472 (= e!4553981 e!4553985)))

(declare-fun c!1412155 () Bool)

(assert (=> b!7667472 (= c!1412155 (is-Star!20490 r!14126))))

(declare-fun b!7667473 () Bool)

(declare-fun c!1412153 () Bool)

(assert (=> b!7667473 (= c!1412153 (is-ElementMatch!20490 r!14126))))

(declare-fun e!4553986 () Bool)

(assert (=> b!7667473 (= e!4553986 e!4553987)))

(declare-fun bm!705077 () Bool)

(assert (=> bm!705077 (= call!705083 (isEmpty!41849 (_2!38024 lt!2662163)))))

(declare-fun b!7667474 () Bool)

(assert (=> b!7667474 (= e!4553984 e!4553986)))

(declare-fun res!3066774 () Bool)

(assert (=> b!7667474 (= res!3066774 (not (is-EmptyLang!20490 r!14126)))))

(assert (=> b!7667474 (=> (not res!3066774) (not e!4553986))))

(declare-fun b!7667475 () Bool)

(declare-fun c!1412154 () Bool)

(assert (=> b!7667475 (= c!1412154 (is-Union!20490 r!14126))))

(assert (=> b!7667475 (= e!4553987 e!4553981)))

(declare-fun bm!705078 () Bool)

(assert (=> bm!705078 (= call!705082 (Exists!4615 (ite c!1412155 lambda!469943 lambda!469944)))))

(assert (=> b!7667476 (= e!4553983 call!705082)))

(assert (= (and d!2328357 c!1412152) b!7667470))

(assert (= (and d!2328357 (not c!1412152)) b!7667474))

(assert (= (and b!7667474 res!3066774) b!7667473))

(assert (= (and b!7667473 c!1412153) b!7667471))

(assert (= (and b!7667473 (not c!1412153)) b!7667475))

(assert (= (and b!7667475 c!1412154) b!7667469))

(assert (= (and b!7667475 (not c!1412154)) b!7667472))

(assert (= (and b!7667469 (not res!3066773)) b!7667467))

(assert (= (and b!7667472 c!1412155) b!7667468))

(assert (= (and b!7667472 (not c!1412155)) b!7667466))

(assert (= (and b!7667468 (not res!3066775)) b!7667476))

(assert (= (or b!7667476 b!7667466) bm!705078))

(assert (= (or b!7667470 b!7667468) bm!705077))

(declare-fun m!8172830 () Bool)

(assert (=> b!7667467 m!8172830))

(declare-fun m!8172832 () Bool)

(assert (=> b!7667469 m!8172832))

(assert (=> bm!705077 m!8172826))

(declare-fun m!8172834 () Bool)

(assert (=> bm!705078 m!8172834))

(assert (=> b!7667170 d!2328357))

(declare-fun d!2328359 () Bool)

(assert (=> d!2328359 (= (matchR!9986 (reg!20819 r!14126) (_1!38024 lt!2662163)) (matchRSpec!4591 (reg!20819 r!14126) (_1!38024 lt!2662163)))))

(declare-fun lt!2662215 () Unit!167992)

(assert (=> d!2328359 (= lt!2662215 (choose!59075 (reg!20819 r!14126) (_1!38024 lt!2662163)))))

(assert (=> d!2328359 (validRegex!10908 (reg!20819 r!14126))))

(assert (=> d!2328359 (= (mainMatchTheorem!4569 (reg!20819 r!14126) (_1!38024 lt!2662163)) lt!2662215)))

(declare-fun bs!1946330 () Bool)

(assert (= bs!1946330 d!2328359))

(assert (=> bs!1946330 m!8172662))

(assert (=> bs!1946330 m!8172652))

(declare-fun m!8172836 () Bool)

(assert (=> bs!1946330 m!8172836))

(assert (=> bs!1946330 m!8172676))

(assert (=> b!7667170 d!2328359))

(declare-fun d!2328361 () Bool)

(assert (=> d!2328361 (= (isEmpty!41849 s!9605) (is-Nil!73217 s!9605))))

(assert (=> b!7667169 d!2328361))

(declare-fun bm!705079 () Bool)

(declare-fun c!1412158 () Bool)

(declare-fun call!705086 () Bool)

(declare-fun c!1412159 () Bool)

(assert (=> bm!705079 (= call!705086 (validRegex!10908 (ite c!1412158 (reg!20819 r!14126) (ite c!1412159 (regTwo!41493 r!14126) (regTwo!41492 r!14126)))))))

(declare-fun b!7667486 () Bool)

(declare-fun e!4553999 () Bool)

(declare-fun e!4553998 () Bool)

(assert (=> b!7667486 (= e!4553999 e!4553998)))

(declare-fun res!3066782 () Bool)

(assert (=> b!7667486 (=> (not res!3066782) (not e!4553998))))

(declare-fun call!705084 () Bool)

(assert (=> b!7667486 (= res!3066782 call!705084)))

(declare-fun b!7667487 () Bool)

(declare-fun e!4553993 () Bool)

(declare-fun e!4553997 () Bool)

(assert (=> b!7667487 (= e!4553993 e!4553997)))

(declare-fun res!3066784 () Bool)

(assert (=> b!7667487 (= res!3066784 (not (nullable!8985 (reg!20819 r!14126))))))

(assert (=> b!7667487 (=> (not res!3066784) (not e!4553997))))

(declare-fun b!7667488 () Bool)

(declare-fun e!4553995 () Bool)

(declare-fun call!705085 () Bool)

(assert (=> b!7667488 (= e!4553995 call!705085)))

(declare-fun b!7667489 () Bool)

(assert (=> b!7667489 (= e!4553997 call!705086)))

(declare-fun b!7667490 () Bool)

(assert (=> b!7667490 (= e!4553998 call!705085)))

(declare-fun d!2328363 () Bool)

(declare-fun res!3066785 () Bool)

(declare-fun e!4553994 () Bool)

(assert (=> d!2328363 (=> res!3066785 e!4553994)))

(assert (=> d!2328363 (= res!3066785 (is-ElementMatch!20490 r!14126))))

(assert (=> d!2328363 (= (validRegex!10908 r!14126) e!4553994)))

(declare-fun bm!705080 () Bool)

(assert (=> bm!705080 (= call!705085 call!705086)))

(declare-fun b!7667491 () Bool)

(declare-fun res!3066783 () Bool)

(assert (=> b!7667491 (=> (not res!3066783) (not e!4553995))))

(assert (=> b!7667491 (= res!3066783 call!705084)))

(declare-fun e!4553996 () Bool)

(assert (=> b!7667491 (= e!4553996 e!4553995)))

(declare-fun b!7667492 () Bool)

(assert (=> b!7667492 (= e!4553994 e!4553993)))

(assert (=> b!7667492 (= c!1412158 (is-Star!20490 r!14126))))

(declare-fun bm!705081 () Bool)

(assert (=> bm!705081 (= call!705084 (validRegex!10908 (ite c!1412159 (regOne!41493 r!14126) (regOne!41492 r!14126))))))

(declare-fun b!7667493 () Bool)

(assert (=> b!7667493 (= e!4553993 e!4553996)))

(assert (=> b!7667493 (= c!1412159 (is-Union!20490 r!14126))))

(declare-fun b!7667494 () Bool)

(declare-fun res!3066781 () Bool)

(assert (=> b!7667494 (=> res!3066781 e!4553999)))

(assert (=> b!7667494 (= res!3066781 (not (is-Concat!29335 r!14126)))))

(assert (=> b!7667494 (= e!4553996 e!4553999)))

(assert (= (and d!2328363 (not res!3066785)) b!7667492))

(assert (= (and b!7667492 c!1412158) b!7667487))

(assert (= (and b!7667492 (not c!1412158)) b!7667493))

(assert (= (and b!7667487 res!3066784) b!7667489))

(assert (= (and b!7667493 c!1412159) b!7667491))

(assert (= (and b!7667493 (not c!1412159)) b!7667494))

(assert (= (and b!7667491 res!3066783) b!7667488))

(assert (= (and b!7667494 (not res!3066781)) b!7667486))

(assert (= (and b!7667486 res!3066782) b!7667490))

(assert (= (or b!7667491 b!7667486) bm!705081))

(assert (= (or b!7667488 b!7667490) bm!705080))

(assert (= (or b!7667489 bm!705080) bm!705079))

(declare-fun m!8172838 () Bool)

(assert (=> bm!705079 m!8172838))

(assert (=> b!7667487 m!8172810))

(declare-fun m!8172840 () Bool)

(assert (=> bm!705081 m!8172840))

(assert (=> start!736222 d!2328363))

(assert (=> b!7667168 d!2328363))

(declare-fun b!7667499 () Bool)

(declare-fun e!4554002 () Bool)

(declare-fun tp!2243704 () Bool)

(assert (=> b!7667499 (= e!4554002 (and tp_is_empty!51335 tp!2243704))))

(assert (=> b!7667172 (= tp!2243681 e!4554002)))

(assert (= (and b!7667172 (is-Cons!73217 (t!388076 s!9605))) b!7667499))

(declare-fun e!4554005 () Bool)

(assert (=> b!7667171 (= tp!2243680 e!4554005)))

(declare-fun b!7667511 () Bool)

(declare-fun tp!2243717 () Bool)

(declare-fun tp!2243718 () Bool)

(assert (=> b!7667511 (= e!4554005 (and tp!2243717 tp!2243718))))

(declare-fun b!7667512 () Bool)

(declare-fun tp!2243715 () Bool)

(assert (=> b!7667512 (= e!4554005 tp!2243715)))

(declare-fun b!7667513 () Bool)

(declare-fun tp!2243719 () Bool)

(declare-fun tp!2243716 () Bool)

(assert (=> b!7667513 (= e!4554005 (and tp!2243719 tp!2243716))))

(declare-fun b!7667510 () Bool)

(assert (=> b!7667510 (= e!4554005 tp_is_empty!51335)))

(assert (= (and b!7667171 (is-ElementMatch!20490 (regOne!41493 r!14126))) b!7667510))

(assert (= (and b!7667171 (is-Concat!29335 (regOne!41493 r!14126))) b!7667511))

(assert (= (and b!7667171 (is-Star!20490 (regOne!41493 r!14126))) b!7667512))

(assert (= (and b!7667171 (is-Union!20490 (regOne!41493 r!14126))) b!7667513))

(declare-fun e!4554006 () Bool)

(assert (=> b!7667171 (= tp!2243678 e!4554006)))

(declare-fun b!7667515 () Bool)

(declare-fun tp!2243722 () Bool)

(declare-fun tp!2243723 () Bool)

(assert (=> b!7667515 (= e!4554006 (and tp!2243722 tp!2243723))))

(declare-fun b!7667516 () Bool)

(declare-fun tp!2243720 () Bool)

(assert (=> b!7667516 (= e!4554006 tp!2243720)))

(declare-fun b!7667517 () Bool)

(declare-fun tp!2243724 () Bool)

(declare-fun tp!2243721 () Bool)

(assert (=> b!7667517 (= e!4554006 (and tp!2243724 tp!2243721))))

(declare-fun b!7667514 () Bool)

(assert (=> b!7667514 (= e!4554006 tp_is_empty!51335)))

(assert (= (and b!7667171 (is-ElementMatch!20490 (regTwo!41493 r!14126))) b!7667514))

(assert (= (and b!7667171 (is-Concat!29335 (regTwo!41493 r!14126))) b!7667515))

(assert (= (and b!7667171 (is-Star!20490 (regTwo!41493 r!14126))) b!7667516))

(assert (= (and b!7667171 (is-Union!20490 (regTwo!41493 r!14126))) b!7667517))

(declare-fun e!4554007 () Bool)

(assert (=> b!7667174 (= tp!2243682 e!4554007)))

(declare-fun b!7667519 () Bool)

(declare-fun tp!2243727 () Bool)

(declare-fun tp!2243728 () Bool)

(assert (=> b!7667519 (= e!4554007 (and tp!2243727 tp!2243728))))

(declare-fun b!7667520 () Bool)

(declare-fun tp!2243725 () Bool)

(assert (=> b!7667520 (= e!4554007 tp!2243725)))

(declare-fun b!7667521 () Bool)

(declare-fun tp!2243729 () Bool)

(declare-fun tp!2243726 () Bool)

(assert (=> b!7667521 (= e!4554007 (and tp!2243729 tp!2243726))))

(declare-fun b!7667518 () Bool)

(assert (=> b!7667518 (= e!4554007 tp_is_empty!51335)))

(assert (= (and b!7667174 (is-ElementMatch!20490 (regOne!41492 r!14126))) b!7667518))

(assert (= (and b!7667174 (is-Concat!29335 (regOne!41492 r!14126))) b!7667519))

(assert (= (and b!7667174 (is-Star!20490 (regOne!41492 r!14126))) b!7667520))

(assert (= (and b!7667174 (is-Union!20490 (regOne!41492 r!14126))) b!7667521))

(declare-fun e!4554008 () Bool)

(assert (=> b!7667174 (= tp!2243679 e!4554008)))

(declare-fun b!7667523 () Bool)

(declare-fun tp!2243732 () Bool)

(declare-fun tp!2243733 () Bool)

(assert (=> b!7667523 (= e!4554008 (and tp!2243732 tp!2243733))))

(declare-fun b!7667524 () Bool)

(declare-fun tp!2243730 () Bool)

(assert (=> b!7667524 (= e!4554008 tp!2243730)))

(declare-fun b!7667525 () Bool)

(declare-fun tp!2243734 () Bool)

(declare-fun tp!2243731 () Bool)

(assert (=> b!7667525 (= e!4554008 (and tp!2243734 tp!2243731))))

(declare-fun b!7667522 () Bool)

(assert (=> b!7667522 (= e!4554008 tp_is_empty!51335)))

(assert (= (and b!7667174 (is-ElementMatch!20490 (regTwo!41492 r!14126))) b!7667522))

(assert (= (and b!7667174 (is-Concat!29335 (regTwo!41492 r!14126))) b!7667523))

(assert (= (and b!7667174 (is-Star!20490 (regTwo!41492 r!14126))) b!7667524))

(assert (= (and b!7667174 (is-Union!20490 (regTwo!41492 r!14126))) b!7667525))

(declare-fun e!4554009 () Bool)

(assert (=> b!7667173 (= tp!2243683 e!4554009)))

(declare-fun b!7667527 () Bool)

(declare-fun tp!2243737 () Bool)

(declare-fun tp!2243738 () Bool)

(assert (=> b!7667527 (= e!4554009 (and tp!2243737 tp!2243738))))

(declare-fun b!7667528 () Bool)

(declare-fun tp!2243735 () Bool)

(assert (=> b!7667528 (= e!4554009 tp!2243735)))

(declare-fun b!7667529 () Bool)

(declare-fun tp!2243739 () Bool)

(declare-fun tp!2243736 () Bool)

(assert (=> b!7667529 (= e!4554009 (and tp!2243739 tp!2243736))))

(declare-fun b!7667526 () Bool)

(assert (=> b!7667526 (= e!4554009 tp_is_empty!51335)))

(assert (= (and b!7667173 (is-ElementMatch!20490 (reg!20819 r!14126))) b!7667526))

(assert (= (and b!7667173 (is-Concat!29335 (reg!20819 r!14126))) b!7667527))

(assert (= (and b!7667173 (is-Star!20490 (reg!20819 r!14126))) b!7667528))

(assert (= (and b!7667173 (is-Union!20490 (reg!20819 r!14126))) b!7667529))

(push 1)

(assert (not b!7667515))

(assert (not b!7667524))

(assert (not b!7667390))

(assert (not bm!705078))

(assert (not d!2328327))

(assert (not bm!705056))

(assert (not b!7667372))

(assert (not b!7667299))

(assert (not b!7667298))

(assert (not b!7667523))

(assert (not bm!705077))

(assert (not d!2328341))

(assert (not b!7667442))

(assert (not b!7667454))

(assert (not b!7667469))

(assert (not b!7667459))

(assert (not b!7667444))

(assert (not b!7667528))

(assert (not b!7667377))

(assert (not b!7667465))

(assert (not b!7667527))

(assert (not bm!705081))

(assert (not bm!705079))

(assert (not d!2328355))

(assert (not d!2328329))

(assert (not d!2328331))

(assert (not b!7667513))

(assert (not b!7667520))

(assert (not b!7667333))

(assert (not bm!705075))

(assert (not b!7667374))

(assert (not d!2328337))

(assert (not b!7667306))

(assert (not d!2328351))

(assert (not b!7667521))

(assert (not b!7667517))

(assert (not b!7667463))

(assert (not d!2328359))

(assert (not b!7667452))

(assert (not b!7667384))

(assert (not bm!705068))

(assert (not b!7667519))

(assert (not bm!705074))

(assert (not b!7667301))

(assert (not b!7667300))

(assert (not b!7667363))

(assert (not b!7667461))

(assert (not bm!705076))

(assert (not bm!705069))

(assert (not b!7667511))

(assert (not b!7667499))

(assert (not d!2328349))

(assert (not b!7667386))

(assert (not b!7667365))

(assert (not b!7667370))

(assert (not b!7667467))

(assert (not b!7667529))

(assert (not b!7667487))

(assert (not b!7667512))

(assert (not b!7667516))

(assert (not b!7667376))

(assert (not d!2328335))

(assert (not bm!705054))

(assert (not b!7667525))

(assert (not b!7667388))

(assert (not b!7667379))

(assert (not b!7667303))

(assert (not b!7667332))

(assert (not b!7667245))

(assert tp_is_empty!51335)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

